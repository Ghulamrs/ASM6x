	.text
f:
	NOP
lp:
	NOP
	.sect ".c6xabi.extab:f"
	.word $EXTAB_LP(lp)+4, $EXTAB_LP(lp)-4
