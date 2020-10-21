.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802431FC_95E3FC
/* 95E3FC 802431FC 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 95E400 80243200 AFB10014 */  sw        $s1, 0x14($sp)
/* 95E404 80243204 0080882D */  daddu     $s1, $a0, $zero
/* 95E408 80243208 AFBF0018 */  sw        $ra, 0x18($sp)
/* 95E40C 8024320C AFB00010 */  sw        $s0, 0x10($sp)
/* 95E410 80243210 F7B80030 */  sdc1      $f24, 0x30($sp)
/* 95E414 80243214 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 95E418 80243218 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 95E41C 8024321C 0C00EAD2 */  jal       get_npc_safe
/* 95E420 80243220 8E24014C */   lw       $a0, 0x14c($s1)
/* 95E424 80243224 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 95E428 80243228 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 95E42C 8024322C 0040802D */  daddu     $s0, $v0, $zero
/* 95E430 80243230 3C014337 */  lui       $at, 0x4337
/* 95E434 80243234 4481A000 */  mtc1      $at, $f20
/* 95E438 80243238 3C01C296 */  lui       $at, 0xc296
/* 95E43C 8024323C 4481B000 */  mtc1      $at, $f22
/* 95E440 80243240 8C660028 */  lw        $a2, 0x28($v1)
/* 95E444 80243244 8C670030 */  lw        $a3, 0x30($v1)
/* 95E448 80243248 4600A306 */  mov.s     $f12, $f20
/* 95E44C 8024324C 0C00A720 */  jal       atan2
/* 95E450 80243250 4600B386 */   mov.s    $f14, $f22
/* 95E454 80243254 46000606 */  mov.s     $f24, $f0
/* 95E458 80243258 4600A306 */  mov.s     $f12, $f20
/* 95E45C 8024325C 8E060038 */  lw        $a2, 0x38($s0)
/* 95E460 80243260 8E070040 */  lw        $a3, 0x40($s0)
/* 95E464 80243264 0C00A720 */  jal       atan2
/* 95E468 80243268 4600B386 */   mov.s    $f14, $f22
/* 95E46C 8024326C 46000586 */  mov.s     $f22, $f0
/* 95E470 80243270 4600B306 */  mov.s     $f12, $f22
/* 95E474 80243274 0C00A70A */  jal       get_clamped_angle_diff
/* 95E478 80243278 4600C386 */   mov.s    $f14, $f24
/* 95E47C 8024327C 46000606 */  mov.s     $f24, $f0
/* 95E480 80243280 0C00A67F */  jal       rand_int
/* 95E484 80243284 2404000A */   addiu    $a0, $zero, 0xa
/* 95E488 80243288 44800000 */  mtc1      $zero, $f0
/* 95E48C 8024328C 00000000 */  nop       
/* 95E490 80243290 4600C03C */  c.lt.s    $f24, $f0
/* 95E494 80243294 00000000 */  nop       
/* 95E498 80243298 45000006 */  bc1f      .L802432B4
/* 95E49C 8024329C 2450001E */   addiu    $s0, $v0, 0x1e
/* 95E4A0 802432A0 44900000 */  mtc1      $s0, $f0
/* 95E4A4 802432A4 00000000 */  nop       
/* 95E4A8 802432A8 46800020 */  cvt.s.w   $f0, $f0
/* 95E4AC 802432AC 08090CB1 */  j         .L802432C4
/* 95E4B0 802432B0 4600B580 */   add.s    $f22, $f22, $f0
.L802432B4:
/* 95E4B4 802432B4 44900000 */  mtc1      $s0, $f0
/* 95E4B8 802432B8 00000000 */  nop       
/* 95E4BC 802432BC 46800020 */  cvt.s.w   $f0, $f0
/* 95E4C0 802432C0 4600B581 */  sub.s     $f22, $f22, $f0
.L802432C4:
/* 95E4C4 802432C4 0C00A67F */  jal       rand_int
/* 95E4C8 802432C8 24040014 */   addiu    $a0, $zero, 0x14
/* 95E4CC 802432CC 2450001E */  addiu     $s0, $v0, 0x1e
/* 95E4D0 802432D0 0C00A8BB */  jal       sin_deg
/* 95E4D4 802432D4 4600B306 */   mov.s    $f12, $f22
/* 95E4D8 802432D8 4490A000 */  mtc1      $s0, $f20
/* 95E4DC 802432DC 00000000 */  nop       
/* 95E4E0 802432E0 4680A520 */  cvt.s.w   $f20, $f20
/* 95E4E4 802432E4 46140002 */  mul.s     $f0, $f0, $f20
/* 95E4E8 802432E8 00000000 */  nop       
/* 95E4EC 802432EC 3C014337 */  lui       $at, 0x4337
/* 95E4F0 802432F0 44811000 */  mtc1      $at, $f2
/* 95E4F4 802432F4 00000000 */  nop       
/* 95E4F8 802432F8 46020000 */  add.s     $f0, $f0, $f2
/* 95E4FC 802432FC 4600010D */  trunc.w.s $f4, $f0
/* 95E500 80243300 E6240084 */  swc1      $f4, 0x84($s1)
/* 95E504 80243304 0C00A8D4 */  jal       cos_deg
/* 95E508 80243308 4600B306 */   mov.s    $f12, $f22
/* 95E50C 8024330C 46140002 */  mul.s     $f0, $f0, $f20
/* 95E510 80243310 00000000 */  nop       
/* 95E514 80243314 3C01C296 */  lui       $at, 0xc296
/* 95E518 80243318 44811000 */  mtc1      $at, $f2
/* 95E51C 8024331C 00000000 */  nop       
/* 95E520 80243320 46001081 */  sub.s     $f2, $f2, $f0
/* 95E524 80243324 4600110D */  trunc.w.s $f4, $f2
/* 95E528 80243328 E6240088 */  swc1      $f4, 0x88($s1)
/* 95E52C 8024332C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 95E530 80243330 8FB10014 */  lw        $s1, 0x14($sp)
/* 95E534 80243334 8FB00010 */  lw        $s0, 0x10($sp)
/* 95E538 80243338 D7B80030 */  ldc1      $f24, 0x30($sp)
/* 95E53C 8024333C D7B60028 */  ldc1      $f22, 0x28($sp)
/* 95E540 80243340 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 95E544 80243344 24020002 */  addiu     $v0, $zero, 2
/* 95E548 80243348 03E00008 */  jr        $ra
/* 95E54C 8024334C 27BD0038 */   addiu    $sp, $sp, 0x38
