ori $0, $0, 60
ori $1, $0, 144
ori $2, $0, 116
ori $3, $0, 76
ori $4, $0, 32
ori $5, $0, 116
ori $6, $0, 72
ori $7, $0, 60
ori $8, $0, 148
ori $9, $0, 152
ori $10, $0, 108
ori $11, $0, 16
ori $12, $0, 92
ori $13, $0, 132
ori $14, $0, 8
ori $15, $0, 136
ori $16, $0, 132
ori $17, $0, 68
ori $18, $0, 112
ori $19, $0, 84
ori $20, $0, 68
ori $21, $0, 148
ori $22, $0, 72
ori $23, $0, 16
ori $24, $0, 8
ori $25, $0, 40
ori $26, $0, 16
ori $27, $0, 148
ori $28, $0, 128
ori $29, $0, 156
ori $30, $0, 72
ori $31, $0, 48

or $1,$4,$2
mult $3,$0
jal Test_jal1
multu $31,$0
beq $0,$0,Test_beq1
slt $0,$0,$31
Test_jal1: jr $ra
Test_beq1:
subu $4,$4,$4
ori $4,$4,96
sb $4,-96($4)
jal Test1
addu $0,$4,$1
Back1:

subu $2,$2,$2
sb $4,64($2)
lb $2,80($0)
jal Test_jal2
and $2,$0,$31
beq $0,$0,Test_beq2
andi $3,$31,4
Test_jal2: jr $ra
Test_beq2:
ori $3,$0,156
jal Test2
lb $0,16($0)
Back2:

lb $1,0($0)
addiu $3,$2,8
lb $3,80($0)
jal Test3
mult $1,$2
Back3:

ori $4,$2,20
lw $3,16($0)
jal Test_jal4
sltu $4,$0,$31
beq $0,$0,Test_beq4
sw $3,-12288($31)
Test_jal4: jr $ra
Test_beq4:
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sb $3,0($0)
lb $2,0($0)
lh $3,64($2)
sh $3,0($0)
jal Test4
andi $4,$3,104
Back4:

subu $1,$0,$2
ori $2,$4,12
ori $2,$4,92
multu $3,$1
multu $3,$0
div $4,$2
jal Test_jal5
and $0,$3,$31
beq $0,$0,Test_beq5
addiu $4,$31,88
Test_jal5: jr $ra
Test_beq5:
ori $3,$3,104
ori $3,$3,120
or $2,$1,$1
ori $2,$1,116
divu $3,$3
jal Test5
mflo $2
Back5:

slt $0,$2,$3
subu $4,$1,$0
andi $3,$2,108
jal Test6
ori $2,$2,128
ori $2,$2,64
mflo $3
sltu $3,$1,$4
divu $2,$2
Back6:

ori $2,$2,32
lui $2,0
lb $3,72($2)
ori $0,$2,140
jal Test_jal7
lb $0,-12288($31)
beq $0,$0,Test_beq7
subu $1,$2,$31
Test_jal7: jr $ra
Test_beq7:
ori $3,$1,12
ori $3,$1,20
sb $4,32($0)
mult $0,$0
divu $1,$3
jal Test7
addu $3,$2,$0
Back7:

sltu $3,$4,$1
sltu $4,$1,$3
jal Test_jal8
or $1,$4,$31
beq $0,$0,Test_beq8
mthi $31
Test_jal8: jr $ra
Test_beq8:
ori $3,$4,28
ori $3,$4,116
lh $0,64($0)
lh $1,48($0)
divu $4,$3
jal Test8
slt $0,$1,$1
Back8:

sltu $4,$4,$2
subu $2,$4,$3
mult $0,$1
jal Test9
mfhi $1
Back9:

addiu $2,$4,136
multu $3,$0
ori $2,$2,56
jal Test10
addiu $2,$3,88
Back10:

mtlo $3
mflo $0
subu $4,$3,$1
jal Test11
mult $2,$4
Back11:

mult $1,$1
and $0,$4,$1
jal Test_jal12
addiu $0,$31,20
beq $0,$0,Test_beq12
multu $31,$2
Test_jal12: jr $ra
Test_beq12:
subu $4,$4,$4
sw $1,0($4)
jal Test12
mflo $3
Back12:

mtlo $1
mtlo $4
mflo $2
jal Test13
addiu $0,$4,48
jal End
mfhi $3


Test1:
bne $2,$31,EndTest1
multu $4,$2
mthi $2
subu $0,$0,$0
lh $1,52($0)
subu $4,$4,$4
sh $4,48($4)
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sh $4,0($0)
lb $2,0($0)
lh $4,16($2)
sb $4,80($0)
subu $2,$2,$3
addu $4,$2,$0
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sh $0,0($0)
lw $1,0($0)
lh $0,80($1)
sw $0,32($0)
lui $4,136
andi $0,$2,120
lw $1,48($0)
lw $1,48($0)
subu $4,$0,$2
slt $3,$2,$2
mthi $3
multu $2,$0
subu $2,$2,$2
ori $2,$2,112
lw $1,-96($2)
ori $0,$0,100
subu $2,$1,$3
andi $1,$3,88
lh $4,32($0)
sltu $0,$3,$3
beq $4,$3,EndTest1
ori $3,$0,128
ori $1,$4,88
sltu $3,$3,$1
EndTest1:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
ori $31,$2,0
jr $ra
subu $3,$1,$2


Test2:
and $1,$4,$31
multu $4,$2
addiu $3,$0,84
lui $4,140
ori $2,$4,152
ori $2,$4,16
andi $0,$3,68
andi $0,$0,36
div $4,$2
mflo $2
mult $2,$0
slt $4,$2,$0
ori $1,$1,52
ori $1,$1,88
slt $2,$4,$4
slt $3,$2,$3
div $1,$1
beq $3,$4,EndTest2
and $2,$3,$2
sltu $0,$3,$2
slt $3,$3,$4
mult $3,$0
sw $1,112($0)
or $3,$0,$2
lw $2,64($0)
addu $4,$0,$4
multu $2,$4
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,9
ori $3,$0,328
divu $3,$2
mfhi $4
mflo $1
lh $3,0($4)
ori $1,$2,28
ori $1,$2,100
andi $4,$4,12
andi $3,$0,156
div $2,$1
mthi $4
sw $3,48($0)
subu $0,$2,$1
addu $4,$2,$4
sltu $0,$3,$2
beq $0,$3,EndTest2
mtlo $4
EndTest2:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
jr $ra
and $2,$3,$1


Test3:
andi $4,$31,60
subu $23,$23,$23
subu $12,$12,$12
ori $12,$12,10
subu $25,$25,$25
ori $25,$25,1
SubTest3:
addu $23,$23,$25
beq $23,$12,EndTest3
ori $2,$3,132
ori $2,$3,132
mthi $4
lb $0,112($0)
divu $3,$2
ori $4,$1,124
sltu $2,$1,$1
multu $3,$4
subu $0,$0,$0
sb $0,80($0)
multu $2,$4
mtlo $4
subu $4,$4,$4
ori $4,$4,48
lb $4,-31($4)
andi $4,$1,136
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sh $1,0($0)
lb $3,0($0)
lw $1,112($3)
sh $1,64($0)
ori $4,$4,104
ori $4,$4,4
sb $2,32($0)
mtlo $2
divu $4,$4
multu $2,$2
beq $3,$2,SubTest3
lb $0,64($0)
subu $4,$4,$4
ori $4,$4,16
lb $3,1($4)
lui $4,144
subu $1,$1,$1
sh $0,64($1)
subu $2,$2,$2
lb $1,12($2)
lw $0,48($0)
ori $4,$3,56
subu $2,$4,$2
mult $0,$0
addiu $0,$0,88
lui $2,36
subu $1,$3,$2
subu $4,$2,$2
mfhi $2
EndTest3:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
ori $31,$2,0
jr $ra
or $4,$3,$0


