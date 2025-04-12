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
	.globl	camlFac__data_begin
camlFac__data_begin:
	.text
	.globl	camlFac__code_begin
camlFac__code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063
	.globl	camlFac__string_of_int_84
camlFac__string_of_int_84:
	.globl	camlFac__string_of_int_21_closure
camlFac__string_of_int_21_closure:
	.quad	camlFac__string_of_int_21
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlFac__set_of_closures_86
camlFac__set_of_closures_86:
	.globl	camlFac__fac_58_closure
camlFac__fac_58_closure:
	.quad	camlFac__fac_58
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlFac__print_endline_133
camlFac__print_endline_133:
	.globl	camlFac__print_endline_43_closure
camlFac__print_endline_43_closure:
	.quad	camlFac__print_endline_43
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFac__output_string_85
camlFac__output_string_85:
	.globl	camlFac__output_string_31_closure
camlFac__output_string_31_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFac__output_string_31
	.data
	.align	8
	.quad	5888
	.globl	camlFac
camlFac:
	.quad	1
	.quad	camlFac__string_of_int_21_closure
	.quad	camlFac__output_string_31_closure
	.quad	camlFac__print_endline_43_closure
	.quad	camlFac__fac_58_closure
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
	.globl	camlFac__gc_roots
camlFac__gc_roots:
	.quad	camlFac__Pccall_98
	.quad	camlFac__apply_arg_95
	.quad	camlFac__apply_arg_94
	.quad	camlFac
	.quad	0
	.text
	.align	16
	.globl	camlFac__string_of_int_21
camlFac__string_of_int_21:
	subq	$8, %rsp
.L100:
	movq	camlFac__const_immstring_25@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L101:
	movq	8(%r14), %r15
	addq	$8, %rsp
	ret

	.type camlFac__string_of_int_21,@function
	.size camlFac__string_of_int_21,. - camlFac__string_of_int_21
	.text
	.align	16
	.globl	camlFac__output_string_31
camlFac__output_string_31:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
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
	movq	8(%r14), %r15
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFac__output_string_31,@function
	.size camlFac__output_string_31,. - camlFac__output_string_31
	.text
	.align	16
	.globl	camlFac__print_endline_43
camlFac__print_endline_43:
	subq	$8, %rsp
	movq	%rax, %rbx
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFac__output_string_31@PLT
	movl	$21, %esi
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	addq	$8, %rsp
	ret
	.type camlFac__print_endline_43,@function
	.size camlFac__print_endline_43,. - camlFac__print_endline_43

	.text
	.align	16
	.globl	camlFac__fac_58
camlFac__fac_58:
	subq	$8, %rsp
.L109:
	cmpq	$5, %rax
	jge	.L108
	movl	$3, %eax
	addq	$8, %rsp
	ret
	.align	4
.L108:
	movq	%rax, (%rsp)
	addq	$-2, %rax
	call	camlFac__fac_58@PLT
.L110:
	movq	%rax, %rbx
	sarq	$1, %rbx
	movq	(%rsp), %rax
	decq	%rax
	imulq	%rbx, %rax
	incq	%rax
	addq	$8, %rsp
	ret
	.type camlFac__fac_58,@function
	.size camlFac__fac_58,. - camlFac__fac_58

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
	.globl	camlFac__entry
camlFac__entry:
	subq	$8, %rsp
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movl	$11, %eax
	call	camlFac__fac_58@PLT
	movq	camlFac__apply_arg_95@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFac__apply_arg_95@GOTPCREL(%rip), %rax
	movq	(%rax), %rax

	call	camlFac__string_of_int_21@PLT
	movq	camlFac__apply_arg_94@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFac__apply_arg_94@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFac__print_endline_43@PLT
	movq	camlFac@GOTPCREL(%rip), %rax
	movq	camlFac__Pccall_98@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movl	$1, %eax
	addq	$8, %rsp
	ret
	.type camlFac__entry,@function
	.size camlFac__entry,. - camlFac__entry

	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlFac__code_end
camlFac__code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlFac__data_end
camlFac__data_end:
	.quad	0
	.align	8
	.globl	camlFac__frametable
camlFac__frametable:
# 	.quad	10
# 	.quad	.L115
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L116 - .) + 0
# 	.align	8
# 	.quad	.L114
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L117 - .) + 0
# 	.align	8
# 	.quad	.L113
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L118 - .) + 0
# 	.align	8
# 	.quad	.L112
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L119 - .) + 0
# 	.align	8
# 	.quad	.L110
# 	.word	17
# 	.word	1
# 	.word	0
# 	.align	4
# 	.long	(.L120 - .) + 0
# 	.align	8
# 	.quad	.L107
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L121 - .) + 0
# 	.align	8
# 	.quad	.L106
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L122 - .) + 0
# 	.align	8
# 	.quad	.L105
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L123 - .) + 0
# 	.align	8
# 	.quad	.L103
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L124 - .) + 0
# 	.align	8
# 	.quad	.L101
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L125 - .) + 0
# 	.align	8
# 	.align	4
# .L123:
# 	.long	(.L127 - .) + 1610612736
# 	.long	73760
# 	.align	4
# .L118:
# 	.long	(.L128 - .) + -1275068416
# 	.long	107104
# 	.align	4
# .L119:
# 	.long	(.L129 - .) + -2013265920
# 	.long	16592
# 	.align	4
# .L124:
# 	.long	(.L130 - .) + -1140850688
# 	.long	61472
# 	.align	4
# .L116:
# 	.long	(.L128 - .) + -1207959552
# 	.long	106640
# 	.align	4
# .L122:
# 	.long	(.L127 - .) + -1006632960
# 	.long	74144
# 	.align	4
# .L121:
# 	.long	(.L127 - .) + -67108864
# 	.long	74544
# 	.align	4
# .L120:
# 	.long	(.L131 - .) + -1073741824
# 	.long	98928
# 	.align	4
# .L117:
# 	.long	(.L128 - .) + -1207959552
# 	.long	106864
# 	.align	4
# .L125:
# 	.long	(.L132 - .) + -1677721600
# 	.long	33120
# .L126:
# 	.ascii	"fac.ml\0"
# 	.align	4
# .L127:
# 	.long	(.L126 - .) + 0
# 	.ascii	"Fac.print_endline\0"
# 	.align	4
# .L128:
# 	.long	(.L126 - .) + 0
# 	.ascii	"Fac\0"
# 	.align	4
# .L129:
# 	.long	(.L126 - .) + 0
# 	.ascii	"Fac.stdout\0"
# 	.align	4
# .L131:
# 	.long	(.L126 - .) + 0
# 	.ascii	"Fac.fac\0"
# 	.align	4
# .L132:
# 	.long	(.L126 - .) + 0
# 	.ascii	"Fac.string_of_int\0"
# 	.align	4
# .L130:
# 	.long	(.L126 - .) + 0
# 	.ascii	"Fac.output_string\0"
	.align	8
	.size camlFac__frametable,. - camlFac__frametable
	.section .note.GNU-stack,"",%progbits
