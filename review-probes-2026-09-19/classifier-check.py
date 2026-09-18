#!/usr/bin/env python3
"""ASM6x guards an execute packet by guessing each word's unit from its form bits
(src/c6x.cpp, the `want` computation). This recomputes that guess for every code word of a
dis6x listing and compares it with the unit dis6x names for the same word.
  python3 classifier-check.py file.dis ...
"""
import re, sys

def guess(w):
    low = (w >> 2) & 0x1F
    ldst = (low & 3) == 1 or (low & 3) == 3
    side = (w >> 7) & 1 if ldst else (w >> 1) & 1
    if ldst or low == 0x10 or low == 0x1C: kind = 'D'
    elif (low & 7) == 6: kind = 'L'
    elif (low & 0xF) == 0: kind = 'M'
    else: kind = 'S'
    return kind + str(side + 1)

wrong = 0; seen = 0
for path in sys.argv[1:]:
    for line in open(path, errors='replace'):
        m = re.match(r'^[0-9a-f]{8}\s+([0-9a-f]{8})\s+(\S+)', line)
        if not m: continue
        w = int(m.group(1), 16); mnem = m.group(2)
        if mnem in ('NOP', 'SWE', 'IDLE') or '.' not in mnem or mnem.startswith('.'): continue
        um = re.match(r'([DLSM][12])', mnem.split('.')[1])
        if not um: continue
        seen += 1
        unit = um.group(1)
        g = guess(w)
        if g != unit:
            wrong += 1
            print('%s: %08x %-24s dis6x says %s, ASM6x guesses %s' % (path.split('/')[-1], w, line.strip()[20:60], unit, g))
print('%d words with a unit, %d guessed wrong' % (seen, wrong))
