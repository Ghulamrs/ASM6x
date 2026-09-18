	.sect ".text:f"
f:
	NOP
	.sect ".c6xabi.exidx:.text:f"
	.word $EXIDX_FUNC(f), 1
