#ifndef ASM_H
#define ASM_H

/* asm6x: an assembler for the TMS320C6000 - the C674x of the C6747 - taking the assembly the
   cc1i, cxx1i and shci compilers write for their tms6747 target and writing the ELF object
   TI's own asm6x writes, which lnk6x links against TI's runtime. asm6x is the oracle: every
   encoding here was read back from it, one form per line, and the tests hold it to that.

   C-style ISO C++14, one thread per input file, no mutable globals. */

#include <string>
#include <vector>

enum TokKind { T_NAME, T_NUM, T_STR, T_PUNCT };

struct Token {
    TokKind kind;
    std::string text;
    long long value;
};

/* the C6000 EABI relocation types, numbered as the ABI numbers them */
enum RelKind {
    R_NONE = 0, R_ABS32 = 1, R_ABS16 = 2, R_ABS8 = 3, R_PCR_S21 = 4, R_PCR_S12 = 5, R_PCR_S10 = 6,
    R_PCR_S7 = 7, R_ABS_S16 = 8, R_ABS_L16 = 9, R_ABS_H16 = 10, R_PREL31 = 25
};

struct Reloc {
    unsigned long offset;
    int symbol;
    RelKind kind;
    long long addend;   /* written as a RELA entry for the kinds asm6x writes that way, else in place */
    unsigned long order;    /* its place in the source, by which asm6x orders the relocation sections */
};

struct Section {
    std::string name;
    bool code;          /* .text and what .sect names with .text: instructions go here */
    bool bss;           /* .bss / .usect: size only */
    bool readonly;      /* no SHF_WRITE: .const, .rodata, .switch, the exidx and extab tables */
    bool alloc;         /* loaded: every section the compilers write is */
    int kind;           /* SEC_PROGBITS, SEC_NOBITS, SEC_UNWIND */
    int align;
    int linked;         /* an exidx table: the code section it describes, for sh_link */
    std::vector<unsigned char> bytes;
    std::vector<Reloc> relocs;
};

enum { SEC_PROGBITS = 1, SEC_NOBITS = 8, SEC_UNWIND = 0x70000001 };

enum SymBind { B_LOCAL, B_GLOBAL, B_WEAK, B_EXTERN };

enum { SYM_NONE = 0, SYM_OBJECT = 1, SYM_FUNC = 2, SYM_SECTION = 3 };

struct Symbol {
    std::string name;
    SymBind bind;
    bool defined;
    int type;           /* SYM_FUNC for a label in code, SYM_OBJECT for one in data, as asm6x types them */
    int section;
    long long value;
    int line;
    int pass;           /* the pass that defined it */
    int prev_section;   /* where the previous pass put it: the layout has settled when nothing moved */
    long long prev_value;
    bool referenced;    /* named in an expression, a .global or a .ref */
    long long size;     /* a .bss symbol's, as asm6x records it; 0 otherwise */
};

struct Fixup {
    int section;
    unsigned long at;
    int symbol;
    int sub;            /* a label subtracted: the difference is a constant once both are placed */
    RelKind kind;
    long long addend;
    int line;
};

/* the value of an expression: a constant, or a symbol plus a constant, or a difference of two
   labels; the relocation operators - $EXIDX_FUNC(f), $EXIDX_EXTAB("t") and their kin - name
   the relocation the writer must emit for it */
struct Value {
    long long v;
    int sym;
    int sub;
    RelKind op;         /* R_NONE for a plain expression, else the operator's relocation */
    bool operate;       /* an operator was written */
};

class Unit {
public:
    Unit();

    int line;
    int pass;
    int current;
    std::string source;                     /* the input's base name, the file symbol */
    std::vector<unsigned long> prev_sizes;
    std::vector<Section> sections;
    std::vector<Symbol> symbols;
    std::vector<Fixup> fixups;
    std::vector<std::string> errors;
    std::vector<std::pair<int, int> > depends;  /* .symdepend: (symbol, section) pairs, R_NONE entries */

    void begin_pass(int n);
    bool moved() const;
    void error(const std::string &msg);
    int section(const std::string &name, int align);
    Section *cur();
    unsigned long here();

    int find(const std::string &name) const;
    int ref(const std::string &name);
    bool define(const std::string &name, int type);
    bool constant(const std::string &name, long long v);

    void align(int bytes);
    void emit8(unsigned v);
    void emit16(unsigned v);
    void emit32(unsigned long v);
    void fixup(unsigned long at, int sym, RelKind kind, long long addend = 0, int sub = -1);

    void resolve();
};

bool split_line(const std::string &src, std::vector<Token> &out, std::string &err);
std::string upper(const std::string &s);
bool is_punct(const std::vector<Token> &t, size_t i, char c);
bool eval(Unit &u, const std::vector<Token> &t, size_t from, size_t to, Value &v, std::string &err);
bool eval_const(Unit &u, const std::vector<Token> &t, size_t from, size_t to, long long &v, std::string &err);

/* the target: one statement at a time, over the source until the layout settles */
class C6xTarget {
public:
    C6xTarget();
    void begin_pass(int pass);
    void statement(Unit &u, std::vector<Token> &t);
    bool finished() const { return done; }
    void end_of_file(Unit &u);

private:
    bool done;
    int pass;
    bool parallel;      /* the last instruction opened an execute packet this one joins */
    unsigned long last_at;
    unsigned units;     /* the units the open packet has taken, a bit per unit and side */

    bool directive(Unit &u, const std::vector<Token> &t, size_t i);
    void instruction(Unit &u, const std::vector<Token> &t, size_t i);
};

bool write_elf(const Unit &u, const std::string &path, std::string &err);

class Assembler {
public:
    Assembler(const std::string &input, const std::string &output);
    bool run();
    const std::vector<std::string> &errors() const { return unit.errors; }
    void fail(const std::string &why) { unit.errors.push_back(why); }

private:
    std::string input;
    std::string output;
    Unit unit;

    Assembler(const Assembler &);
    Assembler &operator=(const Assembler &);
};

#endif
