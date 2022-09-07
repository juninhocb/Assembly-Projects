    
    ORG 100h

    MOV AX , 00 
    
    MOV ES , AX  ; n pode copiar para ES um valor direto     
    
    MOV ES:[0244H] , offset TRATA91h
    
    MOV ES:[0244H + 2] , CS  
    
    MOV ES:[0248H] , offset TRATA92h
    
    MOV ES:[0248H + 2] , CS
 
    MOV AL , 01 
    
    MOV BL , 00
 
 ROTAC:    
    
    OUT 22H , AL
    
    ROL AL , 1
    
     CMP BL , 1
    
    JE ROTAC2
    
    MOV CX , 10H 
 
 ATRASO:
    
   LOOP ATRASO
    
   JMP ROTAC
 
 
 ROTAC2: 
    
   OUT 22H , AL
    
   ROR AL , 1  
   
   CMP BL , 2
   
   JE ROTAC 
    
   MOV CX , 10H  
 
 ATRASO2:
    
   LOOP ATRASO2
    
   JMP ROTAC2    
    
 TRATA91h:   
    
   MOV BL , 1 
    
   IRET    
   
 TRATA92h:
             
   MOV BL , 2 
   
   IRET
      
  
   
   
     
    
    
       
