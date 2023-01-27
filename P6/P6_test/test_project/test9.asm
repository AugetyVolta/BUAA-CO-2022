ori $0, $0, 124
ori $1, $0, 56
ori $2, $0, 16
ori $3, $0, 104
ori $4, $0, 16
ori $5, $0, 152
ori $6, $0, 108
ori $7, $0, 96
ori $8, $0, 92
ori $9, $0, 32
ori $10, $0, 88
ori $11, $0, 104
ori $12, $0, 48
ori $13, $0, 84
ori $14, $0, 152
ori $15, $0, 92
ori $16, $0, 32
ori $17, $0, 108
ori $18, $0, 112
ori $19, $0, 48
ori $20, $0, 132
ori $21, $0, 132
ori $22, $0, 12
ori $23, $0, 40
ori $24, $0, 100
ori $25, $0, 48
ori $26, $0, 36
ori $27, $0, 128
ori $28, $0, 152
ori $29, $0, 60
ori $30, $0, 156
ori $31, $0, 4

slt $1,$1,$4
mult $3,$2
and $1,$1,$2
jal Test1
multu $1,$3
Back1:

and $1,$3,$3
lui $1,48
ori $3,$3,20
ori $3,$3,148
ori $2,$2,108
ori $2,$2,28
div $3,$3
jal Test2
ori $1,$3,12
ori $1,$3,144
mfhi $4
sltu $2,$4,$2
divu $3,$1
Back2:

subu $3,$3,$3
subu $1,$1,$1
ori $3,$0,9
ori $1,$0,40
divu $1,$3
mflo $0
lw $1,0($0)
mult $2,$1
jal Test_jal3
sw $1,-12288($31)
beq $0,$0,Test_beq3
subu $3,$4,$31
Test_jal3: jr $ra
Test_beq3:
subu $3,$3,$3
subu $4,$4,$4
ori $3,$0,6
ori $4,$0,148
divu $4,$3
mflo $2
lb $4,0($2)
jal Test3
subu $4,$1,$4
Back3:

addiu $0,$1,32
addu $3,$1,$4
sw $3,96($0)
jal Test4
mtlo $4
Back4:

ori $4,$3,148
ori $4,$3,144
mfhi $0
mfhi $2
div $3,$4
mtlo $2
jal Test_jal5
slt $3,$1,$31
beq $0,$0,Test_beq5
addiu $1,$31,156
Test_jal5: jr $ra
Test_beq5:
ori $2,$2,16
ori $2,$2,4
sb $0,80($0)
sw $1,48($0)
div $2,$2
jal Test5
mflo $4
Back5:

subu $3,$3,$2
sltu $1,$4,$1
jal Test_jal6
mult $31,$0
beq $0,$0,Test_beq6
sh $1,-12288($31)
Test_jal6: jr $ra
Test_beq6:
ori $3,$3,4
ori $3,$3,80
andi $4,$2,148
andi $1,$1,100
div $3,$3
jal Test6
mtlo $4
Back6:

andi $0,$2,124
ori $0,$4,68
jal Test_jal7
andi $3,$31,140
beq $0,$0,Test_beq7
addiu $1,$31,92
Test_jal7: jr $ra
Test_beq7:
subu $0,$0,$0
sh $4,0($0)
jal Test7
lui $4,128
Back7:

ori $3,$4,144
ori $3,$4,44
or $1,$2,$1
andi $2,$2,104
divu $4,$3
slt $1,$4,$0
jal Test_jal8
and $3,$1,$31
beq $0,$0,Test_beq8
sh $4,-12288($31)
Test_jal8: jr $ra
Test_beq8:
sltu $2,$2,$0
jal Test8
and $4,$3,$4
Back8:

slt $2,$0,$1
and $0,$3,$1
jal Test_jal9
ori $0,$31,40
beq $0,$0,Test_beq9
and $3,$4,$31
Test_jal9: jr $ra
Test_beq9:
andi $1,$4,76
jal Test9
or $1,$0,$2
Back9:

ori $3,$3,156
ori $3,$3,92
addu $4,$1,$1
ori $1,$1,36
divu $3,$3
subu $4,$4,$4
ori $4,$4,64
lw $1,0($4)
jal Test_jal10
addu $3,$31,$1
beq $0,$0,Test_beq10
and $4,$1,$31
Test_jal10: jr $ra
Test_beq10:
ori $3,$2,108
jal Test10
and $3,$3,$4
Back10:

ori $4,$1,92
ori $4,$1,88
multu $2,$2
and $3,$3,$3
divu $1,$4
slt $0,$0,$3
ori $3,$3,36
ori $3,$3,20
slt $4,$4,$4
slt $0,$1,$0
divu $3,$3
jal Test11
addiu $3,$3,80
Back11:

sltu $0,$1,$2
andi $0,$3,100
jal Test_jal12
sb $0,-12288($31)
beq $0,$0,Test_beq12
subu $1,$0,$31
Test_jal12: jr $ra
Test_beq12:
mflo $2
jal Test12
mtlo $0
Back12:

slt $3,$4,$3
mult $4,$0
lui $0,48
jal Test13
sltu $0,$1,$2
jal End
mult $4,$4


Test1:
beq $4,$31,EndTest1
subu $7,$7,$7
subu $8,$8,$8
ori $8,$8,10
subu $18,$18,$18
ori $18,$18,1
SubTest1:
addu $7,$7,$18
beq $7,$8,EndTest1
ori $2,$3,148
ori $2,$3,120
mtlo $0
sh $0,96($0)
divu $3,$2
andi $1,$3,28
lh $1,32($0)
subu $3,$3,$3
ori $3,$3,112
sb $0,-48($3)
mthi $3
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sh $1,0($0)
lh $4,0($0)
lb $1,16($4)
sb $1,16($0)
sltu $3,$1,$2
mtlo $3
mflo $1
sltu $2,$4,$3
subu $0,$0,$2
ori $4,$3,88
ori $4,$3,44
addu $1,$2,$2
addu $0,$0,$2
div $3,$4
lui $2,68
and $3,$3,$2
lui $2,132
sltu $3,$1,$3
andi $3,$1,148
slt $1,$0,$2
subu $1,$3,$2
andi $3,$3,144
addiu $3,$3,140
sltu $2,$0,$0
lh $4,80($0)
mthi $4
andi $4,$1,8
lui $3,52
EndTest1:
subu $2,$2,$2
sw $31,76($2)
subu $31,$31,$31
lw $31,76($2)
jr $ra
mfhi $3


Test2:
addiu $2,$31,132
subu $10,$10,$10
subu $17,$17,$17
ori $17,$17,10
subu $27,$27,$27
ori $27,$27,1
SubTest2:
addu $10,$10,$27
bne $10,$17,EndTest2
mflo $1
subu $4,$4,$1
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sw $2,0($0)
lw $2,0($0)
lb $2,48($2)
sh $2,80($0)
mfhi $4
sw $0,0($0)
ori $4,$4,100
ori $4,$4,32
multu $1,$3
mfhi $2
divu $4,$4
sltu $4,$3,$4
mflo $0
and $1,$2,$3
mthi $3
sltu $4,$4,$0
andi $2,$0,76
mult $3,$0
slt $0,$0,$3
sltu $2,$1,$3
slt $2,$0,$4
ori $4,$4,16
ori $4,$4,72
mflo $0
mflo $3
div $4,$4
mthi $4
ori $2,$4,112
lui $2,96
ori $3,$4,92
ori $3,$4,144
ori $1,$1,156
ori $0,$2,104
div $4,$3
sltu $1,$3,$0
mflo $0
ori $1,$1,40
ori $1,$1,124
lw $3,96($0)
lw $2,48($0)
div $1,$1
mult $1,$3
slt $0,$2,$1
EndTest2:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
addiu $0,$3,104


Test3:
beq $2,$31,EndTest3
subu $9,$9,$9
subu $18,$18,$18
ori $18,$18,10
subu $26,$26,$26
ori $26,$26,1
SubTest3:
addu $9,$9,$26
beq $9,$18,EndTest3
mfhi $4
ori $4,$1,16
ori $4,$1,120
and $0,$0,$3
mtlo $0
divu $1,$4
ori $3,$1,132
ori $3,$1,112
lb $4,96($0)
lb $2,48($0)
divu $1,$3
sh $3,48($0)
or $2,$1,$2
subu $1,$1,$1
ori $1,$1,32
sb $0,-32($1)
sh $0,48($0)
mthi $3
ori $1,$1,152
or $1,$3,$3
addiu $2,$2,100
or $4,$1,$4
andi $1,$1,12
lui $1,100
mthi $1
mflo $4
andi $4,$2,72
mfhi $1
ori $4,$3,132
ori $4,$3,32
mflo $0
mflo $2
div $3,$4
mult $1,$1
and $3,$1,$3
and $4,$2,$2
ori $2,$4,104
and $4,$1,$2
subu $4,$1,$0
lui $4,1
lw $2,-65448($4)
addu $4,$3,$2
EndTest3:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
lb $0,16($0)
jr $ra
subu $1,$3,$3


