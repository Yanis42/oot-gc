# CARDMount.c
.include "macros.inc"

.section .text, "ax"

.balign 4

IsCard:
/* 0B9568 800BEB08 5460001F */  rlwinm. r0, r3, 0, 0, 0xf
/* 0B956C 800BEB0C 41820024 */  beq     lbl_800BEB30
/* 0B9570 800BEB10 3C038000 */  addis   r0, r3, 0x8000
/* 0B9574 800BEB14 28000004 */  cmplwi  r0, 4
/* 0B9578 800BEB18 40820010 */  bne     lbl_800BEB28
/* 0B957C 800BEB1C A00D8878 */  lhz     r0, __CARDVendorID@sda21(r13)
/* 0B9580 800BEB20 2800FFFF */  cmplwi  r0, 0xffff
/* 0B9584 800BEB24 4082000C */  bne     lbl_800BEB30
lbl_800BEB28:
/* 0B9588 800BEB28 38600000 */  li      r3, 0
/* 0B958C 800BEB2C 4E800020 */  blr     
lbl_800BEB30:
/* 0B9590 800BEB30 546007BF */  clrlwi. r0, r3, 0x1e
/* 0B9594 800BEB34 4182000C */  beq     lbl_800BEB40
/* 0B9598 800BEB38 38600000 */  li      r3, 0
/* 0B959C 800BEB3C 4E800020 */  blr     
lbl_800BEB40:
/* 0B95A0 800BEB40 5465063A */  rlwinm  r5, r3, 0, 0x18, 0x1d
/* 0B95A4 800BEB44 2C050020 */  cmpwi   r5, 0x20
/* 0B95A8 800BEB48 41820048 */  beq     lbl_800BEB90
/* 0B95AC 800BEB4C 40800028 */  bge     lbl_800BEB74
/* 0B95B0 800BEB50 2C050008 */  cmpwi   r5, 8
/* 0B95B4 800BEB54 4182003C */  beq     lbl_800BEB90
/* 0B95B8 800BEB58 40800010 */  bge     lbl_800BEB68
/* 0B95BC 800BEB5C 2C050004 */  cmpwi   r5, 4
/* 0B95C0 800BEB60 41820030 */  beq     lbl_800BEB90
/* 0B95C4 800BEB64 48000024 */  b       lbl_800BEB88
lbl_800BEB68:
/* 0B95C8 800BEB68 2C050010 */  cmpwi   r5, 0x10
/* 0B95CC 800BEB6C 41820024 */  beq     lbl_800BEB90
/* 0B95D0 800BEB70 48000018 */  b       lbl_800BEB88
lbl_800BEB74:
/* 0B95D4 800BEB74 2C050080 */  cmpwi   r5, 0x80
/* 0B95D8 800BEB78 41820018 */  beq     lbl_800BEB90
/* 0B95DC 800BEB7C 4080000C */  bge     lbl_800BEB88
/* 0B95E0 800BEB80 2C050040 */  cmpwi   r5, 0x40
/* 0B95E4 800BEB84 4182000C */  beq     lbl_800BEB90
lbl_800BEB88:
/* 0B95E8 800BEB88 38600000 */  li      r3, 0
/* 0B95EC 800BEB8C 4E800020 */  blr     
lbl_800BEB90:
/* 0B95F0 800BEB90 3C80800F */  lis     r4, SectorSizeTable@ha
/* 0B95F4 800BEB94 5463BEFA */  rlwinm  r3, r3, 0x17, 0x1b, 0x1d
/* 0B95F8 800BEB98 380439A0 */  addi    r0, r4, SectorSizeTable@l
/* 0B95FC 800BEB9C 7C601A14 */  add     r3, r0, r3
/* 0B9600 800BEBA0 80630000 */  lwz     r3, 0(r3)
/* 0B9604 800BEBA4 2C030000 */  cmpwi   r3, 0
/* 0B9608 800BEBA8 4082000C */  bne     lbl_800BEBB4
/* 0B960C 800BEBAC 38600000 */  li      r3, 0
/* 0B9610 800BEBB0 4E800020 */  blr     
lbl_800BEBB4:
/* 0B9614 800BEBB4 54A088DC */  rlwinm  r0, r5, 0x11, 3, 0xe
/* 0B9618 800BEBB8 7C001B96 */  divwu   r0, r0, r3
/* 0B961C 800BEBBC 28000008 */  cmplwi  r0, 8
/* 0B9620 800BEBC0 4080000C */  bge     lbl_800BEBCC
/* 0B9624 800BEBC4 38600000 */  li      r3, 0
/* 0B9628 800BEBC8 4E800020 */  blr     
lbl_800BEBCC:
/* 0B962C 800BEBCC 38600001 */  li      r3, 1
/* 0B9630 800BEBD0 4E800020 */  blr     

glabel CARDProbeEx
/* 0B9634 800BEBD4 7C0802A6 */  mflr    r0
/* 0B9638 800BEBD8 90010004 */  stw     r0, 4(r1)
/* 0B963C 800BEBDC 9421FFD0 */  stwu    r1, -0x30(r1)
/* 0B9640 800BEBE0 BF61001C */  stmw    r27, 0x1c(r1)
/* 0B9644 800BEBE4 7C7B1B79 */  or.     r27, r3, r3
/* 0B9648 800BEBE8 3B840000 */  addi    r28, r4, 0
/* 0B964C 800BEBEC 3BE50000 */  addi    r31, r5, 0
/* 0B9650 800BEBF0 4180000C */  blt     lbl_800BEBFC
/* 0B9654 800BEBF4 2C1B0002 */  cmpwi   r27, 2
/* 0B9658 800BEBF8 4180000C */  blt     lbl_800BEC04
lbl_800BEBFC:
/* 0B965C 800BEBFC 3860FF80 */  li      r3, -128
/* 0B9660 800BEC00 4800013C */  b       lbl_800BED3C
lbl_800BEC04:
/* 0B9664 800BEC04 3C608000 */  lis     r3, 0x8000
/* 0B9668 800BEC08 880330E3 */  lbz     r0, 0x30e3(r3)
/* 0B966C 800BEC0C 54000631 */  rlwinm. r0, r0, 0, 0x18, 0x18
/* 0B9670 800BEC10 4182000C */  beq     lbl_800BEC1C
/* 0B9674 800BEC14 3860FFFD */  li      r3, -3
/* 0B9678 800BEC18 48000124 */  b       lbl_800BED3C
lbl_800BEC1C:
/* 0B967C 800BEC1C 1C9B0110 */  mulli   r4, r27, 0x110
/* 0B9680 800BEC20 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B9684 800BEC24 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B9688 800BEC28 7FC02214 */  add     r30, r0, r4
/* 0B968C 800BEC2C 4BFE00D1 */  bl      OSDisableInterrupts
/* 0B9690 800BEC30 3BA30000 */  addi    r29, r3, 0
/* 0B9694 800BEC34 387B0000 */  addi    r3, r27, 0
/* 0B9698 800BEC38 4BFE450D */  bl      EXIProbeEx
/* 0B969C 800BEC3C 2C03FFFF */  cmpwi   r3, -1
/* 0B96A0 800BEC40 4082000C */  bne     lbl_800BEC4C
/* 0B96A4 800BEC44 3BC0FFFD */  li      r30, -3
/* 0B96A8 800BEC48 480000E8 */  b       lbl_800BED30
lbl_800BEC4C:
/* 0B96AC 800BEC4C 2C030000 */  cmpwi   r3, 0
/* 0B96B0 800BEC50 4082000C */  bne     lbl_800BEC5C
/* 0B96B4 800BEC54 3BC0FFFF */  li      r30, -1
/* 0B96B8 800BEC58 480000D8 */  b       lbl_800BED30
lbl_800BEC5C:
/* 0B96BC 800BEC5C 801E0000 */  lwz     r0, 0(r30)
/* 0B96C0 800BEC60 2C000000 */  cmpwi   r0, 0
/* 0B96C4 800BEC64 41820040 */  beq     lbl_800BECA4
/* 0B96C8 800BEC68 801E0024 */  lwz     r0, 0x24(r30)
/* 0B96CC 800BEC6C 2C000001 */  cmpwi   r0, 1
/* 0B96D0 800BEC70 4080000C */  bge     lbl_800BEC7C
/* 0B96D4 800BEC74 3BC0FFFF */  li      r30, -1
/* 0B96D8 800BEC78 480000B8 */  b       lbl_800BED30
lbl_800BEC7C:
/* 0B96DC 800BEC7C 281C0000 */  cmplwi  r28, 0
/* 0B96E0 800BEC80 4182000C */  beq     lbl_800BEC8C
/* 0B96E4 800BEC84 A01E0008 */  lhz     r0, 8(r30)
/* 0B96E8 800BEC88 901C0000 */  stw     r0, 0(r28)
lbl_800BEC8C:
/* 0B96EC 800BEC8C 281F0000 */  cmplwi  r31, 0
/* 0B96F0 800BEC90 4182000C */  beq     lbl_800BEC9C
/* 0B96F4 800BEC94 801E000C */  lwz     r0, 0xc(r30)
/* 0B96F8 800BEC98 901F0000 */  stw     r0, 0(r31)
lbl_800BEC9C:
/* 0B96FC 800BEC9C 3BC00000 */  li      r30, 0
/* 0B9700 800BECA0 48000090 */  b       lbl_800BED30
lbl_800BECA4:
/* 0B9704 800BECA4 7F63DB78 */  mr      r3, r27
/* 0B9708 800BECA8 4BFE50A9 */  bl      EXIGetState
/* 0B970C 800BECAC 54600739 */  rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 0B9710 800BECB0 4182000C */  beq     lbl_800BECBC
/* 0B9714 800BECB4 3BC0FFFE */  li      r30, -2
/* 0B9718 800BECB8 48000078 */  b       lbl_800BED30
lbl_800BECBC:
/* 0B971C 800BECBC 387B0000 */  addi    r3, r27, 0
/* 0B9720 800BECC0 38A10014 */  addi    r5, r1, 0x14
/* 0B9724 800BECC4 38800000 */  li      r4, 0
/* 0B9728 800BECC8 4BFE50C9 */  bl      EXIGetID
/* 0B972C 800BECCC 2C030000 */  cmpwi   r3, 0
/* 0B9730 800BECD0 4082000C */  bne     lbl_800BECDC
/* 0B9734 800BECD4 3BC0FFFF */  li      r30, -1
/* 0B9738 800BECD8 48000058 */  b       lbl_800BED30
lbl_800BECDC:
/* 0B973C 800BECDC 80610014 */  lwz     r3, 0x14(r1)
/* 0B9740 800BECE0 4BFFFE29 */  bl      IsCard
/* 0B9744 800BECE4 2C030000 */  cmpwi   r3, 0
/* 0B9748 800BECE8 41820044 */  beq     lbl_800BED2C
/* 0B974C 800BECEC 281C0000 */  cmplwi  r28, 0
/* 0B9750 800BECF0 41820010 */  beq     lbl_800BED00
/* 0B9754 800BECF4 80010014 */  lwz     r0, 0x14(r1)
/* 0B9758 800BECF8 5400063A */  rlwinm  r0, r0, 0, 0x18, 0x1d
/* 0B975C 800BECFC 901C0000 */  stw     r0, 0(r28)
lbl_800BED00:
/* 0B9760 800BED00 281F0000 */  cmplwi  r31, 0
/* 0B9764 800BED04 41820020 */  beq     lbl_800BED24
/* 0B9768 800BED08 80810014 */  lwz     r4, 0x14(r1)
/* 0B976C 800BED0C 3C60800F */  lis     r3, SectorSizeTable@ha
/* 0B9770 800BED10 380339A0 */  addi    r0, r3, SectorSizeTable@l
/* 0B9774 800BED14 5483BEFA */  rlwinm  r3, r4, 0x17, 0x1b, 0x1d
/* 0B9778 800BED18 7C601A14 */  add     r3, r0, r3
/* 0B977C 800BED1C 80030000 */  lwz     r0, 0(r3)
/* 0B9780 800BED20 901F0000 */  stw     r0, 0(r31)
lbl_800BED24:
/* 0B9784 800BED24 3BC00000 */  li      r30, 0
/* 0B9788 800BED28 48000008 */  b       lbl_800BED30
lbl_800BED2C:
/* 0B978C 800BED2C 3BC0FFFE */  li      r30, -2
lbl_800BED30:
/* 0B9790 800BED30 7FA3EB78 */  mr      r3, r29
/* 0B9794 800BED34 4BFDFFF1 */  bl      OSRestoreInterrupts
/* 0B9798 800BED38 7FC3F378 */  mr      r3, r30
lbl_800BED3C:
/* 0B979C 800BED3C BB61001C */  lmw     r27, 0x1c(r1)
/* 0B97A0 800BED40 80010034 */  lwz     r0, 0x34(r1)
/* 0B97A4 800BED44 38210030 */  addi    r1, r1, 0x30
/* 0B97A8 800BED48 7C0803A6 */  mtlr    r0
/* 0B97AC 800BED4C 4E800020 */  blr     

