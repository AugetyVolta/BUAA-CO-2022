.macro getInt(%src)
	li $v0,5
	syscall
	move %src,$v0
.end_macro

.macro printInt(%src)
	move $a0,%src
	li $v0,1
	syscall
.end_macro

.macro printString(%src)
	la $a0,%src
	li $v0,4
	syscall
.end_macro

.macro addNum(%i,%j,%src,%n)
	mult %i,%n
	mflo $t7
	add $t7,$t7,%j
	sll $t7,$t7,2
	lw $t6,mat($t7)
	add $t6,$t6,%src
	sw $t6,mat($t7)
.end_macro

.macro getNum(%i,%j,%src,%n)
	mult %i,%n
	mflo $t7
	add $t7,$t7,%j
	sll $t7,$t7,2
	lw %src,mat($t7)
.end_macro

.macro setmat(%i,%j)
	li $t0,0
loop1:
	beq $t0,%i,end1
	nop
	li $t1,0
loop2:
	beq $t1,%j,end2
	nop
	getInt($t2)
	addNum($t0,$t1,$t2,$s1)
	addi $t1,$t1,1
	j loop2
	nop
end2:
	addi $t0,$t0,1
	j loop1
	nop
end1:
.end_macro



.data
	output: .asciiz "The result is:"
	enter: .asciiz "\n"
	space: .asciiz " "
	mat: .word 0:70
.text
	getInt($s0)		# m
	getInt($s1)		# n
	li $t0,0		# i=0
	li $t1,0		# j=0
	setmat($s0,$s1)
	setmat($s0,$s1)
	li $t0,0
	li $t1,0
	printString(output)
for1:
	beq $t0,$s1,end_for1
	nop
	li $t1,0
	printString(enter)
for2:
	beq $t1,$s0,end_for2
	nop	
	getNum($t1,$t0,$t2,$s1)
	printInt($t2)
	addi $t3,$s0,-1
if:
	beq $t1,$t3,else
	nop
	printString(space)
else:	
	addi $t1,$t1,1
	j for2
	nop
end_for2:
	addi $t0,$t0,1
	j for1
	nop
end_for1:	
	li $v0,10
	syscall

	