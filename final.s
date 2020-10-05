 	AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
    
    MOV R1,#23 ;input a 
	MOV R2,#10 ;input b
	
lOOP CMP R1,R2 ; 
     SUBGT R1,R1,R2 ;  if a > b then a= a-b
	 SUBLT R2,R2,R1 ; if a < b then b=b-a
	 BNE lOOP  ; if a !=b then loop continous otherwise it goes to stop 
stop B stop 
   ENDFUNC
   END

	   
	   
	
	