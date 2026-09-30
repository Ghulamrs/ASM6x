#!/bin/sh
# binutils' objdump for tic6x - a disassembler that is neither TI's nor ours, which
# tests/compact/verify.py reads compressed objects with. Built once, outside the tree:
#   sh tools/build-tic6x-objdump.sh [dir]      (default ~/tic6x-binutils)
# then TIC6X_OBJDUMP=<dir>/objdump. binutils 2.40 still has the tic6x target; its zlib needs
# one line mended for a current macOS SDK (fdopen), and makeinfo is not needed.
set -eu
DIR=${1:-$HOME/tic6x-binutils}
mkdir -p "$DIR" && cd "$DIR"
[ -f binutils-2.40.tar.xz ] || curl -sfLO https://ftp.gnu.org/gnu/binutils/binutils-2.40.tar.xz
[ -d binutils-2.40 ] || tar xf binutils-2.40.tar.xz
sed -i.orig 's|#        define fdopen(fd,mode) NULL /\* No fdopen() \*/|/* fdopen */|' binutils-2.40/zlib/zutil.h
mkdir -p build && cd build
[ -f Makefile ] || ../binutils-2.40/configure --target=tic6x-elf --disable-nls --disable-werror --disable-gdb \
    --disable-gprof --disable-ld --disable-gold > configure.log 2>&1
make -j8 MAKEINFO=true all-binutils > make.log 2>&1
cp binutils/objdump "$DIR/objdump"
echo "TIC6X_OBJDUMP=$DIR/objdump"
