.model small
.stack 100h 

.code
main proc
     mov ah,2
     mov dl,'?'
     int 21h
     
     xor cx,cx
     
     mov ah,1
     int 21h
     
     while_:
     cmp al,0Dh
     je end_while 
     
     push ax
     inc cx
     int 21h
     jmp while_
     
     end_while:
     mov ah ,2
     mov dl , 0dh
     int 21h
     
     
     top:
     pop dx
     int 21h
     loop top     
     exit:
     MOV AH,4CH
     INT 21H
     
     MAIN ENDP
END MAIN
     
     