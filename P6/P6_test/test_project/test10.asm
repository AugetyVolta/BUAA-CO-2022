ori $0, $0, 140
ori $1, $0, 56
ori $2, $0, 88
ori $3, $0, 108
ori $4, $0, 56
ori $5, $0, 96
ori $6, $0, 12
ori $7, $0, 96
ori $8, $0, 112
ori $9, $0, 64
ori $10, $0, 16
ori $11, $0, 156
ori $12, $0, 148
ori $13, $0, 100
ori $14, $0, 136
ori $15, $0, 124
ori $16, $0, 60
ori $17, $0, 8
ori $18, $0, 40
ori $19, $0, 40
ori $20, $0, 60
ori $21, $0, 156
ori $22, $0, 56
ori $23, $0, 64
ori $24, $0, 60
ori $25, $0, 16
ori $26, $0, 0
ori $27, $0, 104
ori $28, $0, 12
ori $29, $0, 128
ori $30, $0, 148
ori $31, $0, 132

ori $0,$3,0
ori $4,$1,84
ori $4,$1,136
subu $3,$3,$2
mult $3,$2
divu $1,$4
or $2,$2,$2
jal Test1
mult $0,$4
Back1:

subu $4,$1,$2
andi $0,$4,72
and $1,$1,$0
jal Test2
ori $3,$4,48
ori $3,$4,160
ori $2,$0,132
mthi $2
divu $4,$3
Back2:

lb $0,64($0)
ori $1,$4,92
ori $1,$4,156
mult $0,$2
mult $2,$0
divu $4,$1
jal Test_jal3
or $0,$1,$31
beq $0,$0,Test_beq3
addiu $3,$31,80
Test_jal3: jr $ra
Test_beq3:
addu $3,$4,$3
jal Test3
mtlo $3
Back3:

slt $3,$4,$2
sh $1,96($0)
jal Test_jal4
mult $31,$2
beq $0,$0,Test_beq4
sltu $3,$1,$31
Test_jal4: jr $ra
Test_beq4:
slt $0,$0,$3
jal Test4
ori $4,$2,84
ori $4,$2,8
multu $1,$1
multu $1,$0
div $2,$4
Back4:

ori $0,$1,124
slt $2,$0,$4
jal Test_jal5
lw $2,-12288($31)
beq $0,$0,Test_beq5
addiu $4,$31,84
Test_jal5: jr $ra
Test_beq5:
ori $2,$4,92
ori $2,$4,124
lh $3,0($0)
multu $3,$1
divu $4,$2
jal Test5
lui $3,44
Back5:

addiu $1,$0,20
mtlo $3
addu $1,$1,$1
jal Test6
mthi $0
Back6:

ori $2,$3,52
ori $2,$3,156
andi $0,$4,156
andi $0,$0,60
divu $3,$2
lh $0,112($0)
or $4,$1,$4
jal Test7
andi $3,$3,104
Back7:

sltu $0,$4,$1
ori $2,$4,108
ori $2,$4,124
mtlo $3
mtlo $3
div $4,$2
jal Test_jal8
multu $31,$0
beq $0,$0,Test_beq8
andi $1,$31,96
Test_jal8: jr $ra
Test_beq8:
multu $3,$3
jal Test8
lui $2,88
Back8:

addu $3,$2,$2
lh $2,112($0)
jal Test_jal9
sh $4,-12288($31)
beq $0,$0,Test_beq9
andi $1,$31,108
Test_jal9: jr $ra
Test_beq9:
mthi $4
jal Test9
lw $3,80($0)
Back9:

mthi $2
and $0,$2,$0
jal Test_jal10
sltu $3,$2,$31
beq $0,$0,Test_beq10
or $3,$2,$31
Test_jal10: jr $ra
Test_beq10:
sltu $1,$1,$3
jal Test10
andi $2,$3,44
Back10:

subu $3,$3,$3
sb $4,16($3)
lb $1,16($0)
jal Test_jal11
mthi $31
beq $0,$0,Test_beq11
addiu $3,$31,128
Test_jal11: jr $ra
Test_beq11:
and $1,$0,$1
jal Test11
mflo $3
Back11:

slt $4,$4,$1
lw $3,0($0)
jal Test_jal12
andi $2,$31,12
beq $0,$0,Test_beq12
and $0,$4,$31
Test_jal12: jr $ra
Test_beq12:
lb $0,0($0)
jal Test12
mthi $3
Back12:

sltu $3,$3,$0
lb $3,112($0)
jal Test_jal13
or $1,$0,$31
beq $0,$0,Test_beq13
lb $2,-12288($31)
Test_jal13: jr $ra
Test_beq13:
slt $4,$4,$3
jal Test13
multu $0,$2
jal End
sltu $2,$3,$2


Test1:
lw $3,-12288($31)
subu $27,$27,$27
subu $23,$23,$23
ori $23,$23,10
subu $5,$5,$5
ori $5,$5,1
SubTest1:
addu $27,$27,$5
beq $27,$23,EndTest1
mtlo $1
mflo $1
multu $2,$0
and $2,$4,$4
andi $1,$0,116
sltu $2,$3,$1
mthi $1
ori $4,$3,112
ori $4,$3,28
mthi $2
ori $2,$1,76
divu $3,$4
or $1,$4,$2
sltu $2,$1,$1
ori $0,$2,60
mtlo $3
ori $2,$4,12
ori $2,$4,140
slt $1,$1,$0
sb $1,112($0)
divu $4,$2
lw $0,32($0)
lui $3,40
subu $4,$4,$4
sw $1,112($4)
subu $1,$1,$1
ori $1,$1,96
lb $2,1($1)
subu $0,$4,$2
and $0,$0,$1
multu $0,$1
mult $3,$3
ori $4,$4,128
ori $4,$4,32
lb $1,64($0)
subu $1,$1,$3
divu $4,$4
beq $4,$0,SubTest1
mtlo $4
and $0,$2,$3
ori $3,$1,128
ori $3,$1,144
subu $4,$2,$4
subu $4,$4,$4
divu $1,$3
and $1,$1,$1
EndTest1:
subu $4,$4,$4
sw $31,92($4)
subu $31,$31,$31
lw $31,92($4)
jr $ra
sh $4,32($0)


Test2:
sltu $2,$2,$31
subu $18,$18,$18
subu $15,$15,$15
ori $15,$15,10
subu $16,$16,$16
ori $16,$16,1
SubTest2:
addu $18,$18,$16
beq $18,$15,EndTest2
lui $2,24
and $1,$3,$2
sh $4,64($0)
ori $2,$3,36
ori $2,$3,32
mtlo $4
or $1,$4,$1
divu $3,$2
lw $0,64($0)
lui $0,80
addu $4,$3,$4
multu $3,$1
mthi $4
subu $3,$3,$3
sb $1,48($3)
ori $1,$2,44
ori $1,$2,80
slt $0,$4,$3
addu $4,$0,$0
divu $2,$1
addiu $3,$2,92
mult $2,$4
and $1,$3,$4
lw $4,80($0)
or $1,$0,$4
lh $0,32($0)
subu $4,$0,$4
mult $2,$2
slt $3,$3,$0
sb $3,32($0)
mult $2,$2
ori $4,$1,56
ori $4,$1,140
andi $0,$2,36
sltu $2,$3,$0
divu $1,$4
multu $1,$0
subu $1,$1,$1
ori $1,$1,80
sb $2,0($1)
mtlo $2
EndTest2:
subu $3,$3,$3
sw $31,100($3)
subu $31,$31,$31
lw $31,100($3)
jr $ra
or $1,$4,$0


Test3:
subu $3,$1,$31
subu $3,$3,$3
ori $3,$3,48
lh $2,-46($3)
lb $3,32($0)
ori $0,$2,80
ori $4,$4,128
ori $4,$4,28
subu $3,$2,$2
subu $1,$3,$3
div $4,$4
mflo $4
mfhi $3
addiu $4,$2,16
lb $0,96($0)
and $3,$2,$4
addu $4,$0,$3
ori $1,$1,124
ori $1,$1,28
mthi $3
mthi $2
div $1,$1
ori $3,$3,116
ori $3,$3,96
subu $2,$1,$1
subu $1,$4,$4
div $3,$3
lw $3,80($0)
mult $3,$1
mfhi $4
and $0,$4,$1
lw $1,80($0)
ori $1,$3,124
ori $1,$3,32
mflo $4
lui $4,52
divu $3,$1
mtlo $2
andi $2,$4,44
mult $3,$1
and $4,$3,$0
mflo $0
subu $2,$1,$1
addu $1,$4,$2
EndTest3:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
ori $4,$1,100
ori $4,$1,12
subu $2,$3,$2
ori $2,$3,124
divu $1,$4
jr $ra
ori $4,$2,108


