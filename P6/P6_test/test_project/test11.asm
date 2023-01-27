ori $0, $0, 140
ori $1, $0, 140
ori $2, $0, 44
ori $3, $0, 84
ori $4, $0, 140
ori $5, $0, 76
ori $6, $0, 120
ori $7, $0, 40
ori $8, $0, 44
ori $9, $0, 68
ori $10, $0, 88
ori $11, $0, 24
ori $12, $0, 44
ori $13, $0, 120
ori $14, $0, 92
ori $15, $0, 48
ori $16, $0, 84
ori $17, $0, 156
ori $18, $0, 60
ori $19, $0, 120
ori $20, $0, 40
ori $21, $0, 72
ori $22, $0, 44
ori $23, $0, 68
ori $24, $0, 4
ori $25, $0, 0
ori $26, $0, 124
ori $27, $0, 116
ori $28, $0, 108
ori $29, $0, 56
ori $30, $0, 68
ori $31, $0, 60

lb $4,16($0)
andi $4,$0,156
jal Test_jal1
slt $2,$2,$31
beq $0,$0,Test_beq1
addu $3,$31,$4
Test_jal1: jr $ra
Test_beq1:
addiu $2,$0,100
jal Test1
mthi $3
Back1:

subu $2,$4,$2
subu $1,$1,$1
ori $1,$1,48
sw $3,-48($1)
lui $1,40
jal Test2
addiu $0,$2,76
Back2:

subu $1,$1,$1
lw $3,80($1)
ori $3,$3,8
ori $3,$3,148
ori $3,$3,52
multu $1,$4
mfhi $2
divu $3,$3
jal Test3
sh $1,112($0)
Back3:

addu $2,$2,$4
mtlo $3
jal Test_jal4
slt $0,$0,$31
beq $0,$0,Test_beq4
slt $4,$3,$31
Test_jal4: jr $ra
Test_beq4:
multu $3,$3
jal Test4
ori $1,$2,108
Back4:

slt $3,$0,$2
lh $4,0($0)
lui $0,12
jal Test5
multu $4,$1
Back5:

lw $3,48($0)
sltu $2,$1,$0
or $3,$4,$3
jal Test6
andi $1,$2,36
Back6:

lui $1,4
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,64
sw $4,0($0)
ori $4,$4,96
lw $0,0($0)
sw $4,112($0)
jal Test_jal7
sw $0,-12288($31)
beq $0,$0,Test_beq7
mtlo $31
Test_jal7: jr $ra
Test_beq7:
mflo $2
jal Test7
mthi $3
Back7:

addu $0,$1,$3
sb $2,112($0)
slt $3,$0,$1
jal Test8
addiu $4,$1,136
Back8:

multu $1,$3
ori $1,$4,80
subu $1,$1,$1
sw $3,96($1)
jal Test9
lui $4,148
Back9:

ori $3,$4,28
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,64
sb $1,0($0)
ori $1,$1,112
lb $0,0($0)
sb $1,32($0)
mfhi $4
jal Test10
mflo $4
Back10:

subu $4,$4,$4
slt $3,$3,$0
addiu $1,$0,104
jal Test11
sw $1,16($0)
Back11:

slt $1,$1,$1
mflo $4
jal Test_jal12
subu $0,$1,$31
beq $0,$0,Test_beq12
addiu $1,$31,20
Test_jal12: jr $ra
Test_beq12:
lui $1,108
jal Test12
ori $4,$3,28
ori $4,$3,88
ori $2,$1,28
mthi $1
divu $3,$4
Back12:

andi $0,$2,32
slt $4,$0,$3
jal Test_jal13
addiu $3,$31,132
beq $0,$0,Test_beq13
div $1,$31
Test_jal13: jr $ra
Test_beq13:
multu $3,$2
jal Test13
multu $0,$2
jal End
sw $2,64($0)


