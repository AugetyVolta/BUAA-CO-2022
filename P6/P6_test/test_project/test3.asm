ori $0, $0, 40
ori $1, $0, 128
ori $2, $0, 100
ori $3, $0, 36
ori $4, $0, 140
ori $5, $0, 140
ori $6, $0, 32
ori $7, $0, 64
ori $8, $0, 92
ori $9, $0, 40
ori $10, $0, 68
ori $11, $0, 52
ori $12, $0, 112
ori $13, $0, 108
ori $14, $0, 32
ori $15, $0, 48
ori $16, $0, 40
ori $17, $0, 4
ori $18, $0, 120
ori $19, $0, 116
ori $20, $0, 148
ori $21, $0, 144
ori $22, $0, 128
ori $23, $0, 128
ori $24, $0, 148
ori $25, $0, 116
ori $26, $0, 92
ori $27, $0, 20
ori $28, $0, 136
ori $29, $0, 16
ori $30, $0, 156
ori $31, $0, 64

ori $3,$0,24
mthi $4
jal Test_jal1
addu $0,$31,$2
beq $0,$0,Test_beq1
ori $0,$31,116
Test_jal1: jr $ra
Test_beq1:
or $3,$4,$4
jal Test1
mfhi $3
Back1:

sltu $1,$2,$1
sltu $4,$4,$0
jal Test_jal2
andi $1,$31,132
beq $0,$0,Test_beq2
sw $2,-12288($31)
Test_jal2: jr $ra
Test_beq2:
addu $0,$3,$2
jal Test2
andi $0,$3,96
Back2:

mtlo $2
lui $1,104
jal Test_jal3
mtlo $31
beq $0,$0,Test_beq3
lw $3,-12288($31)
Test_jal3: jr $ra
Test_beq3:
sw $0,0($0)
jal Test3
and $4,$3,$2
Back3:

mtlo $0
ori $4,$1,140
ori $4,$1,96
addu $2,$3,$3
sltu $2,$0,$2
divu $1,$4
ori $0,$2,8
jal Test4
lh $2,0($0)
Back4:

or $0,$1,$2
lb $0,112($0)
jal Test_jal5
slt $0,$0,$31
beq $0,$0,Test_beq5
or $4,$0,$31
Test_jal5: jr $ra
Test_beq5:
lh $0,0($0)
jal Test5
mult $1,$3
Back5:

and $3,$3,$0
lb $4,64($0)
and $1,$2,$2
jal Test6
subu $4,$1,$4
Back6:

addu $2,$3,$2
ori $3,$1,24
jal Test_jal7
sltu $3,$2,$31
beq $0,$0,Test_beq7
subu $3,$3,$31
Test_jal7: jr $ra
Test_beq7:
or $2,$3,$3
jal Test7
mthi $3
Back7:

mflo $4
mthi $3
jal Test_jal8
and $3,$0,$31
beq $0,$0,Test_beq8
sltu $0,$4,$31
Test_jal8: jr $ra
Test_beq8:
sb $2,112($0)
jal Test8
slt $3,$3,$3
Back8:

subu $4,$4,$4
sb $2,32($4)
ori $2,$4,28
jal Test_jal9
div $4,$31
beq $0,$0,Test_beq9
and $1,$0,$31
Test_jal9: jr $ra
Test_beq9:
lw $2,48($0)
jal Test9
multu $4,$2
Back9:

lui $1,24
mflo $2
jal Test_jal10
or $4,$1,$31
beq $0,$0,Test_beq10
sw $4,-12288($31)
Test_jal10: jr $ra
Test_beq10:
subu $4,$2,$3
jal Test10
slt $2,$4,$0
Back10:

mfhi $2
multu $3,$2
sltu $0,$3,$1
jal Test11
mthi $3
Back11:

lui $0,64
ori $1,$1,92
ori $1,$1,12
multu $4,$0
multu $4,$0
div $1,$1
jal Test_jal12
addu $4,$31,$1
beq $0,$0,Test_beq12
slt $2,$2,$31
Test_jal12: jr $ra
Test_beq12:
mflo $2
jal Test12
ori $3,$4,64
ori $3,$4,20
mult $0,$2
mult $0,$1
div $4,$3
Back12:

or $3,$3,$4
subu $3,$2,$1
jal Test_jal13
mtlo $31
beq $0,$0,Test_beq13
ori $3,$31,92
Test_jal13: jr $ra
Test_beq13:
ori $3,$2,100
ori $3,$2,124
sltu $1,$0,$0
sltu $4,$0,$0
div $2,$3
jal Test13
mult $0,$3
jal End
sltu $3,$3,$2


Test1:
andi $3,$31,48
multu $1,$4
ori $4,$3,136
ori $4,$3,44
mflo $0
mflo $1
div $3,$4
and $1,$4,$0
sltu $0,$1,$0
mthi $2
sw $0,80($0)
mtlo $0
andi $3,$0,104
multu $2,$3
or $1,$1,$0
and $1,$0,$0
mfhi $0
mflo $3
addiu $4,$2,132
mflo $4
sltu $2,$2,$2
beq $2,$1,EndTest1
ori $0,$3,108
slt $1,$4,$1
mult $4,$4
lh $1,96($0)
slt $4,$4,$4
or $2,$1,$2
subu $1,$1,$1
ori $1,$1,112
sh $1,-16($1)
mult $3,$3
lui $3,4
EndTest1:
subu $4,$4,$4
sw $31,64($4)
subu $31,$31,$31
lw $31,64($4)
jr $ra
lw $4,48($0)


Test2:
addu $0,$31,$2
subu $4,$4,$4
lh $0,22($4)
lui $2,44
ori $3,$4,116
ori $3,$4,40
mflo $1
mflo $2
div $4,$3
multu $4,$4
lh $0,32($0)
ori $2,$2,36
ori $2,$2,68
slt $3,$1,$3
mthi $3
divu $2,$2
subu $4,$0,$4
mtlo $4
or $4,$3,$3
sltu $3,$4,$3
lw $4,80($0)
sb $1,80($0)
mfhi $1
and $2,$4,$3
mthi $2
mflo $3
subu $2,$2,$2
ori $2,$2,80
lw $0,-64($2)
sh $1,16($0)
slt $1,$4,$2
addiu $3,$3,4
multu $0,$3
or $0,$2,$0
sltu $4,$4,$2
beq $1,$0,EndTest2
sltu $1,$4,$4
mult $1,$1
EndTest2:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
ori $31,$2,0
jr $ra
mult $3,$4


Test3:
addiu $4,$31,100
subu $25,$25,$25
subu $10,$10,$10
ori $10,$10,10
subu $14,$14,$14
ori $14,$14,1
SubTest3:
addu $25,$25,$14
beq $25,$10,EndTest3
andi $2,$2,60
and $1,$1,$4
slt $1,$4,$2
mtlo $2
subu $3,$1,$3
ori $1,$4,96
ori $1,$4,52
mfhi $3
mfhi $2
divu $4,$1
ori $2,$2,100
ori $2,$2,96
multu $3,$4
andi $1,$0,148
divu $2,$2
ori $4,$3,16
ori $4,$3,136
sltu $2,$2,$1
andi $0,$1,100
divu $3,$4
ori $4,$2,96
lui $4,0
lw $2,12($4)
ori $3,$1,92
ori $3,$1,32
and $2,$0,$2
mflo $4
divu $1,$3
sltu $0,$3,$3
subu $3,$3,$3
subu $1,$1,$1
ori $3,$0,8
ori $1,$0,228
divu $1,$3
mflo $4
or $2,$2,$2
lb $1,0($4)
ori $4,$4,152
ori $4,$4,88
multu $2,$3
multu $3,$1
div $4,$4
sltu $2,$4,$0
beq $4,$3,SubTest3
multu $3,$0
andi $4,$1,140
sw $1,48($0)
lui $4,48
mult $1,$3
lb $2,64($0)
mtlo $0
mult $3,$3
lui $4,84
slt $0,$1,$3
mfhi $4
sltu $1,$4,$4
EndTest3:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
addiu $0,$2,120
jr $ra
ori $4,$0,20


Test4:
mtlo $31
subu $26,$26,$26
subu $5,$5,$5
ori $5,$5,10
subu $7,$7,$7
ori $7,$7,1
SubTest4:
addu $26,$26,$7
beq $26,$5,EndTest4
sb $2,16($0)
ori $1,$1,140
ori $1,$1,92
multu $2,$3
sltu $4,$4,$4
divu $1,$1
mthi $0
subu $1,$0,$2
andi $2,$2,68
lui $4,24
mthi $3
andi $4,$4,92
beq $0,$3,SubTest4
lb $3,96($0)
lui $0,56
and $3,$2,$4
or $0,$4,$1
mthi $3
lui $3,12
multu $4,$3
addiu $0,$1,4
subu $3,$3,$3
sw $4,64($3)
lb $2,48($0)
lui $0,52
subu $4,$4,$4
ori $4,$4,64
sb $2,-48($4)
mfhi $3
andi $4,$4,132
mult $2,$1
lh $1,48($0)
mfhi $2
addu $4,$3,$4
EndTest4:
subu $4,$4,$4
sw $31,100($4)
subu $31,$31,$31
lw $31,100($4)
jr $ra
mthi $4


Test5:
lh $1,-12288($31)
subu $6,$6,$6
subu $23,$23,$23
ori $23,$23,10
subu $5,$5,$5
ori $5,$5,1
SubTest5:
addu $6,$6,$5
bne $6,$23,EndTest5
slt $4,$1,$2
multu $4,$3
sltu $0,$0,$4
addiu $2,$4,116
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sb $3,0($0)
lh $2,0($0)
lb $3,48($2)
sw $3,32($0)
subu $4,$4,$4
ori $4,$4,96
sb $4,-48($4)
multu $1,$2
mthi $1
slt $4,$3,$4
ori $4,$1,60
ori $4,$1,96
or $0,$3,$0
mflo $0
divu $1,$4
multu $2,$2
lh $0,64($0)
subu $1,$1,$1
ori $1,$1,16
lw $0,0($1)
addu $0,$1,$4
mfhi $3
beq $3,$1,SubTest5
andi $0,$0,120
subu $4,$4,$4
sb $3,48($4)
mult $3,$3
mfhi $2
mflo $0
mtlo $1
mflo $3
beq $4,$4,SubTest5
mflo $0
lui $1,156
subu $3,$2,$3
ori $2,$3,44
ori $2,$3,96
mflo $4
mflo $0
div $3,$2
EndTest5:
subu $4,$4,$4
addu $3,$31,$4
addu $31,$31,$31
subu $31,$31,$3
mfhi $4
jr $ra
or $0,$4,$4


Test6:
slt $0,$4,$31
subu $7,$7,$7
subu $13,$13,$13
ori $13,$13,10
subu $18,$18,$18
ori $18,$18,1
SubTest6:
addu $7,$7,$18
beq $7,$13,EndTest6
mult $2,$2
mthi $4
ori $2,$2,116
ori $2,$2,80
mfhi $3
mfhi $3
div $2,$2
ori $1,$4,108
ori $1,$4,104
sltu $2,$2,$0
sltu $0,$3,$0
div $4,$1
subu $3,$3,$3
ori $3,$3,112
lb $1,-79($3)
addu $2,$1,$4
subu $0,$0,$1
mtlo $4
mthi $0
multu $0,$2
ori $3,$1,88
ori $1,$3,72
mfhi $3
mtlo $0
mfhi $0
subu $2,$2,$2
ori $2,$2,16
sw $0,0($2)
slt $1,$2,$1
lui $3,84
mfhi $1
lui $4,20
lui $4,156
sw $2,32($0)
subu $1,$1,$1
sb $2,16($1)
mflo $0
subu $0,$2,$1
andi $1,$2,36
EndTest6:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
sb $2,48($0)
jr $ra
lui $1,112


