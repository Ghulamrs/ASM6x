	.text
f:
	NOP
	.sect ".c6xabi.exidx:.text"
	.global ex
ex:	.word $EXIDX_FUNC(f), 1
