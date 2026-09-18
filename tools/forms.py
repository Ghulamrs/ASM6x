#!/usr/bin/env python3
"""The form table, from asm6x's own words.

tests/probes/probeN.s were assembled by TI's asm6x on the box (cl6x --no_compress
--symdebug:none) and tests/probes/probeN.dis is dis6x's listing of each object; a line that names no unit records
asm6x's own choice, the default this assembler encodes. For every accepted line of the register, constant and pair shapes this reads
the word back, finds which field each operand landed in, and writes src/forms.h: one row per
(mnemonic, unit, shape, cross path), with the ten form bits and the operand-to-field map, and a
mark on the rows an unnamed unit chooses. The loads, stores, moves of constants, branches,
NOP/SWE/IDLE, MVC, ZERO and the four-operand field instructions are encoded by hand in
src/c6x.cpp, from the same listings.

    python3 tools/forms.py            rewrites src/forms.h
"""
import os, re, sys

here = os.path.dirname(os.path.abspath(__file__))
root = os.path.dirname(here)

def parse_dis(path):
    words = {}
    cur = None
    for line in open(path, errors='replace'):
        m = re.match(r'^[0-9a-f]{8}\s+(P\d+):$', line)
        if m:
            cur = m.group(1); words.setdefault(cur, []); continue
        m = re.match(r'^[0-9a-f]{8}\s+([0-9a-f]{8})\s+(.*)$', line)
        if m and cur: words[cur].append((int(m.group(1), 16), m.group(2).strip()))
        elif re.match(r'^[0-9a-f]{8}\s+\w+:$', line): cur = None
    return words

def parse_src(path):
    lab = {}
    src = open(path).read().split('\n')
    for i, l in enumerate(src):
        m = re.match(r'^(P\d+):$', l)
        if m and i + 1 < len(src):
            t = src[i + 1].strip()
            if t.startswith('NOP\t;REFUSED') or t.startswith('NOP ;REFUSED'): t = None
            lab[m.group(1)] = t
    return lab

REG = re.compile(r'^([AB])(\d+)$')
PAIR = re.compile(r'^([AB])(\d+):([AB])(\d+)$')

def operands(text):
    parts = text.split(None, 1)
    mn = parts[0]
    unit = ''
    if len(parts) > 1 and parts[1].startswith('.'):
        u, rest = (parts[1].split(None, 1) + [''])[:2]
        unit = u[1:]
    else:
        rest = parts[1] if len(parts) > 1 else ''
    ops = [o.strip() for o in re.split(r',(?![^(\[]*[)\]])', rest)] if rest.strip() else []
    return mn, unit, ops

def kind(o):
    if PAIR.match(o): return 'p'
    if REG.match(o): return 'r'
    if o.startswith('*'): return 'm'
    if re.fullmatch(r'-?(0x[0-9a-fA-F]+|\d+)', o): return 'c'
    return 's'

def side_of(o):
    m = PAIR.match(o) or REG.match(o)
    return 1 if m.group(1) == 'B' else 0

def number_of(o):
    m = PAIR.match(o)
    if m: return int(m.group(4))
    return int(REG.match(o).group(2))

rows = {}
defaults = set()

