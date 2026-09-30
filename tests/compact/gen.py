#!/usr/bin/env python3
"""Writes the compaction probes: straight-line runs of instructions that have a 16-bit form
under TI's rules - every field value each form can hold, both sides, the cross paths and the
data paths - in consecutive pairs, so that asm6x compresses them the way it compresses a
compiler's code; with 32-bit neighbours that must stay 32-bit beside them. tests/windows.sh
compact has asm6x assemble each with and without --no_compress and dis6x list it; tests/run.sh
compares ours with the recorded objects.
    python3 tests/compact/gen.py        (re)writes tests/compact/*.s"""
import os
HERE = os.path.dirname(os.path.abspath(__file__))

def out(name, lines, head='\t.text\n\t.global f\nf:\n'):
    with open(os.path.join(HERE, name + '.s'), 'w') as f:
        f.write('; ' + name + ': written by gen.py - do not edit\n' + head)
        for l in lines:
            f.write(l if l.endswith(':') else '\t' + l)
            f.write('\n')
        f.write('\tB B3\n\tNOP 5\n')

# 1. NOPs, the constants into registers, the moves
L = []
for n in range(1, 10):
    L += ['NOP %d' % n, 'NOP %d' % n]
for side in 'AB':
    for r in range(8):
        for c in (0, 1, 7, 8, 31, 32, 127, 128, 200, 255):
            L.append('MVK .S%d %d, %s%d' % (1 + (side == 'B'), c, side, r))
    for r in range(8):
        for c in (-16, -1, 0, 1, 15):
            L.append('MVK .L%d %d, %s%d' % (1 + (side == 'B'), c, side, r))
L += ['MVK .S1 256, A0', 'MVK .S1 -1, A1', 'MVK .S1 1, A8', 'MVK .L1 1, A9']
out('c01-nop-mvk', L)

L = []
for s, o in (('A', 'B'), ('B', 'A')):
    u = 1 + (s == 'B')
    for a in range(16):
        for b in (0, 3, 7, 12, 31):
            L.append('MV .D%d %s%d, %s%d' % (u, s, a, s, b))
    for a in (0, 5, 7, 9, 31):
        for b in (0, 4, 7, 20):
            L.append('MV .D%dX %s%d, %s%d' % (u, o, a, s, b))
out('c02-mv', L)

# 2. loads and stores
L = []
for m, w in (('LDW', 4), ('STW', 4)):
    for side in 'AB':
        u = 1 + (side == 'B')
        for data in 'AB':
            t = 1 + (data == 'B')
            for base in range(4, 8):
                for k in (0, 1, 5, 8, 15):
                    for r in (0, 3, 7):
                        reg = '%s%d' % (data, r)
                        mem = '*+%s%d[%d]' % (side, base, k)
                        L.append('%s .D%dT%d %s, %s' % (m, u, t, mem, reg) if m[0] == 'L' else '%s .D%dT%d %s, %s' % (m, u, t, reg, mem))
out('c03-ldw-stw', L)

L = []
for m in ('LDB', 'LDBU', 'LDH', 'LDHU', 'STB', 'STH'):
    for side in 'AB':
        u = 1 + (side == 'B')
        for data in 'AB':
            t = 1 + (data == 'B')
            for base in (4, 7):
                for k in (0, 1, 15):
                    reg = '%s%d' % (data, 2 + k % 5)
                    mem = '*+%s%d[%d]' % (side, base, k)
                    L.append('%s .D%dT%d %s, %s' % (m, u, t, mem, reg) if m[0] == 'L' else '%s .D%dT%d %s, %s' % (m, u, t, reg, mem))
out('c04-bytes-halves', L)

L = []
for m in ('LDDW', 'STDW'):
    for side in 'AB':
        u = 1 + (side == 'B')
        for data in 'AB':
            t = 1 + (data == 'B')
            for base in (4, 5, 6, 7):
                for k in (0, 1, 15):
                    for r in (0, 2, 6):
                        reg = '%s%d:%s%d' % (data, r + 1, data, r)
                        mem = '*+%s%d[%d]' % (side, base, k)
                        L.append('%s .D%dT%d %s, %s' % (m, u, t, mem, reg) if m[0] == 'L' else '%s .D%dT%d %s, %s' % (m, u, t, reg, mem))
out('c05-double', L)

