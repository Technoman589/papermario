.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241D00_833500
/* 833500 80241D00 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 833504 80241D04 F7B40018 */  sdc1      $f20, 0x18($sp)
/* 833508 80241D08 4485A000 */  mtc1      $a1, $f20
/* 83350C 80241D0C F7B60020 */  sdc1      $f22, 0x20($sp)
/* 833510 80241D10 4486B000 */  mtc1      $a2, $f22
/* 833514 80241D14 AFB00010 */  sw        $s0, 0x10($sp)
/* 833518 80241D18 F7B80028 */  sdc1      $f24, 0x28($sp)
/* 83351C 80241D1C 4487C000 */  mtc1      $a3, $f24
/* 833520 80241D20 AFBF0014 */  sw        $ra, 0x14($sp)
/* 833524 80241D24 0C019D28 */  jal       guMtxIdentF
/* 833528 80241D28 0080802D */   daddu    $s0, $a0, $zero
/* 83352C 80241D2C 4616A582 */  mul.s     $f22, $f20, $f22
/* 833530 80241D30 00000000 */  nop       
/* 833534 80241D34 4618A502 */  mul.s     $f20, $f20, $f24
/* 833538 80241D38 00000000 */  nop       
/* 83353C 80241D3C 3C013F80 */  lui       $at, 0x3f80
/* 833540 80241D40 44810000 */  mtc1      $at, $f0
/* 833544 80241D44 00000000 */  nop       
/* 833548 80241D48 E6000014 */  swc1      $f0, 0x14($s0)
/* 83354C 80241D4C E6160010 */  swc1      $f22, 0x10($s0)
/* 833550 80241D50 E6140018 */  swc1      $f20, 0x18($s0)
/* 833554 80241D54 8FBF0014 */  lw        $ra, 0x14($sp)
/* 833558 80241D58 8FB00010 */  lw        $s0, 0x10($sp)
/* 83355C 80241D5C D7B80028 */  ldc1      $f24, 0x28($sp)
/* 833560 80241D60 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 833564 80241D64 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 833568 80241D68 03E00008 */  jr        $ra
/* 83356C 80241D6C 27BD0030 */   addiu    $sp, $sp, 0x30
