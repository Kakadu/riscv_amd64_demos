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
	.globl	caml_startup.data_begin
caml_startup.data_begin:
	.text
	.globl	caml_startup.code_begin
caml_startup.code_begin:
	.text
	.align	16
	.globl	caml_program
caml_program:
	.cfi_startproc
	leaq	-320(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L131
.L132:
.L130:
	call	camlMini.entry@PLT
.L133:
	movq	caml_globals_inited@GOTPCREL(%rip), %rax
	addq	$1, (%rax)
	movl	$1, %eax
	ret
.L131:
	push	$33
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L132
	.cfi_endproc
	.type caml_program,@function
	.size caml_program,. - caml_program
	.data
	.align	8
	.globl	caml_startup.gc_roots
caml_startup.gc_roots:
	.quad	0
	.text
	.align	16
	.globl	caml_curry2
caml_curry2:
	.cfi_startproc
.L134:
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L135
.L137:
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	caml_curry2_1@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$72057594037927941, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rdi, %rax
	ret
.L135:
	call	caml_call_gc@PLT
.L136:
	jmp	.L137
	.cfi_endproc
	.type caml_curry2,@function
	.size caml_curry2,. - caml_curry2
	.text
	.align	16
	.globl	caml_curry2_1
caml_curry2_1:
	.cfi_startproc
.L138:
	movq	%rax, %rsi
	cmpq	(%r14), %r15
	jbe	.L139
.L140:
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rax
	movq	16(%rdi), %rdx
	movq	%rsi, %rbx
	jmp	*%rdx
.L139:
	call	caml_call_gc@PLT
.L141:
	jmp	.L140
	.cfi_endproc
	.type caml_curry2_1,@function
	.size caml_curry2_1,. - caml_curry2_1
	.text
	.align	16
	.globl	caml_apply3
caml_apply3:
	.cfi_startproc
	leaq	-336(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L144
.L145:
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
.L143:
	movq	8(%rsi), %rdx
	sarq	$56, %rdx
	cmpq	$3, %rdx
	jne	.L142
	movq	16(%rsi), %rdx
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	*%rdx
	.cfi_adjust_cfa_offset 16
	.align	4
.L142:
	movq	%rdi, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	(%rsi), %rdi
	movq	%rsi, %rbx
	call	*%rdi
.L146:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	call	*%rdi
.L147:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	8(%rsp), %rax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	*%rdi
	.cfi_adjust_cfa_offset 16
.L144:
	push	$35
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L145
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
	.type caml_apply3,@function
	.size caml_apply3,. - caml_apply3
	.text
	.align	16
	.globl	caml_apply2
caml_apply2:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L150
.L151:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L149:
	movq	8(%rdi), %rsi
	sarq	$56, %rsi
	cmpq	$2, %rsi
	jne	.L148
	movq	16(%rdi), %rsi
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rsi
	.cfi_adjust_cfa_offset 8
	.align	4
.L148:
	movq	%rbx, (%rsp)
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
.L152:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
.L150:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L151
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type caml_apply2,@function
	.size caml_apply2,. - caml_apply2
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Out_of_memory
caml_exn_Out_of_memory:
	.quad	caml_startup.1
	.quad	-1
	.quad	3068
caml_startup.1:
	.ascii	"Out_of_memory"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Sys_error
caml_exn_Sys_error:
	.quad	caml_startup.2
	.quad	-3
	.quad	3068
caml_startup.2:
	.ascii	"Sys_error"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Failure
caml_exn_Failure:
	.quad	caml_startup.3
	.quad	-5
	.quad	2044
caml_startup.3:
	.ascii	"Failure"
	.byte	0
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Invalid_argument
caml_exn_Invalid_argument:
	.quad	caml_startup.4
	.quad	-7
	.quad	4092
caml_startup.4:
	.ascii	"Invalid_argument"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_End_of_file
caml_exn_End_of_file:
	.quad	caml_startup.5
	.quad	-9
	.quad	3068
caml_startup.5:
	.ascii	"End_of_file"
	.space	4
	.byte	4
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Division_by_zero
caml_exn_Division_by_zero:
	.quad	caml_startup.6
	.quad	-11
	.quad	4092
caml_startup.6:
	.ascii	"Division_by_zero"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Not_found
caml_exn_Not_found:
	.quad	caml_startup.7
	.quad	-13
	.quad	3068
caml_startup.7:
	.ascii	"Not_found"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Match_failure
caml_exn_Match_failure:
	.quad	caml_startup.8
	.quad	-15
	.quad	3068
caml_startup.8:
	.ascii	"Match_failure"
	.space	2
	.byte	2
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Stack_overflow
caml_exn_Stack_overflow:
	.quad	caml_startup.9
	.quad	-17
	.quad	3068
caml_startup.9:
	.ascii	"Stack_overflow"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Sys_blocked_io
caml_exn_Sys_blocked_io:
	.quad	caml_startup.10
	.quad	-19
	.quad	3068
caml_startup.10:
	.ascii	"Sys_blocked_io"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Assert_failure
caml_exn_Assert_failure:
	.quad	caml_startup.11
	.quad	-21
	.quad	3068
caml_startup.11:
	.ascii	"Assert_failure"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3064
	.globl	caml_exn_Undefined_recursive_module
caml_exn_Undefined_recursive_module:
	.quad	caml_startup.12
	.quad	-23
	.quad	5116
caml_startup.12:
	.ascii	"Undefined_recursive_module"
	.space	5
	.byte	5
	.data
	.align	8
	.globl	caml_globals
caml_globals:
	.quad	camlMini.gc_roots
	.quad	0
	.data
	.align	8
	.quad	10236
	.globl	caml_globals_map
caml_globals_map:
	.ascii	"\204\225\246\276\0\0\0\60\0\0\0\10\0\0\0\36\0\0\0\31\240\300$Mini\220\60q\346\245$\303\203\323q\255 \216\35\60\365:\370\220\60#Lz\340\240\350\350\205\217\343\10\213\0D\10\177\240\4\6@@"
	.space	3
	.byte	3
	.data
	.align	8
	.globl	caml_data_segments
caml_data_segments:
	.quad	caml_startup.data_begin
	.quad	caml_startup.data_end
	.quad	camlMini.data_begin
	.quad	camlMini.data_end
	.quad	0
	.data
	.align	8
	.globl	caml_code_segments
caml_code_segments:
	.quad	caml_startup.code_begin
	.quad	caml_startup.code_end
	.quad	camlMini.code_begin
	.quad	camlMini.code_end
	.quad	0
	.data
	.align	8
	.globl	caml_frametable
caml_frametable:
	.quad	caml_startup.frametable
	.quad	caml_system.frametable
	.quad	camlMini.frametable
	.quad	0
	.text
	.globl	caml_startup.code_end
caml_startup.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	caml_startup.data_end
caml_startup.data_end:
	.quad	0
	.align	8
	.globl	caml_startup.frametable
caml_startup.frametable:
	.quad	6
	.quad	.L152
	.word	16
	.word	1
	.word	0
	.align	8
	.quad	.L147
	.word	24
	.word	1
	.word	8
	.align	8
	.quad	.L146
	.word	24
	.word	2
	.word	0
	.word	8
	.align	8
	.quad	.L141
	.word	10
	.word	2
	.word	3
	.word	7
	.byte	0
	.align	8
	.quad	.L136
	.word	10
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L133
	.word	8
	.word	0
	.align	8
	.align	8
	.type caml_startup.frametable,@object
	.size caml_startup.frametable,. - caml_startup.frametable
	.section .note.GNU-stack,"",%progbits
