.macro push(%src)
	sw %src,($sp)
	addi $sp,$sp,-4
.end_macro

.macro pop(%src)
	addi $sp,$sp,4
	lw %src,($sp)
.end_macro

.macro getInt(%src)
	li $v0,5
	syscall
	move %src,$v0
.end_macro

.macro printInt(%src)
	push($a0)
	li $v0,1
	move $a0,%src
	syscall
	pop($a0)
.end_macro

.macro printString(%src)
	push($a0)
	li $v0,4
	la $a0,%src
	syscall
	pop($a0)
.end_macro

.macro getInt1(%src,%index)
	sll $t7,%index,2
	lw %src,str($t7)
.end_macro

.macro setInt(%src,%index)
	sll $t7,%index,2
	sw %src,str($t7)
.end_macro 

.data 
	str: .word 0:100
	adder: .asciiz "+"
	enter: .asciiz "\n"
.text
	li $s2,0		# cnt=0
	getInt($s0)		# n
	move $s1,$s0	# r
	li $a0,1		# 1 ->n
	move $a1,$s0	# n	->m
	jal dfs
	nop
	li $v0,10
	syscall
	
dfs:

if1:
	bne $a1,$0,else1
	nop
	li $t0,0
loop1:
	beq $t0,$s2,end1
	nop
	getInt1($t6,$t0)
	printInt($t6)	
if2:
	addi $t6,$s2,-1
	beq $t0,$t6,else2
	nop
	printString(adder)
	j else
	nop
else2:
	printString(enter)
else:
	addi $t0,$t0,1
	j loop1
	nop
end1:
	jr $ra
	nop
else1:

	move $t0,$a0
loop2:
	sle $t5,$t0,$a1
	slt $t6,$t0,$s0
	and $t5,$t5,$t6
	bne $t5,1,end2
	nop
	setInt($t0,$s2)
	addi $s2,$s2,1
	push($a0)
	push($a1)
	push($ra)
	push($t0)
	move $a0,$t0
	sub $a1,$a1,$t0
	jal dfs
	nop
	pop($t0)
	pop($ra)
	pop($a1)
	pop($a0)
	addi $s2,$s2,-1
	addi $t0,$t0,1
	j loop2
	nop
end2:
	jr $ra
	nop