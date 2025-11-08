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
	.globl	camlMini.data_begin
camlMini.data_begin:
	.text
	.globl	camlMini.code_begin
camlMini.code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063
	.globl	camlMini__string_of_int_62
camlMini__string_of_int_62:
	.globl	camlMini.string_of_int_18_closure
camlMini.string_of_int_18_closure:
	.quad	camlMini.string_of_int_18
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlMini__print_endline_105
camlMini__print_endline_105:
	.globl	camlMini.print_endline_40_closure
camlMini.print_endline_40_closure:
	.quad	camlMini.print_endline_40
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlMini__output_string_63
camlMini__output_string_63:
	.globl	camlMini.output_string_28_closure
camlMini.output_string_28_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlMini.output_string_28
	.data
	.align	8
	.quad	4864
	.globl	camlMini
camlMini:
	.quad	1
	.quad	camlMini.string_of_int_18_closure
	.quad	camlMini.output_string_28_closure
	.quad	camlMini.print_endline_40_closure
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
	.globl	camlMini.gc_roots
camlMini.gc_roots:
	.quad	camlMini__Pccall_73
	.quad	camlMini__apply_arg_70
	.quad	camlMini
	.quad	0
	.text
	.align	16
	.globl	camlMini.string_of_int_18
camlMini.string_of_int_18:
	.cfi_startproc
.L100:
	movq	camlMini__const_immstring_22@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L101:
	ret
	.cfi_endproc
	.type camlMini.string_of_int_18,@function
	.size camlMini.string_of_int_18,. - camlMini.string_of_int_18
	.text
	.align	16
	.globl	camlMini.output_string_28
camlMini.output_string_28:
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
	.type camlMini.output_string_28,@function
	.size camlMini.output_string_28,. - camlMini.output_string_28
	.text
	.align	16
	.globl	camlMini.print_endline_40
camlMini.print_endline_40:
	.cfi_startproc
	leaq	-320(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L105
.L106:
.L104:
	movq	%rax, %rbx
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlMini.output_string_28@PLT
.L107:
	movl	$21, %esi
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L108:
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rax
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
	.type camlMini.print_endline_40,@function
	.size camlMini.print_endline_40,. - camlMini.print_endline_40
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
	.globl	camlMini.entry
camlMini.entry:
	.cfi_startproc
	leaq	-320(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L111
.L112:
.L110:
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L113:
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$85, %eax
	call	camlMini.string_of_int_18@PLT
.L114:
	movq	camlMini__apply_arg_70@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlMini__apply_arg_70@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlMini.print_endline_40@PLT
.L115:
	movq	camlMini__Pccall_73@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movq	camlMini@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movl	$1, %eax
	ret
.L111:
	push	$33
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L112
	.cfi_endproc
	.type camlMini.entry,@function
	.size camlMini.entry,. - camlMini.entry
	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlMini.code_end
camlMini.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlMini.data_end
camlMini.data_end:
	.quad	0
	.align	8
	.globl	camlMini.frametable
camlMini.frametable:
	.quad	8
	.quad	.L115
	.word	9
	.word	0
	.align	4
	.long	(.L116 - .) + 0
	.align	8
	.quad	.L114
	.word	9
	.word	0
	.align	4
	.long	(.L117 - .) + 0
	.align	8
	.quad	.L113
	.word	9
	.word	0
	.align	4
	.long	(.L118 - .) + 0
	.align	8
	.quad	.L109
	.word	9
	.word	0
	.align	4
	.long	(.L119 - .) + 0
	.align	8
	.quad	.L108
	.word	9
	.word	0
	.align	4
	.long	(.L120 - .) + 0
	.align	8
	.quad	.L107
	.word	9
	.word	0
	.align	4
	.long	(.L121 - .) + 0
	.align	8
	.quad	.L103
	.word	9
	.word	0
	.align	4
	.long	(.L122 - .) + 0
	.align	8
	.quad	.L101
	.word	9
	.word	0
	.align	4
	.long	(.L123 - .) + 0
	.align	8
	.align	4
.L120:
	.long	(.L125 - .) + 0
	.long	9464200
	.align	4
.L122:
	.long	(.L126 - .) + 0
	.long	7866744
	.align	4
.L121:
	.long	(.L125 - .) + 0
	.long	9439424
	.align	4
.L118:
	.long	(.L127 - .) + 0
	.long	2110736
	.align	4
.L123:
	.long	(.L128 - .) + 0
	.long	4217144
	.align	4
.L116:
	.long	(.L129 - .) + 0
	.long	11543880
	.align	4
.L119:
	.long	(.L125 - .) + 0
	.long	9489912
	.align	4
.L117:
	.long	(.L129 - .) + 0
	.long	11558216
.L124:
	.ascii	"mini.ml\0"
	.align	4
.L125:
	.long	(.L124 - .) + 0
	.ascii	"Mini.print_endline\0"
	.align	4
.L127:
	.long	(.L124 - .) + 0
	.ascii	"Mini.stdout\0"
	.align	4
.L129:
	.long	(.L124 - .) + 0
	.ascii	"Mini\0"
	.align	4
.L128:
	.long	(.L124 - .) + 0
	.ascii	"Mini.string_of_int\0"
	.align	4
.L126:
	.long	(.L124 - .) + 0
	.ascii	"Mini.output_string\0"
	.align	8
	.type camlMini.frametable,@object
	.size camlMini.frametable,. - camlMini.frametable
	.section .note.GNU-stack,"",%progbits
