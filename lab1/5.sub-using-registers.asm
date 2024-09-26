jmp start
;code
start: nop
MVI A, 07H            ; Load 07H into accumulator
MVI B, 03H            ; Load 03H into register B
SUB B                 ; Subtract B from A
LXI H, 2000H          ; Load address 2000H into H-L pair
MOV M, A              ; Store result at memory location 2000H
hlt
