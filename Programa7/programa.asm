section .bss
num resb 3

section .text
   global _start        

_start:                 
   mov ecx,20
   mov eax, '1'

l1:
   mov [num], eax
   mov eax, 4
   mov ebx, 1
   push ecx

   mov ecx, num        
   mov edx, 1        
   int 0x8
   mov eax, [num]
   sub eax, '0'
   add eax, 2
   add eax, '0'
   pop ecx
   loop l1

   mov eax,1             
   int 0x80
   mov eax, [num]
   sub eax, '0'
   add eax, 2
   add eax, '0'
   pop ecx
   loop l1

   mov eax,1             
   int 0x80
