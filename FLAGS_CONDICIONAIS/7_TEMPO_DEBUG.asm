
    MOV [0120h] , 0h
    
    MOV CL , 30h
    
 inicia_inicio: 
   
    DEC CL
    
    LOOP inicia_inicio 
    
    MOV [0120h] , 48h
      
     
 inicio:   
    
    MOV AL , [0120h]
  
    ADD AL , 1   
    
    DAA  
    
    CMP AL , 57h
    
    JE mostra_maiuscula
  
    MOV [0120h] , AL
    
    JMP inicio
    
 mostra_maiuscula:  
  
    MOV [0120h] , 65h
    
 contador:
 
    MOV AL , [0120h]
    
    ADD AL , 1
    
    DAA
    
    CMP AL , 90h
    
    JE mostra_minuscula
    
    MOV [0120h] , AL
    
    JMP contador
    
 mostra_minuscula:
 
    MOV [0120h] , 97h
    
 contador_2:
    
    MOV AL , [0120h]
    
    ADD AL , 1 
    
    DAA
    
    CMP AL , 99h
    
    JE  final
    
    MOV [0120h] , AL
    
    JMP contador_2
    
 final:
 
    MOV [0120h] , 0
    
    MOV AH , 1
       
 contador_3:
 
    MOV AL , [0120h]
    
    ADD AL , 1
    
    DAA 
    
    CMP AL , 22h
    
    JE fim
    
    MOV [0120h] , AL
    
    JMP contador_3    
    
 fim:
     
     HLT 
    
    






    