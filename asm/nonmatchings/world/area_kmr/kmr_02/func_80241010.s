.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241010
/* 8B1080 80241010 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8B1084 80241014 AFB20018 */  sw        $s2, 0x18($sp)
/* 8B1088 80241018 0080902D */  daddu     $s2, $a0, $zero
/* 8B108C 8024101C AFBF0030 */  sw        $ra, 0x30($sp)
/* 8B1090 80241020 AFB7002C */  sw        $s7, 0x2c($sp)
/* 8B1094 80241024 AFB60028 */  sw        $s6, 0x28($sp)
/* 8B1098 80241028 AFB50024 */  sw        $s5, 0x24($sp)
/* 8B109C 8024102C AFB40020 */  sw        $s4, 0x20($sp)
/* 8B10A0 80241030 AFB3001C */  sw        $s3, 0x1c($sp)
/* 8B10A4 80241034 AFB10014 */  sw        $s1, 0x14($sp)
/* 8B10A8 80241038 AFB00010 */  sw        $s0, 0x10($sp)
/* 8B10AC 8024103C F7B60040 */  sdc1      $f22, 0x40($sp)
/* 8B10B0 80241040 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 8B10B4 80241044 8E50000C */  lw        $s0, 0xc($s2)
/* 8B10B8 80241048 8E050000 */  lw        $a1, ($s0)
/* 8B10BC 8024104C 0C0B1EAF */  jal       get_variable
/* 8B10C0 80241050 26100004 */   addiu    $s0, $s0, 4
/* 8B10C4 80241054 8E050000 */  lw        $a1, ($s0)
/* 8B10C8 80241058 26100004 */  addiu     $s0, $s0, 4
/* 8B10CC 8024105C 0240202D */  daddu     $a0, $s2, $zero
/* 8B10D0 80241060 0C0B1EAF */  jal       get_variable
/* 8B10D4 80241064 0040B82D */   daddu    $s7, $v0, $zero
/* 8B10D8 80241068 8E050000 */  lw        $a1, ($s0)
/* 8B10DC 8024106C 26100004 */  addiu     $s0, $s0, 4
/* 8B10E0 80241070 0240202D */  daddu     $a0, $s2, $zero
/* 8B10E4 80241074 0C0B1EAF */  jal       get_variable
/* 8B10E8 80241078 0040B02D */   daddu    $s6, $v0, $zero
/* 8B10EC 8024107C 0240202D */  daddu     $a0, $s2, $zero
/* 8B10F0 80241080 3C05F4AC */  lui       $a1, 0xf4ac
/* 8B10F4 80241084 34A5D481 */  ori       $a1, $a1, 0xd481
/* 8B10F8 80241088 3C068007 */  lui       $a2, %hi(gCurrentCameraID)
/* 8B10FC 8024108C 8CC67410 */  lw        $a2, %lo(gCurrentCameraID)($a2)
/* 8B1100 80241090 8E140000 */  lw        $s4, ($s0)
/* 8B1104 80241094 00061880 */  sll       $v1, $a2, 2
/* 8B1108 80241098 00661821 */  addu      $v1, $v1, $a2
/* 8B110C 8024109C 00031880 */  sll       $v1, $v1, 2
/* 8B1110 802410A0 00661823 */  subu      $v1, $v1, $a2
/* 8B1114 802410A4 000330C0 */  sll       $a2, $v1, 3
/* 8B1118 802410A8 00661821 */  addu      $v1, $v1, $a2
/* 8B111C 802410AC 000318C0 */  sll       $v1, $v1, 3
/* 8B1120 802410B0 3C01800B */  lui       $at, 0x800b
/* 8B1124 802410B4 00230821 */  addu      $at, $at, $v1
/* 8B1128 802410B8 C4201DEC */  lwc1      $f0, 0x1dec($at)
/* 8B112C 802410BC 8E150004 */  lw        $s5, 4($s0)
/* 8B1130 802410C0 4600010D */  trunc.w.s $f4, $f0
/* 8B1134 802410C4 44112000 */  mfc1      $s1, $f4
/* 8B1138 802410C8 0C0B1EAF */  jal       get_variable
/* 8B113C 802410CC 0040982D */   daddu    $s3, $v0, $zero
/* 8B1140 802410D0 4491B000 */  mtc1      $s1, $f22
/* 8B1144 802410D4 00000000 */  nop       
/* 8B1148 802410D8 4680B5A0 */  cvt.s.w   $f22, $f22
/* 8B114C 802410DC 4600B306 */  mov.s     $f12, $f22
/* 8B1150 802410E0 0C00A8D4 */  jal       cos_deg
/* 8B1154 802410E4 0040802D */   daddu    $s0, $v0, $zero
/* 8B1158 802410E8 4493A000 */  mtc1      $s3, $f20
/* 8B115C 802410EC 00000000 */  nop       
/* 8B1160 802410F0 4680A520 */  cvt.s.w   $f20, $f20
/* 8B1164 802410F4 4600A002 */  mul.s     $f0, $f20, $f0
/* 8B1168 802410F8 00000000 */  nop       
/* 8B116C 802410FC 0240202D */  daddu     $a0, $s2, $zero
/* 8B1170 80241100 44901000 */  mtc1      $s0, $f2
/* 8B1174 80241104 00000000 */  nop       
/* 8B1178 80241108 468010A0 */  cvt.s.w   $f2, $f2
/* 8B117C 8024110C 46001081 */  sub.s     $f2, $f2, $f0
/* 8B1180 80241110 3C05F4AC */  lui       $a1, 0xf4ac
/* 8B1184 80241114 4600110D */  trunc.w.s $f4, $f2
/* 8B1188 80241118 44102000 */  mfc1      $s0, $f4
/* 8B118C 8024111C 0C0B1EAF */  jal       get_variable
/* 8B1190 80241120 34A5D483 */   ori      $a1, $a1, 0xd483
/* 8B1194 80241124 4600B306 */  mov.s     $f12, $f22
/* 8B1198 80241128 0C00A8BB */  jal       sin_deg
/* 8B119C 8024112C 0040882D */   daddu    $s1, $v0, $zero
/* 8B11A0 80241130 4600A502 */  mul.s     $f20, $f20, $f0
/* 8B11A4 80241134 00000000 */  nop       
/* 8B11A8 80241138 0240202D */  daddu     $a0, $s2, $zero
/* 8B11AC 8024113C 44910000 */  mtc1      $s1, $f0
/* 8B11B0 80241140 00000000 */  nop       
/* 8B11B4 80241144 46800020 */  cvt.s.w   $f0, $f0
/* 8B11B8 80241148 46140001 */  sub.s     $f0, $f0, $f20
/* 8B11BC 8024114C 0280282D */  daddu     $a1, $s4, $zero
/* 8B11C0 80241150 02173023 */  subu      $a2, $s0, $s7
/* 8B11C4 80241154 4600010D */  trunc.w.s $f4, $f0
/* 8B11C8 80241158 44102000 */  mfc1      $s0, $f4
/* 8B11CC 8024115C 0C0B2026 */  jal       set_variable
/* 8B11D0 80241160 02168023 */   subu     $s0, $s0, $s6
/* 8B11D4 80241164 0240202D */  daddu     $a0, $s2, $zero
/* 8B11D8 80241168 02A0282D */  daddu     $a1, $s5, $zero
/* 8B11DC 8024116C 0C0B2026 */  jal       set_variable
/* 8B11E0 80241170 0200302D */   daddu    $a2, $s0, $zero
/* 8B11E4 80241174 8FBF0030 */  lw        $ra, 0x30($sp)
/* 8B11E8 80241178 8FB7002C */  lw        $s7, 0x2c($sp)
/* 8B11EC 8024117C 8FB60028 */  lw        $s6, 0x28($sp)
/* 8B11F0 80241180 8FB50024 */  lw        $s5, 0x24($sp)
/* 8B11F4 80241184 8FB40020 */  lw        $s4, 0x20($sp)
/* 8B11F8 80241188 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8B11FC 8024118C 8FB20018 */  lw        $s2, 0x18($sp)
/* 8B1200 80241190 8FB10014 */  lw        $s1, 0x14($sp)
/* 8B1204 80241194 8FB00010 */  lw        $s0, 0x10($sp)
/* 8B1208 80241198 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 8B120C 8024119C D7B40038 */  ldc1      $f20, 0x38($sp)
/* 8B1210 802411A0 24020002 */  addiu     $v0, $zero, 2
/* 8B1214 802411A4 03E00008 */  jr        $ra
/* 8B1218 802411A8 27BD0048 */   addiu    $sp, $sp, 0x48