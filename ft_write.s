global _ft_write
extern ___error

section .text

_ft_write :
    mov rax, 0x2000004
    syscall
    jc set_err
    ret

set_err :
    push rax
    call ___error
    pop rdi
    mov [rax], rdi
    mov rax, -1
    
    ret
