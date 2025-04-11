extern caml_call_gc
extern caml_system__frametable
extern caml_globals_inited

extern camlMini__entry
extern camlMini__data_begin
extern camlMini__data_end
extern camlMini__code_begin
extern camlMini__code_end
extern camlMini__gc_roots

        ;FILE ""
; "aM" == allocatable mergable
;MISMATCH: "        .section .rodata.cst16,"aM",@progbits,16"
section .rodata "aM" progbits align=16
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
        sub rsp, 8
L126:
        ;call    camlMini__entry@PLT
        call    camlMini__entry  ; Is it OK???
L127:
        ;mov    rax, [caml_globals_inited@GOTPCREL + rip]
        mov    rax, [caml_globals_inited wrt ..got]    ; is it OK???
;MISMATCH: "        addq    $1, (%rax)"
        add   qword [rax], 1

        mov   eax, 1
        add rsp, 8
        ret

GLOBAL caml_program:function
; MISMATCH: "        .size caml_program,. - caml_program"

SECTION .text
        ALIGN 16
        GLOBAL  caml_curry2
caml_curry2:
        sub rsp, 8
L128:
        sub r15, 40
        cmp r15, QWORD [r14]
        jb L129
L131:
        lea rdi, [r15+8]
        mov qword   [rdi-8], 4343
        ;mov    rsi, [caml_curry2_1@GOTPCREL+rip]
        mov    rsi, [caml_curry2_1 wrt ..got]
        mov    qword [rdi],rsi
; MISMATCH: "        movabsq $72057594037927941, %rsi"
        mov    rsi, qword 100000000000005H
        mov    qword [rdi+8], rsi
        mov    qword [rdi+16], rax
        mov    qword [rdi+24], rbx
        mov    rax,rdi
        add rsp, 8
        ret
L129:
        ; call    caml_call_gc@PLT
        call    caml_call_gc ; ????
L130:
        jmp L131

GLOBAL caml_curry2:function
; MISMATCH: "        .size caml_curry2,. - caml_curry2"

SECTION .text
        ALIGN 16
        GLOBAL  caml_curry2_1
caml_curry2_1:
        sub rsp, 8
L132:
        mov    rsi,rax
        cmp r15,QWORD  [r14]
        jbe L133
L134:
        mov    rdi, QWORD [rbx+24]
        mov    rax, QWORD [rbx+16]
        mov    rdx, QWORD [rdi+16]
        mov    rbx,rsi
        add rsp, 8
        jmp     rdx
L133:
        ; call    caml_call_gc@PLT
        call    caml_call_gc ; ????
L135:
        jmp L134

GLOBAL caml_curry2_1:function
; MISMATCH: "        .size caml_curry2_1,. - caml_curry2_1"

SECTION .text
        ALIGN 16
        GLOBAL  caml_apply3
caml_apply3:
        sub rsp, 24
L137:
        mov    rdx, QWORD  [rsi+8]
        sar rdx, 56
        cmp rdx, 3
        jne L136
        mov    rdx, qword [rsi+16]
        add rsp, 24
        jmp     rdx
        ALIGN 4
L136:
        mov QWORD    [rsp+8],rdi
        mov QWORD    [rsp],rbx
        mov     rdi, QWORD [rsi]
        mov     rbx,rsi
        call    rdi
L138:
        mov     rbx, rax
        mov     rdi, QWORD [rbx]
        mov     rax, QWORD [rsp]
        call    rdi
L139:
        mov    rbx, rax
        mov    rdi, QWORD [rbx]
        mov    rax, QWORD [rsp+8]
        add rsp, 24
        jmp     rdi
GLOBAL caml_apply3:function
; MISMATCH: "        .size caml_apply3,. - caml_apply3"

SECTION .text
        ALIGN 16
        GLOBAL  caml_apply2
caml_apply2:
        sub rsp, 8
L141:
        mov    rsi, QWORD [rdi+8]
        sar rsi, 56
        cmp rsi, 2
        jne L140
        mov    rsi, QWORD [rdi+16]
        add rsp, 8
        jmp     rsi
        ALIGN 4
L140:
        mov     QWORD  [rsp],rbx
        mov     rsi, QWORD  [rdi]
        mov     rbx, rdi
        call    rsi
