     MOV BL , VAR1
     MOV CL , VAR2
     MOV AL , 0  
     
     CALL sub_mul
     
     JMP fim
     
 sub_mul PROC
    
     POP SALVA_IP       
 
 somatorio:
 
     ADD AL , BL
     
     DAA 
     
     SUB CL , 1h  
     
     CMP CL , 0h 
     
     JNZ somatorio 
     
     PUSH SALVA_IP
     
     RET
     

 fim:
   
     HLT
       
      
   
 VAR1 DB 05h ;fator de multiplicacao 
 VAR2 DB 07h ;fator de multiplicacao
 SALVA_IP DW 00h  
   