	li $v0,5
	syscall
	move $s0,$v0		# n
	li $t0,2
	li $t2,1		# mult
	li $t3,1		# sum
for:
	bgt $t0,$s0,end
	nop
	multu $t0,$t2
	mflo $t2
	addu $t3,$t3,$t2
	addi $t0,$t0,1
	j for
	nop
end:
	move $a0,$t3
	li $v0,36
	syscall
	li $v0,10
	syscall
	