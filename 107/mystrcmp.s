.text
	.align 2
	.globl mystrcmp
mystrcmp:
	li %r5 ,0               # i = 0
.loop:
	lbzx  %r6,  %r3, %r5    # x <- str[i]
	lbzx  %r7,  %r4, %r5    # y <- str[i]
	cmpwi %cr7, %r6, 0      # if x == 0
	beq   %cr7, .end        #   break;
	cmpwi %cr7, %r7, 0      # if y == 0
	beq   %cr7, .end        #   break;
	cmpw  %cr7, %r6, %r7    # if x != y
	bne   %cr7, .end        #   break;
	addi  %r5,  %r5, 1      # i++
	b .loop
.end:
	sub %r3, %r6, %r7
	blr
