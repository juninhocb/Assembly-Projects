 LEDS EQU 022h
 
 CHAVES EQU 20h 
 
   MOV BL , 0FFh

 inicio:     
 
   MOV AL  , 10000000b
 
   OUT LEDS , AL ;mostrar que o elevador comeca no oitavo andar
 
   IN AL , CHAVES
 
   TEST AL , BL ; se todas estiverem setadas entao vamos mover o elevador! (Exceto 8)  
 
   JNZ move_andar ; alguma chave foi fechada  
 
   JMP inicio
                                         
 move_andar:
   
   MOV [0120h] , AL
   
   OR AL , 11111110b
 
   CMP AL , 11111110b ; se o 1 andar chamar, move o elevador pra la
   
   JNZ proximo  
   
   MOV AL , 01h
   
   OUT LEDS , AL
   
   MOV AL , [0120h]
   
 proximo:  
 
   MOV [0120h] , AL
   
   OR AL , 11111101b
   
   CMP AL , 11111101b 
   
   JNZ proximo_1
   
   MOV AL , 02h
   
   OUT LEDS , AL
   
   MOV AL , [0120h]
   
 proximo_1:  
 
   MOV [0120h] , AL
   
   OR AL , 11111011b
 
   CMP AL , 11111011b
   
   JNZ proximo_2
   
   MOV AL , 04h
   
   OUT LEDS , AL 
   
   MOV AL , [0120h]
   
 proximo_2:          
 
   MOV [0120h] , AL
   
   OR AL , 11110111b
   
   CMP AL , 11110111b
   
   JNZ proximo_3
   
   MOV AL , 08h
   
   OUT LEDS , AL 
   
   MOV AL , [0120h]
   
 proximo_3:     
 
   MOV [0120h] , AL
   
   OR AL , 11101111b
 
   CMP AL , 11101111b
   
   JNZ proximo_4
   
   MOV AL , 10h
   
   OUT LEDS , AL 
   
   MOV AL , [0120h]
   
 proximo_4:     
 
   MOV [0120h] , AL
   
   OR AL , 11011111b
   
   CMP AL , 11011111b
   
   JNZ proximo_5
   
   MOV AL , 20h
   
   OUT LEDS , AL 
   
   MOV AL , [0120h]
   
 proximo_5:   
 
   MOV [0120h] , AL
   
   OR AL , 10111111b
 
   CMP AL , 10111111b
   
   JNZ proximo_6
   
   MOV [0120h] , AL 
   
   MOV AL , 40h
   
   OUT LEDS , AL
   
   MOV AL , [0120h]
   
 proximo_6:
 
   JMP inicio
   
   
   
   
   
   
   
   
   
   
   
   
   
   
 
   
   
   
   
   
    
   
   
   
    
   
                                          
 
 
                                          
  
 
 