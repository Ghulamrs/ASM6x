#!/bin/sh
# recheck.sh <probe dir>: ASM6x here against the asm6x objects run.sh recorded in <dir>/out -
# no box needed. One line per file where the two tools disagree: asm6x accepted and ASM6x
# refused, the reverse, or both accepted with a table difference. Warnings from asm6x count
# as acceptance; a mended value is then held to asm6x's object. A probe named in known.txt
# beside this script is a difference kept on purpose (asm6x's own failure), counted apart.
#   ASM=<asm6x build> sh review-probes-2026-09-19/recheck.sh review-probes-2026-09-19/edge
# Exit status: the number of disagreements not in known.txt.
set -u
here=$(cd "$(dirname "$0")" && pwd)
root=$(cd "$here/.." && pwd)
ASM=${ASM:?set ASM to the asm6x build}
dir=$(cd "$1" && pwd)
out="$dir/out"
T=${T:-/tmp/asm6x-recheck}; rm -rf "$T"; mkdir -p "$T"
same=0; agree_refuse=0; bad=0; known=0
for f in "$dir"/*.s; do
    b=$(basename "$f" .s)
    if grep -qx "$b" "$here/known.txt" 2>/dev/null; then known=$((known + 1)); continue; fi
    theirs=accepted
    [ -f "$out/$b.asm6x.obj" ] || theirs=refused
    if "$ASM" "$f" -o "$T/$b.obj" > "$T/$b.log" 2>&1; then mine=accepted; else mine="refused: $(head -1 "$T/$b.log" | sed 's/^[^:]*: //')"; rm -f "$T/$b.obj"; fi
    if [ "$theirs" = refused ]; then
        if [ "$mine" = accepted ]; then bad=$((bad + 1)); echo "$b: asm6x refused, ASM6x accepted"; else agree_refuse=$((agree_refuse + 1)); fi
        continue
    fi
    if [ "$mine" != accepted ]; then bad=$((bad + 1)); echo "$b: asm6x accepted, ASM6x $mine"; continue; fi
    if python3 "$root/tests/c6xdiff.py" "$T/$b.obj" "$out/$b.asm6x.obj" > "$T/$b.diff"; then same=$((same + 1))
    else bad=$((bad + 1)); echo "$b: tables differ: $(head -1 "$T/$b.diff")"; fi
done
echo "recheck: $same identical, $agree_refuse refused by both, $known known differences (known.txt), $bad disagree"
exit $bad
