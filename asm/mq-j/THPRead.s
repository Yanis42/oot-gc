# THPRead.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x80011714 - 0x80012CFC

glabel PushReadedBuffer2
/* 00E714 80011714 7C0802A6 */  mflr      r0
/* 00E718 80011718 3CA08010 */  lis       r5, D_800FC560@ha
/* 00E71C 8001171C 90010004 */  stw       r0, 0x4(r1)
/* 00E720 80011720 38830000 */  addi      r4, r3, 0x0
/* 00E724 80011724 3865C560 */  addi      r3, r5, D_800FC560@l
/* 00E728 80011728 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00E72C 8001172C 38A00001 */  li        r5, 0x1
/* 00E730 80011730 4808D3FD */  bl        OSSendMessage
/* 00E734 80011734 8001000C */  lwz       r0, 0xc(r1)
/* 00E738 80011738 38210008 */  addi      r1, r1, 0x8
/* 00E73C 8001173C 7C0803A6 */  mtlr      r0
/* 00E740 80011740 4E800020 */  blr

glabel PopReadedBuffer2
/* 00E744 80011744 7C0802A6 */  mflr      r0
/* 00E748 80011748 3C608010 */  lis       r3, D_800FC560@ha
/* 00E74C 8001174C 90010004 */  stw       r0, 0x4(r1)
/* 00E750 80011750 3863C560 */  addi      r3, r3, D_800FC560@l
/* 00E754 80011754 38A00001 */  li        r5, 0x1
/* 00E758 80011758 9421FFF0 */  stwu      r1, -0x10(r1)
/* 00E75C 8001175C 38810008 */  addi      r4, r1, 0x8
/* 00E760 80011760 4808D495 */  bl        OSReceiveMessage
/* 00E764 80011764 80010014 */  lwz       r0, 0x14(r1)
/* 00E768 80011768 80610008 */  lwz       r3, 0x8(r1)
/* 00E76C 8001176C 38210010 */  addi      r1, r1, 0x10
/* 00E770 80011770 7C0803A6 */  mtlr      r0
/* 00E774 80011774 4E800020 */  blr

glabel PushFreeReadBuffer
/* 00E778 80011778 7C0802A6 */  mflr      r0
/* 00E77C 8001177C 3CA08010 */  lis       r5, D_800FC520@ha
/* 00E780 80011780 90010004 */  stw       r0, 0x4(r1)
/* 00E784 80011784 38830000 */  addi      r4, r3, 0x0
/* 00E788 80011788 3865C520 */  addi      r3, r5, D_800FC520@l
/* 00E78C 8001178C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00E790 80011790 38A00001 */  li        r5, 0x1
/* 00E794 80011794 4808D399 */  bl        OSSendMessage
/* 00E798 80011798 8001000C */  lwz       r0, 0xc(r1)
/* 00E79C 8001179C 38210008 */  addi      r1, r1, 0x8
/* 00E7A0 800117A0 7C0803A6 */  mtlr      r0
/* 00E7A4 800117A4 4E800020 */  blr

glabel PopReadedBuffer
/* 00E7A8 800117A8 7C0802A6 */  mflr      r0
/* 00E7AC 800117AC 3C608010 */  lis       r3, D_800FC540@ha
/* 00E7B0 800117B0 90010004 */  stw       r0, 0x4(r1)
/* 00E7B4 800117B4 3863C540 */  addi      r3, r3, D_800FC540@l
/* 00E7B8 800117B8 38A00001 */  li        r5, 0x1
/* 00E7BC 800117BC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 00E7C0 800117C0 38810008 */  addi      r4, r1, 0x8
/* 00E7C4 800117C4 4808D431 */  bl        OSReceiveMessage
/* 00E7C8 800117C8 80010014 */  lwz       r0, 0x14(r1)
/* 00E7CC 800117CC 80610008 */  lwz       r3, 0x8(r1)
/* 00E7D0 800117D0 38210010 */  addi      r1, r1, 0x10
/* 00E7D4 800117D4 7C0803A6 */  mtlr      r0
/* 00E7D8 800117D8 4E800020 */  blr

glabel Reader
/* 00E7DC 800117DC 7C0802A6 */  mflr      r0
/* 00E7E0 800117E0 3C608010 */  lis       r3, D_800FAFE0@ha
/* 00E7E4 800117E4 90010004 */  stw       r0, 0x4(r1)
/* 00E7E8 800117E8 9421FFB8 */  stwu      r1, -0x48(r1)
/* 00E7EC 800117EC BEA1001C */  stmw      r21, 0x1c(r1)
/* 00E7F0 800117F0 3BA3AFE0 */  addi      r29, r3, D_800FAFE0@l
/* 00E7F4 800117F4 3C608010 */  lis       r3, D_800FC520@ha
/* 00E7F8 800117F8 3B83C520 */  addi      r28, r3, D_800FC520@l
/* 00E7FC 800117FC 3BFD0000 */  addi      r31, r29, 0x0
/* 00E800 80011800 3BDD0000 */  addi      r30, r29, 0x0
/* 00E804 80011804 3B000000 */  li        r24, 0x0
/* 00E808 80011808 835D00B8 */  lwz       r26, 0xb8(r29)
/* 00E80C 8001180C 833D00BC */  lwz       r25, 0xbc(r29)
lbl_80011810:
/* 00E810 80011810 387C0000 */  addi      r3, r28, 0x0
/* 00E814 80011814 38810010 */  addi      r4, r1, 0x10
/* 00E818 80011818 38A00001 */  li        r5, 0x1
/* 00E81C 8001181C 4808D3D9 */  bl        OSReceiveMessage
/* 00E820 80011820 83610010 */  lwz       r27, 0x10(r1)
/* 00E824 80011824 82BB0000 */  lwz       r21, 0x0(r27)
lbl_80011828:
/* 00E828 80011828 387E0000 */  addi      r3, r30, 0x0
/* 00E82C 8001182C 38950000 */  addi      r4, r21, 0x0
/* 00E830 80011830 38B90000 */  addi      r5, r25, 0x0
/* 00E834 80011834 38DA0000 */  addi      r6, r26, 0x0
/* 00E838 80011838 3AE00000 */  li        r23, 0x0
/* 00E83C 8001183C 38E00000 */  li        r7, 0x0
/* 00E840 80011840 39000002 */  li        r8, 0x2
/* 00E844 80011844 480A0345 */  bl        DVDReadAsyncPrio
/* 00E848 80011848 48000038 */  b         lbl_80011880
lbl_8001184C:
/* 00E84C 8001184C 38760000 */  addi      r3, r22, 0x0
/* 00E850 80011850 38950000 */  addi      r4, r21, 0x0
/* 00E854 80011854 38B90000 */  addi      r5, r25, 0x0
/* 00E858 80011858 38DA0000 */  addi      r6, r26, 0x0
/* 00E85C 8001185C 48000491 */  bl        movieDVDShowError
/* 00E860 80011860 2C16000B */  cmpwi     r22, 0xb
/* 00E864 80011864 4182000C */  beq       lbl_80011870
/* 00E868 80011868 2C16FFFF */  cmpwi     r22, -0x1
/* 00E86C 8001186C 40820014 */  bne       lbl_80011880
lbl_80011870:
/* 00E870 80011870 7FE3FB78 */  mr        r3, r31
/* 00E874 80011874 480A28E5 */  bl        DVDCancel
/* 00E878 80011878 3AE00001 */  li        r23, 0x1
/* 00E87C 8001187C 48000014 */  b         lbl_80011890
lbl_80011880:
/* 00E880 80011880 7FA3EB78 */  mr        r3, r29
/* 00E884 80011884 480A255D */  bl        DVDGetCommandBlockStatus
/* 00E888 80011888 7C761B79 */  mr.       r22, r3
/* 00E88C 8001188C 4082FFC0 */  bne       lbl_8001184C
lbl_80011890:
/* 00E890 80011890 2C170000 */  cmpwi     r23, 0x0
/* 00E894 80011894 4082FF94 */  bne       lbl_80011828
/* 00E898 80011898 38000000 */  li        r0, 0x0
/* 00E89C 8001189C 900D8954 */  stw       r0, D_8018B8D4@sda21(r0)
/* 00E8A0 800118A0 389B0000 */  addi      r4, r27, 0x0
/* 00E8A4 800118A4 387C0020 */  addi      r3, r28, 0x20
/* 00E8A8 800118A8 931B0004 */  stw       r24, 0x4(r27)
/* 00E8AC 800118AC 38A00001 */  li        r5, 0x1
/* 00E8B0 800118B0 4808D27D */  bl        OSSendMessage
/* 00E8B4 800118B4 801D00C0 */  lwz       r0, 0xc0(r29)
/* 00E8B8 800118B8 7F5ACA14 */  add       r26, r26, r25
/* 00E8BC 800118BC 80BD0050 */  lwz       r5, 0x50(r29)
/* 00E8C0 800118C0 7C780214 */  add       r3, r24, r0
/* 00E8C4 800118C4 809B0000 */  lwz       r4, 0x0(r27)
/* 00E8C8 800118C8 7C032B96 */  divwu     r0, r3, r5
/* 00E8CC 800118CC 83240000 */  lwz       r25, 0x0(r4)
/* 00E8D0 800118D0 7C0029D6 */  mullw     r0, r0, r5
/* 00E8D4 800118D4 7C601850 */  subf      r3, r0, r3
/* 00E8D8 800118D8 3805FFFF */  subi      r0, r5, 0x1
/* 00E8DC 800118DC 7C030040 */  cmplw     r3, r0
/* 00E8E0 800118E0 40820020 */  bne       lbl_80011900
/* 00E8E4 800118E4 881D00A6 */  lbz       r0, 0xa6(r29)
/* 00E8E8 800118E8 540007FF */  clrlwi.   r0, r0, 31
/* 00E8EC 800118EC 4182000C */  beq       lbl_800118F8
/* 00E8F0 800118F0 835D0064 */  lwz       r26, 0x64(r29)
/* 00E8F4 800118F4 4800000C */  b         lbl_80011900
lbl_800118F8:
/* 00E8F8 800118F8 387C00D8 */  addi      r3, r28, 0xd8
/* 00E8FC 800118FC 4808F7D9 */  bl        OSSuspendThread
lbl_80011900:
/* 00E900 80011900 3B180001 */  addi      r24, r24, 0x1
/* 00E904 80011904 4BFFFF0C */  b         lbl_80011810

glabel ReadThreadStart
/* 00E908 80011908 7C0802A6 */  mflr      r0
/* 00E90C 8001190C 90010004 */  stw       r0, 0x4(r1)
/* 00E910 80011910 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00E914 80011914 800D8950 */  lwz       r0, D_8018B8D0@sda21(r0)
/* 00E918 80011918 2C000000 */  cmpwi     r0, 0x0
/* 00E91C 8001191C 41820010 */  beq       lbl_8001192C
/* 00E920 80011920 3C608010 */  lis       r3, D_800FC5F8@ha
/* 00E924 80011924 3863C5F8 */  addi      r3, r3, D_800FC5F8@l
/* 00E928 80011928 4808F525 */  bl        OSResumeThread
lbl_8001192C:
/* 00E92C 8001192C 8001000C */  lwz       r0, 0xc(r1)
/* 00E930 80011930 38210008 */  addi      r1, r1, 0x8
/* 00E934 80011934 7C0803A6 */  mtlr      r0
/* 00E938 80011938 4E800020 */  blr

glabel CreateReadThread
/* 00E93C 8001193C 7C0802A6 */  mflr      r0
/* 00E940 80011940 3C808010 */  lis       r4, D_800FC520@ha
/* 00E944 80011944 90010004 */  stw       r0, 0x4(r1)
/* 00E948 80011948 39030000 */  addi      r8, r3, 0x0
/* 00E94C 8001194C 38A00000 */  li        r5, 0x0
/* 00E950 80011950 9421FFE8 */  stwu      r1, -0x18(r1)
/* 00E954 80011954 38E01000 */  li        r7, 0x1000
/* 00E958 80011958 39200001 */  li        r9, 0x1
/* 00E95C 8001195C 93E10014 */  stw       r31, 0x14(r1)
/* 00E960 80011960 3BE4C520 */  addi      r31, r4, D_800FC520@l
/* 00E964 80011964 3C808001 */  lis       r4, Reader@ha
/* 00E968 80011968 388417DC */  addi      r4, r4, Reader@l
/* 00E96C 8001196C 387F00D8 */  addi      r3, r31, 0xd8
/* 00E970 80011970 38DF13F0 */  addi      r6, r31, 0x13f0
/* 00E974 80011974 4808F051 */  bl        OSCreateThread
/* 00E978 80011978 2C030000 */  cmpwi     r3, 0x0
/* 00E97C 8001197C 4082001C */  bne       lbl_80011998
/* 00E980 80011980 3C60800F */  lis       r3, D_800EB968@ha
/* 00E984 80011984 4CC63182 */  crclr     cr1eq
/* 00E988 80011988 3863B968 */  addi      r3, r3, D_800EB968@l
/* 00E98C 8001198C 4808C1B9 */  bl        OSReport
/* 00E990 80011990 38600000 */  li        r3, 0x0
/* 00E994 80011994 48000040 */  b         lbl_800119D4
lbl_80011998:
/* 00E998 80011998 387F0000 */  addi      r3, r31, 0x0
/* 00E99C 8001199C 389F0060 */  addi      r4, r31, 0x60
/* 00E9A0 800119A0 38A0000A */  li        r5, 0xa
/* 00E9A4 800119A4 4808D129 */  bl        OSInitMessageQueue
/* 00E9A8 800119A8 387F0020 */  addi      r3, r31, 0x20
/* 00E9AC 800119AC 389F0088 */  addi      r4, r31, 0x88
/* 00E9B0 800119B0 38A0000A */  li        r5, 0xa
/* 00E9B4 800119B4 4808D119 */  bl        OSInitMessageQueue
/* 00E9B8 800119B8 387F0040 */  addi      r3, r31, 0x40
/* 00E9BC 800119BC 389F00B0 */  addi      r4, r31, 0xb0
/* 00E9C0 800119C0 38A0000A */  li        r5, 0xa
/* 00E9C4 800119C4 4808D109 */  bl        OSInitMessageQueue
/* 00E9C8 800119C8 38000001 */  li        r0, 0x1
/* 00E9CC 800119CC 900D8950 */  stw       r0, D_8018B8D0@sda21(r0)
/* 00E9D0 800119D0 38600001 */  li        r3, 0x1
lbl_800119D4:
/* 00E9D4 800119D4 8001001C */  lwz       r0, 0x1c(r1)
/* 00E9D8 800119D8 83E10014 */  lwz       r31, 0x14(r1)
/* 00E9DC 800119DC 38210018 */  addi      r1, r1, 0x18
/* 00E9E0 800119E0 7C0803A6 */  mtlr      r0
/* 00E9E4 800119E4 4E800020 */  blr

