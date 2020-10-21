.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241C14_802494
/* 802494 80241C14 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 802498 80241C18 AFB40058 */  sw        $s4, 0x58($sp)
/* 80249C 80241C1C 0080A02D */  daddu     $s4, $a0, $zero
/* 8024A0 80241C20 AFBF0060 */  sw        $ra, 0x60($sp)
/* 8024A4 80241C24 AFB5005C */  sw        $s5, 0x5c($sp)
/* 8024A8 80241C28 AFB30054 */  sw        $s3, 0x54($sp)
/* 8024AC 80241C2C AFB20050 */  sw        $s2, 0x50($sp)
/* 8024B0 80241C30 AFB1004C */  sw        $s1, 0x4c($sp)
/* 8024B4 80241C34 AFB00048 */  sw        $s0, 0x48($sp)
/* 8024B8 80241C38 8E910148 */  lw        $s1, 0x148($s4)
/* 8024BC 80241C3C 86240008 */  lh        $a0, 8($s1)
/* 8024C0 80241C40 0C00EABB */  jal       get_npc_unsafe
/* 8024C4 80241C44 00A0802D */   daddu    $s0, $a1, $zero
/* 8024C8 80241C48 8E83000C */  lw        $v1, 0xc($s4)
/* 8024CC 80241C4C 0280202D */  daddu     $a0, $s4, $zero
/* 8024D0 80241C50 8C650000 */  lw        $a1, ($v1)
/* 8024D4 80241C54 0C0B1EAF */  jal       get_variable
/* 8024D8 80241C58 0040902D */   daddu    $s2, $v0, $zero
/* 8024DC 80241C5C AFA00018 */  sw        $zero, 0x18($sp)
/* 8024E0 80241C60 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8024E4 80241C64 8C630094 */  lw        $v1, 0x94($v1)
/* 8024E8 80241C68 AFA3001C */  sw        $v1, 0x1c($sp)
/* 8024EC 80241C6C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8024F0 80241C70 8C630080 */  lw        $v1, 0x80($v1)
/* 8024F4 80241C74 AFA30020 */  sw        $v1, 0x20($sp)
/* 8024F8 80241C78 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8024FC 80241C7C 8C630088 */  lw        $v1, 0x88($v1)
/* 802500 80241C80 AFA30024 */  sw        $v1, 0x24($sp)
/* 802504 80241C84 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 802508 80241C88 8C63008C */  lw        $v1, 0x8c($v1)
/* 80250C 80241C8C 27B50018 */  addiu     $s5, $sp, 0x18
/* 802510 80241C90 AFA30028 */  sw        $v1, 0x28($sp)
/* 802514 80241C94 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 802518 80241C98 3C014282 */  lui       $at, 0x4282
/* 80251C 80241C9C 44810000 */  mtc1      $at, $f0
/* 802520 80241CA0 8C630090 */  lw        $v1, 0x90($v1)
/* 802524 80241CA4 0040982D */  daddu     $s3, $v0, $zero
/* 802528 80241CA8 E7A00030 */  swc1      $f0, 0x30($sp)
/* 80252C 80241CAC A7A00034 */  sh        $zero, 0x34($sp)
/* 802530 80241CB0 16000005 */  bnez      $s0, .L80241CC8
/* 802534 80241CB4 AFA3002C */   sw       $v1, 0x2c($sp)
/* 802538 80241CB8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 80253C 80241CBC 30420004 */  andi      $v0, $v0, 4
/* 802540 80241CC0 10400044 */  beqz      $v0, .L80241DD4
/* 802544 80241CC4 00000000 */   nop      
.L80241CC8:
/* 802548 80241CC8 2404F7FF */  addiu     $a0, $zero, -0x801
/* 80254C 80241CCC AE800070 */  sw        $zero, 0x70($s4)
/* 802550 80241CD0 A640008E */  sh        $zero, 0x8e($s2)
/* 802554 80241CD4 8E2200CC */  lw        $v0, 0xcc($s1)
/* 802558 80241CD8 8E430000 */  lw        $v1, ($s2)
/* 80255C 80241CDC 8C420000 */  lw        $v0, ($v0)
/* 802560 80241CE0 00641824 */  and       $v1, $v1, $a0
/* 802564 80241CE4 AE430000 */  sw        $v1, ($s2)
/* 802568 80241CE8 AE420028 */  sw        $v0, 0x28($s2)
/* 80256C 80241CEC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 802570 80241CF0 8C420098 */  lw        $v0, 0x98($v0)
/* 802574 80241CF4 54400005 */  bnel      $v0, $zero, .L80241D0C
/* 802578 80241CF8 2402FDFF */   addiu    $v0, $zero, -0x201
/* 80257C 80241CFC 34620200 */  ori       $v0, $v1, 0x200
/* 802580 80241D00 2403FFF7 */  addiu     $v1, $zero, -9
/* 802584 80241D04 08090745 */  j         .L80241D14
/* 802588 80241D08 00431024 */   and      $v0, $v0, $v1
.L80241D0C:
/* 80258C 80241D0C 00621024 */  and       $v0, $v1, $v0
/* 802590 80241D10 34420008 */  ori       $v0, $v0, 8
.L80241D14:
/* 802594 80241D14 AE420000 */  sw        $v0, ($s2)
/* 802598 80241D18 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 80259C 80241D1C 30420004 */  andi      $v0, $v0, 4
/* 8025A0 80241D20 10400008 */  beqz      $v0, .L80241D44
/* 8025A4 80241D24 24020063 */   addiu    $v0, $zero, 0x63
/* 8025A8 80241D28 AE820070 */  sw        $v0, 0x70($s4)
/* 8025AC 80241D2C AE800074 */  sw        $zero, 0x74($s4)
/* 8025B0 80241D30 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 8025B4 80241D34 2403FFFB */  addiu     $v1, $zero, -5
/* 8025B8 80241D38 00431024 */  and       $v0, $v0, $v1
/* 8025BC 80241D3C 0809075C */  j         .L80241D70
/* 8025C0 80241D40 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80241D44:
/* 8025C4 80241D44 8E220000 */  lw        $v0, ($s1)
/* 8025C8 80241D48 3C034000 */  lui       $v1, 0x4000
/* 8025CC 80241D4C 00431024 */  and       $v0, $v0, $v1
/* 8025D0 80241D50 10400007 */  beqz      $v0, .L80241D70
/* 8025D4 80241D54 3C03BFFF */   lui      $v1, 0xbfff
/* 8025D8 80241D58 2402000C */  addiu     $v0, $zero, 0xc
/* 8025DC 80241D5C AE820070 */  sw        $v0, 0x70($s4)
/* 8025E0 80241D60 8E220000 */  lw        $v0, ($s1)
/* 8025E4 80241D64 3463FFFF */  ori       $v1, $v1, 0xffff
/* 8025E8 80241D68 00431024 */  and       $v0, $v0, $v1
/* 8025EC 80241D6C AE220000 */  sw        $v0, ($s1)
.L80241D70:
/* 8025F0 80241D70 27A50038 */  addiu     $a1, $sp, 0x38
/* 8025F4 80241D74 27A6003C */  addiu     $a2, $sp, 0x3c
/* 8025F8 80241D78 C6400038 */  lwc1      $f0, 0x38($s2)
/* 8025FC 80241D7C 864200A8 */  lh        $v0, 0xa8($s2)
/* 802600 80241D80 3C0142C8 */  lui       $at, 0x42c8
/* 802604 80241D84 44812000 */  mtc1      $at, $f4
/* 802608 80241D88 44823000 */  mtc1      $v0, $f6
/* 80260C 80241D8C 00000000 */  nop       
/* 802610 80241D90 468031A0 */  cvt.s.w   $f6, $f6
/* 802614 80241D94 27A20044 */  addiu     $v0, $sp, 0x44
/* 802618 80241D98 E7A00038 */  swc1      $f0, 0x38($sp)
/* 80261C 80241D9C C640003C */  lwc1      $f0, 0x3c($s2)
/* 802620 80241DA0 C6420040 */  lwc1      $f2, 0x40($s2)
/* 802624 80241DA4 46060000 */  add.s     $f0, $f0, $f6
/* 802628 80241DA8 E7A40044 */  swc1      $f4, 0x44($sp)
/* 80262C 80241DAC E7A20040 */  swc1      $f2, 0x40($sp)
/* 802630 80241DB0 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 802634 80241DB4 AFA20010 */  sw        $v0, 0x10($sp)
/* 802638 80241DB8 8E440080 */  lw        $a0, 0x80($s2)
/* 80263C 80241DBC 0C0372DF */  jal       func_800DCB7C
/* 802640 80241DC0 27A70040 */   addiu    $a3, $sp, 0x40
/* 802644 80241DC4 10400003 */  beqz      $v0, .L80241DD4
/* 802648 80241DC8 00000000 */   nop      
/* 80264C 80241DCC C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 802650 80241DD0 E640003C */  swc1      $f0, 0x3c($s2)
.L80241DD4:
/* 802654 80241DD4 8E830070 */  lw        $v1, 0x70($s4)
/* 802658 80241DD8 2C620064 */  sltiu     $v0, $v1, 0x64
/* 80265C 80241DDC 10400042 */  beqz      $v0, .L80241EE8
/* 802660 80241DE0 00031080 */   sll      $v0, $v1, 2
/* 802664 80241DE4 3C018026 */  lui       $at, 0x8026
/* 802668 80241DE8 00220821 */  addu      $at, $at, $v0
/* 80266C 80241DEC 8C2226F0 */  lw        $v0, 0x26f0($at)
/* 802670 80241DF0 00400008 */  jr        $v0
/* 802674 80241DF4 00000000 */   nop      
/* 802678 80241DF8 0280202D */  daddu     $a0, $s4, $zero
/* 80267C 80241DFC 0260282D */  daddu     $a1, $s3, $zero
/* 802680 80241E00 0C090420 */  jal       func_80241080_801900
/* 802684 80241E04 02A0302D */   daddu    $a2, $s5, $zero
/* 802688 80241E08 0280202D */  daddu     $a0, $s4, $zero
/* 80268C 80241E0C 0260282D */  daddu     $a1, $s3, $zero
/* 802690 80241E10 0C090476 */  jal       func_802411D8_801A58
/* 802694 80241E14 02A0302D */   daddu    $a2, $s5, $zero
/* 802698 80241E18 080907BA */  j         .L80241EE8
/* 80269C 80241E1C 00000000 */   nop      
/* 8026A0 80241E20 0280202D */  daddu     $a0, $s4, $zero
/* 8026A4 80241E24 0260282D */  daddu     $a1, $s3, $zero
/* 8026A8 80241E28 0C090520 */  jal       func_80241480_801D00
/* 8026AC 80241E2C 02A0302D */   daddu    $a2, $s5, $zero
/* 8026B0 80241E30 0280202D */  daddu     $a0, $s4, $zero
/* 8026B4 80241E34 0260282D */  daddu     $a1, $s3, $zero
/* 8026B8 80241E38 0C090550 */  jal       func_80241540_801DC0
/* 8026BC 80241E3C 02A0302D */   daddu    $a2, $s5, $zero
/* 8026C0 80241E40 080907BA */  j         .L80241EE8
/* 8026C4 80241E44 00000000 */   nop      
/* 8026C8 80241E48 0280202D */  daddu     $a0, $s4, $zero
/* 8026CC 80241E4C 0260282D */  daddu     $a1, $s3, $zero
/* 8026D0 80241E50 0C0905BF */  jal       func_802416FC_801F7C
/* 8026D4 80241E54 02A0302D */   daddu    $a2, $s5, $zero
/* 8026D8 80241E58 080907BA */  j         .L80241EE8
/* 8026DC 80241E5C 00000000 */   nop      
/* 8026E0 80241E60 0280202D */  daddu     $a0, $s4, $zero
/* 8026E4 80241E64 0260282D */  daddu     $a1, $s3, $zero
/* 8026E8 80241E68 0C0905EC */  jal       func_802417B0_802030
/* 8026EC 80241E6C 02A0302D */   daddu    $a2, $s5, $zero
/* 8026F0 80241E70 0280202D */  daddu     $a0, $s4, $zero
/* 8026F4 80241E74 0260282D */  daddu     $a1, $s3, $zero
/* 8026F8 80241E78 0C090609 */  jal       func_80241824_8020A4
/* 8026FC 80241E7C 02A0302D */   daddu    $a2, $s5, $zero
/* 802700 80241E80 080907BA */  j         .L80241EE8
/* 802704 80241E84 00000000 */   nop      
/* 802708 80241E88 0280202D */  daddu     $a0, $s4, $zero
/* 80270C 80241E8C 0260282D */  daddu     $a1, $s3, $zero
/* 802710 80241E90 0C090627 */  jal       func_8024189C_80211C
/* 802714 80241E94 02A0302D */   daddu    $a2, $s5, $zero
/* 802718 80241E98 0280202D */  daddu     $a0, $s4, $zero
/* 80271C 80241E9C 0260282D */  daddu     $a1, $s3, $zero
/* 802720 80241EA0 0C090673 */  jal       func_802419CC_80224C
/* 802724 80241EA4 02A0302D */   daddu    $a2, $s5, $zero
/* 802728 80241EA8 080907BA */  j         .L80241EE8
/* 80272C 80241EAC 00000000 */   nop      
/* 802730 80241EB0 0280202D */  daddu     $a0, $s4, $zero
/* 802734 80241EB4 0260282D */  daddu     $a1, $s3, $zero
/* 802738 80241EB8 0C0906BB */  jal       func_80241AEC_80236C
/* 80273C 80241EBC 02A0302D */   daddu    $a2, $s5, $zero
/* 802740 80241EC0 080907BA */  j         .L80241EE8
/* 802744 80241EC4 00000000 */   nop      
/* 802748 80241EC8 0280202D */  daddu     $a0, $s4, $zero
/* 80274C 80241ECC 0260282D */  daddu     $a1, $s3, $zero
/* 802750 80241ED0 0C0906D5 */  jal       func_80241B54_8023D4
/* 802754 80241ED4 02A0302D */   daddu    $a2, $s5, $zero
/* 802758 80241ED8 080907BA */  j         .L80241EE8
/* 80275C 80241EDC 00000000 */   nop      
/* 802760 80241EE0 0C0129CF */  jal       func_8004A73C
/* 802764 80241EE4 0280202D */   daddu    $a0, $s4, $zero
.L80241EE8:
/* 802768 80241EE8 8FBF0060 */  lw        $ra, 0x60($sp)
/* 80276C 80241EEC 8FB5005C */  lw        $s5, 0x5c($sp)
/* 802770 80241EF0 8FB40058 */  lw        $s4, 0x58($sp)
/* 802774 80241EF4 8FB30054 */  lw        $s3, 0x54($sp)
/* 802778 80241EF8 8FB20050 */  lw        $s2, 0x50($sp)
/* 80277C 80241EFC 8FB1004C */  lw        $s1, 0x4c($sp)
/* 802780 80241F00 8FB00048 */  lw        $s0, 0x48($sp)
/* 802784 80241F04 0000102D */  daddu     $v0, $zero, $zero
/* 802788 80241F08 03E00008 */  jr        $ra
/* 80278C 80241F0C 27BD0068 */   addiu    $sp, $sp, 0x68
