.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00243BC
/* 33960C E00243BC 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 339610 E00243C0 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 339614 E00243C4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 339618 E00243C8 AFB00010 */  sw        $s0, 0x10($sp)
/* 33961C E00243CC AFBF0014 */  sw        $ra, 0x14($sp)
/* 339620 E00243D0 94420134 */  lhu       $v0, 0x134($v0)
/* 339624 E00243D4 24A500B4 */  addiu     $a1, $a1, 0xb4
/* 339628 E00243D8 00021140 */  sll       $v0, $v0, 5
/* 33962C E00243DC 00451021 */  addu      $v0, $v0, $a1
/* 339630 E00243E0 44826000 */  mtc1      $v0, $f12
/* 339634 E00243E4 00000000 */  nop
/* 339638 E00243E8 46806320 */  cvt.s.w   $f12, $f12
/* 33963C E00243EC 0C080140 */  jal       shim_sin_deg
/* 339640 E00243F0 0080802D */   daddu    $s0, $a0, $zero
/* 339644 E00243F4 00101023 */  negu      $v0, $s0
/* 339648 E00243F8 44821000 */  mtc1      $v0, $f2
/* 33964C E00243FC 00000000 */  nop
/* 339650 E0024400 468010A0 */  cvt.s.w   $f2, $f2
/* 339654 E0024404 46020002 */  mul.s     $f0, $f0, $f2
/* 339658 E0024408 00000000 */  nop
/* 33965C E002440C 46020000 */  add.s     $f0, $f0, $f2
/* 339660 E0024410 3C013FE0 */  lui       $at, 0x3fe0
/* 339664 E0024414 44811800 */  mtc1      $at, $f3
/* 339668 E0024418 44801000 */  mtc1      $zero, $f2
/* 33966C E002441C 46000021 */  cvt.d.s   $f0, $f0
/* 339670 E0024420 46220002 */  mul.d     $f0, $f0, $f2
/* 339674 E0024424 00000000 */  nop
/* 339678 E0024428 44901000 */  mtc1      $s0, $f2
/* 33967C E002442C 00000000 */  nop
/* 339680 E0024430 468010A1 */  cvt.d.w   $f2, $f2
/* 339684 E0024434 46220000 */  add.d     $f0, $f0, $f2
/* 339688 E0024438 8FBF0014 */  lw        $ra, 0x14($sp)
/* 33968C E002443C 8FB00010 */  lw        $s0, 0x10($sp)
/* 339690 E0024440 46200020 */  cvt.s.d   $f0, $f0
/* 339694 E0024444 4600010D */  trunc.w.s $f4, $f0
/* 339698 E0024448 44022000 */  mfc1      $v0, $f4
/* 33969C E002444C 03E00008 */  jr        $ra
/* 3396A0 E0024450 27BD0018 */   addiu    $sp, $sp, 0x18
