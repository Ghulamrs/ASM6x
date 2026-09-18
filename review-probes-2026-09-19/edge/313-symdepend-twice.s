	.ref dep, dep2
	.sect ".c6xabi.extab:f"
	.word 1
	.symdepend "dep", ".c6xabi.extab:f"
	.symdepend "dep2", ".c6xabi.extab:f"
	.symdepend "dep", ".c6xabi.extab:f"
