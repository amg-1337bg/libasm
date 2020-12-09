; # **************************************************************************** #
; #                                                                              #
; #                                                         :::      ::::::::    #
; #    ft_strcpy.s                                        :+:      :+:    :+:    #
; #                                                     +:+ +:+         +:+      #
; #    By: bamghoug <marvin@42.fr>                    +#+  +:+       +#+         #
; #                                                 +#+#+#+#+#+   +#+            #
; #    Created: 2020/11/28 11:29:35 by bamghoug          #+#    #+#              #
; #    Updated: 2020/11/28 11:29:37 by bamghoug         ###   ########.fr        #
; #                                                                              #
; # **************************************************************************** #

global _ft_strcpy

section .text

_ft_strcpy :
    mov rax, 0
    mov bl, rsi[rax]
    cmp bl, 0
    jne _copy
    je _end

    ret
 
_copy :
    mov rdi[rax], bl
    inc rax
    mov bl, rsi[rax]
    cmp bl, 0
    jne _copy
    je _end

    ret

_end :
    mov rdi[rax], bl
    mov rax, rdi

    ret