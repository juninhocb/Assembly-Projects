 
    MOV CL , 012h 
    MOV BL , 07h
 
 
 inicio:  
 
    CMP CL , BL  
    
    JNB cl_maior  
  
 bl_maior:
  
    MOV AL , VAR1  
 
    JMP fim
 
 cl_maior:
 
    MOV AL , VAR2  
 
 fim:
 
    HLT




 VAR1 DB 0Bh ; caso BL seja maior ou igual a cl 
 VAR2 DB 0Ch ; caso CL seja maior que BL