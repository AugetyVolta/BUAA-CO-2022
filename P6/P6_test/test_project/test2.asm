ori $0, $0, 152
ori $1, $0, 0
ori $2, $0, 92
ori $3, $0, 68
ori $4, $0, 104
ori $5, $0, 36
ori $6, $0, 124
ori $7, $0, 36
ori $8, $0, 40
ori $9, $0, 12
ori $10, $0, 140
ori $11, $0, 8
ori $12, $0, 48
ori $13, $0, 64
ori $14, $0, 76
ori $15, $0, 52
ori $16, $0, 12
ori $17, $0, 104
ori $18, $0, 36
ori $19, $0, 96
ori $20, $0, 20
ori $21, $0, 152
ori $22, $0, 84
ori $23, $0, 108
ori $24, $0, 32
ori $25, $0, 84
ori $26, $0, 128
ori $27, $0, 12
ori $28, $0, 84
ori $29, $0, 72
ori $30, $0, 40
ori $31, $0, 96

slt $4,$4,$3
mtlo $1
jal Test_jal1
or $0,$0,$31
beq $0,$0,Test_beq1
div $2,$31
Test_jal1: jr $ra
Test_beq1:
lui $1,144
jal Test1
ori $4,$2,136
ori $4,$2,72
andi $0,$3,84
mflo $1
divu $2,$4
Back1:

mfhi $4
subu $1,$1,$1
ori $1,$1,64
lw $3,-16($1)
jal Test_jal2
addiu $4,$31,8
beq $0,$0,Test_beq2
addu $4,$31,$2
Test_jal2: jr $ra
Test_beq2:
and $2,$4,$0
jal Test2
sb $3,96($0)
Back2:

and $2,$0,$0
mfhi $1
lui $0,108
jal Test3
mtlo $0
Back3:

lb $1,112($0)
mtlo $4
jal Test_jal4
mtlo $31
beq $0,$0,Test_beq4
sltu $4,$1,$31
Test_jal4: jr $ra
Test_beq4:
andi $4,$1,72
jal Test4
multu $2,$2
Back4:

ori $2,$2,144
ori $2,$2,120
lh $4,16($0)
lb $0,64($0)
div $2,$2
slt $3,$3,$1
jal Test_jal5
ori $4,$31,124
beq $0,$0,Test_beq5
sb $4,-12288($31)
Test_jal5: jr $ra
Test_beq5:
mfhi $2
jal Test5
mult $0,$0
Back5:

ori $1,$2,80
ori $1,$2,40
subu $4,$4,$3
mflo $4
divu $2,$1
mflo $4
mflo $0
jal Test6
ori $4,$4,124
ori $4,$4,56
addu $2,$1,$2
lui $2,92
divu $4,$4
Back6:

or $4,$4,$3
ori $4,$0,156
mult $4,$2
jal Test7
mfhi $0
Back7:

subu $4,$4,$4
sw $3,48($4)
slt $1,$4,$0
ori $2,$3,32
jal Test8
ori $4,$2,48
ori $4,$2,20
sb $1,96($0)
sw $1,32($0)
divu $2,$4
Back8:

multu $0,$0
slt $1,$4,$2
mfhi $4
jal Test9
sb $4,64($0)
Back9:

ori $4,$4,60
ori $4,$4,4
and $2,$1,$1
and $3,$2,$2
div $4,$4
multu $0,$0
jal Test_jal10
lh $2,-12288($31)
beq $0,$0,Test_beq10
sh $1,-12288($31)
Test_jal10: jr $ra
Test_beq10:
ori $4,$4,100
jal Test10
lui $0,0
Back10:

mfhi $0
subu $1,$1,$1
ori $1,$1,48
lb $4,-15($1)
and $3,$1,$2
jal Test11
subu $3,$4,$1
Back11:

ori $0,$2,4
subu $0,$4,$1
andi $3,$2,152
jal Test12
subu $0,$3,$3
Back12:

ori $1,$1,136
ori $1,$1,132
lui $4,32
lui $2,52
div $1,$1
and $4,$3,$0
mult $3,$4
jal Test13
subu $2,$4,$2
jal End
mtlo $0


Test1:
mtlo $31
subu $12,$12,$12
subu $11,$11,$11
ori $11,$11,10
subu $22,$22,$22
ori $22,$22,1
SubTest1:
addu $12,$12,$22
beq $12,$11,EndTest1
or $0,$0,$3
sltu $3,$4,$3
lw $1,112($0)
lui $3,40
mfhi $3
mtlo $2
andi $2,$0,148
andi $4,$1,144
mflo $4
subu $4,$4,$4
sw $2,0($4)
andi $4,$1,44
mfhi $0
bne $1,$4,SubTest1
sltu $3,$3,$3
subu $2,$2,$2
ori $2,$2,112
lh $3,-14($2)
subu $0,$0,$0
sb $4,16($0)
sb $4,64($0)
subu $1,$4,$3
mfhi $1
ori $2,$4,36
ori $2,$4,32
mtlo $3
mtlo $3
div $4,$2
mult $0,$3
sltu $3,$3,$0
ori $3,$2,64
lui $3,0
lh $4,148($3)
or $3,$2,$4
mtlo $4
subu $4,$0,$2
andi $3,$4,24
EndTest1:
subu $2,$2,$2
addu $2,$31,$2
addu $31,$31,$31
subu $31,$31,$2
jr $ra
andi $4,$3,0


Test2:
mult $31,$0
subu $12,$12,$12
subu $28,$28,$28
ori $28,$28,10
subu $15,$15,$15
ori $15,$15,1
SubTest2:
addu $12,$12,$15
bne $12,$28,EndTest2
andi $3,$2,80
mtlo $4
mfhi $2
mflo $4
subu $0,$0,$0
sw $3,112($0)
andi $3,$2,68
and $4,$0,$3
addiu $3,$1,100
ori $1,$1,152
ori $1,$1,72
subu $2,$2,$0
mult $4,$3
divu $1,$1
and $0,$1,$1
mtlo $2
lw $1,64($0)
sw $4,112($0)
slt $2,$3,$2
subu $1,$1,$1
lh $2,42($1)
ori $3,$3,108
beq $1,$1,SubTest2
and $4,$1,$4
lui $3,52
mflo $1
mfhi $0
and $0,$1,$3
or $3,$0,$0
ori $0,$4,124
multu $2,$2
ori $4,$4,144
mfhi $1
EndTest2:
subu $2,$2,$2
addu $3,$31,$2
subu $31,$31,$31
addu $31,$0,$3
jr $ra
sltu $1,$4,$1


Test3:
and $0,$2,$31
subu $17,$17,$17
subu $24,$24,$24
ori $24,$24,10
subu $18,$18,$18
ori $18,$18,1
SubTest3:
addu $17,$17,$18
beq $17,$24,EndTest3
subu $2,$4,$0
mfhi $0
ori $4,$1,32
lui $4,0
lw $2,128($4)
and $0,$0,$1
sltu $2,$3,$4
ori $3,$4,112
mult $0,$0
slt $4,$0,$1
addiu $2,$4,8
ori $4,$4,136
ori $4,$4,144
andi $2,$0,100
andi $1,$0,76
div $4,$4
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,32
sh $4,0($0)
ori $4,$4,0
lh $4,0($0)
sw $4,96($4)
multu $0,$0
andi $3,$0,36
lh $1,0($0)
addiu $4,$2,56
subu $3,$2,$0
lui $0,48
ori $3,$0,16
slt $4,$0,$0
ori $4,$3,112
ori $4,$3,104
ori $1,$2,48
ori $2,$1,0
div $3,$4
slt $3,$4,$0
lw $0,80($0)
or $2,$1,$3
andi $4,$3,32
slt $1,$4,$3
sltu $2,$0,$4
EndTest3:
subu $2,$2,$2
sw $31,84($2)
subu $31,$31,$31
lw $31,84($2)
jr $ra
or $0,$3,$1


