	.option pic
	.file ""
	.section .data
	.globl	camlFacacc.data_begin
	.type	camlFacacc.data_begin, @object
camlFacacc.data_begin:
	.text
	.globl	camlFacacc.code_begin
	.type	camlFacacc.code_begin, @object
camlFacacc.code_begin:
	.section .data
	.section .data
	.quad	3063
camlFacacc.5:
	.quad	camlFacacc.string_of_int_9
	.quad	72057594037927941
	.section .data
	.quad	4087
camlFacacc.4:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlFacacc.output_string_15
	.section .data
	.quad	3063
camlFacacc.3:
	.quad	camlFacacc.print_endline_19
	.quad	72057594037927941
	.section .data
	.quad	4087
camlFacacc.2:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlFacacc.fac_25
	.section .data
	.quad	5888
	.globl	camlFacacc
	.type	camlFacacc, @object
camlFacacc:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlFacacc.gc_roots
	.type	camlFacacc.gc_roots, @object
camlFacacc.gc_roots:
	.quad	camlFacacc
	.quad	0
	.globl	camlFacacc.string_of_int_9
	.type	camlFacacc.string_of_int_9, @function
	.text
	.align	2
camlFacacc.string_of_int_9:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L100:
	mv	a1, a0
	la	a0, camlFacacc.1
	la	t2, caml_format_int
	call	caml_c_call@plt
.L101:
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
	.size	camlFacacc.string_of_int_9, . - camlFacacc.string_of_int_9
	.globl	camlFacacc.output_string_15
	.type	camlFacacc.output_string_15, @function
	.text
	.align	2
camlFacacc.output_string_15:
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
	.size	camlFacacc.output_string_15, . - camlFacacc.output_string_15
	.globl	camlFacacc.print_endline_19
	.type	camlFacacc.print_endline_19, @function
	.text
	.align	2
camlFacacc.print_endline_19:
	ld	t1, 40(s11)
	addi	t1, t1, 320
	bltu	sp, t1, .L105
.L106:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L104:
	mv	a1, a0
	la	a2, camlFacacc
	ld	a0, 0(a2)
	call	camlFacacc.output_string_15@plt
.L107:
	li	a1, 21
	la	a4, camlFacacc
	ld	a0, 0(a4)
	la	t2, caml_ml_output_char
	call	caml_c_call@plt
.L108:
	la	a6, camlFacacc
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
	.size	camlFacacc.print_endline_19, . - camlFacacc.print_endline_19
	.globl	camlFacacc.fac_25
	.type	camlFacacc.fac_25, @function
	.text
	.align	2
camlFacacc.fac_25:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L111:
	ld	t1, 0(s11)
	bltu	s10, t1, .L114
.L113:
	li	a2, 5
	bge	a1, a2, .L110
	addi	s10, s10, -24
	ld	t1, 0(s11)
	bltu	s10, t1, .L117
.L116:
	addi	s2, s10, 8
	li	s3, 2048
	sd	s3, -8(s2)
	sd	a0, 0(s2)
	srai	s4, a0, 1
	addi	s5, a0, -1
	mul	s6, s5, s4
	addi	s7, s6, 1
	sd	s7, 8(s2)
	mv	a0, s2
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
.L110:
	addi	a3, a1, -2
	srai	a4, a1, 1
	addi	a5, a0, -1
	mul	a6, a5, a4
	addi	a0, a6, 1
	mv	a1, a3
	j	.L111
.L117:
	call	caml_call_gc@plt
.L115:
	j	.L116
.L114:
	call	caml_call_gc@plt
.L112:
	j	.L113
	.size	camlFacacc.fac_25, . - camlFacacc.fac_25
	.section .data
	.quad	2044
camlFacacc.1:
	.byte	37,100
	.space	5
	.byte	5
	.globl	camlFacacc.entry
	.type	camlFacacc.entry, @function
	.text
	.align	2
camlFacacc.entry:
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L119
.L120:
	addi	sp, sp, -16
	sd	ra, 8(sp)
.L118:
	li	a0, 3
	la	t2, caml_ml_open_descriptor_out
	call	caml_c_call@plt
.L121:
	mv	a1, a0
	la	a0, camlFacacc
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFacacc.5
	la	a4, camlFacacc
	addi	a0, a4, 8
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFacacc.4
	la	a7, camlFacacc
	addi	a0, a7, 16
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFacacc.3
	la	s4, camlFacacc
	addi	a0, s4, 24
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlFacacc.2
	la	s7, camlFacacc
	addi	a0, s7, 32
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	li	a1, 11
	li	a0, 3
	call	camlFacacc.fac_25@plt
.L122:
	sd	a0, 0(sp)
	ld	a0, 0(a0)
	call	camlFacacc.string_of_int_9@plt
.L123:
	call	camlFacacc.print_endline_19@plt
.L124:
	ld	a2, 0(sp)
	ld	a0, 8(a2)
	call	camlFacacc.string_of_int_9@plt
.L125:
	call	camlFacacc.print_endline_19@plt
.L126:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
.L119:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L120
	.size	camlFacacc.entry, . - camlFacacc.entry
	.section .data
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlFacacc.code_end
	.type	camlFacacc.code_end, @object
camlFacacc.code_end:
	.long	0
	.section .data
	.globl	camlFacacc.data_end
	.type	camlFacacc.data_end, @object
	.quad	0
camlFacacc.data_end:
	.quad	0
	.section .data
	.globl	camlFacacc.frametable
	.type	camlFacacc.frametable, @object
camlFacacc.frametable:
	.quad	13
	.quad	.L126
	.short	17
	.short	0
	.align	2
	.long	(.L127 - .) + 0x0
	.align	3
	.quad	.L125
	.short	17
	.short	0
	.align	2
	.long	(.L128 - .) + 0x0
	.align	3
	.quad	.L124
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L129 - .) + 0x0
	.align	3
	.quad	.L123
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L130 - .) + 0x0
	.align	3
	.quad	.L122
	.short	17
	.short	0
	.align	2
	.long	(.L131 - .) + 0x0
	.align	3
	.quad	.L121
	.short	17
	.short	0
	.align	2
	.long	(.L132 - .) + 0x0
	.align	3
	.quad	.L115
	.short	10
	.short	0
	.byte	1
	.byte	1
	.align	3
	.quad	.L112
	.short	10
	.short	0
	.byte	0
	.align	3
	.quad	.L109
	.short	9
	.short	0
	.align	2
	.long	(.L133 - .) + 0x0
	.align	3
	.quad	.L108
	.short	9
	.short	0
	.align	2
	.long	(.L134 - .) + 0x0
	.align	3
	.quad	.L107
	.short	9
	.short	0
	.align	2
	.long	(.L135 - .) + 0x0
	.align	3
	.quad	.L103
	.short	9
	.short	0
	.align	2
	.long	(.L136 - .) + 0x0
	.align	3
	.quad	.L101
	.short	9
	.short	0
	.align	2
	.long	(.L137 - .) + 0x0
	.align	3
	.align	2
.L133:
	.long	(.L139 - .) + 0x0
	.long	0x90cdf8
	.align	2
.L131:
	.long	(.L140 - .) + 0x0
	.long	0xd848d8
	.align	2
.L137:
	.long	(.L141 - .) + 0x0
	.long	0x405938
	.align	2
.L132:
	.long	(.L142 - .) + 0x0
	.long	0x203510
	.align	2
.L134:
	.long	(.L139 - .) + 0x0
	.long	0x906988
	.align	2
.L129:
	.long	(.L140 - .) + 0x0
	.long	0xe00918
	.align	2
.L136:
	.long	(.L143 - .) + 0x0
	.long	0x780978
	.align	2
.L135:
	.long	(.L139 - .) + 0x0
	.long	0x9008c0
	.align	2
.L127:
	.long	(.L140 - .) + 0x0
	.long	0xe80928
	.align	2
.L130:
	.long	(.L140 - .) + 0x0
	.long	0xe04118
	.align	2
.L128:
	.long	(.L140 - .) + 0x0
	.long	0xe84128
.L138:
	.byte	102,97,99,97,99,99,46,109,108,0
	.align	2
.L143:
	.long	(.L138 - .) + 0x0
	.byte	70,97,99,97,99,99,46,111,117,116,112,117,116,95,115,116
	.byte	114,105,110,103,0
	.align	2
.L142:
	.long	(.L138 - .) + 0x0
	.byte	70,97,99,97,99,99,46,115,116,100,111,117,116,0
	.align	2
.L141:
	.long	(.L138 - .) + 0x0
	.byte	70,97,99,97,99,99,46,115,116,114,105,110,103,95,111,102
	.byte	95,105,110,116,0
	.align	2
.L139:
	.long	(.L138 - .) + 0x0
	.byte	70,97,99,97,99,99,46,112,114,105,110,116,95,101,110,100
	.byte	108,105,110,101,0
	.align	2
.L140:
	.long	(.L138 - .) + 0x0
	.byte	70,97,99,97,99,99,0
	.align	3
	.size	camlFacacc.frametable, . - camlFacacc.frametable
	.section .note.GNU-stack,"",%progbits
