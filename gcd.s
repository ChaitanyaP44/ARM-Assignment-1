
; (3) GCD of two given numbers
; Result stores in r1
	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 
 
__main FUNCTION
	MOV r1, #27  ;r1 stores decimal 27 and r2 stores 45 so GCD should be 9 i.e. 0x09 in hex
	MOV r2, #45 
	
loop CMP r1, r2
	 ITE GT
	 SUBGT r1, r1, r2	; result is 0x09 which will be stored in r1
	 SUBLE r2, r2, r1   
	 BNE loop
	
stop B stop ; stop program
     ENDFUNC
     END