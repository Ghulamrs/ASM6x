	.global main
	.text
main:
	CALLP far, B4
	[A0] CALLP far, A3
	NOP
far:
	NOP
