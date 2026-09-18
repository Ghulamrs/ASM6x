	.ref ext
	.text
back:
	LDW *A4, A5
	|| LDW *B4, B5
	|| CMPEQ A1, A2, A3
	|| CMPEQ B1, B2, B3
	|| SHL A6, A7, A8
	|| SHL B6, B7, B8
	|| MPY A9, A10, A11
	|| MPY B9, B10, B11
fwd:
	NOP
