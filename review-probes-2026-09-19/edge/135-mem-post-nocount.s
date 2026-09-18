	.ref ext
	.text
back:
	LDW *B15++, A2
	LDB *A4--, A5
	LDDW *++A4, A5:A4
fwd:
	NOP
