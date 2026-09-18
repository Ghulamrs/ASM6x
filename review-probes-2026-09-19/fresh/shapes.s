	.sect	".const"
L$str$0:
	.byte	98, 121, 101, 32, 37, 100, 10, 0
L$str$1:
	.byte	116, 111, 111, 32, 98, 105, 103, 0
L$str$2:
	.byte	99, 97, 117, 103, 104, 116, 32, 37, 115, 10, 0
L$str$3:
	.byte	37, 100, 32, 37, 100, 32, 37, 100, 10, 0
	.weak	_ZTS4Base
	.sect	".const"
_ZTS4Base:
	.byte	52
	.byte	66
	.byte	97
	.byte	115
	.byte	101
	.byte	0
	.weak	_ZTS7Derived
	.sect	".const"
_ZTS7Derived:
	.byte	55
	.byte	68
	.byte	101
	.byte	114
	.byte	105
	.byte	118
	.byte	101
	.byte	100
	.byte	0
	.weak	_ZTSN3std6stringE
	.sect	".const"
_ZTSN3std6stringE:
	.byte	78
	.byte	51
	.byte	115
	.byte	116
	.byte	100
	.byte	54
	.byte	115
	.byte	116
	.byte	114
	.byte	105
	.byte	110
	.byte	103
	.byte	69
	.byte	0
	.weak	_ZTI4Base
	.sect	".const"
	.align	4
_ZTI4Base:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS4Base
	.weak	_ZTV4Base
	.sect	".const"
	.align	4
_ZTV4Base:
	.word	0
	.word	_ZTI4Base
	.word	_ZN4BaseD1Ev
	.word	_ZN4BaseD0Ev
	.word	_ZN4Base1fEi
	.weak	_ZTI7Derived
	.sect	".const"
	.align	4
_ZTI7Derived:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS7Derived
	.word	_ZTI4Base
	.weak	_ZTV7Derived
	.sect	".const"
	.align	4
_ZTV7Derived:
	.word	0
	.word	_ZTI7Derived
	.word	_ZN7DerivedD1Ev
	.word	_ZN7DerivedD0Ev
	.word	_ZN7Derived1fEi
	.weak	_ZTIN3std6stringE
	.sect	".const"
	.align	4
_ZTIN3std6stringE:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTSN3std6stringE
	.bss	_ZL14global_counter, 4, 4
	.text
	.weak	_ZNSt6stringC1Ev
_ZNSt6stringC1Ev:
	.weak	_ZNSt6stringC2Ev
_ZNSt6stringC2Ev:
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
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
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
	MVKL	L$_ZNSt6stringC1Ev$ret0, B3
	MVKH	L$_ZNSt6stringC1Ev$ret0, B3
	B	_ZNSt6string4initEPKcj
	NOP	5
L$_ZNSt6stringC1Ev$ret0:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZNSt6stringC1Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringC1Ev)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringC1EPKc
_ZNSt6stringC1EPKc:
	.weak	_ZNSt6stringC2EPKc
_ZNSt6stringC2EPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6stringC1EPKc$else0
	NOP	5
	MVKL	0, A4
	MVKH	0, A4
	B	L$_ZNSt6stringC1EPKc$end0
	NOP	5
L$_ZNSt6stringC1EPKc$else0:
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6stringC1EPKc$ret1, B3
	MVKH	L$_ZNSt6stringC1EPKc$ret1, B3
	B	strlen
	NOP	5
L$_ZNSt6stringC1EPKc$ret1:
	ADD	B15, 8, B15
L$_ZNSt6stringC1EPKc$end0:
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringC1EPKc$ret2, B3
	MVKH	L$_ZNSt6stringC1EPKc$ret2, B3
	B	_ZNSt6string4initEPKcj
	NOP	5
L$_ZNSt6stringC1EPKc$ret2:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZNSt6stringC1EPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringC1EPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringC1EPKcj
_ZNSt6stringC1EPKcj:
	.weak	_ZNSt6stringC2EPKcj
_ZNSt6stringC2EPKcj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringC1EPKcj$ret0, B3
	MVKH	L$_ZNSt6stringC1EPKcj$ret0, B3
	B	_ZNSt6string4initEPKcj
	NOP	5
L$_ZNSt6stringC1EPKcj$ret0:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZNSt6stringC1EPKcj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringC1EPKcj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringC1ERKS_
_ZNSt6stringC1ERKS_:
	.weak	_ZNSt6stringC2ERKS_
_ZNSt6stringC2ERKS_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
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
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringC1ERKS_$ret0, B3
	MVKH	L$_ZNSt6stringC1ERKS_$ret0, B3
	B	_ZNSt6string4initEPKcj
	NOP	5
L$_ZNSt6stringC1ERKS_$ret0:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZNSt6stringC1ERKS_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringC1ERKS_)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringC1Ejc
_ZNSt6stringC1Ejc:
	.weak	_ZNSt6stringC2Ejc
_ZNSt6stringC2Ejc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringC1Ejc$ret0, B3
	MVKH	L$_ZNSt6stringC1Ejc$ret0, B3
	B	_ZNSt6string14reserveExactlyEj
	NOP	5
L$_ZNSt6stringC1Ejc$ret0:
	ADD	B15, 8, B15
	MVKL	0, A4
	MVKH	0, A4
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
L$_ZNSt6stringC1Ejc$begin1:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6stringC1Ejc$end1
	NOP	5
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	STB	A4, *A6
L$_ZNSt6stringC1Ejc$step1:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNSt6stringC1Ejc$begin1
	NOP	5
L$_ZNSt6stringC1Ejc$end1:
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
	ZERO	A4
L$return$_ZNSt6stringC1Ejc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringC1Ejc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringD1Ev
_ZNSt6stringD1Ev:
	.weak	_ZNSt6stringD2Ev
_ZNSt6stringD2Ev:
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
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6stringD1Ev$ret0, B3
	MVKH	L$_ZNSt6stringD1Ev$ret0, B3
	B	free
	NOP	5
L$_ZNSt6stringD1Ev$ret0:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZNSt6stringD1Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringD1Ev)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringaSERKS_
_ZNSt6stringaSERKS_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6stringaSERKS_$end0
	NOP	5
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
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
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringaSERKS_$ret1, B3
	MVKH	L$_ZNSt6stringaSERKS_$ret1, B3
	B	_ZNSt6string10assignFromEPKcj
	NOP	5
L$_ZNSt6stringaSERKS_$ret1:
	ADD	B15, 8, B15
L$_ZNSt6stringaSERKS_$end0:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6stringaSERKS_
	NOP	5
	ZERO	A4
L$return$_ZNSt6stringaSERKS_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringaSERKS_)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringaSEPKc
_ZNSt6stringaSEPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6stringaSEPKc$else0
	NOP	5
	MVKL	0, A4
	MVKH	0, A4
	B	L$_ZNSt6stringaSEPKc$end0
	NOP	5
L$_ZNSt6stringaSEPKc$else0:
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6stringaSEPKc$ret1, B3
	MVKH	L$_ZNSt6stringaSEPKc$ret1, B3
	B	strlen
	NOP	5
L$_ZNSt6stringaSEPKc$ret1:
	ADD	B15, 8, B15
L$_ZNSt6stringaSEPKc$end0:
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringaSEPKc$ret2, B3
	MVKH	L$_ZNSt6stringaSEPKc$ret2, B3
	B	_ZNSt6string10assignFromEPKcj
	NOP	5
L$_ZNSt6stringaSEPKc$ret2:
	ADD	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6stringaSEPKc
	NOP	5
	ZERO	A4
L$return$_ZNSt6stringaSEPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringaSEPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringaSEc
_ZNSt6stringaSEc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringaSEc$ret0, B3
	MVKH	L$_ZNSt6stringaSEc$ret0, B3
	B	_ZNSt6string10assignFromEPKcj
	NOP	5
L$_ZNSt6stringaSEc$ret0:
	ADD	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6stringaSEc
	NOP	5
	ZERO	A4
L$return$_ZNSt6stringaSEc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringaSEc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringpLERKS_
_ZNSt6stringpLERKS_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
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
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringpLERKS_$ret0, B3
	MVKH	L$_ZNSt6stringpLERKS_$ret0, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6stringpLERKS_$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6stringpLERKS_
	NOP	5
	ZERO	A4
L$return$_ZNSt6stringpLERKS_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringpLERKS_)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringpLEPKc
_ZNSt6stringpLEPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6stringpLEPKc$else0
	NOP	5
	MVKL	0, A4
	MVKH	0, A4
	B	L$_ZNSt6stringpLEPKc$end0
	NOP	5
L$_ZNSt6stringpLEPKc$else0:
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6stringpLEPKc$ret1, B3
	MVKH	L$_ZNSt6stringpLEPKc$ret1, B3
	B	strlen
	NOP	5
L$_ZNSt6stringpLEPKc$ret1:
	ADD	B15, 8, B15
L$_ZNSt6stringpLEPKc$end0:
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringpLEPKc$ret2, B3
	MVKH	L$_ZNSt6stringpLEPKc$ret2, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6stringpLEPKc$ret2:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6stringpLEPKc
	NOP	5
	ZERO	A4
L$return$_ZNSt6stringpLEPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringpLEPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringpLEc
_ZNSt6stringpLEc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6stringpLEc$ret0, B3
	MVKH	L$_ZNSt6stringpLEc$ret0, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6stringpLEc$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6stringpLEc
	NOP	5
	ZERO	A4
L$return$_ZNSt6stringpLEc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringpLEc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6stringixEj
_ZNSt6stringixEj:
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
	MVKL	48, A0
	MVKH	48, A0
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	B	L$return$_ZNSt6stringixEj
	NOP	5
	ZERO	A4
L$return$_ZNSt6stringixEj:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6stringixEj)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6stringixEj
_ZNKSt6stringixEj:
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
	MVKL	48, A0
	MVKH	48, A0
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	B	L$return$_ZNKSt6stringixEj
	NOP	5
	ZERO	A4
L$return$_ZNKSt6stringixEj:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6stringixEj)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string4sizeEv
_ZNKSt6string4sizeEv:
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
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNKSt6string4sizeEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4sizeEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4sizeEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string6lengthEv
_ZNKSt6string6lengthEv:
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
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNKSt6string6lengthEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string6lengthEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string6lengthEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string5emptyEv
_ZNKSt6string5emptyEv:
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
	ADD	A4, 4, A4
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
	CMPEQ	A4, A6, A4
	B	L$return$_ZNKSt6string5emptyEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string5emptyEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string5emptyEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string5c_strEv
_ZNKSt6string5c_strEv:
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
	B	L$return$_ZNKSt6string5c_strEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string5c_strEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string5c_strEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string4dataEv
_ZNKSt6string4dataEv:
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
	B	L$return$_ZNKSt6string4dataEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4dataEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4dataEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string5clearEv
_ZNSt6string5clearEv:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	STB	A4, *A6
	ZERO	A4
L$return$_ZNSt6string5clearEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string5clearEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string9push_backEc
_ZNSt6string9push_backEc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string9push_backEc$ret0, B3
	MVKH	L$_ZNSt6string9push_backEc$ret0, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6string9push_backEc$ret0:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZNSt6string9push_backEc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string9push_backEc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string8pop_backEv
_ZNSt6string8pop_backEv:
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
	ADD	A4, 4, A4
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
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string8pop_backEv$end0
	NOP	5
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	SUB	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
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
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
L$_ZNSt6string8pop_backEv$end0:
	ZERO	A4
