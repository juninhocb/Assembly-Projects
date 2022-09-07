 
   MOV AL , 6 ; valor que voce quer testar
           
   ;CMP AL ,0
   
  ; JE procura_0  
   
   CMP AL ,1
   
   JE procura_1
   
   CMP AL ,2
   
   JE procura_2
   
   CMP AL ,3
   
   JE procura_3
   
   CMP AL ,4
   
   JE procura_4
   
   CMP AL ,5
   
   JE procura_5
   
   CMP AL ,6
   
   JE procura_6
   
   CMP AL ,7
   
   JE procura_7        
   
 ;procura_0:
 
 
  ; OR BX , 11111110b 
 
   ;CMP BX , 1EFh   

   ;JE falso
 
   ;MOV CL , 1  
  
   ;JMP fim
   
 procura_1:
   
   MOV BL , N1
 
   OR BL , 11111101b 
 
   CMP BL , 0FDh   

   JE falso
 
   MOV CL , 1 
  
   JMP fim
       
 procura_2:
   
   MOV BL , N1
 
   OR BL , 11111011b 
 
   CMP BL , 0FBh   

   JE falso
 
   MOV CL , 1 
  
   JMP fim
   
 procura_3:
   
   MOV BL , N1
 
   OR BL , 11110111b 
 
   CMP BL , 0F7h   

   JE falso
 
   MOV CL , 1 
  
   JMP fim  
         
 procura_4:
   
   MOV BL , N1
 
   OR BL , 11101111b 
 
   CMP BL , 0EFh   

   JE falso
 
   MOV CL , 1 
  
   JMP fim
   
  procura_5:
   
   MOV BL , N1
 
   OR BL , 11011111b 
 
   CMP BL , 0DFh   

   JE falso
 
   MOV CL , 1 
  
   JMP fim 
   
     procura_6:
   
   MOV BL , N1
 
   OR BL , 10111111b 
 
   CMP BL , 0BFh   

   JE falso
 
   MOV CL , 1 
  
   JMP fim 
   
     procura_7:
   
   MOV BL , N1
 
   OR BL , 01111111b 
 
   CMP BL , 07Fh   

   JE falso
 
   MOV CL , 1 
  
   JMP fim 
 
 falso: 
 
   MOV CL , 0    
   
   
 fim: 
 
   HLT  
   
   
   N1 DB 00101111b
                        
   N2 DB 00, 01, 02, 03 , 04,  05, 06, 07 ; lista para comparar o valor de SI 
    
   
   