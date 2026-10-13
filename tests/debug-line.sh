#!/bin/sh
# tests/debug-line.sh - the .debug_line built from .dwpsn (src/dwarf.cpp) against TI's: tests/debug-line/rows.s
# carries exactly the rows and instruction counts of cl6x 8.2.2's -g assembly of t.c (two functions), and
# asm6x 8.2.2's .debug_line for that file is the 86 bytes pinned here - the two must be byte-identical.
# A compressed object (the default) carries the same rows at halfword addresses (min_inst_length 2).
set -u
D=$(cd "$(dirname "$0")" && pwd)
ASM=${ASM:-$D/../build/asm6x.exe}
OUT=$D/out-debug-line; mkdir -p "$OUT"
"$ASM" --no_compress "$D/debug-line/rows.s" -o "$OUT/rows.obj" || exit 1
"$ASM" "$D/debug-line/rows.s" -o "$OUT/rows.cmp.obj" || exit 1
python3 -I - "$OUT/rows.obj" "$OUT/rows.cmp.obj" <<'PY' || exit 1
import struct, sys
TI='5200000003001a000000040100300d00010101010000000000000100742e6300000000000005020000000005170d050bce0505ce05013e0602020001010005022c000000051011050b6e0505ce05010e060202000101'
def sec(path,name):
    d=open(path,'rb').read(); shoff=struct.unpack_from('<I',d,0x20)[0]; shentsize,shnum,shstrndx=struct.unpack_from('<HHH',d,0x2e)
    hdr=[struct.unpack_from('<IIIIIIIIII',d,shoff+i*shentsize) for i in range(shnum)]; sto=hdr[shstrndx][4]
    return [(d[h[4]:h[4]+h[5]],h) for h in hdr if d[sto+h[0]:d.index(b'\0',sto+h[0])].decode()==name]
a,h=sec(sys.argv[1],'.debug_line')[0]
ok = a.hex()==TI and h[1]==1 and h[2]==0 and h[8]==0
rel=sec(sys.argv[1],'.rel.debug_line')[0][0]
ok = ok and [struct.unpack_from('<II',rel,8*i)[0] for i in range(len(rel)//8)]==[39,64] and all(struct.unpack_from('<II',rel,8*i)[1]&0xff==1 for i in range(len(rel)//8))
c,_=sec(sys.argv[2],'.debug_line')[0]
ok = ok and c[10]==2 and len(c)==88   # min_inst_length 2 once compact instructions put rows on halfwords
print('debug-line: %s (uncompressed %d bytes %s TI\'s, two R_C6000_ABS32 at 39 and 64; compressed min_inst %d)' % ('ok' if ok else 'FAILED', len(a), 'identical to' if a.hex()==TI else 'DIFFER from', c[10]))
sys.exit(0 if ok else 1)
PY
