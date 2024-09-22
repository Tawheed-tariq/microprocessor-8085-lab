; Add Two 16-bit numbers using registers
jmp start


start: nop
LXI H, 1000H    
MOV C, M       
INX H  ;1001H         
MOV B, M       
INX H           
MOV E, M       
INX H           
MOV D, M        
; Add lower bytes
MOV A, C        
ADD E           
MOV C, A        

; Add upper bytes with carry
MOV A, B       
ADC D          
MOV B, A       

; Store the result
INX H           
MOV M, C        
INX H           
MOV M, B        
HLT             