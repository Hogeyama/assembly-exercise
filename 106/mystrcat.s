.text
	.align 2
	.globl mystrcat
mystrcat:
	li %r5 ,0               # i = 0
	li %r6 ,0               # j = 0
.loopi:
	lbzx  %r7, %r3, %r5     # x <- s1[i]
	cmpwi %r7, 0            # if x == '\0'
	beq   .loopj            # break
	addi  %r5,  %r5, 1      # i++
	b .loopi
.loopj:
	lbzx  %r7, %r4, %r6     # x <- s2[j]
	stbx  %r7, %r5, %r3     # x -> s1[i]
	cmpwi %r7, 0            # if x == '\0'
	beq   .end              # break
	addi  %r5,  %r5, 1      # i++
	addi  %r6,  %r6, 1      # j++
	b .loopj
.end:
	blr



