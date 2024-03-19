# OSResetSW.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009F5E8 - 0x8009F974

glabel __OSResetSWInterruptHandler
/* 09C5E8 8009F5E8 7C0802A6 */  mflr      r0
/* 09C5EC 8009F5EC 90010004 */  stw       r0, 0x4(r1)
/* 09C5F0 8009F5F0 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09C5F4 8009F5F4 93E10024 */  stw       r31, 0x24(r1)
/* 09C5F8 8009F5F8 93C10020 */  stw       r30, 0x20(r1)
/* 09C5FC 8009F5FC 93A1001C */  stw       r29, 0x1c(r1)
/* 09C600 8009F600 48001F01 */  bl        __OSGetSystemTime
/* 09C604 8009F604 3CA08000 */  lis       r5, 0x8000
/* 09C608 8009F608 908D8B5C */  stw       r4, D_8018BADC@sda21(r0)
/* 09C60C 8009F60C 800500F8 */  lwz       r0, 0xf8(r5)
/* 09C610 8009F610 3C80431C */  lis       r4, 0x431c
/* 09C614 8009F614 3884DE83 */  subi      r4, r4, 0x217d
/* 09C618 8009F618 906D8B58 */  stw       r3, D_8018BAD8@sda21(r0)
/* 09C61C 8009F61C 5400F0BE */  srwi      r0, r0, 2
/* 09C620 8009F620 7C040016 */  mulhwu    r0, r4, r0
/* 09C624 8009F624 54008BFE */  srwi      r0, r0, 15
/* 09C628 8009F628 1C000064 */  mulli     r0, r0, 0x64
/* 09C62C 8009F62C 541DE8FE */  srwi      r29, r0, 3
/* 09C630 8009F630 3BC00000 */  li        r30, 0x0
/* 09C634 8009F634 3FE0CC00 */  lis       r31, 0xcc00
lbl_8009F638:
/* 09C638 8009F638 48001EC9 */  bl        __OSGetSystemTime
/* 09C63C 8009F63C 80CD8B5C */  lwz       r6, D_8018BADC@sda21(r0)
/* 09C640 8009F640 6FC58000 */  xoris     r5, r30, 0x8000
/* 09C644 8009F644 800D8B58 */  lwz       r0, D_8018BAD8@sda21(r0)
/* 09C648 8009F648 7C862010 */  subfc     r4, r6, r4
/* 09C64C 8009F64C 7C001910 */  subfe     r0, r0, r3
/* 09C650 8009F650 6C038000 */  xoris     r3, r0, 0x8000
/* 09C654 8009F654 7C1D2010 */  subfc     r0, r29, r4
/* 09C658 8009F658 7CA51910 */  subfe     r5, r5, r3
/* 09C65C 8009F65C 7CA31910 */  subfe     r5, r3, r3
/* 09C660 8009F660 7CA500D1 */  neg.      r5, r5
/* 09C664 8009F664 41820010 */  beq       lbl_8009F674
/* 09C668 8009F668 801F3000 */  lwz       r0, 0x3000(r31)
/* 09C66C 8009F66C 540003DF */  rlwinm.   r0, r0, 0, 15, 15
/* 09C670 8009F670 4182FFC8 */  beq       lbl_8009F638
lbl_8009F674:
/* 09C674 8009F674 3C60CC00 */  lis       r3, 0xcc00
/* 09C678 8009F678 80033000 */  lwz       r0, 0x3000(r3)
/* 09C67C 8009F67C 540003DF */  rlwinm.   r0, r0, 0, 15, 15
/* 09C680 8009F680 40820034 */  bne       lbl_8009F6B4
/* 09C684 8009F684 38000001 */  li        r0, 0x1
/* 09C688 8009F688 900D8B44 */  stw       r0, D_8018BAC4@sda21(r0)
/* 09C68C 8009F68C 38600200 */  li        r3, 0x200
/* 09C690 8009F690 900D8B48 */  stw       r0, D_8018BAC8@sda21(r0)
/* 09C694 8009F694 4BFFEF7D */  bl        __OSMaskInterrupts
/* 09C698 8009F698 818D8B40 */  lwz       r12, D_8018BAC0@sda21(r0)
/* 09C69C 8009F69C 280C0000 */  cmplwi    r12, 0x0
/* 09C6A0 8009F6A0 41820014 */  beq       lbl_8009F6B4
/* 09C6A4 8009F6A4 38000000 */  li        r0, 0x0
/* 09C6A8 8009F6A8 7D8803A6 */  mtlr      r12
/* 09C6AC 8009F6AC 900D8B40 */  stw       r0, D_8018BAC0@sda21(r0)
/* 09C6B0 8009F6B0 4E800021 */  blrl
lbl_8009F6B4:
/* 09C6B4 8009F6B4 38000002 */  li        r0, 0x2
/* 09C6B8 8009F6B8 3C60CC00 */  lis       r3, 0xcc00
/* 09C6BC 8009F6BC 90033000 */  stw       r0, 0x3000(r3)
/* 09C6C0 8009F6C0 8001002C */  lwz       r0, 0x2c(r1)
/* 09C6C4 8009F6C4 83E10024 */  lwz       r31, 0x24(r1)
/* 09C6C8 8009F6C8 83C10020 */  lwz       r30, 0x20(r1)
/* 09C6CC 8009F6CC 83A1001C */  lwz       r29, 0x1c(r1)
/* 09C6D0 8009F6D0 38210028 */  addi      r1, r1, 0x28
/* 09C6D4 8009F6D4 7C0803A6 */  mtlr      r0
/* 09C6D8 8009F6D8 4E800020 */  blr

