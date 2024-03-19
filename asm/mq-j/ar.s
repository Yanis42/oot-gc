# ar.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B75F8 - 0x800B905C

glabel ARGetDMAStatus
/* 0B45F8 800B75F8 7C0802A6 */  mflr      r0
/* 0B45FC 800B75FC 90010004 */  stw       r0, 0x4(r1)
/* 0B4600 800B7600 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0B4604 800B7604 93E1000C */  stw       r31, 0xc(r1)
/* 0B4608 800B7608 4BFE6C41 */  bl        OSDisableInterrupts
/* 0B460C 800B760C 3C80CC00 */  lis       r4, 0xcc00
/* 0B4610 800B7610 A004500A */  lhz       r0, 0x500a(r4)
/* 0B4614 800B7614 541F05AC */  rlwinm    r31, r0, 0, 22, 22
/* 0B4618 800B7618 4BFE6C59 */  bl        OSRestoreInterrupts
/* 0B461C 800B761C 7FE3FB78 */  mr        r3, r31
/* 0B4620 800B7620 80010014 */  lwz       r0, 0x14(r1)
/* 0B4624 800B7624 83E1000C */  lwz       r31, 0xc(r1)
/* 0B4628 800B7628 38210010 */  addi      r1, r1, 0x10
/* 0B462C 800B762C 7C0803A6 */  mtlr      r0
/* 0B4630 800B7630 4E800020 */  blr

glabel ARStartDMA
/* 0B4634 800B7634 7C0802A6 */  mflr      r0
/* 0B4638 800B7638 90010004 */  stw       r0, 0x4(r1)
/* 0B463C 800B763C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B4640 800B7640 93E10024 */  stw       r31, 0x24(r1)
/* 0B4644 800B7644 3BE60000 */  addi      r31, r6, 0x0
/* 0B4648 800B7648 93C10020 */  stw       r30, 0x20(r1)
/* 0B464C 800B764C 3BC50000 */  addi      r30, r5, 0x0
/* 0B4650 800B7650 93A1001C */  stw       r29, 0x1c(r1)
/* 0B4654 800B7654 3BA30000 */  addi      r29, r3, 0x0
/* 0B4658 800B7658 93810018 */  stw       r28, 0x18(r1)
/* 0B465C 800B765C 3B840000 */  addi      r28, r4, 0x0
/* 0B4660 800B7660 4BFE6BE9 */  bl        OSDisableInterrupts
/* 0B4664 800B7664 3CC0CC00 */  lis       r6, 0xcc00
/* 0B4668 800B7668 A0065020 */  lhz       r0, 0x5020(r6)
/* 0B466C 800B766C 39065000 */  addi      r8, r6, 0x5000
/* 0B4670 800B7670 39265000 */  addi      r9, r6, 0x5000
/* 0B4674 800B7674 5404002A */  clrrwi    r4, r0, 10
/* 0B4678 800B7678 5780843E */  srwi      r0, r28, 16
/* 0B467C 800B767C 7C800378 */  or        r0, r4, r0
/* 0B4680 800B7680 B0065020 */  sth       r0, 0x5020(r6)
/* 0B4684 800B7684 5780043E */  clrlwi    r0, r28, 16
/* 0B4688 800B7688 38865000 */  addi      r4, r6, 0x5000
/* 0B468C 800B768C A0A65022 */  lhz       r5, 0x5022(r6)
/* 0B4690 800B7690 54A506DE */  rlwinm    r5, r5, 0, 27, 15
/* 0B4694 800B7694 7CA00378 */  or        r0, r5, r0
/* 0B4698 800B7698 B0065022 */  sth       r0, 0x5022(r6)
/* 0B469C 800B769C 38A65000 */  addi      r5, r6, 0x5000
/* 0B46A0 800B76A0 57C0843E */  srwi      r0, r30, 16
/* 0B46A4 800B76A4 A0C65024 */  lhz       r6, 0x5024(r6)
/* 0B46A8 800B76A8 54C6002A */  clrrwi    r6, r6, 10
/* 0B46AC 800B76AC 7CC00378 */  or        r0, r6, r0
/* 0B46B0 800B76B0 B0080024 */  sth       r0, 0x24(r8)
/* 0B46B4 800B76B4 57C0043E */  clrlwi    r0, r30, 16
/* 0B46B8 800B76B8 A0C90026 */  lhz       r6, 0x26(r9)
/* 0B46BC 800B76BC 54C606DE */  rlwinm    r6, r6, 0, 27, 15
/* 0B46C0 800B76C0 7CC00378 */  or        r0, r6, r0
/* 0B46C4 800B76C4 B0090026 */  sth       r0, 0x26(r9)
/* 0B46C8 800B76C8 57E6843E */  srwi      r6, r31, 16
/* 0B46CC 800B76CC 57E0043E */  clrlwi    r0, r31, 16
/* 0B46D0 800B76D0 A0E40028 */  lhz       r7, 0x28(r4)
/* 0B46D4 800B76D4 54E7045E */  rlwinm    r7, r7, 0, 17, 15
/* 0B46D8 800B76D8 53A77820 */  rlwimi    r7, r29, 15, 0, 16
/* 0B46DC 800B76DC B0E40028 */  sth       r7, 0x28(r4)
/* 0B46E0 800B76E0 A0E40028 */  lhz       r7, 0x28(r4)
/* 0B46E4 800B76E4 54E7002A */  clrrwi    r7, r7, 10
/* 0B46E8 800B76E8 7CE63378 */  or        r6, r7, r6
/* 0B46EC 800B76EC B0C40028 */  sth       r6, 0x28(r4)
/* 0B46F0 800B76F0 A085002A */  lhz       r4, 0x2a(r5)
/* 0B46F4 800B76F4 548406DE */  rlwinm    r4, r4, 0, 27, 15
/* 0B46F8 800B76F8 7C800378 */  or        r0, r4, r0
/* 0B46FC 800B76FC B005002A */  sth       r0, 0x2a(r5)
/* 0B4700 800B7700 4BFE6B71 */  bl        OSRestoreInterrupts
/* 0B4704 800B7704 8001002C */  lwz       r0, 0x2c(r1)
/* 0B4708 800B7708 83E10024 */  lwz       r31, 0x24(r1)
/* 0B470C 800B770C 83C10020 */  lwz       r30, 0x20(r1)
/* 0B4710 800B7710 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B4714 800B7714 83810018 */  lwz       r28, 0x18(r1)
/* 0B4718 800B7718 38210028 */  addi      r1, r1, 0x28
/* 0B471C 800B771C 7C0803A6 */  mtlr      r0
/* 0B4720 800B7720 4E800020 */  blr

glabel ARInit
/* 0B4724 800B7724 7C0802A6 */  mflr      r0
/* 0B4728 800B7728 90010004 */  stw       r0, 0x4(r1)
/* 0B472C 800B772C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B4730 800B7730 93E1001C */  stw       r31, 0x1c(r1)
/* 0B4734 800B7734 93C10018 */  stw       r30, 0x18(r1)
/* 0B4738 800B7738 3BC40000 */  addi      r30, r4, 0x0
/* 0B473C 800B773C 93A10014 */  stw       r29, 0x14(r1)
/* 0B4740 800B7740 3BA30000 */  addi      r29, r3, 0x0
/* 0B4744 800B7744 800D8E2C */  lwz       r0, D_8018BDAC@sda21(r0)
/* 0B4748 800B7748 2C000001 */  cmpwi     r0, 0x1
/* 0B474C 800B774C 4082000C */  bne       lbl_800B7758
/* 0B4750 800B7750 38604000 */  li        r3, 0x4000
/* 0B4754 800B7754 48000078 */  b         lbl_800B77CC
lbl_800B7758:
/* 0B4758 800B7758 806D8840 */  lwz       r3, D_8018B7C0@sda21(r0)
/* 0B475C 800B775C 4BFE4529 */  bl        OSRegisterVersion
/* 0B4760 800B7760 4BFE6AE9 */  bl        OSDisableInterrupts
/* 0B4764 800B7764 38000000 */  li        r0, 0x0
/* 0B4768 800B7768 3C80800B */  lis       r4, __ARHandler@ha
/* 0B476C 800B776C 900D8E10 */  stw       r0, D_8018BD90@sda21(r0)
/* 0B4770 800B7770 3BE30000 */  addi      r31, r3, 0x0
/* 0B4774 800B7774 388477F0 */  addi      r4, r4, __ARHandler@l
/* 0B4778 800B7778 38600006 */  li        r3, 0x6
/* 0B477C 800B777C 4BFE6B19 */  bl        __OSSetInterruptHandler
/* 0B4780 800B7780 3C600200 */  lis       r3, 0x200
/* 0B4784 800B7784 4BFE6F15 */  bl        __OSUnmaskInterrupts
/* 0B4788 800B7788 38004000 */  li        r0, 0x4000
/* 0B478C 800B778C 93CD8E24 */  stw       r30, D_8018BDA4@sda21(r0)
/* 0B4790 800B7790 3C60CC00 */  lis       r3, 0xcc00
/* 0B4794 800B7794 900D8E20 */  stw       r0, D_8018BDA0@sda21(r0)
/* 0B4798 800B7798 38835000 */  addi      r4, r3, 0x5000
/* 0B479C 800B779C 93AD8E28 */  stw       r29, D_8018BDA8@sda21(r0)
/* 0B47A0 800B77A0 A004001A */  lhz       r0, 0x1a(r4)
/* 0B47A4 800B77A4 A063501A */  lhz       r3, 0x501a(r3)
/* 0B47A8 800B77A8 5400002E */  clrrwi    r0, r0, 8
/* 0B47AC 800B77AC 5060063E */  rlwimi    r0, r3, 0, 24, 31
/* 0B47B0 800B77B0 B004001A */  sth       r0, 0x1a(r4)
/* 0B47B4 800B77B4 480000B5 */  bl        __ARChecksize
/* 0B47B8 800B77B8 38000001 */  li        r0, 0x1
/* 0B47BC 800B77BC 900D8E2C */  stw       r0, D_8018BDAC@sda21(r0)
/* 0B47C0 800B77C0 7FE3FB78 */  mr        r3, r31
/* 0B47C4 800B77C4 4BFE6AAD */  bl        OSRestoreInterrupts
/* 0B47C8 800B77C8 806D8E20 */  lwz       r3, D_8018BDA0@sda21(r0)
lbl_800B77CC:
/* 0B47CC 800B77CC 80010024 */  lwz       r0, 0x24(r1)
/* 0B47D0 800B77D0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B47D4 800B77D4 83C10018 */  lwz       r30, 0x18(r1)
/* 0B47D8 800B77D8 83A10014 */  lwz       r29, 0x14(r1)
/* 0B47DC 800B77DC 38210020 */  addi      r1, r1, 0x20
/* 0B47E0 800B77E0 7C0803A6 */  mtlr      r0
/* 0B47E4 800B77E4 4E800020 */  blr

glabel ARGetBaseAddress
/* 0B47E8 800B77E8 38604000 */  li        r3, 0x4000
/* 0B47EC 800B77EC 4E800020 */  blr

glabel __ARHandler
/* 0B47F0 800B77F0 7C0802A6 */  mflr      r0
/* 0B47F4 800B77F4 3C60CC00 */  lis       r3, 0xcc00
/* 0B47F8 800B77F8 90010004 */  stw       r0, 0x4(r1)
/* 0B47FC 800B77FC 38635000 */  addi      r3, r3, 0x5000
/* 0B4800 800B7800 3800FF77 */  li        r0, -0x89
/* 0B4804 800B7804 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0B4808 800B7808 93E102DC */  stw       r31, 0x2dc(r1)
/* 0B480C 800B780C 3BE40000 */  addi      r31, r4, 0x0
/* 0B4810 800B7810 A0A3000A */  lhz       r5, 0xa(r3)
/* 0B4814 800B7814 7CA00038 */  and       r0, r5, r0
/* 0B4818 800B7818 60000020 */  ori       r0, r0, 0x20
/* 0B481C 800B781C B003000A */  sth       r0, 0xa(r3)
/* 0B4820 800B7820 38610010 */  addi      r3, r1, 0x10
/* 0B4824 800B7824 4BFE5ECD */  bl        OSClearContext
/* 0B4828 800B7828 38610010 */  addi      r3, r1, 0x10
/* 0B482C 800B782C 4BFE5CFD */  bl        OSSetCurrentContext
/* 0B4830 800B7830 818D8E10 */  lwz       r12, D_8018BD90@sda21(r0)
/* 0B4834 800B7834 280C0000 */  cmplwi    r12, 0x0
/* 0B4838 800B7838 4182000C */  beq       lbl_800B7844
/* 0B483C 800B783C 7D8803A6 */  mtlr      r12
/* 0B4840 800B7840 4E800021 */  blrl
lbl_800B7844:
/* 0B4844 800B7844 38610010 */  addi      r3, r1, 0x10
/* 0B4848 800B7848 4BFE5EA9 */  bl        OSClearContext
/* 0B484C 800B784C 7FE3FB78 */  mr        r3, r31
/* 0B4850 800B7850 4BFE5CD9 */  bl        OSSetCurrentContext
/* 0B4854 800B7854 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0B4858 800B7858 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0B485C 800B785C 382102E0 */  addi      r1, r1, 0x2e0
/* 0B4860 800B7860 7C0803A6 */  mtlr      r0
/* 0B4864 800B7864 4E800020 */  blr

