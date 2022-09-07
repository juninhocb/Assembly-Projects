 
     MOV BX , VAR2
   
     MOV AX , VAR1
          
     DIV BX
     
     MOV DH , AH ; resto em DL
     
     MOV CL , AL ; quociente em CL 
     
     HLT 
     
     
 
 
 
 
 
 VAR1 DW 09h
 
 VAR2 DW 02h
 