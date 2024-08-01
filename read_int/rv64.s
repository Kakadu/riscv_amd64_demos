
.section .data
tempread: .string "x"

.section .text
.global _start
_start:
.option push # MAGIC
.option norelax
  la gp, __global_pointer$
.option pop
  call read_int
  bne a1, zero, .main_error
  call print_int

  li a0, 0
  li a7, 93 # Service command code 93 terminates
  ecall      # Call linux to terminate the program
.main_error:
  li a0, 1
  li a7, 93 # Service command code 93 terminates
  ecall

.global read_int
read_int:
  # returns result in a0
  # if a1 <> 0, it is an error
  la a6, tempread
  li t3, 0  # accum
.read_int_loop:
  li a7, 63 # read
  li a0, 0
  la a1, tempread
  li a2, 1
  ecall
  lb t0, (a6)
  li a5, 10 # ascii \n
  beq t0, a5, .read_int_exit
  li a5, 48
  blt t0, a5, .read_int_exit_error
  li a5, 58
  bge t0, a5, .read_int_exit_error
  addi t0, t0, -48
  li t4, 10
  mul t3, t3, t4
  add t3, t3, t0
  j .read_int_loop
.read_int_exit_error:
  li a0, 0
  li a1, 1
  ret
.read_int_exit:
  li a1, 0
  mv a0, t3
  ret