Test1:
or $0,$2,$31
mfhi $3
mult $4,$0
ori $2,$2,76
ori $2,$2,124
mflo $3
mflo $0
div $2,$2
ori $1,$2,84
ori $1,$2,44
mthi $4
lui $4,44
divu $2,$1
ori $3,$2,20
ori $3,$2,20
subu $1,$1,$1
ori $4,$4,144
divu $2,$3
subu $2,$0,$3
lui $2,1
lw $2,-65432($2)
addiu $4,$4,156
ori $4,$1,124
ori $4,$1,36
lw $2,16($0)
mthi $3
divu $1,$4
or $2,$4,$0
mthi $2
slt $2,$3,$1
slt $4,$0,$2
and $3,$1,$1
ori $1,$4,140
ori $1,$4,12
or $3,$2,$3
ori $3,$2,48
divu $4,$1
subu $0,$2,$1
subu $1,$1,$1
sb $4,32($1)
sltu $2,$2,$0
mflo $4
subu $2,$2,$3
lui $2,1
lb $4,-65391($2)
or $3,$2,$0
mthi $3
lw $4,16($0)
mthi $3
subu $2,$2,$2
ori $2,$2,112
lw $1,-32($2)
subu $3,$4,$3
EndTest1:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
mtlo $4


Test2:
ori $0,$31,112
subu $6,$6,$6
subu $13,$13,$13
ori $13,$13,10
subu $22,$22,$22
ori $22,$22,1
SubTest2:
addu $6,$6,$22
beq $6,$13,EndTest2
addu $4,$1,$2
sb $0,64($0)
or $4,$4,$0
mfhi $0
slt $1,$4,$4
subu $1,$1,$1
ori $1,$1,64
sh $0,-48($1)
ori $1,$3,36
ori $1,$3,116
mfhi $2
ori $0,$0,44
divu $3,$1
lh $4,48($0)
andi $2,$1,40
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,112
sw $2,0($0)
ori $2,$2,16
lb $0,0($0)
sw $2,16($0)
lui $2,4
andi $2,$1,0
subu $2,$4,$3
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,96
sb $1,0($0)
ori $1,$1,112
lb $0,0($0)
sh $1,16($0)
and $1,$4,$3
ori $3,$1,60
ori $3,$1,40
mthi $0
mthi $2
div $1,$3
beq $4,$1,SubTest2
ori $3,$0,72
and $1,$1,$0
addu $0,$0,$1
sltu $4,$0,$0
mthi $1
beq $2,$3,SubTest2
lui $0,8
subu $0,$0,$0
sb $2,80($0)
ori $0,$3,144
multu $0,$4
subu $3,$0,$1
lui $3,1
lw $3,-65512($3)
EndTest2:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
and $1,$0,$3


Test3:
sltu $3,$2,$31
subu $19,$19,$19
subu $30,$30,$30
ori $30,$30,10
subu $25,$25,$25
ori $25,$25,1
SubTest3:
addu $19,$19,$25
beq $19,$30,EndTest3
mtlo $4
subu $3,$3,$3
subu $1,$1,$1
ori $3,$0,8
ori $1,$0,292
divu $1,$3
mflo $2
lb $4,16($0)
lw $1,0($2)
slt $4,$3,$2
mtlo $4
slt $2,$1,$0
mtlo $2
ori $2,$3,76
ori $3,$4,116
ori $1,$4,88
ori $1,$4,56
sltu $3,$2,$3
or $2,$3,$3
divu $4,$1
lb $3,16($0)
multu $3,$3
mfhi $3
mult $0,$2
ori $1,$1,44
ori $1,$1,68
andi $2,$4,52
andi $2,$3,92
div $1,$1
lui $2,56
sw $3,32($0)
mult $1,$3
mthi $0
subu $0,$3,$3
subu $3,$3,$3
sb $0,0($3)
mtlo $2
lui $4,60
mtlo $1
bne $2,$1,SubTest3
andi $2,$4,40
or $0,$2,$3
sltu $1,$1,$1
EndTest3:
subu $3,$3,$3
addu $2,$31,$3
addu $31,$31,$31
subu $31,$31,$2
jr $ra
lui $4,156


Test4:
bne $4,$31,EndTest4
mflo $4
mthi $2
multu $0,$3
subu $2,$3,$4
mfhi $3
subu $2,$2,$4
ori $4,$2,8
ori $4,$2,72
slt $1,$3,$3
slt $1,$3,$3
div $2,$4
lh $3,0($0)
mtlo $3
sh $0,80($0)
ori $3,$1,76
mtlo $2
beq $2,$0,EndTest4
ori $2,$2,52
ori $2,$2,68
mthi $1
ori $4,$1,116
divu $2,$2
mthi $0
sltu $3,$2,$1
multu $0,$4
ori $2,$1,56
ori $2,$1,104
and $3,$0,$3
and $4,$4,$3
div $1,$2
ori $3,$1,12
ori $3,$1,152
and $0,$2,$2
and $0,$0,$4
div $1,$3
sw $1,64($0)
addiu $1,$2,100
mtlo $0
mtlo $1
sw $1,64($0)
mflo $4
ori $3,$0,48
lui $3,0
lh $4,36($3)
EndTest4:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
ori $31,$4,0
ori $3,$2,60
jr $ra
sltu $0,$0,$3


Test5:
bne $2,$31,EndTest5
subu $25,$25,$25
subu $13,$13,$13
ori $13,$13,10
subu $11,$11,$11
ori $11,$11,1
SubTest5:
addu $25,$25,$11
beq $25,$13,EndTest5
sltu $0,$1,$2
lui $2,84
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,112
sb $0,0($0)
ori $0,$0,64
lh $0,0($0)
sw $0,0($0)
andi $1,$2,96
andi $1,$1,80
lw $3,0($0)
mtlo $1
mflo $0
subu $4,$4,$4
lb $1,20($4)
beq $2,$1,SubTest5
and $1,$3,$3
or $4,$4,$1
or $3,$3,$0
slt $2,$2,$0
mflo $2
andi $4,$3,72
multu $0,$2
addiu $0,$0,32
addiu $3,$3,8
lh $0,112($0)
beq $1,$2,SubTest5
ori $3,$4,92
ori $3,$4,84
or $0,$0,$2
lui $1,48
divu $4,$3
ori $2,$2,140
lh $1,48($0)
multu $3,$1
or $3,$2,$2
mfhi $4
ori $4,$4,40
EndTest5:
subu $4,$4,$4
sw $31,8($4)
subu $31,$31,$31
lw $31,8($4)
ori $4,$1,144
ori $4,$1,52
addiu $0,$2,16
sh $2,80($0)
divu $1,$4
jr $ra
ori $1,$1,156


Test6:
lh $3,-12288($31)
subu $7,$7,$7
subu $23,$23,$23
ori $23,$23,10
subu $10,$10,$10
ori $10,$10,1
SubTest6:
addu $7,$7,$10
beq $7,$23,EndTest6
multu $2,$4
sltu $0,$1,$2
slt $3,$1,$4
ori $1,$3,88
ori $1,$3,96
addiu $4,$4,44
lui $4,84
divu $3,$1
subu $4,$4,$0
ori $3,$2,92
ori $1,$4,40
ori $1,$4,68
mult $3,$3
mult $2,$3
div $4,$1
lb $1,112($0)
and $2,$3,$2
or $2,$0,$0
beq $4,$0,SubTest6
mflo $3
andi $4,$2,108
mult $4,$3
ori $2,$2,44
ori $2,$2,144
mtlo $1
or $3,$1,$1
divu $2,$2
mthi $0
beq $0,$0,SubTest6
lb $2,80($0)
ori $1,$4,12
ori $1,$4,128
multu $2,$2
multu $3,$2
div $4,$1
lw $0,0($0)
lh $4,16($0)
or $0,$4,$4
slt $2,$4,$0
mflo $3
lui $0,64
mflo $0
lw $0,64($0)
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,9
ori $3,$0,328
divu $3,$2
mflo $4
multu $1,$1
lh $3,0($4)
EndTest6:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
ori $31,$2,0
jr $ra
and $2,$1,$4


