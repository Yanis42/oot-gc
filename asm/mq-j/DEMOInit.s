# DEMOInit.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B4B28 - 0x800B564C

glabel DEMOInit
/* 0B1B28 800B4B28 7C0802A6 */  mflr      r0
/* 0B1B2C 800B4B2C 90010004 */  stw       r0, 0x4(r1)
/* 0B1B30 800B4B30 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B1B34 800B4B34 93E10014 */  stw       r31, 0x14(r1)
/* 0B1B38 800B4B38 7C7F1B78 */  mr        r31, r3
/* 0B1B3C 800B4B3C 4BFE69B9 */  bl        OSInit
/* 0B1B40 800B4B40 4BFFD279 */  bl        DVDInit
/* 0B1B44 800B4B44 4BFF06B5 */  bl        VIInit
/* 0B1B48 800B4B48 48001365 */  bl        DEMOPadInit
/* 0B1B4C 800B4B4C 7FE3FB78 */  mr        r3, r31
/* 0B1B50 800B4B50 4800004D */  bl        __DEMOInitRenderMode
/* 0B1B54 800B4B54 4800019D */  bl        __DEMOInitMem
/* 0B1B58 800B4B58 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B1B5C 800B4B5C 4BFF1015 */  bl        VIConfigure
/* 0B1B60 800B4B60 806D8728 */  lwz       r3, __OSCurrHeap@sda21(r0)
/* 0B1B64 800B4B64 3C800004 */  lis       r4, 0x4
/* 0B1B68 800B4B68 4BFE78A5 */  bl        OSAllocFromHeap
/* 0B1B6C 800B4B6C 906D8D30 */  stw       r3, D_8018BCB0@sda21(r0)
/* 0B1B70 800B4B70 3C800004 */  lis       r4, 0x4
/* 0B1B74 800B4B74 806D8D30 */  lwz       r3, D_8018BCB0@sda21(r0)
/* 0B1B78 800B4B78 4BFF228D */  bl        GXInit
/* 0B1B7C 800B4B7C 906D8D34 */  stw       r3, D_8018BCB4@sda21(r0)
/* 0B1B80 800B4B80 48000241 */  bl        __DEMOInitGX
/* 0B1B84 800B4B84 48000359 */  bl        __DEMOInitVI
/* 0B1B88 800B4B88 8001001C */  lwz       r0, 0x1c(r1)
/* 0B1B8C 800B4B8C 83E10014 */  lwz       r31, 0x14(r1)
/* 0B1B90 800B4B90 38210018 */  addi      r1, r1, 0x18
/* 0B1B94 800B4B94 7C0803A6 */  mtlr      r0
/* 0B1B98 800B4B98 4E800020 */  blr

glabel __DEMOInitRenderMode
/* 0B1B9C 800B4B9C 7C0802A6 */  mflr      r0
/* 0B1BA0 800B4BA0 28030000 */  cmplwi    r3, 0x0
/* 0B1BA4 800B4BA4 90010004 */  stw       r0, 0x4(r1)
/* 0B1BA8 800B4BA8 3C808019 */  lis       r4, D_80188968@ha
/* 0B1BAC 800B4BAC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B1BB0 800B4BB0 93E10014 */  stw       r31, 0x14(r1)
/* 0B1BB4 800B4BB4 3BE48968 */  addi      r31, r4, D_80188968@l
/* 0B1BB8 800B4BB8 41820084 */  beq       lbl_800B4C3C
/* 0B1BBC 800B4BBC 80830000 */  lwz       r4, 0x0(r3)
/* 0B1BC0 800B4BC0 80030004 */  lwz       r0, 0x4(r3)
/* 0B1BC4 800B4BC4 909F0000 */  stw       r4, 0x0(r31)
/* 0B1BC8 800B4BC8 901F0004 */  stw       r0, 0x4(r31)
/* 0B1BCC 800B4BCC 80830008 */  lwz       r4, 0x8(r3)
/* 0B1BD0 800B4BD0 8003000C */  lwz       r0, 0xc(r3)
/* 0B1BD4 800B4BD4 909F0008 */  stw       r4, 0x8(r31)
/* 0B1BD8 800B4BD8 901F000C */  stw       r0, 0xc(r31)
/* 0B1BDC 800B4BDC 80830010 */  lwz       r4, 0x10(r3)
/* 0B1BE0 800B4BE0 80030014 */  lwz       r0, 0x14(r3)
/* 0B1BE4 800B4BE4 909F0010 */  stw       r4, 0x10(r31)
/* 0B1BE8 800B4BE8 901F0014 */  stw       r0, 0x14(r31)
/* 0B1BEC 800B4BEC 80830018 */  lwz       r4, 0x18(r3)
/* 0B1BF0 800B4BF0 8003001C */  lwz       r0, 0x1c(r3)
/* 0B1BF4 800B4BF4 909F0018 */  stw       r4, 0x18(r31)
/* 0B1BF8 800B4BF8 901F001C */  stw       r0, 0x1c(r31)
/* 0B1BFC 800B4BFC 80830020 */  lwz       r4, 0x20(r3)
/* 0B1C00 800B4C00 80030024 */  lwz       r0, 0x24(r3)
/* 0B1C04 800B4C04 909F0020 */  stw       r4, 0x20(r31)
/* 0B1C08 800B4C08 901F0024 */  stw       r0, 0x24(r31)
/* 0B1C0C 800B4C0C 80830028 */  lwz       r4, 0x28(r3)
/* 0B1C10 800B4C10 8003002C */  lwz       r0, 0x2c(r3)
/* 0B1C14 800B4C14 909F0028 */  stw       r4, 0x28(r31)
/* 0B1C18 800B4C18 901F002C */  stw       r0, 0x2c(r31)
/* 0B1C1C 800B4C1C 80830030 */  lwz       r4, 0x30(r3)
/* 0B1C20 800B4C20 80030034 */  lwz       r0, 0x34(r3)
/* 0B1C24 800B4C24 909F0030 */  stw       r4, 0x30(r31)
/* 0B1C28 800B4C28 901F0034 */  stw       r0, 0x34(r31)
/* 0B1C2C 800B4C2C 80030038 */  lwz       r0, 0x38(r3)
/* 0B1C30 800B4C30 901F0038 */  stw       r0, 0x38(r31)
/* 0B1C34 800B4C34 93ED8D38 */  stw       r31, D_8018BCB8@sda21(r0)
/* 0B1C38 800B4C38 480000A4 */  b         lbl_800B4CDC
lbl_800B4C3C:
/* 0B1C3C 800B4C3C 4BFF1B1D */  bl        VIGetTvFormat
/* 0B1C40 800B4C40 2C030002 */  cmpwi     r3, 0x2
/* 0B1C44 800B4C44 41820054 */  beq       lbl_800B4C98
/* 0B1C48 800B4C48 40800014 */  bge       lbl_800B4C5C
/* 0B1C4C 800B4C4C 2C030000 */  cmpwi     r3, 0x0
/* 0B1C50 800B4C50 41820018 */  beq       lbl_800B4C68
/* 0B1C54 800B4C54 40800024 */  bge       lbl_800B4C78
/* 0B1C58 800B4C58 48000050 */  b         lbl_800B4CA8
lbl_800B4C5C:
/* 0B1C5C 800B4C5C 2C030005 */  cmpwi     r3, 0x5
/* 0B1C60 800B4C60 41820028 */  beq       lbl_800B4C88
/* 0B1C64 800B4C64 48000044 */  b         lbl_800B4CA8
lbl_800B4C68:
/* 0B1C68 800B4C68 3C60800F */  lis       r3, GXNtsc480IntDf@ha
/* 0B1C6C 800B4C6C 380331C8 */  addi      r0, r3, GXNtsc480IntDf@l
/* 0B1C70 800B4C70 900D8D38 */  stw       r0, D_8018BCB8@sda21(r0)
/* 0B1C74 800B4C74 48000050 */  b         lbl_800B4CC4
lbl_800B4C78:
/* 0B1C78 800B4C78 3C60800F */  lis       r3, GXPal528IntDf@ha
/* 0B1C7C 800B4C7C 3803327C */  addi      r0, r3, GXPal528IntDf@l
/* 0B1C80 800B4C80 900D8D38 */  stw       r0, D_8018BCB8@sda21(r0)
/* 0B1C84 800B4C84 48000040 */  b         lbl_800B4CC4
lbl_800B4C88:
/* 0B1C88 800B4C88 3C60800F */  lis       r3, D_800F32B8@ha
/* 0B1C8C 800B4C8C 380332B8 */  addi      r0, r3, D_800F32B8@l
/* 0B1C90 800B4C90 900D8D38 */  stw       r0, D_8018BCB8@sda21(r0)
/* 0B1C94 800B4C94 48000030 */  b         lbl_800B4CC4
lbl_800B4C98:
/* 0B1C98 800B4C98 3C60800F */  lis       r3, GXMpal480IntDf@ha
/* 0B1C9C 800B4C9C 38033240 */  addi      r0, r3, GXMpal480IntDf@l
/* 0B1CA0 800B4CA0 900D8D38 */  stw       r0, D_8018BCB8@sda21(r0)
/* 0B1CA4 800B4CA4 48000020 */  b         lbl_800B4CC4
lbl_800B4CA8:
/* 0B1CA8 800B4CA8 3C60800F */  lis       r3, D_800F3A00@ha
/* 0B1CAC 800B4CAC 4CC63182 */  crclr     cr1eq
/* 0B1CB0 800B4CB0 3C80800F */  lis       r4, D_800F3A0C@ha
/* 0B1CB4 800B4CB4 38A43A0C */  addi      r5, r4, D_800F3A0C@l
/* 0B1CB8 800B4CB8 38633A00 */  addi      r3, r3, D_800F3A00@l
/* 0B1CBC 800B4CBC 388001CE */  li        r4, 0x1ce
/* 0B1CC0 800B4CC0 4BFE8F05 */  bl        OSPanic
lbl_800B4CC4:
/* 0B1CC4 800B4CC4 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B1CC8 800B4CC8 389F0000 */  addi      r4, r31, 0x0
/* 0B1CCC 800B4CCC 38A00000 */  li        r5, 0x0
/* 0B1CD0 800B4CD0 38C00010 */  li        r6, 0x10
/* 0B1CD4 800B4CD4 4BFF55A9 */  bl        GXAdjustForOverscan
/* 0B1CD8 800B4CD8 93ED8D38 */  stw       r31, D_8018BCB8@sda21(r0)
lbl_800B4CDC:
/* 0B1CDC 800B4CDC 8001001C */  lwz       r0, 0x1c(r1)
/* 0B1CE0 800B4CE0 83E10014 */  lwz       r31, 0x14(r1)
/* 0B1CE4 800B4CE4 38210018 */  addi      r1, r1, 0x18
/* 0B1CE8 800B4CE8 7C0803A6 */  mtlr      r0
/* 0B1CEC 800B4CEC 4E800020 */  blr

