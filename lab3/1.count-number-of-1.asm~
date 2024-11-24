MVI B,10H 
ADD B 
MVI C, 00 ; Initialize register C to 0 (count of 1's) 
Loop: RLC ; Rotate the contents of A left through carry 
JNC Skip ; If carry flag is 0, skip the increment of C (no 1 found) 
INR C ; Increment register C (count the 1 found in carry) 
Skip: DCR B ; Decrement register B (process next bit) 
JNZ Loop ; If B ≠ 0, repeat the loop 
MOV A, C ; Move the count of 1's from C to A 
STA 2050H ; Store the result in memory location 2050H 
HLT ; Halt the program
  