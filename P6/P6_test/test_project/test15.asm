ori $0, $0, 132
ori $1, $0, 156
ori $2, $0, 76
ori $3, $0, 148
ori $4, $0, 52
ori $5, $0, 140
ori $6, $0, 140
ori $7, $0, 152
ori $8, $0, 112
ori $9, $0, 112
ori $10, $0, 24
ori $11, $0, 64
ori $12, $0, 128
ori $13, $0, 76
ori $14, $0, 24
ori $15, $0, 64
ori $16, $0, 44
ori $17, $0, 24
ori $18, $0, 80
ori $19, $0, 76
ori $20, $0, 156
ori $21, $0, 28
ori $22, $0, 16
ori $23, $0, 44
ori $24, $0, 80
ori $25, $0, 48
ori $26, $0, 80
ori $27, $0, 144
ori $28, $0, 56
ori $29, $0, 80
ori $30, $0, 136
ori $31, $0, 12

mfhi $0
subu $2,$2,$2
sb $1,32($2)
jal Test_jal1
ori $3,$31,140
beq $0,$0,Test_beq1
andi $1,$31,80
Test_jal1: jr $ra
Test_beq1:
ori $1,$4,92
ori $1,$4,48
sltu $0,$2,$3
sb $0,112($0)
divu $4,$1
jal Test1
ori $2,$2,40
ori $2,$2,52
mfhi $0
mfhi $3
div $2,$2
Back1:

slt $4,$4,$3
mflo $1
ori $4,$4,12
ori $4,$4,76
mthi $1
mthi $2
div $4,$4
jal Test2
ori $2,$1,108
ori $2,$1,48
subu $3,$3,$3
subu $3,$3,$3
div $1,$2
Back2:

ori $1,$3,20
ori $1,$3,32
lui $2,128
mfhi $2
divu $3,$1
mult $4,$1
multu $0,$0
jal Test3
slt $0,$4,$4
Back3:

mult $0,$2
subu $1,$0,$0
lh $1,48($0)
jal Test4
mflo $3
Back4:

sltu $3,$2,$3
slt $2,$2,$4
jal Test_jal5
sb $2,-12288($31)
beq $0,$0,Test_beq5
sw $0,-12288($31)
Test_jal5: jr $ra
Test_beq5:
ori $2,$3,88
ori $2,$3,48
mflo $1
mflo $4
div $3,$2
jal Test5
mtlo $1
Back5:

or $1,$2,$4
addu $4,$4,$2
sb $3,64($0)
jal Test6
sltu $1,$4,$0
Back6:

andi $2,$3,156
mfhi $4
jal Test_jal7
sltu $2,$1,$31
beq $0,$0,Test_beq7
and $2,$0,$31
Test_jal7: jr $ra
Test_beq7:
mthi $2
jal Test7
ori $2,$2,136
ori $2,$2,44
lui $3,84
ori $0,$4,152
divu $2,$2
Back7:

mult $0,$4
or $3,$1,$0
mthi $2
jal Test8
and $1,$4,$4
Back8:

multu $0,$2
lw $1,0($0)
jal Test_jal9
or $0,$0,$31
beq $0,$0,Test_beq9
and $3,$4,$31
Test_jal9: jr $ra
Test_beq9:
lui $2,124
jal Test9
slt $2,$0,$1
Back9:

ori $2,$4,92
ori $3,$0,136
ori $0,$1,116
jal Test10
or $4,$2,$1
Back10:

mult $2,$2
addiu $3,$3,92
mtlo $4
jal Test11
lb $4,64($0)
Back11:

addu $3,$3,$2
subu $1,$3,$4
jal Test_jal12
sb $4,-12288($31)
beq $0,$0,Test_beq12
andi $0,$31,152
Test_jal12: jr $ra
Test_beq12:
subu $3,$3,$3
ori $3,$3,96
sw $1,0($3)
jal Test12
slt $4,$1,$1
Back12:

lb $0,32($0)
ori $1,$4,84
ori $1,$4,76
multu $3,$0
multu $3,$3
div $4,$1
jal Test_jal13
sltu $1,$1,$31
beq $0,$0,Test_beq13
slt $4,$3,$31
Test_jal13: jr $ra
Test_beq13:
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lh $0,0($0)
lh $1,80($0)
sw $1,96($0)
jal Test13
ori $2,$1,120
ori $2,$1,92
addiu $3,$0,112
subu $3,$3,$3
divu $1,$2
jal End
lui $0,96


Test1:
div $1,$31
subu $1,$4,$4
ori $3,$1,120
ori $3,$1,120
lh $4,112($0)
lw $2,16($0)
div $1,$3
subu $3,$3,$3
ori $3,$3,112
lw $0,-80($3)
subu $4,$4,$4
ori $4,$4,96
sb $3,0($4)
mflo $1
lui $1,8
lb $2,48($0)
lw $0,96($0)
lh $3,64($0)
lw $2,48($0)
ori $1,$3,80
ori $1,$3,104
mfhi $2
multu $4,$0
divu $3,$1
subu $1,$1,$1
subu $4,$4,$4
ori $1,$0,7
ori $4,$0,60
divu $4,$1
mflo $3
mthi $2
lw $4,0($3)
subu $1,$3,$3
and $4,$0,$1
ori $1,$1,124
ori $1,$1,88
ori $3,$4,8
ori $4,$2,28
div $1,$1
ori $3,$4,8
slt $2,$3,$1
mthi $3
subu $4,$4,$4
ori $4,$4,96
sb $0,-48($4)
andi $1,$3,104
lui $1,104
subu $1,$1,$4
ori $0,$3,144
subu $4,$0,$0
mflo $4
EndTest1:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
lb $4,96($0)


Test2:
slt $4,$2,$31
lh $2,32($0)
mtlo $3
slt $0,$3,$4
lui $3,128
or $0,$1,$4
or $2,$1,$1
mfhi $2
subu $3,$0,$4
slt $2,$1,$0
addiu $4,$2,68
lb $0,48($0)
subu $4,$4,$4
ori $4,$4,80
sw $1,-16($4)
slt $3,$1,$3
addu $0,$2,$2
lui $3,36
and $3,$4,$0
mfhi $2
and $4,$0,$4
andi $3,$2,84
multu $4,$2
bne $2,$0,EndTest2
ori $2,$4,156
ori $2,$4,76
lui $0,48
lui $1,28
div $4,$2
or $0,$2,$0
lui $4,72
mthi $1
sw $1,16($0)
EndTest2:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
lui $1,60


Test3:
lh $4,-12288($31)
mtlo $4
ori $2,$1,148
ori $2,$1,108
mflo $3
lui $4,52
divu $1,$2
ori $1,$1,8
mtlo $3
subu $3,$4,$0
andi $2,$2,24
multu $2,$2
sb $3,16($0)
mtlo $4
sh $1,48($0)
mult $1,$4
subu $1,$0,$2
mtlo $2
ori $4,$4,156
ori $4,$4,156
mflo $3
mflo $2
div $4,$4
multu $0,$4
mflo $1
lui $2,144
subu $0,$0,$1
mfhi $1
addu $3,$2,$3
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,9
ori $3,$0,328
divu $3,$2
mflo $4
multu $1,$1
lb $3,0($4)
ori $0,$0,8
ori $3,$0,60
slt $3,$2,$4
mfhi $0
EndTest3:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
ori $31,$2,0
or $3,$1,$0
jr $ra
sw $1,32($0)


