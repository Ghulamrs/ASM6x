#include "asm.h"

#include <cstdio>

Unit::Unit() : line(0), pass(0), current(-1)
{
}

/* a new pass over the source: the sections, fixups and errors start again; the symbols keep
   their definitions from the previous pass (so a forward reference is known) and remember
   where they were, for moved() */
void Unit::begin_pass(int n)
{
    pass = n;
    prev_sizes.clear();
    for (size_t i = 0; i < sections.size(); i++)
        prev_sizes.push_back((unsigned long)sections[i].bytes.size());
    sections.clear();
    depends.clear();
    /* asm6x numbers .text first whatever the source opens first; its alignment is the
       fetch packet's, 32 */
    current = -1;
    section(".text", 32);
    current = 0;
    fixups.clear();
    errors.clear();
    line = 0;
    for (size_t i = 0; i < symbols.size(); i++) {
        symbols[i].prev_section = symbols[i].section;
        symbols[i].prev_value = symbols[i].value;
    }
}

/* did any section's size or any symbol's place change since the previous pass? */
bool Unit::moved() const
{
    if (sections.size() != prev_sizes.size())
        return true;
    for (size_t i = 0; i < sections.size(); i++)
        if (sections[i].bytes.size() != prev_sizes[i])
            return true;
    for (size_t i = 0; i < symbols.size(); i++) {
        const Symbol &s = symbols[i];
        if (s.defined && (s.value != s.prev_value || s.section != s.prev_section))
            return true;
    }
    return false;
}

void Unit::error(const std::string &msg)
{
    char buf[32];
    snprintf(buf, sizeof buf, "line %d: ", line);
    errors.push_back(buf + msg);
}

/* the section of that name, opened on first use with the character its name gives it:
   .text and .text:<x> hold code; .bss and .far are uninitialised; .const, .rodata, .switch
   and the exception tables are read-only; an exidx table is SHT_C6000_UNWIND linked to the
   code section it describes. Everything the compilers write is loaded. */
int Unit::section(const std::string &name, int align)
{
    for (size_t i = 0; i < sections.size(); i++)
        if (sections[i].name == name) {
            current = (int)i;
            if (align > sections[i].align) sections[i].align = align;
            return current;
        }
    Section s;
    s.name = name;
    std::string head = name.substr(0, name.find(':'));
    s.code = head == ".text";
    s.bss = head == ".bss" || head == ".far";
    s.readonly = head == ".const" || head == ".rodata" || head == ".switch" || head == ".init_array" ||
                 head == ".c6xabi.exidx" || head == ".c6xabi.extab";
    s.alloc = true;
    s.kind = s.bss ? SEC_NOBITS : head == ".c6xabi.exidx" ? SEC_UNWIND : SEC_PROGBITS;
    s.align = align;
    s.linked = -1;
    if (head == ".c6xabi.exidx" && name.size() > head.size()) {
        std::string code = name.substr(head.size() + 1);
        for (size_t i = 0; i < sections.size(); i++)
            if (sections[i].name == code) s.linked = (int)i;
    }
    sections.push_back(s);
    current = (int)sections.size() - 1;
    return current;
}

Section *Unit::cur()
{
    if (current < 0) {
        error("no section open");
        return 0;
    }
    return &sections[current];
}

unsigned long Unit::here()
{
    return current < 0 ? 0 : (unsigned long)sections[current].bytes.size();
}

int Unit::find(const std::string &name) const
{
    for (size_t i = 0; i < symbols.size(); i++)
        if (symbols[i].name == name)
            return (int)i;
    return -1;
}

int Unit::ref(const std::string &name)
{
    int i = find(name);
    if (i >= 0)
        return i;
    Symbol s;
    s.name = name;
    s.bind = B_LOCAL;
    s.defined = false;
    s.type = SYM_NONE;
    s.section = -1;
    s.value = 0;
    s.line = line;
    s.pass = 0;
    s.prev_section = -1;
    s.prev_value = 0;
    s.referenced = false;
    s.size = 0;
    symbols.push_back(s);
    return (int)symbols.size() - 1;
}

bool Unit::define(const std::string &name, int type)
{
    if (!cur())
        return false;
    int i = ref(name);
    Symbol &s = symbols[i];
    if (s.defined && s.pass == pass) {
        error("'" + name + "' is already defined");
        return false;
    }
    if (s.bind == B_EXTERN) s.bind = B_GLOBAL;   /* .ref'd and then defined: it is this file's */
    s.defined = true;
    s.type = type;
    s.section = current;
    s.value = (long long)here();
    s.line = line;
    s.pass = pass;
    return true;
}

