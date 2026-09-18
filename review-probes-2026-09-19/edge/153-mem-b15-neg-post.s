	.ref ext
	.text
back:
	LDW *B15--(4), A2
	LDW *--B15(4), A2
fwd:
	NOP
