ori $0, $0, 88
ori $1, $0, 4
ori $2, $0, 12
ori $3, $0, 68
ori $4, $0, 68
ori $5, $0, 16
ori $6, $0, 140
ori $7, $0, 84
ori $8, $0, 132
ori $9, $0, 152
ori $10, $0, 60
ori $11, $0, 16
ori $12, $0, 124
ori $13, $0, 88
ori $14, $0, 104
ori $15, $0, 8
ori $16, $0, 52
ori $17, $0, 108
ori $18, $0, 140
ori $19, $0, 76
ori $20, $0, 16
ori $21, $0, 60
ori $22, $0, 156
ori $23, $0, 76
ori $24, $0, 156
ori $25, $0, 156
ori $26, $0, 112
ori $27, $0, 88
ori $28, $0, 152
ori $29, $0, 120
ori $30, $0, 4
ori $31, $0, 52

subu $0,$0,$0
sw $4,112($0)
subu $3,$3,$3
sw $1,112($3)
jal Test_jal1
and $2,$1,$31
beq $0,$0,Test_beq1
lb $3,-12288($31)
Test_jal1: jr $ra
Test_beq1:
mult $1,$2
jal Test1
mtlo $2
Back1:

ori $2,$3,104
ori $2,$3,56
and $4,$1,$4
ori $1,$1,24
divu $3,$2
mult $3,$1
sw $0,96($0)
jal Test2
andi $0,$0,144
Back2:

ori $1,$2,108
andi $0,$2,80
jal Test_jal3
andi $4,$31,48
beq $0,$0,Test_beq3
mtlo $31
Test_jal3: jr $ra
Test_beq3:
subu $3,$3,$3
ori $3,$3,112
sw $2,-48($3)
jal Test3
sltu $4,$0,$0
Back3:

addiu $0,$3,148
subu $1,$1,$1
sw $4,16($1)
jal Test_jal4
sltu $4,$1,$31
beq $0,$0,Test_beq4
div $3,$31
Test_jal4: jr $ra
Test_beq4:
lui $4,16
jal Test4
lb $2,64($0)
Back4:

mfhi $2
mflo $3
jal Test_jal5
addu $1,$31,$4
beq $0,$0,Test_beq5
ori $2,$31,100
Test_jal5: jr $ra
Test_beq5:
slt $1,$4,$1
jal Test5
mthi $4
Back5:

mthi $2
mtlo $3
jal Test_jal6
sh $3,-12288($31)
beq $0,$0,Test_beq6
addu $3,$31,$4
Test_jal6: jr $ra
Test_beq6:
ori $4,$1,48
ori $4,$1,8
mfhi $3
mflo $2
divu $1,$4
jal Test6
subu $4,$0,$2
Back6:

multu $4,$3
mtlo $2
jal Test_jal7
lh $0,-12288($31)
beq $0,$0,Test_beq7
andi $0,$31,144
Test_jal7: jr $ra
Test_beq7:
subu $0,$0,$1
jal Test7
mult $3,$4
Back7:

slt $2,$0,$1
subu $4,$4,$4
sb $0,96($4)
jal Test_jal8
sb $1,-12288($31)
beq $0,$0,Test_beq8
and $2,$2,$31
Test_jal8: jr $ra
Test_beq8:
subu $3,$3,$3
ori $3,$3,64
lw $2,-48($3)
jal Test8
mult $4,$0
Back8:

sw $1,16($0)
ori $4,$1,32
ori $4,$1,100
mtlo $2
mfhi $3
divu $1,$4
addu $4,$1,$4
jal Test9
sb $0,16($0)
Back9:

subu $1,$1,$1
sw $3,80($1)
subu $0,$0,$2
jal Test_jal10
ori $3,$31,0
beq $0,$0,Test_beq10
slt $2,$3,$31
Test_jal10: jr $ra
Test_beq10:
lui $0,152
jal Test10
mult $2,$2
Back10:

slt $3,$4,$0
sltu $2,$0,$3
jal Test_jal11
lw $0,-12288($31)
beq $0,$0,Test_beq11
ori $4,$31,116
Test_jal11: jr $ra
Test_beq11:
sh $3,80($0)
jal Test11
addu $1,$0,$2
Back11:

ori $4,$4,92
ori $4,$4,60
sltu $2,$1,$1
slt $3,$2,$0
divu $4,$4
or $0,$2,$0
jal Test_jal12
mthi $31
beq $0,$0,Test_beq12
addu $3,$31,$3
Test_jal12: jr $ra
Test_beq12:
ori $2,$1,4
ori $2,$1,40
and $3,$3,$3
and $4,$3,$4
div $1,$2
jal Test12
lb $1,80($0)
Back12:

subu $4,$4,$4
subu $3,$3,$3
ori $4,$0,9
ori $3,$0,328
divu $3,$4
mfhi $2
addu $1,$1,$1
lw $3,0($2)
mtlo $4
or $2,$3,$4
jal Test13
mflo $2
jal End
andi $0,$4,20


Test1:
andi $0,$31,120
andi $4,$1,24
slt $1,$1,$4
mflo $1
lui $1,128
multu $3,$0
mfhi $3
lw $3,0($0)
and $4,$3,$0
beq $4,$0,EndTest1
sltu $1,$4,$3
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sh $0,0($0)
lb $1,0($0)
lh $0,32($1)
sw $0,112($0)
lui $4,92
lb $4,48($0)
sb $0,32($0)
sltu $4,$2,$1
ori $4,$3,60
ori $4,$3,84
slt $2,$2,$2
slt $2,$2,$1
div $3,$4
subu $2,$0,$1
lui $2,132
mult $2,$3
and $2,$1,$1
ori $1,$1,160
ori $1,$1,104
or $2,$2,$3
or $3,$4,$3
div $1,$1
multu $2,$1
mtlo $4
mult $4,$2
subu $1,$1,$1
ori $1,$1,112
sw $0,-112($1)
mult $3,$4
EndTest1:
subu $4,$4,$4
addu $3,$31,$4
addu $31,$31,$31
subu $31,$31,$3
jr $ra
and $0,$1,$3


Test2:
ori $0,$31,96
or $3,$0,$4
mult $0,$0
mflo $2
mthi $1
subu $0,$0,$0
sb $3,16($0)
ori $4,$2,144
ori $4,$2,148
mflo $0
mflo $0
div $2,$4
and $3,$0,$0
andi $1,$3,104
subu $3,$3,$3
ori $3,$3,48
lw $1,-32($3)
subu $3,$1,$2
lw $3,64($0)
slt $1,$0,$0
slt $4,$0,$4
and $0,$1,$4
lui $4,28
mtlo $1
or $0,$3,$3
mfhi $0
lb $2,0($0)
mfhi $2
and $2,$1,$0
lw $4,64($0)
addu $3,$3,$0
ori $2,$1,92
or $0,$1,$1
EndTest2:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
ori $3,$3,100
ori $3,$3,140
addiu $4,$2,152
and $0,$4,$2
divu $3,$3
jr $ra
divu $3,$ra


Test3:
or $1,$4,$31
ori $4,$3,108
addiu $0,$3,152
ori $2,$1,44
ori $2,$1,56
mthi $4
mthi $0
div $1,$2
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,0
sh $2,0($0)
ori $2,$2,96
lw $2,0($0)
sh $2,96($2)
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sb $4,0($0)
lh $4,0($0)
lh $4,96($4)
sw $4,16($0)
mthi $2
mfhi $1
subu $1,$1,$2
andi $0,$2,120
ori $1,$1,32
ori $1,$1,108
and $4,$4,$2
ori $4,$4,52
divu $1,$1
ori $3,$0,84
mflo $3
lui $3,124
andi $4,$0,84
and $2,$3,$4
mfhi $0
sh $2,112($0)
ori $3,$1,52
ori $3,$1,76
ori $2,$4,28
ori $2,$4,92
div $1,$3
lw $3,64($0)
addiu $0,$2,120
addiu $3,$0,152
mthi $0
sh $4,32($0)
lui $2,104
mflo $1
EndTest3:
subu $4,$4,$4
addu $3,$31,$4
addu $31,$31,$31
subu $31,$31,$3
jr $ra
multu $4,$4


Test4:
lw $0,-12288($31)
subu $11,$11,$11
subu $8,$8,$8
ori $8,$8,10
subu $30,$30,$30
ori $30,$30,1
SubTest4:
addu $11,$11,$30
bne $11,$8,EndTest4
subu $0,$4,$2
sh $2,32($0)
mtlo $3
mfhi $1
andi $2,$3,4
mult $1,$1
or $2,$3,$1
slt $3,$2,$2
mult $0,$4
mthi $0
or $3,$1,$2
andi $2,$3,40
ori $3,$1,128
ori $3,$1,92
mtlo $4
mtlo $2
div $1,$3
sh $3,64($0)
mfhi $1
lui $4,152
subu $0,$0,$0
sb $2,112($0)
subu $2,$2,$1
subu $1,$1,$1
ori $1,$1,112
lb $3,-63($1)
mflo $4
or $3,$0,$2
bne $3,$1,SubTest4
multu $4,$1
subu $0,$0,$0
sh $3,0($0)
slt $3,$0,$0
bne $2,$0,SubTest4
mfhi $1
lui $4,20
EndTest4:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
jr $ra
subu $2,$2,$1


Test5:
mtlo $31
or $2,$1,$4
ori $3,$2,116
ori $3,$2,12
subu $4,$1,$4
subu $1,$4,$0
div $2,$3
sltu $1,$0,$2
ori $4,$4,60
mfhi $2
multu $0,$3
lui $1,108
or $2,$0,$4
sb $4,48($0)
multu $3,$0
andi $3,$0,156
subu $4,$3,$3
ori $1,$0,100
multu $0,$1
multu $3,$3
andi $4,$1,96
multu $4,$4
ori $2,$2,96
lui $2,0
lw $4,72($2)
ori $3,$3,64
ori $3,$3,136
slt $4,$4,$4
and $4,$2,$2
divu $3,$3
lb $4,96($0)
mult $3,$0
lui $4,108
slt $0,$0,$1
mflo $4
multu $3,$4
EndTest5:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
mtlo $0


Test6:
lw $4,-12288($31)
ori $3,$1,16
ori $3,$1,112
lb $2,96($0)
andi $2,$2,24
divu $1,$3
lh $1,32($0)
ori $3,$2,96
lui $3,0
lb $4,92($3)
ori $4,$4,132
slt $1,$0,$3
mtlo $0
andi $1,$1,16
mthi $4
ori $4,$3,84
ori $4,$3,88
andi $1,$2,60
andi $1,$1,28
div $3,$4
mthi $1
subu $0,$3,$0
sb $3,96($0)
beq $4,$3,EndTest6
mtlo $3
subu $3,$3,$3
ori $3,$3,112
sh $0,-64($3)
or $4,$3,$4
sh $4,32($0)
sw $0,0($0)
subu $3,$3,$3
ori $3,$3,96
sb $3,0($0)
ori $3,$3,32
lw $2,0($0)
sb $3,48($2)
beq $3,$1,EndTest6
ori $3,$2,120
ori $3,$2,24
andi $1,$4,40
andi $1,$0,4
div $2,$3
ori $1,$2,136
ori $1,$2,84
sltu $3,$4,$3
sw $3,0($0)
divu $2,$1
mult $2,$4
mfhi $0
mthi $3
or $4,$1,$1
lb $3,16($0)
mflo $2
EndTest6:
subu $2,$2,$2
addu $4,$31,$2
addu $31,$31,$31
subu $31,$31,$4
jr $ra
mthi $1


Test7:
addiu $1,$31,84
subu $4,$4,$4
lh $0,18($4)
ori $4,$2,48
ori $4,$2,36
mult $1,$0
slt $1,$1,$3
divu $2,$4
and $3,$4,$3
sltu $3,$3,$4
addu $2,$1,$1
andi $1,$2,100
subu $0,$3,$0
mfhi $3
lui $0,64
ori $2,$1,128
ori $2,$1,112
mtlo $4
mtlo $0
div $1,$2
slt $3,$1,$1
lui $2,40
ori $3,$1,152
ori $3,$1,100
mfhi $4
subu $2,$2,$4
divu $1,$3
addiu $0,$3,32
sb $4,64($0)
slt $2,$0,$1
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,80
sh $2,0($0)
ori $2,$2,96
lb $2,0($0)
sb $2,48($2)
ori $2,$2,8
and $1,$3,$3
beq $0,$1,EndTest7
or $3,$2,$0
mfhi $4
mtlo $3
mflo $1
multu $2,$0
ori $4,$1,156
ori $4,$1,44
mflo $3
andi $3,$3,148
divu $1,$4
EndTest7:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
and $1,$0,$2
jr $ra
lui $2,136


