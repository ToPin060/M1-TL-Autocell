	seti R0, #0
	seti R1, #1
	seti R2, #9
	
	invoke 3, 0, 0
	invoke 4, 1, 0
	invoke 3, 0, 2
	invoke 4, 1, 0
	invoke 3, 2, 2
	invoke 4, 1, 0
	invoke 3, 2, 0
	invoke 4, 1, 0

	stop
