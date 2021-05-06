section .data
    suma db '0',0xa
section .text
    global _start
_start:
    mov eax, 3
    mov ebx, 3
    add eax, ebx
    add eax, 48
    mov [suma],eax
    mov eax, 4
    mov ebx, 1
    mov ecx, suma
    mov edx, 1

    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
