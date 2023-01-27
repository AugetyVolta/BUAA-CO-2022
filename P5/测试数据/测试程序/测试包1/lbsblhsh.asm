ori $a0 $0 1
ori $a1 $0 2
subu $a0 $a0 $a1	#a0=0xffffffff
ori $a1 $0 12		#a1=12

sb $a0 -11($a1)
sh $a0 -10($a1)
lb $t0 -11($a1)
lh $t1 -10($a1)
sb $t0 -9($a1)
sh $t1 -8($a1)

sb $a0 1($a0)
lb $t0 1($a0)
lh $t1 1($a0)
sb $t0 0($a1)
sh $t1 2($a1)

lw $t1 0($0)
sw $t1 4($a1)