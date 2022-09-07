    
    ORG 100h

    MOV AX , 00 
    
    MOV ES , AX  ; n pode copiar para ES um valor direto     
    
    MOV ES:[0240H] , offset TRATA90h
    
    MOV ES:[0240H + 2] , CS  
 
    MOV AL , 01 

 
 ROTAC:    
    
    OUT 22H , AL
    
    ROL AL , 1
    
    MOV CX , 10H 
 
 ATRASO:
    
   LOOP ATRASO
    
   JMP ROTAC
   
    
 TRATA90h:   
    
   IN AL , 20h 
   
   MOV CL , 20h ; aumenta o atraso
    
   IRET    
      
  
   
   
     
    
    
       
