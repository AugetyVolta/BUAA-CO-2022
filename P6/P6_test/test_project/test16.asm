ori $0, $0, 48
ori $1, $0, 32
ori $2, $0, 112
ori $3, $0, 16
ori $4, $0, 108
ori $5, $0, 16
ori $6, $0, 64
ori $7, $0, 44
ori $8, $0, 24
ori $9, $0, 32
ori $10, $0, 44
ori $11, $0, 28
ori $12, $0, 104
ori $13, $0, 52
ori $14, $0, 100
ori $15, $0, 28
ori $16, $0, 60
ori $17, $0, 128
ori $18, $0, 96
ori $19, $0, 40
ori $20, $0, 56
ori $21, $0, 104
ori $22, $0, 40
ori $23, $0, 24
ori $24, $0, 88
ori $25, $0, 88
ori $26, $0, 100
ori $27, $0, 48
ori $28, $0, 72
ori $29, $0, 24
ori $30, $0, 108
ori $31, $0, 132

mtlo $0
ori $1,$4,20
ori $1,$4,72
mflo $0
mflo $3
div $4,$1
jal Test_jal1
ori $4,$31,76
beq $0,$0,Test_beq1
subu $1,$0,$31
Test_jal1: jr $ra
Test_beq1:
addu $2,$0,$2
jal Test1
ori $3,$1,20
ori $3,$1,124
sb $4,64($0)
sw $2,64($0)
div $1,$3
Back1:

mtlo $3
subu $2,$2,$2
sb $1,16($2)
mult $1,$4
jal Test2
and $0,$2,$3
Back2:

mflo $0
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sh $2,0($0)
lb $2,0($0)
lb $2,48($2)
sb $2,32($0)
jal Test_jal3
or $2,$2,$31
beq $0,$0,Test_beq3
sw $4,-12288($31)
Test_jal3: jr $ra
Test_beq3:
mfhi $3
jal Test3
sh $3,48($0)
Back3:

lui $3,44
ori $2,$1,36
ori $2,$1,108
lb $4,48($0)
lw $3,96($0)
div $1,$2
jal Test_jal4
andi $4,$31,28
beq $0,$0,Test_beq4
or $2,$0,$31
Test_jal4: jr $ra
Test_beq4:
ori $3,$2,36
ori $3,$2,56
lb $4,16($0)
lh $1,80($0)
div $2,$3
jal Test4
slt $0,$3,$1
Back4:

mtlo $1
and $4,$2,$3
jal Test_jal5
addu $3,$31,$4
beq $0,$0,Test_beq5
andi $3,$31,88
Test_jal5: jr $ra
Test_beq5:
ori $4,$3,92
ori $4,$3,60
lui $1,40
lui $1,48
div $3,$4
jal Test5
lui $0,112
Back5:

lui $0,4
sh $0,64($0)
jal Test_jal6
or $3,$2,$31
beq $0,$0,Test_beq6
and $2,$0,$31
Test_jal6: jr $ra
Test_beq6:
slt $1,$0,$1
jal Test6
mthi $0
Back6:

andi $4,$4,0
or $1,$3,$0
jal Test_jal7
multu $31,$0
beq $0,$0,Test_beq7
andi $0,$31,44
Test_jal7: jr $ra
Test_beq7:
mfhi $1
jal Test7
ori $3,$1,148
ori $3,$1,88
mult $2,$4
mult $0,$4
div $1,$3
Back7:

mthi $4
ori $3,$2,96
ori $3,$2,148
andi $4,$4,36
andi $4,$4,4
div $2,$3
jal Test_jal8
or $4,$4,$31
beq $0,$0,Test_beq8
mult $31,$1
Test_jal8: jr $ra
Test_beq8:
multu $2,$0
jal Test8
ori $1,$4,124
Back8:

ori $3,$3,136
subu $0,$0,$0
lh $0,58($0)
and $2,$1,$0
jal Test9
lb $0,48($0)
Back9:

subu $3,$3,$3
ori $3,$3,112
sw $2,-16($3)
mtlo $3
ori $4,$4,88
ori $4,$4,96
addiu $1,$3,24
addu $3,$1,$1
div $4,$4
jal Test10
mflo $1
Back10:

mthi $2
mthi $2
slt $1,$2,$0
jal Test11
mfhi $2
Back11:

andi $2,$0,80
subu $1,$3,$4
mflo $2
jal Test12
mult $1,$0
Back12:

mfhi $0
subu $2,$1,$2
jal Test_jal13
subu $4,$4,$31
beq $0,$0,Test_beq13
ori $0,$31,52
Test_jal13: jr $ra
Test_beq13:
sltu $4,$3,$3
jal Test13
ori $4,$3,104
ori $4,$3,28
multu $2,$1
mfhi $0
divu $3,$4
jal End
slt $1,$2,$2


Test1:
andi $4,$31,0
subu $25,$25,$25
subu $28,$28,$28
ori $28,$28,10
subu $16,$16,$16
ori $16,$16,1
SubTest1:
addu $25,$25,$16
beq $25,$28,EndTest1
mfhi $2
mfhi $0
ori $4,$2,128
ori $4,$2,68
mfhi $1
sltu $1,$1,$1
divu $2,$4
subu $1,$3,$3
mthi $4
andi $2,$2,72
subu $1,$1,$1
ori $1,$1,64
sw $4,-16($1)
slt $2,$3,$4
mthi $1
subu $3,$3,$3
sh $2,0($3)
sb $3,112($0)
mflo $3
or $0,$1,$0
subu $4,$2,$0
mthi $1
mtlo $3
lb $2,64($0)
mtlo $4
and $1,$4,$3
and $2,$4,$1
subu $4,$4,$4
lh $0,20($4)
mflo $1
or $3,$4,$3
mfhi $1
lui $4,32
ori $1,$4,104
EndTest1:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
ori $31,$4,0
andi $4,$2,144
jr $ra
slt $0,$0,$3


Test2:
ori $3,$31,96
multu $0,$2
addu $0,$0,$2
subu $3,$0,$2
mfhi $4
ori $4,$1,60
ori $4,$1,56
and $2,$0,$2
and $0,$3,$0
div $1,$4
mthi $3
addu $3,$2,$1
bne $2,$2,EndTest2
ori $4,$4,104
ori $4,$4,4
lui $1,116
or $3,$3,$2
divu $4,$4
subu $2,$2,$2
ori $2,$2,64
lb $4,-31($2)
ori $3,$1,132
bne $4,$4,EndTest2
multu $2,$1
mult $1,$2
andi $2,$4,52
subu $3,$3,$3
sw $1,0($3)
subu $2,$1,$2
sh $3,48($0)
and $1,$2,$2
mthi $0
and $1,$4,$1
ori $3,$4,12
ori $3,$4,44
or $2,$1,$1
or $1,$1,$0
div $4,$3
mfhi $3
mult $0,$4
ori $4,$2,36
ori $4,$2,72
subu $3,$3,$0
subu $0,$3,$0
div $2,$4
multu $3,$3
mult $4,$1
EndTest2:
subu $4,$4,$4
sw $31,104($4)
subu $31,$31,$31
lw $31,104($4)
jr $ra
mult $4,$0


Test3:
andi $2,$31,36
subu $14,$14,$14
subu $13,$13,$13
ori $13,$13,10
subu $16,$16,$16
ori $16,$16,1
SubTest3:
addu $14,$14,$16
beq $14,$13,EndTest3
and $2,$1,$4
mult $2,$0
and $1,$1,$4
or $3,$1,$4
or $2,$1,$0
ori $2,$0,40
andi $4,$2,108
sltu $3,$4,$4
or $2,$4,$4
subu $4,$4,$4
ori $4,$4,80
sw $1,-64($4)
mflo $3
sb $4,112($0)
mult $2,$4
subu $2,$2,$2
sh $3,64($2)
ori $3,$1,104
or $3,$4,$3
mtlo $1
mult $3,$4
mflo $4
mtlo $0
sb $4,64($0)
sb $1,48($0)
beq $2,$3,SubTest3
mthi $3
sb $2,64($0)
slt $3,$4,$2
mthi $0
EndTest3:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
addu $31,$0,$2
ori $3,$1,40
ori $3,$1,40
mthi $4
mthi $4
div $1,$3
jr $ra
sltu $0,$4,$1