Test4:
beq $1,$31,EndTest4
subu $6,$6,$6
subu $21,$21,$21
ori $21,$21,10
subu $20,$20,$20
ori $20,$20,1
SubTest4:
addu $6,$6,$20
beq $6,$21,EndTest4
ori $2,$2,76
or $1,$0,$0
ori $1,$1,24
ori $1,$1,88
mthi $2
and $4,$0,$2
divu $1,$1
subu $1,$1,$1
ori $1,$1,80
sb $0,-64($1)
multu $0,$1
addiu $0,$0,64
ori $0,$1,136
mflo $3
sw $2,0($0)
and $4,$0,$1
lb $3,32($0)
subu $0,$0,$0
sw $3,96($0)
and $2,$4,$2
subu $2,$3,$2
sltu $4,$3,$4
and $2,$4,$1
mult $4,$4
lui $4,72
lui $2,24
ori $4,$1,104
ori $4,$1,88
and $2,$3,$3
and $3,$3,$2
div $1,$4
lui $0,44
and $2,$4,$3
mflo $4
slt $3,$3,$0
slt $2,$4,$2
mtlo $4
EndTest4:
subu $2,$2,$2
sw $31,36($2)
subu $31,$31,$31
lw $31,36($2)
jr $ra
sltu $1,$4,$2


Test5:
lb $4,-12288($31)
sw $3,48($0)
sltu $2,$1,$2
sw $2,0($0)
ori $4,$2,156
ori $4,$2,152
mflo $1
mflo $1
div $2,$4
ori $4,$0,136
ori $4,$1,52
ori $4,$1,80
andi $0,$3,16
andi $3,$0,148
div $1,$4
ori $1,$2,36
ori $1,$2,40
lui $4,156
lui $3,124
div $2,$1
mfhi $1
subu $4,$4,$4
ori $4,$4,16
lw $1,-16($4)
addiu $0,$0,144
lh $2,32($0)
sltu $4,$2,$3
addu $3,$0,$1
multu $2,$3
ori $4,$1,108
andi $2,$3,52
sltu $3,$2,$2
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sh $0,0($0)
lh $0,0($0)
lb $0,64($0)
sb $0,64($0)
ori $1,$4,120
ori $1,$4,120
slt $3,$3,$2
slt $2,$2,$3
div $4,$1
subu $1,$1,$1
subu $4,$4,$4
ori $1,$0,8
ori $4,$0,68
divu $4,$1
mfhi $3
lw $4,0($3)
slt $4,$3,$3
mflo $2
lw $4,64($0)
mtlo $3
subu $2,$2,$2
ori $2,$2,112
sw $4,-32($2)
EndTest5:
subu $3,$3,$3
addu $4,$31,$3
subu $31,$31,$31
addu $31,$0,$4
jr $ra
addu $1,$1,$0


Test6:
lw $2,-12288($31)
sw $1,32($0)
and $2,$1,$4
mfhi $1
addiu $0,$3,156
mthi $0
lui $4,100
andi $1,$1,36
mthi $0
mult $4,$1
multu $1,$3
mtlo $0
and $4,$4,$2
or $0,$1,$0
subu $2,$2,$2
ori $2,$2,64
sw $1,-48($2)
ori $3,$3,44
ori $3,$3,124
or $0,$2,$0
and $2,$0,$0
divu $3,$3
mtlo $3
ori $4,$1,112
ori $4,$1,8
multu $2,$2
multu $3,$3
div $1,$4
sb $3,64($0)
slt $2,$0,$2
lui $2,20
ori $1,$2,16
and $2,$2,$4
addiu $2,$4,68
mthi $4
ori $0,$4,84
EndTest6:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
ori $31,$4,0
jr $ra
lui $3,72


Test7:
mtlo $31
subu $5,$5,$5
subu $20,$20,$20
ori $20,$20,10
subu $15,$15,$15
ori $15,$15,1
SubTest7:
addu $5,$5,$15
beq $5,$20,EndTest7
subu $1,$3,$1
lui $2,28
ori $4,$3,48
ori $4,$3,132
sw $1,0($0)
mflo $1
divu $3,$4
lh $2,32($0)
subu $4,$2,$0
andi $2,$0,140
ori $4,$3,40
ori $4,$3,16
lh $1,112($0)
mflo $1
divu $3,$4
mult $4,$1
mtlo $3
and $2,$0,$0
subu $2,$0,$2
ori $4,$4,28
ori $4,$4,156
lui $2,148
and $3,$1,$1
divu $4,$4
addiu $3,$3,136
subu $4,$0,$4
mtlo $4
mthi $4
lui $3,120
sh $0,16($0)
sb $4,112($0)
multu $4,$2
subu $1,$0,$3
lb $1,32($0)
lw $1,0($0)
subu $2,$3,$0
or $4,$2,$0
addiu $0,$4,28
EndTest7:
subu $2,$2,$2
addu $3,$31,$2
subu $31,$31,$31
addu $31,$0,$3
jr $ra
sw $3,0($0)


