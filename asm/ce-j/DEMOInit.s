# DEMOInit.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel DEMOInit
/* 0B07FC 800B5D9C 7C0802A6 */  mflr    r0
/* 0B0800 800B5DA0 90010004 */  stw     r0, 4(r1)
/* 0B0804 800B5DA4 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0B0808 800B5DA8 93E10014 */  stw     r31, 0x14(r1)
/* 0B080C 800B5DAC 7C7F1B78 */  mr      r31, r3
/* 0B0810 800B5DB0 4BFE60D5 */  bl      OSInit
/* 0B0814 800B5DB4 4BFFD1C1 */  bl      DVDInit
/* 0B0818 800B5DB8 4BFF06B5 */  bl      VIInit
/* 0B081C 800B5DBC 4800139D */  bl      DEMOPadInit
/* 0B0820 800B5DC0 7FE3FB78 */  mr      r3, r31
/* 0B0824 800B5DC4 4800004D */  bl      __DEMOInitRenderMode
/* 0B0828 800B5DC8 4800019D */  bl      __DEMOInitMem
/* 0B082C 800B5DCC 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B0830 800B5DD0 4BFF1015 */  bl      VIConfigure
/* 0B0834 800B5DD4 806D8740 */  lwz     r3, __OSCurrHeap@sda21(r13)
/* 0B0838 800B5DD8 3C800004 */  lis     r4, 4
/* 0B083C 800B5DDC 4BFE70E9 */  bl      OSAllocFromHeap
/* 0B0840 800B5DE0 906D8D90 */  stw     r3, DefaultFifo@sda21(r13)
/* 0B0844 800B5DE4 3C800004 */  lis     r4, 4
/* 0B0848 800B5DE8 806D8D90 */  lwz     r3, DefaultFifo@sda21(r13)
/* 0B084C 800B5DEC 4BFF2749 */  bl      GXInit
/* 0B0850 800B5DF0 906D8D94 */  stw     r3, DefaultFifoObj@sda21(r13)
/* 0B0854 800B5DF4 48000245 */  bl      __DEMOInitGX
/* 0B0858 800B5DF8 4800035D */  bl      __DEMOInitVI
/* 0B085C 800B5DFC 8001001C */  lwz     r0, 0x1c(r1)
/* 0B0860 800B5E00 83E10014 */  lwz     r31, 0x14(r1)
/* 0B0864 800B5E04 38210018 */  addi    r1, r1, 0x18
/* 0B0868 800B5E08 7C0803A6 */  mtlr    r0
/* 0B086C 800B5E0C 4E800020 */  blr     

__DEMOInitRenderMode:
/* 0B0870 800B5E10 7C0802A6 */  mflr    r0
/* 0B0874 800B5E14 28030000 */  cmplwi  r3, 0
/* 0B0878 800B5E18 90010004 */  stw     r0, 4(r1)
/* 0B087C 800B5E1C 3C808013 */  lis     r4, rmodeobj@ha
/* 0B0880 800B5E20 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0B0884 800B5E24 93E10014 */  stw     r31, 0x14(r1)
/* 0B0888 800B5E28 3BE426C8 */  addi    r31, r4, rmodeobj@l
/* 0B088C 800B5E2C 41820084 */  beq     lbl_800B5EB0
/* 0B0890 800B5E30 80830000 */  lwz     r4, 0(r3)
/* 0B0894 800B5E34 80030004 */  lwz     r0, 4(r3)
/* 0B0898 800B5E38 909F0000 */  stw     r4, 0(r31)
/* 0B089C 800B5E3C 901F0004 */  stw     r0, 4(r31)
/* 0B08A0 800B5E40 80830008 */  lwz     r4, 8(r3)
/* 0B08A4 800B5E44 8003000C */  lwz     r0, 0xc(r3)
/* 0B08A8 800B5E48 909F0008 */  stw     r4, 8(r31)
/* 0B08AC 800B5E4C 901F000C */  stw     r0, 0xc(r31)
/* 0B08B0 800B5E50 80830010 */  lwz     r4, 0x10(r3)
/* 0B08B4 800B5E54 80030014 */  lwz     r0, 0x14(r3)
/* 0B08B8 800B5E58 909F0010 */  stw     r4, 0x10(r31)
/* 0B08BC 800B5E5C 901F0014 */  stw     r0, 0x14(r31)
/* 0B08C0 800B5E60 80830018 */  lwz     r4, 0x18(r3)
/* 0B08C4 800B5E64 8003001C */  lwz     r0, 0x1c(r3)
/* 0B08C8 800B5E68 909F0018 */  stw     r4, 0x18(r31)
/* 0B08CC 800B5E6C 901F001C */  stw     r0, 0x1c(r31)
/* 0B08D0 800B5E70 80830020 */  lwz     r4, 0x20(r3)
/* 0B08D4 800B5E74 80030024 */  lwz     r0, 0x24(r3)
/* 0B08D8 800B5E78 909F0020 */  stw     r4, 0x20(r31)
/* 0B08DC 800B5E7C 901F0024 */  stw     r0, 0x24(r31)
/* 0B08E0 800B5E80 80830028 */  lwz     r4, 0x28(r3)
/* 0B08E4 800B5E84 8003002C */  lwz     r0, 0x2c(r3)
/* 0B08E8 800B5E88 909F0028 */  stw     r4, 0x28(r31)
/* 0B08EC 800B5E8C 901F002C */  stw     r0, 0x2c(r31)
/* 0B08F0 800B5E90 80830030 */  lwz     r4, 0x30(r3)
/* 0B08F4 800B5E94 80030034 */  lwz     r0, 0x34(r3)
/* 0B08F8 800B5E98 909F0030 */  stw     r4, 0x30(r31)
/* 0B08FC 800B5E9C 901F0034 */  stw     r0, 0x34(r31)
/* 0B0900 800B5EA0 80030038 */  lwz     r0, 0x38(r3)
/* 0B0904 800B5EA4 901F0038 */  stw     r0, 0x38(r31)
/* 0B0908 800B5EA8 93ED8D98 */  stw     r31, rmode@sda21(r13)
/* 0B090C 800B5EAC 480000A4 */  b       lbl_800B5F50
lbl_800B5EB0:
/* 0B0910 800B5EB0 4BFF1B4D */  bl      VIGetTvFormat
/* 0B0914 800B5EB4 2C030002 */  cmpwi   r3, 2
/* 0B0918 800B5EB8 41820054 */  beq     lbl_800B5F0C
/* 0B091C 800B5EBC 40800014 */  bge     lbl_800B5ED0
/* 0B0920 800B5EC0 2C030000 */  cmpwi   r3, 0
/* 0B0924 800B5EC4 41820018 */  beq     lbl_800B5EDC
/* 0B0928 800B5EC8 40800024 */  bge     lbl_800B5EEC
/* 0B092C 800B5ECC 48000050 */  b       lbl_800B5F1C
lbl_800B5ED0:
/* 0B0930 800B5ED0 2C030005 */  cmpwi   r3, 5
/* 0B0934 800B5ED4 41820028 */  beq     lbl_800B5EFC
/* 0B0938 800B5ED8 48000044 */  b       lbl_800B5F1C
lbl_800B5EDC:
/* 0B093C 800B5EDC 3C60800F */  lis     r3, GXNtsc480IntDf@ha
/* 0B0940 800B5EE0 38031E60 */  addi    r0, r3, GXNtsc480IntDf@l
/* 0B0944 800B5EE4 900D8D98 */  stw     r0, rmode@sda21(r13)
/* 0B0948 800B5EE8 48000050 */  b       lbl_800B5F38
lbl_800B5EEC:
/* 0B094C 800B5EEC 3C60800F */  lis     r3, GXPal528IntDf@ha
/* 0B0950 800B5EF0 38031F14 */  addi    r0, r3, GXPal528IntDf@l
/* 0B0954 800B5EF4 900D8D98 */  stw     r0, rmode@sda21(r13)
/* 0B0958 800B5EF8 48000040 */  b       lbl_800B5F38
lbl_800B5EFC:
/* 0B095C 800B5EFC 3C60800F */  lis     r3, GXEurgb60Hz480IntDf@ha
/* 0B0960 800B5F00 38031F50 */  addi    r0, r3, GXEurgb60Hz480IntDf@l
/* 0B0964 800B5F04 900D8D98 */  stw     r0, rmode@sda21(r13)
/* 0B0968 800B5F08 48000030 */  b       lbl_800B5F38
lbl_800B5F0C:
/* 0B096C 800B5F0C 3C60800F */  lis     r3, GXMpal480IntDf@ha
/* 0B0970 800B5F10 38031ED8 */  addi    r0, r3, GXMpal480IntDf@l
/* 0B0974 800B5F14 900D8D98 */  stw     r0, rmode@sda21(r13)
/* 0B0978 800B5F18 48000020 */  b       lbl_800B5F38
lbl_800B5F1C:
/* 0B097C 800B5F1C 3C60800F */  lis     r3, D_800F2698@ha
/* 0B0980 800B5F20 4CC63182 */  crclr   6
/* 0B0984 800B5F24 3C80800F */  lis     r4, D_800F26A4@ha
/* 0B0988 800B5F28 38A426A4 */  addi    r5, r4, D_800F26A4@l
/* 0B098C 800B5F2C 38632698 */  addi    r3, r3, D_800F2698@l
/* 0B0990 800B5F30 388001D6 */  li      r4, 0x1d6
/* 0B0994 800B5F34 4BFE8745 */  bl      OSPanic
lbl_800B5F38:
/* 0B0998 800B5F38 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B099C 800B5F3C 389F0000 */  addi    r4, r31, 0
/* 0B09A0 800B5F40 38A00000 */  li      r5, 0
/* 0B09A4 800B5F44 38C00010 */  li      r6, 0x10
/* 0B09A8 800B5F48 4BFF57D5 */  bl      GXAdjustForOverscan
/* 0B09AC 800B5F4C 93ED8D98 */  stw     r31, rmode@sda21(r13)
lbl_800B5F50:
/* 0B09B0 800B5F50 8001001C */  lwz     r0, 0x1c(r1)
/* 0B09B4 800B5F54 83E10014 */  lwz     r31, 0x14(r1)
/* 0B09B8 800B5F58 38210018 */  addi    r1, r1, 0x18
/* 0B09BC 800B5F5C 7C0803A6 */  mtlr    r0
/* 0B09C0 800B5F60 4E800020 */  blr     

