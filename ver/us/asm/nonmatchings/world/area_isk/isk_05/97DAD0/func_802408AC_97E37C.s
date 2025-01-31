.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408AC_97E37C
/* 97E37C 802408AC 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 97E380 802408B0 AFB40050 */  sw        $s4, 0x50($sp)
/* 97E384 802408B4 0080A02D */  daddu     $s4, $a0, $zero
/* 97E388 802408B8 AFBF0060 */  sw        $ra, 0x60($sp)
/* 97E38C 802408BC AFB7005C */  sw        $s7, 0x5c($sp)
/* 97E390 802408C0 AFB60058 */  sw        $s6, 0x58($sp)
/* 97E394 802408C4 AFB50054 */  sw        $s5, 0x54($sp)
/* 97E398 802408C8 AFB3004C */  sw        $s3, 0x4c($sp)
/* 97E39C 802408CC AFB20048 */  sw        $s2, 0x48($sp)
/* 97E3A0 802408D0 AFB10044 */  sw        $s1, 0x44($sp)
/* 97E3A4 802408D4 AFB00040 */  sw        $s0, 0x40($sp)
/* 97E3A8 802408D8 F7B40068 */  sdc1      $f20, 0x68($sp)
/* 97E3AC 802408DC 8E950148 */  lw        $s5, 0x148($s4)
/* 97E3B0 802408E0 00A0B02D */  daddu     $s6, $a1, $zero
/* 97E3B4 802408E4 86A40008 */  lh        $a0, 8($s5)
/* 97E3B8 802408E8 0C00EABB */  jal       get_npc_unsafe
/* 97E3BC 802408EC 00C0B82D */   daddu    $s7, $a2, $zero
/* 97E3C0 802408F0 0040982D */  daddu     $s3, $v0, $zero
/* 97E3C4 802408F4 C6600018 */  lwc1      $f0, 0x18($s3)
/* 97E3C8 802408F8 44801000 */  mtc1      $zero, $f2
/* 97E3CC 802408FC 44801800 */  mtc1      $zero, $f3
/* 97E3D0 80240900 46000021 */  cvt.d.s   $f0, $f0
/* 97E3D4 80240904 4620103C */  c.lt.d    $f2, $f0
/* 97E3D8 80240908 00000000 */  nop
/* 97E3DC 8024090C 45000021 */  bc1f      .L80240994
/* 97E3E0 80240910 27A50028 */   addiu    $a1, $sp, 0x28
/* 97E3E4 80240914 C6600038 */  lwc1      $f0, 0x38($s3)
/* 97E3E8 80240918 C662003C */  lwc1      $f2, 0x3c($s3)
/* 97E3EC 8024091C C6640040 */  lwc1      $f4, 0x40($s3)
/* 97E3F0 80240920 C6660018 */  lwc1      $f6, 0x18($s3)
/* 97E3F4 80240924 E7A00028 */  swc1      $f0, 0x28($sp)
/* 97E3F8 80240928 E7A2002C */  swc1      $f2, 0x2c($sp)
/* 97E3FC 8024092C E7A40030 */  swc1      $f4, 0x30($sp)
/* 97E400 80240930 E7A60010 */  swc1      $f6, 0x10($sp)
/* 97E404 80240934 C660000C */  lwc1      $f0, 0xc($s3)
/* 97E408 80240938 E7A00014 */  swc1      $f0, 0x14($sp)
/* 97E40C 8024093C 866200A8 */  lh        $v0, 0xa8($s3)
/* 97E410 80240940 44820000 */  mtc1      $v0, $f0
/* 97E414 80240944 00000000 */  nop
/* 97E418 80240948 46800020 */  cvt.s.w   $f0, $f0
/* 97E41C 8024094C E7A00018 */  swc1      $f0, 0x18($sp)
/* 97E420 80240950 866200A6 */  lh        $v0, 0xa6($s3)
/* 97E424 80240954 27A6002C */  addiu     $a2, $sp, 0x2c
/* 97E428 80240958 44820000 */  mtc1      $v0, $f0
/* 97E42C 8024095C 00000000 */  nop
/* 97E430 80240960 46800020 */  cvt.s.w   $f0, $f0
/* 97E434 80240964 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 97E438 80240968 8E640080 */  lw        $a0, 0x80($s3)
/* 97E43C 8024096C 0C037711 */  jal       npc_test_move_simple_with_slipping
/* 97E440 80240970 27A70030 */   addiu    $a3, $sp, 0x30
/* 97E444 80240974 10400003 */  beqz      $v0, .L80240984
/* 97E448 80240978 00000000 */   nop
/* 97E44C 8024097C 08090265 */  j         .L80240994
/* 97E450 80240980 AE600018 */   sw       $zero, 0x18($s3)
.L80240984:
/* 97E454 80240984 8E650018 */  lw        $a1, 0x18($s3)
/* 97E458 80240988 8E66000C */  lw        $a2, 0xc($s3)
/* 97E45C 8024098C 0C00EA95 */  jal       npc_move_heading
/* 97E460 80240990 0260202D */   daddu    $a0, $s3, $zero
.L80240994:
/* 97E464 80240994 C660001C */  lwc1      $f0, 0x1c($s3)
/* 97E468 80240998 44801000 */  mtc1      $zero, $f2
/* 97E46C 8024099C 44801800 */  mtc1      $zero, $f3
/* 97E470 802409A0 46000021 */  cvt.d.s   $f0, $f0
/* 97E474 802409A4 4622003C */  c.lt.d    $f0, $f2
/* 97E478 802409A8 00000000 */  nop
/* 97E47C 802409AC 4500006C */  bc1f      .L80240B60
/* 97E480 802409B0 27B00028 */   addiu    $s0, $sp, 0x28
/* 97E484 802409B4 0200282D */  daddu     $a1, $s0, $zero
/* 97E488 802409B8 27A60034 */  addiu     $a2, $sp, 0x34
/* 97E48C 802409BC 27B20038 */  addiu     $s2, $sp, 0x38
/* 97E490 802409C0 C6600038 */  lwc1      $f0, 0x38($s3)
/* 97E494 802409C4 3C0142C8 */  lui       $at, 0x42c8
/* 97E498 802409C8 44811000 */  mtc1      $at, $f2
/* 97E49C 802409CC C6640040 */  lwc1      $f4, 0x40($s3)
/* 97E4A0 802409D0 3C01447A */  lui       $at, 0x447a
/* 97E4A4 802409D4 44813000 */  mtc1      $at, $f6
/* 97E4A8 802409D8 27B10030 */  addiu     $s1, $sp, 0x30
/* 97E4AC 802409DC E7A00028 */  swc1      $f0, 0x28($sp)
/* 97E4B0 802409E0 E7A20034 */  swc1      $f2, 0x34($sp)
/* 97E4B4 802409E4 E7A40030 */  swc1      $f4, 0x30($sp)
/* 97E4B8 802409E8 E7A60038 */  swc1      $f6, 0x38($sp)
/* 97E4BC 802409EC AFB20010 */  sw        $s2, 0x10($sp)
/* 97E4C0 802409F0 8E640080 */  lw        $a0, 0x80($s3)
/* 97E4C4 802409F4 0C0372DF */  jal       npc_raycast_down_sides
/* 97E4C8 802409F8 0220382D */   daddu    $a3, $s1, $zero
/* 97E4CC 802409FC 0200282D */  daddu     $a1, $s0, $zero
/* 97E4D0 80240A00 27A6002C */  addiu     $a2, $sp, 0x2c
/* 97E4D4 80240A04 C662003C */  lwc1      $f2, 0x3c($s3)
/* 97E4D8 80240A08 C6660038 */  lwc1      $f6, 0x38($s3)
/* 97E4DC 80240A0C 3C01402A */  lui       $at, 0x402a
/* 97E4E0 80240A10 4481A800 */  mtc1      $at, $f21
/* 97E4E4 80240A14 4480A000 */  mtc1      $zero, $f20
/* 97E4E8 80240A18 460010A1 */  cvt.d.s   $f2, $f2
/* 97E4EC 80240A1C 46341080 */  add.d     $f2, $f2, $f20
/* 97E4F0 80240A20 C660001C */  lwc1      $f0, 0x1c($s3)
/* 97E4F4 80240A24 C6640040 */  lwc1      $f4, 0x40($s3)
/* 97E4F8 80240A28 46000005 */  abs.s     $f0, $f0
/* 97E4FC 80240A2C E7A40030 */  swc1      $f4, 0x30($sp)
/* 97E500 80240A30 3C014030 */  lui       $at, 0x4030
/* 97E504 80240A34 44812800 */  mtc1      $at, $f5
/* 97E508 80240A38 44802000 */  mtc1      $zero, $f4
/* 97E50C 80240A3C 46000021 */  cvt.d.s   $f0, $f0
/* 97E510 80240A40 E7A60028 */  swc1      $f6, 0x28($sp)
/* 97E514 80240A44 46240000 */  add.d     $f0, $f0, $f4
/* 97E518 80240A48 462010A0 */  cvt.s.d   $f2, $f2
/* 97E51C 80240A4C E7A2002C */  swc1      $f2, 0x2c($sp)
/* 97E520 80240A50 46200020 */  cvt.s.d   $f0, $f0
/* 97E524 80240A54 E7A00038 */  swc1      $f0, 0x38($sp)
/* 97E528 80240A58 AFB20010 */  sw        $s2, 0x10($sp)
/* 97E52C 80240A5C 8E640080 */  lw        $a0, 0x80($s3)
/* 97E530 80240A60 0C0372DF */  jal       npc_raycast_down_sides
/* 97E534 80240A64 0220382D */   daddu    $a3, $s1, $zero
/* 97E538 80240A68 1040003D */  beqz      $v0, .L80240B60
/* 97E53C 80240A6C 00000000 */   nop
/* 97E540 80240A70 C660001C */  lwc1      $f0, 0x1c($s3)
/* 97E544 80240A74 C7A20038 */  lwc1      $f2, 0x38($sp)
/* 97E548 80240A78 46000005 */  abs.s     $f0, $f0
/* 97E54C 80240A7C 46000021 */  cvt.d.s   $f0, $f0
/* 97E550 80240A80 46340000 */  add.d     $f0, $f0, $f20
/* 97E554 80240A84 460010A1 */  cvt.d.s   $f2, $f2
/* 97E558 80240A88 4620103E */  c.le.d    $f2, $f0
/* 97E55C 80240A8C 00000000 */  nop
/* 97E560 80240A90 45000033 */  bc1f      .L80240B60
/* 97E564 80240A94 2403F7FF */   addiu    $v1, $zero, -0x801
/* 97E568 80240A98 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 97E56C 80240A9C 8E620000 */  lw        $v0, ($s3)
/* 97E570 80240AA0 AE60001C */  sw        $zero, 0x1c($s3)
/* 97E574 80240AA4 00431024 */  and       $v0, $v0, $v1
/* 97E578 80240AA8 E660003C */  swc1      $f0, 0x3c($s3)
/* 97E57C 80240AAC AE620000 */  sw        $v0, ($s3)
/* 97E580 80240AB0 AFA00010 */  sw        $zero, 0x10($sp)
/* 97E584 80240AB4 AFA00014 */  sw        $zero, 0x14($sp)
/* 97E588 80240AB8 8E650038 */  lw        $a1, 0x38($s3)
/* 97E58C 80240ABC 8E66003C */  lw        $a2, 0x3c($s3)
/* 97E590 80240AC0 8E670040 */  lw        $a3, 0x40($s3)
/* 97E594 80240AC4 0C01BECC */  jal       fx_walk
/* 97E598 80240AC8 24040002 */   addiu    $a0, $zero, 2
/* 97E59C 80240ACC 02E0202D */  daddu     $a0, $s7, $zero
/* 97E5A0 80240AD0 2402000C */  addiu     $v0, $zero, 0xc
/* 97E5A4 80240AD4 AE820070 */  sw        $v0, 0x70($s4)
/* 97E5A8 80240AD8 24020001 */  addiu     $v0, $zero, 1
/* 97E5AC 80240ADC AFA20010 */  sw        $v0, 0x10($sp)
/* 97E5B0 80240AE0 8EC60024 */  lw        $a2, 0x24($s6)
/* 97E5B4 80240AE4 8EC70028 */  lw        $a3, 0x28($s6)
/* 97E5B8 80240AE8 0C01242D */  jal       func_800490B4
/* 97E5BC 80240AEC 02A0282D */   daddu    $a1, $s5, $zero
/* 97E5C0 80240AF0 14400022 */  bnez      $v0, .L80240B7C
/* 97E5C4 80240AF4 24040002 */   addiu    $a0, $zero, 2
/* 97E5C8 80240AF8 0260282D */  daddu     $a1, $s3, $zero
/* 97E5CC 80240AFC 0000302D */  daddu     $a2, $zero, $zero
/* 97E5D0 80240B00 866300A8 */  lh        $v1, 0xa8($s3)
/* 97E5D4 80240B04 3C013F80 */  lui       $at, 0x3f80
/* 97E5D8 80240B08 44810000 */  mtc1      $at, $f0
/* 97E5DC 80240B0C 3C014000 */  lui       $at, 0x4000
/* 97E5E0 80240B10 44811000 */  mtc1      $at, $f2
/* 97E5E4 80240B14 3C01C1A0 */  lui       $at, 0xc1a0
/* 97E5E8 80240B18 44812000 */  mtc1      $at, $f4
/* 97E5EC 80240B1C 2402000F */  addiu     $v0, $zero, 0xf
/* 97E5F0 80240B20 AFA2001C */  sw        $v0, 0x1c($sp)
/* 97E5F4 80240B24 44834000 */  mtc1      $v1, $f8
/* 97E5F8 80240B28 00000000 */  nop
/* 97E5FC 80240B2C 46804220 */  cvt.s.w   $f8, $f8
/* 97E600 80240B30 44074000 */  mfc1      $a3, $f8
/* 97E604 80240B34 27A2003C */  addiu     $v0, $sp, 0x3c
/* 97E608 80240B38 AFA20020 */  sw        $v0, 0x20($sp)
/* 97E60C 80240B3C E7A00010 */  swc1      $f0, 0x10($sp)
/* 97E610 80240B40 E7A20014 */  swc1      $f2, 0x14($sp)
/* 97E614 80240B44 0C01BFA4 */  jal       fx_emote
/* 97E618 80240B48 E7A40018 */   swc1     $f4, 0x18($sp)
/* 97E61C 80240B4C 24020019 */  addiu     $v0, $zero, 0x19
/* 97E620 80240B50 A662008E */  sh        $v0, 0x8e($s3)
/* 97E624 80240B54 2402000E */  addiu     $v0, $zero, 0xe
/* 97E628 80240B58 080902DF */  j         .L80240B7C
/* 97E62C 80240B5C AE820070 */   sw       $v0, 0x70($s4)
.L80240B60:
/* 97E630 80240B60 C664003C */  lwc1      $f4, 0x3c($s3)
/* 97E634 80240B64 C660001C */  lwc1      $f0, 0x1c($s3)
/* 97E638 80240B68 46002100 */  add.s     $f4, $f4, $f0
/* 97E63C 80240B6C C6620014 */  lwc1      $f2, 0x14($s3)
/* 97E640 80240B70 46020001 */  sub.s     $f0, $f0, $f2
/* 97E644 80240B74 E664003C */  swc1      $f4, 0x3c($s3)
/* 97E648 80240B78 E660001C */  swc1      $f0, 0x1c($s3)
.L80240B7C:
/* 97E64C 80240B7C 8FBF0060 */  lw        $ra, 0x60($sp)
/* 97E650 80240B80 8FB7005C */  lw        $s7, 0x5c($sp)
/* 97E654 80240B84 8FB60058 */  lw        $s6, 0x58($sp)
/* 97E658 80240B88 8FB50054 */  lw        $s5, 0x54($sp)
/* 97E65C 80240B8C 8FB40050 */  lw        $s4, 0x50($sp)
/* 97E660 80240B90 8FB3004C */  lw        $s3, 0x4c($sp)
/* 97E664 80240B94 8FB20048 */  lw        $s2, 0x48($sp)
/* 97E668 80240B98 8FB10044 */  lw        $s1, 0x44($sp)
/* 97E66C 80240B9C 8FB00040 */  lw        $s0, 0x40($sp)
/* 97E670 80240BA0 D7B40068 */  ldc1      $f20, 0x68($sp)
/* 97E674 80240BA4 03E00008 */  jr        $ra
/* 97E678 80240BA8 27BD0070 */   addiu    $sp, $sp, 0x70
