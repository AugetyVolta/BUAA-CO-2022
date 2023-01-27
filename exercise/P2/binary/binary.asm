.macro setArray(%src,%index)
	sll $t7,%index,2
	sw %src,array($t7)
.end_macro

.macro getArray(%src,%index)
	sll $t7,%index,2
	lw %src,array($t7)
.end_macro

.macro getInt(%src)
	li $v0,5
	syscall
	move %src,$v0
.end_macro

.macro printString(%src)
	push($a0)
	la $a0,%src
	li $v0,4
	syscall
	pop($a0)
.end_macro

.macro printInt(%src)
	push($a0)
	move $a0,%src
	li $v0,1
	syscall
	pop($a0)
.end_macro

.macro push(%src)
	sw %src,0($sp)
	addi $sp,$sp,-4	
.end_macro

.macro pop(%src)
	addi $sp,$sp,4
	lw %src,0($sp)
.end_macro

.data
	array: .word 0:1005
	enter: .asciiz "\n"
.text
	getInt($s0)		# n
	li $t0,0		# i
loop1:
	beq $t0,$s0,end1
	nop
	getInt($t1)
	setArray($t1,$t0)
	addi $t0,$t0,1
	j loop1
	nop
end1:
	getInt($s1)		# n1
	li $t0,0
loop2:
	beq $t0,$s1,end2
	nop
	push($t0)
	getInt($a0)		# key
	jal binary
	nop
	pop($t0)
	addi $t0,$t0,1
	j loop2
	nop
end2:
	li $v0,10
	syscall
	
binary:
	li $t0,0		# low=0
	addi $t1,$s0,-1		# high=n-1
	move $t2,$a0		# key
while:
	bgt $t0,$t1,endwhile
	nop
	add $t3,$t0,$t1
	li $t6,2
	div $t3,$t6
	mflo $t3		# mid=()/2
	getArray($t4,$t3)		# a[mid]
if:
	bge $t2,$t4,else_if
	nop
	addi $t1,$t3,-1
	j else
	nop
else_if:
	ble $t2,$t4,else_if1
	nop
	addi $t0,$t3,1
	j else
	nop
else_if1:
	bne $t2,$t4,else
	li $t6,1
	printInt($t6)
	printString(enter)
	jr $ra
	nop
else:
	j while
	nop
endwhile:
	li $t6,0
	printInt($t6)
	printString(enter)
	jr $ra
	nop
	