	.file	"c1-1.c"
	.section	".toc","aw"
	.section	".text"
	.section	.rodata
	.align 3
.LC0:
	.string	"%d + %d = %d\n"
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
	stdu 1,-144(1)
	mr 31,1
	li 9,1
	stw 9,112(31)
	li 9,2
	stw 9,116(31)
	li 9,0
	stw 9,120(31)
	lwz 10,112(31)
	lwz 9,116(31)
	add 9,10,9
	stw 9,120(31)
	lwz 9,112(31)
	extsw 8,9
	lwz 9,116(31)
	extsw 10,9
	lwz 9,120(31)
	extsw 9,9
	ld 3,.LC1@toc(2)
	mr 4,8
	mr 5,10
	mr 6,9
	bl printf
	nop
	mr 3,9
	addi 1,31,144
	ld 0,16(1)
	mtlr 0
	ld 31,-8(1)
	blr
	.long 0
	.byte 0,0,0,1,128,1,0,1
	.size	main,.-.L.main
	.ident	"GCC: (GNU) 4.8.2"
