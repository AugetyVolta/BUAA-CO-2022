ori $s0 $0 8
ori $t1 $0 1
loop:
beq $t0 $s0 loopend
nop
addu $s1 $s1 $t0
addu $t0 $t0 $t1
j loop
nop
loopend:
sw $s1 0($0)
sh $s1 4($0)
sb $s1 6($0)
sw $t0 8($0)