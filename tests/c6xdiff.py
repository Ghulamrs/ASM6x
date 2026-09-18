#!/usr/bin/env python3
"""Compares two TI C6000 ELF objects - ours and asm6x's for the same source - on what
matters: the sections (name, type, flags, alignment, size), every word of every executable
section, every byte of the others, the relocations (offset, type, symbol name, addend) and
the symbols (name, binding, type, section name, value). Symbol and section numbering is not
compared, since a linker reads names.

  python3 tests/c6xdiff.py mine.obj theirs.obj        prints the differences, exit 1 if any
  python3 tests/c6xdiff.py -q mine.obj theirs.obj     the count alone
"""
import os, struct, subprocess, sys

here = os.path.dirname(os.path.abspath(__file__))

def tables(path):
    out = subprocess.run([sys.executable, os.path.join(here, 'elfdump.py'), path], capture_output=True, text=True)
    if out.returncode != 0: return None, out.stderr.strip() or out.stdout.strip()
    secs = {}; cur = None; syms = set(); rels = {}
    for line in out.stdout.split('\n'):
        if line.startswith('section '):
            parts = line.split()
            name = parts[2] if parts[2] != 'type' else ''
            rest = ' '.join(p for p in line.split(' link ')[0].split()[3:])
            cur = name
            if name and not name.startswith('.rel') and name not in ('.symtab', '.strtab', '.shstrtab', '.c6xabi.attributes', '.TI.symbol.alias', '.TI.section.flags'):
                secs[name] = [rest, []]
            elif name.startswith('.rel'):
                cur = name
                rels[name] = []
            else:
                cur = None
        elif line.startswith('  rel') and cur:
            rels[cur].append(line.strip())
        elif line.startswith('  ') and cur in secs:
            secs[cur][1].append(line.strip())
        elif line.startswith('symbol '):
            parts = line.split()
            if parts[2] == 'local' and parts[3] == 'file': continue
            syms.add(' '.join(parts[2:]))
    return (secs, rels, syms), None

def compare(mine, theirs, quiet):
    a, err = tables(mine)
    if err: print('%s: %s' % (mine, err)); return 1
    b, err = tables(theirs)
    if err: print('%s: %s' % (theirs, err)); return 1
    diffs = []
    for name in sorted(set(a[0]) | set(b[0])):
        if name not in a[0]: diffs.append('section %s only in asm6x' % name); continue
        if name not in b[0]: diffs.append('section %s only in mine' % name); continue
        if a[0][name][0] != b[0][name][0]: diffs.append('section %s: mine %s, asm6x %s' % (name, a[0][name][0], b[0][name][0]))
        x, y = a[0][name][1], b[0][name][1]
        for i in range(max(len(x), len(y))):
            if i >= len(x): diffs.append('%s: asm6x has %s past our end' % (name, y[i])); break
            if i >= len(y): diffs.append('%s: mine has %s past asm6x end' % (name, x[i])); break
            if x[i] != y[i]: diffs.append('%s: mine %s  asm6x %s' % (name, x[i], y[i]))
            if len(diffs) > 12: break
    for name in sorted(set(a[1]) | set(b[1])):
        x = sorted(a[1].get(name, [])); y = sorted(b[1].get(name, []))
        if x != y:
            only_a = [r for r in x if r not in y]; only_b = [r for r in y if r not in x]
            for r in only_a[:4]: diffs.append('%s: mine only %s' % (name, r))
            for r in only_b[:4]: diffs.append('%s: asm6x only %s' % (name, r))
    for s in sorted(a[2] - b[2])[:4]: diffs.append('symbol only mine: %s' % s)
    for s in sorted(b[2] - a[2])[:4]: diffs.append('symbol only asm6x: %s' % s)
    if quiet: print(len(diffs))
    else:
        for d in diffs: print(d)
    return 1 if diffs else 0

if __name__ == '__main__':
    args = sys.argv[1:]
    quiet = False
    if args and args[0] == '-q': quiet = True; args = args[1:]
    if len(args) != 2: sys.exit(__doc__)
    sys.exit(compare(args[0], args[1], quiet))
