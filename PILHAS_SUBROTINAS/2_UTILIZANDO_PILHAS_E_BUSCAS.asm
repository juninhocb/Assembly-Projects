
  LEA SP , PILHA1 ; vai ler o stack pointer da pilha 1 

  MOV [0120h] , SP  ; salva o topo da pilha 1 
  
  CALL empilha1 
  
  MOV AL , 0 
           
  MOV SI , 0
  
  LEA SP , PILHA2  

  MOV [0124h] , SP
  
  CALL empilha2 
  
  CALL carrega_lista2  
  
  MOV AL , 0
  
  MOV SI , 10h
  
  CALL carrega_lista1 
  
  JMP fim
  
   
  
  
  empilha1 PROC 
   
  POP SALVA_IP  
    
  carregar:
  
  MOV AX , LISTA1[SI]
                                        
  PUSH AX   
  
  ADD SI , 2
  
  CMP SI , 10h
  
  JNE carregar
  
  PUSH SALVA_IP     
    
  RET 
  
  empilha1 ENDP  
  
  
  empilha2 PROC
    
  POP SALVA_IP 
    
  carregar2:
  
  MOV AX , LISTA2[SI]
                                        
  PUSH AX   
  
  ADD SI , 2
  
  CMP SI , 010h
  
  JNE carregar2  
  
  PUSH SALVA_IP   
    
  RET 
  
  empilha2 ENDP
  
  carrega_lista2 PROC
  
  POP SALVA_IP
  
  MOV SP , [0120h]
  
  carregaL2:
  
  POP AX 
  
  MOV LISTA2[SI+2] , AX
  
  SUB SI , 2
  
  CMP SI , -2 
  
  JNE carregaL2 
  
  PUSH SALVA_IP
  
  RET
  
  carrega_lista2 ENDP
  
   carrega_lista1 PROC
  
  POP SALVA_IP
  
  MOV SP , [0124h]
  
  carregaL1:
  
  POP AX 
  
  MOV LISTA2[SI+2] , AX
  
  SUB SI , 2
  
  CMP SI , -2 
  
  JNE carregaL1 
  
  PUSH SALVA_IP
  
  RET
  
  carrega_lista1 ENDP
   
 
 fim:
 
 HLT
    







ESPACO_P1  DW 8 DUP (1111h) 
PILHA1 DW 0H
LISTA1 DW 01,02,03,04,05,06,07,08

ESPACO_P2   DW 8 DUP (1111h) 
PILHA2 DW 0H
LISTA2 DW 11h,12h,13h,14h,15h,16h,17h,18h

SALVA_IP DW 00h 