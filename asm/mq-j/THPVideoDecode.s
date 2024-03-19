# THPVideoDecode.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x80012CFC - 0x8001321C

glabel CreateVideoDecodeThread
/* 00FCFC 80012CFC 7C0802A6 */  mflr      r0
/* 00FD00 80012D00 7C852379 */  mr.       r5, r4
/* 00FD04 80012D04 90010004 */  stw       r0, 0x4(r1)
/* 00FD08 80012D08 3C808010 */  lis       r4, D_800FD950@ha
/* 00FD0C 80012D0C 39030000 */  addi      r8, r3, 0x0
/* 00FD10 80012D10 9421FFE8 */  stwu      r1, -0x18(r1)
/* 00FD14 80012D14 93E10014 */  stw       r31, 0x14(r1)
/* 00FD18 80012D18 3BE4D950 */  addi      r31, r4, D_800FD950@l
/* 00FD1C 80012D1C 41820040 */  beq       lbl_80012D5C
/* 00FD20 80012D20 3C608001 */  lis       r3, VideoDecoderForOnMemory@ha
/* 00FD24 80012D24 38832EF0 */  addi      r4, r3, VideoDecoderForOnMemory@l
/* 00FD28 80012D28 387F0000 */  addi      r3, r31, 0x0
/* 00FD2C 80012D2C 38DF1318 */  addi      r6, r31, 0x1318
/* 00FD30 80012D30 38E01000 */  li        r7, 0x1000
/* 00FD34 80012D34 39200001 */  li        r9, 0x1
/* 00FD38 80012D38 4808DC8D */  bl        OSCreateThread
/* 00FD3C 80012D3C 2C030000 */  cmpwi     r3, 0x0
/* 00FD40 80012D40 4082005C */  bne       lbl_80012D9C
/* 00FD44 80012D44 3C60800F */  lis       r3, D_800EB9D8@ha
/* 00FD48 80012D48 4CC63182 */  crclr     cr1eq
/* 00FD4C 80012D4C 3863B9D8 */  addi      r3, r3, D_800EB9D8@l
/* 00FD50 80012D50 4808ADF5 */  bl        OSReport
/* 00FD54 80012D54 38600000 */  li        r3, 0x0
/* 00FD58 80012D58 48000074 */  b         lbl_80012DCC
lbl_80012D5C:
/* 00FD5C 80012D5C 3C608001 */  lis       r3, VideoDecoder@ha
/* 00FD60 80012D60 38832E14 */  addi      r4, r3, VideoDecoder@l
/* 00FD64 80012D64 387F0000 */  addi      r3, r31, 0x0
/* 00FD68 80012D68 38DF1318 */  addi      r6, r31, 0x1318
/* 00FD6C 80012D6C 38A00000 */  li        r5, 0x0
/* 00FD70 80012D70 38E01000 */  li        r7, 0x1000
/* 00FD74 80012D74 39200001 */  li        r9, 0x1
/* 00FD78 80012D78 4808DC4D */  bl        OSCreateThread
/* 00FD7C 80012D7C 2C030000 */  cmpwi     r3, 0x0
/* 00FD80 80012D80 4082001C */  bne       lbl_80012D9C
/* 00FD84 80012D84 3C60800F */  lis       r3, D_800EB9D8@ha
/* 00FD88 80012D88 4CC63182 */  crclr     cr1eq
/* 00FD8C 80012D8C 3863B9D8 */  addi      r3, r3, D_800EB9D8@l
/* 00FD90 80012D90 4808ADB5 */  bl        OSReport
/* 00FD94 80012D94 38600000 */  li        r3, 0x0
/* 00FD98 80012D98 48000034 */  b         lbl_80012DCC
lbl_80012D9C:
/* 00FD9C 80012D9C 387F1318 */  addi      r3, r31, 0x1318
/* 00FDA0 80012DA0 389F1358 */  addi      r4, r31, 0x1358
/* 00FDA4 80012DA4 38A00003 */  li        r5, 0x3
/* 00FDA8 80012DA8 4808BD25 */  bl        OSInitMessageQueue
/* 00FDAC 80012DAC 387F1338 */  addi      r3, r31, 0x1338
/* 00FDB0 80012DB0 389F1364 */  addi      r4, r31, 0x1364
/* 00FDB4 80012DB4 38A00003 */  li        r5, 0x3
/* 00FDB8 80012DB8 4808BD15 */  bl        OSInitMessageQueue
/* 00FDBC 80012DBC 38000001 */  li        r0, 0x1
/* 00FDC0 80012DC0 900D8968 */  stw       r0, D_8018B8E8@sda21(r0)
/* 00FDC4 80012DC4 38600001 */  li        r3, 0x1
/* 00FDC8 80012DC8 900D896C */  stw       r0, D_8018B8EC@sda21(r0)
lbl_80012DCC:
/* 00FDCC 80012DCC 8001001C */  lwz       r0, 0x1c(r1)
/* 00FDD0 80012DD0 83E10014 */  lwz       r31, 0x14(r1)
/* 00FDD4 80012DD4 38210018 */  addi      r1, r1, 0x18
/* 00FDD8 80012DD8 7C0803A6 */  mtlr      r0
/* 00FDDC 80012DDC 4E800020 */  blr

glabel VideoDecodeThreadStart
/* 00FDE0 80012DE0 7C0802A6 */  mflr      r0
/* 00FDE4 80012DE4 90010004 */  stw       r0, 0x4(r1)
/* 00FDE8 80012DE8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 00FDEC 80012DEC 800D8968 */  lwz       r0, D_8018B8E8@sda21(r0)
/* 00FDF0 80012DF0 2C000000 */  cmpwi     r0, 0x0
/* 00FDF4 80012DF4 41820010 */  beq       lbl_80012E04
/* 00FDF8 80012DF8 3C608010 */  lis       r3, D_800FD950@ha
/* 00FDFC 80012DFC 3863D950 */  addi      r3, r3, D_800FD950@l
/* 00FE00 80012E00 4808E04D */  bl        OSResumeThread
lbl_80012E04:
/* 00FE04 80012E04 8001000C */  lwz       r0, 0xc(r1)
/* 00FE08 80012E08 38210008 */  addi      r1, r1, 0x8
/* 00FE0C 80012E0C 7C0803A6 */  mtlr      r0
/* 00FE10 80012E10 4E800020 */  blr

glabel VideoDecoder
/* 00FE14 80012E14 7C0802A6 */  mflr      r0
/* 00FE18 80012E18 3C608010 */  lis       r3, D_800FAFE0@ha
/* 00FE1C 80012E1C 90010004 */  stw       r0, 0x4(r1)
/* 00FE20 80012E20 9421FFE0 */  stwu      r1, -0x20(r1)
/* 00FE24 80012E24 93E1001C */  stw       r31, 0x1c(r1)
/* 00FE28 80012E28 3BE3AFE0 */  addi      r31, r3, D_800FAFE0@l
/* 00FE2C 80012E2C 93C10018 */  stw       r30, 0x18(r1)
/* 00FE30 80012E30 3BDF00D8 */  addi      r30, r31, 0xd8
/* 00FE34 80012E34 93A10014 */  stw       r29, 0x14(r1)
/* 00FE38 80012E38 3BBF00A7 */  addi      r29, r31, 0xa7
/* 00FE3C 80012E3C 93810010 */  stw       r28, 0x10(r1)
lbl_80012E40:
/* 00FE40 80012E40 881D0000 */  lbz       r0, 0x0(r29)
/* 00FE44 80012E44 28000000 */  cmplwi    r0, 0x0
/* 00FE48 80012E48 41820074 */  beq       lbl_80012EBC
/* 00FE4C 80012E4C 48000064 */  b         lbl_80012EB0
lbl_80012E50:
/* 00FE50 80012E50 4BFFE8F5 */  bl        PopReadedBuffer2
/* 00FE54 80012E54 7C7C1B78 */  mr        r28, r3
/* 00FE58 80012E58 80BF0050 */  lwz       r5, 0x50(r31)
/* 00FE5C 80012E5C 807F00C0 */  lwz       r3, 0xc0(r31)
/* 00FE60 80012E60 809C0004 */  lwz       r4, 0x4(r28)
/* 00FE64 80012E64 3805FFFF */  subi      r0, r5, 0x1
/* 00FE68 80012E68 7C841A14 */  add       r4, r4, r3
/* 00FE6C 80012E6C 7C642B96 */  divwu     r3, r4, r5
/* 00FE70 80012E70 7C6329D6 */  mullw     r3, r3, r5
/* 00FE74 80012E74 7C632050 */  subf      r3, r3, r4
/* 00FE78 80012E78 7C030040 */  cmplw     r3, r0
/* 00FE7C 80012E7C 40820018 */  bne       lbl_80012E94
/* 00FE80 80012E80 881F00A6 */  lbz       r0, 0xa6(r31)
/* 00FE84 80012E84 540007FF */  clrlwi.   r0, r0, 31
/* 00FE88 80012E88 4082000C */  bne       lbl_80012E94
/* 00FE8C 80012E8C 7F83E378 */  mr        r3, r28
/* 00FE90 80012E90 48000195 */  bl        VideoDecode
lbl_80012E94:
/* 00FE94 80012E94 7F83E378 */  mr        r3, r28
/* 00FE98 80012E98 4BFFE8E1 */  bl        PushFreeReadBuffer
/* 00FE9C 80012E9C 4808B3AD */  bl        OSDisableInterrupts
/* 00FEA0 80012EA0 809E0000 */  lwz       r4, 0x0(r30)
/* 00FEA4 80012EA4 38040001 */  addi      r0, r4, 0x1
/* 00FEA8 80012EA8 901E0000 */  stw       r0, 0x0(r30)
/* 00FEAC 80012EAC 4808B3C5 */  bl        OSRestoreInterrupts
lbl_80012EB0:
/* 00FEB0 80012EB0 801E0000 */  lwz       r0, 0x0(r30)
/* 00FEB4 80012EB4 2C000000 */  cmpwi     r0, 0x0
/* 00FEB8 80012EB8 4180FF98 */  blt       lbl_80012E50
lbl_80012EBC:
/* 00FEBC 80012EBC 881D0000 */  lbz       r0, 0x0(r29)
/* 00FEC0 80012EC0 28000000 */  cmplwi    r0, 0x0
/* 00FEC4 80012EC4 41820010 */  beq       lbl_80012ED4
/* 00FEC8 80012EC8 4BFFE87D */  bl        PopReadedBuffer2
/* 00FECC 80012ECC 7C7C1B78 */  mr        r28, r3
/* 00FED0 80012ED0 4800000C */  b         lbl_80012EDC
lbl_80012ED4:
/* 00FED4 80012ED4 4BFFE8D5 */  bl        PopReadedBuffer
/* 00FED8 80012ED8 7C7C1B78 */  mr        r28, r3
lbl_80012EDC:
/* 00FEDC 80012EDC 7F83E378 */  mr        r3, r28
/* 00FEE0 80012EE0 48000145 */  bl        VideoDecode
/* 00FEE4 80012EE4 7F83E378 */  mr        r3, r28
/* 00FEE8 80012EE8 4BFFE891 */  bl        PushFreeReadBuffer
/* 00FEEC 80012EEC 4BFFFF54 */  b         lbl_80012E40

