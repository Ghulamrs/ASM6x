#!/usr/bin/env python3
"""Reads a TI C6000 ELF object and prints what the tests compare: the sections with their
type, flags, alignment and size, every code word of each executable section, the data bytes
of the others, the relocations (type, offset, symbol name, addend) and the symbols (name,
binding, type, section, value). ofd6x and dis6x say the same about asm6x's objects on the box;
this needs only python3, so it runs on all three machines.

  python3 tests/elfdump.py file.obj [section ...]
"""
import struct, sys

RELOCS = {0: 'NONE', 1: 'ABS32', 2: 'ABS16', 3: 'ABS8', 4: 'PCR_S21', 5: 'PCR_S12', 6: 'PCR_S10',
          7: 'PCR_S7', 8: 'ABS_S16', 9: 'ABS_L16', 10: 'ABS_H16', 11: 'SBR_U15_B', 12: 'SBR_U15_H',
          13: 'SBR_U15_W', 14: 'SBR_S16', 15: 'SBR_L16_B', 16: 'SBR_L16_H', 17: 'SBR_L16_W',
          18: 'SBR_H16_B', 19: 'SBR_H16_H', 20: 'SBR_H16_W', 21: 'SBR_GOT_U15_W', 22: 'SBR_GOT_L16_W',
          23: 'SBR_GOT_H16_W', 24: 'DSBT_INDEX', 25: 'PREL31', 26: 'COPY', 27: 'JUMP_SLOT',
          28: 'EHTYPE', 29: 'PCR_H16', 30: 'PCR_L16', 253: 'ALIGN', 254: 'FPHEAD', 255: 'NOCMP'}
SHTYPES = {0: 'NULL', 1: 'PROGBITS', 2: 'SYMTAB', 3: 'STRTAB', 4: 'RELA', 8: 'NOBITS', 9: 'REL',
           0x70000001: 'C6000_UNWIND', 0x70000003: 'C6000_ATTRIBUTES', 0x7f000006: 'TI_SYMALIAS',
           0x7f000005: 'TI_SECFLAGS'}
BINDS = {0: 'local', 1: 'global', 2: 'weak'}
TYPES = {0: 'none', 1: 'object', 2: 'func', 3: 'section', 4: 'file'}

def dump(path, only=()):
    d = open(path, 'rb').read()
    if d[:4] != b'\x7fELF' or d[4] != 1 or d[5] != 1:
        sys.exit('%s: not a 32-bit little-endian ELF' % path)
    (e_type, e_machine, _v, _entry, _phoff, shoff, e_flags, _ehsize, _phentsize, _phnum,
     shentsize, shnum, shstrndx) = struct.unpack_from('<HHIIIIIHHHHHH', d, 16)
    print('machine %d flags 0x%x sections %d' % (e_machine, e_flags, shnum))
    shdrs = [struct.unpack_from('<IIIIIIIIII', d, shoff + i * shentsize) for i in range(shnum)]
    def strtab(idx, off):
        base = shdrs[idx][4]
        end = d.index(b'\0', base + off)
        return d[base + off:end].decode('latin-1')
    names = [strtab(shstrndx, s[0]) for s in shdrs]
    symtab = None
    for i, s in enumerate(shdrs):
        if s[1] == 2: symtab = i
    syms = []
    if symtab is not None:
        s = shdrs[symtab]
        for k in range(s[5] // 16):
            st_name, st_value, st_size, st_info, st_other, st_shndx = struct.unpack_from('<IIIBBH', d, s[4] + k * 16)
            syms.append((strtab(s[6], st_name), st_value, st_size, st_info >> 4, st_info & 15, st_other, st_shndx))
    for i, s in enumerate(shdrs):
        name, sh_type, sh_flags, _addr, off, size, link, info, align, _entsize = s
        if only and names[i] not in only: continue
        print('section %d %s type %s flags 0x%x align %d size 0x%x link %d info %d' % (
            i, names[i], SHTYPES.get(sh_type, hex(sh_type)), sh_flags, align, size, link, info))
        if sh_type == 1 and (sh_flags & 4) and size:
            words = struct.unpack_from('<%dI' % (size // 4), d, off)
            for k, w in enumerate(words): print('  %06x %08x' % (k * 4, w))
        elif sh_type in (1, 0x70000001, 0x70000003, 0x7f000006, 0x7f000005) and size:
            b = d[off:off + size]
            for k in range(0, len(b), 16): print('  %06x %s' % (k, b[k:k + 16].hex(' ')))
        elif sh_type == 4:
            for k in range(size // 12):
                r_off, r_info, r_add = struct.unpack_from('<IIi', d, off + k * 12)
                print('  rela %06x %-8s %s %+d' % (r_off, RELOCS.get(r_info & 255, str(r_info & 255)), syms[r_info >> 8][0], r_add))
        elif sh_type == 9:
            for k in range(size // 8):
                r_off, r_info = struct.unpack_from('<II', d, off + k * 8)
                print('  rel  %06x %-8s %s' % (r_off, RELOCS.get(r_info & 255, str(r_info & 255)), syms[r_info >> 8][0]))
    if not only:
        for k, (n, v, sz, b, t, o, sh) in enumerate(syms):
            where = 'undef' if sh == 0 else 'abs' if sh == 0xfff1 else names[sh]
            print('symbol %d %s %s %s %s 0x%x size %d other %d' % (k, n, BINDS.get(b, b), TYPES.get(t, t), where, v, sz, o))

if __name__ == '__main__':
    if len(sys.argv) < 2: sys.exit(__doc__)
    dump(sys.argv[1], tuple(sys.argv[2:]))