glabel movieReset
/* 00E9E8 800119E8 7C0802A6 */  mflr      r0
/* 00E9EC 800119EC 90010004 */  stw       r0, 0x4(r1)
/* 00E9F0 800119F0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 00E9F4 800119F4 93E10014 */  stw       r31, 0x14(r1)
/* 00E9F8 800119F8 3BE40000 */  addi      r31, r4, 0x0
/* 00E9FC 800119FC 93C10010 */  stw       r30, 0x10(r1)
/* 00EA00 80011A00 3BC30000 */  addi      r30, r3, 0x0
/* 00EA04 80011A04 38600001 */  li        r3, 0x1
/* 00EA08 80011A08 48094B2D */  bl        fn_800A6534
/* 00EA0C 80011A0C 4809498D */  bl        VIFlush
/* 00EA10 80011A10 48093C99 */  bl        VIWaitForRetrace
/* 00EA14 80011A14 3C60F000 */  lis       r3, 0xf000
/* 00EA18 80011A18 4809DB85 */  bl        PADRecalibrate
/* 00EA1C 80011A1C 48097EA9 */  bl        fn_800A98C4
/* 00EA20 80011A20 4808B4B9 */  bl        LCDisable
/* 00EA24 80011A24 48093C85 */  bl        VIWaitForRetrace
/* 00EA28 80011A28 2C1E0001 */  cmpwi     r30, 0x1
/* 00EA2C 80011A2C 40820034 */  bne       lbl_80011A60
/* 00EA30 80011A30 2C1F0001 */  cmpwi     r31, 0x1
/* 00EA34 80011A34 40820018 */  bne       lbl_80011A4C
/* 00EA38 80011A38 38600001 */  li        r3, 0x1
/* 00EA3C 80011A3C 38800000 */  li        r4, 0x0
/* 00EA40 80011A40 38A00001 */  li        r5, 0x1
/* 00EA44 80011A44 4808D8FD */  bl        OSResetSystem
/* 00EA48 80011A48 48000028 */  b         lbl_80011A70
lbl_80011A4C:
/* 00EA4C 80011A4C 38600001 */  li        r3, 0x1
/* 00EA50 80011A50 38800000 */  li        r4, 0x0
/* 00EA54 80011A54 38A00000 */  li        r5, 0x0
/* 00EA58 80011A58 4808D8E9 */  bl        OSResetSystem
/* 00EA5C 80011A5C 48000014 */  b         lbl_80011A70
lbl_80011A60:
/* 00EA60 80011A60 38600000 */  li        r3, 0x0
/* 00EA64 80011A64 38800000 */  li        r4, 0x0
/* 00EA68 80011A68 38A00000 */  li        r5, 0x0
/* 00EA6C 80011A6C 4808D8D5 */  bl        OSResetSystem
lbl_80011A70:
/* 00EA70 80011A70 8001001C */  lwz       r0, 0x1c(r1)
/* 00EA74 80011A74 83E10014 */  lwz       r31, 0x14(r1)
/* 00EA78 80011A78 83C10010 */  lwz       r30, 0x10(r1)
/* 00EA7C 80011A7C 7C0803A6 */  mtlr      r0
/* 00EA80 80011A80 38210018 */  addi      r1, r1, 0x18
/* 00EA84 80011A84 4E800020 */  blr

glabel movieTestReset
/* 00EA88 80011A88 7C0802A6 */  mflr      r0
/* 00EA8C 80011A8C 90010004 */  stw       r0, 0x4(r1)
/* 00EA90 80011A90 9421FFC8 */  stwu      r1, -0x38(r1)
/* 00EA94 80011A94 93E10034 */  stw       r31, 0x34(r1)
/* 00EA98 80011A98 93C10030 */  stw       r30, 0x30(r1)
/* 00EA9C 80011A9C 3BC40000 */  addi      r30, r4, 0x0
/* 00EAA0 80011AA0 93A1002C */  stw       r29, 0x2c(r1)
/* 00EAA4 80011AA4 3BA30000 */  addi      r29, r3, 0x0
/* 00EAA8 80011AA8 4808FA51 */  bl        OSGetTick
/* 00EAAC 80011AAC 7C7F1B78 */  mr        r31, r3
/* 00EAB0 80011AB0 480A4331 */  bl        DEMOPadRead
/* 00EAB4 80011AB4 4808DC29 */  bl        OSGetResetButtonState
/* 00EAB8 80011AB8 3C808019 */  lis       r4, D_801889F8@ha
/* 00EABC 80011ABC A00489F8 */  lhz       r0, D_801889F8@l(r4)
/* 00EAC0 80011AC0 70001600 */  andi.     r0, r0, 0x1600
/* 00EAC4 80011AC4 2C001600 */  cmpwi     r0, 0x1600
/* 00EAC8 80011AC8 41820098 */  beq       lbl_80011B60
/* 00EACC 80011ACC 800D895C */  lwz       r0, D_8018B8DC@sda21(r0)
/* 00EAD0 80011AD0 93ED8960 */  stw       r31, D_8018B8E0@sda21(r0)
/* 00EAD4 80011AD4 2C000000 */  cmpwi     r0, 0x0
/* 00EAD8 80011AD8 4182000C */  beq       lbl_80011AE4
/* 00EADC 80011ADC 28030000 */  cmplwi    r3, 0x0
/* 00EAE0 80011AE0 41820010 */  beq       lbl_80011AF0
lbl_80011AE4:
/* 00EAE4 80011AE4 906D895C */  stw       r3, D_8018B8DC@sda21(r0)
/* 00EAE8 80011AE8 38600001 */  li        r3, 0x1
/* 00EAEC 80011AEC 48000134 */  b         lbl_80011C20
lbl_80011AF0:
/* 00EAF0 80011AF0 38600001 */  li        r3, 0x1
/* 00EAF4 80011AF4 48094A41 */  bl        fn_800A6534
/* 00EAF8 80011AF8 480948A1 */  bl        VIFlush
/* 00EAFC 80011AFC 48093BAD */  bl        VIWaitForRetrace
/* 00EB00 80011B00 3C60F000 */  lis       r3, 0xf000
/* 00EB04 80011B04 4809DA99 */  bl        PADRecalibrate
/* 00EB08 80011B08 48097DBD */  bl        fn_800A98C4
/* 00EB0C 80011B0C 4808B3CD */  bl        LCDisable
/* 00EB10 80011B10 48093B99 */  bl        VIWaitForRetrace
/* 00EB14 80011B14 2C1D0001 */  cmpwi     r29, 0x1
/* 00EB18 80011B18 40820034 */  bne       lbl_80011B4C
/* 00EB1C 80011B1C 2C1E0001 */  cmpwi     r30, 0x1
/* 00EB20 80011B20 40820018 */  bne       lbl_80011B38
/* 00EB24 80011B24 38600001 */  li        r3, 0x1
/* 00EB28 80011B28 38800000 */  li        r4, 0x0
/* 00EB2C 80011B2C 38A00001 */  li        r5, 0x1
/* 00EB30 80011B30 4808D811 */  bl        OSResetSystem
/* 00EB34 80011B34 480000E8 */  b         lbl_80011C1C
lbl_80011B38:
/* 00EB38 80011B38 38600001 */  li        r3, 0x1
/* 00EB3C 80011B3C 38800000 */  li        r4, 0x0
/* 00EB40 80011B40 38A00000 */  li        r5, 0x0
/* 00EB44 80011B44 4808D7FD */  bl        OSResetSystem
/* 00EB48 80011B48 480000D4 */  b         lbl_80011C1C
lbl_80011B4C:
/* 00EB4C 80011B4C 38600000 */  li        r3, 0x0
/* 00EB50 80011B50 38800000 */  li        r4, 0x0
/* 00EB54 80011B54 38A00000 */  li        r5, 0x0
/* 00EB58 80011B58 4808D7E9 */  bl        OSResetSystem
/* 00EB5C 80011B5C 480000C0 */  b         lbl_80011C1C
lbl_80011B60:
/* 00EB60 80011B60 3C608000 */  lis       r3, 0x8000
/* 00EB64 80011B64 808D8960 */  lwz       r4, D_8018B8E0@sda21(r0)
/* 00EB68 80011B68 800300F8 */  lwz       r0, 0xf8(r3)
/* 00EB6C 80011B6C 3C604330 */  lis       r3, 0x4330
/* 00EB70 80011B70 7C84F850 */  subf      r4, r4, r31
/* 00EB74 80011B74 C86280B0 */  lfd       f3, D_8018BFF0@sda21(r0)
/* 00EB78 80011B78 5400F0BE */  srwi      r0, r0, 2
/* 00EB7C 80011B7C 9001001C */  stw       r0, 0x1c(r1)
/* 00EB80 80011B80 C02280AC */  lfs       f1, D_8018BFEC@sda21(r0)
/* 00EB84 80011B84 90610018 */  stw       r3, 0x18(r1)
/* 00EB88 80011B88 90810024 */  stw       r4, 0x24(r1)
/* 00EB8C 80011B8C C8010018 */  lfd       f0, 0x18(r1)
/* 00EB90 80011B90 90610020 */  stw       r3, 0x20(r1)
/* 00EB94 80011B94 EC001828 */  fsubs     f0, f0, f3
/* 00EB98 80011B98 C8410020 */  lfd       f2, 0x20(r1)
/* 00EB9C 80011B9C EC421828 */  fsubs     f2, f2, f3
/* 00EBA0 80011BA0 EC010032 */  fmuls     f0, f1, f0
/* 00EBA4 80011BA4 FC020040 */  fcmpo     cr0, f2, f0
/* 00EBA8 80011BA8 4C411382 */  cror      eq, gt, eq
/* 00EBAC 80011BAC 40820070 */  bne       lbl_80011C1C
/* 00EBB0 80011BB0 38600001 */  li        r3, 0x1
/* 00EBB4 80011BB4 48094981 */  bl        fn_800A6534
/* 00EBB8 80011BB8 480947E1 */  bl        VIFlush
/* 00EBBC 80011BBC 48093AED */  bl        VIWaitForRetrace
/* 00EBC0 80011BC0 3C60F000 */  lis       r3, 0xf000
/* 00EBC4 80011BC4 4809D9D9 */  bl        PADRecalibrate
/* 00EBC8 80011BC8 48097CFD */  bl        fn_800A98C4
/* 00EBCC 80011BCC 4808B30D */  bl        LCDisable
/* 00EBD0 80011BD0 48093AD9 */  bl        VIWaitForRetrace
/* 00EBD4 80011BD4 2C1D0001 */  cmpwi     r29, 0x1
/* 00EBD8 80011BD8 40820034 */  bne       lbl_80011C0C
/* 00EBDC 80011BDC 2C1E0001 */  cmpwi     r30, 0x1
/* 00EBE0 80011BE0 40820018 */  bne       lbl_80011BF8
/* 00EBE4 80011BE4 38600001 */  li        r3, 0x1
/* 00EBE8 80011BE8 38800000 */  li        r4, 0x0
/* 00EBEC 80011BEC 38A00001 */  li        r5, 0x1
/* 00EBF0 80011BF0 4808D751 */  bl        OSResetSystem
/* 00EBF4 80011BF4 48000028 */  b         lbl_80011C1C
lbl_80011BF8:
/* 00EBF8 80011BF8 38600001 */  li        r3, 0x1
/* 00EBFC 80011BFC 38800000 */  li        r4, 0x0
/* 00EC00 80011C00 38A00000 */  li        r5, 0x0
/* 00EC04 80011C04 4808D73D */  bl        OSResetSystem
/* 00EC08 80011C08 48000014 */  b         lbl_80011C1C
lbl_80011C0C:
/* 00EC0C 80011C0C 38600000 */  li        r3, 0x0
/* 00EC10 80011C10 38800000 */  li        r4, 0x0
/* 00EC14 80011C14 38A00000 */  li        r5, 0x0
/* 00EC18 80011C18 4808D729 */  bl        OSResetSystem
lbl_80011C1C:
/* 00EC1C 80011C1C 38600001 */  li        r3, 0x1
lbl_80011C20:
/* 00EC20 80011C20 8001003C */  lwz       r0, 0x3c(r1)
/* 00EC24 80011C24 83E10034 */  lwz       r31, 0x34(r1)
/* 00EC28 80011C28 83C10030 */  lwz       r30, 0x30(r1)
/* 00EC2C 80011C2C 7C0803A6 */  mtlr      r0
/* 00EC30 80011C30 83A1002C */  lwz       r29, 0x2c(r1)
/* 00EC34 80011C34 38210038 */  addi      r1, r1, 0x38
/* 00EC38 80011C38 4E800020 */  blr