def take(probe):
    lab = parse_src(os.path.join(root, 'tests', 'probes', 'probe%d.s' % probe))
    dis = parse_dis(os.path.join(root, 'tests', 'probes', 'probe%d.dis' % probe))
    for k in sorted(lab, key=lambda x: int(x[1:])):
        t = lab[k]
        if t is None or k not in dis or len(dis[k]) != 1: continue
        if '||' in t or t.startswith('['): continue
        w, listed = dis[k][0]
        mn, unit, ops = operands(t)
        if not ops: continue
        shape = ''.join(kind(o) for o in ops)
        if 'm' in shape or 's' in shape: continue
        if mn in ('MVK', 'MVKL', 'MVKH', 'MVKLH', 'B', 'CALLP', 'BNOP', 'RET', 'RETNOP', 'NOP', 'SWE', 'IDLE', 'MVC', 'ADDKPC', 'ZERO'):
            continue
        if shape in ('rccr',): continue      # the four-operand field forms are by hand
        # the unit asm6x listed, and the fields
        lm = re.match(r'^([A-Z0-9]+)\.([LSDM])([12])(X?)', listed)
        if not lm: continue
        unit_used = lm.group(2)
        listed_mn = lm.group(1)
        # a rewrite (ADD -4 listed as SUB 4) is asm6x's mending, done in code, not a form
        if listed_mn != mn: continue
        fields = {'dst': (w >> 23) & 31, 'src2': (w >> 18) & 31, 'src1': (w >> 13) & 31}
        x = (w >> 12) & 1
        s = (w >> 1) & 1
        form = (w >> 2) & 0x3FF
        # the address adds on .D carry an op bit where x sits: part of the form, not a cross
        if mn in ('ADDAB', 'ADDAH', 'ADDAW', 'ADDAD', 'SUBAB', 'SUBAH', 'SUBAW', 'SUBAD') and x:
            form |= 0x400; x = 0
        # map each operand to a field: the destination last, registers by number, constants by value
        mapping = []
        used = set()
        # destination
        last = ops[-1]
        if kind(last) in 'rp':
            if fields['dst'] != number_of(last): continue
            mapping = [None] * len(ops); mapping[-1] = 0; used.add('dst')
        else:
            continue
        ok = True
        for i, o in enumerate(ops[:-1]):
            kd = kind(o)
            if kd in 'rp':
                n = number_of(o)
                cands = [f for f in ('src2', 'src1') if f not in used and fields[f] == n]
                if kd == 'p' and fields['src2'] == n + 1 and fields['src1'] == n and 'src2' not in used and 'src1' not in used and len(ops) == 2:
                    mapping[i] = 5; used.add('src2'); used.add('src1'); continue
                if not cands: ok = False; break
                f = cands[0]; used.add(f)
                mapping[i] = 1 if f == 'src2' else 2
            elif kd == 'c':
                v = int(o, 0) & 31
                cands = [f for f in ('src1', 'src2') if f not in used and fields[f] == v]
                if not cands: ok = False; break
                f = cands[0]; used.add(f)
                mapping[i] = 3 if f == 'src1' else 4
            else:
                ok = False; break
        if not ok: continue
        # the crossing operand: the one in src2, when x is set, must be on the other side of s
        if x:
            crossed = [i for i, m in enumerate(mapping) if m == 1]
            if not crossed or side_of(ops[crossed[0]]) == s: continue
        # the constant's range: the D-unit ADD/SUB, the shifts, the address adds and the
        # unsigned compares take 0..31; everything else a signed -16..15
        cst = 'u' if (mn in ('ADD', 'SUB') and unit_used == 'D' and form in (0x250, 0x270)) or \
                     mn in ('SHL', 'SHR', 'SHRU', 'ADDAB', 'ADDAH', 'ADDAW', 'ADDAD', 'SUBAB', 'SUBAH', 'SUBAW', 'SUBAD',
                            'CMPGTU', 'CMPLTU', 'CMPGTU4', 'CMPGT2', 'SSHL', 'ROTL', 'SHRU2', 'SHR2') else 's'
        key = (mn, unit_used, shape, x, form, tuple(mapping), cst if 'c' in shape else '-')
        rows[key] = listed_mn
        if not unit:            # the line named no unit: asm6x's own choice
            defaults.add(key)

for p in (1, 2, 3, 4, 5, 6):
    take(p)

out = []
out.append('/* generated by tools/forms.py from tests/probes/probe*.{s,dis}: one row per form asm6x')
out.append('   assembled, with the word\'s ten form bits and where each operand landed. Do not edit. */')
out.append('#ifndef FORMS_H')
out.append('#define FORMS_H')
out.append('')
out.append('/* map codes: 0 dst, 1 src2, 2 src1, 3 a constant in src1, 4 a constant in src2, 5 a pair as odd:even in src2:src1 */')
out.append('/* cst: u for a 0..31 constant, s for -16..15, - for none; a form above 0x3FF carries bit 12 of the word */')
out.append('struct FormRow { const char *name; char unit; const char *shape; unsigned char cross; unsigned form; signed char map[3]; char cst; unsigned char dflt; };')
out.append('')
out.append('static const FormRow kForms[] = {')
count = 0
for key in sorted(rows, key=lambda k: (k[0], k[2], k[1], k[3], k[4])):
    mn, unit, shape, x, form, mapping, cst = key
    m = list(mapping) + [-1] * (3 - len(mapping))
    d = 1 if key in defaults else 0
    out.append('    { "%s", \'%s\', "%s", %d, 0x%03X, { %d, %d, %d }, \'%s\', %d },' % (mn, unit, shape, x, form, m[0], m[1], m[2], cst, d))
    count += 1
out.append('};')
out.append('')
out.append('#endif')
open(os.path.join(root, 'src', 'forms.h'), 'w').write('\n'.join(out) + '\n')
print('%d rows, %d default' % (count, sum(1 for k in rows if k in defaults)))
