; Program to calculate sum of numbers in array and handle carry
; Array starts from memory location 2050H
; Array length is stored at 2040H
; Result (2 bytes) will be stored at 2060H (LSB) and 2061H (MSB)

        LXI H, 2050H    ; Load starting address of array into HL pair
        MVI A, 00H      ; Initialize accumulator with 0
        MVI C, 00H      ; Initialize C register for carry
        STA 2060H       ; Initialize sum (LSB) with 0
        STA 2061H       ; Initialize sum (MSB) with 0
        LDA 2040H       ; Load array length into accumulator
        MOV B, A        ; Copy length to register B for counter
        
LOOP:   LDA 2060H       ; Load current sum (LSB)
        ADD M           ; Add current array element
        JNC SKIP        ; If no carry, skip carry handling
        INR C           ; Increment carry register if carry generated
        
SKIP:   STA 2060H       ; Store updated sum (LSB)
        MOV A, C        ; Move carry to A
        STA 2061H       ; Store carry as MSB
        INX H           ; Point to next array element
        DCR B           ; Decrement counter
        JNZ LOOP        ; If counter not zero, continue loop
        
        HLT             ; End program
