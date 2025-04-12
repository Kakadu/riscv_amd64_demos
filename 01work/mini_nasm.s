; Disassembly of file: 01work/fac_gas.o
; Fri Apr 11 22:16:46 2025
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: Pentium Pro, x64

default rel

global camlMini__string_of_int_18: function
global camlMini__code_begin
global camlMini__output_string_28: function
global camlMini__print_endline_40: function
global camlMini__entry: function
global camlMini__code_end
global camlMini__data_begin
global camlMini__string_of_int_18_closure
global camlMini__string_of_int_62
global camlMini__print_endline_40_closure
global camlMini__print_endline_105
global camlMini__output_string_28_closure
global camlMini__output_string_63
global camlMini
global camlMini__apply_arg_70
global camlMini__Pccall_73
global camlMini__gc_roots
global camlMini__const_immstring_22
global camlMini__data_end

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
camlMini__data_begin:                                   ; byte
SECTION .text
camlMini__code_begin:
SECTION .data   align=8 noexecute
        dq 3063

camlMini__string_of_int_62:                             ; byte
camlMini__string_of_int_18_closure:                     ; byte
        dq camlMini__string_of_int_18                   ; 0008 _ 0000000000000000 (d)
        dq 0100000000000005H                            ; 0010 _ 0100000000000005
        dq 0000000000000BF7H                            ; 0018 _ 0000000000000BF7

camlMini__print_endline_40_closure:                     ; byte
camlMini__print_endline_105:                            ; byte
        dq camlMini__print_endline_40                   ; 0020 _ 0000000000000000 (d)
        dq 0100000000000005H                            ; 0028 _ 0100000000000005
        dq 0000000000000FF7H                            ; 0030 _ 0000000000000FF7

camlMini__output_string_28_closure:                     ; byte
camlMini__output_string_63:                             ; byte
        dq caml_curry2                                  ; 0038 _ 0000000000000000 (d)
        dq 0200000000000007H                            ; 0040 _ 0200000000000007
        dq camlMini__output_string_28                   ; 0048 _ 0000000000000000 (d)
        dq 0000000000001300H                            ; 0050 _ 0000000000001300

camlMini: dq 0000000000000001H                          ; 0058 _ 0000000000000001
        dq camlMini__string_of_int_18_closure           ; 0060 _ 0000000000000000 (d)
        dq camlMini__output_string_28_closure           ; 0068 _ 0000000000000000 (d)
        dq camlMini__print_endline_40_closure           ; 0070 _ 0000000000000000 (d)
        dq 0000000000000700H                            ; 0078 _ 0000000000000700

camlMini__apply_arg_70:                                 ; qword
        dq 0000000000000001H                            ; 0080 _ 0000000000000001
        dq 0000000000000700H                            ; 0088 _ 0000000000000700

camlMini__Pccall_73:                                    ; qword
        dq 0000000000000001H                            ; 0090 _ 0000000000000001

camlMini__gc_roots:                                     ; byte
        dq camlMini__Pccall_73                          ; 0098 _ 0000000000000000 (d)
        dq camlMini__apply_arg_70                       ; 00A0 _ 0000000000000000 (d)
        dq camlMini                                     ; 00A8 _ 0000000000000000 (d)
        dq 0000000000000000H                            ; 00B0 _ 0000000000000000

SECTION .text   align=16 execute                        ; section number 1, code

camlMini__string_of_int_18:
        sub     rsp, 8                                  ; 0000 _ 48: 83. EC, 08
        ;mov     rdi, qword [rel camlMini__const_immstring_22+$+??]; 0004 _ 48: 8B. 3D, 00000000
        mov     rdi, qword [rel camlMini__const_immstring_22 wrt ..got]
        mov     rsi, rax                                ; 000B _ 48: 89. C6
        ;mov     rax, qword [rel caml_format_int+$+??]   ; 000E _ 48: 8B. 05, 00000000
        mov     rax, qword [rel caml_format_int wrt ..got]
        call    caml_c_call                             ; 0015 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 001A _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 001E _ 48: 83. C4, 08
        ret                                             ; 0022 _ C3
; camlMini__string_of_int_18 End of function

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H, 66H, 90H

SECTION .text
ALIGN   16

camlMini__output_string_28:; Function begin
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
; camlMini__output_string_28 End of function

SECTION .text
ALIGN   16

camlMini__print_endline_40:; Function begin
        sub     rsp, 8                                  ; 0080 _ 48: 83. EC, 08
        mov     rbx, rax                                ; 0084 _ 48: 89. C3
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel camlMini__Pccall_73+$+??]; 0087 _ 48: 8B. 05, 00000000
        mov     rax, qword [rel camlMini__Pccall_73 wrt ..got]
        mov     rax, qword [rax]                        ; 008E _ 48: 8B. 00
        call    camlMini__output_string_28              ; 0091 _ E8, 00000000(PLT r)
        mov     esi, 21                                 ; 0096 _ BE, 00000015
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel camlMini__Pccall_73+$+??]; 009B _ 48: 8B. 05, 00000000
        mov     rax, qword [rel camlMini__Pccall_73 wrt ..got]
        mov     rdi, qword [rax]                        ; 00A2 _ 48: 8B. 38
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel caml_ml_output_char+$+??]; 00A5 _ 48: 8B. 05, 00000000
        mov     rax, qword [rel caml_ml_output_char wrt ..got]
        call    caml_c_call                             ; 00AC _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 00B1 _ 4D: 8B. 7E, 08
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel camlMini__Pccall_73+$+??]; 00B5 _ 48: 8B. 05, 00000000
        mov     rax, qword [rel camlMini__Pccall_73 wrt ..got]
        mov     rdi, qword [rax]                        ; 00BC _ 48: 8B. 38
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel caml_ml_flush+$+??]     ; 00BF _ 48: 8B. 05, 00000000
        mov     rax, qword [rel caml_ml_flush wrt ..got]
        call    caml_c_call                             ; 00C6 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 00CB _ 4D: 8B. 7E, 08
        add     rsp, 8                                  ; 00CF _ 48: 83. C4, 08
        ret                                             ; 00D3 _ C3
; camlMini__print_endline_40 End of function

SECTION .data   align=8 noexecute
        dq 00000000000007FCH                            ; 00B8 _ 00000000000007FC
camlMini__const_immstring_22:                           ; qword
        dq 0500000000006425H                            ; 00C0 _ 0500000000006425
; TODO rewrite string contant in readable mode

SECTION .text
ALIGN   16

camlMini__entry:
        sub     rsp, 8                                  ; 00E0 _ 48: 83. EC, 08
        mov     edi, 3                                  ; 00E4 _ BF, 00000003
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel caml_ml_open_descriptor_out+$+??]; 00E9 _ 48: 8B. 05, 00000000
        mov     rax, qword [rel caml_ml_open_descriptor_out wrt ..got]
        call    caml_c_call                             ; 00F0 _ E8, 00000000(PLT r)
        mov     r15, qword [r14+8H]                     ; 00F5 _ 4D: 8B. 7E, 08
; Note: Unusual relocation type for this operand
        ;mov     rbx, qword [rel camlMini__Pccall_73+$+??]; 00F9 _ 48: 8B. 1D, 00000000
        mov     rbx, qword [rel camlMini__Pccall_73 wrt ..got]
        mov     qword [rbx], rax                        ; 0100 _ 48: 89. 03
        mov     eax, 85                                 ; 0103 _ B8, 00000055
        call    camlMini__string_of_int_18              ; 0108 _ E8, 00000000(PLT r)
; Note: Unusual relocation type for this operand
        ;mov     rbx, qword [rel camlMini__apply_arg_70+$+??]; 010D _ 48: 8B. 1D, 00000000
        mov     rbx, qword [rel camlMini__apply_arg_70 wrt ..got]
        mov     qword [rbx], rax                        ; 0114 _ 48: 89. 03
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel camlMini__apply_arg_70+$+??]; 0117 _ 48: 8B. 05, 00000000
        mov     rax, qword [rel camlMini__apply_arg_70 wrt ..got]
        mov     rax, qword [rax]                        ; 011E _ 48: 8B. 00
        call    camlMini__print_endline_40              ; 0121 _ E8, 00000000(PLT r)
; Note: Unusual relocation type for this operand
        ;mov     rax, qword [rel camlMini+$+??]          ; 0126 _ 48: 8B. 05, 00000000
        mov     rax, qword [rel camlMini wrt ..got]
; Note: Unusual relocation type for this operand
        ;mov     rbx, qword [rel camlMini__Pccall_73+$+??]; 012D _ 48: 8B. 1D, 00000000
        mov     rax, qword [rel camlMini__Pccall_73 wrt ..got]
        mov     rbx, qword [rbx]                        ; 0134 _ 48: 8B. 1B
        mov     qword [rax], rbx                        ; 0137 _ 48: 89. 18
        mov     eax, 1                                  ; 013A _ B8, 00000001
        add     rsp, 8                                  ; 013F _ 48: 83. C4, 08
        ret                                             ; 0143 _ C3
; camlMini__entry End of function


SECTION .data   align=8 noexecute                       ; section number 2, data
        dq caml_ml_output                               ; 00C8 _ 0000000000000000 (d)
        dq caml_ml_output_char                          ; 00D0 _ 0000000000000000 (d)
        dq caml_format_int                              ; 00D8 _ 0000000000000000 (d)
        dq caml_ml_flush                                ; 00E0 _ 0000000000000000 (d)
        dq caml_ml_open_descriptor_out                  ; 00E8 _ 0000000000000000 (d)

SECTION .text
camlMini__code_end:

SECTION .data   align=8 noexecute
        dq 0000000000000000H                            ; 00F0 _ 0000000000000000

camlMini__data_end:                                     ; byte
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00F8 _ ........


SECTION .bss    align=1 noexecute                       ; section number 3, bss