L = []
for m in ('LDW', 'STW'):
    for data in 'AB':
        t = 1 + (data == 'B')
        for k in (0, 1, 4, 16, 31):
            for r in (0, 5, 7):
                reg = '%s%d' % (data, r)
                mem = '*+B15[%d]' % k
                L.append('%s .D2T%d %s, %s' % (m, t, mem, reg) if m[0] == 'L' else '%s .D2T%d %s, %s' % (m, t, reg, mem))
L += ['LDW .D2T1 *+B15[32], A1', 'LDW .D2T1 *-B15[1], A1', 'STW .D2T1 A8, *+B15[1]', 'LDW .D1T1 *+A3[1], A1', 'LDW .D1T1 *+A4[16], A1']
out('c06-stack', L)

# 3. the .D arithmetic
L = []
for k in (0, 1, 2, 7):
    L += ['ADD .D2 B15, %d, B15' % (4 * k), 'SUB .D2 B15, %d, B15' % (4 * k)]
for r in range(8):
    for k in (0, 1, 7):
        L.append('ADD .D2 B15, %d, B%d' % (4 * k, r))
for side in 'AB':
    u = 1 + (side == 'B')
    for r in range(8):
        L += ['ADD .D%d %s%d, 1, %s%d' % (u, side, r, side, r), 'SUB .D%d %s%d, 1, %s%d' % (u, side, r, side, r),
              'XOR .D%d 1, %s%d, %s%d' % (u, side, r, side, r)]
    for a in range(8):
        for b in (0, 3, 7):
            L += ['ADD .D%d %s%d, %s%d, %s%d' % (u, side, a, side, b, side, a), 'SUB .D%d %s%d, %s%d, %s%d' % (u, side, a, side, b, side, a),
                  'ADD .D%d %s%d, %s%d, %s%d' % (u, side, b, side, a, side, a)]
L += ['ADD .D1 A8, 1, A8', 'SUB .D2 B15, 3, B15', 'ADD .D2 B15, 4, B8', 'ADD .D1 A1, 2, A1']
out('c07-d-arith', L)

# 4. the .S and .L ones
L = []
for side in 'AB':
    s = 1 + (side == 'B')
    for r in range(8):
        L += ['NEG .S%d %s%d, %s%d' % (s, side, r, side, r)]
        for a, b in ((16, 16), (24, 24)):
            for d in (r, 7 - r):
                L += ['EXT .S%d %s%d, %d, %d, %s%d' % (s, side, r, a, b, side, d), 'EXTU .S%d %s%d, %d, %d, %s%d' % (s, side, r, a, b, side, d)]
        for c in (0, 1, 7, 8, 15, 16, 31):
            L += ['SHL .S%d %s%d, %d, %s%d' % (s, side, r, c, side, r), 'SHR .S%d %s%d, %d, %s%d' % (s, side, r, c, side, r),
                  'SHRU .S%d %s%d, %d, %s%d' % (s, side, r, c, side, r)]
        for q in (0, 5):
            L += ['SHL .S%d %s%d, %s%d, %s%d' % (s, side, r, side, q, side, r), 'SHR .S%d %s%d, %s%d, %s%d' % (s, side, r, side, q, side, r),
                  'SHRU .S%d %s%d, %s%d, %s%d' % (s, side, r, side, q, side, r)]
        for c in (1, 2, 6, 8, 16):
            L += ['SHL .S%d %s%d, %d, %s%d' % (s, side, r, c, side, 7 - r), 'SHR .S%d %s%d, %d, %s%d' % (s, side, r, c, side, 7 - r)]
out('c08-s-unit', L)

L = []
for side in 'AB':
    s = 1 + (side == 'B')
    for d in (0, 1):
        for r in range(8):
            for c in (0, 3, 7):
                L.append('CMPEQ .L%d %d, %s%d, %s%d' % (s, c, side, r, side, d))
            for m in ('CMPEQ', 'CMPLT', 'CMPGT', 'CMPLTU', 'CMPGTU'):
                L.append('%s .L%d %s%d, %s%d, %s%d' % (m, s, side, r, side, 7 - r, side, d))
L += ['CMPEQ .L1 1, A4, A2', 'CMPLT .L1 A1, A2, A3', 'CMPEQ .L1X A1, B2, A0']
out('c09-compare', L)

# 5. branches: to a register, and to labels near and far
L = []
for r in (0, 1, 3, 15):
    L += ['B .S2 B%d' % r, 'NOP 5']
for n in range(6):
    L += ['BNOP .S2 B3, %d' % n, 'NOP %d' % (6 - n) if n < 5 else 'NOP 1']
