.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel SetGoalToIndex
/* 198874 80269F94 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 198878 80269F98 AFB20018 */  sw        $s2, 0x18($sp)
/* 19887C 80269F9C 0080902D */  daddu     $s2, $a0, $zero
/* 198880 80269FA0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 198884 80269FA4 AFB10014 */  sw        $s1, 0x14($sp)
/* 198888 80269FA8 AFB00010 */  sw        $s0, 0x10($sp)
/* 19888C 80269FAC 8E50000C */  lw        $s0, 0xc($s2)
/* 198890 80269FB0 8E050000 */  lw        $a1, ($s0)
/* 198894 80269FB4 0C0B1EAF */  jal       evt_get_variable
/* 198898 80269FB8 26100004 */   addiu    $s0, $s0, 4
/* 19889C 80269FBC 0040882D */  daddu     $s1, $v0, $zero
/* 1988A0 80269FC0 8E050000 */  lw        $a1, ($s0)
/* 1988A4 80269FC4 0C0B1EAF */  jal       evt_get_variable
/* 1988A8 80269FC8 0240202D */   daddu    $a0, $s2, $zero
/* 1988AC 80269FCC 0040802D */  daddu     $s0, $v0, $zero
/* 1988B0 80269FD0 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 1988B4 80269FD4 16220002 */  bne       $s1, $v0, .L80269FE0
/* 1988B8 80269FD8 00000000 */   nop
/* 1988BC 80269FDC 8E510148 */  lw        $s1, 0x148($s2)
.L80269FE0:
/* 1988C0 80269FE0 0C09A75B */  jal       get_actor
/* 1988C4 80269FE4 0220202D */   daddu    $a0, $s1, $zero
/* 1988C8 80269FE8 3C048028 */  lui       $a0, %hi(D_80283524)
/* 1988CC 80269FEC 24843524 */  addiu     $a0, $a0, %lo(D_80283524)
/* 1988D0 80269FF0 00101840 */  sll       $v1, $s0, 1
/* 1988D4 80269FF4 00701821 */  addu      $v1, $v1, $s0
/* 1988D8 80269FF8 00031840 */  sll       $v1, $v1, 1
/* 1988DC 80269FFC 00641821 */  addu      $v1, $v1, $a0
/* 1988E0 8026A000 84640000 */  lh        $a0, ($v1)
/* 1988E4 8026A004 0040282D */  daddu     $a1, $v0, $zero
/* 1988E8 8026A008 44840000 */  mtc1      $a0, $f0
/* 1988EC 8026A00C 00000000 */  nop
/* 1988F0 8026A010 46800020 */  cvt.s.w   $f0, $f0
/* 1988F4 8026A014 E4A00018 */  swc1      $f0, 0x18($a1)
/* 1988F8 8026A018 84620002 */  lh        $v0, 2($v1)
/* 1988FC 8026A01C 44820000 */  mtc1      $v0, $f0
/* 198900 8026A020 00000000 */  nop
/* 198904 8026A024 46800020 */  cvt.s.w   $f0, $f0
/* 198908 8026A028 E4A0001C */  swc1      $f0, 0x1c($a1)
/* 19890C 8026A02C 84630004 */  lh        $v1, 4($v1)
/* 198910 8026A030 44830000 */  mtc1      $v1, $f0
/* 198914 8026A034 00000000 */  nop
/* 198918 8026A038 46800020 */  cvt.s.w   $f0, $f0
/* 19891C 8026A03C E4A00020 */  swc1      $f0, 0x20($a1)
/* 198920 8026A040 8FBF001C */  lw        $ra, 0x1c($sp)
/* 198924 8026A044 8FB20018 */  lw        $s2, 0x18($sp)
/* 198928 8026A048 8FB10014 */  lw        $s1, 0x14($sp)
/* 19892C 8026A04C 8FB00010 */  lw        $s0, 0x10($sp)
/* 198930 8026A050 24020002 */  addiu     $v0, $zero, 2
/* 198934 8026A054 03E00008 */  jr        $ra
/* 198938 8026A058 27BD0020 */   addiu    $sp, $sp, 0x20
