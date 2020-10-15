; (2) Largest of three given numbers
; Let there are three numbers in p, q, r. There will be two comparison as shown below

;int p, q, r;
; if (p > q)
;   q=p;
; if (q > r)
;   r=q;

; Storing p, q, r in registers r0, r1 and r2. Result will be stored in r2.

	AREA     appcode, CODE, READONLY
	EXPORT __main
	ENTRY 

__main FUNCTION
	MOV r0, #20
	MOV r1, #15
	MOV r2, #2
	
	CMP r0, r1
	MOVGE r1, r0     
	
	CMP r1, r2
	MOVGE r2, r1     
	
	B stop
	
stop B stop ; stop program
     ENDFUNC
     END
