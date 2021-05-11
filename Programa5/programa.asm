section .data
    msg db "Insertar un numero", 0xa
    len equ $ -msg
    msg2 db "El numero es", 0xa
    len2 equ $ -msg2
section .bss
    num resb 6
section .text
    global _start
_start:
    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov edx,len

    int 0x80
    mov eax, 3
    mov ebx, 2
    mov ecx, num

    int 0x80
    mov eax, 4
    mov ebx,1
    mov ecx, msg2
    mov edx, len2

    int 0x80
    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 6
    int 0x80

    mov eax, 1
    int 0x80
