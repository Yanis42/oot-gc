# GXMisc.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel GXSetMisc
/* 0A5550 800AAAF0 2C030002 */  cmpwi   r3, 2
/* 0A5554 800AAAF4 41820060 */  beq     lbl_800AAB54
/* 0A5558 800AAAF8 40800014 */  bge     lbl_800AAB0C
/* 0A555C 800AAAFC 2C030000 */  cmpwi   r3, 0
/* 0A5560 800AAB00 4D820020 */  beqlr   
/* 0A5564 800AAB04 40800014 */  bge     lbl_800AAB18
/* 0A5568 800AAB08 4E800020 */  blr     
lbl_800AAB0C:
/* 0A556C 800AAB0C 2C030004 */  cmpwi   r3, 4
/* 0A5570 800AAB10 4C800020 */  bgelr   
/* 0A5574 800AAB14 48000058 */  b       lbl_800AAB6C
lbl_800AAB18:
/* 0A5578 800AAB18 80A28400 */  lwz     r5, __GXData@sda21(r2)
/* 0A557C 800AAB1C 38000001 */  li      r0, 1
/* 0A5580 800AAB20 B0850004 */  sth     r4, 4(r5)
/* 0A5584 800AAB24 A0650004 */  lhz     r3, 4(r5)
/* 0A5588 800AAB28 7C630034 */  cntlzw  r3, r3
/* 0A558C 800AAB2C 5463DC3E */  rlwinm  r3, r3, 0x1b, 0x10, 0x1f
/* 0A5590 800AAB30 B0650000 */  sth     r3, 0(r5)
/* 0A5594 800AAB34 B0050002 */  sth     r0, 2(r5)
/* 0A5598 800AAB38 A0050004 */  lhz     r0, 4(r5)
/* 0A559C 800AAB3C 28000000 */  cmplwi  r0, 0
/* 0A55A0 800AAB40 4D820020 */  beqlr   
/* 0A55A4 800AAB44 800505AC */  lwz     r0, 0x5ac(r5)
/* 0A55A8 800AAB48 60000008 */  ori     r0, r0, 8
/* 0A55AC 800AAB4C 900505AC */  stw     r0, 0x5ac(r5)
/* 0A55B0 800AAB50 4E800020 */  blr     
lbl_800AAB54:
/* 0A55B4 800AAB54 7C8400D0 */  neg     r4, r4
/* 0A55B8 800AAB58 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A55BC 800AAB5C 3004FFFF */  addic   r0, r4, -1
/* 0A55C0 800AAB60 7C002110 */  subfe   r0, r0, r4
/* 0A55C4 800AAB64 980305A9 */  stb     r0, 0x5a9(r3)
/* 0A55C8 800AAB68 4E800020 */  blr     
lbl_800AAB6C:
/* 0A55CC 800AAB6C 7C8400D0 */  neg     r4, r4
/* 0A55D0 800AAB70 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A55D4 800AAB74 3004FFFF */  addic   r0, r4, -1
/* 0A55D8 800AAB78 7C002110 */  subfe   r0, r0, r4
/* 0A55DC 800AAB7C 980305AA */  stb     r0, 0x5aa(r3)
/* 0A55E0 800AAB80 4E800020 */  blr     

glabel GXFlush
/* 0A55E4 800AAB84 7C0802A6 */  mflr    r0
/* 0A55E8 800AAB88 90010004 */  stw     r0, 4(r1)
/* 0A55EC 800AAB8C 9421FFF8 */  stwu    r1, -8(r1)
/* 0A55F0 800AAB90 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A55F4 800AAB94 800305AC */  lwz     r0, 0x5ac(r3)
/* 0A55F8 800AAB98 28000000 */  cmplwi  r0, 0
/* 0A55FC 800AAB9C 41820008 */  beq     lbl_800AABA4
/* 0A5600 800AABA0 48000841 */  bl      __GXSetDirtyState
lbl_800AABA4:
/* 0A5604 800AABA4 38000000 */  li      r0, 0
/* 0A5608 800AABA8 3C60CC01 */  lis     r3, 0xcc01
/* 0A560C 800AABAC 90038000 */  stw     r0, -0x8000(r3)
/* 0A5610 800AABB0 90038000 */  stw     r0, -0x8000(r3)
/* 0A5614 800AABB4 90038000 */  stw     r0, -0x8000(r3)
/* 0A5618 800AABB8 90038000 */  stw     r0, -0x8000(r3)
/* 0A561C 800AABBC 90038000 */  stw     r0, -0x8000(r3)
/* 0A5620 800AABC0 90038000 */  stw     r0, -0x8000(r3)
/* 0A5624 800AABC4 90038000 */  stw     r0, -0x8000(r3)
/* 0A5628 800AABC8 90038000 */  stw     r0, -0x8000(r3)
/* 0A562C 800AABCC 4BFF0F29 */  bl      PPCSync
/* 0A5630 800AABD0 8001000C */  lwz     r0, 0xc(r1)
/* 0A5634 800AABD4 38210008 */  addi    r1, r1, 8
/* 0A5638 800AABD8 7C0803A6 */  mtlr    r0
/* 0A563C 800AABDC 4E800020 */  blr     