glabel movieDVDRead
/* 00EC3C 80011C3C 7C0802A6 */  mflr      r0
/* 00EC40 80011C40 90010004 */  stw       r0, 0x4(r1)
/* 00EC44 80011C44 9421FFD0 */  stwu      r1, -0x30(r1)
/* 00EC48 80011C48 BF410018 */  stmw      r26, 0x18(r1)
/* 00EC4C 80011C4C 3B430000 */  addi      r26, r3, 0x0
/* 00EC50 80011C50 3B640000 */  addi      r27, r4, 0x0
/* 00EC54 80011C54 3B850000 */  addi      r28, r5, 0x0
/* 00EC58 80011C58 3BA60000 */  addi      r29, r6, 0x0
lbl_80011C5C:
/* 00EC5C 80011C5C 387A0000 */  addi      r3, r26, 0x0
/* 00EC60 80011C60 389B0000 */  addi      r4, r27, 0x0
/* 00EC64 80011C64 38BC0000 */  addi      r5, r28, 0x0
/* 00EC68 80011C68 38DD0000 */  addi      r6, r29, 0x0
/* 00EC6C 80011C6C 3BC00000 */  li        r30, 0x0
/* 00EC70 80011C70 38E00000 */  li        r7, 0x0
/* 00EC74 80011C74 39000002 */  li        r8, 0x2
/* 00EC78 80011C78 4809FF11 */  bl        DVDReadAsyncPrio
/* 00EC7C 80011C7C 48000038 */  b         lbl_80011CB4
lbl_80011C80:
/* 00EC80 80011C80 387F0000 */  addi      r3, r31, 0x0
/* 00EC84 80011C84 389B0000 */  addi      r4, r27, 0x0
/* 00EC88 80011C88 38BC0000 */  addi      r5, r28, 0x0
/* 00EC8C 80011C8C 38DD0000 */  addi      r6, r29, 0x0
/* 00EC90 80011C90 4800005D */  bl        movieDVDShowError
/* 00EC94 80011C94 2C1F000B */  cmpwi     r31, 0xb
/* 00EC98 80011C98 4182000C */  beq       lbl_80011CA4
/* 00EC9C 80011C9C 2C1FFFFF */  cmpwi     r31, -0x1
/* 00ECA0 80011CA0 40820014 */  bne       lbl_80011CB4
lbl_80011CA4:
/* 00ECA4 80011CA4 7F43D378 */  mr        r3, r26
/* 00ECA8 80011CA8 480A24B1 */  bl        DVDCancel
/* 00ECAC 80011CAC 3BC00001 */  li        r30, 0x1
/* 00ECB0 80011CB0 48000014 */  b         lbl_80011CC4
lbl_80011CB4:
/* 00ECB4 80011CB4 7F43D378 */  mr        r3, r26
/* 00ECB8 80011CB8 480A2129 */  bl        DVDGetCommandBlockStatus
/* 00ECBC 80011CBC 7C7F1B79 */  mr.       r31, r3
/* 00ECC0 80011CC0 4082FFC0 */  bne       lbl_80011C80
lbl_80011CC4:
/* 00ECC4 80011CC4 2C1E0000 */  cmpwi     r30, 0x0
/* 00ECC8 80011CC8 4082FF94 */  bne       lbl_80011C5C
/* 00ECCC 80011CCC 38000000 */  li        r0, 0x0
/* 00ECD0 80011CD0 900D8954 */  stw       r0, D_8018B8D4@sda21(r0)
/* 00ECD4 80011CD4 38600001 */  li        r3, 0x1
/* 00ECD8 80011CD8 80010034 */  lwz       r0, 0x34(r1)
/* 00ECDC 80011CDC BB410018 */  lmw       r26, 0x18(r1)
/* 00ECE0 80011CE0 38210030 */  addi      r1, r1, 0x30
/* 00ECE4 80011CE4 7C0803A6 */  mtlr      r0
/* 00ECE8 80011CE8 4E800020 */  blr

glabel movieDVDShowError
/* 00ECEC 80011CEC 7C0802A6 */  mflr      r0
/* 00ECF0 80011CF0 90010004 */  stw       r0, 0x4(r1)
/* 00ECF4 80011CF4 38030001 */  addi      r0, r3, 0x1
/* 00ECF8 80011CF8 2800000C */  cmplwi    r0, 0xc
/* 00ECFC 80011CFC 9421FFC8 */  stwu      r1, -0x38(r1)
/* 00ED00 80011D00 93E10034 */  stw       r31, 0x34(r1)
/* 00ED04 80011D04 3BE0FFFF */  li        r31, -0x1
/* 00ED08 80011D08 93C10030 */  stw       r30, 0x30(r1)
/* 00ED0C 80011D0C 41810040 */  bgt       lbl_80011D4C
/* 00ED10 80011D10 3C80800F */  lis       r4, jtbl_800EB984@ha
/* 00ED14 80011D14 3884B984 */  addi      r4, r4, jtbl_800EB984@l
/* 00ED18 80011D18 5400103A */  slwi      r0, r0, 2
/* 00ED1C 80011D1C 7C04002E */  lwzx      r0, r4, r0
/* 00ED20 80011D20 7C0903A6 */  mtctr     r0
/* 00ED24 80011D24 4E800420 */  bctr
lbl_80011D28:
/* 00ED28 80011D28 3BE00003 */  li        r31, 0x3
/* 00ED2C 80011D2C 48000020 */  b         lbl_80011D4C
lbl_80011D30:
/* 00ED30 80011D30 3BE00005 */  li        r31, 0x5
/* 00ED34 80011D34 48000018 */  b         lbl_80011D4C
lbl_80011D38:
/* 00ED38 80011D38 3BE00000 */  li        r31, 0x0
/* 00ED3C 80011D3C 48000010 */  b         lbl_80011D4C
lbl_80011D40:
/* 00ED40 80011D40 3BE00001 */  li        r31, 0x1
/* 00ED44 80011D44 48000008 */  b         lbl_80011D4C
lbl_80011D48:
/* 00ED48 80011D48 3BE00004 */  li        r31, 0x4
lbl_80011D4C:
/* 00ED4C 80011D4C 2C030001 */  cmpwi     r3, 0x1
/* 00ED50 80011D50 41820044 */  beq       lbl_80011D94
/* 00ED54 80011D54 2C030000 */  cmpwi     r3, 0x0
/* 00ED58 80011D58 4182003C */  beq       lbl_80011D94
/* 00ED5C 80011D5C 2C030002 */  cmpwi     r3, 0x2
/* 00ED60 80011D60 41820034 */  beq       lbl_80011D94
/* 00ED64 80011D64 2C030003 */  cmpwi     r3, 0x3
/* 00ED68 80011D68 4182002C */  beq       lbl_80011D94
/* 00ED6C 80011D6C 2C030007 */  cmpwi     r3, 0x7
/* 00ED70 80011D70 41820024 */  beq       lbl_80011D94
/* 00ED74 80011D74 2C030008 */  cmpwi     r3, 0x8
/* 00ED78 80011D78 4182001C */  beq       lbl_80011D94
/* 00ED7C 80011D7C 2C03000A */  cmpwi     r3, 0xa
/* 00ED80 80011D80 41820014 */  beq       lbl_80011D94
/* 00ED84 80011D84 38000001 */  li        r0, 0x1
/* 00ED88 80011D88 900D8954 */  stw       r0, D_8018B8D4@sda21(r0)
/* 00ED8C 80011D8C 900D8958 */  stw       r0, D_8018B8D8@sda21(r0)
/* 00ED90 80011D90 4800001C */  b         lbl_80011DAC
lbl_80011D94:
/* 00ED94 80011D94 800D8958 */  lwz       r0, D_8018B8D8@sda21(r0)
/* 00ED98 80011D98 2C000001 */  cmpwi     r0, 0x1
/* 00ED9C 80011D9C 40820010 */  bne       lbl_80011DAC
/* 00EDA0 80011DA0 38000000 */  li        r0, 0x0
/* 00EDA4 80011DA4 900D8958 */  stw       r0, D_8018B8D8@sda21(r0)
/* 00EDA8 80011DA8 3BE00002 */  li        r31, 0x2
lbl_80011DAC:
/* 00EDAC 80011DAC 2C030005 */  cmpwi     r3, 0x5
/* 00EDB0 80011DB0 408200B8 */  bne       lbl_80011E68
/* 00EDB4 80011DB4 4808F745 */  bl        OSGetTick
/* 00EDB8 80011DB8 7C7E1B78 */  mr        r30, r3
/* 00EDBC 80011DBC 480A4025 */  bl        DEMOPadRead
/* 00EDC0 80011DC0 4808D91D */  bl        OSGetResetButtonState
/* 00EDC4 80011DC4 3C808019 */  lis       r4, D_801889F8@ha
/* 00EDC8 80011DC8 A00489F8 */  lhz       r0, D_801889F8@l(r4)
/* 00EDCC 80011DCC 70001600 */  andi.     r0, r0, 0x1600
/* 00EDD0 80011DD0 2C001600 */  cmpwi     r0, 0x1600
/* 00EDD4 80011DD4 41820034 */  beq       lbl_80011E08
/* 00EDD8 80011DD8 800D895C */  lwz       r0, D_8018B8DC@sda21(r0)
/* 00EDDC 80011DDC 93CD8960 */  stw       r30, D_8018B8E0@sda21(r0)
/* 00EDE0 80011DE0 2C000000 */  cmpwi     r0, 0x0
/* 00EDE4 80011DE4 4182000C */  beq       lbl_80011DF0
/* 00EDE8 80011DE8 28030000 */  cmplwi    r3, 0x0
/* 00EDEC 80011DEC 4182000C */  beq       lbl_80011DF8
lbl_80011DF0:
/* 00EDF0 80011DF0 906D895C */  stw       r3, D_8018B8DC@sda21(r0)
/* 00EDF4 80011DF4 4800012C */  b         lbl_80011F20
lbl_80011DF8:
/* 00EDF8 80011DF8 38600001 */  li        r3, 0x1
/* 00EDFC 80011DFC 38800001 */  li        r4, 0x1
/* 00EE00 80011E00 4BFFFBE9 */  bl        movieReset
/* 00EE04 80011E04 4800011C */  b         lbl_80011F20
lbl_80011E08:
/* 00EE08 80011E08 3C608000 */  lis       r3, 0x8000
/* 00EE0C 80011E0C 808D8960 */  lwz       r4, D_8018B8E0@sda21(r0)
/* 00EE10 80011E10 800300F8 */  lwz       r0, 0xf8(r3)
/* 00EE14 80011E14 3C604330 */  lis       r3, 0x4330
/* 00EE18 80011E18 7C84F050 */  subf      r4, r4, r30
/* 00EE1C 80011E1C C86280B0 */  lfd       f3, D_8018BFF0@sda21(r0)
/* 00EE20 80011E20 5400F0BE */  srwi      r0, r0, 2
/* 00EE24 80011E24 90010024 */  stw       r0, 0x24(r1)
/* 00EE28 80011E28 C02280AC */  lfs       f1, D_8018BFEC@sda21(r0)
/* 00EE2C 80011E2C 90610020 */  stw       r3, 0x20(r1)
/* 00EE30 80011E30 9081002C */  stw       r4, 0x2c(r1)
/* 00EE34 80011E34 C8010020 */  lfd       f0, 0x20(r1)
/* 00EE38 80011E38 90610028 */  stw       r3, 0x28(r1)
/* 00EE3C 80011E3C EC001828 */  fsubs     f0, f0, f3
/* 00EE40 80011E40 C8410028 */  lfd       f2, 0x28(r1)
/* 00EE44 80011E44 EC421828 */  fsubs     f2, f2, f3
/* 00EE48 80011E48 EC010032 */  fmuls     f0, f1, f0
/* 00EE4C 80011E4C FC020040 */  fcmpo     cr0, f2, f0
/* 00EE50 80011E50 4C411382 */  cror      eq, gt, eq
/* 00EE54 80011E54 408200CC */  bne       lbl_80011F20
/* 00EE58 80011E58 38600001 */  li        r3, 0x1
/* 00EE5C 80011E5C 38800001 */  li        r4, 0x1
/* 00EE60 80011E60 4BFFFB89 */  bl        movieReset
/* 00EE64 80011E64 480000BC */  b         lbl_80011F20
lbl_80011E68:
/* 00EE68 80011E68 2C03FFFF */  cmpwi     r3, -0x1
/* 00EE6C 80011E6C 418200B4 */  beq       lbl_80011F20
/* 00EE70 80011E70 4808F689 */  bl        OSGetTick
/* 00EE74 80011E74 7C7E1B78 */  mr        r30, r3
/* 00EE78 80011E78 480A3F69 */  bl        DEMOPadRead
/* 00EE7C 80011E7C 4808D861 */  bl        OSGetResetButtonState
/* 00EE80 80011E80 3C808019 */  lis       r4, D_801889F8@ha
/* 00EE84 80011E84 A00489F8 */  lhz       r0, D_801889F8@l(r4)
/* 00EE88 80011E88 70001600 */  andi.     r0, r0, 0x1600
/* 00EE8C 80011E8C 2C001600 */  cmpwi     r0, 0x1600
/* 00EE90 80011E90 41820034 */  beq       lbl_80011EC4
/* 00EE94 80011E94 800D895C */  lwz       r0, D_8018B8DC@sda21(r0)
/* 00EE98 80011E98 93CD8960 */  stw       r30, D_8018B8E0@sda21(r0)
/* 00EE9C 80011E9C 2C000000 */  cmpwi     r0, 0x0
/* 00EEA0 80011EA0 4182000C */  beq       lbl_80011EAC
/* 00EEA4 80011EA4 28030000 */  cmplwi    r3, 0x0
/* 00EEA8 80011EA8 4182000C */  beq       lbl_80011EB4
lbl_80011EAC:
/* 00EEAC 80011EAC 906D895C */  stw       r3, D_8018B8DC@sda21(r0)
/* 00EEB0 80011EB0 48000070 */  b         lbl_80011F20
lbl_80011EB4:
/* 00EEB4 80011EB4 38600001 */  li        r3, 0x1
/* 00EEB8 80011EB8 38800000 */  li        r4, 0x0
/* 00EEBC 80011EBC 4BFFFB2D */  bl        movieReset
/* 00EEC0 80011EC0 48000060 */  b         lbl_80011F20
lbl_80011EC4:
/* 00EEC4 80011EC4 3C608000 */  lis       r3, 0x8000
/* 00EEC8 80011EC8 808D8960 */  lwz       r4, D_8018B8E0@sda21(r0)
/* 00EECC 80011ECC 800300F8 */  lwz       r0, 0xf8(r3)
/* 00EED0 80011ED0 3C604330 */  lis       r3, 0x4330
/* 00EED4 80011ED4 7C84F050 */  subf      r4, r4, r30
/* 00EED8 80011ED8 C86280B0 */  lfd       f3, D_8018BFF0@sda21(r0)
/* 00EEDC 80011EDC 5400F0BE */  srwi      r0, r0, 2
/* 00EEE0 80011EE0 9001002C */  stw       r0, 0x2c(r1)
/* 00EEE4 80011EE4 C02280AC */  lfs       f1, D_8018BFEC@sda21(r0)
/* 00EEE8 80011EE8 90610028 */  stw       r3, 0x28(r1)
/* 00EEEC 80011EEC 90810024 */  stw       r4, 0x24(r1)
/* 00EEF0 80011EF0 C8010028 */  lfd       f0, 0x28(r1)
/* 00EEF4 80011EF4 90610020 */  stw       r3, 0x20(r1)
/* 00EEF8 80011EF8 EC001828 */  fsubs     f0, f0, f3
/* 00EEFC 80011EFC C8410020 */  lfd       f2, 0x20(r1)
/* 00EF00 80011F00 EC421828 */  fsubs     f2, f2, f3
/* 00EF04 80011F04 EC010032 */  fmuls     f0, f1, f0
/* 00EF08 80011F08 FC020040 */  fcmpo     cr0, f2, f0
/* 00EF0C 80011F0C 4C411382 */  cror      eq, gt, eq
/* 00EF10 80011F10 40820010 */  bne       lbl_80011F20
/* 00EF14 80011F14 38600001 */  li        r3, 0x1
/* 00EF18 80011F18 38800000 */  li        r4, 0x0
/* 00EF1C 80011F1C 4BFFFACD */  bl        movieReset
lbl_80011F20:
/* 00EF20 80011F20 2C1FFFFF */  cmpwi     r31, -0x1
/* 00EF24 80011F24 4182000C */  beq       lbl_80011F30
/* 00EF28 80011F28 7FE3FB78 */  mr        r3, r31
/* 00EF2C 80011F2C 48000021 */  bl        movieDrawErrorMessage
lbl_80011F30:
/* 00EF30 80011F30 8001003C */  lwz       r0, 0x3c(r1)
/* 00EF34 80011F34 38600001 */  li        r3, 0x1
/* 00EF38 80011F38 83E10034 */  lwz       r31, 0x34(r1)
/* 00EF3C 80011F3C 83C10030 */  lwz       r30, 0x30(r1)
/* 00EF40 80011F40 7C0803A6 */  mtlr      r0
/* 00EF44 80011F44 38210038 */  addi      r1, r1, 0x38
/* 00EF48 80011F48 4E800020 */  blr