L$return$_ZNSt6string8pop_backEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string8pop_backEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string4backEv
_ZNSt6string4backEv:
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
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	SUB	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	B	L$return$_ZNSt6string4backEv
	NOP	5
	ZERO	A4
L$return$_ZNSt6string4backEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string4backEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string4backEv
_ZNKSt6string4backEv:
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
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	SUB	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	B	L$return$_ZNKSt6string4backEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4backEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4backEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string5frontEv
_ZNSt6string5frontEv:
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
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	B	L$return$_ZNSt6string5frontEv
	NOP	5
	ZERO	A4
L$return$_ZNSt6string5frontEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string5frontEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string5frontEv
_ZNKSt6string5frontEv:
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
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	B	L$return$_ZNKSt6string5frontEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string5frontEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string5frontEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string5beginEv
_ZNSt6string5beginEv:
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
	B	L$return$_ZNSt6string5beginEv
	NOP	5
	ZERO	A4
L$return$_ZNSt6string5beginEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string5beginEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string3endEv
_ZNSt6string3endEv:
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
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	B	L$return$_ZNSt6string3endEv
	NOP	5
	ZERO	A4
L$return$_ZNSt6string3endEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string3endEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string5beginEv
_ZNKSt6string5beginEv:
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
	B	L$return$_ZNKSt6string5beginEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string5beginEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string5beginEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string3endEv
_ZNKSt6string3endEv:
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
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	B	L$return$_ZNKSt6string3endEv
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string3endEv:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string3endEv)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string6appendERKS_
_ZNSt6string6appendERKS_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
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
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6appendERKS_$ret0, B3
	MVKH	L$_ZNSt6string6appendERKS_$ret0, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6string6appendERKS_$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6string6appendERKS_
	NOP	5
	ZERO	A4
L$return$_ZNSt6string6appendERKS_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6appendERKS_)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string6appendEPKc
_ZNSt6string6appendEPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6appendEPKc$else0
	NOP	5
	MVKL	0, A4
	MVKH	0, A4
	B	L$_ZNSt6string6appendEPKc$end0
	NOP	5
L$_ZNSt6string6appendEPKc$else0:
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6string6appendEPKc$ret1, B3
	MVKH	L$_ZNSt6string6appendEPKc$ret1, B3
	B	strlen
	NOP	5
L$_ZNSt6string6appendEPKc$ret1:
	ADD	B15, 8, B15
L$_ZNSt6string6appendEPKc$end0:
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6appendEPKc$ret2, B3
	MVKH	L$_ZNSt6string6appendEPKc$ret2, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6string6appendEPKc$ret2:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6string6appendEPKc
	NOP	5
	ZERO	A4
L$return$_ZNSt6string6appendEPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6appendEPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string6appendEPKcj
_ZNSt6string6appendEPKcj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6appendEPKcj$ret0, B3
	MVKH	L$_ZNSt6string6appendEPKcj$ret0, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6string6appendEPKcj$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6string6appendEPKcj
	NOP	5
	ZERO	A4
L$return$_ZNSt6string6appendEPKcj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6appendEPKcj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string6appendEjc
_ZNSt6string6appendEjc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	MVKL	0, A4
	MVKH	0, A4
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
L$_ZNSt6string6appendEjc$begin0:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6appendEjc$end0
	NOP	5
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6appendEjc$ret1, B3
	MVKH	L$_ZNSt6string6appendEjc$ret1, B3
	B	_ZNSt6string11appendBytesEPKcj
	NOP	5
L$_ZNSt6string6appendEjc$ret1:
	ADD	B15, 8, B15
L$_ZNSt6string6appendEjc$step0:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNSt6string6appendEjc$begin0
	NOP	5
L$_ZNSt6string6appendEjc$end0:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6string6appendEjc
	NOP	5
	ZERO	A4
L$return$_ZNSt6string6appendEjc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6appendEjc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string7reserveEj
_ZNSt6string7reserveEj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	ADD	A4, 8, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[A1]	B	L$_ZNSt6string7reserveEj$shortcut1
	NOP	5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
L$_ZNSt6string7reserveEj$shortcut1:
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string7reserveEj$end0
	NOP	5
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string7reserveEj$ret2, B3
	MVKH	L$_ZNSt6string7reserveEj$ret2, B3
	B	_ZNSt6string14reserveExactlyEj
	NOP	5
L$_ZNSt6string7reserveEj$ret2:
	ADD	B15, 8, B15
L$_ZNSt6string7reserveEj$end0:
	ZERO	A4
L$return$_ZNSt6string7reserveEj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string7reserveEj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string6resizeEjc
_ZNSt6string6resizeEjc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6resizeEjc$end0
	NOP	5
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6resizeEjc$ret1, B3
	MVKH	L$_ZNSt6string6resizeEjc$ret1, B3
	B	_ZNSt6string7reserveEj
	NOP	5
L$_ZNSt6string6resizeEjc$ret1:
	ADD	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
L$_ZNSt6string6resizeEjc$begin2:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6resizeEjc$end2
	NOP	5
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	STB	A4, *A6
L$_ZNSt6string6resizeEjc$step2:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNSt6string6resizeEjc$begin2
	NOP	5
L$_ZNSt6string6resizeEjc$end2:
L$_ZNSt6string6resizeEjc$end0:
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
	ZERO	A4
L$return$_ZNSt6string6resizeEjc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6resizeEjc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string6resizeEj
_ZNSt6string6resizeEj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6resizeEj$ret0, B3
	MVKH	L$_ZNSt6string6resizeEj$ret0, B3
	B	_ZNSt6string6resizeEjc
	NOP	5
L$_ZNSt6string6resizeEj$ret0:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZNSt6string6resizeEj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6resizeEj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string6substrEjj
_ZNKSt6string6substrEjj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	0, A4
	MVKH	0, A4
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
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string6substrEjj$end0
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
L$_ZNKSt6string6substrEjj$end0:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
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
	SUB	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string6substrEjj$else1
	NOP	5
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	B	L$_ZNKSt6string6substrEjj$end1
	NOP	5
L$_ZNKSt6string6substrEjj$else1:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
L$_ZNKSt6string6substrEjj$end1:
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string6substrEjj$ret2, B3
	MVKH	L$_ZNKSt6string6substrEjj$ret2, B3
	B	_ZNSt6stringC1EPKcj
	NOP	5
L$_ZNKSt6string6substrEjj$ret2:
	ADD	B15, 8, B15
	MVKL	1, A4
	MVKH	1, A4
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
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZNKSt6string6substrEjj$noresult3:
	MV	A6, A4
	B	L$return$_ZNKSt6string6substrEjj
	NOP	5
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZNKSt6string6substrEjj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string6substrEjj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string6substrEj
_ZNKSt6string6substrEj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	-1, A4
	MVKH	-1, A4
	MV	A4, B6
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZNKSt6string6substrEj$ret0, B3
	MVKH	L$_ZNKSt6string6substrEj$ret0, B3
	B	_ZNKSt6string6substrEjj
	NOP	5
L$_ZNKSt6string6substrEj$ret0:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZNKSt6string6substrEj$noresult1:
	MV	A6, A4
	B	L$return$_ZNKSt6string6substrEj
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZNKSt6string6substrEj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string6substrEj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string6substrEv
_ZNKSt6string6substrEv:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	-1, A4
	MVKH	-1, A4
	MV	A4, B6
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZNKSt6string6substrEv$ret0, B3
	MVKH	L$_ZNKSt6string6substrEv$ret0, B3
	B	_ZNKSt6string6substrEjj
	NOP	5
L$_ZNKSt6string6substrEv$ret0:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZNKSt6string6substrEv$noresult1:
	MV	A6, A4
	B	L$return$_ZNKSt6string6substrEv
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZNKSt6string6substrEv:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string6substrEv)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string4findEcj
_ZNKSt6string4findEcj:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	48, A0
	MVKH	48, A0
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
L$_ZNKSt6string4findEcj$begin0:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string4findEcj$end0
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string4findEcj$end1
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNKSt6string4findEcj
	NOP	5
L$_ZNKSt6string4findEcj$end1:
L$_ZNKSt6string4findEcj$step0:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNKSt6string4findEcj$begin0
	NOP	5
L$_ZNKSt6string4findEcj$end0:
	MVKL	-1, A4
	MVKH	-1, A4
	B	L$return$_ZNKSt6string4findEcj
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4findEcj:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4findEcj)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string4findEc
_ZNKSt6string4findEc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
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
	MVKL	L$_ZNKSt6string4findEc$ret0, B3
	MVKH	L$_ZNKSt6string4findEc$ret0, B3
	B	_ZNKSt6string4findEcj
	NOP	5
L$_ZNKSt6string4findEc$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string4findEc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4findEc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4findEc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string4findEPKcj
_ZNKSt6string4findEPKcj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
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
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string4findEPKcj$else0
	NOP	5
	MVKL	0, A4
	MVKH	0, A4
	B	L$_ZNKSt6string4findEPKcj$end0
	NOP	5
L$_ZNKSt6string4findEPKcj$else0:
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNKSt6string4findEPKcj$ret1, B3
	MVKH	L$_ZNKSt6string4findEPKcj$ret1, B3
	B	strlen
	NOP	5
L$_ZNKSt6string4findEPKcj$ret1:
	ADD	B15, 8, B15
L$_ZNKSt6string4findEPKcj$end0:
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
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string4findEPKcj$end2
	NOP	5
	MVKL	-1, A4
	MVKH	-1, A4
	B	L$return$_ZNKSt6string4findEPKcj
	NOP	5
L$_ZNKSt6string4findEPKcj$end2:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
L$_ZNKSt6string4findEPKcj$begin3:
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string4findEPKcj$end3
	NOP	5
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	60, A0
	MVKH	60, A0
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string4findEPKcj$ret5, B3
	MVKH	L$_ZNKSt6string4findEPKcj$ret5, B3
	B	memcmp
	NOP	5
L$_ZNKSt6string4findEPKcj$ret5:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string4findEPKcj$end4
	NOP	5
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNKSt6string4findEPKcj
	NOP	5
L$_ZNKSt6string4findEPKcj$end4:
L$_ZNKSt6string4findEPKcj$step3:
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNKSt6string4findEPKcj$begin3
	NOP	5
L$_ZNKSt6string4findEPKcj$end3:
	MVKL	-1, A4
	MVKH	-1, A4
	B	L$return$_ZNKSt6string4findEPKcj
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4findEPKcj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4findEPKcj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string4findEPKc
_ZNKSt6string4findEPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string4findEPKc$ret0, B3
	MVKH	L$_ZNKSt6string4findEPKc$ret0, B3
	B	_ZNKSt6string4findEPKcj
	NOP	5
L$_ZNKSt6string4findEPKc$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string4findEPKc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4findEPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4findEPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string4findERKS_j
_ZNKSt6string4findERKS_j:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string4findERKS_j$ret0, B3
	MVKH	L$_ZNKSt6string4findERKS_j$ret0, B3
	B	_ZNKSt6string4findEPKcj
	NOP	5
L$_ZNKSt6string4findERKS_j$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string4findERKS_j
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4findERKS_j:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4findERKS_j)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string4findERKS_
_ZNKSt6string4findERKS_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
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
	MVKL	L$_ZNKSt6string4findERKS_$ret0, B3
	MVKH	L$_ZNKSt6string4findERKS_$ret0, B3
	B	_ZNKSt6string4findEPKcj
	NOP	5
L$_ZNKSt6string4findERKS_$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string4findERKS_
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string4findERKS_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string4findERKS_)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string5rfindEc
_ZNKSt6string5rfindEc:
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
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$_ZNKSt6string5rfindEc$begin0:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	SUB	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string5rfindEc$end0
	NOP	5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string5rfindEc$end1
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNKSt6string5rfindEc
	NOP	5
