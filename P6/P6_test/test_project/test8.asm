ori $0, $0, 44
ori $1, $0, 52
ori $2, $0, 144
ori $3, $0, 76
ori $4, $0, 124
ori $5, $0, 112
ori $6, $0, 124
ori $7, $0, 76
ori $8, $0, 148
ori $9, $0, 112
ori $10, $0, 64
ori $11, $0, 144
ori $12, $0, 68
ori $13, $0, 72
ori $14, $0, 112
ori $15, $0, 100
ori $16, $0, 148
ori $17, $0, 4
ori $18, $0, 68
ori $19, $0, 88
ori $20, $0, 68
ori $21, $0, 88
ori $22, $0, 16
ori $23, $0, 124
ori $24, $0, 92
ori $25, $0, 4
ori $26, $0, 144
ori $27, $0, 32
ori $28, $0, 100
ori $29, $0, 112
ori $30, $0, 120
ori $31, $0, 12

subu $3,$3,$3
subu $4,$4,$4
ori $3,$0,8
ori $4,$0,164
divu $4,$3
mflo $2
lw $4,0($2)
ori $2,$1,64
ori $2,$1,44
mflo $3
slt $0,$4,$0
divu $1,$2
jal Test_jal1
ori $1,$31,100
beq $0,$0,Test_beq1
lw $1,-12288($31)
Test_jal1: jr $ra
Test_beq1:
ori $3,$4,88
ori $3,$4,72
multu $2,$1
multu $2,$1
div $4,$3
jal Test1
slt $2,$0,$0
Back1:

mult $4,$1
andi $2,$3,0
ori $4,$3,104
ori $4,$3,60
sltu $1,$1,$2
lui $1,16
divu $3,$4
jal Test2
and $0,$1,$4
Back2:

addu $3,$2,$0
or $3,$2,$4
jal Test_jal3
subu $4,$2,$31
beq $0,$0,Test_beq3
addiu $2,$31,8
Test_jal3: jr $ra
Test_beq3:
subu $4,$4,$4
sh $1,96($4)
jal Test3
lh $0,32($0)
Back3:

mult $2,$0
sltu $4,$3,$3
multu $3,$0
jal Test4
addiu $1,$4,92
Back4:

sltu $2,$2,$2
mthi $2
jal Test_jal5
sw $4,-12288($31)
beq $0,$0,Test_beq5
addiu $1,$31,116
Test_jal5: jr $ra
Test_beq5:
mtlo $1
jal Test5
lw $4,16($0)
Back5:

subu $4,$4,$4
sw $0,64($4)
ori $3,$2,8
ori $3,$2,160
lui $1,32
addiu $1,$4,156
divu $2,$3
jal Test_jal6
slt $1,$2,$31
beq $0,$0,Test_beq6
subu $1,$3,$31
Test_jal6: jr $ra
Test_beq6:
mtlo $1
jal Test6
sltu $0,$0,$1
Back6:

subu $2,$2,$2
sw $0,48($2)
mflo $1
jal Test_jal7
mtlo $31
beq $0,$0,Test_beq7
sh $1,-12288($31)
Test_jal7: jr $ra
Test_beq7:
addiu $0,$2,156
jal Test7
mtlo $0
Back7:

mfhi $3
sltu $2,$4,$0
jal Test_jal8
sh $2,-12288($31)
beq $0,$0,Test_beq8
slt $4,$4,$31
Test_jal8: jr $ra
Test_beq8:
sltu $1,$4,$2
jal Test8
subu $0,$1,$1
Back8:

mtlo $2
multu $4,$1
ori $3,$2,140
jal Test9
or $3,$1,$4
Back9:

mflo $4
mflo $1
jal Test_jal10
addu $4,$31,$1
beq $0,$0,Test_beq10
lw $3,-12288($31)
Test_jal10: jr $ra
Test_beq10:
lui $0,92
jal Test10
ori $2,$1,76
ori $2,$1,132
mflo $0
mult $0,$4
divu $1,$2
Back10:

addiu $4,$4,132
ori $3,$1,156
ori $3,$1,148
mflo $2
mflo $2
div $1,$3
jal Test_jal11
ori $1,$31,136
beq $0,$0,Test_beq11
sltu $3,$1,$31
Test_jal11: jr $ra
Test_beq11:
mult $4,$1
jal Test11
ori $2,$1,80
ori $2,$1,36
multu $3,$0
multu $0,$4
div $1,$2
Back11:

subu $4,$1,$3
mtlo $1
multu $1,$2
jal Test12
mthi $0
Back12:

andi $1,$2,96
ori $1,$3,120
ori $1,$3,160
sw $4,112($0)
subu $2,$2,$2
divu $3,$1
or $0,$3,$1
jal Test13
mflo $0
jal End
sltu $0,$1,$4


Test1:
sb $2,-12288($31)
subu $28,$28,$28
subu $8,$8,$8
ori $8,$8,10
subu $24,$24,$24
ori $24,$24,1
SubTest1:
addu $28,$28,$24
bne $28,$8,EndTest1
addu $2,$2,$3
or $2,$1,$2
andi $4,$4,92
ori $3,$1,68
addu $4,$3,$2
ori $2,$1,44
ori $2,$1,12
and $3,$3,$3
and $3,$4,$4
div $1,$2
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,80
sw $2,0($0)
ori $2,$2,64
lw $1,0($0)
sw $2,96($1)
slt $2,$4,$1
mfhi $3
mtlo $0
andi $4,$0,92
mflo $2
addu $0,$3,$1
and $2,$3,$2
or $2,$3,$4
ori $2,$1,24
ori $2,$1,60
or $4,$3,$4
mtlo $4
divu $1,$2
addu $0,$0,$0
lh $4,0($0)
slt $1,$4,$1
addiu $0,$0,56
addiu $3,$0,152
and $0,$3,$1
multu $0,$0
ori $2,$3,12
ori $2,$3,56
subu $0,$4,$4
mult $4,$0
divu $3,$2
sh $4,48($0)
addu $3,$0,$0
EndTest1:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
ori $0,$3,136


Test2:
sb $4,-12288($31)
subu $10,$10,$10
subu $6,$6,$6
ori $6,$6,10
subu $7,$7,$7
ori $7,$7,1
SubTest2:
addu $10,$10,$7
bne $10,$6,EndTest2
sw $3,112($0)
multu $4,$2
slt $1,$0,$3
subu $2,$2,$2
subu $4,$4,$4
ori $2,$0,9
ori $4,$0,328
divu $4,$2
mflo $3
mflo $1
lw $4,0($3)
mtlo $1
sltu $3,$0,$0
ori $1,$0,112
addiu $2,$0,24
mtlo $1
subu $3,$3,$4
ori $4,$4,92
ori $4,$4,4
mtlo $2
mflo $3
divu $4,$4
mfhi $1
ori $0,$0,44
subu $3,$3,$3
sb $4,96($3)
subu $2,$2,$2
ori $2,$2,0
lh $2,2($2)
mthi $3
ori $1,$3,32
ori $1,$3,4
mfhi $0
mfhi $4
div $3,$1
beq $2,$4,SubTest2
ori $1,$4,100
ori $1,$4,104
mult $2,$3
mult $2,$2
div $4,$1
ori $2,$1,64
mfhi $3
subu $2,$2,$2
sb $2,32($2)
multu $2,$1
andi $2,$0,156
addu $4,$0,$2
mthi $4
mtlo $0
EndTest2:
subu $4,$4,$4
sw $31,108($4)
subu $31,$31,$31
lw $31,108($4)
andi $4,$1,40
jr $ra
ori $2,$0,0


Test3:
slt $4,$3,$31
or $1,$2,$3
subu $3,$4,$0
ori $4,$2,132
ori $4,$2,72
mtlo $1
and $1,$1,$3
divu $2,$4
lw $4,16($0)
addu $1,$0,$4
andi $3,$4,60
slt $1,$4,$4
slt $2,$0,$4
ori $3,$4,88
ori $3,$4,112
mflo $1
slt $0,$1,$0
divu $4,$3
and $2,$2,$3
andi $2,$4,56
mflo $1
slt $0,$4,$4
bne $3,$0,EndTest3
and $2,$0,$0
andi $4,$1,144
sltu $0,$2,$2
bne $3,$4,EndTest3
or $1,$0,$3
sltu $3,$2,$2
sltu $1,$1,$0
addu $2,$3,$0
ori $2,$1,100
sw $4,64($0)
mthi $2
mult $3,$2
slt $0,$1,$3
EndTest3:
subu $2,$2,$2
addu $2,$31,$2
addu $31,$31,$31
subu $31,$31,$2
mfhi $3
jr $ra
andi $3,$0,56