DoMount:
/* 0B97B0 800BED50 7C0802A6 */  mflr    r0
/* 0B97B4 800BED54 90010004 */  stw     r0, 4(r1)
/* 0B97B8 800BED58 9421FFD0 */  stwu    r1, -0x30(r1)
/* 0B97BC 800BED5C 93E1002C */  stw     r31, 0x2c(r1)
/* 0B97C0 800BED60 93C10028 */  stw     r30, 0x28(r1)
/* 0B97C4 800BED64 93A10024 */  stw     r29, 0x24(r1)
/* 0B97C8 800BED68 3BA30000 */  addi    r29, r3, 0
/* 0B97CC 800BED6C 1C9D0110 */  mulli   r4, r29, 0x110
/* 0B97D0 800BED70 93810020 */  stw     r28, 0x20(r1)
/* 0B97D4 800BED74 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B97D8 800BED78 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B97DC 800BED7C 7C602214 */  add     r3, r0, r4
/* 0B97E0 800BED80 80030024 */  lwz     r0, 0x24(r3)
/* 0B97E4 800BED84 3BE30000 */  addi    r31, r3, 0
/* 0B97E8 800BED88 2C000000 */  cmpwi   r0, 0
/* 0B97EC 800BED8C 408202AC */  bne     lbl_800BF038
/* 0B97F0 800BED90 387D0000 */  addi    r3, r29, 0
/* 0B97F4 800BED94 38A10018 */  addi    r5, r1, 0x18
/* 0B97F8 800BED98 38800000 */  li      r4, 0
/* 0B97FC 800BED9C 4BFE4FF5 */  bl      EXIGetID
/* 0B9800 800BEDA0 2C030000 */  cmpwi   r3, 0
/* 0B9804 800BEDA4 4082000C */  bne     lbl_800BEDB0
/* 0B9808 800BEDA8 3BC0FFFD */  li      r30, -3
/* 0B980C 800BEDAC 48000020 */  b       lbl_800BEDCC
lbl_800BEDB0:
/* 0B9810 800BEDB0 80610018 */  lwz     r3, 0x18(r1)
/* 0B9814 800BEDB4 4BFFFD55 */  bl      IsCard
/* 0B9818 800BEDB8 2C030000 */  cmpwi   r3, 0
/* 0B981C 800BEDBC 4182000C */  beq     lbl_800BEDC8
/* 0B9820 800BEDC0 3BC00000 */  li      r30, 0
/* 0B9824 800BEDC4 48000008 */  b       lbl_800BEDCC
lbl_800BEDC8:
/* 0B9828 800BEDC8 3BC0FFFE */  li      r30, -2
lbl_800BEDCC:
/* 0B982C 800BEDCC 2C1E0000 */  cmpwi   r30, 0
/* 0B9830 800BEDD0 41800344 */  blt     lbl_800BF114
/* 0B9834 800BEDD4 80010018 */  lwz     r0, 0x18(r1)
/* 0B9838 800BEDD8 3C80800F */  lis     r4, SectorSizeTable@ha
/* 0B983C 800BEDDC 388439A0 */  addi    r4, r4, SectorSizeTable@l
/* 0B9840 800BEDE0 901F0108 */  stw     r0, 0x108(r31)
/* 0B9844 800BEDE4 3C60800F */  lis     r3, LatencyTable@ha
/* 0B9848 800BEDE8 380339C0 */  addi    r0, r3, LatencyTable@l
/* 0B984C 800BEDEC 80A10018 */  lwz     r5, 0x18(r1)
/* 0B9850 800BEDF0 387D0000 */  addi    r3, r29, 0
/* 0B9854 800BEDF4 54A5063A */  rlwinm  r5, r5, 0, 0x18, 0x1d
/* 0B9858 800BEDF8 B0BF0008 */  sth     r5, 8(r31)
/* 0B985C 800BEDFC 80A10018 */  lwz     r5, 0x18(r1)
/* 0B9860 800BEE00 54A5BEFA */  rlwinm  r5, r5, 0x17, 0x1b, 0x1d
/* 0B9864 800BEE04 7C842A14 */  add     r4, r4, r5
/* 0B9868 800BEE08 80840000 */  lwz     r4, 0(r4)
/* 0B986C 800BEE0C 909F000C */  stw     r4, 0xc(r31)
/* 0B9870 800BEE10 A0BF0008 */  lhz     r5, 8(r31)
/* 0B9874 800BEE14 809F000C */  lwz     r4, 0xc(r31)
/* 0B9878 800BEE18 54A5A016 */  slwi    r5, r5, 0x14
/* 0B987C 800BEE1C 7CA51E70 */  srawi   r5, r5, 3
/* 0B9880 800BEE20 7CA50194 */  addze   r5, r5
/* 0B9884 800BEE24 7C8523D6 */  divw    r4, r5, r4
/* 0B9888 800BEE28 B09F0010 */  sth     r4, 0x10(r31)
/* 0B988C 800BEE2C 80810018 */  lwz     r4, 0x18(r1)
/* 0B9890 800BEE30 5484D6FA */  rlwinm  r4, r4, 0x1a, 0x1b, 0x1d
/* 0B9894 800BEE34 7C802214 */  add     r4, r0, r4
/* 0B9898 800BEE38 80040000 */  lwz     r0, 0(r4)
/* 0B989C 800BEE3C 901F0014 */  stw     r0, 0x14(r31)
/* 0B98A0 800BEE40 4BFFC421 */  bl      __CARDClearStatus
/* 0B98A4 800BEE44 7C7E1B79 */  or.     r30, r3, r3
/* 0B98A8 800BEE48 418002CC */  blt     lbl_800BF114
/* 0B98AC 800BEE4C 387D0000 */  addi    r3, r29, 0
/* 0B98B0 800BEE50 38810014 */  addi    r4, r1, 0x14
/* 0B98B4 800BEE54 4BFFC31D */  bl      __CARDReadStatus
/* 0B98B8 800BEE58 7C7E1B79 */  or.     r30, r3, r3
/* 0B98BC 800BEE5C 418002B8 */  blt     lbl_800BF114
/* 0B98C0 800BEE60 7FA3EB78 */  mr      r3, r29
/* 0B98C4 800BEE64 4BFE4261 */  bl      EXIProbe
/* 0B98C8 800BEE68 2C030000 */  cmpwi   r3, 0
/* 0B98CC 800BEE6C 4082000C */  bne     lbl_800BEE78
/* 0B98D0 800BEE70 3BC0FFFD */  li      r30, -3
/* 0B98D4 800BEE74 480002A0 */  b       lbl_800BF114
lbl_800BEE78:
/* 0B98D8 800BEE78 88010014 */  lbz     r0, 0x14(r1)
/* 0B98DC 800BEE7C 54000673 */  rlwinm. r0, r0, 0, 0x19, 0x19
/* 0B98E0 800BEE80 40820114 */  bne     lbl_800BEF94
/* 0B98E4 800BEE84 387D0000 */  addi    r3, r29, 0
/* 0B98E8 800BEE88 389F0018 */  addi    r4, r31, 0x18
/* 0B98EC 800BEE8C 4BFFD529 */  bl      __CARDUnlock
/* 0B98F0 800BEE90 7C7E1B79 */  or.     r30, r3, r3
/* 0B98F4 800BEE94 41800280 */  blt     lbl_800BF114
/* 0B98F8 800BEE98 4BFE1A51 */  bl      __OSLockSramEx
/* 0B98FC 800BEE9C 1C1D000C */  mulli   r0, r29, 0xc
/* 0B9900 800BEEA0 7C830214 */  add     r4, r3, r0
/* 0B9904 800BEEA4 881F0018 */  lbz     r0, 0x18(r31)
/* 0B9908 800BEEA8 38BF0018 */  addi    r5, r31, 0x18
/* 0B990C 800BEEAC 98040000 */  stb     r0, 0(r4)
/* 0B9910 800BEEB0 39050002 */  addi    r8, r5, 2
/* 0B9914 800BEEB4 39250003 */  addi    r9, r5, 3
/* 0B9918 800BEEB8 88FF0018 */  lbz     r7, 0x18(r31)
/* 0B991C 800BEEBC 39450004 */  addi    r10, r5, 4
/* 0B9920 800BEEC0 881F0019 */  lbz     r0, 0x19(r31)
/* 0B9924 800BEEC4 39650005 */  addi    r11, r5, 5
/* 0B9928 800BEEC8 39850006 */  addi    r12, r5, 6
/* 0B992C 800BEECC 98040001 */  stb     r0, 1(r4)
/* 0B9930 800BEED0 3B850007 */  addi    r28, r5, 7
/* 0B9934 800BEED4 38A00008 */  li      r5, 8
/* 0B9938 800BEED8 881F0019 */  lbz     r0, 0x19(r31)
/* 0B993C 800BEEDC 88C80000 */  lbz     r6, 0(r8)
/* 0B9940 800BEEE0 7C070214 */  add     r0, r7, r0
/* 0B9944 800BEEE4 98C40002 */  stb     r6, 2(r4)
/* 0B9948 800BEEE8 88E80000 */  lbz     r7, 0(r8)
/* 0B994C 800BEEEC 88C90000 */  lbz     r6, 0(r9)
/* 0B9950 800BEEF0 7C003A14 */  add     r0, r0, r7
/* 0B9954 800BEEF4 98C40003 */  stb     r6, 3(r4)
/* 0B9958 800BEEF8 88E90000 */  lbz     r7, 0(r9)
/* 0B995C 800BEEFC 88CA0000 */  lbz     r6, 0(r10)
/* 0B9960 800BEF00 7C003A14 */  add     r0, r0, r7
/* 0B9964 800BEF04 98C40004 */  stb     r6, 4(r4)
/* 0B9968 800BEF08 88EA0000 */  lbz     r7, 0(r10)
/* 0B996C 800BEF0C 88CB0000 */  lbz     r6, 0(r11)
/* 0B9970 800BEF10 7C003A14 */  add     r0, r0, r7
/* 0B9974 800BEF14 98C40005 */  stb     r6, 5(r4)
/* 0B9978 800BEF18 88EB0000 */  lbz     r7, 0(r11)
/* 0B997C 800BEF1C 88CC0000 */  lbz     r6, 0(r12)
/* 0B9980 800BEF20 7C003A14 */  add     r0, r0, r7
/* 0B9984 800BEF24 98C40006 */  stb     r6, 6(r4)
/* 0B9988 800BEF28 88EC0000 */  lbz     r7, 0(r12)
/* 0B998C 800BEF2C 88DC0000 */  lbz     r6, 0(r28)
/* 0B9990 800BEF30 7C003A14 */  add     r0, r0, r7
/* 0B9994 800BEF34 98C40007 */  stb     r6, 7(r4)
/* 0B9998 800BEF38 88DC0000 */  lbz     r6, 0(r28)
/* 0B999C 800BEF3C 7C003214 */  add     r0, r0, r6
/* 0B99A0 800BEF40 480001F0 */  b       lbl_800BF130
lbl_800BEF44:
/* 0B99A4 800BEF44 2085000C */  subfic  r4, r5, 0xc
/* 0B99A8 800BEF48 2C05000C */  cmpwi   r5, 0xc
/* 0B99AC 800BEF4C 7C8903A6 */  mtctr   r4
/* 0B99B0 800BEF50 40800028 */  bge     lbl_800BEF78
lbl_800BEF54:
/* 0B99B4 800BEF54 38E50018 */  addi    r7, r5, 0x18
/* 0B99B8 800BEF58 7CFF3A14 */  add     r7, r31, r7
/* 0B99BC 800BEF5C 88870000 */  lbz     r4, 0(r7)
/* 0B99C0 800BEF60 38A50001 */  addi    r5, r5, 1
/* 0B99C4 800BEF64 98860000 */  stb     r4, 0(r6)
/* 0B99C8 800BEF68 38C60001 */  addi    r6, r6, 1
/* 0B99CC 800BEF6C 88870000 */  lbz     r4, 0(r7)
/* 0B99D0 800BEF70 7C002214 */  add     r0, r0, r4
/* 0B99D4 800BEF74 4200FFE0 */  bdnz    lbl_800BEF54
lbl_800BEF78:
/* 0B99D8 800BEF78 7C63EA14 */  add     r3, r3, r29
/* 0B99DC 800BEF7C 7C0000F8 */  nor     r0, r0, r0
/* 0B99E0 800BEF80 98030026 */  stb     r0, 0x26(r3)
/* 0B99E4 800BEF84 38600001 */  li      r3, 1
/* 0B99E8 800BEF88 4BFE1D1D */  bl      __OSUnlockSramEx
/* 0B99EC 800BEF8C 7FC3F378 */  mr      r3, r30
/* 0B99F0 800BEF90 480001B0 */  b       lbl_800BF140
lbl_800BEF94:
/* 0B99F4 800BEF94 38000001 */  li      r0, 1
/* 0B99F8 800BEF98 901F0024 */  stw     r0, 0x24(r31)
/* 0B99FC 800BEF9C 4BFE194D */  bl      __OSLockSramEx
/* 0B9A00 800BEFA0 1C1D000C */  mulli   r0, r29, 0xc
/* 0B9A04 800BEFA4 3BC30000 */  addi    r30, r3, 0
/* 0B9A08 800BEFA8 7CBE0214 */  add     r5, r30, r0
/* 0B9A0C 800BEFAC 88850000 */  lbz     r4, 0(r5)
/* 0B9A10 800BEFB0 38C00008 */  li      r6, 8
/* 0B9A14 800BEFB4 88050001 */  lbz     r0, 1(r5)
/* 0B9A18 800BEFB8 88650002 */  lbz     r3, 2(r5)
/* 0B9A1C 800BEFBC 7F840214 */  add     r28, r4, r0
/* 0B9A20 800BEFC0 88050003 */  lbz     r0, 3(r5)
/* 0B9A24 800BEFC4 7F9C1A14 */  add     r28, r28, r3
/* 0B9A28 800BEFC8 88650004 */  lbz     r3, 4(r5)
/* 0B9A2C 800BEFCC 7F9C0214 */  add     r28, r28, r0
/* 0B9A30 800BEFD0 88050005 */  lbz     r0, 5(r5)
/* 0B9A34 800BEFD4 7F9C1A14 */  add     r28, r28, r3
/* 0B9A38 800BEFD8 88650006 */  lbz     r3, 6(r5)
/* 0B9A3C 800BEFDC 7F9C0214 */  add     r28, r28, r0
/* 0B9A40 800BEFE0 88050007 */  lbz     r0, 7(r5)
/* 0B9A44 800BEFE4 7F9C1A14 */  add     r28, r28, r3
/* 0B9A48 800BEFE8 7F9C0214 */  add     r28, r28, r0
/* 0B9A4C 800BEFEC 4800014C */  b       lbl_800BF138
lbl_800BEFF0:
/* 0B9A50 800BEFF0 2006000C */  subfic  r0, r6, 0xc
/* 0B9A54 800BEFF4 2C06000C */  cmpwi   r6, 0xc
/* 0B9A58 800BEFF8 7C0903A6 */  mtctr   r0
/* 0B9A5C 800BEFFC 40800014 */  bge     lbl_800BF010
lbl_800BF000:
/* 0B9A60 800BF000 88030000 */  lbz     r0, 0(r3)
/* 0B9A64 800BF004 38630001 */  addi    r3, r3, 1
/* 0B9A68 800BF008 7F9C0214 */  add     r28, r28, r0
/* 0B9A6C 800BF00C 4200FFF4 */  bdnz    lbl_800BF000
lbl_800BF010:
/* 0B9A70 800BF010 38600000 */  li      r3, 0
/* 0B9A74 800BF014 4BFE1C91 */  bl      __OSUnlockSramEx
/* 0B9A78 800BF018 7C7EEA14 */  add     r3, r30, r29
/* 0B9A7C 800BF01C 7F80E0F8 */  nor     r0, r28, r28
/* 0B9A80 800BF020 88630026 */  lbz     r3, 0x26(r3)
/* 0B9A84 800BF024 5400063E */  clrlwi  r0, r0, 0x18
/* 0B9A88 800BF028 7C030040 */  cmplw   r3, r0
/* 0B9A8C 800BF02C 4182000C */  beq     lbl_800BF038
/* 0B9A90 800BF030 3BC0FFFB */  li      r30, -5
/* 0B9A94 800BF034 480000E0 */  b       lbl_800BF114
lbl_800BF038:
/* 0B9A98 800BF038 801F0024 */  lwz     r0, 0x24(r31)
/* 0B9A9C 800BF03C 2C000001 */  cmpwi   r0, 1
/* 0B9AA0 800BF040 40820088 */  bne     lbl_800BF0C8
/* 0B9AA4 800BF044 807F0108 */  lwz     r3, 0x108(r31)
/* 0B9AA8 800BF048 3C038000 */  addis   r0, r3, 0x8000
/* 0B9AAC 800BF04C 28000004 */  cmplwi  r0, 4
/* 0B9AB0 800BF050 40820034 */  bne     lbl_800BF084
/* 0B9AB4 800BF054 4BFE1895 */  bl      __OSLockSramEx
/* 0B9AB8 800BF058 1C1D000C */  mulli   r0, r29, 0xc
/* 0B9ABC 800BF05C 7F83022E */  lhzx    r28, r3, r0
/* 0B9AC0 800BF060 38600000 */  li      r3, 0
/* 0B9AC4 800BF064 4BFE1C41 */  bl      __OSUnlockSramEx
/* 0B9AC8 800BF068 A00D8878 */  lhz     r0, __CARDVendorID@sda21(r13)
/* 0B9ACC 800BF06C 2800FFFF */  cmplwi  r0, 0xffff
/* 0B9AD0 800BF070 4182000C */  beq     lbl_800BF07C
/* 0B9AD4 800BF074 7C1C0040 */  cmplw   r28, r0
/* 0B9AD8 800BF078 4182000C */  beq     lbl_800BF084
lbl_800BF07C:
/* 0B9ADC 800BF07C 3BC0FFFE */  li      r30, -2
/* 0B9AE0 800BF080 48000094 */  b       lbl_800BF114
lbl_800BF084:
/* 0B9AE4 800BF084 38000002 */  li      r0, 2
/* 0B9AE8 800BF088 901F0024 */  stw     r0, 0x24(r31)
/* 0B9AEC 800BF08C 387D0000 */  addi    r3, r29, 0
/* 0B9AF0 800BF090 38800001 */  li      r4, 1
/* 0B9AF4 800BF094 4BFFC01D */  bl      __CARDEnableInterrupt
/* 0B9AF8 800BF098 7C7E1B79 */  or.     r30, r3, r3
/* 0B9AFC 800BF09C 41800078 */  blt     lbl_800BF114
/* 0B9B00 800BF0A0 3C60800C */  lis     r3, __CARDExiHandler@ha
/* 0B9B04 800BF0A4 3883AE6C */  addi    r4, r3, __CARDExiHandler@l
/* 0B9B08 800BF0A8 387D0000 */  addi    r3, r29, 0
/* 0B9B0C 800BF0AC 4BFE3E29 */  bl      EXISetExiCallback
/* 0B9B10 800BF0B0 7FA3EB78 */  mr      r3, r29
/* 0B9B14 800BF0B4 4BFE4BC1 */  bl      EXIUnlock
/* 0B9B18 800BF0B8 3C800001 */  lis     r4, 1
/* 0B9B1C 800BF0BC 807F0080 */  lwz     r3, 0x80(r31)
/* 0B9B20 800BF0C0 3884A000 */  addi    r4, r4, -24576
/* 0B9B24 800BF0C4 4BFDE68D */  bl      DCInvalidateRange
lbl_800BF0C8:
/* 0B9B28 800BF0C8 809F0024 */  lwz     r4, 0x24(r31)
/* 0B9B2C 800BF0CC 3C60800C */  lis     r3, __CARDMountCallback@ha
/* 0B9B30 800BF0D0 801F000C */  lwz     r0, 0xc(r31)
/* 0B9B34 800BF0D4 38E3F160 */  addi    r7, r3, __CARDMountCallback@l
/* 0B9B38 800BF0D8 3864FFFE */  addi    r3, r4, -2
/* 0B9B3C 800BF0DC 7C8019D6 */  mullw   r4, r0, r3
/* 0B9B40 800BF0E0 80BF0080 */  lwz     r5, 0x80(r31)
/* 0B9B44 800BF0E4 54606824 */  slwi    r0, r3, 0xd
/* 0B9B48 800BF0E8 7CC50214 */  add     r6, r5, r0
/* 0B9B4C 800BF0EC 387D0000 */  addi    r3, r29, 0
/* 0B9B50 800BF0F0 38A02000 */  li      r5, 0x2000
/* 0B9B54 800BF0F4 4BFFE289 */  bl      __CARDRead
/* 0B9B58 800BF0F8 7C7C1B79 */  or.     r28, r3, r3
/* 0B9B5C 800BF0FC 40800010 */  bge     lbl_800BF10C
/* 0B9B60 800BF100 387F0000 */  addi    r3, r31, 0
/* 0B9B64 800BF104 389C0000 */  addi    r4, r28, 0
/* 0B9B68 800BF108 4BFFCC6D */  bl      __CARDPutControlBlock
lbl_800BF10C:
/* 0B9B6C 800BF10C 7F83E378 */  mr      r3, r28
/* 0B9B70 800BF110 48000030 */  b       lbl_800BF140
lbl_800BF114:
/* 0B9B74 800BF114 7FA3EB78 */  mr      r3, r29
/* 0B9B78 800BF118 4BFE4B5D */  bl      EXIUnlock
/* 0B9B7C 800BF11C 387D0000 */  addi    r3, r29, 0
/* 0B9B80 800BF120 389E0000 */  addi    r4, r30, 0
/* 0B9B84 800BF124 4800035D */  bl      DoUnmount
/* 0B9B88 800BF128 7FC3F378 */  mr      r3, r30
/* 0B9B8C 800BF12C 48000014 */  b       lbl_800BF140
lbl_800BF130:
/* 0B9B90 800BF130 38C40008 */  addi    r6, r4, 8
/* 0B9B94 800BF134 4BFFFE10 */  b       lbl_800BEF44
lbl_800BF138:
/* 0B9B98 800BF138 38650008 */  addi    r3, r5, 8
/* 0B9B9C 800BF13C 4BFFFEB4 */  b       lbl_800BEFF0
lbl_800BF140:
/* 0B9BA0 800BF140 80010034 */  lwz     r0, 0x34(r1)
/* 0B9BA4 800BF144 83E1002C */  lwz     r31, 0x2c(r1)
/* 0B9BA8 800BF148 83C10028 */  lwz     r30, 0x28(r1)
/* 0B9BAC 800BF14C 83A10024 */  lwz     r29, 0x24(r1)
/* 0B9BB0 800BF150 83810020 */  lwz     r28, 0x20(r1)
/* 0B9BB4 800BF154 38210030 */  addi    r1, r1, 0x30
/* 0B9BB8 800BF158 7C0803A6 */  mtlr    r0
/* 0B9BBC 800BF15C 4E800020 */  blr     

glabel __CARDMountCallback
/* 0B9BC0 800BF160 7C0802A6 */  mflr    r0
/* 0B9BC4 800BF164 90010004 */  stw     r0, 4(r1)
/* 0B9BC8 800BF168 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0B9BCC 800BF16C 93E1001C */  stw     r31, 0x1c(r1)
/* 0B9BD0 800BF170 93C10018 */  stw     r30, 0x18(r1)
/* 0B9BD4 800BF174 93A10014 */  stw     r29, 0x14(r1)
/* 0B9BD8 800BF178 3BA40000 */  addi    r29, r4, 0
/* 0B9BDC 800BF17C 2C1DFFFD */  cmpwi   r29, -3
/* 0B9BE0 800BF180 93810010 */  stw     r28, 0x10(r1)
/* 0B9BE4 800BF184 3B830000 */  addi    r28, r3, 0
/* 0B9BE8 800BF188 1CBC0110 */  mulli   r5, r28, 0x110
/* 0B9BEC 800BF18C 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B9BF0 800BF190 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B9BF4 800BF194 7FE02A14 */  add     r31, r0, r5
/* 0B9BF8 800BF198 418200A8 */  beq     lbl_800BF240
/* 0B9BFC 800BF19C 40800010 */  bge     lbl_800BF1AC
/* 0B9C00 800BF1A0 2C1DFFFB */  cmpwi   r29, -5
/* 0B9C04 800BF1A4 4182009C */  beq     lbl_800BF240
/* 0B9C08 800BF1A8 480000A4 */  b       lbl_800BF24C
lbl_800BF1AC:
/* 0B9C0C 800BF1AC 2C1D0001 */  cmpwi   r29, 1
/* 0B9C10 800BF1B0 4182004C */  beq     lbl_800BF1FC
/* 0B9C14 800BF1B4 40800098 */  bge     lbl_800BF24C
/* 0B9C18 800BF1B8 2C1D0000 */  cmpwi   r29, 0
/* 0B9C1C 800BF1BC 40800008 */  bge     lbl_800BF1C4
/* 0B9C20 800BF1C0 4800008C */  b       lbl_800BF24C
lbl_800BF1C4:
/* 0B9C24 800BF1C4 807F0024 */  lwz     r3, 0x24(r31)
/* 0B9C28 800BF1C8 38030001 */  addi    r0, r3, 1
/* 0B9C2C 800BF1CC 2C000007 */  cmpwi   r0, 7
/* 0B9C30 800BF1D0 901F0024 */  stw     r0, 0x24(r31)
/* 0B9C34 800BF1D4 40800018 */  bge     lbl_800BF1EC
/* 0B9C38 800BF1D8 7F83E378 */  mr      r3, r28
/* 0B9C3C 800BF1DC 4BFFFB75 */  bl      DoMount
/* 0B9C40 800BF1E0 7C7D1B79 */  or.     r29, r3, r3
/* 0B9C44 800BF1E4 41800068 */  blt     lbl_800BF24C
/* 0B9C48 800BF1E8 48000090 */  b       lbl_800BF278
lbl_800BF1EC:
/* 0B9C4C 800BF1EC 7FE3FB78 */  mr      r3, r31
/* 0B9C50 800BF1F0 4BFFF2A9 */  bl      __CARDVerify
/* 0B9C54 800BF1F4 7C7D1B78 */  mr      r29, r3
/* 0B9C58 800BF1F8 48000054 */  b       lbl_800BF24C
lbl_800BF1FC:
/* 0B9C5C 800BF1FC 3C60800C */  lis     r3, __CARDMountCallback@ha
/* 0B9C60 800BF200 3803F160 */  addi    r0, r3, __CARDMountCallback@l
/* 0B9C64 800BF204 3C60800C */  lis     r3, __CARDUnlockedHandler@ha
/* 0B9C68 800BF208 901F00DC */  stw     r0, 0xdc(r31)
/* 0B9C6C 800BF20C 38A3B02C */  addi    r5, r3, __CARDUnlockedHandler@l
/* 0B9C70 800BF210 387C0000 */  addi    r3, r28, 0
/* 0B9C74 800BF214 38800000 */  li      r4, 0
/* 0B9C78 800BF218 4BFE4969 */  bl      EXILock
/* 0B9C7C 800BF21C 2C030000 */  cmpwi   r3, 0
/* 0B9C80 800BF220 41820058 */  beq     lbl_800BF278
/* 0B9C84 800BF224 38000000 */  li      r0, 0
/* 0B9C88 800BF228 901F00DC */  stw     r0, 0xdc(r31)
/* 0B9C8C 800BF22C 7F83E378 */  mr      r3, r28
/* 0B9C90 800BF230 4BFFFB21 */  bl      DoMount
/* 0B9C94 800BF234 7C7D1B79 */  or.     r29, r3, r3
/* 0B9C98 800BF238 41800014 */  blt     lbl_800BF24C
/* 0B9C9C 800BF23C 4800003C */  b       lbl_800BF278
lbl_800BF240:
/* 0B9CA0 800BF240 387C0000 */  addi    r3, r28, 0
/* 0B9CA4 800BF244 389D0000 */  addi    r4, r29, 0
/* 0B9CA8 800BF248 48000239 */  bl      DoUnmount
lbl_800BF24C:
/* 0B9CAC 800BF24C 83DF00D0 */  lwz     r30, 0xd0(r31)
/* 0B9CB0 800BF250 38000000 */  li      r0, 0
/* 0B9CB4 800BF254 387F0000 */  addi    r3, r31, 0
/* 0B9CB8 800BF258 901F00D0 */  stw     r0, 0xd0(r31)
/* 0B9CBC 800BF25C 7FA4EB78 */  mr      r4, r29
/* 0B9CC0 800BF260 4BFFCB15 */  bl      __CARDPutControlBlock
/* 0B9CC4 800BF264 399E0000 */  addi    r12, r30, 0
/* 0B9CC8 800BF268 7D8803A6 */  mtlr    r12
/* 0B9CCC 800BF26C 387C0000 */  addi    r3, r28, 0
/* 0B9CD0 800BF270 389D0000 */  addi    r4, r29, 0
/* 0B9CD4 800BF274 4E800021 */  blrl    
lbl_800BF278:
/* 0B9CD8 800BF278 80010024 */  lwz     r0, 0x24(r1)
/* 0B9CDC 800BF27C 83E1001C */  lwz     r31, 0x1c(r1)
/* 0B9CE0 800BF280 83C10018 */  lwz     r30, 0x18(r1)
/* 0B9CE4 800BF284 83A10014 */  lwz     r29, 0x14(r1)
/* 0B9CE8 800BF288 83810010 */  lwz     r28, 0x10(r1)
/* 0B9CEC 800BF28C 38210020 */  addi    r1, r1, 0x20
/* 0B9CF0 800BF290 7C0803A6 */  mtlr    r0
/* 0B9CF4 800BF294 4E800020 */  blr     

