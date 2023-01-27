ori $a0 $0 1
ori $a1 $0 2
subu $a0 $a0 $a1	#a0=0xffffffff
ori $a1 $0 12		#a1=12

sw $a0 -4($a1)
lw $a2 -4($a1)
sw $a2 -8($a1)

sw $a0 1($a0)
lw $t0 1($a0)
sw $t0 0($a1)

lw $t1 4($0)
sw $t1 4($a1)