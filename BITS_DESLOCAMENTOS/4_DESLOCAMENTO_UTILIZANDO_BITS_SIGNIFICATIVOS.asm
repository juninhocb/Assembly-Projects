 CHAVES EQU 20h 
 
 LEDS EQU 22h 

 teste_condicao:

    IN AL , CHAVES
 
    TEST AL , 80h
 
    JNZ muda_rotacao
    
    MOV [0120h] , AL 
    
    MOV BL , 0 
    
  
 inicio:    
    
    MOV AL , [0120h]
    
    OUT LEDS , AL   
    
    RCL AL , 1 
    
    AND AL , 01111111b
    
    MOV [0120h] , AL 
    
    CMP BL , 5 ; faz uma repeticao de 4 vezes antes de testar a nova condicao
    
    JE teste_condicao 
    
    ADD BL , 1 
    
    JMP inicio
 
 
 
 
 muda_rotacao:      
 
    MOV AL , [0120h]
 
    OUT LEDS , AL
 
    RCR AL , 1         
    
    AND AL , 01111111b
    
    MOV [0120h] , AL
    
    CMP BL , 5 
    
    JE teste_condicao 
    
    ADD BL , 1
    
    JMP muda_rotacao 
 
    
 
 