.data
arr: .space 1024
.text
jal simple
lw $t0,-0x3000($ra)
j loop2
lw $t0,-0x3000($ra)
simple:
jr $ra
sw $ra,-0x3000($ra)
loop2:
jal simple2
lw $t0,-0x3000($ra)
j upper
lw $t0,-0x3000($ra)
simple2:
ori $t9,16
subu $ra,$ra,$t9
addu $ra,$ra,$t9
jr $ra
sw $ra,-0x3000($ra)
upper:
lw $t0,-0x3000($t0)
jal lower
sw $ra,100($0)
lui $t1,0x5678
lui $t2,0x5678
beq $t1,$t2,next
addu $t5,$t1,$t2
lower:
lw $t0,100($t1)
jr $t0
addu $t3,$t0,$t0
next:
ori $t4,$0,3
ori $t5,$0,1
once:
subu $t4,$t4,$t5
addu $t5,$t5,$t5
beq $t4,$t5,once
ori $0,$0,0

