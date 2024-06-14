section .text
extern print_int

GLOBAL _start
_start:
  push    rbp
  mov     rbp, rsp   ; prologue
  call main
  mov rdi, 0  ; rdi stores return code
  ;mov rax, 60 ; exit syscall
  mov rax, 231 ; exit_group syscall
  syscall

; copy-paste from Godbolt (-O0)
fac:
  sub     rsp, 24
  mov     dword [rsp+12], edi
  cmp     dword [rsp+12], 1
  jle     .L2
  mov     eax,  [rsp+12]
  sub     eax, 1
  mov     edi, eax
  call    fac
  imul    eax,  dword [rsp+12]
  jmp     .L4
.L2:
  mov     eax, 1
.L4:
  add     rsp, 24
  ret

; TODO: optimized factorial

GLOBAL main
main:
  mov rdi, 5
  call fac
  mov  rdi, rax
  call print_int
  ret

; Silence linker's warning about executable stack
section .note.GNU-stack noalloc noexec nowrite progbits
