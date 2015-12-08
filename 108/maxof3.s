.text
	.align 2
	.globl maxof3, maxof2
maxof3:
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-144(1)
	mr 31,1
	mr 8,3
	mr 10,4
	mr 9,5
	stw 8,192(31)
	stw 10,200(31)
	stw 9,208(31)
	lwz 9,192(31)
	extsw 10,9
	lwz 9,200(31)
	extsw 9,9
	mr 3,10
	mr 4,9
	bl maxof2
	nop
	mr 9,3
	stw 9,112(31)
	lwz 9,112(31)
	extsw 10,9
	lwz 9,208(31)
	extsw 9,9
	mr 3,10
	mr 4,9
	bl maxof2
	nop
	mr 9,3
	mr 3,9
	addi 1,31,144
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
maxof2:
	mr   %r10, %r3
	mr   %r9,  %r4
	cmpw %cr7, %r3,%r4
	bge  %cr7, .end
	mr   %r3,  %r4
.end:
	blr
