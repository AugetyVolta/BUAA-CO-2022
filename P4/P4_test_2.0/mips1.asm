ori $29,$0,0x22fc
ori $28,$0,0x1800
ori $31,$0,0x3000
label0:subu $6,$16,$1
label1:nop
label2:addu $1,$0,$3
label3:beq $17,$3,label12
label4:ori $3,$28,0xa91a
label5:subu $15,$25,$9
label6:beq $12,$29,label10
label7:ori $14,$1,0x2404
label8:ori $9,$0,0x1c8
sw $24,40($9)
label9:ori $29,$28,0x9e52
label10:ori $8,$0,0x1a0
lw $9,16($8)
label11:jal label93
label12:jal label60
label13:beq $7,$9,label22
label14:addu $5,$7,$0
label15:ori $7,$0,0x1fc
sw $25,8($7)
label16:ori $20,$10,0x540
label17:ori $30,$27,0xec5
label18:subu $20,$26,$19
label19:jal label93
label20:jal label48
label21:ori $12,$29,0xd701
label22:subu $18,$14,$3
label23:nop
label24:jal label41
label25:ori $11,$0,0x198
lw $22,20($11)
label26:jal label87
label27:jal label84
label28:ori $13,$25,0xa489
label29:nop
label30:ori $10,$0,0x88
sw $10,36($10)
label31:nop
label32:ori $20,$0,0x6c
sw $18,16($20)
label33:addu $22,$5,$21
label34:beq $19,$30,label44
label35:lui $11,0xda57
label36:jr $31
label37:jal label74
label38:addu $5,$12,$18
label39:jr $31
label40:ori $21,$23,0xb740
label41:subu $13,$23,$24
label42:nop
label43:subu $0,$29,$28
label44:nop
label45:ori $21,$24,0xd95c
label46:subu $17,$18,$9
label47:nop
label48:subu $23,$16,$20
label49:ori $0,$0,0x11c
sw $27,40($0)
label50:ori $4,$29,0x25f7
label51:ori $19,$0,0x180
sw $19,28($19)
label52:subu $23,$8,$1
label53:subu $1,$13,$26
label54:nop
label55:nop
label56:lui $6,0x2779
label57:ori $28,$0,0x0
sw $16,28($28)
label58:lui $26,0xfbe7
label59:subu $30,$8,$25
label60:ori $7,$0,0x110
sw $30,28($7)
label61:subu $22,$21,$17
label62:lui $6,0xd24
label63:addu $24,$8,$5
label64:nop
label65:ori $13,$12,0x928f
label66:addu $15,$3,$11
label67:ori $8,$1,0x280
label68:addu $5,$15,$21
label69:addu $16,$10,$19
label70:subu $8,$30,$16
label71:nop
label72:addu $18,$3,$17
label73:jal label76
label74:jal label80
label75:ori $5,$0,0x19c
lw $10,4($5)
label76:addu $15,$15,$11
label77:jal label95
label78:addu $1,$1,$2
label79:nop
label80:jr $31
label81:addu $14,$6,$5
label82:ori $5,$0,0xc8
sw $19,40($5)
label83:jal label99
label84:ori $26,$0,0x1c
sw $3,20($26)
label85:jr $31
label86:jal label90
label87:nop
label88:beq $27,$2,label93
label89:ori $30,$0,0x1fc
lw $2,4($30)
label90:ori $2,$0,0xc8
sw $17,16($2)
label91:ori $17,$0,0x1e0
lw $23,36($17)
label92:ori $21,$0,0xe0
lw $8,20($21)
label93:subu $5,$2,$29
label94:jr $31
label95:nop
label96:subu $16,$3,$12
label97:jal label98
label98:jr $31
label99:nop