glabel __DEMOInitMem
/* 0B1CF0 800B4CF0 7C0802A6 */  mflr      r0
/* 0B1CF4 800B4CF4 90010004 */  stw       r0, 0x4(r1)
/* 0B1CF8 800B4CF8 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0B1CFC 800B4CFC 93E1000C */  stw       r31, 0xc(r1)
/* 0B1D00 800B4D00 93C10008 */  stw       r30, 0x8(r1)
/* 0B1D04 800B4D04 4BFE7CD5 */  bl        OSGetArenaLo
/* 0B1D08 800B4D08 7C7F1B78 */  mr        r31, r3
/* 0B1D0C 800B4D0C 4BFE7CC5 */  bl        OSGetArenaHi
/* 0B1D10 800B4D10 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B1D14 800B4D14 381F001F */  addi      r0, r31, 0x1f
/* 0B1D18 800B4D18 54000034 */  clrrwi    r0, r0, 5
/* 0B1D1C 800B4D1C A0830004 */  lhz       r4, 0x4(r3)
/* 0B1D20 800B4D20 A0630008 */  lhz       r3, 0x8(r3)
/* 0B1D24 800B4D24 3884000F */  addi      r4, r4, 0xf
/* 0B1D28 800B4D28 900D8D50 */  stw       r0, DemoFrameBuffer1@sda21(r0)
/* 0B1D2C 800B4D2C 54800436 */  rlwinm    r0, r4, 0, 16, 27
/* 0B1D30 800B4D30 7C6019D6 */  mullw     r3, r0, r3
/* 0B1D34 800B4D34 800D8D50 */  lwz       r0, DemoFrameBuffer1@sda21(r0)
/* 0B1D38 800B4D38 5463083C */  slwi      r3, r3, 1
/* 0B1D3C 800B4D3C 3863001F */  addi      r3, r3, 0x1f
/* 0B1D40 800B4D40 7C001A14 */  add       r0, r0, r3
/* 0B1D44 800B4D44 54000034 */  clrrwi    r0, r0, 5
/* 0B1D48 800B4D48 900D8D4C */  stw       r0, DemoFrameBuffer2@sda21(r0)
/* 0B1D4C 800B4D4C 808D8D4C */  lwz       r4, DemoFrameBuffer2@sda21(r0)
/* 0B1D50 800B4D50 7C041A14 */  add       r0, r4, r3
/* 0B1D54 800B4D54 908D8D48 */  stw       r4, DemoCurrentBuffer@sda21(r0)
/* 0B1D58 800B4D58 54030034 */  clrrwi    r3, r0, 5
/* 0B1D5C 800B4D5C 4BFE7C8D */  bl        OSSetArenaLo
/* 0B1D60 800B4D60 4BFE7C79 */  bl        OSGetArenaLo
/* 0B1D64 800B4D64 7C7F1B78 */  mr        r31, r3
/* 0B1D68 800B4D68 4BFE7C69 */  bl        OSGetArenaHi
/* 0B1D6C 800B4D6C 3BC30000 */  addi      r30, r3, 0x0
/* 0B1D70 800B4D70 387F0000 */  addi      r3, r31, 0x0
/* 0B1D74 800B4D74 389E0000 */  addi      r4, r30, 0x0
/* 0B1D78 800B4D78 38A00001 */  li        r5, 0x1
/* 0B1D7C 800B4D7C 4BFE7819 */  bl        OSInitAlloc
/* 0B1D80 800B4D80 7C7F1B78 */  mr        r31, r3
/* 0B1D84 800B4D84 4BFE7C65 */  bl        OSSetArenaLo
/* 0B1D88 800B4D88 381F001F */  addi      r0, r31, 0x1f
/* 0B1D8C 800B4D8C 57DF0034 */  clrrwi    r31, r30, 5
/* 0B1D90 800B4D90 54030034 */  clrrwi    r3, r0, 5
/* 0B1D94 800B4D94 389F0000 */  addi      r4, r31, 0x0
/* 0B1D98 800B4D98 4BFE786D */  bl        OSCreateHeap
/* 0B1D9C 800B4D9C 4BFE77E9 */  bl        OSSetCurrentHeap
/* 0B1DA0 800B4DA0 7FE3FB78 */  mr        r3, r31
/* 0B1DA4 800B4DA4 4BFE7C45 */  bl        OSSetArenaLo
/* 0B1DA8 800B4DA8 80010014 */  lwz       r0, 0x14(r1)
/* 0B1DAC 800B4DAC 83E1000C */  lwz       r31, 0xc(r1)
/* 0B1DB0 800B4DB0 83C10008 */  lwz       r30, 0x8(r1)
/* 0B1DB4 800B4DB4 38210010 */  addi      r1, r1, 0x10
/* 0B1DB8 800B4DB8 7C0803A6 */  mtlr      r0
/* 0B1DBC 800B4DBC 4E800020 */  blr

