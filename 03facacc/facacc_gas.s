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
	.globl	camlFacacc.data_begin
camlFacacc.data_begin:
	.text
	.globl	camlFacacc.code_begin
camlFacacc.code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063
	.globl	camlFacacc__string_of_int_97
camlFacacc__string_of_int_97:
	.globl	camlFacacc.string_of_int_21_closure
camlFacacc.string_of_int_21_closure:
	.quad	camlFacacc.string_of_int_21
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFacacc__set_of_closures_99
camlFacacc__set_of_closures_99:
	.globl	camlFacacc.fac_58_closure
camlFacacc.fac_58_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFacacc.fac_58
	.data
	.align	8
	.quad	3063
	.globl	camlFacacc__print_endline_174
camlFacacc__print_endline_174:
	.globl	camlFacacc.print_endline_43_closure
camlFacacc.print_endline_43_closure:
	.quad	camlFacacc.print_endline_43
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFacacc__output_string_98
camlFacacc__output_string_98:
	.globl	camlFacacc.output_string_31_closure
camlFacacc.output_string_31_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFacacc.output_string_31
	.data
	.align	8
	.quad	5888
	.globl	camlFacacc
camlFacacc:
	.quad	1
	.quad	camlFacacc.string_of_int_21_closure
	.quad	camlFacacc.output_string_31_closure
	.quad	camlFacacc.print_endline_43_closure
	.quad	camlFacacc.fac_58_closure
	.data
	.align	8
	.quad	1792
	.globl	camlFacacc__apply_arg_111
camlFacacc__apply_arg_111:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFacacc__apply_arg_112
camlFacacc__apply_arg_112:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFacacc__apply_arg_114
camlFacacc__apply_arg_114:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFacacc__apply_arg_115
camlFacacc__apply_arg_115:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFacacc__$2amatch$2a_116
camlFacacc__$2amatch$2a_116:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFacacc__Pccall_119
camlFacacc__Pccall_119:
	.quad	1
	.data
	.align	8
	.globl	camlFacacc.gc_roots
camlFacacc.gc_roots:
	.quad	camlFacacc__Pccall_119
	.quad	camlFacacc__$2amatch$2a_116
	.quad	camlFacacc__apply_arg_115
	.quad	camlFacacc__apply_arg_114
	.quad	camlFacacc__apply_arg_112
	.quad	camlFacacc__apply_arg_111
	.quad	camlFacacc
	.quad	0
	.text
	.align	16
	.globl	camlFacacc.string_of_int_21
camlFacacc.string_of_int_21:
	.cfi_startproc
.L100:
	movq	camlFacacc__const_immstring_25@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L101:
	ret
	.cfi_endproc
	.type camlFacacc.string_of_int_21,@function
	.size camlFacacc.string_of_int_21,. - camlFacacc.string_of_int_21
	.text
	.align	16
	.globl	camlFacacc.output_string_31
camlFacacc.output_string_31:
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
	.type camlFacacc.output_string_31,@function
	.size camlFacacc.output_string_31,. - camlFacacc.output_string_31
	.text
	.align	16
	.globl	camlFacacc.print_endline_43
