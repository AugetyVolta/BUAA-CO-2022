lui $t0,0x0000
ori $t0,0x1234
mtc0 $t0, $12
mfc0 $1, $12

end:
beq $0,$0,end
nop

.ktext 0x4180
mfc0 $2, $13
mfc0 $3, $14
eret