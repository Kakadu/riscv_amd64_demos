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
	.globl	camlFac.data_begin
camlFac.data_begin:
	.text
	.globl	camlFac.code_begin
camlFac.code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063
	.globl	camlFac__string_of_int_84
camlFac__string_of_int_84:
	.globl	camlFac.string_of_int_21_closure
camlFac.string_of_int_21_closure:
	.quad	camlFac.string_of_int_21
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlFac__set_of_closures_86
camlFac__set_of_closures_86:
	.globl	camlFac.fac_58_closure
camlFac.fac_58_closure:
	.quad	camlFac.fac_58
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlFac__print_endline_133
camlFac__print_endline_133:
	.globl	camlFac.print_endline_43_closure
camlFac.print_endline_43_closure:
	.quad	camlFac.print_endline_43
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFac__output_string_85
camlFac__output_string_85:
	.globl	camlFac.output_string_31_closure
camlFac.output_string_31_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFac.output_string_31
	.data
	.align	8
	.quad	5888
	.globl	camlFac
camlFac:
	.quad	1
	.quad	camlFac.string_of_int_21_closure
	.quad	camlFac.output_string_31_closure
	.quad	camlFac.print_endline_43_closure
	.quad	camlFac.fac_58_closure
	.data
	.align	8
	.quad	1792
	.globl	camlFac__apply_arg_94
camlFac__apply_arg_94:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFac__apply_arg_95
camlFac__apply_arg_95:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFac__Pccall_98
camlFac__Pccall_98:
	.quad	1
	.data
	.align	8
	.globl	camlFac.gc_roots
camlFac.gc_roots:
	.quad	camlFac__Pccall_98
	.quad	camlFac__apply_arg_95
	.quad	camlFac__apply_arg_94
	.quad	camlFac
	.quad	0
	.text
	.align	16
	.globl	camlFac.string_of_int_21
camlFac.string_of_int_21:
	.cfi_startproc
.L100:
	movq	camlFac__const_immstring_25@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L101:
	ret
	.cfi_endproc
	.type camlFac.string_of_int_21,@function
	.size camlFac.string_of_int_21,. - camlFac.string_of_int_21
	.text
	.align	16
	.globl	camlFac.output_string_31
camlFac.output_string_31:
	.cfi_startproc
.L102:
	movq	-8(%rbx), %rdi
	shrq	$10, %rdi
	leaq	-1(,%rdi,8), %rdi
	movzbq	(%rbx,%rdi), %rsi
	subq	%rsi, %rdi
	leaq	1(%rdi,%rdi), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	caml_ml_output@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L103:
	ret
	.cfi_endproc
	.type camlFac.output_string_31,@function
	.size camlFac.output_string_31,. - camlFac.output_string_31
	.text
	.align	16
	.globl	camlFac.print_endline_43
