global _ft_read
extern ___error

section .text

_ft_read :
    mov rax, 0x2000003
    syscall
    jc set_error

    ret

set_error :
    push rax
    call ___error
    pop rsi
    mov [rax], rsi
    mov rax, -1

    ret