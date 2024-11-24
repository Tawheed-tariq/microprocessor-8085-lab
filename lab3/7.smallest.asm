; Program to find smallest number in an array
; Array starts from memory location 2050H
; Array length is stored at 2040H
; Result will be stored at 2060H

        LXI H, 2050H    ; Load starting address of array into HL pair
        MOV A, M        ; Load first element into accumulator (assume it's smallest)
        STA 2060H       ; Store initial smallest number
        LDA 2040H       ; Load array length into accumulator
        MOV B, A        ; Copy length to register B for counter
        DCR B           ; Decrement B as we already took first element
        
LOOP:   INX H          ; Point to next array element
        MOV A, M        ; Load current element into A
        LDA 2060H       ; Load current smallest number
        CMP M           ; Compare A with current element
        JC SKIP         ; If A < M, skip to next iteration
        MOV A, M        ; If M < A, move M to A
        STA 2060H       ; Store new smallest number
        
SKIP:   DCR B          ; Decrement counter
        JNZ LOOP       ; If counter not zero, continue loop
        
        HLT            ; End program
