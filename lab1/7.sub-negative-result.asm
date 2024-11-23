jmp start
;code
start:  nop
        MVI A, 05H    ; Load 05H into accumulator (first number)
        SUI 0AH       ; Subtract 0AH from accumulator (second number)
        hlt
