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
GLOBAL camlMini.data_begin:function
camlMini.data_begin:
SECTION .text
GLOBAL camlMini.code_begin:function
camlMini.code_begin:
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
	dq 3063
GLOBAL camlMini__string_of_int_62:function
camlMini__string_of_int_62:
GLOBAL camlMini.string_of_int_18_closure:function
camlMini.string_of_int_18_closure:
	dq camlMini.string_of_int_18
	dq 0x100000000000005
SECTION .data
ALIGN 8
	dq 3063
GLOBAL camlMini__print_endline_105:function
camlMini__print_endline_105:
GLOBAL camlMini.print_endline_40_closure:function
camlMini.print_endline_40_closure:
	dq camlMini.print_endline_40
	dq 0x100000000000005
SECTION .data
ALIGN 8
	dq 4087
GLOBAL camlMini__output_string_63:function
camlMini__output_string_63:
GLOBAL camlMini.output_string_28_closure:function
camlMini.output_string_28_closure:
	dq caml_curry2
	dq 0x200000000000007
	dq camlMini.output_string_28
SECTION .data
ALIGN 8
	dq 4864
GLOBAL camlMini:function
camlMini:
	dq 1
	dq camlMini.string_of_int_18_closure
	dq camlMini.output_string_28_closure
	dq camlMini.print_endline_40_closure
SECTION .data
ALIGN 8
	dq 1792
GLOBAL camlMini__apply_arg_70:function
camlMini__apply_arg_70:
	dq 1
SECTION .data
ALIGN 8
	dq 1792
GLOBAL camlMini__Pccall_73:function
camlMini__Pccall_73:
	dq 1
SECTION .data
ALIGN 8
GLOBAL camlMini.gc_roots:function
camlMini.gc_roots:
	dq camlMini__Pccall_73
	dq camlMini__apply_arg_70
	dq camlMini
	dq 0
SECTION .text
ALIGN 16
GLOBAL camlMini.string_of_int_18:function
camlMini.string_of_int_18:
L100:
	mov rdi, qword [rel camlMini__const_immstring_22 wrt ..got] ; ??
	mov rsi, rax
	mov rax, qword [rel caml_format_int wrt ..got] ; ??
	call caml_c_call
L101:
	ret
; camlMini.string_of_int_18: @function
SECTION .text
ALIGN 16
GLOBAL camlMini.output_string_28:function
camlMini.output_string_28:
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
; camlMini.output_string_28: @function
SECTION .text
ALIGN 16
GLOBAL camlMini.print_endline_40:function
camlMini.print_endline_40:
	lea r10, [rsp-320]
	cmp r10, [r14+40]
	jb L105
L106:
L104:
	mov rbx, rax
	mov rax, qword [rel camlMini__Pccall_73 wrt ..got] ; ??
	mov rax, [rax]
	call camlMini.output_string_28
L107:
	mov esi, 21
	mov rax, qword [rel camlMini__Pccall_73 wrt ..got] ; ??
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_output_char wrt ..got] ; ??
	call caml_c_call
L108:
	mov rax, qword [rel camlMini__Pccall_73 wrt ..got] ; ??
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_flush wrt ..got] ; ??
	call caml_c_call
L109:
	ret
L105:
	push 33
	call caml_call_realloc_stack
	p r10
	jmp L106
; camlMini.print_endline_40: @function
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
SECTION .data
ALIGN 8
	dq 2044
GLOBAL camlMini__const_immstring_22:function
camlMini__const_immstring_22:
	db "%d"
	times 5 db 0
	db 5
SECTION .text
ALIGN 16
GLOBAL camlMini.entry:function
camlMini.entry:
	lea r10, [rsp-320]
	cmp r10, [r14+40]
	jb L111
L112:
L110:
	mov edi, 3
	mov rax, qword [rel caml_ml_open_descriptor_out wrt ..got] ; ??
	call caml_c_call
L113:
	mov rdi, qword [rel camlMini__Pccall_73 wrt ..got] ; ??
	mov rsi, rax
	mov rbx, rsp
	mov rsp, [r14+64]
	call caml_initialize
	mov rsp, rbx
	mov eax, 85
	call camlMini.string_of_int_18
L114:
	mov rdi, qword [rel camlMini__apply_arg_70 wrt ..got] ; ??
	mov rsi, rax
	mov rbx, rsp
	mov rsp, [r14+64]
	call caml_initialize
	mov rsp, rbx
	mov rax, qword [rel camlMini__apply_arg_70 wrt ..got] ; ??
	mov rax, [rax]
	call camlMini.print_endline_40
L115:
	mov rax, qword [rel camlMini__Pccall_73 wrt ..got] ; ??
	mov rsi, [rax]
	mov rdi, qword [rel camlMini wrt ..got] ; ??
	mov rbx, rsp
	mov rsp, [r14+64]
	call caml_initialize
	mov rsp, rbx
	mov eax, 1
	ret
L111:
	push 33
	call caml_call_realloc_stack
	p r10
	jmp L112
; camlMini.entry: @function
SECTION .data
ALIGN 8
	dq caml_ml_output
	dq caml_ml_output_char
	dq caml_format_int
	dq caml_ml_flush
	dq caml_ml_open_descriptor_out
SECTION .text
GLOBAL camlMini.code_end:function
camlMini.code_end:
SECTION .data
ALIGN 8
SECTION .data
	dq 0
GLOBAL camlMini.data_end:function
camlMini.data_end:
	dq 0
ALIGN 8
GLOBAL camlMini.frametable:function
camlMini.frametable:
	dq 8
	dq L115
	dw 9
	dw 0
ALIGN 4
ALIGN 8
	dq L114
	dw 9
	dw 0
ALIGN 4
ALIGN 8
	dq L113
	dw 9
	dw 0
ALIGN 4
ALIGN 8
	dq L109
	dw 9
	dw 0
ALIGN 4
ALIGN 8
	dq L108
	dw 9
	dw 0
ALIGN 4
ALIGN 8
	dq L107
	dw 9
	dw 0
ALIGN 4
ALIGN 8
	dq L103
	dw 9
	dw 0
ALIGN 4
ALIGN 8
	dq L101
	dw 9
	dw 0
ALIGN 4
ALIGN 8
ALIGN 4
L120:
	;dl 9464200
ALIGN 4
L122:
	;dl 7866744
ALIGN 4
L121:
	;dl 9439424
ALIGN 4
L118:
	;dl 2110736
ALIGN 4
L123:
	;dl 4217144
ALIGN 4
L116:
	;dl 11543880
ALIGN 4
L119:
	;dl 9489912
ALIGN 4
L117:
	;dl 11558216
L124:
	db "mini.ml\0"
ALIGN 4
L125:
	db "Mini.print_endline\0"
ALIGN 4
L127:
	db "Mini.stdout\0"
ALIGN 4
L129:
	db "Mini\0"
ALIGN 4
L128:
	db "Mini.string_of_int\0"
ALIGN 4
L126:
	db "Mini.output_string\0"
ALIGN 8
; camlMini.frametable: @object
section .note.GNU-stack  progbits
