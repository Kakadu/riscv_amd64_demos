section .data
str2 db  "01234567012345670123456701234567", 0xA
BUFSIZE equ 32
section .text

GLOBAL memset
memset: ; rdi is addr, rsi is byte, rdx is length
.memset_loop:
    cmp rdx, 0
    je .memset_fin
    mov [rdi], sil
    add rdi, 1
    add rdx, -1
    jmp .memset_loop
.memset_fin:
    ret

GLOBAL memcpy
memcpy:
    ret

GLOBAL myitoa
myitoa: ; rdi is argument
    mov r10, 10 ; basis
    mov r11, rdi ; current argument
    mov r9, 0 ; output len
    mov r8, str2 ; current pos
    add r8, BUFSIZE
.myitoa_loop:
    mov rax, r11
    xor rdx, rdx
    div  r10  ; rax quotient, rdx reminder
    mov r11, rax
    add rdx, 0x30
    mov [r8], dil
    dec r8
    cmp r11, 0
    jne .myitoa_loop
    ret

GLOBAL print_int
print_int:
    push rdi
    mov rdi, str2
    mov rsi, 0x30
    mov rdx, BUFSIZE
    call memset
    ; myitoa
    mov rdi, [rsp]
    call myitoa
    ; printing
    mov rax, 1 ; call number
    mov rdi, 1 ; stdout
    mov rsi, str2,
    mov rdx, BUFSIZE+1
    syscall

    pop rdi
    ret

; Silence linker's warning about executable stack
section .note.GNU-stack noalloc noexec nowrite progbits