Test4:
lw $1,-12288($31)
ori $1,$2,120
ori $1,$2,124
lw $4,64($0)
lw $3,32($0)
div $2,$1
ori $1,$3,4
ori $1,$3,144
mtlo $4
mtlo $2
div $3,$1
subu $1,$1,$1
sb $4,48($1)
ori $0,$1,92
subu $1,$1,$1
ori $1,$1,112
sw $0,-64($1)
lw $3,112($0)
subu $1,$1,$1
ori $1,$1,48
sw $3,-32($1)
mfhi $0
ori $4,$1,52
ori $4,$1,32
addiu $2,$0,116
addu $0,$2,$2
div $1,$4
subu $1,$1,$1
ori $1,$1,96
sh $0,-80($1)
slt $2,$2,$4
ori $4,$3,152
lui $0,72
addiu $1,$1,100
subu $2,$2,$2
sw $3,64($2)
subu $0,$0,$0
sw $3,16($0)
ori $3,$1,100
ori $3,$1,44
ori $2,$2,48
ori $0,$0,44
div $1,$3
mfhi $2
ori $4,$2,104
ori $3,$4,40
ori $3,$4,136
andi $2,$1,148
sltu $1,$2,$2
divu $4,$3
mflo $0
mthi $2
mfhi $4
beq $4,$1,EndTest4
mtlo $3
multu $4,$0
EndTest4:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
jr $ra
ori $1,$2,88


Test5:
mthi $31
subu $12,$12,$12
subu $16,$16,$16
ori $16,$16,10
subu $28,$28,$28
ori $28,$28,1
SubTest5:
addu $12,$12,$28
beq $12,$16,EndTest5
ori $1,$3,132
ori $1,$3,32
sb $4,64($0)
sh $4,80($0)
div $3,$1
sh $4,64($0)
multu $3,$4
mfhi $0
lw $1,32($0)
sltu $3,$2,$3
mtlo $4
sb $2,96($0)
ori $3,$4,64
ori $3,$4,24
lui $2,64
sltu $1,$1,$2
divu $4,$3
mult $4,$4
sb $4,80($0)
lui $4,32
lui $3,0
lw $2,80($0)
ori $3,$2,96
lui $3,0
lh $4,32($3)
sb $1,96($0)
andi $0,$2,72
multu $2,$4
ori $2,$2,124
ori $2,$2,32
or $1,$1,$1
or $3,$1,$4
div $2,$2
bne $0,$0,SubTest5
ori $3,$1,44
ori $3,$1,24
slt $0,$0,$0
slt $0,$4,$2
div $1,$3
andi $0,$1,60
mfhi $2
mult $0,$2
and $0,$0,$1
mtlo $4
subu $4,$1,$3
EndTest5:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
mflo $0


Test6:
addu $3,$31,$2
subu $23,$23,$23
subu $15,$15,$15
ori $15,$15,10
subu $10,$10,$10
ori $10,$10,1
SubTest6:
addu $23,$23,$10
beq $23,$15,EndTest6
andi $3,$3,60
sb $2,16($0)
andi $1,$1,144
multu $1,$4
ori $1,$2,20
mult $1,$2
andi $0,$3,76
mthi $0
slt $2,$3,$0
and $3,$4,$2
andi $3,$2,40
lb $2,96($0)
subu $3,$2,$0
and $2,$3,$2
subu $2,$0,$2
mult $4,$3
bne $4,$2,SubTest6
ori $1,$4,144
ori $1,$4,120
mult $3,$2
mult $2,$2
divu $4,$1
subu $3,$3,$3
ori $3,$3,96
sb $4,-16($3)
ori $2,$3,84
ori $2,$3,24
multu $4,$4
multu $1,$4
div $3,$2
sw $1,96($0)
andi $2,$3,96
subu $3,$0,$0
addu $3,$3,$2
ori $3,$3,80
ori $3,$3,28
ori $4,$2,24
ori $0,$0,156
div $3,$3
mfhi $0
addiu $4,$3,144
EndTest6:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
subu $0,$2,$3
jr $ra
or $2,$3,$4


Test7:
addu $1,$31,$3
subu $27,$27,$27
subu $16,$16,$16
ori $16,$16,10
subu $14,$14,$14
ori $14,$14,1
SubTest7:
addu $27,$27,$14
beq $27,$16,EndTest7
ori $1,$4,136
ori $1,$4,152
andi $2,$2,16
andi $3,$3,36
div $4,$1
subu $1,$1,$1
ori $1,$1,80
sh $3,-80($1)
andi $0,$4,72
subu $4,$4,$3
ori $2,$2,28
ori $2,$2,20
or $3,$1,$3
addiu $4,$1,68
divu $2,$2
slt $3,$3,$2
sltu $2,$3,$4
ori $4,$1,148
ori $4,$1,52
addu $2,$2,$3
multu $2,$3
divu $1,$4
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lb $0,0($0)
lw $2,0($0)
sw $2,16($0)
multu $4,$4
ori $2,$0,120
slt $0,$3,$4
and $1,$2,$3
ori $3,$4,32
lui $3,0
lw $4,52($3)
mflo $1
subu $3,$0,$2
ori $4,$3,0
lui $4,0
lb $2,56($4)
multu $2,$3
slt $2,$2,$2
slt $0,$0,$1
mthi $2
ori $0,$4,48
beq $0,$1,SubTest7
or $2,$1,$2
or $3,$1,$2
sltu $4,$0,$0
mthi $3
EndTest7:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
jr $ra
sltu $4,$0,$4


Test8:
and $1,$3,$31
subu $3,$3,$1
lh $2,0($0)
mthi $1
ori $0,$1,44
multu $3,$1
mfhi $1
mthi $0
ori $2,$3,148
ori $2,$3,128
sltu $4,$4,$4
multu $4,$4
divu $3,$2
mfhi $4
andi $2,$2,120
and $0,$3,$0
and $0,$1,$0
lb $2,0($0)
subu $4,$4,$4
sw $3,112($4)
slt $1,$0,$0
mult $0,$0
slt $4,$4,$1
mfhi $2
ori $4,$2,140
ori $4,$2,136
or $0,$3,$0
or $1,$3,$3
div $2,$4
subu $1,$3,$2
andi $3,$4,4
subu $4,$0,$4
mtlo $2
lui $2,40
subu $4,$2,$4
EndTest8:
subu $3,$3,$3
sw $31,40($3)
subu $31,$31,$31
lw $31,40($3)
mfhi $0
jr $ra
andi $3,$3,68


Test9:
beq $2,$31,EndTest9
subu $29,$29,$29
subu $12,$12,$12
ori $12,$12,10
subu $17,$17,$17
ori $17,$17,1
SubTest9:
addu $29,$29,$17
bne $29,$12,EndTest9
andi $0,$0,72
slt $2,$0,$0
multu $3,$4
mult $3,$2
and $4,$2,$4
andi $1,$4,84
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,0
sw $3,0($0)
ori $3,$3,80
lb $0,0($0)
sb $3,96($0)
addiu $4,$4,100
addu $0,$3,$4
mtlo $2
or $0,$4,$2
ori $3,$4,28
ori $3,$4,148
sltu $1,$2,$2
sltu $2,$2,$2
div $4,$3
multu $4,$3
ori $4,$1,16
ori $4,$1,48
sltu $3,$3,$3
addu $2,$2,$3
divu $1,$4
subu $2,$3,$3
lui $1,24
ori $4,$0,116
ori $1,$1,120
lb $4,96($0)
multu $0,$0
sh $0,96($0)
sltu $3,$1,$1
lh $4,16($0)
mfhi $4
sh $1,0($0)
sltu $2,$2,$2
EndTest9:
subu $2,$2,$2
addu $3,$31,$2
addu $31,$31,$31
subu $31,$31,$3
jr $ra
and $4,$4,$4