Test4:
andi $3,$31,76
subu $25,$25,$25
subu $16,$16,$16
ori $16,$16,10
subu $14,$14,$14
ori $14,$14,1
SubTest4:
addu $25,$25,$14
beq $25,$16,EndTest4
ori $4,$4,136
ori $4,$4,92
and $2,$3,$1
sh $1,80($0)
divu $4,$4
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,112
sw $0,0($0)
ori $0,$0,96
lb $4,0($0)
sh $0,48($4)
lh $1,48($0)
mtlo $1
ori $4,$1,136
ori $3,$2,112
sltu $4,$3,$3
addiu $3,$0,96
lh $2,112($0)
lui $2,20
andi $0,$1,20
ori $1,$3,84
ori $1,$3,124
multu $0,$4
andi $4,$4,96
divu $3,$1
andi $0,$3,80
addu $2,$2,$0
andi $3,$4,28
mthi $1
andi $0,$1,120
subu $1,$1,$1
sw $4,48($1)
subu $1,$1,$1
ori $1,$1,96
sb $1,-32($1)
addiu $2,$3,120
mtlo $3
sltu $4,$3,$0
multu $3,$3
mult $1,$1
ori $1,$2,92
ori $1,$2,156
sltu $0,$4,$3
sltu $0,$0,$0
div $2,$1
ori $4,$2,152
ori $4,$2,76
lb $1,32($0)
mfhi $3
divu $2,$4
EndTest4:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
subu $4,$3,$0


Test5:
bne $4,$31,EndTest5
subu $10,$10,$10
subu $26,$26,$26
ori $26,$26,10
subu $14,$14,$14
ori $14,$14,1
SubTest5:
addu $10,$10,$14
bne $10,$26,EndTest5
or $0,$3,$0
slt $1,$4,$4
lh $1,0($0)
slt $2,$3,$2
multu $4,$4
andi $4,$1,120
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,32
sh $2,0($0)
ori $2,$2,48
lh $3,0($0)
sh $2,0($3)
sltu $1,$2,$2
sh $4,16($0)
mtlo $1
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lb $3,0($0)
lw $1,80($3)
sb $1,96($0)
multu $3,$2
lui $0,68
mult $4,$0
or $0,$3,$1
andi $1,$1,36
lui $3,16
mthi $2
and $0,$1,$1
multu $2,$3
mtlo $2
beq $2,$1,SubTest5
ori $2,$1,32
subu $2,$2,$2
sw $1,16($2)
slt $2,$1,$3
lh $3,96($0)
sb $1,64($0)
EndTest5:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
jr $ra
slt $4,$3,$0


Test6:
addiu $0,$31,64
subu $16,$16,$16
subu $10,$10,$10
ori $10,$10,10
subu $15,$15,$15
ori $15,$15,1
SubTest6:
addu $16,$16,$15
bne $16,$10,EndTest6
andi $3,$0,152
slt $2,$1,$0
lui $2,84
addu $0,$3,$1
mflo $2
mult $0,$1
mtlo $4
sltu $2,$3,$0
beq $2,$0,SubTest6
andi $3,$4,144
andi $2,$4,16
addiu $0,$1,96
subu $2,$2,$2
ori $2,$2,96
sb $2,-32($2)
mtlo $2
or $1,$3,$2
slt $2,$2,$1
lh $0,80($0)
lw $0,80($0)
mthi $1
lui $1,44
mult $3,$0
beq $0,$4,SubTest6
sltu $3,$2,$3
or $1,$0,$3
lui $1,80
mfhi $4
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,32
sb $4,0($0)
ori $4,$4,96
lw $0,0($0)
sb $4,32($0)
mult $0,$3
EndTest6:
subu $4,$4,$4
sw $31,20($4)
subu $31,$31,$31
lw $31,20($4)
jr $ra
mflo $0


Test7:
mult $31,$3
subu $23,$23,$23
subu $29,$29,$29
ori $29,$29,10
subu $7,$7,$7
ori $7,$7,1
SubTest7:
addu $23,$23,$7
beq $23,$29,EndTest7
sw $0,112($0)
mult $0,$2
mthi $3
mfhi $4
mflo $3
ori $2,$2,144
ori $2,$2,68
lui $4,156
lui $4,40
div $2,$2
mflo $1
or $0,$3,$2
mult $4,$0
mtlo $4
mtlo $0
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,0
sh $1,0($0)
ori $1,$1,64
lb $2,0($0)
sb $1,0($2)
mtlo $2
mflo $0
sltu $1,$1,$0
lui $0,128
subu $3,$3,$3
lw $1,16($3)
mflo $4
lb $1,80($0)
subu $2,$2,$2
ori $2,$2,112
sw $2,-16($2)
andi $2,$3,132
subu $0,$2,$4
sb $4,96($0)
mthi $1
sltu $1,$4,$0
sltu $0,$3,$1
EndTest7:
subu $3,$3,$3
sw $31,76($3)
subu $31,$31,$31
lw $31,76($3)
jr $ra
mflo $2


