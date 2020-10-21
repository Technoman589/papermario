.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242488_802D08
/* 802D08 80242488 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 802D0C 8024248C AFB00010 */  sw        $s0, 0x10($sp)
/* 802D10 80242490 0080802D */  daddu     $s0, $a0, $zero
/* 802D14 80242494 AFBF0020 */  sw        $ra, 0x20($sp)
/* 802D18 80242498 AFB3001C */  sw        $s3, 0x1c($sp)
/* 802D1C 8024249C AFB20018 */  sw        $s2, 0x18($sp)
/* 802D20 802424A0 10A00009 */  beqz      $a1, .L802424C8
/* 802D24 802424A4 AFB10014 */   sw       $s1, 0x14($sp)
/* 802D28 802424A8 0000202D */  daddu     $a0, $zero, $zero
/* 802D2C 802424AC 0080282D */  daddu     $a1, $a0, $zero
/* 802D30 802424B0 0080302D */  daddu     $a2, $a0, $zero
/* 802D34 802424B4 0C046F97 */  jal       set_background_color_blend
/* 802D38 802424B8 240700FF */   addiu    $a3, $zero, 0xff
/* 802D3C 802424BC 240200FF */  addiu     $v0, $zero, 0xff
/* 802D40 802424C0 AE020070 */  sw        $v0, 0x70($s0)
/* 802D44 802424C4 AE000074 */  sw        $zero, 0x74($s0)
.L802424C8:
/* 802D48 802424C8 8E020070 */  lw        $v0, 0x70($s0)
/* 802D4C 802424CC 2442FFF8 */  addiu     $v0, $v0, -8
/* 802D50 802424D0 04410002 */  bgez      $v0, .L802424DC
/* 802D54 802424D4 AE020070 */   sw       $v0, 0x70($s0)
/* 802D58 802424D8 AE000070 */  sw        $zero, 0x70($s0)
.L802424DC:
/* 802D5C 802424DC 0000202D */  daddu     $a0, $zero, $zero
/* 802D60 802424E0 0080282D */  daddu     $a1, $a0, $zero
/* 802D64 802424E4 92070073 */  lbu       $a3, 0x73($s0)
/* 802D68 802424E8 0C046F97 */  jal       set_background_color_blend
/* 802D6C 802424EC 0080302D */   daddu    $a2, $a0, $zero
/* 802D70 802424F0 8E020070 */  lw        $v0, 0x70($s0)
/* 802D74 802424F4 14400006 */  bnez      $v0, .L80242510
/* 802D78 802424F8 00000000 */   nop      
/* 802D7C 802424FC 8E020074 */  lw        $v0, 0x74($s0)
/* 802D80 80242500 14400003 */  bnez      $v0, .L80242510
/* 802D84 80242504 24020001 */   addiu    $v0, $zero, 1
/* 802D88 80242508 08090977 */  j         .L802425DC
/* 802D8C 8024250C AE020074 */   sw       $v0, 0x74($s0)
.L80242510:
/* 802D90 80242510 8E030074 */  lw        $v1, 0x74($s0)
/* 802D94 80242514 24020001 */  addiu     $v0, $zero, 1
/* 802D98 80242518 14620031 */  bne       $v1, $v0, .L802425E0
/* 802D9C 8024251C 0000102D */   daddu    $v0, $zero, $zero
/* 802DA0 80242520 0C04760B */  jal       func_8011D82C
/* 802DA4 80242524 0000202D */   daddu    $a0, $zero, $zero
/* 802DA8 80242528 0000802D */  daddu     $s0, $zero, $zero
/* 802DAC 8024252C 2413FFFC */  addiu     $s3, $zero, -4
/* 802DB0 80242530 24120005 */  addiu     $s2, $zero, 5
/* 802DB4 80242534 3C11FF7F */  lui       $s1, 0xff7f
/* 802DB8 80242538 3C028015 */  lui       $v0, 0x8015
/* 802DBC 8024253C 8C4212F0 */  lw        $v0, 0x12f0($v0)
/* 802DC0 80242540 3631FFFF */  ori       $s1, $s1, 0xffff
/* 802DC4 80242544 A0400000 */  sb        $zero, ($v0)
.L80242548:
/* 802DC8 80242548 0C00E2B7 */  jal       get_npc_by_index
/* 802DCC 8024254C 0200202D */   daddu    $a0, $s0, $zero
/* 802DD0 80242550 0040202D */  daddu     $a0, $v0, $zero
/* 802DD4 80242554 5080000B */  beql      $a0, $zero, .L80242584
/* 802DD8 80242558 26100001 */   addiu    $s0, $s0, 1
/* 802DDC 8024255C 8C820000 */  lw        $v0, ($a0)
/* 802DE0 80242560 50400008 */  beql      $v0, $zero, .L80242584
/* 802DE4 80242564 26100001 */   addiu    $s0, $s0, 1
/* 802DE8 80242568 808300A4 */  lb        $v1, 0xa4($a0)
/* 802DEC 8024256C 10730005 */  beq       $v1, $s3, .L80242584
/* 802DF0 80242570 26100001 */   addiu    $s0, $s0, 1
/* 802DF4 80242574 10720003 */  beq       $v1, $s2, .L80242584
/* 802DF8 80242578 00000000 */   nop      
/* 802DFC 8024257C 00511024 */  and       $v0, $v0, $s1
/* 802E00 80242580 AC820000 */  sw        $v0, ($a0)
.L80242584:
/* 802E04 80242584 2A020040 */  slti      $v0, $s0, 0x40
/* 802E08 80242588 1440FFEF */  bnez      $v0, .L80242548
/* 802E0C 8024258C 00000000 */   nop      
/* 802E10 80242590 0000802D */  daddu     $s0, $zero, $zero
/* 802E14 80242594 3C11F7FF */  lui       $s1, 0xf7ff
/* 802E18 80242598 3631FFFF */  ori       $s1, $s1, 0xffff
.L8024259C:
/* 802E1C 8024259C 0C04C3D6 */  jal       get_item_entity
/* 802E20 802425A0 0200202D */   daddu    $a0, $s0, $zero
/* 802E24 802425A4 0040182D */  daddu     $v1, $v0, $zero
/* 802E28 802425A8 10600007 */  beqz      $v1, .L802425C8
/* 802E2C 802425AC 26100001 */   addiu    $s0, $s0, 1
/* 802E30 802425B0 8C640000 */  lw        $a0, ($v1)
/* 802E34 802425B4 30820010 */  andi      $v0, $a0, 0x10
/* 802E38 802425B8 10400003 */  beqz      $v0, .L802425C8
/* 802E3C 802425BC 00000000 */   nop      
/* 802E40 802425C0 00911024 */  and       $v0, $a0, $s1
/* 802E44 802425C4 AC620000 */  sw        $v0, ($v1)
.L802425C8:
/* 802E48 802425C8 2A020100 */  slti      $v0, $s0, 0x100
/* 802E4C 802425CC 1440FFF3 */  bnez      $v0, .L8024259C
/* 802E50 802425D0 24020002 */   addiu    $v0, $zero, 2
/* 802E54 802425D4 08090978 */  j         .L802425E0
/* 802E58 802425D8 00000000 */   nop      
.L802425DC:
/* 802E5C 802425DC 0000102D */  daddu     $v0, $zero, $zero
.L802425E0:
/* 802E60 802425E0 8FBF0020 */  lw        $ra, 0x20($sp)
/* 802E64 802425E4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 802E68 802425E8 8FB20018 */  lw        $s2, 0x18($sp)
/* 802E6C 802425EC 8FB10014 */  lw        $s1, 0x14($sp)
/* 802E70 802425F0 8FB00010 */  lw        $s0, 0x10($sp)
/* 802E74 802425F4 03E00008 */  jr        $ra
/* 802E78 802425F8 27BD0028 */   addiu    $sp, $sp, 0x28
