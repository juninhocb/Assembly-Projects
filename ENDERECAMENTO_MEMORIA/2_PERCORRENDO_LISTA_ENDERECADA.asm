  LEDS EQU 22h
  
  CHAVES EQU 20h
  
  comeco:
  
  MOV SI , 0
  
  MOV BL , SEQ_LEDS
  
  AND AL , 00000000b
  
  OUT LEDS , AX
  
  inicio:   
  
  MOV AL, SEQ_LEDS[SI]
  
  INC SI 
  
  CMP SI , 0Ah  
  
  JE mostrar_led
   
  CMP AL , BL
  
  JA maior_atual
  
  JMP inicio 
  
  maior_atual:
  
  MOV BL , AL 
  
  jmp inicio
               
  mostrar_led: 
  
  MOV AX , BX
  
  OUT LEDS , AX
  
  HLT
  
  


SEQ_LEDS DB 81H,42H,24H,18H,02H,04H,00H,0FFH,01H,18H