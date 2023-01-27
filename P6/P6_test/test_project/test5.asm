ori $0, $0, 132
ori $1, $0, 12
ori $2, $0, 52
ori $3, $0, 40
ori $4, $0, 108
ori $5, $0, 120
ori $6, $0, 84
ori $7, $0, 112
ori $8, $0, 60
ori $9, $0, 20
ori $10, $0, 20
ori $11, $0, 96
ori $12, $0, 28
ori $13, $0, 100
ori $14, $0, 92
ori $15, $0, 40
ori $16, $0, 72
ori $17, $0, 8
ori $18, $0, 96
ori $19, $0, 68
ori $20, $0, 16
ori $21, $0, 84
ori $22, $0, 44
ori $23, $0, 68
ori $24, $0, 148
ori $25, $0, 0
ori $26, $0, 112
ori $27, $0, 64
ori $28, $0, 44
ori $29, $0, 28
ori $30, $0, 120
ori $31, $0, 48

mfhi $3
lui $2,128
jal Test_jal1
addu $1,$31,$0
beq $0,$0,Test_beq1
sb $1,-12288($31)
Test_jal1: jr $ra
Test_beq1:
mthi $0
jal Test1
mfhi $4
Back1:

ori $4,$4,56
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,64
sw $0,0($0)
ori $0,$0,112
lb $2,0($0)
sb $0,16($2)
jal Test_jal2
sltu $3,$3,$31
beq $0,$0,Test_beq2
and $2,$3,$31
Test_jal2: jr $ra
Test_beq2:
subu $1,$1,$1
subu $3,$3,$3
ori $1,$0,7
ori $3,$0,60
divu $3,$1
mfhi $2
sh $4,112($0)
lw $3,0($2)
jal Test2
sh $1,64($0)
Back2:

lui $2,120
mult $3,$0
jal Test_jal3
addu $3,$31,$3
beq $0,$0,Test_beq3
subu $2,$4,$31
Test_jal3: jr $ra
Test_beq3:
mflo $1
jal Test3
ori $3,$1,100
ori $3,$1,104
sh $4,48($0)
sw $4,32($0)
div $1,$3
Back3:

mtlo $2
mtlo $4
jal Test_jal4
lw $0,-12288($31)
beq $0,$0,Test_beq4
addu $0,$31,$0
Test_jal4: jr $ra
Test_beq4:
ori $2,$2,64
ori $2,$2,44
ori $3,$4,124
ori $3,$4,64
div $2,$2
jal Test4
ori $1,$2,44
ori $1,$2,84
sltu $0,$4,$3
mflo $0
divu $2,$1
Back4:

slt $3,$3,$1
ori $3,$4,64
ori $3,$4,12
lui $2,52
sltu $2,$2,$0
divu $4,$3
jal Test_jal5
ori $2,$31,4
beq $0,$0,Test_beq5
addu $4,$31,$4
Test_jal5: jr $ra
Test_beq5:
mult $3,$3
jal Test5
ori $3,$4,148
ori $3,$4,116
subu $2,$2,$0
subu $0,$1,$1
div $4,$3
Back5:

or $3,$3,$3
addu $1,$0,$2
lw $1,64($0)
jal Test6
mflo $2
Back6:

andi $1,$1,140
ori $3,$4,132
ori $3,$4,92
lw $2,32($0)
slt $0,$0,$2
divu $4,$3
ori $2,$1,100
ori $2,$1,100
sw $0,112($0)
addu $4,$0,$0
divu $1,$2
jal Test7
mtlo $1
Back7:

or $3,$3,$3
lb $3,112($0)
jal Test_jal8
sltu $1,$1,$31
beq $0,$0,Test_beq8
sb $1,-12288($31)
Test_jal8: jr $ra
Test_beq8:
lui $4,84
jal Test8
mthi $3
Back8:

lui $3,88
ori $2,$4,108
ori $2,$4,4
and $1,$3,$3
addu $0,$1,$3
divu $4,$2
jal Test_jal9
ori $4,$31,60
beq $0,$0,Test_beq9
or $0,$2,$31
Test_jal9: jr $ra
Test_beq9:
subu $0,$0,$0
sb $4,96($0)
jal Test9
slt $2,$3,$0
Back9:

subu $2,$2,$2
lb $1,50($2)
subu $4,$0,$2
jal Test_jal10
div $4,$31
beq $0,$0,Test_beq10
subu $3,$4,$31
Test_jal10: jr $ra
Test_beq10:
sw $2,64($0)
jal Test10
sltu $1,$2,$2
Back10:

subu $1,$1,$1
sh $4,96($1)
mult $4,$1
lui $3,148
jal Test11
or $4,$1,$3
Back11:

lui $2,12
mult $2,$0
jal Test_jal12
mtlo $31
beq $0,$0,Test_beq12
addiu $3,$31,4
Test_jal12: jr $ra
Test_beq12:
mfhi $2
jal Test12
subu $2,$0,$2
Back12:

lui $3,100
and $1,$1,$2
jal Test_jal13
addiu $0,$31,32
beq $0,$0,Test_beq13
andi $3,$31,36
Test_jal13: jr $ra
Test_beq13:
ori $4,$3,124
jal Test13
subu $2,$4,$3
jal End
multu $0,$2


Test1:
sb $2,-12288($31)
multu $2,$2
mfhi $2
ori $2,$2,96
lui $2,0
lh $4,120($2)
mthi $2
lui $2,116
mtlo $3
or $2,$1,$0
multu $1,$4
beq $0,$0,EndTest1
addiu $0,$4,112
mthi $1
lh $2,48($0)
or $1,$0,$2
ori $4,$1,20
ori $4,$1,48
andi $3,$3,16
multu $0,$2
divu $1,$4
subu $0,$1,$3
mthi $2
ori $2,$4,28
ori $2,$4,160
lh $3,112($0)
lw $0,96($0)
div $4,$2
lui $4,132
lb $1,48($0)
mtlo $0
ori $0,$2,128
sltu $1,$2,$3
and $1,$4,$2
ori $2,$4,8
ori $2,$4,72
subu $1,$3,$1
mtlo $3
divu $4,$2
mult $2,$2
subu $2,$2,$2
lw $2,96($2)
EndTest1:
subu $3,$3,$3
sw $31,44($3)
subu $31,$31,$31
lw $31,44($3)
mflo $2
jr $ra
div $1,$ra


Test2:
multu $31,$3
subu $26,$26,$26
subu $28,$28,$28
ori $28,$28,10
subu $30,$30,$30
ori $30,$30,1
SubTest2:
addu $26,$26,$30
beq $26,$28,EndTest2
mthi $4
slt $2,$0,$2
mtlo $1
and $4,$3,$2
andi $3,$2,52
or $1,$3,$0
andi $3,$2,148
ori $3,$2,112
ori $3,$2,120
lb $1,112($0)
mfhi $4
divu $2,$3
sw $3,0($0)
slt $2,$1,$0
sw $2,80($0)
ori $4,$0,36
mthi $2
bne $0,$1,SubTest2
multu $4,$4
lb $2,16($0)
lui $1,48
sw $0,48($0)
mflo $2
mthi $3
mtlo $1
ori $4,$4,112
ori $4,$4,40
and $2,$3,$0
and $2,$0,$3
div $4,$4
mthi $4
or $4,$0,$2
bne $0,$4,SubTest2
lw $0,16($0)
mflo $0
mult $2,$2
EndTest2:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
mflo $3


Test3:
addiu $1,$31,84
or $0,$3,$4
ori $2,$1,36
ori $2,$1,44
multu $3,$3
multu $3,$3
div $1,$2
sh $3,0($0)
ori $2,$1,80
lui $2,124
mult $1,$1
addiu $3,$4,88
mthi $4
subu $3,$4,$3
mfhi $1
ori $3,$4,68
ori $3,$4,116
sltu $1,$1,$1
mfhi $1
divu $4,$3
lw $3,16($0)
mult $1,$1
addiu $2,$2,36
andi $0,$2,156
mthi $4
or $3,$4,$2
addiu $0,$0,16
sb $4,0($0)
slt $0,$2,$2
ori $1,$3,140
andi $3,$1,136
beq $1,$0,EndTest3
mfhi $0
bne $2,$0,EndTest3
slt $2,$2,$2
andi $0,$3,124
EndTest3:
subu $3,$3,$3
addu $4,$31,$3
subu $31,$31,$31
addu $31,$0,$4
jr $ra
multu $1,$3


Test4:
andi $3,$31,20
subu $21,$21,$21
subu $11,$11,$11
ori $11,$11,10
subu $17,$17,$17
ori $17,$17,1
SubTest4:
addu $21,$21,$17
beq $21,$11,EndTest4
mflo $2
slt $0,$1,$4
sh $1,16($0)
and $4,$4,$1
subu $3,$3,$3
sh $1,0($3)
mult $4,$1
or $1,$0,$2
ori $3,$0,108
lui $1,120
ori $4,$4,72
ori $4,$4,48
mult $2,$3
mult $3,$1
div $4,$4
subu $0,$2,$3
mfhi $3
sltu $3,$1,$1
ori $1,$0,0
multu $2,$3
subu $4,$0,$4
lui $4,1
lb $4,-65427($4)
andi $0,$0,24
addu $4,$4,$1
subu $1,$4,$0
and $4,$0,$4
sltu $3,$2,$4
andi $1,$0,116
bne $3,$3,SubTest4
or $2,$4,$4
ori $4,$1,96
ori $4,$1,8
subu $3,$3,$3
subu $2,$3,$3
div $1,$4
mult $4,$0
subu $1,$1,$1
subu $2,$2,$2
ori $1,$0,8
ori $2,$0,324
divu $2,$1
mfhi $4
lh $2,0($4)
EndTest4:
subu $4,$4,$4
addu $3,$31,$4
addu $31,$31,$31
subu $31,$31,$3
jr $ra
multu $2,$1


Test5:
beq $2,$31,EndTest5
mtlo $2
slt $0,$1,$2
mflo $4
subu $4,$3,$0
mfhi $0
mfhi $1
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lh $4,0($0)
lb $2,48($4)
sb $2,48($0)
or $3,$0,$2
beq $1,$3,EndTest5
mfhi $4
multu $1,$1
multu $1,$2
sb $3,112($0)
slt $2,$1,$1
or $1,$1,$1
sltu $4,$0,$2
ori $2,$4,104
ori $2,$4,116
mtlo $1
mtlo $3
div $4,$2
or $4,$2,$0
sltu $3,$4,$3
mflo $0
addu $0,$1,$4
mthi $2
mflo $2
subu $3,$3,$3
and $1,$4,$2
mfhi $2
EndTest5:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
mthi $2


Test6:
beq $4,$31,EndTest6
subu $19,$19,$19
subu $30,$30,$30
ori $30,$30,10
subu $14,$14,$14
ori $14,$14,1
SubTest6:
addu $19,$19,$14
beq $19,$30,EndTest6
ori $2,$0,72
andi $4,$0,156
multu $3,$4
mflo $0
subu $0,$0,$3
or $1,$4,$2
slt $4,$2,$0
addiu $4,$3,4
ori $4,$1,60
ori $4,$1,156
mult $3,$0
mult $3,$0
div $1,$4
multu $3,$2
addiu $2,$2,108
ori $4,$3,28
mthi $2
ori $3,$4,96
and $4,$2,$3
mtlo $1
andi $1,$3,156
beq $4,$4,SubTest6
subu $2,$3,$1
mflo $0
andi $4,$1,40
sltu $1,$1,$4
andi $2,$1,116
ori $1,$1,116
ori $1,$1,140
mthi $2
subu $4,$4,$2
divu $1,$1
lb $0,48($0)
lw $2,32($0)
sb $3,48($0)
EndTest6:
subu $4,$4,$4
sw $31,52($4)
subu $31,$31,$31
lw $31,52($4)
jr $ra
addu $4,$1,$0