__DEMOInitMem:
/* 0B09C4 800B5F64 7C0802A6 */  mflr    r0
/* 0B09C8 800B5F68 90010004 */  stw     r0, 4(r1)
/* 0B09CC 800B5F6C 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0B09D0 800B5F70 93E1000C */  stw     r31, 0xc(r1)
/* 0B09D4 800B5F74 93C10008 */  stw     r30, 8(r1)
/* 0B09D8 800B5F78 4BFE7519 */  bl      OSGetArenaLo
/* 0B09DC 800B5F7C 7C7F1B78 */  mr      r31, r3
/* 0B09E0 800B5F80 4BFE7509 */  bl      OSGetArenaHi
/* 0B09E4 800B5F84 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B09E8 800B5F88 381F001F */  addi    r0, r31, 0x1f
/* 0B09EC 800B5F8C 54000034 */  rlwinm  r0, r0, 0, 0, 0x1a
/* 0B09F0 800B5F90 A0830004 */  lhz     r4, 4(r3)
/* 0B09F4 800B5F94 A0630008 */  lhz     r3, 8(r3)
/* 0B09F8 800B5F98 3884000F */  addi    r4, r4, 0xf
/* 0B09FC 800B5F9C 900D8DB4 */  stw     r0, DemoFrameBuffer1@sda21(r13)
/* 0B0A00 800B5FA0 54800436 */  rlwinm  r0, r4, 0, 0x10, 0x1b
/* 0B0A04 800B5FA4 7C6019D6 */  mullw   r3, r0, r3
/* 0B0A08 800B5FA8 800D8DB4 */  lwz     r0, DemoFrameBuffer1@sda21(r13)
/* 0B0A0C 800B5FAC 5464083C */  slwi    r4, r3, 1
/* 0B0A10 800B5FB0 3864001F */  addi    r3, r4, 0x1f
/* 0B0A14 800B5FB4 908D8D9C */  stw     r4, allocatedFrameBufferSize@sda21(r13)
/* 0B0A18 800B5FB8 7C001A14 */  add     r0, r0, r3
/* 0B0A1C 800B5FBC 54000034 */  rlwinm  r0, r0, 0, 0, 0x1a
/* 0B0A20 800B5FC0 900D8DB0 */  stw     r0, DemoFrameBuffer2@sda21(r13)
/* 0B0A24 800B5FC4 808D8DB0 */  lwz     r4, DemoFrameBuffer2@sda21(r13)
/* 0B0A28 800B5FC8 7C041A14 */  add     r0, r4, r3
/* 0B0A2C 800B5FCC 908D8DAC */  stw     r4, DemoCurrentBuffer@sda21(r13)
/* 0B0A30 800B5FD0 54030034 */  rlwinm  r3, r0, 0, 0, 0x1a
/* 0B0A34 800B5FD4 4BFE74CD */  bl      OSSetArenaLo
/* 0B0A38 800B5FD8 4BFE74B9 */  bl      OSGetArenaLo
/* 0B0A3C 800B5FDC 7C7F1B78 */  mr      r31, r3
/* 0B0A40 800B5FE0 4BFE74A9 */  bl      OSGetArenaHi
/* 0B0A44 800B5FE4 3BC30000 */  addi    r30, r3, 0
/* 0B0A48 800B5FE8 387F0000 */  addi    r3, r31, 0
/* 0B0A4C 800B5FEC 389E0000 */  addi    r4, r30, 0
/* 0B0A50 800B5FF0 38A00001 */  li      r5, 1
/* 0B0A54 800B5FF4 4BFE7059 */  bl      OSInitAlloc
/* 0B0A58 800B5FF8 7C7F1B78 */  mr      r31, r3
/* 0B0A5C 800B5FFC 4BFE74A5 */  bl      OSSetArenaLo
/* 0B0A60 800B6000 381F001F */  addi    r0, r31, 0x1f
/* 0B0A64 800B6004 57DF0034 */  rlwinm  r31, r30, 0, 0, 0x1a
/* 0B0A68 800B6008 54030034 */  rlwinm  r3, r0, 0, 0, 0x1a
/* 0B0A6C 800B600C 389F0000 */  addi    r4, r31, 0
/* 0B0A70 800B6010 4BFE70AD */  bl      OSCreateHeap
/* 0B0A74 800B6014 4BFE7029 */  bl      OSSetCurrentHeap
/* 0B0A78 800B6018 7FE3FB78 */  mr      r3, r31
/* 0B0A7C 800B601C 4BFE7485 */  bl      OSSetArenaLo
/* 0B0A80 800B6020 80010014 */  lwz     r0, 0x14(r1)
/* 0B0A84 800B6024 83E1000C */  lwz     r31, 0xc(r1)
/* 0B0A88 800B6028 83C10008 */  lwz     r30, 8(r1)
/* 0B0A8C 800B602C 38210010 */  addi    r1, r1, 0x10
/* 0B0A90 800B6030 7C0803A6 */  mtlr    r0
/* 0B0A94 800B6034 4E800020 */  blr     

