


soma:

  MOV AL , N1
  
  MOV BL , N2 
  
  ADD AL , BL
  
  DAA
  
  MOV RESULT , AL 
  
  MOV CL , RESULT ; so para ver se funciona

  HLT



N1 DB 07h

N2 DB 15h

RESULT DB 00h