glabel __DEMOInitGX
/* 0B1DC0 800B4DC0 7C0802A6 */  mflr      r0
/* 0B1DC4 800B4DC4 3C604330 */  lis       r3, 0x4330
/* 0B1DC8 800B4DC8 90010004 */  stw       r0, 0x4(r1)
/* 0B1DCC 800B4DCC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B1DD0 800B4DD0 93E1001C */  stw       r31, 0x1c(r1)
/* 0B1DD4 800B4DD4 80AD8D38 */  lwz       r5, D_8018BCB8@sda21(r0)
/* 0B1DD8 800B4DD8 C02284C8 */  lfs       f1, D_8018C408@sda21(r0)
/* 0B1DDC 800B4DDC A0850004 */  lhz       r4, 0x4(r5)
/* 0B1DE0 800B4DE0 A0050006 */  lhz       r0, 0x6(r5)
/* 0B1DE4 800B4DE4 FC400890 */  fmr       f2, f1
/* 0B1DE8 800B4DE8 90810014 */  stw       r4, 0x14(r1)
/* 0B1DEC 800B4DEC FCA00890 */  fmr       f5, f1
/* 0B1DF0 800B4DF0 C88284D0 */  lfd       f4, D_8018C410@sda21(r0)
/* 0B1DF4 800B4DF4 9001000C */  stw       r0, 0xc(r1)
/* 0B1DF8 800B4DF8 C0C284CC */  lfs       f6, D_8018C40C@sda21(r0)
/* 0B1DFC 800B4DFC 90610010 */  stw       r3, 0x10(r1)
/* 0B1E00 800B4E00 90610008 */  stw       r3, 0x8(r1)
/* 0B1E04 800B4E04 C8610010 */  lfd       f3, 0x10(r1)
/* 0B1E08 800B4E08 C8010008 */  lfd       f0, 0x8(r1)
/* 0B1E0C 800B4E0C EC632028 */  fsubs     f3, f3, f4
/* 0B1E10 800B4E10 EC802028 */  fsubs     f4, f0, f4
/* 0B1E14 800B4E14 4BFF89C5 */  bl        GXSetViewport
/* 0B1E18 800B4E18 80CD8D38 */  lwz       r6, D_8018BCB8@sda21(r0)
/* 0B1E1C 800B4E1C 38600000 */  li        r3, 0x0
/* 0B1E20 800B4E20 38800000 */  li        r4, 0x0
/* 0B1E24 800B4E24 A0A60004 */  lhz       r5, 0x4(r6)
/* 0B1E28 800B4E28 A0C60006 */  lhz       r6, 0x6(r6)
/* 0B1E2C 800B4E2C 4BFF89D1 */  bl        GXSetScissor
/* 0B1E30 800B4E30 808D8D38 */  lwz       r4, D_8018BCB8@sda21(r0)
/* 0B1E34 800B4E34 A0640006 */  lhz       r3, 0x6(r4)
/* 0B1E38 800B4E38 A0840008 */  lhz       r4, 0x8(r4)
/* 0B1E3C 800B4E3C 4BFF58A1 */  bl        GXGetYScaleFactor
/* 0B1E40 800B4E40 4BFF5AD5 */  bl        GXSetDispCopyYScale
/* 0B1E44 800B4E44 80CD8D38 */  lwz       r6, D_8018BCB8@sda21(r0)
/* 0B1E48 800B4E48 547F043E */  clrlwi    r31, r3, 16
/* 0B1E4C 800B4E4C 38600000 */  li        r3, 0x0
/* 0B1E50 800B4E50 A0A60004 */  lhz       r5, 0x4(r6)
/* 0B1E54 800B4E54 38800000 */  li        r4, 0x0
/* 0B1E58 800B4E58 A0C60006 */  lhz       r6, 0x6(r6)
/* 0B1E5C 800B4E5C 4BFF5541 */  bl        GXSetDispCopySrc
/* 0B1E60 800B4E60 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B1E64 800B4E64 7FE4FB78 */  mr        r4, r31
/* 0B1E68 800B4E68 A0630004 */  lhz       r3, 0x4(r3)
/* 0B1E6C 800B4E6C 4BFF5651 */  bl        GXSetDispCopyDst
/* 0B1E70 800B4E70 80CD8D38 */  lwz       r6, D_8018BCB8@sda21(r0)
/* 0B1E74 800B4E74 38A00001 */  li        r5, 0x1
/* 0B1E78 800B4E78 88660019 */  lbz       r3, 0x19(r6)
/* 0B1E7C 800B4E7C 3886001A */  addi      r4, r6, 0x1a
/* 0B1E80 800B4E80 38C60032 */  addi      r6, r6, 0x32
/* 0B1E84 800B4E84 4BFF5BC1 */  bl        GXSetCopyFilter
/* 0B1E88 800B4E88 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B1E8C 800B4E8C 88030019 */  lbz       r0, 0x19(r3)
/* 0B1E90 800B4E90 28000000 */  cmplwi    r0, 0x0
/* 0B1E94 800B4E94 41820014 */  beq       lbl_800B4EA8
/* 0B1E98 800B4E98 38600002 */  li        r3, 0x2
/* 0B1E9C 800B4E9C 38800000 */  li        r4, 0x0
/* 0B1EA0 800B4EA0 4BFF8325 */  bl        GXSetPixelFmt
/* 0B1EA4 800B4EA4 48000010 */  b         lbl_800B4EB4
lbl_800B4EA8:
/* 0B1EA8 800B4EA8 38600000 */  li        r3, 0x0
/* 0B1EAC 800B4EAC 38800000 */  li        r4, 0x0
/* 0B1EB0 800B4EB0 4BFF8315 */  bl        GXSetPixelFmt
lbl_800B4EB4:
/* 0B1EB4 800B4EB4 806D8D48 */  lwz       r3, DemoCurrentBuffer@sda21(r0)
/* 0B1EB8 800B4EB8 38800001 */  li        r4, 0x1
/* 0B1EBC 800B4EBC 4BFF5DCD */  bl        GXCopyDisp
/* 0B1EC0 800B4EC0 38600000 */  li        r3, 0x0
/* 0B1EC4 800B4EC4 4BFF5DA9 */  bl        GXSetDispCopyGamma
/* 0B1EC8 800B4EC8 80010024 */  lwz       r0, 0x24(r1)
/* 0B1ECC 800B4ECC 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B1ED0 800B4ED0 38210020 */  addi      r1, r1, 0x20
/* 0B1ED4 800B4ED4 7C0803A6 */  mtlr      r0
/* 0B1ED8 800B4ED8 4E800020 */  blr

glabel __DEMOInitVI
/* 0B1EDC 800B4EDC 7C0802A6 */  mflr      r0
/* 0B1EE0 800B4EE0 90010004 */  stw       r0, 0x4(r1)
/* 0B1EE4 800B4EE4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B1EE8 800B4EE8 806D8D50 */  lwz       r3, DemoFrameBuffer1@sda21(r0)
/* 0B1EEC 800B4EEC 4BFF15DD */  bl        VISetNextFrameBuffer
/* 0B1EF0 800B4EF0 800D8D4C */  lwz       r0, DemoFrameBuffer2@sda21(r0)
/* 0B1EF4 800B4EF4 900D8D48 */  stw       r0, DemoCurrentBuffer@sda21(r0)
/* 0B1EF8 800B4EF8 4BFF14A1 */  bl        VIFlush
/* 0B1EFC 800B4EFC 4BFF07AD */  bl        VIWaitForRetrace
/* 0B1F00 800B4F00 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B1F04 800B4F04 80030000 */  lwz       r0, 0x0(r3)
/* 0B1F08 800B4F08 540007FF */  clrlwi.   r0, r0, 31
/* 0B1F0C 800B4F0C 41820008 */  beq       lbl_800B4F14
/* 0B1F10 800B4F10 4BFF0799 */  bl        VIWaitForRetrace
lbl_800B4F14:
/* 0B1F14 800B4F14 8001000C */  lwz       r0, 0xc(r1)
/* 0B1F18 800B4F18 38210008 */  addi      r1, r1, 0x8
/* 0B1F1C 800B4F1C 7C0803A6 */  mtlr      r0
/* 0B1F20 800B4F20 4E800020 */  blr

