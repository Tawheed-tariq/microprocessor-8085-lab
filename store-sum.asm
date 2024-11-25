LDA 2200H       
MOV B, A        
LXI H, 2201H    
MVI A, 00H      
STA 2210H       
        
LOOP:   MOV A, M        
        ANI 01H         
        JNZ SKIP        
        
        
LDA 2210H       
ADD M           
STA 2210H       
        
SKIP: INX H          
DCR B          
JNZ LOOP       
        
HLT            

