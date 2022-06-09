;Write a program that stores value of
;BCDEh between 0100:0300h and 
;0100:03FFh memory addresses.

;03FF - 0300 = FF +1 100 but word so /2 80h  

MOV CX, 00080h

MOV BX, 00100h
MOV ES, BX
MOV DI, 00300h

MOV AX, 0BCDEh

REP STOSW 

RET
 