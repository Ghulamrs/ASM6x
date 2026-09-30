#!/bin/sh
# The checks that need the Windows box (ssh alias `windows`, CCS 7.4's compiler at
# C:\ti\ccsv7): asm6x's own object for every encoding file, recorded beside it, and - given a
# corpus directory - every file of it assembled by both and compared, then ours linked by
# lnk6x against TI's runtime.
#   sh tests/windows.sh record             re-record tests/enc/*.asm6x.obj from asm6x
#   sh tests/windows.sh <corpus dir>       assemble the corpus both ways, diff, and link ours
#   WITH=<dir> sh tests/windows.sh <dir>   the same, every program linked with the objects of
#                                          that directory's .s too - shalimar's runtime for its programs
#   sh tests/windows.sh compact [dir ...]  --compress against asm6x's own compression: each .s
#                                          (tests/compact and tests/compact/learn when no dir is
#                                          named) assembled by cl6x 8.2.2 and 7.4.4 compressed and
#                                          plain, and by us with and without --compress; dis6x lists
#                                          them all; ours is compared with 8.2.2's table by table and
#                                          byte for byte, and tests/compact/verify.py holds each
#                                          compressed object to its plain one from dis6x's listings
#                                          (asm6x's own pair is the control). RECORD=1 keeps 8.2.2's
#                                          compressed objects beside the sources, as <name>.c82.obj,
#                                          for tests/compact/check.sh.
set -u
cd "$(dirname "$0")/.." || exit 1
ASM=${ASM:-build/asm6x.exe}
BOX=${BOX:-windows}
ROOT='C:/asm6x-tests'
W='C:\asm6x-tests'
T=${T:-build/test/windows}
mkdir -p "$T"
ssh -n -o BatchMode=yes "$BOX" "if not exist $W mkdir $W & if not exist $W\\tests mkdir $W\\tests" > /dev/null || exit 1
scp -q tests/windows/*.cmd "$BOX:$ROOT/tests/" || exit 1

# the cl build, and its objects for the encoding files against this machine's
COPYFILE_DISABLE=1 tar -C . --no-xattrs -czf "$T/tree.tgz" src tests/enc || exit 1
scp -q "$T/tree.tgz" "$BOX:$ROOT/" || exit 1
ssh -n -o BatchMode=yes "$BOX" "cd /d $W & tar xzf tree.tgz & $W\\tests\\build.cmd $W & tar czf enc-out.tgz build\\enc\\*.obj" | grep -v "^$" | grep -v BUILD-DONE
rm -rf "$T/box-enc" && mkdir -p "$T/box-enc" && scp -q "$BOX:$ROOT/enc-out.tgz" "$T/" && tar xzf "$T/enc-out.tgz" -C "$T/box-enc" --strip-components 2
same=0; differ=0
rm -f "${T:?}"/*.mac.obj
for f in tests/enc/*.s; do "$ASM" "$f" -o "$T/$(basename "$f" .s).mac.obj" > /dev/null 2>&1 & done
wait
for f in tests/enc/*.s; do
    b=$(basename "$f" .s)
    if cmp -s "$T/$b.mac.obj" "$T/box-enc/$b.obj"; then same=$((same + 1)); else differ=$((differ + 1)); echo "DIFFER $b: the cl build's object is not the clang build's"; fi
done
echo "windows.sh: $same encoding objects identical from both builds, $differ differ"

if [ "${1:-}" = compact ]; then
    shift
    [ $# -gt 0 ] || set -- tests/compact tests/compact/learn
    total=0; same=0; bytes=0; ok=0; bad=0; tiok=0; tibad=0; ti74=0
    for dir in "$@"; do
        name=$(basename "$dir")
        D="$T/compact-$name"
        rm -rf "$D" && mkdir -p "$D" || exit 1
        for f in "$dir"/*.s; do
            [ -f "$f" ] || continue
            b=$(basename "$f" .s)
            case "$b" in *" "*) continue;; esac
            cp "$f" "$D/"
            "$ASM" --compress "$f" -o "$D/$b.ours.obj" > "$D/$b.ours.err" 2>&1 || echo "OURS-REFUSED $b: $(head -1 "$D/$b.ours.err")"
            "$ASM" "$f" -o "$D/$b.plain.obj" > /dev/null 2>&1
        done
        ( cd "$D" && COPYFILE_DISABLE=1 tar --no-xattrs -czf "../compact-$name.tgz" *.s *.obj ) || exit 1
        # cmd's `if` takes everything after it on the line, `&` included: one command per ssh
        ssh -n -o BatchMode=yes "$BOX" "if exist $W\\compact\\$name rmdir /s /q $W\\compact\\$name" > /dev/null
        ssh -n -o BatchMode=yes "$BOX" "if not exist $W\\compact mkdir $W\\compact" > /dev/null
        ssh -n -o BatchMode=yes "$BOX" "mkdir $W\\compact\\$name" > /dev/null
        ssh -n -o BatchMode=yes "$BOX" "if exist $W\\compact\\$name echo ok" | grep -q ok || { echo "cannot make $W\\compact\\$name on the box"; exit 1; }
        scp -q "$T/compact-$name.tgz" "$BOX:$ROOT/compact/$name/" || exit 1
        ssh -n -o BatchMode=yes "$BOX" "cd /d $W\\compact\\$name & tar xzf compact-$name.tgz & $W\\tests\\compact.cmd $W\\compact\\$name & tar czf back.tgz *.c82.obj *.nc82.obj *.c74.obj *.dis *.log" | grep -v "^$" | grep -v COMPACT-DONE
        scp -q "$BOX:$ROOT/compact/$name/back.tgz" "$D/" && tar xzf "$D/back.tgz" -C "$D" || { echo "nothing came back for $name"; continue; }
        for f in "$D"/*.s; do
            b=$(basename "$f" .s)
            total=$((total + 1))
            [ -f "$D/$b.c82.obj" ] || { echo "ASM6X-REFUSED $b: $(tr -d '
' < "$D/$b.c82.log" | grep -i error | head -1)"; continue; }
            [ -n "${RECORD:-}" ] && cp "$D/$b.c82.obj" "$dir/$b.c82.obj"
            if python3 tests/c6xdiff.py "$D/$b.ours.obj" "$D/$b.c82.obj" > "$D/$b.diff"; then
                same=$((same + 1)); cmp -s "$D/$b.ours.obj" "$D/$b.c82.obj" && bytes=$((bytes + 1))
            else echo "DIFFER $b (ours --compress, asm6x 8.2.2 compressed): $(head -1 "$D/$b.diff")"; fi
            cmp -s "$D/$b.c82.obj" "$D/$b.c74.obj" && ti74=$((ti74 + 1))
            if python3 tests/compact/verify.py --dis "$D/$b.plain.dis" "$D/$b.ours.dis" "$D/$b.plain.obj" "$D/$b.ours.obj" > "$D/$b.ver" 2>&1; then ok=$((ok + 1))
            else bad=$((bad + 1)); echo "DIS6X-BAD $b (ours):"; sed 's/^/    /' "$D/$b.ver" | head -3; fi
            if python3 tests/compact/verify.py --ti --dis "$D/$b.nc82.dis" "$D/$b.c82.dis" "$D/$b.nc82.obj" "$D/$b.c82.obj" > "$D/$b.tiver" 2>&1; then tiok=$((tiok + 1))
            else tibad=$((tibad + 1)); echo "DIS6X-CONTROL-BAD $b (asm6x's own pair - the checker, not the assembler):"; sed 's/^/    /' "$D/$b.tiver" | head -3; fi
        done
    done
    echo "windows.sh compact: $total files; ours --compress identical to asm6x 8.2.2's compressed object in $same ($bytes byte-identical)"
    echo "  dis6x: ours $ok said what the plain object says, $bad did not; asm6x's own pair (the control) $tiok, $tibad; 7.4.4 writes 8.2.2's bytes in $ti74"
    exit 0
fi

if [ "${1:-}" = record ]; then
    COPYFILE_DISABLE=1 tar -C tests/enc --no-xattrs -czf "$T/enc.tgz" $(cd tests/enc && ls *.s) || exit 1
    ssh -n -o BatchMode=yes "$BOX" "if exist $W\\enc rmdir /s /q $W\\enc" > /dev/null; ssh -n -o BatchMode=yes "$BOX" "mkdir $W\\enc" > /dev/null
    scp -q "$T/enc.tgz" "$BOX:$ROOT/enc/" || exit 1
    ssh -n -o BatchMode=yes "$BOX" "cd /d $W\\enc & tar xzf enc.tgz & $W\\tests\\record.cmd $W\\enc & tar czf out.tgz *.asm6x.obj *.asm6x.log" | grep -v "^$"
    scp -q "$BOX:$ROOT/enc/out.tgz" "$T/" && tar xzf "$T/out.tgz" -C tests/enc && rm -f tests/enc/*.asm6x.log
    echo "recorded $(ls tests/enc/*.asm6x.obj | wc -l | tr -d ' ') references"
    exit 0
fi

[ -n "${1:-}" ] || { echo "usage: sh tests/windows.sh record | <corpus dir>"; exit 2; }
corpus=$1
name=$(basename "$corpus")
rm -rf "$T/$name"
mkdir -p "$T/$name"
COPYFILE_DISABLE=1 tar -C "$corpus" --no-xattrs -czf "$T/$name.tgz" $(cd "$corpus" && ls *.s | grep -v ' ') || exit 1
ssh -n -o BatchMode=yes "$BOX" "if exist $W\\corpus\\$name rmdir /s /q $W\\corpus\\$name" > /dev/null; ssh -n -o BatchMode=yes "$BOX" "if not exist $W\\corpus mkdir $W\\corpus"; ssh -n -o BatchMode=yes "$BOX" "mkdir $W\\corpus\\$name" > /dev/null
scp -q "$T/$name.tgz" "$BOX:$ROOT/corpus/$name/" || exit 1
# TI's assembler on the box and ours here at once - the reference and the assembler under test side
# by side - and the comparison once both are done.
( ssh -n -o BatchMode=yes "$BOX" "cd /d $W\\corpus\\$name & tar xzf $name.tgz & $W\\tests\\record.cmd $W\\corpus\\$name & tar czf out.tgz *.asm6x.obj" | grep -v "^$" | grep -v RECORD-DONE
  scp -q "$BOX:$ROOT/corpus/$name/out.tgz" "$T/$name/" && tar xzf "$T/$name/out.tgz" -C "$T/$name" ) &
box=$!
ls "$corpus"/*.s | grep -v ' ' | ASM="$ASM" D="$T/$name" xargs -P 8 -I{} sh -c 'b=$(basename "{}" .s); "$ASM" "{}" -o "$D/$b.obj" > "$D/$b.err" 2>&1; echo $? > "$D/$b.rc"'
wait $box
n=0; same=0; differ=0; refused=0; bytes=0
for f in "$corpus"/*.s; do
    b=$(basename "$f" .s)
    case "$b" in *" "*) continue;; esac
    n=$((n + 1))
    if [ "$(cat "$T/$name/$b.rc")" != 0 ]; then
        refused=$((refused + 1)); echo "REFUSED $b: $(head -1 "$T/$name/$b.err" | sed 's/^[^:]*: //')"; continue
    fi
    [ -f "$T/$name/$b.asm6x.obj" ] || { echo "NO-REFERENCE $b (asm6x refused it)"; continue; }
    if python3 tests/c6xdiff.py "$T/$name/$b.obj" "$T/$name/$b.asm6x.obj" > "$T/$name/$b.diff"; then same=$((same + 1)); cmp -s "$T/$name/$b.obj" "$T/$name/$b.asm6x.obj" && bytes=$((bytes + 1))
    else differ=$((differ + 1)); echo "DIFFER $b: $(head -1 "$T/$name/$b.diff")"; fi
done
echo "windows.sh: $n files, $same identical to asm6x ($bytes byte-identical), $differ differ, $refused refused"
# link ours against TI's runtime, with the WITH directory's objects beside each if one is named
rm -rf "$T/$name/with"
if [ -n "${WITH:-}" ]; then
    mkdir -p "$T/$name/with"
    for f in "$WITH"/*.s; do
        b=$(basename "$f" .s)
        case "$b" in *" "*) continue;; esac
        "$ASM" "$f" -o "$T/$name/with/$b.obj" || { echo "the runtime's $b did not assemble"; exit 1; }
    done
fi
( cd "$T/$name" && COPYFILE_DISABLE=1 tar --no-xattrs -czf mine.tgz $(ls *.obj | grep -v asm6x) $( [ -d with ] && echo with ) ) || exit 1
ssh -n -o BatchMode=yes "$BOX" "if exist $W\\corpus\\$name\\mine rmdir /s /q $W\\corpus\\$name\\mine" > /dev/null; ssh -n -o BatchMode=yes "$BOX" "mkdir $W\\corpus\\$name\\mine" > /dev/null
scp -q "$T/$name/mine.tgz" "$BOX:$ROOT/corpus/$name/mine/" || exit 1
ssh -n -o BatchMode=yes "$BOX" "cd /d $W\\corpus\\$name\\mine & tar xzf mine.tgz & $W\\tests\\link.cmd $W\\corpus\\$name\\mine" | grep -v "^$" | tail -3
