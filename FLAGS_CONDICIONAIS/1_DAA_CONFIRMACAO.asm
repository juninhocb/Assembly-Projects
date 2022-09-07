  org 100h

    mov al,09h          ; fator da multiplicacao
    
    mov bl,21h          ; fator da multiplicacao

mult_bcd:   
    
    cmp al,0            ; vai para "fim" se qquer fator for zero

    je fim

    cmp bl,0
    
    je fim
      
    mov ah,00                                          
    
    mov cx,ax
      
produto:                ; realiza o produto como somas sucessivas
    mov al,ch  
    
    add al,cl           ; al = al + cl
    
    daa                 ; ajuste BCD apos a soma
   
    mov ch,al           ; guarda resultado parcial     
  
    mov al,bl           ; BL eh usado para o fator2
    
    sub al,1            ; subtrai 1 para controle de interacoes
  
    das                 ; ajuste BCD apos subtracao
  
    jz fim  
    
    mov bl,al           ; guarda controle das iteracoes 
    
    jmp produto
    
fim:
    mov al,ch        
       
    ret 