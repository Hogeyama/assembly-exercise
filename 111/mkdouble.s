.text
	.align 2
	.globl mkdouble
mkdouble:
	mflr  %r0
	std   %r0,  16(%r1)
	stdu  %r1,  -144(%r1)

	sldi  %r3, %r3, 11   # hogehoge + sign(1bit) + 0s(11bit)
	add   %r3, %r3, %r4  # hogehoge + sign(1bit) + exponent(11bit)
	sldi  %r3, %r3, 52   # sign(1bit) + exponent(11bit) + 0s(52bit)
	add   %r3, %r3, %r5  # sign(1bit) + exponent(11bit) + fraction(52bit)

	std   %r3,  56(%r1)
	lfd   %f1,  56(%r1)
	ld    %r3,  56(%r1)

	addi %r1,  %r1, 144
	ld   %r0,  16(%r1)
	mtlr %r0
	blr

