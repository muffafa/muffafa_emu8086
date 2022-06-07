;Write a program that substracts two 4 byte 
;sized unsigned integers written 
;on 0100:1000h and 0100:1004h. 
;Then copy the result to 0100:1008h. 
;First integer is 3,000,000,000 and second
;integer is 1,000,000,000.

;3.000.000.000 3b  ;B2D0 5E00
;1.000.000.000 1b  ;3B9A CA00
;2.000.000.000 2b  ;7735 9400

MOV BX, 00100h
MOV DS, BX  
 

MOV DS:[01000h], 05E00h
MOV DS:[01002h], 0B2D0h   
MOV DS:[01004h], 0CA00h
MOV DS:[01006h], 03B9Ah

MOV AX, DS:[01000h]
SUB AX, DS:[01004h]
MOV DS:[01008h], AX

MOV AX, DS:[01002h]
SBB AX, DS:[01006h]
MOV DS:[0100Ah], AX


ret