glabel VideoDecoderForOnMemory
/* 00FEF0 80012EF0 7C0802A6 */  mflr      r0
/* 00FEF4 80012EF4 3C808010 */  lis       r4, D_800FAFE0@ha
/* 00FEF8 80012EF8 90010004 */  stw       r0, 0x4(r1)
/* 00FEFC 80012EFC 9421FFC8 */  stwu      r1, -0x38(r1)
/* 00FF00 80012F00 BF610024 */  stmw      r27, 0x24(r1)
/* 00FF04 80012F04 3BE4AFE0 */  addi      r31, r4, D_800FAFE0@l
/* 00FF08 80012F08 3C808010 */  lis       r4, D_800FD950@ha
/* 00FF0C 80012F0C 3BDF00D8 */  addi      r30, r31, 0xd8
/* 00FF10 80012F10 3B64D950 */  addi      r27, r4, D_800FD950@l
/* 00FF14 80012F14 3B800000 */  li        r28, 0x0
/* 00FF18 80012F18 83BF00BC */  lwz       r29, 0xbc(r31)
/* 00FF1C 80012F1C 90610010 */  stw       r3, 0x10(r1)
lbl_80012F20:
/* 00FF20 80012F20 881F00A7 */  lbz       r0, 0xa7(r31)
/* 00FF24 80012F24 28000000 */  cmplwi    r0, 0x0
/* 00FF28 80012F28 41820084 */  beq       lbl_80012FAC
/* 00FF2C 80012F2C 48000074 */  b         lbl_80012FA0
lbl_80012F30:
/* 00FF30 80012F30 4808B319 */  bl        OSDisableInterrupts
/* 00FF34 80012F34 809E0000 */  lwz       r4, 0x0(r30)
/* 00FF38 80012F38 38040001 */  addi      r0, r4, 0x1
/* 00FF3C 80012F3C 901E0000 */  stw       r0, 0x0(r30)
/* 00FF40 80012F40 4808B331 */  bl        OSRestoreInterrupts
/* 00FF44 80012F44 801F00C0 */  lwz       r0, 0xc0(r31)
/* 00FF48 80012F48 809F0050 */  lwz       r4, 0x50(r31)
/* 00FF4C 80012F4C 7C7C0214 */  add       r3, r28, r0
/* 00FF50 80012F50 7C032396 */  divwu     r0, r3, r4
/* 00FF54 80012F54 7C0021D6 */  mullw     r0, r0, r4
/* 00FF58 80012F58 7C601850 */  subf      r3, r0, r3
/* 00FF5C 80012F5C 3804FFFF */  subi      r0, r4, 0x1
/* 00FF60 80012F60 7C030040 */  cmplw     r3, r0
/* 00FF64 80012F64 40820024 */  bne       lbl_80012F88
/* 00FF68 80012F68 881F00A6 */  lbz       r0, 0xa6(r31)
/* 00FF6C 80012F6C 540007FF */  clrlwi.   r0, r0, 31
/* 00FF70 80012F70 4182003C */  beq       lbl_80012FAC
/* 00FF74 80012F74 80610010 */  lwz       r3, 0x10(r1)
/* 00FF78 80012F78 801F00B4 */  lwz       r0, 0xb4(r31)
/* 00FF7C 80012F7C 83A30000 */  lwz       r29, 0x0(r3)
/* 00FF80 80012F80 90010010 */  stw       r0, 0x10(r1)
/* 00FF84 80012F84 48000018 */  b         lbl_80012F9C
lbl_80012F88:
/* 00FF88 80012F88 80610010 */  lwz       r3, 0x10(r1)
/* 00FF8C 80012F8C 80830000 */  lwz       r4, 0x0(r3)
/* 00FF90 80012F90 7C03EA14 */  add       r0, r3, r29
/* 00FF94 80012F94 90010010 */  stw       r0, 0x10(r1)
/* 00FF98 80012F98 7C9D2378 */  mr        r29, r4
lbl_80012F9C:
/* 00FF9C 80012F9C 3B9C0001 */  addi      r28, r28, 0x1
lbl_80012FA0:
/* 00FFA0 80012FA0 801E0000 */  lwz       r0, 0x0(r30)
/* 00FFA4 80012FA4 2C000000 */  cmpwi     r0, 0x0
/* 00FFA8 80012FA8 4180FF88 */  blt       lbl_80012F30
lbl_80012FAC:
/* 00FFAC 80012FAC 93810014 */  stw       r28, 0x14(r1)
/* 00FFB0 80012FB0 38610010 */  addi      r3, r1, 0x10
/* 00FFB4 80012FB4 48000071 */  bl        VideoDecode
/* 00FFB8 80012FB8 801F00C0 */  lwz       r0, 0xc0(r31)
/* 00FFBC 80012FBC 809F0050 */  lwz       r4, 0x50(r31)
/* 00FFC0 80012FC0 7C7C0214 */  add       r3, r28, r0
/* 00FFC4 80012FC4 7C032396 */  divwu     r0, r3, r4
/* 00FFC8 80012FC8 7C0021D6 */  mullw     r0, r0, r4
/* 00FFCC 80012FCC 7C601850 */  subf      r3, r0, r3
/* 00FFD0 80012FD0 3804FFFF */  subi      r0, r4, 0x1
/* 00FFD4 80012FD4 7C030040 */  cmplw     r3, r0
/* 00FFD8 80012FD8 40820030 */  bne       lbl_80013008
/* 00FFDC 80012FDC 881F00A6 */  lbz       r0, 0xa6(r31)
/* 00FFE0 80012FE0 540007FF */  clrlwi.   r0, r0, 31
/* 00FFE4 80012FE4 41820018 */  beq       lbl_80012FFC
/* 00FFE8 80012FE8 80610010 */  lwz       r3, 0x10(r1)
/* 00FFEC 80012FEC 801F00B4 */  lwz       r0, 0xb4(r31)
/* 00FFF0 80012FF0 83A30000 */  lwz       r29, 0x0(r3)
/* 00FFF4 80012FF4 90010010 */  stw       r0, 0x10(r1)
/* 00FFF8 80012FF8 48000024 */  b         lbl_8001301C
lbl_80012FFC:
/* 00FFFC 80012FFC 7F63DB78 */  mr        r3, r27
/* 010000 80013000 4808E0D5 */  bl        OSSuspendThread
/* 010004 80013004 48000018 */  b         lbl_8001301C
lbl_80013008:
/* 010008 80013008 80610010 */  lwz       r3, 0x10(r1)
/* 01000C 8001300C 80830000 */  lwz       r4, 0x0(r3)
/* 010010 80013010 7C03EA14 */  add       r0, r3, r29
/* 010014 80013014 90010010 */  stw       r0, 0x10(r1)
/* 010018 80013018 7C9D2378 */  mr        r29, r4
lbl_8001301C:
/* 01001C 8001301C 3B9C0001 */  addi      r28, r28, 0x1
/* 010020 80013020 4BFFFF00 */  b         lbl_80012F20

