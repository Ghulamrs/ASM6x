	.data
d:	.word 0
	.text
back:
	MVKL fwd-d, A0
	MVKH fwd-d, A0
fwd:
	NOP
