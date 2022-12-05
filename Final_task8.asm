.MODEL SMALL
.STACK 100H
.DATA 



MSG0 DB 'Welcome To My Calculator!!',0DH, 0AH, '$'
MSG1 DB 'Please User Enter Digit 1:',0DH,0AH, '$'
MSG2 DB 0DH,0AH, 'Please User Enter Digit 2:',0DH,0AH, '$'
MSG3 DB 0DH, 0AH, 'Output: ', 0DH, 0AH,'$'  
MSG4 DB 0DH, 0AH, 'Thank You for using my Calculator $'
.CODE  

 MAIN PROC
     MOV AX, @DATA 
     MOV DS, AX  
     
     LEA DX, MSG0 
     MOV AH, 09H
     INT 21H  
     
     LEA DX, MSG1 
     MOV AH, 09H
     INT 21H  
        
     MOV AH, 1 
     INT 21H
     MOV BL, AL
     
          
     LEA DX, MSG2 
     MOV AH, 09H
     INT 21H  
        
     MOV AH, 1 
     INT 21H
     MOV BH, AL
     
     CALL TASK 
 
     MOV AH, 4CH
     INT 21H 
     MAIN ENDP 

TASK PROC 
     
     SUB BL, BH  
     ADD BL, 30H   
     
     LEA DX, MSG3 
     MOV AH, 09H
     INT 21H
     
     MOV AH, 2
     MOV DL, BL
     INT 21H  
     
     LEA DX, MSG4 
     MOV AH, 09H
     INT 21H
     
     TASK ENDP
     

END MAIN