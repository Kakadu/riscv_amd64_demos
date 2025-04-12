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
	.globl	camlMAIN__data_begin
camlMAIN__data_begin:
	.text
	.globl	camlMAIN__code_begin
camlMAIN__code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063

	.globl	camlMAIN__string_of_int_92
camlMAIN__string_of_int_92:
	.globl	camlMAIN__string_of_int_21_closure
camlMAIN__string_of_int_21_closure:
	.quad	camlMAIN__string_of_int_21
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlMAIN__print_endline_185
camlMAIN__print_endline_185:
	.globl	camlMAIN__print_endline_43_closure
camlMAIN__print_endline_43_closure:
	.quad	camlMAIN__print_endline_43
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlMAIN__output_string_93
camlMAIN__output_string_93:
	.globl	camlMAIN__output_string_31_closure
camlMAIN__output_string_31_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlMAIN__output_string_31
	.data
	.align	8
	.quad	7159
	.globl	camlMAIN__foo_94
camlMAIN__foo_94:
	.globl	camlMAIN__foo_58_closure
camlMAIN__foo_58_closure:
	.quad	camlMAIN__foo_58
	.quad	0x10000000000000d
	.quad	3321
	.globl	camlMAIN__foo_68_closure
camlMAIN__foo_68_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlMAIN__foo_68
	.data
	.align	8
	.quad	5888
	.globl	camlMAIN
camlMAIN:
	.quad	1
	.quad	camlMAIN__string_of_int_21_closure
	.quad	camlMAIN__output_string_31_closure
	.quad	camlMAIN__print_endline_43_closure
	.quad	camlMAIN__foo_58_closure
	.data
	.align	8
	.quad	1792
	.globl	camlMAIN__apply_arg_106
camlMAIN__apply_arg_106:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlMAIN__apply_arg_109
camlMAIN__apply_arg_109:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlMAIN__Pccall_114
camlMAIN__Pccall_114:
	.quad	1
	.data
	.align	8
	.globl	camlMAIN__gc_roots
camlMAIN__gc_roots:
	.quad	camlMAIN__Pccall_114
	.quad	camlMAIN__apply_arg_109
	.quad	camlMAIN__apply_arg_106
	.quad	camlMAIN
	.quad	0
	.text
	.align	16
	.globl	camlMAIN__foo_58
camlMAIN__foo_58:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L100:
	cmpq	(%r14), %r15
	jbe	.L101
.L102:
	movq	8(%rax), %rbx
	movq	(%rax), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	camlMAIN__foo_68@PLT
	.cfi_adjust_cfa_offset 8
.L101:
	call	caml_call_gc@PLT
.L103:
	jmp	.L102
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlMAIN__foo_58,@function
	.size camlMAIN__foo_58,. - camlMAIN__foo_58
	.text
	.align	16
	.globl	camlMAIN__string_of_int_21
camlMAIN__string_of_int_21:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L104:
	movq	camlMAIN__const_immstring_25@GOTPCREL(%rip), %rdi
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
	.type camlMAIN__string_of_int_21,@function
	.size camlMAIN__string_of_int_21,. - camlMAIN__string_of_int_21
	.text
	.align	16
	.globl	camlMAIN__output_string_31
camlMAIN__output_string_31:
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
	.type camlMAIN__output_string_31,@function
	.size camlMAIN__output_string_31,. - camlMAIN__output_string_31

	.text
	.align	16
	.globl	camlMAIN__print_endline_43
camlMAIN__print_endline_43:
	subq	$8, %rsp
	movq	%rax, %rbx
	movq	camlMAIN__Pccall_114@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlMAIN__output_string_31@PLT
	movl	$21, %esi
	movq	camlMAIN__Pccall_114@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	movq	camlMAIN__Pccall_114@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	addq	$8, %rsp
	ret
	.type camlMAIN__print_endline_43,@function
	.size camlMAIN__print_endline_43,. - camlMAIN__print_endline_43

	.text
	.align	16
	.globl	camlMAIN__foo_68
camlMAIN__foo_68:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L112:
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L113
.L115:
	leaq	8(%r15), %rdi
	movq	$2048, -8(%rdi)
	leaq	-1(%rax,%rbx), %rsi
	movq	%rsi, (%rdi)
	sarq	$1, %rbx
	decq	%rax
	imulq	%rbx, %rax
	incq	%rax
	movq	%rax, 8(%rdi)
	movq	%rdi, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L113:
	call	caml_call_gc@PLT
