global _ft_strdup
extern ___error
extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text

_ft_strdup :
    call _ft_strlen
    push rdi
    mov rdi, rax
    inc rdi
    call _malloc
    cmp rax, 0
    jne copy

    ret

copy :
    pop rsi
    mov rdi, rax
    call _ft_strcpy

    ret