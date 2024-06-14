section .data
demostring1 db  "01234567012345670123456701234567", 0xA
demostring2 db  "0123456701234567",0x22,"123456701234567", 0xA

section .text
extern print_int
extern amd64_simple_needs_escaping
extern amd64_branchless_needs_escaping

GLOBAL main
main:
  ;mov rdi, 5
  ;call fac
  mov  rdi, 42
  call print_int

  mov rdi, demostring1
  mov rsi, 32
  call amd64_simple_needs_escaping
  mov  rdi, rax
  call print_int

  mov rdi, demostring1
  mov rsi, 32
  call amd64_branchless_needs_escaping
  mov  rdi, rax
  call print_int

  mov rdi, demostring2
  mov rsi, 32
  call amd64_simple_needs_escaping
  mov  rdi, rax
  call print_int

  mov rdi, demostring2
  mov rsi, 32
  call amd64_branchless_needs_escaping
  mov  rdi, rax
  call print_int

  ret


GLOBAL _start
_start:
  push    rbp
  mov     rbp, rsp   ; prologue
  call main
  mov rdi, 0  ; rdi stores return code
  ;mov rax, 60 ; exit syscall
  mov rax, 231 ; exit_group syscall
  syscall

; Silence linker's warning about executable stack
section .note.GNU-stack noalloc noexec nowrite progbits