glabel __GXAbort
/* 0A5640 800AABE0 7C0802A6 */  mflr    r0
/* 0A5644 800AABE4 90010004 */  stw     r0, 4(r1)
/* 0A5648 800AABE8 9421FFD8 */  stwu    r1, -0x28(r1)
/* 0A564C 800AABEC BF610014 */  stmw    r27, 0x14(r1)
/* 0A5650 800AABF0 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A5654 800AABF4 880305AA */  lbz     r0, 0x5aa(r3)
/* 0A5658 800AABF8 28000000 */  cmplwi  r0, 0
/* 0A565C 800AABFC 418200B0 */  beq     lbl_800AACAC
/* 0A5660 800AAC00 4BFFF195 */  bl      GXGetGPFifo
/* 0A5664 800AAC04 28030000 */  cmplwi  r3, 0
/* 0A5668 800AAC08 418200A4 */  beq     lbl_800AACAC
/* 0A566C 800AAC0C 806D8C44 */  lwz     r3, __memReg@sda21(r13)
/* 0A5670 800AAC10 38C3004E */  addi    r6, r3, 0x4e
/* 0A5674 800AAC14 A083004E */  lhz     r4, 0x4e(r3)
/* 0A5678 800AAC18 38A30050 */  addi    r5, r3, 0x50
lbl_800AAC1C:
/* 0A567C 800AAC1C 7C802378 */  mr      r0, r4
/* 0A5680 800AAC20 A0860000 */  lhz     r4, 0(r6)
/* 0A5684 800AAC24 A0650000 */  lhz     r3, 0(r5)
/* 0A5688 800AAC28 7C040040 */  cmplw   r4, r0
/* 0A568C 800AAC2C 4082FFF0 */  bne     lbl_800AAC1C
/* 0A5690 800AAC30 5480801E */  slwi    r0, r4, 0x10
/* 0A5694 800AAC34 7C1B1B78 */  or      r27, r0, r3
lbl_800AAC38:
/* 0A5698 800AAC38 4BFF7671 */  bl      OSGetTime
/* 0A569C 800AAC3C 38000000 */  li      r0, 0
/* 0A56A0 800AAC40 3BE40000 */  addi    r31, r4, 0
/* 0A56A4 800AAC44 3BC30000 */  addi    r30, r3, 0
/* 0A56A8 800AAC48 6C1C8000 */  xoris   r28, r0, 0x8000
/* 0A56AC 800AAC4C 3BA00008 */  li      r29, 8
lbl_800AAC50:
/* 0A56B0 800AAC50 4BFF7659 */  bl      OSGetTime
/* 0A56B4 800AAC54 7C9F2010 */  subfc   r4, r31, r4
/* 0A56B8 800AAC58 7C1E1910 */  subfe   r0, r30, r3
/* 0A56BC 800AAC5C 6C038000 */  xoris   r3, r0, 0x8000
/* 0A56C0 800AAC60 7C04E810 */  subfc   r0, r4, r29
/* 0A56C4 800AAC64 7C63E110 */  subfe   r3, r3, r28
/* 0A56C8 800AAC68 7C7CE110 */  subfe   r3, r28, r28
/* 0A56CC 800AAC6C 7C6300D1 */  neg.    r3, r3
/* 0A56D0 800AAC70 4182FFE0 */  beq     lbl_800AAC50
/* 0A56D4 800AAC74 806D8C44 */  lwz     r3, __memReg@sda21(r13)
/* 0A56D8 800AAC78 38C3004E */  addi    r6, r3, 0x4e
/* 0A56DC 800AAC7C A083004E */  lhz     r4, 0x4e(r3)
/* 0A56E0 800AAC80 38A30050 */  addi    r5, r3, 0x50
lbl_800AAC84:
/* 0A56E4 800AAC84 7C802378 */  mr      r0, r4
/* 0A56E8 800AAC88 A0860000 */  lhz     r4, 0(r6)
/* 0A56EC 800AAC8C A0650000 */  lhz     r3, 0(r5)
/* 0A56F0 800AAC90 7C040040 */  cmplw   r4, r0
/* 0A56F4 800AAC94 4082FFF0 */  bne     lbl_800AAC84
/* 0A56F8 800AAC98 5480801E */  slwi    r0, r4, 0x10
/* 0A56FC 800AAC9C 7C001B78 */  or      r0, r0, r3
/* 0A5700 800AACA0 7C00D840 */  cmplw   r0, r27
/* 0A5704 800AACA4 7C1B0378 */  mr      r27, r0
/* 0A5708 800AACA8 4082FF90 */  bne     lbl_800AAC38
lbl_800AACAC:
/* 0A570C 800AACAC 3C60CC00 */  lis     r3, PI_REGS_BASE@ha
/* 0A5710 800AACB0 38000001 */  li      r0, 1
/* 0A5714 800AACB4 3B633000 */  addi    r27, r3, PI_REGS_BASE@l
/* 0A5718 800AACB8 941B0018 */  stwu    r0, PI_18(r27)
/* 0A571C 800AACBC 4BFF75ED */  bl      OSGetTime
/* 0A5720 800AACC0 38000000 */  li      r0, 0
/* 0A5724 800AACC4 3BE40000 */  addi    r31, r4, 0
/* 0A5728 800AACC8 3BC30000 */  addi    r30, r3, 0
/* 0A572C 800AACCC 6C1C8000 */  xoris   r28, r0, 0x8000
/* 0A5730 800AACD0 3BA00032 */  li      r29, 0x32
lbl_800AACD4:
/* 0A5734 800AACD4 4BFF75D5 */  bl      OSGetTime
/* 0A5738 800AACD8 7C9F2010 */  subfc   r4, r31, r4
/* 0A573C 800AACDC 7C1E1910 */  subfe   r0, r30, r3
/* 0A5740 800AACE0 6C038000 */  xoris   r3, r0, 0x8000
/* 0A5744 800AACE4 7C04E810 */  subfc   r0, r4, r29
/* 0A5748 800AACE8 7C63E110 */  subfe   r3, r3, r28
/* 0A574C 800AACEC 7C7CE110 */  subfe   r3, r28, r28
/* 0A5750 800AACF0 7C6300D1 */  neg.    r3, r3
/* 0A5754 800AACF4 4182FFE0 */  beq     lbl_800AACD4
/* 0A5758 800AACF8 3BC00000 */  li      r30, 0
/* 0A575C 800AACFC 93DB0000 */  stw     r30, PI_INTSR(r27)
/* 0A5760 800AAD00 4BFF75A9 */  bl      OSGetTime
/* 0A5764 800AAD04 3B840000 */  addi    r28, r4, 0
/* 0A5768 800AAD08 3BA30000 */  addi    r29, r3, 0
/* 0A576C 800AAD0C 6FDF8000 */  xoris   r31, r30, 0x8000
/* 0A5770 800AAD10 3BC00005 */  li      r30, 5
lbl_800AAD14:
/* 0A5774 800AAD14 4BFF7595 */  bl      OSGetTime
/* 0A5778 800AAD18 7C9C2010 */  subfc   r4, r28, r4
/* 0A577C 800AAD1C 7C1D1910 */  subfe   r0, r29, r3
/* 0A5780 800AAD20 6C038000 */  xoris   r3, r0, 0x8000
/* 0A5784 800AAD24 7C04F010 */  subfc   r0, r4, r30
/* 0A5788 800AAD28 7C63F910 */  subfe   r3, r3, r31
/* 0A578C 800AAD2C 7C7FF910 */  subfe   r3, r31, r31
/* 0A5790 800AAD30 7C6300D1 */  neg.    r3, r3
/* 0A5794 800AAD34 4182FFE0 */  beq     lbl_800AAD14
/* 0A5798 800AAD38 BB610014 */  lmw     r27, 0x14(r1)
/* 0A579C 800AAD3C 8001002C */  lwz     r0, 0x2c(r1)
/* 0A57A0 800AAD40 38210028 */  addi    r1, r1, 0x28
/* 0A57A4 800AAD44 7C0803A6 */  mtlr    r0
/* 0A57A8 800AAD48 4E800020 */  blr     

