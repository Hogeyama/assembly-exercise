.text
	.align 2
	.globl maxof2
maxof2:
	mr   %r10, %r3
	mr   %r9,  %r4
	cmpw %cr7, %r3,%r4
	bge  %cr7, .hoge
	mr   %r3,  %r4
.hoge:
	blr
