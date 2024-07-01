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

.global rv64_fuck
rv64_fuck: #a0 is input
  mv a3, a0
  vsetvli a1, x0, e8, m8, ta, ma  # Vector of bytes of maximum length
  vle8ff.v v8, (a3)     # Load bytes
  csrr a1, vl           # Get bytes read
  li a1, 0x30
  vminu.vx v9, v8, a1    # vector-scalar
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
