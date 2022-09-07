 
      MOV BL , 0Ah
      
      MOV BH , 0Ah
      
 inicio:  

      MOV AL , [0120h]

      ADD AL , 01h 
      
      CMP AL , 99h
      
      JE conta_ah  
      
      CMP AL , BL

      JE conversao               
                     
      MOV [0120h] , AL

      JMP inicio  
      
 conversao:
     
      ADD AL , 06h
      
      ADD BL , 010h
      
      MOV [0120h] , AL
      
      JMP inicio 
 
 conta_ah:     
 
      MOV AL , 00h 
      
      MOV BL , 0Ah
      
      MOV [0120h] , AL
      
      ADD AH , 01h 
      
      CMP BH , 99h
      
      JE fim  
      
      CMP AH , BH
      
      JE converte_b
      
      JMP inicio  
      
 converte_b:
      
      ADD AH , 06h
      
      ADD BH , 010h
      
      JMP inicio
      
      
      
 
 fim:  
  
  HLT