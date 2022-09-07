 
 CHAVES EQU 20h 
     
     CALL fator1_mul
     
     MOV CL , 060h
     
     tempo_escolha:
     
     DEC CL 
     
     LOOP tempo_escolha
     
     CALL fator2_mul
     
     MOV AX , 0 
     
     MOV CX , VAR1
     
     MOV BX , VAR2 
     
     CALL sub_mul
     
     JMP fim
     
 fator1_mul PROC 
    
    POP SALVA_IP
    
    IN AX , CHAVES    
    
    AND AX , 01110111b
      
    MOV VAR1 , AX 
           
    PUSH SALVA_IP
    
    RET
    
 fator1_mul ENDP
 
   fator2_mul PROC 
    
    POP SALVA_IP
    
    IN AX , CHAVES    
    
    AND AX , 01110111b
      
    MOV VAR2 , AX 
           
    PUSH SALVA_IP
    
    RET
    
 fator2_mul ENDP
 
 
 
 sub_mul PROC
    
     POP SALVA_IP       
 
 somatorio:
 
     ADD AL , BL
     
     DAA 
     
     SUB CL , 1h  
     
     CMP CL , 0h 
     
     JNZ somatorio 
     
     PUSH SALVA_IP
     
     RET
 
 sub_mul ENDP
     

 fim:
   
     HLT
       
      
   
 VAR1 DW 00h ;fator de multiplicacao 
 VAR2 DW 00h ;fator de multiplicacao
 SALVA_IP DW 00h  
   