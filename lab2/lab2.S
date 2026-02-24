.global lab2
.syntax unified
//Numbers for greater or equal
#define A #4
#define B #11
#define C #6
//Numbers for less
#define D #1
#define E #2
#define F #3
//Main function
lab2:
	push {lr}
	//Writing first dataset to registers
	mov r0, A	//R0 = A = 4
	mov r1, B	//R1 = B = 11
	mov r2, C	//R2 = C = 6
	//Calculating the function
	bl function
	//Writing second dataset to registers
	mov r0, D	//R0 = D = 1
	mov r1, E	//R1 = E = 2
	mov r2, F	//R2 = F = 3
	//Calculating the function
	bl function
	pop {pc}
function:
	push { r0-r2, lr }
	mul r3, r0, r1		//R3 = R0 * R1
	cmp r3, #10		
	ITE GE			//R3 >= R2
	orrGE r4, r0, r1	//If TRUE 	R4 = R0 | R1
	movLT r4, r3		//If FALSE 	R4 = R3
	mul r4, r2		//R4 = R4 * R2
	pop { r0-r2, pc }
