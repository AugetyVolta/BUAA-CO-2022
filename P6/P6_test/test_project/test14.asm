ori $0, $0, 152
ori $1, $0, 156
ori $2, $0, 156
ori $3, $0, 80
ori $4, $0, 0
ori $5, $0, 100
ori $6, $0, 56
ori $7, $0, 140
ori $8, $0, 80
ori $9, $0, 100
ori $10, $0, 60
ori $11, $0, 60
ori $12, $0, 8
ori $13, $0, 124
ori $14, $0, 32
ori $15, $0, 156
ori $16, $0, 12
ori $17, $0, 132
ori $18, $0, 84
ori $19, $0, 68
ori $20, $0, 96
ori $21, $0, 56
ori $22, $0, 112
ori $23, $0, 16
ori $24, $0, 132
ori $25, $0, 84
ori $26, $0, 4
ori $27, $0, 60
ori $28, $0, 4
ori $29, $0, 12
ori $30, $0, 68
ori $31, $0, 4

sb $3,112($0)
mflo $3
jal Test_jal1
mult $31,$3
beq $0,$0,Test_beq1
addiu $3,$31,104
Test_jal1: jr $ra
Test_beq1:
ori $3,$0,80
lui $3,0
lh $2,44($3)
jal Test1
mthi $0
Back1:

subu $3,$3,$3
sw $3,64($3)
mfhi $4
jal Test_jal2
or $3,$1,$31
beq $0,$0,Test_beq2
addu $1,$31,$0
Test_jal2: jr $ra
Test_beq2:
subu $0,$3,$4
jal Test2
mult $3,$1
Back2:

ori $2,$0,56
mflo $1
jal Test_jal3
slt $0,$4,$31
beq $0,$0,Test_beq3
lw $2,-12288($31)
Test_jal3: jr $ra
Test_beq3:
addiu $4,$0,100
jal Test3
mtlo $2
Back3:

mtlo $0
slt $3,$2,$1
jal Test_jal4
addiu $4,$31,120
beq $0,$0,Test_beq4
or $4,$2,$31
Test_jal4: jr $ra
Test_beq4:
mfhi $3
jal Test4
mtlo $1
Back4:

sltu $2,$4,$0
and $3,$4,$2
jal Test_jal5
subu $0,$3,$31
beq $0,$0,Test_beq5
mtlo $31
Test_jal5: jr $ra
Test_beq5:
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,0
sw $4,0($0)
ori $4,$4,64
lw $1,0($0)
sw $4,112($1)
jal Test5
mtlo $3
Back5:

mthi $3
ori $3,$3,104
ori $3,$3,148
mthi $2
mthi $1
div $3,$3
mflo $3
jal Test6
mfhi $4
Back6:

mfhi $3
ori $3,$1,56
ori $3,$1,8
ori $4,$2,132
ori $4,$4,80
div $1,$3
jal Test_jal7
or $0,$3,$31
beq $0,$0,Test_beq7
sb $0,-12288($31)
Test_jal7: jr $ra
Test_beq7:
sltu $3,$1,$2
jal Test7
mthi $0
Back7:

lb $1,48($0)
multu $1,$3
jal Test_jal8
mult $31,$4
beq $0,$0,Test_beq8
sltu $2,$2,$31
Test_jal8: jr $ra
Test_beq8:
sltu $3,$4,$0
jal Test8
subu $1,$3,$1
Back8:

lui $1,148
lui $0,56
ori $3,$4,8
ori $3,$4,128
mtlo $0
mtlo $2
div $4,$3
jal Test9
mflo $4
Back9:

mthi $4
subu $1,$1,$1
ori $1,$1,112
sb $0,-16($1)
jal Test_jal10
sb $0,-12288($31)
beq $0,$0,Test_beq10
or $4,$1,$31
Test_jal10: jr $ra
Test_beq10:
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,12
sh $3,0($0)
lw $3,0($0)
lw $3,16($3)
sb $3,112($0)
jal Test10
andi $2,$4,0
Back10:

lw $2,48($0)
sb $2,0($0)
jal Test_jal11
sltu $3,$2,$31
beq $0,$0,Test_beq11
sb $2,-12288($31)
Test_jal11: jr $ra
Test_beq11:
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,64
sh $4,0($0)
ori $4,$4,16
lh $1,0($0)
sw $4,32($1)
jal Test11
ori $2,$4,52
ori $2,$4,56
mflo $1
mflo $3
div $4,$2
Back11:

sltu $4,$2,$3
or $3,$1,$4
jal Test_jal12
lw $2,-12288($31)
beq $0,$0,Test_beq12
sb $1,-12288($31)
Test_jal12: jr $ra
Test_beq12:
ori $2,$3,148
ori $2,$3,96
mfhi $4
lui $1,0
divu $3,$2
jal Test12
mtlo $3
Back12:

and $1,$2,$1
slt $2,$0,$1
jal Test_jal13
or $0,$0,$31
beq $0,$0,Test_beq13
mtlo $31
Test_jal13: jr $ra
Test_beq13:
and $2,$4,$3
jal Test13
sltu $2,$3,$2
jal End
andi $4,$1,20


Test1:
or $2,$3,$31
mtlo $2
addu $1,$1,$0
or $1,$3,$0
sltu $1,$0,$2
lui $1,48
mfhi $3
slt $0,$0,$3
ori $1,$3,108
subu $1,$0,$2
ori $1,$3,32
andi $1,$3,140
and $1,$3,$4
ori $4,$1,56
ori $4,$1,40
lh $0,48($0)
lh $2,112($0)
div $1,$4
lb $0,16($0)
bne $4,$1,EndTest1
lb $0,32($0)
mthi $1
lui $3,128
subu $0,$2,$1
sltu $0,$2,$0
sb $4,64($0)
mtlo $1
sltu $2,$4,$2
mtlo $0
and $0,$0,$2
lb $4,16($0)
EndTest1:
subu $4,$4,$4
sw $31,12($4)
subu $31,$31,$31
lw $31,12($4)
jr $ra
mthi $0


Test2:
sb $3,-12288($31)
subu $26,$26,$26
subu $20,$20,$20
ori $20,$20,10
subu $17,$17,$17
ori $17,$17,1
SubTest2:
addu $26,$26,$17
beq $26,$20,EndTest2
slt $2,$3,$1
addiu $2,$4,120
subu $1,$1,$1
ori $1,$1,80
sb $4,-32($1)
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,6
ori $3,$0,100
divu $3,$2
mflo $1
or $4,$4,$4
lh $3,0($1)
lb $3,64($0)
slt $3,$0,$2
subu $2,$0,$3
addu $2,$0,$4
bne $0,$4,SubTest2
slt $4,$1,$4
subu $0,$0,$1
mtlo $2
mtlo $3
and $4,$4,$1
slt $4,$3,$2
mtlo $2
sltu $0,$2,$3
addu $2,$2,$1
mfhi $2
subu $2,$2,$1
addiu $0,$1,124
subu $1,$1,$1
sh $0,48($1)
sltu $2,$1,$3
ori $2,$1,128
ori $1,$2,32
ori $1,$2,92
mthi $3
mthi $4
div $2,$1
sb $4,96($0)
mfhi $2
EndTest2:
subu $3,$3,$3
addu $4,$31,$3
addu $31,$31,$31
subu $31,$31,$4
lui $2,116
jr $ra
lw $4,96($0)


Test3:
lb $3,-12288($31)
lh $0,112($0)
andi $1,$4,48
ori $3,$3,152
ori $3,$3,96
mthi $1
mthi $2
div $3,$3
ori $2,$3,104
ori $2,$3,112
sltu $4,$1,$1
ori $1,$4,48
divu $3,$2
ori $3,$3,124
ori $3,$3,128
subu $2,$2,$2
subu $1,$4,$4
div $3,$3
mtlo $2
ori $2,$1,96
ori $2,$1,140
lui $4,124
lui $4,60
div $1,$2
mult $2,$3
subu $1,$1,$1
sw $3,64($1)
multu $4,$2
or $4,$4,$0
ori $4,$3,156
ori $4,$3,92
subu $0,$0,$1
subu $0,$1,$2
divu $3,$4
ori $4,$3,112
ori $4,$3,44
andi $1,$2,68
or $1,$1,$1
divu $3,$4
subu $0,$0,$0
sw $1,64($0)
ori $4,$3,128
ori $4,$3,96
sltu $2,$2,$2
mthi $2
divu $3,$4
multu $0,$4
ori $0,$2,28
sw $0,32($0)
slt $2,$3,$3
mtlo $4
slt $0,$2,$1
sw $2,112($0)
mult $1,$3
ori $3,$1,80
ori $3,$1,116
mthi $2
mthi $2
div $1,$3
ori $2,$4,32
ori $2,$4,16
ori $0,$3,128
ori $0,$3,92
div $4,$2
EndTest3:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
addu $31,$0,$3
jr $ra
divu $2,$ra


