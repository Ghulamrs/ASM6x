	.sect	".const"
L$str$0:
	.byte	126, 83, 32, 37, 100, 10, 0
L$str$1:
	.byte	97, 110, 100, 10, 0
L$str$2:
	.byte	111, 114, 10, 0
L$str$3:
	.byte	110, 111, 116, 10, 0
L$str$4:
	.byte	120, 111, 114, 10, 0
L$str$5:
	.byte	110, 111, 116, 95, 101, 113, 10, 0
L$str$6:
	.byte	37, 100, 32, 37, 100, 32, 37, 100, 32, 37, 100, 10, 0
L$str$7:
	.byte	37, 100, 10, 0
L$str$8:
	.byte	37, 100, 10, 0
L$str$9:
	.byte	37, 100, 10, 0
L$str$10:
	.byte	37, 100, 32, 37, 100, 10, 0
L$str$11:
	.byte	37, 100, 10, 0
L$str$12:
	.byte	37, 100, 32, 37, 100, 32, 37, 100, 10, 0
L$str$13:
	.byte	118, 32, 37, 100, 10, 0
L$str$14:
	.byte	112, 112, 32, 97, 110, 100, 10, 0
L$str$15:
	.byte	112, 112, 32, 111, 114, 32, 98, 105, 116, 97, 110, 100, 10, 0
L$str$16:
	.byte	112, 112, 32, 110, 111, 116, 10, 0
	.sect	".neardata", RW
	.align	4
_ZL7android:
	.word	3
	.sect	".neardata", RW
	.align	4
_ZL10not_a_word:
	.word	4
	.text
	.global _ZN1SC1Ei
_ZN1SC1Ei:
	.global _ZN1SC2Ei
_ZN1SC2Ei:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	ZERO	A4
L$return$_ZN1SC1Ei:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN1SC1Ei)
	.ulong	0x83ff0007
	.text
	.text
	.global _ZN1SD1Ev
_ZN1SD1Ev:
	.global _ZN1SD2Ev
_ZN1SD2Ev:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 16, B15
	MVKL	L$str$0, A4
	MVKH	L$str$0, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	L$_ZN1SD1Ev$ret0, B3
	MVKH	L$_ZN1SD1Ev$ret0, B3
	B	printf
	NOP	5
L$_ZN1SD1Ev$ret0:
	ADD	B15, 16, B15
	ZERO	A4
L$return$_ZN1SD1Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN1SD1Ev)
	.ulong	0x83ff0207
	.text
	.text
_ZL5twiceRi:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	2, A4
	MVKH	2, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MPY32	A4, A6, A4
	NOP	3
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZL5twiceRi
	NOP	5
	ZERO	A4
L$return$_ZL5twiceRi:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZL5twiceRi)
	.ulong	0x83ff0007
	.text
	.text
	.global main
main:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	12, A4
	MVKH	12, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	10, A4
	MVKH	10, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	1, A4
	MVKH	1, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	49, A0
	MVKH	49, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STB	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	50, A0
	MVKH	50, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STB	A4, *A6
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGT	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$shortcut1
	NOP	5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGT	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
L$main$shortcut1:
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$end0
	NOP	5
	SUB	B15, 8, B15
	MVKL	L$str$1, A4
	MVKH	L$str$1, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret2, B3
	MVKH	L$main$ret2, B3
	B	printf
	NOP	5
L$main$ret2:
	ADD	B15, 8, B15
L$main$end0:
	MVKL	49, A0
	MVKH	49, A0
	SUB	A15, A0, A4
	LDBU	*A4, A4
	NOP	4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[A1]	B	L$main$shortcut4
	NOP	5
	MVKL	50, A0
	MVKH	50, A0
	SUB	A15, A0, A4
	LDBU	*A4, A4
	NOP	4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
L$main$shortcut4:
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$end3
	NOP	5
	SUB	B15, 8, B15
	MVKL	L$str$2, A4
	MVKH	L$str$2, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret5, B3
	MVKH	L$main$ret5, B3
	B	printf
	NOP	5
L$main$ret5:
	ADD	B15, 8, B15
L$main$end3:
	MVKL	50, A0
	MVKH	50, A0
	SUB	A15, A0, A4
	LDBU	*A4, A4
	NOP	4
	CMPEQ	0, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$end6
	NOP	5
	SUB	B15, 8, B15
	MVKL	L$str$3, A4
	MVKH	L$str$3, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret7, B3
	MVKH	L$main$ret7, B3
	B	printf
	NOP	5
L$main$ret7:
	ADD	B15, 8, B15
L$main$end6:
	MVKL	49, A0
	MVKH	49, A0
	SUB	A15, A0, A4
	LDBU	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	50, A0
	MVKH	50, A0
	SUB	A15, A0, A4
	LDBU	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	XOR	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$end8
	NOP	5
	SUB	B15, 8, B15
	MVKL	L$str$4, A4
	MVKH	L$str$4, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret9, B3
	MVKH	L$main$ret9, B3
	B	printf
	NOP	5
L$main$ret9:
	ADD	B15, 8, B15
L$main$end8:
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$end10
	NOP	5
	SUB	B15, 8, B15
	MVKL	L$str$5, A4
	MVKH	L$str$5, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret11, B3
	MVKH	L$main$ret11, B3
	B	printf
	NOP	5
L$main$ret11:
	ADD	B15, 8, B15
L$main$end10:
	SUB	B15, 24, B15
	MVKL	L$str$6, A4
	MVKH	L$str$6, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	AND	A4, A6, A4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	OR	A4, A6, A4
	ADD	B15, 12, B0
	STW	A4, *B0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	XOR	A4, A6, A4
	ADD	B15, 16, B0
	STW	A4, *B0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	-1, A4
	MVKH	-1, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	XOR	A4, A6, A4
	ADD	B15, 20, B0
	STW	A4, *B0
	MVKL	L$main$ret12, B3
	MVKH	L$main$ret12, B3
	B	printf
	NOP	5
L$main$ret12:
	ADD	B15, 24, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	6, A4
	MVKH	6, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	AND	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 16, B15
	MVKL	L$str$7, A4
	MVKH	L$str$7, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	L$main$ret13, B3
	MVKH	L$main$ret13, B3
	B	printf
	NOP	5
L$main$ret13:
	ADD	B15, 16, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	OR	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 16, B15
	MVKL	L$str$8, A4
	MVKH	L$str$8, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	L$main$ret14, B3
	MVKH	L$main$ret14, B3
	B	printf
	NOP	5
L$main$ret14:
	ADD	B15, 16, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	3, A4
	MVKH	3, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	XOR	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 16, B15
	MVKL	L$str$9, A4
	MVKH	L$str$9, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	L$main$ret15, B3
	MVKH	L$main$ret15, B3
	B	printf
	NOP	5
L$main$ret15:
	ADD	B15, 16, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	7, A4
	MVKH	7, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 16, B15
	MVKL	L$str$10, A4
	MVKH	L$str$10, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	MVKL	L$main$ret16, B3
	MVKH	L$main$ret16, B3
	B	_ZL5twiceRi
	NOP	5
L$main$ret16:
	ADD	B15, 8, B15
	ADD	B15, 12, B0
	STW	A4, *B0
	MVKL	L$main$ret17, B3
	MVKH	L$main$ret17, B3
	B	printf
	NOP	5
L$main$ret17:
	ADD	B15, 16, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 16, B15
	MVKL	L$str$11, A4
	MVKH	L$str$11, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	L$main$ret18, B3
	MVKH	L$main$ret18, B3
	B	printf
	NOP	5
L$main$ret18:
	ADD	B15, 16, B15
	SUB	B15, 24, B15
	MVKL	L$str$12, A4
	MVKH	L$str$12, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	1, A4
	MVKH	1, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$shortcut19
	NOP	5
	MVKL	1, A4
	MVKH	1, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
L$main$shortcut19:
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	_ZL7android, A4
	MVKH	_ZL7android, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 12, B0
	STW	A4, *B0
	MVKL	_ZL10not_a_word, A4
	MVKH	_ZL10not_a_word, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 16, B0
	STW	A4, *B0
	MVKL	L$main$ret20, B3
	MVKH	L$main$ret20, B3
	B	printf
	NOP	5
L$main$ret20:
	ADD	B15, 24, B15
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	5, A4
	MVKH	5, A4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret21, B3
	MVKH	L$main$ret21, B3
	B	_ZN1SC1Ei
	NOP	5
L$main$ret21:
	ADD	B15, 8, B15
L$main$try22:
	SUB	B15, 16, B15
	MVKL	L$str$13, A4
	MVKH	L$str$13, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	L$main$ret23, B3
	MVKH	L$main$ret23, B3
	B	printf
	NOP	5
L$main$ret23:
	ADD	B15, 16, B15
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$main$ret24, B3
	MVKH	L$main$ret24, B3
	B	_ZN1SD1Ev
	NOP	5
L$main$ret24:
	ADD	B15, 8, B15
L$main$tryend22:
	B	L$main$caught22
	NOP	5
L$main$pad22:
	MVKL	72, A0
	MVKH	72, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	76, A0
	MVKH	76, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$main$cleanup25:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$main$ret26, B3
	MVKH	L$main$ret26, B3
	B	_ZN1SD1Ev
	NOP	5
L$main$ret26:
	ADD	B15, 8, B15
L$main$cleanupend25:
	SUB	B15, 8, B15
	MVKL	L$main$ret27, B3
	MVKH	L$main$ret27, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret27:
	ADD	B15, 8, B15
L$main$caught22:
	SUB	B15, 8, B15
	MVKL	L$str$14, A4
	MVKH	L$str$14, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret28, B3
	MVKH	L$main$ret28, B3
	B	printf
	NOP	5
L$main$ret28:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MVKL	L$str$15, A4
	MVKH	L$str$15, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret29, B3
	MVKH	L$main$ret29, B3
	B	printf
	NOP	5
L$main$ret29:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MVKL	L$str$16, A4
	MVKH	L$str$16, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	L$main$ret30, B3
	MVKH	L$main$ret30, B3
	B	printf
	NOP	5
L$main$ret30:
	ADD	B15, 8, B15
	MVKL	0, A4
	MVKH	0, A4
	B	L$return$main
	NOP	5
	ZERO	A4
L$return$main:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$main$pad22$s0:
	MVK	0, B4
	B	L$main$pad22
	NOP	5
L$main$fnend:
	.sect	".c6xabi.extab:main"
	.align	4
__c6xabi_extab$main:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$main$cleanupend25) - $EXTAB_SCOPE(L$main$cleanup25) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup25) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend22) - $EXTAB_SCOPE(L$main$try22)
	.half	$EXTAB_SCOPE(L$main$try22) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad22$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:main"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(main)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$main")
	.text
	.global	__c6xabi_unwind_cpp_pr3
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.exidx:.text"
	.ref	__cxa_end_cleanup
	.ref	printf
