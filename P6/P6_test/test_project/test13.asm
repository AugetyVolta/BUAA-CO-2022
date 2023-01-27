ori $0, $0, 76
ori $1, $0, 152
ori $2, $0, 156
ori $3, $0, 52
ori $4, $0, 108
ori $5, $0, 60
ori $6, $0, 136
ori $7, $0, 56
ori $8, $0, 8
ori $9, $0, 20
ori $10, $0, 4
ori $11, $0, 96
ori $12, $0, 120
ori $13, $0, 16
ori $14, $0, 120
ori $15, $0, 4
ori $16, $0, 156
ori $17, $0, 32
ori $18, $0, 40
ori $19, $0, 100
ori $20, $0, 64
ori $21, $0, 140
ori $22, $0, 120
ori $23, $0, 36
ori $24, $0, 128
ori $25, $0, 44
ori $26, $0, 144
ori $27, $0, 156
ori $28, $0, 144
ori $29, $0, 68
ori $30, $0, 28
ori $31, $0, 16

mtlo $0
mtlo $0
jal Test_jal1
sltu $1,$2,$31
beq $0,$0,Test_beq1
ori $3,$31,68
Test_jal1: jr $ra
Test_beq1:
ori $4,$1,116
ori $4,$1,80
addiu $0,$2,144
addiu $2,$2,52
div $1,$4
jal Test1
mult $3,$4
Back1:

ori $2,$2,140
ori $1,$4,16
ori $1,$4,12
sb $0,16($0)
lui $3,104
divu $4,$1
jal Test_jal2
addiu $0,$31,8
beq $0,$0,Test_beq2
andi $2,$31,0
Test_jal2: jr $ra
Test_beq2:
andi $3,$3,116
jal Test2
sltu $1,$3,$1
Back2:

slt $4,$1,$3
mtlo $4
jal Test_jal3
mult $31,$4
beq $0,$0,Test_beq3
lb $2,-12288($31)
Test_jal3: jr $ra
Test_beq3:
and $1,$3,$4
jal Test3
lw $0,16($0)
Back3:

mflo $3
or $1,$4,$0
subu $3,$3,$3
sb $4,48($3)
jal Test4
slt $4,$2,$2
Back4:

mthi $2
multu $3,$1
jal Test_jal5
mthi $31
beq $0,$0,Test_beq5
sw $4,-12288($31)
Test_jal5: jr $ra
Test_beq5:
ori $2,$0,12
jal Test5
addiu $4,$0,88
Back5:

ori $1,$4,92
ori $1,$4,4
addiu $3,$2,152
addiu $2,$3,48
div $4,$1
subu $4,$3,$1
jal Test_jal6
slt $1,$0,$31
beq $0,$0,Test_beq6
ori $4,$31,48
Test_jal6: jr $ra
Test_beq6:
subu $0,$0,$0
lh $1,0($0)
jal Test6
ori $3,$4,108
ori $3,$4,28
sb $0,32($0)
subu $2,$0,$2
divu $4,$3
Back6:

mfhi $2
mthi $0
jal Test_jal7
or $4,$0,$31
beq $0,$0,Test_beq7
multu $31,$2
Test_jal7: jr $ra
Test_beq7:
sltu $3,$0,$2
jal Test7
ori $4,$1,36
Back7:

lw $1,16($0)
subu $1,$2,$2
jal Test_jal8
and $0,$0,$31
beq $0,$0,Test_beq8
ori $3,$31,20
Test_jal8: jr $ra
Test_beq8:
subu $1,$1,$1
ori $1,$1,64
lw $2,-48($1)
jal Test8
sh $4,0($0)
Back8:

lw $3,80($0)
mult $1,$4
jal Test_jal9
or $2,$0,$31
beq $0,$0,Test_beq9
slt $4,$0,$31
Test_jal9: jr $ra
Test_beq9:
or $4,$2,$4
jal Test9
and $1,$1,$4
Back9:

multu $4,$4
slt $2,$3,$2
jal Test_jal10
mthi $31
beq $0,$0,Test_beq10
sltu $0,$4,$31
Test_jal10: jr $ra
Test_beq10:
lui $2,120
jal Test10
sw $4,96($0)
Back10:

and $0,$4,$0
mthi $4
jal Test_jal11
slt $0,$4,$31
beq $0,$0,Test_beq11
addu $4,$31,$3
Test_jal11: jr $ra
Test_beq11:
sw $2,0($0)
jal Test11
mflo $3
Back11:

and $2,$2,$4
ori $1,$1,32
ori $1,$1,56
or $3,$3,$0
andi $2,$0,72
divu $1,$1
jal Test_jal12
ori $4,$31,60
beq $0,$0,Test_beq12
div $1,$31
Test_jal12: jr $ra
Test_beq12:
subu $4,$4,$4
subu $1,$1,$1
ori $4,$0,9
ori $1,$0,148
divu $1,$4
mfhi $0
mthi $2
lw $1,0($0)
jal Test12
ori $4,$4,148
ori $4,$4,140
sb $3,0($0)
sltu $2,$0,$2
divu $4,$4
Back12:

slt $0,$3,$2
subu $1,$4,$4
mthi $1
jal Test13
lh $3,0($0)
jal End
multu $1,$3


Test1:
or $2,$4,$31
subu $10,$10,$10
subu $18,$18,$18
ori $18,$18,10
subu $9,$9,$9
ori $9,$9,1
SubTest1:
addu $10,$10,$9
bne $10,$18,EndTest1
slt $2,$0,$4
multu $1,$0
or $1,$0,$3
sltu $3,$4,$4
ori $4,$3,44
ori $4,$3,4
mflo $2
sb $0,0($0)
divu $3,$4
andi $3,$4,100
sw $3,112($0)
mflo $1
subu $3,$3,$3
sw $3,48($3)
ori $3,$2,44
ori $3,$2,88
multu $4,$1
multu $0,$0
div $2,$3
andi $4,$1,152
lui $4,148
mtlo $4
sltu $3,$2,$3
andi $4,$1,96
subu $0,$1,$0
mtlo $3
mthi $4
mfhi $1
lw $1,0($0)
and $2,$1,$2
or $3,$0,$1
subu $2,$2,$2
addiu $2,$4,76
and $1,$0,$3
multu $1,$2
EndTest1:
subu $4,$4,$4
addu $2,$31,$4
addu $31,$31,$31
subu $31,$31,$2
jr $ra
mfhi $3


Test2:
subu $2,$0,$31
mult $2,$2
ori $4,$1,16
ori $4,$1,12
lw $2,80($0)
lb $2,0($0)
div $1,$4
sw $1,80($0)
or $2,$4,$3
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,12
sw $1,0($0)
lw $4,0($0)
lw $1,64($4)
sw $1,48($0)
ori $4,$2,56
ori $4,$2,36
multu $1,$3
multu $3,$3
div $2,$4
ori $3,$3,8
ori $3,$3,12
lb $0,96($0)
and $2,$2,$1
divu $3,$3
addiu $0,$3,96
subu $4,$4,$3
ori $3,$3,80
ori $3,$3,80
mtlo $1
addiu $4,$4,20
divu $3,$3
ori $1,$4,124
bne $2,$4,EndTest2
mtlo $4
mthi $3
or $2,$0,$3
ori $2,$2,12
ori $2,$2,16
mthi $3
or $4,$1,$3
divu $2,$2
lw $3,0($0)
lui $4,48
subu $4,$4,$4
subu $2,$2,$2
ori $4,$0,7
ori $2,$0,144
divu $2,$4
mfhi $3
lh $2,0($3)
multu $1,$1
subu $2,$2,$2
ori $2,$2,112
sh $0,-64($2)
mtlo $2
mtlo $0
sb $0,0($0)
multu $3,$1
mult $0,$4
EndTest2:
subu $2,$2,$2
addu $3,$31,$2
subu $31,$31,$31
addu $31,$0,$3
mflo $0
jr $ra
sltu $4,$4,$0


Test3:
and $0,$0,$31
subu $15,$15,$15
subu $18,$18,$18
ori $18,$18,10
subu $30,$30,$30
ori $30,$30,1
SubTest3:
addu $15,$15,$30
beq $15,$18,EndTest3
and $2,$4,$1
sltu $4,$3,$1
addiu $0,$4,72
mthi $4
mtlo $1
subu $3,$0,$1
mfhi $0
mult $1,$3
mflo $3
ori $3,$2,60
ori $3,$2,92
lb $4,112($0)
slt $4,$4,$1
divu $2,$3
mflo $0
slt $1,$2,$2
addu $1,$1,$3
sltu $4,$1,$3
lw $0,16($0)
mthi $1
ori $4,$4,28
ori $4,$4,136
ori $1,$2,136
multu $2,$2
divu $4,$4
slt $1,$0,$4
subu $1,$1,$1
ori $1,$1,80
sw $1,-64($1)
mthi $0
subu $1,$1,$0
lui $0,148
sw $0,0($0)
subu $2,$2,$2
ori $2,$2,12
sh $2,0($0)
lh $4,0($0)
lh $2,16($4)
sh $2,0($0)
sltu $0,$3,$4
bne $4,$2,SubTest3
mthi $3
sh $0,96($0)
EndTest3:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
jr $ra
mflo $2


Test4:
addu $0,$31,$2
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sw $4,0($0)
lh $0,0($0)
lh $4,48($0)
sw $4,80($0)
addiu $4,$4,128
lw $3,96($0)
andi $4,$2,0
mtlo $3
and $4,$4,$1
ori $3,$1,120
ori $3,$1,104
and $4,$2,$4
and $2,$4,$4
div $1,$3
andi $2,$0,124
ori $4,$1,28
ori $4,$2,72
ori $4,$2,120
mthi $1
mtlo $3
divu $2,$4
ori $0,$4,72
subu $4,$2,$0
slt $3,$1,$0
sb $2,16($0)
andi $2,$2,104
ori $2,$3,80
ori $2,$3,32
mfhi $4
mfhi $4
div $3,$2
sw $0,16($0)
lw $2,32($0)
subu $0,$0,$0
sb $4,64($0)
multu $3,$2
sw $0,0($0)
subu $0,$0,$0
ori $0,$0,12
sb $0,0($0)
lh $3,0($0)
lh $0,0($3)
sb $0,64($0)
beq $0,$4,EndTest4
sb $0,0($0)
subu $3,$1,$3
mult $2,$4
addiu $1,$1,108
EndTest4:
subu $4,$4,$4
sw $31,140($4)
subu $31,$31,$31
lw $31,140($4)
and $2,$2,$1
jr $ra
multu $3,$3


Test5:
beq $4,$31,EndTest5
subu $29,$29,$29
subu $5,$5,$5
ori $5,$5,10
subu $19,$19,$19
ori $19,$19,1
SubTest5:
addu $29,$29,$19
beq $29,$5,EndTest5
ori $4,$4,76
subu $4,$4,$4
ori $4,$4,0
sw $0,0($4)
sw $0,0($0)
subu $1,$1,$1
ori $1,$1,80
sh $1,0($0)
ori $1,$1,64
lb $3,0($0)
sh $1,80($3)
lui $0,44
andi $4,$4,8
mult $0,$2
and $4,$2,$2
mtlo $2
mtlo $2
sltu $2,$1,$2
ori $3,$3,16
ori $3,$3,108
or $2,$4,$4
or $0,$4,$4
div $3,$3
sw $4,112($0)
lh $0,32($0)
subu $1,$1,$1
ori $1,$1,112
sw $1,-16($1)
ori $4,$1,48
ori $4,$1,24
mtlo $0
mfhi $0
divu $1,$4
beq $2,$4,SubTest5
slt $0,$0,$1
mfhi $2
addu $4,$4,$2
lw $2,64($0)
mthi $1
sb $0,48($0)
ori $3,$0,96
mtlo $0
and $2,$4,$0
mthi $2
addu $2,$2,$4
EndTest5:
subu $4,$4,$4
addu $4,$31,$4
subu $31,$31,$31
addu $31,$0,$4
jr $ra
mfhi $0


Test6:
or $4,$4,$31
subu $28,$28,$28
subu $29,$29,$29
ori $29,$29,10
subu $13,$13,$13
ori $13,$13,1
SubTest6:
addu $28,$28,$13
bne $28,$29,EndTest6
mtlo $0
andi $1,$2,16
mfhi $2
mtlo $2
ori $4,$4,72
ori $3,$4,96
ori $3,$4,40
addiu $2,$1,112
addiu $2,$1,88
divu $4,$3
mflo $4
mfhi $3
mult $2,$2
slt $2,$1,$2
mult $3,$4
lh $0,0($0)
subu $0,$2,$1
mult $0,$3
multu $4,$1
mult $4,$4
slt $1,$2,$3
mult $0,$0
lw $1,48($0)
ori $2,$3,32
ori $2,$3,96
mflo $4
mflo $1
div $3,$2
subu $3,$3,$3
sb $3,112($3)
mthi $1
mult $2,$2
ori $1,$3,92
ori $1,$3,108
andi $2,$2,56
ori $2,$4,40
divu $3,$1
sb $3,0($0)
mthi $1
EndTest6:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
addu $31,$0,$2
lui $4,16
jr $ra
and $4,$4,$4


Test7:
mtlo $31
mult $0,$4
mfhi $4
mfhi $1
ori $3,$1,92
ori $3,$1,76
mtlo $4
mtlo $2
div $1,$3
mthi $1
sb $2,0($0)
or $1,$1,$0
addiu $3,$2,104
mult $2,$1
slt $2,$1,$4
mult $2,$1
addu $2,$4,$4
slt $1,$0,$0
bne $3,$2,EndTest7
mult $1,$4
subu $4,$4,$4
lw $0,96($4)
ori $4,$1,28
ori $4,$1,36
ori $3,$3,132
subu $0,$3,$0
divu $1,$4
beq $1,$4,EndTest7
mthi $1
and $2,$0,$1
subu $2,$2,$2
sb $3,96($2)
mult $3,$3
addiu $2,$3,12
mfhi $4
or $3,$2,$2
mthi $0
slt $1,$2,$3
EndTest7:
subu $2,$2,$2
addu $3,$31,$2
addu $31,$31,$31
subu $31,$31,$3
mflo $1
jr $ra
slt $0,$0,$0


Test8:
sb $2,-12288($31)
ori $4,$2,4
ori $4,$2,56
lui $1,0
addu $1,$3,$0
divu $2,$4
slt $3,$1,$0
mtlo $2
subu $2,$3,$0
mthi $3
mtlo $3
multu $4,$0
lui $2,136
sw $3,32($0)
ori $4,$2,8
ori $4,$2,156
andi $1,$1,28
slt $1,$3,$1
divu $2,$4
and $4,$2,$2
and $4,$0,$2
sb $1,32($0)
ori $2,$3,140
ori $2,$3,52
andi $4,$1,36
ori $4,$1,0
divu $3,$2
ori $3,$4,4
ori $3,$4,56
andi $2,$1,72
andi $2,$2,156
div $4,$3
lui $1,76
mflo $0
mtlo $3
slt $3,$0,$1
addiu $0,$1,76
addu $4,$4,$1
sb $1,112($0)
multu $3,$2
andi $1,$2,40
mfhi $3
EndTest8:
subu $2,$2,$2
addu $4,$31,$2
subu $31,$31,$31
ori $31,$4,0
jr $ra
mtlo $3


Test9:
ori $2,$31,148
mfhi $3
subu $1,$1,$1
sw $1,16($1)
mflo $2
and $3,$3,$1
and $3,$0,$2
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,96
sh $4,0($0)
ori $4,$4,32
lb $3,0($0)
sh $4,112($3)
and $0,$4,$0
or $1,$0,$3
sltu $2,$2,$3
subu $1,$3,$3
sltu $0,$1,$2
mtlo $4
subu $4,$1,$4
lui $4,1
lw $4,-65524($4)
bne $4,$2,EndTest9
slt $4,$1,$0
sltu $3,$0,$1
sltu $4,$0,$0
bne $1,$1,EndTest9
subu $2,$1,$3
mfhi $3
lb $0,48($0)
slt $1,$4,$4
or $1,$0,$2
subu $4,$2,$1
slt $3,$0,$3
subu $2,$2,$2
sw $3,96($2)
lui $2,156
EndTest9:
subu $2,$2,$2
addu $3,$31,$2
addu $31,$31,$31
subu $31,$31,$3
jr $ra
mult $4,$0


Test10:
beq $2,$31,EndTest10
addu $1,$1,$0
subu $0,$0,$0
sw $2,48($0)
mtlo $1
ori $1,$1,124
addu $4,$3,$3
sh $4,80($0)
or $1,$3,$2
addiu $2,$0,52
sltu $0,$3,$2
subu $1,$0,$4
mthi $2
mflo $0
ori $3,$4,24
ori $3,$4,24
lw $1,16($0)
mfhi $2
divu $4,$3
lui $3,140
or $1,$2,$1
ori $3,$4,148
beq $1,$0,EndTest10
andi $2,$1,4
sltu $0,$0,$2
mfhi $2
ori $2,$0,124
ori $3,$4,16
ori $3,$4,24
mflo $0
mflo $1
div $4,$3
or $4,$3,$4
mtlo $2
ori $2,$3,8
lb $4,16($0)
EndTest10:
subu $3,$3,$3
addu $3,$31,$3
addu $31,$31,$31
subu $31,$31,$3
ori $4,$3,96
ori $4,$3,80
ori $0,$1,12
subu $2,$2,$0
divu $3,$4
jr $ra
lh $2,16($0)


Test11:
subu $3,$3,$31
subu $16,$16,$16
subu $30,$30,$30
ori $30,$30,10
subu $24,$24,$24
ori $24,$24,1
SubTest11:
addu $16,$16,$24
bne $16,$30,EndTest11
slt $1,$4,$3
subu $3,$2,$2
lui $3,1
lh $2,-65458($3)
ori $2,$4,68
ori $2,$4,32
sltu $3,$1,$1
mfhi $1
divu $4,$2
addiu $3,$1,56
subu $4,$3,$3
lui $4,1
lw $4,-65424($4)
sltu $3,$2,$2
lui $0,92
multu $0,$0
lw $2,80($0)
lui $1,68
subu $2,$2,$2
lh $1,12($2)
andi $2,$4,36
sb $1,80($0)
beq $0,$1,SubTest11
or $4,$1,$3
multu $3,$2
lui $2,12
mtlo $0
lui $0,116
mtlo $2
beq $4,$0,SubTest11
lw $1,96($0)
addu $1,$2,$0
mflo $1
and $3,$1,$2
subu $3,$3,$3
ori $3,$3,112
sh $4,-64($3)
ori $4,$3,68
ori $4,$3,60
mfhi $2
lui $0,124
divu $3,$4
ori $1,$2,36
ori $1,$2,80
subu $4,$4,$3
mfhi $3
divu $2,$1
EndTest11:
subu $4,$4,$4
addu $4,$31,$4
addu $31,$31,$31
subu $31,$31,$4
lw $2,80($0)
jr $ra
lui $2,12


Test12:
sh $2,-12288($31)
subu $11,$11,$11
subu $29,$29,$29
ori $29,$29,10
subu $20,$20,$20
ori $20,$20,1
SubTest12:
addu $11,$11,$20
beq $11,$29,EndTest12
mult $2,$1
subu $1,$1,$1
sh $2,0($1)
mtlo $3
subu $4,$0,$0
lui $4,1
lb $3,-65519($4)
lui $4,28
multu $2,$1
ori $3,$1,4
ori $3,$1,88
lui $2,28
mflo $4
divu $1,$3
addiu $1,$1,116
slt $4,$1,$3
mflo $0
mult $2,$4
or $0,$3,$0
ori $4,$4,12
ori $4,$4,16
lui $1,44
lui $2,136
div $4,$4
ori $2,$2,8
ori $2,$2,104
addu $0,$1,$0
addu $3,$0,$1
div $2,$2
beq $3,$1,SubTest12
mult $4,$2
sb $3,16($0)
and $2,$0,$1
mult $4,$1
or $3,$0,$2
mflo $4
mflo $0
mult $4,$3
multu $3,$0
ori $2,$3,112
ori $2,$3,136
lb $4,64($0)
addu $4,$1,$4
divu $3,$2
sb $0,16($0)
ori $2,$3,116
EndTest12:
subu $3,$3,$3
addu $4,$31,$3
addu $31,$31,$31
subu $31,$31,$4
andi $0,$2,76
jr $ra
mult $4,$1


Test13:
mthi $31
subu $20,$20,$20
subu $26,$26,$26
ori $26,$26,10
subu $11,$11,$11
ori $11,$11,1
SubTest13:
addu $20,$20,$11
beq $20,$26,EndTest13
and $1,$2,$1
sltu $4,$0,$0
ori $1,$2,156
ori $1,$2,124
andi $4,$3,24
andi $0,$0,72
div $2,$1
subu $1,$1,$1
ori $1,$1,80
lh $0,-62($1)
or $3,$2,$3
lui $1,52
ori $3,$4,20
subu $0,$2,$3
beq $0,$2,SubTest13
sltu $2,$2,$0
subu $0,$0,$0
lb $2,48($0)
sltu $0,$2,$3
and $3,$3,$1
ori $3,$3,124
ori $3,$3,160
mthi $0
mthi $0
div $3,$3
and $3,$2,$3
mflo $4
multu $2,$4
ori $0,$4,52
ori $3,$2,120
multu $2,$0
subu $1,$1,$0
bne $2,$0,SubTest13
lh $2,0($0)
multu $3,$0
addu $4,$0,$0
sw $0,0($0)
subu $4,$4,$4
ori $4,$4,12
sw $4,0($0)
lh $3,0($0)
lw $4,32($3)
sb $4,112($0)
ori $4,$2,16
lui $4,0
lb $2,28($4)
mult $3,$4
EndTest13:
subu $3,$3,$3
addu $2,$31,$3
subu $31,$31,$31
ori $31,$2,0
sw $4,96($0)
jr $ra
mflo $4


End:
