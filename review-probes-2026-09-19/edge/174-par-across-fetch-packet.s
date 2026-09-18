	.ref ext
	.text
back:
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	LDW *A4, A5
	|| LDW *B4, B5
	|| CMPEQ A1, A2, A3
fwd:
	NOP
