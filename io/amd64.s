; SYSCALLS https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl
section .data
filename db   "test.txt", 0x0

section .bss      ; Create the reservation section.
buffer: resb 128  ; Reserve 128 bytes of the memory with label "buffer"

section .text

GLOBAL _start
_start:
  push    rbp
  mov     rbp, rsp   ; prologue
  call main
  mov rdi, 0  ; rdi stores return code
  ;mov rax, 60 ; exit syscall
  mov rax, 231 ; exit_group syscall
  syscall

GLOBAL main
main:
  mov rax, 2        ; SYSCALL fopen
  mov rdi, filename
  mov rsi, 0        ; O_RDONLY
  syscall

  mov rdi, rax       ; descriptor
  mov rax, 0         ; SYSCALL read
  mov rsi, buffer    ;
  mov rdx, 12
  syscall

  mov rax, 1 ; SYSCALL write
  mov rdi, 1 ; stdout
  mov rsi, buffer
  mov rdx, 12
  syscall

  ret

; Silence linker's warning about executable stack
section .note.GNU-stack noalloc noexec nowrite progbits