Test8:
beq $3,$31,EndTest8
subu $17,$17,$17
subu $5,$5,$5
ori $5,$5,10
subu $11,$11,$11
ori $11,$11,1
SubTest8:
addu $17,$17,$11
beq $17,$5,EndTest8
andi $3,$4,44
subu $3,$3,$3
sw $1,16($3)
addu $4,$0,$3
lui $0,52
ori $1,$3,96
ori $1,$3,56
slt $0,$4,$0
slt $0,$0,$4
div $3,$1
and $2,$4,$1
subu $4,$4,$4
ori $4,$4,80
sb $2,-64($4)
mfhi $2
ori $4,$1,4
ori $4,$1,60
addiu $2,$3,112
mult $0,$2
divu $1,$4
subu $2,$2,$2
sb $1,112($2)
andi $0,$0,156
lui $4,124
ori $3,$3,44
ori $3,$3,112
mfhi $4
mfhi $1
div $3,$3
subu $1,$1,$4
subu $0,$0,$0
sw $1,64($0)
subu $2,$2,$2
sw $1,112($2)
sltu $2,$2,$4
mthi $3
subu $3,$3,$3
ori $3,$3,48
lw $3,0($3)
mfhi $1
sh $4,96($0)
ori $4,$3,68
ori $4,$3,72
andi $2,$2,108
subu $1,$2,$1
divu $3,$4
subu $1,$1,$1
sb $2,32($1)
ori $4,$4,156
ori $4,$4,4
mult $2,$2
mult $1,$2
div $4,$4
mult $0,$1
and $4,$0,$3
EndTest8:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
andi $4,$0,96


Test9:
slt $2,$3,$31
subu $27,$27,$27
subu $13,$13,$13
ori $13,$13,10
subu $8,$8,$8
ori $8,$8,1
SubTest9:
addu $27,$27,$8
bne $27,$13,EndTest9
ori $0,$2,128
ori $1,$1,108
ori $1,$1,88
subu $4,$3,$2
subu $3,$4,$0
div $1,$1
mfhi $2
lui $3,96
multu $0,$0
multu $4,$2
and $0,$3,$4
mult $2,$3
andi $0,$4,44
mflo $4
ori $3,$1,120
mtlo $4
mfhi $1
multu $1,$0
subu $3,$3,$3
sw $3,96($3)
mflo $1
ori $2,$2,60
slt $2,$0,$3
ori $1,$1,4
mflo $3
lui $2,96
lb $1,64($0)
or $4,$1,$3
subu $3,$0,$2
ori $0,$0,72
bne $4,$3,SubTest9
ori $1,$1,72
EndTest9:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
jr $ra
multu $3,$4


Test10:
and $2,$4,$31
subu $11,$11,$11
subu $23,$23,$23
ori $23,$23,10
subu $27,$27,$27
ori $27,$27,1
SubTest10:
addu $11,$11,$27
beq $11,$23,EndTest10
ori $4,$0,84
mthi $3
and $0,$4,$4
mthi $1
ori $2,$4,44
ori $2,$4,56
mthi $1
lw $3,112($0)
divu $4,$2
mthi $2
slt $2,$3,$4
and $4,$4,$2
subu $3,$1,$0
or $4,$4,$0
mult $3,$3
mfhi $0
beq $4,$2,SubTest10
subu $0,$4,$2
sh $0,0($0)
slt $4,$0,$2
and $3,$3,$2
andi $4,$1,72
multu $4,$2
subu $1,$1,$1
ori $1,$1,96
sb $4,0($1)
subu $3,$3,$3
subu $2,$2,$2
ori $3,$0,7
ori $2,$0,60
divu $2,$3
mflo $1
lw $2,0($1)
ori $3,$4,120
ori $3,$4,84
mthi $2
mthi $2
div $4,$3
ori $0,$2,4
mtlo $2
addu $2,$2,$1
subu $1,$1,$1
lb $2,15($1)
and $4,$2,$1
EndTest10:
subu $2,$2,$2
sw $31,96($2)
subu $31,$31,$31
lw $31,96($2)
jr $ra
ori $1,$3,68


