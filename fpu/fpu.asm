%include "io.inc"

global main
extern printf

section .data

radio    dd 10.0
area     dq 0.0
fmt        db "area: %f", 10, 0

section .text

main:
        fld dword [radio] ;Load Floating Point
        fmul st0, st0 ;Toma el top del stack y lo multiplica
        fldpi ; Pone a Pi en el top del stack
        fmul ; Multiplica
        fst qword [area] ;Store
        push dword [area+4] 
        push dword [area]
        push fmt
        call printf
        add ESP, 12
        ret
    xor eax, eax
    ret