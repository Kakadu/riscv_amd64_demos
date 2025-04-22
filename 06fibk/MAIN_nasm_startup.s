extern caml_c_call
extern caml_call_gc
extern caml_system__frametable
extern caml_ml_flush
extern caml_ml_open_descriptor_out
extern caml_ml_output
extern caml_ml_output_char
extern caml_format_int
global caml_curry2
global caml_curry2_1
global caml_curry3
extern caml_globals_inited
extern camlFibk__entry
extern camlFibk__data_begin
extern camlFibk__data_end
extern camlFibk__code_begin
extern camlFibk__code_end
extern camlFibk__gc_roots
extern camlFibk__frametable

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
GLOBAL caml_startup__data_begin:function
caml_startup__data_begin:

section .text
GLOBAL caml_startup__code_begin:function
caml_startup__code_begin:

section .text
align 16
GLOBAL caml_program:function
caml_program:
	sub rsp, 8
L153:
	call camlFibk__entry
L154:
	mov rax, qword [rel caml_globals_inited wrt ..got]
	add qword [rax], 1
	mov eax, 1
	add rsp, 8
	ret
type caml_program function

section .text
align 16
GLOBAL caml_curry3:function
caml_curry3:
	sub rsp, 8
L155:
	sub r15, 48
	cmp r15, qword [r14]
	jb L156
L158:
	lea rdi, [r15+8]
	mov qword [rdi-8], 5367
	mov rsi, qword [rel caml_curry3_1 wrt ..got]
	mov [rdi], rsi
	mov rsi, 0x200000000000007
	mov [rdi+8], rsi
	mov rsi, qword [rel caml_curry3_1_app wrt ..got]
	mov [rdi+16], rsi
	mov [rdi+24], rax
	mov [rdi+32], rbx
	mov rax, rdi
	add rsp, 8
	ret
L156:
	call caml_call_gc
L157:
	jmp L158
type caml_curry3 function

section .text
align 16
GLOBAL caml_curry3_1_app:function
caml_curry3_1_app:
	sub rsp, 8
L159:
	mov rdx, rax
	mov rcx, rbx
	cmp r15, qword [r14]
	jbe L160
L161:
	mov rsi, [rdi+32]
	mov rax, [rdi+24]
	mov r8, [rsi+16]
	mov rbx, rdx
	mov rdi, rcx
	add rsp, 8
	jmp r8
L160:
	call caml_call_gc
L162:
	jmp L161
type caml_curry3_1_app function

section .text
align 16
GLOBAL caml_curry3_1:function
caml_curry3_1:
	sub rsp, 8
L163:
	sub r15, 40
	cmp r15, qword [r14]
	jb L164
L166:
	lea rdi, [r15+8]
	mov qword [rdi-8], 4343
	mov rsi, qword [rel caml_curry3_2 wrt ..got]
	mov [rdi], rsi
	mov rsi, 0x100000000000005
	mov [rdi+8], rsi
	mov [rdi+16], rax
	mov [rdi+24], rbx
	mov rax, rdi
	add rsp, 8
	ret
L164:
	call caml_call_gc
L165:
	jmp L166
type caml_curry3_1 function

section .text
align 16
GLOBAL caml_curry3_2:function
caml_curry3_2:
	sub rsp, 8
L167:
	mov rdi, rax
	cmp r15, qword [r14]
	jbe L168
L169:
	mov rax, [rbx+24]
	mov rsi, [rax+32]
	mov rbx, [rbx+16]
	mov rax, [rax+24]
	mov rdx, [rsi+16]
	add rsp, 8
	jmp rdx
L168:
	call caml_call_gc
L170:
	jmp L169
type caml_curry3_2 function

section .text
align 16
GLOBAL caml_curry2:function
caml_curry2:
	sub rsp, 8
L171:
	sub r15, 40
	cmp r15, qword [r14]
	jb L172
L174:
	lea rdi, [r15+8]
	mov qword [rdi-8], 4343
	mov rsi, qword [rel caml_curry2_1 wrt ..got]
	mov [rdi], rsi
	mov rsi, 0x100000000000005
	mov [rdi+8], rsi
	mov [rdi+16], rax
	mov [rdi+24], rbx
	mov rax, rdi
	add rsp, 8
	ret
L172:
	call caml_call_gc
L173:
	jmp L174
type caml_curry2 function

section .text
align 16
GLOBAL caml_curry2_1:function
caml_curry2_1:
	sub rsp, 8
L175:
	mov rsi, rax
	cmp r15, qword [r14]
	jbe L176
L177:
	mov rdi, [rbx+24]
	mov rax, [rbx+16]
	mov rdx, [rdi+16]
	mov rbx, rsi
	add rsp, 8
	jmp rdx
L176:
	call caml_call_gc
L178:
	jmp L177
type caml_curry2_1 function

section .text
align 16
GLOBAL caml_apply3:function
caml_apply3:
	sub rsp, 24
L180:
	mov rdx, [rsi+8]
	sar rdx, 56
	cmp rdx, 3
	jne L179
	mov rdx, [rsi+16]
	add rsp, 24
	jmp rdx
align 4
L179:
	mov [rsp+8], rdi
	mov [rsp], rbx
	mov rdi, [rsi]
	mov rbx, rsi
	call rdi
L181:
	mov rbx, rax
	mov rdi, [rbx]
	mov rax, [rsp]
	call rdi
L182:
	mov rbx, rax
	mov rdi, [rbx]
	mov rax, [rsp+8]
	add rsp, 24
	jmp rdi
type caml_apply3 function

section .text
align 16
GLOBAL caml_apply2:function
caml_apply2:
	sub rsp, 8
L184:
	mov rsi, [rdi+8]
	sar rsi, 56
	cmp rsi, 2
	jne L183
	mov rsi, [rdi+16]
	add rsp, 8
	jmp rsi
align 4
L183:
	mov [rsp], rbx
	mov rsi, [rdi]
	mov rbx, rdi
	call rsi
L185:
	mov rbx, rax
	mov rdi, [rbx]
	mov rax, [rsp]
	add rsp, 8
	jmp rdi
type caml_apply2 function
section .data
align 8
	dq 3064
GLOBAL caml_exn_Out_of_memory:function
caml_exn_Out_of_memory:
	dq caml_startup__1
	dq -1
	dq 3068
caml_startup__1:
	db "Out_of_memory"
	times 2 db 0
	db 2
section .data
align 8
	dq 3064
GLOBAL caml_exn_Sys_error:function
caml_exn_Sys_error:
	dq caml_startup__2
	dq -3
	dq 3068
caml_startup__2:
	db "Sys_error"
	times 6 db 0
	db 6
section .data
align 8
	dq 3064
GLOBAL caml_exn_Failure:function
caml_exn_Failure:
	dq caml_startup__3
	dq -5
	dq 2044
caml_startup__3:
	db "Failure"
	db 0
section .data
align 8
	dq 3064
GLOBAL caml_exn_Invalid_argument:function
caml_exn_Invalid_argument:
	dq caml_startup__4
	dq -7
	dq 4092
caml_startup__4:
	db "Invalid_argument"
	times 7 db 0
	db 7
section .data
align 8
	dq 3064
GLOBAL caml_exn_End_of_file:function
caml_exn_End_of_file:
	dq caml_startup__5
	dq -9
	dq 3068
caml_startup__5:
	db "End_of_file"
	times 4 db 0
	db 4
section .data
align 8
	dq 3064
GLOBAL caml_exn_Division_by_zero:function
caml_exn_Division_by_zero:
	dq caml_startup__6
	dq -11
	dq 4092
caml_startup__6:
	db "Division_by_zero"
	times 7 db 0
	db 7
section .data
align 8
	dq 3064
GLOBAL caml_exn_Not_found:function
caml_exn_Not_found:
	dq caml_startup__7
	dq -13
	dq 3068
caml_startup__7:
	db "Not_found"
	times 6 db 0
	db 6
section .data
align 8
	dq 3064
GLOBAL caml_exn_Match_failure:function
caml_exn_Match_failure:
	dq caml_startup__8
	dq -15
	dq 3068
caml_startup__8:
	db "Match_failure"
	times 2 db 0
	db 2
section .data
align 8
	dq 3064
GLOBAL caml_exn_Stack_overflow:function
caml_exn_Stack_overflow:
	dq caml_startup__9
	dq -17
	dq 3068
caml_startup__9:
	db "Stack_overflow"
	times 1 db 0
	db 1
section .data
align 8
	dq 3064
GLOBAL caml_exn_Sys_blocked_io:function
caml_exn_Sys_blocked_io:
	dq caml_startup__10
	dq -19
	dq 3068
caml_startup__10:
	db "Sys_blocked_io"
	times 1 db 0
	db 1
section .data
align 8
	dq 3064
GLOBAL caml_exn_Assert_failure:function
caml_exn_Assert_failure:
	dq caml_startup__11
	dq -21
	dq 3068
caml_startup__11:
	db "Assert_failure"
	times 1 db 0
	db 1
section .data
align 8
	dq 3064
GLOBAL caml_exn_Undefined_recursive_module:function
caml_exn_Undefined_recursive_module:
	dq caml_startup__12
	dq -23
	dq 5116
caml_startup__12:
	db "Undefined_recursive_module"
	times 5 db 0
	db 5
section .data
align 8
GLOBAL caml_globals:function
caml_globals:
	dq camlFibk__gc_roots
	dq 0
section .data
align 8
	dq 10236
GLOBAL caml_globals_map:function
caml_globals_map:
	db "\204\225\246\276\0\0\0\60\0\0\0\10\0\0\0\36\0\0\0\31\240\300$Fibk\220\60 \251\271\354D\177[r\230\230\32\17}A\353\4\220\60\351\256\250f/\256'l\376\343\275\357\262\356TO\240\4\6@@"
	times 3 db 0
	db 3
section .data
align 8
GLOBAL caml_data_segments:function
caml_data_segments:
	dq caml_startup__data_begin
	dq caml_startup__data_end
	dq camlFibk__data_begin
	dq camlFibk__data_end
	dq 0
section .data
align 8
GLOBAL caml_code_segments:function
caml_code_segments:
	dq caml_startup__code_begin
	dq caml_startup__code_end
	dq camlFibk__code_begin
	dq camlFibk__code_end
	dq 0
section .data
align 8
GLOBAL caml_frametable:function
caml_frametable:
	dq caml_startup__frametable
	dq caml_system__frametable
	dq camlFibk__frametable
	dq 0

section .text
GLOBAL caml_startup__code_end:function
caml_startup__code_end:
section .data
align 8
section .data
	dq 0
GLOBAL caml_startup__data_end:function
caml_startup__data_end:
	dq 0
align 8
GLOBAL caml_startup__frametable:function
caml_startup__frametable:
	dq 10
	dq L185
	dw 16
	dw 1
	dw 0
align 8
	dq L182
	dw 32
	dw 1
	dw 8
align 8
	dq L181
	dw 32
	dw 2
	dw 0
	dw 8
align 8
	dq L178
	dw 18
	dw 2
	dw 3
	dw 7
	db 0
align 8
	dq L173
	dw 18
	dw 2
	dw 1
	dw 3
	db 1
	db 3
align 8
	dq L170
	dw 18
	dw 2
	dw 3
	dw 5
	db 0
align 8
	dq L165
	dw 18
	dw 2
	dw 1
	dw 3
	db 1
	db 3
align 8
	dq L162
	dw 18
	dw 3
	dw 5
	dw 9
	dw 11
	db 0
align 8
	dq L157
	dw 18
	dw 2
	dw 1
	dw 3
	db 1
	db 4
align 8
	dq L154
	dw 16
	dw 0
align 8
align 8
section .note.GNU-stack  progbits
