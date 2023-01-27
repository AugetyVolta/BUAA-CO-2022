ori $0, $0, 92
ori $1, $0, 8
ori $2, $0, 48
ori $3, $0, 28
ori $4, $0, 104
ori $5, $0, 72
ori $6, $0, 156
ori $7, $0, 112
ori $8, $0, 96
ori $9, $0, 104
ori $10, $0, 124
ori $11, $0, 0
ori $12, $0, 72
ori $13, $0, 96
ori $14, $0, 0
ori $15, $0, 124
ori $16, $0, 136
ori $17, $0, 80
ori $18, $0, 100
ori $19, $0, 24
ori $20, $0, 40
ori $21, $0, 152
ori $22, $0, 4
ori $23, $0, 92
ori $24, $0, 144
ori $25, $0, 88
ori $26, $0, 108
ori $27, $0, 92
ori $28, $0, 36
ori $29, $0, 12
ori $30, $0, 92
ori $31, $0, 104

mflo $2
mult $1,$0
andi $3,$0,76
jal Test1
and $3,$3,$2
Back1:

subu $4,$0,$2
or $2,$4,$2
jal Test_jal2
or $1,$3,$31
beq $0,$0,Test_beq2
addiu $4,$31,44
Test_jal2: jr $ra
Test_beq2:
lw $4,96($0)
jal Test2
mfhi $1
Back2:

ori $3,$4,32
ori $3,$4,16
mthi $0
mfhi $1
divu $4,$3
subu $2,$2,$4
jal Test_jal3
subu $3,$4,$31
beq $0,$0,Test_beq3
and $4,$3,$31
Test_jal3: jr $ra
Test_beq3:
subu $4,$4,$4
sw $1,16($4)
jal Test3
sltu $2,$0,$2
Back3:

mtlo $3
ori $0,$0,56
jal Test_jal4
lb $1,-12288($31)
beq $0,$0,Test_beq4
addu $4,$31,$1
Test_jal4: jr $ra
Test_beq4:
or $2,$2,$0
jal Test4
mtlo $2
Back4:

ori $1,$3,56
ori $2,$3,36
ori $2,$3,116
andi $1,$0,20
lb $4,32($0)
divu $3,$2
jal Test_jal5
mtlo $31
beq $0,$0,Test_beq5
mtlo $31
Test_jal5: jr $ra
Test_beq5:
subu $4,$4,$4
sb $3,80($4)
jal Test5
ori $1,$3,152
ori $1,$3,48
and $2,$4,$4
and $4,$2,$4
div $3,$1
Back5:

lui $4,84
mfhi $4
sltu $2,$0,$2
jal Test6
mult $3,$4
Back6:

ori $4,$3,44
ori $4,$3,144
subu $2,$2,$1
subu $2,$1,$1
div $3,$4
slt $1,$4,$0
jal Test_jal7
lw $0,-12288($31)
beq $0,$0,Test_beq7
mult $31,$2
Test_jal7: jr $ra
Test_beq7:
mflo $0
jal Test7
mtlo $2
Back7:

mthi $0
multu $1,$2
ori $1,$1,160
ori $1,$1,48
or $0,$3,$3
or $2,$3,$3
div $1,$1
jal Test8
sw $2,80($0)
Back8:

mfhi $4
mtlo $4
jal Test_jal9
addu $3,$31,$0
beq $0,$0,Test_beq9
addiu $3,$31,108
Test_jal9: jr $ra
Test_beq9:
lui $0,136
jal Test9
ori $3,$3,156
ori $3,$3,24
or $4,$1,$4
or $0,$4,$2
div $3,$3
Back9:

addu $1,$2,$1
sltu $1,$4,$3
jal Test_jal10
slt $4,$4,$31
beq $0,$0,Test_beq10
slt $3,$3,$31
Test_jal10: jr $ra
Test_beq10:
subu $4,$4,$3
jal Test10
mfhi $2
Back10:

subu $3,$4,$0
ori $2,$1,48
lui $2,0
lw $4,80($2)
slt $0,$1,$1
jal Test11
mtlo $4
Back11:

sltu $4,$2,$3
mtlo $2
mult $3,$4
jal Test12
mtlo $0
Back12:

subu $1,$4,$0
addu $1,$0,$1
jal Test_jal13
slt $2,$4,$31
beq $0,$0,Test_beq13
and $1,$3,$31
Test_jal13: jr $ra
Test_beq13:
and $1,$2,$1
jal Test13
andi $3,$4,60
jal End
mflo $1


