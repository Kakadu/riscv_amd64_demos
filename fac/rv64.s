#
# a0-a2 - parameters to linux function services
# a7 - linux function number
#

# Provide program starting address to linker
.global _start

_start:
  li a0, 5
  call fac
  call print_int

  addi a0, x0, 0   # Use 0 return code
  #addi    a7, x0, 93  # Service command code 93 terminates
  li  a7, 93 # Service command code 93 terminates
  ecall      # Call linux to terminate the program

fac:
  mv      a5, a0
  li      a0, 1
  li      a3, 1
  ble     a5,a0,.L5
.L2:
  mv      a4, a5
  addiw   a5, a5,-1
  mulw    a0, a4,a0
  bne     a5, a3, .L2
.L5:
  ret
