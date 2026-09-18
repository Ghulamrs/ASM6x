#!/bin/sh
# The checks that need the Windows box (ssh alias `windows`, CCS 7.4's compiler at
# C:\ti\ccsv7): asm6x's own object for every encoding file, recorded beside it, and - given a
# corpus directory - every file of it assembled by both and compared, then ours linked by
# lnk6x against TI's runtime.
#   sh tests/windows.sh record             re-record tests/enc/*.asm6x.obj from asm6x
#   sh tests/windows.sh <corpus dir>       assemble the corpus both ways, diff, and link ours
#   WITH=<dir> sh tests/windows.sh <dir>   the same, every program linked with the objects of
#                                          that directory's .s too - shci's runtime for its programs
set -u
cd "$(dirname "$0")/.." || exit 1
ASM=${ASM:-build/asm6x}
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
for f in tests/enc/*.s; do
    b=$(basename "$f" .s)
    "$ASM" "$f" -o "$T/$b.mac.obj" > /dev/null 2>&1
    if cmp -s "$T/$b.mac.obj" "$T/box-enc/$b.obj"; then same=$((same + 1)); else differ=$((differ + 1)); echo "DIFFER $b: the cl build's object is not the clang build's"; fi
done
echo "windows.sh: $same encoding objects identical from both builds, $differ differ"

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
ssh -n -o BatchMode=yes "$BOX" "cd /d $W\\corpus\\$name & tar xzf $name.tgz & $W\\tests\\record.cmd $W\\corpus\\$name & tar czf out.tgz *.asm6x.obj" | grep -v "^$" | grep -v RECORD-DONE
scp -q "$BOX:$ROOT/corpus/$name/out.tgz" "$T/$name/" && tar xzf "$T/$name/out.tgz" -C "$T/$name"
n=0; same=0; differ=0; refused=0
for f in "$corpus"/*.s; do
    b=$(basename "$f" .s)
    case "$b" in *" "*) continue;; esac
    n=$((n + 1))
    if ! "$ASM" "$f" -o "$T/$name/$b.obj" > "$T/$name/$b.err" 2>&1; then
        refused=$((refused + 1)); echo "REFUSED $b: $(head -1 "$T/$name/$b.err" | sed 's/^[^:]*: //')"; continue
    fi
    [ -f "$T/$name/$b.asm6x.obj" ] || { echo "NO-REFERENCE $b (asm6x refused it)"; continue; }
    if python3 tests/c6xdiff.py "$T/$name/$b.obj" "$T/$name/$b.asm6x.obj" > "$T/$name/$b.diff"; then same=$((same + 1))
    else differ=$((differ + 1)); echo "DIFFER $b: $(head -1 "$T/$name/$b.diff")"; fi
done
echo "windows.sh: $n files, $same identical to asm6x, $differ differ, $refused refused"
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