glabel OSGetResetButtonState
/* 09C6DC 8009F6DC 7C0802A6 */  mflr      r0
/* 09C6E0 8009F6E0 90010004 */  stw       r0, 0x4(r1)
/* 09C6E4 8009F6E4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09C6E8 8009F6E8 93E10014 */  stw       r31, 0x14(r1)
/* 09C6EC 8009F6EC 93C10010 */  stw       r30, 0x10(r1)
/* 09C6F0 8009F6F0 93A1000C */  stw       r29, 0xc(r1)
/* 09C6F4 8009F6F4 4BFFEB55 */  bl        OSDisableInterrupts
/* 09C6F8 8009F6F8 7C7E1B78 */  mr        r30, r3
/* 09C6FC 8009F6FC 48001E05 */  bl        __OSGetSystemTime
/* 09C700 8009F700 3CA0CC00 */  lis       r5, 0xcc00
/* 09C704 8009F704 80053000 */  lwz       r0, 0x3000(r5)
/* 09C708 8009F708 540003DF */  rlwinm.   r0, r0, 0, 15, 15
/* 09C70C 8009F70C 408200DC */  bne       lbl_8009F7E8
/* 09C710 8009F710 800D8B44 */  lwz       r0, D_8018BAC4@sda21(r0)
/* 09C714 8009F714 2C000000 */  cmpwi     r0, 0x0
/* 09C718 8009F718 40820040 */  bne       lbl_8009F758
/* 09C71C 8009F71C 800D8B50 */  lwz       r0, D_8018BAD0@sda21(r0)
/* 09C720 8009F720 38C00000 */  li        r6, 0x0
/* 09C724 8009F724 80AD8B54 */  lwz       r5, D_8018BAD4@sda21(r0)
/* 09C728 8009F728 38E00001 */  li        r7, 0x1
/* 09C72C 8009F72C 7C003278 */  xor       r0, r0, r6
/* 09C730 8009F730 7CA53278 */  xor       r5, r5, r6
/* 09C734 8009F734 90ED8B44 */  stw       r7, D_8018BAC4@sda21(r0)
/* 09C738 8009F738 7CA00379 */  or.       r0, r5, r0
/* 09C73C 8009F73C 41820008 */  beq       lbl_8009F744
/* 09C740 8009F740 48000008 */  b         lbl_8009F748
lbl_8009F744:
/* 09C744 8009F744 7CC73378 */  mr        r7, r6
lbl_8009F748:
/* 09C748 8009F748 908D8B5C */  stw       r4, D_8018BADC@sda21(r0)
/* 09C74C 8009F74C 7CFD3B78 */  mr        r29, r7
/* 09C750 8009F750 906D8B58 */  stw       r3, D_8018BAD8@sda21(r0)
/* 09C754 8009F754 48000148 */  b         lbl_8009F89C
lbl_8009F758:
/* 09C758 8009F758 800D8B50 */  lwz       r0, D_8018BAD0@sda21(r0)
/* 09C75C 8009F75C 39200000 */  li        r9, 0x0
/* 09C760 8009F760 80AD8B54 */  lwz       r5, D_8018BAD4@sda21(r0)
/* 09C764 8009F764 39400001 */  li        r10, 0x1
/* 09C768 8009F768 7C004A78 */  xor       r0, r0, r9
/* 09C76C 8009F76C 7CA54A78 */  xor       r5, r5, r9
/* 09C770 8009F770 7CA00379 */  or.       r0, r5, r0
/* 09C774 8009F774 40820058 */  bne       lbl_8009F7CC
/* 09C778 8009F778 3CC08000 */  lis       r6, 0x8000
/* 09C77C 8009F77C 80AD8B5C */  lwz       r5, D_8018BADC@sda21(r0)
/* 09C780 8009F780 80E600F8 */  lwz       r7, 0xf8(r6)
/* 09C784 8009F784 3CC0431C */  lis       r6, 0x431c
/* 09C788 8009F788 3906DE83 */  subi      r8, r6, 0x217d
/* 09C78C 8009F78C 800D8B58 */  lwz       r0, D_8018BAD8@sda21(r0)
/* 09C790 8009F790 54E6F0BE */  srwi      r6, r7, 2
/* 09C794 8009F794 7CC83016 */  mulhwu    r6, r8, r6
/* 09C798 8009F798 54C68BFE */  srwi      r6, r6, 15
/* 09C79C 8009F79C 1CC60064 */  mulli     r6, r6, 0x64
/* 09C7A0 8009F7A0 7CE52010 */  subfc     r7, r5, r4
/* 09C7A4 8009F7A4 7C001910 */  subfe     r0, r0, r3
/* 09C7A8 8009F7A8 54C8E8FE */  srwi      r8, r6, 3
/* 09C7AC 8009F7AC 6C058000 */  xoris     r5, r0, 0x8000
/* 09C7B0 8009F7B0 6D268000 */  xoris     r6, r9, 0x8000
/* 09C7B4 8009F7B4 7C074010 */  subfc     r0, r7, r8
/* 09C7B8 8009F7B8 7CA53110 */  subfe     r5, r5, r6
/* 09C7BC 8009F7BC 7CA63110 */  subfe     r5, r6, r6
/* 09C7C0 8009F7C0 7CA500D1 */  neg.      r5, r5
/* 09C7C4 8009F7C4 40820008 */  bne       lbl_8009F7CC
/* 09C7C8 8009F7C8 7D2A4B78 */  mr        r10, r9
lbl_8009F7CC:
/* 09C7CC 8009F7CC 2C0A0000 */  cmpwi     r10, 0x0
/* 09C7D0 8009F7D0 4182000C */  beq       lbl_8009F7DC
/* 09C7D4 8009F7D4 38000001 */  li        r0, 0x1
/* 09C7D8 8009F7D8 48000008 */  b         lbl_8009F7E0
lbl_8009F7DC:
/* 09C7DC 8009F7DC 38000000 */  li        r0, 0x0
lbl_8009F7E0:
/* 09C7E0 8009F7E0 7C1D0378 */  mr        r29, r0
/* 09C7E4 8009F7E4 480000B8 */  b         lbl_8009F89C
lbl_8009F7E8:
/* 09C7E8 8009F7E8 800D8B44 */  lwz       r0, D_8018BAC4@sda21(r0)
/* 09C7EC 8009F7EC 2C000000 */  cmpwi     r0, 0x0
/* 09C7F0 8009F7F0 41820034 */  beq       lbl_8009F824
/* 09C7F4 8009F7F4 80AD8B48 */  lwz       r5, D_8018BAC8@sda21(r0)
/* 09C7F8 8009F7F8 38000000 */  li        r0, 0x0
/* 09C7FC 8009F7FC 900D8B44 */  stw       r0, D_8018BAC4@sda21(r0)
/* 09C800 8009F800 2C050000 */  cmpwi     r5, 0x0
/* 09C804 8009F804 3BA50000 */  addi      r29, r5, 0x0
/* 09C808 8009F808 41820010 */  beq       lbl_8009F818
/* 09C80C 8009F80C 908D8B54 */  stw       r4, D_8018BAD4@sda21(r0)
/* 09C810 8009F810 906D8B50 */  stw       r3, D_8018BAD0@sda21(r0)
/* 09C814 8009F814 48000088 */  b         lbl_8009F89C
lbl_8009F818:
/* 09C818 8009F818 900D8B54 */  stw       r0, D_8018BAD4@sda21(r0)
/* 09C81C 8009F81C 900D8B50 */  stw       r0, D_8018BAD0@sda21(r0)
/* 09C820 8009F820 4800007C */  b         lbl_8009F89C
lbl_8009F824:
/* 09C824 8009F824 80CD8B50 */  lwz       r6, D_8018BAD0@sda21(r0)
/* 09C828 8009F828 39000000 */  li        r8, 0x0
/* 09C82C 8009F82C 80ED8B54 */  lwz       r7, D_8018BAD4@sda21(r0)
/* 09C830 8009F830 7CC04278 */  xor       r0, r6, r8
/* 09C834 8009F834 7CE54278 */  xor       r5, r7, r8
/* 09C838 8009F838 7CA00379 */  or.       r0, r5, r0
/* 09C83C 8009F83C 41820050 */  beq       lbl_8009F88C
/* 09C840 8009F840 3CA08000 */  lis       r5, 0x8000
/* 09C844 8009F844 800500F8 */  lwz       r0, 0xf8(r5)
/* 09C848 8009F848 3CA01062 */  lis       r5, 0x1062
/* 09C84C 8009F84C 38A54DD3 */  addi      r5, r5, 0x4dd3
/* 09C850 8009F850 5400F0BE */  srwi      r0, r0, 2
/* 09C854 8009F854 7C050016 */  mulhwu    r0, r5, r0
/* 09C858 8009F858 5400D1BE */  srwi      r0, r0, 6
/* 09C85C 8009F85C 1C000028 */  mulli     r0, r0, 0x28
/* 09C860 8009F860 7CE72010 */  subfc     r7, r7, r4
/* 09C864 8009F864 7CA61910 */  subfe     r5, r6, r3
/* 09C868 8009F868 6CA68000 */  xoris     r6, r5, 0x8000
/* 09C86C 8009F86C 6D058000 */  xoris     r5, r8, 0x8000
/* 09C870 8009F870 7C003810 */  subfc     r0, r0, r7
/* 09C874 8009F874 7CA53110 */  subfe     r5, r5, r6
/* 09C878 8009F878 7CA63110 */  subfe     r5, r6, r6
/* 09C87C 8009F87C 7CA500D1 */  neg.      r5, r5
/* 09C880 8009F880 4182000C */  beq       lbl_8009F88C
/* 09C884 8009F884 3BA00001 */  li        r29, 0x1
/* 09C888 8009F888 48000014 */  b         lbl_8009F89C
lbl_8009F88C:
/* 09C88C 8009F88C 38000000 */  li        r0, 0x0
/* 09C890 8009F890 900D8B54 */  stw       r0, D_8018BAD4@sda21(r0)
/* 09C894 8009F894 3BA00000 */  li        r29, 0x0
/* 09C898 8009F898 900D8B50 */  stw       r0, D_8018BAD0@sda21(r0)
lbl_8009F89C:
/* 09C89C 8009F89C 3CA08000 */  lis       r5, 0x8000
/* 09C8A0 8009F8A0 93AD8B48 */  stw       r29, D_8018BAC8@sda21(r0)
/* 09C8A4 8009F8A4 880530E3 */  lbz       r0, 0x30e3(r5)
/* 09C8A8 8009F8A8 540006BF */  clrlwi.   r0, r0, 26
/* 09C8AC 8009F8AC 418200A0 */  beq       lbl_8009F94C
/* 09C8B0 8009F8B0 1D40003C */  mulli     r10, r0, 0x3c
/* 09C8B4 8009F8B4 800500F8 */  lwz       r0, 0xf8(r5)
/* 09C8B8 8009F8B8 812D8AEC */  lwz       r9, __OSStartTime+0x4@sda21(r0)
/* 09C8BC 8009F8BC 810D8AE8 */  lwz       r8, __OSStartTime@sda21(r0)
/* 09C8C0 8009F8C0 5406F0BE */  srwi      r6, r0, 2
/* 09C8C4 8009F8C4 7D40FE70 */  srawi     r0, r10, 31
/* 09C8C8 8009F8C8 7CE031D6 */  mullw     r7, r0, r6
/* 09C8CC 8009F8CC 7C0A3016 */  mulhwu    r0, r10, r6
/* 09C8D0 8009F8D0 7CAA31D6 */  mullw     r5, r10, r6
/* 09C8D4 8009F8D4 7D292814 */  addc      r9, r9, r5
/* 09C8D8 8009F8D8 3BE00000 */  li        r31, 0x0
/* 09C8DC 8009F8DC 7CE70214 */  add       r7, r7, r0
/* 09C8E0 8009F8E0 7C0AF9D6 */  mullw     r0, r10, r31
/* 09C8E4 8009F8E4 7C070214 */  add       r0, r7, r0
/* 09C8E8 8009F8E8 7D080114 */  adde      r8, r8, r0
/* 09C8EC 8009F8EC 6D078000 */  xoris     r7, r8, 0x8000
/* 09C8F0 8009F8F0 6C658000 */  xoris     r5, r3, 0x8000
/* 09C8F4 8009F8F4 7C044810 */  subfc     r0, r4, r9
/* 09C8F8 8009F8F8 7CA53910 */  subfe     r5, r5, r7
/* 09C8FC 8009F8FC 7CA73910 */  subfe     r5, r7, r7
/* 09C900 8009F900 7CA500D1 */  neg.      r5, r5
/* 09C904 8009F904 41820048 */  beq       lbl_8009F94C
/* 09C908 8009F908 7C892010 */  subfc     r4, r9, r4
/* 09C90C 8009F90C 7C681910 */  subfe     r3, r8, r3
/* 09C910 8009F910 38A00000 */  li        r5, 0x0
/* 09C914 8009F914 4802CCE1 */  bl        __div2i
/* 09C918 8009F918 38A00000 */  li        r5, 0x0
/* 09C91C 8009F91C 38C00002 */  li        r6, 0x2
/* 09C920 8009F920 4802CCD5 */  bl        __div2i
/* 09C924 8009F924 38000001 */  li        r0, 0x1
/* 09C928 8009F928 7C840038 */  and       r4, r4, r0
/* 09C92C 8009F92C 7C60F838 */  and       r0, r3, r31
/* 09C930 8009F930 7C83FA78 */  xor       r3, r4, r31
/* 09C934 8009F934 7C00FA78 */  xor       r0, r0, r31
/* 09C938 8009F938 7C600379 */  or.       r0, r3, r0
/* 09C93C 8009F93C 4082000C */  bne       lbl_8009F948
/* 09C940 8009F940 3BA00001 */  li        r29, 0x1
/* 09C944 8009F944 48000008 */  b         lbl_8009F94C
lbl_8009F948:
/* 09C948 8009F948 3BA00000 */  li        r29, 0x0
lbl_8009F94C:
/* 09C94C 8009F94C 7FC3F378 */  mr        r3, r30
/* 09C950 8009F950 4BFFE921 */  bl        OSRestoreInterrupts
/* 09C954 8009F954 7FA3EB78 */  mr        r3, r29
/* 09C958 8009F958 8001001C */  lwz       r0, 0x1c(r1)
/* 09C95C 8009F95C 83E10014 */  lwz       r31, 0x14(r1)
/* 09C960 8009F960 83C10010 */  lwz       r30, 0x10(r1)
/* 09C964 8009F964 83A1000C */  lwz       r29, 0xc(r1)
/* 09C968 8009F968 38210018 */  addi      r1, r1, 0x18
/* 09C96C 8009F96C 7C0803A6 */  mtlr      r0
/* 09C970 8009F970 4E800020 */  blr

# 0x8018BAC0 - 0x8018BAE0
.section .sbss, "wa"

glabel D_8018BAC0
	.skip 0x4

glabel D_8018BAC4
	.skip 0x4

glabel D_8018BAC8
	.skip 0x8

glabel D_8018BAD0
	.skip 0x4

glabel D_8018BAD4
	.skip 0x4

glabel D_8018BAD8
	.skip 0x4

glabel D_8018BADC
	.skip 0x4
