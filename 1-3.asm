;Write an Intel 8086 assembly code 
;that will add 98h value written on 
;0100:0500h memory address with 52h value 
;written on 0100:0501h memory address, 
;than write the result to 0100:0502h 
;memory address 

MOV AX, 00100H
MOV DS, AX

MOV DS:[0500H], 098H 
MOV DS:[0501H], 052H

MOV AX, 00000H
MOV AL, DS:[0500H]
ADD AL, DS:[0501H]

MOV DS:[0502H], AL     

RET