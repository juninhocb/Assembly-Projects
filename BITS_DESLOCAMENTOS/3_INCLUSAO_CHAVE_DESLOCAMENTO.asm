         
#start=Bancada8086.exe#
   
    
    CHAVES EQU 20h
   
    LEDS EQU 22h
   
    MOV [0120h] , 1h

    
 repeat:

    IN AL , CHAVES
    
    RCR AL , 1 ; Se a chave estiver setada, ativa o flag de Carry
    
    JC subir
    
    MOV AL , [0120h]
    
    ROL AL ,  1 
    
    MOV [0120h] , AL
        
 mostrar_leds:    
    
    OUT LEDS , AX 
    
    MOV CL , 05h
    
 atraso:

    LOOP atraso
    
    JMP repeat
    
 subir:
  
    MOV AL , [0120h]
        
    ROR AL , 1 
    
    MOV [0120h] , AL
    
    JMP mostrar_leds
           
 
                             