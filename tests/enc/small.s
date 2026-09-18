	.global g
	.sect	".neardata", RW
	.align	4
g:
	.word	5
	.bss	t, 16, 4
	.text
	.global add
add:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
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
	ADD	A4, A6, A4
	B	L$return$add
	NOP	5
	ZERO	A4
L$return$add:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(add)
	.ulong	0x83ff0007
	.text
	.text
	.global main
main:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	40, B0
	MVKH	40, B0
	SUB	B15, B0, B15
	SUB	B15, 8, B15
	MVKL	g, A4
	MVKH	g, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	2, A4
	MVKH	2, A4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret0, B3
	MVKH	L$main$ret0, B3
	B	add
	NOP	5
L$main$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	3, A4
	MVKH	3, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MPY32	A4, A6, A4
	NOP	3
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	t, A4
	MVKH	t, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	4, A4
	MVKH	4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	t, A4
	MVKH	t, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	4, A4
	MVKH	4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	21, A4
	MVKH	21, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else1
	NOP	5
	MVKL	0, A4
	MVKH	0, A4
	B	L$main$end1
	NOP	5
L$main$else1:
	MVKL	1, A4
	MVKH	1, A4
L$main$end1:
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
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(main)
	.ulong	0x83ff0207
	.text
	.global	__c6xabi_unwind_cpp_pr3
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.exidx:.text"
