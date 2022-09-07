
#start=Bancada8086.exe#

 inicio:
    MOV AL , 1  
    
    MOV BH , 2

 repeat:
     
    OUT 22h,AX ; Escreve 16 bits do valor de AX nos LEDs (parte baixa) e da parte alta para o painel.
    
    MUL BH 
    
    CMP AH , 1
    
    JE  inicio
     
    JMP repeat