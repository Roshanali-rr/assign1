 	AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
    
	MOV R1,#10; input a AND R4 register holds the largest of the three numbers
	MOV R2,#15; input b
	MOV R3,#8;  input c
	
LOOP CMP R1,R2
	BGE LOOP1
	BLE LOOP2
	B stop
	
LOOP1 CMP R1,R3
      BLE LOOP3
	  MOV R4, R1 ; if a largest then it is moved to r4
	  B stop
	  
LOOP2 CMP R2,R3
      BLE LOOP3
	  MOV R4,R2
	  B stop
	  
LOOP3 MOV R4,R3
      B stop
	  
stop B stop 
   ENDFUNC
   END

	   
	   
	
	
