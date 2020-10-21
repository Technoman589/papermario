.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024057C_DA57BC
/* DA57BC 8024057C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* DA57C0 80240580 AFB00010 */  sw        $s0, 0x10($sp)
/* DA57C4 80240584 0080802D */  daddu     $s0, $a0, $zero
/* DA57C8 80240588 AFBF0014 */  sw        $ra, 0x14($sp)
/* DA57CC 8024058C 8E0300A8 */  lw        $v1, 0xa8($s0)
/* DA57D0 80240590 8E020088 */  lw        $v0, 0x88($s0)
/* DA57D4 80240594 00621821 */  addu      $v1, $v1, $v0
/* DA57D8 80240598 04610004 */  bgez      $v1, .L802405AC
/* DA57DC 8024059C AE0300A8 */   sw       $v1, 0xa8($s0)
/* DA57E0 802405A0 3C020002 */  lui       $v0, 2
/* DA57E4 802405A4 0809016F */  j         .L802405BC
/* DA57E8 802405A8 00621021 */   addu     $v0, $v1, $v0
.L802405AC:
/* DA57EC 802405AC 3C040002 */  lui       $a0, 2
/* DA57F0 802405B0 0083102A */  slt       $v0, $a0, $v1
/* DA57F4 802405B4 10400002 */  beqz      $v0, .L802405C0
/* DA57F8 802405B8 00641023 */   subu     $v0, $v1, $a0
.L802405BC:
/* DA57FC 802405BC AE0200A8 */  sw        $v0, 0xa8($s0)
.L802405C0:
/* DA5800 802405C0 8E0300AC */  lw        $v1, 0xac($s0)
/* DA5804 802405C4 8E02008C */  lw        $v0, 0x8c($s0)
/* DA5808 802405C8 00621821 */  addu      $v1, $v1, $v0
/* DA580C 802405CC 04610004 */  bgez      $v1, .L802405E0
/* DA5810 802405D0 AE0300AC */   sw       $v1, 0xac($s0)
/* DA5814 802405D4 3C020002 */  lui       $v0, 2
/* DA5818 802405D8 0809017C */  j         .L802405F0
/* DA581C 802405DC 00621021 */   addu     $v0, $v1, $v0
.L802405E0:
/* DA5820 802405E0 3C040002 */  lui       $a0, 2
/* DA5824 802405E4 0083102A */  slt       $v0, $a0, $v1
/* DA5828 802405E8 10400002 */  beqz      $v0, .L802405F4
/* DA582C 802405EC 00641023 */   subu     $v0, $v1, $a0
.L802405F0:
/* DA5830 802405F0 AE0200AC */  sw        $v0, 0xac($s0)
.L802405F4:
/* DA5834 802405F4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* DA5838 802405F8 8E020090 */  lw        $v0, 0x90($s0)
/* DA583C 802405FC 00621821 */  addu      $v1, $v1, $v0
/* DA5840 80240600 04610004 */  bgez      $v1, .L80240614
/* DA5844 80240604 AE0300B0 */   sw       $v1, 0xb0($s0)
/* DA5848 80240608 3C020002 */  lui       $v0, 2
/* DA584C 8024060C 08090189 */  j         .L80240624
/* DA5850 80240610 00621021 */   addu     $v0, $v1, $v0
.L80240614:
/* DA5854 80240614 3C040002 */  lui       $a0, 2
/* DA5858 80240618 0083102A */  slt       $v0, $a0, $v1
/* DA585C 8024061C 10400002 */  beqz      $v0, .L80240628
/* DA5860 80240620 00641023 */   subu     $v0, $v1, $a0
.L80240624:
/* DA5864 80240624 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240628:
/* DA5868 80240628 8E0300B4 */  lw        $v1, 0xb4($s0)
/* DA586C 8024062C 8E020094 */  lw        $v0, 0x94($s0)
/* DA5870 80240630 00621821 */  addu      $v1, $v1, $v0
/* DA5874 80240634 04610004 */  bgez      $v1, .L80240648
/* DA5878 80240638 AE0300B4 */   sw       $v1, 0xb4($s0)
/* DA587C 8024063C 3C020002 */  lui       $v0, 2
/* DA5880 80240640 08090196 */  j         .L80240658
/* DA5884 80240644 00621021 */   addu     $v0, $v1, $v0
.L80240648:
/* DA5888 80240648 3C040002 */  lui       $a0, 2
/* DA588C 8024064C 0083102A */  slt       $v0, $a0, $v1
/* DA5890 80240650 10400002 */  beqz      $v0, .L8024065C
/* DA5894 80240654 00641023 */   subu     $v0, $v1, $a0
.L80240658:
/* DA5898 80240658 AE0200B4 */  sw        $v0, 0xb4($s0)
.L8024065C:
/* DA589C 8024065C 8E040084 */  lw        $a0, 0x84($s0)
/* DA58A0 80240660 0C046F07 */  jal       set_main_pan_u
/* DA58A4 80240664 8E0500A8 */   lw       $a1, 0xa8($s0)
/* DA58A8 80240668 8E040084 */  lw        $a0, 0x84($s0)
/* DA58AC 8024066C 0C046F0D */  jal       set_main_pan_v
/* DA58B0 80240670 8E0500AC */   lw       $a1, 0xac($s0)
/* DA58B4 80240674 8E040084 */  lw        $a0, 0x84($s0)
/* DA58B8 80240678 0C046F13 */  jal       set_aux_pan_u
/* DA58BC 8024067C 8E0500B0 */   lw       $a1, 0xb0($s0)
/* DA58C0 80240680 8E040084 */  lw        $a0, 0x84($s0)
/* DA58C4 80240684 0C046F19 */  jal       set_aux_pan_v
/* DA58C8 80240688 8E0500B4 */   lw       $a1, 0xb4($s0)
/* DA58CC 8024068C 8FBF0014 */  lw        $ra, 0x14($sp)
/* DA58D0 80240690 8FB00010 */  lw        $s0, 0x10($sp)
/* DA58D4 80240694 0000102D */  daddu     $v0, $zero, $zero
/* DA58D8 80240698 03E00008 */  jr        $ra
/* DA58DC 8024069C 27BD0018 */   addiu    $sp, $sp, 0x18