Test4:
addu $3,$31,$1
or $2,$0,$4
subu $1,$1,$1
ori $1,$1,80
sb $3,-32($1)
mult $1,$1
andi $4,$4,52
slt $1,$2,$0
mtlo $1
ori $4,$4,104
ori $4,$4,148
mfhi $2
lw $3,0($0)
divu $4,$4
mtlo $4
ori $2,$0,8
mthi $1
mfhi $3
addu $0,$2,$2
and $3,$1,$4
sltu $0,$0,$2
andi $0,$1,56
mfhi $3
addiu $3,$4,24
subu $0,$0,$0
lh $3,20($0)
or $3,$0,$3
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,80
sw $1,0($0)
ori $1,$1,32
lw $0,0($0)
sh $1,96($0)
slt $4,$4,$4
lh $4,48($0)
lh $0,112($0)
ori $3,$3,12
ori $3,$3,152
sltu $4,$2,$4
sltu $2,$1,$4
div $3,$3
mthi $2
EndTest4:
subu $2,$2,$2
addu $3,$31,$2
subu $31,$31,$31
ori $31,$3,0
andi $0,$0,76
jr $ra
lh $2,32($0)


Test5:
bne $3,$31,EndTest5
subu $14,$14,$14
subu $19,$19,$19
ori $19,$19,10
subu $15,$15,$15
ori $15,$15,1
SubTest5:
addu $14,$14,$15
beq $14,$19,EndTest5
mfhi $3
lw $1,96($0)
lh $1,32($0)
ori $4,$3,64
lui $4,0
lw $3,156($4)
mfhi $2
subu $3,$3,$3
sw $3,0($3)
ori $1,$2,44
ori $1,$2,84
multu $3,$4
multu $3,$3
div $2,$1
subu $2,$2,$3
mflo $0
mult $0,$4
addiu $1,$4,136
subu $3,$3,$3
sw $1,0($3)
mult $0,$3
multu $4,$2
sb $2,64($0)
sb $4,16($0)
mflo $4
addiu $0,$0,64
subu $0,$3,$3
mfhi $4
ori $1,$0,0
subu $0,$0,$0
ori $2,$4,92
ori $2,$4,92
sb $3,96($0)
sb $0,112($0)
div $4,$2
subu $4,$4,$4
ori $4,$4,96
sw $1,-80($4)
and $0,$1,$2
ori $4,$4,96
lui $4,0
lh $2,76($4)
EndTest5:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
andi $3,$1,32
jr $ra
subu $4,$3,$1


Test6:
or $2,$2,$31
addu $0,$2,$1
mfhi $4
lb $4,80($0)
multu $3,$3
andi $1,$1,4
and $3,$2,$2
mthi $1
mtlo $1
lh $4,32($0)
sh $1,80($0)
multu $3,$1
ori $2,$4,68
ori $2,$4,144
addiu $1,$1,72
addiu $1,$1,152
div $4,$2
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,80
sw $3,0($0)
ori $3,$3,32
lh $1,0($0)
sb $3,48($1)
or $4,$1,$4
and $3,$3,$3
subu $0,$2,$1
subu $1,$1,$1
ori $1,$1,16
lh $1,2($1)
mthi $2
sltu $2,$2,$3
or $0,$4,$3
lw $3,48($0)
subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,9
ori $2,$0,76
divu $2,$4
mflo $3
lw $1,112($0)
lh $2,0($3)
addiu $3,$1,120
subu $4,$4,$4
subu $1,$1,$1
ori $4,$0,8
ori $1,$0,292
divu $1,$4
mflo $2
lb $1,0($2)
subu $2,$4,$4
EndTest6:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
subu $1,$3,$0
jr $ra
ori $4,$3,128


