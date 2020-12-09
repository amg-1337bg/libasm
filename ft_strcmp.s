global _ft_strcmp

section .text

_ft_strcmp :
    mov rax, 0
    mov cl, byte[rsi + rax]
    mov bl, byte[rdi + rax]
        
    call loop

    ret

loop :
    cmp bl, 0
    je end_rdi
    cmp cl, 0
    je end_rsi
    cmp bl, cl
    jg greater
    jl less
    inc rax
    mov cl, byte[rsi + rax]
    mov bl, byte[rdi + rax]
    jmp loop

    ret

end_rdi :
    cmp cl, 0
    je equal
    jne less

    ret

end_rsi :
    cmp bl, 0
    je equal
    jne greater

    ret

equal :
    mov rax, 0
    ret

greater :
    mov rax, 1
    ret

less :
    mov rax, -1
    ret