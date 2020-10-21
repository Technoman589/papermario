.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401B0_948860
/* 948860 802401B0 27BDFF78 */  addiu     $sp, $sp, -0x88
/* 948864 802401B4 AFB10054 */  sw        $s1, 0x54($sp)
/* 948868 802401B8 0080882D */  daddu     $s1, $a0, $zero
/* 94886C 802401BC AFBF005C */  sw        $ra, 0x5c($sp)
/* 948870 802401C0 AFB20058 */  sw        $s2, 0x58($sp)
/* 948874 802401C4 AFB00050 */  sw        $s0, 0x50($sp)
/* 948878 802401C8 F7BC0080 */  sdc1      $f28, 0x80($sp)
/* 94887C 802401CC F7BA0078 */  sdc1      $f26, 0x78($sp)
/* 948880 802401D0 F7B80070 */  sdc1      $f24, 0x70($sp)
/* 948884 802401D4 F7B60068 */  sdc1      $f22, 0x68($sp)
/* 948888 802401D8 F7B40060 */  sdc1      $f20, 0x60($sp)
/* 94888C 802401DC 8E30000C */  lw        $s0, 0xc($s1)
/* 948890 802401E0 8E050000 */  lw        $a1, ($s0)
/* 948894 802401E4 0C0B1EAF */  jal       get_variable
/* 948898 802401E8 26100004 */   addiu    $s0, $s0, 4
/* 94889C 802401EC 0C046C04 */  jal       get_model_list_index_from_tree_index
/* 9488A0 802401F0 0040202D */   daddu    $a0, $v0, $zero
/* 9488A4 802401F4 8E050000 */  lw        $a1, ($s0)
/* 9488A8 802401F8 26100004 */  addiu     $s0, $s0, 4
/* 9488AC 802401FC 0220202D */  daddu     $a0, $s1, $zero
/* 9488B0 80240200 0C0B210B */  jal       get_float_variable
/* 9488B4 80240204 0040902D */   daddu    $s2, $v0, $zero
/* 9488B8 80240208 8E050000 */  lw        $a1, ($s0)
/* 9488BC 8024020C 26100004 */  addiu     $s0, $s0, 4
/* 9488C0 80240210 0220202D */  daddu     $a0, $s1, $zero
/* 9488C4 80240214 0C0B210B */  jal       get_float_variable
/* 9488C8 80240218 46000706 */   mov.s    $f28, $f0
/* 9488CC 8024021C 8E050000 */  lw        $a1, ($s0)
/* 9488D0 80240220 26100004 */  addiu     $s0, $s0, 4
/* 9488D4 80240224 0220202D */  daddu     $a0, $s1, $zero
/* 9488D8 80240228 0C0B210B */  jal       get_float_variable
/* 9488DC 8024022C 46000686 */   mov.s    $f26, $f0
/* 9488E0 80240230 0220202D */  daddu     $a0, $s1, $zero
/* 9488E4 80240234 8E050000 */  lw        $a1, ($s0)
/* 9488E8 80240238 0C0B210B */  jal       get_float_variable
/* 9488EC 8024023C 46000586 */   mov.s    $f22, $f0
/* 9488F0 80240240 0240202D */  daddu     $a0, $s2, $zero
/* 9488F4 80240244 0C046B4C */  jal       get_model_from_list_index
/* 9488F8 80240248 46000606 */   mov.s    $f24, $f0
/* 9488FC 8024024C 0040882D */  daddu     $s1, $v0, $zero
/* 948900 80240250 96220000 */  lhu       $v0, ($s1)
/* 948904 80240254 30420400 */  andi      $v0, $v0, 0x400
/* 948908 80240258 1440001E */  bnez      $v0, .L802402D4
/* 94890C 8024025C 26300058 */   addiu    $s0, $s1, 0x58
/* 948910 80240260 4480A000 */  mtc1      $zero, $f20
/* 948914 80240264 4406B000 */  mfc1      $a2, $f22
/* 948918 80240268 4405A000 */  mfc1      $a1, $f20
/* 94891C 8024026C 4407A000 */  mfc1      $a3, $f20
/* 948920 80240270 0C019E40 */  jal       guTranslateF
/* 948924 80240274 0200202D */   daddu    $a0, $s0, $zero
/* 948928 80240278 4405E000 */  mfc1      $a1, $f28
/* 94892C 8024027C 4406D000 */  mfc1      $a2, $f26
/* 948930 80240280 4407C000 */  mfc1      $a3, $f24
/* 948934 80240284 0C090050 */  jal       func_80240140_9487F0
/* 948938 80240288 27A40010 */   addiu    $a0, $sp, 0x10
/* 94893C 8024028C 27A40010 */  addiu     $a0, $sp, 0x10
/* 948940 80240290 0200282D */  daddu     $a1, $s0, $zero
/* 948944 80240294 0C019D80 */  jal       guMtxCatF
/* 948948 80240298 0200302D */   daddu    $a2, $s0, $zero
/* 94894C 8024029C 27A40010 */  addiu     $a0, $sp, 0x10
/* 948950 802402A0 4600B587 */  neg.s     $f22, $f22
/* 948954 802402A4 4405A000 */  mfc1      $a1, $f20
/* 948958 802402A8 4406B000 */  mfc1      $a2, $f22
/* 94895C 802402AC 0C019E40 */  jal       guTranslateF
/* 948960 802402B0 00A0382D */   daddu    $a3, $a1, $zero
/* 948964 802402B4 27A40010 */  addiu     $a0, $sp, 0x10
/* 948968 802402B8 0200282D */  daddu     $a1, $s0, $zero
/* 94896C 802402BC 0C019D80 */  jal       guMtxCatF
/* 948970 802402C0 00A0302D */   daddu    $a2, $a1, $zero
/* 948974 802402C4 96220000 */  lhu       $v0, ($s1)
/* 948978 802402C8 34421400 */  ori       $v0, $v0, 0x1400
/* 94897C 802402CC 080900D3 */  j         .L8024034C
/* 948980 802402D0 A6220000 */   sh       $v0, ($s1)
.L802402D4:
/* 948984 802402D4 4480A000 */  mtc1      $zero, $f20
/* 948988 802402D8 4406B000 */  mfc1      $a2, $f22
/* 94898C 802402DC 4405A000 */  mfc1      $a1, $f20
/* 948990 802402E0 4407A000 */  mfc1      $a3, $f20
/* 948994 802402E4 0C019E40 */  jal       guTranslateF
/* 948998 802402E8 27A40010 */   addiu    $a0, $sp, 0x10
/* 94899C 802402EC 27A40010 */  addiu     $a0, $sp, 0x10
/* 9489A0 802402F0 26300058 */  addiu     $s0, $s1, 0x58
/* 9489A4 802402F4 0200282D */  daddu     $a1, $s0, $zero
/* 9489A8 802402F8 0C019D80 */  jal       guMtxCatF
/* 9489AC 802402FC 0200302D */   daddu    $a2, $s0, $zero
/* 9489B0 80240300 4405E000 */  mfc1      $a1, $f28
/* 9489B4 80240304 4406D000 */  mfc1      $a2, $f26
/* 9489B8 80240308 4407C000 */  mfc1      $a3, $f24
/* 9489BC 8024030C 0C090050 */  jal       func_80240140_9487F0
/* 9489C0 80240310 27A40010 */   addiu    $a0, $sp, 0x10
/* 9489C4 80240314 27A40010 */  addiu     $a0, $sp, 0x10
/* 9489C8 80240318 0200282D */  daddu     $a1, $s0, $zero
/* 9489CC 8024031C 0C019D80 */  jal       guMtxCatF
/* 9489D0 80240320 0200302D */   daddu    $a2, $s0, $zero
/* 9489D4 80240324 27A40010 */  addiu     $a0, $sp, 0x10
/* 9489D8 80240328 4600B587 */  neg.s     $f22, $f22
/* 9489DC 8024032C 4405A000 */  mfc1      $a1, $f20
/* 9489E0 80240330 4406B000 */  mfc1      $a2, $f22
/* 9489E4 80240334 0C019E40 */  jal       guTranslateF
/* 9489E8 80240338 00A0382D */   daddu    $a3, $a1, $zero
/* 9489EC 8024033C 27A40010 */  addiu     $a0, $sp, 0x10
/* 9489F0 80240340 0200282D */  daddu     $a1, $s0, $zero
/* 9489F4 80240344 0C019D80 */  jal       guMtxCatF
/* 9489F8 80240348 00A0302D */   daddu    $a2, $a1, $zero
.L8024034C:
/* 9489FC 8024034C 8FBF005C */  lw        $ra, 0x5c($sp)
/* 948A00 80240350 8FB20058 */  lw        $s2, 0x58($sp)
/* 948A04 80240354 8FB10054 */  lw        $s1, 0x54($sp)
/* 948A08 80240358 8FB00050 */  lw        $s0, 0x50($sp)
/* 948A0C 8024035C D7BC0080 */  ldc1      $f28, 0x80($sp)
/* 948A10 80240360 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* 948A14 80240364 D7B80070 */  ldc1      $f24, 0x70($sp)
/* 948A18 80240368 D7B60068 */  ldc1      $f22, 0x68($sp)
/* 948A1C 8024036C D7B40060 */  ldc1      $f20, 0x60($sp)
/* 948A20 80240370 24020002 */  addiu     $v0, $zero, 2
/* 948A24 80240374 03E00008 */  jr        $ra
/* 948A28 80240378 27BD0088 */   addiu    $sp, $sp, 0x88
/* 948A2C 8024037C 00000000 */  nop       