Test1:
sw $0,-12288($31)
subu $29,$29,$29
subu $28,$28,$28
ori $28,$28,10
subu $19,$19,$19
ori $19,$19,1
SubTest1:
addu $29,$29,$19
beq $29,$28,EndTest1
or $1,$0,$4
multu $2,$2
or $0,$4,$0
sb $0,64($0)
ori $2,$1,140
ori $2,$1,144
mflo $4
or $4,$4,$3
divu $1,$2
mthi $0
slt $0,$3,$3
addiu $4,$0,128
ori $1,$2,44
mult $3,$3
ori $1,$0,84
ori $3,$2,68
ori $3,$2,100
slt $1,$4,$1
subu $1,$1,$1
divu $2,$3
mthi $0
mfhi $1
ori $3,$1,76
ori $3,$1,112
and $4,$4,$4
andi $0,$0,112
divu $1,$3
lui $2,84
multu $3,$0
andi $0,$4,20
bne $4,$2,SubTest1
slt $0,$4,$1
subu $1,$1,$1
ori $1,$1,112
sh $0,-112($1)
andi $4,$2,40
multu $2,$2
sb $4,112($0)
ori $3,$1,76
ori $3,$1,100
ori $4,$4,116
mfhi $4
divu $1,$3
subu $3,$1,$3
slt $1,$0,$1
EndTest1:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
sltu $3,$0,$1
jr $ra
addu $4,$1,$4


Test2:
slt $3,$0,$31
subu $25,$25,$25
subu $19,$19,$19
ori $19,$19,10
subu $30,$30,$30
ori $30,$30,1
SubTest2:
addu $25,$25,$30
bne $25,$19,EndTest2
ori $3,$1,4
addu $0,$3,$1
mult $0,$1
mflo $4
sltu $4,$1,$2
mult $2,$4
addu $1,$3,$4
addiu $1,$2,108
subu $3,$3,$1
subu $1,$0,$1
mflo $2
beq $4,$3,SubTest2
and $3,$2,$2
subu $2,$2,$2
sh $0,80($2)
subu $4,$4,$4
sb $4,32($4)
lb $2,96($0)
subu $1,$1,$1
ori $1,$1,64
lw $4,0($1)
mult $0,$0
mtlo $2
addu $3,$3,$2
ori $2,$2,120
ori $2,$2,8
multu $4,$4
slt $3,$3,$4
divu $2,$2
subu $1,$1,$1
subu $3,$3,$3
ori $1,$0,7
ori $3,$0,32
divu $3,$1
mflo $2
addu $4,$4,$4
lh $3,0($2)
and $4,$2,$4
and $2,$2,$3
and $2,$2,$4
subu $1,$1,$1
ori $1,$1,112
sb $0,-64($1)
bne $0,$3,SubTest2
mfhi $0
EndTest2:
subu $3,$3,$3
addu $4,$31,$3
subu $31,$31,$31
ori $31,$4,0
subu $2,$4,$3
jr $ra
or $4,$3,$3


Test3:
subu $2,$2,$31
slt $0,$3,$4
sh $0,64($0)
or $1,$0,$2
andi $4,$4,44
mfhi $4
sb $3,112($0)
ori $2,$4,92
ori $2,$4,20
or $3,$1,$1
mthi $3
divu $4,$2
subu $0,$0,$0
sh $0,96($0)
mthi $0
subu $3,$3,$0
mthi $0
lh $2,32($0)
or $1,$4,$0
andi $1,$1,76
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sw $3,0($0)
lb $4,0($0)
lw $3,0($4)
sh $3,0($0)
slt $1,$4,$2
mtlo $1
ori $4,$2,92
subu $2,$3,$3
ori $3,$4,112
ori $3,$4,132
and $1,$1,$1
and $1,$2,$2
div $4,$3
mfhi $0
mthi $4
mthi $2
mfhi $2
sb $0,48($0)
EndTest3:
subu $2,$2,$2
sw $31,76($2)
subu $31,$31,$31
lw $31,76($2)
lui $3,148
jr $ra
lb $3,96($0)