glabel CARDMountAsync
/* 0B9CF8 800BF298 7C0802A6 */  mflr    r0
/* 0B9CFC 800BF29C 90010004 */  stw     r0, 4(r1)
/* 0B9D00 800BF2A0 9421FFD0 */  stwu    r1, -0x30(r1)
/* 0B9D04 800BF2A4 BF410018 */  stmw    r26, 0x18(r1)
/* 0B9D08 800BF2A8 7C7E1B79 */  or.     r30, r3, r3
/* 0B9D0C 800BF2AC 3B440000 */  addi    r26, r4, 0
/* 0B9D10 800BF2B0 3B650000 */  addi    r27, r5, 0
/* 0B9D14 800BF2B4 3BA60000 */  addi    r29, r6, 0
/* 0B9D18 800BF2B8 4180000C */  blt     lbl_800BF2C4
/* 0B9D1C 800BF2BC 2C1E0002 */  cmpwi   r30, 2
/* 0B9D20 800BF2C0 4180000C */  blt     lbl_800BF2CC
lbl_800BF2C4:
/* 0B9D24 800BF2C4 3860FF80 */  li      r3, -128
/* 0B9D28 800BF2C8 4800015C */  b       lbl_800BF424
lbl_800BF2CC:
/* 0B9D2C 800BF2CC 3C608000 */  lis     r3, 0x8000
/* 0B9D30 800BF2D0 880330E3 */  lbz     r0, 0x30e3(r3)
/* 0B9D34 800BF2D4 54000631 */  rlwinm. r0, r0, 0, 0x18, 0x18
/* 0B9D38 800BF2D8 4182000C */  beq     lbl_800BF2E4
/* 0B9D3C 800BF2DC 3860FFFD */  li      r3, -3
/* 0B9D40 800BF2E0 48000144 */  b       lbl_800BF424
lbl_800BF2E4:
/* 0B9D44 800BF2E4 1C9E0110 */  mulli   r4, r30, 0x110
/* 0B9D48 800BF2E8 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B9D4C 800BF2EC 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B9D50 800BF2F0 7FE02214 */  add     r31, r0, r4
/* 0B9D54 800BF2F4 4BFDFA09 */  bl      OSDisableInterrupts
/* 0B9D58 800BF2F8 801F0004 */  lwz     r0, 4(r31)
/* 0B9D5C 800BF2FC 3B830000 */  addi    r28, r3, 0
/* 0B9D60 800BF300 2C00FFFF */  cmpwi   r0, -1
/* 0B9D64 800BF304 40820014 */  bne     lbl_800BF318
/* 0B9D68 800BF308 7F83E378 */  mr      r3, r28
/* 0B9D6C 800BF30C 4BFDFA19 */  bl      OSRestoreInterrupts
/* 0B9D70 800BF310 3860FFFF */  li      r3, -1
/* 0B9D74 800BF314 48000110 */  b       lbl_800BF424
lbl_800BF318:
/* 0B9D78 800BF318 801F0000 */  lwz     r0, 0(r31)
/* 0B9D7C 800BF31C 2C000000 */  cmpwi   r0, 0
/* 0B9D80 800BF320 40820024 */  bne     lbl_800BF344
/* 0B9D84 800BF324 7FC3F378 */  mr      r3, r30
/* 0B9D88 800BF328 4BFE4A29 */  bl      EXIGetState
/* 0B9D8C 800BF32C 54600739 */  rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 0B9D90 800BF330 41820014 */  beq     lbl_800BF344
/* 0B9D94 800BF334 7F83E378 */  mr      r3, r28
/* 0B9D98 800BF338 4BFDF9ED */  bl      OSRestoreInterrupts
/* 0B9D9C 800BF33C 3860FFFE */  li      r3, -2
/* 0B9DA0 800BF340 480000E4 */  b       lbl_800BF424
lbl_800BF344:
/* 0B9DA4 800BF344 3800FFFF */  li      r0, -1
/* 0B9DA8 800BF348 901F0004 */  stw     r0, 4(r31)
/* 0B9DAC 800BF34C 281D0000 */  cmplwi  r29, 0
/* 0B9DB0 800BF350 935F0080 */  stw     r26, 0x80(r31)
/* 0B9DB4 800BF354 937F00C4 */  stw     r27, 0xc4(r31)
/* 0B9DB8 800BF358 4182000C */  beq     lbl_800BF364
/* 0B9DBC 800BF35C 7FA0EB78 */  mr      r0, r29
/* 0B9DC0 800BF360 4800000C */  b       lbl_800BF36C
lbl_800BF364:
/* 0B9DC4 800BF364 3C60800C */  lis     r3, __CARDDefaultApiCallback@ha
/* 0B9DC8 800BF368 3803AD5C */  addi    r0, r3, __CARDDefaultApiCallback@l
lbl_800BF36C:
/* 0B9DCC 800BF36C 901F00D0 */  stw     r0, 0xd0(r31)
/* 0B9DD0 800BF370 38000000 */  li      r0, 0
/* 0B9DD4 800BF374 901F00CC */  stw     r0, 0xcc(r31)
/* 0B9DD8 800BF378 801F0000 */  lwz     r0, 0(r31)
/* 0B9DDC 800BF37C 2C000000 */  cmpwi   r0, 0
/* 0B9DE0 800BF380 40820034 */  bne     lbl_800BF3B4
/* 0B9DE4 800BF384 3C60800C */  lis     r3, __CARDExtHandler@ha
/* 0B9DE8 800BF388 3883AD94 */  addi    r4, r3, __CARDExtHandler@l
/* 0B9DEC 800BF38C 387E0000 */  addi    r3, r30, 0
/* 0B9DF0 800BF390 4BFE3E69 */  bl      EXIAttach
/* 0B9DF4 800BF394 2C030000 */  cmpwi   r3, 0
/* 0B9DF8 800BF398 4082001C */  bne     lbl_800BF3B4
/* 0B9DFC 800BF39C 3800FFFD */  li      r0, -3
/* 0B9E00 800BF3A0 901F0004 */  stw     r0, 4(r31)
/* 0B9E04 800BF3A4 7F83E378 */  mr      r3, r28
/* 0B9E08 800BF3A8 4BFDF97D */  bl      OSRestoreInterrupts
/* 0B9E0C 800BF3AC 3860FFFD */  li      r3, -3
/* 0B9E10 800BF3B0 48000074 */  b       lbl_800BF424
lbl_800BF3B4:
/* 0B9E14 800BF3B4 3BA00000 */  li      r29, 0
/* 0B9E18 800BF3B8 93BF0024 */  stw     r29, 0x24(r31)
/* 0B9E1C 800BF3BC 38000001 */  li      r0, 1
/* 0B9E20 800BF3C0 387E0000 */  addi    r3, r30, 0
/* 0B9E24 800BF3C4 901F0000 */  stw     r0, 0(r31)
/* 0B9E28 800BF3C8 38800000 */  li      r4, 0
/* 0B9E2C 800BF3CC 4BFE3B09 */  bl      EXISetExiCallback
/* 0B9E30 800BF3D0 387F00E0 */  addi    r3, r31, 0xe0
/* 0B9E34 800BF3D4 4BFDD609 */  bl      OSCancelAlarm
/* 0B9E38 800BF3D8 93BF0084 */  stw     r29, 0x84(r31)
/* 0B9E3C 800BF3DC 7F83E378 */  mr      r3, r28
/* 0B9E40 800BF3E0 93BF0088 */  stw     r29, 0x88(r31)
/* 0B9E44 800BF3E4 4BFDF941 */  bl      OSRestoreInterrupts
/* 0B9E48 800BF3E8 3C60800C */  lis     r3, __CARDMountCallback@ha
/* 0B9E4C 800BF3EC 3803F160 */  addi    r0, r3, __CARDMountCallback@l
/* 0B9E50 800BF3F0 3C60800C */  lis     r3, __CARDUnlockedHandler@ha
/* 0B9E54 800BF3F4 901F00DC */  stw     r0, 0xdc(r31)
/* 0B9E58 800BF3F8 38A3B02C */  addi    r5, r3, __CARDUnlockedHandler@l
/* 0B9E5C 800BF3FC 387E0000 */  addi    r3, r30, 0
/* 0B9E60 800BF400 38800000 */  li      r4, 0
/* 0B9E64 800BF404 4BFE477D */  bl      EXILock
/* 0B9E68 800BF408 2C030000 */  cmpwi   r3, 0
/* 0B9E6C 800BF40C 4082000C */  bne     lbl_800BF418
/* 0B9E70 800BF410 38600000 */  li      r3, 0
/* 0B9E74 800BF414 48000010 */  b       lbl_800BF424
lbl_800BF418:
/* 0B9E78 800BF418 93BF00DC */  stw     r29, 0xdc(r31)
/* 0B9E7C 800BF41C 7FC3F378 */  mr      r3, r30
/* 0B9E80 800BF420 4BFFF931 */  bl      DoMount
lbl_800BF424:
/* 0B9E84 800BF424 BB410018 */  lmw     r26, 0x18(r1)
/* 0B9E88 800BF428 80010034 */  lwz     r0, 0x34(r1)
/* 0B9E8C 800BF42C 38210030 */  addi    r1, r1, 0x30
/* 0B9E90 800BF430 7C0803A6 */  mtlr    r0
/* 0B9E94 800BF434 4E800020 */  blr     

