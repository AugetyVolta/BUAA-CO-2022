.macro getInt(%src)
	li $v0,5
	syscall
	move %src,$v0
.end_macro

.macro printInt(%src)
	li $v0,1
	move $a0,%src
	syscall
.end_macro

.macro printString(%src)
	la $a0,%src
	li $v0,4
	syscall
.end_macro

.data
	str1: .asciiz "small\n"
	str2: .asciiz "big\n"
	enter: .asciiz "\n"
.text
	getInt($s0)		# n
if:
	bge $s0,100,else_if
	nop
	printString(str1)
	j end
	nop
else_if:
	ble $s0,999,else
	nop
	printString(str2)
	j end
	nop
else:
	li $t0,10
	div $s0,$t0
	mfhi $t1
	mflo $s0
	printInt($t1)
	
	li $t0,10
	div $s0,$t0
	mfhi $t1
	mflo $s0
	printInt($t1)
	
	li $t0,10
	div $s0,$t0
	mfhi $t1
	mflo $s0
	printInt($t1)

end:
	printString(enter)
	li $v0,10
	syscall
  