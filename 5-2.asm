;Write a program that reads values between 
;0100:0300h and 0100:03FFh, subtracts 1234h 
;from thesevalues and writes results back to 
;the same addresses.   

;0300h - 03FFh  = FFh + 1 = 100h / 2 = 80h

MOV BX, 00100h
MOV DS, BX
MOV ES, BX
MOV SI, 00300h
MOV DI, 00300h

MOV CX, 00080h
              
substract:
    LODSW   ;load word at DS:[SI] into AX
    SUB AX, 01234h
    STOSW   ;store byte in ax into ES:[DI]                   
LOOP substract

RET