Test4:
subu $3,$1,$31
subu $16,$16,$16
subu $25,$25,$25
ori $25,$25,10
subu $26,$26,$26
ori $26,$26,1
SubTest4:
addu $16,$16,$26
bne $16,$25,EndTest4
andi $4,$2,68
mfhi $3
andi $2,$1,60
subu $0,$4,$4
subu $3,$3,$3
ori $3,$3,112
lw $0,-96($3)
mtlo $0
ori $1,$2,88
andi $2,$4,68
and $0,$1,$3
mtlo $3
subu $1,$1,$1
lb $3,21($1)
beq $1,$4,SubTest4
ori $2,$4,72
or $4,$1,$2
mfhi $0
subu $3,$3,$3
sw $3,96($3)
ori $1,$2,136
ori $1,$2,4
slt $3,$4,$3
slt $4,$3,$3
div $2,$1
or $4,$2,$2
and $1,$4,$3
or $0,$0,$4
ori $3,$1,60
ori $2,$3,144
ori $2,$3,140
multu $1,$4
multu $4,$0
div $3,$2
or $3,$2,$4
mult $1,$4
beq $3,$0,SubTest4
ori $2,$3,44
ori $2,$3,100
lui $1,112
lui $4,116
div $3,$2
lui $0,28
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sh $1,0($0)
lb $3,0($0)
lw $1,32($3)
sh $1,32($0)
EndTest4:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
lui $1,156


Test5:
or $1,$4,$31
mthi $0
and $1,$1,$2
andi $3,$0,64
ori $1,$2,76
ori $1,$2,64
addu $4,$3,$3
addu $3,$0,$3
div $2,$1
andi $2,$2,112
mflo $3
lb $3,112($0)
mflo $2
subu $4,$0,$4
addu $1,$1,$4
and $0,$0,$4
mthi $0
subu $2,$2,$2
ori $2,$2,112
sh $3,-96($2)
ori $2,$2,52
ori $2,$2,144
multu $4,$1
mthi $0
divu $2,$2
lui $0,124
sb $4,80($0)
mthi $2
mthi $1
ori $4,$4,128
mtlo $0
ori $1,$3,92
ori $1,$3,32
sw $2,112($0)
subu $4,$2,$0
divu $3,$1
mthi $3
lui $2,60
andi $1,$3,40
beq $2,$3,EndTest5
sltu $4,$1,$0
EndTest5:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
ori $31,$4,0
jr $ra
mthi $3


Test6:
lw $4,-12288($31)
lui $4,72
mthi $4
ori $2,$3,108
ori $2,$3,160
lb $1,48($0)
lw $1,64($0)
div $3,$2
mflo $1
sw $0,32($0)
subu $1,$3,$0
sh $3,16($0)
mtlo $1
ori $1,$1,140
ori $1,$1,24
addu $0,$2,$4
ori $2,$2,148
divu $1,$1
subu $1,$1,$3
mfhi $1
mult $1,$1
lui $1,40
ori $2,$4,40
ori $2,$4,48
mult $1,$3
mult $3,$3
div $4,$2
mthi $3
subu $4,$4,$4
ori $4,$4,112
sh $0,-48($4)
andi $4,$0,40
ori $2,$4,144
ori $2,$4,156
ori $0,$3,104
or $1,$0,$3
divu $4,$2
subu $1,$1,$1
subu $2,$2,$2
ori $1,$0,9
ori $2,$0,328
divu $2,$1
mflo $3
lh $2,0($3)
ori $4,$2,24
ori $4,$2,140
ori $1,$1,52
ori $3,$1,148
div $2,$4
ori $1,$1,84
andi $4,$4,148
sw $0,0($0)
beq $3,$1,EndTest6
subu $3,$1,$0
and $1,$0,$1
EndTest6:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
slt $3,$3,$1


Test7:
ori $2,$31,24
subu $17,$17,$17
subu $29,$29,$29
ori $29,$29,10
subu $20,$20,$20
ori $20,$20,1
SubTest7:
addu $17,$17,$20
beq $17,$29,EndTest7
mult $1,$0
and $0,$4,$3
ori $1,$4,108
mthi $2
andi $0,$2,96
andi $3,$4,136
slt $0,$4,$2
lui $2,140
addiu $3,$0,56
multu $2,$1
ori $2,$4,44
subu $3,$3,$3
sh $2,96($3)
beq $1,$3,SubTest7
lw $0,112($0)
multu $2,$3
multu $2,$2
mthi $0
mflo $4
addiu $1,$4,140
andi $1,$3,132
mtlo $2
sb $4,0($0)
mult $3,$4
or $0,$1,$2
andi $0,$4,96
lui $4,48
or $0,$4,$3
EndTest7:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
jr $ra
lui $3,68


Test8:
addiu $4,$31,116
subu $3,$3,$3
ori $3,$3,112
sw $0,-32($3)
mtlo $2
slt $3,$3,$1
sltu $4,$0,$2
mult $3,$4
ori $1,$1,96
ori $1,$1,52
sw $4,96($0)
sw $2,64($0)
div $1,$1
sb $3,80($0)
ori $4,$1,136
ori $4,$1,140
andi $3,$3,76
andi $0,$3,148
div $1,$4
or $2,$2,$2
mflo $3
mthi $4
lui $2,136
ori $1,$1,104
ori $1,$1,148
sltu $0,$2,$0
sltu $4,$0,$2
div $1,$1
or $3,$0,$2
mfhi $2
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,80
sw $4,0($0)
ori $4,$4,32
lb $1,0($0)
sw $4,96($1)
ori $2,$1,112
ori $2,$1,140
addu $4,$4,$4
addu $4,$3,$3
div $1,$2
addiu $0,$2,8
sltu $3,$0,$4
slt $2,$2,$1
addiu $3,$4,72
addiu $2,$3,108
slt $3,$1,$1
subu $1,$1,$1
ori $1,$1,64
sb $2,-32($1)
subu $1,$1,$0
EndTest8:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
jr $ra
sh $2,64($0)


Test9:
bne $1,$31,EndTest9
subu $10,$10,$10
subu $12,$12,$12
ori $12,$12,10
subu $25,$25,$25
ori $25,$25,1
SubTest9:
addu $10,$10,$25
beq $10,$12,EndTest9
lh $3,112($0)
ori $1,$3,88
ori $1,$3,160
mfhi $2
mthi $0
divu $3,$1
slt $0,$2,$0
ori $1,$1,72
mthi $0
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,96
sw $2,0($0)
ori $2,$2,64
lw $3,0($0)
sb $2,0($3)
lui $0,104
mult $4,$0
multu $1,$2
mtlo $0
multu $3,$2
sw $1,0($0)
subu $1,$1,$1
sh $4,16($1)
ori $3,$3,124
ori $4,$2,152
ori $4,$2,152
addiu $3,$1,36
mult $0,$0
divu $2,$4
ori $4,$2,112
ori $4,$2,120
sh $1,80($0)
andi $1,$3,52
divu $2,$4
lb $4,64($0)
and $2,$0,$2
or $3,$4,$3
mult $3,$2
mult $4,$3
andi $3,$0,132
andi $3,$1,84
ori $3,$1,8
ori $3,$1,156
mtlo $2
subu $4,$4,$2
divu $1,$3
lw $0,64($0)
multu $0,$0
EndTest9:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
addiu $4,$1,80
jr $ra
slt $1,$4,$2


Test10:
sltu $3,$1,$31
subu $2,$3,$0
mflo $1
mfhi $4
or $0,$4,$4
subu $0,$0,$0
sw $1,32($0)
and $3,$2,$4
mfhi $2
mthi $1
andi $0,$2,136
ori $3,$3,156
ori $3,$3,80
mflo $1
sltu $2,$0,$4
divu $3,$3
sltu $1,$2,$3
mult $0,$4
or $2,$0,$1
and $4,$2,$3
mthi $4
mtlo $4
or $3,$2,$4
sltu $3,$1,$2
lui $1,120
mtlo $0
mult $3,$3
mult $0,$3
bne $3,$0,EndTest10
mthi $4
ori $4,$4,28
ori $4,$4,44
slt $3,$0,$1
addiu $0,$0,132
divu $4,$4
lh $4,0($0)
EndTest10:
subu $3,$3,$3
addu $2,$31,$3
addu $31,$31,$31
subu $31,$31,$2
jr $ra
or $1,$0,$4


