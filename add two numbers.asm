
;Add Two 8 bit numbers using registers

jmp start

;code
start: nop
LXI H, 1000H    ;"Get address of first number in H-L pair. Now H-L points to 1000H"
MOV A, M        ;"Store value at 1000 in register A"  
INX H           ;"Increment content of H-L pair. Now, H-L points 1001H"  
MOV B, M        ;"Store value of 1001 in register B"
ADD B           ;"Add first and second operand" 
INX H           ;"Increment content of H-L pair. Now, H-L points 1002H" 
MOV M, A        ;"Store result at 1002H"            
hlt