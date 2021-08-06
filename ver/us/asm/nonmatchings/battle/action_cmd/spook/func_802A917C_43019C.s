.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A917C_43019C
/* 43019C 802A917C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 4301A0 802A9180 AFB3001C */  sw        $s3, 0x1c($sp)
/* 4301A4 802A9184 0080982D */  daddu     $s3, $a0, $zero
/* 4301A8 802A9188 AFB10014 */  sw        $s1, 0x14($sp)
/* 4301AC 802A918C 3C11802A */  lui       $s1, %hi(gActionCommandStatus)
/* 4301B0 802A9190 2631FBE0 */  addiu     $s1, $s1, %lo(gActionCommandStatus)
/* 4301B4 802A9194 AFB20018 */  sw        $s2, 0x18($sp)
/* 4301B8 802A9198 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 4301BC 802A919C 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 4301C0 802A91A0 AFBF0020 */  sw        $ra, 0x20($sp)
/* 4301C4 802A91A4 AFB00010 */  sw        $s0, 0x10($sp)
/* 4301C8 802A91A8 82420083 */  lb        $v0, 0x83($s2)
/* 4301CC 802A91AC 8E70000C */  lw        $s0, 0xc($s3)
/* 4301D0 802A91B0 10400030 */  beqz      $v0, .L802A9274
/* 4301D4 802A91B4 0240182D */   daddu    $v1, $s2, $zero
/* 4301D8 802A91B8 0C09A216 */  jal       func_80268858
/* 4301DC 802A91BC 00000000 */   nop
/* 4301E0 802A91C0 8E050000 */  lw        $a1, ($s0)
/* 4301E4 802A91C4 26100004 */  addiu     $s0, $s0, 4
/* 4301E8 802A91C8 0C0B1EAF */  jal       get_variable
/* 4301EC 802A91CC 0260202D */   daddu    $a0, $s3, $zero
/* 4301F0 802A91D0 A622004E */  sh        $v0, 0x4e($s1)
/* 4301F4 802A91D4 8E050000 */  lw        $a1, ($s0)
/* 4301F8 802A91D8 26100004 */  addiu     $s0, $s0, 4
/* 4301FC 802A91DC 0C0B1EAF */  jal       get_variable
/* 430200 802A91E0 0260202D */   daddu    $a0, $s3, $zero
/* 430204 802A91E4 A6220052 */  sh        $v0, 0x52($s1)
/* 430208 802A91E8 8E050000 */  lw        $a1, ($s0)
/* 43020C 802A91EC 26100004 */  addiu     $s0, $s0, 4
/* 430210 802A91F0 0C0B1EAF */  jal       get_variable
/* 430214 802A91F4 0260202D */   daddu    $a0, $s3, $zero
/* 430218 802A91F8 00022400 */  sll       $a0, $v0, 0x10
/* 43021C 802A91FC 00042403 */  sra       $a0, $a0, 0x10
/* 430220 802A9200 0C09A089 */  jal       func_80268224
/* 430224 802A9204 A6220050 */   sh       $v0, 0x50($s1)
/* 430228 802A9208 A6220050 */  sh        $v0, 0x50($s1)
/* 43022C 802A920C 8E050000 */  lw        $a1, ($s0)
/* 430230 802A9210 0C0B1EAF */  jal       get_variable
/* 430234 802A9214 0260202D */   daddu    $a0, $s3, $zero
/* 430238 802A9218 3C05FFFF */  lui       $a1, 0xffff
/* 43023C 802A921C 34A57FFF */  ori       $a1, $a1, 0x7fff
/* 430240 802A9220 A6220064 */  sh        $v0, 0x64($s1)
/* 430244 802A9224 A2200060 */  sb        $zero, 0x60($s1)
/* 430248 802A9228 A6200044 */  sh        $zero, 0x44($s1)
/* 43024C 802A922C A6200048 */  sh        $zero, 0x48($s1)
/* 430250 802A9230 A2400081 */  sb        $zero, 0x81($s2)
/* 430254 802A9234 82220080 */  lb        $v0, 0x80($s1)
/* 430258 802A9238 2403007F */  addiu     $v1, $zero, 0x7f
/* 43025C 802A923C A2430086 */  sb        $v1, 0x86($s2)
/* 430260 802A9240 8E430000 */  lw        $v1, ($s2)
/* 430264 802A9244 2442FFFF */  addiu     $v0, $v0, -1
/* 430268 802A9248 00021040 */  sll       $v0, $v0, 1
/* 43026C 802A924C 00511021 */  addu      $v0, $v0, $s1
/* 430270 802A9250 00651824 */  and       $v1, $v1, $a1
/* 430274 802A9254 90440075 */  lbu       $a0, 0x75($v0)
/* 430278 802A9258 2402000A */  addiu     $v0, $zero, 0xa
/* 43027C 802A925C AE430000 */  sw        $v1, ($s2)
/* 430280 802A9260 A622004C */  sh        $v0, 0x4c($s1)
/* 430284 802A9264 0C09A446 */  jal       func_80269118
/* 430288 802A9268 A2440082 */   sb       $a0, 0x82($s2)
/* 43028C 802A926C 080AA49F */  j         .L802A927C
/* 430290 802A9270 24020002 */   addiu    $v0, $zero, 2
.L802A9274:
/* 430294 802A9274 A0600081 */  sb        $zero, 0x81($v1)
/* 430298 802A9278 24020002 */  addiu     $v0, $zero, 2
.L802A927C:
/* 43029C 802A927C 8FBF0020 */  lw        $ra, 0x20($sp)
/* 4302A0 802A9280 8FB3001C */  lw        $s3, 0x1c($sp)
/* 4302A4 802A9284 8FB20018 */  lw        $s2, 0x18($sp)
/* 4302A8 802A9288 8FB10014 */  lw        $s1, 0x14($sp)
/* 4302AC 802A928C 8FB00010 */  lw        $s0, 0x10($sp)
/* 4302B0 802A9290 03E00008 */  jr        $ra
/* 4302B4 802A9294 27BD0028 */   addiu    $sp, $sp, 0x28
