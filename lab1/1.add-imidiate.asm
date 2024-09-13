;Add Two 8 bit numbers using add immediate

jmp start

;code
start: nop
SUB A
ADI 05H       ;add 05H to accumulator 
ADI 15H       ;add 15H to accumulator 
hlt                
