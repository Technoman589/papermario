.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240310_8866D0
/* 8866D0 80240310 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8866D4 80240314 AFB3001C */  sw        $s3, 0x1c($sp)
/* 8866D8 80240318 0080982D */  daddu     $s3, $a0, $zero
/* 8866DC 8024031C AFBF0020 */  sw        $ra, 0x20($sp)
/* 8866E0 80240320 AFB20018 */  sw        $s2, 0x18($sp)
/* 8866E4 80240324 AFB10014 */  sw        $s1, 0x14($sp)
/* 8866E8 80240328 AFB00010 */  sw        $s0, 0x10($sp)
/* 8866EC 8024032C F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 8866F0 80240330 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 8866F4 80240334 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 8866F8 80240338 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 8866FC 8024033C 8E62000C */  lw        $v0, 0xc($s3)
/* 886700 80240340 0C0B1EAF */  jal       evt_get_variable
/* 886704 80240344 8C450000 */   lw       $a1, ($v0)
/* 886708 80240348 2404FFFC */  addiu     $a0, $zero, -4
/* 88670C 8024034C 0C00EABB */  jal       get_npc_unsafe
/* 886710 80240350 0040802D */   daddu    $s0, $v0, $zero
/* 886714 80240354 0200202D */  daddu     $a0, $s0, $zero
/* 886718 80240358 0C046C04 */  jal       get_model_list_index_from_tree_index
/* 88671C 8024035C 0040802D */   daddu    $s0, $v0, $zero
/* 886720 80240360 0C046B4C */  jal       get_model_from_list_index
/* 886724 80240364 0040202D */   daddu    $a0, $v0, $zero
/* 886728 80240368 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 88672C 8024036C 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 886730 80240370 0040902D */  daddu     $s2, $v0, $zero
/* 886734 80240374 AE60008C */  sw        $zero, 0x8c($s3)
/* 886738 80240378 C4620028 */  lwc1      $f2, 0x28($v1)
/* 88673C 8024037C C6400098 */  lwc1      $f0, 0x98($s2)
/* 886740 80240380 46001081 */  sub.s     $f2, $f2, $f0
/* 886744 80240384 46021182 */  mul.s     $f6, $f2, $f2
/* 886748 80240388 00000000 */  nop
/* 88674C 8024038C C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 886750 80240390 C4620030 */  lwc1      $f2, 0x30($v1)
/* 886754 80240394 46001081 */  sub.s     $f2, $f2, $f0
/* 886758 80240398 46021102 */  mul.s     $f4, $f2, $f2
/* 88675C 8024039C 00000000 */  nop
/* 886760 802403A0 846200B0 */  lh        $v0, 0xb0($v1)
/* 886764 802403A4 C462002C */  lwc1      $f2, 0x2c($v1)
/* 886768 802403A8 44820000 */  mtc1      $v0, $f0
/* 88676C 802403AC 00000000 */  nop
/* 886770 802403B0 46800020 */  cvt.s.w   $f0, $f0
/* 886774 802403B4 46001080 */  add.s     $f2, $f2, $f0
/* 886778 802403B8 3C013FC0 */  lui       $at, 0x3fc0
/* 88677C 802403BC 44810000 */  mtc1      $at, $f0
/* 886780 802403C0 00000000 */  nop
/* 886784 802403C4 46001081 */  sub.s     $f2, $f2, $f0
/* 886788 802403C8 46043300 */  add.s     $f12, $f6, $f4
/* 88678C 802403CC C640009C */  lwc1      $f0, 0x9c($s2)
/* 886790 802403D0 46001501 */  sub.s     $f20, $f2, $f0
/* 886794 802403D4 46006084 */  sqrt.s    $f2, $f12
/* 886798 802403D8 46021032 */  c.eq.s    $f2, $f2
/* 88679C 802403DC 00000000 */  nop
/* 8867A0 802403E0 45010004 */  bc1t      .L802403F4
/* 8867A4 802403E4 0060882D */   daddu    $s1, $v1, $zero
/* 8867A8 802403E8 0C0187BC */  jal       sqrtf
/* 8867AC 802403EC 00000000 */   nop
/* 8867B0 802403F0 46000086 */  mov.s     $f2, $f0
.L802403F4:
/* 8867B4 802403F4 44800000 */  mtc1      $zero, $f0
/* 8867B8 802403F8 00000000 */  nop
/* 8867BC 802403FC 4614003C */  c.lt.s    $f0, $f20
/* 8867C0 80240400 00000000 */  nop
/* 8867C4 80240404 45000016 */  bc1f      .L80240460
/* 8867C8 80240408 46001106 */   mov.s    $f4, $f2
/* 8867CC 8024040C 862200B0 */  lh        $v0, 0xb0($s1)
/* 8867D0 80240410 44820000 */  mtc1      $v0, $f0
/* 8867D4 80240414 00000000 */  nop
/* 8867D8 80240418 46800020 */  cvt.s.w   $f0, $f0
/* 8867DC 8024041C 4600A03C */  c.lt.s    $f20, $f0
/* 8867E0 80240420 00000000 */  nop
/* 8867E4 80240424 4500000E */  bc1f      .L80240460
/* 8867E8 80240428 00000000 */   nop
/* 8867EC 8024042C 862200B2 */  lh        $v0, 0xb2($s1)
/* 8867F0 80240430 3C013F00 */  lui       $at, 0x3f00
/* 8867F4 80240434 44811000 */  mtc1      $at, $f2
/* 8867F8 80240438 44820000 */  mtc1      $v0, $f0
/* 8867FC 8024043C 00000000 */  nop
/* 886800 80240440 46800020 */  cvt.s.w   $f0, $f0
/* 886804 80240444 46020002 */  mul.s     $f0, $f0, $f2
/* 886808 80240448 00000000 */  nop
/* 88680C 8024044C 4600203C */  c.lt.s    $f4, $f0
/* 886810 80240450 00000000 */  nop
/* 886814 80240454 45000002 */  bc1f      .L80240460
/* 886818 80240458 24020001 */   addiu    $v0, $zero, 1
/* 88681C 8024045C AE62008C */  sw        $v0, 0x8c($s3)
.L80240460:
/* 886820 80240460 C6020038 */  lwc1      $f2, 0x38($s0)
/* 886824 80240464 C6400098 */  lwc1      $f0, 0x98($s2)
/* 886828 80240468 46001081 */  sub.s     $f2, $f2, $f0
/* 88682C 8024046C 46021182 */  mul.s     $f6, $f2, $f2
/* 886830 80240470 00000000 */  nop
/* 886834 80240474 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 886838 80240478 C6020040 */  lwc1      $f2, 0x40($s0)
/* 88683C 8024047C 46001081 */  sub.s     $f2, $f2, $f0
/* 886840 80240480 46021102 */  mul.s     $f4, $f2, $f2
/* 886844 80240484 00000000 */  nop
/* 886848 80240488 860200A8 */  lh        $v0, 0xa8($s0)
/* 88684C 8024048C C602003C */  lwc1      $f2, 0x3c($s0)
/* 886850 80240490 44820000 */  mtc1      $v0, $f0
/* 886854 80240494 00000000 */  nop
/* 886858 80240498 46800020 */  cvt.s.w   $f0, $f0
/* 88685C 8024049C 46001080 */  add.s     $f2, $f2, $f0
/* 886860 802404A0 3C013FC0 */  lui       $at, 0x3fc0
/* 886864 802404A4 44810000 */  mtc1      $at, $f0
/* 886868 802404A8 00000000 */  nop
/* 88686C 802404AC 46001081 */  sub.s     $f2, $f2, $f0
/* 886870 802404B0 46043300 */  add.s     $f12, $f6, $f4
/* 886874 802404B4 C640009C */  lwc1      $f0, 0x9c($s2)
/* 886878 802404B8 46001501 */  sub.s     $f20, $f2, $f0
/* 88687C 802404BC 46006084 */  sqrt.s    $f2, $f12
/* 886880 802404C0 46021032 */  c.eq.s    $f2, $f2
/* 886884 802404C4 00000000 */  nop
/* 886888 802404C8 45010004 */  bc1t      .L802404DC
/* 88688C 802404CC 00000000 */   nop
/* 886890 802404D0 0C0187BC */  jal       sqrtf
/* 886894 802404D4 00000000 */   nop
/* 886898 802404D8 46000086 */  mov.s     $f2, $f0
.L802404DC:
/* 88689C 802404DC 44800000 */  mtc1      $zero, $f0
/* 8868A0 802404E0 00000000 */  nop
/* 8868A4 802404E4 4614003C */  c.lt.s    $f0, $f20
/* 8868A8 802404E8 00000000 */  nop
/* 8868AC 802404EC 45000016 */  bc1f      .L80240548
/* 8868B0 802404F0 46001106 */   mov.s    $f4, $f2
/* 8868B4 802404F4 860200A8 */  lh        $v0, 0xa8($s0)
/* 8868B8 802404F8 44820000 */  mtc1      $v0, $f0
/* 8868BC 802404FC 00000000 */  nop
/* 8868C0 80240500 46800020 */  cvt.s.w   $f0, $f0
/* 8868C4 80240504 4600A03C */  c.lt.s    $f20, $f0
/* 8868C8 80240508 00000000 */  nop
/* 8868CC 8024050C 4500000F */  bc1f      .L8024054C
/* 8868D0 80240510 0000882D */   daddu    $s1, $zero, $zero
/* 8868D4 80240514 860200A6 */  lh        $v0, 0xa6($s0)
/* 8868D8 80240518 3C013F00 */  lui       $at, 0x3f00
/* 8868DC 8024051C 44811000 */  mtc1      $at, $f2
/* 8868E0 80240520 44820000 */  mtc1      $v0, $f0
/* 8868E4 80240524 00000000 */  nop
/* 8868E8 80240528 46800020 */  cvt.s.w   $f0, $f0
/* 8868EC 8024052C 46020002 */  mul.s     $f0, $f0, $f2
/* 8868F0 80240530 00000000 */  nop
/* 8868F4 80240534 4600203C */  c.lt.s    $f4, $f0
/* 8868F8 80240538 00000000 */  nop
/* 8868FC 8024053C 45000003 */  bc1f      .L8024054C
/* 886900 80240540 24020001 */   addiu    $v0, $zero, 1
/* 886904 80240544 AE62008C */  sw        $v0, 0x8c($s3)
.L80240548:
/* 886908 80240548 0000882D */  daddu     $s1, $zero, $zero
.L8024054C:
/* 88690C 8024054C 3C013FC0 */  lui       $at, 0x3fc0
/* 886910 80240550 4481D000 */  mtc1      $at, $f26
/* 886914 80240554 4480C000 */  mtc1      $zero, $f24
/* 886918 80240558 3C013F00 */  lui       $at, 0x3f00
/* 88691C 8024055C 4481B000 */  mtc1      $at, $f22
.L80240560:
/* 886920 80240560 0C00EAD2 */  jal       get_npc_safe
/* 886924 80240564 0220202D */   daddu    $a0, $s1, $zero
/* 886928 80240568 0040802D */  daddu     $s0, $v0, $zero
/* 88692C 8024056C 52000035 */  beql      $s0, $zero, .L80240644
/* 886930 80240570 26310001 */   addiu    $s1, $s1, 1
/* 886934 80240574 C6020038 */  lwc1      $f2, 0x38($s0)
/* 886938 80240578 C6400098 */  lwc1      $f0, 0x98($s2)
/* 88693C 8024057C 46001081 */  sub.s     $f2, $f2, $f0
/* 886940 80240580 46021182 */  mul.s     $f6, $f2, $f2
/* 886944 80240584 00000000 */  nop
/* 886948 80240588 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 88694C 8024058C C6020040 */  lwc1      $f2, 0x40($s0)
/* 886950 80240590 46001081 */  sub.s     $f2, $f2, $f0
/* 886954 80240594 46021102 */  mul.s     $f4, $f2, $f2
/* 886958 80240598 00000000 */  nop
/* 88695C 8024059C 860200A8 */  lh        $v0, 0xa8($s0)
/* 886960 802405A0 C602003C */  lwc1      $f2, 0x3c($s0)
/* 886964 802405A4 44820000 */  mtc1      $v0, $f0
/* 886968 802405A8 00000000 */  nop
/* 88696C 802405AC 46800020 */  cvt.s.w   $f0, $f0
/* 886970 802405B0 46001080 */  add.s     $f2, $f2, $f0
/* 886974 802405B4 461A1081 */  sub.s     $f2, $f2, $f26
/* 886978 802405B8 46043300 */  add.s     $f12, $f6, $f4
/* 88697C 802405BC C640009C */  lwc1      $f0, 0x9c($s2)
/* 886980 802405C0 46001501 */  sub.s     $f20, $f2, $f0
/* 886984 802405C4 46006004 */  sqrt.s    $f0, $f12
/* 886988 802405C8 46000032 */  c.eq.s    $f0, $f0
/* 88698C 802405CC 00000000 */  nop
/* 886990 802405D0 45010003 */  bc1t      .L802405E0
/* 886994 802405D4 00000000 */   nop
/* 886998 802405D8 0C0187BC */  jal       sqrtf
/* 88699C 802405DC 00000000 */   nop
.L802405E0:
/* 8869A0 802405E0 4614C03C */  c.lt.s    $f24, $f20
/* 8869A4 802405E4 00000000 */  nop
/* 8869A8 802405E8 45000015 */  bc1f      .L80240640
/* 8869AC 802405EC 46000106 */   mov.s    $f4, $f0
/* 8869B0 802405F0 860200A8 */  lh        $v0, 0xa8($s0)
/* 8869B4 802405F4 44820000 */  mtc1      $v0, $f0
/* 8869B8 802405F8 00000000 */  nop
/* 8869BC 802405FC 46800020 */  cvt.s.w   $f0, $f0
/* 8869C0 80240600 4600A03C */  c.lt.s    $f20, $f0
/* 8869C4 80240604 00000000 */  nop
/* 8869C8 80240608 4500000E */  bc1f      .L80240644
/* 8869CC 8024060C 26310001 */   addiu    $s1, $s1, 1
/* 8869D0 80240610 860200A6 */  lh        $v0, 0xa6($s0)
/* 8869D4 80240614 44820000 */  mtc1      $v0, $f0
/* 8869D8 80240618 00000000 */  nop
/* 8869DC 8024061C 46800020 */  cvt.s.w   $f0, $f0
/* 8869E0 80240620 46160002 */  mul.s     $f0, $f0, $f22
/* 8869E4 80240624 00000000 */  nop
/* 8869E8 80240628 4600203C */  c.lt.s    $f4, $f0
/* 8869EC 8024062C 00000000 */  nop
/* 8869F0 80240630 45000004 */  bc1f      .L80240644
/* 8869F4 80240634 24020001 */   addiu    $v0, $zero, 1
/* 8869F8 80240638 08090194 */  j         .L80240650
/* 8869FC 8024063C AE62008C */   sw       $v0, 0x8c($s3)
.L80240640:
/* 886A00 80240640 26310001 */  addiu     $s1, $s1, 1
.L80240644:
/* 886A04 80240644 2A220040 */  slti      $v0, $s1, 0x40
/* 886A08 80240648 1440FFC5 */  bnez      $v0, .L80240560
/* 886A0C 8024064C 00000000 */   nop
.L80240650:
/* 886A10 80240650 8FBF0020 */  lw        $ra, 0x20($sp)
/* 886A14 80240654 8FB3001C */  lw        $s3, 0x1c($sp)
/* 886A18 80240658 8FB20018 */  lw        $s2, 0x18($sp)
/* 886A1C 8024065C 8FB10014 */  lw        $s1, 0x14($sp)
/* 886A20 80240660 8FB00010 */  lw        $s0, 0x10($sp)
/* 886A24 80240664 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 886A28 80240668 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 886A2C 8024066C D7B60030 */  ldc1      $f22, 0x30($sp)
/* 886A30 80240670 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 886A34 80240674 24020002 */  addiu     $v0, $zero, 2
/* 886A38 80240678 03E00008 */  jr        $ra
/* 886A3C 8024067C 27BD0048 */   addiu    $sp, $sp, 0x48
