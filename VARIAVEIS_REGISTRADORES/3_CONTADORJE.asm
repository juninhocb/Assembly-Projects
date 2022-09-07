 
 inicio:  

      MOV AL,[0120h]

      ADD AL,01h   
      
      CMP AL,09h

      JE fim               
                     
      MOV [0120h], AL

      JMP inicio
 
 fim:  
  
  HLT