L$_ZNKSt6string5rfindEc$end1:
L$_ZNKSt6string5rfindEc$step0:
	B	L$_ZNKSt6string5rfindEc$begin0
	NOP	5
L$_ZNKSt6string5rfindEc$end0:
	MVKL	-1, A4
	MVKH	-1, A4
	B	L$return$_ZNKSt6string5rfindEc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string5rfindEc:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string5rfindEc)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNKSt6string13find_first_ofEPKc
_ZNKSt6string13find_first_ofEPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$_ZNKSt6string13find_first_ofEPKc$begin0:
	MVKL	52, A0
	MVKH	52, A0
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
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string13find_first_ofEPKc$end0
	NOP	5
	SUB	B15, 8, B15
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
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string13find_first_ofEPKc$ret3, B3
	MVKH	L$_ZNKSt6string13find_first_ofEPKc$ret3, B3
	B	strchr
	NOP	5
L$_ZNKSt6string13find_first_ofEPKc$ret3:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string13find_first_ofEPKc$shortcut2
	NOP	5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
L$_ZNKSt6string13find_first_ofEPKc$shortcut2:
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string13find_first_ofEPKc$end1
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNKSt6string13find_first_ofEPKc
	NOP	5
L$_ZNKSt6string13find_first_ofEPKc$end1:
L$_ZNKSt6string13find_first_ofEPKc$step0:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNKSt6string13find_first_ofEPKc$begin0
	NOP	5
L$_ZNKSt6string13find_first_ofEPKc$end0:
	MVKL	-1, A4
	MVKH	-1, A4
	B	L$return$_ZNKSt6string13find_first_ofEPKc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string13find_first_ofEPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string13find_first_ofEPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string12find_last_ofEPKc
_ZNKSt6string12find_last_ofEPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$_ZNKSt6string12find_last_ofEPKc$begin0:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	SUB	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string12find_last_ofEPKc$end0
	NOP	5
	SUB	B15, 8, B15
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
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string12find_last_ofEPKc$ret3, B3
	MVKH	L$_ZNKSt6string12find_last_ofEPKc$ret3, B3
	B	strchr
	NOP	5
L$_ZNKSt6string12find_last_ofEPKc$ret3:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string12find_last_ofEPKc$shortcut2
	NOP	5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
L$_ZNKSt6string12find_last_ofEPKc$shortcut2:
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNKSt6string12find_last_ofEPKc$end1
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNKSt6string12find_last_ofEPKc
	NOP	5
L$_ZNKSt6string12find_last_ofEPKc$end1:
L$_ZNKSt6string12find_last_ofEPKc$step0:
	B	L$_ZNKSt6string12find_last_ofEPKc$begin0
	NOP	5
L$_ZNKSt6string12find_last_ofEPKc$end0:
	MVKL	-1, A4
	MVKH	-1, A4
	B	L$return$_ZNKSt6string12find_last_ofEPKc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string12find_last_ofEPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string12find_last_ofEPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string13find_first_ofEc
_ZNKSt6string13find_first_ofEc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
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
	MVKL	L$_ZNKSt6string13find_first_ofEc$ret0, B3
	MVKH	L$_ZNKSt6string13find_first_ofEc$ret0, B3
	B	_ZNKSt6string4findEcj
	NOP	5
L$_ZNKSt6string13find_first_ofEc$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string13find_first_ofEc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string13find_first_ofEc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string13find_first_ofEc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string12find_last_ofEc
_ZNKSt6string12find_last_ofEc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string12find_last_ofEc$ret0, B3
	MVKH	L$_ZNKSt6string12find_last_ofEc$ret0, B3
	B	_ZNKSt6string5rfindEc
	NOP	5
L$_ZNKSt6string12find_last_ofEc$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string12find_last_ofEc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string12find_last_ofEc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string12find_last_ofEc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string6insertEjPKc
_ZNSt6string6insertEjPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
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
	CMPEQ	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6insertEjPKc$else0
	NOP	5
	MVKL	0, A4
	MVKH	0, A4
	B	L$_ZNSt6string6insertEjPKc$end0
	NOP	5
L$_ZNSt6string6insertEjPKc$else0:
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6string6insertEjPKc$ret1, B3
	MVKH	L$_ZNSt6string6insertEjPKc$ret1, B3
	B	strlen
	NOP	5
L$_ZNSt6string6insertEjPKc$ret1:
	ADD	B15, 8, B15
L$_ZNSt6string6insertEjPKc$end0:
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
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6insertEjPKc$end2
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
L$_ZNSt6string6insertEjPKc$end2:
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
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
	ADD	A4, A6, A4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6insertEjPKc$ret3, B3
	MVKH	L$_ZNSt6string6insertEjPKc$ret3, B3
	B	_ZNSt6string7reserveEj
	NOP	5
L$_ZNSt6string6insertEjPKc$ret3:
	ADD	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
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
L$_ZNSt6string6insertEjPKc$begin4:
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	SUB	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
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
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6insertEjPKc$end4
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	60, A0
	MVKH	60, A0
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	STB	A4, *A6
L$_ZNSt6string6insertEjPKc$step4:
	B	L$_ZNSt6string6insertEjPKc$begin4
	NOP	5
L$_ZNSt6string6insertEjPKc$end4:
	MVKL	0, A4
	MVKH	0, A4
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
L$_ZNSt6string6insertEjPKc$begin5:
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string6insertEjPKc$end5
	NOP	5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	64, A0
	MVKH	64, A0
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
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
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	STB	A4, *A6
L$_ZNSt6string6insertEjPKc$step5:
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNSt6string6insertEjPKc$begin5
	NOP	5
L$_ZNSt6string6insertEjPKc$end5:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
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
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6string6insertEjPKc
	NOP	5
	ZERO	A4
L$return$_ZNSt6string6insertEjPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6insertEjPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string6insertEjRKS_
_ZNSt6string6insertEjRKS_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6string6insertEjRKS_$ret0, B3
	MVKH	L$_ZNSt6string6insertEjRKS_$ret0, B3
	B	_ZNKSt6string5c_strEv
	NOP	5
L$_ZNSt6string6insertEjRKS_$ret0:
	ADD	B15, 8, B15
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string6insertEjRKS_$ret1, B3
	MVKH	L$_ZNSt6string6insertEjRKS_$ret1, B3
	B	_ZNSt6string6insertEjPKc
	NOP	5
L$_ZNSt6string6insertEjRKS_$ret1:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6string6insertEjRKS_
	NOP	5
	ZERO	A4
L$return$_ZNSt6string6insertEjRKS_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string6insertEjRKS_)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string5eraseEjj
_ZNSt6string5eraseEjj:
	STW	A15, *B15
	MV	B15, A15
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
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
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string5eraseEjj$end0
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6string5eraseEjj
	NOP	5
L$_ZNSt6string5eraseEjj$end0:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
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
	SUB	A4, A6, A4
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
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string5eraseEjj$end1
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
L$_ZNSt6string5eraseEjj$end1:
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
L$_ZNSt6string5eraseEjj$begin2:
	MVKL	60, A0
	MVKH	60, A0
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
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string5eraseEjj$end2
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	60, A0
	MVKH	60, A0
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
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
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
	LDB	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	60, A0
	MVKH	60, A0
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
	STB	A4, *A6
L$_ZNSt6string5eraseEjj$step2:
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	B	L$_ZNSt6string5eraseEjj$begin2
	NOP	5
L$_ZNSt6string5eraseEjj$end2:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	SUB	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6string5eraseEjj
	NOP	5
	ZERO	A4
L$return$_ZNSt6string5eraseEjj:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string5eraseEjj)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZNSt6string5eraseEj
_ZNSt6string5eraseEj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string5eraseEj$ret0, B3
	MVKH	L$_ZNSt6string5eraseEj$ret0, B3
	B	_ZNSt6string5eraseEjj
	NOP	5
L$_ZNSt6string5eraseEj$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNSt6string5eraseEj
	NOP	5
	ZERO	A4
L$return$_ZNSt6string5eraseEj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string5eraseEj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string7compareERKS_
_ZNKSt6string7compareERKS_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
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
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string7compareERKS_$ret0, B3
	MVKH	L$_ZNKSt6string7compareERKS_$ret0, B3
	B	strcmp
	NOP	5
L$_ZNKSt6string7compareERKS_$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string7compareERKS_
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string7compareERKS_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string7compareERKS_)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNKSt6string7compareEPKc
_ZNKSt6string7compareEPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
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
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNKSt6string7compareEPKc$ret0, B3
	MVKH	L$_ZNKSt6string7compareEPKc$ret0, B3
	B	strcmp
	NOP	5
L$_ZNKSt6string7compareEPKc$ret0:
	ADD	B15, 8, B15
	B	L$return$_ZNKSt6string7compareEPKc
	NOP	5
	ZERO	A4
L$return$_ZNKSt6string7compareEPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNKSt6string7compareEPKc)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string4initEPKcj
_ZNSt6string4initEPKcj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 8, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string4initEPKcj$ret0, B3
	MVKH	L$_ZNSt6string4initEPKcj$ret0, B3
	B	_ZNSt6string14reserveExactlyEj
	NOP	5
L$_ZNSt6string4initEPKcj$ret0:
	ADD	B15, 8, B15
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
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string4initEPKcj$end1
	NOP	5
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string4initEPKcj$ret2, B3
	MVKH	L$_ZNSt6string4initEPKcj$ret2, B3
	B	memcpy
	NOP	5
L$_ZNSt6string4initEPKcj$ret2:
	ADD	B15, 8, B15
L$_ZNSt6string4initEPKcj$end1:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
	ZERO	A4
L$return$_ZNSt6string4initEPKcj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string4initEPKcj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string14reserveExactlyEj
_ZNSt6string14reserveExactlyEj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
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
	MVKL	15, A4
	MVKH	15, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPLTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string14reserveExactlyEj$else0
	NOP	5
	MVKL	15, A4
	MVKH	15, A4
	B	L$_ZNSt6string14reserveExactlyEj$end0
	NOP	5
L$_ZNSt6string14reserveExactlyEj$else0:
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$_ZNSt6string14reserveExactlyEj$end0:
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
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
	ADD	A4, A6, A4
	MVKL	L$_ZNSt6string14reserveExactlyEj$ret1, B3
	MVKH	L$_ZNSt6string14reserveExactlyEj$ret1, B3
	B	malloc
	NOP	5
L$_ZNSt6string14reserveExactlyEj$ret1:
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
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
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
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string14reserveExactlyEj$else2
	NOP	5
	SUB	B15, 8, B15
	MVKL	56, A0
	MVKH	56, A0
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
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string14reserveExactlyEj$ret3, B3
	MVKH	L$_ZNSt6string14reserveExactlyEj$ret3, B3
	B	memcpy
	NOP	5
L$_ZNSt6string14reserveExactlyEj$ret3:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZNSt6string14reserveExactlyEj$ret4, B3
	MVKH	L$_ZNSt6string14reserveExactlyEj$ret4, B3
	B	free
	NOP	5
L$_ZNSt6string14reserveExactlyEj$ret4:
	ADD	B15, 8, B15
	B	L$_ZNSt6string14reserveExactlyEj$end2
	NOP	5
L$_ZNSt6string14reserveExactlyEj$else2:
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$_ZNSt6string14reserveExactlyEj$end2:
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	56, A0
	MVKH	56, A0
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
	ADD	A4, 4, A4
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
	STB	A4, *A6
	MVKL	56, A0
	MVKH	56, A0
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
	MVKL	52, A0
	MVKH	52, A0
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
	ADD	A4, 8, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	ZERO	A4
