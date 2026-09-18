	.ref a, b, c
	.data
	.word c
	.text
	MVKL b, A0
	B a
	MVKH b, A0
	.word a
	.sect ".const"
	.word b
