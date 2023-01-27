ori $a0, $0, 65533
ori $a1, $a0, 65535
lui $a2, 123            
lui $a3, 0xffff         
ori $a3, $a3, 0xffff    
add $s0, $a0, $a2  
add $s1, $a0, $a3      
add $s2, $a3, $a3      
ori $t0, $0, 0x0000
sw $a0, 0($t0)
sw $a1, 4($t0)
sw $a2, 8($t0)
sw $a3, 12($t0)
sw $s0, 16($t0)
nop
sw $s1, 20($t0)
sw $s2, 24($t0)
lw $a0, 0($t0)
lw $a1, 12($t0)
sw $a0, 28($t0)
sw $a1, 32($t0)
ori $a0, $0, 1
ori $a1, $0, 2
ori $a2, $0, 1
beq $a1, $a2, loop1     
beq $a0, $a2, loop2
loop1:sw $a0, 36($t0)
loop2:sw $a1, 40($t0)