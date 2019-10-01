%include "io.inc"

global main
extern printf

section .data

    cero dd 0.0
    

section .text

CMAIN:
    ;write your code here
    
    fldz
    fldpi
    
    xor eax, eax
    ret