.text
	.align 2
	.globl fib

fib:
	cmpwi %r3, 0
	beq .basecase0
	cmpwi %r3, 1
	beq .basecase1

	mflr  %r0
	std   %r0,  16(%r1)
	stdu  %r1,  -80(%r1)

	stw   %r3,  56(%r1)    # i -> 56
	subi  %r3,  %r3, 1
	bl fib
	stw   %r3,  60(%r1)    # 60 <- fib(i-1)
	lwz   %r3,  56(%r1)    # r3 <- i
	subi  %r3,  %r3, 2
	bl fib                 #%r3 <- fib(i-2)
	lwz  %r4,  60(%r1)     #%r4 <- fib(i-1)
	add  %r3,  %r3,  %r4

	addi %r1,  %r1, 80
	ld   %r0,  16(%r1)
	mtlr %r0
	blr

.basecase0:
	li    %r3, 0
	blr
.basecase1:
	li    %r3, 1
	blr
