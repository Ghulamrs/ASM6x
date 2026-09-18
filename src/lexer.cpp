#include "asm.h"

#include <cctype>

std::string upper(const std::string &s)
{
    std::string r(s);
    for (size_t i = 0; i < r.size(); i++)
        r[i] = (char)toupper((unsigned char)r[i]);
    return r;
}

bool is_punct(const std::vector<Token> &t, size_t i, char c)
{
    return i < t.size() && t[i].kind == T_PUNCT && t[i].text.size() == 1 && t[i].text[0] == c;
}

static bool name_start(char c)
{
    return isalpha((unsigned char)c) || c == '_' || c == '$' || c == '.';
}

static bool name_char(char c)
{
    return isalnum((unsigned char)c) || c == '_' || c == '$' || c == '.';
}

/* a number: decimal, 0x hex, or TI's suffix forms 0FFh and 1010b */
static bool number(const std::string &s, size_t &i, long long &v, std::string &err)
{
    size_t j = i;
    if (s[j] == '0' && j + 1 < s.size() && (s[j + 1] == 'x' || s[j + 1] == 'X')) {
        j += 2;
        v = 0;
        size_t start = j;
        while (j < s.size() && isxdigit((unsigned char)s[j])) {
            char c = (char)tolower((unsigned char)s[j]);
            v = v * 16 + (isdigit((unsigned char)c) ? c - '0' : c - 'a' + 10);
            j++;
        }
        if (j == start) { err = "a hex number needs digits"; return false; }
        i = j;
        return true;
    }
    size_t start = j;
    while (j < s.size() && isxdigit((unsigned char)s[j])) j++;
    std::string digits = s.substr(start, j - start);
    if (j < s.size() && (s[j] == 'h' || s[j] == 'H')) {
        v = 0;
        for (size_t k = 0; k < digits.size(); k++) {
            char c = (char)tolower((unsigned char)digits[k]);
            v = v * 16 + (isdigit((unsigned char)c) ? c - '0' : c - 'a' + 10);
        }
        i = j + 1;
        return true;
    }
    if (j < s.size() && (s[j] == 'b' || s[j] == 'B') && !(j + 1 < s.size() && name_char(s[j + 1]))) {
        v = 0;
        for (size_t k = 0; k < digits.size(); k++) {
            if (digits[k] != '0' && digits[k] != '1') { err = "a binary number takes 0 and 1"; return false; }
            v = v * 2 + (digits[k] - '0');
        }
        i = j + 1;
        return true;
    }
    j = start;
    v = 0;
    while (j < s.size() && isdigit((unsigned char)s[j])) { v = v * 10 + (s[j] - '0'); j++; }
    if (j == start) { err = "a number expected"; return false; }
    i = j;
    return true;
}

/* one source line to tokens. TI's rules: `;` starts a comment, so does `*` in column 1; a
   name in column 1 is a label, with or without the colon - one is supplied so the parser
   sees one shape; `||` opens a parallel instruction; a string keeps C's escapes */
bool split_line(const std::string &src, std::vector<Token> &out, std::string &err)
{
    out.clear();
    if (src.empty() || src[0] == ';' || src[0] == '*') return true;
    bool label = !isspace((unsigned char)src[0]) && name_start(src[0]);
    size_t i = 0;
    while (i < src.size()) {
        char c = src[i];
        if (c == ';') break;
        if (isspace((unsigned char)c)) { i++; continue; }
        Token t;
        t.value = 0;
        if (name_start(c)) {
            size_t j = i;
            while (j < src.size() && name_char(src[j])) j++;
            t.kind = T_NAME;
            t.text = src.substr(i, j - i);
            i = j;
            out.push_back(t);
            if (label && out.size() == 1) {
                Token colon; colon.kind = T_PUNCT; colon.text = ":"; colon.value = 0;
                size_t k = i;
                while (k < src.size() && isspace((unsigned char)src[k])) k++;
                if (k < src.size() && src[k] == ':') i = k + 1;
                out.push_back(colon);
            }
            continue;
        }
        if (isdigit((unsigned char)c)) {
            t.kind = T_NUM;
            size_t start = i;
            if (!number(src, i, t.value, err)) return false;
            t.text = src.substr(start, i - start);
            out.push_back(t);
            continue;
        }
        if (c == '"') {
            size_t j = i + 1;
            std::string s;
            while (j < src.size() && src[j] != '"') {
                if (src[j] == '\\' && j + 1 < src.size()) {
                    j++;
                    switch (src[j]) {
                    case 'n': s += '\n'; break;
                    case 't': s += '\t'; break;
                    case 'r': s += '\r'; break;
                    case '0': s += '\0'; break;
                    case '\\': s += '\\'; break;
                    case '"': s += '"'; break;
                    default: s += src[j]; break;
                    }
                    j++;
                    continue;
                }
                s += src[j++];
            }
            if (j >= src.size()) { err = "an unclosed string"; return false; }
            t.kind = T_STR;
            t.text = s;
            out.push_back(t);
            i = j + 1;
            continue;
        }
        if (c == '\'') {
            if (i + 2 < src.size() && src[i + 2] == '\'') {
                t.kind = T_NUM; t.value = (unsigned char)src[i + 1]; t.text = src.substr(i, 3);
                out.push_back(t);
                i += 3;
                continue;
            }
            err = "a character constant is one character in quotes";
            return false;
        }
        if (c == '|' && i + 1 < src.size() && src[i + 1] == '|') {
            t.kind = T_PUNCT; t.text = "||"; out.push_back(t); i += 2; continue;
        }
        if (c == '+' && i + 1 < src.size() && src[i + 1] == '+') {
            t.kind = T_PUNCT; t.text = "++"; out.push_back(t); i += 2; continue;
        }
        if (c == '-' && i + 1 < src.size() && src[i + 1] == '-') {
            t.kind = T_PUNCT; t.text = "--"; out.push_back(t); i += 2; continue;
        }
        t.kind = T_PUNCT;
        t.text = std::string(1, c);
        out.push_back(t);
        i++;
    }
    return true;
}
