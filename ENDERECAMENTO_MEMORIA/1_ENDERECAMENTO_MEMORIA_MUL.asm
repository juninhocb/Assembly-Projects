  LEDS EQU 22h
  
  CHAVES EQU 20h
  
  comeco:
  
  MOV SI , 0
  
  inicio:   
  
  MOV AL, SEQ_LEDS[SI]
  
  OUT LEDS , AX
  
  INC SI 
  
  CMP SI , 0Ch
  
  JE comeco
  
  JMP inicio ;jmp infinito
  
  


SEQ_LEDS DB 81H,42H,24H,18H,00H,0FFH,00H,0FFH,00H,18H,24H,42H