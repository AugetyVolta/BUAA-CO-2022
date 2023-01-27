.macro setInt(%index)
	sll $t6,%index,2
	lw $t7,hash($t6)
	addi $t7,$t7,1
	sw $t7,hash($t6)
.end_macro

.macro getInt(%src)
	li $v0,5
	syscall
	move %src,$v0
.end_macro

.macro getapl(%src)   # return hash[i]
	li $v0,12
	syscall
	addi %src,$v0,-97
	#li $v0,12
	#syscall
.end_macro

.macro getcnt(%src,%index)
	sll $t7,%index,2
	lw %src,hash($t7)
.end_macro

.macro printapl(%index)
	addi $a0,%index,97
	li $v0,11
	syscall
.end_macro

.data
	hash: .word 0:100
	seqen: .word 45:100
	symbol: .word 0:100
	space: .asciiz " "
	enter: .asciiz "\n"
.text
	getInt($s0)		# n
	li $t0,0		# i
	la $t2,seqen
for1:
	beq $t0,$s0,end1
	nop
 	
 	getapl($t1)		# read apl
 	setInt($t1)
 	sw $t1,0($t2)
 	addi $t2,$t2,4
 	addi $t0,$t0,1
 	
 	j for1
 	nop
end1:
	la $s1,seqen
	li $t0,0		# i=0
loop:
	beq $t0,100,end_loop
	nop
	sll $s1,$t0,2
	lw $t2,seqen($s1)
	#addi $s1,$s1,4
	getcnt($t1,$t2)		# hash[k]
if: 
  	beq $t1,$0,else
  	nop
if1:
	sll $t4,$t2,2
	lw $t3,symbol($t4)
	bne $t3,$0,else1
	nop
  	printapl($t2)
  	la $a0,space
  	li $v0,4
  	syscall
  	getcnt($a0,$t2)
  	li $v0,1
  	syscall
  	la $a0,enter
  	li $v0,4
  	syscall
  	li $t3,1
  	sll $t4,$t2,2
  	sw $t3,symbol($t4) 
else1:
	
else:	
  	addi $t0,$t0,1
  	j loop
  	nop
end_loop: 
	li $v0,10
	syscall
	 

