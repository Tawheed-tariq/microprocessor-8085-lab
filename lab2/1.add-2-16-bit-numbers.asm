; Add Two 16-bit numbers using registers
jmp start


start: nop
;load 16 bit numbers from memory
;as 8085 uses little endian hence it will store first 8 bits of lsb then 8 bits of msb
LXI H, 1000H    
MOV C, M ; lsb 8 bits of 1st number       
INX H  ;1001H         
MOV B, M  ;msb 8 bits of 1st number     
INX H           
MOV E, M  ;lsb 8 bits of number 2     
INX H           
MOV D, M  ;msb 8 bits of number 2
      
; Add lower bytes 
MOV A, C        
ADD E           
MOV C, A ;lower byte of added number is stored in C register       

; Add upper bytes with carry
MOV A, B       
ADC D          
MOV B, A ;upper byte of added number is stored in B register      

; Store the result in little endian format
INX H           
MOV M, C  ; store lower byte      
INX H           
MOV M, B  ; sotre upper byte      
HLT             