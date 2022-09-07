   ; saber se o bit "5" eh 1 ou 0 
   
   MOV BL , N1
 
   OR BL , 11101111b ; se o bit 5 for 0, teremos 10h em BL se n for, teremos outro valor
 
   CMP BL , 0EFh   

   JE falso
 
   MOV CL , 1 ;sei la 
  
   JMP fim 
 
 falso: 
 
   MOV CL , 0
   
   
 fim: 
 
   HLT
  
    
   
   
 
 
 
 
 
 
 N1 DB  11001100b ; variavel de teste 