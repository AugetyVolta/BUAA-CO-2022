ori $0, $0, 32
ori $1, $0, 12
ori $2, $0, 132
ori $3, $0, 136
ori $4, $0, 88
ori $5, $0, 8
ori $6, $0, 56
ori $7, $0, 16
ori $8, $0, 128
ori $9, $0, 80
ori $10, $0, 8
ori $11, $0, 64
ori $12, $0, 4
ori $13, $0, 32
ori $14, $0, 128
ori $15, $0, 68
ori $16, $0, 120
ori $17, $0, 40
ori $18, $0, 108
ori $19, $0, 68
ori $20, $0, 104
ori $21, $0, 64
ori $22, $0, 132
ori $23, $0, 104
ori $24, $0, 100
ori $25, $0, 4
ori $26, $0, 16
ori $27, $0, 52
ori $28, $0, 116
ori $29, $0, 8
ori $30, $0, 36
ori $31, $0, 16

multu $1,$3
mfhi $2
jal Test_jal1
mtlo $31
beq $0,$0,Test_beq1
sh $3,-12288($31)
Test_jal1: jr $ra
Test_beq1:
sltu $1,$1,$3
jal Test1
mfhi $0
Back1:

ori $1,$1,84
ori $1,$1,160
andi $2,$2,64
andi $2,$4,84
div $1,$1
multu $3,$4
jal Test_jal2
sw $2,-12288($31)
beq $0,$0,Test_beq2
addu $4,$31,$2
Test_jal2: jr $ra
Test_beq2:
slt $3,$2,$2
jal Test2
multu $1,$4
Back2:

sw $2,16($0)
lb $1,48($0)
jal Test_jal3
addiu $3,$31,24
beq $0,$0,Test_beq3
subu $0,$1,$31
Test_jal3: jr $ra
Test_beq3:
subu $0,$0,$0
sw $0,96($0)
jal Test3
ori $2,$2,96
Back3:

addiu $0,$4,52
addu $1,$2,$4
jal Test_jal4
or $2,$4,$31
beq $0,$0,Test_beq4
ori $1,$31,104
Test_jal4: jr $ra
Test_beq4:
or $0,$4,$3
jal Test4
mthi $1
Back4:

ori $1,$4,76
ori $1,$4,108
multu $2,$3
mfhi $3
divu $4,$1
slt $2,$4,$0
and $2,$1,$3
jal Test5
subu $1,$1,$2
Back5:

lh $1,64($0)
ori $1,$4,68
ori $1,$4,64
addiu $2,$2,84
addu $2,$2,$2
div $4,$1
jal Test_jal6
multu $31,$1
beq $0,$0,Test_beq6
andi $1,$31,48
Test_jal6: jr $ra
Test_beq6:
mult $2,$0
jal Test6
sb $1,64($0)
Back6:

mult $2,$3
mtlo $3
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,0
sh $1,0($0)
ori $1,$1,16
lw $4,0($0)
sw $1,64($4)
jal Test7
sltu $0,$0,$1
Back7:

or $3,$4,$2
mflo $1
jal Test_jal8
subu $2,$3,$31
beq $0,$0,Test_beq8
sltu $4,$1,$31
Test_jal8: jr $ra
Test_beq8:
sb $4,64($0)
jal Test8
ori $3,$3,52
ori $3,$3,156
mult $1,$4
mult $4,$4
div $3,$3
Back8:

sh $3,64($0)
ori $1,$1,136
ori $1,$1,60
mtlo $2
mtlo $3
div $1,$1
jal Test_jal9
ori $3,$31,132
beq $0,$0,Test_beq9
slt $4,$0,$31
Test_jal9: jr $ra
Test_beq9:
subu $0,$3,$1
jal Test9
sltu $3,$4,$0
Back9:

lui $2,0
mtlo $0
jal Test_jal10
div $0,$31
beq $0,$0,Test_beq10
sw $2,-12288($31)
Test_jal10: jr $ra
Test_beq10:
and $3,$4,$2
jal Test10
sltu $0,$1,$3
Back10:

mthi $1
addiu $0,$4,124
jal Test_jal11
addu $3,$31,$1
beq $0,$0,Test_beq11
sltu $3,$3,$31
Test_jal11: jr $ra
Test_beq11:
lw $3,48($0)
jal Test11
ori $2,$4,32
ori $2,$4,96
subu $1,$3,$3
subu $1,$3,$3
div $4,$2
Back11:

mult $0,$2
ori $2,$4,24
ori $2,$4,148
lui $1,124
subu $3,$1,$3
divu $4,$2
jal Test_jal12
andi $0,$31,64
beq $0,$0,Test_beq12
ori $1,$31,56
Test_jal12: jr $ra
Test_beq12:
mtlo $2
jal Test12
ori $4,$2,136
Back12:

and $2,$4,$0
lw $1,64($0)
jal Test_jal13
sltu $0,$0,$31
beq $0,$0,Test_beq13
or $3,$2,$31
Test_jal13: jr $ra
Test_beq13:
multu $4,$0
jal Test13
sw $0,16($0)
jal End
and $4,$0,$3


Test1:
ori $2,$31,32
ori $1,$2,144
ori $1,$2,128
and $3,$0,$0
and $0,$3,$0
div $2,$1
and $0,$2,$3
lw $0,32($0)
or $4,$1,$4
slt $2,$1,$3
lui $0,60
lui $4,120
subu $0,$3,$2
mflo $4
bne $1,$2,EndTest1
lui $3,132
andi $3,$3,108
mflo $3
addiu $3,$2,80
mthi $4
and $3,$3,$3
mfhi $2
ori $4,$3,84
ori $4,$3,44
sltu $2,$1,$2
sltu $2,$1,$2
div $3,$4
subu $1,$4,$0
slt $1,$3,$2
mthi $3
lb $3,16($0)
and $0,$0,$0
or $1,$2,$0
mthi $2
slt $0,$2,$2
EndTest1:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
addu $2,$2,$2


Test2:
sltu $2,$2,$31
subu $6,$6,$6
subu $30,$30,$30
ori $30,$30,10
subu $11,$11,$11
ori $11,$11,1
SubTest2:
addu $6,$6,$11
beq $6,$30,EndTest2
mflo $0
ori $1,$2,88
addu $0,$2,$4
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sh $3,0($0)
lh $1,0($0)
lb $3,64($1)
sb $3,16($0)
ori $2,$3,100
ori $2,$3,60
addiu $1,$1,116
addiu $4,$1,72
div $3,$2
mult $1,$2
subu $2,$2,$2
sb $4,0($2)
sltu $1,$4,$1
mfhi $1
sltu $2,$0,$2
addiu $1,$2,68
lui $0,88
multu $1,$2
subu $3,$3,$3
sh $1,64($3)
lui $0,0
mtlo $3
mtlo $4
or $3,$0,$4
slt $2,$1,$1
subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,7
ori $2,$0,60
divu $2,$4
mflo $3
lh $2,0($3)
slt $1,$0,$1
beq $1,$2,SubTest2
sw $0,16($0)
mthi $0
mflo $2
mflo $2
ori $4,$3,20
ori $4,$3,124
slt $2,$2,$0
slt $2,$0,$1
div $3,$4
EndTest2:
subu $2,$2,$2
sw $31,156($2)
subu $31,$31,$31
lw $31,156($2)
jr $ra
slt $2,$1,$1


Test3:
ori $3,$31,128
subu $19,$19,$19
subu $21,$21,$21
ori $21,$21,10
subu $8,$8,$8
ori $8,$8,1
SubTest3:
addu $19,$19,$8
bne $19,$21,EndTest3
mflo $4
sltu $3,$2,$0
and $2,$0,$3
subu $1,$1,$1
ori $1,$1,96
sw $4,-80($1)
ori $0,$3,24
mfhi $0
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,80
sb $0,0($0)
ori $0,$0,80
lw $4,0($0)
sb $0,96($4)
subu $1,$1,$0
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lw $1,0($0)
lw $1,0($1)
sb $1,32($0)
ori $2,$2,136
ori $2,$2,28
multu $3,$4
multu $4,$4
div $2,$2
and $4,$1,$4
lui $4,72
addiu $0,$2,40
multu $0,$2
or $3,$0,$2
andi $2,$1,100
slt $2,$3,$0
or $0,$1,$0
mtlo $0
subu $0,$2,$4
mult $4,$4
multu $2,$4
andi $4,$1,140
ori $1,$3,140
beq $4,$4,SubTest3
ori $3,$1,52
ori $3,$1,60
or $4,$2,$0
lui $2,16
divu $1,$3
slt $3,$4,$4
EndTest3:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
mfhi $2


