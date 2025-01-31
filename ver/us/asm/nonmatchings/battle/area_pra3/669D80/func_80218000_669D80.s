.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218000_669D80
/* 669D80 80218000 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 669D84 80218004 AFB40020 */  sw        $s4, 0x20($sp)
/* 669D88 80218008 0080A02D */  daddu     $s4, $a0, $zero
/* 669D8C 8021800C AFB00010 */  sw        $s0, 0x10($sp)
/* 669D90 80218010 AFBF0024 */  sw        $ra, 0x24($sp)
/* 669D94 80218014 AFB3001C */  sw        $s3, 0x1c($sp)
/* 669D98 80218018 AFB20018 */  sw        $s2, 0x18($sp)
/* 669D9C 8021801C AFB10014 */  sw        $s1, 0x14($sp)
/* 669DA0 80218020 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 669DA4 80218024 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 669DA8 80218028 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 669DAC 8021802C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 669DB0 80218030 8E840148 */  lw        $a0, 0x148($s4)
/* 669DB4 80218034 8E92000C */  lw        $s2, 0xc($s4)
/* 669DB8 80218038 0C09A75B */  jal       get_actor
/* 669DBC 8021803C 00A0802D */   daddu    $s0, $a1, $zero
/* 669DC0 80218040 0040982D */  daddu     $s3, $v0, $zero
/* 669DC4 80218044 12000011 */  beqz      $s0, .L8021808C
/* 669DC8 80218048 2671000C */   addiu    $s1, $s3, 0xc
/* 669DCC 8021804C 8E450000 */  lw        $a1, ($s2)
/* 669DD0 80218050 26520004 */  addiu     $s2, $s2, 4
/* 669DD4 80218054 0C0B1EAF */  jal       evt_get_variable
/* 669DD8 80218058 0280202D */   daddu    $a0, $s4, $zero
/* 669DDC 8021805C A6620070 */  sh        $v0, 0x70($s3)
/* 669DE0 80218060 8E450000 */  lw        $a1, ($s2)
/* 669DE4 80218064 0C0B1EAF */  jal       evt_get_variable
/* 669DE8 80218068 0280202D */   daddu    $a0, $s4, $zero
/* 669DEC 8021806C A6620072 */  sh        $v0, 0x72($s3)
/* 669DF0 80218070 AE800074 */  sw        $zero, 0x74($s4)
/* 669DF4 80218074 AE800070 */  sw        $zero, 0x70($s4)
/* 669DF8 80218078 86630072 */  lh        $v1, 0x72($s3)
/* 669DFC 8021807C 24020001 */  addiu     $v0, $zero, 1
/* 669E00 80218080 14620002 */  bne       $v1, $v0, .L8021808C
/* 669E04 80218084 24020002 */   addiu    $v0, $zero, 2
/* 669E08 80218088 AE820070 */  sw        $v0, 0x70($s4)
.L8021808C:
/* 669E0C 8021808C 8E820070 */  lw        $v0, 0x70($s4)
/* 669E10 80218090 144000F7 */  bnez      $v0, .L80218470
/* 669E14 80218094 00000000 */   nop
/* 669E18 80218098 C6600144 */  lwc1      $f0, 0x144($s3)
/* 669E1C 8021809C C638000C */  lwc1      $f24, 0xc($s1)
/* 669E20 802180A0 C63A0014 */  lwc1      $f26, 0x14($s1)
/* 669E24 802180A4 E6200000 */  swc1      $f0, ($s1)
/* 669E28 802180A8 C6600148 */  lwc1      $f0, 0x148($s3)
/* 669E2C 802180AC 4406C000 */  mfc1      $a2, $f24
/* 669E30 802180B0 4407D000 */  mfc1      $a3, $f26
/* 669E34 802180B4 C6360000 */  lwc1      $f22, ($s1)
/* 669E38 802180B8 E6200004 */  swc1      $f0, 4($s1)
/* 669E3C 802180BC C674014C */  lwc1      $f20, 0x14c($s3)
/* 669E40 802180C0 4600B306 */  mov.s     $f12, $f22
/* 669E44 802180C4 4600A386 */  mov.s     $f14, $f20
/* 669E48 802180C8 0C00A720 */  jal       atan2
/* 669E4C 802180CC E6340008 */   swc1     $f20, 8($s1)
/* 669E50 802180D0 4600B306 */  mov.s     $f12, $f22
/* 669E54 802180D4 4406C000 */  mfc1      $a2, $f24
/* 669E58 802180D8 4407D000 */  mfc1      $a3, $f26
/* 669E5C 802180DC 4600A386 */  mov.s     $f14, $f20
/* 669E60 802180E0 0C00A7B5 */  jal       dist2D
/* 669E64 802180E4 E6200048 */   swc1     $f0, 0x48($s1)
/* 669E68 802180E8 86220064 */  lh        $v0, 0x64($s1)
/* 669E6C 802180EC 46000106 */  mov.s     $f4, $f0
/* 669E70 802180F0 14400012 */  bnez      $v0, .L8021813C
/* 669E74 802180F4 E624004C */   swc1     $f4, 0x4c($s1)
/* 669E78 802180F8 C6200040 */  lwc1      $f0, 0x40($s1)
/* 669E7C 802180FC C6220040 */  lwc1      $f2, 0x40($s1)
/* 669E80 80218100 46002003 */  div.s     $f0, $f4, $f0
/* 669E84 80218104 4600028D */  trunc.w.s $f10, $f0
/* 669E88 80218108 44035000 */  mfc1      $v1, $f10
/* 669E8C 8021810C 00000000 */  nop
/* 669E90 80218110 00031400 */  sll       $v0, $v1, 0x10
/* 669E94 80218114 00021403 */  sra       $v0, $v0, 0x10
/* 669E98 80218118 44820000 */  mtc1      $v0, $f0
/* 669E9C 8021811C 00000000 */  nop
/* 669EA0 80218120 46800020 */  cvt.s.w   $f0, $f0
/* 669EA4 80218124 46020002 */  mul.s     $f0, $f0, $f2
/* 669EA8 80218128 00000000 */  nop
/* 669EAC 8021812C 46002086 */  mov.s     $f2, $f4
/* 669EB0 80218130 A6230064 */  sh        $v1, 0x64($s1)
/* 669EB4 80218134 0808605C */  j         .L80218170
/* 669EB8 80218138 46001201 */   sub.s    $f8, $f2, $f0
.L8021813C:
/* 669EBC 8021813C 44821000 */  mtc1      $v0, $f2
/* 669EC0 80218140 00000000 */  nop
/* 669EC4 80218144 468010A0 */  cvt.s.w   $f2, $f2
/* 669EC8 80218148 86220064 */  lh        $v0, 0x64($s1)
/* 669ECC 8021814C 46022083 */  div.s     $f2, $f4, $f2
/* 669ED0 80218150 44820000 */  mtc1      $v0, $f0
/* 669ED4 80218154 00000000 */  nop
/* 669ED8 80218158 46800020 */  cvt.s.w   $f0, $f0
/* 669EDC 8021815C 46020002 */  mul.s     $f0, $f0, $f2
/* 669EE0 80218160 00000000 */  nop
/* 669EE4 80218164 C624004C */  lwc1      $f4, 0x4c($s1)
/* 669EE8 80218168 E6220040 */  swc1      $f2, 0x40($s1)
/* 669EEC 8021816C 46002201 */  sub.s     $f8, $f4, $f0
.L80218170:
/* 669EF0 80218170 86230064 */  lh        $v1, 0x64($s1)
/* 669EF4 80218174 106001BA */  beqz      $v1, .L80218860
/* 669EF8 80218178 24020002 */   addiu    $v0, $zero, 2
/* 669EFC 8021817C 86220064 */  lh        $v0, 0x64($s1)
/* 669F00 80218180 C622000C */  lwc1      $f2, 0xc($s1)
/* 669F04 80218184 3C014049 */  lui       $at, 0x4049
/* 669F08 80218188 34210FD0 */  ori       $at, $at, 0xfd0
/* 669F0C 8021818C 44810000 */  mtc1      $at, $f0
/* 669F10 80218190 C6240000 */  lwc1      $f4, ($s1)
/* 669F14 80218194 44823000 */  mtc1      $v0, $f6
/* 669F18 80218198 00000000 */  nop
/* 669F1C 8021819C 468031A0 */  cvt.s.w   $f6, $f6
/* 669F20 802181A0 46060003 */  div.s     $f0, $f0, $f6
/* 669F24 802181A4 46041081 */  sub.s     $f2, $f2, $f4
/* 669F28 802181A8 E620003C */  swc1      $f0, 0x3c($s1)
/* 669F2C 802181AC 44830000 */  mtc1      $v1, $f0
/* 669F30 802181B0 00000000 */  nop
/* 669F34 802181B4 46800020 */  cvt.s.w   $f0, $f0
/* 669F38 802181B8 46001083 */  div.s     $f2, $f2, $f0
/* 669F3C 802181BC C6200010 */  lwc1      $f0, 0x10($s1)
/* 669F40 802181C0 E6220030 */  swc1      $f2, 0x30($s1)
/* 669F44 802181C4 C6220004 */  lwc1      $f2, 4($s1)
/* 669F48 802181C8 AE200044 */  sw        $zero, 0x44($s1)
/* 669F4C 802181CC 46020001 */  sub.s     $f0, $f0, $f2
/* 669F50 802181D0 C6240014 */  lwc1      $f4, 0x14($s1)
/* 669F54 802181D4 46003086 */  mov.s     $f2, $f6
/* 669F58 802181D8 46020003 */  div.s     $f0, $f0, $f2
/* 669F5C 802181DC E6200034 */  swc1      $f0, 0x34($s1)
/* 669F60 802181E0 46003006 */  mov.s     $f0, $f6
/* 669F64 802181E4 46004003 */  div.s     $f0, $f8, $f0
/* 669F68 802181E8 C6220008 */  lwc1      $f2, 8($s1)
/* 669F6C 802181EC 86220066 */  lh        $v0, 0x66($s1)
/* 669F70 802181F0 46022101 */  sub.s     $f4, $f4, $f2
/* 669F74 802181F4 C6220040 */  lwc1      $f2, 0x40($s1)
/* 669F78 802181F8 28420003 */  slti      $v0, $v0, 3
/* 669F7C 802181FC 46001080 */  add.s     $f2, $f2, $f0
/* 669F80 80218200 46062103 */  div.s     $f4, $f4, $f6
/* 669F84 80218204 E6240038 */  swc1      $f4, 0x38($s1)
/* 669F88 80218208 10400045 */  beqz      $v0, .L80218320
/* 669F8C 8021820C E6220040 */   swc1     $f2, 0x40($s1)
/* 669F90 80218210 86220064 */  lh        $v0, 0x64($s1)
/* 669F94 80218214 24030168 */  addiu     $v1, $zero, 0x168
/* 669F98 80218218 14400002 */  bnez      $v0, .L80218224
/* 669F9C 8021821C 0062001A */   div      $zero, $v1, $v0
/* 669FA0 80218220 0007000D */  break     7
.L80218224:
/* 669FA4 80218224 2401FFFF */   addiu    $at, $zero, -1
/* 669FA8 80218228 14410004 */  bne       $v0, $at, .L8021823C
/* 669FAC 8021822C 3C018000 */   lui      $at, 0x8000
/* 669FB0 80218230 14610002 */  bne       $v1, $at, .L8021823C
/* 669FB4 80218234 00000000 */   nop
/* 669FB8 80218238 0006000D */  break     6
.L8021823C:
/* 669FBC 8021823C 00001812 */   mflo     $v1
/* 669FC0 80218240 C628004C */  lwc1      $f8, 0x4c($s1)
/* 669FC4 80218244 3C014034 */  lui       $at, 0x4034
/* 669FC8 80218248 44811800 */  mtc1      $at, $f3
/* 669FCC 8021824C 44801000 */  mtc1      $zero, $f2
/* 669FD0 80218250 46004021 */  cvt.d.s   $f0, $f8
/* 669FD4 80218254 46220001 */  sub.d     $f0, $f0, $f2
/* 669FD8 80218258 3C014018 */  lui       $at, 0x4018
/* 669FDC 8021825C 44811800 */  mtc1      $at, $f3
/* 669FE0 80218260 44801000 */  mtc1      $zero, $f2
/* 669FE4 80218264 46200220 */  cvt.s.d   $f8, $f0
/* 669FE8 80218268 46004021 */  cvt.d.s   $f0, $f8
/* 669FEC 8021826C 46220003 */  div.d     $f0, $f0, $f2
/* 669FF0 80218270 46200220 */  cvt.s.d   $f8, $f0
/* 669FF4 80218274 3C018023 */  lui       $at, %hi(D_802329D0_684750)
/* 669FF8 80218278 D42229D0 */  ldc1      $f2, %lo(D_802329D0_684750)($at)
/* 669FFC 8021827C 46004021 */  cvt.d.s   $f0, $f8
/* 66A000 80218280 46220000 */  add.d     $f0, $f0, $f2
/* 66A004 80218284 3C0142B4 */  lui       $at, 0x42b4
/* 66A008 80218288 44811000 */  mtc1      $at, $f2
/* 66A00C 8021828C 46200220 */  cvt.s.d   $f8, $f0
/* 66A010 80218290 44830000 */  mtc1      $v1, $f0
/* 66A014 80218294 00000000 */  nop
/* 66A018 80218298 46800020 */  cvt.s.w   $f0, $f0
/* 66A01C 8021829C 86230066 */  lh        $v1, 0x66($s1)
/* 66A020 802182A0 24020002 */  addiu     $v0, $zero, 2
/* 66A024 802182A4 E6220024 */  swc1      $f2, 0x24($s1)
/* 66A028 802182A8 E6280050 */  swc1      $f8, 0x50($s1)
/* 66A02C 802182AC 14620008 */  bne       $v1, $v0, .L802182D0
/* 66A030 802182B0 E6200028 */   swc1     $f0, 0x28($s1)
/* 66A034 802182B4 3C018023 */  lui       $at, %hi(D_802329D8_684758)
/* 66A038 802182B8 D42229D8 */  ldc1      $f2, %lo(D_802329D8_684758)($at)
/* 66A03C 802182BC 46004021 */  cvt.d.s   $f0, $f8
/* 66A040 802182C0 46220002 */  mul.d     $f0, $f0, $f2
/* 66A044 802182C4 00000000 */  nop
/* 66A048 802182C8 46200020 */  cvt.s.d   $f0, $f0
/* 66A04C 802182CC E6200050 */  swc1      $f0, 0x50($s1)
.L802182D0:
/* 66A050 802182D0 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A054 802182D4 3C0140C9 */  lui       $at, 0x40c9
/* 66A058 802182D8 34210FD0 */  ori       $at, $at, 0xfd0
/* 66A05C 802182DC 44810000 */  mtc1      $at, $f0
/* 66A060 802182E0 C6340044 */  lwc1      $f20, 0x44($s1)
/* 66A064 802182E4 C636003C */  lwc1      $f22, 0x3c($s1)
/* 66A068 802182E8 AE200018 */  sw        $zero, 0x18($s1)
/* 66A06C 802182EC 46006302 */  mul.s     $f12, $f12, $f0
/* 66A070 802182F0 00000000 */  nop
/* 66A074 802182F4 AE20001C */  sw        $zero, 0x1c($s1)
/* 66A078 802182F8 4600A521 */  cvt.d.s   $f20, $f20
/* 66A07C 802182FC 3C0143B4 */  lui       $at, 0x43b4
/* 66A080 80218300 44810000 */  mtc1      $at, $f0
/* 66A084 80218304 4600B5A1 */  cvt.d.s   $f22, $f22
/* 66A088 80218308 0C00A85B */  jal       sin_rad
/* 66A08C 8021830C 46006303 */   div.s    $f12, $f12, $f0
/* 66A090 80218310 3C018023 */  lui       $at, %hi(D_802329E0_684760)
/* 66A094 80218314 D42229E0 */  ldc1      $f2, %lo(D_802329E0_684760)($at)
/* 66A098 80218318 0808610C */  j         .L80218430
/* 66A09C 8021831C 46000021 */   cvt.d.s  $f0, $f0
.L80218320:
/* 66A0A0 80218320 86220064 */  lh        $v0, 0x64($s1)
/* 66A0A4 80218324 24030168 */  addiu     $v1, $zero, 0x168
/* 66A0A8 80218328 14400002 */  bnez      $v0, .L80218334
/* 66A0AC 8021832C 0062001A */   div      $zero, $v1, $v0
/* 66A0B0 80218330 0007000D */  break     7
.L80218334:
/* 66A0B4 80218334 2401FFFF */   addiu    $at, $zero, -1
/* 66A0B8 80218338 14410004 */  bne       $v0, $at, .L8021834C
/* 66A0BC 8021833C 3C018000 */   lui      $at, 0x8000
/* 66A0C0 80218340 14610002 */  bne       $v1, $at, .L8021834C
/* 66A0C4 80218344 00000000 */   nop
/* 66A0C8 80218348 0006000D */  break     6
.L8021834C:
/* 66A0CC 8021834C 00001812 */   mflo     $v1
/* 66A0D0 80218350 C628004C */  lwc1      $f8, 0x4c($s1)
/* 66A0D4 80218354 3C014034 */  lui       $at, 0x4034
/* 66A0D8 80218358 44811800 */  mtc1      $at, $f3
/* 66A0DC 8021835C 44801000 */  mtc1      $zero, $f2
/* 66A0E0 80218360 46004021 */  cvt.d.s   $f0, $f8
/* 66A0E4 80218364 46220001 */  sub.d     $f0, $f0, $f2
/* 66A0E8 80218368 3C014018 */  lui       $at, 0x4018
/* 66A0EC 8021836C 44811800 */  mtc1      $at, $f3
/* 66A0F0 80218370 44801000 */  mtc1      $zero, $f2
/* 66A0F4 80218374 46200220 */  cvt.s.d   $f8, $f0
/* 66A0F8 80218378 46004021 */  cvt.d.s   $f0, $f8
/* 66A0FC 8021837C 46220003 */  div.d     $f0, $f0, $f2
/* 66A100 80218380 46200220 */  cvt.s.d   $f8, $f0
/* 66A104 80218384 3C018023 */  lui       $at, %hi(D_802329E8_684768)
/* 66A108 80218388 D42229E8 */  ldc1      $f2, %lo(D_802329E8_684768)($at)
/* 66A10C 8021838C 46004021 */  cvt.d.s   $f0, $f8
/* 66A110 80218390 46220000 */  add.d     $f0, $f0, $f2
/* 66A114 80218394 3C0142B4 */  lui       $at, 0x42b4
/* 66A118 80218398 44811000 */  mtc1      $at, $f2
/* 66A11C 8021839C 46200220 */  cvt.s.d   $f8, $f0
/* 66A120 802183A0 44830000 */  mtc1      $v1, $f0
/* 66A124 802183A4 00000000 */  nop
/* 66A128 802183A8 46800020 */  cvt.s.w   $f0, $f0
/* 66A12C 802183AC 86230066 */  lh        $v1, 0x66($s1)
/* 66A130 802183B0 24020004 */  addiu     $v0, $zero, 4
/* 66A134 802183B4 E6220024 */  swc1      $f2, 0x24($s1)
/* 66A138 802183B8 E6280050 */  swc1      $f8, 0x50($s1)
/* 66A13C 802183BC 14620009 */  bne       $v1, $v0, .L802183E4
/* 66A140 802183C0 E6200028 */   swc1     $f0, 0x28($s1)
/* 66A144 802183C4 3C013FF4 */  lui       $at, 0x3ff4
/* 66A148 802183C8 44811800 */  mtc1      $at, $f3
/* 66A14C 802183CC 44801000 */  mtc1      $zero, $f2
/* 66A150 802183D0 46004021 */  cvt.d.s   $f0, $f8
/* 66A154 802183D4 46220002 */  mul.d     $f0, $f0, $f2
/* 66A158 802183D8 00000000 */  nop
/* 66A15C 802183DC 46200020 */  cvt.s.d   $f0, $f0
/* 66A160 802183E0 E6200050 */  swc1      $f0, 0x50($s1)
.L802183E4:
/* 66A164 802183E4 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A168 802183E8 3C0140C9 */  lui       $at, 0x40c9
/* 66A16C 802183EC 34210FD0 */  ori       $at, $at, 0xfd0
/* 66A170 802183F0 44810000 */  mtc1      $at, $f0
/* 66A174 802183F4 C6340044 */  lwc1      $f20, 0x44($s1)
/* 66A178 802183F8 C636003C */  lwc1      $f22, 0x3c($s1)
/* 66A17C 802183FC AE200018 */  sw        $zero, 0x18($s1)
/* 66A180 80218400 46006302 */  mul.s     $f12, $f12, $f0
/* 66A184 80218404 00000000 */  nop
/* 66A188 80218408 AE20001C */  sw        $zero, 0x1c($s1)
/* 66A18C 8021840C 4600A521 */  cvt.d.s   $f20, $f20
/* 66A190 80218410 3C0143B4 */  lui       $at, 0x43b4
/* 66A194 80218414 44810000 */  mtc1      $at, $f0
/* 66A198 80218418 4600B5A1 */  cvt.d.s   $f22, $f22
/* 66A19C 8021841C 0C00A85B */  jal       sin_rad
/* 66A1A0 80218420 46006303 */   div.s    $f12, $f12, $f0
/* 66A1A4 80218424 3C018023 */  lui       $at, %hi(D_802329F0_684770)
/* 66A1A8 80218428 D42229F0 */  ldc1      $f2, %lo(D_802329F0_684770)($at)
/* 66A1AC 8021842C 46000021 */  cvt.d.s   $f0, $f0
.L80218430:
/* 66A1B0 80218430 46220002 */  mul.d     $f0, $f0, $f2
/* 66A1B4 80218434 00000000 */  nop
/* 66A1B8 80218438 46360002 */  mul.d     $f0, $f0, $f22
/* 66A1BC 8021843C 00000000 */  nop
/* 66A1C0 80218440 46360000 */  add.d     $f0, $f0, $f22
/* 66A1C4 80218444 4620A500 */  add.d     $f20, $f20, $f0
/* 66A1C8 80218448 4620A520 */  cvt.s.d   $f20, $f20
/* 66A1CC 8021844C E6340044 */  swc1      $f20, 0x44($s1)
/* 66A1D0 80218450 2404FF81 */  addiu     $a0, $zero, -0x7f
/* 66A1D4 80218454 8E260058 */  lw        $a2, 0x58($s1)
/* 66A1D8 80218458 0C098F3F */  jal       set_animation
/* 66A1DC 8021845C 24050001 */   addiu    $a1, $zero, 1
/* 66A1E0 80218460 0C05272D */  jal       sfx_play_sound
/* 66A1E4 80218464 24042081 */   addiu    $a0, $zero, 0x2081
/* 66A1E8 80218468 24020001 */  addiu     $v0, $zero, 1
/* 66A1EC 8021846C AE820070 */  sw        $v0, 0x70($s4)
.L80218470:
/* 66A1F0 80218470 8E830070 */  lw        $v1, 0x70($s4)
/* 66A1F4 80218474 24020002 */  addiu     $v0, $zero, 2
/* 66A1F8 80218478 10620095 */  beq       $v1, $v0, .L802186D0
/* 66A1FC 8021847C 24020001 */   addiu    $v0, $zero, 1
/* 66A200 80218480 28620003 */  slti      $v0, $v1, 3
/* 66A204 80218484 10400005 */  beqz      $v0, .L8021849C
/* 66A208 80218488 24020001 */   addiu    $v0, $zero, 1
/* 66A20C 8021848C 10620008 */  beq       $v1, $v0, .L802184B0
/* 66A210 80218490 0000102D */   daddu    $v0, $zero, $zero
/* 66A214 80218494 08086218 */  j         .L80218860
/* 66A218 80218498 00000000 */   nop
.L8021849C:
/* 66A21C 8021849C 24020003 */  addiu     $v0, $zero, 3
/* 66A220 802184A0 106200BA */  beq       $v1, $v0, .L8021878C
/* 66A224 802184A4 0000102D */   daddu    $v0, $zero, $zero
/* 66A228 802184A8 08086218 */  j         .L80218860
/* 66A22C 802184AC 00000000 */   nop
.L802184B0:
/* 66A230 802184B0 C6220044 */  lwc1      $f2, 0x44($s1)
/* 66A234 802184B4 3C013FC9 */  lui       $at, 0x3fc9
/* 66A238 802184B8 34210FD0 */  ori       $at, $at, 0xfd0
/* 66A23C 802184BC 44810000 */  mtc1      $at, $f0
/* 66A240 802184C0 00000000 */  nop
/* 66A244 802184C4 4602003C */  c.lt.s    $f0, $f2
/* 66A248 802184C8 00000000 */  nop
/* 66A24C 802184CC 45000004 */  bc1f      .L802184E0
/* 66A250 802184D0 2404FF81 */   addiu    $a0, $zero, -0x7f
/* 66A254 802184D4 8E26005C */  lw        $a2, 0x5c($s1)
/* 66A258 802184D8 0C098F3F */  jal       set_animation
/* 66A25C 802184DC 24050001 */   addiu    $a1, $zero, 1
.L802184E0:
/* 66A260 802184E0 C6260000 */  lwc1      $f6, ($s1)
/* 66A264 802184E4 C6200030 */  lwc1      $f0, 0x30($s1)
/* 66A268 802184E8 C6240004 */  lwc1      $f4, 4($s1)
/* 66A26C 802184EC C6760144 */  lwc1      $f22, 0x144($s3)
/* 66A270 802184F0 46003180 */  add.s     $f6, $f6, $f0
/* 66A274 802184F4 C6200034 */  lwc1      $f0, 0x34($s1)
/* 66A278 802184F8 C6220038 */  lwc1      $f2, 0x38($s1)
/* 66A27C 802184FC 46002100 */  add.s     $f4, $f4, $f0
/* 66A280 80218500 C6200008 */  lwc1      $f0, 8($s1)
/* 66A284 80218504 C6740148 */  lwc1      $f20, 0x148($s3)
/* 66A288 80218508 46020000 */  add.s     $f0, $f0, $f2
/* 66A28C 8021850C E6260000 */  swc1      $f6, ($s1)
/* 66A290 80218510 E6240004 */  swc1      $f4, 4($s1)
/* 66A294 80218514 E6200008 */  swc1      $f0, 8($s1)
/* 66A298 80218518 C6600148 */  lwc1      $f0, 0x148($s3)
/* 66A29C 8021851C 46003086 */  mov.s     $f2, $f6
/* 66A2A0 80218520 E6200018 */  swc1      $f0, 0x18($s1)
/* 66A2A4 80218524 E6620144 */  swc1      $f2, 0x144($s3)
/* 66A2A8 80218528 0C00A85B */  jal       sin_rad
/* 66A2AC 8021852C C62C0044 */   lwc1     $f12, 0x44($s1)
/* 66A2B0 80218530 C6220050 */  lwc1      $f2, 0x50($s1)
/* 66A2B4 80218534 46001082 */  mul.s     $f2, $f2, $f0
/* 66A2B8 80218538 00000000 */  nop
/* 66A2BC 8021853C C6200004 */  lwc1      $f0, 4($s1)
/* 66A2C0 80218540 46020000 */  add.s     $f0, $f0, $f2
/* 66A2C4 80218544 E6600148 */  swc1      $f0, 0x148($s3)
/* 66A2C8 80218548 C6200008 */  lwc1      $f0, 8($s1)
/* 66A2CC 8021854C E660014C */  swc1      $f0, 0x14c($s3)
/* 66A2D0 80218550 C6220010 */  lwc1      $f2, 0x10($s1)
/* 66A2D4 80218554 C6600148 */  lwc1      $f0, 0x148($s3)
/* 66A2D8 80218558 4602003C */  c.lt.s    $f0, $f2
/* 66A2DC 8021855C 00000000 */  nop
/* 66A2E0 80218560 45000007 */  bc1f      .L80218580
/* 66A2E4 80218564 4600B306 */   mov.s    $f12, $f22
/* 66A2E8 80218568 86220064 */  lh        $v0, 0x64($s1)
/* 66A2EC 8021856C 28420003 */  slti      $v0, $v0, 3
/* 66A2F0 80218570 54400002 */  bnel      $v0, $zero, .L8021857C
/* 66A2F4 80218574 E6620148 */   swc1     $f2, 0x148($s3)
/* 66A2F8 80218578 4600B306 */  mov.s     $f12, $f22
.L8021857C:
/* 66A2FC 8021857C C6600148 */  lwc1      $f0, 0x148($s3)
.L80218580:
/* 66A300 80218580 8E660144 */  lw        $a2, 0x144($s3)
/* 66A304 80218584 46000007 */  neg.s     $f0, $f0
/* 66A308 80218588 44070000 */  mfc1      $a3, $f0
/* 66A30C 8021858C 0C00A720 */  jal       atan2
/* 66A310 80218590 4600A387 */   neg.s    $f14, $f20
/* 66A314 80218594 46000007 */  neg.s     $f0, $f0
/* 66A318 80218598 E6600164 */  swc1      $f0, 0x164($s3)
/* 66A31C 8021859C 86220066 */  lh        $v0, 0x66($s1)
/* 66A320 802185A0 C6600148 */  lwc1      $f0, 0x148($s3)
/* 66A324 802185A4 28420003 */  slti      $v0, $v0, 3
/* 66A328 802185A8 10400013 */  beqz      $v0, .L802185F8
/* 66A32C 802185AC E620001C */   swc1     $f0, 0x1c($s1)
/* 66A330 802185B0 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A334 802185B4 3C0140C9 */  lui       $at, 0x40c9
/* 66A338 802185B8 34210FD0 */  ori       $at, $at, 0xfd0
/* 66A33C 802185BC 44810000 */  mtc1      $at, $f0
/* 66A340 802185C0 C6340044 */  lwc1      $f20, 0x44($s1)
/* 66A344 802185C4 46006302 */  mul.s     $f12, $f12, $f0
/* 66A348 802185C8 00000000 */  nop
/* 66A34C 802185CC C636003C */  lwc1      $f22, 0x3c($s1)
/* 66A350 802185D0 4600A521 */  cvt.d.s   $f20, $f20
/* 66A354 802185D4 3C0143B4 */  lui       $at, 0x43b4
/* 66A358 802185D8 44810000 */  mtc1      $at, $f0
/* 66A35C 802185DC 4600B5A1 */  cvt.d.s   $f22, $f22
/* 66A360 802185E0 0C00A85B */  jal       sin_rad
/* 66A364 802185E4 46006303 */   div.s    $f12, $f12, $f0
/* 66A368 802185E8 3C018023 */  lui       $at, %hi(D_802329F8_684778)
/* 66A36C 802185EC D42229F8 */  ldc1      $f2, %lo(D_802329F8_684778)($at)
/* 66A370 802185F0 0808618F */  j         .L8021863C
/* 66A374 802185F4 46000021 */   cvt.d.s  $f0, $f0
.L802185F8:
/* 66A378 802185F8 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A37C 802185FC 3C0140C9 */  lui       $at, 0x40c9
/* 66A380 80218600 34210FD0 */  ori       $at, $at, 0xfd0
/* 66A384 80218604 44810000 */  mtc1      $at, $f0
/* 66A388 80218608 C6340044 */  lwc1      $f20, 0x44($s1)
/* 66A38C 8021860C 46006302 */  mul.s     $f12, $f12, $f0
/* 66A390 80218610 00000000 */  nop
/* 66A394 80218614 C636003C */  lwc1      $f22, 0x3c($s1)
/* 66A398 80218618 4600A521 */  cvt.d.s   $f20, $f20
/* 66A39C 8021861C 3C0143B4 */  lui       $at, 0x43b4
/* 66A3A0 80218620 44810000 */  mtc1      $at, $f0
/* 66A3A4 80218624 4600B5A1 */  cvt.d.s   $f22, $f22
/* 66A3A8 80218628 0C00A85B */  jal       sin_rad
/* 66A3AC 8021862C 46006303 */   div.s    $f12, $f12, $f0
/* 66A3B0 80218630 3C018023 */  lui       $at, %hi(D_80232A00_684780)
/* 66A3B4 80218634 D4222A00 */  ldc1      $f2, %lo(D_80232A00_684780)($at)
/* 66A3B8 80218638 46000021 */  cvt.d.s   $f0, $f0
.L8021863C:
/* 66A3BC 8021863C 46220002 */  mul.d     $f0, $f0, $f2
/* 66A3C0 80218640 00000000 */  nop
/* 66A3C4 80218644 46360002 */  mul.d     $f0, $f0, $f22
/* 66A3C8 80218648 00000000 */  nop
/* 66A3CC 8021864C 46360000 */  add.d     $f0, $f0, $f22
/* 66A3D0 80218650 4620A500 */  add.d     $f20, $f20, $f0
/* 66A3D4 80218654 4620A520 */  cvt.s.d   $f20, $f20
/* 66A3D8 80218658 E6340044 */  swc1      $f20, 0x44($s1)
/* 66A3DC 8021865C C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A3E0 80218660 C6200028 */  lwc1      $f0, 0x28($s1)
/* 66A3E4 80218664 46006300 */  add.s     $f12, $f12, $f0
/* 66A3E8 80218668 0C00A6C9 */  jal       clamp_angle
/* 66A3EC 8021866C E62C0024 */   swc1     $f12, 0x24($s1)
/* 66A3F0 80218670 96220064 */  lhu       $v0, 0x64($s1)
/* 66A3F4 80218674 E6200024 */  swc1      $f0, 0x24($s1)
/* 66A3F8 80218678 2442FFFF */  addiu     $v0, $v0, -1
/* 66A3FC 8021867C A6220064 */  sh        $v0, 0x64($s1)
/* 66A400 80218680 00021400 */  sll       $v0, $v0, 0x10
/* 66A404 80218684 14400076 */  bnez      $v0, .L80218860
/* 66A408 80218688 0000102D */   daddu    $v0, $zero, $zero
/* 66A40C 8021868C C6200010 */  lwc1      $f0, 0x10($s1)
/* 66A410 80218690 2404FF81 */  addiu     $a0, $zero, -0x7f
/* 66A414 80218694 E6600148 */  swc1      $f0, 0x148($s3)
/* 66A418 80218698 C6200018 */  lwc1      $f0, 0x18($s1)
/* 66A41C 8021869C C622001C */  lwc1      $f2, 0x1c($s1)
/* 66A420 802186A0 8E260060 */  lw        $a2, 0x60($s1)
/* 66A424 802186A4 46020001 */  sub.s     $f0, $f0, $f2
/* 66A428 802186A8 3C013FE6 */  lui       $at, 0x3fe6
/* 66A42C 802186AC 34216666 */  ori       $at, $at, 0x6666
/* 66A430 802186B0 44811000 */  mtc1      $at, $f2
/* 66A434 802186B4 24050001 */  addiu     $a1, $zero, 1
/* 66A438 802186B8 E622003C */  swc1      $f2, 0x3c($s1)
/* 66A43C 802186BC 46000007 */  neg.s     $f0, $f0
/* 66A440 802186C0 0C098F3F */  jal       set_animation
/* 66A444 802186C4 E6200044 */   swc1     $f0, 0x44($s1)
/* 66A448 802186C8 08086218 */  j         .L80218860
/* 66A44C 802186CC 24020001 */   addiu    $v0, $zero, 1
.L802186D0:
/* 66A450 802186D0 A6220064 */  sh        $v0, 0x64($s1)
/* 66A454 802186D4 86220064 */  lh        $v0, 0x64($s1)
/* 66A458 802186D8 24030168 */  addiu     $v1, $zero, 0x168
/* 66A45C 802186DC 14400002 */  bnez      $v0, .L802186E8
/* 66A460 802186E0 0062001A */   div      $zero, $v1, $v0
/* 66A464 802186E4 0007000D */  break     7
.L802186E8:
/* 66A468 802186E8 2401FFFF */   addiu    $at, $zero, -1
/* 66A46C 802186EC 14410004 */  bne       $v0, $at, .L80218700
/* 66A470 802186F0 3C018000 */   lui      $at, 0x8000
/* 66A474 802186F4 14610002 */  bne       $v1, $at, .L80218700
/* 66A478 802186F8 00000000 */   nop
/* 66A47C 802186FC 0006000D */  break     6
.L80218700:
/* 66A480 80218700 00001812 */   mflo     $v1
/* 66A484 80218704 C6220018 */  lwc1      $f2, 0x18($s1)
/* 66A488 80218708 C620001C */  lwc1      $f0, 0x1c($s1)
/* 66A48C 8021870C 3C013FE6 */  lui       $at, 0x3fe6
/* 66A490 80218710 34216666 */  ori       $at, $at, 0x6666
/* 66A494 80218714 44814000 */  mtc1      $at, $f8
/* 66A498 80218718 C624001C */  lwc1      $f4, 0x1c($s1)
/* 66A49C 8021871C 46001081 */  sub.s     $f2, $f2, $f0
/* 66A4A0 80218720 C6200018 */  lwc1      $f0, 0x18($s1)
/* 66A4A4 80218724 3C0142B4 */  lui       $at, 0x42b4
/* 66A4A8 80218728 44813000 */  mtc1      $at, $f6
/* 66A4AC 8021872C 46040001 */  sub.s     $f0, $f0, $f4
/* 66A4B0 80218730 E628003C */  swc1      $f8, 0x3c($s1)
/* 66A4B4 80218734 E6260024 */  swc1      $f6, 0x24($s1)
/* 66A4B8 80218738 46001087 */  neg.s     $f2, $f2
/* 66A4BC 8021873C E6220044 */  swc1      $f2, 0x44($s1)
/* 66A4C0 80218740 3C018023 */  lui       $at, %hi(D_80232A08_684788)
/* 66A4C4 80218744 D4222A08 */  ldc1      $f2, %lo(D_80232A08_684788)($at)
/* 66A4C8 80218748 46000005 */  abs.s     $f0, $f0
/* 66A4CC 8021874C 46000021 */  cvt.d.s   $f0, $f0
/* 66A4D0 80218750 46220003 */  div.d     $f0, $f0, $f2
/* 66A4D4 80218754 46200020 */  cvt.s.d   $f0, $f0
/* 66A4D8 80218758 E6200050 */  swc1      $f0, 0x50($s1)
/* 66A4DC 8021875C 44830000 */  mtc1      $v1, $f0
/* 66A4E0 80218760 00000000 */  nop
/* 66A4E4 80218764 46800020 */  cvt.s.w   $f0, $f0
/* 66A4E8 80218768 E6200028 */  swc1      $f0, 0x28($s1)
/* 66A4EC 8021876C C6600144 */  lwc1      $f0, 0x144($s3)
/* 66A4F0 80218770 E6200000 */  swc1      $f0, ($s1)
/* 66A4F4 80218774 C6600148 */  lwc1      $f0, 0x148($s3)
/* 66A4F8 80218778 E6200004 */  swc1      $f0, 4($s1)
/* 66A4FC 8021877C C660014C */  lwc1      $f0, 0x14c($s3)
/* 66A500 80218780 24020003 */  addiu     $v0, $zero, 3
/* 66A504 80218784 E6200008 */  swc1      $f0, 8($s1)
/* 66A508 80218788 AE820070 */  sw        $v0, 0x70($s4)
.L8021878C:
/* 66A50C 8021878C C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A510 80218790 3C0140C9 */  lui       $at, 0x40c9
/* 66A514 80218794 34210FD0 */  ori       $at, $at, 0xfd0
/* 66A518 80218798 4481B000 */  mtc1      $at, $f22
/* 66A51C 8021879C 00000000 */  nop
/* 66A520 802187A0 46166302 */  mul.s     $f12, $f12, $f22
/* 66A524 802187A4 00000000 */  nop
/* 66A528 802187A8 C6340000 */  lwc1      $f20, ($s1)
/* 66A52C 802187AC 3C0143B4 */  lui       $at, 0x43b4
/* 66A530 802187B0 4481C000 */  mtc1      $at, $f24
/* 66A534 802187B4 4600A521 */  cvt.d.s   $f20, $f20
/* 66A538 802187B8 0C00A85B */  jal       sin_rad
/* 66A53C 802187BC 46186303 */   div.s    $f12, $f12, $f24
/* 66A540 802187C0 C6220050 */  lwc1      $f2, 0x50($s1)
/* 66A544 802187C4 46001082 */  mul.s     $f2, $f2, $f0
/* 66A548 802187C8 00000000 */  nop
/* 66A54C 802187CC C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A550 802187D0 46166302 */  mul.s     $f12, $f12, $f22
/* 66A554 802187D4 00000000 */  nop
/* 66A558 802187D8 3C018023 */  lui       $at, %hi(D_80232A10_684790)
/* 66A55C 802187DC D4202A10 */  ldc1      $f0, %lo(D_80232A10_684790)($at)
/* 66A560 802187E0 460010A1 */  cvt.d.s   $f2, $f2
/* 66A564 802187E4 46201083 */  div.d     $f2, $f2, $f0
/* 66A568 802187E8 4622A500 */  add.d     $f20, $f20, $f2
/* 66A56C 802187EC 46186303 */  div.s     $f12, $f12, $f24
/* 66A570 802187F0 4620A520 */  cvt.s.d   $f20, $f20
/* 66A574 802187F4 0C00A85B */  jal       sin_rad
/* 66A578 802187F8 E6340000 */   swc1     $f20, ($s1)
/* 66A57C 802187FC C6220050 */  lwc1      $f2, 0x50($s1)
/* 66A580 80218800 46001082 */  mul.s     $f2, $f2, $f0
/* 66A584 80218804 00000000 */  nop
/* 66A588 80218808 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 66A58C 8021880C C6200028 */  lwc1      $f0, 0x28($s1)
/* 66A590 80218810 46006300 */  add.s     $f12, $f12, $f0
/* 66A594 80218814 C6200004 */  lwc1      $f0, 4($s1)
/* 66A598 80218818 46020001 */  sub.s     $f0, $f0, $f2
/* 66A59C 8021881C E62C0024 */  swc1      $f12, 0x24($s1)
/* 66A5A0 80218820 0C00A6C9 */  jal       clamp_angle
/* 66A5A4 80218824 E6200004 */   swc1     $f0, 4($s1)
/* 66A5A8 80218828 C6220000 */  lwc1      $f2, ($s1)
/* 66A5AC 8021882C E6200024 */  swc1      $f0, 0x24($s1)
/* 66A5B0 80218830 E6620144 */  swc1      $f2, 0x144($s3)
/* 66A5B4 80218834 C6200004 */  lwc1      $f0, 4($s1)
/* 66A5B8 80218838 E6600148 */  swc1      $f0, 0x148($s3)
/* 66A5BC 8021883C C6200008 */  lwc1      $f0, 8($s1)
/* 66A5C0 80218840 E660014C */  swc1      $f0, 0x14c($s3)
/* 66A5C4 80218844 96230064 */  lhu       $v1, 0x64($s1)
/* 66A5C8 80218848 2463FFFF */  addiu     $v1, $v1, -1
/* 66A5CC 8021884C A6230064 */  sh        $v1, 0x64($s1)
/* 66A5D0 80218850 00031C00 */  sll       $v1, $v1, 0x10
/* 66A5D4 80218854 10600002 */  beqz      $v1, .L80218860
/* 66A5D8 80218858 24020001 */   addiu    $v0, $zero, 1
/* 66A5DC 8021885C 0000102D */  daddu     $v0, $zero, $zero
.L80218860:
/* 66A5E0 80218860 8FBF0024 */  lw        $ra, 0x24($sp)
/* 66A5E4 80218864 8FB40020 */  lw        $s4, 0x20($sp)
/* 66A5E8 80218868 8FB3001C */  lw        $s3, 0x1c($sp)
/* 66A5EC 8021886C 8FB20018 */  lw        $s2, 0x18($sp)
/* 66A5F0 80218870 8FB10014 */  lw        $s1, 0x14($sp)
/* 66A5F4 80218874 8FB00010 */  lw        $s0, 0x10($sp)
/* 66A5F8 80218878 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 66A5FC 8021887C D7B80038 */  ldc1      $f24, 0x38($sp)
/* 66A600 80218880 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 66A604 80218884 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 66A608 80218888 03E00008 */  jr        $ra
/* 66A60C 8021888C 27BD0048 */   addiu    $sp, $sp, 0x48