Test11:
addu $4,$31,$4
subu $25,$25,$25
subu $22,$22,$22
ori $22,$22,10
subu $19,$19,$19
ori $19,$19,1
SubTest11:
addu $25,$25,$19
beq $25,$22,EndTest11
or $0,$1,$4
sb $4,80($0)
mtlo $4
ori $3,$3,36
ori $3,$3,104
andi $0,$4,60
lb $4,96($0)
divu $3,$3
or $4,$3,$0
subu $1,$1,$1
ori $1,$1,112
sh $2,-64($1)
slt $4,$2,$4
multu $2,$2
lb $0,16($0)
beq $0,$4,SubTest11
sltu $3,$3,$3
subu $2,$4,$3
mflo $2
mtlo $3
subu $0,$0,$4
mthi $0
mult $4,$3
or $4,$0,$0
addiu $3,$0,36
subu $2,$2,$2
sb $3,64($2)
slt $1,$3,$3
subu $2,$1,$3
sw $3,112($0)
or $1,$3,$0
sltu $4,$1,$4
mthi $2
mflo $1
EndTest11:
subu $2,$2,$2
sw $31,112($2)
subu $31,$31,$31
lw $31,112($2)
jr $ra
sw $2,64($0)


Test12:
sw $3,-12288($31)
mflo $0
lb $4,48($0)
ori $3,$1,132
ori $3,$1,100
sw $0,16($0)
mthi $2
divu $1,$3
subu $3,$4,$1
mthi $0
sltu $2,$0,$0
subu $4,$3,$2
sw $4,96($0)
mflo $3
addu $1,$0,$3
mtlo $0
andi $2,$0,52
or $0,$2,$0
ori $4,$3,20
ori $4,$3,92
sltu $1,$1,$1
sltu $2,$2,$2
div $3,$4
subu $3,$3,$3
sb $2,112($3)
andi $0,$3,152
mtlo $2
andi $0,$2,48
subu $2,$2,$2
subu $1,$1,$1
ori $2,$0,6
ori $1,$0,244
divu $1,$2
mflo $3
lw $1,0($3)
bne $3,$4,EndTest12
mthi $3
mult $4,$1
mfhi $0
subu $3,$3,$3
ori $3,$3,32
lw $2,0($3)
ori $2,$3,136
mflo $4
EndTest12:
subu $3,$3,$3
addu $3,$31,$3
subu $31,$31,$31
addu $31,$0,$3
ori $3,$1,88
jr $ra
subu $3,$4,$1


Test13:
sltu $3,$2,$31
subu $16,$16,$16
subu $13,$13,$13
ori $13,$13,10
subu $12,$12,$12
ori $12,$12,1
SubTest13:
addu $16,$16,$12
bne $16,$13,EndTest13
sb $1,80($0)
subu $4,$4,$0
and $0,$0,$4
ori $1,$4,80
ori $1,$4,80
sw $3,48($0)
addu $3,$3,$3
divu $4,$1
slt $4,$2,$4
ori $1,$4,148
ori $1,$4,124
ori $0,$2,4
ori $0,$2,12
divu $4,$1
sw $0,0($0)
or $4,$3,$1
subu $2,$2,$1
beq $0,$4,SubTest13
lui $2,152
mflo $1
ori $1,$4,76
ori $1,$4,128
mfhi $3
mfhi $2
div $4,$1
mult $0,$0
multu $1,$4
lw $3,16($0)
subu $0,$1,$0
mthi $2
subu $0,$2,$1
multu $1,$3
andi $4,$0,44
sw $1,16($0)
or $0,$2,$0
mfhi $4
andi $0,$0,128
or $2,$0,$3
lw $1,64($0)
EndTest13:
subu $2,$2,$2
addu $3,$31,$2
addu $31,$31,$31
subu $31,$31,$3
slt $2,$1,$2
jr $ra
div $1,$ra


End:
