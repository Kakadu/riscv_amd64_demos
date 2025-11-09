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
	.globl	camlFac__string_of_int_81
camlFac__string_of_int_81:
	.globl	camlFac.string_of_int_14_closure
camlFac.string_of_int_14_closure:
	.quad	camlFac.string_of_int_14
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlFac__set_of_closures_84
camlFac__set_of_closures_84:
	.globl	camlFac.fac_51_closure
camlFac.fac_51_closure:
	.quad	camlFac.fac_51
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFac__print_endline_83
camlFac__print_endline_83:
	.globl	camlFac.print_endline_36_closure
camlFac.print_endline_36_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFac.print_endline_36
	.data
	.align	8
	.quad	4087
	.globl	camlFac__output_string_82
camlFac__output_string_82:
	.globl	camlFac.output_string_24_closure
camlFac.output_string_24_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFac.output_string_24
	.data
	.align	8
	.quad	1792
	.globl	camlFac__s_91
camlFac__s_91:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFac__apply_arg_92
camlFac__apply_arg_92:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFac__Pccall_93
camlFac__Pccall_93:
	.quad	1
	.data
	.align	8
	.globl	camlFac.gc_roots
camlFac.gc_roots:
	.quad	camlFac__Pccall_93
	.quad	camlFac__apply_arg_92
	.quad	camlFac__s_91
	.quad	0
	.text
	.align	16
	.globl	camlFac.string_of_int_14
camlFac.string_of_int_14:
	.cfi_startproc
.L100:
	movq	camlFac__const_immstring_18@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L101:
	ret
	.cfi_endproc
	.type camlFac.string_of_int_14,@function
	.size camlFac.string_of_int_14,. - camlFac.string_of_int_14
	.text
	.align	16
	.globl	camlFac.output_string_24
camlFac.output_string_24:
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
	.type camlFac.output_string_24,@function
	.size camlFac.output_string_24,. - camlFac.output_string_24
	.text
	.align	16
	.globl	camlFac.print_endline_36
camlFac.print_endline_36:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L105
.L106:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L104:
	movq	%rax, (%rsp)
	call	camlFac.output_string_24@PLT
.L107:
	movl	$21, %esi
	movq	(%rsp), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L108:
	movq	(%rsp), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L109:
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L105:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L106
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFac.print_endline_36,@function
	.size camlFac.print_endline_36,. - camlFac.print_endline_36
	.text
	.align	16
	.globl	camlFac.fac_51
camlFac.fac_51:
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
	call	camlFac.fac_51@PLT
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
	.type camlFac.fac_51,@function
	.size camlFac.fac_51,. - camlFac.fac_51
	.data
	.align	8
	.quad	4864
	.globl	camlFac
camlFac:
	.quad	camlFac.string_of_int_14_closure
	.quad	camlFac.output_string_24_closure
	.quad	camlFac.print_endline_36_closure
	.quad	camlFac.fac_51_closure
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
	.globl	camlFac__const_immstring_18
camlFac__const_immstring_18:
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
	movq	camlFac__Pccall_93@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$11, %eax
	call	camlFac.fac_51@PLT
.L119:
	movq	camlFac__apply_arg_92@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFac__apply_arg_92@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFac.string_of_int_14@PLT
.L120:
	movq	camlFac__s_91@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFac__s_91@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	movq	camlFac__Pccall_93@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFac.print_endline_36@PLT
.L121:
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
	.word	17
	.word	0
	.align	4
	.long	(.L127 - .) + 0
	.align	8
	.quad	.L108
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L128 - .) + 0
	.align	8
	.quad	.L107
	.word	17
	.word	1
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
.L128:
	.long	(.L133 - .) + 0
	.long	9464200
	.align	4
.L122:
	.long	(.L134 - .) + 0
	.long	15206592
	.align	4
.L123:
	.long	(.L134 - .) + 0
	.long	14690552
	.align	4
.L131:
	.long	(.L135 - .) + 0
	.long	4217144
	.align	4
.L129:
	.long	(.L133 - .) + 0
	.long	9439424
	.align	4
.L126:
	.long	(.L136 - .) + 0
	.long	12623232
	.align	4
.L125:
	.long	(.L134 - .) + 0
	.long	14171424
	.align	4
.L124:
	.long	(.L134 - .) + 0
	.long	14704888
	.align	4
.L130:
	.long	(.L137 - .) + 0
	.long	7866744
	.align	4
.L127:
	.long	(.L133 - .) + 0
	.long	9489912
.L132:
	.ascii	"fac.ml\0"
	.align	4
.L135:
	.long	(.L132 - .) + 0
	.ascii	"Fac.string_of_int\0"
	.align	4
.L136:
	.long	(.L132 - .) + 0
	.ascii	"Fac.fac\0"
	.align	4
.L133:
	.long	(.L132 - .) + 0
	.ascii	"Fac.print_endline\0"
	.align	4
.L137:
	.long	(.L132 - .) + 0
	.ascii	"Fac.output_string\0"
	.align	4
.L134:
	.long	(.L132 - .) + 0
	.ascii	"Fac\0"
	.align	8
	.size camlFac.frametable,. - camlFac.frametable
	.section .note.GNU-stack,"",%progbits