Test7:
andi $4,$31,156
mtlo $4
and $1,$2,$1
lw $4,48($0)
mflo $3
ori $4,$2,36
ori $4,$2,52
lb $1,0($0)
lw $1,0($0)
div $2,$4
subu $3,$3,$0
lui $0,88
bne $4,$1,EndTest7
ori $2,$4,64
ori $2,$4,16
multu $0,$3
lui $3,4
divu $4,$2
subu $4,$4,$1
subu $2,$2,$2
sw $0,64($2)
lb $2,64($0)
ori $2,$2,120
mthi $3
mtlo $2
lw $3,48($0)
ori $3,$4,116
ori $3,$4,84
ori $0,$0,80
ori $0,$0,44
div $4,$3
bne $2,$3,EndTest7
lw $1,96($0)
addiu $3,$1,28
sb $0,64($0)
subu $3,$0,$0
mflo $4
addiu $4,$1,120
subu $0,$0,$0
lw $2,0($0)
addu $3,$1,$0
ori $4,$3,100
ori $4,$3,64
andi $1,$2,4
mfhi $1
divu $3,$4
EndTest7:
subu $3,$3,$3
addu $3,$31,$3
subu $31,$31,$31
ori $31,$3,0
or $0,$4,$3
jr $ra
lb $3,0($0)


Test8:
sltu $0,$2,$31
sltu $2,$0,$2
subu $2,$3,$2
mtlo $0
subu $2,$2,$2
ori $2,$2,32
lw $1,-32($2)
ori $0,$1,16
lb $3,80($0)
mult $2,$2
addiu $3,$4,84
lb $3,0($0)
mfhi $4
ori $2,$2,64
lui $2,0
lb $2,144($2)
slt $2,$0,$4
slt $2,$2,$4
addiu $2,$0,76
mfhi $0
mfhi $3
lh $1,96($0)
mflo $1
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sw $3,0($0)
lh $3,0($0)
lb $3,96($3)
sw $3,96($0)
andi $2,$4,148
subu $3,$3,$3
lh $3,18($3)
and $1,$0,$2
mfhi $0
mtlo $4
subu $3,$3,$3
lw $1,112($3)
EndTest8:
subu $3,$3,$3
addu $2,$31,$3
addu $31,$31,$31
subu $31,$31,$2
jr $ra
multu $4,$2


Test9:
bne $0,$31,EndTest9
subu $25,$25,$25
subu $27,$27,$27
ori $27,$27,10
subu $18,$18,$18
ori $18,$18,1
SubTest9:
addu $25,$25,$18
beq $25,$27,EndTest9
ori $2,$4,24
ori $2,$4,60
sh $1,80($0)
lw $0,96($0)
divu $4,$2
sw $0,80($0)
subu $2,$2,$2
sb $2,80($2)
subu $4,$4,$0
mthi $2
ori $0,$1,20
subu $2,$2,$3
sw $0,16($0)
mult $3,$4
lui $4,124
mfhi $1
ori $4,$1,48
ori $4,$1,112
mthi $2
lb $2,32($0)
divu $1,$4
mthi $4
sh $2,16($0)
andi $2,$1,84
mthi $4
sb $1,80($0)
subu $1,$1,$1
lh $4,74($1)
mflo $0
mflo $2
or $4,$0,$1
bne $1,$0,SubTest9
andi $3,$4,76
subu $3,$4,$4
mtlo $3
subu $2,$0,$3
sw $0,112($0)
EndTest9:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
mult $3,$2
jr $ra
mflo $0


Test10:
addiu $4,$31,72
subu $26,$26,$26
subu $13,$13,$13
ori $13,$13,10
subu $29,$29,$29
ori $29,$29,1
SubTest10:
addu $26,$26,$29
bne $26,$13,EndTest10
slt $4,$4,$2
lb $2,32($0)
addu $4,$1,$4
lw $0,0($0)
sltu $1,$1,$0
lui $2,92
sw $2,64($0)
mtlo $0
mtlo $4
mflo $0
sw $1,80($0)
slt $4,$0,$4
addu $2,$1,$3
bne $4,$1,SubTest10
lui $1,20
slt $3,$1,$1
mfhi $2
lui $3,12
sb $2,48($0)
mfhi $4
mflo $3
multu $2,$4
ori $3,$3,96
ori $3,$3,4
slt $0,$2,$4
andi $2,$1,136
divu $3,$3
lh $2,80($0)
beq $3,$2,SubTest10
ori $2,$1,44
addiu $4,$4,156
ori $0,$0,72
EndTest10:
subu $3,$3,$3
addu $3,$31,$3
subu $31,$31,$31
ori $31,$3,0
jr $ra
sh $4,0($0)


