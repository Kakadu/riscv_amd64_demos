	.option pic
	.file ""
	.section .data
	.globl	caml_startup.data_begin
	.type	caml_startup.data_begin, @object
caml_startup.data_begin:
	.text
	.globl	caml_startup.code_begin
	.type	caml_startup.code_begin, @object
caml_startup.code_begin:
	.globl	caml_program
	.type	caml_program, @function
	.text
	.align	2
caml_program:
	ld	t1, 40(s11)
	addi	t1, t1, 320
	bltu	sp, t1, .L145
.L146:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L144:
	call	camlFacacc.entry@plt
.L147:
	la	a0, caml_globals_inited
	ld	a2, 0(a0)
	addi	a3, a2, 1
	fence	r, w
	sd	a3, 0(a0)
	li	a0, 1
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
.L145:
	li	t1, 33
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L146
	.size	caml_program, . - caml_program
	.section .data
	.globl	caml_startup.gc_roots
	.type	caml_startup.gc_roots, @object
caml_startup.gc_roots:
	.quad	0
	.globl	caml_curry2
	.type	caml_curry2, @function
	.text
	.align	2
caml_curry2:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L148:
	addi	s10, s10, -40
	ld	t1, 0(s11)
	bltu	s10, t1, .L151
.L150:
	addi	a2, s10, 8
	li	a3, 4343
	sd	a3, -8(a2)
	la	a4, caml_curry2_1
	sd	a4, 0(a2)
	li	a5, 72057594037927941
	sd	a5, 8(a2)
	sd	a0, 16(a2)
	sd	a1, 24(a2)
	mv	a0, a2
	ld	ra, 0(sp)
	addi	sp, sp, 8
	ret
.L151:
	call	caml_call_gc@plt
.L149:
	j	.L150
	.size	caml_curry2, . - caml_curry2
	.globl	caml_curry2_1
	.type	caml_curry2_1, @function
	.text
	.align	2
caml_curry2_1:
	addi	sp, sp, -8
	sd	ra, 0(sp)
.L152:
	mv	a3, a0
	ld	t1, 0(s11)
	bltu	s10, t1, .L155
.L154:
	ld	a2, 24(a1)
	ld	a0, 16(a1)
	ld	a4, 16(a2)
	mv	a1, a3
	ld	ra, 0(sp)
	addi	sp, sp, 8
	jr	a4
.L155:
	call	caml_call_gc@plt
.L153:
	j	.L154
	.size	caml_curry2_1, . - caml_curry2_1
	.globl	caml_apply3
	.type	caml_apply3, @function
	.text
	.align	2
caml_apply3:
	ld	t1, 40(s11)
	addi	t1, t1, 336
	bltu	sp, t1, .L158
.L159:
	addi	sp, sp, -24
	sd	ra, 16(sp)
.L157:
	li	a4, 3
	ld	a5, 8(a3)
	srai	a6, a5, 56
	bne	a6, a4, .L156
	ld	s6, 16(a3)
	ld	ra, 16(sp)
	addi	sp, sp, 24
	jr	s6
.L156:
	sd	a2, 8(sp)
	sd	a1, 0(sp)
	ld	a7, 0(a3)
	mv	a1, a3
	jalr	a7
.L160:
	mv	a1, a0
	ld	s3, 0(a1)
	ld	a0, 0(sp)
	jalr	s3
.L161:
	mv	a1, a0
	ld	s5, 0(a1)
	ld	a0, 8(sp)
	ld	ra, 16(sp)
	addi	sp, sp, 24
	jr	s5
.L158:
	li	t1, 35
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L159
	.size	caml_apply3, . - caml_apply3
	.globl	caml_apply2
	.type	caml_apply2, @function
	.text
	.align	2
caml_apply2:
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L164
.L165:
	addi	sp, sp, -16
	sd	ra, 8(sp)
.L163:
	li	a3, 2
	ld	a4, 8(a2)
	srai	a5, a4, 56
	bne	a5, a3, .L162
	ld	s3, 16(a2)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	jr	s3
.L162:
	sd	a1, 0(sp)
	ld	a6, 0(a2)
	mv	a1, a2
	jalr	a6
.L166:
	mv	a1, a0
	ld	s2, 0(a1)
	ld	a0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	jr	s2
.L164:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L165
	.size	caml_apply2, . - caml_apply2
	.section .data
	.quad	3064
	.globl	caml_exn_Out_of_memory
	.type	caml_exn_Out_of_memory, @object
caml_exn_Out_of_memory:
	.quad	caml_startup.6
	.quad	-1
	.quad	3068
caml_startup.6:
	.byte	79,117,116,95,111,102,95,109,101,109,111,114,121
	.space	2
	.byte	2
	.section .data
	.quad	3064
	.globl	caml_exn_Sys_error
	.type	caml_exn_Sys_error, @object
caml_exn_Sys_error:
	.quad	caml_startup.7
	.quad	-3
	.quad	3068
caml_startup.7:
	.byte	83,121,115,95,101,114,114,111,114
	.space	6
	.byte	6
	.section .data
	.quad	3064
	.globl	caml_exn_Failure
	.type	caml_exn_Failure, @object
caml_exn_Failure:
	.quad	caml_startup.8
	.quad	-5
	.quad	2044
caml_startup.8:
	.byte	70,97,105,108,117,114,101
	.byte	0
	.section .data
	.quad	3064
	.globl	caml_exn_Invalid_argument
	.type	caml_exn_Invalid_argument, @object
caml_exn_Invalid_argument:
	.quad	caml_startup.9
	.quad	-7
	.quad	4092
caml_startup.9:
	.byte	73,110,118,97,108,105,100,95,97,114,103,117,109,101,110,116
	.space	7
	.byte	7
	.section .data
	.quad	3064
	.globl	caml_exn_End_of_file
	.type	caml_exn_End_of_file, @object
caml_exn_End_of_file:
	.quad	caml_startup.10
	.quad	-9
	.quad	3068
caml_startup.10:
	.byte	69,110,100,95,111,102,95,102,105,108,101
	.space	4
	.byte	4
	.section .data
	.quad	3064
	.globl	caml_exn_Division_by_zero
	.type	caml_exn_Division_by_zero, @object
caml_exn_Division_by_zero:
	.quad	caml_startup.11
	.quad	-11
	.quad	4092
caml_startup.11:
	.byte	68,105,118,105,115,105,111,110,95,98,121,95,122,101,114,111
	.space	7
	.byte	7
	.section .data
	.quad	3064
	.globl	caml_exn_Not_found
	.type	caml_exn_Not_found, @object
caml_exn_Not_found:
	.quad	caml_startup.12
	.quad	-13
	.quad	3068
caml_startup.12:
	.byte	78,111,116,95,102,111,117,110,100
	.space	6
	.byte	6
	.section .data
	.quad	3064
	.globl	caml_exn_Match_failure
	.type	caml_exn_Match_failure, @object
caml_exn_Match_failure:
	.quad	caml_startup.13
	.quad	-15
	.quad	3068
caml_startup.13:
	.byte	77,97,116,99,104,95,102,97,105,108,117,114,101
	.space	2
	.byte	2
	.section .data
	.quad	3064
	.globl	caml_exn_Stack_overflow
	.type	caml_exn_Stack_overflow, @object
caml_exn_Stack_overflow:
	.quad	caml_startup.14
	.quad	-17
	.quad	3068
caml_startup.14:
	.byte	83,116,97,99,107,95,111,118,101,114,102,108,111,119
	.space	1
	.byte	1
	.section .data
	.quad	3064
	.globl	caml_exn_Sys_blocked_io
	.type	caml_exn_Sys_blocked_io, @object
caml_exn_Sys_blocked_io:
	.quad	caml_startup.15
	.quad	-19
	.quad	3068
caml_startup.15:
	.byte	83,121,115,95,98,108,111,99,107,101,100,95,105,111
	.space	1
	.byte	1
	.section .data
	.quad	3064
	.globl	caml_exn_Assert_failure
	.type	caml_exn_Assert_failure, @object
caml_exn_Assert_failure:
	.quad	caml_startup.16
	.quad	-21
	.quad	3068
caml_startup.16:
	.byte	65,115,115,101,114,116,95,102,97,105,108,117,114,101
	.space	1
	.byte	1
	.section .data
	.quad	3064
	.globl	caml_exn_Undefined_recursive_module
	.type	caml_exn_Undefined_recursive_module, @object
caml_exn_Undefined_recursive_module:
	.quad	caml_startup.17
	.quad	-23
	.quad	5116
caml_startup.17:
	.byte	85,110,100,101,102,105,110,101,100,95,114,101,99,117,114,115
	.byte	105,118,101,95,109,111,100,117,108,101
	.space	5
	.byte	5
	.section .data
	.globl	caml_globals
	.type	caml_globals, @object
caml_globals:
	.quad	camlFacacc.gc_roots
	.quad	0
	.section .data
	.quad	10236
	.globl	caml_globals_map
	.type	caml_globals_map, @object
caml_globals_map:
	.byte	132,149,166,190,0,0,0,50,0,0,0,8,0,0,0,30
	.byte	0,0,0,25,160,192,38,70,97,99,97,99,99,144,48,188
	.byte	3,137,150,126,138,61,202,12,228,90,32,239,244,28,225,144
	.byte	48,241,127,141,127,13,250,64,38,23,66,174,39,236,169,155
	.byte	197,160,4,6,64,64
	.space	1
	.byte	1
	.section .data
	.globl	caml_data_segments
	.type	caml_data_segments, @object
caml_data_segments:
	.quad	caml_startup.data_begin
	.quad	caml_startup.data_end
	.quad	camlFacacc.data_begin
	.quad	camlFacacc.data_end
	.quad	0
	.section .data
	.globl	caml_code_segments
	.type	caml_code_segments, @object
caml_code_segments:
	.quad	caml_startup.code_begin
	.quad	caml_startup.code_end
	.quad	camlFacacc.code_begin
	.quad	camlFacacc.code_end
	.quad	0
	.section .data
	.globl	caml_frametable
	.type	caml_frametable, @object
caml_frametable:
	.quad	caml_startup.frametable
	.quad	caml_system.frametable
	.quad	camlFacacc.frametable
	.quad	0
	.text
	.globl	caml_startup.code_end
	.type	caml_startup.code_end, @object
caml_startup.code_end:
	.long	0
	.section .data
	.globl	caml_startup.data_end
	.type	caml_startup.data_end, @object
	.quad	0
caml_startup.data_end:
	.quad	0
	.section .data
	.globl	caml_startup.frametable
	.type	caml_startup.frametable, @object
caml_startup.frametable:
	.quad	6
	.quad	.L166
	.short	16
	.short	1
	.short	0
	.align	3
	.quad	.L161
	.short	24
	.short	1
	.short	8
	.align	3
	.quad	.L160
	.short	24
	.short	2
	.short	0
	.short	8
	.align	3
	.quad	.L153
	.short	10
	.short	2
	.short	3
	.short	7
	.byte	0
	.align	3
	.quad	.L149
	.short	10
	.short	2
	.short	1
	.short	3
	.byte	1
	.byte	3
	.align	3
	.quad	.L147
	.short	8
	.short	0
	.align	3
	.align	3
	.size	caml_startup.frametable, . - caml_startup.frametable
	.section .note.GNU-stack,"",%progbits
