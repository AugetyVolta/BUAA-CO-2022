.data
 	input: .space 100
 	str: .space 100
 .text
	la $a0,input 
 	li $v0,8
 	li $a1,100
 	syscall
 	la $t0,str
 	la $t1,input
for:
 	lb  $t2,0($t1)
 	beq $t2,10,end_for
 	nop
 	li $s1,0
	li $s0,123
	slt $s1,$t2,$s0 # char<=z
 	li $s0,95
 	li $s2,0
 	slt $s2,$s0,$t2 #char>=a
 	and $t3,$s1,$s2
 if:
 	beq $t3,1,else
 	nop
 end:
 	sb 	 $t2,0($t0)	
 	addi $t0,$t0,1
 	addi $t1,$t1,1
 	j for
 	nop
end_for:
	sb $t2,0($t0) # \0
	la $a0,str
 	li $v0,4
 	syscall
 	li $v0,10
 	syscall
 else:
 	addi $t2,$t2,-32
 	j end
 	nop