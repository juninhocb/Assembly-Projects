      MOV [0120h] , 1062h  
      
      MOV AX , [0120h]
 
 inicio:                
     
      MOV AL , [0120h]

      ADD AL , 01h 
 
      MOV [0120h] , AL

      JMP inicio 
      
 