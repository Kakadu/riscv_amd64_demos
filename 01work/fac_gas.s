# program that prints 42
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
	.globl	camlMini__data_begin
camlMini__data_begin:
.text
	.globl	camlMini__code_begin
camlMini__code_begin:
	.data
	.align	8

.data
	.align	8
	.quad	3063
	.globl	camlMini__string_of_int_62
camlMini__string_of_int_62:
	.globl	camlMini__string_of_int_18_closure
camlMini__string_of_int_18_closure:
	.quad	camlMini__string_of_int_18
	.quad	0x100000000000005

.data
	.align	8
	.quad	3063
	.globl	camlMini__print_endline_105
camlMini__print_endline_105:
	.globl	camlMini__print_endline_40_closure
camlMini__print_endline_40_closure:
	.quad	camlMini__print_endline_40
	.quad	0x100000000000005

.data
	.align	8
	.quad	4087
	.globl	camlMini__output_string_63
camlMini__output_string_63:
	.globl	camlMini__output_string_28_closure
camlMini__output_string_28_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlMini__output_string_28

.data
	.align	8
	.quad	4864
	.globl	camlMini
camlMini:
	.quad	1
	.quad	camlMini__string_of_int_18_closure
	.quad	camlMini__output_string_28_closure
	.quad	camlMini__print_endline_40_closure
	.data
	.align	8
	.quad	1792
	.globl	camlMini__apply_arg_70
camlMini__apply_arg_70:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlMini__Pccall_73
camlMini__Pccall_73:
	.quad	1
	.data
	.align	8
	.globl	camlMini__gc_roots
camlMini__gc_roots:
	.quad	camlMini__Pccall_73
	.quad	camlMini__apply_arg_70
	.quad	camlMini
	.quad	0

.text
	.align	16
	.globl	camlMini__string_of_int_18
camlMini__string_of_int_18:
	#.cfi_startproc
	subq	$8, %rsp
	#.cfi_adjust_cfa_offset 8
.L100:
	movq	camlMini__const_immstring_22@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L101:
	movq	8(%r14), %r15
	addq	$8, %rsp
	#.cfi_adjust_cfa_offset -8
	ret
	#.cfi_adjust_cfa_offset 8
	#.cfi_adjust_cfa_offset -8
	#.cfi_endproc
	.type camlMini__string_of_int_18,@function
	.size camlMini__string_of_int_18,. - camlMini__string_of_int_18

.text
	.align	16
	.globl	camlMini__output_string_28
camlMini__output_string_28:
	#.cfi_startproc
	subq	$8, %rsp
	#.cfi_adjust_cfa_offset 8
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
	#.cfi_adjust_cfa_offset -8
	ret
	#.cfi_adjust_cfa_offset 8
	#.cfi_adjust_cfa_offset -8
	#.cfi_endproc
	.type camlMini__output_string_28,@function
	.size camlMini__output_string_28,. - camlMini__output_string_28

.text
	.align	16
	.globl	camlMini__print_endline_40
camlMini__print_endline_40:
	#.cfi_startproc
	subq	$8, %rsp
	#.cfi_adjust_cfa_offset 8
.L104:
	movq	%rax, %rbx
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlMini__output_string_28@PLT
.L105:
	movl	$21, %esi
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L106:
	movq	8(%r14), %r15
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L107:
	movq	8(%r14), %r15
	addq	$8, %rsp
	#.cfi_adjust_cfa_offset -8
	ret
	#.cfi_adjust_cfa_offset 8
	#.cfi_adjust_cfa_offset -8
	#.cfi_endproc
	.type camlMini__print_endline_40,@function
	.size camlMini__print_endline_40,. - camlMini__print_endline_40
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8

.data
	.align	8
	.quad	2044
	.globl	camlMini__const_immstring_22
camlMini__const_immstring_22:
	.ascii	"%d"
	.space	5
	.byte	5

.text
	.align	16
	.globl	camlMini__entry
camlMini__entry:
	#.cfi_startproc
	subq	$8, %rsp
	#.cfi_adjust_cfa_offset 8
.L108:
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L109:
	movq	8(%r14), %r15
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movl	$85, %eax
	call	camlMini__string_of_int_18@PLT
.L110:
	movq	camlMini__apply_arg_70@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlMini__apply_arg_70@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlMini__print_endline_40@PLT
.L111:
	movq	camlMini@GOTPCREL(%rip), %rax
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movl	$1, %eax
	addq	$8, %rsp
	#.cfi_adjust_cfa_offset -8
	ret
	#.cfi_adjust_cfa_offset 8
	#.cfi_adjust_cfa_offset -8
	#.cfi_endproc
	.type camlMini__entry,@function
	.size camlMini__entry,. - camlMini__entry
	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out

.text
	.globl	camlMini__code_end
camlMini__code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlMini__data_end
camlMini__data_end:
	.quad	0
	.align	8

# .globl	camlMini__frametable
# camlMini__frametable:
# 	.quad	8
# 	.quad	.L111
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L112 - .) + 0
# 	.align	8
# 	.quad	.L110
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L113 - .) + 0
# 	.align	8
# 	.quad	.L109
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L114 - .) + 0
# 	.align	8
# 	.quad	.L107
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L115 - .) + 0
# 	.align	8
# 	.quad	.L106
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L116 - .) + 0
# 	.align	8
# 	.quad	.L105
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L117 - .) + 0
# 	.align	8
# 	.quad	.L103
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L118 - .) + 0
# 	.align	8
# 	.quad	.L101
# 	.word	17
# 	.word	0
# 	.align	4
# 	.long	(.L119 - .) + 0
# 	.align	8
# 	.align	4
# .L116:
# 	.long	(.L121 - .) + -1006632960
# 	.long	74144
# 	.align	4
# .L118:
# 	.long	(.L122 - .) + -1140850688
# 	.long	61472
# 	.align	4
# .L117:
# 	.long	(.L121 - .) + 1610612736
# 	.long	73760
# 	.align	4
# .L114:
# 	.long	(.L123 - .) + -2013265920
# 	.long	16592
# 	.align	4
# .L119:
# 	.long	(.L124 - .) + -1677721600
# 	.long	33120
# 	.align	4
# .L112:
# 	.long	(.L125 - .) + -1543503872
# 	.long	90256
# 	.align	4
# .L115:
# 	.long	(.L121 - .) + -67108864
# 	.long	74544
# 	.align	4
# .L113:
# 	.long	(.L125 - .) + -1543503872
# 	.long	90480
# .L120:
# 	.ascii	"mini.ml\0"
# 	.align	4
# .L121:
# 	.long	(.L120 - .) + 0
# 	.ascii	"Mini.print_endline\0"
# 	.align	4
# .L122:
# 	.long	(.L120 - .) + 0
# 	.ascii	"Mini.output_string\0"
# 	.align	4
# .L123:
# 	.long	(.L120 - .) + 0
# 	.ascii	"Mini.stdout\0"
# 	.align	4
# .L125:
# 	.long	(.L120 - .) + 0
# 	.ascii	"Mini\0"
# 	.align	4
# .L124:
# 	.long	(.L120 - .) + 0
# 	.ascii	"Mini.string_of_int\0"
# 	.align	8
# 	.size camlMini__frametable,. - camlMini__frametable

.section .note.GNU-stack,"",%progbits
