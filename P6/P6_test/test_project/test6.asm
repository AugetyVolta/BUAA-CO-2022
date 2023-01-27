ori $0, $0, 144
ori $1, $0, 12
ori $2, $0, 60
ori $3, $0, 8
ori $4, $0, 16
ori $5, $0, 68
ori $6, $0, 116
ori $7, $0, 144
ori $8, $0, 80
ori $9, $0, 52
ori $10, $0, 76
ori $11, $0, 144
ori $12, $0, 96
ori $13, $0, 144
ori $14, $0, 44
ori $15, $0, 72
ori $16, $0, 100
ori $17, $0, 140
ori $18, $0, 24
ori $19, $0, 52
ori $20, $0, 136
ori $21, $0, 72
ori $22, $0, 88
ori $23, $0, 84
ori $24, $0, 140
ori $25, $0, 128
ori $26, $0, 84
ori $27, $0, 40
ori $28, $0, 64
ori $29, $0, 100
ori $30, $0, 76
ori $31, $0, 52

slt $4,$1,$0
slt $4,$0,$3
jal Test_jal1
lh $1,-12288($31)
beq $0,$0,Test_beq1
ori $1,$31,20
Test_jal1: jr $ra
Test_beq1:
sh $0,112($0)
jal Test1
andi $3,$2,132
Back1:

sh $0,48($0)
multu $2,$0
jal Test_jal2
lb $2,-12288($31)
beq $0,$0,Test_beq2
andi $2,$31,72
Test_jal2: jr $ra
Test_beq2:
mfhi $3
jal Test2
or $1,$4,$2
Back2:

lui $3,4
subu $4,$4,$4
ori $4,$4,64
sw $3,-16($4)
subu $0,$0,$0
sb $0,48($0)
jal Test3
sh $0,48($0)
Back3:

or $2,$2,$1
mfhi $0
jal Test_jal4
and $0,$4,$31
beq $0,$0,Test_beq4
and $1,$3,$31
Test_jal4: jr $ra
Test_beq4:
multu $4,$3
jal Test4
sw $1,48($0)
Back4:

mthi $2
mflo $4
jal Test_jal5
andi $1,$31,124
beq $0,$0,Test_beq5
multu $31,$2
Test_jal5: jr $ra
Test_beq5:
slt $2,$2,$0
jal Test5
mflo $4
Back5:

addiu $2,$3,88
andi $2,$3,36
multu $2,$1
jal Test6
mtlo $3
Back6:

multu $3,$1
ori $1,$1,32
jal Test_jal7
lb $3,-12288($31)
beq $0,$0,Test_beq7
addu $2,$31,$3
Test_jal7: jr $ra
Test_beq7:
slt $0,$0,$1
jal Test7
mtlo $2
Back7:

ori $2,$3,156
ori $2,$3,104
mtlo $4
mtlo $4
div $3,$2
sltu $2,$2,$2
jal Test_jal8
and $0,$3,$31
beq $0,$0,Test_beq8
and $2,$1,$31
Test_jal8: jr $ra
Test_beq8:
sltu $0,$1,$0
jal Test8
mfhi $1
Back8:

subu $3,$4,$0
multu $0,$2
jal Test_jal9
sltu $4,$2,$31
beq $0,$0,Test_beq9
or $3,$1,$31
Test_jal9: jr $ra
Test_beq9:
multu $2,$3
jal Test9
sltu $3,$3,$2
Back9:

ori $4,$3,112
ori $4,$3,40
andi $1,$2,44
andi $0,$1,16
div $3,$4
mflo $1
or $2,$4,$4
jal Test10
addiu $0,$0,136
Back10:

and $1,$1,$4
lui $3,28
jal Test_jal11
or $0,$4,$31
beq $0,$0,Test_beq11
div $3,$31
Test_jal11: jr $ra
Test_beq11:
subu $0,$3,$1
jal Test11
mult $4,$2
Back11:

mflo $3
subu $3,$4,$1
lui $3,1
lb $3,-65443($3)
jal Test_jal12
sw $2,-12288($31)
beq $0,$0,Test_beq12
slt $3,$3,$31
Test_jal12: jr $ra
Test_beq12:
multu $4,$3
jal Test12
mtlo $2
Back12:

subu $2,$0,$3
subu $4,$4,$1
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lb $1,0($0)
lh $1,0($1)
sw $1,80($0)
jal Test13
lui $1,32
jal End
ori $1,$3,80
ori $1,$3,60
lui $4,48
lui $4,88
div $3,$1


Test1:
subu $3,$4,$31
sh $1,80($0)
sltu $3,$3,$3
mtlo $2
sb $1,32($0)
lh $3,16($0)
mfhi $1
ori $1,$0,72
mflo $4
mflo $2
ori $1,$2,116
ori $1,$2,16
subu $3,$4,$3
slt $3,$4,$4
divu $2,$1
mthi $3
or $4,$2,$4
sltu $0,$3,$3
multu $0,$0
ori $3,$4,96
ori $3,$4,20
andi $1,$0,56
lui $0,36
divu $4,$3
bne $3,$1,EndTest1
subu $2,$0,$4
subu $1,$1,$1
ori $1,$1,112
lw $0,-32($1)
slt $1,$2,$1
mtlo $4
andi $1,$1,104
lui $2,152
sw $1,32($0)
mfhi $2
andi $1,$1,60
addiu $4,$0,144
EndTest1:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
ori $31,$3,0
jr $ra
sltu $1,$2,$0


Test2:
bne $1,$31,EndTest2
subu $9,$9,$9
subu $19,$19,$19
ori $19,$19,10
subu $24,$24,$24
ori $24,$24,1
SubTest2:
addu $9,$9,$24
bne $9,$19,EndTest2
lui $4,104
subu $3,$3,$3
ori $3,$3,112
lw $2,-32($3)
lh $2,32($0)
andi $0,$1,4
or $2,$3,$1
sltu $2,$0,$2
ori $3,$3,96
lui $3,0
lw $2,24($3)
multu $2,$3
mfhi $4
mflo $3
and $0,$3,$0
mult $1,$4
andi $1,$0,32
mfhi $1
ori $2,$4,56
ori $2,$4,76
addiu $1,$3,100
mfhi $0
divu $4,$2
or $0,$2,$4
subu $0,$0,$0
sb $1,80($0)
ori $2,$3,8
ori $2,$3,52
and $0,$4,$1
and $1,$0,$0
div $3,$2
ori $3,$3,4
ori $3,$3,44
lui $1,128
lui $4,20
div $3,$3
mflo $2
or $4,$0,$0
slt $0,$1,$0
ori $3,$1,36
ori $3,$1,36
and $4,$4,$2
slt $2,$4,$4
divu $1,$3
subu $3,$3,$3
sh $2,16($3)
andi $4,$3,144
subu $2,$0,$3
EndTest2:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
divu $4,$ra


Test3:
or $0,$4,$31
mtlo $4
mult $1,$3
lb $1,80($0)
mflo $4
mfhi $1
mfhi $1
sltu $1,$0,$3
multu $1,$2
subu $0,$1,$1
mthi $1
ori $4,$2,76
subu $0,$1,$0
mflo $3
or $0,$0,$2
subu $1,$1,$1
ori $1,$1,48
lb $0,1($1)
mtlo $4
andi $4,$0,104
mflo $2
bne $4,$2,EndTest3
subu $3,$4,$0
beq $2,$4,EndTest3
mflo $1
lb $4,80($0)
sb $4,112($0)
slt $3,$4,$4
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,80
sw $0,0($0)
ori $0,$0,80
lb $2,0($0)
sw $0,0($2)
mfhi $0
EndTest3:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
sh $3,64($0)
jr $ra
mthi $0


Test4:
mthi $31
subu $23,$23,$23
subu $13,$13,$13
ori $13,$13,10
subu $22,$22,$22
ori $22,$22,1
SubTest4:
addu $23,$23,$22
bne $23,$13,EndTest4
lw $1,16($0)
lui $1,48
subu $1,$1,$1
ori $1,$1,80
lw $4,-80($1)
mflo $4
sw $0,64($0)
lui $3,40
and $2,$1,$2
mfhi $2
addiu $4,$1,0
subu $2,$2,$2
ori $2,$2,32
lb $2,1($2)
sw $4,48($0)
subu $2,$1,$1
or $4,$0,$0
or $0,$4,$4
ori $3,$3,148
ori $3,$3,156
andi $4,$4,28
lui $4,72
divu $3,$3
lb $4,32($0)
ori $1,$1,124
subu $3,$3,$3
ori $3,$3,96
sw $1,-64($3)
lb $2,64($0)
or $3,$1,$3
subu $3,$3,$3
lh $4,0($3)
ori $2,$4,124
ori $2,$4,132
mfhi $3
lh $1,80($0)
divu $4,$2
ori $2,$3,72
mflo $2
ori $4,$3,148
ori $4,$3,100
andi $2,$1,144
andi $2,$2,16
div $3,$4
multu $3,$0
EndTest4:
subu $4,$4,$4
addu $2,$31,$4
addu $31,$31,$31
subu $31,$31,$2
andi $1,$2,48
jr $ra
multu $2,$1


