	.global main
	.text
main:
	BNOP far, 3
	NOP
	NOP
	NOP
	.sect ".text:far"
	NOP
	NOP
far:
	BNOP main, 2
	NOP
