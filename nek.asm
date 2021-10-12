; 
section .text 

global _start

_start:
; systemcall => write(1,msg,len)
mov edx,len   ; 
mov ecx,msg  ; 
mov ebx,1     ; 
mov eax,4     ; 
int 0x80        ; 

; systemcall => exit(0)
xor ebx,ebx     ; 
mov eax,1     ; 
int 0x80        ; 

section .data ; 
msg db "Hello, World!",0xa ; 
len equ $ - msg  ; 