glabel DEMOBeforeRender
/* 0B1F24 800B4F24 7C0802A6 */  mflr      r0
/* 0B1F28 800B4F28 90010004 */  stw       r0, 0x4(r1)
/* 0B1F2C 800B4F2C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B1F30 800B4F30 93E1001C */  stw       r31, 0x1c(r1)
/* 0B1F34 800B4F34 800D8D3C */  lwz       r0, D_8018BCBC@sda21(r0)
/* 0B1F38 800B4F38 2C000000 */  cmpwi     r0, 0x0
/* 0B1F3C 800B4F3C 41820014 */  beq       lbl_800B4F50
/* 0B1F40 800B4F40 3C600001 */  lis       r3, 0x1
/* 0B1F44 800B4F44 3863FEEB */  subi      r3, r3, 0x115
/* 0B1F48 800B4F48 4BFF4A31 */  bl        GXSetDrawSync
/* 0B1F4C 800B4F4C 4BFF9465 */  bl        GXClearGPMetric
lbl_800B4F50:
/* 0B1F50 800B4F50 83ED8D38 */  lwz       r31, D_8018BCB8@sda21(r0)
/* 0B1F54 800B4F54 881F0018 */  lbz       r0, 0x18(r31)
/* 0B1F58 800B4F58 28000000 */  cmplwi    r0, 0x0
/* 0B1F5C 800B4F5C 41820050 */  beq       lbl_800B4FAC
/* 0B1F60 800B4F60 4BFF16B9 */  bl        VIGetNextField
/* 0B1F64 800B4F64 A0BF0004 */  lhz       r5, 0x4(r31)
/* 0B1F68 800B4F68 3C804330 */  lis       r4, 0x4330
/* 0B1F6C 800B4F6C A01F0006 */  lhz       r0, 0x6(r31)
/* 0B1F70 800B4F70 90A10014 */  stw       r5, 0x14(r1)
/* 0B1F74 800B4F74 C02284C8 */  lfs       f1, D_8018C408@sda21(r0)
/* 0B1F78 800B4F78 9001000C */  stw       r0, 0xc(r1)
/* 0B1F7C 800B4F7C C88284D0 */  lfd       f4, D_8018C410@sda21(r0)
/* 0B1F80 800B4F80 FC400890 */  fmr       f2, f1
/* 0B1F84 800B4F84 90810010 */  stw       r4, 0x10(r1)
/* 0B1F88 800B4F88 FCA00890 */  fmr       f5, f1
/* 0B1F8C 800B4F8C C0C284CC */  lfs       f6, D_8018C40C@sda21(r0)
/* 0B1F90 800B4F90 90810008 */  stw       r4, 0x8(r1)
/* 0B1F94 800B4F94 C8610010 */  lfd       f3, 0x10(r1)
/* 0B1F98 800B4F98 C8010008 */  lfd       f0, 0x8(r1)
/* 0B1F9C 800B4F9C EC632028 */  fsubs     f3, f3, f4
/* 0B1FA0 800B4FA0 EC802028 */  fsubs     f4, f0, f4
/* 0B1FA4 800B4FA4 4BFF8731 */  bl        GXSetViewportJitter
/* 0B1FA8 800B4FA8 48000048 */  b         lbl_800B4FF0
lbl_800B4FAC:
/* 0B1FAC 800B4FAC A09F0004 */  lhz       r4, 0x4(r31)
/* 0B1FB0 800B4FB0 3C604330 */  lis       r3, 0x4330
/* 0B1FB4 800B4FB4 A01F0006 */  lhz       r0, 0x6(r31)
/* 0B1FB8 800B4FB8 9081000C */  stw       r4, 0xc(r1)
/* 0B1FBC 800B4FBC C02284C8 */  lfs       f1, D_8018C408@sda21(r0)
/* 0B1FC0 800B4FC0 90010014 */  stw       r0, 0x14(r1)
/* 0B1FC4 800B4FC4 C88284D0 */  lfd       f4, D_8018C410@sda21(r0)
/* 0B1FC8 800B4FC8 FC400890 */  fmr       f2, f1
/* 0B1FCC 800B4FCC 90610008 */  stw       r3, 0x8(r1)
/* 0B1FD0 800B4FD0 FCA00890 */  fmr       f5, f1
/* 0B1FD4 800B4FD4 C0C284CC */  lfs       f6, D_8018C40C@sda21(r0)
/* 0B1FD8 800B4FD8 90610010 */  stw       r3, 0x10(r1)
/* 0B1FDC 800B4FDC C8610008 */  lfd       f3, 0x8(r1)
/* 0B1FE0 800B4FE0 C8010010 */  lfd       f0, 0x10(r1)
/* 0B1FE4 800B4FE4 EC632028 */  fsubs     f3, f3, f4
/* 0B1FE8 800B4FE8 EC802028 */  fsubs     f4, f0, f4
/* 0B1FEC 800B4FEC 4BFF87ED */  bl        GXSetViewport
lbl_800B4FF0:
/* 0B1FF0 800B4FF0 4BFF44ED */  bl        GXInvalidateVtxCache
/* 0B1FF4 800B4FF4 4BFF6C01 */  bl        GXInvalidateTexAll
/* 0B1FF8 800B4FF8 80010024 */  lwz       r0, 0x24(r1)
/* 0B1FFC 800B4FFC 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B2000 800B5000 38210020 */  addi      r1, r1, 0x20
/* 0B2004 800B5004 7C0803A6 */  mtlr      r0
/* 0B2008 800B5008 4E800020 */  blr

glabel DEMODoneRender
/* 0B200C 800B500C 7C0802A6 */  mflr      r0
/* 0B2010 800B5010 90010004 */  stw       r0, 0x4(r1)
/* 0B2014 800B5014 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B2018 800B5018 800D8D3C */  lwz       r0, D_8018BCBC@sda21(r0)
/* 0B201C 800B501C 2C000000 */  cmpwi     r0, 0x0
/* 0B2020 800B5020 4182000C */  beq       lbl_800B502C
/* 0B2024 800B5024 480000DD */  bl        __NoHangDoneRender
/* 0B2028 800B5028 48000058 */  b         lbl_800B5080
lbl_800B502C:
/* 0B202C 800B502C 880D8D68 */  lbz       r0, DemoStatEnable@sda21(r0)
/* 0B2030 800B5030 28000000 */  cmplwi    r0, 0x0
/* 0B2034 800B5034 41820020 */  beq       lbl_800B5054
/* 0B2038 800B5038 4BFF4A9D */  bl        fn_800A9AD4
/* 0B203C 800B503C 38600001 */  li        r3, 0x1
/* 0B2040 800B5040 480012D5 */  bl        DEMOUpdateStats
/* 0B2044 800B5044 48001329 */  bl        DEMOPrintStats
/* 0B2048 800B5048 4BFF4A8D */  bl        fn_800A9AD4
/* 0B204C 800B504C 38600000 */  li        r3, 0x0
/* 0B2050 800B5050 480012C5 */  bl        DEMOUpdateStats
lbl_800B5054:
/* 0B2054 800B5054 38600001 */  li        r3, 0x1
/* 0B2058 800B5058 38800003 */  li        r4, 0x3
/* 0B205C 800B505C 38A00001 */  li        r5, 0x1
/* 0B2060 800B5060 4BFF80F9 */  bl        GXSetZMode
/* 0B2064 800B5064 38600001 */  li        r3, 0x1
/* 0B2068 800B5068 4BFF8099 */  bl        fn_800AD100
/* 0B206C 800B506C 806D8D48 */  lwz       r3, DemoCurrentBuffer@sda21(r0)
/* 0B2070 800B5070 38800001 */  li        r4, 0x1
/* 0B2074 800B5074 4BFF5C15 */  bl        GXCopyDisp
/* 0B2078 800B5078 4BFF4A5D */  bl        fn_800A9AD4
/* 0B207C 800B507C 48000015 */  bl        DEMOSwapBuffers
lbl_800B5080:
/* 0B2080 800B5080 8001000C */  lwz       r0, 0xc(r1)
/* 0B2084 800B5084 38210008 */  addi      r1, r1, 0x8
/* 0B2088 800B5088 7C0803A6 */  mtlr      r0
/* 0B208C 800B508C 4E800020 */  blr

glabel DEMOSwapBuffers
/* 0B2090 800B5090 7C0802A6 */  mflr      r0
/* 0B2094 800B5094 90010004 */  stw       r0, 0x4(r1)
/* 0B2098 800B5098 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B209C 800B509C 806D8D48 */  lwz       r3, DemoCurrentBuffer@sda21(r0)
/* 0B20A0 800B50A0 4BFF1429 */  bl        VISetNextFrameBuffer
/* 0B20A4 800B50A4 880D8828 */  lbz       r0, D_8018B7A8@sda21(r0)
/* 0B20A8 800B50A8 28000000 */  cmplwi    r0, 0x0
/* 0B20AC 800B50AC 41820014 */  beq       lbl_800B50C0
/* 0B20B0 800B50B0 38600000 */  li        r3, 0x0
/* 0B20B4 800B50B4 4BFF1481 */  bl        fn_800A6534
/* 0B20B8 800B50B8 38000000 */  li        r0, 0x0
/* 0B20BC 800B50BC 980D8828 */  stb       r0, D_8018B7A8@sda21(r0)
lbl_800B50C0:
/* 0B20C0 800B50C0 4BFF12D9 */  bl        VIFlush
/* 0B20C4 800B50C4 4BFF05E5 */  bl        VIWaitForRetrace
/* 0B20C8 800B50C8 800D8D48 */  lwz       r0, DemoCurrentBuffer@sda21(r0)
/* 0B20CC 800B50CC 806D8D50 */  lwz       r3, DemoFrameBuffer1@sda21(r0)
/* 0B20D0 800B50D0 7C001840 */  cmplw     r0, r3
/* 0B20D4 800B50D4 40820010 */  bne       lbl_800B50E4
/* 0B20D8 800B50D8 800D8D4C */  lwz       r0, DemoFrameBuffer2@sda21(r0)
/* 0B20DC 800B50DC 900D8D48 */  stw       r0, DemoCurrentBuffer@sda21(r0)
/* 0B20E0 800B50E0 48000008 */  b         lbl_800B50E8
lbl_800B50E4:
/* 0B20E4 800B50E4 906D8D48 */  stw       r3, DemoCurrentBuffer@sda21(r0)
lbl_800B50E8:
/* 0B20E8 800B50E8 8001000C */  lwz       r0, 0xc(r1)
/* 0B20EC 800B50EC 38210008 */  addi      r1, r1, 0x8
/* 0B20F0 800B50F0 7C0803A6 */  mtlr      r0
/* 0B20F4 800B50F4 4E800020 */  blr

