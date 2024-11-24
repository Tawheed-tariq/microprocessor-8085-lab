; Program to search for a specific value in memory
; Input: Starting address of memory (2000H)
;        - First byte: Number of elements (N)
;        - Second byte: Value to search for (X)
;        - Next N bytes: Array of data
; Output: Store 01H at 2050H if the value is found, otherwise store 00H.

LXI H, 2000H    ; Load starting address (2000H) into HL register pair
MOV C, M        ; Load the number of elements (N) into register C
INX H           ; Increment HL to point to the value to search for (X)
MOV A, M        ; Load the value to search for (X) into accumulator A
INX H           ; Increment HL to point to the first element of the array

LOOP: CMP M     ; Compare the value in the accumulator (X) with the current memory element
JZ FOUND        ; If they are equal, jump to FOUND
INX H           ; Increment HL to point to the next memory location
DCR C           ; Decrement the counter (C)
JNZ LOOP        ; If counter (C) is not zero, repeat the loop

; If the loop completes without finding the value:
MVI A, 00H      ; Load 00H (value not found) into the accumulator
STA 2050H       ; Store the result at memory location 2050H
HLT             ; Halt the program

FOUND: MVI A, 01H   ; Load 01H (value found) into the accumulator
STA 2050H       ; Store the result at memory location 2050H
HLT             ; Halt the program
