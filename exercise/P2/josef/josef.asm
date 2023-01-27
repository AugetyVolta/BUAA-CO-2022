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

.macro setInt(%index)
	sll $t6,%index,2
	addi $t7,$0,1
	sw $t7,symbol($t6)
.end_macro

.macro getsym(%src,%index)
	sll $t7,%index,2
	lw %src,symbol($t7)
.end_macro

.data
	symbol: .word 0:101
	enter: .asciiz "\n"
.text
	getInt($s0)		# n
	getInt($s1) 	# m
	li $t0,1		# i
	li $t1,0		# all
	li $t2,0		# cnt
while:
	beq $t1,$s0,end
	nop
	getsym($t3,$t0)
if1:
	bne $t3,$0,else1
	nop
	addi $t2,$t2,1
if2:
	bne $t2,$s1,else2
	nop
	printInt($t0)
	printString(enter)
	setInt($t0)
	li $t2,0
	addi $t1,$t1,1
else2:
else1:
	addi $t0,$t0,1
	addi $t5,$s0,1
if3:
	bne $t0,$t5,else3
	nop
	li $t0,1
else3:
	j while
	nop
end: 
	li $v0,10
	syscall