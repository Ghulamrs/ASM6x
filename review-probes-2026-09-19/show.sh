#!/bin/sh
# show.sh <probe-dir> <prefix>...: the source, asm6x's log and listing, ASM6x's log, and the table diff of a probe
d=$1; shift
for p in "$@"; do
  for f in "$d"/$p*.s; do
    b=$(basename "$f" .s)
    echo "################ $b"; sed 's/^/    | /' "$f"
    echo "---- asm6x log:"; tr -d '\r' < "$d/out/$b.asm6x.log" | grep -v '^$' | head -6
    [ -f "$d/out/$b.asm6x.dis" ] && { echo "---- dis6x:"; tr -d '\r' < "$d/out/$b.asm6x.dis" | grep '^[0-9a-f]\{8\}   [0-9a-f]\{8\}\|Section' | head -14; }
    [ -f "$d/out/$b.asm6x.obj" ] && { echo "---- asm6x relocs/symbols:"; python3 ../tests/elfdump.py "$d/out/$b.asm6x.obj" | grep '^  rel\|^symbol\|^section' | grep -v 'symtab\|strtab\|attributes\|TI\.\|local file\|local section\|\.rel' | head -14; }
    echo "---- ASM6x log:"; head -3 "$d/out/$b.mine.log"
    [ -f "$d/out/$b.obj" ] && { echo "---- ASM6x relocs/symbols:"; python3 ../tests/elfdump.py "$d/out/$b.obj" | grep '^  rel\|^symbol\|^section' | grep -v 'symtab\|strtab\|attributes\|TI\.\|local file\|local section\|\.rel' | head -14; }
    [ -f "$d/out/$b.diff" ] && { echo "---- diff:"; head -8 "$d/out/$b.diff"; }
  done
done
