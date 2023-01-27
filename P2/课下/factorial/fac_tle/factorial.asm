.macro readInt(%src)
	li $v0,5
	syscall
	move %src,$v0
.end_macro

.macro printInt(%src)
	move $a0,%src
	li $v0,1
	syscall
.end_macro

.macro setInt(%src,%index,%array)
	sll $t7,%index,2
	sw %src,%array($t7)
.end_macro

.macro getInt(%src,%index,%array)
	sll $t7,%index,2
	lw %src,%array($t7)
.end_macro

.data
	f: .word 0:1000
.text
	readInt($s0)		# n
	li $t0,1
	setInt($t0,$0,f)	# f[0]=1
	li $t0,2			# i=2
	li $t6,0			# m=0
loop1:
	bgt $t0,$s0,end1
	nop
	li $t2,0		# Cin=0
	li $t1,0		# j=0
loop2:
	sle $t3,$t1,$t6 # j<=m
	sne $t4,$t2,$0	# c!=0
	or 	$t3,$t3,$t4
	beq $t3,$0,end2
	nop
	getInt($t3,$t1,f)	# f[j]
	mult $t3,$t0
	mflo $t3
	add $t3,$t3,$t2		# s
	li $t4,10
	div $t3,$t4
	mfhi $t3
	setInt($t3,$t1,f)		# f[j]
	mflo $t2				#C
	addi $t1,$t1,1
	j loop2
	nop
end2:
	addi $t6,$t1,-1
	addi $t0,$t0,1
	j loop1
	nop
end1:


	move $t0,$t6
for2:
	blt $t0,$0,end_for2
	nop
	getInt($a0,$t0,f)
	printInt($a0)
	addi $t0,$t0,-1
	j for2
	nop
end_for2:
	li $v0,10
	syscall
