ori $0, $0, 72
ori $1, $0, 12
ori $2, $0, 60
ori $3, $0, 96
ori $4, $0, 156
ori $5, $0, 84
ori $6, $0, 56
ori $7, $0, 148
ori $8, $0, 128
ori $9, $0, 84
ori $10, $0, 84
ori $11, $0, 132
ori $12, $0, 36
ori $13, $0, 12
ori $14, $0, 28
ori $15, $0, 36
ori $16, $0, 12
ori $17, $0, 36
ori $18, $0, 128
ori $19, $0, 32
ori $20, $0, 68
ori $21, $0, 120
ori $22, $0, 64
ori $23, $0, 24
ori $24, $0, 88
ori $25, $0, 52
ori $26, $0, 24
ori $27, $0, 144
ori $28, $0, 56
ori $29, $0, 76
ori $30, $0, 0
ori $31, $0, 108

sltu $2,$3,$2
mfhi $4
or $3,$0,$3
jal Test1
lui $4,36
Back1:

subu $1,$1,$1
sb $1,96($1)
slt $1,$2,$3
jal Test_jal2
sltu $2,$4,$31
beq $0,$0,Test_beq2
subu $1,$2,$31
Test_jal2: jr $ra
Test_beq2:
mthi $3
jal Test2
ori $2,$2,100
ori $2,$2,140
sltu $1,$1,$3
mthi $1
divu $2,$2
Back2:

mfhi $1
andi $4,$0,4
subu $2,$2,$4
lui $2,1
lw $2,-65492($2)
jal Test3
lb $0,32($0)
Back3:

mthi $1
mflo $0
jal Test_jal4
andi $1,$31,8
beq $0,$0,Test_beq4
addu $4,$31,$1
Test_jal4: jr $ra
Test_beq4:
mfhi $0
jal Test4
multu $4,$4
Back4:

sw $0,0($0)
subu $0,$0,$0
ori $0,$0,32
sb $0,0($0)
ori $0,$0,64
lb $4,0($0)
sb $0,96($4)
or $0,$3,$0
jal Test_jal5
sltu $2,$2,$31
beq $0,$0,Test_beq5
addu $1,$31,$0
Test_jal5: jr $ra
Test_beq5:
andi $3,$0,92
jal Test5
subu $2,$0,$1
Back5:

or $1,$3,$2
lui $1,16
jal Test_jal6
mtlo $31
beq $0,$0,Test_beq6
andi $4,$31,16
Test_jal6: jr $ra
Test_beq6:
mthi $0
jal Test6
mfhi $3
Back6:

subu $3,$0,$2
slt $1,$0,$0
jal Test_jal7
andi $4,$31,104
beq $0,$0,Test_beq7
mtlo $31
Test_jal7: jr $ra
Test_beq7:
ori $3,$4,136
jal Test7
sltu $1,$1,$4
Back7:

slt $3,$3,$3
mult $2,$1
subu $2,$4,$3
jal Test8
multu $2,$4
Back8:

sltu $0,$4,$4
or $4,$0,$3
lh $1,16($0)
jal Test9
ori $2,$3,144
ori $2,$3,40
lui $1,120
lui $4,112
div $3,$2
Back9:

sw $1,96($0)
lui $1,148
jal Test_jal10
sltu $3,$0,$31
beq $0,$0,Test_beq10
ori $1,$31,84
Test_jal10: jr $ra
Test_beq10:
subu $0,$0,$0
sh $0,16($0)
jal Test10
ori $1,$2,12
ori $1,$2,60
lh $4,64($0)
slt $0,$0,$4
divu $2,$1
Back10:

sltu $2,$3,$3
mult $0,$1
sltu $1,$2,$0
jal Test11
ori $2,$4,104
Back11:

ori $3,$0,84
and $4,$1,$2
multu $0,$2
jal Test12
subu $4,$1,$1
Back12:

subu $1,$4,$0
mult $2,$2
mult $0,$3
jal Test13
mult $1,$2
jal End
mfhi $0