__DEMOInitGX:
/* 0B0A98 800B6038 7C0802A6 */  mflr    r0
/* 0B0A9C 800B603C 3C604330 */  lis     r3, 0x4330
/* 0B0AA0 800B6040 90010004 */  stw     r0, 4(r1)
/* 0B0AA4 800B6044 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0B0AA8 800B6048 93E1001C */  stw     r31, 0x1c(r1)
/* 0B0AAC 800B604C 80AD8D98 */  lwz     r5, rmode@sda21(r13)
/* 0B0AB0 800B6050 C02284D0 */  lfs     f1, D_801361D0@sda21(r2)
/* 0B0AB4 800B6054 A0850004 */  lhz     r4, 4(r5)
/* 0B0AB8 800B6058 A0050006 */  lhz     r0, 6(r5)
/* 0B0ABC 800B605C FC400890 */  fmr     f2, f1
/* 0B0AC0 800B6060 90810014 */  stw     r4, 0x14(r1)
/* 0B0AC4 800B6064 FCA00890 */  fmr     f5, f1
/* 0B0AC8 800B6068 C88284D8 */  lfd     f4, D_801361D8@sda21(r2)
/* 0B0ACC 800B606C 9001000C */  stw     r0, 0xc(r1)
/* 0B0AD0 800B6070 C0C284D4 */  lfs     f6, D_801361D4@sda21(r2)
/* 0B0AD4 800B6074 90610010 */  stw     r3, 0x10(r1)
/* 0B0AD8 800B6078 90610008 */  stw     r3, 8(r1)
/* 0B0ADC 800B607C C8610010 */  lfd     f3, 0x10(r1)
/* 0B0AE0 800B6080 C8010008 */  lfd     f0, 8(r1)
/* 0B0AE4 800B6084 EC632028 */  fsubs   f3, f3, f4
/* 0B0AE8 800B6088 EC802028 */  fsubs   f4, f0, f4
/* 0B0AEC 800B608C 4BFF8A4D */  bl      GXSetViewport
/* 0B0AF0 800B6090 80CD8D98 */  lwz     r6, rmode@sda21(r13)
/* 0B0AF4 800B6094 38600000 */  li      r3, 0
/* 0B0AF8 800B6098 38800000 */  li      r4, 0
/* 0B0AFC 800B609C A0A60004 */  lhz     r5, 4(r6)
/* 0B0B00 800B60A0 A0C60006 */  lhz     r6, 6(r6)
/* 0B0B04 800B60A4 4BFF8A7D */  bl      GXSetScissor
/* 0B0B08 800B60A8 808D8D98 */  lwz     r4, rmode@sda21(r13)
/* 0B0B0C 800B60AC A0640006 */  lhz     r3, 6(r4)
/* 0B0B10 800B60B0 A0840008 */  lhz     r4, 8(r4)
/* 0B0B14 800B60B4 4BFF5A85 */  bl      GXGetYScaleFactor
/* 0B0B18 800B60B8 4BFF5CB9 */  bl      GXSetDispCopyYScale
/* 0B0B1C 800B60BC 80CD8D98 */  lwz     r6, rmode@sda21(r13)
/* 0B0B20 800B60C0 547F043E */  clrlwi  r31, r3, 0x10
/* 0B0B24 800B60C4 38600000 */  li      r3, 0
/* 0B0B28 800B60C8 A0A60004 */  lhz     r5, 4(r6)
/* 0B0B2C 800B60CC 38800000 */  li      r4, 0
/* 0B0B30 800B60D0 A0C60006 */  lhz     r6, 6(r6)
/* 0B0B34 800B60D4 4BFF578D */  bl      GXSetDispCopySrc
/* 0B0B38 800B60D8 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B0B3C 800B60DC 7FE4FB78 */  mr      r4, r31
/* 0B0B40 800B60E0 A0630004 */  lhz     r3, 4(r3)
/* 0B0B44 800B60E4 4BFF5875 */  bl      GXSetDispCopyDst
/* 0B0B48 800B60E8 80CD8D98 */  lwz     r6, rmode@sda21(r13)
/* 0B0B4C 800B60EC 38A00001 */  li      r5, 1
/* 0B0B50 800B60F0 88660019 */  lbz     r3, 0x19(r6)
/* 0B0B54 800B60F4 3886001A */  addi    r4, r6, 0x1a
/* 0B0B58 800B60F8 38C60032 */  addi    r6, r6, 0x32
/* 0B0B5C 800B60FC 4BFF5DB9 */  bl      GXSetCopyFilter
/* 0B0B60 800B6100 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B0B64 800B6104 88030019 */  lbz     r0, 0x19(r3)
/* 0B0B68 800B6108 28000000 */  cmplwi  r0, 0
/* 0B0B6C 800B610C 41820014 */  beq     lbl_800B6120
/* 0B0B70 800B6110 38600002 */  li      r3, 2
/* 0B0B74 800B6114 38800000 */  li      r4, 0
/* 0B0B78 800B6118 4BFF8435 */  bl      GXSetPixelFmt
/* 0B0B7C 800B611C 48000010 */  b       lbl_800B612C
lbl_800B6120:
/* 0B0B80 800B6120 38600000 */  li      r3, 0
/* 0B0B84 800B6124 38800000 */  li      r4, 0
/* 0B0B88 800B6128 4BFF8425 */  bl      GXSetPixelFmt
lbl_800B612C:
/* 0B0B8C 800B612C 806D8DAC */  lwz     r3, DemoCurrentBuffer@sda21(r13)
/* 0B0B90 800B6130 38800001 */  li      r4, 1
/* 0B0B94 800B6134 4BFF5F9D */  bl      GXCopyDisp
/* 0B0B98 800B6138 38600000 */  li      r3, 0
/* 0B0B9C 800B613C 4BFF5F81 */  bl      GXSetDispCopyGamma
/* 0B0BA0 800B6140 80010024 */  lwz     r0, 0x24(r1)
/* 0B0BA4 800B6144 83E1001C */  lwz     r31, 0x1c(r1)
/* 0B0BA8 800B6148 38210020 */  addi    r1, r1, 0x20
/* 0B0BAC 800B614C 7C0803A6 */  mtlr    r0
/* 0B0BB0 800B6150 4E800020 */  blr     

__DEMOInitVI:
/* 0B0BB4 800B6154 7C0802A6 */  mflr    r0
/* 0B0BB8 800B6158 90010004 */  stw     r0, 4(r1)
/* 0B0BBC 800B615C 9421FFF8 */  stwu    r1, -8(r1)
/* 0B0BC0 800B6160 806D8DB4 */  lwz     r3, DemoFrameBuffer1@sda21(r13)
/* 0B0BC4 800B6164 4BFF15D9 */  bl      VISetNextFrameBuffer
/* 0B0BC8 800B6168 800D8DB0 */  lwz     r0, DemoFrameBuffer2@sda21(r13)
/* 0B0BCC 800B616C 900D8DAC */  stw     r0, DemoCurrentBuffer@sda21(r13)
/* 0B0BD0 800B6170 4BFF149D */  bl      VIFlush
/* 0B0BD4 800B6174 4BFF07A9 */  bl      VIWaitForRetrace
/* 0B0BD8 800B6178 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B0BDC 800B617C 80030000 */  lwz     r0, 0(r3)
/* 0B0BE0 800B6180 540007FF */  clrlwi. r0, r0, 0x1f
/* 0B0BE4 800B6184 41820008 */  beq     lbl_800B618C
/* 0B0BE8 800B6188 4BFF0795 */  bl      VIWaitForRetrace
lbl_800B618C:
/* 0B0BEC 800B618C 8001000C */  lwz     r0, 0xc(r1)
/* 0B0BF0 800B6190 38210008 */  addi    r1, r1, 8
/* 0B0BF4 800B6194 7C0803A6 */  mtlr    r0
/* 0B0BF8 800B6198 4E800020 */  blr     

glabel DEMOBeforeRender
/* 0B0BFC 800B619C 7C0802A6 */  mflr    r0
/* 0B0C00 800B61A0 90010004 */  stw     r0, 4(r1)
/* 0B0C04 800B61A4 9421FFE0 */  stwu    r1, -0x20(r1)
/* 0B0C08 800B61A8 93E1001C */  stw     r31, 0x1c(r1)
/* 0B0C0C 800B61AC 800D8DA0 */  lwz     r0, GPHangWorkaround@sda21(r13)
/* 0B0C10 800B61B0 2C000000 */  cmpwi   r0, 0
/* 0B0C14 800B61B4 41820014 */  beq     lbl_800B61C8
/* 0B0C18 800B61B8 3C600001 */  lis     r3, 1
/* 0B0C1C 800B61BC 3863FEEB */  addi    r3, r3, -277
/* 0B0C20 800B61C0 4BFF4CFD */  bl      GXSetDrawSync
/* 0B0C24 800B61C4 4BFF94F9 */  bl      GXClearGPMetric
lbl_800B61C8:
/* 0B0C28 800B61C8 83ED8D98 */  lwz     r31, rmode@sda21(r13)
/* 0B0C2C 800B61CC 881F0018 */  lbz     r0, 0x18(r31)
/* 0B0C30 800B61D0 28000000 */  cmplwi  r0, 0
/* 0B0C34 800B61D4 41820050 */  beq     lbl_800B6224
/* 0B0C38 800B61D8 4BFF16F1 */  bl      VIGetNextField
/* 0B0C3C 800B61DC A0BF0004 */  lhz     r5, 4(r31)
/* 0B0C40 800B61E0 3C804330 */  lis     r4, 0x4330
/* 0B0C44 800B61E4 A01F0006 */  lhz     r0, 6(r31)
/* 0B0C48 800B61E8 90A10014 */  stw     r5, 0x14(r1)
/* 0B0C4C 800B61EC C02284D0 */  lfs     f1, D_801361D0@sda21(r2)
/* 0B0C50 800B61F0 9001000C */  stw     r0, 0xc(r1)
/* 0B0C54 800B61F4 C88284D8 */  lfd     f4, D_801361D8@sda21(r2)
/* 0B0C58 800B61F8 FC400890 */  fmr     f2, f1
/* 0B0C5C 800B61FC 90810010 */  stw     r4, 0x10(r1)
/* 0B0C60 800B6200 FCA00890 */  fmr     f5, f1
/* 0B0C64 800B6204 C0C284D4 */  lfs     f6, D_801361D4@sda21(r2)
/* 0B0C68 800B6208 90810008 */  stw     r4, 8(r1)
/* 0B0C6C 800B620C C8610010 */  lfd     f3, 0x10(r1)
/* 0B0C70 800B6210 C8010008 */  lfd     f0, 8(r1)
/* 0B0C74 800B6214 EC632028 */  fsubs   f3, f3, f4
/* 0B0C78 800B6218 EC802028 */  fsubs   f4, f0, f4
/* 0B0C7C 800B621C 4BFF8865 */  bl      GXSetViewportJitter
/* 0B0C80 800B6220 48000048 */  b       lbl_800B6268
lbl_800B6224:
/* 0B0C84 800B6224 A09F0004 */  lhz     r4, 4(r31)
/* 0B0C88 800B6228 3C604330 */  lis     r3, 0x4330
/* 0B0C8C 800B622C A01F0006 */  lhz     r0, 6(r31)
/* 0B0C90 800B6230 9081000C */  stw     r4, 0xc(r1)
/* 0B0C94 800B6234 C02284D0 */  lfs     f1, D_801361D0@sda21(r2)
/* 0B0C98 800B6238 90010014 */  stw     r0, 0x14(r1)
/* 0B0C9C 800B623C C88284D8 */  lfd     f4, D_801361D8@sda21(r2)
/* 0B0CA0 800B6240 FC400890 */  fmr     f2, f1
/* 0B0CA4 800B6244 90610008 */  stw     r3, 8(r1)
/* 0B0CA8 800B6248 FCA00890 */  fmr     f5, f1
/* 0B0CAC 800B624C C0C284D4 */  lfs     f6, D_801361D4@sda21(r2)
/* 0B0CB0 800B6250 90610010 */  stw     r3, 0x10(r1)
/* 0B0CB4 800B6254 C8610008 */  lfd     f3, 8(r1)
/* 0B0CB8 800B6258 C8010010 */  lfd     f0, 0x10(r1)
/* 0B0CBC 800B625C EC632028 */  fsubs   f3, f3, f4
/* 0B0CC0 800B6260 EC802028 */  fsubs   f4, f0, f4
/* 0B0CC4 800B6264 4BFF8875 */  bl      GXSetViewport
lbl_800B6268:
/* 0B0CC8 800B6268 4BFF45BD */  bl      GXInvalidateVtxCache
/* 0B0CCC 800B626C 4BFF6D1D */  bl      GXInvalidateTexAll
/* 0B0CD0 800B6270 80010024 */  lwz     r0, 0x24(r1)
/* 0B0CD4 800B6274 83E1001C */  lwz     r31, 0x1c(r1)
/* 0B0CD8 800B6278 38210020 */  addi    r1, r1, 0x20
/* 0B0CDC 800B627C 7C0803A6 */  mtlr    r0
/* 0B0CE0 800B6280 4E800020 */  blr     

glabel DEMODoneRender
/* 0B0CE4 800B6284 7C0802A6 */  mflr    r0
/* 0B0CE8 800B6288 90010004 */  stw     r0, 4(r1)
/* 0B0CEC 800B628C 9421FFF8 */  stwu    r1, -8(r1)
/* 0B0CF0 800B6290 800D8DA0 */  lwz     r0, GPHangWorkaround@sda21(r13)
/* 0B0CF4 800B6294 2C000000 */  cmpwi   r0, 0
/* 0B0CF8 800B6298 4182000C */  beq     lbl_800B62A4
/* 0B0CFC 800B629C 480000DD */  bl      __NoHangDoneRender
/* 0B0D00 800B62A0 48000058 */  b       lbl_800B62F8
lbl_800B62A4:
/* 0B0D04 800B62A4 880D8DC8 */  lbz     r0, DemoStatEnable@sda21(r13)
/* 0B0D08 800B62A8 28000000 */  cmplwi  r0, 0
/* 0B0D0C 800B62AC 41820020 */  beq     lbl_800B62CC
/* 0B0D10 800B62B0 4BFF4D65 */  bl      GXDrawDone
/* 0B0D14 800B62B4 38600001 */  li      r3, 1
/* 0B0D18 800B62B8 48001309 */  bl      DEMOUpdateStats
/* 0B0D1C 800B62BC 4800135D */  bl      DEMOPrintStats
/* 0B0D20 800B62C0 4BFF4D55 */  bl      GXDrawDone
/* 0B0D24 800B62C4 38600000 */  li      r3, 0
/* 0B0D28 800B62C8 480012F9 */  bl      DEMOUpdateStats
lbl_800B62CC:
/* 0B0D2C 800B62CC 38600001 */  li      r3, 1
/* 0B0D30 800B62D0 38800003 */  li      r4, 3
/* 0B0D34 800B62D4 38A00001 */  li      r5, 1
/* 0B0D38 800B62D8 4BFF820D */  bl      GXSetZMode
/* 0B0D3C 800B62DC 38600001 */  li      r3, 1
/* 0B0D40 800B62E0 4BFF81AD */  bl      GXSetColorUpdate
/* 0B0D44 800B62E4 806D8DAC */  lwz     r3, DemoCurrentBuffer@sda21(r13)
/* 0B0D48 800B62E8 38800001 */  li      r4, 1
/* 0B0D4C 800B62EC 4BFF5DE5 */  bl      GXCopyDisp
/* 0B0D50 800B62F0 4BFF4D25 */  bl      GXDrawDone
/* 0B0D54 800B62F4 48000015 */  bl      DEMOSwapBuffers
lbl_800B62F8:
/* 0B0D58 800B62F8 8001000C */  lwz     r0, 0xc(r1)
/* 0B0D5C 800B62FC 38210008 */  addi    r1, r1, 8
/* 0B0D60 800B6300 7C0803A6 */  mtlr    r0
/* 0B0D64 800B6304 4E800020 */  blr     

glabel DEMOSwapBuffers
/* 0B0D68 800B6308 7C0802A6 */  mflr    r0
/* 0B0D6C 800B630C 90010004 */  stw     r0, 4(r1)
/* 0B0D70 800B6310 9421FFF8 */  stwu    r1, -8(r1)
/* 0B0D74 800B6314 806D8DAC */  lwz     r3, DemoCurrentBuffer@sda21(r13)
/* 0B0D78 800B6318 4BFF1425 */  bl      VISetNextFrameBuffer
/* 0B0D7C 800B631C 880D8840 */  lbz     r0, DemoFirstFrame@sda21(r13)
/* 0B0D80 800B6320 28000000 */  cmplwi  r0, 0
/* 0B0D84 800B6324 41820014 */  beq     lbl_800B6338
/* 0B0D88 800B6328 38600000 */  li      r3, 0
/* 0B0D8C 800B632C 4BFF147D */  bl      VISetBlack
/* 0B0D90 800B6330 38000000 */  li      r0, 0
/* 0B0D94 800B6334 980D8840 */  stb     r0, DemoFirstFrame@sda21(r13)
lbl_800B6338:
/* 0B0D98 800B6338 4BFF12D5 */  bl      VIFlush
/* 0B0D9C 800B633C 4BFF05E1 */  bl      VIWaitForRetrace
/* 0B0DA0 800B6340 800D8DAC */  lwz     r0, DemoCurrentBuffer@sda21(r13)
/* 0B0DA4 800B6344 806D8DB4 */  lwz     r3, DemoFrameBuffer1@sda21(r13)
/* 0B0DA8 800B6348 7C001840 */  cmplw   r0, r3
/* 0B0DAC 800B634C 40820010 */  bne     lbl_800B635C
/* 0B0DB0 800B6350 800D8DB0 */  lwz     r0, DemoFrameBuffer2@sda21(r13)
/* 0B0DB4 800B6354 900D8DAC */  stw     r0, DemoCurrentBuffer@sda21(r13)
/* 0B0DB8 800B6358 48000008 */  b       lbl_800B6360
lbl_800B635C:
/* 0B0DBC 800B635C 906D8DAC */  stw     r3, DemoCurrentBuffer@sda21(r13)
lbl_800B6360:
/* 0B0DC0 800B6360 8001000C */  lwz     r0, 0xc(r1)
/* 0B0DC4 800B6364 38210008 */  addi    r1, r1, 8
/* 0B0DC8 800B6368 7C0803A6 */  mtlr    r0
/* 0B0DCC 800B636C 4E800020 */  blr     

glabel DEMOGetRenderModeObj
/* 0B0DD0 800B6370 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B0DD4 800B6374 4E800020 */  blr     

__NoHangDoneRender:
/* 0B0DD8 800B6378 7C0802A6 */  mflr    r0
/* 0B0DDC 800B637C 38800001 */  li      r4, 1
/* 0B0DE0 800B6380 90010004 */  stw     r0, 4(r1)
/* 0B0DE4 800B6384 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0B0DE8 800B6388 93E1000C */  stw     r31, 0xc(r1)
/* 0B0DEC 800B638C 93C10008 */  stw     r30, 8(r1)
/* 0B0DF0 800B6390 3BC00000 */  li      r30, 0
/* 0B0DF4 800B6394 806D8DAC */  lwz     r3, DemoCurrentBuffer@sda21(r13)
/* 0B0DF8 800B6398 4BFF5D39 */  bl      GXCopyDisp
/* 0B0DFC 800B639C 3C600001 */  lis     r3, 1
/* 0B0E00 800B63A0 3863B00B */  addi    r3, r3, -20469
/* 0B0E04 800B63A4 4BFF4B19 */  bl      GXSetDrawSync
/* 0B0E08 800B63A8 38000000 */  li      r0, 0
/* 0B0E0C 800B63AC 3C60800F */  lis     r3, D_800F270C@ha
/* 0B0E10 800B63B0 900D8DA4 */  stw     r0, FrameCount@sda21(r13)
/* 0B0E14 800B63B4 3BE3270C */  addi    r31, r3, D_800F270C@l
/* 0B0E18 800B63B8 48000038 */  b       lbl_800B63F0
lbl_800B63BC:
/* 0B0E1C 800B63BC 806D8DA4 */  lwz     r3, FrameCount@sda21(r13)
/* 0B0E20 800B63C0 800D8DA8 */  lwz     r0, FrameMissThreshold@sda21(r13)
/* 0B0E24 800B63C4 7C030040 */  cmplw   r3, r0
/* 0B0E28 800B63C8 41800028 */  blt     lbl_800B63F0
/* 0B0E2C 800B63CC 387F0000 */  addi    r3, r31, 0
/* 0B0E30 800B63D0 4CC63182 */  crclr   6
/* 0B0E34 800B63D4 4BFE8225 */  bl      OSReport
/* 0B0E38 800B63D8 3BC00001 */  li      r30, 1
/* 0B0E3C 800B63DC 4800014D */  bl      __DEMODiagnoseHang
/* 0B0E40 800B63E0 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B0E44 800B63E4 48000301 */  bl      DEMOReInit
/* 0B0E48 800B63E8 38600001 */  li      r3, 1
/* 0B0E4C 800B63EC 48000081 */  bl      DEMOSetGPHangMetric
lbl_800B63F0:
/* 0B0E50 800B63F0 4BFF4B81 */  bl      GXReadDrawSync
/* 0B0E54 800B63F4 5460043E */  clrlwi  r0, r3, 0x10
/* 0B0E58 800B63F8 2800B00B */  cmplwi  r0, 0xb00b
/* 0B0E5C 800B63FC 4182000C */  beq     lbl_800B6408
/* 0B0E60 800B6400 2C1E0000 */  cmpwi   r30, 0
/* 0B0E64 800B6404 4182FFB8 */  beq     lbl_800B63BC
lbl_800B6408:
/* 0B0E68 800B6408 806D8DAC */  lwz     r3, DemoCurrentBuffer@sda21(r13)
/* 0B0E6C 800B640C 4BFF1331 */  bl      VISetNextFrameBuffer
/* 0B0E70 800B6410 880D8840 */  lbz     r0, DemoFirstFrame@sda21(r13)
/* 0B0E74 800B6414 28000000 */  cmplwi  r0, 0
/* 0B0E78 800B6418 41820014 */  beq     lbl_800B642C
/* 0B0E7C 800B641C 38600000 */  li      r3, 0
/* 0B0E80 800B6420 4BFF1389 */  bl      VISetBlack
/* 0B0E84 800B6424 38000000 */  li      r0, 0
/* 0B0E88 800B6428 980D8840 */  stb     r0, DemoFirstFrame@sda21(r13)
lbl_800B642C:
/* 0B0E8C 800B642C 4BFF11E1 */  bl      VIFlush
/* 0B0E90 800B6430 4BFF04ED */  bl      VIWaitForRetrace
/* 0B0E94 800B6434 800D8DAC */  lwz     r0, DemoCurrentBuffer@sda21(r13)
/* 0B0E98 800B6438 806D8DB4 */  lwz     r3, DemoFrameBuffer1@sda21(r13)
/* 0B0E9C 800B643C 7C001840 */  cmplw   r0, r3
/* 0B0EA0 800B6440 40820010 */  bne     lbl_800B6450
/* 0B0EA4 800B6444 800D8DB0 */  lwz     r0, DemoFrameBuffer2@sda21(r13)
/* 0B0EA8 800B6448 900D8DAC */  stw     r0, DemoCurrentBuffer@sda21(r13)
/* 0B0EAC 800B644C 48000008 */  b       lbl_800B6454
lbl_800B6450:
/* 0B0EB0 800B6450 906D8DAC */  stw     r3, DemoCurrentBuffer@sda21(r13)
lbl_800B6454:
/* 0B0EB4 800B6454 80010014 */  lwz     r0, 0x14(r1)
/* 0B0EB8 800B6458 83E1000C */  lwz     r31, 0xc(r1)
/* 0B0EBC 800B645C 83C10008 */  lwz     r30, 8(r1)
/* 0B0EC0 800B6460 38210010 */  addi    r1, r1, 0x10
/* 0B0EC4 800B6464 7C0803A6 */  mtlr    r0
/* 0B0EC8 800B6468 4E800020 */  blr     

glabel DEMOSetGPHangMetric
/* 0B0ECC 800B646C 7C0802A6 */  mflr    r0
/* 0B0ED0 800B6470 90010004 */  stw     r0, 4(r1)
/* 0B0ED4 800B6474 5460063F */  clrlwi. r0, r3, 0x18
/* 0B0ED8 800B6478 9421FFF8 */  stwu    r1, -8(r1)
/* 0B0EDC 800B647C 41820060 */  beq     lbl_800B64DC
/* 0B0EE0 800B6480 38600023 */  li      r3, 0x23
/* 0B0EE4 800B6484 38800016 */  li      r4, 0x16
/* 0B0EE8 800B6488 4BFF8845 */  bl      GXSetGPMetric
/* 0B0EEC 800B648C 38A00061 */  li      r5, 0x61
/* 0B0EF0 800B6490 3CC0CC01 */  lis     r6, 0xcc01
/* 0B0EF4 800B6494 3C602403 */  lis     r3, 0x2403
/* 0B0EF8 800B6498 98A68000 */  stb     r5, -0x8000(r6)
/* 0B0EFC 800B649C 3803C004 */  addi    r0, r3, -16380
/* 0B0F00 800B64A0 90068000 */  stw     r0, -0x8000(r6)
/* 0B0F04 800B64A4 3C802300 */  lis     r4, 0x2300
/* 0B0F08 800B64A8 3C600008 */  lis     r3, 8
/* 0B0F0C 800B64AC 98A68000 */  stb     r5, -0x8000(r6)
/* 0B0F10 800B64B0 38840020 */  addi    r4, r4, 0x20
/* 0B0F14 800B64B4 38000010 */  li      r0, 0x10
/* 0B0F18 800B64B8 90868000 */  stw     r4, -0x8000(r6)
/* 0B0F1C 800B64BC 38A00000 */  li      r5, 0
/* 0B0F20 800B64C0 38801006 */  li      r4, 0x1006
/* 0B0F24 800B64C4 98068000 */  stb     r0, -0x8000(r6)
/* 0B0F28 800B64C8 38034400 */  addi    r0, r3, 0x4400
/* 0B0F2C 800B64CC B0A68000 */  sth     r5, -0x8000(r6)
/* 0B0F30 800B64D0 B0868000 */  sth     r4, -0x8000(r6)
/* 0B0F34 800B64D4 90068000 */  stw     r0, -0x8000(r6)
/* 0B0F38 800B64D8 48000040 */  b       lbl_800B6518
lbl_800B64DC:
/* 0B0F3C 800B64DC 38E00061 */  li      r7, 0x61
/* 0B0F40 800B64E0 3CC0CC01 */  lis     r6, 0xcc01
/* 0B0F44 800B64E4 98E68000 */  stb     r7, -0x8000(r6)
/* 0B0F48 800B64E8 3C002400 */  lis     r0, 0x2400
/* 0B0F4C 800B64EC 3CA02300 */  lis     r5, 0x2300
/* 0B0F50 800B64F0 90068000 */  stw     r0, -0x8000(r6)
/* 0B0F54 800B64F4 38800010 */  li      r4, 0x10
/* 0B0F58 800B64F8 38600000 */  li      r3, 0
/* 0B0F5C 800B64FC 98E68000 */  stb     r7, -0x8000(r6)
/* 0B0F60 800B6500 38001006 */  li      r0, 0x1006
/* 0B0F64 800B6504 90A68000 */  stw     r5, -0x8000(r6)
/* 0B0F68 800B6508 98868000 */  stb     r4, -0x8000(r6)
/* 0B0F6C 800B650C B0668000 */  sth     r3, -0x8000(r6)
/* 0B0F70 800B6510 B0068000 */  sth     r0, -0x8000(r6)
/* 0B0F74 800B6514 90668000 */  stw     r3, -0x8000(r6)
lbl_800B6518:
/* 0B0F78 800B6518 8001000C */  lwz     r0, 0xc(r1)
/* 0B0F7C 800B651C 38210008 */  addi    r1, r1, 8
/* 0B0F80 800B6520 7C0803A6 */  mtlr    r0
/* 0B0F84 800B6524 4E800020 */  blr     

__DEMODiagnoseHang:
/* 0B0F88 800B6528 7C0802A6 */  mflr    r0
/* 0B0F8C 800B652C 3C60800F */  lis     r3, D_800F2698@ha
/* 0B0F90 800B6530 90010004 */  stw     r0, 4(r1)
/* 0B0F94 800B6534 9421FFB8 */  stwu    r1, -0x48(r1)
/* 0B0F98 800B6538 BF610034 */  stmw    r27, 0x34(r1)
/* 0B0F9C 800B653C 3BE32698 */  addi    r31, r3, D_800F2698@l
/* 0B0FA0 800B6540 38610024 */  addi    r3, r1, 0x24
/* 0B0FA4 800B6544 38810028 */  addi    r4, r1, 0x28
/* 0B0FA8 800B6548 38A1001C */  addi    r5, r1, 0x1c
/* 0B0FAC 800B654C 38C10020 */  addi    r6, r1, 0x20
/* 0B0FB0 800B6550 4BFF96ED */  bl      GXReadXfRasMetric
/* 0B0FB4 800B6554 38610014 */  addi    r3, r1, 0x14
/* 0B0FB8 800B6558 38810018 */  addi    r4, r1, 0x18
/* 0B0FBC 800B655C 38A1000C */  addi    r5, r1, 0xc
/* 0B0FC0 800B6560 38C10010 */  addi    r6, r1, 0x10
/* 0B0FC4 800B6564 4BFF96D9 */  bl      GXReadXfRasMetric
/* 0B0FC8 800B6568 80A10020 */  lwz     r5, 0x20(r1)
/* 0B0FCC 800B656C 38610008 */  addi    r3, r1, 8
/* 0B0FD0 800B6570 80010010 */  lwz     r0, 0x10(r1)
/* 0B0FD4 800B6574 7C641B78 */  mr      r4, r3
/* 0B0FD8 800B6578 80C10028 */  lwz     r6, 0x28(r1)
/* 0B0FDC 800B657C 7C050050 */  subf    r0, r5, r0
/* 0B0FE0 800B6580 80A10018 */  lwz     r5, 0x18(r1)
/* 0B0FE4 800B6584 7CE000D0 */  neg     r7, r0
/* 0B0FE8 800B6588 81210024 */  lwz     r9, 0x24(r1)
/* 0B0FEC 800B658C 81010014 */  lwz     r8, 0x14(r1)
/* 0B0FF0 800B6590 7D462850 */  subf    r10, r6, r5
/* 0B0FF4 800B6594 30C7FFFF */  addic   r6, r7, -1
/* 0B0FF8 800B6598 80A1001C */  lwz     r5, 0x1c(r1)
/* 0B0FFC 800B659C 8001000C */  lwz     r0, 0xc(r1)
/* 0B1000 800B65A0 7D094050 */  subf    r8, r9, r8
/* 0B1004 800B65A4 7C050050 */  subf    r0, r5, r0
/* 0B1008 800B65A8 7D2A00D0 */  neg     r9, r10
/* 0B100C 800B65AC 7CA800D0 */  neg     r5, r8
/* 0B1010 800B65B0 7D290034 */  cntlzw  r9, r9
/* 0B1014 800B65B4 7CA80034 */  cntlzw  r8, r5
/* 0B1018 800B65B8 7F863910 */  subfe   r28, r6, r7
/* 0B101C 800B65BC 7CA000D0 */  neg     r5, r0
/* 0B1020 800B65C0 3005FFFF */  addic   r0, r5, -1
/* 0B1024 800B65C4 38E30000 */  addi    r7, r3, 0
/* 0B1028 800B65C8 553ED97E */  srwi    r30, r9, 5
/* 0B102C 800B65CC 551DD97E */  srwi    r29, r8, 5
/* 0B1030 800B65D0 7F602910 */  subfe   r27, r0, r5
/* 0B1034 800B65D4 38A1000A */  addi    r5, r1, 0xa
/* 0B1038 800B65D8 38C10009 */  addi    r6, r1, 9
/* 0B103C 800B65DC 4BFF34E5 */  bl      GXGetGPStatus
/* 0B1040 800B65E0 8881000A */  lbz     r4, 0xa(r1)
/* 0B1044 800B65E4 7FC6F378 */  mr      r6, r30
/* 0B1048 800B65E8 88A10009 */  lbz     r5, 9(r1)
/* 0B104C 800B65EC 38FD0000 */  addi    r7, r29, 0
/* 0B1050 800B65F0 391C0000 */  addi    r8, r28, 0
/* 0B1054 800B65F4 393B0000 */  addi    r9, r27, 0
/* 0B1058 800B65F8 4CC63182 */  crclr   6
/* 0B105C 800B65FC 387F00A4 */  addi    r3, r31, 0xa4
/* 0B1060 800B6600 4BFE7FF9 */  bl      OSReport
/* 0B1064 800B6604 281D0000 */  cmplwi  r29, 0
/* 0B1068 800B6608 4082001C */  bne     lbl_800B6624
/* 0B106C 800B660C 281C0000 */  cmplwi  r28, 0
/* 0B1070 800B6610 41820014 */  beq     lbl_800B6624
/* 0B1074 800B6614 387F00C0 */  addi    r3, r31, 0xc0
/* 0B1078 800B6618 4CC63182 */  crclr   6
/* 0B107C 800B661C 4BFE7FDD */  bl      OSReport
/* 0B1080 800B6620 480000B0 */  b       lbl_800B66D0
lbl_800B6624:
/* 0B1084 800B6624 281E0000 */  cmplwi  r30, 0
/* 0B1088 800B6628 40820024 */  bne     lbl_800B664C
/* 0B108C 800B662C 281D0000 */  cmplwi  r29, 0
/* 0B1090 800B6630 4182001C */  beq     lbl_800B664C
/* 0B1094 800B6634 281C0000 */  cmplwi  r28, 0
/* 0B1098 800B6638 41820014 */  beq     lbl_800B664C
/* 0B109C 800B663C 387F00E0 */  addi    r3, r31, 0xe0
/* 0B10A0 800B6640 4CC63182 */  crclr   6
/* 0B10A4 800B6644 4BFE7FB5 */  bl      OSReport
/* 0B10A8 800B6648 48000088 */  b       lbl_800B66D0
lbl_800B664C:
/* 0B10AC 800B664C 88610009 */  lbz     r3, 9(r1)
/* 0B10B0 800B6650 28030000 */  cmplwi  r3, 0
/* 0B10B4 800B6654 4082002C */  bne     lbl_800B6680
/* 0B10B8 800B6658 281E0000 */  cmplwi  r30, 0
/* 0B10BC 800B665C 41820024 */  beq     lbl_800B6680
/* 0B10C0 800B6660 281D0000 */  cmplwi  r29, 0
/* 0B10C4 800B6664 4182001C */  beq     lbl_800B6680
/* 0B10C8 800B6668 281C0000 */  cmplwi  r28, 0
/* 0B10CC 800B666C 41820014 */  beq     lbl_800B6680
/* 0B10D0 800B6670 387F0108 */  addi    r3, r31, 0x108
/* 0B10D4 800B6674 4CC63182 */  crclr   6
/* 0B10D8 800B6678 4BFE7F81 */  bl      OSReport
/* 0B10DC 800B667C 48000054 */  b       lbl_800B66D0
lbl_800B6680:
/* 0B10E0 800B6680 8801000A */  lbz     r0, 0xa(r1)
/* 0B10E4 800B6684 28000000 */  cmplwi  r0, 0
/* 0B10E8 800B6688 4182003C */  beq     lbl_800B66C4
/* 0B10EC 800B668C 28030000 */  cmplwi  r3, 0
/* 0B10F0 800B6690 41820034 */  beq     lbl_800B66C4
/* 0B10F4 800B6694 281E0000 */  cmplwi  r30, 0
/* 0B10F8 800B6698 4182002C */  beq     lbl_800B66C4
/* 0B10FC 800B669C 281D0000 */  cmplwi  r29, 0
/* 0B1100 800B66A0 41820024 */  beq     lbl_800B66C4
/* 0B1104 800B66A4 281C0000 */  cmplwi  r28, 0
/* 0B1108 800B66A8 4182001C */  beq     lbl_800B66C4
/* 0B110C 800B66AC 281B0000 */  cmplwi  r27, 0
/* 0B1110 800B66B0 41820014 */  beq     lbl_800B66C4
/* 0B1114 800B66B4 387F0130 */  addi    r3, r31, 0x130
/* 0B1118 800B66B8 4CC63182 */  crclr   6
/* 0B111C 800B66BC 4BFE7F3D */  bl      OSReport
/* 0B1120 800B66C0 48000010 */  b       lbl_800B66D0
lbl_800B66C4:
/* 0B1124 800B66C4 387F0160 */  addi    r3, r31, 0x160
/* 0B1128 800B66C8 4CC63182 */  crclr   6
/* 0B112C 800B66CC 4BFE7F2D */  bl      OSReport
lbl_800B66D0:
/* 0B1130 800B66D0 BB610034 */  lmw     r27, 0x34(r1)
/* 0B1134 800B66D4 8001004C */  lwz     r0, 0x4c(r1)
/* 0B1138 800B66D8 38210048 */  addi    r1, r1, 0x48
/* 0B113C 800B66DC 7C0803A6 */  mtlr    r0
/* 0B1140 800B66E0 4E800020 */  blr     