glabel DEMOGetRenderModeObj
/* 0B20F8 800B50F8 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B20FC 800B50FC 4E800020 */  blr

glabel __NoHangDoneRender
/* 0B2100 800B5100 7C0802A6 */  mflr      r0
/* 0B2104 800B5104 38800001 */  li        r4, 0x1
/* 0B2108 800B5108 90010004 */  stw       r0, 0x4(r1)
/* 0B210C 800B510C 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0B2110 800B5110 93E1000C */  stw       r31, 0xc(r1)
/* 0B2114 800B5114 93C10008 */  stw       r30, 0x8(r1)
/* 0B2118 800B5118 3BC00000 */  li        r30, 0x0
/* 0B211C 800B511C 806D8D48 */  lwz       r3, DemoCurrentBuffer@sda21(r0)
/* 0B2120 800B5120 4BFF5B69 */  bl        GXCopyDisp
/* 0B2124 800B5124 3C600001 */  lis       r3, 0x1
/* 0B2128 800B5128 3863B00B */  subi      r3, r3, 0x4ff5
/* 0B212C 800B512C 4BFF484D */  bl        GXSetDrawSync
/* 0B2130 800B5130 38000000 */  li        r0, 0x0
/* 0B2134 800B5134 3C60800F */  lis       r3, D_800F3A74@ha
/* 0B2138 800B5138 900D8D40 */  stw       r0, D_8018BCC0@sda21(r0)
/* 0B213C 800B513C 3BE33A74 */  addi      r31, r3, D_800F3A74@l
/* 0B2140 800B5140 48000038 */  b         lbl_800B5178
lbl_800B5144:
/* 0B2144 800B5144 806D8D40 */  lwz       r3, D_8018BCC0@sda21(r0)
/* 0B2148 800B5148 800D8D44 */  lwz       r0, D_8018BCC4@sda21(r0)
/* 0B214C 800B514C 7C030040 */  cmplw     r3, r0
/* 0B2150 800B5150 41800028 */  blt       lbl_800B5178
/* 0B2154 800B5154 387F0000 */  addi      r3, r31, 0x0
/* 0B2158 800B5158 4CC63182 */  crclr     cr1eq
/* 0B215C 800B515C 4BFE89E9 */  bl        OSReport
/* 0B2160 800B5160 3BC00001 */  li        r30, 0x1
/* 0B2164 800B5164 4800014D */  bl        __DEMODiagnoseHang
/* 0B2168 800B5168 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B216C 800B516C 48000301 */  bl        DEMOReInit
/* 0B2170 800B5170 38600001 */  li        r3, 0x1
/* 0B2174 800B5174 48000081 */  bl        DEMOSetGPHangMetric
lbl_800B5178:
/* 0B2178 800B5178 4BFF48B9 */  bl        fn_800A9A30
/* 0B217C 800B517C 5460043E */  clrlwi    r0, r3, 16
/* 0B2180 800B5180 2800B00B */  cmplwi    r0, 0xb00b
/* 0B2184 800B5184 4182000C */  beq       lbl_800B5190
/* 0B2188 800B5188 2C1E0000 */  cmpwi     r30, 0x0
/* 0B218C 800B518C 4182FFB8 */  beq       lbl_800B5144
lbl_800B5190:
/* 0B2190 800B5190 806D8D48 */  lwz       r3, DemoCurrentBuffer@sda21(r0)
/* 0B2194 800B5194 4BFF1335 */  bl        VISetNextFrameBuffer
/* 0B2198 800B5198 880D8828 */  lbz       r0, D_8018B7A8@sda21(r0)
/* 0B219C 800B519C 28000000 */  cmplwi    r0, 0x0
/* 0B21A0 800B51A0 41820014 */  beq       lbl_800B51B4
/* 0B21A4 800B51A4 38600000 */  li        r3, 0x0
/* 0B21A8 800B51A8 4BFF138D */  bl        fn_800A6534
/* 0B21AC 800B51AC 38000000 */  li        r0, 0x0
/* 0B21B0 800B51B0 980D8828 */  stb       r0, D_8018B7A8@sda21(r0)
lbl_800B51B4:
/* 0B21B4 800B51B4 4BFF11E5 */  bl        VIFlush
/* 0B21B8 800B51B8 4BFF04F1 */  bl        VIWaitForRetrace
/* 0B21BC 800B51BC 800D8D48 */  lwz       r0, DemoCurrentBuffer@sda21(r0)
/* 0B21C0 800B51C0 806D8D50 */  lwz       r3, DemoFrameBuffer1@sda21(r0)
/* 0B21C4 800B51C4 7C001840 */  cmplw     r0, r3
/* 0B21C8 800B51C8 40820010 */  bne       lbl_800B51D8
/* 0B21CC 800B51CC 800D8D4C */  lwz       r0, DemoFrameBuffer2@sda21(r0)
/* 0B21D0 800B51D0 900D8D48 */  stw       r0, DemoCurrentBuffer@sda21(r0)
/* 0B21D4 800B51D4 48000008 */  b         lbl_800B51DC
lbl_800B51D8:
/* 0B21D8 800B51D8 906D8D48 */  stw       r3, DemoCurrentBuffer@sda21(r0)
lbl_800B51DC:
/* 0B21DC 800B51DC 80010014 */  lwz       r0, 0x14(r1)
/* 0B21E0 800B51E0 83E1000C */  lwz       r31, 0xc(r1)
/* 0B21E4 800B51E4 83C10008 */  lwz       r30, 0x8(r1)
/* 0B21E8 800B51E8 38210010 */  addi      r1, r1, 0x10
/* 0B21EC 800B51EC 7C0803A6 */  mtlr      r0
/* 0B21F0 800B51F0 4E800020 */  blr

