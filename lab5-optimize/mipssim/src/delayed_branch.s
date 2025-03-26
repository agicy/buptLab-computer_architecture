.text
main:
    ADDI    $r2,    $r0,    1024
    ADD     $r3,    $r0,    $r0
    ADDI    $r4,    $r0,    8
loop:
    ADDI    $r3,    $r3,    4           # 4
    LW      $r1,    0($r2)              # 1
    SUB     $r5,    $r4,    $r3         # 5  # 依赖 4
    ADDI    $r1,    $r1,    1           # 2  # 依赖 1
    BGTZ    $r5,    loop                # 6  # 依赖 5
    SW      $r1,    0($r2)              # 3  # 延迟槽，从前调度

    ADD     $r7,    $r0,    $r6

    TEQ     $r0,    $r0
