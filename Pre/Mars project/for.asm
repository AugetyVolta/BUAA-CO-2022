.data
.text
	li $t1 ,10
	li $t0 ,0
for_begin:
	slt $t2,$t0,$t1 	#for(i=0;i<n;i++)
	beq $t2,$0,for_end # $t2==$0?
	nop
	#do something
	add $t0,$t0,1	#i++
	j for_begin	
for_end:
	li $v0,10	
	syscall
	