Test8:
addiu $3,$31,148
ori $3,$3,68
ori $3,$3,72
mult $4,$2
mthi $1
divu $3,$3
mult $4,$2
addu $0,$2,$1
mthi $0
or $4,$2,$1
mflo $0
mtlo $2
mult $1,$2
mflo $2
beq $4,$2,EndTest8
andi $4,$4,48
andi $1,$4,68
multu $0,$0
mflo $0
bne $2,$3,EndTest8
mtlo $4
subu $0,$0,$0
sw $1,48($0)
lb $4,32($0)
ori $3,$4,160
ori $3,$4,136
mflo $1
andi $1,$2,112
divu $4,$3
mfhi $2
lb $2,96($0)
multu $1,$1
multu $3,$3
ori $3,$3,148
ori $3,$3,160
sw $0,16($0)
mflo $4
divu $3,$3
beq $3,$0,EndTest8
ori $1,$3,44
ori $1,$3,48
lh $2,48($0)
lui $4,128
divu $3,$1
sh $0,64($0)
ori $0,$2,16
EndTest8:
subu $2,$2,$2
sw $31,128($2)
subu $31,$31,$31
lw $31,128($2)
sltu $0,$2,$1
jr $ra
mflo $3


Test9:
bne $1,$31,EndTest9
subu $17,$17,$17
subu $30,$30,$30
ori $30,$30,10
subu $24,$24,$24
ori $24,$24,1
SubTest9:
addu $17,$17,$24
beq $17,$30,EndTest9
lui $0,76
subu $4,$1,$3
mult $2,$2
mult $1,$1
subu $4,$0,$2
mult $0,$0
subu $1,$1,$1
ori $1,$1,112
sb $4,-48($1)
ori $0,$2,48
mfhi $1
lw $3,0($0)
sltu $1,$0,$2
mult $1,$3
ori $3,$3,4
ori $3,$3,140
lh $1,80($0)
and $0,$1,$4
divu $3,$3
addiu $2,$1,68
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sw $0,0($0)
lw $3,0($0)
lh $0,32($3)
sb $0,32($0)
mtlo $3
ori $3,$1,88
mthi $1
beq $1,$4,SubTest9
sltu $0,$0,$0
subu $3,$3,$3
sb $4,16($3)
lw $4,48($0)
andi $3,$2,84
subu $2,$2,$2
lh $2,70($2)
or $0,$2,$1
multu $0,$2
ori $2,$4,120
ori $2,$4,4
lui $0,100
mtlo $1
divu $4,$2
EndTest9:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
jr $ra
div $4,$ra


Test10:
lb $1,-12288($31)
subu $27,$27,$27
subu $15,$15,$15
ori $15,$15,10
subu $5,$5,$5
ori $5,$5,1
SubTest10:
addu $27,$27,$5
beq $27,$15,EndTest10
sltu $1,$0,$1
mthi $4
addiu $2,$4,112
slt $0,$1,$2
mtlo $4
multu $0,$3
sltu $1,$0,$3
mult $2,$3
andi $3,$3,36
subu $4,$4,$4
ori $4,$4,48
sb $0,-32($4)
multu $4,$1
subu $2,$2,$2
ori $3,$4,52
ori $3,$4,28
mtlo $1
mtlo $2
div $4,$3
and $3,$4,$3
ori $1,$3,108
ori $1,$3,136
multu $0,$2
sltu $2,$2,$4
divu $3,$1
mflo $0
mfhi $3
subu $2,$2,$2
ori $2,$2,96
sh $3,0($2)
ori $4,$3,108
mfhi $0
addu $0,$3,$4
ori $3,$2,76
and $2,$2,$2
ori $4,$4,56
ori $4,$4,48
multu $0,$0
multu $1,$1
div $4,$4
subu $4,$3,$1
mult $1,$4
EndTest10:
subu $3,$3,$3
addu $4,$31,$3
addu $31,$31,$31
subu $31,$31,$4
jr $ra
div $0,$ra


Test11:
beq $0,$31,EndTest11
subu $13,$13,$13
subu $26,$26,$26
ori $26,$26,10
subu $23,$23,$23
ori $23,$23,1
SubTest11:
addu $13,$13,$23
beq $13,$26,EndTest11
ori $4,$3,20
ori $3,$3,80
ori $3,$3,8
mfhi $0
mfhi $2
div $3,$3
and $0,$2,$1
ori $3,$4,52
ori $3,$4,72
ori $1,$1,124
mthi $2
divu $4,$3
subu $4,$4,$4
ori $4,$4,80
sb $1,-16($4)
ori $0,$4,56
mthi $3
multu $0,$4
ori $3,$4,36
ori $3,$4,100
andi $2,$2,124
mult $1,$2
divu $4,$3
mfhi $0
mflo $4
multu $3,$1
addu $0,$3,$1
subu $0,$0,$0
sw $4,96($0)
mult $4,$4
sw $1,96($0)
and $3,$0,$0
lui $4,116
subu $3,$3,$3
sw $4,112($3)
mtlo $4
ori $3,$4,60
ori $3,$4,56
addu $0,$1,$1
addiu $0,$2,88
div $4,$3
sltu $1,$3,$3
sltu $4,$2,$1
mfhi $4
subu $1,$1,$1
sh $3,112($1)
lui $0,48
EndTest11:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
div $2,$ra


Test12:
slt $0,$0,$31
subu $10,$10,$10
subu $20,$20,$20
ori $20,$20,10
subu $12,$12,$12
ori $12,$12,1
SubTest12:
addu $10,$10,$12
beq $10,$20,EndTest12
lb $3,0($0)
lui $4,68
ori $3,$4,156
ori $3,$4,160
mfhi $1
mfhi $1
div $4,$3
andi $0,$3,92
ori $3,$1,60
ori $3,$1,88
slt $2,$0,$2
mthi $4
divu $1,$3
multu $2,$3
mflo $0
mfhi $1
addu $3,$0,$2
ori $4,$1,40
ori $4,$1,8
addiu $3,$2,100
and $3,$2,$2
divu $1,$4
lh $4,64($0)
mult $1,$4
mult $4,$0
and $1,$2,$3
mtlo $1
andi $3,$1,12
addiu $4,$3,8
mtlo $0
or $4,$3,$2
sltu $2,$1,$4
mult $2,$1
and $3,$3,$3
addu $0,$0,$3
ori $3,$4,80
ori $3,$4,24
mult $1,$2
ori $0,$1,120
divu $4,$3
mfhi $2
ori $2,$3,12
ori $2,$3,108
ori $0,$1,48
mthi $4
divu $3,$2
EndTest12:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
jr $ra
slt $2,$2,$4


Test13:
and $0,$0,$31
subu $11,$11,$11
subu $20,$20,$20
ori $20,$20,10
subu $26,$26,$26
ori $26,$26,1
SubTest13:
addu $11,$11,$26
bne $11,$20,EndTest13
lui $0,156
sltu $2,$1,$3
mtlo $2
sh $0,48($0)
addu $3,$1,$2
ori $4,$0,76
lw $2,16($0)
mtlo $0
slt $1,$1,$4
andi $1,$0,136
or $4,$3,$2
mthi $3
mthi $1
subu $2,$2,$2
sh $3,64($2)
ori $2,$1,32
sltu $1,$0,$3
mult $1,$0
lui $2,152
ori $3,$0,152
and $4,$2,$3
mfhi $0
subu $3,$2,$1
lui $3,1
lh $2,-65390($3)
ori $4,$4,60
ori $4,$4,12
mthi $2
mthi $0
div $4,$4
ori $4,$4,32
ori $4,$4,104
mtlo $3
mtlo $1
div $4,$4
and $3,$3,$4
lui $4,68
EndTest13:
subu $2,$2,$2
addu $2,$31,$2
addu $31,$31,$31
subu $31,$31,$2
jr $ra
addiu $1,$4,116


End:
