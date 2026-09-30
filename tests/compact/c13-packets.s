; c13-packets: written by gen.py - do not edit
	.text
	.global f
f:
	MV .D1 A0, A3
	|| MV .D2 B0, B5
	MVK .S1 0, A1
	|| MVK .L2 0, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[0], A5
	|| STW .D2T2 B5, *+B6[0]
	|| MVK .S1 1000, A7
	MV .D1 A1, A4
	|| MV .D2 B1, B6
	MVK .S1 1, A1
	|| MVK .L2 1, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[1], A5
	|| STW .D2T2 B5, *+B6[1]
	|| MVK .S1 1000, A7
	MV .D1 A2, A5
	|| MV .D2 B2, B7
	MVK .S1 2, A1
	|| MVK .L2 2, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[2], A5
	|| STW .D2T2 B5, *+B6[2]
	|| MVK .S1 1000, A7
	MV .D1 A3, A6
	|| MV .D2 B3, B0
	MVK .S1 3, A1
	|| MVK .L2 3, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[3], A5
	|| STW .D2T2 B5, *+B6[3]
	|| MVK .S1 1000, A7
	MV .D1 A4, A7
	|| MV .D2 B4, B1
	MVK .S1 4, A1
	|| MVK .L2 4, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[4], A5
	|| STW .D2T2 B5, *+B6[4]
	|| MVK .S1 1000, A7
	MV .D1 A5, A0
	|| MV .D2 B5, B2
	MVK .S1 5, A1
	|| MVK .L2 5, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[5], A5
	|| STW .D2T2 B5, *+B6[5]
	|| MVK .S1 1000, A7
	MV .D1 A6, A1
	|| MV .D2 B6, B3
	MVK .S1 6, A1
	|| MVK .L2 6, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[6], A5
	|| STW .D2T2 B5, *+B6[6]
	|| MVK .S1 1000, A7
	MV .D1 A7, A2
	|| MV .D2 B7, B4
	MVK .S1 7, A1
	|| MVK .L2 7, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[7], A5
	|| STW .D2T2 B5, *+B6[7]
	|| MVK .S1 1000, A7
	MV .D1 A0, A3
	|| MV .D2 B0, B5
	MVK .S1 8, A1
	|| MVK .L2 8, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[8], A5
	|| STW .D2T2 B5, *+B6[8]
	|| MVK .S1 1000, A7
	MV .D1 A1, A4
	|| MV .D2 B1, B6
	MVK .S1 9, A1
	|| MVK .L2 9, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[9], A5
	|| STW .D2T2 B5, *+B6[9]
	|| MVK .S1 1000, A7
	MV .D1 A2, A5
	|| MV .D2 B2, B7
	MVK .S1 10, A1
	|| MVK .L2 10, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[10], A5
	|| STW .D2T2 B5, *+B6[10]
	|| MVK .S1 1000, A7
	MV .D1 A3, A6
	|| MV .D2 B3, B0
	MVK .S1 11, A1
	|| MVK .L2 11, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[11], A5
	|| STW .D2T2 B5, *+B6[11]
	|| MVK .S1 1000, A7
	MV .D1 A4, A7
	|| MV .D2 B4, B1
	MVK .S1 12, A1
	|| MVK .L2 12, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[12], A5
	|| STW .D2T2 B5, *+B6[12]
	|| MVK .S1 1000, A7
	MV .D1 A5, A0
	|| MV .D2 B5, B2
	MVK .S1 13, A1
	|| MVK .L2 13, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[13], A5
	|| STW .D2T2 B5, *+B6[13]
	|| MVK .S1 1000, A7
	MV .D1 A6, A1
	|| MV .D2 B6, B3
	MVK .S1 14, A1
	|| MVK .L2 14, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[14], A5
	|| STW .D2T2 B5, *+B6[14]
	|| MVK .S1 1000, A7
	MV .D1 A7, A2
	|| MV .D2 B7, B4
	MVK .S1 15, A1
	|| MVK .L2 15, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[15], A5
	|| STW .D2T2 B5, *+B6[15]
	|| MVK .S1 1000, A7
	MV .D1 A0, A3
	|| MV .D2 B0, B5
	MVK .S1 16, A1
	|| MVK .L2 0, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[0], A5
	|| STW .D2T2 B5, *+B6[0]
	|| MVK .S1 1000, A7
	MV .D1 A1, A4
	|| MV .D2 B1, B6
	MVK .S1 17, A1
	|| MVK .L2 1, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[1], A5
	|| STW .D2T2 B5, *+B6[1]
	|| MVK .S1 1000, A7
	MV .D1 A2, A5
	|| MV .D2 B2, B7
	MVK .S1 18, A1
	|| MVK .L2 2, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[2], A5
	|| STW .D2T2 B5, *+B6[2]
	|| MVK .S1 1000, A7
	MV .D1 A3, A6
	|| MV .D2 B3, B0
	MVK .S1 19, A1
	|| MVK .L2 3, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[3], A5
	|| STW .D2T2 B5, *+B6[3]
	|| MVK .S1 1000, A7
	MV .D1 A4, A7
	|| MV .D2 B4, B1
	MVK .S1 20, A1
	|| MVK .L2 4, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[4], A5
	|| STW .D2T2 B5, *+B6[4]
	|| MVK .S1 1000, A7
	MV .D1 A5, A0
	|| MV .D2 B5, B2
	MVK .S1 21, A1
	|| MVK .L2 5, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[5], A5
	|| STW .D2T2 B5, *+B6[5]
	|| MVK .S1 1000, A7
	MV .D1 A6, A1
	|| MV .D2 B6, B3
	MVK .S1 22, A1
	|| MVK .L2 6, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[6], A5
	|| STW .D2T2 B5, *+B6[6]
	|| MVK .S1 1000, A7
	MV .D1 A7, A2
	|| MV .D2 B7, B4
	MVK .S1 23, A1
	|| MVK .L2 7, B2
	|| ADD .L1 A1, A2, A3
	LDW .D1T1 *+A4[7], A5
	|| STW .D2T2 B5, *+B6[7]
	|| MVK .S1 1000, A7
	B B3
	NOP 5