Test11:
mtlo $31
mthi $1
lui $3,56
lui $4,52
sb $3,64($0)
multu $2,$4
mtlo $1
subu $0,$2,$1
sh $4,16($0)
andi $3,$0,60
subu $1,$1,$1
sw $0,96($1)
subu $3,$2,$3
sltu $4,$3,$2
mtlo $4
mult $0,$2
lui $3,24
ori $3,$3,80
ori $3,$3,136
slt $0,$0,$1
slt $0,$4,$1
div $3,$3
addiu $0,$3,76
subu $1,$1,$1
ori $1,$1,64
lh $3,-14($1)
mthi $4
mfhi $2
multu $3,$1
mflo $2
mflo $1
mult $1,$4
lb $3,112($0)
EndTest11:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
mthi $0


Test12:
mult $31,$1
subu $15,$15,$15
subu $26,$26,$26
ori $26,$26,10
subu $5,$5,$5
ori $5,$5,1
SubTest12:
addu $15,$15,$5
beq $15,$26,EndTest12
ori $2,$4,100
ori $2,$4,160
and $0,$3,$3
mtlo $0
divu $4,$2
mtlo $2
lw $0,80($0)
andi $3,$3,88
or $3,$1,$4
mthi $2
subu $1,$1,$1
ori $1,$1,16
lh $0,2($1)
addiu $2,$3,80
ori $4,$4,36
ori $4,$4,136
addiu $2,$3,16
addu $3,$3,$2
div $4,$4
slt $0,$4,$1
and $3,$3,$1
ori $1,$1,32
ori $1,$1,12
subu $3,$2,$2
subu $2,$4,$4
div $1,$1
lb $4,64($0)
ori $2,$3,108
ori $2,$3,56
multu $0,$4
and $4,$1,$4
divu $3,$2
lui $0,16
andi $4,$3,44
mthi $0
subu $1,$1,$1
ori $1,$1,96
sw $2,-16($1)
sltu $1,$4,$2
lui $0,52
andi $0,$3,156
mult $3,$0
and $4,$3,$4
multu $2,$1
and $4,$4,$0
bne $1,$4,SubTest12
sltu $2,$2,$4
EndTest12:
subu $2,$2,$2
addu $3,$31,$2
subu $31,$31,$31
ori $31,$3,0
slt $1,$0,$4
jr $ra
addiu $0,$1,88


Test13:
multu $31,$4
subu $8,$8,$8
subu $29,$29,$29
ori $29,$29,10
subu $7,$7,$7
ori $7,$7,1
SubTest13:
addu $8,$8,$7
beq $8,$29,EndTest13
ori $2,$1,96
addiu $0,$1,100
ori $2,$3,128
ori $2,$3,40
andi $4,$1,104
sw $4,0($0)
divu $3,$2
subu $1,$1,$1
lw $4,96($1)
slt $2,$2,$2
slt $1,$4,$0
subu $4,$3,$1
mfhi $2
ori $1,$4,8
ori $1,$4,44
sb $3,64($0)
mflo $3
divu $4,$1
ori $4,$1,40
ori $4,$1,12
andi $3,$3,112
andi $0,$2,120
div $1,$4
mult $1,$1
lb $3,64($0)
sh $0,64($0)
mtlo $0
slt $0,$3,$4
andi $1,$2,20
beq $4,$1,SubTest13
lui $2,100
ori $3,$2,36
ori $3,$2,112
mult $0,$0
mult $4,$4
div $2,$3
ori $3,$4,48
ori $3,$4,88
and $2,$1,$1
and $1,$2,$2
div $4,$3
subu $2,$3,$4
mfhi $2
lb $4,64($0)
slt $3,$3,$0
subu $3,$3,$3
subu $2,$2,$2
ori $3,$0,8
ori $2,$0,68
divu $2,$3
mflo $0
slt $1,$4,$4
lw $2,0($0)
subu $4,$4,$4
lb $4,15($4)
lui $4,24
EndTest13:
subu $4,$4,$4
sw $31,92($4)
subu $31,$31,$31
lw $31,92($4)
mult $1,$2
jr $ra
or $4,$1,$3


End:
