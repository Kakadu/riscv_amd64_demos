	.file ""
	.section .rodata.cst16,"aM",@progbits,16
	.align	16
caml_negf_mask:
	.quad	0x8000000000000000
	.quad	0
	.align	16
caml_absf_mask:
	.quad	0x7fffffffffffffff
	.quad	-1
	.data
	.globl	caml_startup__data_begin
caml_startup__data_begin:
	.text
	.globl	caml_startup__code_begin
caml_startup__code_begin:
	.text
	.align	16
	.globl	caml_program
caml_program:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L153:
	call	camlFibk__entry@PLT
.L154:
	movq	caml_globals_inited@GOTPCREL(%rip), %rax
	addq	$1, (%rax)
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_program,@function
	.size caml_program,. - caml_program
	.text
	.align	16
	.globl	caml_curry3
caml_curry3:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L155:
	subq	$48, %r15
	cmpq	(%r14), %r15
	jb	.L156
.L158:
	leaq	8(%r15), %rdi
	movq	$5367, -8(%rdi)
	movq	caml_curry3_1@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$144115188075855879, %rsi
	movq	%rsi, 8(%rdi)
	movq	caml_curry3_1_app@GOTPCREL(%rip), %rsi
	movq	%rsi, 16(%rdi)
	movq	%rax, 24(%rdi)
	movq	%rbx, 32(%rdi)
	movq	%rdi, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L156:
	call	caml_call_gc@PLT
.L157:
	jmp	.L158
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_curry3,@function
	.size caml_curry3,. - caml_curry3
	.text
	.align	16
	.globl	caml_curry3_1_app
caml_curry3_1_app:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L159:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	cmpq	(%r14), %r15
	jbe	.L160
.L161:
	movq	32(%rdi), %rsi
	movq	24(%rdi), %rax
	movq	16(%rsi), %r8
	movq	%rdx, %rbx
	movq	%rcx, %rdi
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%r8
	.cfi_adjust_cfa_offset 8
.L160:
	call	caml_call_gc@PLT
.L162:
	jmp	.L161
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_curry3_1_app,@function
	.size caml_curry3_1_app,. - caml_curry3_1_app
	.text
	.align	16
	.globl	caml_curry3_1
caml_curry3_1:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L163:
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L164
.L166:
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	caml_curry3_2@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$72057594037927941, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rdi, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L164:
	call	caml_call_gc@PLT
.L165:
	jmp	.L166
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_curry3_1,@function
	.size caml_curry3_1,. - caml_curry3_1
	.text
	.align	16
	.globl	caml_curry3_2
caml_curry3_2:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L167:
	movq	%rax, %rdi
	cmpq	(%r14), %r15
	jbe	.L168
.L169:
	movq	24(%rbx), %rax
	movq	32(%rax), %rsi
	movq	16(%rbx), %rbx
	movq	24(%rax), %rax
	movq	16(%rsi), %rdx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdx
	.cfi_adjust_cfa_offset 8
.L168:
	call	caml_call_gc@PLT
.L170:
	jmp	.L169
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_curry3_2,@function
	.size caml_curry3_2,. - caml_curry3_2
	.text
	.align	16
	.globl	caml_curry2
caml_curry2:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L171:
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L172
.L174:
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	caml_curry2_1@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$72057594037927941, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rdi, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L172:
	call	caml_call_gc@PLT
.L173:
	jmp	.L174
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_curry2,@function
	.size caml_curry2,. - caml_curry2
	.text
	.align	16
	.globl	caml_curry2_1
caml_curry2_1:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L175:
	movq	%rax, %rsi
	cmpq	(%r14), %r15
	jbe	.L176
.L177:
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rax
	movq	16(%rdi), %rdx
	movq	%rsi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdx
	.cfi_adjust_cfa_offset 8
.L176:
	call	caml_call_gc@PLT
.L178:
	jmp	.L177
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_curry2_1,@function
	.size caml_curry2_1,. - caml_curry2_1
	.text
	.align	16
	.globl	caml_apply3
caml_apply3:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
.L180:
	movq	8(%rsi), %rdx
	sarq	$56, %rdx
	cmpq	$3, %rdx
	jne	.L179
	movq	16(%rsi), %rdx
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	jmp	*%rdx
	.cfi_adjust_cfa_offset 24
	.align	4
.L179:
	movq	%rdi, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	(%rsi), %rdi
	movq	%rsi, %rbx
	call	*%rdi
.L181:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	call	*%rdi
.L182:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	jmp	*%rdi
	.cfi_adjust_cfa_offset 24
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type caml_apply3,@function
	.size caml_apply3,. - caml_apply3
	.text
	.align	16
	.globl	caml_apply2
caml_apply2:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L184:
	movq	8(%rdi), %rsi
	sarq	$56, %rsi
	cmpq	$2, %rsi
	jne	.L183
	movq	16(%rdi), %rsi
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rsi
	.cfi_adjust_cfa_offset 8
	.align	4
.L183:
	movq	%rbx, (%rsp)
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
.L185:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_apply2,@function
	.size caml_apply2,. - caml_apply2
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Out_of_memory
caml_exn_Out_of_memory:
	.quad	caml_startup__1
	.quad	-1
	.quad	3068
caml_startup__1:
	.ascii	"Out_of_memory"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Sys_error
caml_exn_Sys_error:
	.quad	caml_startup__2
	.quad	-3
	.quad	3068
caml_startup__2:
	.ascii	"Sys_error"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Failure
caml_exn_Failure:
	.quad	caml_startup__3
	.quad	-5
	.quad	2044
caml_startup__3:
	.ascii	"Failure"
	.byte	0
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Invalid_argument
caml_exn_Invalid_argument:
	.quad	caml_startup__4
	.quad	-7
	.quad	4092
caml_startup__4:
	.ascii	"Invalid_argument"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_End_of_file
caml_exn_End_of_file:
	.quad	caml_startup__5
	.quad	-9
	.quad	3068
caml_startup__5:
	.ascii	"End_of_file"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Division_by_zero
caml_exn_Division_by_zero:
	.quad	caml_startup__6
	.quad	-11
	.quad	4092
caml_startup__6:
	.ascii	"Division_by_zero"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Not_found
caml_exn_Not_found:
	.quad	caml_startup__7
	.quad	-13
	.quad	3068
caml_startup__7:
	.ascii	"Not_found"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Match_failure
caml_exn_Match_failure:
	.quad	caml_startup__8
	.quad	-15
	.quad	3068
caml_startup__8:
	.ascii	"Match_failure"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Stack_overflow
caml_exn_Stack_overflow:
	.quad	caml_startup__9
	.quad	-17
	.quad	3068
caml_startup__9:
	.ascii	"Stack_overflow"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Sys_blocked_io
caml_exn_Sys_blocked_io:
	.quad	caml_startup__10
	.quad	-19
	.quad	3068
caml_startup__10:
	.ascii	"Sys_blocked_io"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Assert_failure
caml_exn_Assert_failure:
	.quad	caml_startup__11
	.quad	-21
	.quad	3068
caml_startup__11:
	.ascii	"Assert_failure"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Undefined_recursive_module
caml_exn_Undefined_recursive_module:
	.quad	caml_startup__12
	.quad	-23
	.quad	5116
caml_startup__12:
	.ascii	"Undefined_recursive_module"
	.space	5
	.byte	5
	.data
	.align	8
	.globl	caml_globals
caml_globals:
	.quad	camlFibk__gc_roots
	.quad	0
	.data
	.align	8
	.quad	10236
	.globl	caml_globals_map
caml_globals_map:
	.ascii	"\204\225\246\276\0\0\0\60\0\0\0\10\0\0\0\36\0\0\0\31\240\300$Fibk\220\60 \251\271\354D\177[r\230\230\32\17}A\353\4\220\60\351\256\250f/\256'l\376\343\275\357\262\356TO\240\4\6@@"
	.space	3
	.byte	3
	.data
	.align	8
	.globl	caml_data_segments
caml_data_segments:
	.quad	caml_startup__data_begin
	.quad	caml_startup__data_end
	.quad	camlFibk__data_begin
	.quad	camlFibk__data_end
	.quad	0
	.data
	.align	8
	.globl	caml_code_segments
caml_code_segments:
	.quad	caml_startup__code_begin
	.quad	caml_startup__code_end
	.quad	camlFibk__code_begin
	.quad	camlFibk__code_end
	.quad	0
	.data
	.align	8
	.globl	caml_frametable
caml_frametable:
	.quad	caml_startup__frametable
	.quad	caml_system__frametable
	.quad	camlFibk__frametable
	.quad	0
	.text
	.globl	caml_startup__code_end
caml_startup__code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	caml_startup__data_end
caml_startup__data_end:
	.quad	0
	.align	8
	.globl	caml_startup__frametable
caml_startup__frametable:
	.quad	10
	.quad	.L185
	.word	16
	.word	1
	.word	0
	.align	8
	.quad	.L182
	.word	32
	.word	1
	.word	8
	.align	8
	.quad	.L181
	.word	32
	.word	2
	.word	0
	.word	8
	.align	8
	.quad	.L178
	.word	18
	.word	2
	.word	3
	.word	7
	.byte	0
	.align	8
	.quad	.L173
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L170
	.word	18
	.word	2
	.word	3
	.word	5
	.byte	0
	.align	8
	.quad	.L165
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L162
	.word	18
	.word	3
	.word	5
	.word	9
	.word	11
	.byte	0
	.align	8
	.quad	.L157
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	4
	.align	8
	.quad	.L154
	.word	16
	.word	0
	.align	8
	.align	8
	.size caml_startup__frametable,. - caml_startup__frametable
	.section .note.GNU-stack,"",%progbits
