ori $a0 $0 32
ori $a1 $0 1

jal fx
addu $ra $ra 32
sw $a2 0($0)
subu $a0 $a0 $a0
ori $a0 0x301c
beq $a1 $0 end
subu $a1 $a1 $a1
jr $a0
end:
sw $ra 8($0)
fx:
beq $a1 $t0 realend
addu $a2 $a1 $a0
jr $ra
realend: