	seti R0, #0
	seti R1, #1
	seti R2, #0
	seti R3, #0
	seti R4, #9
	seti R5, #0
	goto L1

L1:
	invoke 3, 2, 3
	invoke 5, 5, 3
	goto_eq L2, R5, R1
	goto L3

L2:
	invoke 4, 1, 0

L3:
	add R2, R2, R1
	goto_le L1, R2, R4
	goto L4
	
L4:
	seti R2, #0
	add R3, R3, R1
	goto_le L1, R3, R4
	stop