 
      MOV AH , 0Ah

 inicio:  

      MOV AL , [0120h]

      ADD AL , 01h   
      
      CMP AL , AH

      JE conversao               
                     
      MOV [0120h] , AL

      JMP inicio  
      
 conversao:
     
      ADD AL , 06h
      
      ADD AH , 010h
      
      MOV [0120h] , AL
      
      JMP inicio
 
 fim:  
  
  HLT