.macro readInt(%src)
	li $v0,5
	syscall
	move %src,$v0
.end_macro

.macro setInt(%src,%index,%array)
	sll $t7,%index,2
	sw %src,%array($t7)
.end_macro

.macro getInt(%src,%index,%array)
	sll $t7,%index,2
	lw %src,%array($t7)
.end_macro

.macro printChar(%src)
	move $a0,%src
	li $v0,11
	syscall
.end_macro

.macro readChar(%src)
	li $v0,12
	syscall
	move %src,$v0
.end_macro

.macro printString(%src)
	la $a0,%src
	li $v0,4
	syscall 
.end_macro

.macro printInt(%src)
	move $a0,%src
	li $v0,1
	syscall
.end_macro
.data
	str: .word 0:101
	cnt: .word 0:30
	flag: .word 0:30
	space: .asciiz " "
	enter: .asciiz "\n"
.text
	readInt($s0)		# n
	li $t0,0
	li $s1,0		# count
loop1:
	beq $t0,$s0,endloop1
	nop
	
	readChar($t1)
	addi $t1,$t1,-97
	getInt($t2,$t1,cnt)
	addi $t2,$t2,1
	setInt($t2,$t1,cnt)
	setInt($t1,$s1,str)
	addi $s1,$s1,1
	
	addi $t0,$t0,1
	j loop1
	nop
endloop1:
	li $t0,0
loop2:
	beq $t0,$s1,endloop2
	nop

	getInt($t1,$t0,str)		# str[i]
	getInt($t2,$t1,flag)
if:
	bne $t2,0,else
	nop
	addi $t3,$t1,97
	printChar($t3)
	printString(space)
	getInt($t3,$t1,cnt)
	printInt($t3)
	printString(enter)
	li $t3,1
	setInt($t3,$t1,flag)

else:

	addi $t0,$t0,1
	j loop2
	nop
endloop2:
	li $v0,10
	syscall