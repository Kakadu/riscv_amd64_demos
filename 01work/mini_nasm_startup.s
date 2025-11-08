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
GLOBAL caml_startup.data_begin:function
caml_startup.data_begin:
SECTION .text
GLOBAL caml_startup.code_begin:function
caml_startup.code_begin:
SECTION .text
ALIGN 16
GLOBAL caml_program:function
caml_program:
	lea r10, [rsp-320]
	cmp r10, [r14+40]
	jb L131
L132:
L130:
	call camlMini.entry
L133:
	mov rax, qword [rel caml_globals_inited wrt ..got] ; ??
	add qword [rax], 1
	mov eax, 1
	ret
L131:
	push 33
	call caml_call_realloc_stack
	pop r10
	jmp L132
; caml_program: @function
SECTION .data
ALIGN 8
GLOBAL caml_startup.gc_roots:function
caml_startup.gc_roots:
	dq 0
SECTION .text
ALIGN 16
GLOBAL caml_curry2:function
caml_curry2:
L134:
	sub r15, 40
	cmp r15, qword [r14]
	jb L135
L137:
	lea rdi, [r15+8]
	mov qword [rdi-8], 4343
	mov rsi, qword [ caml_curry2_1 wrt ..got] ; ??
	mov [rdi], rsi
	mov rsi, 0x100000000000005
	mov [rdi+8], rsi
	mov [rdi+16], rax
	mov [rdi+24], rbx
	mov rax, rdi
	ret
L135:
	call caml_call_gc
L136:
	jmp L137
; caml_curry2: @function
SECTION .text
ALIGN 16
GLOBAL caml_curry2_1:function
caml_curry2_1:
L138:
	mov rsi, rax
	cmp r15, qword [r14]
	jbe L139
L140:
	mov rdi, [rbx+24]
	mov rax, [rbx+16]
	mov rdx, [rdi+16]
	mov rbx, rsi
	jmp rdx
L139:
	call caml_call_gc
L141:
	jmp L140
; caml_curry2_1: @function
SECTION .text
ALIGN 16
GLOBAL caml_apply3:function
caml_apply3:
	lea r10, [rsp-336]
	cmp r10, [r14+40]
	jb L144
L145:
	sub rsp, 16
L143:
	mov rdx, [rsi+8]
	sar rdx, 56
	cmp rdx, 3
	jne L142
	mov rdx, [rsi+16]
	add rsp, 16
	jmp rdx
ALIGN 4
L142:
	mov [rsp+8], rdi
	mov [rsp], rbx
	mov rdi, [rsi]
	mov rbx, rsi
	call rdi
L146:
	mov rbx, rax
	mov rdi, [rbx]
	mov rax, [rsp]
	call rdi
L147:
	mov rbx, rax
	mov rdi, [rbx]
	mov rax, [rsp+8]
	add rsp, 16
	jmp rdi
L144:
	push 35
	call caml_call_realloc_stack
	pop r10
	jmp L145
; caml_apply3: @function
SECTION .text
ALIGN 16
GLOBAL caml_apply2:function
caml_apply2:
	lea r10, [rsp-328]
	cmp r10, [r14+40]
	jb L150
L151:
	sub rsp, 8
L149:
	mov rsi, [rdi+8]
	sar rsi, 56
	cmp rsi, 2
	jne L148
	mov rsi, [rdi+16]
	add rsp, 8
	jmp rsi
ALIGN 4
L148:
	mov [rsp], rbx
	mov rsi, [rdi]
	mov rbx, rdi
	call rsi
L152:
	mov rbx, rax
	mov rdi, [rbx]
	mov rax, [rsp]
	add rsp, 8
	jmp rdi
L150:
	push 34
	call caml_call_realloc_stack
	pop r10
	jmp L151
; caml_apply2: @function
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Out_of_memory:function
caml_exn_Out_of_memory:
	dq caml_startup.1
	dq -1
	dq 3068
caml_startup.1:
	db "Out_of_memory"
	times 2 db 0
	db 2
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Sys_error:function
caml_exn_Sys_error:
	dq caml_startup.2
	dq -3
	dq 3068
caml_startup.2:
	db "Sys_error"
	times 6 db 0
	db 6
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Failure:function
caml_exn_Failure:
	dq caml_startup.3
	dq -5
	dq 2044
caml_startup.3:
	db "Failure"
	db 0
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Invalid_argument:function
caml_exn_Invalid_argument:
	dq caml_startup.4
	dq -7
	dq 4092
caml_startup.4:
	db "Invalid_argument"
	times 7 db 0
	db 7
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_End_of_file:function
caml_exn_End_of_file:
	dq caml_startup.5
	dq -9
	dq 3068
caml_startup.5:
	db "End_of_file"
	times 4 db 0
	db 4
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Division_by_zero:function
caml_exn_Division_by_zero:
	dq caml_startup.6
	dq -11
	dq 4092
caml_startup.6:
	db "Division_by_zero"
	times 7 db 0
	db 7
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Not_found:function
caml_exn_Not_found:
	dq caml_startup.7
	dq -13
	dq 3068
caml_startup.7:
	db "Not_found"
	times 6 db 0
	db 6
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Match_failure:function
caml_exn_Match_failure:
	dq caml_startup.8
	dq -15
	dq 3068
caml_startup.8:
	db "Match_failure"
	times 2 db 0
	db 2
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Stack_overflow:function
caml_exn_Stack_overflow:
	dq caml_startup.9
	dq -17
	dq 3068
caml_startup.9:
	db "Stack_overflow"
	times 1 db 0
	db 1
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Sys_blocked_io:function
caml_exn_Sys_blocked_io:
	dq caml_startup.10
	dq -19
	dq 3068
caml_startup.10:
	db "Sys_blocked_io"
	times 1 db 0
	db 1
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Assert_failure:function
caml_exn_Assert_failure:
	dq caml_startup.11
	dq -21
	dq 3068
caml_startup.11:
	db "Assert_failure"
	times 1 db 0
	db 1
SECTION .data
ALIGN 8
	dq 3064
GLOBAL caml_exn_Undefined_recursive_module:function
caml_exn_Undefined_recursive_module:
	dq caml_startup.12
	dq -23
	dq 5116
caml_startup.12:
	db "Undefined_recursive_module"
	times 5 db 0
	db 5
SECTION .data
ALIGN 8
GLOBAL caml_globals:function
caml_globals:
	dq camlMini.gc_roots
	dq 0
SECTION .data
ALIGN 8
	dq 10236
GLOBAL caml_globals_map:function
caml_globals_map:
	db "\204\225\246\276\0\0\0\60\0\0\0\10\0\0\0\36\0\0\0\31\240\300$Mini\220\60q\346\245$\303\203\323q\255 \216\35\60\365:\370\220\60#Lz\340\240\350\350\205\217\343\10\213\0D\10\177\240\4\6@@"
	times 3 db 0
	db 3
SECTION .data
ALIGN 8
GLOBAL caml_data_segments:function
caml_data_segments:
	dq caml_startup.data_begin
	dq caml_startup.data_end
	dq camlMini.data_begin
	dq camlMini.data_end
	dq 0
SECTION .data
ALIGN 8
GLOBAL caml_code_segments:function
caml_code_segments:
	dq caml_startup.code_begin
	dq caml_startup.code_end
	dq camlMini.code_begin
	dq camlMini.code_end
	dq 0
SECTION .data
ALIGN 8
GLOBAL caml_frametable:function
caml_frametable:
	dq caml_startup.frametable
	dq caml_system.frametable
	dq camlMini.frametable
	dq 0
SECTION .text
GLOBAL caml_startup.code_end:function
caml_startup.code_end:
SECTION .data
ALIGN 8
SECTION .data
	dq 0
GLOBAL caml_startup.data_end:function
caml_startup.data_end:
	dq 0
ALIGN 8
GLOBAL caml_startup.frametable:function
caml_startup.frametable:
	dq 6
	dq L152
	dw 16
	dw 1
	dw 0
ALIGN 8
	dq L147
	dw 24
	dw 1
	dw 8
ALIGN 8
	dq L146
	dw 24
	dw 2
	dw 0
	dw 8
ALIGN 8
	dq L141
	dw 10
	dw 2
	dw 3
	dw 7
	db 0
ALIGN 8
	dq L136
	dw 10
	dw 2
	dw 1
	dw 3
	db 1
	db 3
ALIGN 8
	dq L133
	dw 8
	dw 0
ALIGN 8
ALIGN 8
; caml_startup.frametable: @object
section .note.GNU-stack  progbits