L142:
        mov    rbx, rax
        mov    rdi, QWORD [rbx]
        mov    rax, QWORD [rsp]
        add rsp, 8
        jmp     rdi

GLOBAL caml_apply2:function
;MISMATCH: "        .size caml_apply2,. - caml_apply2"

SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
GLOBAL  caml_exn_Out_of_memory
caml_exn_Out_of_memory:
;MISMATCH: "        .quad   caml_startup__1"
        dq caml_startup__1
;MISMATCH: "        .quad   -1"
        dq -1
;MISMATCH: "        .quad   3068"
        dq 3064
caml_startup__1:
        db      'Out_of_memory'
        RESB    2
        db      2
SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Sys_error
caml_exn_Sys_error:
;MISMATCH: "        .quad   caml_startup__2"
        dq caml_startup__2
;MISMATCH: "        .quad   -3"
        dq -3
;MISMATCH: "        .quad   3068"
        dq 3064
caml_startup__2:
        db      'Sys_error'
        RESB    6
        db      6

SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Failure
caml_exn_Failure:
;MISMATCH: "        .quad   caml_startup__3"
        dq caml_startup__3
;MISMATCH: "        .quad   -5"
        dq -5
;MISMATCH: "        .quad   2044"
        dq 2044
caml_startup__3:
        db      'Failure'
        db      0

SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Invalid_argument
caml_exn_Invalid_argument:
;MISMATCH: "        .quad   caml_startup__4"
        dq caml_startup__4
;MISMATCH: "        .quad   -7"
        dq -7
;MISMATCH: "        .quad   4092"
        dq 4092
caml_startup__4:
        db      'Invalid_argument'
        RESB    7
        db      7

SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_End_of_file
caml_exn_End_of_file:
;MISMATCH: "        .quad   caml_startup__5"
        dq caml_startup__5
;MISMATCH: "        .quad   -9"
        dq -9
;MISMATCH: "        .quad   3068"
        dq 3064
caml_startup__5:
        db      'End_of_file'
        RESB    4
        db      4
SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Division_by_zero
caml_exn_Division_by_zero:
;MISMATCH: "        .quad   caml_startup__6"
        dq caml_startup__6
;MISMATCH: "        .quad   -11"
        dq -11
;MISMATCH: "        .quad   4092"
        dq 4092
caml_startup__6:
        db      'Division_by_zero'
        RESB    7
        db      7
SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Not_found
caml_exn_Not_found:
;MISMATCH: "        .quad   caml_startup__7"
        dq caml_startup__7
;MISMATCH: "        .quad   -13"
        dq -13
;MISMATCH: "        .quad   3068"
        dq 3064
caml_startup__7:
        db      'Not_found'
        RESB    6
        db      6
SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Match_failure
caml_exn_Match_failure:
;MISMATCH: "        .quad   caml_startup__8"
        dq caml_startup__8
;MISMATCH: "        .quad   -15"
        dq -15
;MISMATCH: "        .quad   3068"
        dq 3064
caml_startup__8:
        db      'Match_failure'
        RESB    2
        db      2

SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Stack_overflow
caml_exn_Stack_overflow:
;MISMATCH: "        .quad   caml_startup__9"
        dq caml_startup__9
; MISMATCH: "        .quad   -17"
        dq -17
; MISMATCH: "        .quad   3068"
        dq 3068
caml_startup__9:
        db      'Stack_overflow'
        RESB    1
        db      1

SECTION .data
        ALIGN 8
; MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Sys_blocked_io
caml_exn_Sys_blocked_io:
; MISMATCH: "        .quad   caml_startup__10"
        dq caml_startup__10
; MISMATCH: "        .quad   -19"
        dq -19
; MISMATCH: "        .quad   3068"
        dq 3068
caml_startup__10:
        db      'Sys_blocked_io'
        RESB    1
        db      1
        SECTION .data
        ALIGN 8
; MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Assert_failure
caml_exn_Assert_failure:
; MISMATCH: "        .quad   caml_startup__11"
        dq caml_startup__11
; MISMATCH: "        .quad   -21"
        dq -21
; MISMATCH: "        .quad   3068"
        dq 3068
caml_startup__11:
        db      'Assert_failure'
        RESB    1
        db      1

SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   3064"
        dq 3064
        GLOBAL  caml_exn_Undefined_recursive_module
