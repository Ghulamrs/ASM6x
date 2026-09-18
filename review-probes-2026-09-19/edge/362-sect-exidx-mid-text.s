	.text
f:
	NOP
	.sect ".c6xabi.exidx:.text"
	.word $EXIDX_FUNC(f), 1
	.text
	NOP
	.sect ".c6xabi.exidx:.text"
	.word 2, 3
