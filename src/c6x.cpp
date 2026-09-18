#include "asm.h"

#include <cstdio>
#include <cstring>

/* The C674x instructions the compilers write, encoded as asm6x encodes them. Every word
   below was read back from asm6x (cl6x --no_compress, dis6x), one form per line, and the
   probes are in tests/enc. The instruction word:

       31-29 creg   28 z   27-23 dst   22-18 src2   17-13 src1   12 x   11-2 the form   1 s   0 p

   with the form's ten bits naming the unit and the operation. A unit is never written by
   the compilers, so the choice is asm6x's default, also read back: register ADD/SUB/MV go to
   .D, the logic ops to .D's C64x+ forms, compares to .L, shifts, branches, MVK and the
   field ops to .S, multiplies to .M. s is the side of the destination (of the data register
   for a store, always B for a branch), x says a source came over the cross path, and p
   joins the word to the next in an execute packet. */

namespace {

enum OpKind { O_REG, O_PAIR, O_CST, O_MEM, O_EXPR };

struct Operand {
    OpKind kind;
    int reg;            /* O_REG, O_PAIR (the even, low register), O_MEM the base */
    int side;           /* 0 for A, 1 for B */
    long long v;        /* O_CST; O_MEM the offset in bytes; O_EXPR the constant part */
    bool minus;         /* O_MEM: *-R(n) */
    int mode;           /* O_MEM: 0 plain or +, 1 pre-increment, 2 pre-decrement, 3 post-increment, 4 post-decrement */
    Value val;          /* O_EXPR */
};

bool reg_name(const std::string &t, int &reg, int &side)
{
    if (t.size() < 2 || (t[0] != 'A' && t[0] != 'B')) return false;
    for (size_t i = 1; i < t.size(); i++) if (t[i] < '0' || t[i] > '9') return false;
    int n = atoi(t.c_str() + 1);
    if (n > 31 || t.size() > 3) return false;
    reg = n;
    side = t[0] == 'B';
    return true;
}

/* the creg field: which of A0-A2 and B0-B2 predicates the instruction */
int predicate_code(int reg, int side)
{
    static const int a[3] = { 6, 4, 5 }, b[3] = { 1, 2, 3 };
    if (reg > 2) return -1;
    return side ? b[reg] : a[reg];
}

}

C6xTarget::C6xTarget() : done(false), pass(0), parallel(false), last_at(0), units(0)
{
}

void C6xTarget::begin_pass(int n)
{
    pass = n;
    done = false;
    parallel = false;
    last_at = 0;
    units = 0;
}

/* the end: asm6x pads every code section to the fetch packet, 32 bytes */
void C6xTarget::end_of_file(Unit &u)
{
    for (size_t i = 0; i < u.sections.size(); i++)
        if (u.sections[i].code)
            while (u.sections[i].bytes.size() % 32) u.sections[i].bytes.push_back(0);
    done = true;
}

/* a statement: [label:] [||] [[!]Rn] mnemonic operands, or a directive */
void C6xTarget::statement(Unit &u, std::vector<Token> &t)
{
    size_t i = 0;
    if (t.size() >= 2 && t[0].kind == T_NAME && is_punct(t, 1, ':')) {
        /* a label: a .set with the name in the label column is a constant, not a place */
        if (t.size() >= 3 && t[2].kind == T_NAME && (upper(t[2].text) == ".SET" || upper(t[2].text) == ".EQU")) {
            long long v;
            std::string err;
            if (!eval_const(u, t, 3, t.size(), v, err)) u.error(err);
            else u.constant(t[0].text, v);
            return;
        }
        Section *s = u.cur();
        if (!s) return;
        u.define(t[0].text, s->code ? SYM_FUNC : SYM_OBJECT);
        i = 2;
        if (i >= t.size()) return;
    }
    if (t[i].kind == T_NAME && t[i].text[0] == '.') {
        if (!directive(u, t, i)) u.error("'" + t[i].text + "' is not a directive this assembler knows");
        return;
    }
    instruction(u, t, i);
}

namespace {

/* the constant part and symbol of a data item, with the width its directive gives it */
void data_item(Unit &u, const std::vector<Token> &t, size_t a, size_t b, int width)
{
    Value v;
    std::string err;
    if (!eval(u, t, a, b, v, err)) { u.error(err); return; }
    unsigned long at = u.here();
    if (v.sym >= 0) {
        RelKind kind = v.operate ? v.op : width == 4 ? R_ABS32 : width == 2 ? R_ABS16 : R_ABS8;
        if (v.operate && v.op == R_NONE) kind = width == 4 ? R_ABS32 : width == 2 ? R_ABS16 : R_ABS8;
        if (v.sub >= 0) kind = width == 4 ? R_ABS32 : width == 2 ? R_ABS16 : R_ABS8;
        if (v.sub < 0 && v.operate && v.op == R_NONE) {
            u.error("a scope needs another scope to differ from");
            return;
        }
        u.fixup(at, v.sym, kind, v.v, v.sub);
        if (width == 4) u.emit32(0); else if (width == 2) u.emit16(0); else u.emit8(0);
        return;
    }
    if (width == 4) u.emit32((unsigned long)v.v);
    else if (width == 2) {
        if (v.v < -32768 || v.v > 65535) u.error("a half word cannot hold " + std::to_string(v.v));
        u.emit16((unsigned)v.v);
    } else {
        if (v.v < -128 || v.v > 255) u.error("a byte cannot hold " + std::to_string(v.v));
        u.emit8((unsigned)v.v);
    }
}

void split_items(const std::vector<Token> &t, size_t from, std::vector<size_t> &cuts)
{
    cuts.clear();
    cuts.push_back(from);
    int depth = 0;
    for (size_t i = from; i < t.size(); i++) {
        if (is_punct(t, i, '(') || is_punct(t, i, '[')) depth++;
        else if (is_punct(t, i, ')') || is_punct(t, i, ']')) depth--;
        else if (depth == 0 && is_punct(t, i, ',')) cuts.push_back(i + 1);
    }
    cuts.push_back(t.size() + 1);
}

}