Test1:
mtlo $31
ori $4,$3,32
ori $4,$3,120
ori $2,$0,140
ori $2,$1,112
div $3,$4
or $2,$1,$4
lui $1,76
andi $1,$0,132
slt $2,$0,$0
ori $2,$4,32
mtlo $0
lb $0,32($0)
mthi $3
mflo $1
lw $1,64($0)
ori $4,$2,140
ori $4,$2,120
sb $1,112($0)
andi $3,$1,84
divu $2,$4
mfhi $4
mflo $3
and $4,$3,$0
sltu $1,$1,$1
mtlo $0
subu $2,$2,$2
sw $3,112($2)
slt $0,$4,$2
mfhi $0
and $4,$3,$2
slt $1,$3,$2
lui $2,148
andi $1,$2,104
addu $4,$4,$3
EndTest1:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
ori $1,$4,4
ori $1,$4,64
sw $3,80($0)
sb $0,16($0)
div $4,$1
jr $ra
addu $1,$3,$2


Test2:
bne $1,$31,EndTest2
subu $25,$25,$25
subu $7,$7,$7
ori $7,$7,10
subu $5,$5,$5
ori $5,$5,1
SubTest2:
addu $25,$25,$5
beq $25,$7,EndTest2
mflo $1
mflo $1
addiu $3,$3,108
sltu $1,$1,$4
ori $4,$0,0
mult $4,$2
sh $1,48($0)
ori $3,$2,4
ori $3,$2,56
mflo $4
subu $4,$0,$4
divu $2,$3
sb $4,16($0)
addiu $1,$3,84
mfhi $1
mult $0,$2
ori $4,$2,4
ori $4,$2,32
slt $3,$3,$3
slt $0,$3,$0
div $2,$4
subu $1,$0,$3
mthi $3
lui $1,8
subu $1,$2,$4
ori $3,$3,80
ori $3,$3,88
and $2,$4,$4
lw $2,0($0)
divu $3,$3
subu $1,$1,$1
ori $1,$1,80
sw $3,0($1)
or $0,$2,$1
subu $1,$1,$1
ori $1,$1,112
sb $0,-80($1)
subu $4,$4,$4
sw $3,0($4)
lb $0,112($0)
ori $1,$3,44
ori $1,$3,40
mfhi $4
mfhi $4
div $3,$1
addu $0,$2,$3
mtlo $3
EndTest2:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
ori $31,$2,0
mflo $4
jr $ra
andi $3,$2,104


Test3:
ori $0,$31,36
or $4,$2,$3
ori $1,$4,64
ori $1,$4,68
slt $2,$2,$2
slt $3,$2,$2
div $4,$1
ori $1,$0,4
or $1,$4,$0
ori $4,$4,144
ori $4,$4,32
subu $1,$3,$2
or $3,$3,$3
divu $4,$4
mflo $0
sltu $3,$2,$0
subu $1,$1,$1
sw $0,64($1)
mfhi $4
slt $4,$0,$4
beq $0,$0,EndTest3
lw $3,80($0)
bne $2,$2,EndTest3
subu $3,$1,$4
multu $2,$3
subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,7
ori $2,$0,172
divu $2,$4
mflo $1
lw $2,0($1)
mult $0,$0
lui $3,20
mtlo $2
lui $2,132
or $3,$1,$1
sh $2,112($0)
ori $3,$3,52
ori $3,$3,80
or $2,$4,$2
or $4,$4,$4
div $3,$3
subu $0,$4,$4
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sh $1,0($0)
lh $2,0($0)
lw $1,48($2)
sh $1,112($0)
mthi $2
lui $0,8
EndTest3:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
divu $4,$ra


Test4:
mtlo $31
subu $29,$29,$29
subu $9,$9,$9
ori $9,$9,10
subu $10,$10,$10
ori $10,$10,1
SubTest4:
addu $29,$29,$10
bne $29,$9,EndTest4
andi $2,$4,36
mthi $2
multu $1,$0
slt $3,$0,$0
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,112
sh $4,0($0)
ori $4,$4,112
lw $0,0($0)
sb $4,0($0)
mfhi $4
ori $1,$4,88
ori $1,$4,108
lh $2,48($0)
multu $2,$0
divu $4,$1
ori $1,$3,12
ori $1,$3,128
slt $2,$4,$2
mtlo $4
divu $3,$1
subu $3,$0,$4
mthi $3
mult $0,$3
addiu $0,$2,136
subu $4,$3,$0
sh $0,16($0)
mthi $2
lui $0,4
mflo $1
beq $3,$2,SubTest4
lui $3,12
or $2,$1,$3
mflo $0
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,9
ori $3,$0,40
divu $3,$2
mfhi $1
lw $3,0($1)
lui $0,80
beq $0,$0,SubTest4
mthi $4
sltu $0,$0,$4
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sh $3,0($0)
lb $0,0($0)
lh $3,112($0)
sb $3,0($0)
subu $1,$4,$1
EndTest4:
subu $3,$3,$3
sw $31,116($3)
subu $31,$31,$31
lw $31,116($3)
or $3,$1,$2
jr $ra
mult $2,$4


Test5:
mthi $31
subu $22,$22,$22
subu $9,$9,$9
ori $9,$9,10
subu $7,$7,$7
ori $7,$7,1
SubTest5:
addu $22,$22,$7
beq $22,$9,EndTest5
sltu $1,$3,$3
ori $3,$3,36
ori $3,$3,52
sw $2,112($0)
sh $1,32($0)
div $3,$3
slt $3,$4,$0
subu $3,$0,$3
lui $3,1
lb $3,-65459($3)
slt $4,$1,$2
subu $3,$0,$1
lui $3,1
lw $4,-65476($3)
slt $1,$2,$1
sltu $2,$2,$3
or $3,$3,$3
mtlo $4
mtlo $4
subu $1,$1,$1
ori $1,$1,80
sb $4,0($1)
or $1,$4,$3
ori $2,$2,148
ori $2,$2,36
or $4,$1,$1
lui $1,64
divu $2,$2
mfhi $4
or $0,$3,$3
lb $4,80($0)
addu $3,$3,$4
subu $2,$1,$2
addu $2,$1,$2
and $0,$4,$4
mflo $1
ori $2,$4,96
ori $2,$4,56
or $1,$1,$3
subu $3,$0,$0
divu $4,$2
mflo $4
lw $2,32($0)
lui $2,148
EndTest5:
subu $2,$2,$2
addu $2,$31,$2
addu $31,$31,$31
subu $31,$31,$2
jr $ra
subu $3,$0,$1


Test6:
mthi $31
subu $14,$14,$14
subu $13,$13,$13
ori $13,$13,10
subu $5,$5,$5
ori $5,$5,1
SubTest6:
addu $14,$14,$5
beq $14,$13,EndTest6
lw $3,0($0)
addu $0,$4,$3
lui $3,36
multu $0,$0
ori $3,$4,32
ori $3,$4,128
addu $1,$2,$2
addu $1,$1,$2
div $4,$3
mult $1,$4
mfhi $3
lh $3,48($0)
sh $3,64($0)
sb $1,48($0)
lui $3,132
ori $4,$1,20
ori $4,$1,88
subu $2,$3,$0
subu $0,$3,$2
div $1,$4
mult $1,$0
andi $1,$2,8
and $4,$3,$4
subu $1,$1,$1
sh $3,32($1)
subu $0,$4,$2
sltu $3,$4,$3
slt $0,$3,$0
addiu $1,$1,68
ori $3,$0,32
lui $3,0
lw $4,48($3)
subu $1,$1,$1
subu $3,$3,$3
ori $1,$0,9
ori $3,$0,256
divu $3,$1
mflo $2
mflo $4
lw $3,0($2)
and $1,$4,$4
bne $1,$4,SubTest6
addu $3,$4,$1
lui $1,156
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $4,0($0)
lh $2,0($4)
sw $2,112($0)
EndTest6:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
addu $31,$0,$2
jr $ra
addiu $3,$1,112


