#!/bin/sh
# Every encoding file against asm6x: tests/enc/*.s are assembled here and compared, table by
# table, with tests/enc/*.asm6x.obj, the object TI's asm6x 8.2.2 wrote for the same file
# (recorded by tests/windows.sh record). Nothing but python3 is needed, so this runs on all
# three machines.
#   ASM=build/asm6x sh tests/run.sh
cd "$(dirname "$0")/.." || exit 1
ASM=${ASM:-build/asm6x.exe}
T=${T:-build/test/enc}
mkdir -p "$T"
files=0; same=0; differ=0; refused=0
for f in tests/enc/*.s; do
    b=$(basename "$f" .s)
    files=$((files + 1))
    if ! "$ASM" "$f" -o "$T/$b.obj" > "$T/$b.err" 2>&1; then
        echo "REFUSED $b: $(head -1 "$T/$b.err")"; refused=$((refused + 1)); continue
    fi
    if python3 tests/c6xdiff.py "$T/$b.obj" "tests/enc/$b.asm6x.obj" > "$T/$b.diff"; then same=$((same + 1))
    else differ=$((differ + 1)); echo "DIFFER $b:"; head -6 "$T/$b.diff" | sed 's/^/    /'; fi
done
# what must be refused
for f in tests/refuse/*.s; do
    [ -f "$f" ] || continue
    b=$(basename "$f" .s)
    files=$((files + 1))
    if "$ASM" "$f" -o "$T/$b.obj" > "$T/$b.msg" 2>&1; then echo "refuse/$b: assembled, should have been refused"; differ=$((differ + 1)); continue; fi
    same=$((same + 1))
done
echo "run.sh: $files files, $same as asm6x, $differ differ, $refused refused"
[ "$differ" = 0 ] && [ "$refused" = 0 ]
