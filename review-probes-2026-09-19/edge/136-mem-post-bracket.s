	.ref ext
	.text
back:
	LDW *B15++[2], A2
	LDW *--A4[3], A5
fwd:
	NOP
