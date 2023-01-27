li $v0,5
syscall
move $s0,$v0		# n
if:
bgt $s0,3,else
nop
	li $a0,1
	li $v0,1
	syscall
	li $v0,10
	syscall
else:
	li $t0,2
loop:
	li $t5,142
	slt $t3,$t0,$t5
	slt $t4,$t0,$s0
	and $t3,$t3,$t4
	bne $t3,1,endloop
	nop
	div $s0,$t0
	mfhi $t2
if1:
	bne $t2,0,else1
	nop
	li $a0,0
	li $v0,1
	syscall
	li $v0,10
	syscall
else1:
	addi $t0,$t0,1
	j loop
	nop
endloop:
    li $a0,1
    li $v0,1
    syscall
	li $v0,10
	syscall