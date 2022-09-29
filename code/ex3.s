	@ Binaries values
	SETI R0, #0
	SETI R1, #1

	@ Pointor coord
	SETI R2, #0
	SETI R3, #0
	
	@ Map borders (minus 1)
	INVOKE 1, 8, 9
	SUB R8, R8, R1
	SUB R9, R9, R1

L1:
	INVOKE 3, 2, 3
	INVOKE 4, 1, 0
	ADD R2, R2, R1
	GOTO_LE L1, R2, R8
	GOTO L2
	
L2:
	SETI R2, #0
	ADD R3, R3, R1
	GOTO_LE L1, R3, R9
	STOP