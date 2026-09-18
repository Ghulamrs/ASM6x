	.global main
	.text
main:
	NOP
	.sect ".c6xabi.exidx:.text"
	.word $EXIDX_FUNC(main)+8, 1
	.sect ".c6xabi.extab:main"
	.word $EXTAB_LP(main)+4, 0
