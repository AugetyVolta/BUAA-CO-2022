ori $0, $0, 44
ori $1, $0, 156
ori $2, $0, 48
ori $3, $0, 28
ori $4, $0, 52
ori $5, $0, 24
ori $6, $0, 72
ori $7, $0, 152
ori $8, $0, 8
ori $9, $0, 32
ori $10, $0, 16
ori $11, $0, 0
ori $12, $0, 88
ori $13, $0, 112
ori $14, $0, 116
ori $15, $0, 112
ori $16, $0, 144
ori $17, $0, 148
ori $18, $0, 40
ori $19, $0, 120
ori $20, $0, 124
ori $21, $0, 52
ori $22, $0, 56
ori $23, $0, 16
ori $24, $0, 84
ori $25, $0, 152
ori $26, $0, 52
ori $27, $0, 116
ori $28, $0, 32
ori $29, $0, 68
ori $30, $0, 132
ori $31, $0, 88

mfhi $4
ori $2,$3,56
ori $2,$3,104
or $4,$1,$4
lui $1,128
divu $3,$2
ori $1,$3,52
jal Test1
mtlo $4
Back1:

lb $4,80($0)
sh $4,48($0)
jal Test_jal2
addu $2,$31,$0
beq $0,$0,Test_beq2
or $1,$3,$31
Test_jal2: jr $ra
Test_beq2:
or $3,$4,$1
jal Test2
addiu $1,$1,144
Back2:

or $0,$1,$0
sltu $3,$2,$2
sh $3,32($0)
jal Test3
lw $4,80($0)
Back3:

sb $0,64($0)
mthi $3
jal Test_jal4
and $3,$3,$31
beq $0,$0,Test_beq4
and $0,$3,$31
Test_jal4: jr $ra
Test_beq4:
lb $3,32($0)
jal Test4
mthi $3
Back4:

ori $1,$0,28
addiu $0,$1,88
jal Test_jal5
sb $1,-12288($31)
beq $0,$0,Test_beq5
sltu $3,$3,$31
Test_jal5: jr $ra
Test_beq5:
mtlo $1
jal Test5
ori $2,$4,136
Back5:

mfhi $0
or $0,$3,$1
mthi $3
jal Test6
ori $3,$3,76
Back6:

ori $3,$3,16
lui $3,0
lw $3,120($3)
or $4,$3,$3
jal Test_jal7
sh $1,-12288($31)
beq $0,$0,Test_beq7
subu $2,$0,$31
Test_jal7: jr $ra
Test_beq7:
or $0,$4,$2
jal Test7
ori $4,$0,116
Back7:

mthi $0
subu $1,$1,$1
ori $1,$1,32
sb $0,-16($1)
mult $4,$1
jal Test8
and $3,$3,$4
Back8:

lb $4,80($0)
subu $3,$3,$3
ori $3,$3,64
sb $0,0($3)
jal Test_jal9
lw $4,-12288($31)
beq $0,$0,Test_beq9
and $2,$0,$31
Test_jal9: jr $ra
Test_beq9:
ori $1,$4,12
ori $1,$4,4
sh $3,32($0)
sw $2,112($0)
div $4,$1
jal Test9
andi $4,$1,48
Back9:

andi $3,$3,68
mflo $0
andi $2,$3,112
jal Test10
mfhi $2
Back10:

subu $4,$3,$0
lw $3,64($0)
jal Test_jal11
mthi $31
beq $0,$0,Test_beq11
multu $31,$1
Test_jal11: jr $ra
Test_beq11:
sh $4,112($0)
jal Test11
subu $1,$0,$3
Back11:

ori $1,$4,120
subu $4,$1,$1
lui $3,140
jal Test12
ori $3,$4,4
ori $3,$4,144
mtlo $1
mtlo $2
div $4,$3
Back12:

subu $0,$4,$1
sw $3,96($0)
jal Test_jal13
slt $0,$1,$31
beq $0,$0,Test_beq13
ori $0,$31,32
Test_jal13: jr $ra
Test_beq13:
addu $2,$4,$3
jal Test13
mtlo $1
jal End
mfhi $0


