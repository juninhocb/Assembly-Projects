  LEDS EQU 22h
  
  CHAVES EQU 20h
  
  comeco:
  
  MOV SI , 0
  
  inicio:   
  
  MOV AL, SEQ_LEDS[SI]
  
  OUT LEDS , AX
  
  INC SI 
  
  CMP SI , 07h
  
  JE seguinte
  
  JMP inicio 
  
  seguinte:
  
  MOV AL , 0FFh 
  
  OUT LEDS , AX
  
  MOV AL , 00h
  
  OUT LEDS , AX 
  
  MOV AL , 18h
  
  OUT LEDS , AX
  
  MOV AL , 24h 
  
  OUT LEDS , AX 
  
  MOV AL , 42h
  
  OUT LEDS , AX  
  
  JMP comeco
  
  


SEQ_LEDS DB 81H,42H,24H,18H,00H,0FFH,00h