#!/bin/sh
# check.sh: the label-difference probes asm6x cannot assemble (its W1500 relocation-template
# failure), held to the values TI's dis6x and lnk6x confirmed on the box - see expect.txt.
#   ASM=<asm6x build> sh review-probes-2026-09-19/labeldiff/check.sh
# Exit status: the number of values that differ, plus one per probe ASM6x refused.
set -u
here=$(cd "$(dirname "$0")" && pwd)
ASM=${ASM:?set ASM to the asm6x build}
T=${T:-/tmp/asm6x-labeldiff}; rm -rf "$T"; mkdir -p "$T"
bad=0; n=0
for f in "$here"/*.s; do
    b=$(basename "$f" .s)
    "$ASM" "$f" -o "$T/$b.obj" > "$T/$b.log" 2>&1 || { echo "$b: ASM6x refused: $(head -1 "$T/$b.log")"; bad=$((bad + 1)); }
done
python3 - "$here/expect.txt" "$T" <<'PY' || bad=$((bad + $?))
import struct, sys
expect, T = sys.argv[1], sys.argv[2]
def section(path, name):
    d = open(path, "rb").read()
    shoff = struct.unpack_from("<I", d, 0x20)[0]; shentsize, shnum, shstrndx = struct.unpack_from("<HHH", d, 0x2e)
    hdrs = [struct.unpack_from("<IIIIII", d, shoff + i * shentsize) for i in range(shnum)]
    strs = hdrs[shstrndx][4]
    for nm, typ, flags, addr, off, size in hdrs:
        if d[strs + nm:d.index(b"\0", strs + nm)].decode() == name: return d[off:off + size]
    return None
bad = 0; n = 0
for line in open(expect):
    line = line.split(";")[0].strip()
    if not line or line.startswith("#"): continue
    probe, sec, at, kind, want = line.split()
    raw = section("%s/%s.obj" % (T, probe), sec)
    val = struct.unpack_from("<I" if kind == "word" else "<h", raw, int(at))[0]
    want = int(want, 0)
    if kind == "word": want &= 0xffffffff
    n += 1
    if val != want: bad += 1; print("%s: %s+%s %s is %#x, expected %#x" % (probe, sec, at, kind, val, want))
print("labeldiff: %d values checked, %d differ" % (n, bad))
sys.exit(bad)
PY
exit $bad
