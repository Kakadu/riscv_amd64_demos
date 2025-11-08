	.option pic
	.file ""
	.section .data
	.globl	camlFack.data_begin
	.type	camlFack.data_begin, @object
camlFack.data_begin:
	.text
	.globl	camlFack.code_begin
	.type	camlFack.code_begin, @object
camlFack.code_begin:
	.section .data
	.section .data
	.quad	3063
camlFack.6:
	.quad	camlFack.string_of_int_9
	.quad	72057594037927941
	.section .data
	.quad	4087
camlFack.5:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlFack.output_string_15
	.section .data
	.quad	3063
camlFack.4:
	.quad	camlFack.print_endline_19
	.quad	72057594037927941
	.section .data
	.quad	3063
camlFack.3:
	.quad	camlFack.id_25
	.quad	72057594037927941
	.section .data
	.quad	4087
camlFack.2:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlFack.fac_28
	.section .data
	.quad	6912
	.globl	camlFack
	.type	camlFack, @object
camlFack:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlFack.gc_roots
	.type	camlFack.gc_roots, @object
camlFack.gc_roots:
	.quad	camlFack
	.quad	0
	.globl	camlFack.string_of_int_9
	.type	camlFack.string_of_int_9, @function
	.text
	.align	2
camlFack.string_of_int_9:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L100:
	mv	a1, a0
	la	a0, camlFack.1
	la	t2, caml_format_int
	call	caml_c_call@plt
.L101:
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
	.size	camlFack.string_of_int_9, . - camlFack.string_of_int_9
	.globl	camlFack.output_string_15
	.type	camlFack.output_string_15, @function
	.text
	.align	2
camlFack.output_string_15:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L102:
	ld	a2, -8(a1)
	srli	a3, a2, 10
	slli	a4, a3, 3
	addi	a5, a4, -1
	add	a6, a1, a5
	lbu	a7, 0(a6)
	sub	s2, a5, a7
	slli	s3, s2, 1
	addi	a3, s3, 1
	li	a2, 1
	la	t2, caml_ml_output
	call	caml_c_call@plt
.L103:
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
	.size	camlFack.output_string_15, . - camlFack.output_string_15
	.globl	camlFack.print_endline_19
	.type	camlFack.print_endline_19, @function
	.text
	.align	2
camlFack.print_endline_19:
	ld	t1, 40(s11)
	addi	t1, t1, 320
	bltu	sp, t1, .L105
.L106:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L104:
	mv	a1, a0
	la	a2, camlFack
	ld	a0, 0(a2)
	call	camlFack.output_string_15@plt
.L107:
	li	a1, 21
	la	a4, camlFack
	ld	a0, 0(a4)
	la	t2, caml_ml_output_char
	call	caml_c_call@plt
.L108:
	la	a6, camlFack
	ld	a0, 0(a6)
	la	t2, caml_ml_flush
	call	caml_c_call@plt
.L109:
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
.L105:
	li	t1, 33
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L106
	.size	camlFack.print_endline_19, . - camlFack.print_endline_19
	.globl	camlFack.id_25
	.type	camlFack.id_25, @function
	.text
	.align	2
camlFack.id_25:
.L110:
	ret
	.size	camlFack.id_25, . - camlFack.id_25
	.globl	camlFack.fac_28
	.type	camlFack.fac_28, @function
	.text
	.align	2
camlFack.fac_28:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L112:
	ld	t1, 0(s11)
	bltu	s10, t1, .L115
.L114:
	li	a2, 5
	bge	a0, a2, .L111
	li	a0, 3
	ld	s3, 0(a1)
	ld	ra, 0(sp)
	addi	sp, sp, 8
	jr	s3
.L111:
	addi	s10, s10, -40
	ld	t1, 0(s11)
	bltu	s10, t1, .L118
.L117:
	addi	a3, s10, 8
	li	a4, 4343
	sd	a4, -8(a3)
	la	a5, camlFack.fun_55
	sd	a5, 0(a3)
	li	a6, 72057594037927941
	sd	a6, 8(a3)
	sd	a0, 16(a3)
	sd	a1, 24(a3)
	addi	a0, a0, -2
	mv	a1, a3
	j	.L112
.L118:
	call	caml_call_gc@plt
.L116:
	j	.L117
.L115:
	call	caml_call_gc@plt
.L113:
	j	.L114
	.size	camlFack.fac_28, . - camlFack.fac_28
	.globl	camlFack.fun_55
	.type	camlFack.fun_55, @function
	.text
	.align	2
camlFack.fun_55:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L119:
	ld	t1, 0(s11)
	bltu	s10, t1, .L122
.L121:
	ld	a2, 16(a1)
	srai	a3, a2, 1
	addi	a4, a0, -1
	mul	a5, a4, a3
	addi	a0, a5, 1
	ld	a1, 24(a1)
	ld	s2, 0(a1)
	ld	ra, 0(sp)
	addi	sp, sp, 8
	jr	s2
.L122:
	call	caml_call_gc@plt
.L120:
	j	.L121
	.size	camlFack.fun_55, . - camlFack.fun_55
	.section .data
	.quad	2044
camlFack.1:
	.byte	37,100
	.space	5
	.byte	5
	.globl	camlFack.entry
	.type	camlFack.entry, @function
	.text
	.align	2
camlFack.entry:
	ld	t1, 40(s11)
	addi	t1, t1, 320
	bltu	sp, t1, .L124
.L125:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L123:
	li	a0, 3
	la	t2, caml_ml_open_descriptor_out
	call	caml_c_call@plt
.L126:
	mv	a1, a0
	la	a0, camlFack
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFack.6
	la	a4, camlFack
	addi	a0, a4, 8
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFack.5
	la	a7, camlFack
	addi	a0, a7, 16
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFack.4
	la	s4, camlFack
	addi	a0, s4, 24
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFack.3
	la	s7, camlFack
	addi	a0, s7, 32
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFack.2
	la	t2, camlFack
	addi	a0, t2, 40
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	t4, camlFack
	ld	a1, 32(t4)
	li	a0, 11
	call	camlFack.fac_28@plt
.L127:
	call	camlFack.string_of_int_9@plt
.L128:
	call	camlFack.print_endline_19@plt
.L129:
	li	a0, 1
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
.L124:
	li	t1, 33
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L125
	.size	camlFack.entry, . - camlFack.entry
	.section .data
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlFack.code_end
	.type	camlFack.code_end, @object
camlFack.code_end:
	.long	0
	.section .data
	.globl	camlFack.data_end
	.type	camlFack.data_end, @object
	.quad	0
camlFack.data_end:
	.quad	0
	.section .data
	.globl	camlFack.frametable
	.type	camlFack.frametable, @object
camlFack.frametable:
	.quad	12
	.quad	.L129
	.short	9
	.short	0
	.align	2
	.long	(.L130 - .) + 0x0
	.align	3
	.quad	.L128
	.short	9
	.short	0
	.align	2
	.long	(.L131 - .) + 0x0
	.align	3
	.quad	.L127
	.short	9
	.short	0
	.align	2
	.long	(.L132 - .) + 0x0
	.align	3
	.quad	.L126
	.short	9
	.short	0
	.align	2
	.long	(.L133 - .) + 0x0
	.align	3
	.quad	.L120
	.short	10
	.short	1
	.short	3
	.byte	0
	.align	3
	.quad	.L116
	.short	10
	.short	1
	.short	3
	.byte	1
	.byte	3
	.align	3
	.quad	.L113
	.short	10
	.short	1
	.short	3
	.byte	0
	.align	3
	.quad	.L109
	.short	9
	.short	0
	.align	2
	.long	(.L134 - .) + 0x0
	.align	3
	.quad	.L108
	.short	9
	.short	0
	.align	2
	.long	(.L135 - .) + 0x0
	.align	3
	.quad	.L107
	.short	9
	.short	0
	.align	2
	.long	(.L136 - .) + 0x0
	.align	3
	.quad	.L103
	.short	9
	.short	0
	.align	2
	.long	(.L137 - .) + 0x0
	.align	3
	.quad	.L101
	.short	9
	.short	0
	.align	2
	.long	(.L138 - .) + 0x0
	.align	3
	.align	2
.L136:
	.long	(.L140 - .) + 0x0
	.long	0x9008c0
	.align	2
.L133:
	.long	(.L141 - .) + 0x0
	.long	0x203510
	.align	2
.L134:
	.long	(.L140 - .) + 0x0
	.long	0x90cdf8
	.align	2
.L138:
	.long	(.L142 - .) + 0x0
	.long	0x405938
	.align	2
.L137:
	.long	(.L143 - .) + 0x0
	.long	0x780978
	.align	2
.L135:
	.long	(.L140 - .) + 0x0
	.long	0x906988
	.align	2
.L130:
	.long	(.L144 - .) + 0x0
	.long	0xd82588
	.align	2
.L132:
	.long	(.L144 - .) + 0x0
	.long	0xd89980
	.align	2
.L131:
	.long	(.L144 - .) + 0x0
	.long	0xd85d88
.L139:
	.byte	102,97,99,107,46,109,108,0
	.align	2
.L144:
	.long	(.L139 - .) + 0x0
	.byte	70,97,99,107,0
	.align	2
.L141:
	.long	(.L139 - .) + 0x0
	.byte	70,97,99,107,46,115,116,100,111,117,116,0
	.align	2
.L140:
	.long	(.L139 - .) + 0x0
	.byte	70,97,99,107,46,112,114,105,110,116,95,101,110,100,108,105
	.byte	110,101,0
	.align	2
.L142:
	.long	(.L139 - .) + 0x0
	.byte	70,97,99,107,46,115,116,114,105,110,103,95,111,102,95,105
	.byte	110,116,0
	.align	2
.L143:
	.long	(.L139 - .) + 0x0
	.byte	70,97,99,107,46,111,117,116,112,117,116,95,115,116,114,105
	.byte	110,103,0
	.align	3
	.size	camlFack.frametable, . - camlFack.frametable
	.section .note.GNU-stack,"",%progbits
