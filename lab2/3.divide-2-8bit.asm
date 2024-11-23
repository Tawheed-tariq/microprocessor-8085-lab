jmp start
; code
start: nop
       LXI H, 2000H    ; Load address 2000H into HL
       MOV B, M        ; Load first number (dividend) into B
       INX H           ; Point to 2001H
       MOV C, M        ; Load second number (divisor) into C
       MVI D, 00H      ; Clear D (for quotient)

DIVIDE: MOV A, B        ; Load dividend into A
        SUB C           ; Subtract divisor from A
        JC FINISH       ; Jump to FINISH if result is negative
        INR D           ; Increment quotient
        MOV B, A        ; Store result back in B
        JMP DIVIDE      ; Continue division

FINISH: MOV A, B        ; Load final remainder into A
        INX H           ; Point to 2002H
        MOV M, A        ; Store remainder
        INX H           ; Point to 2003H
        MOV M, D        ; Store quotient
        HLT             ; Halt program