/* .set: an absolute value, section -1 */
bool Unit::constant(const std::string &name, long long v)
{
    int i = ref(name);
    Symbol &s = symbols[i];
    if (s.defined && s.pass == pass && (s.section >= 0 || s.value != v)) {
        error("'" + name + "' is already defined");
        return false;
    }
    s.defined = true;
    s.section = -1;
    s.value = v;
    s.pass = pass;
    return true;
}

void Unit::align(int bytes)
{
    Section *s = cur();
    if (!s) return;
    if (bytes > s->align) s->align = bytes;
    while (s->bytes.size() % (size_t)bytes)
        s->bytes.push_back(0);
}

void Unit::emit8(unsigned v)
{
    Section *s = cur();
    if (s)
        s->bytes.push_back((unsigned char)(v & 0xFF));
}

void Unit::emit16(unsigned v)
{
    emit8(v);
    emit8(v >> 8);
}

void Unit::emit32(unsigned long v)
{
    emit16((unsigned)(v & 0xFFFF));
    emit16((unsigned)((v >> 16) & 0xFFFF));
}

void Unit::fixup(unsigned long at, int sym, RelKind kind, long long addend, int sub)
{
    Fixup f;
    f.section = current;
    f.at = at;
    f.symbol = sym;
    f.sub = sub;
    f.kind = kind;
    f.addend = addend;
    f.line = line;
    fixups.push_back(f);
}

/* after a pass: every fixup becomes a value in place, or a relocation. A branch to a label
   of its own section is settled here, as asm6x settles it; its displacement is in words from
   the start of the fetch packet holding the branch, not from the branch. A label difference
   is a constant once both sit in one section. Everything else - an address in a data word,
   the halves of an MVKL/MVKH pair, a branch out of the section, an exception-table entry -
   goes to the linker, with the addend in place for the kinds asm6x writes as REL and in the
   entry for the two it writes as RELA. */
void Unit::resolve()
{
    for (size_t i = 0; i < symbols.size(); i++) {
        Symbol &s = symbols[i];
        if (!s.defined && s.bind != B_EXTERN && s.bind != B_GLOBAL && s.bind != B_WEAK) {
            line = s.line;
            error("'" + s.name + "' is not defined");
        }
    }
    for (size_t i = 0; i < fixups.size(); i++) {
        const Fixup &f = fixups[i];
        const Symbol &s = symbols[f.symbol];
        line = f.line;
        Section &sec = sections[f.section];
        if (s.defined && s.section < 0) {
            error("'" + s.name + "' is a constant, not an address");
            continue;
        }
        if (f.sub >= 0) {
            const Symbol &b = symbols[f.sub];
            if (!s.defined || !b.defined) continue;
            if (s.section != b.section) { error("labels in different sections cannot be subtracted"); continue; }
            long long d = s.value - b.value + f.addend;
            int width = f.kind == R_ABS32 ? 4 : f.kind == R_ABS16 ? 2 : 1;
            for (int k = 0; k < width; k++)
                sec.bytes[f.at + (unsigned long)k] = (unsigned char)((unsigned long long)d >> (8 * k));
            continue;
        }
        if ((f.kind == R_PCR_S21 || f.kind == R_PCR_S10) && s.defined && s.section == f.section && s.bind != B_WEAK) {
            long long disp = (s.value + f.addend - (long long)(f.at & ~31ul)) / 4;
            int bits = f.kind == R_PCR_S21 ? 21 : 10, shift = f.kind == R_PCR_S21 ? 7 : 16;
            if (disp < -(1LL << (bits - 1)) || disp >= (1LL << (bits - 1))) { error("branch to '" + s.name + "' is too far"); continue; }
            unsigned long w = (unsigned long)sec.bytes[f.at] | ((unsigned long)sec.bytes[f.at + 1] << 8) |
                              ((unsigned long)sec.bytes[f.at + 2] << 16) | ((unsigned long)sec.bytes[f.at + 3] << 24);
            w |= ((unsigned long)disp & ((1ul << bits) - 1)) << shift;
            for (int k = 0; k < 4; k++) sec.bytes[f.at + (unsigned long)k] = (unsigned char)(w >> (8 * k));
            continue;
        }
        Reloc r;
        r.offset = f.at;
        r.symbol = f.symbol;
        r.kind = f.kind;
        r.addend = f.addend;
        r.order = (unsigned long)i;
        if (f.kind != R_ABS_L16 && f.kind != R_ABS_H16) {
            /* REL: the addend is in the field */
            int width = f.kind == R_ABS16 ? 2 : f.kind == R_ABS8 ? 1 : 4;
            if (f.kind == R_ABS32 || f.kind == R_ABS16 || f.kind == R_ABS8)
                for (int k = 0; k < width; k++)
                    sec.bytes[f.at + (unsigned long)k] = (unsigned char)((unsigned long long)f.addend >> (8 * k));
        }
        sec.relocs.push_back(r);
    }
}
