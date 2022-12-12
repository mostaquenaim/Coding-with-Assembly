.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB "TYPE A BINARY NUMBER: $"
MSG2 DB 0AH,0DH, "EVEN $"
MSG3 DB 0AH,0DH, "ODD $"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H
     
     MOV CX,8 
     
     INPUTS:
     MOV AH, 1
     INT 21H
     MOV BL, AL 
     
     LOOP INPUTS
     
     PRINT:
     CMP BL,31H
     JE ODD
     JMP EVEN
     
     ODD: 
     LEA DX, MSG3
     MOV AH, 09H
     INT 21H
     
     JMP EXIT
     
     EVEN:
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H
    
     EXIT:               
     MOV AH, 4CH
     INT 21H
     MAIN ENDP    
     

END MAIN