camlFac.print_endline_43:
	.cfi_startproc
	leaq	-320(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L105
.L106:
.L104:
	movq	%rax, %rbx
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFac.output_string_31@PLT
.L107:
	movl	$21, %esi
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L108:
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L109:
	ret
.L105:
	push	$33
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L106
	.cfi_endproc
	.type camlFac.print_endline_43,@function
	.size camlFac.print_endline_43,. - camlFac.print_endline_43
	.text
	.align	16
	.globl	camlFac.fac_58
camlFac.fac_58:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L112
.L113:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L111:
	cmpq	$5, %rax
	jge	.L110
	movl	$3, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.align	4
.L110:
	movq	%rax, (%rsp)
	addq	$-2, %rax
	call	camlFac.fac_58@PLT
.L114:
	movq	%rax, %rbx
	sarq	$1, %rbx
	movq	(%rsp), %rax
	decq	%rax
	imulq	%rbx, %rax
	incq	%rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L112:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L113
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFac.fac_58,@function
	.size camlFac.fac_58,. - camlFac.fac_58
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.quad	2044
	.globl	camlFac__const_immstring_25
camlFac__const_immstring_25:
	.ascii	"%d"
	.space	5
	.byte	5
	.text
	.align	16
	.globl	camlFac.entry
camlFac.entry:
	.cfi_startproc
	leaq	-320(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L116
.L117:
.L115:
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L118:
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$11, %eax
	call	camlFac.fac_58@PLT
.L119:
	movq	camlFac__apply_arg_95@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFac__apply_arg_95@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFac.string_of_int_21@PLT
.L120:
	movq	camlFac__apply_arg_94@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFac__apply_arg_94@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFac.print_endline_43@PLT
.L121:
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	camlFac@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$1, %eax
	ret
.L116:
	push	$33
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L117
	.cfi_endproc
	.type camlFac.entry,@function
	.size camlFac.entry,. - camlFac.entry
	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlFac.code_end
camlFac.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlFac.data_end
camlFac.data_end:
	.quad	0
	.align	8
	.globl	camlFac.frametable
camlFac.frametable:
	.quad	10
	.quad	.L121
	.word	9
	.word	0
	.align	4
	.long	(.L122 - .) + 0
	.align	8
	.quad	.L120
	.word	9
	.word	0
	.align	4
	.long	(.L123 - .) + 0
	.align	8
	.quad	.L119
	.word	9
	.word	0
	.align	4
	.long	(.L124 - .) + 0
	.align	8
	.quad	.L118
	.word	9
	.word	0
	.align	4
	.long	(.L125 - .) + 0
	.align	8
	.quad	.L114
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L126 - .) + 0
	.align	8
	.quad	.L109
	.word	9
	.word	0
	.align	4
	.long	(.L127 - .) + 0
	.align	8
	.quad	.L108
	.word	9
	.word	0
	.align	4
	.long	(.L128 - .) + 0
	.align	8
	.quad	.L107
	.word	9
	.word	0
	.align	4
	.long	(.L129 - .) + 0
	.align	8
	.quad	.L103
	.word	9
	.word	0
	.align	4
	.long	(.L130 - .) + 0
	.align	8
	.quad	.L101
	.word	9
	.word	0
	.align	4
	.long	(.L131 - .) + 0
	.align	8
	.align	4
.L129:
	.long	(.L133 - .) + 0
	.long	9439424
	.align	4
.L124:
	.long	(.L134 - .) + 0
	.long	13670760
	.align	4
.L125:
	.long	(.L135 - .) + 0
	.long	2110736
	.align	4
.L130:
	.long	(.L136 - .) + 0
	.long	7866744
	.align	4
.L122:
	.long	(.L134 - .) + 0
	.long	13641072
	.align	4
.L128:
	.long	(.L133 - .) + 0
	.long	9464200
	.align	4
.L127:
	.long	(.L133 - .) + 0
	.long	9489912
	.align	4
.L126:
	.long	(.L137 - .) + 0
	.long	12623232
	.align	4
.L123:
	.long	(.L134 - .) + 0
	.long	13655408
	.align	4
.L131:
	.long	(.L138 - .) + 0
	.long	4217144
.L132:
	.ascii	"fac.ml\0"
	.align	4
.L135:
	.long	(.L132 - .) + 0
	.ascii	"Fac.stdout\0"
	.align	4
.L138:
	.long	(.L132 - .) + 0
	.ascii	"Fac.string_of_int\0"
	.align	4
.L137:
	.long	(.L132 - .) + 0
	.ascii	"Fac.fac\0"
	.align	4
.L133:
	.long	(.L132 - .) + 0
	.ascii	"Fac.print_endline\0"
	.align	4
.L136:
	.long	(.L132 - .) + 0
	.ascii	"Fac.output_string\0"
	.align	4
.L134:
	.long	(.L132 - .) + 0
	.ascii	"Fac\0"
	.align	8
	.type camlFac.frametable,@object
	.size camlFac.frametable,. - camlFac.frametable
	.section .note.GNU-stack,"",%progbits
