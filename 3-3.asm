;Write to memory addresses between 
;0100:1500h and 0100:15FFh, hex values 
;that begin from 00h and increase 1 to 
;FFh value if corresponding memory byte's
;value is equals to 00h.   
              
MOV BX, 00100h
MOV DS, BX

MOV SI, 1500h ;1500 - 15FF 00FF
MOV CX, 000FFh

MOV AL, 00h
MOV byte ptr DS:[1503h], 0A2h 

increase:
    
    CMP DS:[SI], 000h
    JNE finish
    MOV DS:[SI], AL
    INC AL
    INC SI 
Loop increase

finish:
ret