Test4:
div $1,$31
sw $3,0($0)
slt $2,$3,$2
mtlo $3
multu $3,$1
slt $3,$1,$2
slt $0,$2,$0
lw $0,80($0)
subu $1,$1,$1
subu $3,$3,$3
ori $1,$0,5
ori $3,$0,164
divu $3,$1
mflo $0
lb $2,96($0)
lw $3,0($0)
mflo $3
beq $0,$1,EndTest4
slt $1,$0,$2
sltu $0,$2,$1
mtlo $4
subu $3,$3,$3
subu $1,$1,$1
ori $3,$0,8
ori $1,$0,132
divu $1,$3
mfhi $2
lw $1,0($2)
slt $1,$4,$2
addiu $3,$0,128
mthi $2
lw $1,80($0)
sw $3,80($0)
sltu $1,$1,$3
sltu $2,$4,$1
ori $1,$2,92
ori $4,$3,88
ori $4,$3,44
or $0,$1,$2
sb $2,0($0)
divu $3,$4
mflo $1
mfhi $4
subu $1,$4,$0
EndTest4:
subu $3,$3,$3
addu $3,$31,$3
subu $31,$31,$31
ori $31,$3,0
jr $ra
and $1,$1,$0


Test5:
addiu $2,$31,52
subu $21,$21,$21
subu $20,$20,$20
ori $20,$20,10
subu $27,$27,$27
ori $27,$27,1
SubTest5:
addu $21,$21,$27
bne $21,$20,EndTest5
sb $2,96($0)
ori $4,$4,156
ori $4,$4,132
lui $2,104
lui $3,128
div $4,$4
ori $3,$3,124
ori $3,$3,8
mfhi $2
mfhi $0
div $3,$3
ori $3,$1,88
ori $3,$1,48
mult $4,$2
mthi $2
divu $1,$3
ori $2,$1,24
subu $0,$2,$4
mflo $3
subu $3,$3,$2
mtlo $2
or $1,$0,$2
ori $4,$0,76
mflo $1
multu $2,$4
subu $4,$4,$4
ori $4,$4,112
sh $4,-16($4)
ori $2,$2,4
ori $2,$2,152
mfhi $4
lui $1,144
divu $2,$2
ori $1,$2,104
ori $1,$2,108
sltu $4,$4,$4
lui $3,92
divu $2,$1
lb $0,112($0)
and $0,$3,$3
mfhi $1
andi $0,$2,136
ori $4,$1,120
mflo $2
slt $4,$0,$4
ori $4,$4,128
ori $4,$4,116
sw $3,112($0)
sw $3,112($0)
div $4,$4
mflo $2
and $3,$4,$3
EndTest5:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
mtlo $0
jr $ra
subu $2,$1,$4


Test6:
addu $4,$31,$0
multu $4,$2
and $1,$2,$3
ori $3,$1,36
ori $3,$1,84
mflo $0
mflo $4
div $1,$3
and $3,$1,$0
ori $1,$1,0
sw $2,0($0)
lb $2,48($0)
multu $4,$4
addu $1,$4,$1
mult $0,$1
ori $0,$1,136
mflo $3
mult $1,$2
andi $1,$4,40
and $0,$3,$3
or $1,$4,$2
ori $3,$4,56
ori $3,$4,132
and $2,$2,$1
and $1,$2,$2
div $4,$3
slt $1,$2,$2
or $4,$3,$3
ori $2,$3,140
ori $2,$3,44
mthi $1
mthi $4
div $3,$2
lb $3,80($0)
andi $0,$1,56
mfhi $1
bne $3,$1,EndTest6
or $4,$4,$3
mfhi $1
EndTest6:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
addu $31,$0,$2
slt $4,$2,$1
jr $ra
divu $0,$ra


Test7:
ori $2,$31,44
or $2,$4,$4
subu $0,$0,$0
sw $4,112($0)
slt $2,$1,$2
andi $0,$0,124
mult $1,$3
mtlo $3
sltu $1,$3,$3
mtlo $0
mfhi $1
ori $1,$4,48
ori $1,$4,48
addiu $0,$0,104
subu $0,$0,$2
divu $4,$1
multu $0,$3
lui $3,96
or $0,$2,$1
ori $3,$3,132
beq $2,$3,EndTest7
ori $4,$4,88
ori $4,$4,28
subu $1,$1,$2
ori $1,$2,100
divu $4,$4
mthi $4
mthi $0
slt $2,$2,$4
subu $3,$3,$3
sw $0,32($3)
mthi $1
addu $3,$4,$4
mtlo $0
ori $2,$2,44
ori $2,$2,28
lui $4,8
lui $3,140
div $2,$2
subu $3,$3,$3
sb $0,96($3)
sb $0,112($0)
EndTest7:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
addiu $3,$1,20
jr $ra
lb $2,80($0)


Test8:
mtlo $31
subu $15,$15,$15
subu $22,$22,$22
ori $22,$22,10
subu $6,$6,$6
ori $6,$6,1
SubTest8:
addu $15,$15,$6
beq $15,$22,EndTest8
ori $4,$3,116
ori $4,$3,152
sh $1,112($0)
sltu $1,$1,$1
divu $3,$4
mthi $1
and $2,$2,$2
slt $1,$1,$4
mult $1,$1
and $3,$1,$1
or $0,$2,$4
ori $3,$2,116
ori $3,$2,52
or $1,$4,$1
mflo $4
divu $2,$3
and $0,$3,$1
slt $2,$2,$2
beq $0,$4,SubTest8
mtlo $1
subu $1,$1,$1
ori $1,$1,112
lb $3,-63($1)
ori $4,$1,60
ori $4,$1,148
lui $2,92
lui $2,128
div $1,$4
mfhi $0
or $1,$2,$2
addiu $2,$0,24
sh $3,80($0)
ori $1,$4,56
mtlo $1
ori $0,$0,76
ori $2,$1,64
ori $2,$1,44
or $3,$3,$4
mfhi $3
divu $1,$2
mult $1,$2
lui $1,8
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sw $0,0($0)
lh $4,0($0)
lw $0,48($4)
sb $0,32($0)
subu $4,$4,$4
ori $4,$4,112
lw $1,0($4)
mflo $0
EndTest8:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
divu $0,$ra


Test9:
and $3,$0,$31
subu $11,$11,$11
subu $21,$21,$21
ori $21,$21,10
subu $18,$18,$18
ori $18,$18,1
SubTest9:
addu $11,$11,$18
bne $11,$21,EndTest9
addu $2,$3,$0
subu $1,$1,$1
ori $1,$1,112
sh $2,-64($1)
subu $4,$4,$4
sh $2,112($4)
slt $2,$4,$3
andi $1,$3,108
sw $0,32($0)
subu $3,$2,$0
sltu $0,$0,$2
or $1,$3,$2
andi $4,$1,116
ori $1,$3,144
ori $1,$3,60
lui $0,144
lui $0,52
div $3,$1
andi $3,$1,152
ori $4,$4,148
slt $0,$1,$3
sltu $3,$3,$3
ori $1,$3,160
ori $1,$3,96
and $2,$2,$0
addiu $0,$2,108
divu $3,$1
mflo $3
sltu $0,$4,$2
subu $1,$1,$1
ori $1,$1,96
sb $4,-80($1)
and $4,$3,$4
ori $4,$1,48
ori $4,$1,52
sw $2,112($0)
mult $3,$2
divu $1,$4
subu $4,$4,$4
ori $4,$4,112
lb $4,-31($4)
mflo $0
slt $0,$4,$1
sltu $1,$4,$0
subu $2,$2,$2
ori $2,$2,96
lh $1,-30($2)
EndTest9:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
ori $1,$0,20


Test10:
mtlo $31
subu $17,$17,$17
subu $6,$6,$6
ori $6,$6,10
subu $25,$25,$25
ori $25,$25,1
SubTest10:
addu $17,$17,$25
beq $17,$6,EndTest10
addu $2,$4,$0
ori $3,$4,16
ori $3,$4,92
mtlo $1
mthi $1
divu $4,$3
multu $4,$2
mtlo $2
subu $4,$4,$4
sw $2,64($4)
mflo $2
lw $3,64($0)
or $4,$1,$4
multu $4,$3
mfhi $4
lui $0,56
mflo $0
beq $1,$3,SubTest10
sh $0,80($0)
mthi $0
sw $1,80($0)
lh $3,0($0)
sw $1,112($0)
bne $3,$4,SubTest10
ori $2,$1,152
ori $2,$1,88
and $3,$3,$3
ori $3,$4,32
divu $1,$2
addu $3,$1,$3
subu $3,$3,$3
subu $2,$2,$2
ori $3,$0,8
ori $2,$0,228
divu $2,$3
mflo $4
lw $2,0($4)
subu $1,$1,$1
sw $2,0($1)
and $1,$2,$3
mfhi $3
mthi $0
sltu $2,$2,$0
mult $1,$0
EndTest10:
subu $4,$4,$4
addu $2,$31,$4
addu $31,$31,$31
subu $31,$31,$2
jr $ra
mflo $2