Test4:
sltu $0,$4,$31
subu $17,$17,$17
subu $27,$27,$27
ori $27,$27,10
subu $14,$14,$14
ori $14,$14,1
SubTest4:
addu $17,$17,$14
beq $17,$27,EndTest4
sw $1,0($0)
subu $1,$1,$1
sw $0,16($1)
mfhi $2
sltu $0,$3,$0
mtlo $2
mthi $3
subu $0,$3,$3
slt $0,$4,$1
lw $3,80($0)
subu $1,$1,$0
subu $1,$3,$0
subu $2,$3,$0
beq $0,$2,SubTest4
slt $2,$1,$4
multu $3,$3
lui $0,40
or $1,$2,$0
ori $2,$2,100
ori $2,$2,108
multu $3,$3
mfhi $3
divu $2,$2
sltu $3,$1,$3
ori $3,$0,32
lui $3,0
lw $2,16($3)
or $0,$2,$0
lw $0,16($0)
or $4,$3,$4
addiu $1,$4,72
mult $3,$1
andi $3,$2,8
sw $2,112($0)
EndTest4:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
sw $3,112($0)
jr $ra
mflo $4


Test5:
div $1,$31
ori $4,$2,60
ori $4,$2,48
lui $1,20
lui $1,144
div $2,$4
subu $3,$3,$3
ori $3,$3,112
sh $0,-96($3)
ori $3,$3,20
ori $3,$3,72
sltu $1,$0,$2
sltu $2,$2,$2
div $3,$3
subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,9
ori $2,$0,40
divu $2,$4
mflo $3
slt $1,$1,$1
lw $2,0($3)
sltu $2,$0,$1
addu $4,$0,$1
slt $2,$0,$1
slt $1,$4,$4
lui $2,20
ori $4,$2,132
ori $4,$2,72
mult $3,$3
mult $3,$1
div $2,$4
lw $4,80($0)
slt $1,$1,$4
ori $3,$3,148
ori $3,$3,104
subu $4,$1,$4
mthi $1
divu $3,$3
lui $4,8
andi $2,$1,156
mflo $3
ori $4,$4,148
lui $2,100
or $0,$4,$1
ori $3,$2,52
ori $3,$2,104
mult $4,$1
mult $1,$4
div $2,$3
multu $3,$0
multu $4,$2
mult $1,$4
mtlo $1
ori $3,$4,40
EndTest5:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
ori $31,$3,0
addu $2,$4,$3
jr $ra
mthi $0


Test6:
mult $31,$2
subu $25,$25,$25
subu $27,$27,$27
ori $27,$27,10
subu $18,$18,$18
ori $18,$18,1
SubTest6:
addu $25,$25,$18
beq $25,$27,EndTest6
mtlo $2
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sb $4,0($0)
lb $0,0($0)
lb $4,80($0)
sh $4,64($0)
mult $3,$0
lui $1,12
subu $1,$1,$1
ori $1,$1,112
sh $0,-64($1)
subu $3,$3,$3
ori $3,$3,16
sw $3,0($3)
and $2,$2,$3
mflo $0
mtlo $3
lb $4,48($0)
lui $4,36
slt $3,$0,$1
mthi $1
mtlo $2
mflo $2
slt $1,$2,$4
mtlo $0
ori $2,$4,128
ori $2,$4,60
addiu $1,$1,0
addu $1,$0,$1
div $4,$2
ori $4,$3,108
ori $4,$3,36
addiu $1,$1,44
sw $2,80($0)
divu $3,$4
mthi $3
ori $1,$1,52
ori $1,$1,116
mult $4,$3
mult $4,$4
div $1,$1
andi $4,$4,156
multu $1,$1
lh $0,112($0)
subu $1,$1,$1
ori $1,$1,112
sh $3,-48($1)
slt $0,$4,$4
EndTest6:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
and $2,$1,$1