Test4:
bne $1,$31,EndTest4
mtlo $4
ori $1,$1,104
ori $1,$1,12
sh $3,64($0)
sltu $4,$2,$0
divu $1,$1
addu $2,$0,$1
and $0,$4,$3
and $4,$1,$3
lb $3,16($0)
mthi $2
andi $2,$4,84
and $4,$1,$0
mfhi $2
andi $2,$2,4
slt $4,$2,$4
sltu $2,$0,$2
slt $1,$4,$0
beq $1,$1,EndTest4
slt $1,$3,$4
ori $0,$4,68
sltu $2,$0,$1
or $3,$1,$0
or $3,$2,$1
ori $4,$3,68
ori $4,$3,112
multu $0,$2
mfhi $2
divu $3,$4
mthi $3
and $1,$4,$3
lb $2,0($0)
mflo $0
lui $1,96
EndTest4:
subu $2,$2,$2
sw $31,100($2)
subu $31,$31,$31
lw $31,100($2)
jr $ra
multu $2,$0


Test5:
subu $2,$3,$31
subu $8,$8,$8
subu $27,$27,$27
ori $27,$27,10
subu $24,$24,$24
ori $24,$24,1
SubTest5:
addu $8,$8,$24
bne $8,$27,EndTest5
and $4,$4,$1
andi $0,$1,152
mtlo $0
or $3,$2,$2
ori $2,$0,24
subu $2,$2,$2
sb $3,112($2)
mult $2,$1
multu $0,$0
lb $0,48($0)
lui $4,80
ori $4,$1,56
ori $4,$1,28
lb $2,32($0)
mflo $2
divu $1,$4
lh $4,16($0)
slt $4,$1,$1
and $2,$3,$0
sb $3,64($0)
slt $0,$1,$2
mfhi $2
mfhi $3
ori $2,$4,8
ori $2,$4,108
and $1,$3,$1
and $1,$1,$1
divu $4,$2
and $2,$3,$0
ori $1,$1,52
ori $1,$1,156
sh $4,0($0)
mthi $4
divu $1,$1
subu $2,$4,$0
lui $2,1
lb $4,-65463($2)
mthi $1
and $4,$1,$3
lui $2,72
lw $4,80($0)
EndTest5:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
ori $31,$3,0
jr $ra
slt $3,$0,$3


Test6:
or $4,$0,$31
ori $0,$4,116
mult $0,$0
mflo $4
ori $4,$0,92
mult $2,$3
mult $0,$4
subu $0,$3,$0
mult $2,$4
mflo $0
mtlo $4
slt $1,$3,$1
or $1,$3,$3
andi $1,$1,96
andi $0,$4,88
ori $2,$2,64
ori $2,$2,56
andi $0,$4,80
lui $3,108
divu $2,$2
mult $1,$1
ori $2,$2,144
ori $2,$2,64
slt $3,$1,$4
mfhi $1
divu $2,$2
lui $1,36
ori $2,$4,156
ori $2,$4,116
ori $3,$3,20
ori $3,$3,8
div $4,$2
beq $4,$3,EndTest6
ori $0,$2,60
subu $4,$4,$4
ori $4,$4,112
sw $2,-32($4)
slt $2,$1,$0
mflo $3
and $4,$0,$3
mtlo $3
EndTest6:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
ori $31,$2,0
mult $0,$0
jr $ra
slt $0,$0,$1


