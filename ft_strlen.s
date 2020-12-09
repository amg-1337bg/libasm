
global _ft_strlen

section .text

_ft_strlen :
    mov rax, 0
    mov bl, rdi[rax]
    cmp bl, 0
    jne loop

    ret

loop :
    inc rax
    mov bl, rdi[rax]
    cmp bl, 0
    jne loop

    ret
