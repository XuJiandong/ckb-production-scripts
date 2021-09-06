.text

.globl	mpi_mul_hlp_asm
.align 4

mpi_mul_hlp_asm:
	addi	sp,sp,-80
	sd	s0,72(sp)
	sd	s1,64(sp)
	sd	s2,56(sp)
	sd	s3,48(sp)
	sd	s4,40(sp)
	sd	s5,32(sp)
	sd	s6,24(sp)
	sd	s7,16(sp)
	sd	s8,8(sp)
	sd	s9,0(sp)
	li	a5,15
	bleu	a0,a5,.L1411
	mv	a5,a2
	mv	a4,a1
	mv	s0,a0
	li	a6,0
	li	s1,15
.L1406:
	ld	s7,0(a4)
	ld	s3,0(a5)
	ld	s4,8(a5)
	mul	s5,a3,s7
	ld	t2,16(a5)
	ld	t0,24(a5)
	ld	s2,32(a5)
	ld	t5,40(a5)
	ld	t4,48(a5)
	ld	t6,56(a5)
	ld	t1,64(a5)
	ld	t3,72(a5)
	ld	a7,80(a5)
	add	s5,a6,s5
	add	s9,s3,s5
	sd	s9,0(a5)
	ld	s6,8(a4)
	mulhu	s8,a3,s7
	sgtu	a6,a6,s5
	sgtu	s3,s3,s9
	addi	a5,a5,128
	addi	a4,a4,128
	addi	s0,s0,-16

	mulhu	s6,a3,s6
	mul	s7,a3,s6

	add	a6,a6,s8
	add	a6,s3,a6
	add	s3,a6,s7
	add	s7,s4,s3
	sd	s7,-120(a5)
	ld	s5,-112(a4)
	sgtu	a6,a6,s3
	sgtu	s4,s4,s7

	mulhu	s5,a3,s5
	mul	s3,a3,s5

	add	a6,a6,s6
	add	s4,s4,a6
	add	s3,s4,s3
	add	a6,t2,s3
	sd	a6,-112(a5)
	ld	s6,-104(a4)
	sgtu	t2,t2,a6
	sgtu	s3,s4,s3

	mulhu	s6,a3,s6
	mul	a6,a3,s6

	add	s3,s3,s5
	add	s3,t2,s3
	add	a6,s3,a6
	add	t2,t0,a6
	sd	t2,-104(a5)
	ld	s5,-96(a4)
	sgtu	t0,t0,t2
	sgtu	a6,s3,a6

	mulhu	s5,a3,s5
	mul	t2,a3,s5

	add	a6,a6,s6
	add	a6,t0,a6
	add	t2,a6,t2
	add	t0,s2,t2
	sd	t0,-96(a5)
	ld	s4,-88(a4)
	sgtu	s2,s2,t0
	sgtu	t2,a6,t2

	mulhu	s4,a3,s4
	mul	t0,a3,s4

	add	t2,t2,s5
	add	t2,s2,t2
	add	t0,t2,t0
	add	a6,t5,t0
	sd	a6,-88(a5)
	ld	s3,-80(a4)
	sgtu	t5,t5,a6
	sgtu	t0,t2,t0

	mulhu	s3,a3,s3
	mul	a6,a3,s3

	add	t0,t0,s4
	add	t0,t5,t0
	add	a6,t0,a6
	add	t5,t4,a6
	sd	t5,-80(a5)
	ld	s2,-72(a4)
	sgtu	t4,t4,t5
	sgtu	a6,t0,a6

	mulhu	s2,a3,s2
	mul	t5,a3,s2

	add	a6,a6,s3
	add	a6,t4,a6
	add	t5,a6,t5
	add	t4,t6,t5
	sd	t4,-72(a5)
	ld	t2,-64(a4)
	sgtu	t6,t6,t4
	sgtu	t5,a6,t5

	mulhu	t2,a3,t2
	mul	t4,a3,t2

	add	t5,t5,s2
	add	t5,t6,t5
	add	t4,t5,t4
	add	a6,t1,t4
	sd	a6,-64(a5)
	ld	t0,-56(a4)
	sgtu	t1,t1,a6
	sgtu	t4,t5,t4
	mul	a6,a3,t0
	add	t4,t4,t2
	add	t4,t1,t4
	add	a6,t4,a6
	add	t1,t3,a6
	sd	t1,-56(a5)
	ld	t6,-48(a4)
	mulhu	t0,a3,t0
	sgtu	t3,t3,t1
	sgtu	a6,t4,a6

	mulhu	t4,a3,t6
	mul	t1,a3,t6

	add	a6,a6,t0
	add	a6,t3,a6
	add	t1,a6,t1
	add	t0,a7,t1
	sd	t0,-48(a5)
	ld	t5,-40(a4)
	sgtu	t1,a6,t1
	ld	t2,-40(a5)
	sgtu	t0,a7,t0
	ld	t6,-32(a5)
	ld	a6,-24(a5)
	ld	t3,-16(a5)
	ld	a7,-8(a5)

	mulhu	t0,a3,t5
	mul	s2,a3,t5

	add	t1,t1,t4
	add	t1,t0,t1
	add	s2,t1,s2
	add	s3,t2,s2
	sd	s3,-40(a5)
	ld	t4,-32(a4)
	sgtu	t1,t1,s2
	sgtu	t2,t2,s3

	mulhu	t5,a3,t4
	mul	t5,a3,t4

	add	t1,t1,t0
	add	t0,t2,t1
	add	t2,t0,t5
	add	s2,t6,t2
	sd	s2,-32(a5)
	ld	t1,-24(a4)
	sgtu	t0,t0,t2
	sgtu	t6,t6,s2

	mulhu	t4,a3,t1
	mul	t4,a3,t1

	add	t0,t0,t5
	add	t5,t6,t0
	add	t0,t5,t4
	add	t2,a6,t0
	sd	t2,-24(a5)
	ld	t6,-16(a4)
	sgtu	t5,t5,t0
	sgtu	a6,a6,t2

	mulhu	t6,a3,t6
	mul	t1,a3,t6

	add	t5,t5,t4
	add	t4,a6,t5
	add	t1,t4,t1
	add	t5,t3,t1
	sd	t5,-16(a5)
	ld	a6,-8(a4)
	sgtu	t3,t3,t5
	sgtu	t4,t4,t1

	mulhu	a6,a3,a6
	mul	t5,a3,a6

	add	t4,t4,t6
	add	t1,t3,t4
	add	t3,t1,t5
	add	t4,a7,t3
	sgtu	t1,t1,t3
	sgtu	a7,a7,t4
	sd	t4,-8(a5)
	add	t1,t1,a6
	add	a6,a7,t1
	bgtu	s0,s1,.L1406
	addi	a5,a0,-16
	srli	a5,a5,4
	addi	a5,a5,1
	slli	a5,a5,7
	add	a1,a1,a5
	add	a2,a2,a5
	andi	a0,a0,15
.L1405:
	li	a5,7
	bleu	a0,a5,.L1407
	ld	s0,0(a1)
	ld	t6,0(a2)
	ld	t4,8(a2)
	mul	t0,a3,s0
	ld	t3,16(a2)
	ld	t1,24(a2)
	ld	a7,32(a2)
	ld	a4,40(a2)
	ld	a5,48(a2)
	ld	t5,56(a2)
	addi	a2,a2,64
	addi	a0,a0,-8
	addi	a1,a1,64
	add	t0,a6,t0
	add	s1,t6,t0
	sd	s1,-64(a2)
	ld	t2,-56(a1)
	mulhu	s0,a3,s0
	sgtu	a6,a6,t0
	sgtu	t6,t6,s1

	mulhu	t2,a3,t2
	mul	t0,a3,t2

	add	a6,a6,s0
	add	a6,t6,a6
	add	t0,a6,t0
	add	s0,t0,t4
	sd	s0,-56(a2)
	ld	t6,-48(a1)
	sgtu	a6,a6,t0
	sgtu	t4,t4,s0

	mulhu	t6,a3,t6
	mul	t0,a3,t6

	add	a6,t2,a6
	add	t4,t4,a6
	add	t0,t4,t0
	add	t2,t0,t3
	sd	t2,-48(a2)
	ld	a6,-40(a1)
	sgtu	t4,t4,t0
	sgtu	t3,t3,t2

	mulhu	a6,a3,a6
	mul	t0,a3,a6

	add	t4,t6,t4
	add	t3,t3,t4
	add	t6,t3,t0
	add	t0,t6,t1
	sd	t0,-40(a2)
	ld	t4,-32(a1)
	sgtu	t3,t3,t6
	sgtu	t1,t1,t0

	mulhu	t4,a3,t4
	mul	t6,a3,t4

	add	t3,a6,t3
	add	t1,t1,t3
	add	t3,t1,t6
	add	t6,t3,a7
	sd	t6,-32(a2)
	ld	a6,-24(a1)
	sgtu	t1,t1,t3
	sgtu	a7,a7,t6

	mulhu	a6,a3,a6
	mul	t3,a3,a6

	add	t1,t4,t1
	add	a7,a7,t1
	add	t3,a7,t3
	add	t4,t3,a4
	sd	t4,-24(a2)
	ld	t1,-16(a1)
	sgtu	a7,a7,t3
	sgtu	a4,a4,t4

	mulhu	t1,a3,t1
	mul	t3,a3,t1

	add	a7,a6,a7
	add	a4,a4,a7
	add	a7,a4,t3
	add	t3,a7,a5
	sd	t3,-16(a2)
	ld	a6,-8(a1)
	sgtu	a4,a4,a7
	sgtu	a5,a5,t3

	mulhu	a6,a3,a6
	mul	a7,a3,a6

	add	a4,t1,a4
	add	a5,a5,a4
	add	a4,a5,a7
	add	a7,a4,t5
	sgtu	a5,a5,a4
	sgtu	t5,t5,a7
	sd	a7,-8(a2)
	add	a5,a6,a5
	add	a6,t5,a5
