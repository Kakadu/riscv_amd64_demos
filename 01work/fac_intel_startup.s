        ;FILE ""
;MISMATCH: "        .section .rodata.cst16,"aM",@progbits,16"
section .rodata
        ALIGN 16
caml_negf_mask:
; MISMATCH: "        .quad   0x8000000000000000"
        dq 0x8000000000000000
; MISMATCH: "        .quad   0"
        dq 0
        ALIGN 16
caml_absf_mask:
; MISMATCH: "        .quad   0x7fffffffffffffff"
; MISMATCH: "        .quad   -1"
        dq 0x7fffffffffffffff
        dq -1
        SECTION .data
        GLOBAL  caml_startup__data_begin
caml_startup__data_begin:
        SECTION .text
        GLOBAL  caml_startup__code_begin
caml_startup__code_begin:

SECTION .text
ALIGN 16
GLOBAL  caml_program
caml_program:
;MISMATCH: "        subq    $8, %rsp"
        sub rsp, 8
L126:
        call    camlMini__entry@PLT
L127:
        mov    rax,[caml_globals_inited@GOTPCREL(%rip)]
        add    [rax], 1
MISMATCH: "        addq    $1, (%rax)"
        mov    eax, 1
MISMATCH: "        addq    $8, %rsp"
        ;.cfi_adjust_cfa_offset -8
        ret
        ;.cfi_adjust_cfa_offset 8
        ;.cfi_adjust_cfa_offset -8
        ;.cfi_endproc
        GLOBAL caml_program:function
MISMATCH: "        .size caml_program,. - caml_program"

        SECTION .text
        ALIGN 16
        GLOBAL  caml_curry2
caml_curry2:
        ;.cfi_startproc
MISMATCH: "        subq    $8, %rsp"
        ;.cfi_adjust_cfa_offset 8
L128:
MISMATCH: "        subq    $40, %r15"
MISMATCH: "        cmpq    (%r14), %r15"
        jb L129
L131:
MISMATCH: "        leaq    8(%r15), %rdi"
MISMATCH: "        movq    $4343, -8(%rdi)"
        movq    rsi,[caml_curry2_1@GOTPCREL(%rip)]
        movq    [rdi],rsi
MISMATCH: "        movabsq $72057594037927941, %rsi"
        movq    [rdi+8],rsi
        movq    [rdi+16],rax
        movq    [rdi+24],rbx
        movq    rax,rdi
MISMATCH: "        addq    $8, %rsp"
        ;.cfi_adjust_cfa_offset -8
        ret
        ;.cfi_adjust_cfa_offset 8
L129:
        call    caml_call_gc@PLT
L130:
        jmp L131
        ;.cfi_adjust_cfa_offset -8
        ;.cfi_endproc
        GLOBAL caml_curry2:function
MISMATCH: "        .size caml_curry2,. - caml_curry2"

SECTION .text
        ALIGN 16
        GLOBAL  caml_curry2_1
caml_curry2_1:
        ;.cfi_startproc
MISMATCH: "        subq    $8, %rsp"
        ;.cfi_adjust_cfa_offset 8
L132:
        movq    rsi,rax
MISMATCH: "        cmpq    (%r14), %r15"
        jbe L133
L134:
        movq    rdi,[rbx+24]
        movq    rax,[rbx+16]
        movq    rdx,[rdi+16]
        movq    rbx,rsi
MISMATCH: "        addq    $8, %rsp"
        ;.cfi_adjust_cfa_offset -8
        jmp     rdx
        ;.cfi_adjust_cfa_offset 8
L133:
        call    caml_call_gc@PLT
L135:
        jmp L134
        ;.cfi_adjust_cfa_offset -8
        ;.cfi_endproc
        GLOBAL caml_curry2_1:function
MISMATCH: "        .size caml_curry2_1,. - caml_curry2_1"

SECTION .text
        ALIGN 16
        GLOBAL  caml_apply3
caml_apply3:
MISMATCH: "        .cfi_startproc"
MISMATCH: "        subq    $24, %rsp"
MISMATCH: "        .cfi_adjust_cfa_offset 24"
L137:
        movq    rdx,[rsi+8]
MISMATCH: "        sarq    $56, %rdx"
MISMATCH: "        cmpq    $3, %rdx"
        jne L136
        movq    rdx,[rsi+16]
MISMATCH: "        addq    $24, %rsp"
MISMATCH: "        .cfi_adjust_cfa_offset -24"
        jmp     rdx
MISMATCH: "        .cfi_adjust_cfa_offset 24"
        ALIGN 4
