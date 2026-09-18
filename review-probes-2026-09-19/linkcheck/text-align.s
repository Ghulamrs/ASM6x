	.global main
	.text
main:
	NOP
	.word tab
	.byte 1
tab:
	MVK 7, A1
	B tab
	NOP 5
