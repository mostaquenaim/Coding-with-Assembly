.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB "Hi, I AM FROM MAIN PROCEDURE $"
MSG2 DB 0AH,0DH, "Hi, I AM FROM SECOND PROCEDURE $"
MSG3 DB 0AH,0DH, "Hi, I AM FROM THIRD PROCEDURE $"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H 
     
     CALL SECOND
     CALL THIRD
     
     MOV AH, 4CH
     INT 21H
     MAIN ENDP  

SECOND PROC
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H 
     
     SECOND ENDP

THIRD PROC
       
     LEA DX, MSG3
     MOV AH, 09H
     INT 21H 
     
     THIRD ENDP
END MAIN