	.global d, f
	.data
d:	.word 1
	.text
f:
	NOP
	.sect ".const"
	.global c
c:	.byte 1