out('c10-branch-reg', L)

L = ['top:', 'MV .D1 A4, A5', 'MV .D1 A5, A6']
for k in range(20):
    L += ['B .S2 near%d' % k, 'NOP 5', 'MVK .S1 %d, A1' % k, 'MV .D1 A1, A2', 'near%d:' % k, 'MV .D1 A2, A3', 'ADD .D1 A3, 1, A3']
for k in range(8):
    L += ['B .S2 top', 'NOP 5', 'BNOP .S2 top, %d' % (k % 6), 'NOP %d' % (5 - k % 6) if k % 6 < 5 else 'NOP 1']
L += ['B .S1 top', 'NOP 5', '[A1] B .S2 top', 'NOP 5', '[!A0] B .S2 top', 'NOP 5']
L += ['B .S2 far', 'NOP 5'] + ['MV .D1 A1, A2', 'MV .D1 A2, A1'] * 200 + ['far:', 'ZERO A4']
out('c11-branch-label', L)

# 6. loads with NOP 4 after them: the protected-load header
L = []
for k in range(24):
    L += ['LDW .D1T1 *+A4[%d], A%d' % (k % 16, k % 8), 'NOP 4', 'MV .D1 A%d, A%d' % (k % 8, (k + 1) % 8), 'ADD .D1 A5, 1, A5']
L += ['LDW .D1T1 *+A4[1], A1', 'NOP 3', 'MV .D1 A1, A2', 'LDW .D1T1 *+A4[1], A1', 'NOP 4', 'NOP 1']
out('c12-protected', L)

# 7. packets: 16-bit instructions in parallel with each other and with 32-bit ones
L = []
for k in range(24):
    L += ['MV .D1 A%d, A%d' % (k % 8, (k + 3) % 8), '|| MV .D2 B%d, B%d' % (k % 8, (k + 5) % 8),
          'MVK .S1 %d, A1' % k, '|| MVK .L2 %d, B2' % (k % 16), '|| ADD .L1 A1, A2, A3',
          'LDW .D1T1 *+A4[%d], A5' % (k % 16), '|| STW .D2T2 B5, *+B6[%d]' % (k % 16), '|| MVK .S1 1000, A7']
out('c13-packets', L)

# 8. what a compiler writes around a call: the pattern the corpus is made of
L = []
for k in range(16):
    L += ['MVK .S1 %d, A0' % (44 + 4 * k), 'SUB .D1 A15, A0, A4', 'LDW .D1T1 *+A4[0], A4', 'NOP 4', 'MV .D1 A4, A16',
          'SUB .D2 B15, 8, B15', 'STW .D2T1 A4, *+B15[0]', 'MVKL ret%d, B3' % k, 'MVKH ret%d, B3' % k, 'B g', 'NOP 5', 'ret%d:' % k,
          'ADD .D2 B15, 8, B15', 'MV .D1 A4, A6']
out('c14-calls', L, head='\t.text\n\t.global f\n\t.ref g\nf:\n')

# ---- learn/: forms asm6x may compress and this does not yet - each in consecutive pairs, so that
# asm6x's object (and dis6x's listing of it) says whether and how; ours keeps them 32-bit
LEARN = os.path.join(HERE, 'learn')
os.makedirs(LEARN, exist_ok=True)
def learn(name, lines, head='\t.text\n\t.global f\nf:\n'):
    global HERE
    save = HERE; HERE = LEARN
    try: out(name, lines, head)
    finally: HERE = save

L = ['top:']
for k in range(8):
    L += ['CALLP .S2 top, B3', 'CALLP .S2 top, B3', 'MV .D1 A4, A5', 'MV .D1 A5, A4']
L += ['CALLP .S2 fwd, B3', 'CALLP .S1 fwd, A3', 'BNOP .S2 fwd, 5', 'BNOP .S1 fwd, 5', 'BNOP .S2 fwd, 2']
L += ['[A0] BNOP .S2 top, 5', '[!A0] BNOP .S2 top, 5', '[B0] BNOP .S2 top, 3', '[A0] B .S2 top', 'NOP 5', '[!B0] B .S2 top', 'NOP 5']
L += ['MV .D1 A1, A2', 'MV .D1 A2, A1'] * 70 + ['fwd:', 'ZERO A4']
learn('l01-calls-branches', L)

