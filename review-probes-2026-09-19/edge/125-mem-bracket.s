	.ref ext
	.text
back:
	LDW *+A4[1], A5
	LDW *-A4[2], A5
	LDB *+A4[3], A5
	LDDW *+A4[31], A5:A4
fwd:
	NOP