glabel movieDrawErrorMessage
/* 00EF4C 80011F4C 7C0802A6 */  mflr      r0
/* 00EF50 80011F50 28030006 */  cmplwi    r3, 0x6
/* 00EF54 80011F54 90010004 */  stw       r0, 0x4(r1)
/* 00EF58 80011F58 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00EF5C 80011F5C 418101A0 */  bgt       lbl_800120FC
/* 00EF60 80011F60 3C80800F */  lis       r4, jtbl_800EB9B8@ha
/* 00EF64 80011F64 3884B9B8 */  addi      r4, r4, jtbl_800EB9B8@l
/* 00EF68 80011F68 5460103A */  slwi      r0, r3, 2
/* 00EF6C 80011F6C 7C04002E */  lwzx      r0, r4, r0
/* 00EF70 80011F70 7C0903A6 */  mtctr     r0
/* 00EF74 80011F74 4E800420 */  bctr
lbl_80011F78:
/* 00EF78 80011F78 3C60800E */  lis       r3, D_800DA3E0@ha
/* 00EF7C 80011F7C 3863A3E0 */  addi      r3, r3, D_800DA3E0@l
/* 00EF80 80011F80 80830008 */  lwz       r4, 0x8(r3)
/* 00EF84 80011F84 80A40000 */  lwz       r5, 0x0(r4)
/* 00EF88 80011F88 A0850002 */  lhz       r4, 0x2(r5)
/* 00EF8C 80011F8C A0050000 */  lhz       r0, 0x0(r5)
/* 00EF90 80011F90 7C840E70 */  srawi     r4, r4, 1
/* 00EF94 80011F94 7C840194 */  addze     r4, r4
/* 00EF98 80011F98 208400A0 */  subfic    r4, r4, 0xa0
/* 00EF9C 80011F9C 7C000E70 */  srawi     r0, r0, 1
/* 00EFA0 80011FA0 7C000194 */  addze     r0, r0
/* 00EFA4 80011FA4 20A00078 */  subfic    r5, r0, 0x78
/* 00EFA8 80011FA8 48000169 */  bl        movieDrawImage
/* 00EFAC 80011FAC 48000150 */  b         lbl_800120FC
lbl_80011FB0:
/* 00EFB0 80011FB0 3C60800E */  lis       r3, D_800E4340@ha
/* 00EFB4 80011FB4 38634340 */  addi      r3, r3, D_800E4340@l
/* 00EFB8 80011FB8 80830008 */  lwz       r4, 0x8(r3)
/* 00EFBC 80011FBC 80A40000 */  lwz       r5, 0x0(r4)
/* 00EFC0 80011FC0 A0850002 */  lhz       r4, 0x2(r5)
/* 00EFC4 80011FC4 A0050000 */  lhz       r0, 0x0(r5)
/* 00EFC8 80011FC8 7C840E70 */  srawi     r4, r4, 1
/* 00EFCC 80011FCC 7C840194 */  addze     r4, r4
/* 00EFD0 80011FD0 208400A0 */  subfic    r4, r4, 0xa0
/* 00EFD4 80011FD4 7C000E70 */  srawi     r0, r0, 1
/* 00EFD8 80011FD8 7C000194 */  addze     r0, r0
/* 00EFDC 80011FDC 20A00078 */  subfic    r5, r0, 0x78
/* 00EFE0 80011FE0 48000131 */  bl        movieDrawImage
/* 00EFE4 80011FE4 48000118 */  b         lbl_800120FC
lbl_80011FE8:
/* 00EFE8 80011FE8 3C60800F */  lis       r3, D_800E8B60@ha
/* 00EFEC 80011FEC 38638B60 */  addi      r3, r3, D_800E8B60@l
/* 00EFF0 80011FF0 80830008 */  lwz       r4, 0x8(r3)
/* 00EFF4 80011FF4 80A40000 */  lwz       r5, 0x0(r4)
/* 00EFF8 80011FF8 A0850002 */  lhz       r4, 0x2(r5)
/* 00EFFC 80011FFC A0050000 */  lhz       r0, 0x0(r5)
/* 00F000 80012000 7C840E70 */  srawi     r4, r4, 1
/* 00F004 80012004 7C840194 */  addze     r4, r4
/* 00F008 80012008 208400A0 */  subfic    r4, r4, 0xa0
/* 00F00C 8001200C 7C000E70 */  srawi     r0, r0, 1
/* 00F010 80012010 7C000194 */  addze     r0, r0
/* 00F014 80012014 20A00078 */  subfic    r5, r0, 0x78
/* 00F018 80012018 480000F9 */  bl        movieDrawImage
/* 00F01C 8001201C 480000E0 */  b         lbl_800120FC
lbl_80012020:
/* 00F020 80012020 3C60800E */  lis       r3, D_800DEBE0@ha
/* 00F024 80012024 3863EBE0 */  addi      r3, r3, D_800DEBE0@l
/* 00F028 80012028 80830008 */  lwz       r4, 0x8(r3)
/* 00F02C 8001202C 80A40000 */  lwz       r5, 0x0(r4)
/* 00F030 80012030 A0850002 */  lhz       r4, 0x2(r5)
/* 00F034 80012034 A0050000 */  lhz       r0, 0x0(r5)
/* 00F038 80012038 7C840E70 */  srawi     r4, r4, 1
/* 00F03C 8001203C 7C840194 */  addze     r4, r4
/* 00F040 80012040 208400A0 */  subfic    r4, r4, 0xa0
/* 00F044 80012044 7C000E70 */  srawi     r0, r0, 1
/* 00F048 80012048 7C000194 */  addze     r0, r0
/* 00F04C 8001204C 20A00078 */  subfic    r5, r0, 0x78
/* 00F050 80012050 480000C1 */  bl        movieDrawImage
/* 00F054 80012054 480000A8 */  b         lbl_800120FC
lbl_80012058:
/* 00F058 80012058 3C60800E */  lis       r3, D_800E1040@ha
/* 00F05C 8001205C 38631040 */  addi      r3, r3, D_800E1040@l
/* 00F060 80012060 80830008 */  lwz       r4, 0x8(r3)
/* 00F064 80012064 80A40000 */  lwz       r5, 0x0(r4)
/* 00F068 80012068 A0850002 */  lhz       r4, 0x2(r5)
/* 00F06C 8001206C A0050000 */  lhz       r0, 0x0(r5)
/* 00F070 80012070 7C840E70 */  srawi     r4, r4, 1
/* 00F074 80012074 7C840194 */  addze     r4, r4
/* 00F078 80012078 208400A0 */  subfic    r4, r4, 0xa0
/* 00F07C 8001207C 7C000E70 */  srawi     r0, r0, 1
/* 00F080 80012080 7C000194 */  addze     r0, r0
/* 00F084 80012084 20A00078 */  subfic    r5, r0, 0x78
/* 00F088 80012088 48000089 */  bl        movieDrawImage
/* 00F08C 8001208C 48000070 */  b         lbl_800120FC
lbl_80012090:
/* 00F090 80012090 3C60800E */  lis       r3, D_800DCCC0@ha
/* 00F094 80012094 3863CCC0 */  addi      r3, r3, D_800DCCC0@l
/* 00F098 80012098 80830008 */  lwz       r4, 0x8(r3)
/* 00F09C 8001209C 80A40000 */  lwz       r5, 0x0(r4)
/* 00F0A0 800120A0 A0850002 */  lhz       r4, 0x2(r5)
/* 00F0A4 800120A4 A0050000 */  lhz       r0, 0x0(r5)
/* 00F0A8 800120A8 7C840E70 */  srawi     r4, r4, 1
/* 00F0AC 800120AC 7C840194 */  addze     r4, r4
/* 00F0B0 800120B0 208400A0 */  subfic    r4, r4, 0xa0
/* 00F0B4 800120B4 7C000E70 */  srawi     r0, r0, 1
/* 00F0B8 800120B8 7C000194 */  addze     r0, r0
/* 00F0BC 800120BC 20A00078 */  subfic    r5, r0, 0x78
/* 00F0C0 800120C0 48000051 */  bl        movieDrawImage
/* 00F0C4 800120C4 48000038 */  b         lbl_800120FC
lbl_800120C8:
/* 00F0C8 800120C8 3C60800E */  lis       r3, D_800E1040@ha
/* 00F0CC 800120CC 38631040 */  addi      r3, r3, D_800E1040@l
/* 00F0D0 800120D0 80830008 */  lwz       r4, 0x8(r3)
/* 00F0D4 800120D4 80A40000 */  lwz       r5, 0x0(r4)
/* 00F0D8 800120D8 A0850002 */  lhz       r4, 0x2(r5)
/* 00F0DC 800120DC A0050000 */  lhz       r0, 0x0(r5)
/* 00F0E0 800120E0 7C840E70 */  srawi     r4, r4, 1
/* 00F0E4 800120E4 7C840194 */  addze     r4, r4
/* 00F0E8 800120E8 208400A0 */  subfic    r4, r4, 0xa0
/* 00F0EC 800120EC 7C000E70 */  srawi     r0, r0, 1
/* 00F0F0 800120F0 7C000194 */  addze     r0, r0
/* 00F0F4 800120F4 20A00078 */  subfic    r5, r0, 0x78
/* 00F0F8 800120F8 48000019 */  bl        movieDrawImage
lbl_800120FC:
/* 00F0FC 800120FC 8001000C */  lwz       r0, 0xc(r1)
/* 00F100 80012100 38600001 */  li        r3, 0x1
/* 00F104 80012104 38210008 */  addi      r1, r1, 0x8
/* 00F108 80012108 7C0803A6 */  mtlr      r0
/* 00F10C 8001210C 4E800020 */  blr

