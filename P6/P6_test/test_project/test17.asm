ori $0, $0, 64
ori $1, $0, 4
ori $2, $0, 120
ori $3, $0, 148
ori $4, $0, 16
ori $5, $0, 124
ori $6, $0, 0
ori $7, $0, 40
ori $8, $0, 40
ori $9, $0, 60
ori $10, $0, 104
ori $11, $0, 108
ori $12, $0, 44
ori $13, $0, 100
ori $14, $0, 52
ori $15, $0, 56
ori $16, $0, 80
ori $17, $0, 60
ori $18, $0, 24
ori $19, $0, 24
ori $20, $0, 20
ori $21, $0, 64
ori $22, $0, 56
ori $23, $0, 48
ori $24, $0, 44
ori $25, $0, 92
ori $26, $0, 68
ori $27, $0, 28
ori $28, $0, 124
ori $29, $0, 96
ori $30, $0, 100
ori $31, $0, 128

andi $1,$1,28
or $3,$2,$0
lui $4,136
jal Test1
andi $1,$2,116
Back1:

ori $1,$4,136
ori $3,$1,80
ori $3,$1,40
slt $2,$4,$2
slt $4,$4,$4
div $1,$3
jal Test_jal2
addu $2,$31,$1
beq $0,$0,Test_beq2
and $0,$4,$31
Test_jal2: jr $ra
Test_beq2:
or $0,$1,$0
jal Test2
and $2,$1,$2
Back2:

subu $2,$0,$4
sltu $3,$1,$2
jal Test_jal3
addiu $0,$31,108
beq $0,$0,Test_beq3
slt $4,$2,$31
Test_jal3: jr $ra
Test_beq3:
or $1,$3,$4
jal Test3
sltu $2,$4,$0
Back3:

ori $4,$3,120
sltu $2,$2,$3
jal Test_jal4
addu $0,$31,$1
beq $0,$0,Test_beq4
mtlo $31
Test_jal4: jr $ra
Test_beq4:
andi $4,$0,92
jal Test4
mtlo $3
Back4:

sw $0,0($0)
subu $2,$2,$2
ori $2,$2,0
sh $2,0($0)
ori $2,$2,96
lh $1,0($0)
sw $2,112($1)
mflo $2
jal Test_jal5
addu $4,$31,$3
beq $0,$0,Test_beq5
or $3,$4,$31
Test_jal5: jr $ra
Test_beq5:
subu $4,$2,$1
jal Test5
mthi $1
Back5:

subu $3,$2,$0
lui $3,76
andi $0,$4,132
jal Test6
andi $2,$1,32
Back6:

sw $0,16($0)
or $2,$0,$3
jal Test_jal7
multu $31,$3
beq $0,$0,Test_beq7
addiu $4,$31,148
Test_jal7: jr $ra
Test_beq7:
addu $4,$3,$2
jal Test7
slt $2,$2,$1
Back7:

ori $1,$3,80
ori $1,$3,116
and $2,$0,$2
sltu $4,$0,$4
divu $3,$1
mfhi $3
jal Test_jal8
ori $0,$31,0
beq $0,$0,Test_beq8
sw $0,-12288($31)
Test_jal8: jr $ra
Test_beq8:
sw $0,16($0)
jal Test8
mfhi $1
Back8:

subu $0,$0,$0
sb $4,16($0)
slt $1,$3,$2
jal Test_jal9
addu $3,$31,$2
beq $0,$0,Test_beq9
lh $1,-12288($31)
Test_jal9: jr $ra
Test_beq9:
ori $1,$3,68
ori $1,$3,148
mtlo $4
mtlo $0
div $3,$1
jal Test9
addiu $3,$1,4
Back9:

sltu $3,$3,$3
or $4,$0,$3
jal Test_jal10
or $2,$2,$31
beq $0,$0,Test_beq10
mtlo $31
Test_jal10: jr $ra
Test_beq10:
sltu $0,$2,$1
jal Test10
subu $0,$0,$2
Back10:

or $3,$2,$4
andi $4,$4,120
or $1,$0,$0
jal Test11
lui $0,4
Back11:

andi $3,$0,8
sltu $3,$4,$0
or $0,$1,$0
jal Test12
lb $0,96($0)
Back12:

mult $2,$1
ori $4,$1,64
ori $4,$1,32
lh $0,96($0)
mfhi $2
divu $1,$4
jal Test_jal13
ori $0,$31,20
beq $0,$0,Test_beq13
sb $2,-12288($31)
Test_jal13: jr $ra
Test_beq13:
mtlo $4
jal Test13
mtlo $4
jal End
ori $1,$2,64


Test1:
sb $3,-12288($31)
subu $25,$25,$25
subu $8,$8,$8
ori $8,$8,10
subu $13,$13,$13
ori $13,$13,1
SubTest1:
addu $25,$25,$13
beq $25,$8,EndTest1
sb $2,80($0)
mfhi $4
slt $3,$3,$4
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sh $1,0($0)
lh $3,0($0)
lh $1,16($3)
sb $1,80($0)
sltu $1,$1,$4
mfhi $0
mflo $4
lui $2,24
lw $0,0($0)
or $1,$2,$0
slt $4,$2,$0
mtlo $1
mfhi $1
sltu $2,$1,$3
mflo $1
mfhi $0
mflo $2
mult $0,$1
andi $1,$3,48
ori $4,$3,116
ori $4,$3,96
mtlo $2
addu $2,$2,$1
divu $3,$4
and $0,$1,$4
beq $2,$1,SubTest1
mflo $3
ori $1,$1,132
ori $1,$1,88
addu $3,$2,$3
or $2,$2,$4
divu $1,$1
multu $1,$4
multu $2,$2
slt $2,$0,$3
EndTest1:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
div $3,$ra


Test2:
mthi $31
subu $10,$10,$10
subu $25,$25,$25
ori $25,$25,10
subu $28,$28,$28
ori $28,$28,1
SubTest2:
addu $10,$10,$28
beq $10,$25,EndTest2
and $3,$4,$1
andi $4,$3,8
ori $3,$4,84
ori $3,$4,84
mthi $1
mthi $0
div $4,$3
andi $4,$4,92
mult $1,$4
mtlo $4
subu $3,$3,$3
ori $3,$3,80
sb $0,-32($3)
subu $3,$3,$3
ori $3,$3,64
sh $4,0($3)
subu $1,$1,$1
ori $1,$1,48
lw $3,0($1)
mult $0,$1
mtlo $1
ori $2,$4,24
ori $2,$4,120
mtlo $3
mtlo $3
div $4,$2
and $4,$1,$3
slt $3,$4,$0
addiu $0,$3,132
mthi $0
ori $2,$4,128
ori $2,$4,80
sw $3,112($0)
lui $0,28
divu $4,$2
sb $1,48($0)
andi $3,$1,116
or $4,$3,$3
andi $1,$4,56
mfhi $3
subu $2,$2,$2
ori $2,$2,96
sh $1,-32($2)
mtlo $3
sb $0,80($0)
lui $2,120
EndTest2:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
sltu $0,$4,$4
jr $ra
div $0,$ra


Test3:
slt $3,$0,$31
subu $13,$13,$13
subu $20,$20,$20
ori $20,$20,10
subu $5,$5,$5
ori $5,$5,1
SubTest3:
addu $13,$13,$5
beq $13,$20,EndTest3
ori $1,$3,4
mult $1,$3
ori $3,$1,24
ori $3,$1,84
mthi $2
mthi $4
div $1,$3
lb $2,112($0)
mtlo $1
mult $4,$0
mtlo $2
and $2,$0,$0
or $1,$0,$0
and $1,$0,$1
subu $1,$0,$1
mfhi $2
ori $4,$4,40
ori $4,$4,60
mult $3,$3
addiu $1,$1,124
divu $4,$4
lui $3,16
mfhi $4
subu $3,$4,$2
mult $1,$0
subu $4,$4,$4
sh $4,32($4)
mtlo $4
subu $3,$3,$3
ori $3,$3,112
sh $3,-64($3)
mult $3,$1
sh $4,32($0)
or $4,$2,$3
slt $0,$1,$0
mult $0,$4
ori $3,$2,152
EndTest3:
subu $2,$2,$2
sw $31,84($2)
subu $31,$31,$31
lw $31,84($2)
jr $ra
and $0,$3,$2


