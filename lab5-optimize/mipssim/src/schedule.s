.text
main:
    ADDIU   $r1,    $r0,        A       # 01
    LW      $r2,    0($r1)              # 02  # r1 -> 01
    ADD     $r4,    $r0,        $r2     # 03  # r2 -> 02
    SW      $r4,    0($r1)              # 04  # r1 -> 01, 0($r1) <- 02
    LW      $r6,    4($r1)              # 05  # r1 -> 01
    ADD     $r8,    $r6,        $r1     # 06  # r1 -> 01, r6 -> 05
    MUL     $r12,   $r10,       $r1     # 07  # r1 -> 01
    ADD     $r16,   $r12,       $r1     # 08  # r1 -> 01, r12 -> 07
    ADD     $r18,   $r16,       $r1     # 09  # r1 -> 01, r16 -> 08
    SW      $r18,   16($r1)             # 10  # r1 -> 01
    LW      $r20,   8($r1)              # 11  # r1 -> 01
    MUL     $r22,   $r20,       $r14    # 12  # r20 -> 11
    MUL     $r24,   $r26,       $r14    # 13

    TEQ     $r0,    $r0

.data
A:
    .word   4, 6, 8
