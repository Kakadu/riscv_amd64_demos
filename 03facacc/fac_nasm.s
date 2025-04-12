default rel

global camlFacacc__string_of_int_21: function
global camlFacacc__code_begin
global camlFacacc__output_string_31: function
global camlFacacc__print_endline_43: function
global camlFacacc__entry: function
global camlFacacc__code_end
global camlFacacc__data_begin
global camlFacacc__string_of_int_21_closure
global camlFacacc__string_of_int_97
global camlFacacc__print_endline_43_closure
global camlFacacc__output_string_31_closure
global camlFacacc__output_string_98
global camlFac_acc
global camlFacacc__fac_58
global camlFacacc__2amatch2a_116
global camlFacacc__apply_arg_115
global camlFacacc__apply_arg_114
global camlFacacc__apply_arg_112
global camlFacacc__apply_arg_111
global camlFacacc__Pccall_119
global camlFacacc__gc_roots
global camlFacacc__const_immstring_25
global camlFacacc__data_end

extern caml_ml_open_descriptor_out                      ; qword
extern caml_ml_flush                                    ; qword
extern caml_ml_output_char                              ; qword
extern caml_ml_output                                   ; qword
extern caml_c_call                                      ; near
extern caml_format_int                                  ; qword
extern _GLOBAL_OFFSET_TABLE_                            ; byte
extern caml_curry2                                      ; byte
extern caml_call_gc

SECTION .rodata.cst16 align=16 noexecute                ; section number 4, const

; caml_negf_mask:                                         ; byte
;         dq 0x8000000000000000
;         dq 0

; caml_absf_mask:                                         ; byte
;         dq 0x7fffffffffffffff
;         dq -1


SECTION .data   align=8 noexecute
camlFacacc__data_begin:                                   ; byte
SECTION .text
camlFacacc__code_begin:
SECTION .data   align=8 noexecute
        dq 3063

camlFacacc__string_of_int_97:                             ; byte
camlFacacc__string_of_int_21_closure:                     ; byte
        dq camlFacacc__string_of_int_21                   ; 0008 _ 0000000000000000 (d)
        dq 0100000000000005H                            ; 0010 _ 0100000000000005
        dq 4087
camlFacacc__set_of_closures_99:
camlFacacc__fac_58_closure:
        dq caml_curry2
        dq 0x200000000000007
        dq camlFacacc__fac_58
        dq 3063

camlFacacc__print_endline_43_closure:                     ; byte
camlFacacc__print_endline_174:                            ; byte
        dq camlFacacc__print_endline_43                   ; 0020 _ 0000000000000000 (d)
        dq 0100000000000005H                            ; 0028 _ 0100000000000005
        dq 4087

camlFacacc__output_string_31_closure:
camlFacacc__output_string_98:
        dq caml_curry2
        dq 0200000000000007H
        dq camlFacacc__output_string_31
        dq 5888

camlFac_acc:
        dq 1
        dq camlFacacc__string_of_int_21_closure           ; 0060 _ 0000000000000000 (d)
        dq camlFacacc__output_string_31_closure           ; 0068 _ 0000000000000000 (d)
        dq camlFacacc__print_endline_43_closure           ; 0070 _ 0000000000000000 (d)
        dq camlFacacc__fac_58_closure
        dq 1792

camlFacacc__apply_arg_111:
        dq 1
        dq 1792
camlFacacc__apply_arg_112:
        dq 1
        dq 1792
camlFacacc__apply_arg_114:
        dq 1
        dq 1792
camlFacacc__apply_arg_115:
        dq 1
        dq 1792
camlFacacc__2amatch2a_116:
        dq 1
        dq 1792
camlFacacc__Pccall_119:                                    ; qword
        dq 1
camlFacacc__gc_roots:
        dq camlFacacc__Pccall_119
        dq camlFacacc__2amatch2a_116
        dq camlFacacc__apply_arg_115
        dq camlFacacc__apply_arg_114
        dq camlFacacc__apply_arg_112
        dq camlFacacc__apply_arg_111
        dq camlFac_acc
        dq 0

SECTION .text   align=16 execute                        ; section number 1, code

camlFacacc__string_of_int_21:
        sub     rsp, 8                                  ; 0000 _ 48: 83. EC, 08
        mov     rdi, qword [rel camlFacacc__const_immstring_25 wrt ..got]
        mov     rsi, rax                                ; 000B _ 48: 89. C6
        mov     rax, qword [rel caml_format_int wrt ..got]
        call    caml_c_call                             ; 0015 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 001A _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 001E _ 48: 83. C4, 08
        ret                                             ; 0022 _ C3
; camlFacacc__string_of_int_21 End of function

SECTION .text
ALIGN   16

camlFacacc__output_string_31:; Function begin
        sub     rsp, 8                                  ; 0030 _ 48: 83. EC, 08
        mov     rdi, qword [rbx-8H]                     ; 0034 _ 48: 8B. 7B, F8
        shr     rdi, 10                                 ; 0038 _ 48: C1. EF, 0A
        lea     rdi, [rdi*8-1H]                         ; 003C _ 48: 8D. 3C FD, FFFFFFFF
        movzx   rsi, byte [rbx+rdi]                     ; 0044 _ 48: 0F B6. 34 3B
        sub     rdi, rsi                                ; 0049 _ 48: 29. F7
        lea     rcx, [rdi+rdi+1H]                       ; 004C _ 48: 8D. 4C 3F, 01
        mov     edx, 1                                  ; 0051 _ BA, 00000001
        mov     rdi, rax                                ; 0056 _ 48: 89. C7
        mov     rsi, rbx                                ; 0059 _ 48: 89. DE
        mov     rax, qword [rel caml_ml_output wrt ..got]
        call    caml_c_call                             ; 0063 _ E8, 00000000(PLT r)

        mov     r15, qword [r14+8H]                     ; 0068 _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 006C _ 48: 83. C4, 08
        ret                                             ; 0070 _ C3
; camlFacacc__output_string_31 End of function

SECTION .text
ALIGN   16

camlFacacc__print_endline_43:; Function begin
        sub     rsp, 8                                  ; 0080 _ 48: 83. EC, 08
        mov     rbx, rax                                ; 0084 _ 48: 89. C3
        mov     rax, qword [rel camlFacacc__Pccall_119 wrt ..got]
        mov     rax, qword [rax]                        ; 008E _ 48: 8B. 00
        call    camlFacacc__output_string_31              ; 0091 _ E8, 00000000(PLT r)
        mov     esi, 21                                 ; 0096 _ BE, 00000015
        mov     rax, qword [rel camlFacacc__Pccall_119 wrt ..got]
        mov     rdi, qword [rax]                        ; 00A2 _ 48: 8B. 38
        mov     rax, qword [rel caml_ml_output_char wrt ..got]
        call    caml_c_call                             ; 00AC _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 00B1 _ 4D: 8B. 7E, 08
        mov     rax, qword [rel camlFacacc__Pccall_119 wrt ..got]
        mov     rdi, qword [rax]                        ; 00BC _ 48: 8B. 38
        mov     rax, qword [rel caml_ml_flush wrt ..got]
        call    caml_c_call                             ; 00C6 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 00CB _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 00CF _ 48: 83. C4, 08
        ret                                             ; 00D3 _ C3
; camlFacacc__print_endline_43 End of function

ALIGN 16
camlFacacc__fac_58:
        sub rsp, 8
.L109:
        cmp r15, qword [r14]
        jbe .L110
.L111:
        cmp rbx, 5
        jge .L108
        sub r15, 24
        cmp r15, qword [r14]
        jb .L113
.L115:
        lea rbx, qword [r15+8]
        mov qword [rbx-8], 2048
        mov qword [rbx], rax
        mov rdi, rax
        sar rdi, 1
        dec rax
        imul rax, rdi
        inc rax
        mov qword [rbx+8], rax
        mov rax, rbx
        add rsp, 8
        ret