L = []
for side in 'AB':
    s = 1 + (side == 'B')
    for c in (0, 1, 7, 31):
        L += ['ADDK .S%d %d, %s%d' % (s, c, side, c % 8), 'ADDK .S%d %d, %s%d' % (s, c, side, (c + 1) % 8)]
    for c in (-1, -16, -128):
        L += ['MVK .S%d %d, %s1' % (s, c, side), 'MVK .S%d %d, %s2' % (s, c, side)]
    for m in ('ADD', 'SUB', 'AND', 'OR', 'XOR'):
        for u in ('L', 'S'):
            L += ['%s .%s%d %s1, %s2, %s3' % (m, u, s, side, side, side), '%s .%s%d %s4, %s5, %s6' % (m, u, s, side, side, side)]
    for m in ('ADD', 'SUB'):
        L += ['%s .D%d %s1, %s2, %s3' % (m, s, side, side, side), '%s .D%d %s4, %s5, %s6' % (m, s, side, side, side)]
        L += ['%s .S%d %s1, %s2, %s1' % (m, s, side, side, side), '%s .S%d %s4, %s5, %s4' % (m, s, side, side, side)]
        L += ['%s .L%d 3, %s1, %s2' % (m, s, side, side), '%s .L%d -2, %s4, %s5' % (m, s, side, side)]
    L += ['CMPGT .L%d 1, %s4, %s5' % (s, side, side), 'CMPLT .L%d 0, %s4, %s5' % (s, side, side),
          'CMPGTU .L%d 1, %s4, %s5' % (s, side, side), 'CMPLTU .L%d 0, %s4, %s5' % (s, side, side)]
    L += ['MVK .D%d 5, %s1' % (s, side), 'MVK .D%d 3, %s2' % (s, side)]
    L += ['SSHL .S%d %s1, 3, %s1' % (s, side, side), 'SADD .L%d %s1, %s2, %s3' % (s, side, side, side)]
    L += ['SET .S%d %s1, 3, 5, %s1' % (s, side, side), 'CLR .S%d %s1, 3, 5, %s1' % (s, side, side)]
    L += ['MPY .M%d %s1, %s2, %s3' % (s, side, side, side), 'MPYH .M%d %s1, %s2, %s3' % (s, side, side, side)]
    L += ['SHL .S%dX %s1, 1, %s2' % (s, 'B' if side == 'A' else 'A', side), 'SHR .S%dX %s1, 2, %s2' % (s, 'B' if side == 'A' else 'A', side)]
learn('l02-arith', L)

L = []
for side in 'AB':
    s = 1 + (side == 'B')
    for m in ('LDW', 'STW', 'LDB', 'STH'):
        for mem in ('*A4++[1]', '*--A5[2]', '*+A6[A7]', '*A4++', '*-A4[1]', '*A15', '*+A15[1]'):
            mem = mem.replace('A', side)
            reg = '%s3' % side
            L.append('%s .D%dT%d %s, %s' % (m, s, s, mem, reg) if m[0] == 'L' else '%s .D%dT%d %s, %s' % (m, s, s, reg, mem))
            L.append('%s .D%dT%d %s, %s' % (m, s, s, mem, reg) if m[0] == 'L' else '%s .D%dT%d %s, %s' % (m, s, s, reg, mem))
L += ['STW .D2T1 A4, *B15--[2]', 'STW .D2T1 A5, *B15--[2]', 'LDW .D2T1 *++B15[2], A4', 'LDW .D2T1 *++B15[2], A5',
      'STDW .D2T1 A5:A4, *B15--[1]', 'LDDW .D2T1 *++B15[1], A5:A4', 'LDNW .D1T1 *+A4[1], A5', 'LDNW .D1T1 *+A4[2], A6',
      'LDNDW .D1T1 *+A4[1], A7:A6', 'STNW .D1T1 A5, *+A4[1]']
learn('l03-memory', L)

L = []
for r in range(16, 24):
    L += ['MV .D1 A%d, A%d' % (r, 39 - r if 39 - r < 32 else r), 'MVK .S1 %d, A%d' % (r, r), 'LDW .D1T1 *+A4[1], A%d' % r,
          'STW .D1T1 A%d, *+A5[2]' % r, 'ADD .D1 A%d, 1, A%d' % (r, r), 'MVK .L1 1, A%d' % r, 'MV .D1 A%d, A4' % r, 'MV .D1 A4, A%d' % r]
    L += ['MV .D2 B%d, B%d' % (r, r), 'MVK .S2 %d, B%d' % (r, r)]
learn('l04-high-registers', L)
