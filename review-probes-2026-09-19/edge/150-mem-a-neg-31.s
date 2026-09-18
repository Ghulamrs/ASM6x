	.ref ext
	.text
back:
	LDW *-A4(124), A5
	STB A2, *-A1(31)
fwd:
	NOP