Test7:
beq $0,$31,EndTest7
subu $21,$21,$21
subu $10,$10,$10
ori $10,$10,10
subu $14,$14,$14
ori $14,$14,1
SubTest7:
addu $21,$21,$14
bne $21,$10,EndTest7
subu $4,$0,$0
mflo $3
mfhi $2
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,64
sh $4,0($0)
ori $4,$4,96
lh $0,0($0)
sb $4,96($0)
ori $4,$2,16
ori $4,$2,24
lui $3,56
lui $3,148
div $2,$4
mult $2,$4
ori $1,$1,128
ori $1,$1,28
addu $3,$3,$2
addiu $4,$2,88
div $1,$1
lui $4,156
slt $0,$4,$2
beq $0,$0,SubTest7
andi $0,$4,16
mfhi $2
slt $0,$1,$2
sw $0,64($0)
ori $4,$1,20
ori $4,$1,56
mfhi $3
mthi $0
divu $1,$4
andi $0,$1,48
ori $3,$4,72
ori $3,$4,100
mflo $2
mflo $2
div $4,$3
lw $1,16($0)
addu $4,$3,$0
addu $3,$2,$3
mult $4,$2
slt $1,$1,$0
and $3,$4,$1
or $2,$1,$2
ori $3,$1,76
addiu $0,$0,100
mthi $3
EndTest7:
subu $2,$2,$2
addu $3,$31,$2
addu $31,$31,$31
subu $31,$31,$3
jr $ra
lui $3,100


Test8:
bne $1,$31,EndTest8
sw $3,80($0)
subu $4,$4,$4
ori $4,$4,64
sw $3,-32($4)
ori $3,$3,124
ori $3,$3,120
multu $4,$2
mtlo $1
divu $3,$3
lui $3,72
andi $2,$1,80
and $4,$2,$1
sltu $2,$1,$3
mthi $0
ori $4,$3,104
ori $4,$3,120
mfhi $1
mfhi $2
div $3,$4
multu $4,$2
subu $1,$1,$1
subu $4,$4,$4
ori $1,$0,8
ori $4,$0,68
divu $4,$1
mflo $3
lb $2,96($0)
lw $4,0($3)
lw $0,112($0)
ori $2,$4,76
ori $2,$4,100
mthi $0
mthi $1
div $4,$2
subu $2,$2,$2
mtlo $4
multu $4,$2
sltu $2,$2,$4
sltu $0,$0,$2
and $0,$2,$4
mult $3,$0
subu $3,$3,$3
lh $1,54($3)
slt $0,$4,$0
mthi $4
sh $3,80($0)
ori $1,$4,72
EndTest8:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
mtlo $2


Test9:
beq $3,$31,EndTest9
subu $7,$7,$7
subu $24,$24,$24
ori $24,$24,10
subu $16,$16,$16
ori $16,$16,1
SubTest9:
addu $7,$7,$16
beq $7,$24,EndTest9
addu $3,$0,$0
mtlo $0
mfhi $2
lw $2,64($0)
lui $3,100
andi $4,$3,80
mtlo $2
and $4,$3,$1
lw $2,32($0)
multu $0,$1
mthi $3
sltu $1,$0,$0
sb $3,112($0)
mult $2,$1
sw $3,64($0)
subu $4,$2,$1
subu $2,$2,$2
ori $2,$2,112
sb $2,0($2)
mfhi $3
lui $4,88
sw $4,112($0)
sltu $2,$3,$0
sh $3,32($0)
subu $1,$3,$2
subu $2,$3,$1
multu $2,$0
or $4,$2,$3
EndTest9:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
sltu $3,$0,$3


Test10:
ori $1,$31,72
subu $30,$30,$30
subu $18,$18,$18
ori $18,$18,10
subu $27,$27,$27
ori $27,$27,1
SubTest10:
addu $30,$30,$27
bne $30,$18,EndTest10
andi $0,$2,36
mult $0,$1
mflo $0
mflo $1
and $4,$3,$2
ori $1,$1,80
sw $0,0($0)
mthi $1
and $2,$3,$1
ori $1,$1,96
ori $1,$1,60
lui $0,144
lui $4,4
div $1,$1
mtlo $1
ori $3,$2,92
subu $2,$2,$2
ori $2,$2,96
sw $1,-16($2)
slt $4,$0,$2
ori $1,$2,52
ori $1,$2,76
lui $4,124
mult $3,$3
divu $2,$1
sltu $0,$0,$0
multu $4,$1
mfhi $2
sltu $0,$3,$4
ori $1,$4,48
ori $1,$4,24
and $2,$3,$3
and $2,$3,$2
div $4,$1
sltu $1,$4,$4
mult $3,$1
ori $2,$1,60
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,48
sb $0,0($0)
ori $0,$0,32
lh $4,0($0)
sh $0,16($4)
ori $3,$3,20
ori $3,$3,112
subu $2,$4,$2
subu $4,$2,$1
div $3,$3
ori $1,$4,48
ori $1,$4,72
lui $2,152
lui $3,68
div $4,$1
EndTest10:
subu $3,$3,$3
addu $3,$31,$3
subu $31,$31,$31
addu $31,$0,$3
mthi $4
jr $ra
mtlo $0


