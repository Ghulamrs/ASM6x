import struct, sys
def globals_of(path):
    d = open(path,'rb').read()
    shoff = struct.unpack_from('<I', d, 0x20)[0]
    shentsize, shnum, shstrndx = struct.unpack_from('<HHH', d, 0x2e)
    secs = []
    for i in range(shnum):
        secs.append(struct.unpack_from('<IIIIIIIIII', d, shoff + i*shentsize))
    for s in secs:
        if s[1] == 2:
            off, size, link, info = s[4], s[5], s[6], s[7]
            stroff = secs[link][4]
            names = []
            for k in range(info, size//16):
                nm, = struct.unpack_from('<I', d, off + k*16)
                e = d.index(b'\0', stroff+nm)
                names.append(d[stroff+nm:e].decode())
            return names
    return []
if __name__ == '__main__':
    for p in sys.argv[1:]:
        print(p, globals_of(p))
