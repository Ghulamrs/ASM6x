# asm6x

An assembler for the TMS320C6000 — the C674x core of the C6747 — in C-style ISO C++14.
It takes the assembly the `cc1i`, `cxx1i` and `shci` compilers write for their `tms6747`
target and writes the ELF object TI's own `asm6x` writes for it, which `lnk6x` links
against TI's runtime. It is the C6000 counterpart of [MASM](../MASM), the x86-64
assembler, and lives beside it rather than inside it.

TI's `asm6x` (CCS 7.4, C6000 CGT 8.2.2, on the Windows box) is the oracle. Every encoding
here was read back from it, one form per line — `tests/enc/forms.s` is that probe — and
the tests hold every object to it, table by table.

## Layout

```
src/asm.h          shared structs, Unit, the target, the writer, Assembler
src/lexer.cpp      a TI source line -> tokens (; comments, name in column 1 is a label, ||)
src/expr.cpp       constant expressions and TI's relocation operators ($EXIDX_FUNC and kin)
src/unit.cpp       sections, symbols, emission, fixup resolution
src/c6x.cpp        directives, operands, the instruction encoder
src/elf.cpp        the TI ELF writer
src/assembler.cpp  one job: read, assemble until the layout settles, resolve, write
src/main.cpp       command line, one thread per input file
tests/             tests/run.sh (python3 only), tests/windows.sh (the box)
```

## Build

```
mkdir -p build && c++ -std=c++14 -O2 -pthread -Wall -Wextra -pedantic src/*.cpp -o build/asm6x
```

## Use

```
asm6x file.s -o file.obj
asm6x a.s b.s c.s              each on its own thread, a.obj b.obj c.obj beside them
```

## What it encodes

The instruction word is `creg z dst src2 src1 x form s p`; `src/c6x.cpp` holds the ten
form bits of every instruction the compilers write and a few beyond them. The compilers
never name a unit, so the unit is asm6x's own default, read back from it: register `ADD`,
`SUB` and `MV` go to `.D` (the C64x+ `.D` forms when a source crosses), `AND`/`OR`/`XOR`
to `.D`'s C64x+ forms, the compares to `.L`, shifts, branches, `MVK` and the field
instructions to `.S`, multiplies to `.M`. asm6x's rewrites are followed too: `ADD r, -4`
is the `.D` `ADD` with a signed constant, `SUB r, -4` is `ADD r, 4`, `MVK` of a constant
in -16..15 is the `.L` form, a crossed first source of a commutative operation is swapped,
of a compare turned about, of `SUB` given the `.S` form that takes it. A branch to a label
of its own section is settled in place, in words from the fetch packet holding it; every
other reference is a relocation of the kind asm6x writes — `ABS_L16`/`ABS_H16` as RELA
entries, the rest REL with the addend in place.

Directives: `.text`, `.data`, `.sect`, `.bss`, `.usect`, `.global`, `.def`, `.ref`,
`.weak`, `.align`, `.word`/`.long`/`.int`/`.ulong`, `.half`/`.short`, `.byte`/`.char`,
`.string`/`.cstring`, `.space`, `.set`/`.equ` (either spelling), `.symdepend`, `.end`,
and the ones that change nothing (`.clink`, `.retain`, `.nocmp`). A `.word` or `.half`
aligns its section as TI's do; a `.bss` symbol carries its size when global.

The object: `.text` first and 32-aligned, the source's sections in order, then
`.c6xabi.attributes` (the bytes asm6x writes for `--abi=eabi -mv6740`, which lnk6x checks
a file against), `.symtab`, the exidx tables, the relocation sections in the order the
source first needed them, `.TI.symbol.alias`, `.TI.section.flags`, the string tables.
Every symbol is `STV_HIDDEN`, as asm6x marks them.

Not done: units named in the source, packets whose instructions collide on a unit (asm6x
moves one; here it is refused), the compact 16-bit instructions asm6x writes by default
(the oracle runs with `--no_compress`), DWARF, `MVC`, `ADDKPC`, `.field`, the register
addressing modes beyond a constant offset.

## In RIDE

RStudio's workspace builds `asm6x.exe` into its `bin` beside `vm6747.exe` (make-projects.py
knows it as the sixth product, on all three machines). Every project build for `tms6747`
then assembles the `.vm` directory's assembly into TI objects, and with TI's C6000
compiler directory named (Tools > TI compiler for tms6747..., or `--ti dir [--tilib dir]`)
lnk6x links them against TI's runtime into `<program>.out`. TriLab's CCS leg says
`RIDE-OUT` for its C and C++ labs.

## Tests

`sh tests/run.sh` assembles `tests/enc/*.s` and compares each object with the one asm6x
wrote for the same file (`*.asm6x.obj`, recorded by `sh tests/windows.sh record`): the
sections, every code word, every data byte, the relocations and the symbols, by name.
python3 only, so it runs on all three machines.

`sh tests/windows.sh <dir>` ships a directory of `.s` to the box, has asm6x assemble
each, assembles each here, diffs every pair, then links ours with lnk6x against
`rts6740_elf_eh.lib` (`WITH=<dir>` adds a runtime's objects to every link, for shci's
programs). On 2026-09-18: cc1i 403 of 403 identical and linked, cxx1i 302 of 302, shci
58 of 58 with 57 linked — the one that does not borrows `cbrt`, which TI's runtime lacks.