L$return$_ZNSt6string14reserveExactlyEj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string14reserveExactlyEj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string10assignFromEPKcj
_ZNSt6string10assignFromEPKcj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string10assignFromEPKcj$ret0, B3
	MVKH	L$_ZNSt6string10assignFromEPKcj$ret0, B3
	B	_ZNSt6string7reserveEj
	NOP	5
L$_ZNSt6string10assignFromEPKcj$ret0:
	ADD	B15, 8, B15
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
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string10assignFromEPKcj$end1
	NOP	5
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string10assignFromEPKcj$ret2, B3
	MVKH	L$_ZNSt6string10assignFromEPKcj$ret2, B3
	B	memcpy
	NOP	5
L$_ZNSt6string10assignFromEPKcj$ret2:
	ADD	B15, 8, B15
L$_ZNSt6string10assignFromEPKcj$end1:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
	ZERO	A4
L$return$_ZNSt6string10assignFromEPKcj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string10assignFromEPKcj)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZNSt6string11appendBytesEPKcj
_ZNSt6string11appendBytesEPKcj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
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
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string11appendBytesEPKcj$end0
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 8, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string11appendBytesEPKcj$end1
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 8, A4
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
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	CMPGTU	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZNSt6string11appendBytesEPKcj$else2
	NOP	5
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	B	L$_ZNSt6string11appendBytesEPKcj$end2
	NOP	5
L$_ZNSt6string11appendBytesEPKcj$else2:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$_ZNSt6string11appendBytesEPKcj$end2:
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string11appendBytesEPKcj$ret3, B3
	MVKH	L$_ZNSt6string11appendBytesEPKcj$ret3, B3
	B	_ZNSt6string14reserveExactlyEj
	NOP	5
L$_ZNSt6string11appendBytesEPKcj$ret3:
	ADD	B15, 8, B15
L$_ZNSt6string11appendBytesEPKcj$end1:
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	SUB	B15, 8, B15
	STW	A4, *B15
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
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZNSt6string11appendBytesEPKcj$ret4, B3
	MVKH	L$_ZNSt6string11appendBytesEPKcj$ret4, B3
	B	memcpy
	NOP	5
L$_ZNSt6string11appendBytesEPKcj$ret4:
	ADD	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	0, A4
	MVKH	0, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ADD	A4, 4, A4
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
	STB	A4, *A6
L$_ZNSt6string11appendBytesEPKcj$end0:
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_ZNSt6string11appendBytesEPKcj
	NOP	5
	ZERO	A4
L$return$_ZNSt6string11appendBytesEPKcj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZNSt6string11appendBytesEPKcj)
	.ulong	0x83ff0207
	.text
	.text
_ZLNSteqERKSt6stringS1_:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNSteqERKSt6stringS1_$ret0, B3
	MVKH	L$_ZLNSteqERKSt6stringS1_$ret0, B3
	B	_ZNKSt6string7compareERKS_
	NOP	5
L$_ZLNSteqERKSt6stringS1_$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	B	L$return$_ZLNSteqERKSt6stringS1_
	NOP	5
	ZERO	A4
L$return$_ZLNSteqERKSt6stringS1_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSteqERKSt6stringS1_)
	.ulong	0x83ff0207
	.text
	.text
_ZLNSteqERKSt6stringPKc:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNSteqERKSt6stringPKc$ret0, B3
	MVKH	L$_ZLNSteqERKSt6stringPKc$ret0, B3
	B	_ZNKSt6string7compareEPKc
	NOP	5
L$_ZLNSteqERKSt6stringPKc$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	B	L$return$_ZLNSteqERKSt6stringPKc
	NOP	5
	ZERO	A4
L$return$_ZLNSteqERKSt6stringPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSteqERKSt6stringPKc)
	.ulong	0x83ff0207
	.text
	.text
_ZLNSteqEPKcRKSt6string:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNSteqEPKcRKSt6string$ret0, B3
	MVKH	L$_ZLNSteqEPKcRKSt6string$ret0, B3
	B	_ZNKSt6string7compareEPKc
	NOP	5
L$_ZLNSteqEPKcRKSt6string$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	B	L$return$_ZLNSteqEPKcRKSt6string
	NOP	5
	ZERO	A4
L$return$_ZLNSteqEPKcRKSt6string:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSteqEPKcRKSt6string)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStneERKSt6stringS1_:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStneERKSt6stringS1_$ret0, B3
	MVKH	L$_ZLNStneERKSt6stringS1_$ret0, B3
	B	_ZNKSt6string7compareERKS_
	NOP	5
L$_ZLNStneERKSt6stringS1_$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	B	L$return$_ZLNStneERKSt6stringS1_
	NOP	5
	ZERO	A4
L$return$_ZLNStneERKSt6stringS1_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStneERKSt6stringS1_)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStneERKSt6stringPKc:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStneERKSt6stringPKc$ret0, B3
	MVKH	L$_ZLNStneERKSt6stringPKc$ret0, B3
	B	_ZNKSt6string7compareEPKc
	NOP	5
L$_ZLNStneERKSt6stringPKc$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	B	L$return$_ZLNStneERKSt6stringPKc
	NOP	5
	ZERO	A4
L$return$_ZLNStneERKSt6stringPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStneERKSt6stringPKc)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStneEPKcRKSt6string:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStneEPKcRKSt6string$ret0, B3
	MVKH	L$_ZLNStneEPKcRKSt6string$ret0, B3
	B	_ZNKSt6string7compareEPKc
	NOP	5
L$_ZLNStneEPKcRKSt6string$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A4
	XOR	1, A4, A4
	B	L$return$_ZLNStneEPKcRKSt6string
	NOP	5
	ZERO	A4
L$return$_ZLNStneEPKcRKSt6string:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStneEPKcRKSt6string)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStltERKSt6stringS1_:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStltERKSt6stringS1_$ret0, B3
	MVKH	L$_ZLNStltERKSt6stringS1_$ret0, B3
	B	_ZNKSt6string7compareERKS_
	NOP	5
L$_ZLNStltERKSt6stringS1_$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPLT	A4, A6, A4
	B	L$return$_ZLNStltERKSt6stringS1_
	NOP	5
	ZERO	A4
L$return$_ZLNStltERKSt6stringS1_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStltERKSt6stringS1_)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStgtERKSt6stringS1_:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStgtERKSt6stringS1_$ret0, B3
	MVKH	L$_ZLNStgtERKSt6stringS1_$ret0, B3
	B	_ZNKSt6string7compareERKS_
	NOP	5
L$_ZLNStgtERKSt6stringS1_$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGT	A4, A6, A4
	B	L$return$_ZLNStgtERKSt6stringS1_
	NOP	5
	ZERO	A4
L$return$_ZLNStgtERKSt6stringS1_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStgtERKSt6stringS1_)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStleERKSt6stringS1_:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStleERKSt6stringS1_$ret0, B3
	MVKH	L$_ZLNStleERKSt6stringS1_$ret0, B3
	B	_ZNKSt6string7compareERKS_
	NOP	5
L$_ZLNStleERKSt6stringS1_$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPGT	A4, A6, A4
	XOR	1, A4, A4
	B	L$return$_ZLNStleERKSt6stringS1_
	NOP	5
	ZERO	A4
L$return$_ZLNStleERKSt6stringS1_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStleERKSt6stringS1_)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStgeERKSt6stringS1_:
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
	MV	B4, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
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
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStgeERKSt6stringS1_$ret0, B3
	MVKH	L$_ZLNStgeERKSt6stringS1_$ret0, B3
	B	_ZNKSt6string7compareERKS_
	NOP	5
L$_ZLNStgeERKSt6stringS1_$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	CMPLT	A4, A6, A4
	XOR	1, A4, A4
	B	L$return$_ZLNStgeERKSt6stringS1_
	NOP	5
	ZERO	A4
L$return$_ZLNStgeERKSt6stringS1_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStgeERKSt6stringS1_)
	.ulong	0x83ff0207
	.text
	.text
_ZLNStplERKSt6stringS1_:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringS1_$ret0, B3
	MVKH	L$_ZLNStplERKSt6stringS1_$ret0, B3
	B	_ZNSt6stringC1ERKS_
	NOP	5
L$_ZLNStplERKSt6stringS1_$ret0:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringS1_$try1:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringS1_$ret2, B3
	MVKH	L$_ZLNStplERKSt6stringS1_$ret2, B3
	B	_ZNSt6stringpLERKS_
	NOP	5
L$_ZLNStplERKSt6stringS1_$ret2:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
	MV	A6, A4
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNStplERKSt6stringS1_$noresult3:
	MV	A6, A4
	B	L$return$_ZLNStplERKSt6stringS1_
	NOP	5
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplERKSt6stringS1_$ret4, B3
	MVKH	L$_ZLNStplERKSt6stringS1_$ret4, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplERKSt6stringS1_$ret4:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringS1_$tryend1:
	B	L$_ZLNStplERKSt6stringS1_$caught1
	NOP	5
L$_ZLNStplERKSt6stringS1_$pad1:
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$_ZLNStplERKSt6stringS1_$cleanup5:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplERKSt6stringS1_$ret6, B3
	MVKH	L$_ZLNStplERKSt6stringS1_$ret6, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplERKSt6stringS1_$ret6:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringS1_$cleanupend5:
	SUB	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringS1_$ret7, B3
	MVKH	L$_ZLNStplERKSt6stringS1_$ret7, B3
	B	__cxa_end_cleanup
	NOP	5
L$_ZLNStplERKSt6stringS1_$ret7:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringS1_$caught1:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNStplERKSt6stringS1_:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_ZLNStplERKSt6stringS1_$pad1$s0:
	MVK	0, B4
	B	L$_ZLNStplERKSt6stringS1_$pad1
	NOP	5
L$_ZLNStplERKSt6stringS1_$fnend:
	.sect	".c6xabi.extab:_ZLNStplERKSt6stringS1_"
	.align	4
__c6xabi_extab$_ZLNStplERKSt6stringS1_:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringS1_$cleanupend5) - $EXTAB_SCOPE(L$_ZLNStplERKSt6stringS1_$cleanup5) + 1
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringS1_$cleanup5) - $EXTAB_SCOPE(_ZLNStplERKSt6stringS1_) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringS1_$tryend1) - $EXTAB_SCOPE(L$_ZLNStplERKSt6stringS1_$try1)
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringS1_$try1) - $EXTAB_SCOPE(_ZLNStplERKSt6stringS1_) + 2
	.ulong	$EXTAB_LP(L$_ZLNStplERKSt6stringS1_$pad1$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_ZLNStplERKSt6stringS1_"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStplERKSt6stringS1_)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_ZLNStplERKSt6stringS1_")
	.text
	.text
_ZLNStplERKSt6stringPKc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringPKc$ret0, B3
	MVKH	L$_ZLNStplERKSt6stringPKc$ret0, B3
	B	_ZNSt6stringC1ERKS_
	NOP	5
L$_ZLNStplERKSt6stringPKc$ret0:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringPKc$try1:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringPKc$ret2, B3
	MVKH	L$_ZLNStplERKSt6stringPKc$ret2, B3
	B	_ZNSt6stringpLEPKc
	NOP	5
L$_ZLNStplERKSt6stringPKc$ret2:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
	MV	A6, A4
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNStplERKSt6stringPKc$noresult3:
	MV	A6, A4
	B	L$return$_ZLNStplERKSt6stringPKc
	NOP	5
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplERKSt6stringPKc$ret4, B3
	MVKH	L$_ZLNStplERKSt6stringPKc$ret4, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplERKSt6stringPKc$ret4:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringPKc$tryend1:
	B	L$_ZLNStplERKSt6stringPKc$caught1
	NOP	5
L$_ZLNStplERKSt6stringPKc$pad1:
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$_ZLNStplERKSt6stringPKc$cleanup5:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplERKSt6stringPKc$ret6, B3
	MVKH	L$_ZLNStplERKSt6stringPKc$ret6, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplERKSt6stringPKc$ret6:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringPKc$cleanupend5:
	SUB	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringPKc$ret7, B3
	MVKH	L$_ZLNStplERKSt6stringPKc$ret7, B3
	B	__cxa_end_cleanup
	NOP	5
L$_ZLNStplERKSt6stringPKc$ret7:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringPKc$caught1:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNStplERKSt6stringPKc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_ZLNStplERKSt6stringPKc$pad1$s0:
	MVK	0, B4
	B	L$_ZLNStplERKSt6stringPKc$pad1
	NOP	5
L$_ZLNStplERKSt6stringPKc$fnend:
	.sect	".c6xabi.extab:_ZLNStplERKSt6stringPKc"
	.align	4
__c6xabi_extab$_ZLNStplERKSt6stringPKc:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringPKc$cleanupend5) - $EXTAB_SCOPE(L$_ZLNStplERKSt6stringPKc$cleanup5) + 1
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringPKc$cleanup5) - $EXTAB_SCOPE(_ZLNStplERKSt6stringPKc) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringPKc$tryend1) - $EXTAB_SCOPE(L$_ZLNStplERKSt6stringPKc$try1)
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringPKc$try1) - $EXTAB_SCOPE(_ZLNStplERKSt6stringPKc) + 2
	.ulong	$EXTAB_LP(L$_ZLNStplERKSt6stringPKc$pad1$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_ZLNStplERKSt6stringPKc"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStplERKSt6stringPKc)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_ZLNStplERKSt6stringPKc")
	.text
	.text
_ZLNStplEPKcRKSt6string:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplEPKcRKSt6string$ret0, B3
	MVKH	L$_ZLNStplEPKcRKSt6string$ret0, B3
	B	_ZNSt6stringC1EPKc
	NOP	5
L$_ZLNStplEPKcRKSt6string$ret0:
	ADD	B15, 8, B15
L$_ZLNStplEPKcRKSt6string$try1:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplEPKcRKSt6string$ret2, B3
	MVKH	L$_ZLNStplEPKcRKSt6string$ret2, B3
	B	_ZNSt6stringpLERKS_
	NOP	5
L$_ZLNStplEPKcRKSt6string$ret2:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
	MV	A6, A4
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNStplEPKcRKSt6string$noresult3:
	MV	A6, A4
	B	L$return$_ZLNStplEPKcRKSt6string
	NOP	5
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplEPKcRKSt6string$ret4, B3
	MVKH	L$_ZLNStplEPKcRKSt6string$ret4, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplEPKcRKSt6string$ret4:
	ADD	B15, 8, B15
L$_ZLNStplEPKcRKSt6string$tryend1:
	B	L$_ZLNStplEPKcRKSt6string$caught1
	NOP	5
L$_ZLNStplEPKcRKSt6string$pad1:
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$_ZLNStplEPKcRKSt6string$cleanup5:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplEPKcRKSt6string$ret6, B3
	MVKH	L$_ZLNStplEPKcRKSt6string$ret6, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplEPKcRKSt6string$ret6:
	ADD	B15, 8, B15
L$_ZLNStplEPKcRKSt6string$cleanupend5:
	SUB	B15, 8, B15
	MVKL	L$_ZLNStplEPKcRKSt6string$ret7, B3
	MVKH	L$_ZLNStplEPKcRKSt6string$ret7, B3
	B	__cxa_end_cleanup
	NOP	5
L$_ZLNStplEPKcRKSt6string$ret7:
	ADD	B15, 8, B15
L$_ZLNStplEPKcRKSt6string$caught1:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNStplEPKcRKSt6string:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_ZLNStplEPKcRKSt6string$pad1$s0:
	MVK	0, B4
	B	L$_ZLNStplEPKcRKSt6string$pad1
	NOP	5
L$_ZLNStplEPKcRKSt6string$fnend:
	.sect	".c6xabi.extab:_ZLNStplEPKcRKSt6string"
	.align	4
__c6xabi_extab$_ZLNStplEPKcRKSt6string:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_ZLNStplEPKcRKSt6string$cleanupend5) - $EXTAB_SCOPE(L$_ZLNStplEPKcRKSt6string$cleanup5) + 1
	.half	$EXTAB_SCOPE(L$_ZLNStplEPKcRKSt6string$cleanup5) - $EXTAB_SCOPE(_ZLNStplEPKcRKSt6string) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_ZLNStplEPKcRKSt6string$tryend1) - $EXTAB_SCOPE(L$_ZLNStplEPKcRKSt6string$try1)
	.half	$EXTAB_SCOPE(L$_ZLNStplEPKcRKSt6string$try1) - $EXTAB_SCOPE(_ZLNStplEPKcRKSt6string) + 2
	.ulong	$EXTAB_LP(L$_ZLNStplEPKcRKSt6string$pad1$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_ZLNStplEPKcRKSt6string"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStplEPKcRKSt6string)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_ZLNStplEPKcRKSt6string")
	.text
	.text
_ZLNStplERKSt6stringc:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	A6, A4
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringc$ret0, B3
	MVKH	L$_ZLNStplERKSt6stringc$ret0, B3
	B	_ZNSt6stringC1ERKS_
	NOP	5
L$_ZLNStplERKSt6stringc$ret0:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringc$try1:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	45, A0
	MVKH	45, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringc$ret2, B3
	MVKH	L$_ZLNStplERKSt6stringc$ret2, B3
	B	_ZNSt6stringpLEc
	NOP	5
L$_ZLNStplERKSt6stringc$ret2:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
	MV	A6, A4
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNStplERKSt6stringc$noresult3:
	MV	A6, A4
	B	L$return$_ZLNStplERKSt6stringc
	NOP	5
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplERKSt6stringc$ret4, B3
	MVKH	L$_ZLNStplERKSt6stringc$ret4, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplERKSt6stringc$ret4:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringc$tryend1:
	B	L$_ZLNStplERKSt6stringc$caught1
	NOP	5
L$_ZLNStplERKSt6stringc$pad1:
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$_ZLNStplERKSt6stringc$cleanup5:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplERKSt6stringc$ret6, B3
	MVKH	L$_ZLNStplERKSt6stringc$ret6, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplERKSt6stringc$ret6:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringc$cleanupend5:
	SUB	B15, 8, B15
	MVKL	L$_ZLNStplERKSt6stringc$ret7, B3
	MVKH	L$_ZLNStplERKSt6stringc$ret7, B3
	B	__cxa_end_cleanup
	NOP	5
L$_ZLNStplERKSt6stringc$ret7:
	ADD	B15, 8, B15
L$_ZLNStplERKSt6stringc$caught1:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNStplERKSt6stringc:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_ZLNStplERKSt6stringc$pad1$s0:
	MVK	0, B4
	B	L$_ZLNStplERKSt6stringc$pad1
	NOP	5
L$_ZLNStplERKSt6stringc$fnend:
	.sect	".c6xabi.extab:_ZLNStplERKSt6stringc"
	.align	4
__c6xabi_extab$_ZLNStplERKSt6stringc:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringc$cleanupend5) - $EXTAB_SCOPE(L$_ZLNStplERKSt6stringc$cleanup5) + 1
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringc$cleanup5) - $EXTAB_SCOPE(_ZLNStplERKSt6stringc) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringc$tryend1) - $EXTAB_SCOPE(L$_ZLNStplERKSt6stringc$try1)
	.half	$EXTAB_SCOPE(L$_ZLNStplERKSt6stringc$try1) - $EXTAB_SCOPE(_ZLNStplERKSt6stringc) + 2
	.ulong	$EXTAB_LP(L$_ZLNStplERKSt6stringc$pad1$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_ZLNStplERKSt6stringc"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStplERKSt6stringc)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_ZLNStplERKSt6stringc")
	.text
	.text
_ZLNStplEcRKSt6string:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A0
	STB	A4, *A0
	MV	A6, A4
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	1, A4
	MVKH	1, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	41, A0
	MVKH	41, A0
	SUB	A15, A0, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplEcRKSt6string$ret0, B3
	MVKH	L$_ZLNStplEcRKSt6string$ret0, B3
	B	_ZNSt6stringC1Ejc
	NOP	5
L$_ZLNStplEcRKSt6string$ret0:
	ADD	B15, 8, B15
L$_ZLNStplEcRKSt6string$try1:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNStplEcRKSt6string$ret2, B3
	MVKH	L$_ZLNStplEcRKSt6string$ret2, B3
	B	_ZNSt6stringpLERKS_
	NOP	5
L$_ZLNStplEcRKSt6string$ret2:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
	MV	A6, A4
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNStplEcRKSt6string$noresult3:
	MV	A6, A4
	B	L$return$_ZLNStplEcRKSt6string
	NOP	5
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplEcRKSt6string$ret4, B3
	MVKH	L$_ZLNStplEcRKSt6string$ret4, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplEcRKSt6string$ret4:
	ADD	B15, 8, B15
L$_ZLNStplEcRKSt6string$tryend1:
	B	L$_ZLNStplEcRKSt6string$caught1
	NOP	5
L$_ZLNStplEcRKSt6string$pad1:
	MVKL	84, A0
	MVKH	84, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$_ZLNStplEcRKSt6string$cleanup5:
	SUB	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNStplEcRKSt6string$ret6, B3
	MVKH	L$_ZLNStplEcRKSt6string$ret6, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNStplEcRKSt6string$ret6:
	ADD	B15, 8, B15
L$_ZLNStplEcRKSt6string$cleanupend5:
	SUB	B15, 8, B15
	MVKL	L$_ZLNStplEcRKSt6string$ret7, B3
	MVKH	L$_ZLNStplEcRKSt6string$ret7, B3
	B	__cxa_end_cleanup
	NOP	5
L$_ZLNStplEcRKSt6string$ret7:
	ADD	B15, 8, B15
L$_ZLNStplEcRKSt6string$caught1:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNStplEcRKSt6string:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_ZLNStplEcRKSt6string$pad1$s0:
	MVK	0, B4
	B	L$_ZLNStplEcRKSt6string$pad1
	NOP	5
L$_ZLNStplEcRKSt6string$fnend:
	.sect	".c6xabi.extab:_ZLNStplEcRKSt6string"
	.align	4
__c6xabi_extab$_ZLNStplEcRKSt6string:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_ZLNStplEcRKSt6string$cleanupend5) - $EXTAB_SCOPE(L$_ZLNStplEcRKSt6string$cleanup5) + 1
	.half	$EXTAB_SCOPE(L$_ZLNStplEcRKSt6string$cleanup5) - $EXTAB_SCOPE(_ZLNStplEcRKSt6string) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_ZLNStplEcRKSt6string$tryend1) - $EXTAB_SCOPE(L$_ZLNStplEcRKSt6string$try1)
	.half	$EXTAB_SCOPE(L$_ZLNStplEcRKSt6string$try1) - $EXTAB_SCOPE(_ZLNStplEcRKSt6string) + 2
	.ulong	$EXTAB_LP(L$_ZLNStplEcRKSt6string$pad1$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_ZLNStplEcRKSt6string"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNStplEcRKSt6string)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_ZLNStplEcRKSt6string")
	.text
	.text
