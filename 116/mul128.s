.text
	.align 2
	.globl mul128

mul128:
	#init
	ld   %r6, 0(%r3)      # a[0]
	ld   %r7, 8(%r3)      # a[1]
	ld   %r8, 0(%r4)      # b[0]
	ld   %r9, 8(%r4)      # b[1] これ以降%r3,%r4は使って良い

	#c[0]
	mulld %r3, %r6, %r8   # (a0b0)_l
	std  %r3, 0(%r5)

	#c[1]
	mulhdu %r10, %r6, %r8 # (a0b0)_h
	mulld  %r11, %r7, %r8 # (a1b0)_l
	mulld  %r12, %r6, %r9 # (a0b1)_l
	li     %r3, 0         # %r3にcarryを保存 (carryが2になりうるのでCAでは無理？)
	addc   %r10, %r10, %r11
	addze  %r3, %r3
	addc   %r10, %r10, %r12
	addze  %r3, %r3
	std    %r10, 8(%r5)

	#c[2]
	mulhdu %r10, %r7, %r8 # (a1b0)_h
	mulhdu %r11, %r6, %r9 # (a0b1)_h
	mulld  %r12, %r7, %r9 # (a1b0)_u
	li     %r4, 0
	addc   %r10, %r10, %r3
	addze  %r4, %r4
	addc   %r10, %r10, %r11
	addze  %r4, %r4
	addc   %r10, %r10, %r12
	addze  %r4, %r4
	std    %r10, 16(%r5)

	#c[3]
	mulhdu %r12, %r7, %r9  # (a1b0)_h
	add    %r12, %r12, %r4
	std    %r12, 24(%r5)

	blr
