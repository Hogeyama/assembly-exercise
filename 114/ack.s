.text
	.align 2
	.globl ack

ack: # %r3=m, %r4=n
	cmpwi %r3, 0
	beq .basecase1
	cmpwi %r4, 0
	beq .basecase2

	mflr  %r0
	std   %r0,  16(%r1)
	stdu  %r1,  -80(%r1)

	subi  %r4, %r4, 1
	stw   %r3, 56(%r1)
	bl ack
	mr    %r4, %r3     # <- ack(m, n-1)
	lwz   %r3, 56(%r1)
	subi  %r3, %r3, 1
	bl ack             # <- ack(m-1, ack(m, n-1))

	addi %r1,  %r1, 80
	ld   %r0,  16(%r1)
	mtlr %r0
	blr

.basecase1: # ack(0, n) = n+1
	addi %r3, %r4, 1
	blr
.basecase2: # ack(m, 0) = ack(m-1, 1)
	subi %r3, %r3, 1
	li   %r4, 1
	b ack
