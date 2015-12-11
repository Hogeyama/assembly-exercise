.text
	.align 2
	.globl fact

fact:
	cmpwi %r3, 0
	beq .basecase

	mflr  %r0
	std   %r0,  16(%r1)
	stdu  %r1,  -64(%r1)

	stw   %r3,  56(%r1)
	subi  %r3,  %r3, 1
	bl fact                # %r3 <- fact(i-1)
	lwz   %r4,  56(%r1)    # %r4 <- i
	mullw %r3, %r3, %r4

	addi %r1,  %r1, 64
	ld   %r0,  16(%r1)
	mtlr %r0
	blr

.basecase:
	li    %r3, 1
	blr
