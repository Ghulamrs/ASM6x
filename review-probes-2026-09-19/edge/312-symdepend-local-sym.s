	.text
f:
	NOP
	.sect ".c6xabi.extab:f"
	.word 1
	.symdepend "f", ".c6xabi.extab:f"