Test4:
ori $1,$31,48
subu $19,$19,$19
subu $7,$7,$7
ori $7,$7,10
subu $23,$23,$23
ori $23,$23,1
SubTest4:
addu $19,$19,$23
beq $19,$7,EndTest4
andi $2,$0,156
mtlo $2
ori $2,$1,20
ori $2,$1,44
or $0,$4,$3
mflo $4
divu $1,$2
lui $0,92
sltu $2,$3,$0
subu $2,$2,$2
sb $3,0($2)
sltu $1,$1,$3
mtlo $3
ori $2,$3,12
ori $2,$3,20
mult $4,$1
ori $4,$1,64
divu $3,$2
ori $1,$4,12
ori $1,$4,148
addu $3,$2,$3
slt $3,$2,$2
divu $4,$1
mfhi $0
mthi $4
lw $2,0($0)
andi $2,$1,24
and $4,$0,$1
ori $4,$0,80
multu $1,$3
mtlo $3
addu $3,$3,$0
lw $0,64($0)
mthi $0
sltu $4,$0,$4
or $3,$3,$2
mfhi $4
mult $0,$1
and $0,$4,$2
EndTest4:
subu $3,$3,$3
sw $31,44($3)
subu $31,$31,$31
lw $31,44($3)
sltu $1,$1,$3
jr $ra
mflo $1


Test5:
and $0,$4,$31
sw $3,48($0)
lui $1,96
lui $2,48
multu $1,$3
ori $4,$2,64
ori $4,$2,108
mtlo $1
multu $0,$0
divu $2,$4
lw $0,16($0)
subu $1,$1,$1
ori $1,$1,80
sw $4,0($1)
beq $2,$0,EndTest5
lui $0,108
or $0,$4,$1
slt $3,$4,$3
mflo $3
addiu $1,$1,32
lb $2,32($0)
ori $4,$1,44
ori $4,$1,56
mtlo $2
and $3,$3,$2
divu $1,$4
subu $0,$0,$0
sw $2,32($0)
beq $2,$4,EndTest5
mflo $3
ori $1,$1,56
and $1,$3,$2
ori $2,$3,140
ori $2,$3,80
subu $1,$4,$4
subu $1,$4,$1
div $3,$2
ori $3,$1,148
ori $3,$1,72
sw $4,0($0)
sb $4,80($0)
div $1,$3
mtlo $3
lb $2,48($0)
mtlo $3
and $4,$1,$2
mfhi $0
EndTest5:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
ori $31,$3,0
and $3,$2,$1
jr $ra
andi $0,$0,140


Test6:
mthi $31
mthi $2
slt $0,$3,$3
addiu $1,$4,112
andi $1,$1,40
multu $3,$1
andi $2,$2,8
ori $1,$0,40
andi $3,$1,4
sltu $3,$1,$3
ori $4,$3,28
ori $4,$3,72
ori $0,$0,36
multu $2,$0
divu $3,$4
and $4,$3,$3
ori $4,$1,56
multu $0,$1
mflo $3
mthi $4
beq $4,$2,EndTest6
sw $4,80($0)
beq $4,$0,EndTest6
ori $0,$2,136
subu $4,$2,$2
lui $4,76
sh $2,0($0)
sh $1,96($0)
sltu $0,$2,$4
subu $2,$3,$3
mtlo $0
mfhi $4
EndTest6:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
jr $ra
mult $1,$2


