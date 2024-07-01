GLOBAL amd64_simple_needs_escaping
amd64_simple_needs_escaping: ; @simple_needs_escaping(char*, unsigned long)
  test    rsi, rsi
  je      .LBB0_1
  movzx   edx, byte  [rdi]
  mov     al, 1
  cmp     dl, 32
  jae     .LBB0_3
.LBB0_8:
  and     al, 1
  ret
.LBB0_1:
  xor     eax, eax
  and     al, 1
  ret
.LBB0_3:
  mov     al, 1
  mov     ecx, 1
.LBB0_5:       ; =>This Inner Loop Header: Depth=1
  cmp     dl, 34  ; ASCII for "
  je      .LBB0_8
  movzx   edx, dl
  cmp     edx, 92 ; ASCII for \
  je      .LBB0_8
  cmp     rcx, rsi
  setb    al
  je      .LBB0_8
  movzx   edx, byte  [rdi + rcx]
  inc     rcx
  cmp     dl, 32
  jae     .LBB0_5
  jmp     .LBB0_8

GLOBAL amd64_branchless_needs_escaping
amd64_branchless_needs_escaping: ;(char*, unsigned long):       ; @branchless_needs_escaping(char*, unsigned long)
  test    rsi, rsi
  je      .LBB1_3
  cmp     rsi, 1
  jne     .LBB1_4
  xor     eax, eax
  xor     ecx, ecx
  jmp     .LBB1_6
.LBB1_3:
  xor     eax, eax
.LBB1_8:
  and     al, 1
  ret
.LBB1_4:
  mov     rdx, rsi
  and     rdx, -2
  xor     eax, eax
  xor     ecx, ecx
.LBB1_5:                               ; =>This Inner Loop Header: Depth=1
  movzx   r8d, byte  [rdi + rcx]
  movzx   r9d, byte  [rdi + rcx + 1]
  cmp     r8b, 32
  setb    r10b
  cmp     r8b, 34
  sete    r11b
  cmp     r8b, 92
  sete    r8b
  or      r8b, r11b
  or      r10b, al
  or      r10b, r8b
  cmp     r9b, 32
  setb    r8b
  cmp     r9b, 34
  sete    r11b
  cmp     r9b, 92
  sete    al
  or      al, r11b
  or      al, r8b
  or      al, r10b
  add     rcx, 2
  cmp     rdx, rcx
  jne     .LBB1_5
.LBB1_6:
  test    sil, 1
  je      .LBB1_8
  movzx   ecx, byte   [rdi + rcx]
  cmp     cl, 32
  setb    dl
  cmp     cl, 34
  sete    sil
  cmp     cl, 92
  sete    cl
  or      cl, sil
  or      al, dl
  or      al, cl
  and     al, 1
  ret

; Silence linker's warning about executable stack
section .note.GNU-stack noalloc noexec nowrite progbits

