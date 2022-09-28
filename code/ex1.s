	seti R0, #0
	seti R1, #1
	seti R2, #2
L1:
	goto_ge L2, R0, R2
	add R0, R0, R1
	goto L1
L2:
	stop