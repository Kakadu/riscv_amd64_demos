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
ALIGN 16
caml_negf_mask:
	dq 0x8000000000000000
	dq 0
ALIGN 16
caml_absf_mask:
	dq 0x7fffffffffffffff
	dq -1
SECTION .data
GLOBAL camlFac.data_begin:function
camlFac.data_begin:
SECTION .text
GLOBAL camlFac.code_begin:function
camlFac.code_begin:
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
	dq 3063
GLOBAL camlFac__string_of_int_84:function
camlFac__string_of_int_84:
GLOBAL camlFac.string_of_int_21_closure:function
camlFac.string_of_int_21_closure:
	dq camlFac.string_of_int_21
	dq 0x100000000000005
SECTION .data
ALIGN 8
	dq 3063
GLOBAL camlFac__set_of_closures_86:function
camlFac__set_of_closures_86:
GLOBAL camlFac.fac_58_closure:function
camlFac.fac_58_closure:
	dq camlFac.fac_58
	dq 0x100000000000005
SECTION .data
ALIGN 8
	dq 3063
GLOBAL camlFac__print_endline_133:function
camlFac__print_endline_133:
GLOBAL camlFac.print_endline_43_closure:function
camlFac.print_endline_43_closure:
	dq camlFac.print_endline_43
	dq 0x100000000000005
SECTION .data
ALIGN 8
	dq 4087
GLOBAL camlFac__output_string_85:function
camlFac__output_string_85:
GLOBAL camlFac.output_string_31_closure:function
camlFac.output_string_31_closure:
	dq caml_curry2
	dq 0x200000000000007
	dq camlFac.output_string_31
SECTION .data
ALIGN 8
	dq 5888
GLOBAL camlFac:function
camlFac:
	dq 1
	dq camlFac.string_of_int_21_closure
	dq camlFac.output_string_31_closure
	dq camlFac.print_endline_43_closure
	dq camlFac.fac_58_closure
SECTION .data
ALIGN 8
	dq 1792
GLOBAL camlFac__apply_arg_94:function
camlFac__apply_arg_94:
	dq 1
SECTION .data
ALIGN 8
	dq 1792
GLOBAL camlFac__apply_arg_95:function
camlFac__apply_arg_95:
	dq 1
SECTION .data
ALIGN 8
	dq 1792
GLOBAL camlFac__Pccall_98:function
camlFac__Pccall_98:
	dq 1
SECTION .data
ALIGN 8
GLOBAL camlFac.gc_roots:function
camlFac.gc_roots:
	dq camlFac__Pccall_98
	dq camlFac__apply_arg_95
	dq camlFac__apply_arg_94
	dq camlFac
	dq 0
SECTION .text
ALIGN 16
GLOBAL camlFac.string_of_int_21:function
camlFac.string_of_int_21:
L100:
	mov rdi, qword [rel camlFac__const_immstring_25 wrt ..got] ; ??
	mov rsi, rax
	mov rax, qword [rel caml_format_int wrt ..got] ; ??
	call caml_c_call
L101:
	ret
; camlFac.string_of_int_21: @function
SECTION .text
ALIGN 16
GLOBAL camlFac.output_string_31:function
camlFac.output_string_31:
L102:
	mov rdi, [rbx-8]
	shr rdi, 10
	lea rdi, [rdi*8-1]
	movzx rsi, byte [rbx+rdi]
	sub rdi, rsi
	lea rcx, [rdi+rdi+1]
	mov edx, 1
	mov rdi, rax
	mov rsi, rbx
	mov rax, qword [rel caml_ml_output wrt ..got] ; ??
	call caml_c_call
L103:
	ret
; camlFac.output_string_31: @function
SECTION .text
ALIGN 16
GLOBAL camlFac.print_endline_43:function
camlFac.print_endline_43:
	lea r10, [rsp-320]
	cmp r10, [r14+40]
	jb L105
L106:
L104:
	mov rbx, rax
	mov rax, qword [rel camlFac__Pccall_98 wrt ..got] ; ??
	mov rax, [rax]
	call camlFac.output_string_31
L107:
	mov esi, 21
	mov rax, qword [rel camlFac__Pccall_98 wrt ..got] ; ??
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_output_char wrt ..got] ; ??
	call caml_c_call
L108:
	mov rax, qword [rel camlFac__Pccall_98 wrt ..got] ; ??
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_flush wrt ..got] ; ??
	call caml_c_call
L109:
	ret
L105:
	push 33
	call caml_call_realloc_stack
	pop r10
	jmp L106
; camlFac.print_endline_43: @function
SECTION .text
ALIGN 16
GLOBAL camlFac.fac_58:function
camlFac.fac_58:
	lea r10, [rsp-328]
	cmp r10, [r14+40]
	jb L112
L113:
	sub rsp, 8
L111:
	cmp rax, 5
	jge L110
	mov eax, 3
	add rsp, 8
	ret
ALIGN 4
L110:
	mov [rsp], rax
	add rax, -2
	call camlFac.fac_58
L114:
	mov rbx, rax
	sar rbx, 1
	mov rax, [rsp]
	dec rax
	imul rax, rbx
	inc rax
	add rsp, 8
	ret
L112:
	push 34
	call caml_call_realloc_stack
	pop r10
	jmp L113