Test1:
slt $1,$1,$31
subu $26,$26,$26
subu $15,$15,$15
ori $15,$15,10
subu $7,$7,$7
ori $7,$7,1
SubTest1:
addu $26,$26,$7
bne $26,$15,EndTest1
multu $0,$2
lb $4,32($0)
subu $0,$0,$0
lh $3,74($0)
slt $0,$1,$0
subu $2,$2,$2
sb $4,0($2)
ori $4,$3,160
ori $4,$3,136
subu $2,$2,$0
sltu $0,$2,$0
divu $3,$4
or $3,$2,$4
mtlo $0
subu $1,$1,$2
mthi $2
lw $4,112($0)
subu $2,$2,$2
lw $3,96($2)
mtlo $4
sw $1,0($0)
andi $0,$1,40
subu $3,$3,$3
ori $3,$3,80
sb $0,-32($3)
mult $1,$2
ori $4,$4,124
ori $4,$4,76
multu $0,$2
mthi $1
divu $4,$4
mtlo $4
ori $1,$0,52
or $2,$4,$1
lw $3,64($0)
addu $4,$4,$4
or $0,$1,$1
ori $1,$1,64
ori $1,$1,12
mflo $4
mthi $4
divu $1,$1
bne $0,$0,SubTest1
mtlo $0
EndTest1:
subu $3,$3,$3
addu $2,$31,$3
addu $31,$31,$31
subu $31,$31,$2
jr $ra
multu $3,$4


Test2:
bne $1,$31,EndTest2
subu $28,$28,$28
subu $29,$29,$29
ori $29,$29,10
subu $5,$5,$5
ori $5,$5,1
SubTest2:
addu $28,$28,$5
beq $28,$29,EndTest2
and $1,$4,$2
mthi $2
mfhi $2
addu $3,$1,$0
ori $4,$0,144
ori $0,$3,108
ori $4,$0,4
slt $0,$3,$2
subu $3,$3,$4
or $3,$0,$4
mflo $2
or $2,$1,$1
sb $2,32($0)
addu $2,$4,$0
mflo $3
or $1,$0,$1
addiu $4,$4,76
mtlo $0
subu $2,$1,$4
lui $2,1
lh $3,-65454($2)
lui $0,36
addiu $4,$3,20
mult $1,$1
and $2,$4,$4
multu $2,$1
ori $1,$2,92
sltu $3,$4,$4
EndTest2:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
addu $31,$0,$2
mult $4,$1
jr $ra
ori $0,$4,20


Test3:
sw $3,-12288($31)
addiu $3,$0,4
mfhi $3
sw $4,80($0)
mult $0,$1
mtlo $0
mtlo $4
lw $3,96($0)
mult $3,$2
andi $3,$4,20
slt $4,$2,$2
ori $2,$4,100
ori $2,$4,108
multu $0,$0
sb $3,112($0)
divu $4,$2
lui $2,64
slt $1,$4,$2
mtlo $4
slt $2,$1,$2
sltu $1,$4,$3
sb $1,48($0)
lb $4,16($0)
and $4,$2,$4
ori $4,$4,112
subu $0,$4,$3
lui $1,124
sltu $1,$0,$0
ori $3,$3,52
sltu $4,$4,$1
EndTest3:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
sw $3,48($0)


Test4:
slt $0,$1,$31
subu $20,$20,$20
subu $26,$26,$26
ori $26,$26,10
subu $17,$17,$17
ori $17,$17,1
SubTest4:
addu $20,$20,$17
bne $20,$26,EndTest4
sw $0,80($0)
ori $1,$3,44
mtlo $0
subu $1,$2,$4
mflo $0
mflo $2
slt $0,$2,$0
ori $0,$2,52
mflo $2
and $0,$0,$2
or $0,$4,$2
ori $3,$1,152
sb $1,80($0)
mthi $2
sw $2,96($0)
subu $2,$2,$2
sb $3,0($2)
lb $3,64($0)
sw $2,112($0)
multu $1,$3
beq $1,$0,SubTest4
mult $0,$2
sb $0,64($0)
andi $3,$1,128
lui $4,64
and $2,$4,$3
ori $4,$2,76
subu $1,$1,$1
sw $2,16($1)
EndTest4:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
or $3,$3,$1
jr $ra
mfhi $4


