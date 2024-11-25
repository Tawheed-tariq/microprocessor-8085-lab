; Program to calculate factorial of a number
; Input number stored at 2050H
; Result will be stored at 2060H
; Maximum input value is 5 to avoid overflow

        LDA 2050H       ; Load input number into accumulator
        MOV B, A        ; Copy input to B for counter
        MVI A, 01H      ; Initialize result with 1
        STA 2060H       ; Store initial result
        
        MOV A, B        ; Check if input is 0 or 1
        CPI 01H         ; Compare with 1
        JC DONE         ; If input < 1, result is already 1
        JZ DONE         ; If input = 1, result is already 1
        
MULT:   LDA 2060H       ; Load current result
        MOV C, A        ; Store current result in C
        MVI D, 00H      ; Initialize D for counting multiplications
        
LOOP:   ADD C           ; Add current result to accumulator
        INR D           ; Increment multiplication counter
        MOV E, A        ; Save current sum temporarily
        MOV A, B        ; Load original number
        CMP D           ; Compare with multiplication counter
        MOV A, E        ; Restore current sum
        JNZ LOOP        ; Continue multiplication if not done
        
        STA 2060H       ; Store multiplication result
        DCR B           ; Decrement factorial counter
        CPI 01H         ; Check if B is 1
        JNZ MULT        ; If not 1, continue factorial calculation
        
DONE:   HLT            ; End program
