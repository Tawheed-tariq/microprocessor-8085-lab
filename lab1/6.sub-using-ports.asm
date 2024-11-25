jmp start
start:  NOP
LXI H, 1005H    ; Load address 1005H into H-L pair
MOV B, M        ; Store the first number into B
IN 01H          ; Input second number from port 01H
SUB B           ; Subtract B from A
OUT 05H         ; Output the result to port 05H
MOV C, A        ; Store the result in C

JP no_borrow    ; Jump if the result is positive (no borrow)
CMA             ; If negative, complement A
INR A           ; Increment A to get the absolute value
MVI D, 01H      ; Set borrow flag
JMP store_result

no_borrow: MVI D, 00H    ; Clear borrow flag

store_result: STA 1006H       ; Store the result at memory location 1006H
MOV A, D        
STA 1007H       ; Store the borrow flag at memory location 1007H

HLT