Test10:
slt $4,$0,$31
multu $1,$4
mult $2,$0
mult $3,$3
mfhi $2
lw $4,64($0)
sltu $4,$3,$4
or $3,$0,$4
mflo $4
and $3,$1,$4
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sw $0,0($0)
lw $1,0($0)
lw $0,80($1)
sb $0,32($0)
mflo $4
subu $1,$1,$4
subu $0,$4,$3
mtlo $0
mtlo $1
mflo $4
mfhi $0
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sh $1,0($0)
lw $4,0($0)
lw $1,80($4)
sw $1,48($0)
mult $0,$1
lui $3,128
mflo $1
andi $1,$0,76
ori $1,$1,4
ori $1,$1,24
multu $2,$0
mfhi $0
divu $1,$1
lui $1,64
lui $3,96
EndTest10:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
jr $ra
divu $3,$ra


Test11:
sltu $2,$0,$31
subu $13,$13,$13
subu $11,$11,$11
ori $11,$11,10
subu $23,$23,$23
ori $23,$23,1
SubTest11:
addu $13,$13,$23
bne $13,$11,EndTest11
addu $3,$0,$4
sltu $1,$2,$2
subu $1,$1,$0
mtlo $0
lui $1,128
multu $2,$0
lw $2,32($0)
subu $1,$1,$4
or $3,$2,$0
or $0,$4,$3
mfhi $4
lw $0,48($0)
subu $1,$1,$1
ori $1,$1,64
sw $1,-48($1)
mtlo $0
mult $0,$2
mfhi $2
mflo $1
ori $1,$3,44
ori $1,$3,28
mfhi $2
sh $0,48($0)
divu $3,$1
subu $3,$3,$3
sh $4,0($3)
mult $3,$1
andi $4,$0,44
ori $3,$0,12
mtlo $3
subu $3,$4,$4
mult $2,$4
mflo $4
EndTest11:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
divu $4,$ra


Test12:
slt $3,$4,$31
ori $4,$0,108
mfhi $4
lw $0,48($0)
multu $4,$0
or $4,$3,$1
ori $2,$2,160
ori $2,$2,108
lw $1,64($0)
lw $1,112($0)
div $2,$2
subu $1,$1,$1
ori $1,$1,16
lw $4,-16($1)
subu $3,$3,$3
ori $3,$3,112
sw $2,-96($3)
subu $2,$2,$2
lw $4,80($2)
mflo $4
ori $2,$2,104
ori $2,$2,132
or $1,$3,$1
mfhi $1
divu $2,$2
subu $3,$0,$1
mfhi $4
mfhi $1
sltu $1,$1,$3
ori $4,$1,48
mthi $1
sw $2,80($0)
multu $2,$1
ori $1,$4,40
ori $1,$4,60
mult $2,$3
mult $2,$2
div $4,$1
bne $2,$4,EndTest12
sw $2,112($0)
lui $4,28
ori $4,$1,112
bne $0,$0,EndTest12
mult $0,$3
mfhi $2
EndTest12:
subu $4,$4,$4
sw $31,52($4)
subu $31,$31,$31
lw $31,52($4)
mthi $1
jr $ra
mult $1,$4


Test13:
div $1,$31
subu $26,$26,$26
subu $7,$7,$7
ori $7,$7,10
subu $14,$14,$14
ori $14,$14,1
SubTest13:
addu $26,$26,$14
beq $26,$7,EndTest13
multu $4,$4
or $0,$3,$3
and $4,$4,$4
and $4,$4,$3
addiu $3,$3,36
sb $3,32($0)
andi $4,$4,140
slt $1,$1,$0
bne $3,$4,SubTest13
slt $1,$1,$0
sw $2,48($0)
mthi $1
slt $2,$4,$3
multu $0,$1
mult $4,$2
mfhi $0
andi $2,$3,52
mthi $1
multu $2,$4
addiu $1,$2,112
beq $1,$0,SubTest13
andi $3,$4,12
slt $2,$1,$3
mult $3,$3
lw $3,32($0)
ori $1,$1,52
multu $3,$1
subu $4,$4,$4
sh $4,64($4)
EndTest13:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
jr $ra
lui $2,84


End:
