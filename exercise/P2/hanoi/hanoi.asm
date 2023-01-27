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

.macro printChar(%src)
	push($a0)
	move $a0,%src
	li $v0,11
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
	str1: .asciiz "move disk "
	str2: .asciiz " from "
	str3: .asciiz " to "
	enter: .asciiz "\n"
.text
	getInt($a0)		# n
	# move $a0,$s0		# base=n
	li $a1,65			# A
	li $a2,66			# B
	li $a3,67			# C
	jal hanoi
	nop
	li $v0,10
	syscall

hanoi:
if:
	bne $a0,$0,else
	nop
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	jal move1
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
	
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	move $a1,$a2	# via
	move $a2,$a3	# to
	jal move1
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
	
	jr $ra
	nop
else:
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	addi $a0,$a0,-1
	jal hanoi
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
	
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	jal move1
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
	
	
	
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	addi $a0,$a0,-1
	move $t1,$a3
	move $a3,$a1
	move $a1,$t1
	jal hanoi
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
	
	
	
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	move $a1,$a2	# via
	move $a2,$a3	# to
	jal move1
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)

	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	addi $a0,$a0,-1
	jal hanoi
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
	
	jr $ra
	
move1:
	printString(str1)
	printInt($a0)
	printString(str2)
	printChar($a1)
	printString(str3)
	printChar($a2)
	printString(enter)
	jr $ra
	

	