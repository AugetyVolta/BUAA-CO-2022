.data
.text
	li $t1,1
	li $t0,0
	slt $t2,$t1,$t0  #if(t1>=t0)
	beq $t2,1,else_
	nop
if_:
	#do something
	j to_end
else_:
	#do something
	j to_end
to_end:
	li $v0 10
	syscall