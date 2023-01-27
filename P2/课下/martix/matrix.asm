.macro setvalue(%i,%j,%mat,%n,%value)
	move $s1,%i
	mult $s1,%n
	mflo $s1
	add $s1,$s1,%j
	sll $s1,$s1,2
	sw %value,%mat($s1)
.end_macro
.macro getvalue(%i,%j,%mat,%n,%value)
	move $s1,%i
	mult $s1,%n
	mflo $s1
	add $s1,$s1,%j
	sll $s1,$s1,2
	lw %value,%mat($s1)
.end_macro
.data
	mat1: .space 256
	mat2: .space 256
	mat3: .space 256
	space: .asciiz " "
	enter: .asciiz "\n"
.text
	li $v0,5
	syscall
	move $s0,$v0  # n
	li $t0,0 # i=0
	li $t1,0 # j=0
for1:
	beq $t0,$s0,for1_end
	nop
	li $t1,0
for2:
	beq $t1,$s0,for2_end
	nop
	li $v0,5
	syscall
	setvalue($t0,$t1,mat1,$s0,$v0)
	addi $t1,$t1,1
	j for2
	nop
for2_end:	
	addi $t0,$t0,1
	j for1
	nop
for1_end:

	li $t0,0
	li $t1,0
for21:
	beq $t0,$s0,for21_end
	nop
	li $t1,0
for22:
	beq $t1,$s0,for22_end
	nop
	li $v0,5
	syscall
	setvalue($t0,$t1,mat2,$s0,$v0)
	addi $t1,$t1,1
	j for22
	nop
for22_end:	
	addi $t0,$t0,1
	j for21
	nop
for21_end:
	li $t0,0 #i
	li $t1,0 #j
	li $t2,0 #k
	li $t3,0 #ans
loop1:
	beq $t2,$s0,endloop1
	nop
	li $t0,0
loop2:
	beq $t0,$s0,endloop2
	nop
	li $t1,0
loop3:
	beq $t1,$s0,endloop3
	nop
	getvalue($t0,$t1,mat1,$s0,$t4)  #t4 a[i][j]
	getvalue($t1,$t2,mat2,$s0,$t5)  #t5 b[j][k]
	mult $t4,$t5
	mflo $t6
	add $t3,$t3,$t6
	addi $t1,$t1,1
	j loop3
	nop
endloop3:
	setvalue($t0,$t2,mat3,$s0,$t3)
	li $t3,0
	addi $t0,$t0,1
	j loop2
	nop
endloop2:
	addi $t2,$t2,1
	j loop1
	nop
endloop1:
	li $t0,0
	li $t1,0
for31:
	beq $t0,$s0,for31_end
	nop
	li $t1,0
for32:
	beq $t1,$s0,for32_end
	nop
	getvalue($t0,$t1,mat3,$s0,$a0)
	li $v0,1
	syscall
	la $a0,space
	li $v0,4
	syscall
	addi $t1,$t1,1
	j for32
	nop
for32_end:	
	la $a0,enter
	li $v0,4
	syscall
	addi $t0,$t0,1
	j for31
	nop
for31_end:
	li $v0,10
	syscall

