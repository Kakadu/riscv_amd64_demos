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
GLOBAL camlFibk__data_begin:function
camlFibk__data_begin:

section .text
GLOBAL camlFibk__code_begin:function
camlFibk__code_begin:
section .data
align 8
section .data
align 8
	dq 3063
GLOBAL camlFibk__string_of_int_125:function
camlFibk__string_of_int_125:
GLOBAL camlFibk__string_of_int_30_closure:function
camlFibk__string_of_int_30_closure:
	dq camlFibk__string_of_int_30
	dq 0x100000000000005
section .data
align 8
	dq 8183
GLOBAL camlFibk__set_of_closures_129:function
camlFibk__set_of_closures_129:
GLOBAL camlFibk__fib_85_closure:function
camlFibk__fib_85_closure:
	dq caml_curry2
	dq 0x20000000000000f
	dq camlFibk__fib_85
	dq 4345
GLOBAL camlFibk__k1_86_closure:function
camlFibk__k1_86_closure:
	dq caml_curry3
	dq 0x300000000000007
	dq camlFibk__k1_86
section .data
align 8
	dq 3063
GLOBAL camlFibk__print_endline_197:function
camlFibk__print_endline_197:
GLOBAL camlFibk__print_endline_52_closure:function
camlFibk__print_endline_52_closure:
	dq camlFibk__print_endline_52
	dq 0x100000000000005
section .data
align 8
	dq 4087
GLOBAL camlFibk__output_string_126:function
camlFibk__output_string_126:
GLOBAL camlFibk__output_string_40_closure:function
camlFibk__output_string_40_closure:
	dq caml_curry2
	dq 0x200000000000007
	dq camlFibk__output_string_40
section .data
align 8
	dq 4087
GLOBAL camlFibk__k0_128:function
camlFibk__k0_128:
GLOBAL camlFibk__k0_73_closure:function
camlFibk__k0_73_closure:
	dq caml_curry3
	dq 0x300000000000007
	dq camlFibk__k0_73
section .data
align 8
	dq 3063
GLOBAL camlFibk__id_127:function
camlFibk__id_127:
GLOBAL camlFibk__id_67_closure:function
camlFibk__id_67_closure:
	dq camlFibk__id_67
	dq 0x100000000000005
section .data
align 8
	dq 8960
GLOBAL camlFibk:function
camlFibk:
	dq 1
	dq camlFibk__string_of_int_30_closure
	dq camlFibk__output_string_40_closure
	dq camlFibk__print_endline_52_closure
	dq camlFibk__id_67_closure
	dq camlFibk__k0_73_closure
	dq camlFibk__fib_85_closure
	dq camlFibk__k1_86_closure
section .data
align 8
	dq 1792
GLOBAL camlFibk__repr1_137:function
camlFibk__repr1_137:
	dq 1
section .data
align 8
	dq 1792
GLOBAL camlFibk__f6_138:function
camlFibk__f6_138:
	dq 1
section .data
align 8
	dq 1792
GLOBAL camlFibk__Pccall_141:function
camlFibk__Pccall_141:
	dq 1
section .data
align 8
GLOBAL camlFibk__gc_roots:function
camlFibk__gc_roots:
	dq camlFibk__Pccall_141
	dq camlFibk__f6_138
	dq camlFibk__repr1_137
	dq camlFibk
	dq 0

section .text
align 16
GLOBAL camlFibk__k0_168:function
camlFibk__k0_168:
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
	jmp camlFibk__k0_73
L101:
	call caml_call_gc
L103:
	jmp L102
type camlFibk__k0_168 function

section .text
align 16
GLOBAL camlFibk__k1_157:function
camlFibk__k1_157:
	sub rsp, 8
L104:
	mov rdi, rax
	cmp r15, qword [r14]
	jbe L105
L106:
	mov rsi, [rbx+24]
	mov rax, [rbx+16]
	mov rbx, rsi
	add rsp, 8
	jmp camlFibk__k1_86
L105:
	call caml_call_gc
L107:
	jmp L106
type camlFibk__k1_157 function

section .text
align 16
GLOBAL camlFibk__string_of_int_30:function
camlFibk__string_of_int_30:
	sub rsp, 8
L108:
	mov rdi, qword [rel camlFibk__const_immstring_34 wrt ..got]
	mov rsi, rax
	mov rax, qword [rel caml_format_int wrt ..got]
	call caml_c_call
L109:
	mov r15, [r14+8]
	add rsp, 8
	ret
type camlFibk__string_of_int_30 function

section .text
align 16
GLOBAL camlFibk__output_string_40:function
camlFibk__output_string_40:
	sub rsp, 8
L110:
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
L111:
	mov r15, [r14+8]
	add rsp, 8
	ret
type camlFibk__output_string_40 function

section .text
align 16
GLOBAL camlFibk__print_endline_52:function
camlFibk__print_endline_52:
	sub rsp, 8
L112:
	mov rbx, rax
	mov rax, qword [rel camlFibk__Pccall_141 wrt ..got]
	mov rax, [rax]
	call camlFibk__output_string_40
L113:
	mov esi, 21
	mov rax, qword [rel camlFibk__Pccall_141 wrt ..got]
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_output_char wrt ..got]
	call caml_c_call
L114:
	mov r15, [r14+8]
	mov rax, qword [rel camlFibk__Pccall_141 wrt ..got]
	mov rdi, [rax]
	mov rax, qword [rel caml_ml_flush wrt ..got]
	call caml_c_call
L115:
	mov r15, [r14+8]
	add rsp, 8
	ret
type camlFibk__print_endline_52 function

section .text
align 16
GLOBAL camlFibk__id_67:function
camlFibk__id_67:
L116:
	ret
type camlFibk__id_67 function

section .text
align 16
GLOBAL camlFibk__k0_73:function
camlFibk__k0_73:
	sub rsp, 8
L117:
	mov rsi, rax
	cmp r15, qword [r14]
	jbe L118
L119:
	lea rax, [rbx+rdi-1]
	mov rdi, [rsi]
	mov rbx, rsi
	add rsp, 8
	jmp rdi
L118:
	call caml_call_gc
L120:
	jmp L119
type camlFibk__k0_73 function

section .text
align 16
GLOBAL camlFibk__fib_85:function
camlFibk__fib_85:
	sub rsp, 8
L122:
	cmp r15, qword [r14]
	jbe L123
L124:
	cmp rax, 5
	jge L121
	mov rdi, [rbx]
	add rsp, 8
	jmp rdi
align 4
L121:
	sub r15, 40
	cmp r15, qword [r14]
	jb L126
L128:
	lea rdi, [r15+8]
	mov qword [rdi-8], 4343
	mov rsi, qword [rel camlFibk__k1_157 wrt ..got]
	mov [rdi], rsi
	mov rsi, 0x100000000000005
	mov [rdi+8], rsi
	mov [rdi+16], rbx
	mov [rdi+24], rax
	add rax, -4
	mov rbx, rdi
	jmp L122
L126:
	call caml_call_gc
L127:
	jmp L128
L123:
	call caml_call_gc
L125:
	jmp L124
type camlFibk__fib_85 function

section .text
align 16
GLOBAL camlFibk__k1_86:function
camlFibk__k1_86:
	sub rsp, 8
L129:
	sub r15, 40
	cmp r15, qword [r14]
	jb L130
L132:
	lea rdi, [r15+8]
	mov qword [rdi-8], 4343
	mov rsi, qword [rel camlFibk__k0_168 wrt ..got]
	mov [rdi], rsi
	mov rsi, 0x100000000000005
	mov [rdi+8], rsi
	mov [rdi+16], rax
	mov [rdi+24], rbx
	mov rax, rbx
	add rax, -2
	mov rbx, rdi
	add rsp, 8
	jmp camlFibk__fib_85
L130:
	call caml_call_gc
L131:
	jmp L132
type camlFibk__k1_86 function
section .data
align 8
section .data
align 8
section .data
align 8
section .data
align 8
section .data
align 8
section .data
align 8
section .data
align 8
	dq 2044
GLOBAL camlFibk__const_immstring_34:function
camlFibk__const_immstring_34:
	db "%d"
	times 5 db 0
	db 5

section .text
align 16
GLOBAL camlFibk__entry:function
camlFibk__entry:
	sub rsp, 8
L133:
	mov edi, 3
	mov rax, qword [rel caml_ml_open_descriptor_out wrt ..got]
	call caml_c_call
L134:
	mov r15, [r14+8]
	mov rbx, qword [rel camlFibk__Pccall_141 wrt ..got]
	mov [rbx], rax
	mov rbx, qword [rel camlFibk__id_67_closure wrt ..got]
	mov eax, 13
	call camlFibk__fib_85
L135:
	mov rbx, qword [rel camlFibk__f6_138 wrt ..got]
	mov [rbx], rax
	mov rax, qword [rel camlFibk__f6_138 wrt ..got]
	mov rax, [rax]
	call camlFibk__string_of_int_30
L136:
	mov rbx, qword [rel camlFibk__repr1_137 wrt ..got]
	mov [rbx], rax
	mov rax, qword [rel camlFibk__repr1_137 wrt ..got]
	mov rax, [rax]
	call camlFibk__print_endline_52
L137:
	mov rax, qword [rel camlFibk wrt ..got]
	mov rbx, qword [rel camlFibk__Pccall_141 wrt ..got]
	mov rbx, [rbx]
	mov [rax], rbx
	mov eax, 1
	add rsp, 8
	ret
type camlFibk__entry function
section .data
align 8
	dq caml_ml_output
	dq caml_ml_output_char
	dq caml_format_int
	dq caml_ml_flush
	dq caml_ml_open_descriptor_out

section .text
GLOBAL camlFibk__code_end:function
camlFibk__code_end:
section .data
align 8
section .data
	dq 0
GLOBAL camlFibk__data_end:function
camlFibk__data_end:
	dq 0
align 8
GLOBAL camlFibk__frametable:function
camlFibk__frametable:
	dq 15
	dq L137
	dw 17
	dw 0
align 4
	dd ($ - L138)
align 8
	dq L136
	dw 17
	dw 0
align 4
	dd ($ - L139)
align 8
	dq L135
	dw 17
	dw 0
align 4
	dd ($ - L140)
align 8
	dq L134
	dw 17
	dw 0
align 4
	dd ($ - L141)
align 8
	dq L131
	dw 18
	dw 2
	dw 1
	dw 3
	db 1
	db 3
align 8
	dq L127
	dw 18
	dw 2
	dw 1
	dw 3
	db 1
	db 3
align 8
	dq L125
	dw 18
	dw 2
	dw 1
	dw 3
	db 0
align 8
	dq L120
	dw 18
	dw 3
	dw 3
	dw 5
	dw 7
	db 0
align 8
	dq L115
	dw 17
	dw 0
align 4
	dd ($ - L142)
align 8
	dq L114
	dw 17
	dw 0
align 4
	dd ($ - L143)
align 8
	dq L113
	dw 17
	dw 0
align 4
	dd ($ - L144)
align 8
	dq L111
	dw 17
	dw 0
align 4
	dd ($ - L145)
align 8
	dq L109
	dw 17
	dw 0
align 4
	dd ($ - L146)
align 8
	dq L107
	dw 18
	dw 2
	dw 3
	dw 5
	db 0
align 8
	dq L103
	dw 18
	dw 2
	dw 3
	dw 5
	db 0
align 8
align 4
L146:
	dd (L148 - $) + 1677721600
	;dl 45408
align 4
L143:
	dd (L149 - $) + 1677721600
	;dl 98336
align 4
L138:
	dd (L150 - $) + 1409286144
	;dl 180256
align 4
L140:
	dd (L150 - $) + 1275068416
	;dl 172208
align 4
L142:
	dd (L149 - $) + 939524096
	;dl 102432
align 4
L139:
	dd (L150 - $) + 2013265920
	;dl 176352
align 4
L145:
	dd (L151 - $) + 402653184
	;dl 82321
align 4
L141:
	dd (L152 - $) + 2013265920
	;dl 24784
align 4
L144:
	dd (L149 - $) + 1610612736
	;dl 94240
L147:
	db "Fibk.ml\0"
align 4
L149:
	dd ($ - L147)
	db "Fibk.print_endline\0"
align 4
L152:
	dd ($ - L147)
	db "Fibk.stdout\0"
align 4
L150:
	dd ($ - L147)
	db "Fibk\0"
align 4
L148:
	dd ($ - L147)
	db "Fibk.string_of_int\0"
align 4
L151:
	dd ($ - L147)
	db "Fibk.output_string\0"
align 8
section .note.GNU-stack  progbits