glabel VideoDecode
/* 010024 80013024 7C0802A6 */  mflr      r0
/* 010028 80013028 3C808010 */  lis       r4, D_800FAFE0@ha
/* 01002C 8001302C 90010004 */  stw       r0, 0x4(r1)
/* 010030 80013030 9421FFC8 */  stwu      r1, -0x38(r1)
/* 010034 80013034 BEE10014 */  stmw      r23, 0x14(r1)
/* 010038 80013038 3BE4AFE0 */  addi      r31, r4, D_800FAFE0@l
/* 01003C 8001303C 7C781B78 */  mr        r24, r3
/* 010040 80013040 3BBF006C */  addi      r29, r31, 0x6c
/* 010044 80013044 801F006C */  lwz       r0, 0x6c(r31)
/* 010048 80013048 80830000 */  lwz       r4, 0x0(r3)
/* 01004C 8001304C 5403103A */  slwi      r3, r0, 2
/* 010050 80013050 3B230008 */  addi      r25, r3, 0x8
/* 010054 80013054 3B440008 */  addi      r26, r4, 0x8
/* 010058 80013058 7F24CA14 */  add       r25, r4, r25
/* 01005C 8001305C 480000E9 */  bl        PopFreeTextureSet
/* 010060 80013060 3C808010 */  lis       r4, D_800FD950@ha
/* 010064 80013064 3B830000 */  addi      r28, r3, 0x0
/* 010068 80013068 3BDF0000 */  addi      r30, r31, 0x0
/* 01006C 8001306C 3AE4D950 */  addi      r23, r4, D_800FD950@l
/* 010070 80013070 3B600000 */  li        r27, 0x0
/* 010074 80013074 48000094 */  b         lbl_80013108
lbl_80013078:
/* 010078 80013078 881E0070 */  lbz       r0, 0x70(r30)
/* 01007C 8001307C 2C000000 */  cmpwi     r0, 0x0
/* 010080 80013080 41820008 */  beq       lbl_80013088
/* 010084 80013084 48000070 */  b         lbl_800130F4
lbl_80013088:
/* 010088 80013088 809C0000 */  lwz       r4, 0x0(r28)
/* 01008C 8001308C 7F23CB78 */  mr        r3, r25
/* 010090 80013090 80BC0004 */  lwz       r5, 0x4(r28)
/* 010094 80013094 80DC0008 */  lwz       r6, 0x8(r28)
/* 010098 80013098 80FF009C */  lwz       r7, 0x9c(r31)
/* 01009C 8001309C 480AD001 */  bl        THPVideoDecode
/* 0100A0 800130A0 2C030000 */  cmpwi     r3, 0x0
/* 0100A4 800130A4 907F00AC */  stw       r3, 0xac(r31)
/* 0100A8 800130A8 41820028 */  beq       lbl_800130D0
/* 0100AC 800130AC 800D896C */  lwz       r0, D_8018B8EC@sda21(r0)
/* 0100B0 800130B0 2C000000 */  cmpwi     r0, 0x0
/* 0100B4 800130B4 41820014 */  beq       lbl_800130C8
/* 0100B8 800130B8 38600000 */  li        r3, 0x0
/* 0100BC 800130BC 4BFFCD11 */  bl        PrepareReady
/* 0100C0 800130C0 38000000 */  li        r0, 0x0
/* 0100C4 800130C4 900D896C */  stw       r0, D_8018B8EC@sda21(r0)
lbl_800130C8:
/* 0100C8 800130C8 7EE3BB78 */  mr        r3, r23
/* 0100CC 800130CC 4808E009 */  bl        OSSuspendThread
lbl_800130D0:
/* 0100D0 800130D0 80180004 */  lwz       r0, 0x4(r24)
/* 0100D4 800130D4 7F83E378 */  mr        r3, r28
/* 0100D8 800130D8 901C000C */  stw       r0, 0xc(r28)
/* 0100DC 800130DC 48000111 */  bl        PushDecodedTextureSet
/* 0100E0 800130E0 4808B169 */  bl        OSDisableInterrupts
/* 0100E4 800130E4 809F00D8 */  lwz       r4, 0xd8(r31)
/* 0100E8 800130E8 38040001 */  addi      r0, r4, 0x1
/* 0100EC 800130EC 901F00D8 */  stw       r0, 0xd8(r31)
/* 0100F0 800130F0 4808B181 */  bl        OSRestoreInterrupts
lbl_800130F4:
/* 0100F4 800130F4 801A0000 */  lwz       r0, 0x0(r26)
/* 0100F8 800130F8 3B7B0001 */  addi      r27, r27, 0x1
/* 0100FC 800130FC 3B5A0004 */  addi      r26, r26, 0x4
/* 010100 80013100 7F390214 */  add       r25, r25, r0
/* 010104 80013104 3BDE0001 */  addi      r30, r30, 0x1
lbl_80013108:
/* 010108 80013108 801D0000 */  lwz       r0, 0x0(r29)
/* 01010C 8001310C 7C1B0040 */  cmplw     r27, r0
/* 010110 80013110 4180FF68 */  blt       lbl_80013078
/* 010114 80013114 800D896C */  lwz       r0, D_8018B8EC@sda21(r0)
/* 010118 80013118 2C000000 */  cmpwi     r0, 0x0
/* 01011C 8001311C 41820014 */  beq       lbl_80013130
/* 010120 80013120 38600001 */  li        r3, 0x1
/* 010124 80013124 4BFFCCA9 */  bl        PrepareReady
/* 010128 80013128 38000000 */  li        r0, 0x0
/* 01012C 8001312C 900D896C */  stw       r0, D_8018B8EC@sda21(r0)
lbl_80013130:
/* 010130 80013130 BAE10014 */  lmw       r23, 0x14(r1)
/* 010134 80013134 8001003C */  lwz       r0, 0x3c(r1)
/* 010138 80013138 38210038 */  addi      r1, r1, 0x38
/* 01013C 8001313C 7C0803A6 */  mtlr      r0
/* 010140 80013140 4E800020 */  blr

