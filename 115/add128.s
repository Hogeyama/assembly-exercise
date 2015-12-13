.text
	.align 2
	.globl add128, test

test:
add128: # %r3=m, %r4=n
	ld   %r6, 8(%r3)   # a[1]
	ld   %r7, 0(%r3)   # a[0]
	ld   %r8, 8(%r4)   # b[1]
	ld   %r9, 0(%r4)   # b[0]
	addc %r3, %r6, %r8 # c[1]
	adde %r4, %r7, %r9 # c[0]
	std  %r3, 8(%r5)
	std  %r4, 0(%r5)
	blr