glabel GXAbortFrame
/* 0A57AC 800AAD4C 7C0802A6 */  mflr    r0
/* 0A57B0 800AAD50 90010004 */  stw     r0, 4(r1)
/* 0A57B4 800AAD54 9421FFD8 */  stwu    r1, -0x28(r1)
/* 0A57B8 800AAD58 BF610014 */  stmw    r27, 0x14(r1)
/* 0A57BC 800AAD5C 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A57C0 800AAD60 880305AA */  lbz     r0, 0x5aa(r3)
/* 0A57C4 800AAD64 28000000 */  cmplwi  r0, 0
/* 0A57C8 800AAD68 418200B0 */  beq     lbl_800AAE18
/* 0A57CC 800AAD6C 4BFFF029 */  bl      GXGetGPFifo
/* 0A57D0 800AAD70 28030000 */  cmplwi  r3, 0
/* 0A57D4 800AAD74 418200A4 */  beq     lbl_800AAE18
/* 0A57D8 800AAD78 806D8C44 */  lwz     r3, __memReg@sda21(r13)
/* 0A57DC 800AAD7C 38C3004E */  addi    r6, r3, 0x4e
/* 0A57E0 800AAD80 A083004E */  lhz     r4, 0x4e(r3)
/* 0A57E4 800AAD84 38A30050 */  addi    r5, r3, 0x50
lbl_800AAD88:
/* 0A57E8 800AAD88 7C802378 */  mr      r0, r4
/* 0A57EC 800AAD8C A0860000 */  lhz     r4, 0(r6)
/* 0A57F0 800AAD90 A0650000 */  lhz     r3, 0(r5)
/* 0A57F4 800AAD94 7C040040 */  cmplw   r4, r0
/* 0A57F8 800AAD98 4082FFF0 */  bne     lbl_800AAD88
/* 0A57FC 800AAD9C 5480801E */  slwi    r0, r4, 0x10
/* 0A5800 800AADA0 7C1B1B78 */  or      r27, r0, r3
lbl_800AADA4:
/* 0A5804 800AADA4 4BFF7505 */  bl      OSGetTime
/* 0A5808 800AADA8 38000000 */  li      r0, 0
/* 0A580C 800AADAC 3BE40000 */  addi    r31, r4, 0
/* 0A5810 800AADB0 3BC30000 */  addi    r30, r3, 0
/* 0A5814 800AADB4 6C1C8000 */  xoris   r28, r0, 0x8000
/* 0A5818 800AADB8 3BA00008 */  li      r29, 8
lbl_800AADBC:
/* 0A581C 800AADBC 4BFF74ED */  bl      OSGetTime
/* 0A5820 800AADC0 7C9F2010 */  subfc   r4, r31, r4
/* 0A5824 800AADC4 7C1E1910 */  subfe   r0, r30, r3
/* 0A5828 800AADC8 6C038000 */  xoris   r3, r0, 0x8000
/* 0A582C 800AADCC 7C04E810 */  subfc   r0, r4, r29
/* 0A5830 800AADD0 7C63E110 */  subfe   r3, r3, r28
/* 0A5834 800AADD4 7C7CE110 */  subfe   r3, r28, r28
/* 0A5838 800AADD8 7C6300D1 */  neg.    r3, r3
/* 0A583C 800AADDC 4182FFE0 */  beq     lbl_800AADBC
/* 0A5840 800AADE0 806D8C44 */  lwz     r3, __memReg@sda21(r13)
/* 0A5844 800AADE4 38C3004E */  addi    r6, r3, 0x4e
/* 0A5848 800AADE8 A083004E */  lhz     r4, 0x4e(r3)
/* 0A584C 800AADEC 38A30050 */  addi    r5, r3, 0x50
lbl_800AADF0:
/* 0A5850 800AADF0 7C802378 */  mr      r0, r4
/* 0A5854 800AADF4 A0860000 */  lhz     r4, 0(r6)
/* 0A5858 800AADF8 A0650000 */  lhz     r3, 0(r5)
/* 0A585C 800AADFC 7C040040 */  cmplw   r4, r0
/* 0A5860 800AAE00 4082FFF0 */  bne     lbl_800AADF0
/* 0A5864 800AAE04 5480801E */  slwi    r0, r4, 0x10
/* 0A5868 800AAE08 7C001B78 */  or      r0, r0, r3
/* 0A586C 800AAE0C 7C00D840 */  cmplw   r0, r27
/* 0A5870 800AAE10 7C1B0378 */  mr      r27, r0
/* 0A5874 800AAE14 4082FF90 */  bne     lbl_800AADA4
lbl_800AAE18:
/* 0A5878 800AAE18 3C60CC00 */  lis     r3, PI_REGS_BASE@ha
/* 0A587C 800AAE1C 38000001 */  li      r0, 1
/* 0A5880 800AAE20 3B633000 */  addi    r27, r3, PI_REGS_BASE@l
/* 0A5884 800AAE24 941B0018 */  stwu    r0, PI_18(r27)
/* 0A5888 800AAE28 4BFF7481 */  bl      OSGetTime
/* 0A588C 800AAE2C 38000000 */  li      r0, 0
/* 0A5890 800AAE30 3BE40000 */  addi    r31, r4, 0
/* 0A5894 800AAE34 3BC30000 */  addi    r30, r3, 0
/* 0A5898 800AAE38 6C1C8000 */  xoris   r28, r0, 0x8000
/* 0A589C 800AAE3C 3BA00032 */  li      r29, 0x32
lbl_800AAE40:
/* 0A58A0 800AAE40 4BFF7469 */  bl      OSGetTime
/* 0A58A4 800AAE44 7C9F2010 */  subfc   r4, r31, r4
/* 0A58A8 800AAE48 7C1E1910 */  subfe   r0, r30, r3
/* 0A58AC 800AAE4C 6C038000 */  xoris   r3, r0, 0x8000
/* 0A58B0 800AAE50 7C04E810 */  subfc   r0, r4, r29
/* 0A58B4 800AAE54 7C63E110 */  subfe   r3, r3, r28
/* 0A58B8 800AAE58 7C7CE110 */  subfe   r3, r28, r28
/* 0A58BC 800AAE5C 7C6300D1 */  neg.    r3, r3
/* 0A58C0 800AAE60 4182FFE0 */  beq     lbl_800AAE40
/* 0A58C4 800AAE64 3BC00000 */  li      r30, 0
/* 0A58C8 800AAE68 93DB0000 */  stw     r30, PI_INTSR(r27)
/* 0A58CC 800AAE6C 4BFF743D */  bl      OSGetTime
/* 0A58D0 800AAE70 3B840000 */  addi    r28, r4, 0
/* 0A58D4 800AAE74 3BA30000 */  addi    r29, r3, 0
/* 0A58D8 800AAE78 6FDF8000 */  xoris   r31, r30, 0x8000
/* 0A58DC 800AAE7C 3BC00005 */  li      r30, 5
lbl_800AAE80:
/* 0A58E0 800AAE80 4BFF7429 */  bl      OSGetTime
/* 0A58E4 800AAE84 7C9C2010 */  subfc   r4, r28, r4
/* 0A58E8 800AAE88 7C1D1910 */  subfe   r0, r29, r3
/* 0A58EC 800AAE8C 6C038000 */  xoris   r3, r0, 0x8000
/* 0A58F0 800AAE90 7C04F010 */  subfc   r0, r4, r30
/* 0A58F4 800AAE94 7C63F910 */  subfe   r3, r3, r31
/* 0A58F8 800AAE98 7C7FF910 */  subfe   r3, r31, r31
/* 0A58FC 800AAE9C 7C6300D1 */  neg.    r3, r3
/* 0A5900 800AAEA0 4182FFE0 */  beq     lbl_800AAE80
/* 0A5904 800AAEA4 4BFFEDE9 */  bl      __GXCleanGPFifo
/* 0A5908 800AAEA8 BB610014 */  lmw     r27, 0x14(r1)
/* 0A590C 800AAEAC 8001002C */  lwz     r0, 0x2c(r1)
/* 0A5910 800AAEB0 38210028 */  addi    r1, r1, 0x28
/* 0A5914 800AAEB4 7C0803A6 */  mtlr    r0
/* 0A5918 800AAEB8 4E800020 */  blr     