Test5:
sltu $4,$0,$31
subu $28,$28,$28
subu $18,$18,$18
ori $18,$18,10
subu $12,$12,$12
ori $12,$12,1
SubTest5:
addu $28,$28,$12
bne $28,$18,EndTest5
mflo $0
ori $1,$2,48
ori $1,$2,44
and $0,$0,$4
and $4,$4,$0
div $2,$1
and $1,$3,$3
addu $2,$2,$0
lb $3,32($0)
addiu $1,$0,140
multu $3,$4
addiu $4,$3,36
lui $4,0
addu $2,$3,$4
mthi $0
ori $1,$1,4
ori $1,$1,68
multu $4,$4
slt $4,$4,$2
divu $1,$1
multu $4,$3
mflo $4
and $4,$4,$3
mfhi $4
mflo $0
slt $3,$3,$2
mfhi $4
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sb $0,0($0)
lb $1,0($0)
lb $0,96($1)
sb $0,0($0)
mthi $1
subu $1,$1,$1
ori $1,$1,80
lb $3,-79($1)
sw $3,16($0)
ori $1,$3,104
ori $1,$3,116
mult $4,$2
mult $0,$2
div $3,$1
ori $1,$3,44
mthi $1
EndTest5:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
sh $2,48($0)
jr $ra
multu $1,$1


Test6:
beq $4,$31,EndTest6
mflo $2
slt $3,$3,$3
sltu $3,$1,$0
addiu $4,$0,124
ori $1,$1,76
ori $1,$1,92
multu $3,$3
multu $2,$0
div $1,$1
subu $2,$3,$2
mult $4,$0
slt $4,$2,$1
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sh $4,0($0)
lh $1,0($0)
lb $4,32($1)
sb $4,64($0)
ori $1,$3,52
ori $1,$3,100
ori $2,$2,28
ori $2,$2,156
divu $3,$1
ori $4,$1,100
ori $4,$1,120
mfhi $3
andi $3,$2,24
divu $1,$4
sltu $2,$4,$1
subu $4,$4,$4
sh $3,0($4)
lui $4,60
lw $3,64($0)
subu $2,$2,$2
subu $1,$1,$1
ori $2,$0,7
ori $1,$0,32
divu $1,$2
mflo $3
lw $1,0($3)
ori $4,$1,76
ori $4,$1,64
and $0,$2,$3
and $2,$3,$0
div $1,$4
addu $3,$4,$1
multu $3,$0
or $4,$1,$1
multu $4,$4
andi $4,$3,120
mthi $2
subu $4,$3,$0
subu $3,$3,$0
EndTest6:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
ori $31,$2,0
ori $1,$1,120
jr $ra
mflo $4


Test7:
lb $2,-12288($31)
subu $15,$15,$15
subu $27,$27,$27
ori $27,$27,10
subu $18,$18,$18
ori $18,$18,1
SubTest7:
addu $15,$15,$18
beq $15,$27,EndTest7
mflo $3
andi $4,$1,4
slt $1,$2,$3
subu $3,$1,$0
slt $1,$2,$1
slt $2,$4,$3
multu $1,$3
mult $3,$0
andi $4,$3,44
and $2,$2,$2
andi $2,$4,52
slt $2,$1,$4
subu $0,$1,$1
or $1,$3,$3
lui $3,44
ori $0,$2,148
mfhi $1
sb $2,64($0)
subu $3,$3,$3
ori $3,$3,96
sb $3,-64($3)
or $2,$4,$0
ori $2,$1,36
ori $2,$1,32
multu $0,$0
multu $0,$3
div $1,$2
multu $2,$0
mthi $0
and $2,$0,$2
beq $0,$1,SubTest7
and $4,$1,$1
mtlo $3
EndTest7:
subu $3,$3,$3
addu $4,$31,$3
subu $31,$31,$31
addu $31,$0,$4
lb $1,96($0)
jr $ra
addiu $0,$2,72