Test11:
subu $3,$1,$31
subu $27,$27,$27
subu $15,$15,$15
ori $15,$15,10
subu $11,$11,$11
ori $11,$11,1
SubTest11:
addu $27,$27,$11
bne $27,$15,EndTest11
mult $0,$4
multu $4,$0
mfhi $2
and $4,$3,$4
mtlo $4
subu $4,$4,$4
sb $0,32($4)
sh $3,64($0)
mtlo $3
and $1,$2,$2
andi $2,$0,0
sb $4,64($0)
and $4,$1,$4
mult $2,$1
ori $3,$1,52
ori $3,$1,108
sltu $4,$2,$2
mthi $4
divu $1,$3
mtlo $4
sltu $1,$3,$1
or $1,$1,$4
subu $0,$0,$0
lb $0,78($0)
multu $1,$4
slt $1,$4,$0
mthi $2
ori $1,$2,36
ori $1,$2,112
multu $4,$3
subu $4,$4,$3
divu $2,$1
mfhi $4
subu $0,$0,$0
sh $4,32($0)
ori $2,$1,64
ori $2,$1,88
lb $0,80($0)
lw $3,48($0)
div $1,$2
slt $3,$3,$0
EndTest11:
subu $4,$4,$4
addu $2,$31,$4
addu $31,$31,$31
subu $31,$31,$2
or $3,$3,$4
jr $ra
addiu $1,$3,0


Test12:
andi $0,$31,0
subu $5,$5,$5
subu $9,$9,$9
ori $9,$9,10
subu $6,$6,$6
ori $6,$6,1
SubTest12:
addu $5,$5,$6
bne $5,$9,EndTest12
mtlo $1
addiu $0,$4,152
mthi $2
andi $4,$0,140
sltu $2,$0,$0
mfhi $4
andi $2,$0,56
mult $4,$3
or $2,$2,$0
mflo $0
ori $1,$4,80
ori $1,$4,32
mfhi $2
slt $0,$2,$2
divu $4,$1
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lb $0,0($0)
lh $2,112($0)
sb $2,96($0)
addiu $0,$0,88
mflo $3
addiu $2,$3,32
ori $2,$4,36
mtlo $4
ori $2,$2,44
ori $2,$2,60
mflo $1
slt $1,$0,$4
divu $2,$2
lui $3,28
ori $4,$3,72
ori $4,$3,160
mtlo $1
multu $2,$2
divu $3,$4
mtlo $0
mfhi $4
mflo $3
ori $2,$3,64
ori $2,$3,52
and $0,$4,$1
and $1,$1,$4
div $3,$2
mfhi $4
and $1,$3,$4
EndTest12:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
jr $ra
sb $4,64($0)


Test13:
or $0,$4,$31
subu $22,$22,$22
subu $25,$25,$25
ori $25,$25,10
subu $16,$16,$16
ori $16,$16,1
SubTest13:
addu $22,$22,$16
bne $22,$25,EndTest13
sltu $1,$1,$4
ori $3,$2,52
ori $3,$2,128
subu $0,$4,$1
subu $0,$1,$0
div $2,$3
addiu $2,$4,112
sltu $2,$0,$1
sw $2,32($0)
subu $4,$4,$4
sw $1,32($4)
mfhi $4
ori $3,$4,120
ori $3,$4,48
multu $1,$2
addu $0,$1,$2
divu $4,$3
ori $2,$1,132
lb $3,64($0)
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sb $4,0($0)
lh $3,0($0)
lb $4,112($3)
sb $4,48($0)
ori $1,$3,52
ori $1,$3,72
multu $0,$0
mthi $4
divu $3,$1
mult $0,$3
ori $3,$3,148
andi $2,$4,44
sw $4,16($0)
subu $0,$0,$0
sw $1,16($0)
sb $1,0($0)
or $4,$2,$2
sltu $4,$1,$4
subu $3,$3,$3
ori $3,$3,112
sh $3,-80($3)
mtlo $4
lw $4,16($0)
slt $0,$3,$1
and $2,$0,$3
and $1,$0,$2
EndTest13:
subu $2,$2,$2
addu $2,$31,$2
addu $31,$31,$31
subu $31,$31,$2
jr $ra
mtlo $4


End:
