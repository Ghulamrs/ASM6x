	.sect	".const"
L$str$0:
	.byte	37, 100, 32, 37, 100, 32, 37, 100, 32, 37, 103, 32, 37, 100, 32, 37
	.byte	100, 10, 0
	.text
	.global main
main:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	232, B0
	MVKH	232, B0
	SUB	B15, B0, B15
	MVKL	1, A4
	MVKH	1, A4
	NEG	A4, A4
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
L$main$try0:
	SUB	B15, 8, B15
	MVKL	4, A4
	MVKH	4, A4
	MVKL	L$main$ret1, B3
	MVKH	L$main$ret1, B3
	B	__cxa_allocate_exception
	NOP	5
L$main$ret1:
	ADD	B15, 8, B15
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
	MVKL	7, A4
	MVKH	7, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZTIi, A4
	MVKH	_ZTIi, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret2, B3
	MVKH	L$main$ret2, B3
	B	__cxa_throw
	NOP	5
L$main$ret2:
	ADD	B15, 8, B15
L$main$tryend0:
	B	L$main$caught0
	NOP	5
L$main$pad0:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	232, B0
	MVKH	232, B0
	SUB	B15, B0, B15
L$main$$chain0:
	MVKL	52, A0
	MVKH	52, A0
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else3
	NOP	5
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$main$ret4, B3
	MVKH	L$main$ret4, B3
	B	__cxa_begin_catch
	NOP	5
L$main$ret4:
	ADD	B15, 8, B15
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
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
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
	SUB	B15, 8, B15
	MVKL	L$main$ret5, B3
	MVKH	L$main$ret5, B3
	B	__cxa_end_catch
	NOP	5
L$main$ret5:
	ADD	B15, 8, B15
	B	L$main$end3
	NOP	5
L$main$else3:
L$main$cleanup6:
L$main$cleanupend6:
	SUB	B15, 8, B15
	MVKL	L$main$ret7, B3
	MVKH	L$main$ret7, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret7:
	ADD	B15, 8, B15
L$main$end3:
L$main$caught0:
	MVKL	1, A4
	MVKH	1, A4
	NEG	A4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	72, A0
	MVKH	72, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$main$try8:
	SUB	B15, 8, B15
	MVKL	4, A4
	MVKH	4, A4
	MVKL	L$main$ret9, B3
	MVKH	L$main$ret9, B3
	B	__cxa_allocate_exception
	NOP	5
L$main$ret9:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	13, A4
	MVKH	13, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZTIi, A4
	MVKH	_ZTIi, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret10, B3
	MVKH	L$main$ret10, B3
	B	__cxa_throw
	NOP	5
L$main$ret10:
	ADD	B15, 8, B15
L$main$tryend8:
	B	L$main$caught8
	NOP	5
L$main$pad8:
	MVKL	76, A0
	MVKH	76, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	232, B0
	MVKH	232, B0
	SUB	B15, B0, B15
L$main$$chain3:
	MVKL	80, A0
	MVKH	80, A0
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else11
	NOP	5
	SUB	B15, 8, B15
	MVKL	76, A0
	MVKH	76, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$main$ret12, B3
	MVKH	L$main$ret12, B3
	B	__cxa_begin_catch
	NOP	5
L$main$ret12:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	88, A0
	MVKH	88, A0
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
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	72, A0
	MVKH	72, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	L$main$ret13, B3
	MVKH	L$main$ret13, B3
	B	__cxa_end_catch
	NOP	5
L$main$ret13:
	ADD	B15, 8, B15
	B	L$main$end11
	NOP	5
L$main$else11:
L$main$cleanup14:
L$main$cleanupend14:
	SUB	B15, 8, B15
	MVKL	L$main$ret15, B3
	MVKH	L$main$ret15, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret15:
	ADD	B15, 8, B15
L$main$end11:
L$main$caught8:
	MVKL	1, A4
	MVKH	1, A4
	NEG	A4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	100, A0
	MVKH	100, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$main$try16:
	SUB	B15, 8, B15
	MVKL	1, A4
	MVKH	1, A4
	MVKL	L$main$ret17, B3
	MVKH	L$main$ret17, B3
	B	__cxa_allocate_exception
	NOP	5
L$main$ret17:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	112, A0
	MVKH	112, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	120, A4
	MVKH	120, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	112, A0
	MVKH	112, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STB	A4, *A6
	SUB	B15, 8, B15
	MVKL	112, A0
	MVKH	112, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZTIc, A4
	MVKH	_ZTIc, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret18, B3
	MVKH	L$main$ret18, B3
	B	__cxa_throw
	NOP	5
L$main$ret18:
	ADD	B15, 8, B15
L$main$tryend16:
	B	L$main$caught16
	NOP	5
L$main$pad16:
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	108, A0
	MVKH	108, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	232, B0
	MVKH	232, B0
	SUB	B15, B0, B15
L$main$$chain6:
	MVKL	108, A0
	MVKH	108, A0
	SUB	A15, A0, A4
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else19
	NOP	5
	SUB	B15, 8, B15
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$main$ret20, B3
	MVKH	L$main$ret20, B3
	B	__cxa_begin_catch
	NOP	5
L$main$ret20:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	116, A0
	MVKH	116, A0
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
	MVKL	100, A0
	MVKH	100, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	L$main$ret21, B3
	MVKH	L$main$ret21, B3
	B	__cxa_end_catch
	NOP	5
L$main$ret21:
	ADD	B15, 8, B15
	B	L$main$end19
	NOP	5
L$main$else19:
	MVKL	108, A0
	MVKH	108, A0
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else22
	NOP	5
	SUB	B15, 8, B15
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$main$ret23, B3
	MVKH	L$main$ret23, B3
	B	__cxa_begin_catch
	NOP	5
L$main$ret23:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	128, A0
	MVKH	128, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	128, A0
	MVKH	128, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	100, A0
	MVKH	100, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	L$main$ret24, B3
	MVKH	L$main$ret24, B3
	B	__cxa_end_catch
	NOP	5
L$main$ret24:
	ADD	B15, 8, B15
	B	L$main$end22
	NOP	5
L$main$else22:
L$main$cleanup25:
L$main$cleanupend25:
	SUB	B15, 8, B15
	MVKL	L$main$ret26, B3
	MVKH	L$main$ret26, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret26:
	ADD	B15, 8, B15
L$main$end22:
L$main$end19:
L$main$caught16:
	MVKL	0, A4
	MVKH	0, A4
	MVKL	1072693248, A5
	MVKH	1072693248, A5
	MVKL	-2147483648, A0
	MVKH	-2147483648, A0
	XOR	A5, A0, A5
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	144, A0
	MVKH	144, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STDW	A5:A4, *A6
L$main$try27:
	SUB	B15, 8, B15
	MVKL	8, A4
	MVKH	8, A4
	MVKL	L$main$ret28, B3
	MVKH	L$main$ret28, B3
	B	__cxa_allocate_exception
	NOP	5
L$main$ret28:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	156, A0
	MVKH	156, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	MVKL	1074003968, A5
	MVKH	1074003968, A5
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	156, A0
	MVKH	156, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STDW	A5:A4, *A6
	SUB	B15, 8, B15
	MVKL	156, A0
	MVKH	156, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZTId, A4
	MVKH	_ZTId, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret29, B3
	MVKH	L$main$ret29, B3
	B	__cxa_throw
	NOP	5
L$main$ret29:
	ADD	B15, 8, B15
L$main$tryend27:
	B	L$main$caught27
	NOP	5
L$main$pad27:
	MVKL	148, A0
	MVKH	148, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	152, A0
	MVKH	152, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	232, B0
	MVKH	232, B0
	SUB	B15, B0, B15
L$main$$chain10:
	MVKL	152, A0
	MVKH	152, A0
	SUB	A15, A0, A4
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else30
	NOP	5
	SUB	B15, 8, B15
	MVKL	148, A0
	MVKH	148, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$main$ret31, B3
	MVKH	L$main$ret31, B3
	B	__cxa_begin_catch
	NOP	5
L$main$ret31:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	160, A0
	MVKH	160, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	160, A0
	MVKH	160, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDDW	*A4, A5:A4
	NOP	4
	SUB	B15, 8, B15
	STDW	A5:A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MVKL	1074790400, A5
	MVKH	1074790400, A5
	MV	A4, A6
	MV	A5, A7
	LDDW	*B15, A5:A4
	NOP	4
	ADD	B15, 8, B15
	MPYDP	A5:A4, A7:A6, A5:A4
	NOP	9
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	144, A0
	MVKH	144, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STDW	A5:A4, *A6
	SUB	B15, 8, B15
	MVKL	L$main$ret32, B3
	MVKH	L$main$ret32, B3
	B	__cxa_end_catch
	NOP	5
L$main$ret32:
	ADD	B15, 8, B15
	B	L$main$end30
	NOP	5
L$main$else30:
L$main$cleanup33:
L$main$cleanupend33:
	SUB	B15, 8, B15
	MVKL	L$main$ret34, B3
	MVKH	L$main$ret34, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret34:
	ADD	B15, 8, B15
L$main$end30:
L$main$caught27:
	MVKL	1, A4
	MVKH	1, A4
	NEG	A4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	172, A0
	MVKH	172, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$main$try35:
	SUB	B15, 8, B15
	MVKL	4, A4
	MVKH	4, A4
	MVKL	L$main$ret36, B3
	MVKH	L$main$ret36, B3
	B	__cxa_allocate_exception
	NOP	5
L$main$ret36:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	184, A0
	MVKH	184, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	5, A4
	MVKH	5, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	184, A0
	MVKH	184, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	184, A0
	MVKH	184, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZTIi, A4
	MVKH	_ZTIi, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret37, B3
	MVKH	L$main$ret37, B3
	B	__cxa_throw
	NOP	5
L$main$ret37:
	ADD	B15, 8, B15
L$main$tryend35:
	B	L$main$caught35
	NOP	5
L$main$pad35:
	MVKL	176, A0
	MVKH	176, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	180, A0
	MVKH	180, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	232, B0
	MVKH	232, B0
	SUB	B15, B0, B15
L$main$$chain13:
	MVKL	180, A0
	MVKH	180, A0
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else38
	NOP	5
	SUB	B15, 8, B15
	MVKL	176, A0
	MVKH	176, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$main$ret39, B3
	MVKH	L$main$ret39, B3
	B	__cxa_begin_catch
	NOP	5
L$main$ret39:
	ADD	B15, 8, B15
	MVKL	99, A4
	MVKH	99, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	172, A0
	MVKH	172, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	L$main$ret40, B3
	MVKH	L$main$ret40, B3
	B	__cxa_end_catch
	NOP	5
L$main$ret40:
	ADD	B15, 8, B15
	B	L$main$end38
	NOP	5
L$main$else38:
L$main$cleanup41:
L$main$cleanupend41:
	SUB	B15, 8, B15
	MVKL	L$main$ret42, B3
	MVKH	L$main$ret42, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret42:
	ADD	B15, 8, B15
L$main$end38:
L$main$caught35:
	MVKL	1, A4
	MVKH	1, A4
	NEG	A4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	196, A0
	MVKH	196, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$main$try43:
	SUB	B15, 8, B15
	MVKL	4, A4
	MVKH	4, A4
	MVKL	L$main$ret44, B3
	MVKH	L$main$ret44, B3
	B	__cxa_allocate_exception
	NOP	5
L$main$ret44:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	208, A0
	MVKH	208, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	21, A4
	MVKH	21, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	208, A0
	MVKH	208, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	208, A0
	MVKH	208, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZTIi, A4
	MVKH	_ZTIi, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret45, B3
	MVKH	L$main$ret45, B3
	B	__cxa_throw
	NOP	5
L$main$ret45:
	ADD	B15, 8, B15
L$main$tryend43:
	B	L$main$caught43
	NOP	5
L$main$pad43:
	MVKL	200, A0
	MVKH	200, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	204, A0
	MVKH	204, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	232, B0
	MVKH	232, B0
	SUB	B15, B0, B15
L$main$$chain16:
	MVKL	204, A0
	MVKH	204, A0
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$main$else46
	NOP	5
	SUB	B15, 8, B15
	MVKL	200, A0
	MVKH	200, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$main$ret47, B3
	MVKH	L$main$ret47, B3
	B	__cxa_begin_catch
	NOP	5
L$main$ret47:
	ADD	B15, 8, B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	212, A0
	MVKH	212, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	212, A0
	MVKH	212, A0
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
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	212, A0
	MVKH	212, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	212, A0
	MVKH	212, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	196, A0
	MVKH	196, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	L$main$ret48, B3
	MVKH	L$main$ret48, B3
	B	__cxa_end_catch
	NOP	5
L$main$ret48:
	ADD	B15, 8, B15
	B	L$main$end46
	NOP	5
L$main$else46:
L$main$cleanup49:
L$main$cleanupend49:
	SUB	B15, 8, B15
	MVKL	L$main$ret50, B3
	MVKH	L$main$ret50, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret50:
	ADD	B15, 8, B15
