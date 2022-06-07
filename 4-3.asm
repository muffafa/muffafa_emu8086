;Write a program that compares two 4 byte 
;sized unsigned integers written on 0100:1000h
;and 0100:1004h and if integer that written on
; 0100:1000h is bigger than integer written on
;0100:1004h, then subtract two numbers, 
;if not, then add two numbers. 
;Then copy the result to 0100:1008h. 
;First integer is 4,000,000,000 
;and second integer is 2,000,000,000.


;4.000.000.000 4b  ;EE6B 2800
;2.000.000.000 2b  ;7735 9400
;6.000.000.000 6B  ;1 65A0 BC00 ;OVERFLOW

MOV BX, 00100h
MOV DS, BX

;orginal task
;MOV DS:[1000h], 02800h ;4B
;MOV DS:[1002h], 0EE6Bh
;MOV DS:[1004h], 09400h ;2B
;MOV DS:[1006h], 07735h  
  
;debugging  
MOV DS:[1000h], 02000h 
MOV DS:[1002h], 0EEEEh
MOV DS:[1004h], 03000h 
MOV DS:[1006h], 0EEEEh


MOV AX, DS:[1002h]
CMP AX, DS:[1006h]
JZ equal
JA greater

smaller: ;add
    MOV AX, DS:[01000h]
    ADD AX, DS:[01004h]
    MOV DS:[01008h], AX
    
    MOV AX, DS:[01002h]
    ADC AX, DS:[01006h]
    MOV DS:[0100Ah], AX

JMP finish

equal:
    MOV AX, DS:[1000h]
    CMP AX, DS:[1004h]
    JA greater
    JMP smaller

greater: ;sub
    MOV AX, DS:[01000h]
    SUB AX, DS:[01004h]
    MOV DS:[01008h], AX
    
    MOV AX, DS:[01002h]
    SBB AX, DS:[01006h]
    MOV DS:[0100Ah], AX

finish:
RET     