Test7:
bne $3,$31,EndTest7
mult $0,$3
lui $1,52
andi $3,$3,80
ori $4,$4,8
ori $4,$4,20
ori $1,$0,128
and $2,$0,$1
divu $4,$4
mfhi $2
slt $0,$2,$0
ori $1,$3,60
sh $0,64($0)
andi $4,$2,64
mfhi $0
andi $1,$0,12
andi $2,$1,0
subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,9
ori $2,$0,184
divu $2,$4
mflo $3
mfhi $1
lw $2,0($3)
lw $3,48($0)
mtlo $3
mtlo $3
ori $3,$4,132
ori $3,$4,72
andi $1,$2,60
lb $2,48($0)
divu $4,$3
ori $4,$0,32
beq $3,$0,EndTest7
mtlo $0
and $0,$1,$3
lw $2,16($0)
ori $2,$2,44
ori $2,$2,92
addu $1,$1,$4
addiu $0,$0,132
div $2,$2
subu $3,$3,$3
sw $2,64($3)
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lb $4,0($0)
lw $1,112($4)
sh $1,64($0)
ori $4,$2,156
ori $4,$2,52
addu $1,$0,$0
sltu $0,$1,$3
divu $2,$4
EndTest7:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
jr $ra
addu $2,$2,$2


Test8:
slt $2,$3,$31
subu $19,$19,$19
subu $25,$25,$25
ori $25,$25,10
subu $7,$7,$7
ori $7,$7,1
SubTest8:
addu $19,$19,$7
beq $19,$25,EndTest8
or $2,$3,$4
ori $4,$1,8
ori $4,$1,148
mfhi $2
mfhi $3
div $1,$4
sltu $2,$3,$1
mfhi $4
ori $2,$2,144
ori $2,$2,32
mfhi $1
mfhi $1
divu $2,$2
mflo $1
lw $0,48($0)
mtlo $2
lui $2,124
beq $0,$2,SubTest8
sltu $0,$2,$4
ori $1,$4,16
ori $1,$4,112
lui $2,40
lui $2,108
div $4,$1
slt $4,$1,$4
sh $0,48($0)
subu $3,$3,$3
sw $2,48($3)
addiu $3,$0,108
mfhi $3
mthi $2
mult $4,$0
subu $1,$1,$1
ori $1,$1,112
sh $3,-80($1)
mfhi $4
ori $2,$2,116
ori $2,$2,84
andi $0,$4,20
andi $0,$1,28
div $2,$2
lui $0,88
mfhi $4
mtlo $4
mflo $3
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sh $3,0($0)
lb $0,0($0)
lw $3,64($0)
sb $3,112($0)
EndTest8:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
addu $0,$2,$0


Test9:
or $4,$4,$31
andi $1,$4,96
subu $2,$2,$2
sh $1,96($2)
mtlo $0
lui $3,0
mthi $0
mfhi $0
ori $4,$3,104
ori $4,$3,44
mthi $2
andi $1,$0,48
divu $3,$4
slt $1,$0,$4
lb $0,0($0)
mthi $3
sltu $2,$2,$0
subu $1,$3,$3
mflo $1
slt $1,$2,$4
ori $3,$3,124
ori $3,$3,44
slt $1,$1,$1
ori $4,$1,60
divu $3,$3
andi $4,$0,80
or $0,$3,$0
bne $0,$3,EndTest9
lb $0,96($0)
mthi $3
and $0,$4,$4
beq $3,$2,EndTest9
mfhi $3
bne $0,$4,EndTest9
and $0,$1,$4
mflo $0
lui $0,44
ori $4,$4,120
ori $4,$4,108
sb $3,32($0)
sw $3,112($0)
div $4,$4
EndTest9:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
and $0,$4,$3


Test10:
bne $0,$31,EndTest10
subu $29,$29,$29
subu $19,$19,$19
ori $19,$19,10
subu $11,$11,$11
ori $11,$11,1
SubTest10:
addu $29,$29,$11
beq $29,$19,EndTest10
slt $3,$2,$0
mflo $4
mtlo $3
subu $4,$4,$4
lw $2,80($4)
lui $4,12
mflo $1
mfhi $1
mfhi $2
ori $2,$1,120
ori $2,$1,72
andi $3,$4,100
mthi $3
divu $1,$2
subu $0,$2,$1
and $2,$0,$4
sltu $0,$4,$0
multu $0,$2
addu $0,$0,$0
lb $3,112($0)
subu $2,$3,$3
multu $2,$1
subu $2,$2,$2
lw $3,80($2)
subu $3,$3,$3
sw $4,0($3)
mflo $1
ori $2,$3,148
ori $2,$3,120
multu $4,$1
multu $4,$4
div $3,$2
lui $2,40
subu $1,$1,$1
ori $1,$1,80
sw $0,-16($1)
ori $1,$2,16
ori $3,$3,36
ori $3,$3,64
mult $1,$2
mfhi $0
divu $3,$3
slt $4,$1,$3
EndTest10:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
mfhi $4


Test11:
andi $3,$31,84
ori $3,$3,48
ori $3,$3,40
slt $2,$4,$4
slt $2,$4,$2
div $3,$3
addiu $2,$2,44
sw $4,64($0)
ori $3,$4,28
ori $3,$4,48
mtlo $1
mtlo $0
div $4,$3
lui $1,52
mfhi $1
slt $4,$3,$2
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,32
sh $1,0($0)
ori $1,$1,0
lw $4,0($0)
sh $1,16($4)
mflo $0
addu $1,$2,$0
slt $1,$4,$1
subu $4,$2,$4
or $4,$1,$0
beq $3,$2,EndTest11
ori $0,$1,140
subu $4,$0,$1
mflo $3
mtlo $1
lb $0,96($0)
ori $3,$1,120
ori $3,$1,148
multu $4,$2
multu $2,$4
div $1,$3
ori $2,$3,56
mult $1,$1
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sb $3,0($0)
lb $3,0($0)
lb $3,96($3)
sb $3,32($0)
and $3,$3,$1
mtlo $1
subu $0,$0,$0
sb $0,80($0)
EndTest11:
subu $4,$4,$4
addu $3,$31,$4
addu $31,$31,$31
subu $31,$31,$3
jr $ra
sb $3,32($0)


Test12:
slt $4,$1,$31
lh $4,48($0)
and $4,$2,$1
mthi $1
or $1,$1,$0
andi $0,$4,60
subu $4,$3,$1
sltu $0,$2,$2
sltu $3,$3,$1
ori $1,$2,8
ori $1,$2,68
andi $4,$4,0
andi $3,$4,100
div $2,$1
or $2,$2,$2
subu $3,$0,$0
mflo $1
lui $0,92
subu $4,$4,$4
ori $4,$4,80
sh $4,-32($4)
ori $3,$2,60
ori $3,$2,140
sh $1,96($0)
sb $4,96($0)
div $2,$3
or $3,$4,$0
lui $4,152
sw $1,16($0)
andi $2,$0,124
subu $0,$0,$0
sw $4,0($0)
ori $1,$4,40
ori $1,$4,88
or $0,$2,$0
or $3,$2,$0
div $4,$1
ori $1,$1,100
sltu $4,$3,$3
ori $3,$3,120
mult $3,$0
EndTest12:
subu $4,$4,$4
addu $2,$31,$4
addu $31,$31,$31
subu $31,$31,$2
jr $ra
subu $0,$0,$0


Test13:
sh $1,-12288($31)
subu $14,$14,$14
subu $29,$29,$29
ori $29,$29,10
subu $7,$7,$7
ori $7,$7,1
SubTest13:
addu $14,$14,$7
beq $14,$29,EndTest13
mult $0,$2
sw $1,48($0)
slt $1,$3,$2
multu $3,$0
mtlo $4
addiu $1,$3,32
mthi $1
ori $4,$3,124
ori $4,$3,4
multu $1,$1
lh $1,112($0)
divu $3,$4
lb $0,0($0)
andi $3,$3,48
subu $2,$2,$2
ori $2,$2,48
sh $4,-32($2)
mflo $4
or $1,$4,$0
subu $1,$1,$1
subu $2,$2,$2
ori $1,$0,7
ori $2,$0,88
divu $2,$1
mfhi $0
ori $4,$3,60
lb $2,0($0)
multu $3,$1
bne $1,$2,SubTest13
multu $1,$2
mflo $0
lui $3,132
sb $3,32($0)
lui $3,112
andi $1,$1,76
lui $3,108
ori $4,$2,68
ori $4,$2,92
sltu $0,$0,$1
sltu $0,$0,$1
div $2,$4
and $3,$1,$2
ori $2,$4,120
ori $2,$4,48
sltu $3,$1,$3
sltu $1,$3,$3
div $4,$2
ori $2,$3,44
EndTest13:
subu $4,$4,$4
sw $31,108($4)
subu $31,$31,$31
lw $31,108($4)
subu $2,$0,$4
jr $ra
addu $0,$2,$4


End:
