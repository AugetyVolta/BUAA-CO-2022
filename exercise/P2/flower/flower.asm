.data
	enter: .asciiz "\n"
.text
	li $v0,5
	syscall
	move $s0,$v0	# m
	li $v0,5
	syscall
	move $s1,$v0		# n
	move $t0,$s0		# i=m
	li $s2,10
for:
	beq $t0,$s1,end_for
	nop
	move $t2,$0		# ans=0
	move $t3,$t0	# tmp=i
	div  $t3,$s2	# tmp/10
	mfhi $t4
	mflo $t3
	mult $t4,$t4
	mflo $t5
	mult $t5,$t4
	mflo $t4
	add  $t2,$t2,$t4
	
	div  $t3,$s2	# tmp/10
	mfhi $t4
	mflo $t3
	mult $t4,$t4
	mflo $t5
	mult $t5,$t4
	mflo $t4
	add  $t2,$t2,$t4
	
	div  $t3,$s2	# tmp/10
	mfhi $t4
	mflo $t3
	mult $t4,$t4
	mflo $t5
	mult $t5,$t4
	mflo $t4
	add  $t2,$t2,$t4
if:
	bne $t2,$t0,else
	nop
	move $a0,$t2
	li $v0,1
	syscall
	la $a0,enter
	li $v0,4
	syscall
else:
	addi $t0,$t0,1
	j for
	nop
end_for:
	li $v0,10
	syscall
	
