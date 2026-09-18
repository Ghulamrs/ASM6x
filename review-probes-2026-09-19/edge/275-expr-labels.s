	.data
back:	.word 1
	.word 2
fwd:	.word fwd-back, back-fwd, fwd-back+4, 4+fwd-back, (fwd-back)*2, 2*(fwd-back)
