      MOV [0120h] , 0h
      
      MOV AX , 0
 
 inicio:                
     
      MOV AL , [0120h]

      ADD AL , 01h 
      
      CMP AL , 09h
      
      JE conta_dezena

      MOV [0120h] , AL

      JMP inicio 
      
 conta_dezena:
      
      MOV AL , 0h
      
      MOV [0120h] , AL
      
      ADD AH , 01h
      
      CMP AX , 0Ah
      
      JE fim
      
      JMP inicio
      
      
 fim:
 
      HLT