glabel GXSetDrawSync
/* 0A591C 800AAEBC 7C0802A6 */  mflr    r0
/* 0A5920 800AAEC0 90010004 */  stw     r0, 4(r1)
/* 0A5924 800AAEC4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A5928 800AAEC8 93E10014 */  stw     r31, 0x14(r1)
/* 0A592C 800AAECC 93C10010 */  stw     r30, 0x10(r1)
/* 0A5930 800AAED0 7C7E1B78 */  mr      r30, r3
/* 0A5934 800AAED4 4BFF3E29 */  bl      OSDisableInterrupts
/* 0A5938 800AAED8 38C00061 */  li      r6, 0x61
/* 0A593C 800AAEDC 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A5940 800AAEE0 3CA0CC01 */  lis     r5, 0xcc01
/* 0A5944 800AAEE4 57C0043E */  clrlwi  r0, r30, 0x10
/* 0A5948 800AAEE8 98C58000 */  stb     r6, -0x8000(r5)
/* 0A594C 800AAEEC 64074800 */  oris    r7, r0, 0x4800
/* 0A5950 800AAEF0 90E58000 */  stw     r7, -0x8000(r5)
/* 0A5954 800AAEF4 53C7043E */  rlwimi  r7, r30, 0, 0x10, 0x1f
/* 0A5958 800AAEF8 38000047 */  li      r0, 0x47
/* 0A595C 800AAEFC 98C58000 */  stb     r6, -0x8000(r5)
/* 0A5960 800AAF00 5007C00E */  rlwimi  r7, r0, 0x18, 0, 7
/* 0A5964 800AAF04 7C7E1B78 */  mr      r30, r3
/* 0A5968 800AAF08 90E58000 */  stw     r7, -0x8000(r5)
/* 0A596C 800AAF0C 800405AC */  lwz     r0, 0x5ac(r4)
/* 0A5970 800AAF10 28000000 */  cmplwi  r0, 0
/* 0A5974 800AAF14 41820008 */  beq     lbl_800AAF1C
/* 0A5978 800AAF18 480004C9 */  bl      __GXSetDirtyState
lbl_800AAF1C:
/* 0A597C 800AAF1C 3BE00000 */  li      r31, 0
/* 0A5980 800AAF20 3C60CC01 */  lis     r3, 0xcc01
/* 0A5984 800AAF24 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5988 800AAF28 93E38000 */  stw     r31, -0x8000(r3)
/* 0A598C 800AAF2C 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5990 800AAF30 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5994 800AAF34 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5998 800AAF38 93E38000 */  stw     r31, -0x8000(r3)
/* 0A599C 800AAF3C 93E38000 */  stw     r31, -0x8000(r3)
/* 0A59A0 800AAF40 93E38000 */  stw     r31, -0x8000(r3)
/* 0A59A4 800AAF44 4BFF0BB1 */  bl      PPCSync
/* 0A59A8 800AAF48 7FC3F378 */  mr      r3, r30
/* 0A59AC 800AAF4C 4BFF3DD9 */  bl      OSRestoreInterrupts
/* 0A59B0 800AAF50 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A59B4 800AAF54 B3E30002 */  sth     r31, 2(r3)
/* 0A59B8 800AAF58 8001001C */  lwz     r0, 0x1c(r1)
/* 0A59BC 800AAF5C 83E10014 */  lwz     r31, 0x14(r1)
/* 0A59C0 800AAF60 83C10010 */  lwz     r30, 0x10(r1)
/* 0A59C4 800AAF64 38210018 */  addi    r1, r1, 0x18
/* 0A59C8 800AAF68 7C0803A6 */  mtlr    r0
/* 0A59CC 800AAF6C 4E800020 */  blr     

glabel GXReadDrawSync
/* 0A59D0 800AAF70 806D8C40 */  lwz     r3, __peReg@sda21(r13)
/* 0A59D4 800AAF74 A063000E */  lhz     r3, 0xe(r3)
/* 0A59D8 800AAF78 4E800020 */  blr     