.L114:
	jmp	.L115
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlMAIN__foo_68,@function
	.size camlMAIN__foo_68,. - camlMAIN__foo_68
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
	.globl	camlMAIN__const_immstring_25
camlMAIN__const_immstring_25:
	.ascii	"%d"
	.space	5
	.byte	5

	.text
	.align	16
	.globl	camlMAIN__entry
camlMAIN__entry:
	subq	$8, %rsp
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	movq	camlMAIN__Pccall_114@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movl	$221, %eax
	call	camlMAIN__string_of_int_21@PLT
.L118:
	movq	camlMAIN__apply_arg_109@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlMAIN__apply_arg_109@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlMAIN__print_endline_43@PLT
.L119:
	movl	$2001, %eax
	call	camlMAIN__string_of_int_21@PLT
.L120:
	movq	camlMAIN__apply_arg_106@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlMAIN__apply_arg_106@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlMAIN__print_endline_43@PLT
.L121:
	movq	camlMAIN@GOTPCREL(%rip), %rax
	movq	camlMAIN__Pccall_114@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movl	$1, %eax
	addq	$8, %rsp
	ret
	.type camlMAIN__entry,@function
	.size camlMAIN__entry,. - camlMAIN__entry

	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlMAIN__code_end
camlMAIN__code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlMAIN__data_end
camlMAIN__data_end:
	.quad	0
	.align	8
	.globl	camlMAIN__frametable
camlMAIN__frametable:
# 	.quad	12
# 	.quad	.L121
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L122 - .) + 0
# 	.align	8
# 	.quad	.L120
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L123 - .) + 0
# 	.align	8
# 	.quad	.L119
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L124 - .) + 0
# 	.align	8
# 	.quad	.L118
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L125 - .) + 0
# 	.align	8
# 	.quad	.L117
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L126 - .) + 0
# 	.align	8
# 	.quad	.L114
# 	.word	18
# 	.word	2
# 	.word	1
# 	.word	3
# 	.byte	1
# 	.byte	1
# 	.align	8
# 	.quad	.L111
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L127 - .) + 0
# 	.align	8
# 	.quad	.L110
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L128 - .) + 0
# 	.align	8
# 	.quad	.L109
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L129 - .) + 0
# 	.align	8
# 	.quad	.L107
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L130 - .) + 0
# 	.align	8
# 	.quad	.L105
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L131 - .) + 0
# 	.align	8
# 	.quad	.L103
# 	.word	18
# 	.word	1
# 	.word	1
# 	.byte	0
# 	.align	8
# 	.align	4
# .L131:
# 	.long	(.L133 - .) + -1677721600
# 	.long	33120
# 	.align	4
# .L122:
# 	.long	(.L134 - .) + -2080374784
# 	.long	118816
# 	.align	4
# .L125:
# 	.long	(.L134 - .) + -2080374784
# 	.long	114944
# 	.align	4
# .L130:
# 	.long	(.L135 - .) + -1140850688
# 	.long	61472
# 	.align	4
# .L128:
# 	.long	(.L136 - .) + -1006632960
# 	.long	74144
# 	.align	4
# .L123:
# 	.long	(.L134 - .) + -2080374784
# 	.long	119040
# 	.align	4
# .L129:
# 	.long	(.L136 - .) + 1610612736
# 	.long	73760
# 	.align	4
# .L127:
# 	.long	(.L136 - .) + -67108864
# 	.long	74544
# 	.align	4
# .L126:
# 	.long	(.L137 - .) + -2013265920
# 	.long	16592
# 	.align	4
# .L124:
# 	.long	(.L134 - .) + -2080374784
# 	.long	114720
# .L132:
# 	.ascii	"MAIN.ml\0"
# 	.align	4
# .L136:
# 	.long	(.L132 - .) + 0
# 	.ascii	"MAIN.print_endline\0"
# 	.align	4
# .L134:
# 	.long	(.L132 - .) + 0
# 	.ascii	"MAIN\0"
# 	.align	4
# .L137:
# 	.long	(.L132 - .) + 0
# 	.ascii	"MAIN.stdout\0"
# 	.align	4
# .L135:
# 	.long	(.L132 - .) + 0
# 	.ascii	"MAIN.output_string\0"
# 	.align	4
# .L133:
# 	.long	(.L132 - .) + 0
# 	.ascii	"MAIN.string_of_int\0"
# 	.align	8
	.size camlMAIN__frametable,. - camlMAIN__frametable
	.section .note.GNU-stack,"",%progbits
