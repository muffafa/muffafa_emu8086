;Write a program that calculates the sum
;of the numbers from 1 to 100 and saves to the
;memory address 0100:1000h.

MOV AX, 00100H
MOV DS, AX

MOV CX, 100D
     
sum:            
ADD DS:[1000H], CX  
Loop sum

RET