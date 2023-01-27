.data #grade sort
str1: .asciiz "90-100\n"
str2: .asciiz "80-90\n"
str3: .asciiz "70-80\n"
str4: .asciiz "other\n"
.text
	li $t1,90
	li $t2,80
	li $t3,70
	li $v0,5
	syscall
	move $t0,$v0
	nop
	slt $s0,$t0,$t1
	beq $s0,1,else_if
	nop
if:	#if(t0>=90)
	#do something
	la $a0,str1
	li $v0,4
	syscall
	j end
else_if: #else if(t0>=80)
	slt $s0,$t0,$t2
	beq $s0,1,else_if1
	nop
	#do something
	la $a0,str2
	li $v0,4
	syscall
	j end
else_if1:	#else if(t0>=70)
	slt $s0,$t0,$t3
	beq $s0,1,else
	nop
	#do something
	la $a0,str3
	li $v0,4
	syscall
	j end
else:
	#do something
	la $a0,str4
	li $v0,4
	syscall
	j end
end:
	li $v0 10
	syscall
	