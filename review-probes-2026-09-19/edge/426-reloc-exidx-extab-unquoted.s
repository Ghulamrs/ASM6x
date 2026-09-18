	.ref __c6xabi_extab$f
	.text
f:
	NOP
	.sect ".c6xabi.exidx:.text"
	.word $EXIDX_FUNC("f"), $EXIDX_EXTAB(__c6xabi_extab$f)
