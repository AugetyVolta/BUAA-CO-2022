.data
	str: .space 100
.text
	la $a0,str
	li $a1,100
	li $v0,8
	syscall
	la $t1,str  #as the begin of str
for:
	lb $s2,0($t1)
	beq $s2,10,end
	nop
if_1:
	slti $t2,$s2,123 #e<123
	beq $t2,1,if_2
	nop
	j default
	nop
if_2:
	li $t3,95
	slt $t2,$t3,$s2
	beq $t2,1,else
	nop
	j default
	nop
else:
	addi $s2,$s2,-32
	sb $s2,0($t1)
default:
	addi $t1,$t1,1
	j for
	nop
end:
	la $a0,str
	li $v0,4
	syscall