Test8:
subu $1,$4,$31
subu $19,$19,$19
subu $15,$15,$15
ori $15,$15,10
subu $16,$16,$16
ori $16,$16,1
SubTest8:
addu $19,$19,$16
beq $19,$15,EndTest8
subu $4,$4,$0
sltu $0,$1,$0
mfhi $2
or $0,$3,$1
mtlo $3
mthi $4
mult $3,$1
or $2,$0,$2
addu $2,$4,$1
lui $2,152
mfhi $0
addu $2,$1,$3
lui $0,136
subu $2,$2,$3
addu $2,$1,$0
andi $2,$0,148
lui $3,76
or $2,$2,$0
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,6
ori $3,$0,244
divu $3,$2
mfhi $4
mthi $1
lh $3,0($4)
mthi $0
mfhi $0
addiu $3,$4,8
beq $3,$1,SubTest8
subu $1,$3,$2
slt $3,$0,$2
mflo $0
subu $4,$4,$4
ori $4,$4,64
sw $2,-32($4)
EndTest8:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
mfhi $4
jr $ra
or $1,$2,$0


Test9:
mtlo $31
subu $28,$28,$28
subu $20,$20,$20
ori $20,$20,10
subu $27,$27,$27
ori $27,$27,1
SubTest9:
addu $28,$28,$27
beq $28,$20,EndTest9
ori $2,$3,148
ori $2,$3,136
and $0,$0,$4
and $4,$0,$4
div $3,$2
ori $2,$3,72
ori $2,$3,144
andi $1,$1,76
andi $1,$1,116
div $3,$2
subu $3,$3,$3
ori $3,$3,112
lh $1,-62($3)
ori $2,$3,8
ori $2,$3,36
lui $4,16
lui $4,24
div $3,$2
subu $3,$2,$3
subu $2,$2,$2
ori $2,$2,112
sw $4,-96($2)
sltu $0,$3,$4
mthi $1
ori $1,$4,56
ori $1,$4,104
lui $3,120
lui $2,140
div $4,$1
sh $0,112($0)
bne $3,$3,SubTest9
ori $2,$3,160
ori $2,$3,100
or $0,$1,$4
lh $0,16($0)
divu $3,$2
sltu $3,$0,$0
beq $4,$0,SubTest9
mfhi $1
lh $3,80($0)
beq $3,$0,SubTest9
sw $4,64($0)
subu $4,$4,$4
sw $2,48($4)
addu $2,$1,$2
mult $1,$2
sb $0,16($0)
ori $4,$2,12
ori $4,$2,16
or $1,$1,$1
and $1,$3,$1
divu $2,$4
and $4,$1,$0
mthi $3
and $0,$4,$4
multu $4,$0
subu $2,$2,$2
sw $0,80($2)
ori $4,$2,84
ori $4,$2,124
sltu $3,$3,$3
sltu $1,$1,$3
div $2,$4
EndTest9:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
multu $0,$4


Test10:
multu $31,$0
mtlo $1
ori $0,$2,156
mult $3,$4
multu $2,$0
ori $1,$3,72
and $3,$4,$4
ori $1,$3,136
subu $4,$4,$4
ori $4,$4,64
sb $2,-16($4)
ori $0,$1,20
lb $2,96($0)
lui $2,120
subu $4,$2,$1
ori $2,$4,12
mthi $3
mfhi $3
beq $0,$4,EndTest10
multu $4,$4
addu $0,$0,$0
sw $1,0($0)
sh $2,32($0)
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,64
sh $2,0($0)
ori $2,$2,48
lw $2,0($0)
sw $2,64($2)
subu $3,$4,$4
andi $0,$4,4
ori $1,$4,120
ori $1,$4,144
ori $0,$0,64
ori $2,$3,36
div $4,$1
mthi $4
mult $1,$4
EndTest10:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
mfhi $1
jr $ra
andi $0,$4,8


Test11:
addu $1,$31,$0
subu $29,$29,$29
subu $8,$8,$8
ori $8,$8,10
subu $24,$24,$24
ori $24,$24,1
SubTest11:
addu $29,$29,$24
bne $29,$8,EndTest11
mflo $2
mthi $0
ori $3,$4,64
ori $3,$4,56
slt $1,$1,$1
mthi $2
divu $4,$3
or $3,$4,$0
addu $0,$4,$3
mflo $2
subu $3,$3,$3
subu $2,$2,$2
ori $3,$0,9
ori $2,$0,76
divu $2,$3
mflo $1
ori $4,$4,108
lb $2,0($1)
slt $0,$3,$4
lb $3,16($0)
subu $3,$2,$4
mtlo $3
andi $2,$3,40
ori $3,$1,52
ori $3,$1,100
andi $2,$0,144
andi $4,$2,88
div $1,$3
subu $4,$4,$4
ori $4,$4,48
sb $0,-32($4)
subu $3,$3,$0
mult $0,$0
mult $4,$3
sltu $2,$2,$1
addiu $4,$1,48
mflo $1
ori $4,$0,28
lw $1,64($0)
addiu $2,$4,28
mtlo $2
sltu $4,$4,$3
beq $0,$2,SubTest11
multu $4,$4
EndTest11:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
mflo $3


Test12:
bne $1,$31,EndTest12
and $3,$0,$1
sltu $2,$4,$4
subu $4,$4,$4
ori $4,$4,112
sb $4,-96($4)
sltu $2,$0,$1
and $3,$0,$1
mflo $1
ori $1,$2,120
ori $1,$2,116
andi $3,$0,136
andi $4,$3,16
div $2,$1
mult $1,$2
or $0,$0,$1
ori $2,$3,16
lui $2,0
lb $2,108($2)
andi $3,$2,132
sw $0,16($0)
mtlo $3
mult $1,$2
lui $0,124
mtlo $2
or $4,$0,$4
sh $1,64($0)
beq $2,$1,EndTest12
subu $1,$0,$3
mflo $1
andi $3,$4,124
multu $2,$2
ori $1,$3,84
ori $1,$3,56
andi $4,$2,116
mfhi $4
divu $3,$1
multu $1,$3
mflo $0
EndTest12:
subu $3,$3,$3
sw $31,84($3)
subu $31,$31,$31
lw $31,84($3)
jr $ra
ori $4,$2,52


Test13:
ori $0,$31,92
subu $13,$13,$13
subu $6,$6,$6
ori $6,$6,10
subu $5,$5,$5
ori $5,$5,1
SubTest13:
addu $13,$13,$5
bne $13,$6,EndTest13
ori $1,$4,112
ori $1,$4,20
mflo $3
mflo $3
div $4,$1
lb $3,80($0)
multu $1,$4
andi $0,$2,120
ori $2,$3,88
ori $2,$3,52
mtlo $4
andi $1,$1,124
divu $3,$2
andi $3,$4,64
andi $2,$0,72
lui $1,0
or $3,$4,$3
sw $4,32($0)
ori $1,$2,84
ori $1,$2,36
lui $3,148
mflo $3
divu $2,$1
subu $0,$0,$0
sw $0,96($0)
lui $0,24
mthi $2
mflo $2
subu $2,$2,$2
ori $2,$2,16
sb $3,0($2)
mult $1,$4
ori $2,$4,100
ori $2,$4,88
mult $3,$1
mflo $3
divu $4,$2
and $2,$2,$3
sb $2,112($0)
ori $1,$4,120
ori $1,$4,48
lw $3,112($0)
addu $3,$3,$0
divu $4,$1
mfhi $4
mthi $4
or $3,$2,$3
ori $4,$2,144
ori $4,$2,148
mthi $1
mthi $1
div $2,$4
sw $1,32($0)
EndTest13:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
mult $3,$3


End:
