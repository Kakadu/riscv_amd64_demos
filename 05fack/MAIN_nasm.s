default rel

extern caml_c_call
extern caml_call_gc
extern caml_system__frametable
extern caml_ml_flush
extern caml_ml_open_descriptor_out
extern caml_ml_output
extern caml_ml_output_char
extern caml_format_int
extern caml_curry2
extern caml_curry3

section .rodata progbits align=16; also allocateable-mergeable flags
align 16
caml_negf_mask:
	dq 0x8000000000000000
	dq 0
align 16
caml_absf_mask:
	dq 0x7fffffffffffffff
	dq -1
section .data
GLOBAL camlFack__data_begin:function
camlFack__data_begin:

section .text
GLOBAL camlFack__code_begin:function
camlFack__code_begin:
section .data
align 8
section .data
align 8
	dq 3063
GLOBAL camlFack__string_of_int_111:function
camlFack__string_of_int_111:
GLOBAL camlFack__string_of_int_27_closure:function
camlFack__string_of_int_27_closure:
	dq camlFack__string_of_int_27
	dq 0x100000000000005
section .data
align 8
	dq 4087
GLOBAL camlFack__set_of_closures_115:function
camlFack__set_of_closures_115:
GLOBAL camlFack__fac_81_closure:function
camlFack__fac_81_closure:
	dq caml_curry2
	dq 0x200000000000007
	dq camlFack__fac_81
section .data
align 8
	dq 3063
GLOBAL camlFack__print_endline_172:function
camlFack__print_endline_172:
GLOBAL camlFack__print_endline_49_closure:function
camlFack__print_endline_49_closure:
	dq camlFack__print_endline_49
	dq 0x100000000000005
section .data
align 8
	dq 4087
GLOBAL camlFack__output_string_112:function
camlFack__output_string_112:
GLOBAL camlFack__output_string_37_closure:function
camlFack__output_string_37_closure:
	dq caml_curry2
	dq 0x200000000000007
	dq camlFack__output_string_37
section .data
align 8
	dq 4087
GLOBAL camlFack__k0_114:function
camlFack__k0_114:
GLOBAL camlFack__k0_70_closure:function
camlFack__k0_70_closure:
	dq caml_curry3
	dq 0x300000000000007
	dq camlFack__k0_70
section .data
align 8
	dq 3063
GLOBAL camlFack__id_113:function
camlFack__id_113:
GLOBAL camlFack__id_64_closure:function
camlFack__id_64_closure:
	dq camlFack__id_64
	dq 0x100000000000005
section .data
align 8
	dq 7936
GLOBAL camlFack:function
camlFack:
	dq 1
	dq camlFack__string_of_int_27_closure
	dq camlFack__output_string_37_closure
	dq camlFack__print_endline_49_closure
	dq camlFack__id_64_closure
	dq camlFack__k0_70_closure
	dq camlFack__fac_81_closure
section .data
align 8
	dq 1792
GLOBAL camlFack__apply_arg_123:function
camlFack__apply_arg_123:
	dq 1
section .data
align 8
	dq 1792
GLOBAL camlFack__apply_arg_124:function
camlFack__apply_arg_124:
	dq 1
section .data
align 8
	dq 1792
GLOBAL camlFack__Pccall_127:function
camlFack__Pccall_127:
	dq 1
section .data
align 8
GLOBAL camlFack__gc_roots:function
camlFack__gc_roots:
	dq camlFack__Pccall_127
	dq camlFack__apply_arg_124
	dq camlFack__apply_arg_123
	dq camlFack
	dq 0

section .text
align 16
GLOBAL camlFack__k0_143:function
camlFack__k0_143:
	sub rsp, 8
L100:
	mov rdi, rax
	cmp r15, qword [r14]
	jbe L101
L102:
	mov rsi, [rbx+24]
	mov rax, [rbx+16]
	mov rbx, rsi
	add rsp, 8
	jmp camlFack__k0_70
L101:
	call caml_call_gc
L103:
	jmp L102
type camlFack__k0_143 function

section .text
align 16
GLOBAL camlFack__string_of_int_27:function
camlFack__string_of_int_27:
	sub rsp, 8
L104:
	mov rdi, qword [rel camlFack__const_immstring_31 wrt ..got]
	mov rsi, rax
	mov rax, qword [rel caml_format_int wrt ..got]
	call caml_c_call
L105:
	mov r15, [r14+8]
	add rsp, 8
	ret
type camlFack__string_of_int_27 function

section .text
align 16
GLOBAL camlFack__output_string_37:function
camlFack__output_string_37:
	sub rsp, 8
L106:
	mov rdi, [rbx-8]
	shr rdi, 10
	lea rdi, [rdi*8-1]
	movzx rsi, byte [rbx+rdi]
	sub rdi, rsi
	lea rcx, [rdi+rdi+1]
	mov edx, 1
	mov rdi, rax
	mov rsi, rbx
	mov rax, qword [rel caml_ml_output wrt ..got]
	call caml_c_call
L107:
	mov r15, [r14+8]
	add rsp, 8
	ret
type camlFack__output_string_37 function

section .text
align 16
GLOBAL camlFack__print_endline_49:function
camlFack__print_endline_49:
	sub rsp, 8
L108:
	mov rbx, rax
	mov rax, qword [rel camlFack__Pccall_127 wrt ..got]
	mov rax, [rax]
	call camlFack__output_string_37
L109:
	mov esi, 21
	mov rax, qword [rel camlFack__Pccall_127 wrt ..got]
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_output_char wrt ..got]
	call caml_c_call
L110:
	mov r15, [r14+8]
	mov rax, qword [rel camlFack__Pccall_127 wrt ..got]
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_flush wrt ..got]
	call caml_c_call
L111:
	mov r15, [r14+8]
	add rsp, 8
	ret
type camlFack__print_endline_49 function

; let id x = x
section .text
align 16
GLOBAL camlFack__id_64:function
camlFack__id_64:
L112:
	ret ; rax is both 1st arg and result register
type camlFack__id_64 function

; let k0 k n m = k (m * n)
section .text
align 16
GLOBAL camlFack__k0_70:function
camlFack__k0_70:
	sub rsp, 8
L113:
	mov rsi, rax
	mov rax, rdi
	cmp r15, qword [r14]
	jbe L114
L115:
	sar rbx, 1
	dec rax
	imul rax, rbx
	inc rax
	mov rdi, [rsi]  ; It looks like calling continuation uses Caml ABI
	mov rbx, rsi
	add rsp, 8
	jmp rdi
L114:
	call caml_call_gc
L116:
	jmp L115
type camlFack__k0_70 function


; (function{Fack.ml:34,12-108}
;  camlFack__fac_81 (n/85: val k/84: val)
;  (if (< n/85 5)
;    (app{Fack.ml:36,16-19} (load_mut val k/84) 3 k/84 val)
;    (let
;      set_of_closures/88
;        (alloc 4343 "camlFack__k0_143" 72057594037927941 k/84 n/85)
;      (app{Fack.ml:36,25-45} "camlFack__fac_81"
;        (+ n/85 - 2)
;        set_of_closures/88
;        val))))
; 0x100000000000005 == 72057594037927941
; 72057594037927941 >> 56 = 1 -- arity
; ((72057594037927941 << 8) >> 9) = 2 -- offset to environment
section .text
align 16
GLOBAL camlFack__fac_81:function
camlFack__fac_81:
	sub rsp, 8
L118:
	cmp r15, qword [r14]
	jbe L119
L120:
	cmp rax, 5 ; ocaml 2<<1 + 1
	jge L117
	mov eax, 3
	mov rdi, [rbx]  ; rbx is a kontinuation
	add rsp, 8
	jmp rdi
align 4
L117:
	sub r15, 40         ; probably closure size
	cmp r15, qword [r14]
	jb L122
L124:
	lea rdi, [r15+8]
	mov qword [rdi-8], 4343 ; 0x10F7. 0xf7 is closure_tag
	; 4343 = 0x10f7. 4343 >> 10 = 4
	mov rsi, qword [rel camlFack__k0_143 wrt ..got]
	mov [rdi], rsi
	mov rsi, 0x100000000000005
	mov [rdi+8], rsi
	mov [rdi+16], rbx
	mov [rdi+24], rax
	add rax, -2
	mov rbx, rdi
	jmp L118
L122:
	call caml_call_gc
L123:
	jmp L124
L119:
	call caml_call_gc
L121:
	jmp L120
type camlFack__fac_81 function

section .data
align 8
	dq 2044
GLOBAL camlFack__const_immstring_31:function
camlFack__const_immstring_31:
	db "%d"
	times 5 db 0
	db 5

section .text
align 16
GLOBAL camlFack__entry:function
camlFack__entry:
	sub rsp, 8
L125:
	mov edi, 3
	mov rax, qword [rel caml_ml_open_descriptor_out wrt ..got]
	call caml_c_call
L126:
	mov r15, [r14+8]
	mov rbx, qword [rel camlFack__Pccall_127 wrt ..got]
	mov [rbx], rax
	mov rbx, qword [rel camlFack__id_64_closure wrt ..got]
	mov eax, 13
	call camlFack__fac_81
L127:
	mov rbx, qword [rel camlFack__apply_arg_124 wrt ..got]
	mov [rbx], rax
	mov rax, qword [rel camlFack__apply_arg_124 wrt ..got]
	mov rax, [rax]
	call camlFack__string_of_int_27
L128:
	mov rbx, qword [rel camlFack__apply_arg_123 wrt ..got]
	mov [rbx], rax
	mov rax, qword [rel camlFack__apply_arg_123 wrt ..got]
	mov rax, [rax]
	call camlFack__print_endline_49
L129:
	mov rax, qword [rel camlFack wrt ..got]
	mov rbx, qword [rel camlFack__Pccall_127 wrt ..got]
	mov rbx, [rbx]
	mov [rax], rbx
	mov eax, 1
	add rsp, 8
	ret

type camlFack__entry function
section .data
align 8
	dq caml_ml_output
	dq caml_ml_output_char
	dq caml_format_int
	dq caml_ml_flush
	dq caml_ml_open_descriptor_out

section .text
GLOBAL camlFack__code_end:function
camlFack__code_end:
section .data
align 8
section .data
	dq 0
GLOBAL camlFack__data_end:function
camlFack__data_end:
	dq 0
align 8
GLOBAL camlFack__frametable:function
camlFack__frametable:
	dq 13
	dq L129
	dw 17
	dw 0
align 4
	dd ($ - L130)
align 8
	dq L128
	dw 17
	dw 0
align 4
	dd ($ - L131)
align 8
	dq L127
	dw 17
	dw 0
align 4
	dd ($ - L132)
align 8
	dq L126
	dw 17
	dw 0
align 4
	dd ($ - L133)
align 8
	dq L123
	dw 18
	dw 2
	dw 1
	dw 3
	db 1
	db 3
align 8
	dq L121
	dw 18
	dw 2
	dw 1
	dw 3
	db 0
align 8
	dq L116
	dw 18
	dw 3
	dw 1
	dw 3
	dw 7
	db 0
align 8
	dq L111
	dw 17
	dw 0
align 4
	dd ($ - L134)
align 8
	dq L110
	dw 17
	dw 0
align 4
	dd ($ - L135)
align 8
	dq L109
	dw 17
	dw 0
align 4
	dd ($ - L136)
align 8
	dq L107
	dw 17
	dw 0
align 4
	dd ($ - L137)
align 8
	dq L105
	dw 17
	dw 0
align 4
	dd ($ - L138)
align 8
	dq L103
	dw 18
	dw 2
	dw 3
	dw 5
	db 0
align 8
align 4
L131:
	dd (L140 - $) + 1006632960
	;dl 156016
align 4
L130:
	dd (L140 - $) + 1006632960
	;dl 155792
align 4
L136:
	dd (L141 - $) + 1610612736
	;dl 94240
align 4
L138:
	dd (L142 - $) + 1677721600
	;dl 45408
align 4
L132:
	dd (L140 - $) + 1073741824
	;dl 156256
align 4
L133:
	dd (L143 - $) + 2013265920
	;dl 24784
align 4
L135:
	dd (L141 - $) + 1677721600
	;dl 98336
align 4
L137:
	dd (L144 - $) + 402653184
	;dl 82321
align 4
L134:
	dd (L141 - $) + 939524096
	;dl 102432
L139:
	db "Fack.ml\0"
align 4
L140:
	dd ($ - L139)
	db "Fack\0"
align 4
L142:
	dd ($ - L139)
	db "Fack.string_of_int\0"
align 4
L141:
	dd ($ - L139)
	db "Fack.print_endline\0"
align 4
L144:
	dd ($ - L139)
	db "Fack.output_string\0"
align 4
L143:
	dd ($ - L139)
	db "Fack.stdout\0"
align 8
section .note.GNU-stack  progbits