; camlFac.fac_58: @function
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
	dq 2044
GLOBAL camlFac__const_immstring_25:function
camlFac__const_immstring_25:
	db "%d"
	times 5 db 0
	db 5
SECTION .text
ALIGN 16
GLOBAL camlFac.entry:function
camlFac.entry:
	lea r10, [rsp-320]
	cmp r10, [r14+40]
	jb L116
L117:
L115:
	mov edi, 3
	mov rax, qword [rel caml_ml_open_descriptor_out wrt ..got] ; ??
	call caml_c_call
L118:
	mov rdi, qword [rel camlFac__Pccall_98 wrt ..got] ; ??
	mov rsi, rax
	mov rbx, rsp
	mov rsp, [r14+64]
	call caml_initialize
	mov rsp, rbx
	mov eax, 11
	call camlFac.fac_58
L119:
	mov rdi, qword [rel camlFac__apply_arg_95 wrt ..got] ; ??
	mov rsi, rax
	mov rbx, rsp
	mov rsp, [r14+64]
	call caml_initialize
	mov rsp, rbx
	mov rax, qword [rel camlFac__apply_arg_95 wrt ..got] ; ??
	mov rax, [rax]
	call camlFac.string_of_int_21
L120:
	mov rdi, qword [rel camlFac__apply_arg_94 wrt ..got] ; ??
	mov rsi, rax
	mov rbx, rsp
	mov rsp, [r14+64]
	call caml_initialize
	mov rsp, rbx
	mov rax, qword [rel camlFac__apply_arg_94 wrt ..got] ; ??
	mov rax, [rax]
	call camlFac.print_endline_43
L121:
	mov rax, qword [rel camlFac__Pccall_98 wrt ..got] ; ??
	mov rsi, [rax]
	mov rdi, qword [rel camlFac wrt ..got] ; ??
	mov rbx, rsp
	mov rsp, [r14+64]
	call caml_initialize
	mov rsp, rbx
	mov eax, 1
	ret
L116:
	push 33
	call caml_call_realloc_stack
	pop r10
	jmp L117
; camlFac.entry: @function
SECTION .data
ALIGN 8
	dq caml_ml_output
	dq caml_ml_output_char
	dq caml_format_int
	dq caml_ml_flush
	dq caml_ml_open_descriptor_out
SECTION .text
GLOBAL camlFac.code_end:function
camlFac.code_end:
SECTION .data
ALIGN 8
SECTION .data
	dq 0
GLOBAL camlFac.data_end:function
camlFac.data_end:
	dq 0
ALIGN 8
GLOBAL camlFac.frametable:function
camlFac.frametable:
	dq 10
	dq L121
	dw 9
	dw 0
ALIGN 4
	dl ($-L122)
ALIGN 8
	dq L120
	dw 9
	dw 0
ALIGN 4
	dl (L123 - $)
ALIGN 8
	dq L119
	dw 9
	dw 0
ALIGN 4
	dl (L124 - $)
ALIGN 8
	dq L118
	dw 9
	dw 0
ALIGN 4
	dl (L125 - $)
ALIGN 8
	dq L114
	dw 17
	dw 1
	dw 0
ALIGN 4
	dl (L126 - $)
ALIGN 8
	dq L109
	dw 9
	dw 0
ALIGN 4
	dl (L127 - $)
ALIGN 8
	dq L108
	dw 9
	dw 0
ALIGN 4
	dl (L128 - $)
ALIGN 8
	dq L107
	dw 9
	dw 0
ALIGN 4
	dl (L129 - $)
ALIGN 8
	dq L103
	dw 9
	dw 0
ALIGN 4
	dl (L130 - $)
ALIGN 8
	dq L101
	dw 9
	dw 0
ALIGN 4
	dl (L131 - $)
ALIGN 8
ALIGN 4
L129:
	dl (L133 - $)
	dl 9439424
ALIGN 4
L124:
	dl (L134 - $)
	dl 13670760
ALIGN 4
L125:
	dl (L135 - $)
	dl 2110736
ALIGN 4
L130:
	dl (L136 - $)
	dl 7866744
ALIGN 4
L122:
	dl (L134 - $)
	dl 13641072
ALIGN 4
L128:
	dl (L133 - $)
	dl 9464200
ALIGN 4
L127:
	dl (L133 - $)
	dl 9489912
ALIGN 4
L126:
	dl (L137 - $)
	dl 12623232
ALIGN 4
L123:
	dl (L134 - $)
	dl 13655408
ALIGN 4
L131:
	dl (L138 - $)
	dl 4217144
L132:
	db "fac.ml\0"
ALIGN 4
L135:
	dl (L132 - $)
	db "Fac.stdout\0"
ALIGN 4
L138:
	dl (L132 - $)
	db "Fac.string_of_int\0"
ALIGN 4
L137:
	dl (L132 - $)
	db "Fac.fac\0"
ALIGN 4
L133:
	dl (L132 - $)
	db "Fac.print_endline\0"
ALIGN 4
L136:
	dl (L132 - $)
	db "Fac.output_string\0"
ALIGN 4
L134:
	dl (L132 - $)
	db "Fac\0"
ALIGN 8
section .note.GNU-stack  progbits
