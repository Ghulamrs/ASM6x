	.text
f:
	NOP
	.sect ".text:g"
g:
	NOP
	.sect ".c6xabi.extab:f"
	.word $EXTAB_SCOPE(g)-$EXTAB_SCOPE(f)
