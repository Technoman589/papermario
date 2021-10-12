.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_25_main
/* 343680 E0032000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 343684 E0032004 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 343688 E0032008 4485A000 */  mtc1      $a1, $f20
/* 34368C E003200C AFB1002C */  sw        $s1, 0x2c($sp)
/* 343690 E0032010 0080882D */  daddu     $s1, $a0, $zero
/* 343694 E0032014 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 343698 E0032018 4486B000 */  mtc1      $a2, $f22
/* 34369C E003201C 27A40010 */  addiu     $a0, $sp, 0x10
/* 3436A0 E0032020 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 3436A4 E0032024 4487C000 */  mtc1      $a3, $f24
/* 3436A8 E0032028 3C02E003 */  lui       $v0, %hi(fx_25_init)
/* 3436AC E003202C 244221D0 */  addiu     $v0, $v0, %lo(fx_25_init)
/* 3436B0 E0032030 AFBF0030 */  sw        $ra, 0x30($sp)
/* 3436B4 E0032034 AFB00028 */  sw        $s0, 0x28($sp)
/* 3436B8 E0032038 AFA00010 */  sw        $zero, 0x10($sp)
/* 3436BC E003203C AC820008 */  sw        $v0, 8($a0)
/* 3436C0 E0032040 3C02E003 */  lui       $v0, %hi(fx_25_update)
/* 3436C4 E0032044 244221D8 */  addiu     $v0, $v0, %lo(fx_25_update)
/* 3436C8 E0032048 AC82000C */  sw        $v0, 0xc($a0)
/* 3436CC E003204C 3C02E003 */  lui       $v0, %hi(fx_25_render)
/* 3436D0 E0032050 24422420 */  addiu     $v0, $v0, %lo(fx_25_render)
/* 3436D4 E0032054 AC820010 */  sw        $v0, 0x10($a0)
/* 3436D8 E0032058 24020019 */  addiu     $v0, $zero, 0x19
/* 3436DC E003205C AC800014 */  sw        $zero, 0x14($a0)
/* 3436E0 E0032060 0C080124 */  jal       shim_create_effect_instance
/* 3436E4 E0032064 AC820004 */   sw       $v0, 4($a0)
/* 3436E8 E0032068 240400B4 */  addiu     $a0, $zero, 0xb4
/* 3436EC E003206C 24030003 */  addiu     $v1, $zero, 3
/* 3436F0 E0032070 0040802D */  daddu     $s0, $v0, $zero
/* 3436F4 E0032074 0C08012C */  jal       shim_general_heap_malloc
/* 3436F8 E0032078 AE030008 */   sw       $v1, 8($s0)
/* 3436FC E003207C 0040182D */  daddu     $v1, $v0, $zero
/* 343700 E0032080 14600003 */  bnez      $v1, .LE0032090
/* 343704 E0032084 AE03000C */   sw       $v1, 0xc($s0)
.LE0032088:
/* 343708 E0032088 0800C822 */  j         .LE0032088
/* 34370C E003208C 00000000 */   nop
.LE0032090:
/* 343710 E0032090 2402003C */  addiu     $v0, $zero, 0x3c
/* 343714 E0032094 E4740004 */  swc1      $f20, 4($v1)
/* 343718 E0032098 E4760008 */  swc1      $f22, 8($v1)
/* 34371C E003209C E478000C */  swc1      $f24, 0xc($v1)
/* 343720 E00320A0 AC600034 */  sw        $zero, 0x34($v1)
/* 343724 E00320A4 AC620030 */  sw        $v0, 0x30($v1)
/* 343728 E00320A8 AC710000 */  sw        $s1, ($v1)
/* 34372C E00320AC 00621821 */  addu      $v1, $v1, $v0
/* 343730 E00320B0 16200003 */  bnez      $s1, .LE00320C0
/* 343734 E00320B4 AC710000 */   sw       $s1, ($v1)
/* 343738 E00320B8 2402FFFF */  addiu     $v0, $zero, -1
/* 34373C E00320BC AC620000 */  sw        $v0, ($v1)
.LE00320C0:
/* 343740 E00320C0 24020001 */  addiu     $v0, $zero, 1
/* 343744 E00320C4 16220005 */  bne       $s1, $v0, .LE00320DC
/* 343748 E00320C8 AC600038 */   sw       $zero, 0x38($v1)
/* 34374C E00320CC 3C013F80 */  lui       $at, 0x3f80
/* 343750 E00320D0 44810000 */  mtc1      $at, $f0
/* 343754 E00320D4 0800C83C */  j         .LE00320F0
/* 343758 E00320D8 E4600020 */   swc1     $f0, 0x20($v1)
.LE00320DC:
/* 34375C E00320DC 3C014040 */  lui       $at, 0x4040
/* 343760 E00320E0 44810000 */  mtc1      $at, $f0
/* 343764 E00320E4 00000000 */  nop
/* 343768 E00320E8 E4600020 */  swc1      $f0, 0x20($v1)
/* 34376C E00320EC 24020001 */  addiu     $v0, $zero, 1
.LE00320F0:
/* 343770 E00320F0 16220005 */  bne       $s1, $v0, .LE0032108
/* 343774 E00320F4 00000000 */   nop
/* 343778 E00320F8 3C013F80 */  lui       $at, 0x3f80
/* 34377C E00320FC 44810000 */  mtc1      $at, $f0
/* 343780 E0032100 0800C846 */  j         .LE0032118
/* 343784 E0032104 E4600024 */   swc1     $f0, 0x24($v1)
.LE0032108:
/* 343788 E0032108 3C014040 */  lui       $at, 0x4040
/* 34378C E003210C 44810000 */  mtc1      $at, $f0
/* 343790 E0032110 00000000 */  nop
/* 343794 E0032114 E4600024 */  swc1      $f0, 0x24($v1)
.LE0032118:
/* 343798 E0032118 2463003C */  addiu     $v1, $v1, 0x3c
/* 34379C E003211C 240200FF */  addiu     $v0, $zero, 0xff
/* 3437A0 E0032120 AC710000 */  sw        $s1, ($v1)
/* 3437A4 E0032124 12200006 */  beqz      $s1, .LE0032140
/* 3437A8 E0032128 AC620038 */   sw       $v0, 0x38($v1)
/* 3437AC E003212C 24020001 */  addiu     $v0, $zero, 1
/* 3437B0 E0032130 1222000B */  beq       $s1, $v0, .LE0032160
/* 3437B4 E0032134 00000000 */   nop
/* 3437B8 E0032138 0800C860 */  j         .LE0032180
/* 3437BC E003213C 00000000 */   nop
.LE0032140:
/* 3437C0 E0032140 3C01411E */  lui       $at, 0x411e
/* 3437C4 E0032144 34216666 */  ori       $at, $at, 0x6666
/* 3437C8 E0032148 44810000 */  mtc1      $at, $f0
/* 3437CC E003214C 3C013FCC */  lui       $at, 0x3fcc
/* 3437D0 E0032150 3421CCCD */  ori       $at, $at, 0xcccd
/* 3437D4 E0032154 44811000 */  mtc1      $at, $f2
/* 3437D8 E0032158 0800C867 */  j         .LE003219C
/* 3437DC E003215C E4600020 */   swc1     $f0, 0x20($v1)
.LE0032160:
/* 3437E0 E0032160 3C01415E */  lui       $at, 0x415e
/* 3437E4 E0032164 34216666 */  ori       $at, $at, 0x6666
/* 3437E8 E0032168 44810000 */  mtc1      $at, $f0
/* 3437EC E003216C 3C014019 */  lui       $at, 0x4019
/* 3437F0 E0032170 3421999A */  ori       $at, $at, 0x999a
/* 3437F4 E0032174 44811000 */  mtc1      $at, $f2
/* 3437F8 E0032178 0800C867 */  j         .LE003219C
/* 3437FC E003217C E4600020 */   swc1     $f0, 0x20($v1)
.LE0032180:
/* 343800 E0032180 3C01418E */  lui       $at, 0x418e
/* 343804 E0032184 34216666 */  ori       $at, $at, 0x6666
/* 343808 E0032188 44810000 */  mtc1      $at, $f0
/* 34380C E003218C 3C01404C */  lui       $at, 0x404c
/* 343810 E0032190 3421CCCD */  ori       $at, $at, 0xcccd
/* 343814 E0032194 44811000 */  mtc1      $at, $f2
/* 343818 E0032198 E4600020 */  swc1      $f0, 0x20($v1)
.LE003219C:
/* 34381C E003219C E4620024 */  swc1      $f2, 0x24($v1)
/* 343820 E00321A0 3C0141F0 */  lui       $at, 0x41f0
/* 343824 E00321A4 44810000 */  mtc1      $at, $f0
/* 343828 E00321A8 AC600028 */  sw        $zero, 0x28($v1)
/* 34382C E00321AC E460002C */  swc1      $f0, 0x2c($v1)
/* 343830 E00321B0 8FBF0030 */  lw        $ra, 0x30($sp)
/* 343834 E00321B4 8FB1002C */  lw        $s1, 0x2c($sp)
/* 343838 E00321B8 8FB00028 */  lw        $s0, 0x28($sp)
/* 34383C E00321BC D7B80048 */  ldc1      $f24, 0x48($sp)
/* 343840 E00321C0 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 343844 E00321C4 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 343848 E00321C8 03E00008 */  jr        $ra
/* 34384C E00321CC 27BD0050 */   addiu    $sp, $sp, 0x50
