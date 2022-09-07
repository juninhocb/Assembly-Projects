                                                                                                                  ORG 100H

   LEA SP,PILHA 
   
   carrega_pilha:
    
   MOV AX , LISTA[SI]
   
   PUSH AX 
    
   ADD SI , 2 
   
   CMP SI , 08
   
   JE seguinte
   
   JMP carrega_pilha 
   
   seguinte:
   
   MOV SI , 0
   
   descarrega_pilha:
   
   POP AX        
   
   MOV LISTA[SI] , AX
   
   ADD SI , 2
   
   CMP SI , 8
   
   JE fim
   
   JMP descarrega_pilha
   
   fim:
   
   HLT
          
ESPACO_PILHA DW 4 DUP (1111H) 
                                                            
PILHA        DB 0FFh          

LISTA DW 1111H,2222H,3333H,4444H 