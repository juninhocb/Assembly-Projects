 
 ORG 100h
  
 MOV DL , 0
 
 MOV BL , 0     
 
 MOV [0120h] , 0
 
 MOV [0122h] , 0
 
 MOV [0124h] , 0   
 
 REPETE:
  
 CALL VER_NOTA  
 
 MOV [0120h] , AL 
 
 ADD  AL , BL
 
 DAA  
 
 MOV AL , [0120h]
 
 CMP AL , 5
 
 JA SOMA_5
 
 MOV BL , AL
 
 MOV AL , [0124h]   ;ta pulando essa instrucao ?????????
 
 CONTINUA:
 
 ADD AL , 01h 
 
 DAA
 
 CMP AL , 010d
 
 JE PROXIMO
 
 MOV [0124h] , AL 
 
 JMP REPETE         

 VER_NOTA PROC
    
 MOV AH ,  08h
 
 VERIFICA:
 
 INT 21H
 
 CMP AL , 30h
 
 JB VERIFICA
 
 CMP AL , 39h
 
 JA VERIFICA
 
 MOV AH , 02h 
 
 MOV DL , AL   
 
 INT 21H        ; interrupcao 21h de 2, mostra o valor contido em DL
 
 SUB AL , 30h
 
 RET  
 
 VER_NOTA ENDP
 
 MOSTRAR_MSG:
 
 LEA DX , MSG 
 
 MOV AH , 09H
 
 INT 21H
 
 JMP FIM
 
 SOMA_5:
 
 ADD [0122h] , 1
 
 JMP CONTINUA 
 
 
 PROXIMO:
 
 MOV AL , BL
 
 MOV BL , 10
 
 DIV BL
 
 MOV DL , [0122h]
 
 CMP DL , 0
 
 JE MOSTRAR_MSG 
 
 FIM:
 
 HLT 
 
 MSG DB  "Nao ha nenhum aluno com nota acima de 5 "  "$"