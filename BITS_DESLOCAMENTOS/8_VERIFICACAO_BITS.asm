  
   
   MOV AL , 1
   
   JMP procura_1 
  
  repete:
   
   MOV AL , 2  
   
   JMP procura_2
   
  repete_1:  
   
   MOV AL , 3   
   
   JMP procura_3
   
  repete_2: 
   
   MOV AL , 4   
   
   JMP procura_4
   
  repete_3:
    
   MOV AL , 5   
   
   JMP procura_5
   
  repete_4: 
   
   MOV AL , 6   
   
   JMP procura_6
   
  repete_5: 
   
   MOV AL , 7   
   
   JMP procura_7
         
   
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
 
   ADD CL , 1 
  
   JMP repete
       
 procura_2:
   
   MOV BL , N1
 
   OR BL , 11111011b 
 
   CMP BL , 0FBh   

   JE falso
 
   ADD CL , 1
  
   JMP repete_1
   
 procura_3:
   
   MOV BL , N1
 
   OR BL , 11110111b 
 
   CMP BL , 0F7h   

   JE falso
 
   ADD CL , 1 
  
   JMP repete_2  
         
 procura_4:
   
   MOV BL , N1
 
   OR BL , 11101111b 
 
   CMP BL , 0EFh   

   JE falso
 
   MOV CL , 1 
  
   JMP repete_3
   
  procura_5:
   
   MOV BL , N1
 
   OR BL , 11011111b 
 
   CMP BL , 0DFh   

   JE repete_4
 
   MOV CL , 1 
  
   JMP fim 
   
     procura_6:
   
   MOV BL , N1
 
   OR BL , 10111111b 
 
   CMP BL , 0BFh   

   JE falso
 
   MOV CL , 1 
  
   JMP repete_5 
   
     procura_7:
   
   MOV BL , N1
 
   OR BL , 01111111b 
 
   CMP BL , 07Fh   

   JE falso
 
   MOV CL , 1 
  
   JMP fim
 
 falso: 
 
   ADD DL , 1
   
   JMP repete
   
 falso_1:    
 
   ADD DL , 1
   
   JMP repete_1 
   
 falso_2: 
 
   ADD DL , 1
   
   JMP repete_2
   
 falso_3:    
 
   ADD DL , 1
   
   JMP repete_3
  
 falso_4: 
 
   ADD DL , 1
   
   JMP repete_4
   
 falso_5:    
 
   ADD DL , 1
   
   JMP repete_5
         
 falso_6:    
 
   ADD DL , 1
     
   
 fim: 
 
   HLT  
   
   
   N1 DB 00101111b
                        
   N2 DB 00, 01, 02, 03 , 04,  05, 06, 07 ; lista para comparar o valor de SI 
    
   
   