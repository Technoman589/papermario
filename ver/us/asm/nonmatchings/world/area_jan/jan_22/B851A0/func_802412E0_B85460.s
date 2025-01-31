.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802412E0_B85460
/* B85460 802412E0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* B85464 802412E4 AFB10014 */  sw        $s1, 0x14($sp)
/* B85468 802412E8 0080882D */  daddu     $s1, $a0, $zero
/* B8546C 802412EC AFBF001C */  sw        $ra, 0x1c($sp)
/* B85470 802412F0 AFB20018 */  sw        $s2, 0x18($sp)
/* B85474 802412F4 AFB00010 */  sw        $s0, 0x10($sp)
/* B85478 802412F8 8E30000C */  lw        $s0, 0xc($s1)
/* B8547C 802412FC 8E050000 */  lw        $a1, ($s0)
/* B85480 80241300 0C0B1EAF */  jal       evt_get_variable
/* B85484 80241304 26100004 */   addiu    $s0, $s0, 4
/* B85488 80241308 0220202D */  daddu     $a0, $s1, $zero
/* B8548C 8024130C 8E050000 */  lw        $a1, ($s0)
/* B85490 80241310 2450FFEF */  addiu     $s0, $v0, -0x11
/* B85494 80241314 0C0B1EAF */  jal       evt_get_variable
/* B85498 80241318 24520011 */   addiu    $s2, $v0, 0x11
/* B8549C 8024131C 2403FFFF */  addiu     $v1, $zero, -1
/* B854A0 80241320 44900000 */  mtc1      $s0, $f0
/* B854A4 80241324 00000000 */  nop
/* B854A8 80241328 46800020 */  cvt.s.w   $f0, $f0
/* B854AC 8024132C AE2300A4 */  sw        $v1, 0xa4($s1)
/* B854B0 80241330 2443FFEF */  addiu     $v1, $v0, -0x11
/* B854B4 80241334 3C018011 */  lui       $at, %hi(gPlayerStatus+0x28)
/* B854B8 80241338 C422EFF0 */  lwc1      $f2, %lo(gPlayerStatus+0x28)($at)
/* B854BC 8024133C 4600103C */  c.lt.s    $f2, $f0
/* B854C0 80241340 00000000 */  nop
/* B854C4 80241344 45010008 */  bc1t      .L80241368
/* B854C8 80241348 24420011 */   addiu    $v0, $v0, 0x11
/* B854CC 8024134C 44920000 */  mtc1      $s2, $f0
/* B854D0 80241350 00000000 */  nop
/* B854D4 80241354 46800020 */  cvt.s.w   $f0, $f0
/* B854D8 80241358 4602003C */  c.lt.s    $f0, $f2
/* B854DC 8024135C 00000000 */  nop
/* B854E0 80241360 45000014 */  bc1f      .L802413B4
/* B854E4 80241364 00000000 */   nop
.L80241368:
/* B854E8 80241368 44830000 */  mtc1      $v1, $f0
/* B854EC 8024136C 00000000 */  nop
/* B854F0 80241370 46800020 */  cvt.s.w   $f0, $f0
/* B854F4 80241374 4600103C */  c.lt.s    $f2, $f0
/* B854F8 80241378 00000000 */  nop
/* B854FC 8024137C 45010008 */  bc1t      .L802413A0
/* B85500 80241380 00000000 */   nop
/* B85504 80241384 44820000 */  mtc1      $v0, $f0
/* B85508 80241388 00000000 */  nop
/* B8550C 8024138C 46800020 */  cvt.s.w   $f0, $f0
/* B85510 80241390 4602003C */  c.lt.s    $f0, $f2
/* B85514 80241394 00000000 */  nop
/* B85518 80241398 45000006 */  bc1f      .L802413B4
/* B8551C 8024139C 00000000 */   nop
.L802413A0:
/* B85520 802413A0 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* B85524 802413A4 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* B85528 802413A8 8C420010 */  lw        $v0, 0x10($v0)
/* B8552C 802413AC 30428000 */  andi      $v0, $v0, 0x8000
/* B85530 802413B0 AE2200A4 */  sw        $v0, 0xa4($s1)
.L802413B4:
/* B85534 802413B4 8FBF001C */  lw        $ra, 0x1c($sp)
/* B85538 802413B8 8FB20018 */  lw        $s2, 0x18($sp)
/* B8553C 802413BC 8FB10014 */  lw        $s1, 0x14($sp)
/* B85540 802413C0 8FB00010 */  lw        $s0, 0x10($sp)
/* B85544 802413C4 24020002 */  addiu     $v0, $zero, 2
/* B85548 802413C8 03E00008 */  jr        $ra
/* B8554C 802413CC 27BD0020 */   addiu    $sp, $sp, 0x20
