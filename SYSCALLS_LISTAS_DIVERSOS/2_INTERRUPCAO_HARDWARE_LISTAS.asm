  ORG 100h   ; nao esquecer disso para a interrupcao funcionar!
  
  LEDS EQU 22h
  
  CHAVES EQU 20h     
  
  MOV AX , 00
  
  MOV ES , AX
  
  MOV ES:[0240H] , OFFSET TRATA90H
  
  MOV ES:[0240H + 2] , CS
  
  comeco:
  
  MOV SI , 0
  
  inicio:   
  
  MOV AL, SEQ_LEDS[SI]
  
  OUT LEDS , AX
  
  INC SI 
  
  MOV CL , 10H  
  
  atraso:  
  
  LOOP atraso
  
  CMP SI , 0Ch 
  
  JE comeco
  
  JMP inicio ;jmp infinito
  
  TRATA90H: 
  
  
  IN AL , 20h
  
  MOV SEQ_LEDS , AL 
  
  IRET
  
  


SEQ_LEDS DB 81H,42H,24H,18H,00H,0FFH,00H,0FFH,00H,18H,24H,42H