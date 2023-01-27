.macro end
	li $v0 10
	syscall
.end_macro

.data
	space: .space 30000
	space1: .asciiz " "
	enter: .asciiz "\n"
.text
	la $s7,space #array point 
	li $t0,1#hang
	li $t1,0#lie
	li $s4,0 # use as i
	li $s6,0
	li $v0,5
	syscall
	move $s1,$v0 # input n hang
	li $v0,5
	syscall
	move $s2,$v0 #input m lie
	addi $t2,$s2,1 # n+1 lie jia yi
	mult $s2,$s1
	mflo $s0  # m*n
for_begin:		
		slt $s5,$s4,$s0
		beq $s5,$zero,end_for 
		li $v0,5
		syscall
		addi $t1,$t1,1
		beq $t1,$t2,lie
		nop
	continue:
		bne $v0,$zero,fun
		nop
	continue1:
		addi $s4,$s4,1
	j for_begin
	nop
end_for:
	beq $s6,$zero,end
	nop
		addi $s7,$s7,-12
	lw $a0,0($s7)
	li $v0,1
	syscall
	
	la $a0,space1
	li $v0,4
	syscall
	 
	lw $a0,4($s7)
	li $v0,1
	syscall
	
	la $a0,space1
	li $v0,4
	syscall
	
	lw $a0,8($s7)
	li $v0,1
	syscall
	
	la $a0,enter
	li $v0,4
	syscall
	addi $s6,$s6,-1
	j end_for
	nop
end:
	li $v0,10
	syscall
lie:
		li $t1,1
		addi $t0,$t0,1
		j continue
		nop
fun:
	sw $t0,0($s7) # input stack
	sw $t1,4($s7)
	sw $v0,8($s7)
	addi $s7,$s7,12
	add $s6,$s6,1# count
	j continue1
	nop
	