Test11:
bne $3,$31,EndTest11
subu $25,$25,$25
subu $22,$22,$22
ori $22,$22,10
subu $20,$20,$20
ori $20,$20,1
SubTest11:
addu $25,$25,$20
beq $25,$22,EndTest11
mthi $2
andi $4,$1,100
multu $2,$4
ori $0,$4,24
mtlo $0
sw $2,112($0)
mthi $1
mult $4,$3
mflo $4
ori $1,$3,112
ori $1,$3,108
mult $2,$2
lui $2,40
divu $3,$1
mtlo $4
sltu $2,$0,$4
and $3,$4,$1
subu $4,$4,$4
sw $0,48($4)
subu $2,$2,$4
or $1,$2,$4
sw $1,0($0)
mfhi $3
or $4,$2,$0
mult $4,$3
mfhi $0
mthi $4
lh $1,0($0)
addiu $0,$3,100
subu $0,$0,$0
sb $1,64($0)
mthi $2
EndTest11:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
jr $ra
mfhi $4


Test12:
beq $0,$31,EndTest12
subu $24,$24,$24
subu $11,$11,$11
ori $11,$11,10
subu $20,$20,$20
ori $20,$20,1
SubTest12:
addu $24,$24,$20
beq $24,$11,EndTest12
mflo $0
addu $1,$2,$4
ori $2,$3,12
mult $4,$4
andi $3,$3,104
sb $3,80($0)
and $3,$4,$3
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sw $0,0($0)
lb $0,0($0)
lh $0,80($0)
sw $0,0($0)
ori $1,$0,112
mfhi $2
mflo $2
mthi $1
subu $4,$1,$1
mthi $3
mult $2,$2
subu $2,$0,$0
andi $1,$0,92
beq $4,$0,SubTest12
ori $3,$1,152
ori $3,$1,120
sw $2,96($0)
or $2,$4,$2
divu $1,$3
subu $2,$1,$3
lui $2,1
lw $4,-65512($2)
mflo $3
lh $4,96($0)
mult $3,$0
ori $3,$1,64
ori $3,$1,56
mflo $4
ori $0,$2,40
divu $1,$3
multu $0,$3
and $1,$3,$4
addiu $1,$1,84
EndTest12:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
addu $4,$1,$2


Test13:
bne $2,$31,EndTest13
subu $12,$12,$12
subu $13,$13,$13
ori $13,$13,10
subu $11,$11,$11
ori $11,$11,1
SubTest13:
addu $12,$12,$11
bne $12,$13,EndTest13
lui $2,4
subu $1,$3,$2
mtlo $0
sw $1,96($0)
sb $3,16($0)
mult $1,$2
ori $1,$2,16
mtlo $1
beq $0,$1,SubTest13
andi $3,$2,0
mthi $4
mtlo $2
mflo $3
mflo $3
subu $1,$4,$3
sw $2,96($0)
lui $1,136
mflo $0
mflo $2
and $2,$3,$3
andi $0,$0,48
multu $2,$0
sltu $1,$0,$2
ori $4,$4,120
ori $4,$4,4
ori $0,$2,144
ori $2,$2,48
div $4,$4
slt $4,$1,$1
or $3,$4,$1
addu $2,$2,$1
EndTest13:
subu $4,$4,$4
addu $3,$31,$4
addu $31,$31,$31
subu $31,$31,$3
addu $4,$1,$1
jr $ra
or $0,$0,$1


End:
