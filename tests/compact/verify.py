#!/usr/bin/env python3
"""The compressed object says what the uncompressed one says.

    python3 tests/compact/verify.py plain.obj compressed.obj
    python3 tests/compact/verify.py --dis plain.dis compressed.dis plain.obj compressed.obj

Both objects come from one source: the first assembled as asm6x assembles it with
--no_compress, the second with --compress (ours or TI's - TI's pair is the control). A
disassembler lists both - binutils' objdump built for tic6x (tools/build-tic6x-objdump.sh;
$TIC6X_OBJDUMP names it), or with --dis the two listings TI's dis6x wrote on the box - and
every instruction of the plain object must appear, in order, as the same instruction in the
compressed one: the same mnemonic, unit, operands and execute packet (the p-bits are read from
the words and the headers themselves, not from the listing). The one thing allowed to go is a
NOP 4 after a load in a PROT packet, whose four cycles the header stands for. Every branch must
reach the instruction it reached, and every symbol must stand where it stood. Exit 0 when all
of that holds; the first ten differences otherwise."""
import os, re, struct, subprocess, sys, collections

# ---- the object: sections, symbols, and the instruction stream with each one's p-bit

def load(path):
    d = open(path, 'rb').read()
    shoff, = struct.unpack_from('<I', d, 32)
    shentsize, shnum, shstrndx = struct.unpack_from('<HHH', d, 46)
    sh = [struct.unpack_from('<IIIIIIIIII', d, shoff + i * shentsize) for i in range(shnum)]
    def name(idx, off):
        b = sh[idx][4]; e = d.index(b'\0', b + off); return d[b + off:e].decode('latin-1')
    names = [name(shstrndx, x[0]) for x in sh]
    syms = []
    for x in sh:
        if x[1] == 2:
            for k in range(x[5] // 16):
                n, v, sz, info, oth, shn = struct.unpack_from('<IIIBBH', d, x[4] + k * 16)
                syms.append((name(x[6], n), v, shn, info))
    out = {}
    for i, x in enumerate(sh):
        if x[1] == 1 and (x[2] & 4) and x[5]:
            out[names[i]] = dict(data=d[x[4]:x[4] + x[5]], syms=[(n, v) for (n, v, shn, info) in syms if shn == i and info & 15 != 3])
    return out

def decode(data):
    """address -> (size, p-bit, header or None)"""
    r = {}
    n = len(data) // 4
    for fp in range(0, n, 8):
        ws = [struct.unpack_from('<I', data, 4 * (fp + i))[0] for i in range(min(8, n - fp))]
        h = ws[7] if len(ws) == 8 and (ws[7] >> 28) == 0xE else None
        for i in range(7 if h is not None else len(ws)):
            a = 4 * (fp + i)
            if h is not None and (h >> (21 + i)) & 1:
                r[a] = (2, (h >> (2 * i)) & 1, h)
                r[a + 2] = (2, (h >> (2 * i + 1)) & 1, h)
            else:
                r[a] = (4, ws[i] & 1, h)
    return r

# ---- the listings

def objdump(path):
    tool = os.environ.get('TIC6X_OBJDUMP', 'tic6x-elf-objdump')
    out = subprocess.run([tool, '-d', '-z', path], capture_output=True, text=True).stdout
    secs = {}; cur = None
    for ln in out.split('\n'):
        if ln.startswith('Disassembly of section '):
            cur = ln[len('Disassembly of section '):].rstrip(':'); secs[cur] = []; continue
        m = re.match(r'^\s*([0-9a-f]+):\t([0-9a-f]+) *\t(.*)$', ln)
        if m and cur is not None:
            t = m.group(3).strip()
            if t.startswith('<fetch packet header'): continue
            t = t.replace(' || nop 5', '')          # binutils marks every instruction of a PROT packet so
            t = t.lstrip('| ').strip()
            tgt = None
            b = re.search(r' ([0-9a-f]+) <[^>]*>', t)
            if b: tgt = int(b.group(1), 16); t = t[:b.start()] + ' <T>' + t[b.end():]
            secs[cur].append((int(m.group(1), 16), t, tgt))
    return secs

def dis6x(path):
    secs = {}; cur = None
    for ln in open(path, errors='replace'):
        ln = ln.rstrip('\r\n')
        m = re.match(r'^TEXT Section (\S+)', ln)
        if m: cur = m.group(1); secs[cur] = []; continue
        m = re.match(r'^([0-9a-f]{8})\s+([0-9a-f]{4}|[0-9a-f]{8})\s+(\|\|)?\s*(.*)$', ln)
        if not m or cur is None: continue
        t = m.group(4).strip()
        if not t or t.startswith('.fphead') or t.startswith('.'): continue
        tgt = None
        b = re.search(r'\S+ \(PC[+-]\d+ = 0x([0-9a-f]+)\)', t)
        if b: tgt = int(b.group(1), 16); t = t[:b.start()] + '<T>' + t[b.end():]
        t = re.sub(r'^([A-Z0-9]+)\.([A-Z0-9]+)', r'\1 .\2', t)     # MVK.S1 -> MVK .S1
        secs[cur].append((int(m.group(1), 16), t.lower(), tgt))
    return secs

# ---- one instruction, said one way: the spellings that mean the same are made one

def num(s):
    try:
        v = int(s, 16) if s.lower().startswith('0x') else int(s)
    except ValueError:
        return s
    v &= 0xFFFFFFFF
    return str(v - (1 << 32) if v & 0x80000000 else v)

SIZES = {'ldw': 4, 'stw': 4, 'ldnw': 4, 'stnw': 4, 'ldh': 2, 'ldhu': 2, 'sth': 2, 'ldb': 1, 'ldbu': 1, 'stb': 1,
         'lddw': 8, 'stdw': 8, 'ldndw': 8, 'stndw': 8}

def mem(op, x):
    """one address, one spelling: *R, *+R[0] and *+R(0) are the same address, and a constant
    offset in bytes is written in units of the access, as *+R[k]"""
    m = re.match(r'^\*(\+|-)?([ab]\d+)(?:\[(-?\w+)\]|\((-?\w+)\))?$', x)
    if not m: return x
    sign, reg, units, byts = m.group(1) or '+', m.group(2), m.group(3), m.group(4)
    if units is None and byts is None: return '*+%s[0]' % reg
    if units is not None:
        k = num(units)
    else:
        k = num(byts)
        if re.match(r'^-?\d+$', k) and op in SIZES and int(k) % SIZES[op] == 0: k = str(int(k) // SIZES[op])
        else: return '*%s%s(%s)' % (sign, reg, k)
    if k == '0': sign = '+'
    return '*%s%s[%s]' % (sign, reg, k)

def canon(t):
    t = re.sub(r'\s+', ' ', t).strip().lower()
    m = re.match(r'^(\[!?[ab]\d+\] )?(\w+)( \.\w+)?(?: (.*))?$', t)
    if not m: return t
    pred, op, unit, args = m.group(1) or '', m.group(2), m.group(3) or '', m.group(4) or ''
    a = [num(x.strip()) for x in re.split(r',(?![^\[\(]*[\]\)])', args)] if args else []
    a = [mem(op, x) for x in a]
    if op == 'or' and len(a) == 3 and a[0] == '0': op = 'mv'; a = [a[1], a[2]]
    if op == 'add' and len(a) == 3 and a[1] == '0': op = 'mv'; a = [a[0], a[2]]
    if op in ('addaw', 'subaw', 'sub') and len(a) == 3 and a[1] == '0': op = 'mv'; a = [a[0], a[2]]
    if op in ('add', 'sub') and len(a) == 3 and re.match(r'^\d+$', a[1]) and unit.startswith(' .d') and int(a[1]) % 4 == 0 and int(a[1]) <= 124:
        op += 'aw'; a[1] = str(int(a[1]) // 4)
    if op in ('xor', 'and', 'or', 'add') and len(a) == 3 and re.match(r'^-?\d+$', a[0]): a = [a[1], a[0], a[2]]
    if op in ('add', 'and', 'or', 'xor') and len(a) == 3 and not re.match(r'^-?\d+$', a[0]) and not re.match(r'^-?\d+$', a[1]):
        a = sorted(a[:2]) + [a[2]]
    if op == 'neg' and len(a) == 2: op = 'sub'; a = ['0'] + a
    if op == 'b' and len(a) == 1: op = 'bnop'; a = a + ['0']
    if op == 'zero': op = 'mvk'; a = ['0'] + a
    if op == 'nop' and not a: a = ['1']
    if op in ('mvk', 'mvkl') : op = 'mvk'
    return pred + op + unit + (' ' + ','.join(a) if a else '')

LOADS = re.compile(r'^(\[.*\] )?ld')

def check(plain, comp, lp, lc):
    A = load(plain); B = load(comp)
    errs = []; stat = collections.Counter()
    for s in lp:
        a = lp[s]; b = lc.get(s, [])
        da = decode(A[s]['data']); db = decode(B[s]['data'])
        syma = set(v for n, v in A[s]['syms'])
        mapping = {}
        dropped = set()
        i = j = 0
        while i < len(a):
            if j >= len(b):
                if all(canon(x[1]) == 'nop 1' for x in a[i:]): break
                errs.append((s, 'the compressed code ends at plain %x' % a[i][0])); break
            ta = canon(a[i][1]); tb = canon(b[j][1])
            if ta == tb:
                mapping[a[i][0]] = b[j][0]
                if da[a[i][0]][1] != db[b[j][0]][1]: errs.append((s, 'p-bit differs: plain %x, compressed %x' % (a[i][0], b[j][0])))
                stat[db[b[j][0]][0]] += 1
                i += 1; j += 1; continue
            h = db.get(b[j][0], (0, 0, None))[2]
            if h is not None and (h >> 19) & 1 and ta.split(' ')[:2] == tb.split(' ')[:2]:
                # RS=1, the high register set, which this assembler never writes: binutils reads
                # the three-bit source of a compact MV there as A16-A23, and asm6x means A0-A7
                # by it, so only the mnemonic and unit are held to it
                mapping[a[i][0]] = b[j][0]; stat['rs'] += 1; i += 1; j += 1; continue
            if ta == 'nop 4' and i > 0 and LOADS.match(canon(a[i - 1][1])) and a[i][0] not in syma:
                h = db.get(mapping.get(a[i - 1][0]), (0, 0, None))[2]
                if h is not None and (h >> 20) & 1:
                    stat['dropped'] += 1; mapping[a[i][0]] = b[j][0]; dropped.add(i); i += 1; continue
            errs.append((s, 'plain %x %r, compressed %x %r' % (a[i][0], a[i][1], b[j][0], b[j][1]))); break
        while j < len(b) and canon(b[j][1]) == 'nop 1': j += 1
        if j < len(b) and not errs: errs.append((s, 'the compressed code has more at %x' % b[j][0]))
        at = {x[0]: x for x in b}
        for x in a:
            if x[2] is None or x[0] not in mapping or mapping[x[0]] not in at: continue
            y = at[mapping[x[0]]]
            if y[2] is None: errs.append((s, 'the branch at plain %x lost its target' % x[0])); continue
            if x[2] == (x[0] & ~31) and y[2] == (y[0] & ~31): continue     # a relocation's zero displacement
            if x[2] not in mapping: continue                             # out of the section
            if mapping[x[2]] != y[2]:
                errs.append((s, 'the branch at plain %x reaches %x there; at compressed %x it reaches %x, not %x' % (x[0], x[2], y[0], y[2], mapping[x[2]])))
        if errs: break
        # a load in a PROT packet has four NOP cycles after it whatever follows: the plain code
        # must have had exactly a NOP 4 there, and it must be the one that went
        for k, x in enumerate(a):
            if x[0] not in mapping or not LOADS.match(canon(x[1])): continue
            h = db[mapping[x[0]]][2]
            if h is not None and (h >> 20) & 1 and (k + 1) not in dropped:
                errs.append((s, 'the load at plain %x is in a PROT packet, and no NOP 4 after it went' % x[0]))
        if errs: break
        sb = dict(B[s]['syms'])
        end = max([x[0] for x in a if canon(x[1]) != 'nop 1'] + [0])
        for n, v in A[s]['syms']:
            if v in mapping:
                if sb.get(n) != mapping[v]: errs.append((s, 'symbol %s at %x, not %x' % (n, sb.get(n, -1), mapping[v])))
            elif v <= end: errs.append((s, 'symbol %s at plain %x is at no instruction' % (n, v)))
    return errs, stat

if __name__ == '__main__':
    args = sys.argv[1:]
    if args[:1] == ['--dis']:
        lp, lc = dis6x(args[1]), dis6x(args[2]); args = args[3:]
    else:
        lp, lc = objdump(args[0]), objdump(args[1])
    if len(args) != 2: sys.exit(__doc__)
    errs, stat = check(args[0], args[1], lp, lc)
    for e in errs[:10]: print('DIFFER %s: %s' % e)
    print(('ok' if not errs else 'BAD') + ' %d 32-bit, %d 16-bit, %d NOP 4 stood for by PROT' % (stat[4], stat[2], stat['dropped']) +
          (', %d in RS=1 packets held to their mnemonic only' % stat['rs'] if stat['rs'] else ''))
    sys.exit(1 if errs else 0)
