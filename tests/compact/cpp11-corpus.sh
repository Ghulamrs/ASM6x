#!/bin/sh
# The assembly the compiler writes today, for --compress to be held to: C++Optimize's six
# kernels and every tests/cases program for tms6747, at -O1 and -O2, into <out>/kernels and
# <out>/cases - then, on this machine, sh tests/compact/check.sh <out>/kernels <out>/cases,
# and with the box, sh tests/windows.sh compact <out>/kernels <out>/cases.
#   CPP=<C++Optimize> sh tests/compact/cpp11-corpus.sh <out>
set -u
OUT=${1:?usage: CPP=<C++Optimize> sh tests/compact/cpp11-corpus.sh <out>}
CPP=${CPP:-$(cd "$(dirname "$0")/../../.." && pwd)/C++Optimize}
[ -x "$CPP/cpp11.exe" ] || { echo "no $CPP/cpp11.exe: name the tree with CPP=<dir>"; exit 2; }
mkdir -p "$OUT/kernels" "$OUT/cases"
OUT=$(cd "$OUT" && pwd)
for p in "$CPP"/tools/c6747/bench/*.c "$CPP"/tools/c6747/bench/*.cpp; do
    [ -f "$p" ] || continue
    n=$(basename "$p"); n=${n%.*}
    cp "$p" "$OUT/kernels/$n.cpp"
    for L in O1 O2; do "$CPP/cpp11.exe" -arch tms6747 -nologo -$L -S "$OUT/kernels/$n.cpp" -o "$OUT/kernels/$n.$L.s" || echo "cpp11 -$L: $n"; done
    rm -f "$OUT/kernels/$n.cpp"
done
for src in "$CPP"/tests/cases/*.cpp; do
    b=$(basename "$src" .cpp)
    case "$b" in *" "*) continue;; esac
    [ -f "$CPP/tests/cases/$b.error" ] && continue
    [ -f "$CPP/tests/cases/$b.notarget" ] && grep -q "^tms6747" "$CPP/tests/cases/$b.notarget" && continue
    for L in O1 O2; do
        ( cd "$CPP/tests/cases" && ulimit -t 30; "$CPP/cpp11.exe" -arch tms6747 -nologo -$L -S "$b.cpp" -o "$OUT/cases/$b.$L.s" ) 2>/dev/null
    done
done
echo "cpp11-corpus.sh: $(ls "$OUT"/kernels/*.s | wc -l | tr -d ' ') kernel files, $(ls "$OUT"/cases/*.s | wc -l | tr -d ' ') case files in $OUT"
