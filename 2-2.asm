;Write a program that reads value 
;from [0100:1000h] - [0100:1200h] 
;memory range and writes back 
;to [0300:1000h] - [0300:1200h] memory range. 
;Add 1 to every word before writing back
;to memory. You have to use DS: SI addressing
;for reading and ES: DI addressing for writing.

MOV BX, 00100H
MOV DS, BX

MOV BX, 00300H
MOV ES, BX
           
MOV SI, 01000H
MOV DI, 01000H


MOV CX, 100H ;1000H - 1200H AND EVREY WORD 
            ;SO 200H/2 = 100H  
rwtwin:

    MOV AX, DS:[SI]
    INC AX
    MOV ES:[DI], AX 
    
    ADD SI, 02H
    ADD DI, 02H 

LOOP rwtwin