_ZLNSt9to_stringEx:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	152, B0
	MVKH	152, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MV	B5, A5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STDW	A5:A4, *A0
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	92, A0
	MVKH	92, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDDW	*A4, A5:A4
	NOP	4
	SUB	B15, 8, B15
	STDW	A5:A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	SHR	A4, 31, A5
	MV	A4, A6
	MV	A5, A7
	LDDW	*B15, A5:A4
	NOP	4
	ADD	B15, 8, B15
	CMPLT	A5, A7, A0
	CMPEQ	A5, A7, A3
	CMPLTU	A4, A6, A4
	AND	A3, A4, A4
	OR	A0, A4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	93, A0
	MVKH	93, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STB	A4, *A6
	MVKL	93, A0
	MVKH	93, A0
	SUB	A15, A0, A4
	LDBU	*A4, A4
	NOP	4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZLNSt9to_stringEx$else0
	NOP	5
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDDW	*A4, A5:A4
	NOP	4
	B	L$_ZLNSt9to_stringEx$end0
	NOP	5
L$_ZLNSt9to_stringEx$else0:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDDW	*A4, A5:A4
	NOP	4
	CMPEQ	0, A4, A0
	NEG	A4, A4
	NOT	A5, A5
	ADD	A5, A0, A5
L$_ZLNSt9to_stringEx$end0:
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STDW	A5:A4, *A6
L$_ZLNSt9to_stringEx$begin1:
	MVKL	48, A4
	MVKH	48, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A4
	LDDW	*A4, A5:A4
	NOP	4
	SUB	B15, 8, B15
	STDW	A5:A4, *B15
	MVKL	10, A4
	MVKH	10, A4
	SHR	A4, 31, A5
	MV	A4, A6
	MV	A5, A7
	LDDW	*B15, A5:A4
	NOP	4
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MV	A6, B4
	MV	A7, B5
	MVKL	L$_ZLNSt9to_stringEx$ret2, B3
	MVKH	L$_ZLNSt9to_stringEx$ret2, B3
	B	__c6xabi_remlli
	NOP	5
L$_ZLNSt9to_stringEx$ret2:
	ADD	B15, 8, B15
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	SUB	A4, A6, A4
	EXT	A4, 24, 24, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	92, A0
	MVKH	92, A0
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
	STB	A4, *A6
	MVKL	92, A0
	MVKH	92, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A4
	LDDW	*A4, A5:A4
	NOP	4
	SUB	B15, 8, B15
	STDW	A5:A4, *B15
	MVKL	10, A4
	MVKH	10, A4
	SHR	A4, 31, A5
	MV	A4, A6
	MV	A5, A7
	LDDW	*B15, A5:A4
	NOP	4
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MV	A6, B4
	MV	A7, B5
	MVKL	L$_ZLNSt9to_stringEx$ret3, B3
	MVKH	L$_ZLNSt9to_stringEx$ret3, B3
	B	__c6xabi_divlli
	NOP	5
L$_ZLNSt9to_stringEx$ret3:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STDW	A5:A4, *A6
L$_ZLNSt9to_stringEx$step1:
	MVKL	104, A0
	MVKH	104, A0
	SUB	A15, A0, A4
	LDDW	*A4, A5:A4
	NOP	4
	SUB	B15, 8, B15
	STDW	A5:A4, *B15
	MVKL	0, A4
	MVKH	0, A4
	SHR	A4, 31, A5
	MV	A4, A6
	MV	A5, A7
	LDDW	*B15, A5:A4
	NOP	4
	ADD	B15, 8, B15
	CMPEQ	A4, A6, A0
	CMPEQ	A5, A7, A4
	AND	A0, A4, A4
	XOR	1, A4, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[A1]	B	L$_ZLNSt9to_stringEx$begin1
	NOP	5
L$_ZLNSt9to_stringEx$end1:
	MVKL	93, A0
	MVKH	93, A0
	SUB	A15, A0, A4
	LDBU	*A4, A4
	NOP	4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_ZLNSt9to_stringEx$end4
	NOP	5
	MVKL	45, A4
	MVKH	45, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	92, A0
	MVKH	92, A0
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
	STB	A4, *A6
	MVKL	92, A0
	MVKH	92, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	ADD	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
L$_ZLNSt9to_stringEx$end4:
	SUB	B15, 8, B15
	MVKL	116, A0
	MVKH	116, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNSt9to_stringEx$ret5, B3
	MVKH	L$_ZLNSt9to_stringEx$ret5, B3
	B	_ZNSt6stringC1Ev
	NOP	5
L$_ZLNSt9to_stringEx$ret5:
	ADD	B15, 8, B15
L$_ZLNSt9to_stringEx$try6:
	MVKL	92, A0
	MVKH	92, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	120, A0
	MVKH	120, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$_ZLNSt9to_stringEx$begin7:
	MVKL	120, A0
	MVKH	120, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	SUB	A4, 1, A4
	LDW	*B15, A6
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A3
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A3
	MV	A6, A4
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
	[!A1]	B	L$_ZLNSt9to_stringEx$end7
	NOP	5
	SUB	B15, 8, B15
	MVKL	116, A0
	MVKH	116, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	88, A0
	MVKH	88, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	120, A0
	MVKH	120, A0
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
	MPY32	A4, A6, A4
	NOP	3
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDB	*A4, A4
	NOP	4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_ZLNSt9to_stringEx$ret8, B3
	MVKH	L$_ZLNSt9to_stringEx$ret8, B3
	B	_ZNSt6stringpLEc
	NOP	5
L$_ZLNSt9to_stringEx$ret8:
	ADD	B15, 8, B15
L$_ZLNSt9to_stringEx$step7:
	B	L$_ZLNSt9to_stringEx$begin7
	NOP	5
L$_ZLNSt9to_stringEx$end7:
	MVKL	116, A0
	MVKH	116, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	132, A0
	MVKH	132, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
	MV	A6, A4
	MVKL	132, A0
	MVKH	132, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNSt9to_stringEx$noresult9:
	MV	A6, A4
	B	L$return$_ZLNSt9to_stringEx
	NOP	5
	SUB	B15, 8, B15
	MVKL	116, A0
	MVKH	116, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNSt9to_stringEx$ret10, B3
	MVKH	L$_ZLNSt9to_stringEx$ret10, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNSt9to_stringEx$ret10:
	ADD	B15, 8, B15
L$_ZLNSt9to_stringEx$tryend6:
	B	L$_ZLNSt9to_stringEx$caught6
	NOP	5
L$_ZLNSt9to_stringEx$pad6:
	MVKL	136, A0
	MVKH	136, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	140, A0
	MVKH	140, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	152, B0
	MVKH	152, B0
	SUB	B15, B0, B15
L$_ZLNSt9to_stringEx$cleanup11:
	SUB	B15, 8, B15
	MVKL	116, A0
	MVKH	116, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNSt9to_stringEx$ret12, B3
	MVKH	L$_ZLNSt9to_stringEx$ret12, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_ZLNSt9to_stringEx$ret12:
	ADD	B15, 8, B15
L$_ZLNSt9to_stringEx$cleanupend11:
	SUB	B15, 8, B15
	MVKL	L$_ZLNSt9to_stringEx$ret13, B3
	MVKH	L$_ZLNSt9to_stringEx$ret13, B3
	B	__cxa_end_cleanup
	NOP	5
L$_ZLNSt9to_stringEx$ret13:
	ADD	B15, 8, B15
L$_ZLNSt9to_stringEx$caught6:
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNSt9to_stringEx:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_ZLNSt9to_stringEx$pad6$s0:
	MVK	0, B4
	B	L$_ZLNSt9to_stringEx$pad6
	NOP	5
L$_ZLNSt9to_stringEx$fnend:
	.sect	".c6xabi.extab:_ZLNSt9to_stringEx"
	.align	4
__c6xabi_extab$_ZLNSt9to_stringEx:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_ZLNSt9to_stringEx$cleanupend11) - $EXTAB_SCOPE(L$_ZLNSt9to_stringEx$cleanup11) + 1
	.half	$EXTAB_SCOPE(L$_ZLNSt9to_stringEx$cleanup11) - $EXTAB_SCOPE(_ZLNSt9to_stringEx) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_ZLNSt9to_stringEx$tryend6) - $EXTAB_SCOPE(L$_ZLNSt9to_stringEx$try6)
	.half	$EXTAB_SCOPE(L$_ZLNSt9to_stringEx$try6) - $EXTAB_SCOPE(_ZLNSt9to_stringEx) + 2
	.ulong	$EXTAB_LP(L$_ZLNSt9to_stringEx$pad6$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_ZLNSt9to_stringEx"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSt9to_stringEx)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_ZLNSt9to_stringEx")
	.text
	.text
_ZLNSt9to_stringEi:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SHR	A4, 31, A5
	MV	A4, B4
	MV	A5, B5
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNSt9to_stringEi$ret0, B3
	MVKH	L$_ZLNSt9to_stringEi$ret0, B3
	B	_ZLNSt9to_stringEx
	NOP	5
L$_ZLNSt9to_stringEi$ret0:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNSt9to_stringEi$noresult1:
	MV	A6, A4
	B	L$return$_ZLNSt9to_stringEi
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNSt9to_stringEi:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSt9to_stringEi)
	.ulong	0x83ff0207
	.text
	.text
_ZLNSt9to_stringEl:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SHR	A4, 31, A5
	MV	A4, B4
	MV	A5, B5
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNSt9to_stringEl$ret0, B3
	MVKH	L$_ZLNSt9to_stringEl$ret0, B3
	B	_ZLNSt9to_stringEx
	NOP	5
L$_ZLNSt9to_stringEl$ret0:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNSt9to_stringEl$noresult1:
	MV	A6, A4
	B	L$return$_ZLNSt9to_stringEl
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNSt9to_stringEl:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSt9to_stringEl)
	.ulong	0x83ff0207
	.text
	.text
_ZLNSt9to_stringEj:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ZERO	A5
	MV	A4, B4
	MV	A5, B5
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNSt9to_stringEj$ret0, B3
	MVKH	L$_ZLNSt9to_stringEj$ret0, B3
	B	_ZLNSt9to_stringEx
	NOP	5
L$_ZLNSt9to_stringEj$ret0:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNSt9to_stringEj$noresult1:
	MV	A6, A4
	B	L$return$_ZLNSt9to_stringEj
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNSt9to_stringEj:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSt9to_stringEj)
	.ulong	0x83ff0207
	.text
	.text
_ZLNSt9to_stringEm:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MV	B4, A4
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	ZERO	A5
	MV	A4, B4
	MV	A5, B5
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	L$_ZLNSt9to_stringEm$ret0, B3
	MVKH	L$_ZLNSt9to_stringEm$ret0, B3
	B	_ZLNSt9to_stringEx
	NOP	5
L$_ZLNSt9to_stringEm$ret0:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A6
	LDW	*A6, A6
	NOP	4
	ADD	A4, 0, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 0, A0
	STW	A3, *A0
	ADD	A4, 4, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 4, A0
	STW	A3, *A0
	ADD	A4, 8, A0
	LDW	*A0, A3
	NOP	4
	ADD	A6, 8, A0
	STW	A3, *A0
L$_ZLNSt9to_stringEm$noresult1:
	MV	A6, A4
	B	L$return$_ZLNSt9to_stringEm
	NOP	5
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
L$return$_ZLNSt9to_stringEm:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZLNSt9to_stringEm)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZN4BaseD1Ev
_ZN4BaseD1Ev:
	.weak	_ZN4BaseD2Ev