glabel DEMOSetGPHangMetric
/* 0B21F4 800B51F4 7C0802A6 */  mflr      r0
/* 0B21F8 800B51F8 90010004 */  stw       r0, 0x4(r1)
/* 0B21FC 800B51FC 5460063F */  clrlwi.   r0, r3, 24
/* 0B2200 800B5200 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B2204 800B5204 41820060 */  beq       lbl_800B5264
/* 0B2208 800B5208 38600023 */  li        r3, 0x23
/* 0B220C 800B520C 38800016 */  li        r4, 0x16
/* 0B2210 800B5210 4BFF87B1 */  bl        GXSetGPMetric
/* 0B2214 800B5214 38A00061 */  li        r5, 0x61
/* 0B2218 800B5218 3CC0CC01 */  lis       r6, 0xcc01
/* 0B221C 800B521C 3C602403 */  lis       r3, 0x2403
/* 0B2220 800B5220 98A68000 */  stb       r5, -0x8000(r6)
/* 0B2224 800B5224 3803C004 */  subi      r0, r3, 0x3ffc
/* 0B2228 800B5228 90068000 */  stw       r0, -0x8000(r6)
/* 0B222C 800B522C 3C802300 */  lis       r4, 0x2300
/* 0B2230 800B5230 3C600008 */  lis       r3, 0x8
/* 0B2234 800B5234 98A68000 */  stb       r5, -0x8000(r6)
/* 0B2238 800B5238 38840020 */  addi      r4, r4, 0x20
/* 0B223C 800B523C 38000010 */  li        r0, 0x10
/* 0B2240 800B5240 90868000 */  stw       r4, -0x8000(r6)
/* 0B2244 800B5244 38A00000 */  li        r5, 0x0
/* 0B2248 800B5248 38801006 */  li        r4, 0x1006
/* 0B224C 800B524C 98068000 */  stb       r0, -0x8000(r6)
/* 0B2250 800B5250 38034400 */  addi      r0, r3, 0x4400
/* 0B2254 800B5254 B0A68000 */  sth       r5, -0x8000(r6)
/* 0B2258 800B5258 B0868000 */  sth       r4, -0x8000(r6)
/* 0B225C 800B525C 90068000 */  stw       r0, -0x8000(r6)
/* 0B2260 800B5260 48000040 */  b         lbl_800B52A0
lbl_800B5264:
/* 0B2264 800B5264 38E00061 */  li        r7, 0x61
/* 0B2268 800B5268 3CC0CC01 */  lis       r6, 0xcc01
/* 0B226C 800B526C 98E68000 */  stb       r7, -0x8000(r6)
/* 0B2270 800B5270 3C002400 */  lis       r0, 0x2400
/* 0B2274 800B5274 3CA02300 */  lis       r5, 0x2300
/* 0B2278 800B5278 90068000 */  stw       r0, -0x8000(r6)
/* 0B227C 800B527C 38800010 */  li        r4, 0x10
/* 0B2280 800B5280 38600000 */  li        r3, 0x0
/* 0B2284 800B5284 98E68000 */  stb       r7, -0x8000(r6)
/* 0B2288 800B5288 38001006 */  li        r0, 0x1006
/* 0B228C 800B528C 90A68000 */  stw       r5, -0x8000(r6)
/* 0B2290 800B5290 98868000 */  stb       r4, -0x8000(r6)
/* 0B2294 800B5294 B0668000 */  sth       r3, -0x8000(r6)
/* 0B2298 800B5298 B0068000 */  sth       r0, -0x8000(r6)
/* 0B229C 800B529C 90668000 */  stw       r3, -0x8000(r6)
lbl_800B52A0:
/* 0B22A0 800B52A0 8001000C */  lwz       r0, 0xc(r1)
/* 0B22A4 800B52A4 38210008 */  addi      r1, r1, 0x8
/* 0B22A8 800B52A8 7C0803A6 */  mtlr      r0
/* 0B22AC 800B52AC 4E800020 */  blr

glabel __DEMODiagnoseHang
/* 0B22B0 800B52B0 7C0802A6 */  mflr      r0
/* 0B22B4 800B52B4 3C60800F */  lis       r3, D_800F3A00@ha
/* 0B22B8 800B52B8 90010004 */  stw       r0, 0x4(r1)
/* 0B22BC 800B52BC 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0B22C0 800B52C0 BF610034 */  stmw      r27, 0x34(r1)
/* 0B22C4 800B52C4 3BE33A00 */  addi      r31, r3, D_800F3A00@l
/* 0B22C8 800B52C8 38610024 */  addi      r3, r1, 0x24
/* 0B22CC 800B52CC 38810028 */  addi      r4, r1, 0x28
/* 0B22D0 800B52D0 38A1001C */  addi      r5, r1, 0x1c
/* 0B22D4 800B52D4 38C10020 */  addi      r6, r1, 0x20
/* 0B22D8 800B52D8 4BFF965D */  bl        GXReadXfRasMetric
/* 0B22DC 800B52DC 38610014 */  addi      r3, r1, 0x14
/* 0B22E0 800B52E0 38810018 */  addi      r4, r1, 0x18
/* 0B22E4 800B52E4 38A1000C */  addi      r5, r1, 0xc
/* 0B22E8 800B52E8 38C10010 */  addi      r6, r1, 0x10
/* 0B22EC 800B52EC 4BFF9649 */  bl        GXReadXfRasMetric
/* 0B22F0 800B52F0 80A10020 */  lwz       r5, 0x20(r1)
/* 0B22F4 800B52F4 38610008 */  addi      r3, r1, 0x8
/* 0B22F8 800B52F8 80010010 */  lwz       r0, 0x10(r1)
/* 0B22FC 800B52FC 7C641B78 */  mr        r4, r3
/* 0B2300 800B5300 80C10028 */  lwz       r6, 0x28(r1)
/* 0B2304 800B5304 7C050050 */  subf      r0, r5, r0
/* 0B2308 800B5308 80A10018 */  lwz       r5, 0x18(r1)
/* 0B230C 800B530C 7CE000D0 */  neg       r7, r0
/* 0B2310 800B5310 81210024 */  lwz       r9, 0x24(r1)
/* 0B2314 800B5314 81010014 */  lwz       r8, 0x14(r1)
/* 0B2318 800B5318 7D462850 */  subf      r10, r6, r5
/* 0B231C 800B531C 30C7FFFF */  subic     r6, r7, 0x1
/* 0B2320 800B5320 80A1001C */  lwz       r5, 0x1c(r1)
/* 0B2324 800B5324 8001000C */  lwz       r0, 0xc(r1)
/* 0B2328 800B5328 7D094050 */  subf      r8, r9, r8
/* 0B232C 800B532C 7C050050 */  subf      r0, r5, r0
/* 0B2330 800B5330 7D2A00D0 */  neg       r9, r10
/* 0B2334 800B5334 7CA800D0 */  neg       r5, r8
/* 0B2338 800B5338 7D290034 */  cntlzw    r9, r9
/* 0B233C 800B533C 7CA80034 */  cntlzw    r8, r5
/* 0B2340 800B5340 7F863910 */  subfe     r28, r6, r7
/* 0B2344 800B5344 7CA000D0 */  neg       r5, r0
/* 0B2348 800B5348 3005FFFF */  subic     r0, r5, 0x1
/* 0B234C 800B534C 38E30000 */  addi      r7, r3, 0x0
/* 0B2350 800B5350 553ED97E */  srwi      r30, r9, 5
/* 0B2354 800B5354 551DD97E */  srwi      r29, r8, 5
/* 0B2358 800B5358 7F602910 */  subfe     r27, r0, r5
/* 0B235C 800B535C 38A1000A */  addi      r5, r1, 0xa
/* 0B2360 800B5360 38C10009 */  addi      r6, r1, 0x9
/* 0B2364 800B5364 4BFF3075 */  bl        fn_800A83D8
/* 0B2368 800B5368 8881000A */  lbz       r4, 0xa(r1)
/* 0B236C 800B536C 7FC6F378 */  mr        r6, r30
/* 0B2370 800B5370 88A10009 */  lbz       r5, 0x9(r1)
/* 0B2374 800B5374 38FD0000 */  addi      r7, r29, 0x0
/* 0B2378 800B5378 391C0000 */  addi      r8, r28, 0x0
/* 0B237C 800B537C 393B0000 */  addi      r9, r27, 0x0
/* 0B2380 800B5380 4CC63182 */  crclr     cr1eq
/* 0B2384 800B5384 387F00A4 */  addi      r3, r31, 0xa4
/* 0B2388 800B5388 4BFE87BD */  bl        OSReport
/* 0B238C 800B538C 281D0000 */  cmplwi    r29, 0x0
/* 0B2390 800B5390 4082001C */  bne       lbl_800B53AC
/* 0B2394 800B5394 281C0000 */  cmplwi    r28, 0x0
/* 0B2398 800B5398 41820014 */  beq       lbl_800B53AC
/* 0B239C 800B539C 387F00C0 */  addi      r3, r31, 0xc0
/* 0B23A0 800B53A0 4CC63182 */  crclr     cr1eq
/* 0B23A4 800B53A4 4BFE87A1 */  bl        OSReport
/* 0B23A8 800B53A8 480000B0 */  b         lbl_800B5458
lbl_800B53AC:
/* 0B23AC 800B53AC 281E0000 */  cmplwi    r30, 0x0
/* 0B23B0 800B53B0 40820024 */  bne       lbl_800B53D4
/* 0B23B4 800B53B4 281D0000 */  cmplwi    r29, 0x0
/* 0B23B8 800B53B8 4182001C */  beq       lbl_800B53D4
/* 0B23BC 800B53BC 281C0000 */  cmplwi    r28, 0x0
/* 0B23C0 800B53C0 41820014 */  beq       lbl_800B53D4
/* 0B23C4 800B53C4 387F00E0 */  addi      r3, r31, 0xe0
/* 0B23C8 800B53C8 4CC63182 */  crclr     cr1eq
/* 0B23CC 800B53CC 4BFE8779 */  bl        OSReport
/* 0B23D0 800B53D0 48000088 */  b         lbl_800B5458
lbl_800B53D4:
/* 0B23D4 800B53D4 88610009 */  lbz       r3, 0x9(r1)
/* 0B23D8 800B53D8 28030000 */  cmplwi    r3, 0x0
/* 0B23DC 800B53DC 4082002C */  bne       lbl_800B5408
/* 0B23E0 800B53E0 281E0000 */  cmplwi    r30, 0x0
/* 0B23E4 800B53E4 41820024 */  beq       lbl_800B5408
/* 0B23E8 800B53E8 281D0000 */  cmplwi    r29, 0x0
/* 0B23EC 800B53EC 4182001C */  beq       lbl_800B5408
/* 0B23F0 800B53F0 281C0000 */  cmplwi    r28, 0x0
/* 0B23F4 800B53F4 41820014 */  beq       lbl_800B5408
/* 0B23F8 800B53F8 387F0108 */  addi      r3, r31, 0x108
/* 0B23FC 800B53FC 4CC63182 */  crclr     cr1eq
/* 0B2400 800B5400 4BFE8745 */  bl        OSReport
/* 0B2404 800B5404 48000054 */  b         lbl_800B5458
lbl_800B5408:
/* 0B2408 800B5408 8801000A */  lbz       r0, 0xa(r1)
/* 0B240C 800B540C 28000000 */  cmplwi    r0, 0x0
/* 0B2410 800B5410 4182003C */  beq       lbl_800B544C
/* 0B2414 800B5414 28030000 */  cmplwi    r3, 0x0
/* 0B2418 800B5418 41820034 */  beq       lbl_800B544C
/* 0B241C 800B541C 281E0000 */  cmplwi    r30, 0x0
/* 0B2420 800B5420 4182002C */  beq       lbl_800B544C
/* 0B2424 800B5424 281D0000 */  cmplwi    r29, 0x0
/* 0B2428 800B5428 41820024 */  beq       lbl_800B544C
/* 0B242C 800B542C 281C0000 */  cmplwi    r28, 0x0
/* 0B2430 800B5430 4182001C */  beq       lbl_800B544C
/* 0B2434 800B5434 281B0000 */  cmplwi    r27, 0x0
/* 0B2438 800B5438 41820014 */  beq       lbl_800B544C
/* 0B243C 800B543C 387F0130 */  addi      r3, r31, 0x130
/* 0B2440 800B5440 4CC63182 */  crclr     cr1eq
/* 0B2444 800B5444 4BFE8701 */  bl        OSReport
/* 0B2448 800B5448 48000010 */  b         lbl_800B5458
lbl_800B544C:
/* 0B244C 800B544C 387F0160 */  addi      r3, r31, 0x160
/* 0B2450 800B5450 4CC63182 */  crclr     cr1eq
/* 0B2454 800B5454 4BFE86F1 */  bl        OSReport
lbl_800B5458:
/* 0B2458 800B5458 BB610034 */  lmw       r27, 0x34(r1)
/* 0B245C 800B545C 8001004C */  lwz       r0, 0x4c(r1)
/* 0B2460 800B5460 38210048 */  addi      r1, r1, 0x48
/* 0B2464 800B5464 7C0803A6 */  mtlr      r0
/* 0B2468 800B5468 4E800020 */  blr

