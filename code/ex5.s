    @ Binaries values
    SETI R0, #0         @ Register at 0
    SETI R1, #1         @ Register at 1

    @ Pointor coord
    SETI R2, #0         @ X value of the pointor
    SETI R3, #0         @ Y value of the pointor


    @ Variables
    SETI R4, #0         @ Value at pointor
    SETI R5, #0         @ Sum of the neighbor's value
    SETI R6, #0         @ Neighbor value

    @ Constant
    SETI R7, #8         @ Value of the last neighbor index

    @ Map borders
    INVOKE 1, 8, 9
    SUB R8, R8, R1      @ X border
    SUB R9, R9, R1      @ Y border


L1:
    INVOKE 3, 2, 3      @ Place the pointor
    INVOKE 5, 4, 0      @ R4 := pointed
    GOTO_EQ L3, R4, R1  @ L3 : pointed = 1
    
    SETI R5, #0         @ Reset the sum value

    INVOKE 5, 6, 1
    ADD R5, R5, R6      
    INVOKE 5, 6, 2      
    ADD R5, R5, R6      
    INVOKE 5, 6, 3      
    ADD R5, R5, R6      
    INVOKE 5, 6, 4      
    ADD R5, R5, R6      
    INVOKE 5, 6, 5      
    ADD R5, R5, R6      
    INVOKE 5, 6, 6      
    ADD R5, R5, R6      
    INVOKE 5, 6, 7      
    ADD R5, R5, R6      
    INVOKE 5, 6, 8
    ADD R5, R5, R6      
    GOTO_EQ L4, R5, R0  @ L4 : Sum = 0
    INVOKE 4, 1, 0      @ Turn the current case at 1
    GOTO L4

L3 :
    INVOKE 4, 0, 0      @ Turn the pointed case at 0
    
L4:
    ADD R2, R2, R1      @ Increment X
	GOTO_LE L1, R2, R8  @ L1 : X <= border

L5:
    SETI R2, #0         @ Reset X
	ADD R3, R3, R1      @ Increment Y
	GOTO_LE L1, R3, R9  @ L1 : Y <= border
	STOP