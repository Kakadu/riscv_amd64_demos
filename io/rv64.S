.section .data
str2:    .string "01234567012345670123456701234567\n" # 32+1 bytes
filename: .asciz "test.txt"
buffer: .zero 128

.text
.global _start # Provide program starting address to linker

_start:
  .option push # MAGIC
  .option norelax
  la gp, __global_pointer$
  .option pop
  #li a0, 5
  #call main
  li a7, 56        # SYSCALL openat
  li a0, -100        #
  la a1, filename
  ecall

  li a7, 63        # SYSCALL read
  # descriptor already in a0
  la a1, buffer
  li a2, 12
  ecall

  li a7, 64        # SYSCALL write
  li a0, 1 # stdio
  la a1, buffer
  li a2, 12
  ecall

  addi a0, zero, 0   # Use 0 return code
  li  a7, 93 # Service command code 93 terminates
  ecall      # Call linux to terminate the program

main: # a0 is argument and return value
  ret
