.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024119C_C3267C
/* C3267C 8024119C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C32680 802411A0 AFB10014 */  sw        $s1, 0x14($sp)
/* C32684 802411A4 0080882D */  daddu     $s1, $a0, $zero
/* C32688 802411A8 AFBF001C */  sw        $ra, 0x1c($sp)
/* C3268C 802411AC AFB20018 */  sw        $s2, 0x18($sp)
/* C32690 802411B0 AFB00010 */  sw        $s0, 0x10($sp)
/* C32694 802411B4 8E300148 */  lw        $s0, 0x148($s1)
/* C32698 802411B8 86040008 */  lh        $a0, 8($s0)
/* C3269C 802411BC 0C00EABB */  jal       get_npc_unsafe
/* C326A0 802411C0 00A0902D */   daddu    $s2, $a1, $zero
/* C326A4 802411C4 8E230078 */  lw        $v1, 0x78($s1)
/* C326A8 802411C8 24630001 */  addiu     $v1, $v1, 1
/* C326AC 802411CC AE230078 */  sw        $v1, 0x78($s1)
/* C326B0 802411D0 8E0400D0 */  lw        $a0, 0xd0($s0)
/* C326B4 802411D4 8C840000 */  lw        $a0, ($a0)
/* C326B8 802411D8 0064182A */  slt       $v1, $v1, $a0
/* C326BC 802411DC 14600002 */  bnez      $v1, .L802411E8
/* C326C0 802411E0 0040282D */   daddu    $a1, $v0, $zero
/* C326C4 802411E4 AE200078 */  sw        $zero, 0x78($s1)
.L802411E8:
/* C326C8 802411E8 8E0200CC */  lw        $v0, 0xcc($s0)
/* C326CC 802411EC 8C420004 */  lw        $v0, 4($v0)
/* C326D0 802411F0 ACA20028 */  sw        $v0, 0x28($a1)
/* C326D4 802411F4 8E0200D0 */  lw        $v0, 0xd0($s0)
/* C326D8 802411F8 8C42007C */  lw        $v0, 0x7c($v0)
/* C326DC 802411FC 04410004 */  bgez      $v0, .L80241210
/* C326E0 80241200 00000000 */   nop      
/* C326E4 80241204 C6400000 */  lwc1      $f0, ($s2)
/* C326E8 80241208 0809048C */  j         .L80241230
/* C326EC 8024120C E4A00018 */   swc1     $f0, 0x18($a1)
.L80241210:
/* C326F0 80241210 3C018024 */  lui       $at, %hi(pause_tabs_draw_invis)
/* C326F4 80241214 D4224B90 */  ldc1      $f2, %lo(pause_tabs_draw_invis)($at)
/* C326F8 80241218 44820000 */  mtc1      $v0, $f0
/* C326FC 8024121C 00000000 */  nop       
/* C32700 80241220 46800021 */  cvt.d.w   $f0, $f0
/* C32704 80241224 46220003 */  div.d     $f0, $f0, $f2
/* C32708 80241228 46200020 */  cvt.s.d   $f0, $f0
/* C3270C 8024122C E4A00018 */  swc1      $f0, 0x18($a1)
.L80241230:
/* C32710 80241230 24020001 */  addiu     $v0, $zero, 1
/* C32714 80241234 AE220070 */  sw        $v0, 0x70($s1)
/* C32718 80241238 8FBF001C */  lw        $ra, 0x1c($sp)
/* C3271C 8024123C 8FB20018 */  lw        $s2, 0x18($sp)
/* C32720 80241240 8FB10014 */  lw        $s1, 0x14($sp)
/* C32724 80241244 8FB00010 */  lw        $s0, 0x10($sp)
/* C32728 80241248 03E00008 */  jr        $ra
/* C3272C 8024124C 27BD0020 */   addiu    $sp, $sp, 0x20