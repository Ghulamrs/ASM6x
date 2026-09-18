	.text
f:
	NOP
g:
	NOP
	.sect ".c6xabi.extab:f"
	.word $EXTAB_SCOPE(g)-$EXTAB_SCOPE(f), $EXTAB_SCOPE(g) - $EXTAB_SCOPE(f) + 1
	.half $EXTAB_SCOPE(g)-$EXTAB_SCOPE(f)
	.byte $EXTAB_SCOPE(g)-$EXTAB_SCOPE(f)
