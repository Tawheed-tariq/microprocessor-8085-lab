; Program to implement bubble sort in descending order
; Array starts from memory location 2050H
; Array length is stored at 2040H
; Sorted array will be stored starting from 2050H

        LDA 2040H       ; Load array length into accumulator
        MOV C, A        ; Copy length to C for outer loop counter
        DCR C           ; Decrement C by 1 for N-1 passes

OUTER:  LXI H, 2050H    ; Load starting address of array
        MOV B, C        ; Copy current outer counter to B for inner loop
        
INNER:  MOV A, M        ; Load current element into A
        INX H           ; Point to next element
        CMP M           ; Compare current with next element
        JNC SKIP        ; If current >= next, no swap needed
        
        ; Swap elements if current < next
        MOV D, M        ; Save next element in D
        MOV M, A        ; Store current element in next position
        DCX H           ; Move back to current position
        MOV M, D        ; Store next element in current position
        INX H           ; Move pointer back to next position
        
SKIP:   DCR B          ; Decrement inner loop counter
        JNZ INNER      ; Continue inner loop if not done
        
        DCR C          ; Decrement outer loop counter
        JNZ OUTER      ; Continue outer loop if not done
        
        HLT            ; End program

; Example array setup:
; Store array length
; MVI A, 05H    ; Array length = 5
; STA 2040H
; Store array elements
; MVI A, 45H    ; 69
; STA 2050H
; MVI A, 23H    ; 35
; STA 2051H
; MVI A, 67H    ; 103
; STA 2052H
; MVI A, 12H    ; 18
; STA 2053H
; MVI A, 89H    ; 137
; STA 2054H

; After sorting, array will be:
; 2050H: 89H (137)
; 2051H: 67H (103)
; 2052H: 45H (69)
; 2053H: 23H (35)
; 2054H: 12H (18)