Test4:
and $3,$3,$31
addiu $2,$2,28
sltu $3,$3,$2
andi $4,$1,8
mfhi $0
andi $2,$0,104
mult $1,$2
sltu $1,$1,$4
multu $3,$0
mflo $2
subu $2,$2,$2
ori $2,$2,80
sb $4,-32($2)
mthi $0
sh $2,32($0)
ori $2,$3,76
ori $2,$3,48
mthi $0
andi $4,$1,32
divu $3,$2
mthi $0
mfhi $4
ori $4,$1,56
ori $4,$1,56
mfhi $3
lui $3,44
divu $1,$4
slt $3,$0,$2
mflo $2
beq $2,$1,EndTest4
and $0,$4,$0
sh $0,16($0)
andi $1,$4,72
sltu $1,$0,$2
lui $1,56
addiu $4,$0,104
multu $3,$2
EndTest4:
subu $2,$2,$2
sw $31,68($2)
subu $31,$31,$31
lw $31,68($2)
and $1,$0,$3
jr $ra
multu $1,$0


Test5:
sltu $2,$4,$31
subu $22,$22,$22
subu $20,$20,$20
ori $20,$20,10
subu $8,$8,$8
ori $8,$8,1
SubTest5:
addu $22,$22,$8
beq $22,$20,EndTest5
ori $2,$3,148
andi $2,$2,60
mtlo $3
mthi $4
lw $0,32($0)
mtlo $3
ori $4,$2,4
ori $4,$2,24
mfhi $3
mfhi $3
div $2,$4
subu $2,$3,$4
mtlo $4
ori $2,$3,64
ori $2,$3,100
mfhi $1
mfhi $4
div $3,$2
andi $4,$3,12
sh $0,96($0)
lui $1,120
mult $3,$0
mflo $4
sltu $3,$2,$2
andi $0,$0,12
mtlo $1
ori $4,$4,100
ori $4,$4,148
addiu $1,$3,96
and $2,$3,$3
divu $4,$4
mtlo $1
sb $1,16($0)
mult $3,$4
beq $0,$4,SubTest5
mfhi $4
mfhi $1
subu $3,$1,$1
sltu $1,$3,$4
EndTest5:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
mfhi $1
jr $ra
sw $0,16($0)


Test6:
lb $1,-12288($31)
subu $28,$28,$28
subu $10,$10,$10
ori $10,$10,10
subu $5,$5,$5
ori $5,$5,1
SubTest6:
addu $28,$28,$5
bne $28,$10,EndTest6
ori $2,$3,104
ori $2,$3,72
and $0,$1,$0
and $4,$4,$1
div $3,$2
mult $1,$0
ori $4,$1,88
ori $4,$1,36
lh $2,64($0)
lh $0,96($0)
div $1,$4
mfhi $2
slt $0,$2,$3
andi $4,$2,16
andi $4,$1,32
sltu $1,$0,$2
sltu $2,$2,$4
addiu $4,$1,4
mult $1,$0
slt $1,$3,$1
multu $1,$0
beq $1,$0,SubTest6
mfhi $4
subu $4,$2,$3
bne $2,$2,SubTest6
mflo $4
and $0,$0,$1
subu $1,$0,$2
mfhi $3
subu $1,$1,$1
ori $1,$1,80
sh $2,-48($1)
addu $0,$3,$0
andi $4,$2,36
multu $4,$4
subu $1,$1,$2
subu $0,$0,$0
sh $2,16($0)
mult $3,$0
EndTest6:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
subu $4,$3,$1


Test7:
addu $1,$31,$3
subu $9,$9,$9
subu $29,$29,$29
ori $29,$29,10
subu $6,$6,$6
ori $6,$6,1
SubTest7:
addu $9,$9,$6
beq $9,$29,EndTest7
sltu $1,$2,$3
ori $3,$3,48
ori $3,$3,132
multu $1,$4
andi $4,$1,124
divu $3,$3
sw $4,32($0)
mflo $0
multu $1,$1
sltu $4,$0,$3
slt $0,$0,$2
ori $4,$2,32
ori $4,$2,160
ori $1,$3,52
sltu $1,$3,$3
divu $2,$4
ori $3,$2,60
ori $3,$2,80
multu $1,$1
ori $4,$0,60
divu $2,$3
subu $1,$2,$0
and $3,$4,$3
mult $0,$4
ori $1,$3,68
ori $1,$3,28
addu $0,$4,$2
addiu $4,$4,92
div $3,$1
sh $1,48($0)
mflo $4
ori $4,$2,112
ori $4,$2,72
multu $3,$1
or $1,$1,$3
divu $2,$4
andi $1,$4,156
or $2,$1,$1
beq $3,$0,SubTest7
lb $3,48($0)
mthi $1
mflo $2
subu $4,$2,$2
or $1,$2,$3
mult $3,$3
subu $3,$3,$3
sb $0,48($3)
and $3,$4,$1
EndTest7:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
addu $31,$0,$4
jr $ra
or $3,$0,$2


Test8:
and $2,$3,$31
subu $21,$21,$21
subu $8,$8,$8
ori $8,$8,10
subu $22,$22,$22
ori $22,$22,1
SubTest8:
addu $21,$21,$22
bne $21,$8,EndTest8
slt $4,$3,$4
multu $0,$4
ori $3,$4,8
ori $3,$4,56
and $2,$1,$1
or $0,$2,$0
divu $4,$3
multu $4,$0
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,0
sh $3,0($0)
ori $3,$3,80
lw $0,0($0)
sb $3,80($0)
subu $4,$0,$4
mthi $1
mflo $4
bne $4,$0,SubTest8
and $2,$3,$4
slt $0,$0,$4
or $0,$1,$0
addu $2,$0,$1
andi $1,$0,52
sltu $1,$0,$2
subu $1,$0,$4
lui $0,64
sltu $2,$3,$1
mthi $1
sw $4,112($0)
or $0,$1,$3
sw $2,16($0)
and $1,$4,$4
or $2,$2,$2
mflo $4
lui $0,44
ori $3,$1,144
ori $3,$1,32
sh $4,0($0)
multu $4,$0
divu $1,$3
EndTest8:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
addu $31,$0,$2
jr $ra
divu $4,$ra


Test9:
beq $4,$31,EndTest9
sw $3,112($0)
sltu $2,$3,$1
andi $0,$3,108
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,112
sh $3,0($0)
ori $3,$3,0
lh $0,0($0)
sb $3,112($0)
ori $4,$2,152
mthi $4
subu $4,$4,$4
ori $4,$4,48
sw $2,-16($4)
slt $4,$1,$1
sh $1,0($0)
slt $3,$1,$0
addu $3,$4,$4
subu $0,$1,$3
and $2,$2,$1
and $3,$4,$1
beq $1,$4,EndTest9
sltu $1,$3,$1
subu $1,$2,$0
ori $3,$0,48
or $4,$1,$4
bne $2,$4,EndTest9
mtlo $1
subu $1,$4,$4
multu $0,$3
sltu $1,$4,$4
mult $3,$0
subu $3,$4,$3
mflo $4
EndTest9:
subu $2,$2,$2
addu $3,$31,$2
addu $31,$31,$31
subu $31,$31,$3
jr $ra
div $2,$ra


Test10:
beq $4,$31,EndTest10
subu $17,$17,$17
subu $9,$9,$9
ori $9,$9,10
subu $20,$20,$20
ori $20,$20,1
SubTest10:
addu $17,$17,$20
beq $17,$9,EndTest10
mflo $4
ori $4,$2,88
ori $4,$2,116
or $0,$0,$1
or $3,$1,$0
div $2,$4
slt $0,$4,$4
mflo $3
andi $1,$4,64
sltu $4,$0,$4
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,8
ori $3,$0,36
divu $3,$2
mflo $1
sltu $4,$4,$4
lw $3,0($1)
ori $3,$3,52
ori $3,$3,116
slt $0,$2,$4
sh $1,48($0)
divu $3,$3
lui $2,124
mfhi $3
mfhi $3
beq $4,$0,SubTest10
mtlo $0
mult $2,$0
ori $1,$1,76
ori $1,$1,72
mthi $4
mthi $2
div $1,$1
sw $0,48($0)
multu $1,$2
ori $2,$4,148
ori $2,$4,116
mthi $1
mthi $0
div $4,$2
ori $2,$4,72
ori $2,$4,88
mfhi $1
multu $3,$1
divu $4,$2
mult $1,$4
multu $4,$1
ori $4,$4,88
ori $4,$4,136
mthi $1
subu $1,$2,$1
divu $4,$4
sltu $0,$1,$4
sltu $3,$1,$4
sb $0,64($0)
sltu $1,$4,$1
or $3,$0,$0
EndTest10:
subu $4,$4,$4
sw $31,156($4)
subu $31,$31,$31
lw $31,156($4)
jr $ra
lb $0,80($0)


Test11:
slt $4,$3,$31
addiu $1,$2,88
mtlo $0
subu $1,$1,$1
ori $1,$1,80
sh $4,-48($1)
subu $3,$3,$3
ori $3,$3,80
sb $3,-48($3)
mflo $4
multu $4,$3
sb $0,80($0)
sh $3,0($0)
subu $4,$4,$4
sw $0,80($4)
mtlo $4
addiu $0,$1,132
multu $2,$0
sltu $4,$3,$2
beq $3,$2,EndTest11
ori $1,$4,104
ori $1,$4,20
mfhi $2
mfhi $3
div $4,$1
mflo $4
mthi $1
mthi $0
beq $3,$2,EndTest11
sltu $0,$2,$1
mflo $1
multu $1,$2
mflo $3
ori $2,$0,100
subu $4,$4,$4
sb $2,16($4)
mfhi $1
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,0
sh $2,0($0)
ori $2,$2,48
lw $2,0($0)
sh $2,80($2)
EndTest11:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
ori $31,$3,0
jr $ra
addu $2,$0,$4


Test12:
beq $0,$31,EndTest12
lui $2,32
ori $4,$4,60
ori $4,$4,36
sw $1,64($0)
sw $1,80($0)
div $4,$4
or $2,$0,$1
multu $4,$4
ori $0,$2,72
subu $2,$2,$2
ori $2,$2,64
sw $1,-48($2)
subu $4,$4,$4
subu $3,$3,$3
ori $4,$0,7
ori $3,$0,32
divu $3,$4
mflo $2
lw $3,0($2)
mthi $0
ori $2,$4,116
ori $2,$4,128
lh $0,16($0)
lb $3,16($0)
div $4,$2
or $4,$3,$4
ori $4,$3,52
ori $4,$3,124
subu $0,$0,$2
subu $0,$1,$1
div $3,$4
and $1,$0,$2
ori $0,$1,76
mtlo $2
and $0,$0,$3
bne $3,$3,EndTest12
mfhi $0
subu $1,$1,$1
lh $4,24($1)
beq $0,$2,EndTest12
mthi $3
mfhi $3
ori $3,$3,32
ori $3,$3,160
lui $2,4
lui $1,156
div $3,$3
andi $2,$2,0
sw $0,96($0)
ori $2,$0,64
lui $2,0
lw $2,0($2)
bne $2,$0,EndTest12
lb $4,80($0)
subu $3,$3,$3
sw $4,80($3)
EndTest12:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
ori $31,$3,0
mflo $0
jr $ra
and $3,$1,$3


Test13:
mtlo $31
subu $12,$12,$12
subu $20,$20,$20
ori $20,$20,10
subu $9,$9,$9
ori $9,$9,1
SubTest13:
addu $12,$12,$9
beq $12,$20,EndTest13
sh $1,48($0)
mult $3,$3
and $4,$4,$2
subu $0,$2,$1
subu $1,$1,$1
sb $0,48($1)
ori $4,$1,40
ori $4,$1,112
and $2,$2,$3
and $2,$2,$2
div $1,$4
mtlo $4
or $2,$4,$0
multu $1,$4
mflo $1
mtlo $2
subu $1,$1,$1
lw $0,48($1)
sw $1,64($0)
multu $4,$1
andi $2,$1,36
mthi $4
lw $4,16($0)
addiu $0,$1,32
lui $3,12
slt $1,$0,$3
subu $3,$3,$3
addu $3,$0,$2
mflo $0
andi $4,$1,16
sltu $3,$1,$4
slt $0,$0,$1
EndTest13:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
sw $4,32($0)


End:
