section .data
msj1 db "Insertar un numero:",0xa
len1 equ $ -msj1
msj2 db "Insertar otro numero",0xa
len2 equ $ -msj2
msj3 db "la suma es",0xa
len3 equ $ -msj3
section .bss
n1 resb 2
n2 resb 2
s resb 2
section .text
global _start
_start:
mov eax, 4
mov ebx, 1
mov ecx, msj1
mov edx, len1
int 0x80
mov eax, 3
mov ebx, 2
mov ecx, n1
mov edx, 2
int 0x80
mov eax, 4
mov ebx, 1
mov ecx, msj2
mov edx,len2
int 0x80
mov eax, 3
mov ebx, 2
mov ecx, n2
mov edx, 2
int 0x80
mov eax, n1
mov ebx, n2
add eax, ebx
add eax, 48
mov [s],eax
mov eax, 4
mov ebx, 1
mov ecx, msj3
mov edx,len3
int 0x80
mov eax, 4
mov ebx, 1
mov ecx, s
mov edx, 2
int 0x80
mov eax, 1
int 0x80