Test4:
and $0,$2,$31
subu $8,$8,$8
subu $11,$11,$11
ori $11,$11,10
subu $23,$23,$23
ori $23,$23,1
SubTest4:
addu $8,$8,$23
beq $8,$11,EndTest4
and $1,$4,$4
addu $1,$2,$4
subu $1,$0,$2
mfhi $2
mthi $1
slt $2,$0,$0
or $0,$2,$1
mtlo $0
lw $3,80($0)
mflo $1
multu $4,$0
slt $0,$4,$4
subu $2,$0,$1
mflo $2
mthi $2
multu $0,$1
mfhi $3
mtlo $4
lui $4,140
mtlo $1
ori $4,$1,24
ori $4,$1,148
slt $3,$2,$3
slt $2,$2,$0
div $1,$4
and $1,$3,$3
mtlo $4
sh $4,48($0)
mtlo $4
mflo $3
EndTest4:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
ori $31,$4,0
jr $ra
mtlo $4


Test5:
andi $4,$31,56
subu $18,$18,$18
subu $19,$19,$19
ori $19,$19,10
subu $16,$16,$16
ori $16,$16,1
SubTest5:
addu $18,$18,$16
bne $18,$19,EndTest5
or $3,$3,$3
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sw $3,0($0)
lb $1,0($0)
lh $3,112($1)
sb $3,48($0)
subu $3,$3,$3
sw $0,112($3)
mfhi $2
sltu $2,$1,$4
subu $4,$4,$4
sb $4,48($4)
ori $3,$3,112
ori $3,$3,100
lw $0,0($0)
mfhi $1
divu $3,$3
ori $3,$0,136
beq $1,$2,SubTest5
mult $0,$3
mult $3,$3
ori $2,$4,20
ori $2,$4,48
sltu $1,$0,$1
sltu $1,$1,$0
div $4,$2
ori $1,$1,136
mthi $2
sltu $3,$2,$0
lui $0,152
sh $0,16($0)
mthi $3
addiu $2,$4,4
mfhi $0
beq $3,$2,SubTest5
mult $2,$1
mult $1,$2
mtlo $3
ori $2,$1,4
ori $2,$1,68
subu $4,$3,$4
subu $3,$4,$4
div $1,$2
ori $3,$2,116
ori $3,$2,36
mthi $4
slt $0,$0,$1
divu $2,$3
andi $3,$3,132
sltu $0,$4,$0
EndTest5:
subu $3,$3,$3
sw $31,112($3)
subu $31,$31,$31
lw $31,112($3)
jr $ra
lw $2,112($0)


Test6:
or $2,$1,$31
subu $7,$7,$7
subu $10,$10,$10
ori $10,$10,10
subu $8,$8,$8
ori $8,$8,1
SubTest6:
addu $7,$7,$8
beq $7,$10,EndTest6
multu $4,$0
ori $4,$3,116
ori $4,$3,100
mthi $2
mthi $0
div $3,$4
subu $1,$1,$1
lw $3,112($1)
lui $4,140
sw $2,64($0)
subu $2,$0,$3
ori $2,$4,156
ori $2,$4,84
mflo $3
slt $1,$3,$3
divu $4,$2
ori $4,$1,112
ori $4,$1,36
sb $0,48($0)
mthi $0
divu $1,$4
lw $3,96($0)
or $4,$1,$4
beq $4,$0,SubTest6
ori $4,$2,68
ori $4,$2,48
lui $0,12
lui $0,0
div $2,$4
mflo $4
sb $1,96($0)
lui $1,56
ori $3,$3,48
ori $3,$3,40
multu $0,$2
mfhi $2
divu $3,$3
addiu $1,$0,96
mthi $0
mflo $1
subu $1,$3,$3
mthi $0
subu $4,$4,$4
ori $4,$4,64
sb $3,-48($4)
multu $0,$2
sltu $4,$1,$2
ori $4,$0,136
ori $0,$2,28
slt $4,$2,$0
EndTest6:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
jr $ra
mflo $2


