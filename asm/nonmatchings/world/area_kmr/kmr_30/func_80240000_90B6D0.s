.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_90B6D0
/* 90B6D0 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 90B6D4 80240004 AFB00010 */  sw        $s0, 0x10($sp)
/* 90B6D8 80240008 0080802D */  daddu     $s0, $a0, $zero
/* 90B6DC 8024000C AFBF0014 */  sw        $ra, 0x14($sp)
/* 90B6E0 80240010 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 90B6E4 80240014 8E020088 */  lw        $v0, 0x88($s0)
/* 90B6E8 80240018 00621821 */  addu      $v1, $v1, $v0
/* 90B6EC 8024001C 04610004 */  bgez      $v1, .L80240030
/* 90B6F0 80240020 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 90B6F4 80240024 3C020002 */  lui       $v0, 2
/* 90B6F8 80240028 08090010 */  j         .L80240040
/* 90B6FC 8024002C 00621021 */   addu     $v0, $v1, $v0
.L80240030:
/* 90B700 80240030 3C040002 */  lui       $a0, 2
/* 90B704 80240034 0083102A */  slt       $v0, $a0, $v1
/* 90B708 80240038 10400002 */  beqz      $v0, .L80240044
/* 90B70C 8024003C 00641023 */   subu     $v0, $v1, $a0
.L80240040:
/* 90B710 80240040 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240044:
/* 90B714 80240044 8E0300AC */  lw        $v1, 0xac($s0)
/* 90B718 80240048 8E02008C */  lw        $v0, 0x8c($s0)
/* 90B71C 8024004C 00621821 */  addu      $v1, $v1, $v0
/* 90B720 80240050 04610004 */  bgez      $v1, .L80240064
/* 90B724 80240054 AE0300AC */   sw       $v1, 0xac($s0)
/* 90B728 80240058 3C020002 */  lui       $v0, 2
/* 90B72C 8024005C 0809001D */  j         .L80240074
/* 90B730 80240060 00621021 */   addu     $v0, $v1, $v0
.L80240064:
/* 90B734 80240064 3C040002 */  lui       $a0, 2
/* 90B738 80240068 0083102A */  slt       $v0, $a0, $v1
/* 90B73C 8024006C 10400002 */  beqz      $v0, .L80240078
/* 90B740 80240070 00641023 */   subu     $v0, $v1, $a0
.L80240074:
/* 90B744 80240074 AE0200AC */  sw        $v0, 0xac($s0)
.L80240078:
/* 90B748 80240078 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 90B74C 8024007C 8E020090 */  lw        $v0, 0x90($s0)
/* 90B750 80240080 00621821 */  addu      $v1, $v1, $v0
/* 90B754 80240084 04610004 */  bgez      $v1, .L80240098
/* 90B758 80240088 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 90B75C 8024008C 3C020002 */  lui       $v0, 2
/* 90B760 80240090 0809002A */  j         .L802400A8
/* 90B764 80240094 00621021 */   addu     $v0, $v1, $v0
.L80240098:
/* 90B768 80240098 3C040002 */  lui       $a0, 2
/* 90B76C 8024009C 0083102A */  slt       $v0, $a0, $v1
/* 90B770 802400A0 10400002 */  beqz      $v0, .L802400AC
/* 90B774 802400A4 00641023 */   subu     $v0, $v1, $a0
.L802400A8:
/* 90B778 802400A8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802400AC:
/* 90B77C 802400AC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 90B780 802400B0 8E020094 */  lw        $v0, 0x94($s0)
/* 90B784 802400B4 00621821 */  addu      $v1, $v1, $v0
/* 90B788 802400B8 04610004 */  bgez      $v1, .L802400CC
/* 90B78C 802400BC AE0300B4 */   sw       $v1, 0xb4($s0)
/* 90B790 802400C0 3C020002 */  lui       $v0, 2
/* 90B794 802400C4 08090037 */  j         .L802400DC
/* 90B798 802400C8 00621021 */   addu     $v0, $v1, $v0
.L802400CC:
/* 90B79C 802400CC 3C040002 */  lui       $a0, 2
/* 90B7A0 802400D0 0083102A */  slt       $v0, $a0, $v1
/* 90B7A4 802400D4 10400002 */  beqz      $v0, .L802400E0
/* 90B7A8 802400D8 00641023 */   subu     $v0, $v1, $a0
.L802400DC:
/* 90B7AC 802400DC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802400E0:
/* 90B7B0 802400E0 8E040084 */  lw        $a0, 0x84($s0)
/* 90B7B4 802400E4 0C046F07 */  jal       set_main_pan_u
/* 90B7B8 802400E8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 90B7BC 802400EC 8E040084 */  lw        $a0, 0x84($s0)
/* 90B7C0 802400F0 0C046F0D */  jal       set_main_pan_v
/* 90B7C4 802400F4 8E0500AC */   lw       $a1, 0xac($s0)
/* 90B7C8 802400F8 8E040084 */  lw        $a0, 0x84($s0)
/* 90B7CC 802400FC 0C046F13 */  jal       set_aux_pan_u
/* 90B7D0 80240100 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 90B7D4 80240104 8E040084 */  lw        $a0, 0x84($s0)
/* 90B7D8 80240108 0C046F19 */  jal       set_aux_pan_v
/* 90B7DC 8024010C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 90B7E0 80240110 8FBF0014 */  lw        $ra, 0x14($sp)
/* 90B7E4 80240114 8FB00010 */  lw        $s0, 0x10($sp)
/* 90B7E8 80240118 0000102D */  daddu     $v0, $zero, $zero
/* 90B7EC 8024011C 03E00008 */  jr        $ra
/* 90B7F0 80240120 27BD0018 */   addiu    $sp, $sp, 0x18