jmp start
;code
start: nop
MVI A, 25H    ; Load 25H into accumulator
SUI 10H       ; Subtract 10H from accumulator
SUI 05H       ; Subtract 05H from accumulator
hlt