Test8:
or $0,$0,$31
subu $28,$28,$28
subu $29,$29,$29
ori $29,$29,10
subu $9,$9,$9
ori $9,$9,1
SubTest8:
addu $28,$28,$9
beq $28,$29,EndTest8
sh $0,80($0)
subu $0,$4,$3
lh $0,16($0)
mflo $3
sltu $1,$4,$1
mfhi $3
addu $1,$0,$2
or $1,$3,$0
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,32
sh $3,0($0)
ori $3,$3,0
lh $1,0($0)
sb $3,16($1)
subu $1,$1,$1
lw $4,48($1)
lui $3,156
ori $2,$2,136
ori $2,$2,8
mult $4,$4
mult $0,$4
div $2,$2
sw $3,80($0)
slt $4,$0,$0
lw $2,112($0)
lui $1,132
subu $0,$0,$0
sb $2,16($0)
mult $3,$0
slt $0,$0,$3
mfhi $0
andi $1,$3,8
ori $0,$4,136
mult $1,$4
mfhi $1
mfhi $1
subu $3,$3,$3
ori $3,$3,112
lh $1,-14($3)
EndTest8:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
jr $ra
sh $4,32($0)


Test9:
multu $31,$0
subu $22,$22,$22
subu $16,$16,$16
ori $16,$16,10
subu $24,$24,$24
ori $24,$24,1
SubTest9:
addu $22,$22,$24
beq $22,$16,EndTest9
mtlo $4
subu $2,$1,$0
sw $4,0($0)
lui $0,116
andi $2,$0,80
ori $2,$4,72
ori $2,$4,56
and $0,$1,$1
sltu $0,$0,$3
divu $4,$2
ori $2,$1,120
ori $2,$1,80
lui $4,60
sh $4,96($0)
divu $1,$2
ori $4,$2,116
ori $1,$4,100
ori $1,$4,104
lui $3,132
sw $2,0($0)
divu $4,$1
lui $0,92
mfhi $0
multu $3,$3
sltu $2,$0,$3
addu $4,$1,$0
and $1,$1,$2
beq $4,$2,SubTest9
addiu $4,$1,128
and $3,$0,$3
mtlo $2
subu $3,$3,$3
subu $2,$2,$2
ori $3,$0,6
ori $2,$0,28
divu $2,$3
mflo $1
lw $2,0($1)
multu $0,$3
ori $2,$4,112
addu $3,$2,$2
and $3,$1,$0
mflo $1
lw $0,64($0)
andi $4,$4,156
EndTest9:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
sh $4,64($0)


Test10:
lb $2,-12288($31)
subu $11,$11,$11
subu $6,$6,$6
ori $6,$6,10
subu $16,$16,$16
ori $16,$16,1
SubTest10:
addu $11,$11,$16
beq $11,$6,EndTest10
mtlo $1
subu $0,$0,$0
sb $0,48($0)
lui $1,80
ori $3,$3,56
ori $3,$3,16
andi $4,$4,128
andi $1,$1,116
div $3,$3
mfhi $3
mflo $3
mflo $0
subu $2,$4,$0
slt $4,$0,$1
multu $2,$0
slt $4,$2,$4
mthi $1
sltu $4,$2,$2
subu $2,$2,$2
sh $0,16($2)
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,80
sb $0,0($0)
ori $0,$0,112
lb $4,0($0)
sw $0,0($4)
mthi $2
bne $1,$3,SubTest10
and $3,$2,$4
addu $3,$4,$3
mthi $1
subu $1,$1,$1
lb $3,66($1)
slt $3,$2,$3
slt $0,$0,$0
mult $0,$3
subu $1,$1,$1
ori $1,$1,112
lh $1,-30($1)
multu $4,$2
andi $0,$4,156
EndTest10:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
sltu $3,$3,$0


Test11:
mtlo $31
subu $25,$25,$25
subu $15,$15,$15
ori $15,$15,10
subu $20,$20,$20
ori $20,$20,1
SubTest11:
addu $25,$25,$20
beq $25,$15,EndTest11
multu $3,$1
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sw $3,0($0)
lh $3,0($0)
lb $3,48($3)
sw $3,96($0)
andi $3,$0,128
and $2,$1,$0
subu $3,$2,$3
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,32
sb $3,0($0)
ori $3,$3,80
lw $0,0($0)
sb $3,64($0)
addiu $1,$0,20
mult $2,$1
slt $4,$2,$1
addu $4,$3,$0
or $3,$2,$2
mthi $4
mthi $4
sw $2,0($0)
ori $3,$3,36
ori $3,$3,100
slt $0,$2,$2
multu $1,$2
divu $3,$3
sw $4,0($0)
ori $3,$2,140
ori $3,$2,36
multu $4,$0
and $4,$4,$1
divu $2,$3
multu $0,$0
mthi $3
multu $3,$1
sb $3,16($0)
and $4,$0,$2
beq $4,$4,SubTest11
and $0,$4,$3
slt $2,$3,$4
ori $4,$1,104
ori $4,$1,16
subu $3,$2,$2
subu $3,$0,$0
div $1,$4
mult $0,$1
EndTest11:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
ori $31,$2,0
ori $4,$4,52
ori $4,$4,36
sltu $2,$2,$1
sltu $3,$1,$3
div $4,$4
jr $ra
div $1,$ra


Test12:
beq $1,$31,EndTest12
mult $1,$2
sw $1,64($0)
mthi $0
andi $1,$3,56
ori $3,$2,16
addiu $0,$4,156
addu $3,$3,$3
and $1,$2,$4
andi $3,$0,24
lui $4,128
subu $1,$2,$3
lui $0,152
multu $4,$2
or $0,$4,$2
and $1,$0,$3
mult $3,$1
lh $4,112($0)
multu $4,$4
addu $2,$0,$1
subu $2,$2,$2
subu $4,$4,$4
ori $2,$0,6
ori $4,$0,124
divu $4,$2
mflo $0
ori $1,$3,56
lh $4,0($0)
subu $0,$0,$0
sw $3,64($0)
ori $2,$2,148
sb $1,80($0)
mtlo $3
mult $2,$1
EndTest12:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
addiu $4,$2,84


Test13:
mthi $31
subu $9,$9,$9
subu $11,$11,$11
ori $11,$11,10
subu $27,$27,$27
ori $27,$27,1
SubTest13:
addu $9,$9,$27
bne $9,$11,EndTest13
lui $4,128
and $1,$4,$2
subu $2,$2,$2
ori $2,$2,32
sw $2,-16($2)
or $3,$4,$2
ori $1,$0,88
multu $1,$0
andi $2,$1,128
and $3,$0,$3
ori $1,$2,112
ori $1,$2,160
mult $0,$0
mthi $3
divu $2,$1
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sb $1,0($0)
lh $4,0($0)
lw $1,80($4)
sb $1,16($0)
sltu $0,$3,$0
subu $0,$0,$0
lh $1,22($0)
and $1,$3,$4
multu $0,$0
lui $3,16
sw $0,80($0)
mtlo $0
sltu $2,$3,$2
subu $3,$3,$3
sb $0,96($3)
subu $1,$1,$1
subu $4,$4,$4
ori $1,$0,6
ori $4,$0,220
divu $4,$1
mflo $0
lh $4,0($0)
lh $0,80($0)
and $2,$3,$2
sltu $1,$3,$2
ori $0,$4,72
bne $3,$1,SubTest13
mflo $0
sltu $3,$3,$4
EndTest13:
subu $2,$2,$2
sw $31,152($2)
subu $31,$31,$31
lw $31,152($2)
sltu $0,$2,$4
jr $ra
subu $4,$2,$0


End:
