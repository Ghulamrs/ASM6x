#!/bin/sh
# probe.sh <dir>: assemble every .s in <dir> with asm6x 8.2.2 on the box, fetch the objects
set -u
d=$1; n=$(basename "$d")
COPYFILE_DISABLE=1 tar -C "$d" --no-xattrs -czf "$d.tgz" $(cd "$d" && ls *.s)
ssh -n -o BatchMode=yes windows "(if not exist C:\\cxx1\\symorder mkdir C:\\cxx1\\symorder)" >/dev/null
ssh -n -o BatchMode=yes windows "(if exist C:\\cxx1\\symorder\\$n rmdir /s /q C:\\cxx1\\symorder\\$n)" >/dev/null
ssh -n -o BatchMode=yes windows "mkdir C:\\cxx1\\symorder\\$n" >/dev/null
scp -q "$d.tgz" "windows:C:/cxx1/symorder/$n/"
ssh -n -o BatchMode=yes windows "cd /d C:\\cxx1\\symorder\\$n & tar xzf $n.tgz & set PATH=C:\\ti\\ccsv7\\tools\\compiler\\ti-cgt-c6000_8.2.2\\bin;%PATH% & for %f in (*.s) do @cl6x -mv6740 --abi=eabi --no_compress --symdebug:none -c %f --output_file=%~nf.asm6x.obj > %~nf.log 2>&1 & tar czf out.tgz *.asm6x.obj *.log" >/dev/null
scp -q "windows:C:/cxx1/symorder/$n/out.tgz" "$d/" && tar xzf "$d/out.tgz" -C "$d"