Test11:
sltu $2,$1,$31
subu $7,$7,$7
subu $12,$12,$12
ori $12,$12,10
subu $22,$22,$22
ori $22,$22,1
SubTest11:
addu $7,$7,$22
beq $7,$12,EndTest11
mfhi $3
addiu $3,$1,136
sltu $1,$3,$2
subu $1,$1,$1
ori $1,$1,16
sw $0,0($1)
lui $2,60
ori $2,$3,44
ori $2,$3,72
mtlo $1
mtlo $4
div $3,$2
mfhi $1
andi $0,$4,4
andi $4,$4,36
or $2,$3,$1
ori $2,$4,40
ori $1,$1,40
ori $1,$1,144
and $3,$2,$4
and $0,$3,$4
div $1,$1
mtlo $0
mult $4,$2
bne $2,$4,SubTest11
sltu $2,$4,$4
mthi $2
mult $1,$3
ori $1,$2,148
ori $1,$2,108
mtlo $0
mtlo $4
div $2,$1
sh $0,96($0)
beq $1,$3,SubTest11
sltu $0,$0,$2
addiu $1,$3,20
ori $1,$4,76
ori $1,$4,40
or $2,$2,$3
mtlo $3
divu $4,$1
subu $3,$0,$4
lb $3,48($0)
beq $2,$0,SubTest11
lw $2,48($0)
sw $0,16($0)
EndTest11:
subu $4,$4,$4
sw $31,20($4)
subu $31,$31,$31
lw $31,20($4)
jr $ra
mtlo $4


Test12:
addu $0,$31,$3
subu $20,$20,$20
subu $19,$19,$19
ori $19,$19,10
subu $12,$12,$12
ori $12,$12,1
SubTest12:
addu $20,$20,$12
beq $20,$19,EndTest12
or $3,$1,$2
lui $0,28
or $4,$3,$3
lui $2,76
lui $4,112
mult $3,$1
slt $1,$1,$4
and $4,$4,$4
ori $1,$1,48
subu $0,$0,$4
lw $4,64($0)
subu $1,$1,$1
ori $1,$1,80
sh $0,-16($1)
mult $0,$1
mflo $1
subu $0,$0,$0
sw $1,96($0)
sh $2,64($0)
mtlo $4
slt $1,$1,$2
lui $3,152
mult $1,$2
mfhi $1
subu $1,$1,$1
sw $0,96($1)
ori $1,$3,32
ori $1,$3,112
or $4,$4,$4
or $4,$4,$2
div $3,$1
multu $3,$0
sltu $3,$2,$0
ori $3,$1,20
ori $3,$1,88
mult $2,$4
mult $2,$4
div $1,$3
EndTest12:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
lui $1,152


Test13:
andi $1,$31,120
subu $24,$24,$24
subu $30,$30,$30
ori $30,$30,10
subu $6,$6,$6
ori $6,$6,1
SubTest13:
addu $24,$24,$6
beq $24,$30,EndTest13
mtlo $0
mthi $3
ori $0,$2,84
ori $4,$4,84
ori $4,$4,88
addu $2,$3,$1
addu $1,$2,$0
div $4,$4
mtlo $1
lui $2,0
sltu $3,$4,$4
ori $2,$3,16
ori $2,$3,12
and $1,$1,$4
and $4,$1,$1
div $3,$2
or $2,$2,$0
mtlo $1
andi $4,$4,28
subu $4,$4,$4
lw $0,16($4)
sltu $1,$0,$3
subu $1,$2,$4
slt $4,$1,$4
or $3,$3,$3
mflo $1
subu $1,$1,$1
sw $1,32($1)
subu $1,$1,$1
ori $1,$1,112
sw $2,-96($1)
multu $4,$3
ori $4,$2,12
ori $4,$2,68
mthi $3
mthi $3
div $2,$4
subu $4,$4,$4
sb $2,0($4)
sltu $3,$0,$0
mtlo $4
subu $4,$4,$4
ori $4,$4,32
lw $2,-16($4)
ori $3,$4,56
ori $3,$4,20
mtlo $2
multu $1,$1
divu $4,$3
EndTest13:
subu $4,$4,$4
sw $31,124($4)
subu $31,$31,$31
lw $31,124($4)
jr $ra
mthi $1


End:
