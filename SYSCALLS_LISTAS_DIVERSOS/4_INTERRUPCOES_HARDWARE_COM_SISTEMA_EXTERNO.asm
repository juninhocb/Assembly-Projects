 
 
  ORG 100h
  
  CALL BASE_MAIOR 
  
  MOV GUARDA2 , AL
  
  CALL BASE_MENOR 
  
  MOV GUARDA1 , AL
  
  CALL ALTURA    
  
  MOV BH , AL
  
  MOV AL , GUARDA1
  
  ADD AL , GUARDA2 
  
  MUL BH
  
  MOV BH , 2
  
  DIV BX 
  
  HLT
  
  
  
  
  BASE_MAIOR PROC 
    
  MOV AH ,  08h
  
  VERIFICA:
  
  INT 21H
  
  CMP AL , 30h 
  
  JB VERIFICA
  
  CMP AL , 39h
  
  JA VERIFICA
  
  
  MOV AH , 02h
  
  MOV DL , AL 
  
  INT 21h
  
  SUB AL , 30h 
  
  RET 
  
  BASE_MAIOR ENDP 
  
  BASE_MENOR PROC 
    
  MOV AH ,  08h
  
  VERIFICA2:
  
  INT 21H
  
  CMP AL , 30h 
  
  JB VERIFICA2
  
  CMP AL , 39h
  
  JA VERIFICA2
  
  
  MOV AH , 02h
  
  MOV DL , AL 
  
  INT 21h
  
  SUB AL , 30h 
  
  RET 
  
  BASE_MENOR ENDP
  
  ALTURA PROC 
    
  MOV AH ,  08h
  
  VERIFICA3:
  
  INT 21H
  
  CMP AL , 30h 
  
  JB VERIFICA3
  
  CMP AL , 39h
  
  JA VERIFICA3
  
  
  MOV AH , 02h
  
  MOV DL , AL 
  
  INT 21h
  
  SUB AL , 30h 
  
  RET 
  
  ALTURA ENDP
  
  
 GUARDA1 DB 00h
 
 GUARDA2 DB 00h 
    
    
  
  