_ZN4BaseD2Ev:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	_ZTV4Base, A4
	MVKH	_ZTV4Base, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	8, A4
	MVKH	8, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
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
	ZERO	A4
L$return$_ZN4BaseD1Ev:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN4BaseD1Ev)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZN4BaseD0Ev
_ZN4BaseD0Ev:
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
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZN4BaseD0Ev$ret0, B3
	MVKH	L$_ZN4BaseD0Ev$ret0, B3
	B	_ZN4BaseD1Ev
	NOP	5
L$_ZN4BaseD0Ev$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZN4BaseD0Ev$ret1, B3
	MVKH	L$_ZN4BaseD0Ev$ret1, B3
	B	_ZdlPv
	NOP	5
L$_ZN4BaseD0Ev$ret1:
	ADD	B15, 8, B15
	B	L$return$_ZN4BaseD0Ev
	NOP	5
	ZERO	A4
L$return$_ZN4BaseD0Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN4BaseD0Ev)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZN4Base1fEi
_ZN4Base1fEi:
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
	MVKL	1, A4
	MVKH	1, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	B	L$return$_ZN4Base1fEi
	NOP	5
	ZERO	A4
L$return$_ZN4Base1fEi:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN4Base1fEi)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZN7Derived1fEi
_ZN7Derived1fEi:
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
	MVKL	2, A4
	MVKH	2, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MPY32	A4, A6, A4
	NOP	3
	B	L$return$_ZN7Derived1fEi
	NOP	5
	ZERO	A4
L$return$_ZN7Derived1fEi:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN7Derived1fEi)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZN7CounterC1Ev
_ZN7CounterC1Ev:
	.weak	_ZN7CounterC2Ev
_ZN7CounterC2Ev:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	7, A4
	MVKH	7, A4
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
	ZERO	A4
L$return$_ZN7CounterC1Ev:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN7CounterC1Ev)
	.ulong	0x83ff0007
	.text
	.text
	.weak	_ZN7CounterD1Ev
_ZN7CounterD1Ev:
	.weak	_ZN7CounterD2Ev
_ZN7CounterD2Ev:
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
	MVKL	L$_ZN7CounterD1Ev$ret0, B3
	MVKH	L$_ZN7CounterD1Ev$ret0, B3
	B	printf
	NOP	5
L$_ZN7CounterD1Ev$ret0:
	ADD	B15, 16, B15
	ZERO	A4
L$return$_ZN7CounterD1Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN7CounterD1Ev)
	.ulong	0x83ff0207
	.text
	.text
	.global _Z7throweri
_Z7throweri:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	0, A4
	MVKH	0, A4
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
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$_Z7throweri$try0:
	MVKL	44, A0
	MVKH	44, A0
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
	CMPGT	A4, A6, A4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_Z7throweri$end1
	NOP	5
	MVKL	1, A4
	MVKH	1, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	12, A4
	MVKH	12, A4
	MVKL	L$_Z7throweri$ret2, B3
	MVKH	L$_Z7throweri$ret2, B3
	B	__cxa_allocate_exception
	NOP	5
L$_Z7throweri$ret2:
	ADD	B15, 8, B15
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
	SUB	B15, 8, B15
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	SUB	B15, 8, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	L$str$1, A4
	MVKH	L$str$1, A4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_Z7throweri$ret3, B3
	MVKH	L$_Z7throweri$ret3, B3
	B	_ZNSt6stringC1EPKc
	NOP	5
L$_Z7throweri$ret3:
	ADD	B15, 8, B15
	MVKL	1, A4
	MVKH	1, A4
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
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_Z7throweri$ret4, B3
	MVKH	L$_Z7throweri$ret4, B3
	B	_ZNSt6stringC1ERKS_
	NOP	5
L$_Z7throweri$ret4:
	ADD	B15, 8, B15
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	68, A0
	MVKH	68, A0
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
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_Z7throweri$end5
	NOP	5
	SUB	B15, 8, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	MVKL	L$_Z7throweri$ret6, B3
	MVKH	L$_Z7throweri$ret6, B3
	B	_ZNSt6stringD1Ev
	NOP	5
L$_Z7throweri$ret6:
	ADD	B15, 8, B15
	MVKL	0, A4
	MVKH	0, A4
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
L$_Z7throweri$end5:
	SUB	B15, 8, B15
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZTIN3std6stringE, A4
	MVKH	_ZTIN3std6stringE, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZNSt6stringD1Ev, A4
	MVKH	_ZNSt6stringD1Ev, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_Z7throweri$ret7, B3
	MVKH	L$_Z7throweri$ret7, B3
	B	__cxa_throw
	NOP	5
L$_Z7throweri$ret7:
	ADD	B15, 8, B15
L$_Z7throweri$end1:
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_Z7throweri
	NOP	5
L$_Z7throweri$tryend0:
	B	L$_Z7throweri$caught0
	NOP	5
L$_Z7throweri$pad0:
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
L$_Z7throweri$cleanup8:
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	CMPEQ	0, A4, A4
	XOR	1, A4, A4
	MV	A4, A1
	[!A1]	B	L$_Z7throweri$end9
	NOP	5
	SUB	B15, 8, B15
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_Z7throweri$ret10, B3
	MVKH	L$_Z7throweri$ret10, B3
	B	__cxa_free_exception
	NOP	5
L$_Z7throweri$ret10:
	ADD	B15, 8, B15
	MVKL	0, A4
	MVKH	0, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
L$_Z7throweri$end9:
L$_Z7throweri$cleanupend8:
	SUB	B15, 8, B15
	MVKL	L$_Z7throweri$ret11, B3
	MVKH	L$_Z7throweri$ret11, B3
	B	__cxa_end_cleanup
	NOP	5
L$_Z7throweri$ret11:
	ADD	B15, 8, B15
L$_Z7throweri$caught0:
	ZERO	A4
L$return$_Z7throweri:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_Z7throweri$pad0$s0:
	MVK	0, B4
	B	L$_Z7throweri$pad0
	NOP	5
L$_Z7throweri$fnend:
	.sect	".c6xabi.extab:_Z7throweri"
	.align	4
__c6xabi_extab$_Z7throweri:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_Z7throweri$cleanupend8) - $EXTAB_SCOPE(L$_Z7throweri$cleanup8) + 1
	.half	$EXTAB_SCOPE(L$_Z7throweri$cleanup8) - $EXTAB_SCOPE(_Z7throweri) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_Z7throweri$tryend0) - $EXTAB_SCOPE(L$_Z7throweri$try0)
	.half	$EXTAB_SCOPE(L$_Z7throweri$try0) - $EXTAB_SCOPE(_Z7throweri) + 2
	.ulong	$EXTAB_LP(L$_Z7throweri$pad0$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_Z7throweri"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_Z7throweri)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_Z7throweri")
	.text
	.text
	.global _Z7catcheri
_Z7catcheri:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
L$_Z7catcheri$try0:
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_Z7catcheri$ret1, B3
	MVKH	L$_Z7catcheri$ret1, B3
	B	_Z7throweri
	NOP	5
L$_Z7catcheri$ret1:
	ADD	B15, 8, B15
	B	L$return$_Z7catcheri
	NOP	5
L$_Z7catcheri$tryend0:
	B	L$_Z7catcheri$caught0
	NOP	5
L$_Z7catcheri$pad0:
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$_Z7catcheri$$chain7:
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
	[!A1]	B	L$_Z7catcheri$else2
	NOP	5
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_Z7catcheri$ret3, B3
	MVKH	L$_Z7catcheri$ret3, B3
	B	__cxa_begin_catch
	NOP	5
L$_Z7catcheri$ret3:
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
L$_Z7catcheri$try4:
	SUB	B15, 16, B15
	MVKL	L$str$2, A4
	MVKH	L$str$2, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	SUB	B15, 8, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_Z7catcheri$ret5, B3
	MVKH	L$_Z7catcheri$ret5, B3
	B	_ZNKSt6string5c_strEv
	NOP	5
L$_Z7catcheri$ret5:
	ADD	B15, 8, B15
	ADD	B15, 8, B0
	STW	A4, *B0
	MVKL	L$_Z7catcheri$ret6, B3
	MVKH	L$_Z7catcheri$ret6, B3
	B	printf
	NOP	5
L$_Z7catcheri$ret6:
	ADD	B15, 16, B15
	MVKL	1, A4
	MVKH	1, A4
	NEG	A4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	L$_Z7catcheri$ret7, B3
	MVKH	L$_Z7catcheri$ret7, B3
	B	__cxa_end_catch
	NOP	5
L$_Z7catcheri$ret7:
	ADD	B15, 8, B15
	MVKL	68, A0
	MVKH	68, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_Z7catcheri
	NOP	5
L$_Z7catcheri$tryend4:
	B	L$_Z7catcheri$caught4
	NOP	5
L$_Z7catcheri$pad4:
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	88, B0
	MVKH	88, B0
	SUB	B15, B0, B15
L$_Z7catcheri$$endcatch8:
L$_Z7catcheri$cleanup8:
	SUB	B15, 8, B15
	MVKL	L$_Z7catcheri$ret9, B3
	MVKH	L$_Z7catcheri$ret9, B3
	B	__cxa_end_catch
	NOP	5
L$_Z7catcheri$ret9:
	ADD	B15, 8, B15
L$_Z7catcheri$cleanupend8:
	SUB	B15, 8, B15
	MVKL	L$_Z7catcheri$ret10, B3
	MVKH	L$_Z7catcheri$ret10, B3
	B	__cxa_end_cleanup
	NOP	5
L$_Z7catcheri$ret10:
	ADD	B15, 8, B15
L$_Z7catcheri$caught4:
	SUB	B15, 8, B15
	MVKL	L$_Z7catcheri$ret11, B3
	MVKH	L$_Z7catcheri$ret11, B3
	B	__cxa_end_catch
	NOP	5
L$_Z7catcheri$ret11:
	ADD	B15, 8, B15
	B	L$_Z7catcheri$end2
	NOP	5
L$_Z7catcheri$else2:
	SUB	B15, 8, B15
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_Z7catcheri$ret12, B3
	MVKH	L$_Z7catcheri$ret12, B3
	B	__cxa_begin_catch
	NOP	5
L$_Z7catcheri$ret12:
	ADD	B15, 8, B15
	MVKL	2, A4
	MVKH	2, A4
	NEG	A4, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	L$_Z7catcheri$ret13, B3
	MVKH	L$_Z7catcheri$ret13, B3
	B	__cxa_end_catch
	NOP	5
L$_Z7catcheri$ret13:
	ADD	B15, 8, B15
	MVKL	80, A0
	MVKH	80, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$_Z7catcheri
	NOP	5
	SUB	B15, 8, B15
	MVKL	L$_Z7catcheri$ret14, B3
	MVKH	L$_Z7catcheri$ret14, B3
	B	__cxa_end_catch
	NOP	5
L$_Z7catcheri$ret14:
	ADD	B15, 8, B15
L$_Z7catcheri$end2:
L$_Z7catcheri$caught0:
	ZERO	A4
L$return$_Z7catcheri:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$_Z7catcheri$pad4$s0:
	MVK	0, B4
	B	L$_Z7catcheri$pad4
	NOP	5
L$_Z7catcheri$pad0$s1:
	MVK	1, B4
	B	L$_Z7catcheri$pad0
	NOP	5
L$_Z7catcheri$pad0$s2:
	MVK	2, B4
	B	L$_Z7catcheri$pad0
	NOP	5
L$_Z7catcheri$fnend:
	.sect	".c6xabi.extab:_Z7catcheri"
	.align	4