Test7:
addiu $2,$31,136
multu $0,$1
and $4,$2,$0
ori $1,$3,80
ori $1,$3,144
and $0,$0,$0
mtlo $2
divu $3,$1
slt $1,$2,$1
lw $0,64($0)
lui $4,132
mfhi $3
and $4,$1,$0
ori $3,$3,64
sw $2,32($0)
mfhi $0
lw $3,16($0)
beq $1,$2,EndTest7
mthi $3
or $1,$1,$1
lh $4,64($0)
ori $1,$0,88
lw $2,16($0)
ori $2,$3,12
ori $2,$3,84
mthi $4
mflo $4
divu $3,$2
addu $1,$3,$4
multu $2,$1
multu $2,$1
ori $1,$1,4
ori $3,$1,92
ori $3,$1,72
mult $0,$4
mult $0,$2
div $1,$3
lui $0,16
mtlo $3
EndTest7:
subu $4,$4,$4
addu $2,$31,$4
addu $31,$31,$31
subu $31,$31,$2
sltu $1,$2,$3
jr $ra
sw $0,112($0)


Test8:
or $0,$4,$31
subu $1,$1,$1
ori $1,$1,96
lh $3,-14($1)
mtlo $3
andi $3,$1,104
ori $0,$3,52
addiu $4,$0,0
mthi $3
andi $0,$0,112
addu $3,$1,$3
lui $1,44
subu $4,$3,$3
ori $4,$1,16
or $2,$4,$3
ori $4,$4,140
ori $4,$4,112
multu $3,$3
and $1,$3,$1
divu $4,$4
sltu $2,$2,$4
slt $2,$4,$2
mfhi $4
sb $0,16($0)
and $2,$4,$4
ori $2,$2,100
ori $2,$2,44
lb $1,16($0)
slt $0,$1,$0
divu $2,$2
addiu $3,$4,92
ori $4,$0,96
lui $4,0
lb $4,92($4)
ori $2,$2,100
ori $2,$2,148
lb $3,0($0)
lw $3,80($0)
div $2,$2
sb $4,80($0)
sh $3,112($0)
mtlo $3
EndTest8:
subu $2,$2,$2
sw $31,132($2)
subu $31,$31,$31
lw $31,132($2)
jr $ra
addiu $4,$3,20


Test9:
beq $0,$31,EndTest9
subu $12,$12,$12
subu $23,$23,$23
ori $23,$23,10
subu $14,$14,$14
ori $14,$14,1
SubTest9:
addu $12,$12,$14
beq $12,$23,EndTest9
slt $0,$1,$3
and $2,$2,$3
sw $0,16($0)
ori $3,$1,68
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,64
sw $1,0($0)
ori $1,$1,64
lb $4,0($0)
sh $1,16($4)
addu $1,$0,$2
ori $2,$2,152
mfhi $4
addu $0,$0,$0
bne $1,$3,SubTest9
lw $1,112($0)
mtlo $0
subu $0,$1,$0
addu $0,$4,$0
lui $3,0
or $1,$4,$1
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,8
ori $3,$0,68
divu $3,$2
mflo $4
mult $1,$1
lh $3,0($4)
lui $4,80
slt $4,$3,$4
sw $2,96($0)
ori $0,$1,52
lb $3,80($0)
and $4,$2,$4
or $4,$1,$3
mfhi $3
sh $4,0($0)
sb $4,96($0)
EndTest9:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
addu $3,$0,$3
jr $ra
addiu $3,$0,152


