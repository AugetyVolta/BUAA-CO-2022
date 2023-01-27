ori $0, $0, 80
ori $1, $0, 40
ori $2, $0, 32
ori $3, $0, 120
ori $4, $0, 20
ori $5, $0, 68
ori $6, $0, 68
ori $7, $0, 104
ori $8, $0, 92
ori $9, $0, 96
ori $10, $0, 32
ori $11, $0, 152
ori $12, $0, 112
ori $13, $0, 148
ori $14, $0, 8
ori $15, $0, 88
ori $16, $0, 108
ori $17, $0, 152
ori $18, $0, 140
ori $19, $0, 40
ori $20, $0, 112
ori $21, $0, 84
ori $22, $0, 104
ori $23, $0, 64
ori $24, $0, 40
ori $25, $0, 124
ori $26, $0, 32
ori $27, $0, 4
ori $28, $0, 144
ori $29, $0, 4
ori $30, $0, 56
ori $31, $0, 128

lb $1,32($0)
lw $0,96($0)
jal Test_jal1
addu $1,$31,$2
beq $0,$0,Test_beq1
lb $0,-12288($31)
Test_jal1: jr $ra
Test_beq1:
lh $3,32($0)
jal Test1
subu $3,$3,$4
Back1:

mthi $3
or $1,$4,$0
jal Test_jal2
lw $0,-12288($31)
beq $0,$0,Test_beq2
addu $2,$31,$4
Test_jal2: jr $ra
Test_beq2:
addu $0,$1,$0
jal Test2
subu $0,$3,$3
Back2:

mthi $0
mflo $0
jal Test_jal3
sw $3,-12288($31)
beq $0,$0,Test_beq3
mtlo $31
Test_jal3: jr $ra
Test_beq3:
mflo $3
jal Test3
addu $3,$4,$0
Back3:

mult $0,$4
sw $0,96($0)
jal Test_jal4
sb $1,-12288($31)
beq $0,$0,Test_beq4
addu $1,$31,$2
Test_jal4: jr $ra
Test_beq4:
slt $4,$2,$4
jal Test4
ori $3,$3,44
ori $3,$3,60
subu $0,$1,$0
ori $2,$2,52
divu $3,$3
Back4:

and $4,$1,$0
addu $2,$4,$4
jal Test_jal5
sb $2,-12288($31)
beq $0,$0,Test_beq5
mtlo $31
Test_jal5: jr $ra
Test_beq5:
mflo $0
jal Test5
mult $1,$0
Back5:

andi $1,$1,92
mfhi $3
jal Test_jal6
mthi $31
beq $0,$0,Test_beq6
ori $1,$31,140
Test_jal6: jr $ra
Test_beq6:
mfhi $3
jal Test6
ori $1,$2,88
ori $1,$2,12
slt $4,$3,$4
slt $4,$3,$3
div $2,$1
Back6:

ori $4,$2,100
ori $4,$2,124
multu $0,$0
multu $1,$3
div $2,$4
lh $2,64($0)
jal Test_jal7
subu $4,$3,$31
beq $0,$0,Test_beq7
and $0,$4,$31
Test_jal7: jr $ra
Test_beq7:
subu $2,$2,$2
subu $3,$3,$3
ori $2,$0,7
ori $3,$0,256
divu $3,$2
mflo $4
lw $3,0($4)
jal Test7
mthi $2
Back7:

mthi $3
mtlo $0
sw $3,80($0)
jal Test8
ori $4,$2,84
ori $4,$2,56
subu $1,$1,$0
mtlo $3
divu $2,$4
Back8:

addu $3,$0,$3
mfhi $4
jal Test_jal9
sb $2,-12288($31)
beq $0,$0,Test_beq9
addiu $4,$31,156
Test_jal9: jr $ra
Test_beq9:
ori $4,$2,32
ori $4,$2,160
slt $0,$3,$0
slt $3,$3,$0
div $2,$4
jal Test9
lui $1,4
Back9:

mthi $0
mult $1,$3
jal Test_jal10
multu $31,$4
beq $0,$0,Test_beq10
addiu $1,$31,112
Test_jal10: jr $ra
Test_beq10:
ori $1,$2,148
ori $1,$2,140
addiu $4,$0,88
addu $0,$4,$0
div $2,$1
jal Test10
subu $2,$1,$0
Back10:

subu $0,$0,$1
lui $0,108
jal Test_jal11
or $0,$2,$31
beq $0,$0,Test_beq11
subu $3,$4,$31
Test_jal11: jr $ra
Test_beq11:
subu $3,$2,$4
jal Test11
ori $3,$3,16
ori $3,$3,40
or $2,$1,$0
mtlo $4
divu $3,$3
Back11:

lui $4,72
or $3,$1,$1
subu $0,$1,$0
jal Test12
mthi $2
Back12:

subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,7
ori $2,$0,284
divu $2,$4
mfhi $1
mtlo $3
lh $2,0($1)
lui $1,28
lh $3,0($0)
jal Test13
subu $2,$1,$1
jal End
sw $2,0($0)


Test1:
andi $4,$31,24
lui $4,76
mult $4,$0
mtlo $3
slt $1,$2,$4
mfhi $4
subu $3,$3,$3
sb $3,96($3)
sw $4,0($0)
mflo $3
mflo $2
mfhi $3
mflo $1
multu $1,$1
subu $2,$2,$2
sb $0,48($2)
or $4,$0,$2
ori $3,$4,112
lui $3,0
lw $3,140($3)
slt $4,$4,$3
slt $1,$3,$3
sltu $4,$4,$0
mtlo $0
multu $4,$0
multu $0,$2
subu $1,$4,$2
addiu $0,$3,60
bne $1,$1,EndTest1
mult $0,$4
mflo $4
EndTest1:
subu $4,$4,$4
addu $2,$31,$4
subu $31,$31,$31
addu $31,$0,$2
jr $ra
multu $2,$1


Test2:
or $3,$3,$31
subu $2,$4,$0
mflo $4
ori $4,$4,76
ori $3,$1,144
ori $3,$1,96
lui $4,72
lui $4,76
div $1,$3
or $3,$0,$2
sltu $0,$1,$1
mflo $4
ori $3,$2,88
ori $3,$2,68
lui $1,52
and $4,$4,$1
divu $2,$3
subu $3,$0,$4
ori $2,$2,28
ori $2,$2,76
andi $4,$3,12
subu $3,$3,$4
divu $2,$2
andi $0,$2,52
subu $0,$0,$0
lh $1,64($0)
addiu $3,$4,56
mult $4,$1
mult $3,$3
ori $1,$2,16
ori $1,$2,40
ori $0,$0,148
addiu $3,$0,144
divu $2,$1
lui $2,76
addiu $3,$0,124
mfhi $3
lui $4,4
mfhi $2
or $0,$4,$3
lw $2,96($0)
lw $2,80($0)
slt $0,$1,$4
EndTest2:
subu $4,$4,$4
sw $31,136($4)
subu $31,$31,$31
lw $31,136($4)
jr $ra
mflo $2


Test3:
and $1,$2,$31
slt $0,$1,$2
lui $2,24
mfhi $0
subu $3,$2,$4
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lb $4,0($0)
lw $2,80($4)
sw $2,48($0)
lb $2,80($0)
mflo $3
and $1,$0,$4
mult $3,$4
sltu $1,$1,$2
mfhi $1
multu $3,$0
lb $4,64($0)
mtlo $2
mfhi $2
sb $1,112($0)
or $0,$2,$4
mflo $4
and $4,$0,$0
subu $1,$1,$1
ori $1,$1,64
sh $0,-16($1)
subu $4,$4,$4
sltu $2,$1,$3
slt $4,$4,$2
mthi $3
ori $4,$1,20
ori $4,$1,88
sw $3,96($0)
mult $0,$3
divu $1,$4
EndTest3:
subu $3,$3,$3
sw $31,32($3)
subu $31,$31,$31
lw $31,32($3)
jr $ra
lb $1,32($0)


