.macro push(%src)
    sw      %src, 0($sp)
    subi    $sp, $sp, 4
.end_macro

.macro pop(%src)
    addi    $sp, $sp, 4
    lw      %src, 0($sp)
.end_macro

.macro setInt(%src,%index,%array)
	sll $t7,%index,2
	sw %src,%array($t7)
.end_macro

.macro getInt(%src,%index,%array)
	sll $t7,%index,2
	lw %src,%array($t7)
.end_macro

.macro printInt(%src)
	move $a0,%src
	li $v0,1
	syscall
.end_macro

.macro printString(%src)
	la $a0,%src
	li $v0,4
	syscall
.end_macro

.data
	symbol: .word 0:7
	array: .word 0:7
	space: .asciiz " "
	enter: .asciiz "\n"
.text
main:
	li $v0,5
	syscall
	move $s0,$v0	# n
	li $a0,0       # index=0
	jal FullArray
	nop
	li $v0,10
	syscall
FullArray:
	li $t0,0	# i=0
if1:
	sle $t1,$s0,$a0		# if(index>=n)
	bne $t1,1,else1
	nop
for1:
	beq $t0,$s0,end1
	nop
	getInt($t2,$t0,array)	#array[i]
	push($a0)
	printInt($t2)
	printString(space)
	pop($a0)
	addi $t0,$t0,1
	j for1
	nop
end1:
	push($a0)
	printString(enter)
	pop($a0)
	jr $ra		# return
	nop
else1:
	move $t0,$s0	# i=n
for2:
	beq $t0,$0,end2
	nop
	getInt($t2,$t0,symbol)		# symbol[i]
if2:
	bne $t2,0,else2
	nop		
	setInt($t0,$a0,array)		# index $a0 
	li $t2,1
	setInt($t2,$t0,symbol)
	push($ra)
	push($t0)
	push($a0)
	addi $a0,$a0,1
	jal FullArray
	nop
	pop($a0)
	pop($t0)
	pop($ra)
	li $t2,0
	setInt($t2,$t0,symbol)		#symbol[i]=0
else2:
	addi $t0,$t0,-1
	j for2
	nop
end2:
	jr $ra
	nop

	
	
