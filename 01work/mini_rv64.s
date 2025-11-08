	.option pic
	.file ""
	.section .data
	.globl	camlMini.data_begin
	.type	camlMini.data_begin, @object
camlMini.data_begin:
	.text
	.globl	camlMini.code_begin
	.type	camlMini.code_begin, @object
camlMini.code_begin:
	.section .data
	.section .data
	.quad	3063
camlMini.4:
	.quad	camlMini.string_of_int_9
	.quad	72057594037927941
	.section .data
	.quad	4087
camlMini.3:
	.quad	caml_curry2
	.quad	144115188075855879
	.quad	camlMini.output_string_15
	.section .data
	.quad	3063
camlMini.2:
	.quad	camlMini.print_endline_19
	.quad	72057594037927941
	.section .data
	.quad	4864
	.globl	camlMini
	.type	camlMini, @object
camlMini:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlMini.gc_roots
	.type	camlMini.gc_roots, @object
camlMini.gc_roots:
	.quad	camlMini
	.quad	0
	.globl	camlMini.string_of_int_9
	.type	camlMini.string_of_int_9, @function
	.text
	.align	2
camlMini.string_of_int_9:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L100:
	mv	a1, a0
	la	a0, camlMini.1
	la	t2, caml_format_int
	call	caml_c_call@plt
.L101:
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
	.size	camlMini.string_of_int_9, . - camlMini.string_of_int_9
	.globl	camlMini.output_string_15
	.type	camlMini.output_string_15, @function
	.text
	.align	2
camlMini.output_string_15:
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
	.size	camlMini.output_string_15, . - camlMini.output_string_15
	.globl	camlMini.print_endline_19
	.type	camlMini.print_endline_19, @function
	.text
	.align	2
camlMini.print_endline_19:
	ld	t1, 40(s11)
	addi	t1, t1, 320
	bltu	sp, t1, .L105
.L106:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L104:
	mv	a1, a0
	la	a2, camlMini
	ld	a0, 0(a2)
	call	camlMini.output_string_15@plt
.L107:
	li	a1, 21
	la	a4, camlMini
	ld	a0, 0(a4)
	la	t2, caml_ml_output_char
	call	caml_c_call@plt
.L108:
	la	a6, camlMini
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
	.size	camlMini.print_endline_19, . - camlMini.print_endline_19
	.section .data
	.quad	2044
camlMini.1:
	.byte	37,100
	.space	5
	.byte	5
	.globl	camlMini.entry
	.type	camlMini.entry, @function
	.text
	.align	2
camlMini.entry:
	ld	t1, 40(s11)
	addi	t1, t1, 320
	bltu	sp, t1, .L111
.L112:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L110:
	li	a0, 3
	la	t2, caml_ml_open_descriptor_out
	call	caml_c_call@plt
.L113:
	mv	a1, a0
	la	a0, camlMini
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlMini.4
	la	a4, camlMini
	addi	a0, a4, 8
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlMini.3
	la	a7, camlMini
	addi	a0, a7, 16
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	la	a1, camlMini.2
	la	s4, camlMini
	addi	a0, s4, 24
	mv	s0, sp
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	li	a0, 85
	call	camlMini.string_of_int_9@plt
.L114:
	call	camlMini.print_endline_19@plt
.L115:
	li	a0, 1
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
.L111:
	li	t1, 33
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L112
	.size	camlMini.entry, . - camlMini.entry
	.section .data
	.quad	caml_ml_output
	.quad	caml_ml_output_char
	.quad	caml_format_int
	.quad	caml_ml_flush
	.quad	caml_ml_open_descriptor_out
	.text
	.globl	camlMini.code_end
	.type	camlMini.code_end, @object
camlMini.code_end:
	.long	0
	.section .data
	.globl	camlMini.data_end
	.type	camlMini.data_end, @object
	.quad	0
camlMini.data_end:
	.quad	0
	.section .data
	.globl	camlMini.frametable
	.type	camlMini.frametable, @object
camlMini.frametable:
	.quad	8
	.quad	.L115
	.short	9
	.short	0
	.align	2
	.long	(.L116 - .) + 0x0
	.align	3
	.quad	.L114
	.short	9
	.short	0
	.align	2
	.long	(.L117 - .) + 0x0
	.align	3
	.quad	.L113
	.short	9
	.short	0
	.align	2
	.long	(.L118 - .) + 0x0
	.align	3
	.quad	.L109
	.short	9
	.short	0
	.align	2
	.long	(.L119 - .) + 0x0
	.align	3
	.quad	.L108
	.short	9
	.short	0
	.align	2
	.long	(.L120 - .) + 0x0
	.align	3
	.quad	.L107
	.short	9
	.short	0
	.align	2
	.long	(.L121 - .) + 0x0
	.align	3
	.quad	.L103
	.short	9
	.short	0
	.align	2
	.long	(.L122 - .) + 0x0
	.align	3
	.quad	.L101
	.short	9
	.short	0
	.align	2
	.long	(.L123 - .) + 0x0
	.align	3
	.align	2
.L120:
	.long	(.L125 - .) + 0x0
	.long	0x906988
	.align	2
.L122:
	.long	(.L126 - .) + 0x0
	.long	0x780978
	.align	2
.L121:
	.long	(.L125 - .) + 0x0
	.long	0x9008c0
	.align	2
.L118:
	.long	(.L127 - .) + 0x0
	.long	0x203510
	.align	2
.L123:
	.long	(.L128 - .) + 0x0
	.long	0x405938
	.align	2
.L116:
	.long	(.L129 - .) + 0x0
	.long	0xb02548
	.align	2
.L119:
	.long	(.L125 - .) + 0x0
	.long	0x90cdf8
	.align	2
.L117:
	.long	(.L129 - .) + 0x0
	.long	0xb05d48
.L124:
	.byte	109,105,110,105,46,109,108,0
	.align	2
.L125:
	.long	(.L124 - .) + 0x0
	.byte	77,105,110,105,46,112,114,105,110,116,95,101,110,100,108,105
	.byte	110,101,0
	.align	2
.L127:
	.long	(.L124 - .) + 0x0
	.byte	77,105,110,105,46,115,116,100,111,117,116,0
	.align	2
.L129:
	.long	(.L124 - .) + 0x0
	.byte	77,105,110,105,0
	.align	2
.L128:
	.long	(.L124 - .) + 0x0
	.byte	77,105,110,105,46,115,116,114,105,110,103,95,111,102,95,105
	.byte	110,116,0
	.align	2
.L126:
	.long	(.L124 - .) + 0x0
	.byte	77,105,110,105,46,111,117,116,112,117,116,95,115,116,114,105
	.byte	110,103,0
	.align	3
	.size	camlMini.frametable, . - camlMini.frametable
	.section .note.GNU-stack,"",%progbits
