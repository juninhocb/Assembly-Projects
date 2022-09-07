ORG 100H  
  
  MOV DL , 48D

  CALL REPETE 
  
  MOV AH , 02h
  
  ADD DL , AL
  
  INT 21H  
  
  MOV DL , 48D
  
  CALL REPETE
  
  MOV AH , 02h
  
  ADD DL , AL
  
  INT 21H 
  
  HLT

  REPETE PROC 
  
  MOV AH, 08H
  
  verifica:

  INT 21H   
  
  CMP AL , 30h 
  
  JB verifica 
  
  CMP AL , 39h 
  
  JA verifica
  
  SUB AL , 30h
  
  RET     
  
  REPETE ENDP
   
  
  
  HLT