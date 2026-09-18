	.ref ext
	.text
back:
	LDW *+B15(128), B2
	STW B2, *+B14(128)
fwd:
	NOP
