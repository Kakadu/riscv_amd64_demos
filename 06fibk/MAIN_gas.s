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
	.globl	camlFibk__data_begin
camlFibk__data_begin:
	.text
	.globl	camlFibk__code_begin
camlFibk__code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063
	.globl	camlFibk__string_of_int_125
camlFibk__string_of_int_125:
	.globl	camlFibk__string_of_int_30_closure
camlFibk__string_of_int_30_closure:
	.quad	camlFibk__string_of_int_30
	.quad	0x100000000000005
	.data
	.align	8
	.quad	8183
	.globl	camlFibk__set_of_closures_129
camlFibk__set_of_closures_129:
	.globl	camlFibk__fib_85_closure
camlFibk__fib_85_closure:
	.quad	caml_curry2
	.quad	0x20000000000000f
	.quad	camlFibk__fib_85
	.quad	4345
	.globl	camlFibk__k1_86_closure
camlFibk__k1_86_closure:
	.quad	caml_curry3
	.quad	0x300000000000007
	.quad	camlFibk__k1_86
	.data
	.align	8
	.quad	3063
	.globl	camlFibk__print_endline_197
camlFibk__print_endline_197:
	.globl	camlFibk__print_endline_52_closure
camlFibk__print_endline_52_closure:
	.quad	camlFibk__print_endline_52
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlFibk__output_string_126
camlFibk__output_string_126:
	.globl	camlFibk__output_string_40_closure
camlFibk__output_string_40_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlFibk__output_string_40
	.data
	.align	8
	.quad	4087
	.globl	camlFibk__k0_128
camlFibk__k0_128:
	.globl	camlFibk__k0_73_closure
camlFibk__k0_73_closure:
	.quad	caml_curry3
	.quad	0x300000000000007
	.quad	camlFibk__k0_73
	.data
	.align	8
	.quad	3063
	.globl	camlFibk__id_127
camlFibk__id_127:
	.globl	camlFibk__id_67_closure
camlFibk__id_67_closure:
	.quad	camlFibk__id_67
	.quad	0x100000000000005
	.data
	.align	8
	.quad	8960
	.globl	camlFibk
camlFibk:
	.quad	1
	.quad	camlFibk__string_of_int_30_closure
	.quad	camlFibk__output_string_40_closure
	.quad	camlFibk__print_endline_52_closure
	.quad	camlFibk__id_67_closure
	.quad	camlFibk__k0_73_closure
	.quad	camlFibk__fib_85_closure
	.quad	camlFibk__k1_86_closure
	.data
	.align	8
	.quad	1792
	.globl	camlFibk__repr1_137
camlFibk__repr1_137:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFibk__f6_138
camlFibk__f6_138:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlFibk__Pccall_141
camlFibk__Pccall_141:
	.quad	1
	.data
	.align	8
	.globl	camlFibk__gc_roots
camlFibk__gc_roots:
	.quad	camlFibk__Pccall_141
	.quad	camlFibk__f6_138
	.quad	camlFibk__repr1_137
	.quad	camlFibk
	.quad	0
	.text
	.align	16
	.globl	camlFibk__k0_168
camlFibk__k0_168:
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
	jmp	camlFibk__k0_73@PLT
	.cfi_adjust_cfa_offset 8
.L101:
	call	caml_call_gc@PLT
.L103:
	jmp	.L102
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__k0_168,@function
	.size camlFibk__k0_168,. - camlFibk__k0_168
	.text
	.align	16
	.globl	camlFibk__k1_157
camlFibk__k1_157:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L104:
	movq	%rax, %rdi
	cmpq	(%r14), %r15
	jbe	.L105
.L106:
	movq	24(%rbx), %rsi
	movq	16(%rbx), %rax
	movq	%rsi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	camlFibk__k1_86@PLT
	.cfi_adjust_cfa_offset 8
.L105:
	call	caml_call_gc@PLT
.L107:
	jmp	.L106
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__k1_157,@function
	.size camlFibk__k1_157,. - camlFibk__k1_157
	.text
	.align	16
	.globl	camlFibk__string_of_int_30
camlFibk__string_of_int_30:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L108:
	movq	camlFibk__const_immstring_34@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L109:
	movq	8(%r14), %r15
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__string_of_int_30,@function
	.size camlFibk__string_of_int_30,. - camlFibk__string_of_int_30
	.text
	.align	16
	.globl	camlFibk__output_string_40
camlFibk__output_string_40:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L110:
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
.L111:
	movq	8(%r14), %r15
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__output_string_40,@function
	.size camlFibk__output_string_40,. - camlFibk__output_string_40
	.text
	.align	16
	.globl	camlFibk__print_endline_52
camlFibk__print_endline_52:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L112:
	movq	%rax, %rbx
	movq	camlFibk__Pccall_141@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFibk__output_string_40@PLT
.L113:
	movl	$21, %esi
	movq	camlFibk__Pccall_141@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_output_char@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L114:
	movq	8(%r14), %r15
	movq	camlFibk__Pccall_141@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	caml_ml_flush@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L115:
	movq	8(%r14), %r15
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__print_endline_52,@function
	.size camlFibk__print_endline_52,. - camlFibk__print_endline_52
	.text
	.align	16
	.globl	camlFibk__id_67
camlFibk__id_67:
	.cfi_startproc
.L116:
	ret
	.cfi_endproc
	.type camlFibk__id_67,@function
	.size camlFibk__id_67,. - camlFibk__id_67
	.text
	.align	16
	.globl	camlFibk__k0_73
camlFibk__k0_73:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L117:
	movq	%rax, %rsi
	cmpq	(%r14), %r15
	jbe	.L118
.L119:
	leaq	-1(%rbx,%rdi), %rax
	movq	(%rsi), %rdi
	movq	%rsi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
.L118:
	call	caml_call_gc@PLT
.L120:
	jmp	.L119
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__k0_73,@function
	.size camlFibk__k0_73,. - camlFibk__k0_73
	.text
	.align	16
	.globl	camlFibk__fib_85
camlFibk__fib_85:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L122:
	cmpq	(%r14), %r15
	jbe	.L123
.L124:
	cmpq	$5, %rax
	jge	.L121
	movq	(%rbx), %rdi
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	*%rdi
	.cfi_adjust_cfa_offset 8
	.align	4
.L121:
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L126
.L128:
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	camlFibk__k1_157@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$72057594037927941, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rbx, 16(%rdi)
	movq	%rax, 24(%rdi)
	addq	$-4, %rax
	movq	%rdi, %rbx
	jmp	.L122
.L126:
	call	caml_call_gc@PLT
.L127:
	jmp	.L128
.L123:
	call	caml_call_gc@PLT
.L125:
	jmp	.L124
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__fib_85,@function
	.size camlFibk__fib_85,. - camlFibk__fib_85
	.text
	.align	16
	.globl	camlFibk__k1_86
camlFibk__k1_86:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L129:
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L130
.L132:
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	camlFibk__k0_168@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movabsq	$72057594037927941, %rsi
	movq	%rsi, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rbx, %rax
	addq	$-2, %rax
	movq	%rdi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	jmp	camlFibk__fib_85@PLT
	.cfi_adjust_cfa_offset 8
.L130:
	call	caml_call_gc@PLT
.L131:
	jmp	.L132
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__k1_86,@function
	.size camlFibk__k1_86,. - camlFibk__k1_86
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
	.globl	camlFibk__const_immstring_34
camlFibk__const_immstring_34:
	.ascii	"%d"
	.space	5
	.byte	5
	.text
	.align	16
	.globl	camlFibk__entry
camlFibk__entry:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L133:
	movl	$3, %edi
	movq	caml_ml_open_descriptor_out@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L134:
	movq	8(%r14), %r15
	movq	camlFibk__Pccall_141@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFibk__id_67_closure@GOTPCREL(%rip), %rbx
	movl	$13, %eax
	call	camlFibk__fib_85@PLT
.L135:
	movq	camlFibk__f6_138@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFibk__f6_138@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFibk__string_of_int_30@PLT
.L136:
	movq	camlFibk__repr1_137@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	camlFibk__repr1_137@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	call	camlFibk__print_endline_52@PLT
.L137:
	movq	camlFibk@GOTPCREL(%rip), %rax
	movq	camlFibk__Pccall_141@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlFibk__entry,@function
	.size camlFibk__entry,. - camlFibk__entry
	.data
	.align	8
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlFibk__code_end
camlFibk__code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlFibk__data_end
camlFibk__data_end:
	.quad	0
	.align	8
	.globl	camlFibk__frametable
camlFibk__frametable:
	.quad	15
	.quad	.L137
	.word	17
	.word	0
	.align	4
	.long	(.L138 - .) + 0
	.align	8
	.quad	.L136
	.word	17
	.word	0
	.align	4
	.long	(.L139 - .) + 0
	.align	8
	.quad	.L135
	.word	17
	.word	0
	.align	4
	.long	(.L140 - .) + 0
	.align	8
	.quad	.L134
	.word	17
	.word	0
	.align	4
	.long	(.L141 - .) + 0
	.align	8
	.quad	.L131
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L127
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	8
	.quad	.L125
	.word	18
	.word	2
	.word	1
	.word	3
	.byte	0
	.align	8
	.quad	.L120
	.word	18
	.word	3
	.word	3
	.word	5
	.word	7
	.byte	0
	.align	8
	.quad	.L115
	.word	17
	.word	0
	.align	4
	.long	(.L142 - .) + 0
	.align	8
	.quad	.L114
	.word	17
	.word	0
	.align	4
	.long	(.L143 - .) + 0
	.align	8
	.quad	.L113
	.word	17
	.word	0
	.align	4
	.long	(.L144 - .) + 0
	.align	8
	.quad	.L111
	.word	17
	.word	0
	.align	4
	.long	(.L145 - .) + 0
	.align	8
	.quad	.L109
	.word	17
	.word	0
	.align	4
	.long	(.L146 - .) + 0
	.align	8
	.quad	.L107
	.word	18
	.word	2
	.word	3
	.word	5
	.byte	0
	.align	8
	.quad	.L103
	.word	18
	.word	2
	.word	3
	.word	5
	.byte	0
	.align	8
	.align	4
.L146:
	.long	(.L148 - .) + -1677721600
	.long	45408
	.align	4
.L143:
	.long	(.L149 - .) + 1677721600
	.long	98336
	.align	4
.L138:
	.long	(.L150 - .) + 1409286144
	.long	180256
	.align	4
.L140:
	.long	(.L150 - .) + 1275068416
	.long	172208
	.align	4
.L142:
	.long	(.L149 - .) + 939524096
	.long	102432
	.align	4
.L139:
	.long	(.L150 - .) + 2013265920
	.long	176352
	.align	4
.L145:
	.long	(.L151 - .) + 402653184
	.long	82321
	.align	4
.L141:
	.long	(.L152 - .) + -2013265920
	.long	24784
	.align	4
.L144:
	.long	(.L149 - .) + 1610612736
	.long	94240
.L147:
	.ascii	"Fibk.ml\0"
	.align	4
.L149:
	.long	(.L147 - .) + 0
	.ascii	"Fibk.print_endline\0"
	.align	4
.L152:
	.long	(.L147 - .) + 0
	.ascii	"Fibk.stdout\0"
	.align	4
.L150:
	.long	(.L147 - .) + 0
	.ascii	"Fibk\0"
	.align	4
.L148:
	.long	(.L147 - .) + 0
	.ascii	"Fibk.string_of_int\0"
	.align	4
.L151:
	.long	(.L147 - .) + 0
	.ascii	"Fibk.output_string\0"
	.align	8
	.size camlFibk__frametable,. - camlFibk__frametable
	.section .note.GNU-stack,"",%progbits
