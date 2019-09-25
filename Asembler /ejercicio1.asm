%include "io.inc"

section .text

    T dw "Hola loco",10,13,'$'
    
section .data

    N1 db 254d  ;8 bits
    N2 db 1d
    
    N3 dw 354d  ;16 bits
    N4 dw 124d
    
    N5 dd 12345d  ;32 bits
    N6 dd 456932d
    
    N7 dq 56789332533d ;64 bits
    N8 dq 54398044568d   
    
    F1 dd 123.567 ; Punto flotante de precisión simple
    
    



global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    
    PRINT_STRING "Variable T  : " 
    PRINT_STRING T
    NEWLINE
    
    PRINT_STRING "Variable N1  : "
    PRINT_UDEC 1,N1
    NEWLINE
    
    PRINT_STRING "Variable N2  : "
    PRINT_UDEC 1,N2
    NEWLINE
    
    PRINT_STRING "Variable N3  : "
    PRINT_UDEC 2,N3
    NEWLINE
    
    PRINT_STRING "Variable N4  : "
    PRINT_UDEC 2,N4
    NEWLINE
    
    PRINT_STRING "Variable N5  : "
    PRINT_UDEC 4,N5
    NEWLINE
    
    PRINT_STRING "Variable N6  : "
    PRINT_UDEC 4,N6
    NEWLINE
    
    PRINT_STRING "Variable N7  : "
    PRINT_UDEC 4,N7
    NEWLINE
    
    PRINT_STRING "Variable N8  : "
    PRINT_DEC 4,N8
    NEWLINE
    
    xor eax, eax
    ret

    