;Add Two 8 bit numbers using add immediate

jmp start

;code
start: nop
SUB A
ADI 05H       ;add 05H to accumulator 
ADI 04H       ;add 04H to accumulator 
hlt                