Test7:
mult $31,$2
subu $14,$14,$14
subu $24,$24,$24
ori $24,$24,10
subu $15,$15,$15
ori $15,$15,1
SubTest7:
addu $14,$14,$15
bne $14,$24,EndTest7
mfhi $1
ori $3,$3,160
ori $3,$3,144
andi $1,$4,132
andi $2,$4,96
div $3,$3
sh $0,32($0)
mfhi $2
and $0,$3,$4
and $1,$3,$0
addu $3,$3,$1
or $3,$4,$4
mthi $4
andi $1,$1,76
mflo $3
andi $0,$3,60
or $2,$1,$4
ori $4,$4,48
ori $4,$4,32
mtlo $3
lui $2,60
divu $4,$4
addiu $1,$3,112
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lh $3,0($0)
lb $2,96($3)
sb $2,64($0)
addiu $1,$0,92
multu $4,$2
subu $2,$4,$1
addiu $0,$2,32
or $3,$4,$0
ori $3,$2,72
ori $3,$2,60
subu $0,$4,$0
or $0,$1,$0
divu $2,$3
mflo $3
mfhi $3
and $1,$3,$4
ori $4,$4,24
ori $4,$4,144
addiu $1,$3,112
or $1,$2,$2
divu $4,$4
EndTest7:
subu $4,$4,$4
addu $2,$31,$4
addu $31,$31,$31
subu $31,$31,$2
subu $1,$0,$3
jr $ra
andi $3,$1,0


Test8:
ori $1,$31,28
subu $6,$6,$6
subu $14,$14,$14
ori $14,$14,10
subu $10,$10,$10
ori $10,$10,1
SubTest8:
addu $6,$6,$10
beq $6,$14,EndTest8
mfhi $3
multu $1,$3
mtlo $3
and $4,$4,$2
slt $2,$1,$0
subu $4,$4,$4
sw $3,96($4)
slt $2,$1,$0
ori $1,$3,92
ori $1,$3,32
slt $0,$2,$2
slt $4,$0,$0
div $3,$1
mfhi $0
or $3,$3,$4
lw $4,64($0)
ori $4,$4,24
ori $4,$4,12
mult $2,$2
lui $3,4
divu $4,$4
ori $2,$2,64
ori $2,$2,116
ori $3,$0,8
ori $0,$3,136
div $2,$2
or $2,$1,$2
mflo $3
mfhi $3
mtlo $1
mult $0,$2
or $4,$3,$3
lb $4,48($0)
bne $1,$3,SubTest8
mthi $1
ori $1,$2,144
slt $0,$1,$1
and $3,$1,$0
sb $0,0($0)
ori $1,$2,112
ori $1,$2,88
lb $4,112($0)
mflo $0
divu $2,$1
EndTest8:
subu $4,$4,$4
sw $31,56($4)
subu $31,$31,$31
lw $31,56($4)
jr $ra
divu $2,$ra


Test9:
andi $4,$31,0
subu $28,$28,$28
subu $13,$13,$13
ori $13,$13,10
subu $25,$25,$25
ori $25,$25,1
SubTest9:
addu $28,$28,$25
beq $28,$13,EndTest9
andi $4,$0,148
mfhi $0
lui $1,104
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sh $0,0($0)
lh $4,0($0)
lw $0,80($4)
sh $0,64($0)
ori $3,$1,28
subu $3,$2,$0
subu $1,$0,$1
or $1,$0,$1
lw $0,32($0)
ori $4,$2,48
ori $4,$2,132
sltu $3,$3,$3
sltu $1,$3,$1
div $2,$4
mflo $2
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sh $4,0($0)
lh $2,0($0)
lb $4,96($2)
sb $4,64($0)
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,16
sw $0,0($0)
ori $0,$0,64
lb $2,0($0)
sb $0,112($2)
mult $2,$2
slt $4,$2,$2
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,64
sb $3,0($0)
ori $3,$3,96
lh $0,0($0)
sw $3,0($0)
ori $1,$4,156
ori $1,$4,84
and $3,$3,$3
or $2,$3,$2
divu $4,$1
slt $3,$0,$3
mflo $0
lui $4,0
and $2,$4,$2
sh $4,32($0)
lb $2,64($0)
sltu $4,$2,$1
lb $3,96($0)
lw $0,80($0)
EndTest9:
subu $3,$3,$3
addu $3,$31,$3
subu $31,$31,$31
ori $31,$3,0
mthi $4
jr $ra
lui $4,36


