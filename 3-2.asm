;There is an array of bytes written on 
;memory beginning from 0100:1000h with 
;an ending byte value of 00h. 
;Copy this array to memory beginning from
;0100:2000h memory address.
;Use the array predefined below:
  
  
MOV byte ptr [1000h], 012h
MOV byte ptr [1001h], 034h
MOV byte ptr [1002h], 056h
MOV byte ptr [1003h], 078h
MOV byte ptr [1004h], 09Ah
MOV byte ptr [1005h], 0BCh
MOV byte ptr [1006h], 0DEh
MOV byte ptr [1007h], 0F0h
MOV byte ptr [1008h], 000h

MOV BX, 00100h
MOV DS, BX

MOV SI, 01000h
MOV DI, 02000h        
          
          
muffafa:
    MOV AL, DS:[SI]
    CMP AL, 000h
    JE finish
    
    MOV DS:[DI], AL
    INC DI
    INC SI 
Loop muffafa

finish:
RET