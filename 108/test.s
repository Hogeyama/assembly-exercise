	.file	"test.c"
	.section	".toc","aw"
	.section	".text"
	.align 2
	.globl maxof3
	.section	".opd","aw"
	.align 3
maxof3:
	.quad	.L.maxof3,.TOC.@tocbase,0
	.previous
	.type	maxof3, @function
.L.maxof3:
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
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.size	maxof3,.-.L.maxof3
	.section	.rodata
	.align 3
.LC0:
	.string	"%d\n"
	.section	".toc","aw"
.LC1:
	.quad	.LC0
	.section	".text"
	.align 2
	.globl main
	.section	".opd","aw"
	.align 3
main:
	.quad	.L.main,.TOC.@tocbase,0
	.previous
	.type	main, @function
.L.main:
	mflr 0
	std 0,16(1)
	std 31,-8(1)
	stdu 1,-128(1)
	mr 31,1
	mr 9,3
	std 4,184(31)
	stw 9,176(31)
	li 3,1
	li 4,5
	li 5,3
	bl maxof3
	mr 9,3
	ld 3,.LC1@toc(2)
	mr 4,9
	bl printf
	nop
	li 9,0
	mr 3,9
	addi 1,31,128
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.size	main,.-.L.main
	.ident	"GCC: (GNU) 4.8.2"
