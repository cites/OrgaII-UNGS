%include "io.inc"

section .bss

res resb 1

section .text
section .data

    N1 db 254d  ;8 bits
    N2 db 254d
    
    N3 dw 1524d  ;16 bits
    N4 dw 2d
    
    N5 dd 10000d  ;32 bits
    N6 dd 1000000d
    
    N7 dq 56789332533d ;64 bits
    N8 dq 54398044568d   
    
    F1 dd 123.567 ; Punto flotante de precisión simple
    
    
global CMAIN
CMAIN:
   
    ;write your code here
    
    ;Suma N1 + N2
    mov al,[N1]
    add al,[N2]
   
    PRINT_STRING " La suma de N1 y N2 es:  "
    PRINT_UDEC 1,al
    NEWLINE
    
    ;Resta N3-N4
    mov ax,[N3]
    sub ax,[N4]
    
    PRINT_STRING " La resta entre N3 y N4 es:  "
    PRINT_UDEC 2,ax
    NEWLINE
    
    ;Multiplicacion de N1*N2 
    mov al,[N1]
    mov bl,[N2]
    mul bl ; al = al * bl, si se pasa de 8bits guarda n1*n2 en ax
    
    PRINT_STRING " El producto entre N1 y N2 es:  "
    PRINT_UDEC 1,ax
    NEWLINE
    
    ;Cociente y resto de entre N3/N4 y resto 
    
    mov dx, 0
    mov ax,[N3]
    mov cx,[N4]
    div cx ; 
    
    PRINT_STRING " El cociente de N3/N4 es:  "
    PRINT_UDEC 2,ax
    NEWLINE
    PRINT_STRING " El resto de N3/N4 es:  "
    PRINT_UDEC 2,dx
    NEWLINE
    
    ;Suma N5 + N6
    mov eax,[N5]
    add eax,[N6]
   
    PRINT_STRING " La suma de N5 y N6 es:  "
    PRINT_UDEC 4,eax
    NEWLINE
    
    ;Suma N7 + N8
    mov eax,[N5]
    add eax,[N6]
   
    PRINT_STRING " La suma de N7 y N7 es:  "
    PRINT_UDEC 4,eax
    NEWLINE
    
    
    
    xor eax, eax
    