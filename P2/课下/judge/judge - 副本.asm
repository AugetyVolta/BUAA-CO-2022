.macro setchar(%i,%str,%char)
	sb %char,%str(%i)
.end_macro
.macro getchar(%i,%str,%char)
	lb %char,%str(%i)
.end_macro
.data
	str: .space 20
	str1: .space 3
.text
	li $s0,0
	li $v0,5
	syscall
	move $s0,$v0  # n
	li $t0,0 # i
loop:
	beq $t0,$s0,end_loop
	nop
	la $a0,str1
	li $a1,3
	li $v0,8
	syscall
	lb $v0,str1
	setchar($t0,str,$v0)
	addi $t0,$t0,1
	j loop
	nop
end_loop:
	
	li $t0,0  # i=0
	li $t1,2
	div $s0,$t1
	mflo $t1  # n/2
loop2:                   #for(i=0;i<n/2)
	beq $t0,$t1,end_loop2
	nop
	subi $t4,$s0,1        # n-1
	sub  $t4,$t4,$t0      # n-i-1
	getchar($t0,str,$t3)  # str[i]
	getchar($t4,str,$t5)  # str[n-i-1]
if1:                      # if(str[i]==str[n-i-1])
	bne $t3,$t5,else1
	nop
	addi $t0,$t0,1			# i++
	j ifto
	nop      
else1:					   # else break
	j end_loop2
	nop
ifto:
	j loop2
	nop
end_loop2:
if2:
	bne $t0,$t1,else2
	nop
	li $v0,1
	li $a0,1
	syscall
	j end
	nop
else2:
	li $v0,1
	li $a0,0
	syscall
	j end
	nop
end:
	li $v0,10
	syscall