Test7:
addu $4,$31,$4
subu $9,$9,$9
subu $18,$18,$18
ori $18,$18,10
subu $15,$15,$15
ori $15,$15,1
SubTest7:
addu $9,$9,$15
bne $9,$18,EndTest7
mfhi $2
ori $1,$0,116
sw $4,0($0)
and $4,$0,$0
slt $2,$3,$3
lb $2,64($0)
sltu $2,$0,$1
subu $2,$1,$0
ori $1,$4,48
ori $1,$4,48
lb $2,48($0)
lui $2,28
divu $4,$1
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,0
sh $1,0($0)
ori $1,$1,112
lw $3,0($0)
sb $1,0($3)
andi $2,$4,36
mthi $3
beq $1,$1,SubTest7
ori $2,$2,24
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sb $4,0($0)
lw $3,0($0)
lb $4,48($3)
sh $4,112($0)
andi $2,$0,20
or $4,$3,$2
or $2,$3,$3
andi $2,$4,96
sb $4,16($0)
subu $4,$4,$4
subu $1,$1,$1
ori $4,$0,7
ori $1,$0,228
divu $1,$4
mfhi $3
slt $2,$2,$2
lb $1,0($3)
subu $4,$4,$4
sh $2,80($4)
ori $2,$3,60
subu $2,$2,$2
sh $4,64($2)
or $2,$2,$3
ori $3,$1,24
ori $3,$1,64
mthi $0
mthi $4
div $1,$3
lw $3,96($0)
EndTest7:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
jr $ra
sw $1,64($0)


Test8:
addiu $2,$31,36
addiu $1,$1,116
slt $1,$4,$4
ori $4,$0,116
mult $2,$2
mthi $0
subu $1,$1,$1
ori $1,$1,112
sb $3,-96($1)
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,96
sh $1,0($0)
ori $1,$1,48
lh $0,0($0)
sw $1,0($0)
beq $2,$1,EndTest8
and $4,$3,$2
mtlo $2
sh $4,96($0)
ori $1,$1,84
ori $1,$1,28
and $2,$0,$4
and $4,$0,$0
div $1,$1
subu $0,$4,$1
mfhi $2
addiu $2,$4,56
ori $3,$1,52
ori $3,$1,112
or $0,$0,$0
and $4,$2,$2
divu $1,$3
subu $1,$1,$0
multu $3,$0
mfhi $3
or $3,$2,$0
mflo $4
or $0,$1,$4
slt $1,$3,$4
multu $1,$4
subu $1,$0,$0
beq $0,$3,EndTest8
slt $3,$2,$0
EndTest8:
subu $4,$4,$4
addu $3,$31,$4
subu $31,$31,$31
ori $31,$3,0
jr $ra
multu $1,$3


Test9:
sh $4,-12288($31)
subu $10,$10,$10
subu $26,$26,$26
ori $26,$26,10
subu $6,$6,$6
ori $6,$6,1
SubTest9:
addu $10,$10,$6
bne $10,$26,EndTest9
lui $2,156
mflo $0
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,16
sw $3,0($0)
ori $3,$3,16
lh $2,0($0)
sw $3,112($2)
andi $1,$4,24
lui $2,112
mult $3,$1
mult $4,$2
multu $2,$1
mthi $3
andi $0,$3,24
mult $2,$2
sw $1,112($0)
mthi $2
ori $4,$2,148
sltu $3,$1,$3
ori $2,$2,36
ori $2,$2,20
multu $4,$0
multu $1,$0
div $2,$2
slt $3,$4,$2
and $4,$0,$3
mthi $3
andi $0,$1,36
and $2,$2,$3
subu $1,$1,$1
sb $3,96($1)
ori $4,$2,76
ori $4,$2,144
sltu $3,$1,$1
sltu $3,$1,$3
div $2,$4
lui $4,120
slt $2,$3,$3
slt $0,$3,$1
EndTest9:
subu $2,$2,$2
addu $3,$31,$2
addu $31,$31,$31
subu $31,$31,$3
jr $ra
mflo $3


Test10:
or $0,$3,$31
mult $4,$2
mfhi $4
ori $3,$3,52
ori $3,$3,104
sltu $4,$0,$1
multu $0,$4
divu $3,$3
lb $1,80($0)
multu $3,$0
ori $3,$3,64
lui $3,0
lh $2,52($3)
andi $3,$4,96
slt $4,$2,$0
subu $2,$2,$2
lb $4,26($2)
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,16
sw $3,0($0)
ori $3,$3,96
lh $3,0($0)
sb $3,16($3)
subu $3,$1,$3
sb $1,48($0)
beq $1,$2,EndTest10
andi $2,$1,128
ori $1,$3,28
ori $1,$3,68
lui $4,104
lui $2,156
div $3,$1
mult $3,$0
sltu $0,$2,$0
mtlo $0
subu $0,$0,$0
sb $3,112($0)
andi $3,$3,108
mthi $2
mtlo $4
and $0,$1,$1
sltu $4,$1,$3
addiu $0,$2,0
or $1,$1,$4
EndTest10:
subu $4,$4,$4
sw $31,132($4)
subu $31,$31,$31
lw $31,132($4)
jr $ra
slt $4,$3,$3


Test11:
beq $3,$31,EndTest11
or $2,$0,$2
mfhi $2
slt $1,$0,$3
slt $1,$2,$2
andi $4,$3,36
ori $2,$2,48
lui $0,84
subu $4,$4,$4
ori $4,$4,80
sb $2,-32($4)
ori $4,$1,88
ori $4,$1,68
lw $2,112($0)
ori $3,$2,48
divu $1,$4
ori $4,$2,128
ori $4,$2,52
multu $0,$1
multu $1,$0
div $2,$4
subu $2,$2,$2
lh $2,36($2)
sltu $2,$0,$0
mfhi $0
subu $4,$4,$4
sh $3,0($4)
subu $2,$2,$2
sb $0,112($2)
andi $4,$4,36
mflo $1
ori $3,$3,80
multu $4,$1
mthi $0
slt $1,$0,$2
slt $2,$3,$2
mflo $1
mflo $0
addiu $4,$3,48
EndTest11:
subu $2,$2,$2
addu $2,$31,$2
subu $31,$31,$31
addu $31,$0,$2
jr $ra
slt $3,$4,$1


Test12:
ori $4,$31,136
subu $26,$26,$26
subu $25,$25,$25
ori $25,$25,10
subu $17,$17,$17
ori $17,$17,1
SubTest12:
addu $26,$26,$17
beq $26,$25,EndTest12
subu $2,$0,$3
or $1,$3,$4
and $0,$1,$4
mthi $3
lb $1,80($0)
mult $0,$1
mfhi $1
multu $4,$2
subu $2,$2,$2
ori $2,$2,96
sb $3,-48($2)
slt $0,$0,$0
beq $0,$0,SubTest12
lui $4,48
lw $4,96($0)
sw $2,112($0)
addu $2,$3,$0
andi $2,$3,76
subu $4,$1,$1
sh $1,16($0)
ori $1,$3,4
or $2,$2,$0
ori $2,$3,128
ori $2,$3,116
sb $1,112($0)
lui $4,132
divu $3,$2
mtlo $0
bne $0,$1,SubTest12
mfhi $0
or $1,$3,$0
lh $0,80($0)
and $2,$3,$4
or $4,$4,$0
EndTest12:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
multu $4,$1


Test13:
bne $1,$31,EndTest13
mult $3,$0
andi $1,$2,100
ori $2,$1,144
ori $2,$1,24
mtlo $3
mtlo $0
div $1,$2
ori $2,$4,60
ori $2,$4,32
addiu $1,$0,80
multu $1,$3
divu $4,$2
mult $4,$4
lui $2,16
ori $1,$3,28
ori $3,$3,52
ori $3,$3,28
sb $0,96($0)
sltu $4,$2,$2
divu $3,$3
lui $3,52
mfhi $0
subu $3,$1,$0
mult $3,$0
addiu $0,$1,76
subu $3,$3,$3
sw $2,32($3)
andi $2,$3,140
sltu $0,$3,$2
andi $2,$4,108
addu $2,$4,$4
mfhi $1
ori $3,$2,96
ori $3,$2,148
addu $1,$0,$1
sltu $1,$0,$0
divu $2,$3
ori $2,$2,48
ori $2,$2,100
mflo $1
mflo $1
div $2,$2
slt $3,$4,$0
ori $1,$2,120
ori $1,$2,8
sltu $4,$3,$4
sltu $4,$3,$3
div $2,$1
slt $1,$1,$4
lui $2,132
EndTest13:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
ori $31,$4,0
ori $2,$3,32
ori $2,$3,96
sltu $4,$4,$4
mtlo $1
divu $3,$2
jr $ra
mfhi $1


End:
