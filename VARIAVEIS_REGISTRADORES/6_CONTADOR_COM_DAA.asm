   
   MOV [0120h] , 0h
   
   MOV BH , 0Ah
   
   inicio: 
   
   MOV AL , [0120h]
   
   ADD AL , 01h  
   
   DAA 
   
   CMP AL , 99h
   
   JE conta_ah
   
   MOV [0120h] , AL
   
   JMP inicio 
  
 conta_ah:
 
   MOV AL , 0 
   
   MOV [0120h] , AL
   
   ADD AH , 01h
   
   CMP AH , 99h
   
   JE fim 
   
   CMP AH , BH 
   
   JE converte_ah
   
   JMP inicio
   
 converte_ah:
   
   ADD AH , 06h  
   
   ADD BH , 010h
   
   JMP inicio
   
 fim:
 
  HLT  
   
   