section .data
    mensaje1 db "Mi nombre es",0xa
    mensaje1_lenth equ $ -mensaje1
    mensaje2 db "Mi edad es" ,0xa
    mensaje2_lenth equ $ -mensaje2
    mensaje3 db "mi año de nacimiento es" ,0xa
    mensaje3_lenth equ $ -mensaje3

    section .bss
        nombre db 4
        edad resb 2
        year resb 4

section .text
    global _start
        _start:
            mov eax, 4
            mov ebx, 1
            mov ecx , mensaje1
            mov edx, mensaje1_lenth
            int 0x80
            mov ebx , "Juan" #Buscar carecteres en un registro
    
