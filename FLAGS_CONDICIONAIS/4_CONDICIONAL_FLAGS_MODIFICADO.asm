 
    MOV CL , 022h 
    MOV BL , 037h
    MOV DL , 017h
 
 
 inicio:  
 
    CMP BL , CL  
    
    JGE compara_d 
    
    CMP CL , DL 
    
    JGE cl_maior
    
    JMP dl_maior
    
    
 compara_d:
 
    CMP BL , DL 
    
    JGE bl_maior
        
  
 bl_maior:
  
    MOV AL , VAR1  
 
    JMP fim
 
 cl_maior:
 
    MOV AL , VAR2
    
    JMP fim   
    
 dl_maior:
 
    MOV AL , VAR3
 
 fim:
 
    HLT



 ;ordem de importancia, BL > CL > DL 
 VAR1 DB 0Bh ; caso BL seja maior  
 VAR2 DB 0Ch ; caso CL seja maior  
 VAR3 DB 0Dh ; caso DL seja maior 