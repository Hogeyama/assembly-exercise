.text
	.align 2
	.globl inner_s
inner_s:
	li    %r6, 0
	std   %r6, -8(%r1)
	lfd   %f1, -8(%r1)        # ans <- 0
	mulli %r5, %r5, 8
.loop:
	cmpwi %r5, 0              # if i == 0 return %f1
	beq .end
	subi  %r5, %r5, 8         # i--
	lfdx  %f2, %r3, %r5       # x <- a[i]
	lfdx  %f3, %r4, %r5       # y <- b[i]
	fmadd %f1, %f2, %f3, %f1  # ans <- x*y + ans
	b .loop
.end:
	blr