caml_exn_Undefined_recursive_module:
; MISMATCH: "        .quad   caml_startup__12"
        dq caml_startup__12
; MISMATCH: "        .quad   -23"
        dq -23
; MISMATCH: "        .quad   5116"
        dq 5116
caml_startup__12:
        db      'Undefined_recursive_module'
        RESB    5
        db      5

SECTION .data
        ALIGN 8
        GLOBAL  caml_globals
caml_globals:
; MISMATCH: "        .quad   camlMini__gc_roots"
        dq camlMini__gc_roots
; MISMATCH: "        .quad   0"
        dq 0
        SECTION .data
        ALIGN 8
;MISMATCH: "        .quad   10236"
        dq 10236
        GLOBAL  caml_globals_map
caml_globals_map:
        db      '\204\225\246\276\0\0\0\60\0\0\0\10\0\0\0\36\0\0\0\31\240\300$Mini\220\60\303Fn\353\265\264\332\345)X\346\345\217\31\373x\220\60\312\222\35\275R\276m\246\16\207\270\247\15\373e\203\240\4\6@@'
        RESB    3
        db      3

SECTION .data
        ALIGN 8
        GLOBAL  caml_data_segments
caml_data_segments:
;MISMATCH: "        .quad   caml_startup__data_begin"
        dq   caml_startup__data_begin
;MISMATCH: "        .quad   caml_startup__data_end"
        dq caml_startup__data_end
;MISMATCH: "        .quad   camlMini__data_begin"
        dq camlMini__data_begin
;MISMATCH: "        .quad   camlMini__data_end"
        dq camlMini__data_end
;MISMATCH: "        .quad   0"
        dq 0

SECTION .data
        ALIGN 8
        GLOBAL  caml_code_segments
caml_code_segments:
;MISMATCH: "        .quad   caml_startup__code_begin"
        dq caml_startup__code_begin
;MISMATCH: "        .quad   caml_startup__code_end"
        dq caml_startup__code_end
;MISMATCH: "        .quad   camlMini__code_begin"
        dq camlMini__code_begin
;MISMATCH: "        .quad   camlMini__code_end"
        dq camlMini__code_end
;MISMATCH: "        .quad   0"
        dq 0
SECTION .data
ALIGN 8
GLOBAL  caml_frametable
caml_frametable:
; MISMATCH: "        .quad   caml_startup__frametable"
        dq caml_startup__frametable
; MISMATCH: "        .quad   caml_system__frametable"
        dq caml_system__frametable
        ;.quad  camlMini__frametable
        ;dq camlMini__frametable
;MISMATCH: "        .quad   0"
        dq 0
SECTION .text
GLOBAL  caml_startup__code_end
caml_startup__code_end:
SECTION .data
        ;/* relocation table start */"
        ALIGN 8
        ;/* relocation table end */"

SECTION .data
;MISMATCH: "        .quad   0"
        dq 0
GLOBAL  caml_startup__data_end
caml_startup__data_end:
;MISMATCH: "        .quad   0"
        dq 0

ALIGN 8
GLOBAL  caml_startup__frametable
caml_startup__frametable:
;MISMATCH: "        .quad   6"
        dq 6
;MISMATCH: "        .quad   .L142"
        dq L142
        dw      16
        dw      1
        dw      0
        ALIGN 8
;MISMATCH: "        .quad   .L139"
        dq  L139
        dw      32
        dw      1
        dw      8
        ALIGN 8
;MISMATCH: "        .quad   .L138"
        dq L138
        dw      32
        dw      2
        dw      0
        dw      8
        ALIGN 8
; MISMATCH: "        .quad   .L135"
        dq L135
        dw      18
        dw      2
        dw      3
        dw      7
        db      0
        ALIGN 8
;MISMATCH: "        .quad   .L130"
        dq L130
        dw      18
        dw      2
        dw      1
        dw      3
        db      1
        db      3
        ALIGN 8
;MISMATCH: "        .quad   .L127"
        dq L127
        dw      16
        dw      0
        ALIGN 8
        ALIGN 8
;MISMATCH: "        .size caml_startup__frametable,. - caml_startup__frametable"
        ; .size caml_startup__frametable,. - caml_startup__frametable

;MISMATCH: "        .section .note.GNU-stack,"",%progbits"
section .note.GNU-stack  progbits
;