Test4:
addu $1,$31,$4
subu $27,$27,$27
subu $5,$5,$5
ori $5,$5,10
subu $20,$20,$20
ori $20,$20,1
SubTest4:
addu $27,$27,$20
beq $27,$5,EndTest4
sw $4,64($0)
mult $1,$0
mthi $2
sb $2,96($0)
slt $4,$0,$3
subu $4,$4,$1
or $4,$4,$0
mfhi $1
lui $2,36
addiu $2,$4,88
subu $3,$3,$3
ori $3,$3,96
sw $1,-48($3)
mflo $2
andi $2,$1,28
or $1,$1,$1
sw $3,96($0)
mtlo $0
sb $4,32($0)
multu $4,$2
mfhi $3
sltu $0,$3,$1
beq $3,$0,SubTest4
ori $4,$2,92
ori $4,$2,144
multu $3,$1
sb $1,96($0)
divu $2,$4
slt $1,$4,$3
and $2,$2,$0
multu $1,$0
ori $2,$3,148
ori $2,$3,20
mfhi $0
mfhi $1
div $3,$2
lh $4,0($0)
EndTest4:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
jr $ra
sh $1,32($0)


Test5:
lh $1,-12288($31)
subu $13,$13,$13
subu $28,$28,$28
ori $28,$28,10
subu $21,$21,$21
ori $21,$21,1
SubTest5:
addu $13,$13,$21
bne $13,$28,EndTest5
ori $2,$0,44
subu $0,$0,$0
lb $3,64($0)
lui $4,60
mult $0,$1
subu $1,$1,$1
ori $1,$1,48
sw $4,0($1)
slt $4,$2,$0
subu $2,$2,$2
sw $0,64($2)
subu $1,$1,$1
ori $1,$1,80
sb $1,-64($1)
addiu $4,$0,12
subu $3,$1,$1
sb $1,16($0)
ori $0,$4,28
lw $2,32($0)
subu $1,$4,$2
mflo $4
sb $2,0($0)
lui $0,136
sw $4,48($0)
and $0,$2,$0
ori $2,$1,132
ori $2,$1,156
or $3,$0,$3
mfhi $4
divu $1,$2
mtlo $2
slt $2,$2,$1
mflo $2
mthi $4
subu $0,$3,$4
EndTest5:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
or $1,$2,$0
jr $ra
mthi $2


Test6:
addu $3,$31,$0
subu $24,$24,$24
subu $5,$5,$5
ori $5,$5,10
subu $7,$7,$7
ori $7,$7,1
SubTest6:
addu $24,$24,$7
beq $24,$5,EndTest6
lh $4,0($0)
multu $4,$4
mtlo $0
mfhi $3
mtlo $1
subu $3,$3,$3
ori $3,$3,64
lh $1,2($3)
multu $2,$2
ori $4,$3,140
ori $4,$3,128
andi $2,$2,124
mthi $1
divu $3,$4
slt $3,$3,$2
ori $1,$2,140
ori $1,$2,64
ori $4,$0,72
mthi $3
divu $2,$1
multu $3,$3
andi $2,$0,44
ori $4,$4,0
mfhi $1
multu $1,$0
mflo $2
sltu $4,$0,$1
or $0,$0,$1
subu $1,$1,$1
ori $1,$1,64
sw $2,-32($1)
andi $3,$0,88
slt $4,$4,$0
and $2,$1,$2
mult $2,$3
andi $3,$0,40
multu $3,$3
or $3,$2,$3
EndTest6:
subu $4,$4,$4
sw $31,48($4)
subu $31,$31,$31
lw $31,48($4)
ori $1,$4,100
ori $1,$4,128
mtlo $0
mtlo $0
div $4,$1
jr $ra
multu $4,$1


Test7:
mthi $31
subu $22,$22,$22
subu $20,$20,$20
ori $20,$20,10
subu $8,$8,$8
ori $8,$8,1
SubTest7:
addu $22,$22,$8
bne $22,$20,EndTest7
ori $3,$1,132
ori $3,$1,112
mult $2,$0
slt $4,$4,$0
divu $1,$3
mfhi $1
andi $1,$3,56
lw $2,16($0)
slt $2,$4,$3
mthi $4
or $0,$2,$2
slt $2,$3,$3
mult $2,$1
mfhi $1
mtlo $0
sh $4,112($0)
multu $4,$4
sb $1,32($0)
and $2,$3,$1
mflo $4
mult $2,$1
multu $2,$3
subu $1,$2,$4
subu $3,$2,$0
addiu $3,$0,140
mthi $0
ori $1,$2,80
ori $1,$2,108
subu $4,$3,$3
subu $4,$3,$4
div $2,$1
multu $2,$2
ori $4,$4,80
lui $4,0
lb $4,8($4)
lb $0,16($0)
EndTest7:
subu $3,$3,$3
sw $31,72($3)
subu $31,$31,$31
lw $31,72($3)
jr $ra
andi $3,$4,8


Test8:
sb $3,-12288($31)
subu $19,$19,$19
subu $18,$18,$18
ori $18,$18,10
subu $12,$12,$12
ori $12,$12,1
SubTest8:
addu $19,$19,$12
bne $19,$18,EndTest8
mtlo $2
subu $4,$0,$0
sltu $2,$4,$2
ori $1,$1,152
ori $1,$1,120
andi $0,$0,28
andi $3,$2,104
div $1,$1
ori $2,$2,112
ori $4,$3,44
ori $4,$3,24
subu $0,$1,$0
subu $0,$1,$0
divu $3,$4
sb $1,64($0)
mult $4,$1
sltu $0,$2,$2
slt $0,$2,$2
mult $3,$1
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,96
sw $4,0($0)
ori $4,$4,64
lb $1,0($0)
sw $4,96($1)
subu $1,$3,$3
mtlo $0
slt $2,$0,$3
slt $4,$4,$0
bne $3,$4,SubTest8
sw $1,112($0)
ori $3,$1,68
ori $3,$1,60
or $4,$4,$2
or $4,$2,$2
div $1,$3
ori $2,$4,156
ori $2,$4,72
sh $1,112($0)
or $3,$3,$3
divu $4,$2
lui $1,112
subu $1,$3,$2
bne $0,$2,SubTest8
mtlo $2
and $2,$1,$2
ori $4,$2,44
ori $4,$2,36
slt $3,$1,$3
lw $3,16($0)
divu $2,$4
beq $0,$2,SubTest8
mflo $0
subu $1,$0,$0
EndTest8:
mtlo $31
mthi $31
subu $31,$31,$31
mfhi $31
multu $2,$0
jr $ra
multu $2,$3


Test9:
addu $2,$31,$3
subu $30,$30,$30
subu $12,$12,$12
ori $12,$12,10
subu $23,$23,$23
ori $23,$23,1
SubTest9:
addu $30,$30,$23
beq $30,$12,EndTest9
andi $4,$1,56
mtlo $3
andi $3,$3,96
lw $2,64($0)
mthi $3
lb $0,80($0)
and $1,$0,$2
mflo $1
or $2,$0,$2
ori $1,$1,100
ori $1,$1,36
sltu $3,$2,$3
sltu $3,$3,$3
div $1,$1
mult $3,$4
multu $4,$0
mthi $4
addu $3,$2,$2
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,96
sw $0,0($0)
ori $0,$0,64
lw $4,0($0)
sh $0,48($4)
ori $2,$2,24
subu $3,$3,$3
sh $1,64($3)
mtlo $0
and $0,$0,$1
slt $0,$3,$3
subu $4,$4,$4
lw $1,32($4)
lb $4,64($0)
and $1,$0,$0
sltu $3,$4,$2
sb $3,32($0)
ori $3,$4,76
ori $3,$4,104
mthi $2
mult $2,$1
divu $4,$3
EndTest9:
subu $3,$3,$3
sw $31,48($3)
subu $31,$31,$31
lw $31,48($3)
jr $ra
mtlo $2


Test10:
multu $31,$0
subu $19,$19,$19
subu $6,$6,$6
ori $6,$6,10
subu $7,$7,$7
ori $7,$7,1
SubTest10:
addu $19,$19,$7
bne $19,$6,EndTest10
subu $0,$3,$2
andi $4,$3,104
lui $4,148
subu $4,$4,$4
sh $0,112($4)
andi $3,$4,60
andi $2,$0,52
mtlo $2
ori $1,$2,100
mfhi $0
beq $2,$1,SubTest10
lui $1,140
or $3,$3,$2
ori $2,$1,36
ori $2,$1,24
and $0,$3,$0
and $3,$0,$3
div $1,$2
mtlo $4
sltu $4,$4,$1
andi $2,$1,156
ori $1,$1,92
ori $1,$1,136
or $3,$3,$3
subu $4,$3,$4
divu $1,$1
lb $3,16($0)
ori $3,$2,136
beq $2,$0,SubTest10
mult $3,$4
ori $1,$2,80
subu $2,$2,$2
subu $4,$4,$4
ori $2,$0,5
ori $4,$0,44
divu $4,$2
mflo $3
mult $1,$1
lh $4,0($3)
mfhi $4
subu $2,$2,$2
sw $3,32($2)
mflo $3
lw $2,48($0)
subu $2,$0,$2
EndTest10:
subu $4,$4,$4
sw $31,128($4)
subu $31,$31,$31
lw $31,128($4)
and $2,$0,$2
jr $ra
mthi $3


Test11:
sw $1,-12288($31)
subu $27,$27,$27
subu $13,$13,$13
ori $13,$13,10
subu $10,$10,$10
ori $10,$10,1
SubTest11:
addu $27,$27,$10
beq $27,$13,EndTest11
multu $0,$4
ori $3,$3,116
ori $3,$3,40
mtlo $1
andi $2,$2,44
divu $3,$3
or $2,$3,$1
subu $1,$3,$0
sltu $0,$2,$1
sb $3,64($0)
subu $2,$2,$2
ori $2,$2,112
lb $2,-47($2)
subu $1,$1,$1
sw $1,64($1)
ori $2,$3,112
ori $2,$3,100
mult $1,$4
mtlo $1
divu $3,$2
or $3,$2,$4
addiu $3,$2,104
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,16
sb $4,0($0)
ori $4,$4,32
lh $1,0($0)
sb $4,48($1)
lui $2,120
lh $3,96($0)
mtlo $2
mult $1,$0
mfhi $2
mflo $3
ori $4,$1,144
ori $4,$1,132
mfhi $0
mfhi $3
div $1,$4
subu $2,$2,$2
ori $2,$2,80
sb $3,-16($2)
sb $4,80($0)
subu $2,$3,$1
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sb $2,0($0)
lh $2,0($0)
lw $2,16($2)
sb $2,64($0)
bne $2,$1,SubTest11
mthi $0
mthi $2
andi $3,$4,40
EndTest11:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
addu $31,$0,$2
jr $ra
sltu $4,$0,$0


Test12:
div $1,$31
mult $2,$4
ori $0,$0,28
multu $0,$3
ori $2,$3,0
lui $2,0
lb $4,148($2)
sltu $1,$4,$3
mthi $0
multu $0,$4
ori $0,$1,156
andi $2,$4,104
mult $4,$0
sb $0,16($0)
ori $1,$3,52
ori $1,$3,8
ori $4,$4,152
addu $4,$4,$4
divu $3,$1
mtlo $1
lb $1,96($0)
andi $2,$3,28
ori $1,$2,36
andi $0,$4,124
and $1,$2,$2
andi $2,$1,100
andi $4,$3,60
ori $4,$1,16
lui $4,80
subu $2,$2,$1
ori $1,$1,68
ori $1,$1,76
ori $3,$2,116
sltu $2,$3,$2
divu $1,$1
mtlo $1
EndTest12:
subu $3,$3,$3
addu $4,$31,$3
addu $31,$31,$31
subu $31,$31,$4
jr $ra
slt $2,$4,$4


Test13:
mtlo $31
subu $26,$26,$26
subu $17,$17,$17
ori $17,$17,10
subu $27,$27,$27
ori $27,$27,1
SubTest13:
addu $26,$26,$27
beq $26,$17,EndTest13
subu $1,$2,$2
addu $0,$3,$0
subu $4,$4,$4
subu $1,$1,$1
ori $4,$0,8
ori $1,$0,164
divu $1,$4
mfhi $2
sltu $3,$3,$3
lw $1,0($2)
lh $3,16($0)
mthi $1
mthi $3
mtlo $2
or $1,$1,$1
mult $1,$3
mthi $4
multu $4,$2
subu $3,$3,$3
lw $4,32($3)
bne $3,$0,SubTest13
multu $2,$1
ori $2,$3,60
mfhi $0
subu $1,$1,$1
ori $1,$1,64
lh $0,-62($1)
slt $1,$3,$4
beq $2,$0,SubTest13
and $4,$1,$0
slt $3,$1,$2
or $1,$1,$0
mflo $2
or $0,$2,$3
ori $3,$4,108
ori $3,$4,12
mflo $1
mflo $1
div $4,$3
subu $2,$2,$2
sh $1,96($2)
addiu $2,$1,52
mflo $2
EndTest13:
mtlo $31
mthi $31
subu $31,$31,$31
mflo $31
jr $ra
lui $2,96


End:
