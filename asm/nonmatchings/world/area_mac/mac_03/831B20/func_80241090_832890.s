.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241090_832890
/* 832890 80241090 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 832894 80241094 AFB10014 */  sw        $s1, 0x14($sp)
/* 832898 80241098 0080882D */  daddu     $s1, $a0, $zero
/* 83289C 8024109C AFBF0018 */  sw        $ra, 0x18($sp)
/* 8328A0 802410A0 AFB00010 */  sw        $s0, 0x10($sp)
/* 8328A4 802410A4 8E30000C */  lw        $s0, 0xc($s1)
/* 8328A8 802410A8 8E050000 */  lw        $a1, ($s0)
/* 8328AC 802410AC 0C0B1EAF */  jal       get_variable
/* 8328B0 802410B0 26100004 */   addiu    $s0, $s0, 4
/* 8328B4 802410B4 00021880 */  sll       $v1, $v0, 2
/* 8328B8 802410B8 00621821 */  addu      $v1, $v1, $v0
/* 8328BC 802410BC 00031880 */  sll       $v1, $v1, 2
/* 8328C0 802410C0 00621823 */  subu      $v1, $v1, $v0
/* 8328C4 802410C4 000310C0 */  sll       $v0, $v1, 3
/* 8328C8 802410C8 00621821 */  addu      $v1, $v1, $v0
/* 8328CC 802410CC 000318C0 */  sll       $v1, $v1, 3
/* 8328D0 802410D0 3C01800B */  lui       $at, 0x800b
/* 8328D4 802410D4 00230821 */  addu      $at, $at, $v1
/* 8328D8 802410D8 C4221D98 */  lwc1      $f2, 0x1d98($at)
/* 8328DC 802410DC 3C014480 */  lui       $at, 0x4480
/* 8328E0 802410E0 44810000 */  mtc1      $at, $f0
/* 8328E4 802410E4 00000000 */  nop       
/* 8328E8 802410E8 46001082 */  mul.s     $f2, $f2, $f0
/* 8328EC 802410EC 00000000 */  nop       
/* 8328F0 802410F0 3C01CD5B */  lui       $at, 0xcd5b
/* 8328F4 802410F4 34215858 */  ori       $at, $at, 0x5858
/* 8328F8 802410F8 44810000 */  mtc1      $at, $f0
/* 8328FC 802410FC 00000000 */  nop       
/* 832900 80241100 46001080 */  add.s     $f2, $f2, $f0
/* 832904 80241104 8E050000 */  lw        $a1, ($s0)
/* 832908 80241108 4600110D */  trunc.w.s $f4, $f2
/* 83290C 8024110C 44062000 */  mfc1      $a2, $f4
/* 832910 80241110 0C0B2026 */  jal       set_variable
/* 832914 80241114 0220202D */   daddu    $a0, $s1, $zero
/* 832918 80241118 8FBF0018 */  lw        $ra, 0x18($sp)
/* 83291C 8024111C 8FB10014 */  lw        $s1, 0x14($sp)
/* 832920 80241120 8FB00010 */  lw        $s0, 0x10($sp)
/* 832924 80241124 24020002 */  addiu     $v0, $zero, 2
/* 832928 80241128 03E00008 */  jr        $ra
/* 83292C 8024112C 27BD0020 */   addiu    $sp, $sp, 0x20
