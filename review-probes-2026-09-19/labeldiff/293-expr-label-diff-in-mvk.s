; the edge probe of the same name, with a main for lnk6x: asm6x cannot assemble this
; (its W1500 relocation-template failure); ASM6x settles the difference, and TI's dis6x
; and lnk6x are asked whether what it wrote is what was meant.
	.global main
	.text
main:
	NOP
	.ref ext
	.text
back:
	MVK fwd-back, A0
	ADD fwd-back, A1, A2
fwd:
	NOP
