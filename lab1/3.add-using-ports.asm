;WAP to perform addition of 2 8-bit numbers the first number is stored at 1005H in mem,
; take second number from input port 01H, store the sum in mem at 1006H and carry at 1007H 
;also display sum at output port 05H

jmp start

start:  NOP            
LXI H, 1005H    
MOV B, M        
IN 01H    ;stores input of port 01 to accumulator      
ADD B 
OUT 05H    ;stores value present in accumulator to 05 port               
MOV C, A        
JNC store_sum    ; store the result if no carry is generated
MVI A, 01H      ; If carry is generated, move 1 into accumulator A
STA 1007H       ; Store the carry at memory location 1007H

store_sum: INX H    
MOV M, C        
HLT                      