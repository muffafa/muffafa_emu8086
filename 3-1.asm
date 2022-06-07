;Write a program that analysis
;0100:1000h memory address. 
;If value of 0100:1000h is
;equals to C2h write FFh value to 
;0100:1100h memory address. 
;If the value is not equals to C2h 
;then write AAh to 0100:1100h memory address. 

;MOV DS:[1000H],0C2H 

MOV BX, 00100H
MOV DS, BX

MOV AX, DS:[1000H]
 
CMP AX, 0C2H
JE equal  

MOV DS:[1100H], 0AAh
JMP finish

equal:
MOV DS:[1100H], 0FFh

finish:
ret