%include "io.inc"

section .data

    N1 db 10 ;entero sin signo de 8 bits
    N2 db 234 ;entero sin signo de 8bits
    
    N3 dw 255 ;entero de 16 bits
    N4 dw 1348 ;entero de 16bits
    
    N5 dd 34099 ; entero de 32 bits
    N6 dd 678367 ; entero de 32 bits
    
    N7 dq 33453456 ;entero de 64 bits
    N8 dq 560952 ; entero de 64 bits
    
    F1 dd 457367,094 ; punto flotante de presicion  simple
    
    T dd 'Hola Mundo'; cadena de carateres
    
section .text

global CMAIN
CMAIN:
    ;write your code here
    
    ;a
    
    mov al,[N1]
    mov bl,[n2]
    add bl,al
    
    
    
    
    
    xor eax, eax
    ret