.text
	.align 2
	.globl mystrcat2
mystrcat2:
	mflr  %r0
	std   %r0, 16(%r1)
	stdu  %r1, -144(%r1)
	std   %r3, 112(%r1) # s1
	std   %r4, 120(%r1) # s2
	bl mystrlen         # i:%r3 <- strlen(s1)
	li    %r4, 0        # j:%r4 <- 0
	ld    %r5, 112(%r1) # %r5 <- s1
	ld    %r6, 120(%r1) # %r6 <- s2
.loop:
	lbzx  %r7, %r6, %r4 # %r7 <- s2[j]
	stbx  %r7, %r5, %r3 # %r7 -> s1[i]
	cmpwi %r7, 0
	beq   .end
	addi  %r3, %r3, 1   # i++
	addi  %r4, %r4, 1   # j++
	b .loop
.end:
	mr    %r3, %r5
	addi  %r1, %r1, 144
	ld    %r0, 16(%r1)
	mtlr  %r0
	blr