glabel GXSetDrawDone
/* 0A59DC 800AAF7C 7C0802A6 */  mflr    r0
/* 0A59E0 800AAF80 90010004 */  stw     r0, 4(r1)
/* 0A59E4 800AAF84 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A59E8 800AAF88 93E10014 */  stw     r31, 0x14(r1)
/* 0A59EC 800AAF8C 93C10010 */  stw     r30, 0x10(r1)
/* 0A59F0 800AAF90 4BFF3D6D */  bl      OSDisableInterrupts
/* 0A59F4 800AAF94 38000061 */  li      r0, 0x61
/* 0A59F8 800AAF98 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A59FC 800AAF9C 3CC0CC01 */  lis     r6, 0xcc01
/* 0A5A00 800AAFA0 3CA04500 */  lis     r5, 0x4500
/* 0A5A04 800AAFA4 98068000 */  stb     r0, -0x8000(r6)
/* 0A5A08 800AAFA8 38050002 */  addi    r0, r5, 2
/* 0A5A0C 800AAFAC 90068000 */  stw     r0, -0x8000(r6)
/* 0A5A10 800AAFB0 7C7E1B78 */  mr      r30, r3
/* 0A5A14 800AAFB4 800405AC */  lwz     r0, 0x5ac(r4)
/* 0A5A18 800AAFB8 28000000 */  cmplwi  r0, 0
/* 0A5A1C 800AAFBC 41820008 */  beq     lbl_800AAFC4
/* 0A5A20 800AAFC0 48000421 */  bl      __GXSetDirtyState
lbl_800AAFC4:
/* 0A5A24 800AAFC4 3BE00000 */  li      r31, 0
/* 0A5A28 800AAFC8 3C60CC01 */  lis     r3, 0xcc01
/* 0A5A2C 800AAFCC 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A30 800AAFD0 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A34 800AAFD4 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A38 800AAFD8 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A3C 800AAFDC 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A40 800AAFE0 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A44 800AAFE4 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A48 800AAFE8 93E38000 */  stw     r31, -0x8000(r3)
/* 0A5A4C 800AAFEC 4BFF0B09 */  bl      PPCSync
/* 0A5A50 800AAFF0 9BED8C88 */  stb     r31, DrawDone@sda21(r13)
/* 0A5A54 800AAFF4 7FC3F378 */  mr      r3, r30
/* 0A5A58 800AAFF8 4BFF3D2D */  bl      OSRestoreInterrupts
/* 0A5A5C 800AAFFC 8001001C */  lwz     r0, 0x1c(r1)
/* 0A5A60 800AB000 83E10014 */  lwz     r31, 0x14(r1)
/* 0A5A64 800AB004 83C10010 */  lwz     r30, 0x10(r1)
/* 0A5A68 800AB008 38210018 */  addi    r1, r1, 0x18
/* 0A5A6C 800AB00C 7C0803A6 */  mtlr    r0
/* 0A5A70 800AB010 4E800020 */  blr     

glabel GXDrawDone
/* 0A5A74 800AB014 7C0802A6 */  mflr    r0
/* 0A5A78 800AB018 90010004 */  stw     r0, 4(r1)
/* 0A5A7C 800AB01C 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A5A80 800AB020 93E10014 */  stw     r31, 0x14(r1)
/* 0A5A84 800AB024 4BFF3CD9 */  bl      OSDisableInterrupts
/* 0A5A88 800AB028 38000061 */  li      r0, 0x61
/* 0A5A8C 800AB02C 3CA0CC01 */  lis     r5, 0xcc01
/* 0A5A90 800AB030 3C804500 */  lis     r4, 0x4500
/* 0A5A94 800AB034 98058000 */  stb     r0, -0x8000(r5)
/* 0A5A98 800AB038 38040002 */  addi    r0, r4, 2
/* 0A5A9C 800AB03C 90058000 */  stw     r0, -0x8000(r5)
/* 0A5AA0 800AB040 7C7F1B78 */  mr      r31, r3
/* 0A5AA4 800AB044 4BFFFB41 */  bl      GXFlush
/* 0A5AA8 800AB048 38000000 */  li      r0, 0
/* 0A5AAC 800AB04C 980D8C88 */  stb     r0, DrawDone@sda21(r13)
/* 0A5AB0 800AB050 7FE3FB78 */  mr      r3, r31
/* 0A5AB4 800AB054 4BFF3CD1 */  bl      OSRestoreInterrupts
/* 0A5AB8 800AB058 4BFF3CA5 */  bl      OSDisableInterrupts
/* 0A5ABC 800AB05C 7C7F1B78 */  mr      r31, r3
/* 0A5AC0 800AB060 4800000C */  b       lbl_800AB06C
lbl_800AB064:
/* 0A5AC4 800AB064 386D8C8C */  addi    r3, r13, FinishQueue@sda21
/* 0A5AC8 800AB068 4BFF6FA5 */  bl      OSSleepThread
lbl_800AB06C:
/* 0A5ACC 800AB06C 880D8C88 */  lbz     r0, DrawDone@sda21(r13)
/* 0A5AD0 800AB070 28000000 */  cmplwi  r0, 0
/* 0A5AD4 800AB074 4182FFF0 */  beq     lbl_800AB064
/* 0A5AD8 800AB078 7FE3FB78 */  mr      r3, r31
/* 0A5ADC 800AB07C 4BFF3CA9 */  bl      OSRestoreInterrupts
/* 0A5AE0 800AB080 8001001C */  lwz     r0, 0x1c(r1)
/* 0A5AE4 800AB084 83E10014 */  lwz     r31, 0x14(r1)
/* 0A5AE8 800AB088 38210018 */  addi    r1, r1, 0x18
/* 0A5AEC 800AB08C 7C0803A6 */  mtlr    r0
/* 0A5AF0 800AB090 4E800020 */  blr     

glabel GXPixModeSync
/* 0A5AF4 800AB094 38000061 */  li      r0, 0x61
/* 0A5AF8 800AB098 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A5AFC 800AB09C 3CA0CC01 */  lis     r5, 0xcc01
/* 0A5B00 800AB0A0 98058000 */  stb     r0, -0x8000(r5)
/* 0A5B04 800AB0A4 38000000 */  li      r0, 0
/* 0A5B08 800AB0A8 806401DC */  lwz     r3, 0x1dc(r4)
/* 0A5B0C 800AB0AC 90658000 */  stw     r3, -0x8000(r5)
/* 0A5B10 800AB0B0 B0040002 */  sth     r0, 2(r4)
/* 0A5B14 800AB0B4 4E800020 */  blr     

glabel GXPokeAlphaMode
/* 0A5B18 800AB0B8 80AD8C40 */  lwz     r5, __peReg@sda21(r13)
/* 0A5B1C 800AB0BC 5480063E */  clrlwi  r0, r4, 0x18
/* 0A5B20 800AB0C0 5060402E */  rlwimi  r0, r3, 8, 0, 0x17
/* 0A5B24 800AB0C4 B0050006 */  sth     r0, 6(r5)
/* 0A5B28 800AB0C8 4E800020 */  blr     

