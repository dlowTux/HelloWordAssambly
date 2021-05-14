
section .data
mensaje db "Hola mundo",0xa

section .bss

section .text
    global main
    main:
        extern printf
        mov eax, mensaje
        call printf
        mov eax,1
    int 0x80
