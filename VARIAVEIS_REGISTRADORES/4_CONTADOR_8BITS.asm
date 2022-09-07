  MOV CL , 0 
  
  MOV [0120h], 10h
 
 inicio:   
     

      MOV AL,[0120h]

      ADD AL,01h   
      
      CMP AL, LISTA

      JE conversao               
                     
      MOV [0120h], AL

      JMP inicio
 
 conversao:
 ADD CL , 1
 
 CMP CL , 0Ah
 
 JE fim
 
 ADD AL , 7
 
 MOV [0120h], AL
 
 JMP inicio

 fim:  
  
  HLT           
  
  LISTA DB 09h,19h,29h,39h,49h, 59h,69h,79h,89h,99h     ; porque nao leu aqui.. 