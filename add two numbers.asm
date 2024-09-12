
;Add Two 8 bit numbers

jmp start

;data


;code
start: nop
LXI H, 2501H    ;"Get address of first number in H-L pair. Now H-L points to 2501H"
MOV A, M        ;"Store value at 2501 in register A"  
INX H           ;"Increment content of H-L pair. Now, H-L points 2502H"  
MOV B, M        ;"Store value of 2502 in register B"
ADD B           ;"Add first and second operand" 
INX H           ;"Increment content of H-L pair. Now, H-L points 2503H" 
MOV M, A        ;"Store result at 2503H"            
hlt