glabel DEMOReInit
/* 0B1144 800B66E4 7C0802A6 */  mflr    r0
/* 0B1148 800B66E8 3C800001 */  lis     r4, 1
/* 0B114C 800B66EC 90010004 */  stw     r0, 4(r1)
/* 0B1150 800B66F0 9421FF48 */  stwu    r1, -0xb8(r1)
/* 0B1154 800B66F4 93E100B4 */  stw     r31, 0xb4(r1)
/* 0B1158 800B66F8 93C100B0 */  stw     r30, 0xb0(r1)
/* 0B115C 800B66FC 93A100AC */  stw     r29, 0xac(r1)
/* 0B1160 800B6700 938100A8 */  stw     r28, 0xa8(r1)
/* 0B1164 800B6704 7C7C1B78 */  mr      r28, r3
/* 0B1168 800B6708 806D8740 */  lwz     r3, __OSCurrHeap@sda21(r13)
/* 0B116C 800B670C 4BFE67B9 */  bl      OSAllocFromHeap
/* 0B1170 800B6710 7C7F1B78 */  mr      r31, r3
/* 0B1174 800B6714 4BFF3679 */  bl      GXGetCPUFifo
/* 0B1178 800B6718 7C7E1B78 */  mr      r30, r3
/* 0B117C 800B671C 4BFF33F5 */  bl      GXGetFifoBase
/* 0B1180 800B6720 3BA30000 */  addi    r29, r3, 0
/* 0B1184 800B6724 387E0000 */  addi    r3, r30, 0
/* 0B1188 800B6728 4BFF33F1 */  bl      GXGetFifoSize
/* 0B118C 800B672C 7C7E1B78 */  mr      r30, r3
/* 0B1190 800B6730 4BFF461D */  bl      GXAbortFrame
/* 0B1194 800B6734 389F0000 */  addi    r4, r31, 0
/* 0B1198 800B6738 38610010 */  addi    r3, r1, 0x10
/* 0B119C 800B673C 3CA00001 */  lis     r5, 1
/* 0B11A0 800B6740 4BFF2FF9 */  bl      GXInitFifoBase
/* 0B11A4 800B6744 38610010 */  addi    r3, r1, 0x10
/* 0B11A8 800B6748 4BFF30D9 */  bl      GXSetCPUFifo
/* 0B11AC 800B674C 38610010 */  addi    r3, r1, 0x10
/* 0B11B0 800B6750 4BFF31F9 */  bl      GXSetGPFifo
/* 0B11B4 800B6754 7F83E378 */  mr      r3, r28
/* 0B11B8 800B6758 4BFFF6B9 */  bl      __DEMOInitRenderMode
/* 0B11BC 800B675C 387D0000 */  addi    r3, r29, 0
/* 0B11C0 800B6760 389E0000 */  addi    r4, r30, 0
/* 0B11C4 800B6764 4BFF1DD1 */  bl      GXInit
/* 0B11C8 800B6768 906D8D94 */  stw     r3, DefaultFifoObj@sda21(r13)
/* 0B11CC 800B676C 3C604330 */  lis     r3, 0x4330
/* 0B11D0 800B6770 80AD8D98 */  lwz     r5, rmode@sda21(r13)
/* 0B11D4 800B6774 C02284D0 */  lfs     f1, D_801361D0@sda21(r2)
/* 0B11D8 800B6778 A0850004 */  lhz     r4, 4(r5)
/* 0B11DC 800B677C A0050006 */  lhz     r0, 6(r5)
/* 0B11E0 800B6780 FC400890 */  fmr     f2, f1
/* 0B11E4 800B6784 908100A4 */  stw     r4, 0xa4(r1)
/* 0B11E8 800B6788 FCA00890 */  fmr     f5, f1
/* 0B11EC 800B678C C88284D8 */  lfd     f4, D_801361D8@sda21(r2)
/* 0B11F0 800B6790 9001009C */  stw     r0, 0x9c(r1)
/* 0B11F4 800B6794 C0C284D4 */  lfs     f6, D_801361D4@sda21(r2)
/* 0B11F8 800B6798 906100A0 */  stw     r3, 0xa0(r1)
/* 0B11FC 800B679C 90610098 */  stw     r3, 0x98(r1)
/* 0B1200 800B67A0 C86100A0 */  lfd     f3, 0xa0(r1)
/* 0B1204 800B67A4 C8010098 */  lfd     f0, 0x98(r1)
/* 0B1208 800B67A8 EC632028 */  fsubs   f3, f3, f4
/* 0B120C 800B67AC EC802028 */  fsubs   f4, f0, f4
/* 0B1210 800B67B0 4BFF8329 */  bl      GXSetViewport
/* 0B1214 800B67B4 80CD8D98 */  lwz     r6, rmode@sda21(r13)
/* 0B1218 800B67B8 38600000 */  li      r3, 0
/* 0B121C 800B67BC 38800000 */  li      r4, 0
/* 0B1220 800B67C0 A0A60004 */  lhz     r5, 4(r6)
/* 0B1224 800B67C4 A0C60006 */  lhz     r6, 6(r6)
/* 0B1228 800B67C8 4BFF8359 */  bl      GXSetScissor
/* 0B122C 800B67CC 808D8D98 */  lwz     r4, rmode@sda21(r13)
/* 0B1230 800B67D0 A0640006 */  lhz     r3, 6(r4)
/* 0B1234 800B67D4 A0840008 */  lhz     r4, 8(r4)
/* 0B1238 800B67D8 4BFF5361 */  bl      GXGetYScaleFactor
/* 0B123C 800B67DC 4BFF5595 */  bl      GXSetDispCopyYScale
/* 0B1240 800B67E0 80CD8D98 */  lwz     r6, rmode@sda21(r13)
/* 0B1244 800B67E4 547E043E */  clrlwi  r30, r3, 0x10
/* 0B1248 800B67E8 38600000 */  li      r3, 0
/* 0B124C 800B67EC A0A60004 */  lhz     r5, 4(r6)
/* 0B1250 800B67F0 38800000 */  li      r4, 0
/* 0B1254 800B67F4 A0C60006 */  lhz     r6, 6(r6)
/* 0B1258 800B67F8 4BFF5069 */  bl      GXSetDispCopySrc
/* 0B125C 800B67FC 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B1260 800B6800 7FC4F378 */  mr      r4, r30
/* 0B1264 800B6804 A0630004 */  lhz     r3, 4(r3)
/* 0B1268 800B6808 4BFF5151 */  bl      GXSetDispCopyDst
/* 0B126C 800B680C 80CD8D98 */  lwz     r6, rmode@sda21(r13)
/* 0B1270 800B6810 38A00001 */  li      r5, 1
/* 0B1274 800B6814 88660019 */  lbz     r3, 0x19(r6)
/* 0B1278 800B6818 3886001A */  addi    r4, r6, 0x1a
/* 0B127C 800B681C 38C60032 */  addi    r6, r6, 0x32
/* 0B1280 800B6820 4BFF5695 */  bl      GXSetCopyFilter
/* 0B1284 800B6824 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B1288 800B6828 88030019 */  lbz     r0, 0x19(r3)
/* 0B128C 800B682C 28000000 */  cmplwi  r0, 0
/* 0B1290 800B6830 41820014 */  beq     lbl_800B6844
/* 0B1294 800B6834 38600002 */  li      r3, 2
/* 0B1298 800B6838 38800000 */  li      r4, 0
/* 0B129C 800B683C 4BFF7D11 */  bl      GXSetPixelFmt
/* 0B12A0 800B6840 48000010 */  b       lbl_800B6850
lbl_800B6844:
/* 0B12A4 800B6844 38600000 */  li      r3, 0
/* 0B12A8 800B6848 38800000 */  li      r4, 0
/* 0B12AC 800B684C 4BFF7D01 */  bl      GXSetPixelFmt
lbl_800B6850:
/* 0B12B0 800B6850 806D8DAC */  lwz     r3, DemoCurrentBuffer@sda21(r13)
/* 0B12B4 800B6854 38800001 */  li      r4, 1
/* 0B12B8 800B6858 4BFF5879 */  bl      GXCopyDisp
/* 0B12BC 800B685C 38600000 */  li      r3, 0
/* 0B12C0 800B6860 4BFF585D */  bl      GXSetDispCopyGamma
/* 0B12C4 800B6864 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B12C8 800B6868 4BFF057D */  bl      VIConfigure
/* 0B12CC 800B686C 806D8DB4 */  lwz     r3, DemoFrameBuffer1@sda21(r13)
/* 0B12D0 800B6870 4BFF0ECD */  bl      VISetNextFrameBuffer
/* 0B12D4 800B6874 800D8DB0 */  lwz     r0, DemoFrameBuffer2@sda21(r13)
/* 0B12D8 800B6878 900D8DAC */  stw     r0, DemoCurrentBuffer@sda21(r13)
/* 0B12DC 800B687C 4BFF0D91 */  bl      VIFlush
/* 0B12E0 800B6880 4BFF009D */  bl      VIWaitForRetrace
/* 0B12E4 800B6884 806D8D98 */  lwz     r3, rmode@sda21(r13)
/* 0B12E8 800B6888 80030000 */  lwz     r0, 0(r3)
/* 0B12EC 800B688C 540007FF */  clrlwi. r0, r0, 0x1f
/* 0B12F0 800B6890 41820008 */  beq     lbl_800B6898
/* 0B12F4 800B6894 4BFF0089 */  bl      VIWaitForRetrace
lbl_800B6898:
/* 0B12F8 800B6898 806D8740 */  lwz     r3, __OSCurrHeap@sda21(r13)
/* 0B12FC 800B689C 7FE4FB78 */  mr      r4, r31
/* 0B1300 800B68A0 4BFE6721 */  bl      OSFreeToHeap
/* 0B1304 800B68A4 800100BC */  lwz     r0, 0xbc(r1)
/* 0B1308 800B68A8 83E100B4 */  lwz     r31, 0xb4(r1)
/* 0B130C 800B68AC 83C100B0 */  lwz     r30, 0xb0(r1)
/* 0B1310 800B68B0 83A100AC */  lwz     r29, 0xac(r1)
/* 0B1314 800B68B4 838100A8 */  lwz     r28, 0xa8(r1)
/* 0B1318 800B68B8 382100B8 */  addi    r1, r1, 0xb8
/* 0B131C 800B68BC 7C0803A6 */  mtlr    r0
/* 0B1320 800B68C0 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000EF718 800F2698 000B */
D_800F2698:
    .asciz "DEMOInit.c"
    .balign 4

/* 000EF724 800F26A4 001D */
D_800F26A4:
    .asciz "DEMOInit: invalid TV format\n"
    .balign 4

/* 000EF744 800F26C4 0035 */
D_800F26C4:
    .asciz "---------WARNING : HANG AT HIGH WATERMARK----------\n"
    .balign 4

/* 000EF77C 800F26FC 0010 */
D_800F26FC:
    .asciz "Halting program"
    .balign 4

/* 000EF78C 800F270C 002D */
D_800F270C:
    .asciz "---------WARNING : ABORTING FRAME----------\n"
    .balign 4

/* 000EF7BC 800F273C 001C */
D_800F273C:
    .asciz "GP status %d%d%d%d%d%d --> "
    .balign 4

/* 000EF7D8 800F2758 001E */
D_800F2758:
    .asciz "GP hang due to XF stall bug.\n"
    .balign 4

/* 000EF7F8 800F2778 0028 */
D_800F2778:
    .asciz "GP hang due to unterminated primitive.\n"
    .balign 4

/* 000EF820 800F27A0 0025 */
D_800F27A0:
    .asciz "GP hang due to illegal instruction.\n"
    .balign 4

/* 000EF848 800F27C8 0030 */
D_800F27C8:
    .asciz "GP appears to be not hung (waiting for input).\n"
    .balign 4

/* 000EF878 800F27F8 0019 */
D_800F27F8:
    .asciz "GP is in unknown state.\n"
    .balign 4

.section .bss, "wa"

.balign 4

/* 0012F748 801326C8 003C */
rmodeobj:
    .skip 60

.section .sdata, "wa"

.balign 8

/* 000F17A0 80135520 0001 */
DemoFirstFrame:
    .byte 0x01

.section .sbss, "wa"

.balign 8

/* 000F1CF0 80135A70 0004 */
DefaultFifo:
    .skip 4

/* 000F1CF4 80135A74 0004 */
DefaultFifoObj:
    .skip 4

/* 000F1CF8 80135A78 0004 */
rmode:
    .skip 4

/* 000F1CFC 80135A7C 0004 */
allocatedFrameBufferSize:
    .skip 4

/* 000F1D00 80135A80 0004 */
GPHangWorkaround:
    .skip 4

/* 000F1D04 80135A84 0004 */
FrameCount:
    .skip 4

/* 000F1D08 80135A88 0004 */
FrameMissThreshold:
    .skip 4

/* 000F1D0C 80135A8C 0004 */
glabel DemoCurrentBuffer
    .skip 4

/* 000F1D10 80135A90 0004 */
glabel DemoFrameBuffer2
    .skip 4

/* 000F1D14 80135A94 0004 */
glabel DemoFrameBuffer1
    .skip 4

.section .sdata2, "wa"

.balign 8

/* 000F1CD0 801361D0 0004 */
D_801361D0:
    .float 0.0

/* 000F1CD4 801361D4 0004 */
D_801361D4:
    .float 1.0

/* 000F1CD8 801361D8 0008 */
D_801361D8:
    .double 4503599627370496.0