L$main$end46:
L$main$caught43:
	MVKL	40, B0
	MVKH	40, B0
	SUB	B15, B0, B15
	MVKL	L$str$0, A4
	MVKH	L$str$0, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	72, A0
	MVKH	72, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 12, B0
	STW	A4, *B0
	MVKL	100, A0
	MVKH	100, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	B15, 16, B0
	STW	A4, *B0
	MVKL	144, A0
	MVKH	144, A0
	SUB	A15, A0, A4
	LDDW	*A4, A5:A4
	NOP	4
	ADD	B15, 24, B0
	STDW	A5:A4, *B0
	MVKL	172, A0
	MVKH	172, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	32, B0
	MVKH	32, B0
	ADD	B15, B0, B0
	STW	A4, *B0
	MVKL	196, A0
	MVKH	196, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	36, B0
	MVKH	36, B0
	ADD	B15, B0, B0
	STW	A4, *B0
	MVKL	L$main$ret51, B3
	MVKH	L$main$ret51, B3
	B	printf
	NOP	5
L$main$ret51:
	MVKL	40, B0
	MVKH	40, B0
	ADD	B15, B0, B15
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
L$main$pad0$s1:
	MVK	1, B4
	B	L$main$pad0
	NOP	5
L$main$pad8$s1:
	MVK	1, B4
	B	L$main$pad8
	NOP	5
L$main$pad16$s2:
	MVK	2, B4
	B	L$main$pad16
	NOP	5
L$main$pad16$s3:
	MVK	3, B4
	B	L$main$pad16
	NOP	5
L$main$pad27$s2:
	MVK	2, B4
	B	L$main$pad27
	NOP	5
L$main$pad35$s1:
	MVK	1, B4
	B	L$main$pad35
	NOP	5
L$main$pad43$s1:
	MVK	1, B4
	B	L$main$pad43
	NOP	5
L$main$fnend:
	.sect	".c6xabi.extab:main"
	.align	4
__c6xabi_extab$main:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$main$cleanupend6) - $EXTAB_SCOPE(L$main$cleanup6) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup6) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend0) - $EXTAB_SCOPE(L$main$try0) + 1
	.half	$EXTAB_SCOPE(L$main$try0) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad0$s1)
	.ulong	$EXTAB_RTTI(_ZTIi)
	.half	$EXTAB_SCOPE(L$main$cleanupend14) - $EXTAB_SCOPE(L$main$cleanup14) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup14) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend8) - $EXTAB_SCOPE(L$main$try8) + 1
	.half	$EXTAB_SCOPE(L$main$try8) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad8$s1)
	.ulong	$EXTAB_RTTI(_ZTIi)
	.half	$EXTAB_SCOPE(L$main$cleanupend25) - $EXTAB_SCOPE(L$main$cleanup25) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup25) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend16) - $EXTAB_SCOPE(L$main$try16) + 1
	.half	$EXTAB_SCOPE(L$main$try16) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad16$s2)
	.ulong	$EXTAB_RTTI(_ZTId)
	.half	$EXTAB_SCOPE(L$main$tryend16) - $EXTAB_SCOPE(L$main$try16) + 1
	.half	$EXTAB_SCOPE(L$main$try16) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad16$s3)
	.ulong	$EXTAB_RTTI(_ZTIc)
	.half	$EXTAB_SCOPE(L$main$cleanupend33) - $EXTAB_SCOPE(L$main$cleanup33) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup33) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend27) - $EXTAB_SCOPE(L$main$try27) + 1
	.half	$EXTAB_SCOPE(L$main$try27) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad27$s2)
	.ulong	$EXTAB_RTTI(_ZTId)
	.half	$EXTAB_SCOPE(L$main$cleanupend41) - $EXTAB_SCOPE(L$main$cleanup41) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup41) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend35) - $EXTAB_SCOPE(L$main$try35) + 1
	.half	$EXTAB_SCOPE(L$main$try35) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad35$s1)
	.ulong	$EXTAB_RTTI(_ZTIi)
	.half	$EXTAB_SCOPE(L$main$cleanupend49) - $EXTAB_SCOPE(L$main$cleanup49) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup49) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend43) - $EXTAB_SCOPE(L$main$try43) + 1
	.half	$EXTAB_SCOPE(L$main$try43) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad43$s1)
	.ulong	$EXTAB_RTTI(_ZTIi)
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
	.ref	_ZTIc
	.ref	_ZTId
	.ref	_ZTIi
	.ref	__cxa_allocate_exception
	.ref	__cxa_begin_catch
	.ref	__cxa_end_catch
	.ref	__cxa_end_cleanup
	.ref	__cxa_throw
	.ref	printf