Test5:
subu $1,$1,$31
subu $23,$23,$23
subu $28,$28,$28
ori $28,$28,10
subu $10,$10,$10
ori $10,$10,1
SubTest5:
addu $23,$23,$10
beq $23,$28,EndTest5
sw $1,112($0)
addiu $1,$0,52
subu $0,$1,$0
ori $1,$1,160
ori $1,$1,148
mthi $3
addiu $3,$4,32
divu $1,$1
subu $2,$2,$2
and $3,$3,$3
lui $3,128
andi $4,$2,76
mtlo $1
multu $2,$1
lui $4,68
or $3,$2,$2
subu $3,$3,$3
ori $3,$3,80
sw $2,-32($3)
multu $1,$3
ori $4,$4,32
lui $4,0
lw $3,128($4)
mthi $4
mflo $3
subu $2,$4,$2
mult $4,$0
multu $2,$2
subu $2,$0,$0
subu $2,$2,$2
sw $4,48($2)
ori $3,$2,116
and $1,$2,$4
subu $2,$3,$0
and $2,$3,$2
EndTest5:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
sltu $3,$2,$4


Test6:
sh $1,-12288($31)
subu $24,$24,$24
subu $16,$16,$16
ori $16,$16,10
subu $7,$7,$7
ori $7,$7,1
SubTest6:
addu $24,$24,$7
beq $24,$16,EndTest6
mfhi $3
ori $2,$3,92
ori $2,$3,44
sltu $0,$4,$4
or $4,$1,$4
divu $3,$2
subu $1,$4,$1
mtlo $3
ori $1,$0,44
ori $3,$0,44
addu $2,$4,$2
multu $0,$4
lh $2,16($0)
and $0,$3,$4
lw $3,48($0)
ori $3,$4,40
sltu $3,$3,$2
sltu $4,$3,$1
sltu $4,$4,$3
mflo $1
addiu $3,$4,116
sw $1,32($0)
subu $3,$2,$3
mtlo $4
mult $4,$4
mult $1,$2
bne $3,$4,SubTest6
multu $4,$0
mflo $1
sw $1,80($0)
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,96
sw $0,0($0)
ori $0,$0,96
lb $1,0($0)
sb $0,0($1)
EndTest6:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
div $3,$ra


Test7:
beq $4,$31,EndTest7
mthi $0
ori $2,$2,96
ori $2,$2,108
multu $1,$0
lb $3,80($0)
divu $2,$2
mthi $3
mthi $1
subu $4,$3,$4
ori $2,$3,60
lw $1,96($0)
lb $1,32($0)
ori $1,$1,4
ori $1,$1,128
sb $4,112($0)
sb $3,64($0)
div $1,$1
ori $1,$4,148
ori $1,$4,100
slt $2,$3,$2
slt $2,$2,$2
div $4,$1
subu $1,$0,$3
multu $4,$4
or $1,$0,$3
andi $2,$4,88
mtlo $0
slt $0,$2,$4
andi $4,$1,148
multu $1,$3
ori $0,$3,68
ori $3,$2,60
ori $3,$2,36
or $0,$0,$0
sltu $4,$1,$4
divu $2,$3
mtlo $2
mtlo $1
mthi $3
mflo $4
multu $0,$0
EndTest7:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
jr $ra
sltu $1,$4,$2


Test8:
addu $0,$31,$2
subu $16,$16,$16
subu $10,$10,$10
ori $10,$10,10
subu $7,$7,$7
ori $7,$7,1
SubTest8:
addu $16,$16,$7
beq $16,$10,EndTest8
subu $0,$4,$3
sltu $4,$0,$0
and $3,$3,$0
mthi $0
sh $1,48($0)
mult $4,$4
ori $4,$1,144
ori $4,$1,8
mthi $3
mthi $0
div $1,$4
mult $3,$0
mflo $0
mthi $4
sb $3,64($0)
mfhi $3
ori $3,$1,140
ori $3,$1,16
sh $2,80($0)
addiu $0,$2,156
divu $1,$3
or $1,$3,$4
beq $4,$3,SubTest8
sltu $1,$0,$1
beq $2,$0,SubTest8
lui $4,68
ori $3,$3,96
subu $3,$0,$4
subu $1,$1,$1
sb $4,16($1)
lui $3,112
addu $2,$4,$1
andi $0,$3,0
ori $4,$4,84
ori $4,$4,20
andi $3,$1,92
lui $2,32
divu $4,$4
mtlo $2
lb $4,112($0)
andi $4,$0,72
EndTest8:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
sb $0,16($0)


Test9:
sb $3,-12288($31)
multu $3,$3
sh $3,80($0)
lui $3,36
slt $0,$0,$1
sh $0,80($0)
ori $3,$2,92
ori $3,$2,140
mtlo $1
or $4,$4,$1
divu $2,$3
andi $0,$1,100
or $1,$1,$2
addu $4,$1,$3
slt $2,$0,$3
mtlo $4
addu $2,$2,$1
mtlo $2
sltu $3,$2,$3
or $2,$2,$2
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sw $4,0($0)
lb $0,0($0)
lw $4,96($0)
sh $4,32($0)
lui $4,92
subu $4,$4,$4
ori $4,$4,64
lh $1,-62($4)
ori $3,$3,24
ori $3,$3,84
mtlo $1
andi $1,$2,108
divu $3,$3
multu $4,$4
beq $1,$4,EndTest9
addiu $4,$3,68
lui $0,72
slt $4,$3,$2
multu $1,$4
sltu $4,$2,$2
EndTest9:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
jr $ra
mult $3,$1


