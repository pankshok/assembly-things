section .DATA
msg: db "Hello world.", 10, 0

section .TEXT
extern printf
global main
main:
    mov rdi, msg
    mov rax, 0
    call printf
    mov rax, 60
    mov rsi, 0
    syscall