camlFacacc.print_endline_43:
	.cfi_startproc
	leaq	-320(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L105
.L106:
.L104:
	movq	%rax, %rbx
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc.output_string_31@PLT
.L107:
	movl	$21, %esi
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L108:
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rax
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
	.type camlFacacc.print_endline_43,@function
	.size camlFacacc.print_endline_43,. - camlFacacc.print_endline_43
	.text
	.align	16
	.globl	camlFacacc.fac_58
camlFacacc.fac_58:
	.cfi_startproc
.L111:
	cmpq	(%r14), %r15
	jbe	.L112
.L113:
	cmpq	$5, %rbx
	jge	.L110
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L115
.L117:
	leaq	8(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	sarq	$1, %rdi
	decq	%rax
	imulq	%rdi, %rax
	incq	%rax
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	ret
	.align	4
.L110:
	movq	%rbx, %rdi
	addq	$-2, %rdi
	sarq	$1, %rbx
	decq	%rax
	imulq	%rbx, %rax
	incq	%rax
	movq	%rdi, %rbx
	jmp	.L111
.L115:
	call	caml_call_gc@PLT
.L116:
	jmp	.L117
.L112:
	call	caml_call_gc@PLT
.L114:
	jmp	.L113
	.cfi_endproc
	.type camlFacacc.fac_58,@function
	.size camlFacacc.fac_58,. - camlFacacc.fac_58
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
	.globl	camlFacacc__const_immstring_25
camlFacacc__const_immstring_25:
	.ascii	"%d"
	.space	5
	.byte	5
	.text
	.align	16
	.globl	camlFacacc.entry
camlFacacc.entry:
	.cfi_startproc
	leaq	-320(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L119
.L120:
.L118:
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L121:
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$11, %ebx
	movl	$3, %eax
	call	camlFacacc.fac_58@PLT
.L122:
	movq	camlFacacc__$2amatch$2a_116@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFacacc__$2amatch$2a_116@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	camlFacacc__apply_arg_115@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFacacc__apply_arg_115@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc.string_of_int_21@PLT
.L123:
	movq	camlFacacc__apply_arg_114@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFacacc__apply_arg_114@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc.print_endline_43@PLT
.L124:
	movq	camlFacacc__$2amatch$2a_116@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	camlFacacc__apply_arg_112@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFacacc__apply_arg_112@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc.string_of_int_21@PLT
.L125:
	movq	camlFacacc__apply_arg_111@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlFacacc__apply_arg_111@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc.print_endline_43@PLT
.L126:
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	camlFacacc@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$1, %eax
	ret
.L119:
	push	$33
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L120
	.cfi_endproc
	.type camlFacacc.entry,@function
	.size camlFacacc.entry,. - camlFacacc.entry
	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlFacacc.code_end
camlFacacc.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlFacacc.data_end
camlFacacc.data_end:
	.quad	0
	.align	8
	.globl	camlFacacc.frametable
camlFacacc.frametable:
	.quad	13
	.quad	.L126
	.word	9
	.word	0
	.align	4
	.long	(.L127 - .) + 0
	.align	8
	.quad	.L125
	.word	9
	.word	0
	.align	4
	.long	(.L128 - .) + 0
	.align	8
	.quad	.L124
	.word	9
	.word	0
	.align	4
	.long	(.L129 - .) + 0
	.align	8
	.quad	.L123
	.word	9
	.word	0
	.align	4
	.long	(.L130 - .) + 0
	.align	8
	.quad	.L122
	.word	9
	.word	0
	.align	4
	.long	(.L131 - .) + 0
	.align	8
	.quad	.L121
	.word	9
	.word	0
	.align	4
	.long	(.L132 - .) + 0
	.align	8
	.quad	.L116
	.word	10
	.word	1
	.word	1
	.byte	1
	.byte	1
	.align	8
	.quad	.L114
	.word	10
	.word	2
	.word	1
	.word	3
	.byte	0
	.align	8
	.quad	.L109
	.word	9
	.word	0
	.align	4
	.long	(.L133 - .) + 0
	.align	8
	.quad	.L108
	.word	9
	.word	0
	.align	4
	.long	(.L134 - .) + 0
	.align	8
	.quad	.L107
	.word	9
	.word	0
	.align	4
	.long	(.L135 - .) + 0
	.align	8
	.quad	.L103
	.word	9
	.word	0
	.align	4
	.long	(.L136 - .) + 0
	.align	8
	.quad	.L101
	.word	9
	.word	0
	.align	4
	.long	(.L137 - .) + 0
	.align	8
	.align	4
.L133:
	.long	(.L139 - .) + 0
	.long	9489912
	.align	4
.L131:
	.long	(.L140 - .) + 0
	.long	14174424
	.align	4
.L137:
	.long	(.L141 - .) + 0
	.long	4217144
	.align	4
.L132:
	.long	(.L142 - .) + 0
	.long	2110736
	.align	4
.L134:
	.long	(.L139 - .) + 0
	.long	9464200
	.align	4
.L129:
	.long	(.L140 - .) + 0
	.long	14682392
	.align	4
.L136:
	.long	(.L143 - .) + 0
	.long	7866744
	.align	4
.L135:
	.long	(.L139 - .) + 0
	.long	9439424
	.align	4
.L127:
	.long	(.L140 - .) + 0
	.long	15206696
	.align	4
.L130:
	.long	(.L140 - .) + 0
	.long	14696728
	.align	4
.L128:
	.long	(.L140 - .) + 0
	.long	15221032
.L138:
	.ascii	"facacc.ml\0"
	.align	4
.L143:
	.long	(.L138 - .) + 0
	.ascii	"Facacc.output_string\0"
	.align	4
.L142:
	.long	(.L138 - .) + 0
	.ascii	"Facacc.stdout\0"
	.align	4
.L141:
	.long	(.L138 - .) + 0
	.ascii	"Facacc.string_of_int\0"
	.align	4
.L139:
	.long	(.L138 - .) + 0
	.ascii	"Facacc.print_endline\0"
	.align	4
.L140:
	.long	(.L138 - .) + 0
	.ascii	"Facacc\0"
	.align	8
	.size camlFacacc.frametable,. - camlFacacc.frametable
	.section .note.GNU-stack,"",%progbits
