.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240C18_DCD8E8
/* DCD8E8 80240C18 27BDFF98 */  addiu     $sp, $sp, -0x68
/* DCD8EC 80240C1C AFB30054 */  sw        $s3, 0x54($sp)
/* DCD8F0 80240C20 0080982D */  daddu     $s3, $a0, $zero
/* DCD8F4 80240C24 AFBF0060 */  sw        $ra, 0x60($sp)
/* DCD8F8 80240C28 AFB5005C */  sw        $s5, 0x5c($sp)
/* DCD8FC 80240C2C AFB40058 */  sw        $s4, 0x58($sp)
/* DCD900 80240C30 AFB20050 */  sw        $s2, 0x50($sp)
/* DCD904 80240C34 AFB1004C */  sw        $s1, 0x4c($sp)
/* DCD908 80240C38 AFB00048 */  sw        $s0, 0x48($sp)
/* DCD90C 80240C3C 8E710148 */  lw        $s1, 0x148($s3)
/* DCD910 80240C40 86240008 */  lh        $a0, 8($s1)
/* DCD914 80240C44 0C00EABB */  jal       get_npc_unsafe
/* DCD918 80240C48 00A0802D */   daddu    $s0, $a1, $zero
/* DCD91C 80240C4C 8E63000C */  lw        $v1, 0xc($s3)
/* DCD920 80240C50 0260202D */  daddu     $a0, $s3, $zero
/* DCD924 80240C54 8C650000 */  lw        $a1, ($v1)
/* DCD928 80240C58 0C0B1EAF */  jal       get_variable
/* DCD92C 80240C5C 0040902D */   daddu    $s2, $v0, $zero
/* DCD930 80240C60 AFA00018 */  sw        $zero, 0x18($sp)
/* DCD934 80240C64 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCD938 80240C68 8C630030 */  lw        $v1, 0x30($v1)
/* DCD93C 80240C6C AFA3001C */  sw        $v1, 0x1c($sp)
/* DCD940 80240C70 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCD944 80240C74 8C63001C */  lw        $v1, 0x1c($v1)
/* DCD948 80240C78 AFA30020 */  sw        $v1, 0x20($sp)
/* DCD94C 80240C7C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCD950 80240C80 8C630024 */  lw        $v1, 0x24($v1)
/* DCD954 80240C84 AFA30024 */  sw        $v1, 0x24($sp)
/* DCD958 80240C88 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCD95C 80240C8C 8C630028 */  lw        $v1, 0x28($v1)
/* DCD960 80240C90 27B50018 */  addiu     $s5, $sp, 0x18
/* DCD964 80240C94 AFA30028 */  sw        $v1, 0x28($sp)
/* DCD968 80240C98 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCD96C 80240C9C 3C014282 */  lui       $at, 0x4282
/* DCD970 80240CA0 44810000 */  mtc1      $at, $f0
/* DCD974 80240CA4 8C63002C */  lw        $v1, 0x2c($v1)
/* DCD978 80240CA8 0040A02D */  daddu     $s4, $v0, $zero
/* DCD97C 80240CAC E7A00030 */  swc1      $f0, 0x30($sp)
/* DCD980 80240CB0 A7A00034 */  sh        $zero, 0x34($sp)
/* DCD984 80240CB4 16000005 */  bnez      $s0, .L80240CCC
/* DCD988 80240CB8 AFA3002C */   sw       $v1, 0x2c($sp)
/* DCD98C 80240CBC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DCD990 80240CC0 30420004 */  andi      $v0, $v0, 4
/* DCD994 80240CC4 10400044 */  beqz      $v0, .L80240DD8
/* DCD998 80240CC8 00000000 */   nop      
.L80240CCC:
/* DCD99C 80240CCC 2404F7FF */  addiu     $a0, $zero, -0x801
/* DCD9A0 80240CD0 AE600070 */  sw        $zero, 0x70($s3)
/* DCD9A4 80240CD4 A640008E */  sh        $zero, 0x8e($s2)
/* DCD9A8 80240CD8 8E2200CC */  lw        $v0, 0xcc($s1)
/* DCD9AC 80240CDC 8E430000 */  lw        $v1, ($s2)
/* DCD9B0 80240CE0 8C420000 */  lw        $v0, ($v0)
/* DCD9B4 80240CE4 00641824 */  and       $v1, $v1, $a0
/* DCD9B8 80240CE8 AE430000 */  sw        $v1, ($s2)
/* DCD9BC 80240CEC AE420028 */  sw        $v0, 0x28($s2)
/* DCD9C0 80240CF0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* DCD9C4 80240CF4 8C420034 */  lw        $v0, 0x34($v0)
/* DCD9C8 80240CF8 54400005 */  bnel      $v0, $zero, .L80240D10
/* DCD9CC 80240CFC 2402FDFF */   addiu    $v0, $zero, -0x201
/* DCD9D0 80240D00 34620200 */  ori       $v0, $v1, 0x200
/* DCD9D4 80240D04 2403FFF7 */  addiu     $v1, $zero, -9
/* DCD9D8 80240D08 08090346 */  j         .L80240D18
/* DCD9DC 80240D0C 00431024 */   and      $v0, $v0, $v1
.L80240D10:
/* DCD9E0 80240D10 00621024 */  and       $v0, $v1, $v0
/* DCD9E4 80240D14 34420008 */  ori       $v0, $v0, 8
.L80240D18:
/* DCD9E8 80240D18 AE420000 */  sw        $v0, ($s2)
/* DCD9EC 80240D1C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DCD9F0 80240D20 30420004 */  andi      $v0, $v0, 4
/* DCD9F4 80240D24 10400004 */  beqz      $v0, .L80240D38
/* DCD9F8 80240D28 24020063 */   addiu    $v0, $zero, 0x63
/* DCD9FC 80240D2C AE620070 */  sw        $v0, 0x70($s3)
/* DCDA00 80240D30 08090354 */  j         .L80240D50
/* DCDA04 80240D34 AE600074 */   sw       $zero, 0x74($s3)
.L80240D38:
/* DCDA08 80240D38 8E220000 */  lw        $v0, ($s1)
/* DCDA0C 80240D3C 3C034000 */  lui       $v1, 0x4000
/* DCDA10 80240D40 00431024 */  and       $v0, $v0, $v1
/* DCDA14 80240D44 10400002 */  beqz      $v0, .L80240D50
/* DCDA18 80240D48 2402000C */   addiu    $v0, $zero, 0xc
/* DCDA1C 80240D4C AE620070 */  sw        $v0, 0x70($s3)
.L80240D50:
/* DCDA20 80240D50 3C06BFFF */  lui       $a2, 0xbfff
/* DCDA24 80240D54 34C6FFFF */  ori       $a2, $a2, 0xffff
/* DCDA28 80240D58 27A50038 */  addiu     $a1, $sp, 0x38
/* DCDA2C 80240D5C 2404FFFB */  addiu     $a0, $zero, -5
/* DCDA30 80240D60 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DCDA34 80240D64 8E230000 */  lw        $v1, ($s1)
/* DCDA38 80240D68 3C0142C8 */  lui       $at, 0x42c8
/* DCDA3C 80240D6C 44810000 */  mtc1      $at, $f0
/* DCDA40 80240D70 00441024 */  and       $v0, $v0, $a0
/* DCDA44 80240D74 00661824 */  and       $v1, $v1, $a2
/* DCDA48 80240D78 AE2200B0 */  sw        $v0, 0xb0($s1)
/* DCDA4C 80240D7C AE230000 */  sw        $v1, ($s1)
/* DCDA50 80240D80 864200A8 */  lh        $v0, 0xa8($s2)
/* DCDA54 80240D84 27A70040 */  addiu     $a3, $sp, 0x40
/* DCDA58 80240D88 E7A00044 */  swc1      $f0, 0x44($sp)
/* DCDA5C 80240D8C C6460038 */  lwc1      $f6, 0x38($s2)
/* DCDA60 80240D90 C640003C */  lwc1      $f0, 0x3c($s2)
/* DCDA64 80240D94 C6420040 */  lwc1      $f2, 0x40($s2)
/* DCDA68 80240D98 44822000 */  mtc1      $v0, $f4
/* DCDA6C 80240D9C 00000000 */  nop       
/* DCDA70 80240DA0 46802120 */  cvt.s.w   $f4, $f4
/* DCDA74 80240DA4 27A20044 */  addiu     $v0, $sp, 0x44
/* DCDA78 80240DA8 46040000 */  add.s     $f0, $f0, $f4
/* DCDA7C 80240DAC E7A60038 */  swc1      $f6, 0x38($sp)
/* DCDA80 80240DB0 E7A20040 */  swc1      $f2, 0x40($sp)
/* DCDA84 80240DB4 E7A0003C */  swc1      $f0, 0x3c($sp)
/* DCDA88 80240DB8 AFA20010 */  sw        $v0, 0x10($sp)
/* DCDA8C 80240DBC 8E440080 */  lw        $a0, 0x80($s2)
/* DCDA90 80240DC0 0C0372DF */  jal       func_800DCB7C
/* DCDA94 80240DC4 27A6003C */   addiu    $a2, $sp, 0x3c
/* DCDA98 80240DC8 10400003 */  beqz      $v0, .L80240DD8
/* DCDA9C 80240DCC 00000000 */   nop      
/* DCDAA0 80240DD0 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* DCDAA4 80240DD4 E640003C */  swc1      $f0, 0x3c($s2)
.L80240DD8:
/* DCDAA8 80240DD8 8E630070 */  lw        $v1, 0x70($s3)
/* DCDAAC 80240DDC 2C620064 */  sltiu     $v0, $v1, 0x64
/* DCDAB0 80240DE0 10400050 */  beqz      $v0, .L80240F24
/* DCDAB4 80240DE4 00031080 */   sll      $v0, $v1, 2
/* DCDAB8 80240DE8 3C018025 */  lui       $at, 0x8025
/* DCDABC 80240DEC 00220821 */  addu      $at, $at, $v0
/* DCDAC0 80240DF0 8C22A640 */  lw        $v0, -0x59c0($at)
/* DCDAC4 80240DF4 00400008 */  jr        $v0
/* DCDAC8 80240DF8 00000000 */   nop      
/* DCDACC 80240DFC 0260202D */  daddu     $a0, $s3, $zero
/* DCDAD0 80240E00 0280282D */  daddu     $a1, $s4, $zero
/* DCDAD4 80240E04 0C012568 */  jal       func_800495A0
/* DCDAD8 80240E08 02A0302D */   daddu    $a2, $s5, $zero
/* DCDADC 80240E0C 0260202D */  daddu     $a0, $s3, $zero
/* DCDAE0 80240E10 0280282D */  daddu     $a1, $s4, $zero
/* DCDAE4 80240E14 0C0125AE */  jal       func_800496B8
/* DCDAE8 80240E18 02A0302D */   daddu    $a2, $s5, $zero
/* DCDAEC 80240E1C 080903C9 */  j         .L80240F24
/* DCDAF0 80240E20 00000000 */   nop      
/* DCDAF4 80240E24 0260202D */  daddu     $a0, $s3, $zero
/* DCDAF8 80240E28 0280282D */  daddu     $a1, $s4, $zero
/* DCDAFC 80240E2C 0C0126D1 */  jal       func_80049B44
/* DCDB00 80240E30 02A0302D */   daddu    $a2, $s5, $zero
/* DCDB04 80240E34 0260202D */  daddu     $a0, $s3, $zero
/* DCDB08 80240E38 0280282D */  daddu     $a1, $s4, $zero
/* DCDB0C 80240E3C 0C012701 */  jal       func_80049C04
/* DCDB10 80240E40 02A0302D */   daddu    $a2, $s5, $zero
/* DCDB14 80240E44 080903C9 */  j         .L80240F24
/* DCDB18 80240E48 00000000 */   nop      
/* DCDB1C 80240E4C 0260202D */  daddu     $a0, $s3, $zero
/* DCDB20 80240E50 0280282D */  daddu     $a1, $s4, $zero
/* DCDB24 80240E54 0C01278F */  jal       func_80049E3C
/* DCDB28 80240E58 02A0302D */   daddu    $a2, $s5, $zero
/* DCDB2C 80240E5C 0260202D */  daddu     $a0, $s3, $zero
/* DCDB30 80240E60 0280282D */  daddu     $a1, $s4, $zero
/* DCDB34 80240E64 0C0127B3 */  jal       func_80049ECC
/* DCDB38 80240E68 02A0302D */   daddu    $a2, $s5, $zero
/* DCDB3C 80240E6C 080903C9 */  j         .L80240F24
/* DCDB40 80240E70 00000000 */   nop      
/* DCDB44 80240E74 0260202D */  daddu     $a0, $s3, $zero
/* DCDB48 80240E78 0280282D */  daddu     $a1, $s4, $zero
/* DCDB4C 80240E7C 0C0127DF */  jal       func_80049F7C
/* DCDB50 80240E80 02A0302D */   daddu    $a2, $s5, $zero
/* DCDB54 80240E84 0260202D */  daddu     $a0, $s3, $zero
/* DCDB58 80240E88 0280282D */  daddu     $a1, $s4, $zero
/* DCDB5C 80240E8C 0C012849 */  jal       func_8004A124
/* DCDB60 80240E90 02A0302D */   daddu    $a2, $s5, $zero
/* DCDB64 80240E94 8E630070 */  lw        $v1, 0x70($s3)
/* DCDB68 80240E98 2402000E */  addiu     $v0, $zero, 0xe
/* DCDB6C 80240E9C 14620021 */  bne       $v1, $v0, .L80240F24
/* DCDB70 80240EA0 00000000 */   nop      
/* DCDB74 80240EA4 0260202D */  daddu     $a0, $s3, $zero
/* DCDB78 80240EA8 0280282D */  daddu     $a1, $s4, $zero
/* DCDB7C 80240EAC 0C090278 */  jal       func_802409E0_DCD6B0
/* DCDB80 80240EB0 02A0302D */   daddu    $a2, $s5, $zero
/* DCDB84 80240EB4 8E630070 */  lw        $v1, 0x70($s3)
/* DCDB88 80240EB8 2402000F */  addiu     $v0, $zero, 0xf
/* DCDB8C 80240EBC 14620019 */  bne       $v1, $v0, .L80240F24
/* DCDB90 80240EC0 00000000 */   nop      
/* DCDB94 80240EC4 0260202D */  daddu     $a0, $s3, $zero
/* DCDB98 80240EC8 0280282D */  daddu     $a1, $s4, $zero
/* DCDB9C 80240ECC 0C090294 */  jal       func_80240A50_DCD720
/* DCDBA0 80240ED0 02A0302D */   daddu    $a2, $s5, $zero
/* DCDBA4 80240ED4 8E630070 */  lw        $v1, 0x70($s3)
/* DCDBA8 80240ED8 24020010 */  addiu     $v0, $zero, 0x10
/* DCDBAC 80240EDC 14620011 */  bne       $v1, $v0, .L80240F24
/* DCDBB0 80240EE0 00000000 */   nop      
/* DCDBB4 80240EE4 0260202D */  daddu     $a0, $s3, $zero
/* DCDBB8 80240EE8 0280282D */  daddu     $a1, $s4, $zero
/* DCDBBC 80240EEC 0C0902C8 */  jal       func_80240B20_DCD7F0
/* DCDBC0 80240EF0 02A0302D */   daddu    $a2, $s5, $zero
/* DCDBC4 80240EF4 8E630070 */  lw        $v1, 0x70($s3)
/* DCDBC8 80240EF8 24020011 */  addiu     $v0, $zero, 0x11
/* DCDBCC 80240EFC 14620009 */  bne       $v1, $v0, .L80240F24
/* DCDBD0 80240F00 00000000 */   nop      
/* DCDBD4 80240F04 0260202D */  daddu     $a0, $s3, $zero
/* DCDBD8 80240F08 0280282D */  daddu     $a1, $s4, $zero
/* DCDBDC 80240F0C 0C0902EE */  jal       func_80240BB8_DCD888
/* DCDBE0 80240F10 02A0302D */   daddu    $a2, $s5, $zero
/* DCDBE4 80240F14 080903C9 */  j         .L80240F24
/* DCDBE8 80240F18 00000000 */   nop      
/* DCDBEC 80240F1C 0C0129CF */  jal       func_8004A73C
/* DCDBF0 80240F20 0260202D */   daddu    $a0, $s3, $zero
.L80240F24:
/* DCDBF4 80240F24 8FBF0060 */  lw        $ra, 0x60($sp)
/* DCDBF8 80240F28 8FB5005C */  lw        $s5, 0x5c($sp)
/* DCDBFC 80240F2C 8FB40058 */  lw        $s4, 0x58($sp)
/* DCDC00 80240F30 8FB30054 */  lw        $s3, 0x54($sp)
/* DCDC04 80240F34 8FB20050 */  lw        $s2, 0x50($sp)
/* DCDC08 80240F38 8FB1004C */  lw        $s1, 0x4c($sp)
/* DCDC0C 80240F3C 8FB00048 */  lw        $s0, 0x48($sp)
/* DCDC10 80240F40 0000102D */  daddu     $v0, $zero, $zero
/* DCDC14 80240F44 03E00008 */  jr        $ra
/* DCDC18 80240F48 27BD0068 */   addiu    $sp, $sp, 0x68
