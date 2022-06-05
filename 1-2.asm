;Write an Intel 8086 assembly code 
;that will swap the values of CL and DL registers.

MOV CL, 001H
MOV DL, 002H

MOV AL, CL
MOV CL, DL
MOV DL, AL          

RET