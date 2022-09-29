	@ Binaries values
	SETI R0, #0
	SETI R1, #1
	
	@ Map borders (minus 1)
	INVOKE 1, 8, 9
	SUB R8, R8, R1
	SUB R9, R9, R1
	
	INVOKE 3, 0, 0
	INVOKE 4, 1, 0
	INVOKE 3, 0, 9
	INVOKE 4, 1, 0
	INVOKE 3, 8, 9
	INVOKE 4, 1, 0
	INVOKE 3, 8, 0
	INVOKE 4, 1, 0

	STOP