bool C6xTarget::directive(Unit &u, const std::vector<Token> &t, size_t i)
{
    std::string d = upper(t[i].text);
    std::vector<size_t> cuts;
    split_items(t, i + 1, cuts);
    size_t n = cuts.size() - 1;      /* operands */
    std::string err;

    if (d == ".TEXT") { u.section(".text", 32); parallel = false; return true; }
    if (d == ".DATA") { u.section(".data", 1); parallel = false; return true; }
    if (d == ".SECT") {
        if (n < 1 || t[cuts[0]].kind != T_STR) { u.error(".sect needs a quoted name"); return true; }
        std::string name = t[cuts[0]].text;
        u.section(name, name.compare(0, 5, ".text") == 0 ? 32 : 1);
        parallel = false;
        return true;
    }
    if (d == ".BSS" || d == ".USECT") {
        /* .bss sym, size[, align]   .usect "name", size[, align] - the symbol at the start of
           the space, in .bss or in the named section, which is uninitialised */
        size_t k = d == ".USECT" ? 1 : 0;
        if (n < k + 2) { u.error(d + " needs a name and a size"); return true; }
        long long size, align = 1;
        if (!eval_const(u, t, cuts[k + 1], cuts[k + 2] - 1, size, err)) { u.error(err); return true; }
        if (n > k + 2 && !eval_const(u, t, cuts[k + 2], cuts[k + 3] - 1, align, err)) { u.error(err); return true; }
        if (align <= 0 || (align & (align - 1))) { u.error("the alignment must be a power of two"); return true; }
        int was = u.current;
        std::string name = d == ".USECT" ? t[cuts[0]].text : ".bss";
        if (d == ".USECT" && t[cuts[0]].kind != T_STR) { u.error(".usect needs a quoted section name"); return true; }
        int sec = u.section(name, (int)align);
        u.sections[sec].bss = true;
        u.sections[sec].kind = SEC_NOBITS;
        u.align((int)align);
        if (d == ".BSS" && u.define(t[cuts[0]].text, SYM_OBJECT)) u.symbols[u.find(t[cuts[0]].text)].size = size;
        /* .usect's symbol is the label written before it, if any; the compilers use .bss */
        for (long long b = 0; b < size; b++) u.emit8(0);
        u.current = was;
        return true;
    }
    if (d == ".GLOBAL" || d == ".DEF" || d == ".REF" || d == ".WEAK") {
        for (size_t k = 0; k < n; k++) {
            if (t[cuts[k]].kind != T_NAME) { u.error(d + " names symbols"); return true; }
            int s = u.ref(t[cuts[k]].text);
            Symbol &sym = u.symbols[s];
            sym.referenced = true;
            if (d == ".WEAK") sym.bind = B_WEAK;
            else if (d == ".REF") { if (sym.bind == B_LOCAL) sym.bind = B_EXTERN; }
            else if (sym.bind != B_WEAK) sym.bind = B_GLOBAL;
        }
        return true;
    }
    if (d == ".ALIGN") {
        long long a = 4;
        if (n >= 1 && !eval_const(u, t, cuts[0], cuts[1] - 1, a, err)) { u.error(err); return true; }
        if (a <= 0 || (a & (a - 1))) { u.error(".align takes a power of two"); return true; }
        u.align((int)a);
        return true;
    }
    if (d == ".WORD" || d == ".LONG" || d == ".INT" || d == ".ULONG" || d == ".UINT" || d == ".UWORD" ||
        d == ".HALF" || d == ".SHORT" || d == ".UHALF" || d == ".USHORT" ||
        d == ".BYTE" || d == ".CHAR" || d == ".UBYTE" || d == ".UCHAR") {
        int width = (d == ".HALF" || d == ".SHORT" || d == ".UHALF" || d == ".USHORT") ? 2
                  : (d == ".BYTE" || d == ".CHAR" || d == ".UBYTE" || d == ".UCHAR") ? 1 : 4;
        if (n < 1) { u.error(d + " needs a value"); return true; }
        if (width > 1) u.align(width);      /* a word or a half aligns itself, as TI's do */
        for (size_t k = 0; k < n; k++) {
            if (t[cuts[k]].kind == T_STR && width == 1 && cuts[k + 1] - 1 == cuts[k] + 1) {
                for (size_t c = 0; c < t[cuts[k]].text.size(); c++) u.emit8((unsigned char)t[cuts[k]].text[c]);
                continue;
            }
            data_item(u, t, cuts[k], cuts[k + 1] - 1, width);
        }
        return true;
    }
    if (d == ".STRING" || d == ".CSTRING") {
        for (size_t k = 0; k < n; k++) {
            if (t[cuts[k]].kind == T_STR && cuts[k + 1] - 1 == cuts[k] + 1) {
                for (size_t c = 0; c < t[cuts[k]].text.size(); c++) u.emit8((unsigned char)t[cuts[k]].text[c]);
                if (d == ".CSTRING") u.emit8(0);
            } else data_item(u, t, cuts[k], cuts[k + 1] - 1, 1);
        }
        return true;
    }
    if (d == ".SPACE" || d == ".BES") {
        long long b;
        if (n < 1 || !eval_const(u, t, cuts[0], cuts[1] - 1, b, err)) { u.error(".space needs a count"); return true; }
        for (long long k = 0; k < b; k++) u.emit8(0);
        return true;
    }
    if (d == ".SET" || d == ".EQU") {
        if (n != 2 || t[cuts[0]].kind != T_NAME) { u.error(".set needs a name and a value"); return true; }
        long long v;
        if (!eval_const(u, t, cuts[1], cuts[2] - 1, v, err)) { u.error(err); return true; }
        u.constant(t[cuts[0]].text, v);
        return true;
    }
    if (d == ".SYMDEPEND") {
        /* .symdepend "sym", "section": the section needs the symbol - an R_C6000_NONE
           relocation at its start, as asm6x records it */
        if (n != 2 || t[cuts[0]].kind != T_STR || t[cuts[1]].kind != T_STR) { u.error(".symdepend takes two quoted names"); return true; }
        int s = u.ref(t[cuts[0]].text);
        u.symbols[s].referenced = true;
        int sec = -1;
        for (size_t k = 0; k < u.sections.size(); k++) if (u.sections[k].name == t[cuts[1]].text) sec = (int)k;
        if (sec < 0) { u.error("'" + t[cuts[1]].text + "' is not a section of this file"); return true; }
        u.depends.push_back(std::make_pair(s, sec));
        return true;
    }
    if (d == ".END") { done = true; return true; }
    if (d == ".CLINK" || d == ".RETAIN" || d == ".NOCMP" || d == ".COMPILER_OPTS" || d == ".FILE" || d == ".ASG" ||
        d == ".LIST" || d == ".NOLIST" || d == ".TITLE" || d == ".OPTION" || d == ".LENGTH" || d == ".WIDTH")
        return true;
    return false;
}

namespace {

/* a memory operand: *R  *+R(n)  *-R(n)  *+R[n]  *R++(n)  *R--(n)  *++R(n)  *--R(n) */
bool mem_operand(Unit &u, const std::vector<Token> &t, size_t a, size_t b, Operand &o)
{
    size_t i = a + 1;    /* past the * */
    o.kind = O_MEM; o.minus = false; o.mode = 0; o.v = 0;
    if (is_punct(t, i, '+') && t[i].text == "+") { i++; }
    else if (is_punct(t, i, '-') && t[i].text == "-") { o.minus = true; i++; }
    else if (i < b && t[i].kind == T_PUNCT && t[i].text == "++") { o.mode = 1; i++; }
    else if (i < b && t[i].kind == T_PUNCT && t[i].text == "--") { o.mode = 2; i++; }
    if (i >= b || t[i].kind != T_NAME || !reg_name(t[i].text, o.reg, o.side)) { u.error("a base register expected in an address"); return false; }
    i++;
    if (i < b && t[i].kind == T_PUNCT && t[i].text == "++") { o.mode = 3; i++; }
    else if (i < b && t[i].kind == T_PUNCT && t[i].text == "--") { o.mode = 4; i++; }
    if (i >= b) { if (o.mode) o.v = -1; return true; }   /* -1: the access width, filled in by the load */
    char open = t[i].text[0], close = open == '(' ? ')' : ']';
    if (!is_punct(t, i, open) || (open != '(' && open != '[') || !is_punct(t, b - 1, close)) { u.error("a bad address"); return false; }
    std::string err;
    if (!eval_const(u, t, i + 1, b - 1, o.v, err)) { u.error(err); return false; }
    if (open == '[') o.v = -2 - o.v;    /* [n] is in units of the access, told apart by sign */
    return true;
}

bool operand(Unit &u, const std::vector<Token> &t, size_t a, size_t b, Operand &o)
{
    if (a >= b) { u.error("an operand is missing"); return false; }
    if (is_punct(t, a, '*')) return mem_operand(u, t, a, b, o);
    if (b - a == 1 && t[a].kind == T_NAME && reg_name(t[a].text, o.reg, o.side)) { o.kind = O_REG; return true; }
    if (b - a == 3 && t[a].kind == T_NAME && is_punct(t, a + 1, ':') && t[a + 2].kind == T_NAME) {
        int hi, hs, lo, ls;
        if (!reg_name(t[a].text, hi, hs) || !reg_name(t[a + 2].text, lo, ls)) { u.error("a bad register pair"); return false; }
        if (hs != ls || hi != lo + 1 || (lo & 1)) { u.error("a register pair is odd:even of one side"); return false; }
        o.kind = O_PAIR; o.reg = lo; o.side = ls;
        return true;
    }
    std::string err;
    if (!eval(u, t, a, b, o.val, err)) { u.error(err); return false; }
    if (o.val.sym < 0) { o.kind = O_CST; o.v = o.val.v; return true; }
    o.kind = O_EXPR;
    o.v = o.val.v;
    return true;
}

/* the ten form bits of each instruction, from the probes: the C64x+ D-unit forms end in
   1100, the classic D forms in 0000 with the op above, L in 110, S in 1000, M in 00000 */
struct Form { const char *name; unsigned form; };

unsigned form_of(const Form *list, size_t count, const std::string &m)
{
    for (size_t i = 0; i < count; i++) if (m == list[i].name) return list[i].form;
    return 0xFFFF;
}

/* src1, src2, dst: the L/S/M register form and the C64x+ D form */
const Form kThreeReg[] = {
    { "AND", 0x26C }, { "OR", 0x22C }, { "XOR", 0x2EC }, { "ANDN", 0x20C },
    { "CMPEQ", 0x29E }, { "CMPGT", 0x23E }, { "CMPGTU", 0x27E }, { "CMPLT", 0x2BE }, { "CMPLTU", 0x2FE },
    { "MPY32", 0x200 }, { "MPY", 0x320 }, { "MPYU", 0x3E0 }, { "MPYSU", 0x360 }, { "MPYUS", 0x3A0 },
    { "MPYLH", 0x220 }, { "MPYHL", 0x120 }, { "MPYH", 0x020 }, { "MPYHU", 0x0E0 },
    { "ADDSP", 0x386 }, { "SUBSP", 0x38E }, { "MPYSP", 0x380 }, { "CMPEQSP", 0x388 }, { "CMPGTSP", 0x398 }, { "CMPLTSP", 0x3A8 },
    { "ADDDP", 0x396 }, { "SUBDP", 0x39E }, { "MPYDP", 0x1C0 }, { "CMPEQDP", 0x288 }, { "CMPGTDP", 0x298 }, { "CMPLTDP", 0x2A8 },
    { "MPY32U", 0x18C }, { "MPY32SU", 0x2C0 }, { "MPY32US", 0x19C }, { "LMBD", 0x35E },
};
/* src2, src1, dst: the classic D form (ADD/SUB same side) and the shifts on .S */
const Form kSrc2First[] = {
    { "ADD", 0x210 }, { "SUB", 0x230 }, { "SHL", 0x338 }, { "SHR", 0x378 }, { "SHRU", 0x278 },
    { "ADDAW", 0x310 }, { "ADDAH", 0x290 }, { "ADDAB", 0x210 }, { "ADDAD", 0x390 }, { "SUBAW", 0x330 },
};
/* src2, ucst5, dst */
const Form kSrc2Cst[] = {
    { "ADD", 0x250 }, { "SUB", 0x270 }, { "SHL", 0x328 }, { "SHR", 0x368 }, { "SHRU", 0x268 },
    { "ADDAW", 0x350 }, { "ADDAH", 0x2D0 }, { "ADDAB", 0x250 }, { "ADDAD", 0x3B0 }, { "SUBAW", 0x370 },
};
/* scst5, src2, dst */
const Form kCstFirst[] = {
    { "CMPEQ", 0x296 }, { "CMPGT", 0x236 }, { "CMPGTU", 0x276 }, { "CMPLT", 0x2B6 }, { "CMPLTU", 0x2F6 },
    { "XOR", 0x2FC }, { "AND", 0x27C }, { "OR", 0x23C }, { "ADD", 0x250 }, { "SUB", 0x168 },
};
/* src2, dst */
const Form kUnary[] = {
    { "MV", 0x23C }, { "NEG", 0x168 }, { "NOT", 0x2FC }, { "ABS", 0x0D6 }, { "NORM", 0x31E },
    { "INTSP", 0x256 }, { "SPTRUNC", 0x05E }, { "SPINT", 0x056 }, { "INTSPU", 0x24E }, { "INTDP", 0x1CE },
    { "INTDPU", 0x1DE }, { "SPDP", 0x028 }, { "RCPSP", 0x3D8 }, { "ABSSP", 0x3C8 },
};
/* a pair source in src2:src1 as odd:even, dst */
const Form kPairIn[] = {
    { "DPSP", 0x04E }, { "DPTRUNC", 0x00E }, { "DPINT", 0x046 }, { "RCPDP", 0x2D8 }, { "ABSDP", 0x2C8 },
};
/* the loads and stores: bits 2-8 with the mode and y cleared */
const Form kMemory[] = {
    { "LDB", 0x009 }, { "LDBU", 0x005 }, { "LDH", 0x011 }, { "LDHU", 0x001 }, { "LDW", 0x019 }, { "LDDW", 0x059 },
    { "LDNW", 0x04D }, { "LDNDW", 0x049 },
    { "STB", 0x00D }, { "STH", 0x015 }, { "STW", 0x01D }, { "STDW", 0x051 }, { "STNW", 0x055 }, { "STNDW", 0x05D },
};

int access_width(const std::string &m)
{
    if (m == "LDB" || m == "LDBU" || m == "STB") return 1;
    if (m == "LDH" || m == "LDHU" || m == "STH") return 2;
    if (m == "LDDW" || m == "STDW" || m == "LDNDW" || m == "STNDW") return 8;
    return 4;
}

}

/* one instruction: the predicate and parallel bar first, then the mnemonic and its operands */
void C6xTarget::instruction(Unit &u, const std::vector<Token> &t, size_t i)
{
    Section *sec = u.cur();
    if (!sec) return;
    if (!sec->code) { u.error("an instruction outside a code section"); return; }
    bool par = false;
    unsigned creg = 0, z = 0;
    if (i < t.size() && t[i].kind == T_PUNCT && t[i].text == "||") { par = true; i++; }
    if (is_punct(t, i, '[')) {
        i++;
        bool neg = false;
        if (is_punct(t, i, '!')) { neg = true; i++; }
        int reg, side;
        if (i >= t.size() || t[i].kind != T_NAME || !reg_name(t[i].text, reg, side) || predicate_code(reg, side) < 0 ||
            !is_punct(t, i + 1, ']')) {
            u.error("a predicate is [A0], [A1], [A2], [B0], [B1] or [B2], with ! before it for the zero test");
            return;
        }
        creg = (unsigned)predicate_code(reg, side);
        z = neg ? 1 : 0;
        i += 2;
        if (i < t.size() && t[i].kind == T_PUNCT && t[i].text == "||") { par = true; i++; }
    }
    if (i >= t.size() || t[i].kind != T_NAME) { u.error("an instruction expected"); return; }
    std::string m = upper(t[i].text);
    size_t dot = m.find('.');
    std::string unit;
    if (dot != std::string::npos) { unit = m.substr(dot + 1); m = m.substr(0, dot); }
    if (!unit.empty()) { u.error("a unit is not taken here: the compilers never name one, and asm6x's own choice is what is encoded"); return; }
    i++;
    std::vector<size_t> cuts;
    split_items(t, i, cuts);
    std::vector<Operand> o;
    unsigned long w = 0;
    bool have = false;
    if (m == "MVC") {
        /* a control register in or out, on .S2: the register side is B, or crosses in. The
           control register is a name, not a symbol, so it is read before the operands are. */
        static const struct { const char *name; unsigned code; } cregs[] = {
            { "AMR", 0 }, { "CSR", 1 }, { "IFR", 2 }, { "ISR", 2 }, { "ICR", 3 }, { "IER", 4 }, { "ISTP", 5 }, { "IRP", 6 },
            { "NRP", 7 }, { "TSCL", 10 }, { "TSCH", 11 }, { "ILC", 13 }, { "RILC", 14 }, { "REP", 15 }, { "PCE1", 16 },
            { "DNUM", 17 }, { "SSR", 21 }, { "GPLYA", 22 }, { "GPLYB", 23 }, { "GFPGFR", 24 }, { "DIER", 25 }, { "TSR", 26 },
            { "ITSR", 27 }, { "NTSR", 28 }, { "EFR", 29 }, { "ECR", 29 }, { "IERR", 31 } };
        if (cuts.size() != 3 || cuts[1] - 1 != cuts[0] + 1 || cuts[2] - 1 != cuts[1] + 1 ||
            t[cuts[0]].kind != T_NAME || t[cuts[1]].kind != T_NAME) { u.error("MVC takes a register and a control register"); return; }
        int reg, side, code = -1;
        bool in = reg_name(t[cuts[0]].text, reg, side);
        std::string cname = upper(t[in ? cuts[1] : cuts[0]].text);
        if (!in && !reg_name(t[cuts[1]].text, reg, side)) { u.error("MVC takes a register and a control register"); return; }
        for (size_t k = 0; k < sizeof cregs / sizeof *cregs; k++) if (cname == cregs[k].name) code = (int)cregs[k].code;
        if (code < 0) { u.error("'" + cname + "' is not a control register"); return; }
        if (in) w = 0x3A2 | ((unsigned long)code << 23) | ((unsigned long)reg << 18) | (side ? 0 : 1ul << 12);
        else {
            if (!side) { u.error("MVC out of a control register lands on the B side"); return; }
            w = 0x3E2 | ((unsigned long)reg << 23) | ((unsigned long)code << 18);
        }
        have = true;
    }
    if (!have && i < t.size())
        for (size_t k = 0; k + 1 < cuts.size(); k++) {
            Operand x;
            if (!operand(u, t, cuts[k], cuts[k + 1] - 1, x)) return;
            o.push_back(x);
        }
    size_t n = o.size();

    int fix_sym = -1;
    RelKind fix_kind = R_NONE;
    long long fix_add = 0;

    #define REG(k) (o[k].kind == O_REG)
    #define PAIR(k) (o[k].kind == O_PAIR)
    #define CST(k) (o[k].kind == O_CST)
    #define MEM(k) (o[k].kind == O_MEM)
    #define SYM(k) (o[k].kind == O_EXPR)

    if (have) {
    } else if (m == "NOP") {
        long long c = 1;
        if (n == 1 && CST(0)) c = o[0].v;
        else if (n != 0) { u.error("NOP takes a count"); return; }
        if (c < 1 || c > 9) { u.error("NOP takes 1 to 9"); return; }
        w = (unsigned long)(c - 1) << 13;
        have = true;
    } else if (m == "SWE") { w = 0x10000000; have = true; }
    else if (m == "IDLE") { w = 0x0001E000; have = true; }
    else if ((m == "B" || m == "RET") && n == 1 && REG(0)) {
        /* B .S2 reg: always the B side, the cross path for an A register */
        w = 0x362 | ((unsigned long)o[0].reg << 18) | (o[0].side ? 0 : 1ul << 12);
        have = true;
    } else if (m == "B" && n == 1 && SYM(0)) {
        w = 0x12;
        fix_sym = o[0].val.sym; fix_kind = R_PCR_S21; fix_add = o[0].v;
        have = true;
    } else if (m == "B" && n == 1 && CST(0)) { u.error("B needs a label or a register"); return; }
    else if (m == "CALLP" && n == 2 && SYM(0) && REG(1)) {
        w = 0x10000010 | ((unsigned long)o[1].side << 1);
        fix_sym = o[0].val.sym; fix_kind = R_PCR_S21; fix_add = o[0].v;
        have = true;
    } else if (m == "BNOP" && n == 2 && CST(1)) {
        if (o[1].v < 0 || o[1].v > 5) { u.error("BNOP's count is 0 to 5"); return; }
        if (REG(0)) w = 0x800362 | ((unsigned long)o[0].reg << 18) | (o[0].side ? 0 : 1ul << 12) | ((unsigned long)o[1].v << 13);
        else if (SYM(0)) { w = 0x120 | ((unsigned long)o[1].v << 13); fix_sym = o[0].val.sym; fix_kind = R_PCR_S10; fix_add = o[0].v; }
        else { u.error("BNOP needs a label or a register"); return; }
        have = true;
    } else if (m == "RETNOP" && n == 2 && REG(0) && CST(1)) {
        w = 0x800362 | ((unsigned long)o[0].reg << 18) | (o[0].side ? 0 : 1ul << 12) | ((unsigned long)o[1].v << 13);
        have = true;
    } else if (m == "ZERO" && n == 1 && (REG(0) || PAIR(0))) {
        w = (PAIR(0) ? 0x4F8ul : 0xA358ul) | ((unsigned long)o[0].reg << 23) | ((unsigned long)o[0].side << 1);
        have = true;
    } else if ((m == "MVK" || m == "MVKL" || m == "MVKH" || m == "MVKLH") && n == 2 && REG(1)) {
        unsigned long dst = ((unsigned long)o[1].reg << 23) | ((unsigned long)o[1].side << 1);
        if (CST(0)) {
            long long c = o[0].v;
            if (m == "MVK" && c >= -16 && c <= 15) {
                w = 0xA358 | dst | (((unsigned long)c & 31) << 18);   /* the .L form asm6x prefers */
            } else if (m == "MVK" || m == "MVKL") {
                if (m == "MVK" && (c < -32768 || c > 32767)) { u.error("MVK's constant is 16 bits; MVKL and MVKH take a wider one in halves"); return; }
                w = 0x28 | dst | (((unsigned long)c & 0xFFFF) << 7);
            } else {
                w = 0x68 | dst | ((((unsigned long)c >> (m == "MVKH" ? 16 : 0)) & 0xFFFF) << 7);
            }
        } else if (SYM(0)) {
            if (m == "MVK") { u.error("MVK takes a constant; a symbol's address needs MVKL and MVKH"); return; }
            w = (m == "MVKL" ? 0x28ul : 0x68ul) | dst;
            fix_sym = o[0].val.sym; fix_kind = m == "MVKL" ? R_ABS_L16 : R_ABS_H16; fix_add = o[0].v;
        } else { u.error(m + " takes a constant or a symbol, and a register"); return; }
        have = true;
    } else if (m == "ADDK" && n == 2 && CST(0) && REG(1)) {
        if (o[0].v < -32768 || o[0].v > 32767) { u.error("ADDK's constant is 16 bits"); return; }
        w = 0x50 | ((unsigned long)o[1].reg << 23) | ((unsigned long)o[1].side << 1) | (((unsigned long)o[0].v & 0xFFFF) << 7);
        have = true;
    } else if ((m == "EXT" || m == "EXTU" || m == "CLR" || m == "SET") && n == 4 && REG(0) && CST(1) && CST(2) && REG(3)) {
        if (o[0].side != o[3].side) { u.error(m + "'s source and destination are on one side"); return; }
        if (o[1].v < 0 || o[1].v > 31 || o[2].v < 0 || o[2].v > 31) { u.error(m + "'s constants are 0 to 31"); return; }
        unsigned long base = m == "EXT" ? 0x48 : m == "EXTU" ? 0x08 : m == "CLR" ? 0xC8 : 0x88;
        w = base | ((unsigned long)o[3].reg << 23) | ((unsigned long)o[0].reg << 18) | ((unsigned long)o[1].v << 13) |
            ((unsigned long)o[2].v << 8) | ((unsigned long)o[3].side << 1);
        have = true;
    } else if (n == 3 && (REG(0) || PAIR(0)) && (REG(1) || PAIR(1)) && (REG(2) || PAIR(2))) {
        unsigned f;
        if (REG(0) && REG(1) && REG(2) && o[0].side != o[2].side && o[1].side == o[2].side &&
            m != "SHL" && m != "SHR" && m != "SHRU" && m != "EXT" && m != "EXTU" && m != "SET" && m != "CLR") {
            /* only the second source may cross: asm6x swaps a commutative operation's sources,
               turns a compare about, and has an .S form of SUB and SUBSP that takes the first
               crossed - all read back from it */
            if (m == "ADD" || m == "AND" || m == "OR" || m == "XOR" || m == "CMPEQ" || m == "MPY32" || m == "ADDSP" ||
                m == "MPYSP" || m == "CMPEQSP") {
                Operand x = o[0]; o[0] = o[1]; o[1] = x;
            } else if (m == "CMPLT" || m == "CMPGT" || m == "CMPLTU" || m == "CMPGTU" || m == "CMPLTSP" || m == "CMPGTSP") {
                Operand x = o[0]; o[0] = o[1]; o[1] = x;
                m = m.compare(0, 5, "CMPLT") == 0 ? "CMPGT" + m.substr(5) : "CMPLT" + m.substr(5);
            } else if (m == "SUB" || m == "SUBSP") {
                w = ((m == "SUB" ? 0x35Cul : 0x3AEul) << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[0].reg << 18) |
                    ((unsigned long)o[1].reg << 13) | (1ul << 12) | ((unsigned long)o[2].side << 1);
                have = true;
            } else { u.error(m + "'s first source is on the destination's side; only the second may cross"); return; }
        }
        bool same = o[0].side == o[2].side && o[1].side == o[2].side;
        if (have) {
        } else
        if ((m == "ADD" || m == "SUB") && PAIR(2) && REG(0) && REG(1)) {
            /* the 40-bit forms on .L */
            f = m == "ADD" ? 0x11E : 0x13E;
            if (!same) { u.error(m + " into a pair takes sources of its side"); return; }
            w = ((unsigned long)f << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[1].reg << 18) | ((unsigned long)o[0].reg << 13);
        } else if ((m == "ADDU" || m == "SUBU") && PAIR(2) && REG(0) && REG(1) && same) {
            w = ((m == "ADDU" ? 0x15Eul : 0x17Eul) << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[1].reg << 18) | ((unsigned long)o[0].reg << 13);
        } else if ((m == "EXT" || m == "EXTU" || m == "SET" || m == "CLR") && REG(0) && REG(1) && REG(2)) {
            /* the field pair in a register: src2 the value, src1 the csta:cstb register of the
               destination's side, the value alone may cross */
            if (o[1].side != o[2].side) { u.error(m + "'s field register is on the destination's side"); return; }
            unsigned fm = m == "EXT" ? 0x2F8 : m == "EXTU" ? 0x2B8 : m == "SET" ? 0x3B8 : 0x3F8;
            w = ((unsigned long)fm << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[0].reg << 18) | ((unsigned long)o[1].reg << 13) |
                (o[0].side != o[2].side ? 1ul << 12 : 0);
        } else if ((f = form_of(kSrc2First, sizeof kSrc2First / sizeof *kSrc2First, m)) != 0xFFFF && REG(0) && REG(1) && REG(2) &&
                   (same || m == "SHL" || m == "SHR" || m == "SHRU")) {
            /* ADD/SUB register forms of the classic D unit take both sources from their side; the
               shifts on .S take the value shifted over the cross path but never the count */
            if (m == "ADD" || m == "SUB" || m == "ADDAW" || m == "ADDAH" || m == "ADDAB" || m == "ADDAD" || m == "SUBAW") {
                if (!same) { u.error(m + "'s sources are on the destination's side, or the second crosses"); return; }
                w = ((unsigned long)f << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[0].reg << 18) | ((unsigned long)o[1].reg << 13);
                if (m != "ADD" && m != "SUB") w |= 1ul << 12;   /* asm6x sets x in the address forms */
            } else {
                if (o[1].side != o[2].side) { u.error("a shift count comes from the destination's side"); return; }
                w = ((unsigned long)f << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[0].reg << 18) | ((unsigned long)o[1].reg << 13) |
                    (o[0].side != o[2].side ? 1ul << 12 : 0);
            }
        } else if ((m == "ADD" || m == "SUB") && REG(0) && REG(1) && REG(2)) {
            /* the C64x+ D form with the cross path: src1, src2 the other way about */
            if (o[0].side != o[2].side) { u.error(m + "'s first source is on the destination's side"); return; }
            w = ((m == "ADD" ? 0x2ACul : 0x2CCul) << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[1].reg << 18) |
                ((unsigned long)o[0].reg << 13) | (1ul << 12);
        } else if ((f = form_of(kThreeReg, sizeof kThreeReg / sizeof *kThreeReg, m)) != 0xFFFF) {
            if (o[0].side != o[2].side) { u.error(m + "'s first source is on the destination's side; only the second may cross"); return; }
            w = ((unsigned long)f << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[1].reg << 18) | ((unsigned long)o[0].reg << 13) |
                (o[1].side != o[2].side ? 1ul << 12 : 0);
        } else { u.error(m + " does not take three registers this way"); return; }
        if (!have) w |= (unsigned long)o[2].side << 1;
        have = true;
    } else if (n == 3 && REG(0) && CST(1) && REG(2) && m.compare(0, 3, "CMP") == 0) {
        /* a compare written register first: asm6x takes it as the constant-first form */
        Operand x = o[0]; o[0] = o[1]; o[1] = x;
        goto cst_first;
    } else if (n == 3 && REG(0) && CST(1) && REG(2)) {
        /* src2, constant, dst: ADD/SUB with a ucst5, and asm6x's turn of a negative one into
           the other instruction; the shifts with a count */
        long long c = o[1].v;
        if (o[0].side != o[2].side) { u.error(m + " with a constant takes its register from the destination's side"); return; }
        unsigned f;
        if ((m == "ADD" || m == "SUB") && c < 0) {
            if (m == "SUB") { m = "ADD"; c = -c; }
            else {
                if (c < -16) { u.error("ADD's negative constant is -16 to -1"); return; }
                w = (0x2BCul << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[0].reg << 18) | (((unsigned long)c & 31) << 13) |
                    ((unsigned long)o[2].side << 1);
                have = true;
            }
        }
        if (!have) {
            f = form_of(kSrc2Cst, sizeof kSrc2Cst / sizeof *kSrc2Cst, m);
            if (f == 0xFFFF) { u.error(m + " does not take a constant here"); return; }
            if (c < 0 || c > 31) { u.error(m + "'s constant is 0 to 31"); return; }
            w = ((unsigned long)f << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[0].reg << 18) | ((unsigned long)c << 13) |
                ((unsigned long)o[2].side << 1);
            if (m == "ADDAW" || m == "ADDAH" || m == "ADDAB" || m == "ADDAD" || m == "SUBAW") w |= 1ul << 12;
            have = true;
        }
    } else if (n == 3 && CST(0) && REG(1) && REG(2)) {
        /* constant, src2, dst: the compares on .L, the logic on .D, with a scst5 */
        long long c;
    cst_first:
        c = o[0].v;
        unsigned f = form_of(kCstFirst, sizeof kCstFirst / sizeof *kCstFirst, m);
        if (f == 0xFFFF) { u.error(m + " does not take a constant first"); return; }
        if (m == "ADD") {
            if (c < 0 || c > 31 || o[1].side != o[2].side) { u.error("ADD's constant first takes 0 to 31 on one side"); return; }
            w = (0x250ul << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[1].reg << 18) | ((unsigned long)c << 13);
        } else {
            bool unsignedc = m == "CMPGTU" || m == "CMPLTU";
            if (unsignedc ? (c < 0 || c > 15) : (c < -16 || c > 15)) { u.error(m + "'s constant is out of range"); return; }
            w = ((unsigned long)f << 2) | ((unsigned long)o[2].reg << 23) | ((unsigned long)o[1].reg << 18) | (((unsigned long)c & 31) << 13) |
                (o[1].side != o[2].side ? 1ul << 12 : 0);
        }
        w |= (unsigned long)o[2].side << 1;
        have = true;
    } else if (n == 2 && (REG(0) || PAIR(0)) && (REG(1) || PAIR(1))) {
        unsigned f;
        if (PAIR(0) && (f = form_of(kPairIn, sizeof kPairIn / sizeof *kPairIn, m)) != 0xFFFF) {
            if (o[0].side != o[1].side) { u.error(m + " takes its pair from the destination's side"); return; }
            w = ((unsigned long)f << 2) | ((unsigned long)o[1].reg << 23) | ((unsigned long)(o[0].reg + 1) << 18) | ((unsigned long)o[0].reg << 13);
        } else if (PAIR(0) && PAIR(1) && (m == "MV" || m == "ABS" || m == "NEG")) {
            if (o[0].side != o[1].side) { u.error("a pair " + m + " stays within its side"); return; }
            w = ((m == "MV" ? 0x106ul : m == "ABS" ? 0x1C6ul : 0x126ul) << 2) | ((unsigned long)o[1].reg << 23) | ((unsigned long)o[0].reg << 18);
        } else if ((f = form_of(kUnary, sizeof kUnary / sizeof *kUnary, m)) != 0xFFFF && REG(0)) {
            w = ((unsigned long)f << 2) | ((unsigned long)o[1].reg << 23) | ((unsigned long)o[0].reg << 18) |
                (o[0].side != o[1].side ? 1ul << 12 : 0);
            if (m == "NOT") w |= 31ul << 13;
        } else { u.error(m + " does not take these two registers"); return; }
        w |= (unsigned long)o[1].side << 1;
        have = true;
    } else if (n == 2 && ((MEM(0) && (REG(1) || PAIR(1))) || ((REG(0) || PAIR(0)) && MEM(1)))) {
        bool load = MEM(0);
        const Operand &mem = load ? o[0] : o[1];
        const Operand &reg = load ? o[1] : o[0];
        unsigned f = form_of(kMemory, sizeof kMemory / sizeof *kMemory, m);
        if (f == 0xFFFF) { u.error(m + " is not a load or a store"); return; }
        if (load != (m[0] == 'L')) { u.error(m + "'s operands are the wrong way about"); return; }
        int width = access_width(m);
        long long off = mem.v;
        if (mem.v <= -2) off = (-2 - mem.v) * width;       /* [n] was in units */
        else if (mem.v == -1) off = width;                 /* *R++ with no count: one unit */
        if (off % width) { u.error("the offset is not a multiple of the access width"); return; }
        long long count = off / width;
        if (count > 31 && mem.mode == 0 && !mem.minus && mem.side == 1 && (mem.reg == 14 || mem.reg == 15) && count < 32768 && (f & 0x40) == 0) {
            /* the 15-bit offset from the data or stack pointer: the constant in 8-22, the
               pointer in bit 7, and 11 where the other form has 01 */
            w = ((unsigned long)(f & 0x1C) << 2) | 0xC | ((unsigned long)reg.reg << 23) | ((unsigned long)count << 8) |
                (mem.reg == 15 ? 1ul << 7 : 0) | ((unsigned long)reg.side << 1);
        } else {
            if (count < 0 || count > 31) { u.error("the offset is 0 to 31 count of the access, or up to 32767 from B14 or B15"); return; }
            unsigned mode;
            switch (mem.mode) {
            case 0: mode = mem.minus ? 0 : 1; break;
            case 1: mode = 9; break;   /* *++R */
            case 2: mode = 8; break;   /* *--R */
            case 3: mode = 11; break;  /* *R++ */
            default: mode = 10; break; /* *R-- */
            }
            w = ((unsigned long)f << 2) | ((unsigned long)reg.reg << 23) | ((unsigned long)mem.reg << 18) | ((unsigned long)count << 13) |
                ((unsigned long)mode << 9) | ((unsigned long)mem.side << 7) | ((unsigned long)reg.side << 1);
        }
        if ((m == "LDNDW" || m == "STNDW") && PAIR(load ? 1 : 0)) w = (w & ~(31ul << 23)) | ((unsigned long)(reg.reg + 1) << 23);
        have = true;
    }
    #undef REG
    #undef PAIR
    #undef CST
    #undef MEM
    #undef SYM

    if (!have) { u.error("'" + m + "' with these operands is not an instruction this assembler knows"); return; }
    if (creg && (m == "NOP" || m == "SWE" || m == "IDLE")) { u.error(m + " cannot be predicated"); return; }
    w |= ((unsigned long)creg << 29) | ((unsigned long)z << 28);
    /* the unit the word names, for a packet: asm6x moves an instruction to another unit
       when two collide, which the compilers never ask of it; here a collision is refused */
    unsigned want = 0;
    if (m != "NOP" && m != "SWE" && m != "IDLE") {
        unsigned low = (unsigned)(w >> 2) & 0x1F;
        bool ldst = (low & 3) == 1 || (low & 3) == 3;
        int side = ldst ? (int)((w >> 7) & 1) : (int)((w >> 1) & 1);
        char kind = ldst || low == 0x10 || low == 0x1C ? 'D' : (low & 7) == 6 ? 'L' : (low & 0xF) == 0 ? 'M' : 'S';
        want = 1u << ((kind == 'D' ? 0 : kind == 'L' ? 2 : kind == 'M' ? 4 : 6) + side);
    }
    if (par) {
        if (u.here() == 0 || last_at + 4 != u.here()) { u.error("|| needs an instruction before it"); return; }
        if (units & want) { u.error("two instructions of one packet want the same unit; asm6x would move one, this assembler does not"); return; }
        sec->bytes[last_at] |= 1;
        units |= want;
    } else units = want;
    last_at = u.here();
    if (fix_sym >= 0) u.fixup(last_at, fix_sym, fix_kind, fix_add);
    u.emit32(w);
}
