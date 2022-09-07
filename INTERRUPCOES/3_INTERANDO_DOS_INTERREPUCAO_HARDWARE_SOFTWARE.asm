      
     ORG 100h 
     
     
     MOV [0120h] , 0
     
     MOV [0122h] , 0
     
     MOV [0124h] , 0
     
     CALL pega_valor
                    
     MOV [0120h] , AL 
                    
     CALL pega_valor
     
     MOV [0122h] , AL
     
     CALL pega_valor 
     
     MOV [0124h] , AL
     
     MOV AX , 0 
     
     ADD AX , [0120h]
     
     ADD AX , [0122h]
     
     ADD AX , [0124h]
     
     MOV BH , 3 
     
     DIV BH     
       
     pega_valor PROC 
     
     MOV AH  , 07h
     
     MOV AL , 00h  
     
     repete:
     
     INT 21h   
     
     CMP AL,30H   ; se for menor que isso, quer dizer que foi uma letra    
    
     JB repete
    
     CMP AL,39H  
    
     JA repete
     
     SUB AL , 30h  
     
     RET
     
     pega_valor ENDP  
      