Test7:
beq $2,$31,EndTest7
mflo $1
and $0,$4,$1
lui $0,72
ori $1,$2,68
subu $4,$2,$1
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,112
sw $3,0($0)
ori $3,$3,32
lw $1,0($0)
sw $3,96($1)
ori $3,$4,56
ori $3,$4,56
mtlo $1
mflo $1
divu $4,$3
ori $0,$0,100
andi $4,$3,148
ori $1,$2,76
ori $1,$2,8
sw $4,0($0)
sh $3,80($0)
div $2,$1
mtlo $1
mflo $1
ori $1,$4,104
ori $1,$4,140
mthi $2
multu $0,$0
divu $4,$1
slt $1,$4,$3
ori $1,$4,72
ori $1,$4,84
mult $0,$3
mult $3,$2
div $4,$1
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,16
sb $0,0($0)
ori $0,$0,80
lh $0,0($0)
sh $0,16($0)
multu $3,$2
ori $2,$0,100
lui $3,24
ori $1,$2,104
ori $1,$2,140
lui $3,76
lui $3,120
div $2,$1
mtlo $0
mthi $3
mfhi $2
mthi $0
addiu $3,$1,124
EndTest7:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
sh $3,0($0)


Test8:
ori $2,$31,80
sh $4,32($0)
andi $1,$0,144
mult $0,$3
mfhi $0
and $4,$4,$1
ori $3,$3,76
addu $3,$4,$3
mtlo $1
sb $0,16($0)
slt $1,$1,$3
beq $1,$0,EndTest8
mflo $1
mult $2,$2
mthi $3
subu $3,$3,$3
ori $3,$3,80
sw $0,-16($3)
sltu $3,$1,$3
slt $2,$0,$3
multu $4,$4
mtlo $1
mthi $0
mult $3,$1
subu $3,$3,$3
subu $2,$2,$2
ori $3,$0,8
ori $2,$0,196
divu $2,$3
mfhi $4
slt $1,$1,$1
lw $2,0($4)
sltu $0,$4,$1
ori $4,$2,76
ori $4,$2,4
mtlo $0
mult $0,$3
divu $2,$4
slt $3,$0,$1
mult $1,$3
EndTest8:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
mult $2,$3
jr $ra
multu $3,$4


Test9:
slt $2,$3,$31
mtlo $3
or $3,$4,$4
mflo $2
addiu $2,$4,96
mult $2,$3
or $0,$4,$0
lui $2,112
mtlo $2
ori $2,$3,12
andi $0,$1,128
and $4,$1,$1
and $1,$2,$3
mult $1,$1
sltu $0,$1,$1
mfhi $2
ori $3,$1,160
ori $3,$1,12
lui $4,144
mult $0,$4
divu $1,$3
mfhi $4
mflo $4
sltu $2,$3,$2
ori $2,$2,48
ori $2,$2,24
mfhi $3
mfhi $1
div $2,$2
slt $3,$4,$4
beq $0,$1,EndTest9
slt $0,$0,$2
mfhi $4
multu $2,$2
mfhi $3
EndTest9:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
divu $3,$ra


Test10:
sltu $3,$3,$31
subu $20,$20,$20
subu $24,$24,$24
ori $24,$24,10
subu $12,$12,$12
ori $12,$12,1
SubTest10:
addu $20,$20,$12
beq $20,$24,EndTest10
sb $2,112($0)
lui $3,24
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lb $4,0($0)
lw $2,32($4)
sh $2,0($0)
mthi $2
sltu $0,$3,$3
lh $1,96($0)
and $3,$4,$0
lui $3,84
and $3,$4,$0
slt $0,$4,$2
bne $4,$0,SubTest10
andi $2,$4,16
lb $3,32($0)
ori $4,$4,64
mflo $3
bne $3,$3,SubTest10
sh $0,96($0)
lw $4,96($0)
addiu $0,$2,96
lui $0,100
sw $2,80($0)
slt $4,$0,$4
slt $0,$2,$2
sh $3,32($0)
ori $1,$2,68
ori $4,$3,16
lui $4,0
lw $3,68($4)
ori $1,$2,140
ori $1,$2,52
slt $3,$3,$4
slt $4,$3,$3
div $2,$1
mfhi $4
EndTest10:
subu $2,$2,$2
sw $31,80($2)
subu $31,$31,$31
lw $31,80($2)
sltu $1,$0,$4
jr $ra
mtlo $1


Test11:
andi $0,$31,0
subu $30,$30,$30
subu $23,$23,$23
ori $23,$23,10
subu $20,$20,$20
ori $20,$20,1
SubTest11:
addu $30,$30,$20
bne $30,$23,EndTest11
lb $2,0($0)
sltu $1,$4,$0
mthi $4
and $3,$3,$2
ori $1,$4,140
ori $1,$4,76
or $2,$2,$2
or $3,$2,$0
div $4,$1
subu $3,$1,$4
multu $4,$3
or $0,$1,$0
subu $4,$4,$4
sh $0,16($4)
mult $3,$0
mflo $2
mtlo $1
subu $3,$3,$4
ori $4,$0,84
multu $3,$0
lui $4,40
ori $1,$1,124
ori $1,$1,148
mult $2,$2
mult $3,$2
div $1,$1
mult $2,$2
ori $3,$0,116
addiu $4,$4,96
andi $2,$3,116
sb $1,80($0)
mflo $3
or $2,$3,$2
slt $0,$0,$2
sltu $3,$1,$1
EndTest11:
subu $4,$4,$4
sw $31,0($4)
subu $31,$31,$31
lw $31,0($4)
jr $ra
lh $3,48($0)


Test12:
subu $1,$3,$31
subu $16,$16,$16
subu $22,$22,$22
ori $22,$22,10
subu $17,$17,$17
ori $17,$17,1
SubTest12:
addu $16,$16,$17
beq $16,$22,EndTest12
ori $4,$2,20
ori $4,$2,104
mthi $3
mthi $0
div $2,$4
ori $3,$4,128
ori $3,$4,132
ori $1,$2,140
lui $2,52
divu $4,$3
multu $0,$3
sh $4,16($0)
subu $3,$3,$3
ori $3,$3,80
sh $3,-16($3)
lui $3,4
addu $1,$3,$3
sltu $1,$1,$4
sb $3,96($0)
ori $1,$2,28
ori $1,$2,28
lw $0,0($0)
mflo $3
divu $2,$1
mtlo $4
mthi $3
lui $3,100
slt $3,$3,$2
lw $4,112($0)
ori $3,$1,76
ori $3,$1,68
andi $4,$2,132
andi $2,$2,56
div $1,$3
or $1,$1,$1
beq $0,$2,SubTest12
sltu $1,$2,$3
sltu $1,$0,$3
mflo $1
ori $4,$1,48
ori $4,$1,116
slt $3,$0,$2
multu $0,$0
divu $1,$4
andi $1,$0,72
lui $1,136
beq $3,$4,SubTest12
lui $0,64
and $3,$2,$0
subu $1,$4,$0
EndTest12:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
mfhi $3
jr $ra
lui $0,0


Test13:
bne $4,$31,EndTest13
subu $9,$9,$9
subu $21,$21,$21
ori $21,$21,10
subu $26,$26,$26
ori $26,$26,1
SubTest13:
addu $9,$9,$26
beq $9,$21,EndTest13
lui $2,124
multu $1,$4
lh $2,64($0)
lw $3,80($0)
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lh $3,0($0)
lw $2,16($3)
sh $2,80($0)
lui $2,156
lb $2,32($0)
addiu $4,$1,116
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,32
sb $1,0($0)
ori $1,$1,32
lw $4,0($0)
sh $1,48($4)
sw $2,96($0)
subu $0,$1,$0
sh $0,48($0)
mthi $1
mfhi $1
mthi $0
sltu $0,$4,$3
and $1,$0,$1
subu $4,$4,$4
sb $3,96($4)
mult $4,$2
lui $2,148
and $4,$1,$2
lui $0,36
lh $0,80($0)
or $1,$2,$2
ori $1,$1,28
ori $1,$1,80
ori $2,$0,4
ori $0,$3,8
div $1,$1
mfhi $3
EndTest13:
subu $4,$4,$4
sw $31,104($4)
subu $31,$31,$31
lw $31,104($4)
jr $ra
multu $1,$4


End:
