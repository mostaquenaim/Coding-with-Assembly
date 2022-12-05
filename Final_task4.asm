.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB "Welcome User!! $"
MSG2 DB 0DH,0AH,"Please User Enter Letter 1:", 0DH,0AH, "$"
MSG3 DB 0DH,0AH,"Please User Enter Letter 2:", 0DH,0AH, "$" 
MSG4 DB 0DH,0AH,"Please User Enter Letter 3:", 0DH,0AH, "$"
MSG5 DB 0DH,0AH,"OUTPUT:", 0DH,0AH, "$"  

CRTR1 DB ?
CRTR2 DB ?
CRTR3 DB ?

.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H 
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H 
     MOV CRTR1,AL
     
     
     LEA DX, MSG3
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H
     MOV CRTR2,AL
     
     
     LEA DX, MSG4
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H
     MOV CRTR3,AL
   
     
     CALL TASK 
                    
     MOV AH, 4CH
     INT 21H
     MAIN ENDP    

TASK PROC
     LEA DX, MSG5
     MOV AH, 09H
     INT 21H
          
     MOV AH,2
     MOV DL,CRTR1
     INT 21H     
     
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     MOV AH,2
     MOV DL,CRTR2
     INT 21H
             
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
             
     MOV AH,2
     MOV DL,CRTR3
     INT 21H
     
     TASK ENDP
     

END MAIN