Test7:
bne $1,$31,EndTest7
subu $15,$15,$15
subu $14,$14,$14
ori $14,$14,10
subu $25,$25,$25
ori $25,$25,1
SubTest7:
addu $15,$15,$25
beq $15,$14,EndTest7
addiu $3,$3,72
mflo $1
ori $2,$1,152
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,64
sh $4,0($0)
ori $4,$4,112
lw $4,0($0)
sb $4,0($4)
mthi $1
ori $2,$4,56
ori $2,$4,60
mflo $3
lb $3,96($0)
divu $4,$2
mult $4,$3
ori $4,$4,80
ori $4,$4,48
addiu $2,$0,52
addu $3,$0,$1
div $4,$4
mflo $2
sw $1,112($0)
addu $1,$1,$4
lh $2,48($0)
sltu $2,$0,$0
mflo $4
addiu $2,$1,56
multu $3,$2
ori $3,$1,84
ori $3,$1,88
mtlo $2
subu $0,$4,$0
divu $1,$3
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,64
sw $3,0($0)
ori $3,$3,16
lb $3,0($0)
sh $3,80($3)
lui $4,84
or $4,$2,$3
multu $3,$0
ori $4,$4,40
ori $4,$4,116
addiu $1,$3,104
slt $1,$3,$2
divu $4,$4
ori $3,$3,64
lui $3,0
lh $3,68($3)
slt $0,$3,$0
andi $2,$4,124
ori $1,$2,104
ori $1,$2,12
andi $4,$3,12
mult $4,$0
divu $2,$1
EndTest7:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
sltu $1,$3,$1


Test8:
ori $1,$31,52
subu $24,$24,$24
subu $13,$13,$13
ori $13,$13,10
subu $15,$15,$15
ori $15,$15,1
SubTest8:
addu $24,$24,$15
bne $24,$13,EndTest8
multu $0,$0
subu $3,$3,$3
sh $2,32($3)
lw $2,96($0)
lui $0,96
or $4,$3,$1
and $1,$3,$1
mflo $3
ori $2,$1,104
ori $2,$1,72
addiu $3,$4,116
slt $3,$4,$4
divu $1,$2
sw $2,32($0)
sw $3,0($0)
subu $2,$1,$4
mfhi $2
ori $1,$2,32
ori $1,$2,64
addu $4,$4,$3
or $4,$4,$3
divu $2,$1
multu $3,$2
addiu $2,$2,4
mtlo $2
addiu $2,$0,12
bne $2,$4,SubTest8
ori $3,$1,128
andi $3,$4,4
mfhi $1
mult $3,$2
mfhi $2
subu $2,$2,$2
subu $4,$4,$4
ori $2,$0,5
ori $4,$0,64
divu $4,$2
mflo $1
lh $4,0($1)
sltu $4,$0,$3
addiu $0,$1,140
or $0,$2,$4
EndTest8:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
sb $0,32($0)


Test9:
ori $2,$31,0
mflo $0
subu $1,$1,$1
ori $1,$1,96
lw $2,-16($1)
subu $2,$2,$2
sw $0,112($2)
multu $0,$2
andi $3,$0,52
ori $4,$1,64
ori $4,$1,64
mult $2,$3
mult $2,$2
div $1,$4
sltu $2,$3,$4
slt $2,$2,$2
sltu $2,$0,$1
lw $1,96($0)
mtlo $0
lb $0,32($0)
mult $2,$1
lui $0,156
or $3,$1,$2
or $4,$3,$0
andi $1,$3,8
mflo $1
multu $0,$0
or $4,$1,$4
mult $3,$0
subu $1,$3,$1
ori $2,$2,28
ori $2,$2,116
and $3,$0,$0
mflo $1
divu $2,$2
mthi $4
ori $0,$1,88
EndTest9:
subu $3,$3,$3
addu $4,$31,$3
addu $31,$31,$31
subu $31,$31,$4
subu $0,$4,$1
jr $ra
or $3,$3,$1


