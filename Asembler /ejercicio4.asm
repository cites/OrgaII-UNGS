%include "io.inc"

section .text


section .data
    N1 dd 1000d
    N2 dd 999d
    
    N3 dd 1000d
    N4 dd 1000d
    
    N5 dd 30000d
    N6 dd 2652d
    
    
global CMAIN
CMAIN:
    ;write your code here
    
    ;a) Si N1 es mayor que N2 
    
    mov ax,[N1]
    mov bx,[N2]
    
    cmp ax,bx
    jg verdadero
    jmp falso
    
    verdadero: 
    PRINT_STRING "N1 es mayor que N2"
    NEWLINE
    jmp b
    
    falso:
    PRINT_STRING "N1 no mayor que N2"
    NEWLINE
    jmp b
    
    
    ;b) Si el resultado de N3 - N4 es cero
    
    b:
    mov ax,[N3]
    mov bx,[N4]
    
    cmp ax,bx
    jz esCero
    jmp noCero
   
    esCero:
    PRINT_STRING "La diferencia entre N3 y N4 es cero"
    NEWLINE
    jmp c

    noCero:
    PRINT_STRING "La diferencia entre N3 y N4 no es cero"
    NEWLINE
    jmp c
    
    ;c) Si N5 + N6 produce desbordamiento
    
    c:
    mov ax,[N5]
    mov bx,[N6]
    add ax,bx
    
    cmp ax,bx
    jo desbordamiento
    jmp noDesbordamiento
   
    desbordamiento:
    PRINT_STRING "Hay desbordameinto entre N5 y N6 "
    NEWLINE
    jmp d

    noDesbordamiento:
    PRINT_STRING "No hay desbordamiento entre N5 y N6 "
    NEWLINE
    jmp d
    
    
    d:
    
    xor eax, eax
    ret
    