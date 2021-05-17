section .data

    message db "Hello I am programing I do not undestantd this at all ",0xa
    lenth equ $ -message 
    
    message1 db "The result of the add is ",0xa
    lenth1 equ $ -message1
    plus db '0',0xa

section .text
    global _start
        _start:
    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, lenth
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, message1
    mov edx, lenth1
    int 0x80
    
    mov eax, 6
    mov ebx, 3
    add eax, ebx
    add eax, 48
    mov [plus],eax
    mov eax, 4
    mov ebx, 1
    mov ecx, plus
    mov edx, 1

    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
    
