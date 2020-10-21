.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404F4_A47454
/* A47454 802404F4 27BDFF90 */  addiu     $sp, $sp, -0x70
/* A47458 802404F8 AFB3005C */  sw        $s3, 0x5c($sp)
/* A4745C 802404FC 0080982D */  daddu     $s3, $a0, $zero
/* A47460 80240500 AFBF0068 */  sw        $ra, 0x68($sp)
/* A47464 80240504 AFB50064 */  sw        $s5, 0x64($sp)
/* A47468 80240508 AFB40060 */  sw        $s4, 0x60($sp)
/* A4746C 8024050C AFB20058 */  sw        $s2, 0x58($sp)
/* A47470 80240510 AFB10054 */  sw        $s1, 0x54($sp)
/* A47474 80240514 AFB00050 */  sw        $s0, 0x50($sp)
/* A47478 80240518 8E710148 */  lw        $s1, 0x148($s3)
/* A4747C 8024051C 86240008 */  lh        $a0, 8($s1)
/* A47480 80240520 0C00EABB */  jal       get_npc_unsafe
/* A47484 80240524 00A0802D */   daddu    $s0, $a1, $zero
/* A47488 80240528 8E63000C */  lw        $v1, 0xc($s3)
/* A4748C 8024052C 0260202D */  daddu     $a0, $s3, $zero
/* A47490 80240530 8C650000 */  lw        $a1, ($v1)
/* A47494 80240534 0C0B1EAF */  jal       get_variable
/* A47498 80240538 0040902D */   daddu    $s2, $v0, $zero
/* A4749C 8024053C AFA00028 */  sw        $zero, 0x28($sp)
/* A474A0 80240540 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A474A4 80240544 8C630030 */  lw        $v1, 0x30($v1)
/* A474A8 80240548 AFA3002C */  sw        $v1, 0x2c($sp)
/* A474AC 8024054C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A474B0 80240550 8C63001C */  lw        $v1, 0x1c($v1)
/* A474B4 80240554 AFA30030 */  sw        $v1, 0x30($sp)
/* A474B8 80240558 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A474BC 8024055C 8C630024 */  lw        $v1, 0x24($v1)
/* A474C0 80240560 AFA30034 */  sw        $v1, 0x34($sp)
/* A474C4 80240564 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A474C8 80240568 8C630028 */  lw        $v1, 0x28($v1)
/* A474CC 8024056C 27B50028 */  addiu     $s5, $sp, 0x28
/* A474D0 80240570 AFA30038 */  sw        $v1, 0x38($sp)
/* A474D4 80240574 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A474D8 80240578 3C0142C8 */  lui       $at, 0x42c8
/* A474DC 8024057C 44810000 */  mtc1      $at, $f0
/* A474E0 80240580 8C63002C */  lw        $v1, 0x2c($v1)
/* A474E4 80240584 0040A02D */  daddu     $s4, $v0, $zero
/* A474E8 80240588 E7A00040 */  swc1      $f0, 0x40($sp)
/* A474EC 8024058C A7A00044 */  sh        $zero, 0x44($sp)
/* A474F0 80240590 12000009 */  beqz      $s0, .L802405B8
/* A474F4 80240594 AFA3003C */   sw       $v1, 0x3c($sp)
/* A474F8 80240598 864300A8 */  lh        $v1, 0xa8($s2)
/* A474FC 8024059C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A47500 802405A0 AE20008C */  sw        $zero, 0x8c($s1)
/* A47504 802405A4 A22000B5 */  sb        $zero, 0xb5($s1)
/* A47508 802405A8 34420008 */  ori       $v0, $v0, 8
/* A4750C 802405AC AE230084 */  sw        $v1, 0x84($s1)
/* A47510 802405B0 08090172 */  j         .L802405C8
/* A47514 802405B4 AE2200B0 */   sw       $v0, 0xb0($s1)
.L802405B8:
/* A47518 802405B8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A4751C 802405BC 30420004 */  andi      $v0, $v0, 4
/* A47520 802405C0 10400047 */  beqz      $v0, .L802406E0
/* A47524 802405C4 00000000 */   nop      
.L802405C8:
/* A47528 802405C8 AE600070 */  sw        $zero, 0x70($s3)
/* A4752C 802405CC A640008E */  sh        $zero, 0x8e($s2)
/* A47530 802405D0 8E2300CC */  lw        $v1, 0xcc($s1)
/* A47534 802405D4 2404F7FF */  addiu     $a0, $zero, -0x801
/* A47538 802405D8 A2200007 */  sb        $zero, 7($s1)
/* A4753C 802405DC 8E420000 */  lw        $v0, ($s2)
/* A47540 802405E0 8C630000 */  lw        $v1, ($v1)
/* A47544 802405E4 00441024 */  and       $v0, $v0, $a0
/* A47548 802405E8 AE420000 */  sw        $v0, ($s2)
/* A4754C 802405EC AE430028 */  sw        $v1, 0x28($s2)
/* A47550 802405F0 96220086 */  lhu       $v0, 0x86($s1)
/* A47554 802405F4 A64200A8 */  sh        $v0, 0xa8($s2)
/* A47558 802405F8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A4755C 802405FC AE200090 */  sw        $zero, 0x90($s1)
/* A47560 80240600 8C420034 */  lw        $v0, 0x34($v0)
/* A47564 80240604 14400006 */  bnez      $v0, .L80240620
/* A47568 80240608 2403FDFF */   addiu    $v1, $zero, -0x201
/* A4756C 8024060C 8E420000 */  lw        $v0, ($s2)
/* A47570 80240610 2403FFF7 */  addiu     $v1, $zero, -9
/* A47574 80240614 34420200 */  ori       $v0, $v0, 0x200
/* A47578 80240618 0809018B */  j         .L8024062C
/* A4757C 8024061C 00431024 */   and      $v0, $v0, $v1
.L80240620:
/* A47580 80240620 8E420000 */  lw        $v0, ($s2)
/* A47584 80240624 00431024 */  and       $v0, $v0, $v1
/* A47588 80240628 34420008 */  ori       $v0, $v0, 8
.L8024062C:
/* A4758C 8024062C AE420000 */  sw        $v0, ($s2)
/* A47590 80240630 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A47594 80240634 30420004 */  andi      $v0, $v0, 4
/* A47598 80240638 1040001E */  beqz      $v0, .L802406B4
/* A4759C 8024063C 24040002 */   addiu    $a0, $zero, 2
/* A475A0 80240640 0240282D */  daddu     $a1, $s2, $zero
/* A475A4 80240644 0000302D */  daddu     $a2, $zero, $zero
/* A475A8 80240648 24020063 */  addiu     $v0, $zero, 0x63
/* A475AC 8024064C AE620070 */  sw        $v0, 0x70($s3)
/* A475B0 80240650 AE600074 */  sw        $zero, 0x74($s3)
/* A475B4 80240654 864300A8 */  lh        $v1, 0xa8($s2)
/* A475B8 80240658 3C013F80 */  lui       $at, 0x3f80
/* A475BC 8024065C 44810000 */  mtc1      $at, $f0
/* A475C0 80240660 3C014000 */  lui       $at, 0x4000
/* A475C4 80240664 44811000 */  mtc1      $at, $f2
/* A475C8 80240668 3C01C1A0 */  lui       $at, 0xc1a0
/* A475CC 8024066C 44812000 */  mtc1      $at, $f4
/* A475D0 80240670 24020028 */  addiu     $v0, $zero, 0x28
/* A475D4 80240674 AFA2001C */  sw        $v0, 0x1c($sp)
/* A475D8 80240678 44833000 */  mtc1      $v1, $f6
/* A475DC 8024067C 00000000 */  nop       
/* A475E0 80240680 468031A0 */  cvt.s.w   $f6, $f6
/* A475E4 80240684 44073000 */  mfc1      $a3, $f6
/* A475E8 80240688 27A20048 */  addiu     $v0, $sp, 0x48
/* A475EC 8024068C AFA20020 */  sw        $v0, 0x20($sp)
/* A475F0 80240690 E7A00010 */  swc1      $f0, 0x10($sp)
/* A475F4 80240694 E7A20014 */  swc1      $f2, 0x14($sp)
/* A475F8 80240698 0C01BFA4 */  jal       fx_emote
/* A475FC 8024069C E7A40018 */   swc1     $f4, 0x18($sp)
/* A47600 802406A0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A47604 802406A4 2403FFFB */  addiu     $v1, $zero, -5
/* A47608 802406A8 00431024 */  and       $v0, $v0, $v1
/* A4760C 802406AC 080901B8 */  j         .L802406E0
/* A47610 802406B0 AE2200B0 */   sw       $v0, 0xb0($s1)
.L802406B4:
/* A47614 802406B4 8E220000 */  lw        $v0, ($s1)
/* A47618 802406B8 3C034000 */  lui       $v1, 0x4000
/* A4761C 802406BC 00431024 */  and       $v0, $v0, $v1
/* A47620 802406C0 10400007 */  beqz      $v0, .L802406E0
/* A47624 802406C4 3C03BFFF */   lui      $v1, 0xbfff
/* A47628 802406C8 2402000C */  addiu     $v0, $zero, 0xc
/* A4762C 802406CC AE620070 */  sw        $v0, 0x70($s3)
/* A47630 802406D0 8E220000 */  lw        $v0, ($s1)
/* A47634 802406D4 3463FFFF */  ori       $v1, $v1, 0xffff
/* A47638 802406D8 00431024 */  and       $v0, $v0, $v1
/* A4763C 802406DC AE220000 */  sw        $v0, ($s1)
.L802406E0:
/* A47640 802406E0 8E220090 */  lw        $v0, 0x90($s1)
/* A47644 802406E4 1840000C */  blez      $v0, .L80240718
/* A47648 802406E8 2442FFFF */   addiu    $v0, $v0, -1
/* A4764C 802406EC 14400087 */  bnez      $v0, .L8024090C
/* A47650 802406F0 AE220090 */   sw       $v0, 0x90($s1)
/* A47654 802406F4 3C03FFAA */  lui       $v1, 0xffaa
/* A47658 802406F8 8E420028 */  lw        $v0, 0x28($s2)
/* A4765C 802406FC 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* A47660 80240700 00431021 */  addu      $v0, $v0, $v1
/* A47664 80240704 2C420002 */  sltiu     $v0, $v0, 2
/* A47668 80240708 10400003 */  beqz      $v0, .L80240718
/* A4766C 8024070C 3C020055 */   lui      $v0, 0x55
/* A47670 80240710 3442000C */  ori       $v0, $v0, 0xc
/* A47674 80240714 AE420028 */  sw        $v0, 0x28($s2)
.L80240718:
/* A47678 80240718 8E630070 */  lw        $v1, 0x70($s3)
/* A4767C 8024071C 2402000C */  addiu     $v0, $zero, 0xc
/* A47680 80240720 10620048 */  beq       $v1, $v0, .L80240844
/* A47684 80240724 2862000D */   slti     $v0, $v1, 0xd
/* A47688 80240728 1040000F */  beqz      $v0, .L80240768
/* A4768C 8024072C 24100001 */   addiu    $s0, $zero, 1
/* A47690 80240730 1070001E */  beq       $v1, $s0, .L802407AC
/* A47694 80240734 28620002 */   slti     $v0, $v1, 2
/* A47698 80240738 10400005 */  beqz      $v0, .L80240750
/* A4769C 8024073C 24020002 */   addiu    $v0, $zero, 2
/* A476A0 80240740 10600015 */  beqz      $v1, .L80240798
/* A476A4 80240744 0260202D */   daddu    $a0, $s3, $zero
/* A476A8 80240748 08090228 */  j         .L802408A0
/* A476AC 8024074C 00000000 */   nop      
.L80240750:
/* A476B0 80240750 1062001C */  beq       $v1, $v0, .L802407C4
/* A476B4 80240754 24020003 */   addiu    $v0, $zero, 3
/* A476B8 80240758 10620035 */  beq       $v1, $v0, .L80240830
/* A476BC 8024075C 0260202D */   daddu    $a0, $s3, $zero
/* A476C0 80240760 08090228 */  j         .L802408A0
/* A476C4 80240764 00000000 */   nop      
.L80240768:
/* A476C8 80240768 2402000E */  addiu     $v0, $zero, 0xe
/* A476CC 8024076C 1062003F */  beq       $v1, $v0, .L8024086C
/* A476D0 80240770 0062102A */   slt      $v0, $v1, $v0
/* A476D4 80240774 14400038 */  bnez      $v0, .L80240858
/* A476D8 80240778 0260202D */   daddu    $a0, $s3, $zero
/* A476DC 8024077C 2402000F */  addiu     $v0, $zero, 0xf
/* A476E0 80240780 10620040 */  beq       $v1, $v0, .L80240884
/* A476E4 80240784 24020063 */   addiu    $v0, $zero, 0x63
/* A476E8 80240788 10620043 */  beq       $v1, $v0, .L80240898
/* A476EC 8024078C 00000000 */   nop      
/* A476F0 80240790 08090228 */  j         .L802408A0
/* A476F4 80240794 00000000 */   nop      
.L80240798:
/* A476F8 80240798 0280282D */  daddu     $a1, $s4, $zero
/* A476FC 8024079C 0C012568 */  jal       func_800495A0
/* A47700 802407A0 02A0302D */   daddu    $a2, $s5, $zero
/* A47704 802407A4 96220086 */  lhu       $v0, 0x86($s1)
/* A47708 802407A8 A64200A8 */  sh        $v0, 0xa8($s2)
.L802407AC:
/* A4770C 802407AC 0260202D */  daddu     $a0, $s3, $zero
/* A47710 802407B0 0280282D */  daddu     $a1, $s4, $zero
/* A47714 802407B4 0C0125AE */  jal       func_800496B8
/* A47718 802407B8 02A0302D */   daddu    $a2, $s5, $zero
/* A4771C 802407BC 08090228 */  j         .L802408A0
/* A47720 802407C0 00000000 */   nop      
.L802407C4:
/* A47724 802407C4 0260202D */  daddu     $a0, $s3, $zero
/* A47728 802407C8 0280282D */  daddu     $a1, $s4, $zero
/* A4772C 802407CC 0C0126D1 */  jal       func_80049B44
/* A47730 802407D0 02A0302D */   daddu    $a2, $s5, $zero
/* A47734 802407D4 8E230088 */  lw        $v1, 0x88($s1)
/* A47738 802407D8 24020006 */  addiu     $v0, $zero, 6
/* A4773C 802407DC 14620014 */  bne       $v1, $v0, .L80240830
/* A47740 802407E0 0260202D */   daddu    $a0, $s3, $zero
/* A47744 802407E4 0C00A67F */  jal       rand_int
/* A47748 802407E8 24040064 */   addiu    $a0, $zero, 0x64
/* A4774C 802407EC 28420021 */  slti      $v0, $v0, 0x21
/* A47750 802407F0 5040000F */  beql      $v0, $zero, .L80240830
/* A47754 802407F4 0260202D */   daddu    $a0, $s3, $zero
/* A47758 802407F8 8E22008C */  lw        $v0, 0x8c($s1)
/* A4775C 802407FC 10400005 */  beqz      $v0, .L80240814
/* A47760 80240800 3C020055 */   lui      $v0, 0x55
/* A47764 80240804 3442002F */  ori       $v0, $v0, 0x2f
/* A47768 80240808 AE20008C */  sw        $zero, 0x8c($s1)
/* A4776C 8024080C 08090208 */  j         .L80240820
/* A47770 80240810 A22000B5 */   sb       $zero, 0xb5($s1)
.L80240814:
/* A47774 80240814 3442002E */  ori       $v0, $v0, 0x2e
/* A47778 80240818 AE30008C */  sw        $s0, 0x8c($s1)
/* A4777C 8024081C A23000B5 */  sb        $s0, 0xb5($s1)
.L80240820:
/* A47780 80240820 AE420028 */  sw        $v0, 0x28($s2)
/* A47784 80240824 24020007 */  addiu     $v0, $zero, 7
/* A47788 80240828 08090243 */  j         .L8024090C
/* A4778C 8024082C AE220090 */   sw       $v0, 0x90($s1)
.L80240830:
/* A47790 80240830 0280282D */  daddu     $a1, $s4, $zero
/* A47794 80240834 0C012701 */  jal       func_80049C04
/* A47798 80240838 02A0302D */   daddu    $a2, $s5, $zero
/* A4779C 8024083C 08090228 */  j         .L802408A0
/* A477A0 80240840 00000000 */   nop      
.L80240844:
/* A477A4 80240844 0260202D */  daddu     $a0, $s3, $zero
/* A477A8 80240848 0280282D */  daddu     $a1, $s4, $zero
/* A477AC 8024084C 0C090058 */  jal       func_80240160_A470C0
/* A477B0 80240850 02A0302D */   daddu    $a2, $s5, $zero
/* A477B4 80240854 0260202D */  daddu     $a0, $s3, $zero
.L80240858:
/* A477B8 80240858 0280282D */  daddu     $a1, $s4, $zero
/* A477BC 8024085C 0C090077 */  jal       func_802401DC_A4713C
/* A477C0 80240860 02A0302D */   daddu    $a2, $s5, $zero
/* A477C4 80240864 08090228 */  j         .L802408A0
/* A477C8 80240868 00000000 */   nop      
.L8024086C:
/* A477CC 8024086C 0260202D */  daddu     $a0, $s3, $zero
/* A477D0 80240870 0280282D */  daddu     $a1, $s4, $zero
/* A477D4 80240874 0C0900C4 */  jal       func_80240310_A47270
/* A477D8 80240878 02A0302D */   daddu    $a2, $s5, $zero
/* A477DC 8024087C 08090228 */  j         .L802408A0
/* A477E0 80240880 00000000 */   nop      
.L80240884:
/* A477E4 80240884 0280282D */  daddu     $a1, $s4, $zero
/* A477E8 80240888 0C09011D */  jal       func_80240474_A473D4
/* A477EC 8024088C 02A0302D */   daddu    $a2, $s5, $zero
/* A477F0 80240890 08090228 */  j         .L802408A0
/* A477F4 80240894 00000000 */   nop      
.L80240898:
/* A477F8 80240898 0C0129CF */  jal       func_8004A73C
/* A477FC 8024089C 0260202D */   daddu    $a0, $s3, $zero
.L802408A0:
/* A47800 802408A0 8E230088 */  lw        $v1, 0x88($s1)
/* A47804 802408A4 24020006 */  addiu     $v0, $zero, 6
/* A47808 802408A8 14620019 */  bne       $v1, $v0, .L80240910
/* A4780C 802408AC 0000102D */   daddu    $v0, $zero, $zero
/* A47810 802408B0 8E22008C */  lw        $v0, 0x8c($s1)
/* A47814 802408B4 10400003 */  beqz      $v0, .L802408C4
/* A47818 802408B8 24020001 */   addiu    $v0, $zero, 1
/* A4781C 802408BC 08090232 */  j         .L802408C8
/* A47820 802408C0 A22200B5 */   sb       $v0, 0xb5($s1)
.L802408C4:
/* A47824 802408C4 A22000B5 */  sb        $zero, 0xb5($s1)
.L802408C8:
/* A47828 802408C8 8E22008C */  lw        $v0, 0x8c($s1)
/* A4782C 802408CC 1040000F */  beqz      $v0, .L8024090C
/* A47830 802408D0 3C03FFAA */   lui      $v1, 0xffaa
/* A47834 802408D4 8E420028 */  lw        $v0, 0x28($s2)
/* A47838 802408D8 3463FFFC */  ori       $v1, $v1, 0xfffc
/* A4783C 802408DC 00431821 */  addu      $v1, $v0, $v1
/* A47840 802408E0 2C620015 */  sltiu     $v0, $v1, 0x15
/* A47844 802408E4 10400009 */  beqz      $v0, .L8024090C
/* A47848 802408E8 00031080 */   sll      $v0, $v1, 2
/* A4784C 802408EC 3C018024 */  lui       $at, 0x8024
/* A47850 802408F0 00220821 */  addu      $at, $at, $v0
/* A47854 802408F4 8C221608 */  lw        $v0, 0x1608($at)
/* A47858 802408F8 00400008 */  jr        $v0
/* A4785C 802408FC 00000000 */   nop      
/* A47860 80240900 8E420028 */  lw        $v0, 0x28($s2)
/* A47864 80240904 24420001 */  addiu     $v0, $v0, 1
/* A47868 80240908 AE420028 */  sw        $v0, 0x28($s2)
.L8024090C:
/* A4786C 8024090C 0000102D */  daddu     $v0, $zero, $zero
.L80240910:
/* A47870 80240910 8FBF0068 */  lw        $ra, 0x68($sp)
/* A47874 80240914 8FB50064 */  lw        $s5, 0x64($sp)
/* A47878 80240918 8FB40060 */  lw        $s4, 0x60($sp)
/* A4787C 8024091C 8FB3005C */  lw        $s3, 0x5c($sp)
/* A47880 80240920 8FB20058 */  lw        $s2, 0x58($sp)
/* A47884 80240924 8FB10054 */  lw        $s1, 0x54($sp)
/* A47888 80240928 8FB00050 */  lw        $s0, 0x50($sp)
/* A4788C 8024092C 03E00008 */  jr        $ra
/* A47890 80240930 27BD0070 */   addiu    $sp, $sp, 0x70
