.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240890_852A00
/* 852A00 80240890 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 852A04 80240894 AFB3001C */  sw        $s3, 0x1c($sp)
/* 852A08 80240898 0080982D */  daddu     $s3, $a0, $zero
/* 852A0C 8024089C AFBF0020 */  sw        $ra, 0x20($sp)
/* 852A10 802408A0 AFB20018 */  sw        $s2, 0x18($sp)
/* 852A14 802408A4 AFB10014 */  sw        $s1, 0x14($sp)
/* 852A18 802408A8 AFB00010 */  sw        $s0, 0x10($sp)
/* 852A1C 802408AC 8E720148 */  lw        $s2, 0x148($s3)
/* 852A20 802408B0 86440008 */  lh        $a0, 8($s2)
/* 852A24 802408B4 0C00EABB */  jal       get_npc_unsafe
/* 852A28 802408B8 00A0882D */   daddu    $s1, $a1, $zero
/* 852A2C 802408BC 8E240008 */  lw        $a0, 8($s1)
/* 852A30 802408C0 0040802D */  daddu     $s0, $v0, $zero
/* 852A34 802408C4 00041FC2 */  srl       $v1, $a0, 0x1f
/* 852A38 802408C8 00832021 */  addu      $a0, $a0, $v1
/* 852A3C 802408CC 00042043 */  sra       $a0, $a0, 1
/* 852A40 802408D0 0C00A67F */  jal       rand_int
/* 852A44 802408D4 24840001 */   addiu    $a0, $a0, 1
/* 852A48 802408D8 8E230008 */  lw        $v1, 8($s1)
/* 852A4C 802408DC 240400B4 */  addiu     $a0, $zero, 0xb4
/* 852A50 802408E0 00032FC2 */  srl       $a1, $v1, 0x1f
/* 852A54 802408E4 00651821 */  addu      $v1, $v1, $a1
/* 852A58 802408E8 00031843 */  sra       $v1, $v1, 1
/* 852A5C 802408EC 00621821 */  addu      $v1, $v1, $v0
/* 852A60 802408F0 0C00A67F */  jal       rand_int
/* 852A64 802408F4 A603008E */   sh       $v1, 0x8e($s0)
/* 852A68 802408F8 C60C000C */  lwc1      $f12, 0xc($s0)
/* 852A6C 802408FC 44820000 */  mtc1      $v0, $f0
/* 852A70 80240900 00000000 */  nop       
/* 852A74 80240904 46800020 */  cvt.s.w   $f0, $f0
/* 852A78 80240908 46006300 */  add.s     $f12, $f12, $f0
/* 852A7C 8024090C 3C0142B4 */  lui       $at, 0x42b4
/* 852A80 80240910 44810000 */  mtc1      $at, $f0
/* 852A84 80240914 0C00A6C9 */  jal       clamp_angle
/* 852A88 80240918 46006301 */   sub.s    $f12, $f12, $f0
/* 852A8C 8024091C E600000C */  swc1      $f0, 0xc($s0)
/* 852A90 80240920 8E4200CC */  lw        $v0, 0xcc($s2)
/* 852A94 80240924 8C420000 */  lw        $v0, ($v0)
/* 852A98 80240928 AE020028 */  sw        $v0, 0x28($s0)
/* 852A9C 8024092C 24020003 */  addiu     $v0, $zero, 3
/* 852AA0 80240930 AE620070 */  sw        $v0, 0x70($s3)
/* 852AA4 80240934 8FBF0020 */  lw        $ra, 0x20($sp)
/* 852AA8 80240938 8FB3001C */  lw        $s3, 0x1c($sp)
/* 852AAC 8024093C 8FB20018 */  lw        $s2, 0x18($sp)
/* 852AB0 80240940 8FB10014 */  lw        $s1, 0x14($sp)
/* 852AB4 80240944 8FB00010 */  lw        $s0, 0x10($sp)
/* 852AB8 80240948 03E00008 */  jr        $ra
/* 852ABC 8024094C 27BD0028 */   addiu    $sp, $sp, 0x28