Test7:
addu $0,$31,$4
subu $16,$16,$16
subu $23,$23,$23
ori $23,$23,10
subu $30,$30,$30
ori $30,$30,1
SubTest7:
addu $16,$16,$30
bne $16,$23,EndTest7
multu $2,$4
mflo $3
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,64
sh $2,0($0)
ori $2,$2,16
lb $1,0($0)
sh $2,32($1)
ori $3,$2,76
ori $3,$2,128
sh $4,80($0)
sw $0,112($0)
div $2,$3
lw $3,48($0)
mtlo $2
mtlo $3
andi $3,$2,144
mtlo $0
subu $2,$2,$4
or $2,$3,$2
sltu $0,$4,$2
ori $1,$0,88
addu $0,$0,$0
subu $4,$4,$4
sw $3,16($4)
ori $4,$4,12
ori $4,$4,48
multu $1,$2
multu $0,$3
div $4,$4
subu $0,$0,$0
sw $1,16($0)
mult $0,$1
subu $4,$4,$4
sw $4,64($4)
bne $3,$1,SubTest7
sltu $4,$3,$4
multu $3,$0
andi $3,$1,20
slt $4,$3,$1
ori $0,$2,20
slt $0,$4,$3
subu $4,$4,$4
ori $4,$4,0
sh $2,0($4)
EndTest7:
subu $2,$2,$2
sw $31,52($2)
subu $31,$31,$31
lw $31,52($2)
or $3,$0,$3
jr $ra
mtlo $2


Test8:
sltu $0,$0,$31
subu $19,$19,$19
subu $25,$25,$25
ori $25,$25,10
subu $7,$7,$7
ori $7,$7,1
SubTest8:
addu $19,$19,$7
beq $19,$25,EndTest8
mfhi $3
multu $3,$1
subu $1,$1,$1
ori $1,$1,64
lh $3,-30($1)
addu $3,$1,$0
andi $0,$0,8
and $1,$1,$3
slt $2,$3,$2
andi $4,$3,0
subu $3,$3,$3
sw $2,16($3)
and $2,$4,$4
slt $1,$4,$3
lui $4,44
multu $0,$0
mflo $2
addu $4,$0,$2
and $0,$4,$4
lw $3,80($0)
ori $3,$3,52
ori $3,$3,128
multu $0,$2
subu $2,$1,$4
divu $3,$3
mflo $0
addiu $1,$1,148
mtlo $3
ori $3,$4,12
ori $3,$4,124
slt $2,$2,$1
slt $2,$1,$2
div $4,$3
mfhi $4
multu $3,$2
sltu $3,$1,$3
or $3,$0,$2
EndTest8:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
subu $4,$0,$4
jr $ra
addu $2,$4,$2


Test9:
sltu $1,$3,$31
multu $3,$2
ori $2,$2,148
or $2,$4,$0
multu $3,$3
and $4,$0,$2
subu $3,$3,$3
ori $3,$3,80
sh $0,-32($3)
ori $2,$4,96
subu $4,$4,$4
ori $4,$4,112
sw $1,-64($4)
addu $2,$4,$2
addiu $1,$3,88
mflo $4
mtlo $3
subu $4,$4,$4
subu $3,$3,$3
ori $4,$0,7
ori $3,$0,32
divu $3,$4
mfhi $2
and $1,$1,$1
lw $3,0($2)
multu $2,$1
multu $1,$0
beq $2,$3,EndTest9
sltu $2,$4,$1
mfhi $3
and $1,$4,$4
lw $1,16($0)
slt $2,$0,$2
or $4,$1,$2
lb $3,112($0)
and $4,$4,$1
ori $3,$4,116
or $3,$2,$0
EndTest9:
subu $3,$3,$3
addu $3,$31,$3
subu $31,$31,$31
ori $31,$3,0
jr $ra
addu $3,$3,$0


Test10:
multu $31,$0
subu $19,$19,$19
subu $16,$16,$16
ori $16,$16,10
subu $20,$20,$20
ori $20,$20,1
SubTest10:
addu $19,$19,$20
bne $19,$16,EndTest10
mtlo $0
slt $1,$2,$2
andi $2,$4,12
mthi $1
mflo $1
andi $3,$4,84
mtlo $3
mflo $0
mthi $0
and $0,$3,$0
bne $1,$0,SubTest10
lui $4,112
ori $3,$0,156
mfhi $1
andi $1,$2,144
bne $2,$0,SubTest10
sltu $4,$4,$4
mfhi $1
mthi $2
bne $4,$2,SubTest10
slt $4,$4,$0
subu $1,$2,$0
and $1,$4,$4
multu $1,$0
multu $3,$1
ori $4,$3,4
ori $4,$3,80
mtlo $0
mtlo $0
div $3,$4
lui $1,116
ori $3,$4,24
ori $3,$4,136
sb $1,0($0)
sb $0,0($0)
div $4,$3
lui $4,64
EndTest10:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
sw $0,80($0)
jr $ra
mtlo $0


Test11:
addu $0,$31,$3
slt $4,$4,$1
mthi $4
ori $3,$0,112
lui $3,0
lw $3,76($3)
andi $1,$0,72
multu $0,$1
andi $4,$1,12
subu $1,$1,$1
sw $0,96($1)
andi $3,$2,140
or $4,$1,$2
mtlo $4
mtlo $2
bne $1,$3,EndTest11
or $1,$3,$1
mflo $0
mult $1,$3
sh $0,16($0)
mfhi $0
mtlo $0
multu $2,$3
bne $2,$1,EndTest11
ori $2,$3,4
ori $2,$3,112
mult $1,$4
addu $1,$1,$1
divu $3,$2
subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,5
ori $2,$0,64
divu $2,$4
mflo $1
or $3,$3,$3
lw $2,0($1)
sb $4,112($0)
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sw $0,0($0)
lb $1,0($0)
lw $0,112($1)
sh $0,112($0)
beq $0,$3,EndTest11
mthi $2
lui $0,76
sw $3,0($0)
EndTest11:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
mflo $4


Test12:
and $3,$3,$31
lw $0,0($0)
multu $1,$1
multu $3,$2
ori $2,$2,36
ori $1,$4,24
ori $1,$4,64
mflo $2
mflo $3
div $4,$1
ori $3,$1,64
sw $1,112($0)
or $0,$4,$1
addu $2,$2,$1
sb $1,64($0)
subu $1,$1,$1
sw $0,80($1)
and $3,$1,$2
sltu $0,$2,$3
subu $4,$4,$4
sb $0,32($4)
lw $1,80($0)
subu $2,$2,$2
sh $0,0($2)
lh $3,16($0)
lui $3,16
ori $0,$4,148
and $3,$0,$0
andi $3,$1,52
subu $2,$0,$1
lui $2,1
lw $3,-65432($2)
addu $4,$1,$4
multu $2,$0
mthi $0
EndTest12:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
ori $31,$4,0
sltu $1,$4,$0
jr $ra
slt $0,$3,$3


Test13:
mtlo $31
subu $8,$8,$8
subu $25,$25,$25
ori $25,$25,10
subu $21,$21,$21
ori $21,$21,1
SubTest13:
addu $8,$8,$21
beq $8,$25,EndTest13
ori $3,$4,56
ori $3,$4,152
and $2,$1,$1
mthi $2
divu $4,$3
addiu $0,$4,116
subu $4,$4,$4
ori $4,$4,112
lh $2,-94($4)
mtlo $3
mthi $3
andi $1,$1,88
mult $3,$3
sh $3,48($0)
slt $4,$2,$0
ori $0,$3,116
sw $3,32($0)
sltu $4,$1,$4
andi $0,$2,12
andi $4,$1,24
slt $4,$0,$2
slt $2,$3,$4
subu $1,$3,$1
ori $4,$4,72
ori $4,$4,132
slt $2,$1,$3
lh $0,48($0)
divu $4,$4
ori $1,$2,96
ori $1,$2,72
slt $3,$4,$4
slt $4,$4,$4
div $2,$1
mflo $3
subu $4,$3,$2
mthi $2
andi $1,$3,72
ori $4,$4,56
mult $1,$0
slt $0,$4,$1
EndTest13:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
sltu $0,$4,$4


End:
