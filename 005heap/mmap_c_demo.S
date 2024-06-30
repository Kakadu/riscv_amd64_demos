	.file	"mmap_c_demo.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zbb1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"mmap"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB74:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s1,8(sp)
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	li	a5,1
	li	s1,2
	ble	a0,a5,.L2
	ld	a0,8(a1)
	li	a2,0
	li	a1,0
	call	__isoc23_strtoull@plt
	mv	s1,a0
.L2:
	li	a5,0
	li	a4,-1
	li	a3,33
	li	a2,3
	mv	a1,s1
	li	a0,0
	call	mmap@plt
	li	a5,-1
	mv	s0,a0
	beq	a0,a5,.L8
	li	a5,48
	sb	a5,0(a0)
	li	a5,49
	sb	a5,1(a0)
	li	a5,50
	sb	a5,2(a0)
	li	a5,51
	sb	a5,3(a0)
	li	a5,52
	sb	a5,4(a0)
	li	a5,53
	sb	a5,5(a0)
	li	a5,54
	sb	a5,6(a0)
	li	a5,55
	sb	a5,7(a0)
	li	a5,56
	sb	a5,8(a0)
	li	a5,57
	sb	a5,9(a0)
	li	a5,10
	sb	a5,11(a0)
	sb	zero,12(a0)
	call	puts@plt
	mv	a1,s1
	mv	a0,s0
	call	munmap@plt
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L8:
	.cfi_restore_state
	lla	a0,.LC0
	call	perror@plt
	li	a0,1
	call	exit@plt
	.cfi_endproc
.LFE74:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