glabel CARDMount
/* 0B9E98 800BF438 7C0802A6 */  mflr    r0
/* 0B9E9C 800BF43C 3CC0800C */  lis     r6, __CARDSyncCallback@ha
/* 0B9EA0 800BF440 90010004 */  stw     r0, 4(r1)
/* 0B9EA4 800BF444 38C6AD60 */  addi    r6, r6, __CARDSyncCallback@l
/* 0B9EA8 800BF448 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0B9EAC 800BF44C 93E1001C */  stw     r31, 0x1c(r1)
/* 0B9EB0 800BF450 3BE30000 */  addi    r31, r3, 0
/* 0B9EB4 800BF454 4BFFFE45 */  bl      CARDMountAsync
/* 0B9EB8 800BF458 2C030000 */  cmpwi   r3, 0
/* 0B9EBC 800BF45C 40800008 */  bge     lbl_800BF464
/* 0B9EC0 800BF460 4800000C */  b       lbl_800BF46C
lbl_800BF464:
/* 0B9EC4 800BF464 7FE3FB78 */  mr      r3, r31
/* 0B9EC8 800BF468 4BFFCAF1 */  bl      __CARDSync
lbl_800BF46C:
/* 0B9ECC 800BF46C 80010024 */  lwz     r0, 0x24(r1)
/* 0B9ED0 800BF470 83E1001C */  lwz     r31, 0x1c(r1)
/* 0B9ED4 800BF474 38210020 */  addi    r1, r1, 0x20
/* 0B9ED8 800BF478 7C0803A6 */  mtlr    r0
/* 0B9EDC 800BF47C 4E800020 */  blr     

