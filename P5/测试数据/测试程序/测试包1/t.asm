ori $1, $0, 0x0001
ori $2, $0, 0x0002
ori $3, $0, 0x0003
ori $4, $0, 0x0004
ori $11, $0, 0x0001
ori $12, $0, 0x0002
lui $19, 0x8483
ori $19, $19, 0x8281
sw $19, 12($4)
lb $18, 12($4) 
lb $17, 13($4)
lb $16, 14($4)
lb $15, 15($4)
lui $0, 0x0101
j branch
lui $21, 0x0001
loop1:
addu $22, $22, $1
beq $1, $11, loop2
lui $0, 0x0011
branch:
beq $2, $12, loop1
sw $11, 4($4)
loop2:
lui $13, 0xffff
jal function
addu $22, $22, $0
sw $22, 8($4)
j end

function:
lui $30, 0x0001
lui $29, 0x11ff
jr $31
end:
lui $0, 0xffff
