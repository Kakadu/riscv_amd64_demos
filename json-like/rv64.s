
.section .data
demostring1:    .string "01234567012345670123456701234567\n" # 32 bytes
demostring2:    .string "01234\67012345670123456701234567\n" # 32 bytes


.text
.global _start # Provide program starting address to linker

_start:
.option push # MAGIC
.option norelax
  la gp, __global_pointer$
.option pop

  li      a7, 64  # write on RISCV linux"
  li      a0, 1
  la      a1, demostring1
  li      a2, 32+1
  ecall

  # la a0, demostring1
  # li a1, 32
  # call rv64_simple_needs_escaping
  # call print_int

  # la a0, demostring2
  # li a1, 32
  # call rv64_simple_needs_escaping
  # call print_int

  # la a0, demostring1
  # call strlenV
  # call print_int

  la a0, demostring1
  li a1, 11
  call rv64_only_digits
  #call strlenV
  call print_int

  addi a0, x0, 0   # Use 0 return code
  #addi    a7, x0, 93  # Service command code 93 terminates
  li  a7, 93 # Service command code 93 terminates
  ecall      # Call linux to terminate the program


