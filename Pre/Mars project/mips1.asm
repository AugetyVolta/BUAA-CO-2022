G:
book:
m:
n:
ans:
dfs:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        lui     $2,%hi(book)
        lw      $3,40($fp)
        nop
        sll     $3,$3,2
        addiu   $2,$2,%lo(book)
        addu    $2,$3,$2
        li      $3,1                        # 0x1
        sw      $3,0($2)
        li      $2,1                        # 0x1
        sw      $2,24($fp)
        sw      $0,28($fp)
        b       $L2
        nop

$L3:
        lui     $2,%hi(book)
        lw      $3,28($fp)
        nop
        sll     $3,$3,2
        addiu   $2,$2,%lo(book)
        addu    $2,$3,$2
        lw      $2,0($2)
        lw      $3,24($fp)
        nop
        and     $2,$3,$2
        sw      $2,24($fp)
        lw      $2,28($fp)
        nop
        addiu   $2,$2,1
        sw      $2,28($fp)
$L2:
        lui     $2,%hi(n)
        lw      $2,%lo(n)($2)
        lw      $3,28($fp)
        nop
        slt     $2,$3,$2
        bne     $2,$0,$L3
        nop

        lw      $2,24($fp)
        nop
        beq     $2,$0,$L4
        nop

        lui     $2,%hi(G)
        lw      $3,40($fp)
        nop
        sll     $3,$3,5
        addiu   $2,$2,%lo(G)
        addu    $2,$3,$2
        lw      $2,0($2)
        nop
        beq     $2,$0,$L4
        nop

        lui     $2,%hi(ans)
        li      $3,1                        # 0x1
        sw      $3,%lo(ans)($2)
        b       $L1
        nop

$L4:
        sw      $0,28($fp)
        b       $L6
        nop

$L8:
        lui     $2,%hi(book)
        lw      $3,28($fp)
        nop
        sll     $3,$3,2
        addiu   $2,$2,%lo(book)
        addu    $2,$3,$2
        lw      $2,0($2)
        nop
        bne     $2,$0,$L7
        nop

        lui     $2,%hi(G)
        lw      $3,40($fp)
        nop
        sll     $4,$3,3
        lw      $3,28($fp)
        nop
        addu    $3,$4,$3
        sll     $3,$3,2
        addiu   $2,$2,%lo(G)
        addu    $2,$3,$2
        lw      $2,0($2)
        nop
        beq     $2,$0,$L7
        nop

        lw      $4,28($fp)
        jal     dfs
        nop

$L7:
        lw      $2,28($fp)
        nop
        addiu   $2,$2,1
        sw      $2,28($fp)
$L6:
        lui     $2,%hi(n)
        lw      $2,%lo(n)($2)
        lw      $3,28($fp)
        nop
        slt     $2,$3,$2
        bne     $2,$0,$L8
        nop

        lui     $2,%hi(book)
        lw      $3,40($fp)
        nop
        sll     $3,$3,2
        addiu   $2,$2,%lo(book)
        addu    $2,$3,$2
        sw      $0,0($2)
$L1:
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        jr      $31
        nop

$LC0:
        .ascii  "%d%d\000"
$LC1:
        .ascii  "%d\000"
main:
        addiu   $sp,$sp,-48
        sw      $31,44($sp)
        sw      $fp,40($sp)
        move    $fp,$sp
        lui     $2,%hi(m)
        addiu   $6,$2,%lo(m)
        lui     $2,%hi(n)
        addiu   $5,$2,%lo(n)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     scanf
        nop

        sw      $0,24($fp)
        b       $L10
        nop

$L11:
        addiu   $3,$fp,32
        addiu   $2,$fp,28
        move    $6,$3
        move    $5,$2
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     scanf
        nop

        lw      $2,28($fp)
        nop
        addiu   $4,$2,-1
        lw      $2,32($fp)
        nop
        addiu   $3,$2,-1
        lui     $2,%hi(G)
        sll     $4,$4,3
        addu    $3,$4,$3
        sll     $3,$3,2
        addiu   $2,$2,%lo(G)
        addu    $2,$3,$2
        li      $3,1                        # 0x1
        sw      $3,0($2)
        lw      $2,32($fp)
        nop
        addiu   $4,$2,-1
        lw      $2,28($fp)
        nop
        addiu   $3,$2,-1
        lui     $2,%hi(G)
        sll     $4,$4,3
        addu    $3,$4,$3
        sll     $3,$3,2
        addiu   $2,$2,%lo(G)
        addu    $2,$3,$2
        li      $3,1                        # 0x1
        sw      $3,0($2)
        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
$L10:
        lui     $2,%hi(m)
        lw      $2,%lo(m)($2)
        lw      $3,24($fp)
        nop
        slt     $2,$3,$2
        bne     $2,$0,$L11
        nop

        move    $4,$0
        jal     dfs
        nop

        lui     $2,%hi(ans)
        lw      $2,%lo(ans)($2)
        nop
        move    $5,$2
        lui     $2,%hi($LC1)
        addiu   $4,$2,%lo($LC1)
        jal     printf
        nop

        move    $2,$0
        move    $sp,$fp
        lw      $31,44($sp)
        lw      $fp,40($sp)
        addiu   $sp,$sp,48
        jr      $31
        nop