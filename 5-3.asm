;Write a program that reads values between 
;0100:0300h and 0100:03FFh memory address, 
;and writesback these values to the memory 
;address between 0100:3500h and 0100:35FFh.
         
MOV BX, 00100h         
MOV DS, BX
MOV ES, BX
MOV SI, 00300h  ;03FFh  cx = 80h
MOV DI, 03500h  ;35FFh
    
MOV CX, 00080h   
    
REP MOVSW