ALIGN 4
.L108:
        mov [rdi], rbx
        add rdx, -2
        sar rbx, 1
        dec rax
        imul rax, rbx
        inc rax
        mov rbx, rdi
        jmp .L109
.L113:
        call	caml_call_gc
.L114:
        jmp .L115
.L110:
        call	caml_call_gc
.L112:
        jmp .L111

SECTION .data   align=8 noexecute
        dq 2044
camlFacacc__const_immstring_25:
        ;dq 0500000000006425H                            ; 00C0 _ 0500000000006425
        db "%d"
        times 5 db 0
        db 5

SECTION .text
ALIGN   16

camlFacacc__entry:
        sub     rsp, 8
        mov     edi, 3
        mov     rax, qword [rel caml_ml_open_descriptor_out wrt ..got]
        call    caml_c_call
        mov     r15, qword [r14+8H]
        mov     rbx, qword [rel camlFacacc__Pccall_119 wrt ..got]
        mov     qword [rbx], rax
        mov     rbx, 3
        mov     rax, 3
        call    camlFacacc__fac_58

        mov     rbx, qword [rel camlFacacc__2amatch2a_116 wrt ..got]
        mov     qword [rbx], rax
        mov     rbx, qword [rel camlFacacc__apply_arg_115 wrt ..got]
        mov     rbx, qword [rel camlFacacc__2amatch2a_116 wrt ..got]
        mov     rbx, qword [rbx]
        mov     rbx, qword [rbx]
        mov     qword [rax], rbx
        mov     rax, qword [rel camlFacacc__apply_arg_115 wrt ..got]
        mov     rax, qword [rax]

        call    camlFacacc__string_of_int_21
        mov     rbx, qword [rel camlFacacc__apply_arg_114 wrt ..got]
        mov     qword [rbx], rax
        mov     rax, qword [rel camlFacacc__apply_arg_114 wrt ..got]
        mov     rax, qword [rax]
        call    camlFacacc__print_endline_43

        mov     rax, qword [rel camlFacacc__apply_arg_112 wrt ..got]
        mov     rbx, qword [rel camlFacacc__2amatch2a_116 wrt ..got]
        mov     rbx, qword [rbx]
        mov     rbx, qword [rbx+8]
        mov     qword [rax], rbx
        mov     rax, qword [rel camlFacacc__apply_arg_112 wrt ..got]
        mov     rax, qword [rax]
        call    camlFacacc__string_of_int_21
        mov     rbx, qword [rel camlFacacc__apply_arg_111 wrt ..got]
        mov     qword [rbx], rax
        mov     rax, qword [rel camlFacacc__apply_arg_111 wrt ..got]
        mov     rax, qword [rax]
        call    camlFacacc__print_endline_43

        mov     rax, qword [rel camlFac_acc wrt ..got]
        mov     rbx, qword [rel camlFacacc__Pccall_119 wrt ..got]
        mov     rbx, qword [rbx]
        mov     qword [rax], rbx
        mov     eax, 1
        add     rsp, 8
        ret
; camlFacacc__entry End of function


SECTION .data   align=8 noexecute                       ; section number 2, data
        dq caml_ml_output                               ; 00C8 _ 0000000000000000 (d)
        dq caml_ml_output_char                          ; 00D0 _ 0000000000000000 (d)
        dq caml_format_int                              ; 00D8 _ 0000000000000000 (d)
        dq caml_ml_flush                                ; 00E0 _ 0000000000000000 (d)
        dq caml_ml_open_descriptor_out                  ; 00E8 _ 0000000000000000 (d)

SECTION .text
camlFacacc__code_end:

SECTION .data   align=8 noexecute
        dq 0000000000000000H                            ; 00F0 _ 0000000000000000

camlFacacc__data_end:                                     ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00F8 _ ........


SECTION .bss    align=1 noexecute                       ; section number 3, bss


