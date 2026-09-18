#!/bin/sh
# run.sh <probe dir>: every .s of the directory assembled by TI's asm6x on the box (box/probe.cmd)
# and by ASM6x here, the two objects compared with tests/c6xdiff.py, and one line per file in
# <dir>/out/results.txt: what each tool said, and how many table differences remain.
#   ASM=<asm6x build> sh review-probes-2026-09-19/run.sh review-probes-2026-09-19/edge
# LINK=1 also links every object ASM6x wrote, on its own, with lnk6x (box/link.cmd).
set -u
here=$(cd "$(dirname "$0")" && pwd)
root=$(cd "$here/.." && pwd)
ASM=${ASM:?set ASM to the asm6x build}
dir=$(cd "$1" && pwd)
name=$(basename "$dir")
out="$dir/out"
rm -rf "$out"; mkdir -p "$out"
W="C:\\fable-asm6x\\$name"
ssh -n -o BatchMode=yes windows "if exist $W rmdir /s /q $W" > /dev/null
ssh -n -o BatchMode=yes windows "mkdir $W" > /dev/null
( cd "$dir" && COPYFILE_DISABLE=1 tar --no-xattrs -czf "$out/in.tgz" *.s ) || exit 1
scp -q "$out/in.tgz" "windows:C:/fable-asm6x/$name/" || exit 1
ssh -n -o BatchMode=yes windows "cd /d $W & tar xzf in.tgz & C:\\fable-asm6x\\probe.cmd $W & tar czf out.tgz *.asm6x.*" | grep -v '^$' | grep -v PROBE-DONE
scp -q "windows:C:/fable-asm6x/$name/out.tgz" "$out/" && tar xzf "$out/out.tgz" -C "$out" && rm -f "$out/out.tgz" "$out/in.tgz"
: > "$out/results.txt"
for f in "$dir"/*.s; do
    b=$(basename "$f" .s)
    theirs="accepted"
    if grep -q '"[^"]*", *ERROR\|^>> *ERROR\|error' "$out/$b.asm6x.log" 2>/dev/null && [ ! -f "$out/$b.asm6x.obj" ]; then
        theirs="REFUSED: $(grep -m1 'ERROR\|error' "$out/$b.asm6x.log" | tr -d '\r')"
    elif [ ! -f "$out/$b.asm6x.obj" ]; then
        theirs="REFUSED: $(head -1 "$out/$b.asm6x.log" | tr -d '\r')"
    elif grep -q 'WARNING\|warning' "$out/$b.asm6x.log"; then
        theirs="accepted, warning: $(grep -m1 'WARNING\|warning' "$out/$b.asm6x.log" | tr -d '\r')"
    fi
    mine="accepted"
    "$ASM" "$f" -o "$out/$b.obj" > "$out/$b.mine.log" 2>&1; rc=$?
    if [ $rc -ge 128 ]; then mine="CRASH (signal $((rc - 128)))"; rm -f "$out/$b.obj"
    elif [ $rc -ne 0 ]; then mine="REFUSED: $(head -1 "$out/$b.mine.log" | sed 's/^[^:]*: //')"; rm -f "$out/$b.obj"; fi
    diff="-"
    if [ -f "$out/$b.obj" ] && [ -f "$out/$b.asm6x.obj" ]; then
        if python3 "$root/tests/c6xdiff.py" "$out/$b.obj" "$out/$b.asm6x.obj" > "$out/$b.diff"; then diff="identical"; rm -f "$out/$b.diff"
        else diff="DIFFER $(wc -l < "$out/$b.diff" | tr -d ' '): $(head -1 "$out/$b.diff")"; fi
    fi
    printf '%s\n  asm6x: %s\n  ASM6x: %s\n  tables: %s\n' "$b" "$theirs" "$mine" "$diff" >> "$out/results.txt"
done
if [ -n "${LINK:-}" ]; then
    ( cd "$out" && ls *.obj 2>/dev/null | grep -v asm6x > mine.lst && COPYFILE_DISABLE=1 tar --no-xattrs -czf mine.tgz -T mine.lst ) || exit 1
    ssh -n -o BatchMode=yes windows "if exist $W\\mine rmdir /s /q $W\\mine" > /dev/null
    ssh -n -o BatchMode=yes windows "mkdir $W\\mine" > /dev/null
    scp -q "$out/mine.tgz" "windows:C:/fable-asm6x/$name/mine/" || exit 1
    ssh -n -o BatchMode=yes windows "cd /d $W\\mine & tar xzf mine.tgz & C:\\fable-asm6x\\link.cmd $W\\mine & tar czf lnk.tgz *.lnk" | grep -v '^$' | grep -v LINK-DONE > "$out/link.txt"
    scp -q "windows:C:/fable-asm6x/$name/mine/lnk.tgz" "$out/" && tar xzf "$out/lnk.tgz" -C "$out" && rm -f "$out/lnk.tgz" "$out/mine.tgz" "$out/mine.lst"
    cat "$out/link.txt"
fi
cat "$out/results.txt"
