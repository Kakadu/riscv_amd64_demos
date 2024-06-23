.section .data
HELLO_WORLD: .asciz "Hello, World!"
.equ BUFSIZE, 13

.text
.global _start # Provide program starting address to linker

_start:
  # .option push # MAGIC
  # .option norelax
  # la gp, __global_pointer$
  # .option pop
  li      a7, 64  # write on RISCV linux"
  li      a0, 1
  la      a1, HELLO_WORLD
  li      a2, BUFSIZE
  ecall

  li  a7, 94 # SYSCALL exit_group
  li a0, 0   # Use 0 as a return code
  ecall      # Call linux to terminate the program

