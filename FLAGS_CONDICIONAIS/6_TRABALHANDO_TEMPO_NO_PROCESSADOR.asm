  org 100h 
  
  
  CONTADOR:
    ADD AL , 1
 
    CMP AL, 30h 
    
    JB contador 
    
    CMP AL, 39h  
    
    JBE mostrar_ascii 
  
    CMP AL, 41h 
    
    JB contador
    
    CMP AL, 5Ah 
    
    JBE mostrar_ascii
   
    CMP AL, 61h
    
    JB contador
    
    CMP AL, 7Ah
    
    JBE mostrar_ascii 
  
  
    CMP AL, 0FFh
    
    JE fim
    
    JMP contador
  
 mostrar_ascii:
    
    MOV mostra , AL
  
    MOV CL, 30h  
 
 tempo_espera: 
    
    LOOP tempo_espera
    
    JMP contador
  
  
  
 fim: 
 
    HLT
  
  
  MOSTRA DB 30h     
  
  

  
  
  
   