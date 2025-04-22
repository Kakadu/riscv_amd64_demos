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
	.globl	camlFack__data_begin
camlFack__data_begin:
	.text
	.globl	camlFack__code_begin
camlFack__code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063
	.globl	camlFack__string_of_int_111
camlFack__string_of_int_111:
	.globl	camlFack__string_of_int_27_closure
camlFack__string_of_int_27_closure:
	.quad	camlFack__string_of_int_27
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFack__set_of_closures_115
camlFack__set_of_closures_115:
	.globl	camlFack__fac_81_closure
camlFack__fac_81_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFack__fac_81
	.data
	.align	8
	.quad	3063
	.globl	camlFack__print_endline_172
camlFack__print_endline_172:
	.globl	camlFack__print_endline_49_closure
camlFack__print_endline_49_closure:
	.quad	camlFack__print_endline_49
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFack__output_string_112
camlFack__output_string_112:
	.globl	camlFack__output_string_37_closure
camlFack__output_string_37_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFack__output_string_37
	.data
	.align	8
	.quad	4087
	.globl	camlFack__k0_114
camlFack__k0_114:
	.globl	camlFack__k0_70_closure
camlFack__k0_70_closure:
	.quad	caml_curry3
	.quad	0x300000000000007
	.quad	camlFack__k0_70
	.data
	.align	8
	.quad	3063
	.globl	camlFack__id_113
camlFack__id_113:
	.globl	camlFack__id_64_closure
camlFack__id_64_closure:
	.quad	camlFack__id_64
	.quad	0x100000000000005
	.data
	.align	8
	.quad	7936
	.globl	camlFack
camlFack:
	.quad	1
	.quad	camlFack__string_of_int_27_closure
	.quad	camlFack__output_string_37_closure
	.quad	camlFack__print_endline_49_closure
	.quad	camlFack__id_64_closure
	.quad	camlFack__k0_70_closure
	.quad	camlFack__fac_81_closure
	.data
	.align	8
	.quad	1792
	.globl	camlFack__apply_arg_123
camlFack__apply_arg_123:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFack__apply_arg_124
camlFack__apply_arg_124:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFack__Pccall_127
camlFack__Pccall_127:
	.quad	1
	.data
	.align	8
	.globl	camlFack__gc_roots
camlFack__gc_roots:
	.quad	camlFack__Pccall_127
	.quad	camlFack__apply_arg_124
	.quad	camlFack__apply_arg_123
	.quad	camlFack
	.quad	0
	.text
	.align	16
	.globl	camlFack__k0_143
camlFack__k0_143:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L100:
	movq	%rax, %rdi
	cmpq	(%r14), %r15
	jbe	.L101
.L102:
	movq	24(%rbx), %rsi
	movq	16(%rbx), %rax
	movq	%rsi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	camlFack__k0_70@PLT
	.cfi_adjust_cfa_offset 8
.L101:
	call	caml_call_gc@PLT
.L103:
	jmp	.L102
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFack__k0_143,@function
	.size camlFack__k0_143,. - camlFack__k0_143
	.text
	.align	16
	.globl	camlFack__string_of_int_27
camlFack__string_of_int_27:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L104:
	movq	camlFack__const_immstring_31@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L105:
	movq	8(%r14), %r15
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFack__string_of_int_27,@function
	.size camlFack__string_of_int_27,. - camlFack__string_of_int_27
	.text
	.align	16
	.globl	camlFack__output_string_37
camlFack__output_string_37:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L106:
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
.L107:
	movq	8(%r14), %r15
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFack__output_string_37,@function
	.size camlFack__output_string_37,. - camlFack__output_string_37
	.text
	.align	16
	.globl	camlFack__print_endline_49
camlFack__print_endline_49:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L108:
	movq	%rax, %rbx
	movq	camlFack__Pccall_127@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFack__output_string_37@PLT
.L109:
	movl	$21, %esi
	movq	camlFack__Pccall_127@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L110:
	movq	8(%r14), %r15
	movq	camlFack__Pccall_127@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L111:
	movq	8(%r14), %r15
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFack__print_endline_49,@function
	.size camlFack__print_endline_49,. - camlFack__print_endline_49
	.text
	.align	16
	.globl	camlFack__id_64
camlFack__id_64:
	.cfi_startproc
.L112:
	ret
	.cfi_endproc
	.type camlFack__id_64,@function
	.size camlFack__id_64,. - camlFack__id_64
	.text
	.align	16
	.globl	camlFack__k0_70
camlFack__k0_70:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L113:
	movq	%rax, %rsi
	movq	%rdi, %rax
	cmpq	(%r14), %r15
	jbe	.L114
.L115:
	sarq	$1, %rbx
	decq	%rax
	imulq	%rbx, %rax
	incq	%rax
	movq	(%rsi), %rdi
	movq	%rsi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
.L114:
	call	caml_call_gc@PLT
.L116:
	jmp	.L115
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFack__k0_70,@function
	.size camlFack__k0_70,. - camlFack__k0_70
	.text
	.align	16
	.globl	camlFack__fac_81
camlFack__fac_81:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L118:
	cmpq	(%r14), %r15
	jbe	.L119
.L120:
	cmpq	$5, %rax
	jge	.L117
	movl	$3, %eax
	movq	(%rbx), %rdi
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
	.align	4
.L117:
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L122
.L124:
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	camlFack__k0_143@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$72057594037927941, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rbx, 16(%rdi)
	movq	%rax, 24(%rdi)
	addq	$-2, %rax
	movq	%rdi, %rbx
	jmp	.L118
.L122:
	call	caml_call_gc@PLT
.L123:
	jmp	.L124
.L119:
	call	caml_call_gc@PLT
.L121:
	jmp	.L120
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFack__fac_81,@function
	.size camlFack__fac_81,. - camlFack__fac_81
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
	.data
	.align	8
	.data
	.align	8
	.quad	2044
	.globl	camlFack__const_immstring_31
camlFack__const_immstring_31:
	.ascii	"%d"
	.space	5
	.byte	5
	.text
	.align	16
	.globl	camlFack__entry
camlFack__entry:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L125:
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L126:
	movq	8(%r14), %r15
	movq	camlFack__Pccall_127@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFack__id_64_closure@GOTPCREL(%rip), %rbx
	movl	$13, %eax
	call	camlFack__fac_81@PLT
.L127:
	movq	camlFack__apply_arg_124@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFack__apply_arg_124@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFack__string_of_int_27@PLT
.L128:
	movq	camlFack__apply_arg_123@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFack__apply_arg_123@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFack__print_endline_49@PLT
.L129:
	movq	camlFack@GOTPCREL(%rip), %rax
	movq	camlFack__Pccall_127@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFack__entry,@function
	.size camlFack__entry,. - camlFack__entry
	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlFack__code_end
camlFack__code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlFack__data_end
camlFack__data_end:
	.quad	0
	.align	8
	.globl	camlFack__frametable
camlFack__frametable:
	.quad	13
	.quad	.L129
	.word	17
	.word	0
	.align	4
	.long	(.L130 - .) + 0
	.align	8
	.quad	.L128
	.word	17
	.word	0
	.align	4
	.long	(.L131 - .) + 0
	.align	8
	.quad	.L127
	.word	17
	.word	0
	.align	4
	.long	(.L132 - .) + 0
	.align	8
	.quad	.L126
	.word	17
	.word	0
	.align	4
	.long	(.L133 - .) + 0
	.align	8
	.quad	.L123
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L121
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	0
	.align	8
	.quad	.L116
	.word	18
	.word	3
	.word	1
	.word	3
	.word	7
	.byte	0
	.align	8
	.quad	.L111
	.word	17
	.word	0
	.align	4
	.long	(.L134 - .) + 0
	.align	8
	.quad	.L110
	.word	17
	.word	0
	.align	4
	.long	(.L135 - .) + 0
	.align	8
	.quad	.L109
	.word	17
	.word	0
	.align	4
	.long	(.L136 - .) + 0
	.align	8
	.quad	.L107
	.word	17
	.word	0
	.align	4
	.long	(.L137 - .) + 0
	.align	8
	.quad	.L105
	.word	17
	.word	0
	.align	4
	.long	(.L138 - .) + 0
	.align	8
	.quad	.L103
	.word	18
	.word	2
	.word	3
	.word	5
	.byte	0
	.align	8
	.align	4
.L131:
	.long	(.L140 - .) + -1006632960
	.long	156016
	.align	4
.L130:
	.long	(.L140 - .) + -1006632960
	.long	155792
	.align	4
.L136:
	.long	(.L141 - .) + 1610612736
	.long	94240
	.align	4
.L138:
	.long	(.L142 - .) + -1677721600
	.long	45408
	.align	4
.L132:
	.long	(.L140 - .) + -1073741824
	.long	156256
	.align	4
.L133:
	.long	(.L143 - .) + -2013265920
	.long	24784
	.align	4
.L135:
	.long	(.L141 - .) + 1677721600
	.long	98336
	.align	4
.L137:
	.long	(.L144 - .) + 402653184
	.long	82321
	.align	4
.L134:
	.long	(.L141 - .) + 939524096
	.long	102432
.L139:
	.ascii	"Fack.ml\0"
	.align	4
.L140:
	.long	(.L139 - .) + 0
	.ascii	"Fack\0"
	.align	4
.L142:
	.long	(.L139 - .) + 0
	.ascii	"Fack.string_of_int\0"
	.align	4
.L141:
	.long	(.L139 - .) + 0
	.ascii	"Fack.print_endline\0"
	.align	4
.L144:
	.long	(.L139 - .) + 0
	.ascii	"Fack.output_string\0"
	.align	4
.L143:
	.long	(.L139 - .) + 0
	.ascii	"Fack.stdout\0"
	.align	8
	.size camlFack__frametable,. - camlFack__frametable
	.section .note.GNU-stack,"",%progbits
