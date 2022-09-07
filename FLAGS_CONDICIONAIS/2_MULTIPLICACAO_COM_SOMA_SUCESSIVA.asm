     MOV BL , VAR1
     MOV CL , VAR2
     MOV AL , 0
 
 somatorio:
 
     ADD AL , BL
     
     DAA 
     
     SUB CL , 1h  
     
     CMP CL , 0h
     
     JE fim 
     
     JMP somatorio
     

 fim:
   
     HLT
       
      
   
 VAR1 DB 05h ;fator de multiplicacao 
 VAR2 DB 07h ;fator de multiplicacao
   
   