Test10:
andi $1,$31,120
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sw $3,0($0)
lh $3,0($0)
lw $3,112($3)
sh $3,112($0)
mthi $1
and $3,$1,$1
lb $0,112($0)
or $3,$3,$2
mtlo $0
mfhi $1
or $3,$3,$0
mflo $2
addiu $3,$4,56
ori $4,$1,112
lui $4,0
lb $4,112($4)
andi $3,$0,108
mult $0,$1
sb $1,96($0)
slt $4,$2,$1
andi $1,$3,116
lui $4,68
ori $2,$3,0
lui $2,0
lw $4,152($2)
and $0,$1,$2
sw $0,96($0)
mthi $2
ori $1,$3,4
subu $2,$3,$0
subu $2,$2,$2
sh $0,64($2)
ori $3,$2,0
EndTest10:
subu $2,$2,$2
sw $31,24($2)
subu $31,$31,$31
lw $31,24($2)
jr $ra
or $4,$3,$4


Test11:
and $0,$2,$31
subu $28,$28,$28
subu $10,$10,$10
ori $10,$10,10
subu $6,$6,$6
ori $6,$6,1
SubTest11:
addu $28,$28,$6
beq $28,$10,EndTest11
multu $3,$1
mtlo $2
mflo $3
ori $3,$4,76
ori $3,$4,88
andi $1,$0,84
mult $1,$2
divu $4,$3
sltu $2,$1,$4
lui $2,92
subu $4,$4,$4
ori $4,$4,80
sb $2,-48($4)
mfhi $2
lui $4,96
mfhi $2
and $4,$1,$2
addu $2,$4,$1
mfhi $4
mflo $0
andi $2,$2,128
subu $2,$0,$0
mult $4,$4
mflo $1
mult $1,$3
or $1,$1,$2
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,64
sh $2,0($0)
ori $2,$2,48
lw $0,0($0)
sb $2,80($0)
lui $1,56
sltu $4,$0,$4
mult $3,$0
mfhi $2
subu $4,$4,$4
sh $2,0($4)
EndTest11:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
multu $4,$1
jr $ra
subu $3,$0,$0


Test12:
sb $2,-12288($31)
slt $3,$0,$1
mult $0,$3
sb $2,64($0)
subu $1,$1,$1
lb $3,41($1)
mtlo $3
ori $3,$4,8
ori $3,$4,80
and $0,$2,$2
subu $2,$0,$1
divu $4,$3
lui $4,132
addu $2,$1,$0
subu $2,$1,$0
multu $1,$4
mflo $4
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,16
sb $0,0($0)
ori $0,$0,64
lh $0,0($0)
sb $0,16($0)
and $3,$0,$2
ori $4,$4,72
mtlo $3
sb $3,64($0)
ori $2,$3,128
ori $2,$3,20
sltu $0,$4,$4
sltu $4,$0,$1
div $3,$2
subu $3,$3,$3
sw $4,0($3)
mfhi $0
mtlo $0
lui $0,32
and $1,$4,$2
lui $4,112
multu $3,$1
slt $3,$0,$1
EndTest12:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
ori $31,$2,0
jr $ra
divu $0,$ra


Test13:
beq $4,$31,EndTest13
subu $21,$21,$21
subu $15,$15,$15
ori $15,$15,10
subu $16,$16,$16
ori $16,$16,1
SubTest13:
addu $21,$21,$16
beq $21,$15,EndTest13
slt $2,$4,$0
sh $0,0($0)
sw $2,0($0)
addu $2,$3,$2
lb $1,96($0)
slt $4,$2,$0
ori $2,$4,36
ori $2,$4,72
lui $0,32
slt $0,$3,$0
divu $4,$2
subu $1,$0,$0
subu $0,$0,$0
sb $2,64($0)
bne $0,$4,SubTest13
addiu $1,$2,56
mtlo $4
and $4,$3,$0
lui $0,8
mult $1,$0
mflo $3
andi $0,$4,124
or $2,$2,$4
mtlo $4
addiu $3,$2,48
sb $2,80($0)
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,80
sw $2,0($0)
ori $2,$2,96
lh $2,0($0)
sh $2,16($2)
slt $4,$3,$3
sb $0,64($0)
andi $0,$4,76
or $3,$0,$1
lb $3,48($0)
EndTest13:
subu $4,$4,$4
sw $31,128($4)
subu $31,$31,$31
lw $31,128($4)
jr $ra
mfhi $3


End:
