	.global main
	.text
main:
	NOP
	B far+8
	NOP 5
	MVKL far-8, A0
	MVKH far-8, A0
	MVKL far+0x12345, A1
	MVKH far+0x12345, A1
	MVKL dat+4, A2
	MVKH dat+4, A2
	B far-4
	NOP 5
	.sect ".text:far"
	NOP
	NOP
	NOP
far:
	B main
	NOP 5
	.data
	.word dat+8, far+4
dat:	.word 1, 2, 3
