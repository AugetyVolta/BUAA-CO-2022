.macro setvalue(%i,%j,%mat,%value,%n)
	mult %i,%n
	mflo $t7
	add $t7,$t7,%j
	sll $t7,$t7,2
	sw %value,%mat($t7)
.end_macro
.macro getvalue(%i,%j,%mat,%value,%n)
	mult %i,%n
	mflo $t7
	add $t7,$t7,%j
	sll $t7,$t7,2
	lw %value,%mat($t7)
.end_macro
.data
	mat1: .space 484
	mat2: .space 484
	mat3: .space 484
	space: .asciiz " "
	enter: .asciiz "\n"
.text
	li $v0,5
	syscall
	move $s0,$v0    # m1
	li $v0,5
	syscall
	move $s1,$v0	# n1
	li $v0,5
	syscall
	move $s2,$v0	# m2
	li $v0,5
	syscall
	move $s3,$v0	# n2
	
	li $t0,0		# i=0
	li $t1,0		# j=0
for_i:
	beq $t0,$s0,end_i
	nop
	li $t1,0
for_j:
	beq $t1,$s1,end_j
	nop
	li $v0,5
	syscall
	setvalue($t0,$t1,mat1,$v0,$s1)
	addi $t1,$t1,1
	j for_j
	nop
end_j:	
	addi $t0,$t0,1
	j for_i
	nop		
end_i:
	
	li $t0,0		# i=0
	li $t1,0		# j=0
for_i1:
	beq $t0,$s2,end_i1
	nop
	li $t1,0
for_j1:
	beq $t1,$s3,end_j1
	nop
	li $v0,5
	syscall
	setvalue($t0,$t1,mat2,$v0,$s3)
	addi $t1,$t1,1
	j for_j1
	nop
end_j1:	
	addi $t0,$t0,1
	j for_i1
	nop		
end_i1:

	li $t0,0	# i
	li $t1,0	# j
	li $t2,0	# k
	li $t3,0	# l
	li $t4,0	# ans
loop1:
	beq $t0,$s0,end1
	nop
	li $t1,0
loop2:
	beq $t1,$s1,end2
	nop
	li $t2,0
loop3:
	beq $t2,$s2,end3
	nop
	li $t3,0
loop4:
	beq $t3,$s3,end4
	nop
	li $t5,0
	li $t6,0
	add $t5,$t0,$t2	# i+k
	add $t6,$t1,$t3	# j+l
	getvalue($t5,$t6,mat1,$t5,$s1) # a[i+k][j+l]
	getvalue($t2,$t3,mat2,$t6,$s3) # b[k][l]
	mult $t5,$t6
	mflo $t5
	add $t4,$t4,$t5		# ans=ans+a[i+k][j+l]*b[k][l]
	addi $t3,$t3,1
	j loop4
	nop
end4:
	addi $t2,$t2,1
	j loop3
	nop
end3:
	sub $t6,$s1,$s3
	addi $t6,$t6,1
	setvalue($t0,$t1,mat3,$t4,$t6)
	li $t4,0
	addi $t1,$t1,1
	j loop2
	nop
end2:
	addi $t0,$t0,1
	j loop1
	nop
end1:
			
	li $t0,0		# i=0
	li $t1,0		# j=0
	sub $t5,$s0,$s2 # m1-m2-1
	addi $t5,$t5,1
	sub $t6,$s1,$s3 # n1-n2-1
	addi $t6,$t6,1
for_i2:
	beq $t0,$t5,end_i2
	nop
	li $t1,0
for_j2:
	beq $t1,$t6,end_j2
	nop
	getvalue($t0,$t1,mat3,$a0,$t6)
	li $v0,1
	syscall
	la $a0,space
	li $v0,4
	syscall
	addi $t1,$t1,1
	j for_j2
	nop
end_j2:	
	li $v0,4
	la $a0,enter
	syscall
	addi $t0,$t0,1
	j for_i2
	nop		
end_i2:																							
	li $v0,10
	syscall	