glabel PopFreeTextureSet
/* 010144 80013144 7C0802A6 */  mflr      r0
/* 010148 80013148 3C608010 */  lis       r3, D_800FEC68@ha
/* 01014C 8001314C 90010004 */  stw       r0, 0x4(r1)
/* 010150 80013150 3863EC68 */  addi      r3, r3, D_800FEC68@l
/* 010154 80013154 38A00001 */  li        r5, 0x1
/* 010158 80013158 9421FFF0 */  stwu      r1, -0x10(r1)
/* 01015C 8001315C 38810008 */  addi      r4, r1, 0x8
/* 010160 80013160 4808BA95 */  bl        OSReceiveMessage
/* 010164 80013164 80010014 */  lwz       r0, 0x14(r1)
/* 010168 80013168 80610008 */  lwz       r3, 0x8(r1)
/* 01016C 8001316C 38210010 */  addi      r1, r1, 0x10
/* 010170 80013170 7C0803A6 */  mtlr      r0
/* 010174 80013174 4E800020 */  blr

glabel PushFreeTextureSet
/* 010178 80013178 7C0802A6 */  mflr      r0
/* 01017C 8001317C 3CA08010 */  lis       r5, D_800FEC68@ha
/* 010180 80013180 90010004 */  stw       r0, 0x4(r1)
/* 010184 80013184 38830000 */  addi      r4, r3, 0x0
/* 010188 80013188 3865EC68 */  addi      r3, r5, D_800FEC68@l
/* 01018C 8001318C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 010190 80013190 38A00000 */  li        r5, 0x0
/* 010194 80013194 4808B999 */  bl        OSSendMessage
/* 010198 80013198 8001000C */  lwz       r0, 0xc(r1)
/* 01019C 8001319C 38210008 */  addi      r1, r1, 0x8
/* 0101A0 800131A0 7C0803A6 */  mtlr      r0
/* 0101A4 800131A4 4E800020 */  blr

