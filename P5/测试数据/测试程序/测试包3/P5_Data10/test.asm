.data
arr: .space 1000
.text
begin:
lui $t0,0xabcd
ori $t1,$0,4
sw $t0,-4($t1)
lw $t3,0($0)
beq $t2,$t3,begin
addu $t2,$t3,$t1
subu $t2,$t2,$t1
beq $t2,$t3,down
ori $t4,$0,8
lui $t5,0xffff
down:
addu $t5,$t5,$t1
lw $t5,4($t5)
ori $t5,$t5,0xffff
ori $t6,$t6,0xffff
beq $t5,$t6,next
ori $t5,$0,8
next:
addu $t5,$t5,$t6
lui $t5,0x0000
lw $t5,4($t5)
sw $t6,8($t5)
lw $t5,8($t5)
addu $t7,$0,$t5
lw $t6,-4($t1)
ori $t8,$t6,0xefff
jal end
ori $t0,$ra,0
end:
