	.text
f:
	NOP
	.sect ".c6xabi.exidx:.text"
	.word $exidx_func(f), 1
