	.file ""
	.section .rodata.cst16,"aM",@progbits,16
	.align	16
# caml_negf_mask:
# 	.quad	0x8000000000000000
# 	.quad	0
# 	.align	16
# caml_absf_mask:
# 	.quad	0x7fffffffffffffff
# 	.quad	-1
	.data
	.globl	camlFacacc__data_begin
camlFacacc__data_begin:
	.text
	.globl	camlFacacc__code_begin
camlFacacc__code_begin:
	.data
	.align	8
	.quad	3063
	.globl	camlFacacc__string_of_int_97
camlFacacc__string_of_int_97:
	.globl	camlFacacc__string_of_int_21_closure
camlFacacc__string_of_int_21_closure:
	.quad	camlFacacc__string_of_int_21
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFacacc__set_of_closures_99
camlFacacc__set_of_closures_99:
	.globl	camlFacacc__fac_58_closure
camlFacacc__fac_58_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFacacc__fac_58
	.data
	.align	8
	.quad	3063

	.globl	camlFacacc__print_endline_174
camlFacacc__print_endline_174:
	.globl	camlFacacc__print_endline_43_closure
camlFacacc__print_endline_43_closure:
	.quad	camlFacacc__print_endline_43
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087

	.globl	camlFacacc__output_string_98
camlFacacc__output_string_98:
	.globl	camlFacacc__output_string_31_closure
camlFacacc__output_string_31_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFacacc__output_string_31
	.data
	.align	8
	.quad	5888

	.globl	camlFac_acc
camlFac_acc:
	.quad	1
	.quad	camlFacacc__string_of_int_21_closure
	.quad	camlFacacc__output_string_31_closure
	.quad	camlFacacc__print_endline_43_closure
	.quad	camlFacacc__fac_58_closure
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
	.globl	camlFacacc__gc_roots
camlFacacc__gc_roots:
	.quad	camlFacacc__Pccall_119
	.quad	camlFacacc__$2amatch$2a_116
	.quad	camlFacacc__apply_arg_115
	.quad	camlFacacc__apply_arg_114
	.quad	camlFacacc__apply_arg_112
	.quad	camlFacacc__apply_arg_111
	.quad	camlFac_acc
	.quad	0

.text
	.align	16
	.globl	camlFacacc__string_of_int_21
camlFacacc__string_of_int_21:
	subq	$8, %rsp
	movq	camlFacacc__const_immstring_25@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	addq	$8, %rsp
	ret
	.type camlFacacc__string_of_int_21,@function
	.size camlFacacc__string_of_int_21,. - camlFacacc__string_of_int_21

	.text
	.align	16
	.globl	camlFacacc__output_string_31
camlFacacc__output_string_31:
	subq	$8, %rsp
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

	movq	8(%r14), %r15
	addq	$8, %rsp
	ret
	.type camlFacacc__output_string_31,@function
	.size camlFacacc__output_string_31,. - camlFacacc__output_string_31

	.text
	.align	16
	.globl	camlFacacc__print_endline_43
camlFacacc__print_endline_43:
	subq	$8, %rsp
	movq	%rax, %rbx
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc__output_string_31@PLT
	movl	$21, %esi
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	addq	$8, %rsp
	ret
	.type camlFacacc__print_endline_43,@function
	.size camlFacacc__print_endline_43,. - camlFacacc__print_endline_43

.text
	.align	16
	.globl	camlFacacc__fac_58
camlFacacc__fac_58:
	subq	$8, %rsp
.L109:
	cmpq	(%r14), %r15
	jbe	.L110
.L111:
	cmpq	$5, %rbx
	jge	.L108
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L113
.L115:
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
	addq	$8, %rsp
	ret
	.align	4
.L108:
	movq	%rbx, %rdi
	addq	$-2, %rdi
	sarq	$1, %rbx
	decq	%rax
	imulq	%rbx, %rax
	incq	%rax
	movq	%rdi, %rbx
	jmp	.L109
.L113:
	call	caml_call_gc@PLT
.L114:
	jmp	.L115
.L110:
	call	caml_call_gc@PLT
.L112:
	jmp	.L111
	.type camlFacacc__fac_58,@function
	.size camlFacacc__fac_58,. - camlFacacc__fac_58

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
	.globl	camlFacacc__entry
camlFacacc__entry:
	subq	$8, %rsp
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
	movq	8(%r14), %r15
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movl	$3, %ebx
	movl	$3, %eax
	call	camlFacacc__fac_58@PLT

	movq	camlFacacc__$2amatch$2a_116@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFacacc__apply_arg_115@GOTPCREL(%rip), %rax
	movq	camlFacacc__$2amatch$2a_116@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movq	camlFacacc__apply_arg_115@GOTPCREL(%rip), %rax
	movq	(%rax), %rax

	call	camlFacacc__string_of_int_21@PLT
	movq	camlFacacc__apply_arg_114@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFacacc__apply_arg_114@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc__print_endline_43@PLT

	movq	camlFacacc__apply_arg_112@GOTPCREL(%rip), %rax
	movq	camlFacacc__$2amatch$2a_116@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	8(%rbx), %rbx
	movq	%rbx, (%rax)
	movq	camlFacacc__apply_arg_112@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc__string_of_int_21@PLT
	movq	camlFacacc__apply_arg_111@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFacacc__apply_arg_111@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFacacc__print_endline_43@PLT

	movq	camlFac_acc@GOTPCREL(%rip), %rax
	movq	camlFacacc__Pccall_119@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movl	$1, %eax
	addq	$8, %rsp
	ret
	.type camlFacacc__entry,@function
	.size camlFacacc__entry,. - camlFacacc__entry

.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
.text
	.globl	camlFacacc__code_end
camlFacacc__code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlFacacc__data_end
camlFacacc__data_end:
	.quad	0
	.align	8
	.globl	camlFacacc__frametable
camlFacacc__frametable:
	.size camlFacacc__frametable,. - camlFacacc__frametable
	.section .note.GNU-stack,"",%progbits
