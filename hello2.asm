;-------------+
; Hello world ;
;-------------+

global _start

section .DATA
msg:
    db  "Hello world!", 10


section .TEXT

_start:
    mov     rax, 1      ; 1 is write syscall
    mov     rdi, 1      ; 1 is stdout file handler
    mov     rsi, msg    ; strings' address
    mov     rdx, 13     ; number of bytes
    syscall

    mov     eax, 60     ; 60 is exit syscall
    xor     rdi, rdi    ; exit code 0 ?!?!?!
    syscall

