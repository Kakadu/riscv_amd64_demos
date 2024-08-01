
.section .data
demostring1:    .string "01234567012345670123456701234567\n" # 32 bytes
demostring2:    .string "01234\67012345670123456701234567\n" # 32 bytes
tempread: .string "x"

.text
.global _start # Provide program starting address to linker
_start:
.option push # MAGIC
.option norelax
  la gp, __global_pointer$
.option pop
  call read_int
  call print_int


  addi a0, x0, 0   # Use 0 return code
  #addi    a7, x0, 93  # Service command code 93 terminates
  li  a7, 93 # Service command code 93 terminates
  ecall      # Call linux to terminate the program

.global read_int
read_int:
  la a6, tempread
  li t3, 0
.read_int_loop:
  li a7, 63 # read
  li a0, 0
  la a1, tempread
  li a2, 1
  ecall
  lb t0, (a6)
  li a5, 47
  ble t0, a5, .read_int_exit
  li a5, 58
  ble a5, t0, .read_int_exit
  addi t0, t0, -48
  li t4, 10
  mul t3, t3, t4
  add t3, t3, t0
  j .read_int_loop
.read_int_exit_error:
  mv a0, t3
.read_int_exit:
  mv a0, t3
  ret
