
@SCREEN
D=A
@ARR
M=D
@I
M=0

@8192
D=A

@LIMIT
M=D


(CONDITION)
    @I
    M=0
    @24576
    D=M
    @LOOP
    D;JGT
    
    (LOOP1)
        @LIMIT
        D=M
        @I
        D=M-D
        @CONDITION
        D;JGE
        @I
        D=M
        @ARR
        A=M+D
        M=0
        @I
        M=M+1
        @LOOP1
        0;JMP


    @CONDITION
    0;JMP   
    
    


(LOOP)
    @LIMIT
    D=M
    @I
    
    D=M-D
    @END
    D;JGE
    @I
    D=M
    @ARR
    A=M+D
    M=-1
    @I
    M=M+1

   
    @LOOP
    0;JMP

(END)
    @CONDITION
    0;JMP    

