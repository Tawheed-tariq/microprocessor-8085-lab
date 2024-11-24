; Program to Subtract a Number from Input Port 01H from a Number at Memory Location 1006H

; Step 1: Load the number from memory location 1006H
LXI H, 1006H     ; Load memory location 1006H into HL register pair
MOV B, M         ; Move the content of 1006H to accumulator A

; Step 2: Read a number from input port 01H
IN 01H           ; Read the input port 01H and store the data in accumulator

; Step 3: Subtract the input port number from the memory number
SUB B            ; Perform subtraction: A = (number at 1006H) - (number at input port)

; Step 4: Store the result at memory location 2000H
LXI H, 2000H     ; Load memory location 2000H into HL register pair
MOV M, A         ; Store the result from accumulator to memory location 2000H

; Step 5: Halt the program
HLT              ; Halt execution