glabel GXPokeAlphaRead
/* 0A5B2C 800AB0CC 38A00000 */  li      r5, 0
/* 0A5B30 800AB0D0 808D8C40 */  lwz     r4, __peReg@sda21(r13)
/* 0A5B34 800AB0D4 506507BE */  rlwimi  r5, r3, 0, 0x1e, 0x1f
/* 0A5B38 800AB0D8 38000001 */  li      r0, 1
/* 0A5B3C 800AB0DC 38650000 */  addi    r3, r5, 0
/* 0A5B40 800AB0E0 5003177A */  rlwimi  r3, r0, 2, 0x1d, 0x1d
/* 0A5B44 800AB0E4 B0640008 */  sth     r3, 8(r4)
/* 0A5B48 800AB0E8 4E800020 */  blr     

glabel GXPokeAlphaUpdate
/* 0A5B4C 800AB0EC 808D8C40 */  lwz     r4, __peReg@sda21(r13)
/* 0A5B50 800AB0F0 5460063E */  clrlwi  r0, r3, 0x18
/* 0A5B54 800AB0F4 A0640002 */  lhz     r3, 2(r4)
/* 0A5B58 800AB0F8 500326F6 */  rlwimi  r3, r0, 4, 0x1b, 0x1b
/* 0A5B5C 800AB0FC B0640002 */  sth     r3, 2(r4)
/* 0A5B60 800AB100 4E800020 */  blr     

glabel GXPokeBlendMode
/* 0A5B64 800AB104 80ED8C40 */  lwz     r7, __peReg@sda21(r13)
/* 0A5B68 800AB108 2C030001 */  cmpwi   r3, 1
/* 0A5B6C 800AB10C 39200001 */  li      r9, 1
/* 0A5B70 800AB110 A1470002 */  lhz     r10, 2(r7)
/* 0A5B74 800AB114 41820010 */  beq     lbl_800AB124
/* 0A5B78 800AB118 2C030003 */  cmpwi   r3, 3
/* 0A5B7C 800AB11C 41820008 */  beq     lbl_800AB124
/* 0A5B80 800AB120 39200000 */  li      r9, 0
lbl_800AB124:
/* 0A5B84 800AB124 20030003 */  subfic  r0, r3, 3
/* 0A5B88 800AB128 80ED8C40 */  lwz     r7, __peReg@sda21(r13)
/* 0A5B8C 800AB12C 7C080034 */  cntlzw  r8, r0
/* 0A5B90 800AB130 20030002 */  subfic  r0, r3, 2
/* 0A5B94 800AB134 512A07FE */  rlwimi  r10, r9, 0, 0x1f, 0x1f
/* 0A5B98 800AB138 5503D97E */  srwi    r3, r8, 5
/* 0A5B9C 800AB13C 390A0000 */  addi    r8, r10, 0
/* 0A5BA0 800AB140 7C000034 */  cntlzw  r0, r0
/* 0A5BA4 800AB144 50685D28 */  rlwimi  r8, r3, 0xb, 0x14, 0x14
/* 0A5BA8 800AB148 5008E7BC */  rlwimi  r8, r0, 0x1c, 0x1e, 0x1e
/* 0A5BAC 800AB14C 50C86426 */  rlwimi  r8, r6, 0xc, 0x10, 0x13
/* 0A5BB0 800AB150 5088456E */  rlwimi  r8, r4, 8, 0x15, 0x17
/* 0A5BB4 800AB154 38000041 */  li      r0, 0x41
/* 0A5BB8 800AB158 50A82E34 */  rlwimi  r8, r5, 5, 0x18, 0x1a
/* 0A5BBC 800AB15C 5008C00E */  rlwimi  r8, r0, 0x18, 0, 7
/* 0A5BC0 800AB160 B1070002 */  sth     r8, 2(r7)
/* 0A5BC4 800AB164 4E800020 */  blr     

glabel GXPokeColorUpdate
/* 0A5BC8 800AB168 808D8C40 */  lwz     r4, __peReg@sda21(r13)
/* 0A5BCC 800AB16C 5460063E */  clrlwi  r0, r3, 0x18
/* 0A5BD0 800AB170 A0640002 */  lhz     r3, 2(r4)
/* 0A5BD4 800AB174 50031F38 */  rlwimi  r3, r0, 3, 0x1c, 0x1c
/* 0A5BD8 800AB178 B0640002 */  sth     r3, 2(r4)
/* 0A5BDC 800AB17C 4E800020 */  blr     

glabel GXPokeDstAlpha
/* 0A5BE0 800AB180 5480063E */  clrlwi  r0, r4, 0x18
/* 0A5BE4 800AB184 808D8C40 */  lwz     r4, __peReg@sda21(r13)
/* 0A5BE8 800AB188 38A00000 */  li      r5, 0
/* 0A5BEC 800AB18C 5005063E */  rlwimi  r5, r0, 0, 0x18, 0x1f
/* 0A5BF0 800AB190 5460063E */  clrlwi  r0, r3, 0x18
/* 0A5BF4 800AB194 38650000 */  addi    r3, r5, 0
/* 0A5BF8 800AB198 500345EE */  rlwimi  r3, r0, 8, 0x17, 0x17
/* 0A5BFC 800AB19C B0640004 */  sth     r3, 4(r4)
/* 0A5C00 800AB1A0 4E800020 */  blr     

glabel GXPokeDither
/* 0A5C04 800AB1A4 808D8C40 */  lwz     r4, __peReg@sda21(r13)
/* 0A5C08 800AB1A8 5460063E */  clrlwi  r0, r3, 0x18
/* 0A5C0C 800AB1AC A0640002 */  lhz     r3, 2(r4)
/* 0A5C10 800AB1B0 5003177A */  rlwimi  r3, r0, 2, 0x1d, 0x1d
/* 0A5C14 800AB1B4 B0640002 */  sth     r3, 2(r4)
/* 0A5C18 800AB1B8 4E800020 */  blr     

glabel GXPokeZMode
/* 0A5C1C 800AB1BC 5460063E */  clrlwi  r0, r3, 0x18
/* 0A5C20 800AB1C0 806D8C40 */  lwz     r3, __peReg@sda21(r13)
/* 0A5C24 800AB1C4 38C00000 */  li      r6, 0
/* 0A5C28 800AB1C8 500607FE */  rlwimi  r6, r0, 0, 0x1f, 0x1f
/* 0A5C2C 800AB1CC 50860F3C */  rlwimi  r6, r4, 1, 0x1c, 0x1e
/* 0A5C30 800AB1D0 50A626F6 */  rlwimi  r6, r5, 4, 0x1b, 0x1b
/* 0A5C34 800AB1D4 B0C30000 */  sth     r6, 0(r3)
/* 0A5C38 800AB1D8 4E800020 */  blr     

glabel GXSetDrawSyncCallback
/* 0A5C3C 800AB1DC 7C0802A6 */  mflr    r0
/* 0A5C40 800AB1E0 90010004 */  stw     r0, 4(r1)
/* 0A5C44 800AB1E4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A5C48 800AB1E8 93E10014 */  stw     r31, 0x14(r1)
/* 0A5C4C 800AB1EC 93C10010 */  stw     r30, 0x10(r1)
/* 0A5C50 800AB1F0 7C7E1B78 */  mr      r30, r3
/* 0A5C54 800AB1F4 83ED8C80 */  lwz     r31, TokenCB@sda21(r13)
/* 0A5C58 800AB1F8 4BFF3B05 */  bl      OSDisableInterrupts
/* 0A5C5C 800AB1FC 93CD8C80 */  stw     r30, TokenCB@sda21(r13)
/* 0A5C60 800AB200 4BFF3B25 */  bl      OSRestoreInterrupts
/* 0A5C64 800AB204 7FE3FB78 */  mr      r3, r31
/* 0A5C68 800AB208 8001001C */  lwz     r0, 0x1c(r1)
/* 0A5C6C 800AB20C 83E10014 */  lwz     r31, 0x14(r1)
/* 0A5C70 800AB210 83C10010 */  lwz     r30, 0x10(r1)
/* 0A5C74 800AB214 38210018 */  addi    r1, r1, 0x18
/* 0A5C78 800AB218 7C0803A6 */  mtlr    r0
/* 0A5C7C 800AB21C 4E800020 */  blr     

GXTokenInterruptHandler:
/* 0A5C80 800AB220 7C0802A6 */  mflr    r0
/* 0A5C84 800AB224 90010004 */  stw     r0, 4(r1)
/* 0A5C88 800AB228 9421FD20 */  stwu    r1, -0x2e0(r1)
/* 0A5C8C 800AB22C 93E102DC */  stw     r31, 0x2dc(r1)
/* 0A5C90 800AB230 93C102D8 */  stw     r30, 0x2d8(r1)
/* 0A5C94 800AB234 7C9E2378 */  mr      r30, r4
/* 0A5C98 800AB238 800D8C80 */  lwz     r0, TokenCB@sda21(r13)
/* 0A5C9C 800AB23C 806D8C40 */  lwz     r3, __peReg@sda21(r13)
/* 0A5CA0 800AB240 28000000 */  cmplwi  r0, 0
/* 0A5CA4 800AB244 A3E3000E */  lhz     r31, 0xe(r3)
/* 0A5CA8 800AB248 41820034 */  beq     lbl_800AB27C
/* 0A5CAC 800AB24C 38610010 */  addi    r3, r1, 0x10
/* 0A5CB0 800AB250 4BFF2F55 */  bl      OSClearContext
/* 0A5CB4 800AB254 38610010 */  addi    r3, r1, 0x10
/* 0A5CB8 800AB258 4BFF2D85 */  bl      OSSetCurrentContext
/* 0A5CBC 800AB25C 818D8C80 */  lwz     r12, TokenCB@sda21(r13)
/* 0A5CC0 800AB260 387F0000 */  addi    r3, r31, 0
/* 0A5CC4 800AB264 7D8803A6 */  mtlr    r12
/* 0A5CC8 800AB268 4E800021 */  blrl    
/* 0A5CCC 800AB26C 38610010 */  addi    r3, r1, 0x10
/* 0A5CD0 800AB270 4BFF2F35 */  bl      OSClearContext
/* 0A5CD4 800AB274 7FC3F378 */  mr      r3, r30
/* 0A5CD8 800AB278 4BFF2D65 */  bl      OSSetCurrentContext
lbl_800AB27C:
/* 0A5CDC 800AB27C 806D8C40 */  lwz     r3, __peReg@sda21(r13)
/* 0A5CE0 800AB280 38000001 */  li      r0, 1
/* 0A5CE4 800AB284 A083000A */  lhz     r4, 0xa(r3)
/* 0A5CE8 800AB288 5004177A */  rlwimi  r4, r0, 2, 0x1d, 0x1d
/* 0A5CEC 800AB28C B083000A */  sth     r4, 0xa(r3)
/* 0A5CF0 800AB290 800102E4 */  lwz     r0, 0x2e4(r1)
/* 0A5CF4 800AB294 83E102DC */  lwz     r31, 0x2dc(r1)
/* 0A5CF8 800AB298 83C102D8 */  lwz     r30, 0x2d8(r1)
/* 0A5CFC 800AB29C 382102E0 */  addi    r1, r1, 0x2e0
/* 0A5D00 800AB2A0 7C0803A6 */  mtlr    r0
/* 0A5D04 800AB2A4 4E800020 */  blr     

glabel GXSetDrawDoneCallback
/* 0A5D08 800AB2A8 7C0802A6 */  mflr    r0
/* 0A5D0C 800AB2AC 90010004 */  stw     r0, 4(r1)
/* 0A5D10 800AB2B0 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A5D14 800AB2B4 93E10014 */  stw     r31, 0x14(r1)
/* 0A5D18 800AB2B8 93C10010 */  stw     r30, 0x10(r1)
/* 0A5D1C 800AB2BC 7C7E1B78 */  mr      r30, r3
/* 0A5D20 800AB2C0 83ED8C84 */  lwz     r31, DrawDoneCB@sda21(r13)
/* 0A5D24 800AB2C4 4BFF3A39 */  bl      OSDisableInterrupts
/* 0A5D28 800AB2C8 93CD8C84 */  stw     r30, DrawDoneCB@sda21(r13)
/* 0A5D2C 800AB2CC 4BFF3A59 */  bl      OSRestoreInterrupts
/* 0A5D30 800AB2D0 7FE3FB78 */  mr      r3, r31
/* 0A5D34 800AB2D4 8001001C */  lwz     r0, 0x1c(r1)
/* 0A5D38 800AB2D8 83E10014 */  lwz     r31, 0x14(r1)
/* 0A5D3C 800AB2DC 83C10010 */  lwz     r30, 0x10(r1)
/* 0A5D40 800AB2E0 38210018 */  addi    r1, r1, 0x18
/* 0A5D44 800AB2E4 7C0803A6 */  mtlr    r0
/* 0A5D48 800AB2E8 4E800020 */  blr     

GXFinishInterruptHandler:
/* 0A5D4C 800AB2EC 7C0802A6 */  mflr    r0
/* 0A5D50 800AB2F0 38600001 */  li      r3, 1
/* 0A5D54 800AB2F4 90010004 */  stw     r0, 4(r1)
/* 0A5D58 800AB2F8 9421FD20 */  stwu    r1, -0x2e0(r1)
/* 0A5D5C 800AB2FC 93E102DC */  stw     r31, 0x2dc(r1)
/* 0A5D60 800AB300 3BE40000 */  addi    r31, r4, 0
/* 0A5D64 800AB304 80AD8C40 */  lwz     r5, __peReg@sda21(r13)
/* 0A5D68 800AB308 A005000A */  lhz     r0, 0xa(r5)
/* 0A5D6C 800AB30C 50601F38 */  rlwimi  r0, r3, 3, 0x1c, 0x1c
/* 0A5D70 800AB310 B005000A */  sth     r0, 0xa(r5)
/* 0A5D74 800AB314 800D8C84 */  lwz     r0, DrawDoneCB@sda21(r13)
/* 0A5D78 800AB318 986D8C88 */  stb     r3, DrawDone@sda21(r13)
/* 0A5D7C 800AB31C 28000000 */  cmplwi  r0, 0
/* 0A5D80 800AB320 41820030 */  beq     lbl_800AB350
/* 0A5D84 800AB324 38610010 */  addi    r3, r1, 0x10
/* 0A5D88 800AB328 4BFF2E7D */  bl      OSClearContext
/* 0A5D8C 800AB32C 38610010 */  addi    r3, r1, 0x10
/* 0A5D90 800AB330 4BFF2CAD */  bl      OSSetCurrentContext
/* 0A5D94 800AB334 818D8C84 */  lwz     r12, DrawDoneCB@sda21(r13)
/* 0A5D98 800AB338 7D8803A6 */  mtlr    r12
/* 0A5D9C 800AB33C 4E800021 */  blrl    
/* 0A5DA0 800AB340 38610010 */  addi    r3, r1, 0x10
/* 0A5DA4 800AB344 4BFF2E61 */  bl      OSClearContext
/* 0A5DA8 800AB348 7FE3FB78 */  mr      r3, r31
/* 0A5DAC 800AB34C 4BFF2C91 */  bl      OSSetCurrentContext
lbl_800AB350:
/* 0A5DB0 800AB350 386D8C8C */  addi    r3, r13, FinishQueue@sda21
/* 0A5DB4 800AB354 4BFF6DA5 */  bl      OSWakeupThread
/* 0A5DB8 800AB358 800102E4 */  lwz     r0, 0x2e4(r1)
/* 0A5DBC 800AB35C 83E102DC */  lwz     r31, 0x2dc(r1)
/* 0A5DC0 800AB360 382102E0 */  addi    r1, r1, 0x2e0
/* 0A5DC4 800AB364 7C0803A6 */  mtlr    r0
/* 0A5DC8 800AB368 4E800020 */  blr     

glabel __GXPEInit
/* 0A5DCC 800AB36C 7C0802A6 */  mflr    r0
/* 0A5DD0 800AB370 3C60800B */  lis     r3, GXTokenInterruptHandler@ha
/* 0A5DD4 800AB374 90010004 */  stw     r0, 4(r1)
/* 0A5DD8 800AB378 3883B220 */  addi    r4, r3, GXTokenInterruptHandler@l
/* 0A5DDC 800AB37C 38600012 */  li      r3, 0x12
/* 0A5DE0 800AB380 9421FFF8 */  stwu    r1, -8(r1)
/* 0A5DE4 800AB384 4BFF39C5 */  bl      __OSSetInterruptHandler
/* 0A5DE8 800AB388 3C60800B */  lis     r3, GXFinishInterruptHandler@ha
/* 0A5DEC 800AB38C 3883B2EC */  addi    r4, r3, GXFinishInterruptHandler@l
/* 0A5DF0 800AB390 38600013 */  li      r3, 0x13
/* 0A5DF4 800AB394 4BFF39B5 */  bl      __OSSetInterruptHandler
/* 0A5DF8 800AB398 386D8C8C */  addi    r3, r13, FinishQueue@sda21
/* 0A5DFC 800AB39C 4BFF5E99 */  bl      OSInitThreadQueue
/* 0A5E00 800AB3A0 38602000 */  li      r3, 0x2000
/* 0A5E04 800AB3A4 4BFF3DA9 */  bl      __OSUnmaskInterrupts
/* 0A5E08 800AB3A8 38601000 */  li      r3, 0x1000
/* 0A5E0C 800AB3AC 4BFF3DA1 */  bl      __OSUnmaskInterrupts
/* 0A5E10 800AB3B0 806D8C40 */  lwz     r3, __peReg@sda21(r13)
/* 0A5E14 800AB3B4 38000001 */  li      r0, 1
/* 0A5E18 800AB3B8 A083000A */  lhz     r4, 0xa(r3)
/* 0A5E1C 800AB3BC 5004177A */  rlwimi  r4, r0, 2, 0x1d, 0x1d
/* 0A5E20 800AB3C0 50041F38 */  rlwimi  r4, r0, 3, 0x1c, 0x1c
/* 0A5E24 800AB3C4 500407FE */  rlwimi  r4, r0, 0, 0x1f, 0x1f
/* 0A5E28 800AB3C8 50040FBC */  rlwimi  r4, r0, 1, 0x1e, 0x1e
/* 0A5E2C 800AB3CC B083000A */  sth     r4, 0xa(r3)
/* 0A5E30 800AB3D0 8001000C */  lwz     r0, 0xc(r1)
/* 0A5E34 800AB3D4 38210008 */  addi    r1, r1, 8
/* 0A5E38 800AB3D8 7C0803A6 */  mtlr    r0
/* 0A5E3C 800AB3DC 4E800020 */  blr     

.section .sbss, "wa"

.balign 8

/* 000F1BE0 80135960 0004 */
TokenCB:
    .skip 4

/* 000F1BE4 80135964 0004 */
DrawDoneCB:
    .skip 4

/* 000F1BE8 80135968 0001 */
DrawDone:
    .skip 1

.balign 4

/* 000F1BEC 8013596C 0008 */
FinishQueue:
    .skip 8
