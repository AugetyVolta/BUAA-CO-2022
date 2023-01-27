.macro push(%src)
    sw      %src, 0($sp)
    subi    $sp, $sp, 4
.end_macro

.macro pop(%src)
    addi    $sp, $sp, 4
    lw      %src, 0($sp)
.end_macro

.macro setvalue(%i,%j,%mat,%value,%n)
	mult %i,%n
	mflo $t7
	add $t7,$t7,%j
	sll $t7,$t7,2
	sw %value,%mat($t7)
.end_macro

.macro getvalue(%i,%j,%mat,%value,%n)
	mult %i,%n
	mflo $t7
	add $t7,$t7,%j
	sll $t7,$t7,2
	lw %value,%mat($t7)
.end_macro

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

.macro end()
	li $v0,10
	syscall
.end_macro
.data
	puzzle: .word 1:81
	flag: .word 0:81
.text
main:
	readInt($s0)		# m
	readInt($s1)		# n
	li $s2,9
	li $t0,1		# i=1
	li $t1,1		# j=1
	li $t2,0		# cnt=0
loop1:
	bgt $t0,$s0,end1
	nop
	li $t1,1
loop2:
	bgt $t1,$s1,end2
	nop
	readInt($t3)
	setvalue($t0,$t1,puzzle,$t3,$s2)		# puzzle[i][j]
	addi $t1,$t1,1
	j loop2
	nop
end2:
	addi $t0,$t0,1
	j loop1
	nop
end1:
	readInt($a0)		# x1
	readInt($a1)		# y1
	readInt($a2)		# x2
	readInt($a3)		# y2
	jal dfs
	nop
	printInt($t2)
	end
	
dfs:
	li $t3,1
	li $t4,0
	setvalue($a0,$a1,flag,$t3,$s2) #	flag[x1][y1]=1
	seq $t3,$a0,$a2		# x1==x2
	seq $t4,$a1,$a3		# y1==y2
	and $t3,$t3,$t4
if1:
	bne $t3,1,else1
	nop
	li $t3,0
	setvalue($a0,$a1,flag,$t3,$s2) #	flag[x1][y1]=0
	addi $t2,$t2,1
	jr $ra
	nop
else1:
	addi $t3,$a0,-1		# x1-1
	getvalue($t3,$a1,puzzle,$t4,$s2)
	getvalue($t3,$a1,flag,$t5,$s2)
	seq $t4,$t4,0
	seq $t5,$t5,0
	and $t4,$t4,$t5
if2:
	bne $t4,1,else2
	nop
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	addi $a0,$a0,-1
	jal dfs
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
else2:
	addi $t3,$a0,1		# x1+1
	getvalue($t3,$a1,puzzle,$t4,$s2)
	getvalue($t3,$a1,flag,$t5,$s2)
	seq $t4,$t4,0
	seq $t5,$t5,0
	and $t4,$t4,$t5		
if3:
	bne $t4,1,else3
	nop
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	addi $a0,$a0,1
	jal dfs
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
else3:
	addi $t3,$a1,1		# y1+1
	getvalue($a0,$t3,puzzle,$t4,$s2)
	getvalue($a0,$t3,flag,$t5,$s2)
	seq $t4,$t4,0
	seq $t5,$t5,0
	and $t4,$t4,$t5
if4:
	bne $t4,1,else4
	nop
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	addi $a1,$a1,1
	jal dfs
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
else4:
	addi $t3,$a1,-1		# y1-1
	getvalue($a0,$t3,puzzle,$t4,$s2)
	getvalue($a0,$t3,flag,$t5,$s2)
	seq $t4,$t4,0
	seq $t5,$t5,0
	and $t4,$t4,$t5
if5:
	bne $t4,1,else5
	nop
	push($a0)
	push($a1)
	push($a2)
	push($a3)
	push($ra)
	addi $a1,$a1,-1
	jal dfs
	nop
	pop($ra)
	pop($a3)
	pop($a2)
	pop($a1)
	pop($a0)
else5:
	li $t3,0
	setvalue($a0,$a1,flag,$t3,$s2) #	flag[x1][y1]=0
	jr $ra
	nop

	
