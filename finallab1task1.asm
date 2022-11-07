   
mov cx, 255
mov bx, 0

top:
    
    mov ah,2
    mov dx,bx
    int 21h
    inc bx
    dec cx
    
    cmp cx,0
    jnz top


