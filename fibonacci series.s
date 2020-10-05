   THUMB    
	AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
    MOV R5,#0x20000000;  memory address start 
	MOV R0,#0; initial value 0
    MOV R1,#1; first value 1
    MOV R3,#10; fibonacci series to print 10 numbers
    MOV R4,#0; all values update in r4
    ADD R4,R0,R1; fn= fn-1 +fn-2

LOOP STR R4,[R5],#1
    MOV R0,R1
    MOV R1,R4
    ADD R4,R0,R1
	SUB R3, #1
    CMP R3,#0
    BNE LOOP
    
stop B stop   

   ENDFUNC
   END

	   
	   
	
	
