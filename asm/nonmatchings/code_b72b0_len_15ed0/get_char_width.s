.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel get_char_width
/* 0BC4F4 80125DF4 288200F0 */  slti  $v0, $a0, 0xf0
/* 0BC4F8 80125DF8 44871000 */  mtc1  $a3, $f2
/* 0BC4FC 80125DFC 8FA70010 */  lw    $a3, 0x10($sp)
/* 0BC500 80125E00 97A30016 */  lhu   $v1, 0x16($sp)
/* 0BC504 80125E04 14400004 */  bnez  $v0, .L80125E18
/* 0BC508 80125E08 2482FF0B */   addiu $v0, $a0, -0xf5
/* 0BC50C 80125E0C 2C420003 */  sltiu $v0, $v0, 3
/* 0BC510 80125E10 10400037 */  beqz  $v0, .L80125EF0
/* 0BC514 80125E14 0000102D */   daddu $v0, $zero, $zero
.L80125E18:
/* 0BC518 80125E18 10E00005 */  beqz  $a3, .L80125E30
/* 0BC51C 80125E1C 240200F5 */   addiu $v0, $zero, 0xf5
/* 0BC520 80125E20 44870000 */  mtc1  $a3, $f0
/* 0BC524 80125E24 00000000 */  nop   
/* 0BC528 80125E28 080497B1 */  j     .L80125EC4
/* 0BC52C 80125E2C 46800020 */   cvt.s.w $f0, $f0

.L80125E30:
/* 0BC530 80125E30 30620100 */  andi  $v0, $v1, 0x100
/* 0BC534 80125E34 10400015 */  beqz  $v0, .L80125E8C
/* 0BC538 80125E38 00051880 */   sll   $v1, $a1, 2
/* 0BC53C 80125E3C 00061040 */  sll   $v0, $a2, 1
/* 0BC540 80125E40 3C01802F */  lui   $at, 0x802f
/* 0BC544 80125E44 00230821 */  addu  $at, $at, $v1
/* 0BC548 80125E48 8C23B5A8 */  lw    $v1, -0x4a58($at)
/* 0BC54C 80125E4C 00461021 */  addu  $v0, $v0, $a2
/* 0BC550 80125E50 8C630008 */  lw    $v1, 8($v1)
/* 0BC554 80125E54 00021080 */  sll   $v0, $v0, 2
/* 0BC558 80125E58 00431021 */  addu  $v0, $v0, $v1
/* 0BC55C 80125E5C 8C430004 */  lw    $v1, 4($v0)
/* 0BC560 80125E60 1060000A */  beqz  $v1, .L80125E8C
/* 0BC564 80125E64 240200F5 */   addiu $v0, $zero, 0xf5
/* 0BC568 80125E68 10820008 */  beq   $a0, $v0, .L80125E8C
/* 0BC56C 80125E6C 240200F6 */   addiu $v0, $zero, 0xf6
/* 0BC570 80125E70 10820006 */  beq   $a0, $v0, .L80125E8C
/* 0BC574 80125E74 240200F7 */   addiu $v0, $zero, 0xf7
/* 0BC578 80125E78 10820004 */  beq   $a0, $v0, .L80125E8C
/* 0BC57C 80125E7C 00641021 */   addu  $v0, $v1, $a0
/* 0BC580 80125E80 90420000 */  lbu   $v0, ($v0)
/* 0BC584 80125E84 080497AD */  j     .L80125EB4
/* 0BC588 80125E88 00000000 */   nop   

.L80125E8C:
/* 0BC58C 80125E8C 00051880 */  sll   $v1, $a1, 2
/* 0BC590 80125E90 00061040 */  sll   $v0, $a2, 1
/* 0BC594 80125E94 3C01802F */  lui   $at, 0x802f
/* 0BC598 80125E98 00230821 */  addu  $at, $at, $v1
/* 0BC59C 80125E9C 8C23B5A8 */  lw    $v1, -0x4a58($at)
/* 0BC5A0 80125EA0 00461021 */  addu  $v0, $v0, $a2
/* 0BC5A4 80125EA4 8C630008 */  lw    $v1, 8($v1)
/* 0BC5A8 80125EA8 00021080 */  sll   $v0, $v0, 2
/* 0BC5AC 80125EAC 00431021 */  addu  $v0, $v0, $v1
/* 0BC5B0 80125EB0 90420008 */  lbu   $v0, 8($v0)
.L80125EB4:
/* 0BC5B4 80125EB4 44820000 */  mtc1  $v0, $f0
/* 0BC5B8 80125EB8 00000000 */  nop   
/* 0BC5BC 80125EBC 46800020 */  cvt.s.w $f0, $f0
/* 0BC5C0 80125EC0 240200F5 */  addiu $v0, $zero, 0xf5
.L80125EC4:
/* 0BC5C4 80125EC4 1482000C */  bne   $a0, $v0, .L80125EF8
/* 0BC5C8 80125EC8 240200F6 */   addiu $v0, $zero, 0xf6
/* 0BC5CC 80125ECC 46020002 */  mul.s $f0, $f0, $f2
/* 0BC5D0 80125ED0 00000000 */  nop   
/* 0BC5D4 80125ED4 3C018015 */  lui   $at, 0x8015
/* 0BC5D8 80125ED8 D4220580 */  ldc1  $f2, 0x580($at)
/* 0BC5DC 80125EDC 46000021 */  cvt.d.s $f0, $f0
.L80125EE0:
/* 0BC5E0 80125EE0 46220002 */  mul.d $f0, $f0, $f2
/* 0BC5E4 80125EE4 00000000 */  nop   
/* 0BC5E8 80125EE8 4620010D */  trunc.w.d $f4, $f0
/* 0BC5EC 80125EEC 44022000 */  mfc1  $v0, $f4
.L80125EF0:
/* 0BC5F0 80125EF0 03E00008 */  jr    $ra
/* 0BC5F4 80125EF4 00000000 */   nop   

.L80125EF8:
/* 0BC5F8 80125EF8 14820008 */  bne   $a0, $v0, .L80125F1C
/* 0BC5FC 80125EFC 240200F7 */   addiu $v0, $zero, 0xf7
/* 0BC600 80125F00 46020002 */  mul.s $f0, $f0, $f2
/* 0BC604 80125F04 00000000 */  nop   
/* 0BC608 80125F08 46000021 */  cvt.d.s $f0, $f0
/* 0BC60C 80125F0C 4620010D */  trunc.w.d $f4, $f0
/* 0BC610 80125F10 44022000 */  mfc1  $v0, $f4
/* 0BC614 80125F14 03E00008 */  jr    $ra
/* 0BC618 80125F18 00000000 */   nop   

.L80125F1C:
/* 0BC61C 80125F1C 14820008 */  bne   $a0, $v0, .L80125F40
/* 0BC620 80125F20 288200F0 */   slti  $v0, $a0, 0xf0
/* 0BC624 80125F24 46020002 */  mul.s $f0, $f0, $f2
/* 0BC628 80125F28 00000000 */  nop   
/* 0BC62C 80125F2C 3C013FE0 */  lui   $at, 0x3fe0
/* 0BC630 80125F30 44811800 */  mtc1  $at, $f3
/* 0BC634 80125F34 44801000 */  mtc1  $zero, $f2
/* 0BC638 80125F38 080497B8 */  j     .L80125EE0
/* 0BC63C 80125F3C 46000021 */   cvt.d.s $f0, $f0

.L80125F40:
/* 0BC640 80125F40 10400007 */  beqz  $v0, .L80125F60
/* 0BC644 80125F44 00000000 */   nop   
/* 0BC648 80125F48 46020002 */  mul.s $f0, $f0, $f2
/* 0BC64C 80125F4C 00000000 */  nop   
/* 0BC650 80125F50 4600010D */  trunc.w.s $f4, $f0
/* 0BC654 80125F54 44022000 */  mfc1  $v0, $f4
/* 0BC658 80125F58 03E00008 */  jr    $ra
/* 0BC65C 80125F5C 00000000 */   nop   

.L80125F60:
/* 0BC660 80125F60 03E00008 */  jr    $ra
/* 0BC664 80125F64 0000102D */   daddu $v0, $zero, $zero
