.text
	.align 2
	.globl mystrlen
mystrlen:
	li %r4 ,0               # i = 0
.loop_mystrlen:
	lbzx  %r5,  %r4, %r3    # j = str[i]
	cmpwi %cr7, %r5, 0
	beq   %cr7, .end_mystrlen
	addi  %r4,  %r4, 1
	b .loop_mystrlen
.end_mystrlen:
	mr %r3, %r4
	blr
