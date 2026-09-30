; c10-branch-reg: written by gen.py - do not edit
	.text
	.global f
f:
	B .S2 B0
	NOP 5
	B .S2 B1
	NOP 5
	B .S2 B3
	NOP 5
	B .S2 B15
	NOP 5
	BNOP .S2 B3, 0
	NOP 6
	BNOP .S2 B3, 1
	NOP 5
	BNOP .S2 B3, 2
	NOP 4
	BNOP .S2 B3, 3
	NOP 3
	BNOP .S2 B3, 4
	NOP 2
	BNOP .S2 B3, 5
	NOP 1
	B B3
	NOP 5
