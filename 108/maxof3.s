.text
	.align 2
	.globl maxof3, maxof2
maxof3:
	mflr %r0               # %r0 <- LR
	std  %r0,  16(%r1)     # %r0 -> M(%r1+16)   LRを退避
	std  %r31, -8(%r1)     # %r31 -> M(%r1-8)   %r31は不揮発なので退避
	stdu %r1,  -144(%r1)   # スタックをのばす
	mr   %r31, %r1         # %r31 <- %r1        スタックの底をさす
	
	stw  %r3,  112(%r31)   # 底から112にxを退避
	stw  %r4,  120(%r31)   # 底から120にyを退避
	stw  %r5,  128(%r31)   # 底から128にzを退避
	bl maxof2              # %r3  <- maxof2(x,y)
	lwz  %r4,  128(%r31)   # %r4  <- z          %r31は変化がないことが保証されている(不揮発)
	bl maxof2              # %r3  <- maxof3(x,y,z)
	
	addi %r1,  %r31, 144   # スタックを戻す
	ld   %r0,  16(%r1)     # %r0 <- M(%r1+16)   退避していたLRをload
	mtlr %r0               # %r0 -> LR
	ld   %r31, -8(%r1)     # %r31 <- M(%r1-8)   退避していた古い%r31を戻す
	blr

maxof2:
	mr   %r10, %r3
	mr   %r9,  %r4
	cmpw %cr7, %r3,%r4
	bge  %cr7, .end
	mr   %r3,  %r4
.end:
	blr
