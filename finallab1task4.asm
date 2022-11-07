
main proc   
mov cx, 50
mov ah, 1
int 21h
mov bl, al  

mov ah, 2
mov dx, 0ah
int 21h
mov dx, 0dh
int 21h

top: 
    mov ah,2
    mov dl,bl
    int 21h
    
    loop top
    
   mov ah,4ch
   int 21h
        
main endp
end main
