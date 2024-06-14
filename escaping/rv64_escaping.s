.text

.global rv64_simple_needs_escaping
rv64_simple_needs_escaping:
  mv t1, a0 # beginning of string
  mv t3, a1 # length
.simple_loop:
  ble t3, zero, .no_need
  mv t2, zero
  lb t2, (t1)
  li t0, 32
  blt t2, t0, .need_esc
  li t0, 92 # ASCII for \
  beq t2, t0, .need_esc
  li t0, 34 # ASCII for "
  beq t2, t0, .need_esc
  addi t3, t3, -1 # decrement length
  addi t1, t1, 1
  j .simple_loop
.no_need:
  li a0, 0
  ret
.need_esc:
  li a0, 1
  ret
