	.ref ext
	.text
back:
	STH A2, *+B14(2000)
	STB A2, *+B14(2000)
	LDHU *+B14(2000), A2
	LDBU *+B14(2000), A2
fwd:
	NOP