glabel PopDecodedTextureSet
/* 0101A8 800131A8 7C0802A6 */  mflr      r0
/* 0101AC 800131AC 3C808010 */  lis       r4, D_800FEC88@ha
/* 0101B0 800131B0 90010004 */  stw       r0, 0x4(r1)
/* 0101B4 800131B4 38A30000 */  addi      r5, r3, 0x0
/* 0101B8 800131B8 3864EC88 */  addi      r3, r4, D_800FEC88@l
/* 0101BC 800131BC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0101C0 800131C0 3881000C */  addi      r4, r1, 0xc
/* 0101C4 800131C4 4808BA31 */  bl        OSReceiveMessage
/* 0101C8 800131C8 2C030001 */  cmpwi     r3, 0x1
/* 0101CC 800131CC 4082000C */  bne       lbl_800131D8
/* 0101D0 800131D0 8061000C */  lwz       r3, 0xc(r1)
/* 0101D4 800131D4 48000008 */  b         lbl_800131DC
lbl_800131D8:
/* 0101D8 800131D8 38600000 */  li        r3, 0x0
lbl_800131DC:
/* 0101DC 800131DC 80010014 */  lwz       r0, 0x14(r1)
/* 0101E0 800131E0 38210010 */  addi      r1, r1, 0x10
/* 0101E4 800131E4 7C0803A6 */  mtlr      r0
/* 0101E8 800131E8 4E800020 */  blr

