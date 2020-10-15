
;(1) Fibonacci Series

; 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89.....

; r1, and r2 stores two starting  numbers in the Fibonacci series 0 and 1.
; After 10 steps 55 will be stored in r1 and 89 will be stored in r2 i.e. r1=0x37 (equivalent to 55 in decimal) and r2=0x59 (equivalent to 89 in decimal)

;Implementing following code in asm
; r0=10
; r1 = 0
; r2 = 1
;while(r0!=0){
;   r2 = r1 + r2
;   r1 = r2 - r1
;}


	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 

__main FUNCTION
	MOV r1, #0
	MOV r2, #1
	MOV r0, #10

loop CMP r0, #0
	 BLE stop        ; Jump if less than or equal to
     ADD r2, r2, r1
	 SUB r1, r2, r1
	 SUB r0, #1
	 B loop          ; Jump back to loop

stop B stop 		; stop program
     ENDFUNC
     END