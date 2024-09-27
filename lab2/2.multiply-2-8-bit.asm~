jmp start
;code
start: nop
        LXI H, 2000H    ; Load address 2000H into HL
        MOV A, M        ; Load first number into A
        MOV B, A        ; Copy first number to B
        INX H           ; Point to 2001H
        MOV A, M        ; Load second number into A
        MOV C, A        ; Copy second number to C
        MVI A, 00H      ; Clear A (for result)
        MVI D, 00H      ; Clear D (for carry)

MULT:   ADD B           ; Add B to A
        JNC NOCARRY     ; Jump if no carry
        INR D           ; Increment D if there was a carry
NOCARRY: DCR C           ; Decrement C
        JNZ MULT        ; If C not zero, continue multiplication

        INX H           ; Point to 2002H
        MOV M, A        ; Store lower byte of result
        INX H           ; Point to 2003H
        MOV M, D        ; Store upper byte of result
        HLT             ; Halt program