L136:
        movq    [rsp+8],rdi
        movq    [rsp],rbx
        movq    rdi,[rsi]
        movq    rbx,rsi
        call    rdi
L138:
        movq    rbx,rax
        movq    rdi,[rbx]
        movq    rax,[rsp]
        call    rdi
L139:
        movq    rbx,rax
        movq    rdi,[rbx]
        movq    rax,[rsp+8]
MISMATCH: "        addq    $24, %rsp"
MISMATCH: "        .cfi_adjust_cfa_offset -24"
        jmp     rdi
MISMATCH: "        .cfi_adjust_cfa_offset 24"
MISMATCH: "        .cfi_adjust_cfa_offset -24"
MISMATCH: "        .cfi_endproc"
        GLOBAL caml_apply3:function
MISMATCH: "        .size caml_apply3,. - caml_apply3"

SECTION .text
        ALIGN 16
        GLOBAL  caml_apply2
caml_apply2:
MISMATCH: "        .cfi_startproc"
MISMATCH: "        subq    $8, %rsp"
MISMATCH: "        .cfi_adjust_cfa_offset 8"
L141:
        movq    rsi,[rdi+8]
MISMATCH: "        sarq    $56, %rsi"
MISMATCH: "        cmpq    $2, %rsi"
        jne L140
        movq    rsi,[rdi+16]
MISMATCH: "        addq    $8, %rsp"
MISMATCH: "        .cfi_adjust_cfa_offset -8"
        jmp     rsi
MISMATCH: "        .cfi_adjust_cfa_offset 8"
        ALIGN 4
L140:
        movq    [rsp],rbx
        movq    rsi,[rdi]
        movq    rbx,rdi
        call    rsi
L142:
        movq    rbx,rax
        movq    rdi,[rbx]
        movq    rax,[rsp]
MISMATCH: "        addq    $8, %rsp"
MISMATCH: "        .cfi_adjust_cfa_offset -8"
        jmp     rdi
MISMATCH: "        .cfi_adjust_cfa_offset 8"
MISMATCH: "        .cfi_adjust_cfa_offset -8"
MISMATCH: "        .cfi_endproc"
        GLOBAL caml_apply2:function
MISMATCH: "        .size caml_apply2,. - caml_apply2"

SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
GLOBAL  caml_exn_Out_of_memory
caml_exn_Out_of_memory:
MISMATCH: "        .quad   caml_startup__1"
MISMATCH: "        .quad   -1"
MISMATCH: "        .quad   3068"
caml_startup__1:
        db      'Out_of_memory'
        RESB    2
        db      2
SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Sys_error
caml_exn_Sys_error:
MISMATCH: "        .quad   caml_startup__2"
MISMATCH: "        .quad   -3"
MISMATCH: "        .quad   3068"
caml_startup__2:
        db      'Sys_error'
        RESB    6
        db      6

SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Failure
caml_exn_Failure:
MISMATCH: "        .quad   caml_startup__3"
MISMATCH: "        .quad   -5"
MISMATCH: "        .quad   2044"
caml_startup__3:
        db      'Failure'
        db      0

SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Invalid_argument
caml_exn_Invalid_argument:
MISMATCH: "        .quad   caml_startup__4"
MISMATCH: "        .quad   -7"
MISMATCH: "        .quad   4092"
caml_startup__4:
        db      'Invalid_argument'
        RESB    7
        db      7

SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_End_of_file
caml_exn_End_of_file:
MISMATCH: "        .quad   caml_startup__5"
MISMATCH: "        .quad   -9"
MISMATCH: "        .quad   3068"
caml_startup__5:
        db      'End_of_file'
        RESB    4
        db      4
SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Division_by_zero
caml_exn_Division_by_zero:
MISMATCH: "        .quad   caml_startup__6"
MISMATCH: "        .quad   -11"
MISMATCH: "        .quad   4092"
caml_startup__6:
        db      'Division_by_zero'
        RESB    7
        db      7
SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Not_found
caml_exn_Not_found:
MISMATCH: "        .quad   caml_startup__7"
MISMATCH: "        .quad   -13"
MISMATCH: "        .quad   3068"
caml_startup__7:
        db      'Not_found'
        RESB    6
        db      6
SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Match_failure
caml_exn_Match_failure:
MISMATCH: "        .quad   caml_startup__8"
MISMATCH: "        .quad   -15"
MISMATCH: "        .quad   3068"
caml_startup__8:
        db      'Match_failure'
        RESB    2
        db      2

SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Stack_overflow
caml_exn_Stack_overflow:
MISMATCH: "        .quad   caml_startup__9"
MISMATCH: "        .quad   -17"
MISMATCH: "        .quad   3068"
caml_startup__9:
        db      'Stack_overflow'
        RESB    1
        db      1

SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Sys_blocked_io
caml_exn_Sys_blocked_io:
MISMATCH: "        .quad   caml_startup__10"
MISMATCH: "        .quad   -19"
MISMATCH: "        .quad   3068"
caml_startup__10:
        db      'Sys_blocked_io'
        RESB    1
        db      1
        SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Assert_failure
caml_exn_Assert_failure:
MISMATCH: "        .quad   caml_startup__11"
MISMATCH: "        .quad   -21"
MISMATCH: "        .quad   3068"
caml_startup__11:
        db      'Assert_failure'
        RESB    1
        db      1

SECTION .data
        ALIGN 8
MISMATCH: "        .quad   3064"
        GLOBAL  caml_exn_Undefined_recursive_module
caml_exn_Undefined_recursive_module:
MISMATCH: "        .quad   caml_startup__12"
MISMATCH: "        .quad   -23"
MISMATCH: "        .quad   5116"
caml_startup__12:
        db      'Undefined_recursive_module'
        RESB    5
        db      5

SECTION .data
        ALIGN 8
        GLOBAL  caml_globals
caml_globals:
MISMATCH: "        .quad   camlMini__gc_roots"
MISMATCH: "        .quad   0"
        SECTION .data
        ALIGN 8
MISMATCH: "        .quad   10236"
        GLOBAL  caml_globals_map
caml_globals_map:
        db      '\204\225\246\276\0\0\0\60\0\0\0\10\0\0\0\36\0\0\0\31\240\300$Mini\220\60\303Fn\353\265\264\332\345)X\346\345\217\31\373x\220\60\312\222\35\275R\276m\246\16\207\270\247\15\373e\203\240\4\6@@'
        RESB    3
        db      3
        SECTION .data
        ALIGN 8
        GLOBAL  caml_data_segments
caml_data_segments:
MISMATCH: "        .quad   caml_startup__data_begin"
MISMATCH: "        .quad   caml_startup__data_end"
MISMATCH: "        .quad   camlMini__data_begin"
MISMATCH: "        .quad   camlMini__data_end"
MISMATCH: "        .quad   0"
        SECTION .data
        ALIGN 8
        GLOBAL  caml_code_segments
caml_code_segments:
MISMATCH: "        .quad   caml_startup__code_begin"
MISMATCH: "        .quad   caml_startup__code_end"
MISMATCH: "        .quad   camlMini__code_begin"
MISMATCH: "        .quad   camlMini__code_end"
MISMATCH: "        .quad   0"
        SECTION .data
        ALIGN 8
        GLOBAL  caml_frametable
caml_frametable:
MISMATCH: "        .quad   caml_startup__frametable"
MISMATCH: "        .quad   caml_system__frametable"
        ;.quad  camlMini__frametable
MISMATCH: "        .quad   0"
        SECTION .text
        GLOBAL  caml_startup__code_end
caml_startup__code_end:
        SECTION .data
MISMATCH: "                                /* relocation table start */"
        ALIGN 8
MISMATCH: "                                /* relocation table end */"
        SECTION .data
MISMATCH: "        .quad   0"
        GLOBAL  caml_startup__data_end
caml_startup__data_end:
MISMATCH: "        .quad   0"
        ALIGN 8
        GLOBAL  caml_startup__frametable
caml_startup__frametable:
MISMATCH: "        .quad   6"
MISMATCH: "        .quad   .L142"
        dw      16
        dw      1
        dw      0
        ALIGN 8
MISMATCH: "        .quad   .L139"
        dw      32
        dw      1
        dw      8
        ALIGN 8
MISMATCH: "        .quad   .L138"
        dw      32
        dw      2
        dw      0
        dw      8
        ALIGN 8
MISMATCH: "        .quad   .L135"
        dw      18
        dw      2
        dw      3
        dw      7
        db      0
        ALIGN 8
MISMATCH: "        .quad   .L130"
        dw      18
        dw      2
        dw      1
        dw      3
        db      1
        db      3
        ALIGN 8
MISMATCH: "        .quad   .L127"
        dw      16
        dw      0
        ALIGN 8
        ALIGN 8
MISMATCH: "        .size caml_startup__frametable,. - caml_startup__frametable"
MISMATCH: "        .section .note.GNU-stack,"",%progbits"
;