glabel __ARChecksize
/* 0B4868 800B7868 7C0802A6 */  mflr      r0
/* 0B486C 800B786C 3C60CC00 */  lis       r3, 0xcc00
/* 0B4870 800B7870 90010004 */  stw       r0, 0x4(r1)
/* 0B4874 800B7874 38635000 */  addi      r3, r3, 0x5000
/* 0B4878 800B7878 9421FD40 */  stwu      r1, -0x2c0(r1)
/* 0B487C 800B787C BDC10278 */  stmw      r14, 0x278(r1)
lbl_800B7880:
/* 0B4880 800B7880 A0030016 */  lhz       r0, 0x16(r3)
/* 0B4884 800B7884 540007FF */  clrlwi.   r0, r0, 31
/* 0B4888 800B7888 4182FFF8 */  beq       lbl_800B7880
/* 0B488C 800B788C 3EE0CC00 */  lis       r23, 0xcc00
/* 0B4890 800B7890 38175000 */  addi      r0, r23, 0x5000
/* 0B4894 800B7894 90010248 */  stw       r0, 0x248(r1)
/* 0B4898 800B7898 3C600100 */  lis       r3, 0x100
/* 0B489C 800B789C 380101F3 */  addi      r0, r1, 0x1f3
/* 0B48A0 800B78A0 906D8E18 */  stw       r3, D_8018BD98@sda21(r0)
/* 0B48A4 800B78A4 3CA0DEAE */  lis       r5, 0xdeae
/* 0B48A8 800B78A8 80810248 */  lwz       r4, 0x248(r1)
/* 0B48AC 800B78AC 54160034 */  clrrwi    r22, r0, 5
/* 0B48B0 800B78B0 380101B3 */  addi      r0, r1, 0x1b3
/* 0B48B4 800B78B4 A0840012 */  lhz       r4, 0x12(r4)
/* 0B48B8 800B78B8 38E100B3 */  addi      r7, r1, 0xb3
/* 0B48BC 800B78BC 54E70034 */  clrrwi    r7, r7, 5
/* 0B48C0 800B78C0 54840032 */  clrrwi    r4, r4, 6
/* 0B48C4 800B78C4 90E1021C */  stw       r7, 0x21c(r1)
/* 0B48C8 800B78C8 60860023 */  ori       r6, r4, 0x23
/* 0B48CC 800B78CC 80810248 */  lwz       r4, 0x248(r1)
/* 0B48D0 800B78D0 39410173 */  addi      r10, r1, 0x173
/* 0B48D4 800B78D4 B0C40012 */  sth       r6, 0x12(r4)
/* 0B48D8 800B78D8 38A5BEEF */  subi      r5, r5, 0x4111
/* 0B48DC 800B78DC 3C80BAD1 */  lis       r4, 0xbad1
/* 0B48E0 800B78E0 54150034 */  clrrwi    r21, r0, 5
/* 0B48E4 800B78E4 90B60000 */  stw       r5, 0x0(r22)
/* 0B48E8 800B78E8 3804BAD0 */  subi      r0, r4, 0x4530
/* 0B48EC 800B78EC 90150000 */  stw       r0, 0x0(r21)
/* 0B48F0 800B78F0 38810033 */  addi      r4, r1, 0x33
/* 0B48F4 800B78F4 38C10073 */  addi      r6, r1, 0x73
/* 0B48F8 800B78F8 90B60004 */  stw       r5, 0x4(r22)
/* 0B48FC 800B78FC 54840034 */  clrrwi    r4, r4, 5
/* 0B4900 800B7900 54C60034 */  clrrwi    r6, r6, 5
/* 0B4904 800B7904 90150004 */  stw       r0, 0x4(r21)
/* 0B4908 800B7908 39210133 */  addi      r9, r1, 0x133
/* 0B490C 800B790C 390100F3 */  addi      r8, r1, 0xf3
/* 0B4910 800B7910 90B60008 */  stw       r5, 0x8(r22)
/* 0B4914 800B7914 3A630000 */  addi      r19, r3, 0x0
/* 0B4918 800B7918 38760000 */  addi      r3, r22, 0x0
/* 0B491C 800B791C 90150008 */  stw       r0, 0x8(r21)
/* 0B4920 800B7920 55580034 */  clrrwi    r24, r10, 5
/* 0B4924 800B7924 553C0034 */  clrrwi    r28, r9, 5
/* 0B4928 800B7928 90B6000C */  stw       r5, 0xc(r22)
/* 0B492C 800B792C 55140034 */  clrrwi    r20, r8, 5
/* 0B4930 800B7930 9015000C */  stw       r0, 0xc(r21)
/* 0B4934 800B7934 90B60010 */  stw       r5, 0x10(r22)
/* 0B4938 800B7938 90150010 */  stw       r0, 0x10(r21)
/* 0B493C 800B793C 90B60014 */  stw       r5, 0x14(r22)
/* 0B4940 800B7940 90150014 */  stw       r0, 0x14(r21)
/* 0B4944 800B7944 90B60018 */  stw       r5, 0x18(r22)
/* 0B4948 800B7948 90150018 */  stw       r0, 0x18(r21)
/* 0B494C 800B794C 90B6001C */  stw       r5, 0x1c(r22)
/* 0B4950 800B7950 80A10248 */  lwz       r5, 0x248(r1)
/* 0B4954 800B7954 90810214 */  stw       r4, 0x214(r1)
/* 0B4958 800B7958 38800003 */  li        r4, 0x3
/* 0B495C 800B795C 38A50012 */  addi      r5, r5, 0x12
/* 0B4960 800B7960 B0810270 */  sth       r4, 0x270(r1)
/* 0B4964 800B7964 38800020 */  li        r4, 0x20
/* 0B4968 800B7968 90C10218 */  stw       r6, 0x218(r1)
/* 0B496C 800B796C 9015001C */  stw       r0, 0x1c(r21)
/* 0B4970 800B7970 90A10248 */  stw       r5, 0x248(r1)
/* 0B4974 800B7974 4BFE5351 */  bl        DCFlushRange
/* 0B4978 800B7978 38750000 */  addi      r3, r21, 0x0
/* 0B497C 800B797C 38800020 */  li        r4, 0x20
/* 0B4980 800B7980 4BFE5345 */  bl        DCFlushRange
/* 0B4984 800B7984 38000000 */  li        r0, 0x0
/* 0B4988 800B7988 900D8E1C */  stw       r0, D_8018BD9C@sda21(r0)
/* 0B498C 800B798C 387C0000 */  addi      r3, r28, 0x0
/* 0B4990 800B7990 38800020 */  li        r4, 0x20
/* 0B4994 800B7994 4BFE5305 */  bl        DCInvalidateRange
/* 0B4998 800B7998 5783843E */  srwi      r3, r28, 16
/* 0B499C 800B799C A0175020 */  lhz       r0, 0x5020(r23)
/* 0B49A0 800B79A0 9061023C */  stw       r3, 0x23c(r1)
/* 0B49A4 800B79A4 3B375000 */  addi      r25, r23, 0x5000
/* 0B49A8 800B79A8 5403002A */  clrrwi    r3, r0, 10
/* 0B49AC 800B79AC 8001023C */  lwz       r0, 0x23c(r1)
/* 0B49B0 800B79B0 3B575000 */  addi      r26, r23, 0x5000
/* 0B49B4 800B79B4 5671843E */  srwi      r17, r19, 16
/* 0B49B8 800B79B8 7C600378 */  or        r0, r3, r0
/* 0B49BC 800B79BC B4190020 */  sthu      r0, 0x20(r25)
/* 0B49C0 800B79C0 5783043E */  clrlwi    r3, r28, 16
/* 0B49C4 800B79C4 3B775000 */  addi      r27, r23, 0x5000
/* 0B49C8 800B79C8 A0175022 */  lhz       r0, 0x5022(r23)
/* 0B49CC 800B79CC 5672043E */  clrlwi    r18, r19, 16
/* 0B49D0 800B79D0 9061024C */  stw       r3, 0x24c(r1)
/* 0B49D4 800B79D4 3B975000 */  addi      r28, r23, 0x5000
/* 0B49D8 800B79D8 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B49DC 800B79DC 8001024C */  lwz       r0, 0x24c(r1)
/* 0B49E0 800B79E0 3BD75000 */  addi      r30, r23, 0x5000
/* 0B49E4 800B79E4 3BB75000 */  addi      r29, r23, 0x5000
/* 0B49E8 800B79E8 7C600378 */  or        r0, r3, r0
/* 0B49EC 800B79EC B41A0022 */  sthu      r0, 0x22(r26)
/* 0B49F0 800B79F0 A0175024 */  lhz       r0, 0x5024(r23)
/* 0B49F4 800B79F4 5400002A */  clrrwi    r0, r0, 10
/* 0B49F8 800B79F8 7C008B78 */  or        r0, r0, r17
/* 0B49FC 800B79FC B41B0024 */  sthu      r0, 0x24(r27)
/* 0B4A00 800B7A00 A0175026 */  lhz       r0, 0x5026(r23)
/* 0B4A04 800B7A04 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4A08 800B7A08 7C009378 */  or        r0, r0, r18
/* 0B4A0C 800B7A0C B41C0026 */  sthu      r0, 0x26(r28)
/* 0B4A10 800B7A10 A0175028 */  lhz       r0, 0x5028(r23)
/* 0B4A14 800B7A14 60008000 */  ori       r0, r0, 0x8000
/* 0B4A18 800B7A18 B0175028 */  sth       r0, 0x5028(r23)
/* 0B4A1C 800B7A1C A0175028 */  lhz       r0, 0x5028(r23)
/* 0B4A20 800B7A20 5400002A */  clrrwi    r0, r0, 10
/* 0B4A24 800B7A24 60000000 */  nop
/* 0B4A28 800B7A28 B41E0028 */  sthu      r0, 0x28(r30)
/* 0B4A2C 800B7A2C A017502A */  lhz       r0, 0x502a(r23)
/* 0B4A30 800B7A30 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4A34 800B7A34 60000020 */  ori       r0, r0, 0x20
/* 0B4A38 800B7A38 B41D002A */  sthu      r0, 0x2a(r29)
lbl_800B7A3C:
/* 0B4A3C 800B7A3C 3BF75000 */  addi      r31, r23, 0x5000
/* 0B4A40 800B7A40 A41F000A */  lhzu      r0, 0xa(r31)
/* 0B4A44 800B7A44 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4A48 800B7A48 4082FFF4 */  bne       lbl_800B7A3C
/* 0B4A4C 800B7A4C A07F0000 */  lhz       r3, 0x0(r31)
/* 0B4A50 800B7A50 3800FF77 */  li        r0, -0x89
/* 0B4A54 800B7A54 7C600038 */  and       r0, r3, r0
/* 0B4A58 800B7A58 60000020 */  ori       r0, r0, 0x20
/* 0B4A5C 800B7A5C B01F0000 */  sth       r0, 0x0(r31)
/* 0B4A60 800B7A60 4BFE385D */  bl        fn_8009B2BC
/* 0B4A64 800B7A64 56C0843E */  srwi      r0, r22, 16
/* 0B4A68 800B7A68 A0790000 */  lhz       r3, 0x0(r25)
/* 0B4A6C 800B7A6C 90010244 */  stw       r0, 0x244(r1)
/* 0B4A70 800B7A70 5463002A */  clrrwi    r3, r3, 10
/* 0B4A74 800B7A74 80010244 */  lwz       r0, 0x244(r1)
/* 0B4A78 800B7A78 7C600378 */  or        r0, r3, r0
/* 0B4A7C 800B7A7C B0190000 */  sth       r0, 0x0(r25)
/* 0B4A80 800B7A80 56C0043E */  clrlwi    r0, r22, 16
/* 0B4A84 800B7A84 90010250 */  stw       r0, 0x250(r1)
/* 0B4A88 800B7A88 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4A8C 800B7A8C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4A90 800B7A90 80010250 */  lwz       r0, 0x250(r1)
/* 0B4A94 800B7A94 7C600378 */  or        r0, r3, r0
/* 0B4A98 800B7A98 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4A9C 800B7A9C A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4AA0 800B7AA0 5400002A */  clrrwi    r0, r0, 10
/* 0B4AA4 800B7AA4 7C008B78 */  or        r0, r0, r17
/* 0B4AA8 800B7AA8 B01B0000 */  sth       r0, 0x0(r27)
/* 0B4AAC 800B7AAC A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4AB0 800B7AB0 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4AB4 800B7AB4 7C009378 */  or        r0, r0, r18
/* 0B4AB8 800B7AB8 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4ABC 800B7ABC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4AC0 800B7AC0 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B4AC4 800B7AC4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4AC8 800B7AC8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4ACC 800B7ACC 5400002A */  clrrwi    r0, r0, 10
/* 0B4AD0 800B7AD0 60000000 */  nop
/* 0B4AD4 800B7AD4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4AD8 800B7AD8 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B4ADC 800B7ADC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4AE0 800B7AE0 60000020 */  ori       r0, r0, 0x20
/* 0B4AE4 800B7AE4 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B7AE8:
/* 0B4AE8 800B7AE8 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4AEC 800B7AEC 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4AF0 800B7AF0 4082FFF8 */  bne       lbl_800B7AE8
/* 0B4AF4 800B7AF4 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4AF8 800B7AF8 3880FF77 */  li        r4, -0x89
/* 0B4AFC 800B7AFC 38780000 */  addi      r3, r24, 0x0
/* 0B4B00 800B7B00 7C002038 */  and       r0, r0, r4
/* 0B4B04 800B7B04 60000020 */  ori       r0, r0, 0x20
/* 0B4B08 800B7B08 B01F0000 */  sth       r0, 0x0(r31)
/* 0B4B0C 800B7B0C 38800000 */  li        r4, 0x0
/* 0B4B10 800B7B10 38A00020 */  li        r5, 0x20
/* 0B4B14 800B7B14 4BF4D80D */  bl        memset
/* 0B4B18 800B7B18 38780000 */  addi      r3, r24, 0x0
/* 0B4B1C 800B7B1C 38800020 */  li        r4, 0x20
/* 0B4B20 800B7B20 4BFE51A5 */  bl        DCFlushRange
/* 0B4B24 800B7B24 5700843E */  srwi      r0, r24, 16
/* 0B4B28 800B7B28 A0790000 */  lhz       r3, 0x0(r25)
/* 0B4B2C 800B7B2C 90010240 */  stw       r0, 0x240(r1)
/* 0B4B30 800B7B30 5463002A */  clrrwi    r3, r3, 10
/* 0B4B34 800B7B34 80010240 */  lwz       r0, 0x240(r1)
/* 0B4B38 800B7B38 7C600378 */  or        r0, r3, r0
/* 0B4B3C 800B7B3C B0190000 */  sth       r0, 0x0(r25)
/* 0B4B40 800B7B40 5700043E */  clrlwi    r0, r24, 16
/* 0B4B44 800B7B44 90010254 */  stw       r0, 0x254(r1)
/* 0B4B48 800B7B48 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4B4C 800B7B4C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4B50 800B7B50 80010254 */  lwz       r0, 0x254(r1)
/* 0B4B54 800B7B54 7C600378 */  or        r0, r3, r0
/* 0B4B58 800B7B58 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4B5C 800B7B5C A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4B60 800B7B60 5400002A */  clrrwi    r0, r0, 10
/* 0B4B64 800B7B64 7C008B78 */  or        r0, r0, r17
/* 0B4B68 800B7B68 B01B0000 */  sth       r0, 0x0(r27)
/* 0B4B6C 800B7B6C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4B70 800B7B70 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4B74 800B7B74 7C009378 */  or        r0, r0, r18
/* 0B4B78 800B7B78 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4B7C 800B7B7C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4B80 800B7B80 60008000 */  ori       r0, r0, 0x8000
/* 0B4B84 800B7B84 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4B88 800B7B88 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4B8C 800B7B8C 5400002A */  clrrwi    r0, r0, 10
/* 0B4B90 800B7B90 60000000 */  nop
/* 0B4B94 800B7B94 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4B98 800B7B98 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B4B9C 800B7B9C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4BA0 800B7BA0 60000020 */  ori       r0, r0, 0x20
/* 0B4BA4 800B7BA4 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B7BA8:
/* 0B4BA8 800B7BA8 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4BAC 800B7BAC 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4BB0 800B7BB0 4082FFF8 */  bne       lbl_800B7BA8
/* 0B4BB4 800B7BB4 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B4BB8 800B7BB8 3800FF77 */  li        r0, -0x89
/* 0B4BBC 800B7BBC 7C600038 */  and       r0, r3, r0
/* 0B4BC0 800B7BC0 60000020 */  ori       r0, r0, 0x20
/* 0B4BC4 800B7BC4 B01F0000 */  sth       r0, 0x0(r31)
/* 0B4BC8 800B7BC8 4BFE36F5 */  bl        fn_8009B2BC
/* 0B4BCC 800B7BCC 80780000 */  lwz       r3, 0x0(r24)
/* 0B4BD0 800B7BD0 80160000 */  lwz       r0, 0x0(r22)
/* 0B4BD4 800B7BD4 7C030040 */  cmplw     r3, r0
/* 0B4BD8 800B7BD8 40821464 */  bne       lbl_800B903C
/* 0B4BDC 800B7BDC 38740000 */  addi      r3, r20, 0x0
/* 0B4BE0 800B7BE0 38800020 */  li        r4, 0x20
/* 0B4BE4 800B7BE4 4BFE50B5 */  bl        DCInvalidateRange
/* 0B4BE8 800B7BE8 5680843E */  srwi      r0, r20, 16
/* 0B4BEC 800B7BEC A0990000 */  lhz       r4, 0x0(r25)
/* 0B4BF0 800B7BF0 90010234 */  stw       r0, 0x234(r1)
/* 0B4BF4 800B7BF4 3C730020 */  addis     r3, r19, 0x20
/* 0B4BF8 800B7BF8 5484002A */  clrrwi    r4, r4, 10
/* 0B4BFC 800B7BFC 80010234 */  lwz       r0, 0x234(r1)
/* 0B4C00 800B7C00 5470843E */  srwi      r16, r3, 16
/* 0B4C04 800B7C04 5477043E */  clrlwi    r23, r3, 16
/* 0B4C08 800B7C08 7C800378 */  or        r0, r4, r0
/* 0B4C0C 800B7C0C B0190000 */  sth       r0, 0x0(r25)
/* 0B4C10 800B7C10 5680043E */  clrlwi    r0, r20, 16
/* 0B4C14 800B7C14 90010258 */  stw       r0, 0x258(r1)
/* 0B4C18 800B7C18 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4C1C 800B7C1C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4C20 800B7C20 80010258 */  lwz       r0, 0x258(r1)
/* 0B4C24 800B7C24 7C600378 */  or        r0, r3, r0
/* 0B4C28 800B7C28 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4C2C 800B7C2C A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4C30 800B7C30 5400002A */  clrrwi    r0, r0, 10
/* 0B4C34 800B7C34 7C008378 */  or        r0, r0, r16
/* 0B4C38 800B7C38 B01B0000 */  sth       r0, 0x0(r27)
/* 0B4C3C 800B7C3C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4C40 800B7C40 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4C44 800B7C44 7C00BB78 */  or        r0, r0, r23
/* 0B4C48 800B7C48 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4C4C 800B7C4C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4C50 800B7C50 60008000 */  ori       r0, r0, 0x8000
/* 0B4C54 800B7C54 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4C58 800B7C58 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4C5C 800B7C5C 5400002A */  clrrwi    r0, r0, 10
/* 0B4C60 800B7C60 60000000 */  nop
/* 0B4C64 800B7C64 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4C68 800B7C68 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B4C6C 800B7C6C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4C70 800B7C70 60000020 */  ori       r0, r0, 0x20
/* 0B4C74 800B7C74 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B7C78:
/* 0B4C78 800B7C78 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4C7C 800B7C7C 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4C80 800B7C80 4082FFF8 */  bne       lbl_800B7C78
/* 0B4C84 800B7C84 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B4C88 800B7C88 3800FF77 */  li        r0, -0x89
/* 0B4C8C 800B7C8C 7C600038 */  and       r0, r3, r0
/* 0B4C90 800B7C90 60000020 */  ori       r0, r0, 0x20
/* 0B4C94 800B7C94 B01F0000 */  sth       r0, 0x0(r31)
/* 0B4C98 800B7C98 4BFE3625 */  bl        fn_8009B2BC
/* 0B4C9C 800B7C9C 8061021C */  lwz       r3, 0x21c(r1)
/* 0B4CA0 800B7CA0 38800020 */  li        r4, 0x20
/* 0B4CA4 800B7CA4 4BFE4FF5 */  bl        DCInvalidateRange
/* 0B4CA8 800B7CA8 8001021C */  lwz       r0, 0x21c(r1)
/* 0B4CAC 800B7CAC 3C730100 */  addis     r3, r19, 0x100
/* 0B4CB0 800B7CB0 A0990000 */  lhz       r4, 0x0(r25)
/* 0B4CB4 800B7CB4 546E843E */  srwi      r14, r3, 16
/* 0B4CB8 800B7CB8 5400843E */  srwi      r0, r0, 16
/* 0B4CBC 800B7CBC 9001022C */  stw       r0, 0x22c(r1)
/* 0B4CC0 800B7CC0 5484002A */  clrrwi    r4, r4, 10
/* 0B4CC4 800B7CC4 546F043E */  clrlwi    r15, r3, 16
/* 0B4CC8 800B7CC8 8001022C */  lwz       r0, 0x22c(r1)
/* 0B4CCC 800B7CCC 7C800378 */  or        r0, r4, r0
/* 0B4CD0 800B7CD0 B0190000 */  sth       r0, 0x0(r25)
/* 0B4CD4 800B7CD4 8001021C */  lwz       r0, 0x21c(r1)
/* 0B4CD8 800B7CD8 5400043E */  clrlwi    r0, r0, 16
/* 0B4CDC 800B7CDC 9001025C */  stw       r0, 0x25c(r1)
/* 0B4CE0 800B7CE0 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4CE4 800B7CE4 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4CE8 800B7CE8 8001025C */  lwz       r0, 0x25c(r1)
/* 0B4CEC 800B7CEC 7C600378 */  or        r0, r3, r0
/* 0B4CF0 800B7CF0 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4CF4 800B7CF4 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4CF8 800B7CF8 5400002A */  clrrwi    r0, r0, 10
/* 0B4CFC 800B7CFC 7C007378 */  or        r0, r0, r14
/* 0B4D00 800B7D00 B01B0000 */  sth       r0, 0x0(r27)
/* 0B4D04 800B7D04 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4D08 800B7D08 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4D0C 800B7D0C 7C007B78 */  or        r0, r0, r15
/* 0B4D10 800B7D10 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4D14 800B7D14 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4D18 800B7D18 60008000 */  ori       r0, r0, 0x8000
/* 0B4D1C 800B7D1C B01E0000 */  sth       r0, 0x0(r30)
/* 0B4D20 800B7D20 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4D24 800B7D24 5400002A */  clrrwi    r0, r0, 10
/* 0B4D28 800B7D28 60000000 */  nop
/* 0B4D2C 800B7D2C B01E0000 */  sth       r0, 0x0(r30)
/* 0B4D30 800B7D30 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B4D34 800B7D34 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4D38 800B7D38 60000020 */  ori       r0, r0, 0x20
/* 0B4D3C 800B7D3C B01D0000 */  sth       r0, 0x0(r29)
lbl_800B7D40:
/* 0B4D40 800B7D40 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4D44 800B7D44 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4D48 800B7D48 4082FFF8 */  bne       lbl_800B7D40
/* 0B4D4C 800B7D4C A07F0000 */  lhz       r3, 0x0(r31)
/* 0B4D50 800B7D50 3800FF77 */  li        r0, -0x89
/* 0B4D54 800B7D54 7C600038 */  and       r0, r3, r0
/* 0B4D58 800B7D58 60000020 */  ori       r0, r0, 0x20
/* 0B4D5C 800B7D5C B01F0000 */  sth       r0, 0x0(r31)
/* 0B4D60 800B7D60 4BFE355D */  bl        fn_8009B2BC
/* 0B4D64 800B7D64 80610218 */  lwz       r3, 0x218(r1)
/* 0B4D68 800B7D68 38800020 */  li        r4, 0x20
/* 0B4D6C 800B7D6C 4BFE4F2D */  bl        DCInvalidateRange
/* 0B4D70 800B7D70 80010218 */  lwz       r0, 0x218(r1)
/* 0B4D74 800B7D74 38730200 */  addi      r3, r19, 0x200
/* 0B4D78 800B7D78 A0990000 */  lhz       r4, 0x0(r25)
/* 0B4D7C 800B7D7C 5400843E */  srwi      r0, r0, 16
/* 0B4D80 800B7D80 90010224 */  stw       r0, 0x224(r1)
/* 0B4D84 800B7D84 5484002A */  clrrwi    r4, r4, 10
/* 0B4D88 800B7D88 80010224 */  lwz       r0, 0x224(r1)
/* 0B4D8C 800B7D8C 7C800378 */  or        r0, r4, r0
/* 0B4D90 800B7D90 B0190000 */  sth       r0, 0x0(r25)
/* 0B4D94 800B7D94 5460843E */  srwi      r0, r3, 16
/* 0B4D98 800B7D98 5463043E */  clrlwi    r3, r3, 16
/* 0B4D9C 800B7D9C 90010230 */  stw       r0, 0x230(r1)
/* 0B4DA0 800B7DA0 80010218 */  lwz       r0, 0x218(r1)
/* 0B4DA4 800B7DA4 90610264 */  stw       r3, 0x264(r1)
/* 0B4DA8 800B7DA8 5400043E */  clrlwi    r0, r0, 16
/* 0B4DAC 800B7DAC 90010260 */  stw       r0, 0x260(r1)
/* 0B4DB0 800B7DB0 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4DB4 800B7DB4 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4DB8 800B7DB8 80010260 */  lwz       r0, 0x260(r1)
/* 0B4DBC 800B7DBC 7C600378 */  or        r0, r3, r0
/* 0B4DC0 800B7DC0 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4DC4 800B7DC4 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4DC8 800B7DC8 5403002A */  clrrwi    r3, r0, 10
/* 0B4DCC 800B7DCC 80010230 */  lwz       r0, 0x230(r1)
/* 0B4DD0 800B7DD0 7C600378 */  or        r0, r3, r0
/* 0B4DD4 800B7DD4 B01B0000 */  sth       r0, 0x0(r27)
/* 0B4DD8 800B7DD8 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4DDC 800B7DDC 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4DE0 800B7DE0 80010264 */  lwz       r0, 0x264(r1)
/* 0B4DE4 800B7DE4 7C600378 */  or        r0, r3, r0
/* 0B4DE8 800B7DE8 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4DEC 800B7DEC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4DF0 800B7DF0 60008000 */  ori       r0, r0, 0x8000
/* 0B4DF4 800B7DF4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4DF8 800B7DF8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4DFC 800B7DFC 5400002A */  clrrwi    r0, r0, 10
/* 0B4E00 800B7E00 60000000 */  nop
/* 0B4E04 800B7E04 B01E0000 */  sth       r0, 0x0(r30)
/* 0B4E08 800B7E08 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B4E0C 800B7E0C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4E10 800B7E10 60000020 */  ori       r0, r0, 0x20
/* 0B4E14 800B7E14 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B7E18:
/* 0B4E18 800B7E18 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4E1C 800B7E1C 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4E20 800B7E20 4082FFF8 */  bne       lbl_800B7E18
/* 0B4E24 800B7E24 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B4E28 800B7E28 3800FF77 */  li        r0, -0x89
/* 0B4E2C 800B7E2C 7C600038 */  and       r0, r3, r0
/* 0B4E30 800B7E30 60000020 */  ori       r0, r0, 0x20
/* 0B4E34 800B7E34 B01F0000 */  sth       r0, 0x0(r31)
/* 0B4E38 800B7E38 4BFE3485 */  bl        fn_8009B2BC
/* 0B4E3C 800B7E3C 80610214 */  lwz       r3, 0x214(r1)
/* 0B4E40 800B7E40 38800020 */  li        r4, 0x20
/* 0B4E44 800B7E44 4BFE4E55 */  bl        DCInvalidateRange
/* 0B4E48 800B7E48 80010214 */  lwz       r0, 0x214(r1)
/* 0B4E4C 800B7E4C 3C730040 */  addis     r3, r19, 0x40
/* 0B4E50 800B7E50 A0990000 */  lhz       r4, 0x0(r25)
/* 0B4E54 800B7E54 5400843E */  srwi      r0, r0, 16
/* 0B4E58 800B7E58 90010220 */  stw       r0, 0x220(r1)
/* 0B4E5C 800B7E5C 5484002A */  clrrwi    r4, r4, 10
/* 0B4E60 800B7E60 80010220 */  lwz       r0, 0x220(r1)
/* 0B4E64 800B7E64 7C800378 */  or        r0, r4, r0
/* 0B4E68 800B7E68 B0190000 */  sth       r0, 0x0(r25)
/* 0B4E6C 800B7E6C 5460843E */  srwi      r0, r3, 16
/* 0B4E70 800B7E70 5463043E */  clrlwi    r3, r3, 16
/* 0B4E74 800B7E74 90010228 */  stw       r0, 0x228(r1)
/* 0B4E78 800B7E78 80010214 */  lwz       r0, 0x214(r1)
/* 0B4E7C 800B7E7C 9061026C */  stw       r3, 0x26c(r1)
/* 0B4E80 800B7E80 5400043E */  clrlwi    r0, r0, 16
/* 0B4E84 800B7E84 90010268 */  stw       r0, 0x268(r1)
/* 0B4E88 800B7E88 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4E8C 800B7E8C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4E90 800B7E90 80010268 */  lwz       r0, 0x268(r1)
/* 0B4E94 800B7E94 7C600378 */  or        r0, r3, r0
/* 0B4E98 800B7E98 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4E9C 800B7E9C A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4EA0 800B7EA0 5403002A */  clrrwi    r3, r0, 10
/* 0B4EA4 800B7EA4 80010228 */  lwz       r0, 0x228(r1)
/* 0B4EA8 800B7EA8 7C600378 */  or        r0, r3, r0
/* 0B4EAC 800B7EAC B01B0000 */  sth       r0, 0x0(r27)
/* 0B4EB0 800B7EB0 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4EB4 800B7EB4 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4EB8 800B7EB8 8001026C */  lwz       r0, 0x26c(r1)
/* 0B4EBC 800B7EBC 7C600378 */  or        r0, r3, r0
/* 0B4EC0 800B7EC0 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4EC4 800B7EC4 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4EC8 800B7EC8 60008000 */  ori       r0, r0, 0x8000
/* 0B4ECC 800B7ECC B01E0000 */  sth       r0, 0x0(r30)
/* 0B4ED0 800B7ED0 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4ED4 800B7ED4 5400002A */  clrrwi    r0, r0, 10
/* 0B4ED8 800B7ED8 60000000 */  nop
/* 0B4EDC 800B7EDC B01E0000 */  sth       r0, 0x0(r30)
/* 0B4EE0 800B7EE0 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B4EE4 800B7EE4 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4EE8 800B7EE8 60000020 */  ori       r0, r0, 0x20
/* 0B4EEC 800B7EEC B01D0000 */  sth       r0, 0x0(r29)
lbl_800B7EF0:
/* 0B4EF0 800B7EF0 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4EF4 800B7EF4 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4EF8 800B7EF8 4082FFF8 */  bne       lbl_800B7EF0
/* 0B4EFC 800B7EFC A07F0000 */  lhz       r3, 0x0(r31)
/* 0B4F00 800B7F00 3800FF77 */  li        r0, -0x89
/* 0B4F04 800B7F04 7C600038 */  and       r0, r3, r0
/* 0B4F08 800B7F08 60000020 */  ori       r0, r0, 0x20
/* 0B4F0C 800B7F0C B01F0000 */  sth       r0, 0x0(r31)
/* 0B4F10 800B7F10 4BFE33AD */  bl        fn_8009B2BC
/* 0B4F14 800B7F14 56A0843E */  srwi      r0, r21, 16
/* 0B4F18 800B7F18 A0790000 */  lhz       r3, 0x0(r25)
/* 0B4F1C 800B7F1C 90010238 */  stw       r0, 0x238(r1)
/* 0B4F20 800B7F20 56B4043E */  clrlwi    r20, r21, 16
/* 0B4F24 800B7F24 5463002A */  clrrwi    r3, r3, 10
/* 0B4F28 800B7F28 80010238 */  lwz       r0, 0x238(r1)
/* 0B4F2C 800B7F2C 7C600378 */  or        r0, r3, r0
/* 0B4F30 800B7F30 B0190000 */  sth       r0, 0x0(r25)
/* 0B4F34 800B7F34 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4F38 800B7F38 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4F3C 800B7F3C 7C00A378 */  or        r0, r0, r20
/* 0B4F40 800B7F40 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4F44 800B7F44 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4F48 800B7F48 5400002A */  clrrwi    r0, r0, 10
/* 0B4F4C 800B7F4C 7C008378 */  or        r0, r0, r16
/* 0B4F50 800B7F50 B01B0000 */  sth       r0, 0x0(r27)
/* 0B4F54 800B7F54 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4F58 800B7F58 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4F5C 800B7F5C 7C00BB78 */  or        r0, r0, r23
/* 0B4F60 800B7F60 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4F64 800B7F64 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4F68 800B7F68 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B4F6C 800B7F6C B01E0000 */  sth       r0, 0x0(r30)
/* 0B4F70 800B7F70 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4F74 800B7F74 5400002A */  clrrwi    r0, r0, 10
/* 0B4F78 800B7F78 60000000 */  nop
/* 0B4F7C 800B7F7C B01E0000 */  sth       r0, 0x0(r30)
/* 0B4F80 800B7F80 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B4F84 800B7F84 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4F88 800B7F88 60000020 */  ori       r0, r0, 0x20
/* 0B4F8C 800B7F8C B01D0000 */  sth       r0, 0x0(r29)
lbl_800B7F90:
/* 0B4F90 800B7F90 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B4F94 800B7F94 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B4F98 800B7F98 4082FFF8 */  bne       lbl_800B7F90
/* 0B4F9C 800B7F9C A07F0000 */  lhz       r3, 0x0(r31)
/* 0B4FA0 800B7FA0 3800FF77 */  li        r0, -0x89
/* 0B4FA4 800B7FA4 7C600038 */  and       r0, r3, r0
/* 0B4FA8 800B7FA8 60000020 */  ori       r0, r0, 0x20
/* 0B4FAC 800B7FAC B01F0000 */  sth       r0, 0x0(r31)
/* 0B4FB0 800B7FB0 A0190000 */  lhz       r0, 0x0(r25)
/* 0B4FB4 800B7FB4 5403002A */  clrrwi    r3, r0, 10
/* 0B4FB8 800B7FB8 80010244 */  lwz       r0, 0x244(r1)
/* 0B4FBC 800B7FBC 7C600378 */  or        r0, r3, r0
/* 0B4FC0 800B7FC0 B0190000 */  sth       r0, 0x0(r25)
/* 0B4FC4 800B7FC4 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B4FC8 800B7FC8 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B4FCC 800B7FCC 80010250 */  lwz       r0, 0x250(r1)
/* 0B4FD0 800B7FD0 7C600378 */  or        r0, r3, r0
/* 0B4FD4 800B7FD4 B01A0000 */  sth       r0, 0x0(r26)
/* 0B4FD8 800B7FD8 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B4FDC 800B7FDC 5400002A */  clrrwi    r0, r0, 10
/* 0B4FE0 800B7FE0 7C008B78 */  or        r0, r0, r17
/* 0B4FE4 800B7FE4 B01B0000 */  sth       r0, 0x0(r27)
/* 0B4FE8 800B7FE8 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B4FEC 800B7FEC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B4FF0 800B7FF0 7C009378 */  or        r0, r0, r18
/* 0B4FF4 800B7FF4 B01C0000 */  sth       r0, 0x0(r28)
/* 0B4FF8 800B7FF8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B4FFC 800B7FFC 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5000 800B8000 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5004 800B8004 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5008 800B8008 5400002A */  clrrwi    r0, r0, 10
/* 0B500C 800B800C 60000000 */  nop
/* 0B5010 800B8010 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5014 800B8014 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5018 800B8018 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B501C 800B801C 60000020 */  ori       r0, r0, 0x20
/* 0B5020 800B8020 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8024:
/* 0B5024 800B8024 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5028 800B8028 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B502C 800B802C 4082FFF8 */  bne       lbl_800B8024
/* 0B5030 800B8030 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5034 800B8034 3880FF77 */  li        r4, -0x89
/* 0B5038 800B8038 38780000 */  addi      r3, r24, 0x0
/* 0B503C 800B803C 7C002038 */  and       r0, r0, r4
/* 0B5040 800B8040 60000020 */  ori       r0, r0, 0x20
/* 0B5044 800B8044 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5048 800B8048 38800000 */  li        r4, 0x0
/* 0B504C 800B804C 38A00020 */  li        r5, 0x20
/* 0B5050 800B8050 4BF4D2D1 */  bl        memset
/* 0B5054 800B8054 38780000 */  addi      r3, r24, 0x0
/* 0B5058 800B8058 38800020 */  li        r4, 0x20
/* 0B505C 800B805C 4BFE4C69 */  bl        DCFlushRange
/* 0B5060 800B8060 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5064 800B8064 5403002A */  clrrwi    r3, r0, 10
/* 0B5068 800B8068 80010240 */  lwz       r0, 0x240(r1)
/* 0B506C 800B806C 7C600378 */  or        r0, r3, r0
/* 0B5070 800B8070 B0190000 */  sth       r0, 0x0(r25)
/* 0B5074 800B8074 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5078 800B8078 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B507C 800B807C 80010254 */  lwz       r0, 0x254(r1)
/* 0B5080 800B8080 7C600378 */  or        r0, r3, r0
/* 0B5084 800B8084 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5088 800B8088 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B508C 800B808C 5400002A */  clrrwi    r0, r0, 10
/* 0B5090 800B8090 7C008378 */  or        r0, r0, r16
/* 0B5094 800B8094 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5098 800B8098 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B509C 800B809C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B50A0 800B80A0 7C00BB78 */  or        r0, r0, r23
/* 0B50A4 800B80A4 B01C0000 */  sth       r0, 0x0(r28)
/* 0B50A8 800B80A8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B50AC 800B80AC 60008000 */  ori       r0, r0, 0x8000
/* 0B50B0 800B80B0 B01E0000 */  sth       r0, 0x0(r30)
/* 0B50B4 800B80B4 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B50B8 800B80B8 5400002A */  clrrwi    r0, r0, 10
/* 0B50BC 800B80BC 60000000 */  nop
/* 0B50C0 800B80C0 B01E0000 */  sth       r0, 0x0(r30)
/* 0B50C4 800B80C4 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B50C8 800B80C8 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B50CC 800B80CC 60000020 */  ori       r0, r0, 0x20
/* 0B50D0 800B80D0 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B80D4:
/* 0B50D4 800B80D4 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B50D8 800B80D8 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B50DC 800B80DC 4082FFF8 */  bne       lbl_800B80D4
/* 0B50E0 800B80E0 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B50E4 800B80E4 3800FF77 */  li        r0, -0x89
/* 0B50E8 800B80E8 7C600038 */  and       r0, r3, r0
/* 0B50EC 800B80EC 60000020 */  ori       r0, r0, 0x20
/* 0B50F0 800B80F0 B01F0000 */  sth       r0, 0x0(r31)
/* 0B50F4 800B80F4 4BFE31C9 */  bl        fn_8009B2BC
/* 0B50F8 800B80F8 80780000 */  lwz       r3, 0x0(r24)
/* 0B50FC 800B80FC 80160000 */  lwz       r0, 0x0(r22)
/* 0B5100 800B8100 7C030040 */  cmplw     r3, r0
/* 0B5104 800B8104 408200A8 */  bne       lbl_800B81AC
/* 0B5108 800B8108 A0190000 */  lhz       r0, 0x0(r25)
/* 0B510C 800B810C 5403002A */  clrrwi    r3, r0, 10
/* 0B5110 800B8110 8001023C */  lwz       r0, 0x23c(r1)
/* 0B5114 800B8114 7C600378 */  or        r0, r3, r0
/* 0B5118 800B8118 B0190000 */  sth       r0, 0x0(r25)
/* 0B511C 800B811C A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5120 800B8120 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5124 800B8124 8001024C */  lwz       r0, 0x24c(r1)
/* 0B5128 800B8128 7C600378 */  or        r0, r3, r0
/* 0B512C 800B812C B01A0000 */  sth       r0, 0x0(r26)
/* 0B5130 800B8130 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5134 800B8134 5400002A */  clrrwi    r0, r0, 10
/* 0B5138 800B8138 7C008B78 */  or        r0, r0, r17
/* 0B513C 800B813C B01B0000 */  sth       r0, 0x0(r27)
/* 0B5140 800B8140 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5144 800B8144 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5148 800B8148 7C009378 */  or        r0, r0, r18
/* 0B514C 800B814C B01C0000 */  sth       r0, 0x0(r28)
/* 0B5150 800B8150 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5154 800B8154 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5158 800B8158 B01E0000 */  sth       r0, 0x0(r30)
/* 0B515C 800B815C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5160 800B8160 5400002A */  clrrwi    r0, r0, 10
/* 0B5164 800B8164 60000000 */  nop
/* 0B5168 800B8168 B01E0000 */  sth       r0, 0x0(r30)
/* 0B516C 800B816C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5170 800B8170 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5174 800B8174 60000020 */  ori       r0, r0, 0x20
/* 0B5178 800B8178 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B817C:
/* 0B517C 800B817C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5180 800B8180 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5184 800B8184 4082FFF8 */  bne       lbl_800B817C
/* 0B5188 800B8188 A09F0000 */  lhz       r4, 0x0(r31)
/* 0B518C 800B818C 3860FF77 */  li        r3, -0x89
/* 0B5190 800B8190 3C000020 */  lis       r0, 0x20
/* 0B5194 800B8194 7C831838 */  and       r3, r4, r3
/* 0B5198 800B8198 60630020 */  ori       r3, r3, 0x20
/* 0B519C 800B819C B07F0000 */  sth       r3, 0x0(r31)
/* 0B51A0 800B81A0 3E730020 */  addis     r19, r19, 0x20
/* 0B51A4 800B81A4 900D8E1C */  stw       r0, D_8018BD9C@sda21(r0)
/* 0B51A8 800B81A8 48000E78 */  b         lbl_800B9020
lbl_800B81AC:
/* 0B51AC 800B81AC A0190000 */  lhz       r0, 0x0(r25)
/* 0B51B0 800B81B0 5403002A */  clrrwi    r3, r0, 10
/* 0B51B4 800B81B4 80010238 */  lwz       r0, 0x238(r1)
/* 0B51B8 800B81B8 7C600378 */  or        r0, r3, r0
/* 0B51BC 800B81BC B0190000 */  sth       r0, 0x0(r25)
/* 0B51C0 800B81C0 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B51C4 800B81C4 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B51C8 800B81C8 7C00A378 */  or        r0, r0, r20
/* 0B51CC 800B81CC B01A0000 */  sth       r0, 0x0(r26)
/* 0B51D0 800B81D0 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B51D4 800B81D4 5400002A */  clrrwi    r0, r0, 10
/* 0B51D8 800B81D8 7C007378 */  or        r0, r0, r14
/* 0B51DC 800B81DC B01B0000 */  sth       r0, 0x0(r27)
/* 0B51E0 800B81E0 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B51E4 800B81E4 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B51E8 800B81E8 7C007B78 */  or        r0, r0, r15
/* 0B51EC 800B81EC B01C0000 */  sth       r0, 0x0(r28)
/* 0B51F0 800B81F0 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B51F4 800B81F4 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B51F8 800B81F8 B01E0000 */  sth       r0, 0x0(r30)
/* 0B51FC 800B81FC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5200 800B8200 5400002A */  clrrwi    r0, r0, 10
/* 0B5204 800B8204 60000000 */  nop
/* 0B5208 800B8208 B01E0000 */  sth       r0, 0x0(r30)
/* 0B520C 800B820C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5210 800B8210 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5214 800B8214 60000020 */  ori       r0, r0, 0x20
/* 0B5218 800B8218 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B821C:
/* 0B521C 800B821C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5220 800B8220 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5224 800B8224 4082FFF8 */  bne       lbl_800B821C
/* 0B5228 800B8228 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B522C 800B822C 3800FF77 */  li        r0, -0x89
/* 0B5230 800B8230 7C600038 */  and       r0, r3, r0
/* 0B5234 800B8234 60000020 */  ori       r0, r0, 0x20
/* 0B5238 800B8238 B01F0000 */  sth       r0, 0x0(r31)
/* 0B523C 800B823C A0190000 */  lhz       r0, 0x0(r25)
/* 0B5240 800B8240 5403002A */  clrrwi    r3, r0, 10
/* 0B5244 800B8244 80010244 */  lwz       r0, 0x244(r1)
/* 0B5248 800B8248 7C600378 */  or        r0, r3, r0
/* 0B524C 800B824C B0190000 */  sth       r0, 0x0(r25)
/* 0B5250 800B8250 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5254 800B8254 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5258 800B8258 80010250 */  lwz       r0, 0x250(r1)
/* 0B525C 800B825C 7C600378 */  or        r0, r3, r0
/* 0B5260 800B8260 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5264 800B8264 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5268 800B8268 5400002A */  clrrwi    r0, r0, 10
/* 0B526C 800B826C 7C008B78 */  or        r0, r0, r17
/* 0B5270 800B8270 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5274 800B8274 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5278 800B8278 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B527C 800B827C 7C009378 */  or        r0, r0, r18
/* 0B5280 800B8280 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5284 800B8284 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5288 800B8288 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B528C 800B828C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5290 800B8290 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5294 800B8294 5400002A */  clrrwi    r0, r0, 10
/* 0B5298 800B8298 60000000 */  nop
/* 0B529C 800B829C B01E0000 */  sth       r0, 0x0(r30)
/* 0B52A0 800B82A0 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B52A4 800B82A4 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B52A8 800B82A8 60000020 */  ori       r0, r0, 0x20
/* 0B52AC 800B82AC B01D0000 */  sth       r0, 0x0(r29)
lbl_800B82B0:
/* 0B52B0 800B82B0 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B52B4 800B82B4 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B52B8 800B82B8 4082FFF8 */  bne       lbl_800B82B0
/* 0B52BC 800B82BC A01F0000 */  lhz       r0, 0x0(r31)
/* 0B52C0 800B82C0 3880FF77 */  li        r4, -0x89
/* 0B52C4 800B82C4 38780000 */  addi      r3, r24, 0x0
/* 0B52C8 800B82C8 7C002038 */  and       r0, r0, r4
/* 0B52CC 800B82CC 60000020 */  ori       r0, r0, 0x20
/* 0B52D0 800B82D0 B01F0000 */  sth       r0, 0x0(r31)
/* 0B52D4 800B82D4 38800000 */  li        r4, 0x0
/* 0B52D8 800B82D8 38A00020 */  li        r5, 0x20
/* 0B52DC 800B82DC 4BF4D045 */  bl        memset
/* 0B52E0 800B82E0 38780000 */  addi      r3, r24, 0x0
/* 0B52E4 800B82E4 38800020 */  li        r4, 0x20
/* 0B52E8 800B82E8 4BFE49DD */  bl        DCFlushRange
/* 0B52EC 800B82EC A0190000 */  lhz       r0, 0x0(r25)
/* 0B52F0 800B82F0 5403002A */  clrrwi    r3, r0, 10
/* 0B52F4 800B82F4 80010240 */  lwz       r0, 0x240(r1)
/* 0B52F8 800B82F8 7C600378 */  or        r0, r3, r0
/* 0B52FC 800B82FC B0190000 */  sth       r0, 0x0(r25)
/* 0B5300 800B8300 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5304 800B8304 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5308 800B8308 80010254 */  lwz       r0, 0x254(r1)
/* 0B530C 800B830C 7C600378 */  or        r0, r3, r0
/* 0B5310 800B8310 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5314 800B8314 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5318 800B8318 5400002A */  clrrwi    r0, r0, 10
/* 0B531C 800B831C 7C007378 */  or        r0, r0, r14
/* 0B5320 800B8320 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5324 800B8324 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5328 800B8328 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B532C 800B832C 7C007B78 */  or        r0, r0, r15
/* 0B5330 800B8330 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5334 800B8334 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5338 800B8338 60008000 */  ori       r0, r0, 0x8000
/* 0B533C 800B833C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5340 800B8340 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5344 800B8344 5400002A */  clrrwi    r0, r0, 10
/* 0B5348 800B8348 60000000 */  nop
/* 0B534C 800B834C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5350 800B8350 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5354 800B8354 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5358 800B8358 60000020 */  ori       r0, r0, 0x20
/* 0B535C 800B835C B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8360:
/* 0B5360 800B8360 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5364 800B8364 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5368 800B8368 4082FFF8 */  bne       lbl_800B8360
/* 0B536C 800B836C A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5370 800B8370 3800FF77 */  li        r0, -0x89
/* 0B5374 800B8374 7C600038 */  and       r0, r3, r0
/* 0B5378 800B8378 60000020 */  ori       r0, r0, 0x20
/* 0B537C 800B837C B01F0000 */  sth       r0, 0x0(r31)
/* 0B5380 800B8380 4BFE2F3D */  bl        fn_8009B2BC
/* 0B5384 800B8384 80780000 */  lwz       r3, 0x0(r24)
/* 0B5388 800B8388 80160000 */  lwz       r0, 0x0(r22)
/* 0B538C 800B838C 7C030040 */  cmplw     r3, r0
/* 0B5390 800B8390 40820148 */  bne       lbl_800B84D8
/* 0B5394 800B8394 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5398 800B8398 5403002A */  clrrwi    r3, r0, 10
/* 0B539C 800B839C 8001023C */  lwz       r0, 0x23c(r1)
/* 0B53A0 800B83A0 7C600378 */  or        r0, r3, r0
/* 0B53A4 800B83A4 B0190000 */  sth       r0, 0x0(r25)
/* 0B53A8 800B83A8 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B53AC 800B83AC 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B53B0 800B83B0 8001024C */  lwz       r0, 0x24c(r1)
/* 0B53B4 800B83B4 7C600378 */  or        r0, r3, r0
/* 0B53B8 800B83B8 B01A0000 */  sth       r0, 0x0(r26)
/* 0B53BC 800B83BC A01B0000 */  lhz       r0, 0x0(r27)
/* 0B53C0 800B83C0 5400002A */  clrrwi    r0, r0, 10
/* 0B53C4 800B83C4 7C008B78 */  or        r0, r0, r17
/* 0B53C8 800B83C8 B01B0000 */  sth       r0, 0x0(r27)
/* 0B53CC 800B83CC A01C0000 */  lhz       r0, 0x0(r28)
/* 0B53D0 800B83D0 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B53D4 800B83D4 7C009378 */  or        r0, r0, r18
/* 0B53D8 800B83D8 B01C0000 */  sth       r0, 0x0(r28)
/* 0B53DC 800B83DC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B53E0 800B83E0 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B53E4 800B83E4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B53E8 800B83E8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B53EC 800B83EC 5400002A */  clrrwi    r0, r0, 10
/* 0B53F0 800B83F0 60000000 */  nop
/* 0B53F4 800B83F4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B53F8 800B83F8 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B53FC 800B83FC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5400 800B8400 60000020 */  ori       r0, r0, 0x20
/* 0B5404 800B8404 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8408:
/* 0B5408 800B8408 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B540C 800B840C 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5410 800B8410 4082FFF8 */  bne       lbl_800B8408
/* 0B5414 800B8414 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5418 800B8418 3800FF77 */  li        r0, -0x89
/* 0B541C 800B841C 7C600038 */  and       r0, r3, r0
/* 0B5420 800B8420 60000020 */  ori       r0, r0, 0x20
/* 0B5424 800B8424 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5428 800B8428 A0190000 */  lhz       r0, 0x0(r25)
/* 0B542C 800B842C 5403002A */  clrrwi    r3, r0, 10
/* 0B5430 800B8430 80010234 */  lwz       r0, 0x234(r1)
/* 0B5434 800B8434 7C600378 */  or        r0, r3, r0
/* 0B5438 800B8438 B0190000 */  sth       r0, 0x0(r25)
/* 0B543C 800B843C A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5440 800B8440 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5444 800B8444 80010258 */  lwz       r0, 0x258(r1)
/* 0B5448 800B8448 7C600378 */  or        r0, r3, r0
/* 0B544C 800B844C B01A0000 */  sth       r0, 0x0(r26)
/* 0B5450 800B8450 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5454 800B8454 5400002A */  clrrwi    r0, r0, 10
/* 0B5458 800B8458 7C008378 */  or        r0, r0, r16
/* 0B545C 800B845C B01B0000 */  sth       r0, 0x0(r27)
/* 0B5460 800B8460 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5464 800B8464 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5468 800B8468 7C00BB78 */  or        r0, r0, r23
/* 0B546C 800B846C B01C0000 */  sth       r0, 0x0(r28)
/* 0B5470 800B8470 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5474 800B8474 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5478 800B8478 B01E0000 */  sth       r0, 0x0(r30)
/* 0B547C 800B847C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5480 800B8480 5400002A */  clrrwi    r0, r0, 10
/* 0B5484 800B8484 60000000 */  nop
/* 0B5488 800B8488 B01E0000 */  sth       r0, 0x0(r30)
/* 0B548C 800B848C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5490 800B8490 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5494 800B8494 60000020 */  ori       r0, r0, 0x20
/* 0B5498 800B8498 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B849C:
/* 0B549C 800B849C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B54A0 800B84A0 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B54A4 800B84A4 4082FFF8 */  bne       lbl_800B849C
/* 0B54A8 800B84A8 A09F0000 */  lhz       r4, 0x0(r31)
/* 0B54AC 800B84AC 3800FF77 */  li        r0, -0x89
/* 0B54B0 800B84B0 3C600040 */  lis       r3, 0x40
/* 0B54B4 800B84B4 7C800038 */  and       r0, r4, r0
/* 0B54B8 800B84B8 60000020 */  ori       r0, r0, 0x20
/* 0B54BC 800B84BC B01F0000 */  sth       r0, 0x0(r31)
/* 0B54C0 800B84C0 3E730040 */  addis     r19, r19, 0x40
/* 0B54C4 800B84C4 A0010270 */  lhz       r0, 0x270(r1)
/* 0B54C8 800B84C8 906D8E1C */  stw       r3, D_8018BD9C@sda21(r0)
/* 0B54CC 800B84CC 60000008 */  ori       r0, r0, 0x8
/* 0B54D0 800B84D0 B0010270 */  sth       r0, 0x270(r1)
/* 0B54D4 800B84D4 48000B4C */  b         lbl_800B9020
lbl_800B84D8:
/* 0B54D8 800B84D8 A0190000 */  lhz       r0, 0x0(r25)
/* 0B54DC 800B84DC 5403002A */  clrrwi    r3, r0, 10
/* 0B54E0 800B84E0 80010238 */  lwz       r0, 0x238(r1)
/* 0B54E4 800B84E4 7C600378 */  or        r0, r3, r0
/* 0B54E8 800B84E8 B0190000 */  sth       r0, 0x0(r25)
/* 0B54EC 800B84EC A01A0000 */  lhz       r0, 0x0(r26)
/* 0B54F0 800B84F0 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B54F4 800B84F4 7C00A378 */  or        r0, r0, r20
/* 0B54F8 800B84F8 B01A0000 */  sth       r0, 0x0(r26)
/* 0B54FC 800B84FC A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5500 800B8500 5403002A */  clrrwi    r3, r0, 10
/* 0B5504 800B8504 80010230 */  lwz       r0, 0x230(r1)
/* 0B5508 800B8508 7C600378 */  or        r0, r3, r0
/* 0B550C 800B850C B01B0000 */  sth       r0, 0x0(r27)
/* 0B5510 800B8510 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5514 800B8514 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5518 800B8518 80010264 */  lwz       r0, 0x264(r1)
/* 0B551C 800B851C 7C600378 */  or        r0, r3, r0
/* 0B5520 800B8520 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5524 800B8524 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5528 800B8528 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B552C 800B852C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5530 800B8530 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5534 800B8534 5400002A */  clrrwi    r0, r0, 10
/* 0B5538 800B8538 60000000 */  nop
/* 0B553C 800B853C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5540 800B8540 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5544 800B8544 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5548 800B8548 60000020 */  ori       r0, r0, 0x20
/* 0B554C 800B854C B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8550:
/* 0B5550 800B8550 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5554 800B8554 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5558 800B8558 4082FFF8 */  bne       lbl_800B8550
/* 0B555C 800B855C A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5560 800B8560 3800FF77 */  li        r0, -0x89
/* 0B5564 800B8564 7C600038 */  and       r0, r3, r0
/* 0B5568 800B8568 60000020 */  ori       r0, r0, 0x20
/* 0B556C 800B856C B01F0000 */  sth       r0, 0x0(r31)
/* 0B5570 800B8570 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5574 800B8574 5403002A */  clrrwi    r3, r0, 10
/* 0B5578 800B8578 80010244 */  lwz       r0, 0x244(r1)
/* 0B557C 800B857C 7C600378 */  or        r0, r3, r0
/* 0B5580 800B8580 B0190000 */  sth       r0, 0x0(r25)
/* 0B5584 800B8584 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5588 800B8588 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B558C 800B858C 80010250 */  lwz       r0, 0x250(r1)
/* 0B5590 800B8590 7C600378 */  or        r0, r3, r0
/* 0B5594 800B8594 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5598 800B8598 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B559C 800B859C 5400002A */  clrrwi    r0, r0, 10
/* 0B55A0 800B85A0 7C008B78 */  or        r0, r0, r17
/* 0B55A4 800B85A4 B01B0000 */  sth       r0, 0x0(r27)
/* 0B55A8 800B85A8 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B55AC 800B85AC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B55B0 800B85B0 7C009378 */  or        r0, r0, r18
/* 0B55B4 800B85B4 B01C0000 */  sth       r0, 0x0(r28)
/* 0B55B8 800B85B8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B55BC 800B85BC 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B55C0 800B85C0 B01E0000 */  sth       r0, 0x0(r30)
/* 0B55C4 800B85C4 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B55C8 800B85C8 5400002A */  clrrwi    r0, r0, 10
/* 0B55CC 800B85CC 60000000 */  nop
/* 0B55D0 800B85D0 B01E0000 */  sth       r0, 0x0(r30)
/* 0B55D4 800B85D4 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B55D8 800B85D8 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B55DC 800B85DC 60000020 */  ori       r0, r0, 0x20
/* 0B55E0 800B85E0 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B85E4:
/* 0B55E4 800B85E4 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B55E8 800B85E8 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B55EC 800B85EC 4082FFF8 */  bne       lbl_800B85E4
/* 0B55F0 800B85F0 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B55F4 800B85F4 3880FF77 */  li        r4, -0x89
/* 0B55F8 800B85F8 38780000 */  addi      r3, r24, 0x0
/* 0B55FC 800B85FC 7C002038 */  and       r0, r0, r4
/* 0B5600 800B8600 60000020 */  ori       r0, r0, 0x20
/* 0B5604 800B8604 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5608 800B8608 38800000 */  li        r4, 0x0
/* 0B560C 800B860C 38A00020 */  li        r5, 0x20
/* 0B5610 800B8610 4BF4CD11 */  bl        memset
/* 0B5614 800B8614 38780000 */  addi      r3, r24, 0x0
/* 0B5618 800B8618 38800020 */  li        r4, 0x20
/* 0B561C 800B861C 4BFE46A9 */  bl        DCFlushRange
/* 0B5620 800B8620 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5624 800B8624 5403002A */  clrrwi    r3, r0, 10
/* 0B5628 800B8628 80010240 */  lwz       r0, 0x240(r1)
/* 0B562C 800B862C 7C600378 */  or        r0, r3, r0
/* 0B5630 800B8630 B0190000 */  sth       r0, 0x0(r25)
/* 0B5634 800B8634 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5638 800B8638 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B563C 800B863C 80010254 */  lwz       r0, 0x254(r1)
/* 0B5640 800B8640 7C600378 */  or        r0, r3, r0
/* 0B5644 800B8644 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5648 800B8648 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B564C 800B864C 5403002A */  clrrwi    r3, r0, 10
/* 0B5650 800B8650 80010230 */  lwz       r0, 0x230(r1)
/* 0B5654 800B8654 7C600378 */  or        r0, r3, r0
/* 0B5658 800B8658 B01B0000 */  sth       r0, 0x0(r27)
/* 0B565C 800B865C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5660 800B8660 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5664 800B8664 80010264 */  lwz       r0, 0x264(r1)
/* 0B5668 800B8668 7C600378 */  or        r0, r3, r0
/* 0B566C 800B866C B01C0000 */  sth       r0, 0x0(r28)
/* 0B5670 800B8670 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5674 800B8674 60008000 */  ori       r0, r0, 0x8000
/* 0B5678 800B8678 B01E0000 */  sth       r0, 0x0(r30)
/* 0B567C 800B867C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5680 800B8680 5400002A */  clrrwi    r0, r0, 10
/* 0B5684 800B8684 60000000 */  nop
/* 0B5688 800B8688 B01E0000 */  sth       r0, 0x0(r30)
/* 0B568C 800B868C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5690 800B8690 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5694 800B8694 60000020 */  ori       r0, r0, 0x20
/* 0B5698 800B8698 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B869C:
/* 0B569C 800B869C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B56A0 800B86A0 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B56A4 800B86A4 4082FFF8 */  bne       lbl_800B869C
/* 0B56A8 800B86A8 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B56AC 800B86AC 3800FF77 */  li        r0, -0x89
/* 0B56B0 800B86B0 7C600038 */  and       r0, r3, r0
/* 0B56B4 800B86B4 60000020 */  ori       r0, r0, 0x20
/* 0B56B8 800B86B8 B01F0000 */  sth       r0, 0x0(r31)
/* 0B56BC 800B86BC 4BFE2C01 */  bl        fn_8009B2BC
/* 0B56C0 800B86C0 80780000 */  lwz       r3, 0x0(r24)
/* 0B56C4 800B86C4 80160000 */  lwz       r0, 0x0(r22)
/* 0B56C8 800B86C8 7C030040 */  cmplw     r3, r0
/* 0B56CC 800B86CC 408201DC */  bne       lbl_800B88A8
/* 0B56D0 800B86D0 A0190000 */  lhz       r0, 0x0(r25)
/* 0B56D4 800B86D4 5403002A */  clrrwi    r3, r0, 10
/* 0B56D8 800B86D8 8001023C */  lwz       r0, 0x23c(r1)
/* 0B56DC 800B86DC 7C600378 */  or        r0, r3, r0
/* 0B56E0 800B86E0 B0190000 */  sth       r0, 0x0(r25)
/* 0B56E4 800B86E4 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B56E8 800B86E8 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B56EC 800B86EC 8001024C */  lwz       r0, 0x24c(r1)
/* 0B56F0 800B86F0 7C600378 */  or        r0, r3, r0
/* 0B56F4 800B86F4 B01A0000 */  sth       r0, 0x0(r26)
/* 0B56F8 800B86F8 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B56FC 800B86FC 5400002A */  clrrwi    r0, r0, 10
/* 0B5700 800B8700 7C008B78 */  or        r0, r0, r17
/* 0B5704 800B8704 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5708 800B8708 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B570C 800B870C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5710 800B8710 7C009378 */  or        r0, r0, r18
/* 0B5714 800B8714 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5718 800B8718 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B571C 800B871C 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5720 800B8720 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5724 800B8724 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5728 800B8728 5400002A */  clrrwi    r0, r0, 10
/* 0B572C 800B872C 60000000 */  nop
/* 0B5730 800B8730 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5734 800B8734 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5738 800B8738 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B573C 800B873C 60000020 */  ori       r0, r0, 0x20
/* 0B5740 800B8740 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8744:
/* 0B5744 800B8744 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5748 800B8748 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B574C 800B874C 4082FFF8 */  bne       lbl_800B8744
/* 0B5750 800B8750 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5754 800B8754 3800FF77 */  li        r0, -0x89
/* 0B5758 800B8758 7C600038 */  and       r0, r3, r0
/* 0B575C 800B875C 60000020 */  ori       r0, r0, 0x20
/* 0B5760 800B8760 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5764 800B8764 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5768 800B8768 5403002A */  clrrwi    r3, r0, 10
/* 0B576C 800B876C 80010234 */  lwz       r0, 0x234(r1)
/* 0B5770 800B8770 7C600378 */  or        r0, r3, r0
/* 0B5774 800B8774 B0190000 */  sth       r0, 0x0(r25)
/* 0B5778 800B8778 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B577C 800B877C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5780 800B8780 80010258 */  lwz       r0, 0x258(r1)
/* 0B5784 800B8784 7C600378 */  or        r0, r3, r0
/* 0B5788 800B8788 B01A0000 */  sth       r0, 0x0(r26)
/* 0B578C 800B878C A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5790 800B8790 5400002A */  clrrwi    r0, r0, 10
/* 0B5794 800B8794 7C008378 */  or        r0, r0, r16
/* 0B5798 800B8798 B01B0000 */  sth       r0, 0x0(r27)
/* 0B579C 800B879C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B57A0 800B87A0 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B57A4 800B87A4 7C00BB78 */  or        r0, r0, r23
/* 0B57A8 800B87A8 B01C0000 */  sth       r0, 0x0(r28)
/* 0B57AC 800B87AC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B57B0 800B87B0 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B57B4 800B87B4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B57B8 800B87B8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B57BC 800B87BC 5400002A */  clrrwi    r0, r0, 10
/* 0B57C0 800B87C0 60000000 */  nop
/* 0B57C4 800B87C4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B57C8 800B87C8 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B57CC 800B87CC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B57D0 800B87D0 60000020 */  ori       r0, r0, 0x20
/* 0B57D4 800B87D4 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B87D8:
/* 0B57D8 800B87D8 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B57DC 800B87DC 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B57E0 800B87E0 4082FFF8 */  bne       lbl_800B87D8
/* 0B57E4 800B87E4 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B57E8 800B87E8 3800FF77 */  li        r0, -0x89
/* 0B57EC 800B87EC 7C600038 */  and       r0, r3, r0
/* 0B57F0 800B87F0 60000020 */  ori       r0, r0, 0x20
/* 0B57F4 800B87F4 B01F0000 */  sth       r0, 0x0(r31)
/* 0B57F8 800B87F8 A0190000 */  lhz       r0, 0x0(r25)
/* 0B57FC 800B87FC 5403002A */  clrrwi    r3, r0, 10
/* 0B5800 800B8800 8001022C */  lwz       r0, 0x22c(r1)
/* 0B5804 800B8804 7C600378 */  or        r0, r3, r0
/* 0B5808 800B8808 B0190000 */  sth       r0, 0x0(r25)
/* 0B580C 800B880C A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5810 800B8810 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5814 800B8814 8001025C */  lwz       r0, 0x25c(r1)
/* 0B5818 800B8818 7C600378 */  or        r0, r3, r0
/* 0B581C 800B881C B01A0000 */  sth       r0, 0x0(r26)
/* 0B5820 800B8820 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5824 800B8824 5400002A */  clrrwi    r0, r0, 10
/* 0B5828 800B8828 7C007378 */  or        r0, r0, r14
/* 0B582C 800B882C B01B0000 */  sth       r0, 0x0(r27)
/* 0B5830 800B8830 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5834 800B8834 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5838 800B8838 7C007B78 */  or        r0, r0, r15
/* 0B583C 800B883C B01C0000 */  sth       r0, 0x0(r28)
/* 0B5840 800B8840 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5844 800B8844 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5848 800B8848 B01E0000 */  sth       r0, 0x0(r30)
/* 0B584C 800B884C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5850 800B8850 5400002A */  clrrwi    r0, r0, 10
/* 0B5854 800B8854 60000000 */  nop
/* 0B5858 800B8858 B01E0000 */  sth       r0, 0x0(r30)
/* 0B585C 800B885C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5860 800B8860 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5864 800B8864 60000020 */  ori       r0, r0, 0x20
/* 0B5868 800B8868 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B886C:
/* 0B586C 800B886C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5870 800B8870 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5874 800B8874 4082FFF8 */  bne       lbl_800B886C
/* 0B5878 800B8878 A09F0000 */  lhz       r4, 0x0(r31)
/* 0B587C 800B887C 3800FF77 */  li        r0, -0x89
/* 0B5880 800B8880 3C600080 */  lis       r3, 0x80
/* 0B5884 800B8884 7C800038 */  and       r0, r4, r0
/* 0B5888 800B8888 60000020 */  ori       r0, r0, 0x20
/* 0B588C 800B888C B01F0000 */  sth       r0, 0x0(r31)
/* 0B5890 800B8890 3E730080 */  addis     r19, r19, 0x80
/* 0B5894 800B8894 A0010270 */  lhz       r0, 0x270(r1)
/* 0B5898 800B8898 906D8E1C */  stw       r3, D_8018BD9C@sda21(r0)
/* 0B589C 800B889C 60000010 */  ori       r0, r0, 0x10
/* 0B58A0 800B88A0 B0010270 */  sth       r0, 0x270(r1)
/* 0B58A4 800B88A4 4800077C */  b         lbl_800B9020
lbl_800B88A8:
/* 0B58A8 800B88A8 A0190000 */  lhz       r0, 0x0(r25)
/* 0B58AC 800B88AC 5403002A */  clrrwi    r3, r0, 10
/* 0B58B0 800B88B0 80010238 */  lwz       r0, 0x238(r1)
/* 0B58B4 800B88B4 7C600378 */  or        r0, r3, r0
/* 0B58B8 800B88B8 B0190000 */  sth       r0, 0x0(r25)
/* 0B58BC 800B88BC A01A0000 */  lhz       r0, 0x0(r26)
/* 0B58C0 800B88C0 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B58C4 800B88C4 7C00A378 */  or        r0, r0, r20
/* 0B58C8 800B88C8 B01A0000 */  sth       r0, 0x0(r26)
/* 0B58CC 800B88CC A01B0000 */  lhz       r0, 0x0(r27)
/* 0B58D0 800B88D0 5403002A */  clrrwi    r3, r0, 10
/* 0B58D4 800B88D4 80010228 */  lwz       r0, 0x228(r1)
/* 0B58D8 800B88D8 7C600378 */  or        r0, r3, r0
/* 0B58DC 800B88DC B01B0000 */  sth       r0, 0x0(r27)
/* 0B58E0 800B88E0 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B58E4 800B88E4 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B58E8 800B88E8 8001026C */  lwz       r0, 0x26c(r1)
/* 0B58EC 800B88EC 7C600378 */  or        r0, r3, r0
/* 0B58F0 800B88F0 B01C0000 */  sth       r0, 0x0(r28)
/* 0B58F4 800B88F4 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B58F8 800B88F8 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B58FC 800B88FC B01E0000 */  sth       r0, 0x0(r30)
/* 0B5900 800B8900 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5904 800B8904 5400002A */  clrrwi    r0, r0, 10
/* 0B5908 800B8908 60000000 */  nop
/* 0B590C 800B890C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5910 800B8910 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5914 800B8914 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5918 800B8918 60000020 */  ori       r0, r0, 0x20
/* 0B591C 800B891C B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8920:
/* 0B5920 800B8920 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5924 800B8924 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5928 800B8928 4082FFF8 */  bne       lbl_800B8920
/* 0B592C 800B892C A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5930 800B8930 3800FF77 */  li        r0, -0x89
/* 0B5934 800B8934 7C600038 */  and       r0, r3, r0
/* 0B5938 800B8938 60000020 */  ori       r0, r0, 0x20
/* 0B593C 800B893C B01F0000 */  sth       r0, 0x0(r31)
/* 0B5940 800B8940 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5944 800B8944 5403002A */  clrrwi    r3, r0, 10
/* 0B5948 800B8948 80010244 */  lwz       r0, 0x244(r1)
/* 0B594C 800B894C 7C600378 */  or        r0, r3, r0
/* 0B5950 800B8950 B0190000 */  sth       r0, 0x0(r25)
/* 0B5954 800B8954 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5958 800B8958 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B595C 800B895C 80010250 */  lwz       r0, 0x250(r1)
/* 0B5960 800B8960 7C600378 */  or        r0, r3, r0
/* 0B5964 800B8964 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5968 800B8968 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B596C 800B896C 5400002A */  clrrwi    r0, r0, 10
/* 0B5970 800B8970 7C008B78 */  or        r0, r0, r17
/* 0B5974 800B8974 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5978 800B8978 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B597C 800B897C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5980 800B8980 7C009378 */  or        r0, r0, r18
/* 0B5984 800B8984 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5988 800B8988 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B598C 800B898C 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5990 800B8990 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5994 800B8994 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5998 800B8998 5400002A */  clrrwi    r0, r0, 10
/* 0B599C 800B899C 60000000 */  nop
/* 0B59A0 800B89A0 B01E0000 */  sth       r0, 0x0(r30)
/* 0B59A4 800B89A4 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B59A8 800B89A8 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B59AC 800B89AC 60000020 */  ori       r0, r0, 0x20
/* 0B59B0 800B89B0 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B89B4:
/* 0B59B4 800B89B4 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B59B8 800B89B8 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B59BC 800B89BC 4082FFF8 */  bne       lbl_800B89B4
/* 0B59C0 800B89C0 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B59C4 800B89C4 3880FF77 */  li        r4, -0x89
/* 0B59C8 800B89C8 38780000 */  addi      r3, r24, 0x0
/* 0B59CC 800B89CC 7C002038 */  and       r0, r0, r4
/* 0B59D0 800B89D0 60000020 */  ori       r0, r0, 0x20
/* 0B59D4 800B89D4 B01F0000 */  sth       r0, 0x0(r31)
/* 0B59D8 800B89D8 38800000 */  li        r4, 0x0
/* 0B59DC 800B89DC 38A00020 */  li        r5, 0x20
/* 0B59E0 800B89E0 4BF4C941 */  bl        memset
/* 0B59E4 800B89E4 38780000 */  addi      r3, r24, 0x0
/* 0B59E8 800B89E8 38800020 */  li        r4, 0x20
/* 0B59EC 800B89EC 4BFE42D9 */  bl        DCFlushRange
/* 0B59F0 800B89F0 A0190000 */  lhz       r0, 0x0(r25)
/* 0B59F4 800B89F4 5403002A */  clrrwi    r3, r0, 10
/* 0B59F8 800B89F8 80010240 */  lwz       r0, 0x240(r1)
/* 0B59FC 800B89FC 7C600378 */  or        r0, r3, r0
/* 0B5A00 800B8A00 B0190000 */  sth       r0, 0x0(r25)
/* 0B5A04 800B8A04 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5A08 800B8A08 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5A0C 800B8A0C 80010254 */  lwz       r0, 0x254(r1)
/* 0B5A10 800B8A10 7C600378 */  or        r0, r3, r0
/* 0B5A14 800B8A14 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5A18 800B8A18 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5A1C 800B8A1C 5403002A */  clrrwi    r3, r0, 10
/* 0B5A20 800B8A20 80010228 */  lwz       r0, 0x228(r1)
/* 0B5A24 800B8A24 7C600378 */  or        r0, r3, r0
/* 0B5A28 800B8A28 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5A2C 800B8A2C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5A30 800B8A30 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5A34 800B8A34 8001026C */  lwz       r0, 0x26c(r1)
/* 0B5A38 800B8A38 7C600378 */  or        r0, r3, r0
/* 0B5A3C 800B8A3C B01C0000 */  sth       r0, 0x0(r28)
/* 0B5A40 800B8A40 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5A44 800B8A44 60008000 */  ori       r0, r0, 0x8000
/* 0B5A48 800B8A48 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5A4C 800B8A4C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5A50 800B8A50 5400002A */  clrrwi    r0, r0, 10
/* 0B5A54 800B8A54 60000000 */  nop
/* 0B5A58 800B8A58 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5A5C 800B8A5C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5A60 800B8A60 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5A64 800B8A64 60000020 */  ori       r0, r0, 0x20
/* 0B5A68 800B8A68 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8A6C:
/* 0B5A6C 800B8A6C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5A70 800B8A70 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5A74 800B8A74 4082FFF8 */  bne       lbl_800B8A6C
/* 0B5A78 800B8A78 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5A7C 800B8A7C 3800FF77 */  li        r0, -0x89
/* 0B5A80 800B8A80 7C600038 */  and       r0, r3, r0
/* 0B5A84 800B8A84 60000020 */  ori       r0, r0, 0x20
/* 0B5A88 800B8A88 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5A8C 800B8A8C 4BFE2831 */  bl        fn_8009B2BC
/* 0B5A90 800B8A90 80180000 */  lwz       r0, 0x0(r24)
/* 0B5A94 800B8A94 80760000 */  lwz       r3, 0x0(r22)
/* 0B5A98 800B8A98 7C001840 */  cmplw     r0, r3
/* 0B5A9C 800B8A9C 40820278 */  bne       lbl_800B8D14
/* 0B5AA0 800B8AA0 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5AA4 800B8AA4 5403002A */  clrrwi    r3, r0, 10
/* 0B5AA8 800B8AA8 8001023C */  lwz       r0, 0x23c(r1)
/* 0B5AAC 800B8AAC 7C600378 */  or        r0, r3, r0
/* 0B5AB0 800B8AB0 B0190000 */  sth       r0, 0x0(r25)
/* 0B5AB4 800B8AB4 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5AB8 800B8AB8 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5ABC 800B8ABC 8001024C */  lwz       r0, 0x24c(r1)
/* 0B5AC0 800B8AC0 7C600378 */  or        r0, r3, r0
/* 0B5AC4 800B8AC4 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5AC8 800B8AC8 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5ACC 800B8ACC 5400002A */  clrrwi    r0, r0, 10
/* 0B5AD0 800B8AD0 7C008B78 */  or        r0, r0, r17
/* 0B5AD4 800B8AD4 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5AD8 800B8AD8 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5ADC 800B8ADC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5AE0 800B8AE0 7C009378 */  or        r0, r0, r18
/* 0B5AE4 800B8AE4 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5AE8 800B8AE8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5AEC 800B8AEC 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5AF0 800B8AF0 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5AF4 800B8AF4 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5AF8 800B8AF8 5400002A */  clrrwi    r0, r0, 10
/* 0B5AFC 800B8AFC 60000000 */  nop
/* 0B5B00 800B8B00 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5B04 800B8B04 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5B08 800B8B08 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5B0C 800B8B0C 60000020 */  ori       r0, r0, 0x20
/* 0B5B10 800B8B10 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8B14:
/* 0B5B14 800B8B14 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5B18 800B8B18 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5B1C 800B8B1C 4082FFF8 */  bne       lbl_800B8B14
/* 0B5B20 800B8B20 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5B24 800B8B24 3800FF77 */  li        r0, -0x89
/* 0B5B28 800B8B28 7C600038 */  and       r0, r3, r0
/* 0B5B2C 800B8B2C 60000020 */  ori       r0, r0, 0x20
/* 0B5B30 800B8B30 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5B34 800B8B34 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5B38 800B8B38 5403002A */  clrrwi    r3, r0, 10
/* 0B5B3C 800B8B3C 80010234 */  lwz       r0, 0x234(r1)
/* 0B5B40 800B8B40 7C600378 */  or        r0, r3, r0
/* 0B5B44 800B8B44 B0190000 */  sth       r0, 0x0(r25)
/* 0B5B48 800B8B48 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5B4C 800B8B4C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5B50 800B8B50 80010258 */  lwz       r0, 0x258(r1)
/* 0B5B54 800B8B54 7C600378 */  or        r0, r3, r0
/* 0B5B58 800B8B58 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5B5C 800B8B5C A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5B60 800B8B60 5400002A */  clrrwi    r0, r0, 10
/* 0B5B64 800B8B64 7C008378 */  or        r0, r0, r16
/* 0B5B68 800B8B68 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5B6C 800B8B6C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5B70 800B8B70 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5B74 800B8B74 7C00BB78 */  or        r0, r0, r23
/* 0B5B78 800B8B78 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5B7C 800B8B7C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5B80 800B8B80 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5B84 800B8B84 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5B88 800B8B88 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5B8C 800B8B8C 5400002A */  clrrwi    r0, r0, 10
/* 0B5B90 800B8B90 60000000 */  nop
/* 0B5B94 800B8B94 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5B98 800B8B98 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5B9C 800B8B9C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5BA0 800B8BA0 60000020 */  ori       r0, r0, 0x20
/* 0B5BA4 800B8BA4 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8BA8:
/* 0B5BA8 800B8BA8 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5BAC 800B8BAC 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5BB0 800B8BB0 4082FFF8 */  bne       lbl_800B8BA8
/* 0B5BB4 800B8BB4 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5BB8 800B8BB8 3800FF77 */  li        r0, -0x89
/* 0B5BBC 800B8BBC 7C600038 */  and       r0, r3, r0
/* 0B5BC0 800B8BC0 60000020 */  ori       r0, r0, 0x20
/* 0B5BC4 800B8BC4 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5BC8 800B8BC8 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5BCC 800B8BCC 5403002A */  clrrwi    r3, r0, 10
/* 0B5BD0 800B8BD0 8001022C */  lwz       r0, 0x22c(r1)
/* 0B5BD4 800B8BD4 7C600378 */  or        r0, r3, r0
/* 0B5BD8 800B8BD8 B0190000 */  sth       r0, 0x0(r25)
/* 0B5BDC 800B8BDC A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5BE0 800B8BE0 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5BE4 800B8BE4 8001025C */  lwz       r0, 0x25c(r1)
/* 0B5BE8 800B8BE8 7C600378 */  or        r0, r3, r0
/* 0B5BEC 800B8BEC B01A0000 */  sth       r0, 0x0(r26)
/* 0B5BF0 800B8BF0 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5BF4 800B8BF4 5400002A */  clrrwi    r0, r0, 10
/* 0B5BF8 800B8BF8 7C007378 */  or        r0, r0, r14
/* 0B5BFC 800B8BFC B01B0000 */  sth       r0, 0x0(r27)
/* 0B5C00 800B8C00 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5C04 800B8C04 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5C08 800B8C08 7C007B78 */  or        r0, r0, r15
/* 0B5C0C 800B8C0C B01C0000 */  sth       r0, 0x0(r28)
/* 0B5C10 800B8C10 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5C14 800B8C14 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5C18 800B8C18 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5C1C 800B8C1C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5C20 800B8C20 5400002A */  clrrwi    r0, r0, 10
/* 0B5C24 800B8C24 60000000 */  nop
/* 0B5C28 800B8C28 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5C2C 800B8C2C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5C30 800B8C30 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5C34 800B8C34 60000020 */  ori       r0, r0, 0x20
/* 0B5C38 800B8C38 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8C3C:
/* 0B5C3C 800B8C3C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5C40 800B8C40 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5C44 800B8C44 4082FFF8 */  bne       lbl_800B8C3C
/* 0B5C48 800B8C48 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5C4C 800B8C4C 3800FF77 */  li        r0, -0x89
/* 0B5C50 800B8C50 7C600038 */  and       r0, r3, r0
/* 0B5C54 800B8C54 60000020 */  ori       r0, r0, 0x20
/* 0B5C58 800B8C58 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5C5C 800B8C5C A0190000 */  lhz       r0, 0x0(r25)
/* 0B5C60 800B8C60 5403002A */  clrrwi    r3, r0, 10
/* 0B5C64 800B8C64 80010224 */  lwz       r0, 0x224(r1)
/* 0B5C68 800B8C68 7C600378 */  or        r0, r3, r0
/* 0B5C6C 800B8C6C B0190000 */  sth       r0, 0x0(r25)
/* 0B5C70 800B8C70 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5C74 800B8C74 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5C78 800B8C78 80010260 */  lwz       r0, 0x260(r1)
/* 0B5C7C 800B8C7C 7C600378 */  or        r0, r3, r0
/* 0B5C80 800B8C80 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5C84 800B8C84 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5C88 800B8C88 5403002A */  clrrwi    r3, r0, 10
/* 0B5C8C 800B8C8C 80010230 */  lwz       r0, 0x230(r1)
/* 0B5C90 800B8C90 7C600378 */  or        r0, r3, r0
/* 0B5C94 800B8C94 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5C98 800B8C98 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5C9C 800B8C9C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5CA0 800B8CA0 80010264 */  lwz       r0, 0x264(r1)
/* 0B5CA4 800B8CA4 7C600378 */  or        r0, r3, r0
/* 0B5CA8 800B8CA8 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5CAC 800B8CAC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5CB0 800B8CB0 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5CB4 800B8CB4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5CB8 800B8CB8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5CBC 800B8CBC 5400002A */  clrrwi    r0, r0, 10
/* 0B5CC0 800B8CC0 60000000 */  nop
/* 0B5CC4 800B8CC4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5CC8 800B8CC8 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5CCC 800B8CCC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5CD0 800B8CD0 60000020 */  ori       r0, r0, 0x20
/* 0B5CD4 800B8CD4 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8CD8:
/* 0B5CD8 800B8CD8 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5CDC 800B8CDC 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5CE0 800B8CE0 4082FFF8 */  bne       lbl_800B8CD8
/* 0B5CE4 800B8CE4 A09F0000 */  lhz       r4, 0x0(r31)
/* 0B5CE8 800B8CE8 3800FF77 */  li        r0, -0x89
/* 0B5CEC 800B8CEC 3C600100 */  lis       r3, 0x100
/* 0B5CF0 800B8CF0 7C800038 */  and       r0, r4, r0
/* 0B5CF4 800B8CF4 60000020 */  ori       r0, r0, 0x20
/* 0B5CF8 800B8CF8 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5CFC 800B8CFC 3E730100 */  addis     r19, r19, 0x100
/* 0B5D00 800B8D00 A0010270 */  lhz       r0, 0x270(r1)
/* 0B5D04 800B8D04 906D8E1C */  stw       r3, D_8018BD9C@sda21(r0)
/* 0B5D08 800B8D08 60000018 */  ori       r0, r0, 0x18
/* 0B5D0C 800B8D0C B0010270 */  sth       r0, 0x270(r1)
/* 0B5D10 800B8D10 48000310 */  b         lbl_800B9020
lbl_800B8D14:
/* 0B5D14 800B8D14 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5D18 800B8D18 5403002A */  clrrwi    r3, r0, 10
/* 0B5D1C 800B8D1C 8001023C */  lwz       r0, 0x23c(r1)
/* 0B5D20 800B8D20 7C600378 */  or        r0, r3, r0
/* 0B5D24 800B8D24 B0190000 */  sth       r0, 0x0(r25)
/* 0B5D28 800B8D28 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5D2C 800B8D2C 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5D30 800B8D30 8001024C */  lwz       r0, 0x24c(r1)
/* 0B5D34 800B8D34 7C600378 */  or        r0, r3, r0
/* 0B5D38 800B8D38 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5D3C 800B8D3C A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5D40 800B8D40 5400002A */  clrrwi    r0, r0, 10
/* 0B5D44 800B8D44 7C008B78 */  or        r0, r0, r17
/* 0B5D48 800B8D48 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5D4C 800B8D4C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5D50 800B8D50 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5D54 800B8D54 7C009378 */  or        r0, r0, r18
/* 0B5D58 800B8D58 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5D5C 800B8D5C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5D60 800B8D60 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5D64 800B8D64 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5D68 800B8D68 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5D6C 800B8D6C 5400002A */  clrrwi    r0, r0, 10
/* 0B5D70 800B8D70 60000000 */  nop
/* 0B5D74 800B8D74 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5D78 800B8D78 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5D7C 800B8D7C 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5D80 800B8D80 60000020 */  ori       r0, r0, 0x20
/* 0B5D84 800B8D84 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8D88:
/* 0B5D88 800B8D88 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5D8C 800B8D8C 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5D90 800B8D90 4082FFF8 */  bne       lbl_800B8D88
/* 0B5D94 800B8D94 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5D98 800B8D98 3800FF77 */  li        r0, -0x89
/* 0B5D9C 800B8D9C 7C600038 */  and       r0, r3, r0
/* 0B5DA0 800B8DA0 60000020 */  ori       r0, r0, 0x20
/* 0B5DA4 800B8DA4 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5DA8 800B8DA8 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5DAC 800B8DAC 5403002A */  clrrwi    r3, r0, 10
/* 0B5DB0 800B8DB0 80010234 */  lwz       r0, 0x234(r1)
/* 0B5DB4 800B8DB4 7C600378 */  or        r0, r3, r0
/* 0B5DB8 800B8DB8 B0190000 */  sth       r0, 0x0(r25)
/* 0B5DBC 800B8DBC A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5DC0 800B8DC0 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5DC4 800B8DC4 80010258 */  lwz       r0, 0x258(r1)
/* 0B5DC8 800B8DC8 7C600378 */  or        r0, r3, r0
/* 0B5DCC 800B8DCC B01A0000 */  sth       r0, 0x0(r26)
/* 0B5DD0 800B8DD0 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5DD4 800B8DD4 5400002A */  clrrwi    r0, r0, 10
/* 0B5DD8 800B8DD8 7C008378 */  or        r0, r0, r16
/* 0B5DDC 800B8DDC B01B0000 */  sth       r0, 0x0(r27)
/* 0B5DE0 800B8DE0 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5DE4 800B8DE4 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5DE8 800B8DE8 7C00BB78 */  or        r0, r0, r23
/* 0B5DEC 800B8DEC B01C0000 */  sth       r0, 0x0(r28)
/* 0B5DF0 800B8DF0 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5DF4 800B8DF4 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5DF8 800B8DF8 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5DFC 800B8DFC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5E00 800B8E00 5400002A */  clrrwi    r0, r0, 10
/* 0B5E04 800B8E04 60000000 */  nop
/* 0B5E08 800B8E08 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5E0C 800B8E0C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5E10 800B8E10 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5E14 800B8E14 60000020 */  ori       r0, r0, 0x20
/* 0B5E18 800B8E18 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8E1C:
/* 0B5E1C 800B8E1C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5E20 800B8E20 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5E24 800B8E24 4082FFF8 */  bne       lbl_800B8E1C
/* 0B5E28 800B8E28 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5E2C 800B8E2C 3800FF77 */  li        r0, -0x89
/* 0B5E30 800B8E30 7C600038 */  and       r0, r3, r0
/* 0B5E34 800B8E34 60000020 */  ori       r0, r0, 0x20
/* 0B5E38 800B8E38 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5E3C 800B8E3C A0190000 */  lhz       r0, 0x0(r25)
/* 0B5E40 800B8E40 5403002A */  clrrwi    r3, r0, 10
/* 0B5E44 800B8E44 8001022C */  lwz       r0, 0x22c(r1)
/* 0B5E48 800B8E48 7C600378 */  or        r0, r3, r0
/* 0B5E4C 800B8E4C B0190000 */  sth       r0, 0x0(r25)
/* 0B5E50 800B8E50 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5E54 800B8E54 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5E58 800B8E58 8001025C */  lwz       r0, 0x25c(r1)
/* 0B5E5C 800B8E5C 7C600378 */  or        r0, r3, r0
/* 0B5E60 800B8E60 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5E64 800B8E64 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5E68 800B8E68 5400002A */  clrrwi    r0, r0, 10
/* 0B5E6C 800B8E6C 7C007378 */  or        r0, r0, r14
/* 0B5E70 800B8E70 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5E74 800B8E74 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5E78 800B8E78 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5E7C 800B8E7C 7C007B78 */  or        r0, r0, r15
/* 0B5E80 800B8E80 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5E84 800B8E84 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5E88 800B8E88 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5E8C 800B8E8C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5E90 800B8E90 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5E94 800B8E94 5400002A */  clrrwi    r0, r0, 10
/* 0B5E98 800B8E98 60000000 */  nop
/* 0B5E9C 800B8E9C B01E0000 */  sth       r0, 0x0(r30)
/* 0B5EA0 800B8EA0 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5EA4 800B8EA4 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5EA8 800B8EA8 60000020 */  ori       r0, r0, 0x20
/* 0B5EAC 800B8EAC B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8EB0:
/* 0B5EB0 800B8EB0 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5EB4 800B8EB4 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5EB8 800B8EB8 4082FFF8 */  bne       lbl_800B8EB0
/* 0B5EBC 800B8EBC A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5EC0 800B8EC0 3800FF77 */  li        r0, -0x89
/* 0B5EC4 800B8EC4 7C600038 */  and       r0, r3, r0
/* 0B5EC8 800B8EC8 60000020 */  ori       r0, r0, 0x20
/* 0B5ECC 800B8ECC B01F0000 */  sth       r0, 0x0(r31)
/* 0B5ED0 800B8ED0 A0190000 */  lhz       r0, 0x0(r25)
/* 0B5ED4 800B8ED4 5403002A */  clrrwi    r3, r0, 10
/* 0B5ED8 800B8ED8 80010224 */  lwz       r0, 0x224(r1)
/* 0B5EDC 800B8EDC 7C600378 */  or        r0, r3, r0
/* 0B5EE0 800B8EE0 B0190000 */  sth       r0, 0x0(r25)
/* 0B5EE4 800B8EE4 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5EE8 800B8EE8 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5EEC 800B8EEC 80010260 */  lwz       r0, 0x260(r1)
/* 0B5EF0 800B8EF0 7C600378 */  or        r0, r3, r0
/* 0B5EF4 800B8EF4 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5EF8 800B8EF8 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5EFC 800B8EFC 5403002A */  clrrwi    r3, r0, 10
/* 0B5F00 800B8F00 80010230 */  lwz       r0, 0x230(r1)
/* 0B5F04 800B8F04 7C600378 */  or        r0, r3, r0
/* 0B5F08 800B8F08 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5F0C 800B8F0C A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5F10 800B8F10 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5F14 800B8F14 80010264 */  lwz       r0, 0x264(r1)
/* 0B5F18 800B8F18 7C600378 */  or        r0, r3, r0
/* 0B5F1C 800B8F1C B01C0000 */  sth       r0, 0x0(r28)
/* 0B5F20 800B8F20 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5F24 800B8F24 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5F28 800B8F28 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5F2C 800B8F2C A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5F30 800B8F30 5400002A */  clrrwi    r0, r0, 10
/* 0B5F34 800B8F34 60000000 */  nop
/* 0B5F38 800B8F38 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5F3C 800B8F3C A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5F40 800B8F40 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5F44 800B8F44 60000020 */  ori       r0, r0, 0x20
/* 0B5F48 800B8F48 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8F4C:
/* 0B5F4C 800B8F4C A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5F50 800B8F50 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5F54 800B8F54 4082FFF8 */  bne       lbl_800B8F4C
/* 0B5F58 800B8F58 A07F0000 */  lhz       r3, 0x0(r31)
/* 0B5F5C 800B8F5C 3800FF77 */  li        r0, -0x89
/* 0B5F60 800B8F60 7C600038 */  and       r0, r3, r0
/* 0B5F64 800B8F64 60000020 */  ori       r0, r0, 0x20
/* 0B5F68 800B8F68 B01F0000 */  sth       r0, 0x0(r31)
/* 0B5F6C 800B8F6C A0190000 */  lhz       r0, 0x0(r25)
/* 0B5F70 800B8F70 5403002A */  clrrwi    r3, r0, 10
/* 0B5F74 800B8F74 80010220 */  lwz       r0, 0x220(r1)
/* 0B5F78 800B8F78 7C600378 */  or        r0, r3, r0
/* 0B5F7C 800B8F7C B0190000 */  sth       r0, 0x0(r25)
/* 0B5F80 800B8F80 A01A0000 */  lhz       r0, 0x0(r26)
/* 0B5F84 800B8F84 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5F88 800B8F88 80010268 */  lwz       r0, 0x268(r1)
/* 0B5F8C 800B8F8C 7C600378 */  or        r0, r3, r0
/* 0B5F90 800B8F90 B01A0000 */  sth       r0, 0x0(r26)
/* 0B5F94 800B8F94 A01B0000 */  lhz       r0, 0x0(r27)
/* 0B5F98 800B8F98 5403002A */  clrrwi    r3, r0, 10
/* 0B5F9C 800B8F9C 80010228 */  lwz       r0, 0x228(r1)
/* 0B5FA0 800B8FA0 7C600378 */  or        r0, r3, r0
/* 0B5FA4 800B8FA4 B01B0000 */  sth       r0, 0x0(r27)
/* 0B5FA8 800B8FA8 A01C0000 */  lhz       r0, 0x0(r28)
/* 0B5FAC 800B8FAC 540306DE */  rlwinm    r3, r0, 0, 27, 15
/* 0B5FB0 800B8FB0 8001026C */  lwz       r0, 0x26c(r1)
/* 0B5FB4 800B8FB4 7C600378 */  or        r0, r3, r0
/* 0B5FB8 800B8FB8 B01C0000 */  sth       r0, 0x0(r28)
/* 0B5FBC 800B8FBC A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5FC0 800B8FC0 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B5FC4 800B8FC4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5FC8 800B8FC8 A01E0000 */  lhz       r0, 0x0(r30)
/* 0B5FCC 800B8FCC 5400002A */  clrrwi    r0, r0, 10
/* 0B5FD0 800B8FD0 60000000 */  nop
/* 0B5FD4 800B8FD4 B01E0000 */  sth       r0, 0x0(r30)
/* 0B5FD8 800B8FD8 A01D0000 */  lhz       r0, 0x0(r29)
/* 0B5FDC 800B8FDC 540006DE */  rlwinm    r0, r0, 0, 27, 15
/* 0B5FE0 800B8FE0 60000020 */  ori       r0, r0, 0x20
/* 0B5FE4 800B8FE4 B01D0000 */  sth       r0, 0x0(r29)
lbl_800B8FE8:
/* 0B5FE8 800B8FE8 A01F0000 */  lhz       r0, 0x0(r31)
/* 0B5FEC 800B8FEC 540005AD */  rlwinm.   r0, r0, 0, 22, 22
/* 0B5FF0 800B8FF0 4082FFF8 */  bne       lbl_800B8FE8
/* 0B5FF4 800B8FF4 A09F0000 */  lhz       r4, 0x0(r31)
/* 0B5FF8 800B8FF8 3800FF77 */  li        r0, -0x89
/* 0B5FFC 800B8FFC 3C600200 */  lis       r3, 0x200
/* 0B6000 800B9000 7C800038 */  and       r0, r4, r0
/* 0B6004 800B9004 60000020 */  ori       r0, r0, 0x20
/* 0B6008 800B9008 B01F0000 */  sth       r0, 0x0(r31)
/* 0B600C 800B900C 3E730200 */  addis     r19, r19, 0x200
/* 0B6010 800B9010 A0010270 */  lhz       r0, 0x270(r1)
/* 0B6014 800B9014 906D8E1C */  stw       r3, D_8018BD9C@sda21(r0)
/* 0B6018 800B9018 60000020 */  ori       r0, r0, 0x20
/* 0B601C 800B901C B0010270 */  sth       r0, 0x270(r1)
lbl_800B9020:
/* 0B6020 800B9020 80610248 */  lwz       r3, 0x248(r1)
/* 0B6024 800B9024 A0030000 */  lhz       r0, 0x0(r3)
/* 0B6028 800B9028 54030032 */  clrrwi    r3, r0, 6
/* 0B602C 800B902C A0010270 */  lhz       r0, 0x270(r1)
/* 0B6030 800B9030 7C600378 */  or        r0, r3, r0
/* 0B6034 800B9034 80610248 */  lwz       r3, 0x248(r1)
/* 0B6038 800B9038 B0030000 */  sth       r0, 0x0(r3)
lbl_800B903C:
/* 0B603C 800B903C 3C60C000 */  lis       r3, 0xc000
/* 0B6040 800B9040 926300D0 */  stw       r19, 0xd0(r3)
/* 0B6044 800B9044 926D8E14 */  stw       r19, D_8018BD94@sda21(r0)
/* 0B6048 800B9048 800102C4 */  lwz       r0, 0x2c4(r1)
/* 0B604C 800B904C B9C10278 */  lmw       r14, 0x278(r1)
/* 0B6050 800B9050 382102C0 */  addi      r1, r1, 0x2c0
/* 0B6054 800B9054 7C0803A6 */  mtlr      r0
/* 0B6058 800B9058 4E800020 */  blr

# 0x800F4930 - 0x800F4978
.section .data, "wa"

.balign 8

glabel D_800F4930
	.string "<< Dolphin SDK - AR\trelease build: Sep  5 2002 05:34:27 (0x2301) >>"

glabel gap_05_800F4974_data
.hidden gap_05_800F4974_data
	.long 0x00000000

# 0x8018B7C0 - 0x8018B7C8
.section .sdata, "wa"

glabel D_8018B7C0
	.long D_800F4930
	.long 0x00000000

# 0x8018BD90 - 0x8018BDB0
.section .sbss, "wa"

glabel D_8018BD90
	.skip 0x4

glabel D_8018BD94
	.skip 0x4

glabel D_8018BD98
	.skip 0x4

glabel D_8018BD9C
	.skip 0x4

glabel D_8018BDA0
	.skip 0x4

glabel D_8018BDA4
	.skip 0x4

glabel D_8018BDA8
	.skip 0x4

glabel D_8018BDAC
	.skip 0x4
