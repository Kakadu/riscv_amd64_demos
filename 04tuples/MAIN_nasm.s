; Disassembly of file: 01work/fac_gas.o
; Fri Apr 11 22:16:46 2025
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global camlMAIN__string_of_int_21: function
global camlMAIN__code_begin
global camlMAIN__output_string_31: function
global camlMAIN__print_endline_43: function
global camlMAIN__entry: function
global camlMAIN__code_end
global camlMAIN__data_begin
global camlMAIN__string_of_int_21_closure
global camlMAIN__string_of_int_62
global camlMAIN__print_endline_43_closure
global camlMAIN__print_endline_105
global camlMAIN__output_string_31_closure
global camlMAIN__output_string_63
global camlFac
global camlMAIN__apply_arg_106
global camlMAIN__apply_arg_109
global camlMAIN__Pccall_114
global camlMAIN__gc_roots
global camlMAIN__const_immstring_22
global camlMAIN__data_end

extern caml_ml_open_descriptor_out                      ; qword
extern caml_ml_flush                                    ; qword
extern caml_ml_output_char                              ; qword
extern caml_ml_output                                   ; qword
extern caml_c_call                                      ; near
extern caml_format_int                                  ; qword
extern _GLOBAL_OFFSET_TABLE_                            ; byte
extern caml_curry2                                      ; byte

SECTION .rodata.cst16 align=16 noexecute                ; section number 4, const

caml_negf_mask:                                         ; byte
        dq 0x8000000000000000
        dq 0

caml_absf_mask:                                         ; byte
        dq 0x7fffffffffffffff
        dq -1


SECTION .data   align=8 noexecute
camlMAIN__data_begin:                                   ; byte
SECTION .text
camlMAIN__code_begin:
SECTION .data   align=8 noexecute
        dq 3063

camlMAIN__string_of_int_62:                             ; byte
camlMAIN__string_of_int_21_closure:                     ; byte
        dq camlMAIN__string_of_int_21                   ; 0008 _ 0000000000000000 (d)
        dq 0100000000000005H                            ; 0010 _ 0100000000000005
        dq 3063

camlMAIN__print_endline_43_closure:                     ; byte
camlMAIN__print_endline_105:                            ; byte
        dq camlMAIN__print_endline_43                   ; 0020 _ 0000000000000000 (d)
        dq 0100000000000005H                            ; 0028 _ 0100000000000005
        dq 0000000000000FF7H                            ; 0030 _ 0000000000000FF7

camlMAIN__output_string_31_closure:
camlMAIN__output_string_63:
        dq caml_curry2
        dq 0200000000000007H
        dq camlMAIN__output_string_31
        dq 0000000000001300H                            ; 5888

camlFac: dq 1
        dq camlMAIN__string_of_int_21_closure           ; 0060 _ 0000000000000000 (d)
        dq camlMAIN__output_string_31_closure           ; 0068 _ 0000000000000000 (d)
        dq camlMAIN__print_endline_43_closure           ; 0070 _ 0000000000000000 (d)
        dq camlMAIN__fac_58_closure
        dq 1792

camlMAIN__apply_arg_106:
        dq 1
        dq 1792
camlMAIN__apply_arg_109:
        dq 1
        dq 1792

camlMAIN__Pccall_114:                                    ; qword
        dq 1
camlMAIN__gc_roots:                                     ; byte
        dq camlMAIN__Pccall_114                          ; 0098 _ 0000000000000000 (d)
        dq camlMAIN__apply_arg_109
        dq camlMAIN__apply_arg_106
        dq camlFac                                     ; 00A8 _ 0000000000000000 (d)
        dq 0000000000000000H                            ; 00B0 _ 0000000000000000

SECTION .text   align=16 execute                        ; section number 1, code

camlMAIN__string_of_int_21:
        sub     rsp, 8                                  ; 0000 _ 48: 83. EC, 08
        ;mov     rdi, qword [rel camlMAIN__const_immstring_22+$+??]; 0004 _ 48: 8B. 3D, 00000000
        mov     rdi, qword [rel camlMAIN__const_immstring_22 wrt ..got]
        mov     rsi, rax                                ; 000B _ 48: 89. C6
        ;mov     rax, qword [rel caml_format_int+$+??]   ; 000E _ 48: 8B. 05, 00000000
        mov     rax, qword [rel caml_format_int wrt ..got]
        call    caml_c_call                             ; 0015 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 001A _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 001E _ 48: 83. C4, 08
        ret                                             ; 0022 _ C3
; camlMAIN__string_of_int_21 End of function

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H, 66H, 90H

SECTION .text
ALIGN   16

camlMAIN__output_string_31:; Function begin
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
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel caml_ml_output+$+??]    ; 005C _ 48: 8B. 05, 00000000
        mov     rax, qword [rel caml_ml_output wrt ..got]
        call    caml_c_call                             ; 0063 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 0068 _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 006C _ 48: 83. C4, 08
        ret                                             ; 0070 _ C3
; camlMAIN__output_string_31 End of function

SECTION .text
ALIGN   16

camlMAIN__print_endline_43:; Function begin
        sub     rsp, 8                                  ; 0080 _ 48: 83. EC, 08
        mov     rbx, rax                                ; 0084 _ 48: 89. C3
        mov     rax, qword [rel camlMAIN__Pccall_114 wrt ..got]
        mov     rax, qword [rax]                        ; 008E _ 48: 8B. 00
        call    camlMAIN__output_string_31              ; 0091 _ E8, 00000000(PLT r)
        mov     esi, 21                                 ; 0096 _ BE, 00000015
        mov     rax, qword [rel camlMAIN__Pccall_114 wrt ..got]
        mov     rdi, qword [rax]                        ; 00A2 _ 48: 8B. 38
        mov     rax, qword [rel caml_ml_output_char wrt ..got]
        call    caml_c_call                             ; 00AC _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 00B1 _ 4D: 8B. 7E, 08
        mov     rax, qword [rel camlMAIN__Pccall_114 wrt ..got]
        mov     rdi, qword [rax]                        ; 00BC _ 48: 8B. 38
        mov     rax, qword [rel caml_ml_flush wrt ..got]
        call    caml_c_call                             ; 00C6 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 00CB _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 00CF _ 48: 83. C4, 08
        ret                                             ; 00D3 _ C3
; camlMAIN__print_endline_43 End of function

; ALIGN 16
; camlMAIN__fac_58:
;         sub rsp, 8
;         cmp rax, 5
;         jge .L108
;         mov rax, 3
;         add rsp, 8
;         ret
; ALIGN 4
; .L108:
;         mov [rsp], rax
;         add rax, -2
;         call     camlMAIN__fac_58
; .L110:
;         mov rbx, rax
;         sar rbx, 1
;         mov rax, [rsp]
;         dec rax
;         imul rax, rbx
;         inc rax
;         add rsp, 8
;         ret

SECTION .data   align=8 noexecute
        dq 2044
camlMAIN__const_immstring_22:                           ; qword
        ;dq 0500000000006425H                            ; 00C0 _ 0500000000006425
        db "%d"
        times 5 db 0
        db 5

SECTION .text
ALIGN   16

camlMAIN__entry:
        sub     rsp, 8                                  ; 00E0 _ 48: 83. EC, 08
        mov     edi, 3                                  ; 00E4 _ BF, 00000003
        mov     rax, qword [rel caml_ml_open_descriptor_out wrt ..got]
        call    caml_c_call
        mov     r15, qword [r14+8H]
        mov     rbx, qword [rel camlMAIN__Pccall_114 wrt ..got]
        mov     qword [rbx], rax
        mov     rax, 221
        call    camlMAIN__string_of_int_21
        mov     rbx, qword [rel camlMAIN__apply_arg_109 wrt ..got]
        mov     qword [rbx], rax
        mov     rax, qword [rel camlMAIN__apply_arg_109 wrt ..got]
        mov     rax, qword [rax]
        call    camlMAIN__print_endline_43

        call    camlMAIN__string_of_int_21              ; 0108 _ E8, 00000000(PLT r)
        mov     rbx, qword [rel camlMAIN__apply_arg_106 wrt ..got]
        mov     qword [rbx], rax                        ; 0114 _ 48: 89. 03
        mov     rax, qword [rel camlMAIN__apply_arg_106 wrt ..got]
        mov     rax, qword [rax]                        ; 011E _ 48: 8B. 00
        call    camlMAIN__print_endline_43              ; 0121 _ E8, 00000000(PLT r)
        mov     rax, qword [rel camlFac wrt ..got]
        mov     rbx, qword [rel camlMAIN__Pccall_114 wrt ..got]
        mov     rbx, qword [rbx]                        ; 0134 _ 48: 8B. 1B
        mov     qword [rax], rbx                        ; 0137 _ 48: 89. 18
        mov     eax, 1                                  ; 013A _ B8, 00000001
        add     rsp, 8                                  ; 013F _ 48: 83. C4, 08
        ret                                             ; 0143 _ C3
; camlMAIN__entry End of function


SECTION .data   align=8 noexecute                       ; section number 2, data
        dq caml_ml_output                               ; 00C8 _ 0000000000000000 (d)
        dq caml_ml_output_char                          ; 00D0 _ 0000000000000000 (d)
        dq caml_format_int                              ; 00D8 _ 0000000000000000 (d)
        dq caml_ml_flush                                ; 00E0 _ 0000000000000000 (d)
        dq caml_ml_open_descriptor_out                  ; 00E8 _ 0000000000000000 (d)

SECTION .text
camlMAIN__code_end:

SECTION .data   align=8 noexecute
        dq 0000000000000000H                            ; 00F0 _ 0000000000000000

camlMAIN__data_end:                                     ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00F8 _ ........


SECTION .bss    align=1 noexecute                       ; section number 3, bss


