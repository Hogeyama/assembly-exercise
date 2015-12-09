.text
	.align 2
	.globl mystrcmp2
mystrcmp2:
	mflr %r0
	std  %r0,  16(%r1)
	stdu %r1,  -144(%r1)

	std  %r3,  112(%r1)    # 底から112にs1を退避
	std  %r4,  120(%r1)    # 底から120にs2を退避
	bl mystrlen
	stw  %r3,  128(%r1)    # strlen(s1)を退避
	ld   %r3,  120(%r1)
	bl mystrlen            # r3 <- strlen(s2)
	lwz  %r4,  128(%r1)    # r4 <- strlen(s1)
	cmpw %r4, %r3
	bgt  .case1_mystrcmp2
	blt  .case2_mystrcmp2
	subi %r4, %r4, 1
	subi %r3, %r3, 1
	ld   %r6,  112(%r1)
	ld   %r5,  120(%r1)
	lbzx  %r4,  %r4, %r6    # r4 <- s1[strlen(s1)-1]
	lbzx  %r3,  %r3, %r5    # r3 <- s2[strlen(s2)-1]
	sub   %r3,  %r3, %r4
	b .end_mystrcmp2
.case1_mystrcmp2:
	li %r3, 1
	b .end_mystrcmp2
.case2_mystrcmp2:
	li %r3, -1
	b .end_mystrcmp2
.end_mystrcmp2:
	addi %r1,  %r1, 144
	ld   %r0,  16(%r1)
	mtlr %r0
	blr