glabel DEMOReInit
/* 0B246C 800B546C 7C0802A6 */  mflr      r0
/* 0B2470 800B5470 3C800001 */  lis       r4, 0x1
/* 0B2474 800B5474 90010004 */  stw       r0, 0x4(r1)
/* 0B2478 800B5478 9421FF50 */  stwu      r1, -0xb0(r1)
/* 0B247C 800B547C 93E100AC */  stw       r31, 0xac(r1)
/* 0B2480 800B5480 93C100A8 */  stw       r30, 0xa8(r1)
/* 0B2484 800B5484 93A100A4 */  stw       r29, 0xa4(r1)
/* 0B2488 800B5488 938100A0 */  stw       r28, 0xa0(r1)
/* 0B248C 800B548C 7C7C1B78 */  mr        r28, r3
/* 0B2490 800B5490 806D8728 */  lwz       r3, __OSCurrHeap@sda21(r0)
/* 0B2494 800B5494 4BFE6F79 */  bl        OSAllocFromHeap
/* 0B2498 800B5498 7C7F1B78 */  mr        r31, r3
/* 0B249C 800B549C 4BFF31E1 */  bl        fn_800A867C
/* 0B24A0 800B54A0 7C7E1B78 */  mr        r30, r3
/* 0B24A4 800B54A4 4BFF2F85 */  bl        fn_800A8428
/* 0B24A8 800B54A8 3BA30000 */  addi      r29, r3, 0x0
/* 0B24AC 800B54AC 387E0000 */  addi      r3, r30, 0x0
/* 0B24B0 800B54B0 4BFF2F81 */  bl        fn_800A8430
/* 0B24B4 800B54B4 7C7E1B78 */  mr        r30, r3
/* 0B24B8 800B54B8 4BFF440D */  bl        fn_800A98C4
/* 0B24BC 800B54BC 389F0000 */  addi      r4, r31, 0x0
/* 0B24C0 800B54C0 38610010 */  addi      r3, r1, 0x10
/* 0B24C4 800B54C4 3CA00001 */  lis       r5, 0x1
/* 0B24C8 800B54C8 4BFF2BA1 */  bl        GXInitFifoBase
/* 0B24CC 800B54CC 38610010 */  addi      r3, r1, 0x10
/* 0B24D0 800B54D0 4BFF2C81 */  bl        GXSetCPUFifo
/* 0B24D4 800B54D4 38610010 */  addi      r3, r1, 0x10
/* 0B24D8 800B54D8 4BFF2D89 */  bl        GXSetGPFifo
/* 0B24DC 800B54DC 7F83E378 */  mr        r3, r28
/* 0B24E0 800B54E0 4BFFF6BD */  bl        __DEMOInitRenderMode
/* 0B24E4 800B54E4 387D0000 */  addi      r3, r29, 0x0
/* 0B24E8 800B54E8 389E0000 */  addi      r4, r30, 0x0
/* 0B24EC 800B54EC 4BFF1919 */  bl        GXInit
/* 0B24F0 800B54F0 906D8D34 */  stw       r3, D_8018BCB4@sda21(r0)
/* 0B24F4 800B54F4 3C604330 */  lis       r3, 0x4330
/* 0B24F8 800B54F8 80AD8D38 */  lwz       r5, D_8018BCB8@sda21(r0)
/* 0B24FC 800B54FC C02284C8 */  lfs       f1, D_8018C408@sda21(r0)
/* 0B2500 800B5500 A0850004 */  lhz       r4, 0x4(r5)
/* 0B2504 800B5504 A0050006 */  lhz       r0, 0x6(r5)
/* 0B2508 800B5508 FC400890 */  fmr       f2, f1
/* 0B250C 800B550C 9081009C */  stw       r4, 0x9c(r1)
/* 0B2510 800B5510 FCA00890 */  fmr       f5, f1
/* 0B2514 800B5514 C88284D0 */  lfd       f4, D_8018C410@sda21(r0)
/* 0B2518 800B5518 90010094 */  stw       r0, 0x94(r1)
/* 0B251C 800B551C C0C284CC */  lfs       f6, D_8018C40C@sda21(r0)
/* 0B2520 800B5520 90610098 */  stw       r3, 0x98(r1)
/* 0B2524 800B5524 90610090 */  stw       r3, 0x90(r1)
/* 0B2528 800B5528 C8610098 */  lfd       f3, 0x98(r1)
/* 0B252C 800B552C C8010090 */  lfd       f0, 0x90(r1)
/* 0B2530 800B5530 EC632028 */  fsubs     f3, f3, f4
/* 0B2534 800B5534 EC802028 */  fsubs     f4, f0, f4
/* 0B2538 800B5538 4BFF82A1 */  bl        GXSetViewport
/* 0B253C 800B553C 80CD8D38 */  lwz       r6, D_8018BCB8@sda21(r0)
/* 0B2540 800B5540 38600000 */  li        r3, 0x0
/* 0B2544 800B5544 38800000 */  li        r4, 0x0
/* 0B2548 800B5548 A0A60004 */  lhz       r5, 0x4(r6)
/* 0B254C 800B554C A0C60006 */  lhz       r6, 0x6(r6)
/* 0B2550 800B5550 4BFF82AD */  bl        GXSetScissor
/* 0B2554 800B5554 808D8D38 */  lwz       r4, D_8018BCB8@sda21(r0)
/* 0B2558 800B5558 A0640006 */  lhz       r3, 0x6(r4)
/* 0B255C 800B555C A0840008 */  lhz       r4, 0x8(r4)
/* 0B2560 800B5560 4BFF517D */  bl        GXGetYScaleFactor
/* 0B2564 800B5564 4BFF53B1 */  bl        GXSetDispCopyYScale
/* 0B2568 800B5568 80CD8D38 */  lwz       r6, D_8018BCB8@sda21(r0)
/* 0B256C 800B556C 547E043E */  clrlwi    r30, r3, 16
/* 0B2570 800B5570 38600000 */  li        r3, 0x0
/* 0B2574 800B5574 A0A60004 */  lhz       r5, 0x4(r6)
/* 0B2578 800B5578 38800000 */  li        r4, 0x0
/* 0B257C 800B557C A0C60006 */  lhz       r6, 0x6(r6)
/* 0B2580 800B5580 4BFF4E1D */  bl        GXSetDispCopySrc
/* 0B2584 800B5584 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B2588 800B5588 7FC4F378 */  mr        r4, r30
/* 0B258C 800B558C A0630004 */  lhz       r3, 0x4(r3)
/* 0B2590 800B5590 4BFF4F2D */  bl        GXSetDispCopyDst
/* 0B2594 800B5594 80CD8D38 */  lwz       r6, D_8018BCB8@sda21(r0)
/* 0B2598 800B5598 38A00001 */  li        r5, 0x1
/* 0B259C 800B559C 88660019 */  lbz       r3, 0x19(r6)
/* 0B25A0 800B55A0 3886001A */  addi      r4, r6, 0x1a
/* 0B25A4 800B55A4 38C60032 */  addi      r6, r6, 0x32
/* 0B25A8 800B55A8 4BFF549D */  bl        GXSetCopyFilter
/* 0B25AC 800B55AC 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B25B0 800B55B0 88030019 */  lbz       r0, 0x19(r3)
/* 0B25B4 800B55B4 28000000 */  cmplwi    r0, 0x0
/* 0B25B8 800B55B8 41820014 */  beq       lbl_800B55CC
/* 0B25BC 800B55BC 38600002 */  li        r3, 0x2
/* 0B25C0 800B55C0 38800000 */  li        r4, 0x0
/* 0B25C4 800B55C4 4BFF7C01 */  bl        GXSetPixelFmt
/* 0B25C8 800B55C8 48000010 */  b         lbl_800B55D8
lbl_800B55CC:
/* 0B25CC 800B55CC 38600000 */  li        r3, 0x0
/* 0B25D0 800B55D0 38800000 */  li        r4, 0x0
/* 0B25D4 800B55D4 4BFF7BF1 */  bl        GXSetPixelFmt
lbl_800B55D8:
/* 0B25D8 800B55D8 806D8D48 */  lwz       r3, DemoCurrentBuffer@sda21(r0)
/* 0B25DC 800B55DC 38800001 */  li        r4, 0x1
/* 0B25E0 800B55E0 4BFF56A9 */  bl        GXCopyDisp
/* 0B25E4 800B55E4 38600000 */  li        r3, 0x0
/* 0B25E8 800B55E8 4BFF5685 */  bl        GXSetDispCopyGamma
/* 0B25EC 800B55EC 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B25F0 800B55F0 4BFF0581 */  bl        VIConfigure
/* 0B25F4 800B55F4 806D8D50 */  lwz       r3, DemoFrameBuffer1@sda21(r0)
/* 0B25F8 800B55F8 4BFF0ED1 */  bl        VISetNextFrameBuffer
/* 0B25FC 800B55FC 800D8D4C */  lwz       r0, DemoFrameBuffer2@sda21(r0)
/* 0B2600 800B5600 900D8D48 */  stw       r0, DemoCurrentBuffer@sda21(r0)
/* 0B2604 800B5604 4BFF0D95 */  bl        VIFlush
/* 0B2608 800B5608 4BFF00A1 */  bl        VIWaitForRetrace
/* 0B260C 800B560C 806D8D38 */  lwz       r3, D_8018BCB8@sda21(r0)
/* 0B2610 800B5610 80030000 */  lwz       r0, 0x0(r3)
/* 0B2614 800B5614 540007FF */  clrlwi.   r0, r0, 31
/* 0B2618 800B5618 41820008 */  beq       lbl_800B5620
/* 0B261C 800B561C 4BFF008D */  bl        VIWaitForRetrace
lbl_800B5620:
/* 0B2620 800B5620 806D8728 */  lwz       r3, __OSCurrHeap@sda21(r0)
/* 0B2624 800B5624 7FE4FB78 */  mr        r4, r31
/* 0B2628 800B5628 4BFE6EE1 */  bl        OSFreeToHeap
/* 0B262C 800B562C 800100B4 */  lwz       r0, 0xb4(r1)
/* 0B2630 800B5630 83E100AC */  lwz       r31, 0xac(r1)
/* 0B2634 800B5634 83C100A8 */  lwz       r30, 0xa8(r1)
/* 0B2638 800B5638 83A100A4 */  lwz       r29, 0xa4(r1)
/* 0B263C 800B563C 838100A0 */  lwz       r28, 0xa0(r1)
/* 0B2640 800B5640 382100B0 */  addi      r1, r1, 0xb0
/* 0B2644 800B5644 7C0803A6 */  mtlr      r0
/* 0B2648 800B5648 4E800020 */  blr

# 0x800F3A00 - 0x800F3B80
.section .data, "wa"

.balign 8

glabel D_800F3A00
	.string "DEMOInit.c"

glabel gap_05_800F3A0B_data
.hidden gap_05_800F3A0B_data
	.byte 0x00

glabel D_800F3A0C
	.string "DEMOInit: invalid TV format\n"

glabel gap_05_800F3A29_data
.hidden gap_05_800F3A29_data
	.byte 0x00, 0x00, 0x00

glabel D_800F3A2C
	.string "---------WARNING : HANG AT HIGH WATERMARK----------\n"

glabel gap_05_800F3A61_data
.hidden gap_05_800F3A61_data
	.byte 0x00, 0x00, 0x00

glabel D_800F3A64
	.string "Halting program"

glabel D_800F3A74
	.string "---------WARNING : ABORTING FRAME----------\n"

glabel gap_05_800F3AA1_data
.hidden gap_05_800F3AA1_data
	.byte 0x00, 0x00, 0x00

glabel D_800F3AA4
	.string "GP status %d%d%d%d%d%d --> "

glabel D_800F3AC0
	.string "GP hang due to XF stall bug.\n"

glabel gap_05_800F3ADE_data
.hidden gap_05_800F3ADE_data
	.2byte 0x0000

glabel D_800F3AE0
	.string "GP hang due to unterminated primitive.\n"

glabel D_800F3B08
	.string "GP hang due to illegal instruction.\n"

glabel gap_05_800F3B2D_data
.hidden gap_05_800F3B2D_data
	.byte 0x00, 0x00, 0x00

glabel D_800F3B30
	.string "GP appears to be not hung (waiting for input).\n"

glabel D_800F3B60
	.string "GP is in unknown state.\n"

glabel gap_05_800F3B79_data
.hidden gap_05_800F3B79_data
	.long 0x00000000
	.byte 0x00, 0x00, 0x00

# 0x80188968 - 0x801889A8
.section .bss, "wa"

glabel D_80188968
	.skip 0x40

# 0x8018B7A8 - 0x8018B7B0
.section .sdata, "wa"

glabel D_8018B7A8
	.byte 0x01

glabel gap_07_8018B7A9_sdata
.hidden gap_07_8018B7A9_sdata
	.long 0x00000000
	.byte 0x00, 0x00, 0x00

# 0x8018BCB0 - 0x8018BCD8
.section .sbss, "wa"

glabel D_8018BCB0
	.skip 0x4

glabel D_8018BCB4
	.skip 0x4

glabel D_8018BCB8
	.skip 0x4

glabel D_8018BCBC
	.skip 0x4

glabel D_8018BCC0
	.skip 0x4

glabel D_8018BCC4
	.skip 0x4

glabel DemoCurrentBuffer
	.skip 0x4

glabel DemoFrameBuffer2
	.skip 0x4

glabel DemoFrameBuffer1
	.skip 0x8

# 0x8018C408 - 0x8018C418
.section .sdata2, "a"

glabel D_8018C408
	.float 0

glabel D_8018C40C
	.float 1

glabel D_8018C410
	.double 4503599627370496