.L1407:
	beq	a0,zero,.L1410
	ld	a7,0(a1)
	ld	a4,0(a2)
	addi	t1,a0,-1
	
	mul	a5,a3,a7
	mulhu	a7,a3,a7

	add	a5,a5,a6
	sltu	a6,a5,a6
	add	a5,a4,a5
	sltu	a4,a5,a4
	sd	a5,0(a2)
	add	a7,a6,a7
	add	a6,a4,a7
	beq	t1,zero,.L1409
	ld	a7,8(a1)
	ld	a4,8(a2)
	addi	t1,a0,-2
	mul	a5,a3,a7
	mulhu	a7,a3,a7
	add	a5,a5,a6
	sltu	a6,a5,a6
	add	a5,a4,a5
	sltu	a4,a5,a4
	sd	a5,8(a2)
	add	a7,a6,a7
	add	a6,a4,a7
	beq	t1,zero,.L1409
	ld	a7,16(a1)
	ld	a4,16(a2)
	addi	t1,a0,-3
	mul	a5,a3,a7
	mulhu	a7,a3,a7
	add	a5,a5,a6
	sltu	a6,a5,a6
	add	a5,a4,a5
	sltu	a4,a5,a4
	sd	a5,16(a2)
	add	a7,a6,a7
	add	a6,a4,a7
	beq	t1,zero,.L1409
	ld	a7,24(a1)
	ld	a4,24(a2)
	addi	t1,a0,-4
	mul	a5,a3,a7
	mulhu	a7,a3,a7
	add	a5,a5,a6
	sltu	a6,a5,a6
	add	a5,a4,a5
	sltu	a4,a5,a4
	sd	a5,24(a2)
	add	a7,a6,a7
	add	a6,a4,a7
	beq	t1,zero,.L1409
	ld	a4,32(a1)
	ld	a7,32(a2)
	addi	t1,a0,-5
	mul	a5,a3,a4
	mulhu	a4,a3,a4
	add	a5,a6,a5
	sgtu	a6,a6,a5
	add	a5,a7,a5
	sgtu	a7,a7,a5
	sd	a5,32(a2)
	add	a6,a4,a6
	add	a6,a7,a6
	beq	t1,zero,.L1409
	ld	a4,40(a1)
	ld	a7,40(a2)
	li	t3,1
	mul	a5,a3,a4
	mulhu	a4,a3,a4
	add	a5,a6,a5
	sgtu	a6,a6,a5
	add	a5,a5,a7
	sgtu	a7,a7,a5
	sd	a5,40(a2)
	add	a6,a4,a6
	add	a6,a7,a6
	beq	t1,t3,.L1409
	ld	a1,48(a1)
	ld	a4,48(a2)
	mul	a5,a3,a1
	mulhu	a3,a3,a1
	add	a5,a5,a6
	sltu	a6,a5,a6
	add	a5,a4,a5
	sgtu	a4,a4,a5
	sd	a5,48(a2)
	add	a3,a6,a3
	add	a6,a4,a3
.L1409:
	slli	a0,a0,3
	add	a2,a2,a0
	ld	a5,0(a2)
	addi	a2,a2,8
	add	a5,a6,a5
	sd	a5,-8(a2)
	bgeu	a5,a6,.L1433
.L1412:
	li	a6,1
.L1410:
	ld	a5,0(a2)
	addi	a2,a2,8
	add	a5,a6,a5
	sd	a5,-8(a2)
	bltu	a5,a6,.L1412
.L1433:
	ld	s0,72(sp)
	ld	s1,64(sp)
	ld	s2,56(sp)
	ld	s3,48(sp)
	ld	s4,40(sp)
	ld	s5,32(sp)
	ld	s6,24(sp)
	ld	s7,16(sp)
	ld	s8,8(sp)
	ld	s9,0(sp)
	addi	sp,sp,80
	jr	ra
.L1411:
	li	a6,0
	j	.L1405
	.size	mpi_mul_hlp_asm, .-mpi_mul_hlp_asm
