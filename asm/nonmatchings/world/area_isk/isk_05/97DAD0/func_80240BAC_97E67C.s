.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240BAC_97E67C
/* 97E67C 80240BAC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 97E680 80240BB0 AFB00010 */  sw        $s0, 0x10($sp)
/* 97E684 80240BB4 0080802D */  daddu     $s0, $a0, $zero
/* 97E688 80240BB8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 97E68C 80240BBC 8E020148 */  lw        $v0, 0x148($s0)
/* 97E690 80240BC0 0C00EABB */  jal       get_npc_unsafe
/* 97E694 80240BC4 84440008 */   lh       $a0, 8($v0)
/* 97E698 80240BC8 9443008E */  lhu       $v1, 0x8e($v0)
/* 97E69C 80240BCC 2463FFFF */  addiu     $v1, $v1, -1
/* 97E6A0 80240BD0 A443008E */  sh        $v1, 0x8e($v0)
/* 97E6A4 80240BD4 00031C00 */  sll       $v1, $v1, 0x10
/* 97E6A8 80240BD8 58600001 */  blezl     $v1, .L80240BE0
/* 97E6AC 80240BDC AE000070 */   sw       $zero, 0x70($s0)
.L80240BE0:
/* 97E6B0 80240BE0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 97E6B4 80240BE4 8FB00010 */  lw        $s0, 0x10($sp)
/* 97E6B8 80240BE8 03E00008 */  jr        $ra
/* 97E6BC 80240BEC 27BD0018 */   addiu    $sp, $sp, 0x18
