section .data
    mensaje db "El numero es",0xa
    lenth equ $ -mensaje 
section .bss
    num resb 1
section .text
    global _start
        _start:
    mov eax, 4
    mov ebx, 1
    mov ecx, mensaje
    mov edx, lenth
    int 0x80
    mov ebx, 6
    add ebx, 48
    mov [num], ebx
    mov eax, 4
    mov ebx ,1
    mov ecx,num
    mov edx, 1
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
