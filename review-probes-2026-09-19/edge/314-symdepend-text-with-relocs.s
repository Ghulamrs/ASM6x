	.ref dep, ext
	.text
	MVKL ext, A0
	B ext
	.symdepend "dep", ".text"
