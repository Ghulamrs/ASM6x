	.global main
	.text
main:
	NOP
	.sect ".foo"
	.word 1
	.sect ".fardata"
	.word 2
	.sect ".data:x"
	.word 3