glabel PushDecodedTextureSet
/* 0101EC 800131EC 7C0802A6 */  mflr      r0
/* 0101F0 800131F0 3CA08010 */  lis       r5, D_800FEC88@ha
/* 0101F4 800131F4 90010004 */  stw       r0, 0x4(r1)
/* 0101F8 800131F8 38830000 */  addi      r4, r3, 0x0
/* 0101FC 800131FC 3865EC88 */  addi      r3, r5, D_800FEC88@l
/* 010200 80013200 9421FFF8 */  stwu      r1, -0x8(r1)
/* 010204 80013204 38A00001 */  li        r5, 0x1
/* 010208 80013208 4808B925 */  bl        OSSendMessage
/* 01020C 8001320C 8001000C */  lwz       r0, 0xc(r1)
/* 010210 80013210 38210008 */  addi      r1, r1, 0x8
/* 010214 80013214 7C0803A6 */  mtlr      r0
/* 010218 80013218 4E800020 */  blr

# 0x800EB9D8 - 0x800EBA00
.section .data, "wa"

.balign 8

glabel D_800EB9D8
	.long 0x43616E27
	.long 0x74206372
	.long 0x65617465
	.long 0x20766964
	.long 0x656F2064
	.long 0x65636F64
	.long 0x65207468
	.long 0x72656164
	.long 0x0A000000
	.long 0x00000000

# 0x800FD910 - 0x800FECC0
.section .bss, "wa"

glabel D_800FD910
	.skip 0x40

glabel D_800FD950
	.skip 0x318

glabel D_800FDC68
	.skip 0x1000

glabel D_800FEC68
	.skip 0x20

glabel D_800FEC88
	.skip 0x20

glabel D_800FECA8
	.skip 0xC

glabel D_800FECB4
	.skip 0xC

# 0x8018B8E8 - 0x8018B8F0
.section .sbss, "wa"

glabel D_8018B8E8
	.skip 0x4

glabel D_8018B8EC
	.skip 0x4
