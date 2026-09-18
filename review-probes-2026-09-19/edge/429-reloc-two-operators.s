	.text
f:
	NOP
lp:
	NOP
	.sect ".c6xabi.extab:f"
	.word $EXTAB_LP(lp)+$EXIDX_FUNC(f)
