#include "asm.h"

/* Expressions as the compilers write them: numbers, symbols, $ for the current address,
   + - * / with parentheses and unary minus, and TI's relocation operators -
   $EXIDX_FUNC(f), $EXIDX_EXTAB("t"), $EXTAB_LP(l), $EXTAB_RTTI(t), $EXTAB_SCOPE(l) - each of
   which is the symbol's address wearing the relocation the linker must apply to it
   (PREL31, PREL31, PREL31, EHTYPE, and none: a scope is a plain address, and a difference
   of two scopes is a constant). A value is a constant, or one symbol plus a constant, or
   the difference of two labels; anything else is refused, as asm6x refuses it. */

namespace {

struct Parser {
    Unit &u;
    const std::vector<Token> &t;
    size_t i, end;
    std::string err;

    Parser(Unit &unit, const std::vector<Token> &tokens, size_t from, size_t to)
        : u(unit), t(tokens), i(from), end(to) {}

    bool fail(const std::string &m) { if (err.empty()) err = m; return false; }
    bool at(char c) const { return is_punct(t, i, c) && i < end; }

    static bool constant(const Value &v) { return v.sym < 0 && v.sub < 0; }

    bool primary(Value &v) {
        v.v = 0; v.sym = -1; v.sub = -1; v.op = R_NONE; v.operate = false;
        if (i >= end) return fail("an expression is missing");
        if (at('(')) {
            i++;
            if (!sum(v)) return false;
            if (!at(')')) return fail("')' expected");
            i++;
            return true;
        }
        if (at('-')) {
            i++;
            if (!primary(v)) return false;
            if (!constant(v)) return fail("a label cannot be negated");
            v.v = -v.v;
            return true;
        }
        if (at('+')) { i++; return primary(v); }
        if (t[i].kind == T_NUM) { v.v = t[i].value; i++; return true; }
        if (t[i].kind != T_NAME) return fail("a value expected, not '" + t[i].text + "'");
        const std::string &name = t[i].text;
        if (name == "$") return fail("$ is not supported here - the compilers never write it");
        if (name.size() > 1 && name[0] == '$' && i + 1 < end && is_punct(t, i + 1, '(')) {
            std::string op = upper(name);
            RelKind kind;
            if (op == "$EXIDX_FUNC" || op == "$EXIDX_EXTAB" || op == "$EXTAB_LP") kind = R_PREL31;
            else if (op == "$EXTAB_RTTI") kind = (RelKind)28;
            else if (op == "$EXTAB_SCOPE") kind = R_NONE;
            else return fail("'" + name + "' is not an operator this assembler knows");
            i += 2;
            if (i >= end || (t[i].kind != T_NAME && t[i].kind != T_STR)) return fail(name + " needs a symbol");
            v.sym = u.ref(t[i].text);
            u.symbols[v.sym].referenced = true;
            i++;
            if (!at(')')) return fail("')' expected after " + name);
            i++;
            v.op = kind;
            v.operate = true;
            return true;
        }
        v.sym = u.ref(name);
        u.symbols[v.sym].referenced = true;
        i++;
        /* a .set constant stands for its value */
        Symbol &s = u.symbols[v.sym];
        if (s.defined && s.section < 0) { v.v = s.value; v.sym = -1; }
        return true;
    }

    bool product(Value &v) {
        if (!primary(v)) return false;
        while (i < end && (at('*') || at('/'))) {
            bool mul = at('*');
            i++;
            Value r;
            if (!primary(r)) return false;
            if (!constant(v) || !constant(r)) return fail("a label cannot be multiplied or divided");
            if (!mul && r.v == 0) return fail("division by zero");
            v.v = mul ? v.v * r.v : v.v / r.v;
        }
        return true;
    }

    bool sum(Value &v) {
        if (!product(v)) return false;
        while (i < end && (at('+') || at('-'))) {
            bool add = at('+');
            i++;
            Value r;
            if (!product(r)) return false;
            if (v.operate && r.operate && v.op != r.op) return fail("two different operators in one expression");
            if (add) {
                if (v.sym >= 0 && r.sym >= 0) return fail("two labels cannot be added");
                if (r.sym >= 0) { v.sym = r.sym; v.op = r.op; v.operate = r.operate; }
                v.v += r.v;
            } else {
                if (r.sym >= 0) {
                    if (v.sym < 0) return fail("a label cannot be subtracted from a constant");
                    if (v.sub >= 0) return fail("only two labels can be differenced");
                    v.sub = r.sym;
                }
                v.v -= r.v;
            }
        }
        return true;
    }
};

}

bool eval(Unit &u, const std::vector<Token> &t, size_t from, size_t to, Value &v, std::string &err)
{
    Parser p(u, t, from, to);
    if (!p.sum(v)) { err = p.err; return false; }
    if (p.i != to) { err = "unexpected '" + t[p.i].text + "' in an expression"; return false; }
    /* a difference of two placed labels of one section is a constant */
    if (v.sym >= 0 && v.sub >= 0) {
        const Symbol &a = u.symbols[v.sym], &b = u.symbols[v.sub];
        if (a.defined && b.defined && a.section == b.section && a.section >= 0) {
            v.v += a.value - b.value;
            v.sym = -1; v.sub = -1;
            v.op = R_NONE; v.operate = false;
        }
    }
    return true;
}

bool eval_const(Unit &u, const std::vector<Token> &t, size_t from, size_t to, long long &v, std::string &err)
{
    Value x;
    if (!eval(u, t, from, to, x, err)) return false;
    if (x.sym >= 0 || x.sub >= 0) {
        if (u.pass > 1 || (x.sym >= 0 && u.symbols[x.sym].defined)) { err = "a constant is needed here, not a label"; return false; }
        v = 0;   /* a forward label in the first pass: the value settles next pass */
        return true;
    }
    v = x.v;
    return true;
}