Test10:
beq $0,$31,EndTest10
subu $10,$10,$10
subu $28,$28,$28
ori $28,$28,10
subu $22,$22,$22
ori $22,$22,1
SubTest10:
addu $10,$10,$22
beq $10,$28,EndTest10
addiu $2,$4,0
lw $2,112($0)
mfhi $4
or $3,$4,$0
sltu $0,$3,$3
subu $0,$3,$4
mtlo $0
mfhi $4
andi $0,$0,84
mfhi $2
ori $4,$3,160
ori $4,$3,76
lui $1,76
multu $1,$2
divu $3,$4
andi $4,$3,4
or $0,$1,$2
mfhi $0
sltu $2,$1,$3
slt $4,$4,$4
subu $1,$1,$1
ori $1,$1,80
sb $4,-48($1)
ori $1,$3,160
ori $1,$3,120
sw $4,16($0)
addu $4,$2,$0
divu $3,$1
sh $3,32($0)
or $4,$4,$4
ori $3,$2,32
ori $3,$2,12
mult $4,$0
mult $4,$1
div $2,$3
and $4,$0,$0
sb $1,112($0)
subu $3,$2,$1
sb $4,64($0)
or $4,$0,$0
EndTest10:
subu $3,$3,$3
sw $31,0($3)
subu $31,$31,$31
lw $31,0($3)
jr $ra
sltu $3,$2,$2


Test11:
subu $4,$3,$31
subu $3,$3,$3
ori $3,$3,96
sb $0,-16($3)
mult $4,$4
mtlo $3
and $3,$0,$1
or $4,$1,$4
sltu $3,$3,$2
mult $0,$0
ori $3,$2,52
ori $3,$2,132
ori $1,$1,12
and $4,$4,$4
divu $2,$3
beq $0,$0,EndTest11
mfhi $3
sltu $0,$0,$1
sh $0,48($0)
and $2,$4,$1
lb $3,16($0)
mflo $2
subu $3,$3,$3
sb $3,32($3)
and $2,$1,$2
addiu $3,$4,96
subu $0,$4,$4
lui $0,40
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sh $4,0($0)
lh $0,0($0)
lw $4,80($0)
sw $4,0($0)
mult $1,$2
lui $1,68
sb $3,96($0)
lui $3,144
andi $4,$4,72
EndTest11:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
mtlo $1


Test12:
or $3,$4,$31
or $2,$4,$4
lw $0,64($0)
mthi $3
ori $4,$2,60
ori $4,$2,32
or $3,$0,$1
ori $3,$0,132
divu $2,$4
subu $3,$1,$3
or $0,$2,$0
or $4,$1,$4
ori $4,$3,68
ori $4,$3,116
lb $1,16($0)
lw $1,112($0)
div $3,$4
bne $4,$3,EndTest12
mtlo $2
slt $1,$0,$1
sw $0,112($0)
sltu $0,$4,$4
ori $4,$1,148
sw $1,48($0)
mtlo $1
or $2,$2,$3
addiu $0,$2,112
sw $1,32($0)
lb $0,112($0)
sw $0,96($0)
lb $3,64($0)
lh $2,64($0)
andi $3,$1,28
sh $0,64($0)
or $0,$1,$0
EndTest12:
subu $2,$2,$2
addu $3,$31,$2
subu $31,$31,$31
ori $31,$3,0
mthi $0
jr $ra
lui $1,112


Test13:
subu $3,$2,$31
subu $21,$21,$21
subu $30,$30,$30
ori $30,$30,10
subu $12,$12,$12
ori $12,$12,1
SubTest13:
addu $21,$21,$12
bne $21,$30,EndTest13
slt $1,$1,$0
lui $1,132
slt $4,$0,$4
mthi $2
ori $3,$1,40
sh $0,48($0)
mfhi $0
addiu $3,$1,8
lb $0,48($0)
sltu $2,$4,$0
mthi $4
addu $0,$0,$1
mthi $0
or $0,$0,$2
mthi $3
mfhi $1
beq $0,$1,SubTest13
sh $4,64($0)
and $3,$0,$0
ori $1,$1,84
and $3,$0,$2
mtlo $1
and $3,$0,$1
sltu $1,$3,$0
sw $4,16($0)
lui $0,76
mfhi $3
EndTest13:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
lb $2,32($0)


End:
