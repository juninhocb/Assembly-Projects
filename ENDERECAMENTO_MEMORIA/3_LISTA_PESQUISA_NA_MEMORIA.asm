  
    comeco:
  
  MOV SI , 1
  
  MOV BL , LISTA
  
  inicio:   
  
  MOV AL, LISTA[SI]
  
  INC SI 
  
  CMP SI , 0Ah  
  
  JE fim 
   
  CMP AL , BL
  
  JB trocar_pos
  
  JMP inicio 
  
  trocar_pos:
                
  MOV BL , LISTA[SI-2]
                
  MOV LISTA[SI-1] , BL
  
  MOV LISTA [SI-2] , AL
  
  jmp inicio
               
  fim: 
  
  MOV AL , LISTA[0Ah]
  
  HLT
  
  

LISTA DB 81H,42H,24H,03H,02H,04H,00H,0FFH,01H,18H