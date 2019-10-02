%include "io.inc"

global main

extern printf

section .data

    fmt db "%f", 10, 0
    

section .text

CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    
    fldz ; carga 0.0
    
    fld1 ; carga 1.0
    fldpi ; carga pi
    
    
    ;push fmt
    ;call printf
    ;add ESP, 12
    
    xor eax, eax
    ret