glabel movieDrawImage
/* 00F110 80012110 7C0802A6 */  mflr      r0
/* 00F114 80012114 3CC0800D */  lis       r6, D_800D1D40@ha
/* 00F118 80012118 90010004 */  stw       r0, 0x4(r1)
/* 00F11C 8001211C 39061D40 */  addi      r8, r6, D_800D1D40@l
/* 00F120 80012120 3CC0800D */  lis       r6, D_800D1D70@ha
/* 00F124 80012124 9421FF10 */  stwu      r1, -0xf0(r1)
/* 00F128 80012128 3D208010 */  lis       r9, D_800FC520@ha
/* 00F12C 8001212C BF2100D4 */  stmw      r25, 0xd4(r1)
/* 00F130 80012130 3B230000 */  addi      r25, r3, 0x0
/* 00F134 80012134 3B440000 */  addi      r26, r4, 0x0
/* 00F138 80012138 3B650000 */  addi      r27, r5, 0x0
/* 00F13C 8001213C 3B89C520 */  addi      r28, r9, D_800FC520@l
/* 00F140 80012140 80E80000 */  lwz       r7, 0x0(r8)
/* 00F144 80012144 80080004 */  lwz       r0, 0x4(r8)
/* 00F148 80012148 90E10078 */  stw       r7, 0x78(r1)
/* 00F14C 8001214C 9001007C */  stw       r0, 0x7c(r1)
/* 00F150 80012150 80680008 */  lwz       r3, 0x8(r8)
/* 00F154 80012154 8008000C */  lwz       r0, 0xc(r8)
/* 00F158 80012158 90610080 */  stw       r3, 0x80(r1)
/* 00F15C 8001215C 90010084 */  stw       r0, 0x84(r1)
/* 00F160 80012160 80680010 */  lwz       r3, 0x10(r8)
/* 00F164 80012164 80080014 */  lwz       r0, 0x14(r8)
/* 00F168 80012168 90610088 */  stw       r3, 0x88(r1)
/* 00F16C 8001216C 9001008C */  stw       r0, 0x8c(r1)
/* 00F170 80012170 80680018 */  lwz       r3, 0x18(r8)
/* 00F174 80012174 8008001C */  lwz       r0, 0x1c(r8)
/* 00F178 80012178 90610090 */  stw       r3, 0x90(r1)
/* 00F17C 8001217C 90010094 */  stw       r0, 0x94(r1)
/* 00F180 80012180 80680020 */  lwz       r3, 0x20(r8)
/* 00F184 80012184 80080024 */  lwz       r0, 0x24(r8)
/* 00F188 80012188 90610098 */  stw       r3, 0x98(r1)
/* 00F18C 8001218C 9001009C */  stw       r0, 0x9c(r1)
/* 00F190 80012190 80680028 */  lwz       r3, 0x28(r8)
/* 00F194 80012194 8008002C */  lwz       r0, 0x2c(r8)
/* 00F198 80012198 906100A0 */  stw       r3, 0xa0(r1)
/* 00F19C 8001219C 900100A4 */  stw       r0, 0xa4(r1)
/* 00F1A0 800121A0 84661D70 */  lwzu      r3, D_800D1D70@l(r6)
/* 00F1A4 800121A4 80060004 */  lwz       r0, 0x4(r6)
/* 00F1A8 800121A8 90610048 */  stw       r3, 0x48(r1)
/* 00F1AC 800121AC 9001004C */  stw       r0, 0x4c(r1)
/* 00F1B0 800121B0 80660008 */  lwz       r3, 0x8(r6)
/* 00F1B4 800121B4 8006000C */  lwz       r0, 0xc(r6)
/* 00F1B8 800121B8 90610050 */  stw       r3, 0x50(r1)
/* 00F1BC 800121BC 90010054 */  stw       r0, 0x54(r1)
/* 00F1C0 800121C0 80660010 */  lwz       r3, 0x10(r6)
/* 00F1C4 800121C4 80060014 */  lwz       r0, 0x14(r6)
/* 00F1C8 800121C8 90610058 */  stw       r3, 0x58(r1)
/* 00F1CC 800121CC 9001005C */  stw       r0, 0x5c(r1)
/* 00F1D0 800121D0 80660018 */  lwz       r3, 0x18(r6)
/* 00F1D4 800121D4 8006001C */  lwz       r0, 0x1c(r6)
/* 00F1D8 800121D8 90610060 */  stw       r3, 0x60(r1)
/* 00F1DC 800121DC 90010064 */  stw       r0, 0x64(r1)
/* 00F1E0 800121E0 80660020 */  lwz       r3, 0x20(r6)
/* 00F1E4 800121E4 80060024 */  lwz       r0, 0x24(r6)
/* 00F1E8 800121E8 90610068 */  stw       r3, 0x68(r1)
/* 00F1EC 800121EC 9001006C */  stw       r0, 0x6c(r1)
/* 00F1F0 800121F0 80660028 */  lwz       r3, 0x28(r6)
/* 00F1F4 800121F4 8006002C */  lwz       r0, 0x2c(r6)
/* 00F1F8 800121F8 90610070 */  stw       r3, 0x70(r1)
/* 00F1FC 800121FC 90010074 */  stw       r0, 0x74(r1)
/* 00F200 80012200 4800042D */  bl        movieGXInit
/* 00F204 80012204 4BFF32FD */  bl        xlCoreBeforeRender
/* 00F208 80012208 38600000 */  li        r3, 0x0
/* 00F20C 8001220C 38800003 */  li        r4, 0x3
/* 00F210 80012210 38A00000 */  li        r5, 0x0
/* 00F214 80012214 4809AF45 */  bl        GXSetZMode
/* 00F218 80012218 38600001 */  li        r3, 0x1
/* 00F21C 8001221C 4809AF71 */  bl        fn_800AD18C
/* 00F220 80012220 38600001 */  li        r3, 0x1
/* 00F224 80012224 4809A9E1 */  bl        GXSetNumTevStages
/* 00F228 80012228 38600001 */  li        r3, 0x1
/* 00F22C 8001222C 48098F55 */  bl        GXSetNumChans
/* 00F230 80012230 38600000 */  li        r3, 0x0
/* 00F234 80012234 48097589 */  bl        GXSetNumTexGens
/* 00F238 80012238 C02280B8 */  lfs       f1, D_8018BFF8@sda21(r0)
/* 00F23C 8001223C 387C13F0 */  addi      r3, r28, 0x13f0
/* 00F240 80012240 C04280BC */  lfs       f2, D_8018BFFC@sda21(r0)
/* 00F244 80012244 FC600890 */  fmr       f3, f1
/* 00F248 80012248 C08280C0 */  lfs       f4, D_8018C000@sda21(r0)
/* 00F24C 8001224C C0A280C4 */  lfs       f5, D_8018C004@sda21(r0)
/* 00F250 80012250 C0C280C8 */  lfs       f6, D_8018C008@sda21(r0)
/* 00F254 80012254 48094975 */  bl        C_MTXOrtho
/* 00F258 80012258 387C13F0 */  addi      r3, r28, 0x13f0
/* 00F25C 8001225C 38800001 */  li        r4, 0x1
/* 00F260 80012260 4809B175 */  bl        GXSetProjection
/* 00F264 80012264 38600001 */  li        r3, 0x1
/* 00F268 80012268 48098F19 */  bl        GXSetNumChans
/* 00F26C 8001226C C02280CC */  lfs       f1, D_8018C00C@sda21(r0)
/* 00F270 80012270 38610048 */  addi      r3, r1, 0x48
/* 00F274 80012274 C04280D0 */  lfs       f2, D_8018C010@sda21(r0)
/* 00F278 80012278 38810018 */  addi      r4, r1, 0x18
/* 00F27C 8001227C C06280B8 */  lfs       f3, D_8018BFF8@sda21(r0)
/* 00F280 80012280 48094759 */  bl        PSMTXTransApply
/* 00F284 80012284 C02280AC */  lfs       f1, D_8018BFEC@sda21(r0)
/* 00F288 80012288 38610018 */  addi      r3, r1, 0x18
/* 00F28C 8001228C C06280D4 */  lfs       f3, D_8018C014@sda21(r0)
/* 00F290 80012290 7C641B78 */  mr        r4, r3
/* 00F294 80012294 FC400890 */  fmr       f2, f1
/* 00F298 80012298 480947B5 */  bl        PSMTXScaleApply
/* 00F29C 8001229C 38610018 */  addi      r3, r1, 0x18
/* 00F2A0 800122A0 38800000 */  li        r4, 0x0
/* 00F2A4 800122A4 4809B2A5 */  bl        fn_800AD548
/* 00F2A8 800122A8 38610078 */  addi      r3, r1, 0x78
/* 00F2AC 800122AC 3880003C */  li        r4, 0x3c
/* 00F2B0 800122B0 38A00000 */  li        r5, 0x0
/* 00F2B4 800122B4 4809B36D */  bl        fn_800AD620
/* 00F2B8 800122B8 3BA00000 */  li        r29, 0x0
/* 00F2BC 800122BC 9BA100A8 */  stb       r29, 0xa8(r1)
/* 00F2C0 800122C0 380000FF */  li        r0, 0xff
/* 00F2C4 800122C4 38810014 */  addi      r4, r1, 0x14
/* 00F2C8 800122C8 9BA100A9 */  stb       r29, 0xa9(r1)
/* 00F2CC 800122CC 38600001 */  li        r3, 0x1
/* 00F2D0 800122D0 9BA100AA */  stb       r29, 0xaa(r1)
/* 00F2D4 800122D4 980100AB */  stb       r0, 0xab(r1)
/* 00F2D8 800122D8 800100A8 */  lwz       r0, 0xa8(r1)
/* 00F2DC 800122DC 90010014 */  stw       r0, 0x14(r1)
/* 00F2E0 800122E0 4809A355 */  bl        GXSetTevColor
/* 00F2E4 800122E4 38600000 */  li        r3, 0x0
/* 00F2E8 800122E8 38800000 */  li        r4, 0x0
/* 00F2EC 800122EC 38A00000 */  li        r5, 0x0
/* 00F2F0 800122F0 38C00000 */  li        r6, 0x0
/* 00F2F4 800122F4 38E00000 */  li        r7, 0x0
/* 00F2F8 800122F8 39000000 */  li        r8, 0x0
/* 00F2FC 800122FC 4809A269 */  bl        GXSetTevColorOp
/* 00F300 80012300 38600000 */  li        r3, 0x0
/* 00F304 80012304 38800000 */  li        r4, 0x0
/* 00F308 80012308 38A00000 */  li        r5, 0x0
/* 00F30C 8001230C 38C00000 */  li        r6, 0x0
/* 00F310 80012310 38E00000 */  li        r7, 0x0
/* 00F314 80012314 39000000 */  li        r8, 0x0
/* 00F318 80012318 4809A2B5 */  bl        GXSetTevAlphaOp
/* 00F31C 8001231C 38600000 */  li        r3, 0x0
/* 00F320 80012320 3880000F */  li        r4, 0xf
/* 00F324 80012324 38A0000F */  li        r5, 0xf
/* 00F328 80012328 38C0000F */  li        r6, 0xf
/* 00F32C 8001232C 38E00002 */  li        r7, 0x2
/* 00F330 80012330 4809A1AD */  bl        GXSetTevColorIn
/* 00F334 80012334 38600000 */  li        r3, 0x0
/* 00F338 80012338 38800007 */  li        r4, 0x7
/* 00F33C 8001233C 38A00007 */  li        r5, 0x7
/* 00F340 80012340 38C00007 */  li        r6, 0x7
/* 00F344 80012344 38E00006 */  li        r7, 0x6
/* 00F348 80012348 4809A1D9 */  bl        GXSetTevAlphaIn
/* 00F34C 8001234C 38600000 */  li        r3, 0x0
/* 00F350 80012350 388000FF */  li        r4, 0xff
/* 00F354 80012354 38A000FF */  li        r5, 0xff
/* 00F358 80012358 38C000FF */  li        r6, 0xff
/* 00F35C 8001235C 4809A6D1 */  bl        GXSetTevOrder
/* 00F360 80012360 38600000 */  li        r3, 0x0
/* 00F364 80012364 38800004 */  li        r4, 0x4
/* 00F368 80012368 38A00005 */  li        r5, 0x5
/* 00F36C 8001236C 38C00005 */  li        r6, 0x5
/* 00F370 80012370 4809AD3D */  bl        fn_800AD0AC
/* 00F374 80012374 48096939 */  bl        GXClearVtxDesc
/* 00F378 80012378 38600009 */  li        r3, 0x9
/* 00F37C 8001237C 38800001 */  li        r4, 0x1
/* 00F380 80012380 48096465 */  bl        GXSetVtxDesc
/* 00F384 80012384 38600000 */  li        r3, 0x0
/* 00F388 80012388 38800009 */  li        r4, 0x9
/* 00F38C 8001238C 38A00001 */  li        r5, 0x1
/* 00F390 80012390 38C00004 */  li        r6, 0x4
/* 00F394 80012394 38E00000 */  li        r7, 0x0
/* 00F398 80012398 4809694D */  bl        GXSetVtxAttrFmt
/* 00F39C 8001239C 38600080 */  li        r3, 0x80
/* 00F3A0 800123A0 38800000 */  li        r4, 0x0
/* 00F3A4 800123A4 38A00004 */  li        r5, 0x4
/* 00F3A8 800123A8 48097BC5 */  bl        GXBegin
/* 00F3AC 800123AC C04280B8 */  lfs       f2, D_8018BFF8@sda21(r0)
/* 00F3B0 800123B0 3FC0CC01 */  lis       r30, 0xcc01
/* 00F3B4 800123B4 C02280C0 */  lfs       f1, D_8018C000@sda21(r0)
/* 00F3B8 800123B8 D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3BC 800123BC C00280BC */  lfs       f0, D_8018BFFC@sda21(r0)
/* 00F3C0 800123C0 D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3C4 800123C4 D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3C8 800123C8 D03E8000 */  stfs      f1, -0x8000(r30)
/* 00F3CC 800123CC D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3D0 800123D0 D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3D4 800123D4 D03E8000 */  stfs      f1, -0x8000(r30)
/* 00F3D8 800123D8 D01E8000 */  stfs      f0, -0x8000(r30)
/* 00F3DC 800123DC D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3E0 800123E0 D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3E4 800123E4 D01E8000 */  stfs      f0, -0x8000(r30)
/* 00F3E8 800123E8 D05E8000 */  stfs      f2, -0x8000(r30)
/* 00F3EC 800123EC 48000241 */  bl        movieGXInit
/* 00F3F0 800123F0 3C60800F */  lis       r3, Vert_s16@ha
/* 00F3F4 800123F4 3BE3AE40 */  addi      r31, r3, Vert_s16@l
/* 00F3F8 800123F8 B35F0000 */  sth       r26, 0x0(r31)
/* 00F3FC 800123FC 7F460734 */  extsh     r6, r26
/* 00F400 80012400 7F670734 */  extsh     r7, r27
/* 00F404 80012404 B37F0002 */  sth       r27, 0x2(r31)
/* 00F408 80012408 387F0000 */  addi      r3, r31, 0x0
/* 00F40C 8001240C 38800018 */  li        r4, 0x18
/* 00F410 80012410 80B90008 */  lwz       r5, 0x8(r25)
/* 00F414 80012414 80A50000 */  lwz       r5, 0x0(r5)
/* 00F418 80012418 A0050002 */  lhz       r0, 0x2(r5)
/* 00F41C 8001241C 7C060214 */  add       r0, r6, r0
/* 00F420 80012420 B01F0006 */  sth       r0, 0x6(r31)
/* 00F424 80012424 B37F0008 */  sth       r27, 0x8(r31)
/* 00F428 80012428 80B90008 */  lwz       r5, 0x8(r25)
/* 00F42C 8001242C 80A50000 */  lwz       r5, 0x0(r5)
/* 00F430 80012430 A0050002 */  lhz       r0, 0x2(r5)
/* 00F434 80012434 7C060214 */  add       r0, r6, r0
/* 00F438 80012438 B01F000C */  sth       r0, 0xc(r31)
/* 00F43C 8001243C 80B90008 */  lwz       r5, 0x8(r25)
/* 00F440 80012440 80A50000 */  lwz       r5, 0x0(r5)
/* 00F444 80012444 A0050000 */  lhz       r0, 0x0(r5)
/* 00F448 80012448 7C070214 */  add       r0, r7, r0
/* 00F44C 8001244C B01F000E */  sth       r0, 0xe(r31)
/* 00F450 80012450 B35F0012 */  sth       r26, 0x12(r31)
/* 00F454 80012454 80B90008 */  lwz       r5, 0x8(r25)
/* 00F458 80012458 80A50000 */  lwz       r5, 0x0(r5)
/* 00F45C 8001245C A0050000 */  lhz       r0, 0x0(r5)
/* 00F460 80012460 7C070214 */  add       r0, r7, r0
/* 00F464 80012464 B01F0014 */  sth       r0, 0x14(r31)
/* 00F468 80012468 4808A88D */  bl        DCStoreRange
/* 00F46C 8001246C C02280B8 */  lfs       f1, D_8018BFF8@sda21(r0)
/* 00F470 80012470 387C13F0 */  addi      r3, r28, 0x13f0
/* 00F474 80012474 C04280BC */  lfs       f2, D_8018BFFC@sda21(r0)
/* 00F478 80012478 FC600890 */  fmr       f3, f1
/* 00F47C 8001247C C08280C0 */  lfs       f4, D_8018C000@sda21(r0)
/* 00F480 80012480 C0A280C4 */  lfs       f5, D_8018C004@sda21(r0)
/* 00F484 80012484 C0C280C8 */  lfs       f6, D_8018C008@sda21(r0)
/* 00F488 80012488 48094741 */  bl        C_MTXOrtho
/* 00F48C 8001248C 387C13F0 */  addi      r3, r28, 0x13f0
/* 00F490 80012490 38800001 */  li        r4, 0x1
/* 00F494 80012494 4809AF41 */  bl        GXSetProjection
/* 00F498 80012498 38600001 */  li        r3, 0x1
/* 00F49C 8001249C 48098CE5 */  bl        GXSetNumChans
/* 00F4A0 800124A0 C02280CC */  lfs       f1, D_8018C00C@sda21(r0)
/* 00F4A4 800124A4 38610048 */  addi      r3, r1, 0x48
/* 00F4A8 800124A8 C04280D0 */  lfs       f2, D_8018C010@sda21(r0)
/* 00F4AC 800124AC 38810018 */  addi      r4, r1, 0x18
/* 00F4B0 800124B0 C06280B8 */  lfs       f3, D_8018BFF8@sda21(r0)
/* 00F4B4 800124B4 48094525 */  bl        PSMTXTransApply
/* 00F4B8 800124B8 C02280AC */  lfs       f1, D_8018BFEC@sda21(r0)
/* 00F4BC 800124BC 38610018 */  addi      r3, r1, 0x18
/* 00F4C0 800124C0 C06280D4 */  lfs       f3, D_8018C014@sda21(r0)
/* 00F4C4 800124C4 7C641B78 */  mr        r4, r3
/* 00F4C8 800124C8 FC400890 */  fmr       f2, f1
/* 00F4CC 800124CC 48094581 */  bl        PSMTXScaleApply
/* 00F4D0 800124D0 38610018 */  addi      r3, r1, 0x18
/* 00F4D4 800124D4 38800000 */  li        r4, 0x0
/* 00F4D8 800124D8 4809B071 */  bl        fn_800AD548
/* 00F4DC 800124DC 38610078 */  addi      r3, r1, 0x78
/* 00F4E0 800124E0 3880003C */  li        r4, 0x3c
/* 00F4E4 800124E4 38A00000 */  li        r5, 0x0
/* 00F4E8 800124E8 4809B139 */  bl        fn_800AD620
/* 00F4EC 800124EC 38600001 */  li        r3, 0x1
/* 00F4F0 800124F0 48098C91 */  bl        GXSetNumChans
/* 00F4F4 800124F4 480967B9 */  bl        GXClearVtxDesc
/* 00F4F8 800124F8 38600009 */  li        r3, 0x9
/* 00F4FC 800124FC 38800002 */  li        r4, 0x2
/* 00F500 80012500 480962E5 */  bl        GXSetVtxDesc
/* 00F504 80012504 3860000B */  li        r3, 0xb
/* 00F508 80012508 38800002 */  li        r4, 0x2
/* 00F50C 8001250C 480962D9 */  bl        GXSetVtxDesc
/* 00F510 80012510 3860000D */  li        r3, 0xd
/* 00F514 80012514 38800002 */  li        r4, 0x2
/* 00F518 80012518 480962CD */  bl        GXSetVtxDesc
/* 00F51C 8001251C 389F0000 */  addi      r4, r31, 0x0
/* 00F520 80012520 38600009 */  li        r3, 0x9
/* 00F524 80012524 38A00006 */  li        r5, 0x6
/* 00F528 80012528 48096F29 */  bl        fn_800A9450
/* 00F52C 8001252C 3C60800F */  lis       r3, Colors_u32@ha
/* 00F530 80012530 3883AEE0 */  addi      r4, r3, Colors_u32@l
/* 00F534 80012534 3860000B */  li        r3, 0xb
/* 00F538 80012538 38A00004 */  li        r5, 0x4
/* 00F53C 8001253C 48096F15 */  bl        fn_800A9450
/* 00F540 80012540 3C60800F */  lis       r3, TexCoords_u8@ha
/* 00F544 80012544 3883AF00 */  addi      r4, r3, TexCoords_u8@l
/* 00F548 80012548 3860000D */  li        r3, 0xd
/* 00F54C 8001254C 38A00002 */  li        r5, 0x2
/* 00F550 80012550 48096F01 */  bl        fn_800A9450
/* 00F554 80012554 38600000 */  li        r3, 0x0
/* 00F558 80012558 38800009 */  li        r4, 0x9
/* 00F55C 8001255C 38A00001 */  li        r5, 0x1
/* 00F560 80012560 38C00003 */  li        r6, 0x3
/* 00F564 80012564 38E00000 */  li        r7, 0x0
/* 00F568 80012568 4809677D */  bl        GXSetVtxAttrFmt
/* 00F56C 8001256C 38600000 */  li        r3, 0x0
/* 00F570 80012570 3880000B */  li        r4, 0xb
/* 00F574 80012574 38A00001 */  li        r5, 0x1
/* 00F578 80012578 38C00001 */  li        r6, 0x1
/* 00F57C 8001257C 38E00000 */  li        r7, 0x0
/* 00F580 80012580 48096765 */  bl        GXSetVtxAttrFmt
/* 00F584 80012584 38600000 */  li        r3, 0x0
/* 00F588 80012588 3880000D */  li        r4, 0xd
/* 00F58C 8001258C 38A00001 */  li        r5, 0x1
/* 00F590 80012590 38C00000 */  li        r6, 0x0
/* 00F594 80012594 38E00000 */  li        r7, 0x0
/* 00F598 80012598 4809674D */  bl        GXSetVtxAttrFmt
/* 00F59C 8001259C 38790000 */  addi      r3, r25, 0x0
/* 00F5A0 800125A0 388100B0 */  addi      r4, r1, 0xb0
/* 00F5A4 800125A4 38A00000 */  li        r5, 0x0
/* 00F5A8 800125A8 480B559D */  bl        TEXGetGXTexObjFromPalette
/* 00F5AC 800125AC 386100B0 */  addi      r3, r1, 0xb0
/* 00F5B0 800125B0 38800000 */  li        r4, 0x0
/* 00F5B4 800125B4 480993A1 */  bl        GXLoadTexObj
/* 00F5B8 800125B8 38600000 */  li        r3, 0x0
/* 00F5BC 800125BC 38800001 */  li        r4, 0x1
/* 00F5C0 800125C0 48099E91 */  bl        GXSetTevOp
/* 00F5C4 800125C4 38600080 */  li        r3, 0x80
/* 00F5C8 800125C8 38800000 */  li        r4, 0x0
/* 00F5CC 800125CC 38A00004 */  li        r5, 0x4
/* 00F5D0 800125D0 4809799D */  bl        GXBegin
/* 00F5D4 800125D4 9BBE8000 */  stb       r29, -0x8000(r30)
/* 00F5D8 800125D8 38800001 */  li        r4, 0x1
/* 00F5DC 800125DC 38600002 */  li        r3, 0x2
/* 00F5E0 800125E0 9BBE8000 */  stb       r29, -0x8000(r30)
/* 00F5E4 800125E4 38000003 */  li        r0, 0x3
/* 00F5E8 800125E8 9BBE8000 */  stb       r29, -0x8000(r30)
/* 00F5EC 800125EC 989E8000 */  stb       r4, -0x8000(r30)
/* 00F5F0 800125F0 989E8000 */  stb       r4, -0x8000(r30)
/* 00F5F4 800125F4 989E8000 */  stb       r4, -0x8000(r30)
/* 00F5F8 800125F8 987E8000 */  stb       r3, -0x8000(r30)
/* 00F5FC 800125FC 987E8000 */  stb       r3, -0x8000(r30)
/* 00F600 80012600 987E8000 */  stb       r3, -0x8000(r30)
/* 00F604 80012604 981E8000 */  stb       r0, -0x8000(r30)
/* 00F608 80012608 981E8000 */  stb       r0, -0x8000(r30)
/* 00F60C 8001260C 981E8000 */  stb       r0, -0x8000(r30)
/* 00F610 80012610 480A29FD */  bl        DEMODoneRender
/* 00F614 80012614 BB2100D4 */  lmw       r25, 0xd4(r1)
/* 00F618 80012618 38600001 */  li        r3, 0x1
/* 00F61C 8001261C 800100F4 */  lwz       r0, 0xf4(r1)
/* 00F620 80012620 382100F0 */  addi      r1, r1, 0xf0
/* 00F624 80012624 7C0803A6 */  mtlr      r0
/* 00F628 80012628 4E800020 */  blr

glabel movieGXInit
/* 00F62C 8001262C 7C0802A6 */  mflr      r0
/* 00F630 80012630 3C60800D */  lis       r3, D_800D1D10@ha
/* 00F634 80012634 90010004 */  stw       r0, 0x4(r1)
/* 00F638 80012638 39431D10 */  addi      r10, r3, D_800D1D10@l
/* 00F63C 8001263C 38600000 */  li        r3, 0x0
/* 00F640 80012640 9421FF98 */  stwu      r1, -0x68(r1)
/* 00F644 80012644 38C0003C */  li        r6, 0x3c
/* 00F648 80012648 38E00000 */  li        r7, 0x0
/* 00F64C 8001264C 93E10064 */  stw       r31, 0x64(r1)
/* 00F650 80012650 3900007D */  li        r8, 0x7d
/* 00F654 80012654 808280A0 */  lwz       r4, D_8018BFE0@sda21(r0)
/* 00F658 80012658 80A280A4 */  lwz       r5, D_8018BFE4@sda21(r0)
/* 00F65C 8001265C 800280A8 */  lwz       r0, D_8018BFE8@sda21(r0)
/* 00F660 80012660 90810058 */  stw       r4, 0x58(r1)
/* 00F664 80012664 38800001 */  li        r4, 0x1
/* 00F668 80012668 90A10054 */  stw       r5, 0x54(r1)
/* 00F66C 8001266C 38A00004 */  li        r5, 0x4
/* 00F670 80012670 90010050 */  stw       r0, 0x50(r1)
/* 00F674 80012674 812A0000 */  lwz       r9, 0x0(r10)
/* 00F678 80012678 800A0004 */  lwz       r0, 0x4(r10)
/* 00F67C 8001267C 91210020 */  stw       r9, 0x20(r1)
/* 00F680 80012680 90010024 */  stw       r0, 0x24(r1)
/* 00F684 80012684 812A0008 */  lwz       r9, 0x8(r10)
/* 00F688 80012688 800A000C */  lwz       r0, 0xc(r10)
/* 00F68C 8001268C 91210028 */  stw       r9, 0x28(r1)
/* 00F690 80012690 9001002C */  stw       r0, 0x2c(r1)
/* 00F694 80012694 812A0010 */  lwz       r9, 0x10(r10)
/* 00F698 80012698 800A0014 */  lwz       r0, 0x14(r10)
/* 00F69C 8001269C 91210030 */  stw       r9, 0x30(r1)
/* 00F6A0 800126A0 90010034 */  stw       r0, 0x34(r1)
/* 00F6A4 800126A4 812A0018 */  lwz       r9, 0x18(r10)
/* 00F6A8 800126A8 800A001C */  lwz       r0, 0x1c(r10)
/* 00F6AC 800126AC 91210038 */  stw       r9, 0x38(r1)
/* 00F6B0 800126B0 9001003C */  stw       r0, 0x3c(r1)
/* 00F6B4 800126B4 812A0020 */  lwz       r9, 0x20(r10)
/* 00F6B8 800126B8 800A0024 */  lwz       r0, 0x24(r10)
/* 00F6BC 800126BC 91210040 */  stw       r9, 0x40(r1)
/* 00F6C0 800126C0 90010044 */  stw       r0, 0x44(r1)
/* 00F6C4 800126C4 812A0028 */  lwz       r9, 0x28(r10)
/* 00F6C8 800126C8 800A002C */  lwz       r0, 0x2c(r10)
/* 00F6CC 800126CC 91210048 */  stw       r9, 0x48(r1)
/* 00F6D0 800126D0 9001004C */  stw       r0, 0x4c(r1)
/* 00F6D4 800126D4 48096E19 */  bl        fn_800A94EC
/* 00F6D8 800126D8 38600001 */  li        r3, 0x1
/* 00F6DC 800126DC 38800001 */  li        r4, 0x1
/* 00F6E0 800126E0 38A00005 */  li        r5, 0x5
/* 00F6E4 800126E4 38C0003C */  li        r6, 0x3c
/* 00F6E8 800126E8 38E00000 */  li        r7, 0x0
/* 00F6EC 800126EC 3900007D */  li        r8, 0x7d
/* 00F6F0 800126F0 48096DFD */  bl        fn_800A94EC
/* 00F6F4 800126F4 38600002 */  li        r3, 0x2
/* 00F6F8 800126F8 38800001 */  li        r4, 0x1
/* 00F6FC 800126FC 38A00006 */  li        r5, 0x6
/* 00F700 80012700 38C0003C */  li        r6, 0x3c
/* 00F704 80012704 38E00000 */  li        r7, 0x0
/* 00F708 80012708 3900007D */  li        r8, 0x7d
/* 00F70C 8001270C 48096DE1 */  bl        fn_800A94EC
/* 00F710 80012710 38600003 */  li        r3, 0x3
/* 00F714 80012714 38800001 */  li        r4, 0x1
/* 00F718 80012718 38A00007 */  li        r5, 0x7
/* 00F71C 8001271C 38C0003C */  li        r6, 0x3c
/* 00F720 80012720 38E00000 */  li        r7, 0x0
/* 00F724 80012724 3900007D */  li        r8, 0x7d
/* 00F728 80012728 48096DC5 */  bl        fn_800A94EC
/* 00F72C 8001272C 38600004 */  li        r3, 0x4
/* 00F730 80012730 38800001 */  li        r4, 0x1
/* 00F734 80012734 38A00008 */  li        r5, 0x8
/* 00F738 80012738 38C0003C */  li        r6, 0x3c
/* 00F73C 8001273C 38E00000 */  li        r7, 0x0
/* 00F740 80012740 3900007D */  li        r8, 0x7d
/* 00F744 80012744 48096DA9 */  bl        fn_800A94EC
/* 00F748 80012748 38600005 */  li        r3, 0x5
/* 00F74C 8001274C 38800001 */  li        r4, 0x1
/* 00F750 80012750 38A00009 */  li        r5, 0x9
/* 00F754 80012754 38C0003C */  li        r6, 0x3c
/* 00F758 80012758 38E00000 */  li        r7, 0x0
/* 00F75C 8001275C 3900007D */  li        r8, 0x7d
/* 00F760 80012760 48096D8D */  bl        fn_800A94EC
/* 00F764 80012764 38600006 */  li        r3, 0x6
/* 00F768 80012768 38800001 */  li        r4, 0x1
/* 00F76C 8001276C 38A0000A */  li        r5, 0xa
/* 00F770 80012770 38C0003C */  li        r6, 0x3c
/* 00F774 80012774 38E00000 */  li        r7, 0x0
/* 00F778 80012778 3900007D */  li        r8, 0x7d
/* 00F77C 8001277C 48096D71 */  bl        fn_800A94EC
/* 00F780 80012780 38600007 */  li        r3, 0x7
/* 00F784 80012784 38800001 */  li        r4, 0x1
/* 00F788 80012788 38A0000B */  li        r5, 0xb
/* 00F78C 8001278C 38C0003C */  li        r6, 0x3c
/* 00F790 80012790 38E00000 */  li        r7, 0x0
/* 00F794 80012794 3900007D */  li        r8, 0x7d
/* 00F798 80012798 48096D55 */  bl        fn_800A94EC
/* 00F79C 8001279C 38600001 */  li        r3, 0x1
/* 00F7A0 800127A0 4809701D */  bl        GXSetNumTexGens
/* 00F7A4 800127A4 48096509 */  bl        GXClearVtxDesc
/* 00F7A8 800127A8 48096D35 */  bl        GXInvalidateVtxCache
/* 00F7AC 800127AC 38600006 */  li        r3, 0x6
/* 00F7B0 800127B0 38800000 */  li        r4, 0x0
/* 00F7B4 800127B4 48097931 */  bl        GXSetLineWidth
/* 00F7B8 800127B8 38600006 */  li        r3, 0x6
/* 00F7BC 800127BC 38800000 */  li        r4, 0x0
/* 00F7C0 800127C0 4809796D */  bl        GXSetPointSize
/* 00F7C4 800127C4 38600000 */  li        r3, 0x0
/* 00F7C8 800127C8 38800000 */  li        r4, 0x0
/* 00F7CC 800127CC 38A00000 */  li        r5, 0x0
/* 00F7D0 800127D0 480979A5 */  bl        GXEnableTexOffsets
/* 00F7D4 800127D4 38600001 */  li        r3, 0x1
/* 00F7D8 800127D8 38800000 */  li        r4, 0x0
/* 00F7DC 800127DC 38A00000 */  li        r5, 0x0
/* 00F7E0 800127E0 48097995 */  bl        GXEnableTexOffsets
/* 00F7E4 800127E4 38600002 */  li        r3, 0x2
/* 00F7E8 800127E8 38800000 */  li        r4, 0x0
/* 00F7EC 800127EC 38A00000 */  li        r5, 0x0
/* 00F7F0 800127F0 48097985 */  bl        GXEnableTexOffsets
/* 00F7F4 800127F4 38600003 */  li        r3, 0x3
/* 00F7F8 800127F8 38800000 */  li        r4, 0x0
/* 00F7FC 800127FC 38A00000 */  li        r5, 0x0
/* 00F800 80012800 48097975 */  bl        GXEnableTexOffsets
/* 00F804 80012804 38600004 */  li        r3, 0x4
/* 00F808 80012808 38800000 */  li        r4, 0x0
/* 00F80C 8001280C 38A00000 */  li        r5, 0x0
/* 00F810 80012810 48097965 */  bl        GXEnableTexOffsets
/* 00F814 80012814 38600005 */  li        r3, 0x5
/* 00F818 80012818 38800000 */  li        r4, 0x0
/* 00F81C 8001281C 38A00000 */  li        r5, 0x0
/* 00F820 80012820 48097955 */  bl        GXEnableTexOffsets
/* 00F824 80012824 38600006 */  li        r3, 0x6
/* 00F828 80012828 38800000 */  li        r4, 0x0
/* 00F82C 8001282C 38A00000 */  li        r5, 0x0
/* 00F830 80012830 48097945 */  bl        GXEnableTexOffsets
/* 00F834 80012834 38600007 */  li        r3, 0x7
/* 00F838 80012838 38800000 */  li        r4, 0x0
/* 00F83C 8001283C 38A00000 */  li        r5, 0x0
/* 00F840 80012840 48097935 */  bl        GXEnableTexOffsets
/* 00F844 80012844 38610020 */  addi      r3, r1, 0x20
/* 00F848 80012848 38800000 */  li        r4, 0x0
/* 00F84C 8001284C 4809ACFD */  bl        fn_800AD548
/* 00F850 80012850 38610020 */  addi      r3, r1, 0x20
/* 00F854 80012854 38800000 */  li        r4, 0x0
/* 00F858 80012858 4809AD41 */  bl        fn_800AD598
/* 00F85C 8001285C 38600000 */  li        r3, 0x0
/* 00F860 80012860 4809AD89 */  bl        fn_800AD5E8
/* 00F864 80012864 38610020 */  addi      r3, r1, 0x20
/* 00F868 80012868 3880003C */  li        r4, 0x3c
/* 00F86C 8001286C 38A00000 */  li        r5, 0x0
/* 00F870 80012870 4809ADB1 */  bl        fn_800AD620
/* 00F874 80012874 38600000 */  li        r3, 0x0
/* 00F878 80012878 480979A5 */  bl        GXSetCoPlanar
/* 00F87C 8001287C 38600002 */  li        r3, 0x2
/* 00F880 80012880 48097951 */  bl        GXSetCullMode
/* 00F884 80012884 38600000 */  li        r3, 0x0
/* 00F888 80012888 4809B08D */  bl        fn_800AD914
/* 00F88C 8001288C 38600000 */  li        r3, 0x0
/* 00F890 80012890 38800000 */  li        r4, 0x0
/* 00F894 80012894 4809B041 */  bl        fn_800AD8D4
/* 00F898 80012898 38600000 */  li        r3, 0x0
/* 00F89C 8001289C 480988E5 */  bl        GXSetNumChans
/* 00F8A0 800128A0 38600004 */  li        r3, 0x4
/* 00F8A4 800128A4 38800000 */  li        r4, 0x0
/* 00F8A8 800128A8 38A00000 */  li        r5, 0x0
/* 00F8AC 800128AC 38C00001 */  li        r6, 0x1
/* 00F8B0 800128B0 38E00000 */  li        r7, 0x0
/* 00F8B4 800128B4 39000000 */  li        r8, 0x0
/* 00F8B8 800128B8 39200002 */  li        r9, 0x2
/* 00F8BC 800128BC 48098909 */  bl        GXSetChanCtrl
/* 00F8C0 800128C0 80010054 */  lwz       r0, 0x54(r1)
/* 00F8C4 800128C4 3881001C */  addi      r4, r1, 0x1c
/* 00F8C8 800128C8 38600004 */  li        r3, 0x4
/* 00F8CC 800128CC 9001001C */  stw       r0, 0x1c(r1)
/* 00F8D0 800128D0 480986C9 */  bl        GXSetChanAmbColor
/* 00F8D4 800128D4 80010050 */  lwz       r0, 0x50(r1)
/* 00F8D8 800128D8 38810018 */  addi      r4, r1, 0x18
/* 00F8DC 800128DC 38600004 */  li        r3, 0x4
/* 00F8E0 800128E0 90010018 */  stw       r0, 0x18(r1)
/* 00F8E4 800128E4 480987A9 */  bl        GXSetChanMatColor
/* 00F8E8 800128E8 38600005 */  li        r3, 0x5
/* 00F8EC 800128EC 38800000 */  li        r4, 0x0
/* 00F8F0 800128F0 38A00000 */  li        r5, 0x0
/* 00F8F4 800128F4 38C00001 */  li        r6, 0x1
/* 00F8F8 800128F8 38E00000 */  li        r7, 0x0
/* 00F8FC 800128FC 39000000 */  li        r8, 0x0
/* 00F900 80012900 39200002 */  li        r9, 0x2
/* 00F904 80012904 480988C1 */  bl        GXSetChanCtrl
/* 00F908 80012908 80010054 */  lwz       r0, 0x54(r1)
/* 00F90C 8001290C 38810014 */  addi      r4, r1, 0x14
/* 00F910 80012910 38600005 */  li        r3, 0x5
/* 00F914 80012914 90010014 */  stw       r0, 0x14(r1)
/* 00F918 80012918 48098681 */  bl        GXSetChanAmbColor
/* 00F91C 8001291C 80010050 */  lwz       r0, 0x50(r1)
/* 00F920 80012920 38810010 */  addi      r4, r1, 0x10
/* 00F924 80012924 38600005 */  li        r3, 0x5
/* 00F928 80012928 90010010 */  stw       r0, 0x10(r1)
/* 00F92C 8001292C 48098761 */  bl        GXSetChanMatColor
/* 00F930 80012930 480992C5 */  bl        GXInvalidateTexAll
/* 00F934 80012934 38600000 */  li        r3, 0x0
/* 00F938 80012938 38800000 */  li        r4, 0x0
/* 00F93C 8001293C 38A00000 */  li        r5, 0x0
/* 00F940 80012940 38C00004 */  li        r6, 0x4
/* 00F944 80012944 4809A0E9 */  bl        GXSetTevOrder
/* 00F948 80012948 38600001 */  li        r3, 0x1
/* 00F94C 8001294C 38800001 */  li        r4, 0x1
/* 00F950 80012950 38A00001 */  li        r5, 0x1
/* 00F954 80012954 38C00004 */  li        r6, 0x4
/* 00F958 80012958 4809A0D5 */  bl        GXSetTevOrder
/* 00F95C 8001295C 38600002 */  li        r3, 0x2
/* 00F960 80012960 38800002 */  li        r4, 0x2
/* 00F964 80012964 38A00002 */  li        r5, 0x2
/* 00F968 80012968 38C00004 */  li        r6, 0x4
/* 00F96C 8001296C 4809A0C1 */  bl        GXSetTevOrder
/* 00F970 80012970 38600003 */  li        r3, 0x3
/* 00F974 80012974 38800003 */  li        r4, 0x3
/* 00F978 80012978 38A00003 */  li        r5, 0x3
/* 00F97C 8001297C 38C00004 */  li        r6, 0x4
/* 00F980 80012980 4809A0AD */  bl        GXSetTevOrder
/* 00F984 80012984 38600004 */  li        r3, 0x4
/* 00F988 80012988 38800004 */  li        r4, 0x4
/* 00F98C 8001298C 38A00004 */  li        r5, 0x4
/* 00F990 80012990 38C00004 */  li        r6, 0x4
/* 00F994 80012994 4809A099 */  bl        GXSetTevOrder
/* 00F998 80012998 38600005 */  li        r3, 0x5
/* 00F99C 8001299C 38800005 */  li        r4, 0x5
/* 00F9A0 800129A0 38A00005 */  li        r5, 0x5
/* 00F9A4 800129A4 38C00004 */  li        r6, 0x4
/* 00F9A8 800129A8 4809A085 */  bl        GXSetTevOrder
/* 00F9AC 800129AC 38600006 */  li        r3, 0x6
/* 00F9B0 800129B0 38800006 */  li        r4, 0x6
/* 00F9B4 800129B4 38A00006 */  li        r5, 0x6
/* 00F9B8 800129B8 38C00004 */  li        r6, 0x4
/* 00F9BC 800129BC 4809A071 */  bl        GXSetTevOrder
/* 00F9C0 800129C0 38600007 */  li        r3, 0x7
/* 00F9C4 800129C4 38800007 */  li        r4, 0x7
/* 00F9C8 800129C8 38A00007 */  li        r5, 0x7
/* 00F9CC 800129CC 38C00004 */  li        r6, 0x4
/* 00F9D0 800129D0 4809A05D */  bl        GXSetTevOrder
/* 00F9D4 800129D4 38600008 */  li        r3, 0x8
/* 00F9D8 800129D8 388000FF */  li        r4, 0xff
/* 00F9DC 800129DC 38A000FF */  li        r5, 0xff
/* 00F9E0 800129E0 38C000FF */  li        r6, 0xff
/* 00F9E4 800129E4 4809A049 */  bl        GXSetTevOrder
/* 00F9E8 800129E8 38600009 */  li        r3, 0x9
/* 00F9EC 800129EC 388000FF */  li        r4, 0xff
/* 00F9F0 800129F0 38A000FF */  li        r5, 0xff
/* 00F9F4 800129F4 38C000FF */  li        r6, 0xff
/* 00F9F8 800129F8 4809A035 */  bl        GXSetTevOrder
/* 00F9FC 800129FC 3860000A */  li        r3, 0xa
/* 00FA00 80012A00 388000FF */  li        r4, 0xff
/* 00FA04 80012A04 38A000FF */  li        r5, 0xff
/* 00FA08 80012A08 38C000FF */  li        r6, 0xff
/* 00FA0C 80012A0C 4809A021 */  bl        GXSetTevOrder
/* 00FA10 80012A10 3860000B */  li        r3, 0xb
/* 00FA14 80012A14 388000FF */  li        r4, 0xff
/* 00FA18 80012A18 38A000FF */  li        r5, 0xff
/* 00FA1C 80012A1C 38C000FF */  li        r6, 0xff
/* 00FA20 80012A20 4809A00D */  bl        GXSetTevOrder
/* 00FA24 80012A24 3860000C */  li        r3, 0xc
/* 00FA28 80012A28 388000FF */  li        r4, 0xff
/* 00FA2C 80012A2C 38A000FF */  li        r5, 0xff
/* 00FA30 80012A30 38C000FF */  li        r6, 0xff
/* 00FA34 80012A34 48099FF9 */  bl        GXSetTevOrder
/* 00FA38 80012A38 3860000D */  li        r3, 0xd
/* 00FA3C 80012A3C 388000FF */  li        r4, 0xff
/* 00FA40 80012A40 38A000FF */  li        r5, 0xff
/* 00FA44 80012A44 38C000FF */  li        r6, 0xff
/* 00FA48 80012A48 48099FE5 */  bl        GXSetTevOrder
/* 00FA4C 80012A4C 3860000E */  li        r3, 0xe
/* 00FA50 80012A50 388000FF */  li        r4, 0xff
/* 00FA54 80012A54 38A000FF */  li        r5, 0xff
/* 00FA58 80012A58 38C000FF */  li        r6, 0xff
/* 00FA5C 80012A5C 48099FD1 */  bl        GXSetTevOrder
/* 00FA60 80012A60 3860000F */  li        r3, 0xf
/* 00FA64 80012A64 388000FF */  li        r4, 0xff
/* 00FA68 80012A68 38A000FF */  li        r5, 0xff
/* 00FA6C 80012A6C 38C000FF */  li        r6, 0xff
/* 00FA70 80012A70 48099FBD */  bl        GXSetTevOrder
/* 00FA74 80012A74 38600001 */  li        r3, 0x1
/* 00FA78 80012A78 4809A18D */  bl        GXSetNumTevStages
/* 00FA7C 80012A7C 38600000 */  li        r3, 0x0
/* 00FA80 80012A80 38800003 */  li        r4, 0x3
/* 00FA84 80012A84 480999CD */  bl        GXSetTevOp
/* 00FA88 80012A88 38600007 */  li        r3, 0x7
/* 00FA8C 80012A8C 38800000 */  li        r4, 0x0
/* 00FA90 80012A90 38A00000 */  li        r5, 0x0
/* 00FA94 80012A94 38C00007 */  li        r6, 0x7
/* 00FA98 80012A98 38E00000 */  li        r7, 0x0
/* 00FA9C 80012A9C 48099EB9 */  bl        GXSetAlphaCompare
/* 00FAA0 80012AA0 38600000 */  li        r3, 0x0
/* 00FAA4 80012AA4 38800011 */  li        r4, 0x11
/* 00FAA8 80012AA8 38A00000 */  li        r5, 0x0
/* 00FAAC 80012AAC 48099EFD */  bl        GXSetZTexture
/* 00FAB0 80012AB0 3BE00000 */  li        r31, 0x0
lbl_80012AB4:
/* 00FAB4 80012AB4 387F0000 */  addi      r3, r31, 0x0
/* 00FAB8 80012AB8 38800006 */  li        r4, 0x6
/* 00FABC 80012ABC 48099CD5 */  bl        GXSetTevKColorSel
/* 00FAC0 80012AC0 387F0000 */  addi      r3, r31, 0x0
/* 00FAC4 80012AC4 38800000 */  li        r4, 0x0
/* 00FAC8 80012AC8 48099D35 */  bl        GXSetTevKAlphaSel
/* 00FACC 80012ACC 387F0000 */  addi      r3, r31, 0x0
/* 00FAD0 80012AD0 38800000 */  li        r4, 0x0
/* 00FAD4 80012AD4 38A00000 */  li        r5, 0x0
/* 00FAD8 80012AD8 48099D91 */  bl        GXSetTevSwapMode
/* 00FADC 80012ADC 3BFF0001 */  addi      r31, r31, 0x1
/* 00FAE0 80012AE0 2C1F0010 */  cmpwi     r31, 0x10
/* 00FAE4 80012AE4 4180FFD0 */  blt       lbl_80012AB4
/* 00FAE8 80012AE8 38600000 */  li        r3, 0x0
/* 00FAEC 80012AEC 38800000 */  li        r4, 0x0
/* 00FAF0 80012AF0 38A00001 */  li        r5, 0x1
/* 00FAF4 80012AF4 38C00002 */  li        r6, 0x2
/* 00FAF8 80012AF8 38E00003 */  li        r7, 0x3
/* 00FAFC 80012AFC 48099DC1 */  bl        GXSetTevSwapModeTable
/* 00FB00 80012B00 38600001 */  li        r3, 0x1
/* 00FB04 80012B04 38800000 */  li        r4, 0x0
/* 00FB08 80012B08 38A00000 */  li        r5, 0x0
/* 00FB0C 80012B0C 38C00000 */  li        r6, 0x0
/* 00FB10 80012B10 38E00003 */  li        r7, 0x3
/* 00FB14 80012B14 48099DA9 */  bl        GXSetTevSwapModeTable
/* 00FB18 80012B18 38600002 */  li        r3, 0x2
/* 00FB1C 80012B1C 38800001 */  li        r4, 0x1
/* 00FB20 80012B20 38A00001 */  li        r5, 0x1
/* 00FB24 80012B24 38C00001 */  li        r6, 0x1
/* 00FB28 80012B28 38E00003 */  li        r7, 0x3
/* 00FB2C 80012B2C 48099D91 */  bl        GXSetTevSwapModeTable
/* 00FB30 80012B30 38600003 */  li        r3, 0x3
/* 00FB34 80012B34 38800002 */  li        r4, 0x2
/* 00FB38 80012B38 38A00002 */  li        r5, 0x2
/* 00FB3C 80012B3C 38C00002 */  li        r6, 0x2
/* 00FB40 80012B40 38E00003 */  li        r7, 0x3
/* 00FB44 80012B44 48099D79 */  bl        GXSetTevSwapModeTable
/* 00FB48 80012B48 3BE00000 */  li        r31, 0x0
lbl_80012B4C:
/* 00FB4C 80012B4C 7FE3FB78 */  mr        r3, r31
/* 00FB50 80012B50 480997C9 */  bl        fn_800AC318
/* 00FB54 80012B54 3BFF0001 */  addi      r31, r31, 0x1
/* 00FB58 80012B58 2C1F0010 */  cmpwi     r31, 0x10
/* 00FB5C 80012B5C 4180FFF0 */  blt       lbl_80012B4C
/* 00FB60 80012B60 38600000 */  li        r3, 0x0
/* 00FB64 80012B64 4809978D */  bl        fn_800AC2F0
/* 00FB68 80012B68 38600000 */  li        r3, 0x0
/* 00FB6C 80012B6C 38800000 */  li        r4, 0x0
/* 00FB70 80012B70 38A00000 */  li        r5, 0x0
/* 00FB74 80012B74 48099601 */  bl        fn_800AC174
/* 00FB78 80012B78 38600001 */  li        r3, 0x1
/* 00FB7C 80012B7C 38800000 */  li        r4, 0x0
/* 00FB80 80012B80 38A00000 */  li        r5, 0x0
/* 00FB84 80012B84 480995F1 */  bl        fn_800AC174
/* 00FB88 80012B88 38600002 */  li        r3, 0x2
/* 00FB8C 80012B8C 38800000 */  li        r4, 0x0
/* 00FB90 80012B90 38A00000 */  li        r5, 0x0
/* 00FB94 80012B94 480995E1 */  bl        fn_800AC174
/* 00FB98 80012B98 38600003 */  li        r3, 0x3
/* 00FB9C 80012B9C 38800000 */  li        r4, 0x0
/* 00FBA0 80012BA0 38A00000 */  li        r5, 0x0
/* 00FBA4 80012BA4 480995D1 */  bl        fn_800AC174
/* 00FBA8 80012BA8 C04280D4 */  lfs       f2, D_8018C014@sda21(r0)
/* 00FBAC 80012BAC 3881000C */  addi      r4, r1, 0xc
/* 00FBB0 80012BB0 80010054 */  lwz       r0, 0x54(r1)
/* 00FBB4 80012BB4 38600000 */  li        r3, 0x0
/* 00FBB8 80012BB8 FC801090 */  fmr       f4, f2
/* 00FBBC 80012BBC 9001000C */  stw       r0, 0xc(r1)
/* 00FBC0 80012BC0 C02280B8 */  lfs       f1, D_8018BFF8@sda21(r0)
/* 00FBC4 80012BC4 C06280C4 */  lfs       f3, D_8018C004@sda21(r0)
/* 00FBC8 80012BC8 4809A06D */  bl        fn_800ACC34
/* 00FBCC 80012BCC 38600000 */  li        r3, 0x0
/* 00FBD0 80012BD0 38800000 */  li        r4, 0x0
/* 00FBD4 80012BD4 38A00000 */  li        r5, 0x0
/* 00FBD8 80012BD8 4809A3D5 */  bl        fn_800ACFAC
/* 00FBDC 80012BDC 38600000 */  li        r3, 0x0
/* 00FBE0 80012BE0 38800004 */  li        r4, 0x4
/* 00FBE4 80012BE4 38A00005 */  li        r5, 0x5
/* 00FBE8 80012BE8 38C00000 */  li        r6, 0x0
/* 00FBEC 80012BEC 4809A4C1 */  bl        fn_800AD0AC
/* 00FBF0 80012BF0 38600001 */  li        r3, 0x1
/* 00FBF4 80012BF4 4809A50D */  bl        fn_800AD100
/* 00FBF8 80012BF8 38600001 */  li        r3, 0x1
/* 00FBFC 80012BFC 4809A531 */  bl        fn_800AD12C
/* 00FC00 80012C00 38600001 */  li        r3, 0x1
/* 00FC04 80012C04 38800003 */  li        r4, 0x3
/* 00FC08 80012C08 38A00001 */  li        r5, 0x1
/* 00FC0C 80012C0C 4809A54D */  bl        GXSetZMode
/* 00FC10 80012C10 38600001 */  li        r3, 0x1
/* 00FC14 80012C14 4809A579 */  bl        fn_800AD18C
/* 00FC18 80012C18 38600001 */  li        r3, 0x1
/* 00FC1C 80012C1C 4809A691 */  bl        fn_800AD2AC
/* 00FC20 80012C20 38600000 */  li        r3, 0x0
/* 00FC24 80012C24 38800000 */  li        r4, 0x0
/* 00FC28 80012C28 4809A6B9 */  bl        fn_800AD2E0
/* 00FC2C 80012C2C 38600000 */  li        r3, 0x0
/* 00FC30 80012C30 38800000 */  li        r4, 0x0
/* 00FC34 80012C34 4809A591 */  bl        GXSetPixelFmt
/* 00FC38 80012C38 38600001 */  li        r3, 0x1
/* 00FC3C 80012C3C 38800001 */  li        r4, 0x1
/* 00FC40 80012C40 4809A6DD */  bl        fn_800AD31C
/* 00FC44 80012C44 80010058 */  lwz       r0, 0x58(r1)
/* 00FC48 80012C48 3C800100 */  lis       r4, 0x100
/* 00FC4C 80012C4C 38610008 */  addi      r3, r1, 0x8
/* 00FC50 80012C50 90010008 */  stw       r0, 0x8(r1)
/* 00FC54 80012C54 3884FFFF */  subi      r4, r4, 0x1
/* 00FC58 80012C58 48097D85 */  bl        GXSetCopyClear
/* 00FC5C 80012C5C 38600003 */  li        r3, 0x3
/* 00FC60 80012C60 48097A15 */  bl        GXSetCopyClamp
/* 00FC64 80012C64 38600000 */  li        r3, 0x0
/* 00FC68 80012C68 48098005 */  bl        GXSetDispCopyGamma
/* 00FC6C 80012C6C 38600000 */  li        r3, 0x0
/* 00FC70 80012C70 480979DD */  bl        GXSetDispCopyFrame2Field
/* 00FC74 80012C74 480982ED */  bl        GXClearBoundingBox
/* 00FC78 80012C78 38600001 */  li        r3, 0x1
/* 00FC7C 80012C7C 48096FC9 */  bl        fn_800A9C44
/* 00FC80 80012C80 38600001 */  li        r3, 0x1
/* 00FC84 80012C84 48096F1D */  bl        fn_800A9BA0
/* 00FC88 80012C88 38600000 */  li        r3, 0x0
/* 00FC8C 80012C8C 48096FE9 */  bl        fn_800A9C74
/* 00FC90 80012C90 38600000 */  li        r3, 0x0
/* 00FC94 80012C94 38800000 */  li        r4, 0x0
/* 00FC98 80012C98 38A00001 */  li        r5, 0x1
/* 00FC9C 80012C9C 38C0000F */  li        r6, 0xf
/* 00FCA0 80012CA0 48096F1D */  bl        fn_800A9BBC
/* 00FCA4 80012CA4 38600007 */  li        r3, 0x7
/* 00FCA8 80012CA8 38800000 */  li        r4, 0x0
/* 00FCAC 80012CAC 48096ECD */  bl        fn_800A9B78
/* 00FCB0 80012CB0 38600001 */  li        r3, 0x1
/* 00FCB4 80012CB4 48096ED9 */  bl        fn_800A9B8C
/* 00FCB8 80012CB8 38600000 */  li        r3, 0x0
/* 00FCBC 80012CBC 38800000 */  li        r4, 0x0
/* 00FCC0 80012CC0 48096FA1 */  bl        fn_800A9C60
/* 00FCC4 80012CC4 38600001 */  li        r3, 0x1
/* 00FCC8 80012CC8 38800007 */  li        r4, 0x7
/* 00FCCC 80012CCC 38A00001 */  li        r5, 0x1
/* 00FCD0 80012CD0 48096FC1 */  bl        fn_800A9C90
/* 00FCD4 80012CD4 38600023 */  li        r3, 0x23
/* 00FCD8 80012CD8 38800016 */  li        r4, 0x16
/* 00FCDC 80012CDC 4809ACE5 */  bl        GXSetGPMetric
/* 00FCE0 80012CE0 4809B6D1 */  bl        GXClearGPMetric
/* 00FCE4 80012CE4 8001006C */  lwz       r0, 0x6c(r1)
/* 00FCE8 80012CE8 38600001 */  li        r3, 0x1
/* 00FCEC 80012CEC 83E10064 */  lwz       r31, 0x64(r1)
/* 00FCF0 80012CF0 38210068 */  addi      r1, r1, 0x68
/* 00FCF4 80012CF4 7C0803A6 */  mtlr      r0
/* 00FCF8 80012CF8 4E800020 */  blr

# 0x800D1D10 - 0x800D1DA0
.section .rodata, "a"

.balign 8

glabel D_800D1D10
	.float 1
	.float 0
	.float 0
	.float 0
	.float 0
	.float 1
	.float 0
	.float 0
	.float 0
	.float 0
	.float 1
	.float -1

glabel D_800D1D40
	.float 1
	.float 0
	.float 0
	.float 0
	.float 0
	.float 1
	.float 0
	.float 0
	.float 0
	.float 0
	.float 1
	.float -1

glabel D_800D1D70
	.float 1
	.float 0
	.float 0
	.float 0
	.float 0
	.float 1
	.float 0
	.float 0
	.float 0
	.float 0
	.float 1
	.float -1

# 0x800EB968 - 0x800EB9D8
.section .data, "wa"

.balign 8

glabel D_800EB968
	.long 0x43616E27
	.long 0x74206372
	.long 0x65617465
	.long 0x20726561
	.long 0x64207468
	.long 0x72656164
	.long 0x0A000000

jtbl_800EB984:
	.long movieDVDShowError, lbl_80011D28
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D30
	.long movieDVDShowError, lbl_80011D38
	.long movieDVDShowError, lbl_80011D40
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D4C
	.long movieDVDShowError, lbl_80011D48

jtbl_800EB9B8:
	.long movieDrawErrorMessage, lbl_80011F78
	.long movieDrawErrorMessage, lbl_80011FB0
	.long movieDrawErrorMessage, lbl_80011FE8
	.long movieDrawErrorMessage, lbl_80012058
	.long movieDrawErrorMessage, lbl_80012020
	.long movieDrawErrorMessage, lbl_80012090
	.long movieDrawErrorMessage, lbl_800120C8

glabel gap_05_800EB9D4_data
.hidden gap_05_800EB9D4_data
	.long 0x00000000

# 0x800FC520 - 0x800FD910
.section .bss, "wa"

glabel D_800FC520
	.skip 0x20

glabel D_800FC540
	.skip 0x20

glabel D_800FC560
	.skip 0x20

glabel D_800FC580
	.skip 0x28

glabel D_800FC5A8
	.skip 0x28

glabel D_800FC5D0
	.skip 0x28

glabel D_800FC5F8
	.skip 0x318

glabel D_800FC910
	.skip 0x1000

# 0x8018B8D0 - 0x8018B8E8
.section .sbss, "wa"

glabel D_8018B8D0
	.skip 0x4

glabel D_8018B8D4
	.skip 0x4

glabel D_8018B8D8
	.skip 0x4

glabel D_8018B8DC
	.skip 0x4

glabel D_8018B8E0
	.skip 0x8

# 0x8018BFE0 - 0x8018C018
.section .sdata2, "a"

glabel D_8018BFE0
	.long 0x00000000

glabel D_8018BFE4
	.long 0x00000000

glabel D_8018BFE8
	.long 0x00000000

glabel D_8018BFEC
	.float 0.5

glabel D_8018BFF0
	.double 4503599627370496

glabel D_8018BFF8
	.float 0

glabel D_8018BFFC
	.float 240

glabel D_8018C000
	.float 320

glabel D_8018C004
	.float 0.1

glabel D_8018C008
	.float 10000

glabel D_8018C00C
	.float 160

glabel D_8018C010
	.float 120

glabel D_8018C014
	.float 1
