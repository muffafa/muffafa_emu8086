;Write an Intel 8086 assembly code
;that will write 34h value to 0100:1000h 
;and 0100:2000h memory addresses.

MOV AX, 00100H
MOV DS, AX

MOV DS:[1000H], 034H
MOV DS:[2000H], 034H

RET