__c6xabi_extab$_Z7catcheri:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$_Z7catcheri$cleanupend8) - $EXTAB_SCOPE(L$_Z7catcheri$cleanup8) + 1
	.half	$EXTAB_SCOPE(L$_Z7catcheri$cleanup8) - $EXTAB_SCOPE(_Z7catcheri) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$_Z7catcheri$tryend4) - $EXTAB_SCOPE(L$_Z7catcheri$try4)
	.half	$EXTAB_SCOPE(L$_Z7catcheri$try4) - $EXTAB_SCOPE(_Z7catcheri) + 2
	.ulong	$EXTAB_LP(L$_Z7catcheri$pad4$s0)
	.half	$EXTAB_SCOPE(L$_Z7catcheri$tryend0) - $EXTAB_SCOPE(L$_Z7catcheri$try0) + 1
	.half	$EXTAB_SCOPE(L$_Z7catcheri$try0) - $EXTAB_SCOPE(_Z7catcheri) + 2
	.ulong	$EXTAB_LP(L$_Z7catcheri$pad0$s1)
	.ulong	$EXTAB_RTTI(_ZTIN3std6stringE)
	.half	$EXTAB_SCOPE(L$_Z7catcheri$tryend0) - $EXTAB_SCOPE(L$_Z7catcheri$try0) + 1
	.half	$EXTAB_SCOPE(L$_Z7catcheri$try0) - $EXTAB_SCOPE(_Z7catcheri) + 2
	.ulong	$EXTAB_LP(L$_Z7catcheri$pad0$s2)
	.ulong	0xffffffff
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:_Z7catcheri"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_Z7catcheri)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$_Z7catcheri")
	.text
	.text
	.global main
main:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	MVKL	L$main$ret0, B3
	MVKH	L$main$ret0, B3
	B	_ZN7DerivedC1Ev
	NOP	5
L$main$ret0:
	ADD	B15, 8, B15
L$main$try1:
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
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
	SUB	B15, 24, B15
	MVKL	L$str$3, A4
	MVKH	L$str$3, A4
	ADD	B15, 4, B0
	STW	A4, *B0
	MVKL	48, A0
	MVKH	48, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	STW	A4, *A6
	SUB	B15, 8, B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	8, A4
	MVKH	8, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	52, A0
	MVKH	52, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	5, A4
	MVKH	5, A4
	MV	A4, B4
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, B1
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$main$ret2, B3
	MVKH	L$main$ret2, B3
	B	B1
	NOP	5
L$main$ret2:
	ADD	B15, 8, B15
	ADD	B15, 8, B0
	STW	A4, *B0
	SUB	B15, 8, B15
	MVKL	2, A4
	MVKH	2, A4
	MVKL	L$main$ret3, B3
	MVKH	L$main$ret3, B3
	B	_Z7catcheri
	NOP	5
L$main$ret3:
	ADD	B15, 8, B15
	ADD	B15, 12, B0
	STW	A4, *B0
	SUB	B15, 8, B15
	MVKL	9, A4
	MVKH	9, A4
	MVKL	L$main$ret4, B3
	MVKH	L$main$ret4, B3
	B	_Z7catcheri
	NOP	5
L$main$ret4:
	ADD	B15, 8, B15
	ADD	B15, 16, B0
	STW	A4, *B0
	MVKL	L$main$ret5, B3
	MVKH	L$main$ret5, B3
	B	printf
	NOP	5
L$main$ret5:
	ADD	B15, 24, B15
	MVKL	0, A4
	MVKH	0, A4
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
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	MVKL	L$main$ret6, B3
	MVKH	L$main$ret6, B3
	B	_ZN7DerivedD1Ev
	NOP	5
L$main$ret6:
	ADD	B15, 8, B15
	MVKL	56, A0
	MVKH	56, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	B	L$return$main
	NOP	5
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	MVKL	L$main$ret7, B3
	MVKH	L$main$ret7, B3
	B	_ZN7DerivedD1Ev
	NOP	5
L$main$ret7:
	ADD	B15, 8, B15
L$main$tryend1:
	B	L$main$caught1
	NOP	5
L$main$pad1:
	MVKL	60, A0
	MVKH	60, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	64, A0
	MVKH	64, A0
	SUB	A15, A0, A0
	STW	B4, *A0
	MV	A15, B15
	MVKL	72, B0
	MVKH	72, B0
	SUB	B15, B0, B15
L$main$cleanup8:
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	MVKL	L$main$ret9, B3
	MVKH	L$main$ret9, B3
	B	_ZN7DerivedD1Ev
	NOP	5
L$main$ret9:
	ADD	B15, 8, B15
L$main$cleanupend8:
	SUB	B15, 8, B15
	MVKL	L$main$ret10, B3
	MVKH	L$main$ret10, B3
	B	__cxa_end_cleanup
	NOP	5
L$main$ret10:
	ADD	B15, 8, B15
L$main$caught1:
	ZERO	A4
L$return$main:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
L$main$pad1$s0:
	MVK	0, B4
	B	L$main$pad1
	NOP	5
L$main$fnend:
	.sect	".c6xabi.extab:main"
	.align	4
__c6xabi_extab$main:
	.ulong	0x83ff0207
	.half	$EXTAB_SCOPE(L$main$cleanupend8) - $EXTAB_SCOPE(L$main$cleanup8) + 1
	.half	$EXTAB_SCOPE(L$main$cleanup8) - $EXTAB_SCOPE(main) + 2
	.ulong	0
	.ulong	0xfffffffe
	.half	$EXTAB_SCOPE(L$main$tryend1) - $EXTAB_SCOPE(L$main$try1)
	.half	$EXTAB_SCOPE(L$main$try1) - $EXTAB_SCOPE(main) + 2
	.ulong	$EXTAB_LP(L$main$pad1$s0)
	.ulong	0
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.extab:main"
	.text
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(main)
	.ulong	$EXIDX_EXTAB("__c6xabi_extab$main")
	.text
	.text
	.weak	_ZN7DerivedD1Ev
_ZN7DerivedD1Ev:
	.weak	_ZN7DerivedD2Ev
_ZN7DerivedD2Ev:
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
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZN7DerivedD1Ev$ret0, B3
	MVKH	L$_ZN7DerivedD1Ev$ret0, B3
	B	_ZN4BaseD2Ev
	NOP	5
L$_ZN7DerivedD1Ev$ret0:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_ZN7DerivedD1Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN7DerivedD1Ev)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZN7DerivedD0Ev
_ZN7DerivedD0Ev:
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
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZN7DerivedD0Ev$ret0, B3
	MVKH	L$_ZN7DerivedD0Ev$ret0, B3
	B	_ZN7DerivedD1Ev
	NOP	5
L$_ZN7DerivedD0Ev$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZN7DerivedD0Ev$ret1, B3
	MVKH	L$_ZN7DerivedD0Ev$ret1, B3
	B	_ZdlPv
	NOP	5
L$_ZN7DerivedD0Ev$ret1:
	ADD	B15, 8, B15
	B	L$return$_ZN7DerivedD0Ev
	NOP	5
	ZERO	A4
L$return$_ZN7DerivedD0Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN7DerivedD0Ev)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZN7DerivedC1Ev
_ZN7DerivedC1Ev:
	.weak	_ZN7DerivedC2Ev
_ZN7DerivedC2Ev:
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
	SUB	B15, 8, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A4
	LDW	*A4, A4
	NOP	4
	MVKL	L$_ZN7DerivedC1Ev$ret0, B3
	MVKH	L$_ZN7DerivedC1Ev$ret0, B3
	B	_ZN4BaseC2Ev
	NOP	5
L$_ZN7DerivedC1Ev$ret0:
	ADD	B15, 8, B15
	MVKL	_ZTV7Derived, A4
	MVKH	_ZTV7Derived, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	8, A4
	MVKH	8, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
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
	ZERO	A4
L$return$_ZN7DerivedC1Ev:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN7DerivedC1Ev)
	.ulong	0x83ff0207
	.text
	.text
	.weak	_ZN4BaseC1Ev
_ZN4BaseC1Ev:
	.weak	_ZN4BaseC2Ev
_ZN4BaseC2Ev:
	STW	A15, *B15
	MV	B15, A15
	MVKL	56, B0
	MVKH	56, B0
	SUB	B15, B0, B15
	MVKL	44, A0
	MVKH	44, A0
	SUB	A15, A0, A0
	STW	A4, *A0
	MVKL	_ZTV4Base, A4
	MVKH	_ZTV4Base, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	8, A4
	MVKH	8, A4
	MV	A4, A6
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	ADD	A4, A6, A4
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
	ZERO	A4
L$return$_ZN4BaseC1Ev:
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_ZN4BaseC1Ev)
	.ulong	0x83ff0007
	.text
	.text
_GLOBAL__sub_I_shapes$cpp:
	STW	A15, *B15
	MV	B15, A15
	STW	B3, *-A15(4)
	MVKL	40, B0
	MVKH	40, B0
	SUB	B15, B0, B15
	SUB	B15, 8, B15
	MVKL	_ZL14global_counter, A4
	MVKH	_ZL14global_counter, A4
	MVKL	L$_GLOBAL__sub_I_shapes$cpp$ret0, B3
	MVKH	L$_GLOBAL__sub_I_shapes$cpp$ret0, B3
	B	_ZN7CounterC1Ev
	NOP	5
L$_GLOBAL__sub_I_shapes$cpp$ret0:
	ADD	B15, 8, B15
	SUB	B15, 8, B15
	MVKL	_ZN7CounterD1Ev, A4
	MVKH	_ZN7CounterD1Ev, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	_ZL14global_counter, A4
	MVKH	_ZL14global_counter, A4
	SUB	B15, 8, B15
	STW	A4, *B15
	MVKL	__dso_handle, A4
	MVKH	__dso_handle, A4
	MV	A4, A6
	LDW	*B15, B4
	NOP	4
	ADD	B15, 8, B15
	LDW	*B15, A4
	NOP	4
	ADD	B15, 8, B15
	MVKL	L$_GLOBAL__sub_I_shapes$cpp$ret1, B3
	MVKH	L$_GLOBAL__sub_I_shapes$cpp$ret1, B3
	B	__cxa_atexit
	NOP	5
L$_GLOBAL__sub_I_shapes$cpp$ret1:
	ADD	B15, 8, B15
	ZERO	A4
L$return$_GLOBAL__sub_I_shapes$cpp:
	LDW	*-A15(4), B3
	MV	A15, B15
	LDW	*A15, A15
	NOP	4
	B	B3
	NOP	5
	.sect	".c6xabi.exidx:.text"
	.align	4
	.ulong	$EXIDX_FUNC(_GLOBAL__sub_I_shapes$cpp)
	.ulong	0x83ff0207
	.text
	.sect	".init_array"
	.align	4
	.word	_GLOBAL__sub_I_shapes$cpp
	.global	__c6xabi_unwind_cpp_pr3
	.symdepend	"__c6xabi_unwind_cpp_pr3", ".c6xabi.exidx:.text"
	.ref	_ZTVN10__cxxabiv117__class_type_infoE
	.ref	_ZTVN10__cxxabiv120__si_class_type_infoE
	.ref	_ZdlPv
	.ref	__c6xabi_divlli
	.ref	__c6xabi_remlli
	.ref	__cxa_allocate_exception
	.ref	__cxa_atexit
	.ref	__cxa_begin_catch
	.ref	__cxa_end_catch
	.ref	__cxa_end_cleanup
	.ref	__cxa_free_exception
	.ref	__cxa_throw
	.ref	__dso_handle
	.ref	free
	.ref	malloc
	.ref	memcmp
	.ref	memcpy
	.ref	printf
	.ref	strchr
	.ref	strcmp
	.ref	strlen