Test10:
bne $3,$31,EndTest10
subu $5,$5,$5
subu $21,$21,$21
ori $21,$21,10
subu $12,$12,$12
ori $12,$12,1
SubTest10:
addu $5,$5,$12
beq $5,$21,EndTest10
subu $2,$3,$3
ori $1,$1,40
sltu $2,$1,$4
sh $2,0($0)
mflo $0
subu $0,$3,$0
or $0,$3,$1
sltu $4,$0,$3
and $3,$4,$4
ori $3,$1,64
addiu $2,$0,120
subu $2,$2,$2
ori $2,$2,80
sw $0,-64($2)
sw $2,64($0)
mult $0,$4
addiu $3,$1,140
ori $1,$2,104
ori $1,$2,40
sltu $3,$3,$4
mflo $4
divu $2,$1
lh $2,80($0)
mult $2,$2
mfhi $4
subu $1,$1,$1
ori $1,$1,80
lh $3,-14($1)
mtlo $4
and $0,$1,$0
beq $0,$0,SubTest10
subu $2,$3,$2
andi $3,$3,72
mfhi $3
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,64
sw $3,0($0)
ori $3,$3,0
lw $2,0($0)
sh $3,96($2)
EndTest10:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
addu $0,$3,$1


Test11:
slt $1,$0,$31
subu $23,$23,$23
subu $14,$14,$14
ori $14,$14,10
subu $30,$30,$30
ori $30,$30,1
SubTest11:
addu $23,$23,$30
bne $23,$14,EndTest11
mult $1,$3
subu $4,$1,$4
mfhi $1
mfhi $3
slt $3,$3,$4
lui $3,20
ori $3,$4,148
addu $2,$3,$3
sltu $4,$3,$1
mfhi $3
or $0,$4,$1
subu $0,$1,$3
lw $2,112($0)
mfhi $4
subu $3,$3,$3
sb $0,0($3)
and $2,$0,$2
mfhi $3
lui $3,124
lw $1,80($0)
lb $3,80($0)
mthi $2
ori $1,$0,112
slt $1,$0,$4
lui $4,128
sltu $4,$0,$3
addu $1,$2,$3
EndTest11:
subu $3,$3,$3
sw $31,4($3)
subu $31,$31,$31
lw $31,4($3)
jr $ra
divu $3,$ra


Test12:
andi $2,$31,132
subu $26,$26,$26
subu $12,$12,$12
ori $12,$12,10
subu $27,$27,$27
ori $27,$27,1
SubTest12:
addu $26,$26,$27
bne $26,$12,EndTest12
sltu $1,$3,$2
mflo $4
mult $3,$3
or $0,$3,$2
multu $3,$2
ori $2,$2,156
addiu $1,$1,16
ori $2,$4,56
ori $2,$4,88
mult $1,$0
mfhi $3
divu $4,$2
subu $0,$0,$4
and $0,$2,$2
mult $1,$2
sw $0,64($0)
lui $2,92
subu $1,$1,$1
subu $2,$2,$2
ori $1,$0,5
ori $2,$0,144
divu $2,$1
mfhi $4
mult $3,$3
lw $2,0($4)
sltu $1,$4,$1
lb $3,32($0)
subu $1,$1,$1
lw $0,80($1)
multu $3,$3
sw $1,48($0)
addu $2,$1,$1
addiu $4,$2,40
mult $1,$1
sltu $4,$1,$2
subu $1,$2,$4
subu $4,$4,$4
sb $4,32($4)
or $0,$2,$0
EndTest12:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
jr $ra
mtlo $3


Test13:
mtlo $31
slt $1,$4,$0
lui $0,64
multu $4,$1
ori $4,$1,24
ori $4,$1,28
sh $0,32($0)
subu $2,$0,$3
divu $1,$4
subu $3,$4,$0
subu $1,$3,$2
mfhi $2
mult $0,$0
sltu $1,$1,$3
multu $0,$3
mult $2,$4
and $0,$3,$4
mthi $0
lh $4,96($0)
addu $1,$3,$4
sltu $3,$2,$2
lui $3,40
or $2,$0,$3
lw $0,112($0)
lw $3,32($0)
slt $0,$1,$4
mfhi $2
ori $4,$4,48
ori $4,$4,44
sb $2,32($0)
sh $1,48($0)
div $4,$4
sltu $2,$3,$4
multu $3,$4
EndTest13:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
ori $0,$1,76


End:
