.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240360_8A5DE0
/* 8A5DE0 80240360 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8A5DE4 80240364 AFB3001C */  sw        $s3, 0x1c($sp)
/* 8A5DE8 80240368 0080982D */  daddu     $s3, $a0, $zero
/* 8A5DEC 8024036C AFBF0020 */  sw        $ra, 0x20($sp)
/* 8A5DF0 80240370 AFB20018 */  sw        $s2, 0x18($sp)
/* 8A5DF4 80240374 AFB10014 */  sw        $s1, 0x14($sp)
/* 8A5DF8 80240378 AFB00010 */  sw        $s0, 0x10($sp)
/* 8A5DFC 8024037C F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 8A5E00 80240380 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 8A5E04 80240384 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 8A5E08 80240388 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 8A5E0C 8024038C 8E62000C */  lw        $v0, 0xc($s3)
/* 8A5E10 80240390 0C0B1EAF */  jal       get_variable
/* 8A5E14 80240394 8C450000 */   lw       $a1, ($v0)
/* 8A5E18 80240398 2404FFFC */  addiu     $a0, $zero, -4
/* 8A5E1C 8024039C 0C00EABB */  jal       get_npc_unsafe
/* 8A5E20 802403A0 0040802D */   daddu    $s0, $v0, $zero
/* 8A5E24 802403A4 0200202D */  daddu     $a0, $s0, $zero
/* 8A5E28 802403A8 0C046C04 */  jal       get_model_list_index_from_tree_index
/* 8A5E2C 802403AC 0040802D */   daddu    $s0, $v0, $zero
/* 8A5E30 802403B0 0C046B4C */  jal       get_model_from_list_index
/* 8A5E34 802403B4 0040202D */   daddu    $a0, $v0, $zero
/* 8A5E38 802403B8 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 8A5E3C 802403BC 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 8A5E40 802403C0 0040902D */  daddu     $s2, $v0, $zero
/* 8A5E44 802403C4 AE60008C */  sw        $zero, 0x8c($s3)
/* 8A5E48 802403C8 C4620028 */  lwc1      $f2, 0x28($v1)
/* 8A5E4C 802403CC C6400098 */  lwc1      $f0, 0x98($s2)
/* 8A5E50 802403D0 46001081 */  sub.s     $f2, $f2, $f0
/* 8A5E54 802403D4 46021182 */  mul.s     $f6, $f2, $f2
/* 8A5E58 802403D8 00000000 */  nop       
/* 8A5E5C 802403DC C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 8A5E60 802403E0 C4620030 */  lwc1      $f2, 0x30($v1)
/* 8A5E64 802403E4 46001081 */  sub.s     $f2, $f2, $f0
/* 8A5E68 802403E8 46021102 */  mul.s     $f4, $f2, $f2
/* 8A5E6C 802403EC 00000000 */  nop       
/* 8A5E70 802403F0 846200B0 */  lh        $v0, 0xb0($v1)
/* 8A5E74 802403F4 C462002C */  lwc1      $f2, 0x2c($v1)
/* 8A5E78 802403F8 44820000 */  mtc1      $v0, $f0
/* 8A5E7C 802403FC 00000000 */  nop       
/* 8A5E80 80240400 46800020 */  cvt.s.w   $f0, $f0
/* 8A5E84 80240404 46001080 */  add.s     $f2, $f2, $f0
/* 8A5E88 80240408 3C013FC0 */  lui       $at, 0x3fc0
/* 8A5E8C 8024040C 44810000 */  mtc1      $at, $f0
/* 8A5E90 80240410 00000000 */  nop       
/* 8A5E94 80240414 46001081 */  sub.s     $f2, $f2, $f0
/* 8A5E98 80240418 46043300 */  add.s     $f12, $f6, $f4
/* 8A5E9C 8024041C C640009C */  lwc1      $f0, 0x9c($s2)
/* 8A5EA0 80240420 46001501 */  sub.s     $f20, $f2, $f0
/* 8A5EA4 80240424 46006084 */  sqrt.s    $f2, $f12
/* 8A5EA8 80240428 46021032 */  c.eq.s    $f2, $f2
/* 8A5EAC 8024042C 00000000 */  nop       
/* 8A5EB0 80240430 45010004 */  bc1t      .L80240444
/* 8A5EB4 80240434 0060882D */   daddu    $s1, $v1, $zero
/* 8A5EB8 80240438 0C0187BC */  jal       sqrtf
/* 8A5EBC 8024043C 00000000 */   nop      
/* 8A5EC0 80240440 46000086 */  mov.s     $f2, $f0
.L80240444:
/* 8A5EC4 80240444 44800000 */  mtc1      $zero, $f0
/* 8A5EC8 80240448 00000000 */  nop       
/* 8A5ECC 8024044C 4614003C */  c.lt.s    $f0, $f20
/* 8A5ED0 80240450 00000000 */  nop       
/* 8A5ED4 80240454 45000016 */  bc1f      .L802404B0
/* 8A5ED8 80240458 46001106 */   mov.s    $f4, $f2
/* 8A5EDC 8024045C 862200B0 */  lh        $v0, 0xb0($s1)
/* 8A5EE0 80240460 44820000 */  mtc1      $v0, $f0
/* 8A5EE4 80240464 00000000 */  nop       
/* 8A5EE8 80240468 46800020 */  cvt.s.w   $f0, $f0
/* 8A5EEC 8024046C 4600A03C */  c.lt.s    $f20, $f0
/* 8A5EF0 80240470 00000000 */  nop       
/* 8A5EF4 80240474 4500000E */  bc1f      .L802404B0
/* 8A5EF8 80240478 00000000 */   nop      
/* 8A5EFC 8024047C 862200B2 */  lh        $v0, 0xb2($s1)
/* 8A5F00 80240480 3C013F00 */  lui       $at, 0x3f00
/* 8A5F04 80240484 44811000 */  mtc1      $at, $f2
/* 8A5F08 80240488 44820000 */  mtc1      $v0, $f0
/* 8A5F0C 8024048C 00000000 */  nop       
/* 8A5F10 80240490 46800020 */  cvt.s.w   $f0, $f0
/* 8A5F14 80240494 46020002 */  mul.s     $f0, $f0, $f2
/* 8A5F18 80240498 00000000 */  nop       
/* 8A5F1C 8024049C 4600203C */  c.lt.s    $f4, $f0
/* 8A5F20 802404A0 00000000 */  nop       
/* 8A5F24 802404A4 45000002 */  bc1f      .L802404B0
/* 8A5F28 802404A8 24020001 */   addiu    $v0, $zero, 1
/* 8A5F2C 802404AC AE62008C */  sw        $v0, 0x8c($s3)
.L802404B0:
/* 8A5F30 802404B0 C6020038 */  lwc1      $f2, 0x38($s0)
/* 8A5F34 802404B4 C6400098 */  lwc1      $f0, 0x98($s2)
/* 8A5F38 802404B8 46001081 */  sub.s     $f2, $f2, $f0
/* 8A5F3C 802404BC 46021182 */  mul.s     $f6, $f2, $f2
/* 8A5F40 802404C0 00000000 */  nop       
/* 8A5F44 802404C4 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 8A5F48 802404C8 C6020040 */  lwc1      $f2, 0x40($s0)
/* 8A5F4C 802404CC 46001081 */  sub.s     $f2, $f2, $f0
/* 8A5F50 802404D0 46021102 */  mul.s     $f4, $f2, $f2
/* 8A5F54 802404D4 00000000 */  nop       
/* 8A5F58 802404D8 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A5F5C 802404DC C602003C */  lwc1      $f2, 0x3c($s0)
/* 8A5F60 802404E0 44820000 */  mtc1      $v0, $f0
/* 8A5F64 802404E4 00000000 */  nop       
/* 8A5F68 802404E8 46800020 */  cvt.s.w   $f0, $f0
/* 8A5F6C 802404EC 46001080 */  add.s     $f2, $f2, $f0
/* 8A5F70 802404F0 3C013FC0 */  lui       $at, 0x3fc0
/* 8A5F74 802404F4 44810000 */  mtc1      $at, $f0
/* 8A5F78 802404F8 00000000 */  nop       
/* 8A5F7C 802404FC 46001081 */  sub.s     $f2, $f2, $f0
/* 8A5F80 80240500 46043300 */  add.s     $f12, $f6, $f4
/* 8A5F84 80240504 C640009C */  lwc1      $f0, 0x9c($s2)
/* 8A5F88 80240508 46001501 */  sub.s     $f20, $f2, $f0
/* 8A5F8C 8024050C 46006084 */  sqrt.s    $f2, $f12
/* 8A5F90 80240510 46021032 */  c.eq.s    $f2, $f2
/* 8A5F94 80240514 00000000 */  nop       
/* 8A5F98 80240518 45010004 */  bc1t      .L8024052C
/* 8A5F9C 8024051C 00000000 */   nop      
/* 8A5FA0 80240520 0C0187BC */  jal       sqrtf
/* 8A5FA4 80240524 00000000 */   nop      
/* 8A5FA8 80240528 46000086 */  mov.s     $f2, $f0
.L8024052C:
/* 8A5FAC 8024052C 44800000 */  mtc1      $zero, $f0
/* 8A5FB0 80240530 00000000 */  nop       
/* 8A5FB4 80240534 4614003C */  c.lt.s    $f0, $f20
/* 8A5FB8 80240538 00000000 */  nop       
/* 8A5FBC 8024053C 45000016 */  bc1f      .L80240598
/* 8A5FC0 80240540 46001106 */   mov.s    $f4, $f2
/* 8A5FC4 80240544 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A5FC8 80240548 44820000 */  mtc1      $v0, $f0
/* 8A5FCC 8024054C 00000000 */  nop       
/* 8A5FD0 80240550 46800020 */  cvt.s.w   $f0, $f0
/* 8A5FD4 80240554 4600A03C */  c.lt.s    $f20, $f0
/* 8A5FD8 80240558 00000000 */  nop       
/* 8A5FDC 8024055C 4500000F */  bc1f      .L8024059C
/* 8A5FE0 80240560 0000882D */   daddu    $s1, $zero, $zero
/* 8A5FE4 80240564 860200A6 */  lh        $v0, 0xa6($s0)
/* 8A5FE8 80240568 3C013F00 */  lui       $at, 0x3f00
/* 8A5FEC 8024056C 44811000 */  mtc1      $at, $f2
/* 8A5FF0 80240570 44820000 */  mtc1      $v0, $f0
/* 8A5FF4 80240574 00000000 */  nop       
/* 8A5FF8 80240578 46800020 */  cvt.s.w   $f0, $f0
/* 8A5FFC 8024057C 46020002 */  mul.s     $f0, $f0, $f2
/* 8A6000 80240580 00000000 */  nop       
/* 8A6004 80240584 4600203C */  c.lt.s    $f4, $f0
/* 8A6008 80240588 00000000 */  nop       
/* 8A600C 8024058C 45000003 */  bc1f      .L8024059C
/* 8A6010 80240590 24020001 */   addiu    $v0, $zero, 1
/* 8A6014 80240594 AE62008C */  sw        $v0, 0x8c($s3)
.L80240598:
/* 8A6018 80240598 0000882D */  daddu     $s1, $zero, $zero
.L8024059C:
/* 8A601C 8024059C 3C013FC0 */  lui       $at, 0x3fc0
/* 8A6020 802405A0 4481D000 */  mtc1      $at, $f26
/* 8A6024 802405A4 4480C000 */  mtc1      $zero, $f24
/* 8A6028 802405A8 3C013F00 */  lui       $at, 0x3f00
/* 8A602C 802405AC 4481B000 */  mtc1      $at, $f22
.L802405B0:
/* 8A6030 802405B0 0C00EAD2 */  jal       get_npc_safe
/* 8A6034 802405B4 0220202D */   daddu    $a0, $s1, $zero
/* 8A6038 802405B8 0040802D */  daddu     $s0, $v0, $zero
/* 8A603C 802405BC 52000035 */  beql      $s0, $zero, .L80240694
/* 8A6040 802405C0 26310001 */   addiu    $s1, $s1, 1
/* 8A6044 802405C4 C6020038 */  lwc1      $f2, 0x38($s0)
/* 8A6048 802405C8 C6400098 */  lwc1      $f0, 0x98($s2)
/* 8A604C 802405CC 46001081 */  sub.s     $f2, $f2, $f0
/* 8A6050 802405D0 46021182 */  mul.s     $f6, $f2, $f2
/* 8A6054 802405D4 00000000 */  nop       
/* 8A6058 802405D8 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 8A605C 802405DC C6020040 */  lwc1      $f2, 0x40($s0)
/* 8A6060 802405E0 46001081 */  sub.s     $f2, $f2, $f0
/* 8A6064 802405E4 46021102 */  mul.s     $f4, $f2, $f2
/* 8A6068 802405E8 00000000 */  nop       
/* 8A606C 802405EC 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A6070 802405F0 C602003C */  lwc1      $f2, 0x3c($s0)
/* 8A6074 802405F4 44820000 */  mtc1      $v0, $f0
/* 8A6078 802405F8 00000000 */  nop       
/* 8A607C 802405FC 46800020 */  cvt.s.w   $f0, $f0
/* 8A6080 80240600 46001080 */  add.s     $f2, $f2, $f0
/* 8A6084 80240604 461A1081 */  sub.s     $f2, $f2, $f26
/* 8A6088 80240608 46043300 */  add.s     $f12, $f6, $f4
/* 8A608C 8024060C C640009C */  lwc1      $f0, 0x9c($s2)
/* 8A6090 80240610 46001501 */  sub.s     $f20, $f2, $f0
/* 8A6094 80240614 46006004 */  sqrt.s    $f0, $f12
/* 8A6098 80240618 46000032 */  c.eq.s    $f0, $f0
/* 8A609C 8024061C 00000000 */  nop       
/* 8A60A0 80240620 45010003 */  bc1t      .L80240630
/* 8A60A4 80240624 00000000 */   nop      
/* 8A60A8 80240628 0C0187BC */  jal       sqrtf
/* 8A60AC 8024062C 00000000 */   nop      
.L80240630:
/* 8A60B0 80240630 4614C03C */  c.lt.s    $f24, $f20
/* 8A60B4 80240634 00000000 */  nop       
/* 8A60B8 80240638 45000015 */  bc1f      .L80240690
/* 8A60BC 8024063C 46000106 */   mov.s    $f4, $f0
/* 8A60C0 80240640 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A60C4 80240644 44820000 */  mtc1      $v0, $f0
/* 8A60C8 80240648 00000000 */  nop       
/* 8A60CC 8024064C 46800020 */  cvt.s.w   $f0, $f0
/* 8A60D0 80240650 4600A03C */  c.lt.s    $f20, $f0
/* 8A60D4 80240654 00000000 */  nop       
/* 8A60D8 80240658 4500000E */  bc1f      .L80240694
/* 8A60DC 8024065C 26310001 */   addiu    $s1, $s1, 1
/* 8A60E0 80240660 860200A6 */  lh        $v0, 0xa6($s0)
/* 8A60E4 80240664 44820000 */  mtc1      $v0, $f0
/* 8A60E8 80240668 00000000 */  nop       
/* 8A60EC 8024066C 46800020 */  cvt.s.w   $f0, $f0
/* 8A60F0 80240670 46160002 */  mul.s     $f0, $f0, $f22
/* 8A60F4 80240674 00000000 */  nop       
/* 8A60F8 80240678 4600203C */  c.lt.s    $f4, $f0
/* 8A60FC 8024067C 00000000 */  nop       
/* 8A6100 80240680 45000004 */  bc1f      .L80240694
/* 8A6104 80240684 24020001 */   addiu    $v0, $zero, 1
/* 8A6108 80240688 080901A8 */  j         .L802406A0
/* 8A610C 8024068C AE62008C */   sw       $v0, 0x8c($s3)
.L80240690:
/* 8A6110 80240690 26310001 */  addiu     $s1, $s1, 1
.L80240694:
/* 8A6114 80240694 2A220040 */  slti      $v0, $s1, 0x40
/* 8A6118 80240698 1440FFC5 */  bnez      $v0, .L802405B0
/* 8A611C 8024069C 00000000 */   nop      
.L802406A0:
/* 8A6120 802406A0 8FBF0020 */  lw        $ra, 0x20($sp)
/* 8A6124 802406A4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8A6128 802406A8 8FB20018 */  lw        $s2, 0x18($sp)
/* 8A612C 802406AC 8FB10014 */  lw        $s1, 0x14($sp)
/* 8A6130 802406B0 8FB00010 */  lw        $s0, 0x10($sp)
/* 8A6134 802406B4 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 8A6138 802406B8 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 8A613C 802406BC D7B60030 */  ldc1      $f22, 0x30($sp)
/* 8A6140 802406C0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 8A6144 802406C4 24020002 */  addiu     $v0, $zero, 2
/* 8A6148 802406C8 03E00008 */  jr        $ra
/* 8A614C 802406CC 27BD0048 */   addiu    $sp, $sp, 0x48
