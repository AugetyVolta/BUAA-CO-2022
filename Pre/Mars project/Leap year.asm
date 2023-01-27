# if(year%400==?)
#else if(year%4==0&&year%100!=0)
.data

.text
	li $t5,400
	li $t6,4
	li $t7,100
	li $v0,5
	syscall
	move $t0,$v0 # t0 is year 
	div $t0,$t5
	mfhi $t1
	bne $t1,$zero,else_if
	nop
	if:
		j success
		nop
	else_if:
		div $t0,$t6
		mfhi $t1
		beq $t1,$zero,else_if_if #year %4==0
		nop
		j fail
		nop
	else_if_if: #year %100!=0
		div $t0,$t7
		mfhi $t1
		beq $t1,$0,fail
		nop
		
		j success	
		nop
	success:
		li $a0,1
		li $v0,1
		syscall
		nop
		li $v0,10
		syscall
	fail:
		li $a0,0
		li $v0,1
		syscall
		nop
		li $v0,10
		syscall