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

.global rv64_only_digits
rv64_only_digits: #a0 is input, a1 is length
  # return 0 if only digits, else 1
  # a6 is temporary
  # a7 is effective vector length
.only_digits_loop:
  vsetvli a7, a1, e8, m8 # e8 -- element size (1 byte)
  vle8.v v0, (a0)     # Load bytes
  csrr a1, vl           # Get bytes read
  li t0, 0x30
  vminu.vx v8, v0, t0
  li t0, 0x39
  vmaxu.vx v16, v0, t0
  vsub.vv v24, v16, v8   # subtract max and min
  li t0, 0x9
  vmsne.vx v24, v24, t0
  vfirst.m t0, v24
  li t1, -1
  xor t0, t0, t1
  bne t0, zero, .only_digits_error
  sub a1, a1, a7
  add a0, a0, a7
  bgt a1, zero, .only_digits_loop
  j .only_digits_success
.only_digits_success:
  li a0, 0
  ret
.only_digits_error:
  li a0, 1
  ret

# size_t strlen(const char *str)
# a0 holds *str
.global strlenV
strlenV:
  mv a3, a0             # Save start
.loop:
  vsetvli a1, x0, e8, m8, ta, ma  # Vector of bytes of maximum length
  vle8ff.v v8, (a3)     # Load bytes
  csrr a1, vl           # Get bytes read
  vmseq.vi v0, v8, 0    # Set v0[i] where v8[i] = 0
  vfirst.m a2, v0       # Find first set bit
  add a3, a3, a1        # Bump pointer
  bltz a2, .loop         # Not found?

  add a0, a0, a1        # Sum start + bump
  add a3, a3, a2        # Add index
  sub a0, a3, a0        # Subtract start address+bump

  ret
