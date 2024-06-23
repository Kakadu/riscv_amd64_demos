section .data
str2 db  "Hello, World!", 0xA
BUFSIZE equ 13

section .text

GLOBAL _start
_start:
  push    rbp
  mov     rbp, rsp   ; prologue

  ; printing
  mov rax, 1 ; call number
  mov rdi, 1 ; stdout
  mov rsi, str2,
  mov rdx, BUFSIZE+1
  syscall

  mov rdi, 0  ; rdi stores return code
  mov rax, 231 ; exit_group syscall
  syscall



; Silence linker's warning about executable stack
section .note.GNU-stack noalloc noexec nowrite progbits
