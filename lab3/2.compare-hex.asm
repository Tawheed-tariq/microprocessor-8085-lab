; Program to compare two numbers and store the result in memory
; A = 05H, B = 0AH
; Output: 
; 00H if A == B
; FFH if A < B
; 01H if A > B

MVI A, 05H      ; Load 05H into accumulator A
MOV B, A        ; Copy A to B
MVI A, 01H      ; Load 0AH into accumulator A
CMP B           ; Compare A with B
JZ Equal        ; Jump to Equal if A == B
JC Less         ; Jump to Less if A < B
JMP Greater     ; Jump to Greater if A > B

Equal: MVI A, 00H  ; Load 00H into A (A == B)
       JMP END     ; Jump to END

Less:  MVI A, 0FFH  ; Load FFH into A (A < B)
       JMP END     ; Jump to END

Greater: MVI A, 01H  ; Load 01H into A (A > B)

END: STA 2050H      ; Store the result at memory location 2050H
     HLT            ; Halt the program
