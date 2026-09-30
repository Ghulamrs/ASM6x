#!/bin/sh
# --compress against what it must say and against asm6x's own compressed objects:
#   sh tests/compact/check.sh [dir ...]
# Every .s of tests/compact (and of each directory named) is assembled plain and with --compress.
# Where binutils' objdump for tic6x is to be had ($TIC6X_OBJDUMP, or tic6x-elf-objdump on PATH;
# tools/build-tic6x-objdump.sh builds one), tests/compact/verify.py holds the compressed object
# to the plain one instruction by instruction. Where asm6x's compressed object for the file is
# recorded beside it (<name>.c82.obj, by sh tests/windows.sh compact), ours is compared with it
# table by table (c6xdiff) and byte for byte. python3 and a shell are all it needs.
cd "$(dirname "$0")/../.." || exit 1
ASM=${ASM:-build/asm6x.exe}
T=${T:-build/test/compact}
mkdir -p "$T"
OBJDUMP=${TIC6X_OBJDUMP:-$(command -v tic6x-elf-objdump 2>/dev/null)}
[ -n "$OBJDUMP" ] && [ -x "$OBJDUMP" ] || OBJDUMP=
files=0; verified=0; bad=0; refused=0; same=0; bytes=0; differ=0; recorded=0
for d in tests/compact "$@"; do
    for f in "$d"/*.s; do
        [ -f "$f" ] || continue
        b=$(basename "$f" .s)
        files=$((files + 1))
        if ! "$ASM" "$f" -o "$T/$b.plain.obj" > "$T/$b.err" 2>&1 || ! "$ASM" --compress "$f" -o "$T/$b.obj" >> "$T/$b.err" 2>&1; then
            refused=$((refused + 1)); echo "REFUSED $b: $(head -1 "$T/$b.err")"; continue
        fi
        if [ -n "$OBJDUMP" ]; then
            if TIC6X_OBJDUMP="$OBJDUMP" python3 tests/compact/verify.py "$T/$b.plain.obj" "$T/$b.obj" > "$T/$b.ver" 2>&1; then verified=$((verified + 1))
            else bad=$((bad + 1)); echo "BAD $b:"; sed 's/^/    /' "$T/$b.ver" | head -4; fi
        fi
        ref="$d/$b.c82.obj"
        [ -f "$ref" ] || continue
        recorded=$((recorded + 1))
        if python3 tests/c6xdiff.py "$T/$b.obj" "$ref" > "$T/$b.diff"; then same=$((same + 1)); cmp -s "$T/$b.obj" "$ref" && bytes=$((bytes + 1))
        else differ=$((differ + 1)); echo "DIFFER $b (from asm6x's compressed object):"; sed 's/^/    /' "$T/$b.diff" | head -3; fi
    done
done
echo "compact/check.sh: $files files, $refused refused; ${OBJDUMP:+verified $verified, $bad bad; }$recorded with asm6x's object: $same identical ($bytes byte-identical), $differ differ"
[ "$bad" = 0 ] && [ "$refused" = 0 ]
