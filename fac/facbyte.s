.global _start
_start: li a0, 6
        call fac # result is in a0. N.B. maybe BUG?
        li a5, 256
        rem a0, a0, a5 # 6!-256*2 = 208
        li  a7, 93 # Service command code 93 terminates
        ecall      # Call linux to terminate the program
fac:  li   a1, 1  # 1
      ble  a0, a1, .fac_exit
      mv   a5, a0 # a0 is input
      li   a0, 1 # product, return value
.fac_loop:    mv   a4, a5
              addi a5, a5, -1
              mul  a0, a4, a0
              bne  a5, a1, .fac_loop
.fac_exit: ret