DoUnmount:
/* 0B9EE0 800BF480 7C0802A6 */  mflr    r0
/* 0B9EE4 800BF484 90010004 */  stw     r0, 4(r1)
/* 0B9EE8 800BF488 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0B9EEC 800BF48C 93E1001C */  stw     r31, 0x1c(r1)
/* 0B9EF0 800BF490 93C10018 */  stw     r30, 0x18(r1)
/* 0B9EF4 800BF494 93A10014 */  stw     r29, 0x14(r1)
/* 0B9EF8 800BF498 3BA40000 */  addi    r29, r4, 0
/* 0B9EFC 800BF49C 93810010 */  stw     r28, 0x10(r1)
/* 0B9F00 800BF4A0 3B830000 */  addi    r28, r3, 0
/* 0B9F04 800BF4A4 1CBC0110 */  mulli   r5, r28, 0x110
/* 0B9F08 800BF4A8 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B9F0C 800BF4AC 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B9F10 800BF4B0 7FE02A14 */  add     r31, r0, r5
/* 0B9F14 800BF4B4 4BFDF849 */  bl      OSDisableInterrupts
/* 0B9F18 800BF4B8 801F0000 */  lwz     r0, 0(r31)
/* 0B9F1C 800BF4BC 3BC30000 */  addi    r30, r3, 0
/* 0B9F20 800BF4C0 2C000000 */  cmpwi   r0, 0
/* 0B9F24 800BF4C4 41820030 */  beq     lbl_800BF4F4
/* 0B9F28 800BF4C8 387C0000 */  addi    r3, r28, 0
/* 0B9F2C 800BF4CC 38800000 */  li      r4, 0
/* 0B9F30 800BF4D0 4BFE3A05 */  bl      EXISetExiCallback
/* 0B9F34 800BF4D4 7F83E378 */  mr      r3, r28
/* 0B9F38 800BF4D8 4BFE3E2D */  bl      EXIDetach
/* 0B9F3C 800BF4DC 387F00E0 */  addi    r3, r31, 0xe0
/* 0B9F40 800BF4E0 4BFDD4FD */  bl      OSCancelAlarm
/* 0B9F44 800BF4E4 38000000 */  li      r0, 0
/* 0B9F48 800BF4E8 901F0000 */  stw     r0, 0(r31)
/* 0B9F4C 800BF4EC 93BF0004 */  stw     r29, 4(r31)
/* 0B9F50 800BF4F0 901F0024 */  stw     r0, 0x24(r31)
lbl_800BF4F4:
/* 0B9F54 800BF4F4 7FC3F378 */  mr      r3, r30
/* 0B9F58 800BF4F8 4BFDF82D */  bl      OSRestoreInterrupts
/* 0B9F5C 800BF4FC 80010024 */  lwz     r0, 0x24(r1)
/* 0B9F60 800BF500 83E1001C */  lwz     r31, 0x1c(r1)
/* 0B9F64 800BF504 83C10018 */  lwz     r30, 0x18(r1)
/* 0B9F68 800BF508 83A10014 */  lwz     r29, 0x14(r1)
/* 0B9F6C 800BF50C 83810010 */  lwz     r28, 0x10(r1)
/* 0B9F70 800BF510 38210020 */  addi    r1, r1, 0x20
/* 0B9F74 800BF514 7C0803A6 */  mtlr    r0
/* 0B9F78 800BF518 4E800020 */  blr     

glabel CARDUnmount
/* 0B9F7C 800BF51C 7C0802A6 */  mflr    r0
/* 0B9F80 800BF520 90010004 */  stw     r0, 4(r1)
/* 0B9F84 800BF524 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0B9F88 800BF528 93E1001C */  stw     r31, 0x1c(r1)
/* 0B9F8C 800BF52C 3881000C */  addi    r4, r1, 0xc
/* 0B9F90 800BF530 93C10018 */  stw     r30, 0x18(r1)
/* 0B9F94 800BF534 93A10014 */  stw     r29, 0x14(r1)
/* 0B9F98 800BF538 3BA30000 */  addi    r29, r3, 0
/* 0B9F9C 800BF53C 4BFFC781 */  bl      __CARDGetControlBlock
/* 0B9FA0 800BF540 2C030000 */  cmpwi   r3, 0
/* 0B9FA4 800BF544 40800008 */  bge     lbl_800BF54C
/* 0B9FA8 800BF548 48000064 */  b       lbl_800BF5AC
lbl_800BF54C:
/* 0B9FAC 800BF54C 1C9D0110 */  mulli   r4, r29, 0x110
/* 0B9FB0 800BF550 3C608013 */  lis     r3, __CARDBlock@ha
/* 0B9FB4 800BF554 380327D0 */  addi    r0, r3, __CARDBlock@l
/* 0B9FB8 800BF558 7FC02214 */  add     r30, r0, r4
/* 0B9FBC 800BF55C 4BFDF7A1 */  bl      OSDisableInterrupts
/* 0B9FC0 800BF560 801E0000 */  lwz     r0, 0(r30)
/* 0B9FC4 800BF564 3BE30000 */  addi    r31, r3, 0
/* 0B9FC8 800BF568 2C000000 */  cmpwi   r0, 0
/* 0B9FCC 800BF56C 41820034 */  beq     lbl_800BF5A0
/* 0B9FD0 800BF570 387D0000 */  addi    r3, r29, 0
/* 0B9FD4 800BF574 38800000 */  li      r4, 0
/* 0B9FD8 800BF578 4BFE395D */  bl      EXISetExiCallback
/* 0B9FDC 800BF57C 7FA3EB78 */  mr      r3, r29
/* 0B9FE0 800BF580 4BFE3D85 */  bl      EXIDetach
/* 0B9FE4 800BF584 387E00E0 */  addi    r3, r30, 0xe0
/* 0B9FE8 800BF588 4BFDD455 */  bl      OSCancelAlarm
/* 0B9FEC 800BF58C 38600000 */  li      r3, 0
/* 0B9FF0 800BF590 907E0000 */  stw     r3, 0(r30)
/* 0B9FF4 800BF594 3800FFFD */  li      r0, -3
/* 0B9FF8 800BF598 901E0004 */  stw     r0, 4(r30)
/* 0B9FFC 800BF59C 907E0024 */  stw     r3, 0x24(r30)
lbl_800BF5A0:
/* 0BA000 800BF5A0 7FE3FB78 */  mr      r3, r31
/* 0BA004 800BF5A4 4BFDF781 */  bl      OSRestoreInterrupts
/* 0BA008 800BF5A8 38600000 */  li      r3, 0
lbl_800BF5AC:
/* 0BA00C 800BF5AC 80010024 */  lwz     r0, 0x24(r1)
/* 0BA010 800BF5B0 83E1001C */  lwz     r31, 0x1c(r1)
/* 0BA014 800BF5B4 83C10018 */  lwz     r30, 0x18(r1)
/* 0BA018 800BF5B8 83A10014 */  lwz     r29, 0x14(r1)
/* 0BA01C 800BF5BC 38210020 */  addi    r1, r1, 0x20
/* 0BA020 800BF5C0 7C0803A6 */  mtlr    r0
/* 0BA024 800BF5C4 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000F0A20 800F39A0 0020 */
SectorSizeTable:
    .long 0x00002000, 0x00004000, 0x00008000, 0x00010000, 0x00020000, 0x00040000, 0x00000000, 0x00000000

/* 000F0A40 800F39C0 0020 */
LatencyTable:
    .long 0x00000004, 0x00000008, 0x00000010, 0x00000020, 0x00000040, 0x00000080, 0x00000100, 0x00000200
