.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243644_96C804
/* 96C804 80243644 3C058011 */  lui       $a1, %hi(gPlayerData)
/* 96C808 80243648 24A5F290 */  addiu     $a1, $a1, %lo(gPlayerData)
/* 96C80C 8024364C AC800088 */  sw        $zero, 0x88($a0)
/* 96C810 80243650 80A30003 */  lb        $v1, 3($a1)
/* 96C814 80243654 80A20002 */  lb        $v0, 2($a1)
/* 96C818 80243658 1462000B */  bne       $v1, $v0, .L80243688
/* 96C81C 8024365C 00A0302D */   daddu    $a2, $a1, $zero
/* 96C820 80243660 80A30006 */  lb        $v1, 6($a1)
/* 96C824 80243664 80A20005 */  lb        $v0, 5($a1)
/* 96C828 80243668 14620007 */  bne       $v1, $v0, .L80243688
/* 96C82C 8024366C 00000000 */   nop      
/* 96C830 80243670 80C2028E */  lb        $v0, 0x28e($a2)
/* 96C834 80243674 84C30290 */  lh        $v1, 0x290($a2)
/* 96C838 80243678 00021200 */  sll       $v0, $v0, 8
/* 96C83C 8024367C 14620004 */  bne       $v1, $v0, .L80243690
/* 96C840 80243680 24020001 */   addiu    $v0, $zero, 1
/* 96C844 80243684 AC820088 */  sw        $v0, 0x88($a0)
.L80243688:
/* 96C848 80243688 03E00008 */  jr        $ra
/* 96C84C 8024368C 24020002 */   addiu    $v0, $zero, 2
.L80243690:
/* 96C850 80243690 03E00008 */  jr        $ra
/* 96C854 80243694 24020002 */   addiu    $v0, $zero, 2
