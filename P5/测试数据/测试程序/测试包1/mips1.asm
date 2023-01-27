#ori $1, $0, 4
ori $29, $0, 0x3038
sw $29, 40($0)
lw $1, 0($1)
sw $1, 0($1)

lw $2, 4($1)
addu $3, $2, $2

lw $2, 4($1)
addu $3, $2, $2

lw $2, 40($0)
beq $2, $0, beq_dest
nop

lw $2, 40($0)
jr $2
nop

beq_dest:
lui $6, 0x1234
beq $2, $0, beq_dest
nop

addu $6, $6, $6
beq $6, $0, beq_dest
nop

addu $6, $0, $0
sw $6, 0($0)



ori $7, $0, 1
addu $8, $8, $7
ori $15, 0
sw $15, 0($0)
ori $15, $0, 1
sw $15, 4($0)
ori $15, $0, 2
sw $15, 8($0)
ori $16, $0, 3
sw $15, 12($0)
ori $16, $0, 4
sw $15, 16($0)
ori $16, $0, 5
sw $15, 20($0)
ori $16, $0, 6
sw $15, 24($0)
ori $16, $0, 7
sw $16, 28($0)
ori $1, $0, 4
ori $2, $0, 8
ori $3, $0, 12
nop
nop
nop
addu $1, $2, $3
lw $1, 0($1)

ori $1, $0, 4
nop
nop
addu $1, $2, $3
lw $1, 0($2)
beq $1, $15, end1
nop
ori $13, $0, 0x1234

addu $1, $2, $3
jal end1
addu $10, $31, $8
end1:
nop

ori $1, $0, 4
nop
nop
addu $1, $2, $3
lw $1, 0($1)
addu $10, $1, $0

ori $1, $0, 0x5678
lui $2, 0xABCD
ori $20, $0, 8  #DM地址
sw $1, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $1, 12($0)
ori $5, $0, 0x5678
nop
nop
beq $5, $1, Bdest1
nop
ori $5, $0, 0x1234
Bdest1:
addu $5, $5, $5 #内部转发测试

lw $5, -4($20) #Tnew=3
addu $8, $0, $0
beq $5, $1, Bdest2 #Tuse=0
nop
ori $8, $0, 0x1234
Bdest2:
addu $5, $5, $5 #测试是否暂停

lw $5, -4($20) #Tnew=2
addu $8, $0, $0
beq $5, $1, Bdest2 #Tuse=0
nop
ori $8, $0, 0x1234
Bdest22:
addu $5, $5, $5 #测试是否转发

ori $24, $zero, 0x3000  #text base addr
ori $31, $0, 22  #jump to NopEnd
sll $31, $31, 2
addu $31, $31, $24
ori $2, $0, 4
ori $3, $0, 0x10
ori $4, $0, 1
ori $5, $5, 0
Loop:
	beq $3, $zero, EndLoop
	nop
	ori $16, $0, 18  #jump to jr_test2
	sll $16, $16, 2
	#addu $16, $16, $24
	addu $5, $5, $4
	subu $3, $3, $2
	jal Loop
jr_test1:
	addu $9, $9, $4
	addu $16, $16, $24
	jr $16
jr_test2:
	addu $10, $10, $4
	jr $ra
EndLoop:
	addu $7, $7, $4
	jal jr_test1
addu $8, $8, $4
NopEnd:
nop
lui $7, 0x1234
ori $7, $7, 0x5678
nop
ori $16, $0, 0x12
addu $7, $16, $16
ori $12, $0, 4
sw $7, 4($12)

ori $1, $0, 0x5678
ori $3, $0, 0x4567
lui $2, 0xABCD
lui $4, 0x4321
ori $20, $0, 8  #DM???·
sw $1, 0($0)
sw $1, 4($0)
sw $1, 8($0)
sw $2, 12($0)
sw $2, 16($0)
sw $2, 20($0)

#################### Case 1 ########################
lui $5, 0xABCD #Tnew=1
addu $8, $0, $0
beq $5, $1, BDest1_0_2 #Tuse=0
nop
ori $8, $0, 0x1234
BDest1_0_2:
addu $5, $5, $5

ori $5, $0, 0x5678 #Tnew=2
addu $8, $0, $0
beq $5, $2, BDest2_0_2
nop
ori $8, $0, 0x1234
BDest2_0_2:
addu $5, $5, $5

lw $5, -4($20) #Tnew=3
addu $8, $0, $0
beq $5, $2, BDest3_0_2
nop
ori $8, $0, 0x1234
BDest3_0_2:
addu $5, $5, $5

lui $5, 0xABCD #Tnew=1
addu $8, $0, $0
addu $5, $5, $1 #Tuse=1

ori $5, $0, 0x5678 #Tnew=2
addu $8, $0, $0
addu $5, $5, $1 #Tuse=1

lw $5, -4($20) #Tnew=3
addu $8, $0, $0
addu $5, $5, $1 #Tuse=1

lui $5, 0xABCD #Tnew=1
addu $8, $0, $0
sw $5, 100($0) #Tuse=2

ori $5, $0, 0x5678 #Tnew=2
addu $8, $0, $0
sw $5, 100($0) #Tuse=2

lw $5, -4($20) #Tnew=3
addu $8, $0, $0
sw $5, 100($0) #Tuse=2

#################### Case 2 ########################
lui $5, 0xABCD #Tnew=1
beq $5, $1, BDest1_0_1 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest1_0_1:
addu $5, $5, $5 #Tuse=0

ori $5, $0, 0x5678 #Tnew=2
beq $5, $2, BDest2_0_1 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest2_0_1:
addu $5, $5, $5 #Tuse=0

lw $5, -4($20) #Tnew=3
beq $5, $2, BDest3_0_1 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest3_0_1:
addu $5, $5, $5 #Tuse=0

lui $5, 0xABCD #Tnew=1
addu $5, $5, $1 #Tuse=1

ori $5, $0, 0x5678 #Tnew=2
addu $5, $5, $1 #Tuse=1

lw $5, -4($20) #Tnew=3
addu $5, $5, $1 #Tuse=1

lui $5, 0xABCD #Tnew=1
sw $5, 100($0) #Tuse=2

ori $5, $0, 0x5678 #Tnew=2
sw $5, 100($0) #Tuse=2

lw $5, -4($20) #Tnew=3
sw $5, 100($0) #Tuse=2

#################### Case 3 ########################
lui $5, 0xABCD #Tnew=1
lui $5, 0x4321 #Tnew1=0
beq $5, $3, BDest1_0_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest1_0_0_3:
addu $5, $5, $5 #Tuse=0


ori $5, $0, 0x5678 #Tnew=2
lui $5, 0x4321 #Tnew1=0
beq $5, $3, BDest2_0_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest2_0_0_3:
addu $5, $5, $5 #Tuse=0


lw $5, -4($20) #Tnew=3
lui $5, 0x4321 #Tnew1=0
beq $5, $3, BDest3_0_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest3_0_0_3:
addu $5, $5, $5 #Tuse=0


lui $5, 0xABCD #Tnew=1
ori $5, $0, 0x4567 #Tnew1=1
beq $5, $4, BDest1_1_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest1_1_0_3:
addu $5, $5, $5 #Tuse=0


ori $5, $0, 0x5678 #Tnew=2
ori $5, $0, 0x4567 #Tnew1=1
beq $5, $4, BDest2_1_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest2_1_0_3:
addu $5, $5, $5 #Tuse=0


lw $5, -4($20) #Tnew=3
ori $5, $0, 0x4567 #Tnew1=1
beq $5, $4, BDest3_1_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest3_1_0_3:
addu $5, $5, $5 #Tuse=0


lui $5, 0xABCD #Tnew=1
lw $5, 8($20) #Tnew1=2
beq $5, $3, BDest1_2_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest1_2_0_3:
addu $5, $5, $5 #Tuse=0


ori $5, $0, 0x5678 #Tnew=2
lw $5, 8($20) #Tnew1=2
beq $5, $3, BDest2_2_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest2_2_0_3:
addu $5, $5, $5 #Tuse=0


lw $5, -4($20) #Tnew=3
lw $5, 8($20) #Tnew1=2
beq $5, $3, BDest3_2_0_3 #Tuse=0
nop
ori $8, $0, 0x1234 #Tuse=0
BDest3_2_0_3:
addu $5, $5, $5 #Tuse=0


lui $5, 0xABCD #Tnew=1
lui $5, 0x4321 #Tnew1=0
addu $5, $5, $1 #Tuse=1

ori $5, $0, 0x5678 #Tnew=2
lui $5, 0x4321 #Tnew1=0
addu $5, $5, $1 #Tuse=1

lw $5, -4($20) #Tnew=3
lui $5, 0x4321 #Tnew1=0
addu $5, $5, $1 #Tuse=1

lui $5, 0xABCD #Tnew=1
ori $5, $0, 0x4567 #Tnew1=1
addu $5, $5, $1 #Tuse=1

ori $5, $0, 0x5678 #Tnew=2
ori $5, $0, 0x4567 #Tnew1=1
addu $5, $5, $1 #Tuse=1

lw $5, -4($20) #Tnew=3
ori $5, $0, 0x4567 #Tnew1=1
addu $5, $5, $1 #Tuse=1

lui $5, 0xABCD #Tnew=1
lw $5, 8($20) #Tnew1=2
addu $5, $5, $1 #Tuse=1

ori $5, $0, 0x5678 #Tnew=2
lw $5, 8($20) #Tnew1=2
addu $5, $5, $1 #Tuse=1

lw $5, -4($20) #Tnew=3
lw $5, 8($20) #Tnew1=2
addu $5, $5, $1 #Tuse=1

lui $5, 0xABCD #Tnew=1
lui $5, 0x4321 #Tnew1=0
sw $5, 100($0) #Tuse=2

ori $5, $0, 0x5678 #Tnew=2
lui $5, 0x4321 #Tnew1=0
sw $5, 100($0) #Tuse=2

lw $5, -4($20) #Tnew=3
lui $5, 0x4321 #Tnew1=0
sw $5, 100($0) #Tuse=2

lui $5, 0xABCD #Tnew=1
ori $5, $0, 0x4567 #Tnew1=1
sw $5, 100($0) #Tuse=2

ori $5, $0, 0x5678 #Tnew=2
ori $5, $0, 0x4567 #Tnew1=1
sw $5, 100($0) #Tuse=2

lw $5, -4($20) #Tnew=3
ori $5, $0, 0x4567 #Tnew1=1
sw $5, 100($0) #Tuse=2

lui $5, 0xABCD #Tnew=1
lw $5, 8($20) #Tnew1=2
sw $5, 100($0) #Tuse=2

ori $5, $0, 0x5678 #Tnew=2
lw $5, 8($20) #Tnew1=2
sw $5, 100($0) #Tuse=2

lw $5, -4($20) #Tnew=3
lw $5, 8($20) #Tnew1=2
sw $5, 100($0) #Tuse=2