Test10:
sltu $3,$1,$31
mtlo $1
slt $2,$3,$2
andi $4,$1,120
or $4,$2,$1
multu $2,$2
multu $2,$0
mflo $4
andi $4,$0,156
mflo $1
slt $4,$2,$0
subu $1,$1,$1
lb $0,62($1)
and $4,$0,$2
ori $3,$3,88
or $3,$3,$1
subu $4,$3,$1
sltu $2,$3,$2
andi $0,$4,140
ori $1,$4,16
ori $1,$4,148
mflo $2
andi $2,$3,84
divu $4,$1
mult $0,$1
ori $1,$4,72
ori $1,$4,136
ori $2,$0,60
ori $3,$3,152
div $4,$1
ori $3,$1,8
lui $3,136
sltu $2,$1,$2
mult $1,$1
ori $2,$4,120
ori $2,$4,108
mflo $1
mflo $3
div $4,$2
EndTest10:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
lw $3,112($0)


Test11:
beq $3,$31,EndTest11
ori $1,$0,156
ori $1,$4,112
ori $1,$4,36
mtlo $3
mtlo $2
div $4,$1
mflo $3
addu $4,$3,$2
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,32
sw $2,0($0)
ori $2,$2,64
lw $3,0($0)
sb $2,64($3)
slt $4,$2,$0
subu $1,$1,$1
ori $1,$1,112
sh $1,-96($1)
mflo $1
multu $3,$2
subu $4,$0,$1
sltu $3,$3,$2
or $0,$0,$2
ori $1,$4,132
mult $1,$1
multu $1,$3
subu $2,$0,$0
slt $2,$3,$3
bne $4,$2,EndTest11
slt $3,$2,$3
lb $1,48($0)
slt $2,$4,$0
ori $4,$1,16
mult $4,$1
mthi $0
addiu $3,$1,72
sw $3,0($0)
EndTest11:
subu $3,$3,$3
sw $31,60($3)
subu $31,$31,$31
lw $31,60($3)
slt $2,$0,$3
jr $ra
divu $1,$ra


Test12:
mult $31,$0
multu $3,$0
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sh $4,0($0)
lw $0,0($0)
lw $4,64($0)
sw $4,32($0)
ori $1,$0,84
mflo $3
ori $2,$3,64
ori $2,$3,112
multu $4,$4
multu $1,$4
div $3,$2
and $4,$1,$1
andi $0,$0,28
ori $2,$0,80
lui $2,0
lb $4,128($2)
ori $2,$3,48
ori $2,$3,108
multu $0,$1
multu $1,$1
div $3,$2
lui $4,80
ori $1,$4,116
ori $1,$4,144
andi $3,$2,8
andi $2,$2,108
div $4,$1
subu $2,$2,$2
ori $2,$2,112
lb $2,-63($2)
sltu $2,$3,$0
mfhi $4
mtlo $1
multu $1,$2
subu $4,$4,$4
ori $4,$4,112
lw $0,0($4)
mthi $4
mfhi $4
subu $3,$3,$3
sb $0,48($3)
mflo $4
mult $1,$3
mult $2,$2
mfhi $1
lh $4,16($0)
EndTest12:
subu $2,$2,$2
addu $3,$31,$2
subu $31,$31,$31
ori $31,$3,0
jr $ra
sb $4,112($0)


Test13:
or $2,$2,$31
subu $21,$21,$21
subu $20,$20,$20
ori $20,$20,10
subu $17,$17,$17
ori $17,$17,1
SubTest13:
addu $21,$21,$17
beq $21,$20,EndTest13
mthi $4
andi $2,$1,112
addu $4,$0,$4
mult $3,$3
slt $3,$1,$3
ori $1,$3,80
ori $3,$2,4
ori $3,$2,84
lui $0,116
lui $4,84
div $2,$3
slt $0,$4,$1
mult $4,$1
subu $0,$0,$0
sb $4,80($0)
or $1,$2,$3
lb $1,16($0)
subu $1,$1,$1
ori $1,$1,80
lw $1,-64($1)
and $4,$3,$0
subu $2,$2,$2
sw $0,0($2)
andi $3,$0,32
ori $1,$3,108
ori $1,$3,44
slt $4,$2,$4
mflo $4
divu $3,$1
mthi $0
sw $4,48($0)
multu $4,$4
ori $0,$1,60
or $2,$0,$1
mtlo $1
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,112
sb $1,0($0)
ori $1,$1,112
lb $0,0($0)
sh $1,48($0)
multu $3,$4
subu $2,$2,$4
EndTest13:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
sb $3,80($0)
jr $ra
slt $0,$2,$0


End:
