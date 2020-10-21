.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024067C_A870CC
/* A870CC 8024067C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* A870D0 80240680 AFB10014 */  sw        $s1, 0x14($sp)
/* A870D4 80240684 0080882D */  daddu     $s1, $a0, $zero
/* A870D8 80240688 AFBF001C */  sw        $ra, 0x1c($sp)
/* A870DC 8024068C AFB20018 */  sw        $s2, 0x18($sp)
/* A870E0 80240690 AFB00010 */  sw        $s0, 0x10($sp)
/* A870E4 80240694 8E300148 */  lw        $s0, 0x148($s1)
/* A870E8 80240698 86040008 */  lh        $a0, 8($s0)
/* A870EC 8024069C 0C00EABB */  jal       get_npc_unsafe
/* A870F0 802406A0 00A0902D */   daddu    $s2, $a1, $zero
/* A870F4 802406A4 8E230078 */  lw        $v1, 0x78($s1)
/* A870F8 802406A8 24630001 */  addiu     $v1, $v1, 1
/* A870FC 802406AC AE230078 */  sw        $v1, 0x78($s1)
/* A87100 802406B0 8E0400D0 */  lw        $a0, 0xd0($s0)
/* A87104 802406B4 8C840000 */  lw        $a0, ($a0)
/* A87108 802406B8 0064182A */  slt       $v1, $v1, $a0
/* A8710C 802406BC 14600002 */  bnez      $v1, .L802406C8
/* A87110 802406C0 0040282D */   daddu    $a1, $v0, $zero
/* A87114 802406C4 AE200078 */  sw        $zero, 0x78($s1)
.L802406C8:
/* A87118 802406C8 8E0200CC */  lw        $v0, 0xcc($s0)
/* A8711C 802406CC 8C420004 */  lw        $v0, 4($v0)
/* A87120 802406D0 ACA20028 */  sw        $v0, 0x28($a1)
/* A87124 802406D4 8E0200D0 */  lw        $v0, 0xd0($s0)
/* A87128 802406D8 8C42007C */  lw        $v0, 0x7c($v0)
/* A8712C 802406DC 04410004 */  bgez      $v0, .L802406F0
/* A87130 802406E0 00000000 */   nop      
/* A87134 802406E4 C6400000 */  lwc1      $f0, ($s2)
/* A87138 802406E8 080901C4 */  j         .L80240710
/* A8713C 802406EC E4A00018 */   swc1     $f0, 0x18($a1)
.L802406F0:
/* A87140 802406F0 3C018024 */  lui       $at, 0x8024
/* A87144 802406F4 D4225A38 */  ldc1      $f2, 0x5a38($at)
/* A87148 802406F8 44820000 */  mtc1      $v0, $f0
/* A8714C 802406FC 00000000 */  nop       
/* A87150 80240700 46800021 */  cvt.d.w   $f0, $f0
/* A87154 80240704 46220003 */  div.d     $f0, $f0, $f2
/* A87158 80240708 46200020 */  cvt.s.d   $f0, $f0
/* A8715C 8024070C E4A00018 */  swc1      $f0, 0x18($a1)
.L80240710:
/* A87160 80240710 24020001 */  addiu     $v0, $zero, 1
/* A87164 80240714 AE220070 */  sw        $v0, 0x70($s1)
/* A87168 80240718 8FBF001C */  lw        $ra, 0x1c($sp)
/* A8716C 8024071C 8FB20018 */  lw        $s2, 0x18($sp)
/* A87170 80240720 8FB10014 */  lw        $s1, 0x14($sp)
/* A87174 80240724 8FB00010 */  lw        $s0, 0x10($sp)
/* A87178 80240728 03E00008 */  jr        $ra
/* A8717C 8024072C 27BD0020 */   addiu    $sp, $sp, 0x20
