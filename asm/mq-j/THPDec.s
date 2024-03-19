# THPDec.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C009C - 0x800C7604

glabel THPVideoDecode
/* 0BD09C 800C009C 7C0802A6 */  mflr      r0
/* 0BD0A0 800C00A0 90010004 */  stw       r0, 0x4(r1)
/* 0BD0A4 800C00A4 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0BD0A8 800C00A8 BF610024 */  stmw      r27, 0x24(r1)
/* 0BD0AC 800C00AC 7C7B1B79 */  mr.       r27, r3
/* 0BD0B0 800C00B0 3B840000 */  addi      r28, r4, 0x0
/* 0BD0B4 800C00B4 3BA50000 */  addi      r29, r5, 0x0
/* 0BD0B8 800C00B8 3BC60000 */  addi      r30, r6, 0x0
/* 0BD0BC 800C00BC 3BE70000 */  addi      r31, r7, 0x0
/* 0BD0C0 800C00C0 418201D0 */  beq       lbl_800C0290
/* 0BD0C4 800C00C4 281C0000 */  cmplwi    r28, 0x0
/* 0BD0C8 800C00C8 418201D0 */  beq       lbl_800C0298
/* 0BD0CC 800C00CC 281D0000 */  cmplwi    r29, 0x0
/* 0BD0D0 800C00D0 418201C8 */  beq       lbl_800C0298
/* 0BD0D4 800C00D4 281E0000 */  cmplwi    r30, 0x0
/* 0BD0D8 800C00D8 418201C0 */  beq       lbl_800C0298
/* 0BD0DC 800C00DC 281F0000 */  cmplwi    r31, 0x0
/* 0BD0E0 800C00E0 418201C0 */  beq       lbl_800C02A0
/* 0BD0E4 800C00E4 4BFDB23D */  bl        PPCMfhid2
/* 0BD0E8 800C00E8 546000C7 */  rlwinm.   r0, r3, 0, 3, 3
/* 0BD0EC 800C00EC 418201D4 */  beq       lbl_800C02C0
/* 0BD0F0 800C00F0 800D8F74 */  lwz       r0, D_8018BEF4@sda21(r0)
/* 0BD0F4 800C00F4 2C000000 */  cmpwi     r0, 0x0
/* 0BD0F8 800C00F8 418201D0 */  beq       lbl_800C02C8
/* 0BD0FC 800C00FC 93ED8F6C */  stw       r31, D_8018BEEC@sda21(r0)
/* 0BD100 800C0100 388006BC */  li        r4, 0x6bc
/* 0BD104 800C0104 806D8F6C */  lwz       r3, D_8018BEEC@sda21(r0)
/* 0BD108 800C0108 3803001F */  addi      r0, r3, 0x1f
/* 0BD10C 800C010C 54030034 */  clrrwi    r3, r0, 5
/* 0BD110 800C0110 906D8F70 */  stw       r3, D_8018BEF0@sda21(r0)
/* 0BD114 800C0114 380306BC */  addi      r0, r3, 0x6bc
/* 0BD118 800C0118 900D8F6C */  stw       r0, D_8018BEEC@sda21(r0)
/* 0BD11C 800C011C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD120 800C0120 4BFDCC31 */  bl        DCZeroRange
/* 0BD124 800C0124 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD128 800C0128 38800021 */  li        r4, 0x21
/* 0BD12C 800C012C 38000000 */  li        r0, 0x0
/* 0BD130 800C0130 908306A4 */  stw       r4, 0x6a4(r3)
/* 0BD134 800C0134 3BE00000 */  li        r31, 0x0
/* 0BD138 800C0138 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD13C 800C013C B0030698 */  sth       r0, 0x698(r3)
/* 0BD140 800C0140 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD144 800C0144 9363069C */  stw       r27, 0x69c(r3)
lbl_800C0148:
/* 0BD148 800C0148 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD14C 800C014C 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD150 800C0150 38030001 */  addi      r0, r3, 0x1
/* 0BD154 800C0154 9004069C */  stw       r0, 0x69c(r4)
/* 0BD158 800C0158 88030000 */  lbz       r0, 0x0(r3)
/* 0BD15C 800C015C 280000FF */  cmplwi    r0, 0xff
/* 0BD160 800C0160 40820150 */  bne       lbl_800C02B0
/* 0BD164 800C0164 48000010 */  b         lbl_800C0174
lbl_800C0168:
/* 0BD168 800C0168 80640000 */  lwz       r3, 0x0(r4)
/* 0BD16C 800C016C 38030001 */  addi      r0, r3, 0x1
/* 0BD170 800C0170 90040000 */  stw       r0, 0x0(r4)
lbl_800C0174:
/* 0BD174 800C0174 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD178 800C0178 3883069C */  addi      r4, r3, 0x69c
/* 0BD17C 800C017C 8063069C */  lwz       r3, 0x69c(r3)
/* 0BD180 800C0180 88030000 */  lbz       r0, 0x0(r3)
/* 0BD184 800C0184 280000FF */  cmplwi    r0, 0xff
/* 0BD188 800C0188 4182FFE0 */  beq       lbl_800C0168
/* 0BD18C 800C018C 38030001 */  addi      r0, r3, 0x1
/* 0BD190 800C0190 90040000 */  stw       r0, 0x0(r4)
/* 0BD194 800C0194 88030000 */  lbz       r0, 0x0(r3)
/* 0BD198 800C0198 280000D7 */  cmplwi    r0, 0xd7
/* 0BD19C 800C019C 41810034 */  bgt       lbl_800C01D0
/* 0BD1A0 800C01A0 280000C4 */  cmplwi    r0, 0xc4
/* 0BD1A4 800C01A4 40820014 */  bne       lbl_800C01B8
/* 0BD1A8 800C01A8 48000791 */  bl        __THPReadHuffmanTableSpecification
/* 0BD1AC 800C01AC 5460063F */  clrlwi.   r0, r3, 24
/* 0BD1B0 800C01B0 40820108 */  bne       lbl_800C02B8
/* 0BD1B4 800C01B4 480000B8 */  b         lbl_800C026C
lbl_800C01B8:
/* 0BD1B8 800C01B8 280000C0 */  cmplwi    r0, 0xc0
/* 0BD1BC 800C01BC 408200EC */  bne       lbl_800C02A8
/* 0BD1C0 800C01C0 48000165 */  bl        __THPReadFrameHeader
/* 0BD1C4 800C01C4 5460063F */  clrlwi.   r0, r3, 24
/* 0BD1C8 800C01C8 408200F0 */  bne       lbl_800C02B8
/* 0BD1CC 800C01CC 480000A0 */  b         lbl_800C026C
lbl_800C01D0:
/* 0BD1D0 800C01D0 280000D8 */  cmplwi    r0, 0xd8
/* 0BD1D4 800C01D4 4180005C */  blt       lbl_800C0230
/* 0BD1D8 800C01D8 280000DF */  cmplwi    r0, 0xdf
/* 0BD1DC 800C01DC 41810054 */  bgt       lbl_800C0230
/* 0BD1E0 800C01E0 280000DD */  cmplwi    r0, 0xdd
/* 0BD1E4 800C01E4 4082000C */  bne       lbl_800C01F0
/* 0BD1E8 800C01E8 48000C45 */  bl        __THPRestartDefinition
/* 0BD1EC 800C01EC 48000080 */  b         lbl_800C026C
lbl_800C01F0:
/* 0BD1F0 800C01F0 280000DB */  cmplwi    r0, 0xdb
/* 0BD1F4 800C01F4 40820014 */  bne       lbl_800C0208
/* 0BD1F8 800C01F8 48000385 */  bl        __THPReadQuantizationTable
/* 0BD1FC 800C01FC 5460063F */  clrlwi.   r0, r3, 24
/* 0BD200 800C0200 408200B8 */  bne       lbl_800C02B8
/* 0BD204 800C0204 48000068 */  b         lbl_800C026C
lbl_800C0208:
/* 0BD208 800C0208 280000DA */  cmplwi    r0, 0xda
/* 0BD20C 800C020C 40820018 */  bne       lbl_800C0224
/* 0BD210 800C0210 48000251 */  bl        __THPReadScaneHeader
/* 0BD214 800C0214 5460063F */  clrlwi.   r0, r3, 24
/* 0BD218 800C0218 408200A0 */  bne       lbl_800C02B8
/* 0BD21C 800C021C 3BE00001 */  li        r31, 0x1
/* 0BD220 800C0220 4800004C */  b         lbl_800C026C
lbl_800C0224:
/* 0BD224 800C0224 280000D8 */  cmplwi    r0, 0xd8
/* 0BD228 800C0228 41820044 */  beq       lbl_800C026C
/* 0BD22C 800C022C 4800007C */  b         lbl_800C02A8
lbl_800C0230:
/* 0BD230 800C0230 280000E0 */  cmplwi    r0, 0xe0
/* 0BD234 800C0234 41800038 */  blt       lbl_800C026C
/* 0BD238 800C0238 4180000C */  blt       lbl_800C0244
/* 0BD23C 800C023C 280000EF */  cmplwi    r0, 0xef
/* 0BD240 800C0240 4081000C */  ble       lbl_800C024C
lbl_800C0244:
/* 0BD244 800C0244 280000FE */  cmplwi    r0, 0xfe
/* 0BD248 800C0248 40820060 */  bne       lbl_800C02A8
lbl_800C024C:
/* 0BD24C 800C024C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD250 800C0250 8083069C */  lwz       r4, 0x69c(r3)
/* 0BD254 800C0254 38A3069C */  addi      r5, r3, 0x69c
/* 0BD258 800C0258 88640000 */  lbz       r3, 0x0(r4)
/* 0BD25C 800C025C 88040001 */  lbz       r0, 0x1(r4)
/* 0BD260 800C0260 5060442E */  rlwimi    r0, r3, 8, 16, 23
/* 0BD264 800C0264 7C040214 */  add       r0, r4, r0
/* 0BD268 800C0268 90050000 */  stw       r0, 0x0(r5)
lbl_800C026C:
/* 0BD26C 800C026C 57E0063F */  clrlwi.   r0, r31, 24
/* 0BD270 800C0270 4182FED8 */  beq       lbl_800C0148
/* 0BD274 800C0274 4800006D */  bl        __THPSetupBuffers
/* 0BD278 800C0278 387C0000 */  addi      r3, r28, 0x0
/* 0BD27C 800C027C 389D0000 */  addi      r4, r29, 0x0
/* 0BD280 800C0280 38BE0000 */  addi      r5, r30, 0x0
/* 0BD284 800C0284 48000E49 */  bl        __THPDecompressYUV
/* 0BD288 800C0288 38600000 */  li        r3, 0x0
/* 0BD28C 800C028C 48000040 */  b         lbl_800C02CC
lbl_800C0290:
/* 0BD290 800C0290 38600019 */  li        r3, 0x19
/* 0BD294 800C0294 48000038 */  b         lbl_800C02CC
lbl_800C0298:
/* 0BD298 800C0298 3860001B */  li        r3, 0x1b
/* 0BD29C 800C029C 48000030 */  b         lbl_800C02CC
lbl_800C02A0:
/* 0BD2A0 800C02A0 3860001A */  li        r3, 0x1a
/* 0BD2A4 800C02A4 48000028 */  b         lbl_800C02CC
lbl_800C02A8:
/* 0BD2A8 800C02A8 3860000B */  li        r3, 0xb
/* 0BD2AC 800C02AC 48000020 */  b         lbl_800C02CC
lbl_800C02B0:
/* 0BD2B0 800C02B0 38600003 */  li        r3, 0x3
/* 0BD2B4 800C02B4 48000018 */  b         lbl_800C02CC
lbl_800C02B8:
/* 0BD2B8 800C02B8 5463063E */  clrlwi    r3, r3, 24
/* 0BD2BC 800C02BC 48000010 */  b         lbl_800C02CC
lbl_800C02C0:
/* 0BD2C0 800C02C0 3860001C */  li        r3, 0x1c
/* 0BD2C4 800C02C4 48000008 */  b         lbl_800C02CC
lbl_800C02C8:
/* 0BD2C8 800C02C8 3860001D */  li        r3, 0x1d
lbl_800C02CC:
/* 0BD2CC 800C02CC BB610024 */  lmw       r27, 0x24(r1)
/* 0BD2D0 800C02D0 8001003C */  lwz       r0, 0x3c(r1)
/* 0BD2D4 800C02D4 38210038 */  addi      r1, r1, 0x38
/* 0BD2D8 800C02D8 7C0803A6 */  mtlr      r0
/* 0BD2DC 800C02DC 4E800020 */  blr

glabel __THPSetupBuffers
/* 0BD2E0 800C02E0 808D8F6C */  lwz       r4, D_8018BEEC@sda21(r0)
/* 0BD2E4 800C02E4 3C608019 */  lis       r3, D_80188DD8@ha
/* 0BD2E8 800C02E8 38A38DD8 */  addi      r5, r3, D_80188DD8@l
/* 0BD2EC 800C02EC 3804001F */  addi      r0, r4, 0x1f
/* 0BD2F0 800C02F0 54060034 */  clrrwi    r6, r0, 5
/* 0BD2F4 800C02F4 90C50000 */  stw       r6, 0x0(r5)
/* 0BD2F8 800C02F8 38660080 */  addi      r3, r6, 0x80
/* 0BD2FC 800C02FC 38060100 */  addi      r0, r6, 0x100
/* 0BD300 800C0300 90650004 */  stw       r3, 0x4(r5)
/* 0BD304 800C0304 38860180 */  addi      r4, r6, 0x180
/* 0BD308 800C0308 38660200 */  addi      r3, r6, 0x200
/* 0BD30C 800C030C 90050008 */  stw       r0, 0x8(r5)
/* 0BD310 800C0310 38060280 */  addi      r0, r6, 0x280
/* 0BD314 800C0314 9085000C */  stw       r4, 0xc(r5)
/* 0BD318 800C0318 90650010 */  stw       r3, 0x10(r5)
/* 0BD31C 800C031C 90050014 */  stw       r0, 0x14(r5)
/* 0BD320 800C0320 4E800020 */  blr

glabel __THPReadFrameHeader
/* 0BD324 800C0324 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD328 800C0328 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD32C 800C032C 38030002 */  addi      r0, r3, 0x2
/* 0BD330 800C0330 9004069C */  stw       r0, 0x69c(r4)
/* 0BD334 800C0334 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD338 800C0338 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD33C 800C033C 38030001 */  addi      r0, r3, 0x1
/* 0BD340 800C0340 9004069C */  stw       r0, 0x69c(r4)
/* 0BD344 800C0344 88030000 */  lbz       r0, 0x0(r3)
/* 0BD348 800C0348 28000008 */  cmplwi    r0, 0x8
/* 0BD34C 800C034C 4182000C */  beq       lbl_800C0358
/* 0BD350 800C0350 3860000A */  li        r3, 0xa
/* 0BD354 800C0354 4E800020 */  blr
lbl_800C0358:
/* 0BD358 800C0358 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD35C 800C035C 8085069C */  lwz       r4, 0x69c(r5)
/* 0BD360 800C0360 88640000 */  lbz       r3, 0x0(r4)
/* 0BD364 800C0364 88040001 */  lbz       r0, 0x1(r4)
/* 0BD368 800C0368 5060442E */  rlwimi    r0, r3, 8, 16, 23
/* 0BD36C 800C036C B0050694 */  sth       r0, 0x694(r5)
/* 0BD370 800C0370 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD374 800C0374 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD378 800C0378 38030002 */  addi      r0, r3, 0x2
/* 0BD37C 800C037C 9004069C */  stw       r0, 0x69c(r4)
/* 0BD380 800C0380 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD384 800C0384 8085069C */  lwz       r4, 0x69c(r5)
/* 0BD388 800C0388 88640000 */  lbz       r3, 0x0(r4)
/* 0BD38C 800C038C 88040001 */  lbz       r0, 0x1(r4)
/* 0BD390 800C0390 5060442E */  rlwimi    r0, r3, 8, 16, 23
/* 0BD394 800C0394 B0050692 */  sth       r0, 0x692(r5)
/* 0BD398 800C0398 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD39C 800C039C 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD3A0 800C03A0 38030002 */  addi      r0, r3, 0x2
/* 0BD3A4 800C03A4 9004069C */  stw       r0, 0x69c(r4)
/* 0BD3A8 800C03A8 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD3AC 800C03AC 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD3B0 800C03B0 38030001 */  addi      r0, r3, 0x1
/* 0BD3B4 800C03B4 9004069C */  stw       r0, 0x69c(r4)
/* 0BD3B8 800C03B8 88030000 */  lbz       r0, 0x0(r3)
/* 0BD3BC 800C03BC 28000003 */  cmplwi    r0, 0x3
/* 0BD3C0 800C03C0 4182000C */  beq       lbl_800C03CC
/* 0BD3C4 800C03C4 3860000C */  li        r3, 0xc
/* 0BD3C8 800C03C8 4E800020 */  blr
lbl_800C03CC:
/* 0BD3CC 800C03CC 38E00000 */  li        r7, 0x0
/* 0BD3D0 800C03D0 38C00000 */  li        r6, 0x0
/* 0BD3D4 800C03D4 48000078 */  b         lbl_800C044C
lbl_800C03D8:
/* 0BD3D8 800C03D8 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD3DC 800C03DC 54E0063F */  clrlwi.   r0, r7, 24
/* 0BD3E0 800C03E0 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD3E4 800C03E4 38030001 */  addi      r0, r3, 0x1
/* 0BD3E8 800C03E8 9004069C */  stw       r0, 0x69c(r4)
/* 0BD3EC 800C03EC 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD3F0 800C03F0 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD3F4 800C03F4 38030001 */  addi      r0, r3, 0x1
/* 0BD3F8 800C03F8 9004069C */  stw       r0, 0x69c(r4)
/* 0BD3FC 800C03FC 88630000 */  lbz       r3, 0x0(r3)
/* 0BD400 800C0400 4082000C */  bne       lbl_800C040C
/* 0BD404 800C0404 28030022 */  cmplwi    r3, 0x22
/* 0BD408 800C0408 40820014 */  bne       lbl_800C041C
lbl_800C040C:
/* 0BD40C 800C040C 54E0063F */  clrlwi.   r0, r7, 24
/* 0BD410 800C0410 41820014 */  beq       lbl_800C0424
/* 0BD414 800C0414 28030011 */  cmplwi    r3, 0x11
/* 0BD418 800C0418 4182000C */  beq       lbl_800C0424
lbl_800C041C:
/* 0BD41C 800C041C 38600013 */  li        r3, 0x13
/* 0BD420 800C0420 4E800020 */  blr
lbl_800C0424:
/* 0BD424 800C0424 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD428 800C0428 38060680 */  addi      r0, r6, 0x680
/* 0BD42C 800C042C 38C60006 */  addi      r6, r6, 0x6
/* 0BD430 800C0430 8085069C */  lwz       r4, 0x69c(r5)
/* 0BD434 800C0434 38E70001 */  addi      r7, r7, 0x1
/* 0BD438 800C0438 38640001 */  addi      r3, r4, 0x1
/* 0BD43C 800C043C 9065069C */  stw       r3, 0x69c(r5)
/* 0BD440 800C0440 88840000 */  lbz       r4, 0x0(r4)
/* 0BD444 800C0444 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD448 800C0448 7C8301AE */  stbx      r4, r3, r0
lbl_800C044C:
/* 0BD44C 800C044C 54E0063E */  clrlwi    r0, r7, 24
/* 0BD450 800C0450 28000003 */  cmplwi    r0, 0x3
/* 0BD454 800C0454 4180FF84 */  blt       lbl_800C03D8
/* 0BD458 800C0458 38600000 */  li        r3, 0x0
/* 0BD45C 800C045C 4E800020 */  blr

glabel __THPReadScaneHeader
/* 0BD460 800C0460 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD464 800C0464 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD468 800C0468 38030002 */  addi      r0, r3, 0x2
/* 0BD46C 800C046C 9004069C */  stw       r0, 0x69c(r4)
/* 0BD470 800C0470 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD474 800C0474 8064069C */  lwz       r3, 0x69c(r4)
/* 0BD478 800C0478 38030001 */  addi      r0, r3, 0x1
/* 0BD47C 800C047C 9004069C */  stw       r0, 0x69c(r4)
/* 0BD480 800C0480 88030000 */  lbz       r0, 0x0(r3)
/* 0BD484 800C0484 28000003 */  cmplwi    r0, 0x3
/* 0BD488 800C0488 4182000C */  beq       lbl_800C0494
/* 0BD48C 800C048C 3860000C */  li        r3, 0xc
/* 0BD490 800C0490 4E800020 */  blr
lbl_800C0494:
/* 0BD494 800C0494 39200000 */  li        r9, 0x0
/* 0BD498 800C0498 39000000 */  li        r8, 0x0
/* 0BD49C 800C049C 48000088 */  b         lbl_800C0524
lbl_800C04A0:
/* 0BD4A0 800C04A0 80CD8F70 */  lwz       r6, D_8018BEF0@sda21(r0)
/* 0BD4A4 800C04A4 38080681 */  addi      r0, r8, 0x681
/* 0BD4A8 800C04A8 38880682 */  addi      r4, r8, 0x682
/* 0BD4AC 800C04AC 80A6069C */  lwz       r5, 0x69c(r6)
/* 0BD4B0 800C04B0 38600001 */  li        r3, 0x1
/* 0BD4B4 800C04B4 38A50001 */  addi      r5, r5, 0x1
/* 0BD4B8 800C04B8 90A6069C */  stw       r5, 0x69c(r6)
/* 0BD4BC 800C04BC 80ED8F70 */  lwz       r7, D_8018BEF0@sda21(r0)
/* 0BD4C0 800C04C0 80C7069C */  lwz       r6, 0x69c(r7)
/* 0BD4C4 800C04C4 38A60001 */  addi      r5, r6, 0x1
/* 0BD4C8 800C04C8 90A7069C */  stw       r5, 0x69c(r7)
/* 0BD4CC 800C04CC 88E60000 */  lbz       r7, 0x0(r6)
/* 0BD4D0 800C04D0 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD4D4 800C04D4 7CE62670 */  srawi     r6, r7, 4
/* 0BD4D8 800C04D8 7CC501AE */  stbx      r6, r5, r0
/* 0BD4DC 800C04DC 54E7073E */  clrlwi    r7, r7, 28
/* 0BD4E0 800C04E0 7C603030 */  slw       r0, r3, r6
/* 0BD4E4 800C04E4 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD4E8 800C04E8 7CE521AE */  stbx      r7, r5, r4
/* 0BD4EC 800C04EC 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD4F0 800C04F0 888406A8 */  lbz       r4, 0x6a8(r4)
/* 0BD4F4 800C04F4 7C800039 */  and.      r0, r4, r0
/* 0BD4F8 800C04F8 4082000C */  bne       lbl_800C0504
/* 0BD4FC 800C04FC 3860000F */  li        r3, 0xf
/* 0BD500 800C0500 4E800020 */  blr
lbl_800C0504:
/* 0BD504 800C0504 38070001 */  addi      r0, r7, 0x1
/* 0BD508 800C0508 7C600030 */  slw       r0, r3, r0
/* 0BD50C 800C050C 7C800039 */  and.      r0, r4, r0
/* 0BD510 800C0510 4082000C */  bne       lbl_800C051C
/* 0BD514 800C0514 3860000F */  li        r3, 0xf
/* 0BD518 800C0518 4E800020 */  blr
lbl_800C051C:
/* 0BD51C 800C051C 39080006 */  addi      r8, r8, 0x6
/* 0BD520 800C0520 39290001 */  addi      r9, r9, 0x1
lbl_800C0524:
/* 0BD524 800C0524 5520063E */  clrlwi    r0, r9, 24
/* 0BD528 800C0528 28000003 */  cmplwi    r0, 0x3
/* 0BD52C 800C052C 4180FF74 */  blt       lbl_800C04A0
/* 0BD530 800C0530 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD534 800C0534 38000000 */  li        r0, 0x0
/* 0BD538 800C0538 38600000 */  li        r3, 0x0
/* 0BD53C 800C053C 8085069C */  lwz       r4, 0x69c(r5)
/* 0BD540 800C0540 38840003 */  addi      r4, r4, 0x3
/* 0BD544 800C0544 9085069C */  stw       r4, 0x69c(r5)
/* 0BD548 800C0548 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD54C 800C054C A0850692 */  lhz       r4, 0x692(r5)
/* 0BD550 800C0550 3884000F */  addi      r4, r4, 0xf
/* 0BD554 800C0554 7C842670 */  srawi     r4, r4, 4
/* 0BD558 800C0558 7C840194 */  addze     r4, r4
/* 0BD55C 800C055C B0850696 */  sth       r4, 0x696(r5)
/* 0BD560 800C0560 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD564 800C0564 B0040684 */  sth       r0, 0x684(r4)
/* 0BD568 800C0568 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD56C 800C056C B004068A */  sth       r0, 0x68a(r4)
/* 0BD570 800C0570 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD574 800C0574 B0040690 */  sth       r0, 0x690(r4)
/* 0BD578 800C0578 4E800020 */  blr

glabel __THPReadQuantizationTable
/* 0BD57C 800C057C 9421FE78 */  stwu      r1, -0x188(r1)
/* 0BD580 800C0580 3C80800D */  lis       r4, D_800D1DF0@ha
/* 0BD584 800C0584 38841DF0 */  addi      r4, r4, D_800D1DF0@l
/* 0BD588 800C0588 BEA1015C */  stmw      r21, 0x15c(r1)
/* 0BD58C 800C058C 38C40050 */  addi      r6, r4, 0x50
/* 0BD590 800C0590 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD594 800C0594 80A3069C */  lwz       r5, 0x69c(r3)
/* 0BD598 800C0598 3903069C */  addi      r8, r3, 0x69c
/* 0BD59C 800C059C 38610014 */  addi      r3, r1, 0x14
/* 0BD5A0 800C05A0 88E50000 */  lbz       r7, 0x0(r5)
/* 0BD5A4 800C05A4 38050002 */  addi      r0, r5, 0x2
/* 0BD5A8 800C05A8 88A50001 */  lbz       r5, 0x1(r5)
/* 0BD5AC 800C05AC 50E5442E */  rlwimi    r5, r7, 8, 16, 23
/* 0BD5B0 800C05B0 90080000 */  stw       r0, 0x0(r8)
/* 0BD5B4 800C05B4 54A7043E */  clrlwi    r7, r5, 16
/* 0BD5B8 800C05B8 3C004330 */  lis       r0, 0x4330
/* 0BD5BC 800C05BC C8028508 */  lfd       f0, D_8018C448@sda21(r0)
/* 0BD5C0 800C05C0 38E7FFFE */  subi      r7, r7, 0x2
lbl_800C05C4:
/* 0BD5C4 800C05C4 816D8F70 */  lwz       r11, D_8018BEF0@sda21(r0)
/* 0BD5C8 800C05C8 38A40000 */  addi      r5, r4, 0x0
/* 0BD5CC 800C05CC 39200000 */  li        r9, 0x0
/* 0BD5D0 800C05D0 814B069C */  lwz       r10, 0x69c(r11)
/* 0BD5D4 800C05D4 390A0001 */  addi      r8, r10, 0x1
/* 0BD5D8 800C05D8 910B069C */  stw       r8, 0x69c(r11)
/* 0BD5DC 800C05DC 890A0000 */  lbz       r8, 0x0(r10)
/* 0BD5E0 800C05E0 480001C4 */  b         lbl_800C07A4
lbl_800C05E4:
/* 0BD5E4 800C05E4 83CD8F70 */  lwz       r30, D_8018BEF0@sda21(r0)
/* 0BD5E8 800C05E8 3B890001 */  addi      r28, r9, 0x1
/* 0BD5EC 800C05EC 3BA90002 */  addi      r29, r9, 0x2
/* 0BD5F0 800C05F0 837E069C */  lwz       r27, 0x69c(r30)
/* 0BD5F4 800C05F4 39890003 */  addi      r12, r9, 0x3
/* 0BD5F8 800C05F8 39690004 */  addi      r11, r9, 0x4
/* 0BD5FC 800C05FC 395B0001 */  addi      r10, r27, 0x1
/* 0BD600 800C0600 915E069C */  stw       r10, 0x69c(r30)
/* 0BD604 800C0604 39490005 */  addi      r10, r9, 0x5
/* 0BD608 800C0608 579C043E */  clrlwi    r28, r28, 16
/* 0BD60C 800C060C 8BDB0000 */  lbz       r30, 0x0(r27)
/* 0BD610 800C0610 57BD043E */  clrlwi    r29, r29, 16
/* 0BD614 800C0614 8B650000 */  lbz       r27, 0x0(r5)
/* 0BD618 800C0618 558C043E */  clrlwi    r12, r12, 16
/* 0BD61C 800C061C 93C10154 */  stw       r30, 0x154(r1)
/* 0BD620 800C0620 577B103A */  slwi      r27, r27, 2
/* 0BD624 800C0624 90010150 */  stw       r0, 0x150(r1)
/* 0BD628 800C0628 556B043E */  clrlwi    r11, r11, 16
/* 0BD62C 800C062C 554A043E */  clrlwi    r10, r10, 16
/* 0BD630 800C0630 C8210150 */  lfd       f1, 0x150(r1)
/* 0BD634 800C0634 EC210028 */  fsubs     f1, f1, f0
/* 0BD638 800C0638 7C23DD2E */  stfsx     f1, r3, r27
/* 0BD63C 800C063C 836D8F70 */  lwz       r27, D_8018BEF0@sda21(r0)
/* 0BD640 800C0640 83FB069C */  lwz       r31, 0x69c(r27)
/* 0BD644 800C0644 3BDF0001 */  addi      r30, r31, 0x1
/* 0BD648 800C0648 93DB069C */  stw       r30, 0x69c(r27)
/* 0BD64C 800C064C 8BDF0000 */  lbz       r30, 0x0(r31)
/* 0BD650 800C0650 7F84E0AE */  lbzx      r28, r4, r28
/* 0BD654 800C0654 93C1014C */  stw       r30, 0x14c(r1)
/* 0BD658 800C0658 579C103A */  slwi      r28, r28, 2
/* 0BD65C 800C065C 90010148 */  stw       r0, 0x148(r1)
/* 0BD660 800C0660 C8210148 */  lfd       f1, 0x148(r1)
/* 0BD664 800C0664 EC210028 */  fsubs     f1, f1, f0
/* 0BD668 800C0668 7C23E52E */  stfsx     f1, r3, r28
/* 0BD66C 800C066C 838D8F70 */  lwz       r28, D_8018BEF0@sda21(r0)
/* 0BD670 800C0670 83FC069C */  lwz       r31, 0x69c(r28)
/* 0BD674 800C0674 3BDF0001 */  addi      r30, r31, 0x1
/* 0BD678 800C0678 93DC069C */  stw       r30, 0x69c(r28)
/* 0BD67C 800C067C 8BDF0000 */  lbz       r30, 0x0(r31)
/* 0BD680 800C0680 7FA4E8AE */  lbzx      r29, r4, r29
/* 0BD684 800C0684 93C10144 */  stw       r30, 0x144(r1)
/* 0BD688 800C0688 57BD103A */  slwi      r29, r29, 2
/* 0BD68C 800C068C 90010140 */  stw       r0, 0x140(r1)
/* 0BD690 800C0690 C8210140 */  lfd       f1, 0x140(r1)
/* 0BD694 800C0694 EC210028 */  fsubs     f1, f1, f0
/* 0BD698 800C0698 7C23ED2E */  stfsx     f1, r3, r29
/* 0BD69C 800C069C 83ED8F70 */  lwz       r31, D_8018BEF0@sda21(r0)
/* 0BD6A0 800C06A0 83DF069C */  lwz       r30, 0x69c(r31)
/* 0BD6A4 800C06A4 3BBE0001 */  addi      r29, r30, 0x1
/* 0BD6A8 800C06A8 93BF069C */  stw       r29, 0x69c(r31)
/* 0BD6AC 800C06AC 8BBE0000 */  lbz       r29, 0x0(r30)
/* 0BD6B0 800C06B0 7D8460AE */  lbzx      r12, r4, r12
/* 0BD6B4 800C06B4 93A1013C */  stw       r29, 0x13c(r1)
/* 0BD6B8 800C06B8 558C103A */  slwi      r12, r12, 2
/* 0BD6BC 800C06BC 90010138 */  stw       r0, 0x138(r1)
/* 0BD6C0 800C06C0 C8210138 */  lfd       f1, 0x138(r1)
/* 0BD6C4 800C06C4 EC210028 */  fsubs     f1, f1, f0
/* 0BD6C8 800C06C8 7C23652E */  stfsx     f1, r3, r12
/* 0BD6CC 800C06CC 83CD8F70 */  lwz       r30, D_8018BEF0@sda21(r0)
/* 0BD6D0 800C06D0 83BE069C */  lwz       r29, 0x69c(r30)
/* 0BD6D4 800C06D4 399D0001 */  addi      r12, r29, 0x1
/* 0BD6D8 800C06D8 919E069C */  stw       r12, 0x69c(r30)
/* 0BD6DC 800C06DC 899D0000 */  lbz       r12, 0x0(r29)
/* 0BD6E0 800C06E0 7D6458AE */  lbzx      r11, r4, r11
/* 0BD6E4 800C06E4 91810134 */  stw       r12, 0x134(r1)
/* 0BD6E8 800C06E8 556B103A */  slwi      r11, r11, 2
/* 0BD6EC 800C06EC 90010130 */  stw       r0, 0x130(r1)
/* 0BD6F0 800C06F0 C8210130 */  lfd       f1, 0x130(r1)
/* 0BD6F4 800C06F4 EC210028 */  fsubs     f1, f1, f0
/* 0BD6F8 800C06F8 7C235D2E */  stfsx     f1, r3, r11
/* 0BD6FC 800C06FC 83AD8F70 */  lwz       r29, D_8018BEF0@sda21(r0)
/* 0BD700 800C0700 819D069C */  lwz       r12, 0x69c(r29)
/* 0BD704 800C0704 396C0001 */  addi      r11, r12, 0x1
/* 0BD708 800C0708 917D069C */  stw       r11, 0x69c(r29)
/* 0BD70C 800C070C 896C0000 */  lbz       r11, 0x0(r12)
/* 0BD710 800C0710 7D4450AE */  lbzx      r10, r4, r10
/* 0BD714 800C0714 9161012C */  stw       r11, 0x12c(r1)
/* 0BD718 800C0718 554A103A */  slwi      r10, r10, 2
/* 0BD71C 800C071C 90010128 */  stw       r0, 0x128(r1)
/* 0BD720 800C0720 C8210128 */  lfd       f1, 0x128(r1)
/* 0BD724 800C0724 EC210028 */  fsubs     f1, f1, f0
/* 0BD728 800C0728 7C23552E */  stfsx     f1, r3, r10
/* 0BD72C 800C072C 83CD8F70 */  lwz       r30, D_8018BEF0@sda21(r0)
/* 0BD730 800C0730 39690006 */  addi      r11, r9, 0x6
/* 0BD734 800C0734 39490007 */  addi      r10, r9, 0x7
/* 0BD738 800C0738 83BE069C */  lwz       r29, 0x69c(r30)
/* 0BD73C 800C073C 556B043E */  clrlwi    r11, r11, 16
/* 0BD740 800C0740 554A043E */  clrlwi    r10, r10, 16
/* 0BD744 800C0744 399D0001 */  addi      r12, r29, 0x1
/* 0BD748 800C0748 919E069C */  stw       r12, 0x69c(r30)
/* 0BD74C 800C074C 38A50008 */  addi      r5, r5, 0x8
/* 0BD750 800C0750 39290008 */  addi      r9, r9, 0x8
/* 0BD754 800C0754 899D0000 */  lbz       r12, 0x0(r29)
/* 0BD758 800C0758 7D6458AE */  lbzx      r11, r4, r11
/* 0BD75C 800C075C 91810124 */  stw       r12, 0x124(r1)
/* 0BD760 800C0760 556B103A */  slwi      r11, r11, 2
/* 0BD764 800C0764 90010120 */  stw       r0, 0x120(r1)
/* 0BD768 800C0768 C8210120 */  lfd       f1, 0x120(r1)
/* 0BD76C 800C076C EC210028 */  fsubs     f1, f1, f0
/* 0BD770 800C0770 7C235D2E */  stfsx     f1, r3, r11
/* 0BD774 800C0774 83AD8F70 */  lwz       r29, D_8018BEF0@sda21(r0)
/* 0BD778 800C0778 819D069C */  lwz       r12, 0x69c(r29)
/* 0BD77C 800C077C 396C0001 */  addi      r11, r12, 0x1
/* 0BD780 800C0780 917D069C */  stw       r11, 0x69c(r29)
/* 0BD784 800C0784 896C0000 */  lbz       r11, 0x0(r12)
/* 0BD788 800C0788 7D4450AE */  lbzx      r10, r4, r10
/* 0BD78C 800C078C 9161011C */  stw       r11, 0x11c(r1)
/* 0BD790 800C0790 554A103A */  slwi      r10, r10, 2
/* 0BD794 800C0794 90010118 */  stw       r0, 0x118(r1)
/* 0BD798 800C0798 C8210118 */  lfd       f1, 0x118(r1)
/* 0BD79C 800C079C EC210028 */  fsubs     f1, f1, f0
/* 0BD7A0 800C07A0 7C23552E */  stfsx     f1, r3, r10
lbl_800C07A4:
/* 0BD7A4 800C07A4 552A043E */  clrlwi    r10, r9, 16
/* 0BD7A8 800C07A8 280A0040 */  cmplwi    r10, 0x40
/* 0BD7AC 800C07AC 4180FE38 */  blt       lbl_800C05E4
/* 0BD7B0 800C07B0 83AD8F70 */  lwz       r29, D_8018BEF0@sda21(r0)
/* 0BD7B4 800C07B4 3B660000 */  addi      r27, r6, 0x0
/* 0BD7B8 800C07B8 551C402E */  slwi      r28, r8, 8
/* 0BD7BC 800C07BC 38A00000 */  li        r5, 0x0
/* 0BD7C0 800C07C0 39000000 */  li        r8, 0x0
/* 0BD7C4 800C07C4 4800014C */  b         lbl_800C0910
lbl_800C07C8:
/* 0BD7C8 800C07C8 54AB13BA */  clrlslwi  r11, r5, 16, 2
/* 0BD7CC 800C07CC C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD7D0 800C07D0 7C435C2E */  lfsx      f2, r3, r11
/* 0BD7D4 800C07D4 39250001 */  addi      r9, r5, 0x1
/* 0BD7D8 800C07D8 552C13BA */  clrlslwi  r12, r9, 16, 2
/* 0BD7DC 800C07DC C8660000 */  lfd       f3, 0x0(r6)
/* 0BD7E0 800C07E0 FC220072 */  fmul      f1, f2, f1
/* 0BD7E4 800C07E4 39250002 */  addi      r9, r5, 0x2
/* 0BD7E8 800C07E8 553A13BA */  clrlslwi  r26, r9, 16, 2
/* 0BD7EC 800C07EC 39250003 */  addi      r9, r5, 0x3
/* 0BD7F0 800C07F0 FC230072 */  fmul      f1, f3, f1
/* 0BD7F4 800C07F4 553913BA */  clrlslwi  r25, r9, 16, 2
/* 0BD7F8 800C07F8 39450004 */  addi      r10, r5, 0x4
/* 0BD7FC 800C07FC 555813BA */  clrlslwi  r24, r10, 16, 2
/* 0BD800 800C0800 FC200818 */  frsp      f1, f1
/* 0BD804 800C0804 7D3D5A14 */  add       r9, r29, r11
/* 0BD808 800C0808 39450007 */  addi      r10, r5, 0x7
/* 0BD80C 800C080C 7C3C4D2E */  stfsx     f1, r28, r9
/* 0BD810 800C0810 39250005 */  addi      r9, r5, 0x5
/* 0BD814 800C0814 553713BA */  clrlslwi  r23, r9, 16, 2
/* 0BD818 800C0818 7C43642E */  lfsx      f2, r3, r12
/* 0BD81C 800C081C 39250006 */  addi      r9, r5, 0x6
/* 0BD820 800C0820 C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD824 800C0824 553613BA */  clrlslwi  r22, r9, 16, 2
/* 0BD828 800C0828 7D3D6214 */  add       r9, r29, r12
/* 0BD82C 800C082C FC220072 */  fmul      f1, f2, f1
/* 0BD830 800C0830 C8660008 */  lfd       f3, 0x8(r6)
/* 0BD834 800C0834 555513BA */  clrlslwi  r21, r10, 16, 2
/* 0BD838 800C0838 7FDDD214 */  add       r30, r29, r26
/* 0BD83C 800C083C 7FFDCA14 */  add       r31, r29, r25
/* 0BD840 800C0840 FC230072 */  fmul      f1, f3, f1
/* 0BD844 800C0844 7D9DC214 */  add       r12, r29, r24
/* 0BD848 800C0848 7D7DBA14 */  add       r11, r29, r23
/* 0BD84C 800C084C 7D5DB214 */  add       r10, r29, r22
/* 0BD850 800C0850 38A50008 */  addi      r5, r5, 0x8
/* 0BD854 800C0854 FC200818 */  frsp      f1, f1
/* 0BD858 800C0858 39080001 */  addi      r8, r8, 0x1
/* 0BD85C 800C085C 7C3C4D2E */  stfsx     f1, r28, r9
/* 0BD860 800C0860 7D3DAA14 */  add       r9, r29, r21
/* 0BD864 800C0864 7C43D42E */  lfsx      f2, r3, r26
/* 0BD868 800C0868 C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD86C 800C086C C8660010 */  lfd       f3, 0x10(r6)
/* 0BD870 800C0870 FC220072 */  fmul      f1, f2, f1
/* 0BD874 800C0874 FC230072 */  fmul      f1, f3, f1
/* 0BD878 800C0878 FC200818 */  frsp      f1, f1
/* 0BD87C 800C087C 7C3CF52E */  stfsx     f1, r28, r30
/* 0BD880 800C0880 7C43CC2E */  lfsx      f2, r3, r25
/* 0BD884 800C0884 C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD888 800C0888 C8660018 */  lfd       f3, 0x18(r6)
/* 0BD88C 800C088C FC220072 */  fmul      f1, f2, f1
/* 0BD890 800C0890 FC230072 */  fmul      f1, f3, f1
/* 0BD894 800C0894 FC200818 */  frsp      f1, f1
/* 0BD898 800C0898 7C3CFD2E */  stfsx     f1, r28, r31
/* 0BD89C 800C089C 7C43C42E */  lfsx      f2, r3, r24
/* 0BD8A0 800C08A0 C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD8A4 800C08A4 C8660020 */  lfd       f3, 0x20(r6)
/* 0BD8A8 800C08A8 FC220072 */  fmul      f1, f2, f1
/* 0BD8AC 800C08AC FC230072 */  fmul      f1, f3, f1
/* 0BD8B0 800C08B0 FC200818 */  frsp      f1, f1
/* 0BD8B4 800C08B4 7C3C652E */  stfsx     f1, r28, r12
/* 0BD8B8 800C08B8 7C43BC2E */  lfsx      f2, r3, r23
/* 0BD8BC 800C08BC C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD8C0 800C08C0 C8660028 */  lfd       f3, 0x28(r6)
/* 0BD8C4 800C08C4 FC220072 */  fmul      f1, f2, f1
/* 0BD8C8 800C08C8 FC230072 */  fmul      f1, f3, f1
/* 0BD8CC 800C08CC FC200818 */  frsp      f1, f1
/* 0BD8D0 800C08D0 7C3C5D2E */  stfsx     f1, r28, r11
/* 0BD8D4 800C08D4 7C43B42E */  lfsx      f2, r3, r22
/* 0BD8D8 800C08D8 C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD8DC 800C08DC C8660030 */  lfd       f3, 0x30(r6)
/* 0BD8E0 800C08E0 FC220072 */  fmul      f1, f2, f1
/* 0BD8E4 800C08E4 FC230072 */  fmul      f1, f3, f1
/* 0BD8E8 800C08E8 FC200818 */  frsp      f1, f1
/* 0BD8EC 800C08EC 7C3C552E */  stfsx     f1, r28, r10
/* 0BD8F0 800C08F0 C83B0000 */  lfd       f1, 0x0(r27)
/* 0BD8F4 800C08F4 3B7B0008 */  addi      r27, r27, 0x8
/* 0BD8F8 800C08F8 7C43AC2E */  lfsx      f2, r3, r21
/* 0BD8FC 800C08FC C8660038 */  lfd       f3, 0x38(r6)
/* 0BD900 800C0900 FC220072 */  fmul      f1, f2, f1
/* 0BD904 800C0904 FC230072 */  fmul      f1, f3, f1
/* 0BD908 800C0908 FC200818 */  frsp      f1, f1
/* 0BD90C 800C090C 7C3C4D2E */  stfsx     f1, r28, r9
lbl_800C0910:
/* 0BD910 800C0910 5509043E */  clrlwi    r9, r8, 16
/* 0BD914 800C0914 28090008 */  cmplwi    r9, 0x8
/* 0BD918 800C0918 4180FEB0 */  blt       lbl_800C07C8
/* 0BD91C 800C091C 38E7FFBF */  subi      r7, r7, 0x41
/* 0BD920 800C0920 54E5043F */  clrlwi.   r5, r7, 16
/* 0BD924 800C0924 4082FCA0 */  bne       lbl_800C05C4
/* 0BD928 800C0928 38600000 */  li        r3, 0x0
/* 0BD92C 800C092C BAA1015C */  lmw       r21, 0x15c(r1)
/* 0BD930 800C0930 38210188 */  addi      r1, r1, 0x188
/* 0BD934 800C0934 4E800020 */  blr

glabel __THPReadHuffmanTableSpecification
/* 0BD938 800C0938 7C0802A6 */  mflr      r0
/* 0BD93C 800C093C 90010004 */  stw       r0, 0x4(r1)
/* 0BD940 800C0940 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BD944 800C0944 93E1001C */  stw       r31, 0x1c(r1)
/* 0BD948 800C0948 93C10018 */  stw       r30, 0x18(r1)
/* 0BD94C 800C094C 93A10014 */  stw       r29, 0x14(r1)
/* 0BD950 800C0950 808D8F6C */  lwz       r4, D_8018BEEC@sda21(r0)
/* 0BD954 800C0954 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BD958 800C0958 38040101 */  addi      r0, r4, 0x101
/* 0BD95C 800C095C 908D8F08 */  stw       r4, D_8018BE88@sda21(r0)
/* 0BD960 800C0960 38A3069C */  addi      r5, r3, 0x69c
/* 0BD964 800C0964 900D8F0C */  stw       r0, D_8018BE8C@sda21(r0)
/* 0BD968 800C0968 8063069C */  lwz       r3, 0x69c(r3)
/* 0BD96C 800C096C 88830000 */  lbz       r4, 0x0(r3)
/* 0BD970 800C0970 38030002 */  addi      r0, r3, 0x2
/* 0BD974 800C0974 88630001 */  lbz       r3, 0x1(r3)
/* 0BD978 800C0978 5083442E */  rlwimi    r3, r4, 8, 16, 23
/* 0BD97C 800C097C 547E043E */  clrlwi    r30, r3, 16
/* 0BD980 800C0980 90050000 */  stw       r0, 0x0(r5)
/* 0BD984 800C0984 3BDEFFFE */  subi      r30, r30, 0x2
lbl_800C0988:
/* 0BD988 800C0988 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD98C 800C098C 3BA00000 */  li        r29, 0x0
/* 0BD990 800C0990 38600000 */  li        r3, 0x0
/* 0BD994 800C0994 8085069C */  lwz       r4, 0x69c(r5)
/* 0BD998 800C0998 38040001 */  addi      r0, r4, 0x1
/* 0BD99C 800C099C 9005069C */  stw       r0, 0x69c(r5)
/* 0BD9A0 800C09A0 88C40000 */  lbz       r6, 0x0(r4)
/* 0BD9A4 800C09A4 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BD9A8 800C09A8 7CC02670 */  srawi     r0, r6, 4
/* 0BD9AC 800C09AC 80A4069C */  lwz       r5, 0x69c(r4)
/* 0BD9B0 800C09B0 54C40EFC */  clrlslwi  r4, r6, 28, 1
/* 0BD9B4 800C09B4 5400063E */  clrlwi    r0, r0, 24
/* 0BD9B8 800C09B8 7C040214 */  add       r0, r4, r0
/* 0BD9BC 800C09BC 90AD8F04 */  stw       r5, D_8018BE84@sda21(r0)
/* 0BD9C0 800C09C0 541F063E */  clrlwi    r31, r0, 24
/* 0BD9C4 800C09C4 480000C8 */  b         lbl_800C0A8C
lbl_800C09C8:
/* 0BD9C8 800C09C8 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD9CC 800C09CC 38630008 */  addi      r3, r3, 0x8
/* 0BD9D0 800C09D0 8085069C */  lwz       r4, 0x69c(r5)
/* 0BD9D4 800C09D4 38040001 */  addi      r0, r4, 0x1
/* 0BD9D8 800C09D8 9005069C */  stw       r0, 0x69c(r5)
/* 0BD9DC 800C09DC 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD9E0 800C09E0 88040000 */  lbz       r0, 0x0(r4)
/* 0BD9E4 800C09E4 8085069C */  lwz       r4, 0x69c(r5)
/* 0BD9E8 800C09E8 7FBD0214 */  add       r29, r29, r0
/* 0BD9EC 800C09EC 38040001 */  addi      r0, r4, 0x1
/* 0BD9F0 800C09F0 9005069C */  stw       r0, 0x69c(r5)
/* 0BD9F4 800C09F4 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BD9F8 800C09F8 88040000 */  lbz       r0, 0x0(r4)
/* 0BD9FC 800C09FC 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDA00 800C0A00 7FBD0214 */  add       r29, r29, r0
/* 0BDA04 800C0A04 38040001 */  addi      r0, r4, 0x1
/* 0BDA08 800C0A08 9005069C */  stw       r0, 0x69c(r5)
/* 0BDA0C 800C0A0C 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDA10 800C0A10 88040000 */  lbz       r0, 0x0(r4)
/* 0BDA14 800C0A14 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDA18 800C0A18 7FBD0214 */  add       r29, r29, r0
/* 0BDA1C 800C0A1C 38040001 */  addi      r0, r4, 0x1
/* 0BDA20 800C0A20 9005069C */  stw       r0, 0x69c(r5)
/* 0BDA24 800C0A24 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDA28 800C0A28 88040000 */  lbz       r0, 0x0(r4)
/* 0BDA2C 800C0A2C 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDA30 800C0A30 7FBD0214 */  add       r29, r29, r0
/* 0BDA34 800C0A34 38040001 */  addi      r0, r4, 0x1
/* 0BDA38 800C0A38 9005069C */  stw       r0, 0x69c(r5)
/* 0BDA3C 800C0A3C 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDA40 800C0A40 88040000 */  lbz       r0, 0x0(r4)
/* 0BDA44 800C0A44 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDA48 800C0A48 7FBD0214 */  add       r29, r29, r0
/* 0BDA4C 800C0A4C 38040001 */  addi      r0, r4, 0x1
/* 0BDA50 800C0A50 9005069C */  stw       r0, 0x69c(r5)
/* 0BDA54 800C0A54 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDA58 800C0A58 88040000 */  lbz       r0, 0x0(r4)
/* 0BDA5C 800C0A5C 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDA60 800C0A60 7FBD0214 */  add       r29, r29, r0
/* 0BDA64 800C0A64 38040001 */  addi      r0, r4, 0x1
/* 0BDA68 800C0A68 9005069C */  stw       r0, 0x69c(r5)
/* 0BDA6C 800C0A6C 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDA70 800C0A70 88040000 */  lbz       r0, 0x0(r4)
/* 0BDA74 800C0A74 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDA78 800C0A78 7FBD0214 */  add       r29, r29, r0
/* 0BDA7C 800C0A7C 38040001 */  addi      r0, r4, 0x1
/* 0BDA80 800C0A80 9005069C */  stw       r0, 0x69c(r5)
/* 0BDA84 800C0A84 88040000 */  lbz       r0, 0x0(r4)
/* 0BDA88 800C0A88 7FBD0214 */  add       r29, r29, r0
lbl_800C0A8C:
/* 0BDA8C 800C0A8C 5460063E */  clrlwi    r0, r3, 24
/* 0BDA90 800C0A90 28000010 */  cmplwi    r0, 0x10
/* 0BDA94 800C0A94 4180FF34 */  blt       lbl_800C09C8
/* 0BDA98 800C0A98 1C7F00E0 */  mulli     r3, r31, 0xe0
/* 0BDA9C 800C0A9C 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDAA0 800C0AA0 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDAA4 800C0AA4 38030340 */  addi      r0, r3, 0x340
/* 0BDAA8 800C0AA8 7C85012E */  stwx      r4, r5, r0
/* 0BDAAC 800C0AAC 57A0043E */  clrlwi    r0, r29, 16
/* 0BDAB0 800C0AB0 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDAB4 800C0AB4 8064069C */  lwz       r3, 0x69c(r4)
/* 0BDAB8 800C0AB8 7C030214 */  add       r0, r3, r0
/* 0BDABC 800C0ABC 9004069C */  stw       r0, 0x69c(r4)
/* 0BDAC0 800C0AC0 48000059 */  bl        __THPHuffGenerateSizeTable
/* 0BDAC4 800C0AC4 48000145 */  bl        __THPHuffGenerateCodeTable
/* 0BDAC8 800C0AC8 7FE3FB78 */  mr        r3, r31
/* 0BDACC 800C0ACC 480001A5 */  bl        __THPHuffGenerateDecoderTables
/* 0BDAD0 800C0AD0 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDAD4 800C0AD4 381D0011 */  addi      r0, r29, 0x11
/* 0BDAD8 800C0AD8 7FC0F050 */  subf      r30, r0, r30
/* 0BDADC 800C0ADC 38000001 */  li        r0, 0x1
/* 0BDAE0 800C0AE0 888506A8 */  lbz       r4, 0x6a8(r5)
/* 0BDAE4 800C0AE4 7C03F830 */  slw       r3, r0, r31
/* 0BDAE8 800C0AE8 7C831B78 */  or        r3, r4, r3
/* 0BDAEC 800C0AEC 57C0043F */  clrlwi.   r0, r30, 16
/* 0BDAF0 800C0AF0 986506A8 */  stb       r3, 0x6a8(r5)
/* 0BDAF4 800C0AF4 4082FE94 */  bne       lbl_800C0988
/* 0BDAF8 800C0AF8 80010024 */  lwz       r0, 0x24(r1)
/* 0BDAFC 800C0AFC 38600000 */  li        r3, 0x0
/* 0BDB00 800C0B00 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BDB04 800C0B04 83C10018 */  lwz       r30, 0x18(r1)
/* 0BDB08 800C0B08 83A10014 */  lwz       r29, 0x14(r1)
/* 0BDB0C 800C0B0C 38210020 */  addi      r1, r1, 0x20
/* 0BDB10 800C0B10 7C0803A6 */  mtlr      r0
/* 0BDB14 800C0B14 4E800020 */  blr

glabel __THPHuffGenerateSizeTable
/* 0BDB18 800C0B18 38C00000 */  li        r6, 0x0
/* 0BDB1C 800C0B1C 38E00001 */  li        r7, 0x1
lbl_800C0B20:
/* 0BDB20 800C0B20 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDB24 800C0B24 3807FFFF */  subi      r0, r7, 0x1
/* 0BDB28 800C0B28 54E5063E */  clrlwi    r5, r7, 24
/* 0BDB2C 800C0B2C 7D0300AE */  lbzx      r8, r3, r0
/* 0BDB30 800C0B30 2C080000 */  cmpwi     r8, 0x0
/* 0BDB34 800C0B34 38680000 */  addi      r3, r8, 0x0
/* 0BDB38 800C0B38 418200B4 */  beq       lbl_800C0BEC
/* 0BDB3C 800C0B3C 5460E8FF */  srwi.     r0, r3, 3
/* 0BDB40 800C0B40 7C0903A6 */  mtctr     r0
/* 0BDB44 800C0B44 41820090 */  beq       lbl_800C0BD4
lbl_800C0B48:
/* 0BDB48 800C0B48 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDB4C 800C0B4C 7CC03378 */  mr        r0, r6
/* 0BDB50 800C0B50 38C60001 */  addi      r6, r6, 0x1
/* 0BDB54 800C0B54 7CA401AE */  stbx      r5, r4, r0
/* 0BDB58 800C0B58 38060000 */  addi      r0, r6, 0x0
/* 0BDB5C 800C0B5C 38C60001 */  addi      r6, r6, 0x1
/* 0BDB60 800C0B60 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDB64 800C0B64 7CA401AE */  stbx      r5, r4, r0
/* 0BDB68 800C0B68 38060000 */  addi      r0, r6, 0x0
/* 0BDB6C 800C0B6C 38C60001 */  addi      r6, r6, 0x1
/* 0BDB70 800C0B70 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDB74 800C0B74 7CA401AE */  stbx      r5, r4, r0
/* 0BDB78 800C0B78 38060000 */  addi      r0, r6, 0x0
/* 0BDB7C 800C0B7C 38C60001 */  addi      r6, r6, 0x1
/* 0BDB80 800C0B80 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDB84 800C0B84 7CA401AE */  stbx      r5, r4, r0
/* 0BDB88 800C0B88 38060000 */  addi      r0, r6, 0x0
/* 0BDB8C 800C0B8C 38C60001 */  addi      r6, r6, 0x1
/* 0BDB90 800C0B90 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDB94 800C0B94 7CA401AE */  stbx      r5, r4, r0
/* 0BDB98 800C0B98 38060000 */  addi      r0, r6, 0x0
/* 0BDB9C 800C0B9C 38C60001 */  addi      r6, r6, 0x1
/* 0BDBA0 800C0BA0 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDBA4 800C0BA4 7CA401AE */  stbx      r5, r4, r0
/* 0BDBA8 800C0BA8 38060000 */  addi      r0, r6, 0x0
/* 0BDBAC 800C0BAC 38C60001 */  addi      r6, r6, 0x1
/* 0BDBB0 800C0BB0 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDBB4 800C0BB4 7CA401AE */  stbx      r5, r4, r0
/* 0BDBB8 800C0BB8 38060000 */  addi      r0, r6, 0x0
/* 0BDBBC 800C0BBC 38C60001 */  addi      r6, r6, 0x1
/* 0BDBC0 800C0BC0 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDBC4 800C0BC4 7CA401AE */  stbx      r5, r4, r0
/* 0BDBC8 800C0BC8 4200FF80 */  bdnz      lbl_800C0B48
/* 0BDBCC 800C0BCC 70630007 */  andi.     r3, r3, 0x7
/* 0BDBD0 800C0BD0 4182001C */  beq       lbl_800C0BEC
lbl_800C0BD4:
/* 0BDBD4 800C0BD4 7C6903A6 */  mtctr     r3
lbl_800C0BD8:
/* 0BDBD8 800C0BD8 808D8F08 */  lwz       r4, D_8018BE88@sda21(r0)
/* 0BDBDC 800C0BDC 7CC03378 */  mr        r0, r6
/* 0BDBE0 800C0BE0 38C60001 */  addi      r6, r6, 0x1
/* 0BDBE4 800C0BE4 7CA401AE */  stbx      r5, r4, r0
/* 0BDBE8 800C0BE8 4200FFF0 */  bdnz      lbl_800C0BD8
lbl_800C0BEC:
/* 0BDBEC 800C0BEC 38E70001 */  addi      r7, r7, 0x1
/* 0BDBF0 800C0BF0 2C070010 */  cmpwi     r7, 0x10
/* 0BDBF4 800C0BF4 4081FF2C */  ble       lbl_800C0B20
/* 0BDBF8 800C0BF8 806D8F08 */  lwz       r3, D_8018BE88@sda21(r0)
/* 0BDBFC 800C0BFC 38000000 */  li        r0, 0x0
/* 0BDC00 800C0C00 7C0331AE */  stbx      r0, r3, r6
/* 0BDC04 800C0C04 4E800020 */  blr

glabel __THPHuffGenerateCodeTable
/* 0BDC08 800C0C08 80CD8F08 */  lwz       r6, D_8018BE88@sda21(r0)
/* 0BDC0C 800C0C0C 39000000 */  li        r8, 0x0
/* 0BDC10 800C0C10 80AD8F0C */  lwz       r5, D_8018BE8C@sda21(r0)
/* 0BDC14 800C0C14 39200000 */  li        r9, 0x0
/* 0BDC18 800C0C18 88E60000 */  lbz       r7, 0x0(r6)
/* 0BDC1C 800C0C1C 38600001 */  li        r3, 0x1
/* 0BDC20 800C0C20 4800003C */  b         lbl_800C0C5C
lbl_800C0C24:
/* 0BDC24 800C0C24 54E4063E */  clrlwi    r4, r7, 24
/* 0BDC28 800C0C28 48000014 */  b         lbl_800C0C3C
lbl_800C0C2C:
/* 0BDC2C 800C0C2C 55000BFC */  clrlslwi  r0, r8, 16, 1
/* 0BDC30 800C0C30 7D25032E */  sthx      r9, r5, r0
/* 0BDC34 800C0C34 39080001 */  addi      r8, r8, 0x1
/* 0BDC38 800C0C38 39290001 */  addi      r9, r9, 0x1
lbl_800C0C3C:
/* 0BDC3C 800C0C3C 5500043E */  clrlwi    r0, r8, 16
/* 0BDC40 800C0C40 7C0600AE */  lbzx      r0, r6, r0
/* 0BDC44 800C0C44 7C040040 */  cmplw     r4, r0
/* 0BDC48 800C0C48 4182FFE4 */  beq       lbl_800C0C2C
/* 0BDC4C 800C0C4C 5520043E */  clrlwi    r0, r9, 16
/* 0BDC50 800C0C50 7C001830 */  slw       r0, r0, r3
/* 0BDC54 800C0C54 5409043E */  clrlwi    r9, r0, 16
/* 0BDC58 800C0C58 38E70001 */  addi      r7, r7, 0x1
lbl_800C0C5C:
/* 0BDC5C 800C0C5C 5500043E */  clrlwi    r0, r8, 16
/* 0BDC60 800C0C60 7C0600AE */  lbzx      r0, r6, r0
/* 0BDC64 800C0C64 28000000 */  cmplwi    r0, 0x0
/* 0BDC68 800C0C68 4082FFBC */  bne       lbl_800C0C24
/* 0BDC6C 800C0C6C 4E800020 */  blr

glabel __THPHuffGenerateDecoderTables
/* 0BDC70 800C0C70 5460063E */  clrlwi    r0, r3, 24
/* 0BDC74 800C0C74 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDC78 800C0C78 1C6000E0 */  mulli     r3, r0, 0xe0
/* 0BDC7C 800C0C7C 38E30300 */  addi      r7, r3, 0x300
/* 0BDC80 800C0C80 38000004 */  li        r0, 0x4
/* 0BDC84 800C0C84 7CE43A14 */  add       r7, r4, r7
/* 0BDC88 800C0C88 7C0903A6 */  mtctr     r0
/* 0BDC8C 800C0C8C 38C70004 */  addi      r6, r7, 0x4
/* 0BDC90 800C0C90 39000000 */  li        r8, 0x0
/* 0BDC94 800C0C94 39200001 */  li        r9, 0x1
lbl_800C0C98:
/* 0BDC98 800C0C98 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDC9C 800C0C9C 38A9FFFF */  subi      r5, r9, 0x1
/* 0BDCA0 800C0CA0 7C0328AE */  lbzx      r0, r3, r5
/* 0BDCA4 800C0CA4 28000000 */  cmplwi    r0, 0x0
/* 0BDCA8 800C0CA8 4182003C */  beq       lbl_800C0CE4
/* 0BDCAC 800C0CAC 806D8F0C */  lwz       r3, D_8018BE8C@sda21(r0)
/* 0BDCB0 800C0CB0 5500083C */  slwi      r0, r8, 1
/* 0BDCB4 800C0CB4 7C03022E */  lhzx      r0, r3, r0
/* 0BDCB8 800C0CB8 7C004050 */  subf      r0, r0, r8
/* 0BDCBC 800C0CBC 9006008C */  stw       r0, 0x8c(r6)
/* 0BDCC0 800C0CC0 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDCC4 800C0CC4 808D8F0C */  lwz       r4, D_8018BE8C@sda21(r0)
/* 0BDCC8 800C0CC8 7C0328AE */  lbzx      r0, r3, r5
/* 0BDCCC 800C0CCC 7D080214 */  add       r8, r8, r0
/* 0BDCD0 800C0CD0 5503083C */  slwi      r3, r8, 1
/* 0BDCD4 800C0CD4 3803FFFE */  subi      r0, r3, 0x2
/* 0BDCD8 800C0CD8 7C04022E */  lhzx      r0, r4, r0
/* 0BDCDC 800C0CDC 90060044 */  stw       r0, 0x44(r6)
/* 0BDCE0 800C0CE0 48000010 */  b         lbl_800C0CF0
lbl_800C0CE4:
/* 0BDCE4 800C0CE4 3800FFFF */  li        r0, -0x1
/* 0BDCE8 800C0CE8 90060044 */  stw       r0, 0x44(r6)
/* 0BDCEC 800C0CEC 9006008C */  stw       r0, 0x8c(r6)
lbl_800C0CF0:
/* 0BDCF0 800C0CF0 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDCF4 800C0CF4 38A90000 */  addi      r5, r9, 0x0
/* 0BDCF8 800C0CF8 39290001 */  addi      r9, r9, 0x1
/* 0BDCFC 800C0CFC 7C0328AE */  lbzx      r0, r3, r5
/* 0BDD00 800C0D00 38C60004 */  addi      r6, r6, 0x4
/* 0BDD04 800C0D04 28000000 */  cmplwi    r0, 0x0
/* 0BDD08 800C0D08 4182003C */  beq       lbl_800C0D44
/* 0BDD0C 800C0D0C 806D8F0C */  lwz       r3, D_8018BE8C@sda21(r0)
/* 0BDD10 800C0D10 5500083C */  slwi      r0, r8, 1
/* 0BDD14 800C0D14 7C03022E */  lhzx      r0, r3, r0
/* 0BDD18 800C0D18 7C004050 */  subf      r0, r0, r8
/* 0BDD1C 800C0D1C 9006008C */  stw       r0, 0x8c(r6)
/* 0BDD20 800C0D20 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDD24 800C0D24 808D8F0C */  lwz       r4, D_8018BE8C@sda21(r0)
/* 0BDD28 800C0D28 7C0328AE */  lbzx      r0, r3, r5
/* 0BDD2C 800C0D2C 7D080214 */  add       r8, r8, r0
/* 0BDD30 800C0D30 5503083C */  slwi      r3, r8, 1
/* 0BDD34 800C0D34 3803FFFE */  subi      r0, r3, 0x2
/* 0BDD38 800C0D38 7C04022E */  lhzx      r0, r4, r0
/* 0BDD3C 800C0D3C 90060044 */  stw       r0, 0x44(r6)
/* 0BDD40 800C0D40 48000010 */  b         lbl_800C0D50
lbl_800C0D44:
/* 0BDD44 800C0D44 3800FFFF */  li        r0, -0x1
/* 0BDD48 800C0D48 90060044 */  stw       r0, 0x44(r6)
/* 0BDD4C 800C0D4C 9006008C */  stw       r0, 0x8c(r6)
lbl_800C0D50:
/* 0BDD50 800C0D50 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDD54 800C0D54 38A90000 */  addi      r5, r9, 0x0
/* 0BDD58 800C0D58 39290001 */  addi      r9, r9, 0x1
/* 0BDD5C 800C0D5C 7C0328AE */  lbzx      r0, r3, r5
/* 0BDD60 800C0D60 38C60004 */  addi      r6, r6, 0x4
/* 0BDD64 800C0D64 28000000 */  cmplwi    r0, 0x0
/* 0BDD68 800C0D68 4182003C */  beq       lbl_800C0DA4
/* 0BDD6C 800C0D6C 806D8F0C */  lwz       r3, D_8018BE8C@sda21(r0)
/* 0BDD70 800C0D70 5500083C */  slwi      r0, r8, 1
/* 0BDD74 800C0D74 7C03022E */  lhzx      r0, r3, r0
/* 0BDD78 800C0D78 7C004050 */  subf      r0, r0, r8
/* 0BDD7C 800C0D7C 9006008C */  stw       r0, 0x8c(r6)
/* 0BDD80 800C0D80 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDD84 800C0D84 808D8F0C */  lwz       r4, D_8018BE8C@sda21(r0)
/* 0BDD88 800C0D88 7C0328AE */  lbzx      r0, r3, r5
/* 0BDD8C 800C0D8C 7D080214 */  add       r8, r8, r0
/* 0BDD90 800C0D90 5503083C */  slwi      r3, r8, 1
/* 0BDD94 800C0D94 3803FFFE */  subi      r0, r3, 0x2
/* 0BDD98 800C0D98 7C04022E */  lhzx      r0, r4, r0
/* 0BDD9C 800C0D9C 90060044 */  stw       r0, 0x44(r6)
/* 0BDDA0 800C0DA0 48000010 */  b         lbl_800C0DB0
lbl_800C0DA4:
/* 0BDDA4 800C0DA4 3800FFFF */  li        r0, -0x1
/* 0BDDA8 800C0DA8 90060044 */  stw       r0, 0x44(r6)
/* 0BDDAC 800C0DAC 9006008C */  stw       r0, 0x8c(r6)
lbl_800C0DB0:
/* 0BDDB0 800C0DB0 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDDB4 800C0DB4 38A90000 */  addi      r5, r9, 0x0
/* 0BDDB8 800C0DB8 39290001 */  addi      r9, r9, 0x1
/* 0BDDBC 800C0DBC 7C0328AE */  lbzx      r0, r3, r5
/* 0BDDC0 800C0DC0 38C60004 */  addi      r6, r6, 0x4
/* 0BDDC4 800C0DC4 28000000 */  cmplwi    r0, 0x0
/* 0BDDC8 800C0DC8 4182003C */  beq       lbl_800C0E04
/* 0BDDCC 800C0DCC 806D8F0C */  lwz       r3, D_8018BE8C@sda21(r0)
/* 0BDDD0 800C0DD0 5500083C */  slwi      r0, r8, 1
/* 0BDDD4 800C0DD4 7C03022E */  lhzx      r0, r3, r0
/* 0BDDD8 800C0DD8 7C004050 */  subf      r0, r0, r8
/* 0BDDDC 800C0DDC 9006008C */  stw       r0, 0x8c(r6)
/* 0BDDE0 800C0DE0 806D8F04 */  lwz       r3, D_8018BE84@sda21(r0)
/* 0BDDE4 800C0DE4 808D8F0C */  lwz       r4, D_8018BE8C@sda21(r0)
/* 0BDDE8 800C0DE8 7C0328AE */  lbzx      r0, r3, r5
/* 0BDDEC 800C0DEC 7D080214 */  add       r8, r8, r0
/* 0BDDF0 800C0DF0 5503083C */  slwi      r3, r8, 1
/* 0BDDF4 800C0DF4 3803FFFE */  subi      r0, r3, 0x2
/* 0BDDF8 800C0DF8 7C04022E */  lhzx      r0, r4, r0
/* 0BDDFC 800C0DFC 90060044 */  stw       r0, 0x44(r6)
/* 0BDE00 800C0E00 48000010 */  b         lbl_800C0E10
lbl_800C0E04:
/* 0BDE04 800C0E04 3800FFFF */  li        r0, -0x1
/* 0BDE08 800C0E08 90060044 */  stw       r0, 0x44(r6)
/* 0BDE0C 800C0E0C 9006008C */  stw       r0, 0x8c(r6)
lbl_800C0E10:
/* 0BDE10 800C0E10 38C60004 */  addi      r6, r6, 0x4
/* 0BDE14 800C0E14 39290001 */  addi      r9, r9, 0x1
/* 0BDE18 800C0E18 4200FE80 */  bdnz      lbl_800C0C98
/* 0BDE1C 800C0E1C 3C600010 */  lis       r3, 0x10
/* 0BDE20 800C0E20 3803FFFF */  subi      r0, r3, 0x1
/* 0BDE24 800C0E24 90070088 */  stw       r0, 0x88(r7)
/* 0BDE28 800C0E28 4E800020 */  blr

glabel __THPRestartDefinition
/* 0BDE2C 800C0E2C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BDE30 800C0E30 38000001 */  li        r0, 0x1
/* 0BDE34 800C0E34 980306A9 */  stb       r0, 0x6a9(r3)
/* 0BDE38 800C0E38 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDE3C 800C0E3C 8064069C */  lwz       r3, 0x69c(r4)
/* 0BDE40 800C0E40 38030002 */  addi      r0, r3, 0x2
/* 0BDE44 800C0E44 9004069C */  stw       r0, 0x69c(r4)
/* 0BDE48 800C0E48 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BDE4C 800C0E4C 8085069C */  lwz       r4, 0x69c(r5)
/* 0BDE50 800C0E50 88640000 */  lbz       r3, 0x0(r4)
/* 0BDE54 800C0E54 88040001 */  lbz       r0, 0x1(r4)
/* 0BDE58 800C0E58 5060442E */  rlwimi    r0, r3, 8, 16, 23
/* 0BDE5C 800C0E5C B00506AA */  sth       r0, 0x6aa(r5)
/* 0BDE60 800C0E60 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDE64 800C0E64 8064069C */  lwz       r3, 0x69c(r4)
/* 0BDE68 800C0E68 38030002 */  addi      r0, r3, 0x2
/* 0BDE6C 800C0E6C 9004069C */  stw       r0, 0x69c(r4)
/* 0BDE70 800C0E70 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BDE74 800C0E74 A00306AA */  lhz       r0, 0x6aa(r3)
/* 0BDE78 800C0E78 B00306AC */  sth       r0, 0x6ac(r3)
/* 0BDE7C 800C0E7C 4E800020 */  blr

glabel __THPPrepBitStream
/* 0BDE80 800C0E80 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0BDE84 800C0E84 93E10014 */  stw       r31, 0x14(r1)
/* 0BDE88 800C0E88 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BDE8C 800C0E8C 8003069C */  lwz       r0, 0x69c(r3)
/* 0BDE90 800C0E90 388306A4 */  addi      r4, r3, 0x6a4
/* 0BDE94 800C0E94 806306A4 */  lwz       r3, 0x6a4(r3)
/* 0BDE98 800C0E98 5405003A */  clrrwi    r5, r0, 2
/* 0BDE9C 800C0E9C 28030021 */  cmplwi    r3, 0x21
/* 0BDEA0 800C0EA0 540007BE */  clrlwi    r0, r0, 30
/* 0BDEA4 800C0EA4 41820018 */  beq       lbl_800C0EBC
/* 0BDEA8 800C0EA8 20000003 */  subfic    r0, r0, 0x3
/* 0BDEAC 800C0EAC 54001838 */  slwi      r0, r0, 3
/* 0BDEB0 800C0EB0 7C001850 */  subf      r0, r0, r3
/* 0BDEB4 800C0EB4 90040000 */  stw       r0, 0x0(r4)
/* 0BDEB8 800C0EB8 48000010 */  b         lbl_800C0EC8
lbl_800C0EBC:
/* 0BDEBC 800C0EBC 54031838 */  slwi      r3, r0, 3
/* 0BDEC0 800C0EC0 38030001 */  addi      r0, r3, 0x1
/* 0BDEC4 800C0EC4 90040000 */  stw       r0, 0x0(r4)
lbl_800C0EC8:
/* 0BDEC8 800C0EC8 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDECC 800C0ECC 38600000 */  li        r3, 0x0
/* 0BDED0 800C0ED0 39000000 */  li        r8, 0x0
/* 0BDED4 800C0ED4 90A4069C */  stw       r5, 0x69c(r4)
/* 0BDED8 800C0ED8 80050000 */  lwz       r0, 0x0(r5)
/* 0BDEDC 800C0EDC 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDEE0 800C0EE0 900406A0 */  stw       r0, 0x6a0(r4)
lbl_800C0EE4:
/* 0BDEE4 800C0EE4 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDEE8 800C0EE8 38000001 */  li        r0, 0x1
/* 0BDEEC 800C0EEC 7C001830 */  slw       r0, r0, r3
/* 0BDEF0 800C0EF0 888406A8 */  lbz       r4, 0x6a8(r4)
/* 0BDEF4 800C0EF4 7C800039 */  and.      r0, r4, r0
/* 0BDEF8 800C0EF8 41820118 */  beq       lbl_800C1010
/* 0BDEFC 800C0EFC 38000010 */  li        r0, 0x10
/* 0BDF00 800C0F00 7C0903A6 */  mtctr     r0
/* 0BDF04 800C0F04 38E80000 */  addi      r7, r8, 0x0
/* 0BDF08 800C0F08 39800000 */  li        r12, 0x0
lbl_800C0F0C:
/* 0BDF0C 800C0F0C 800D8F70 */  lwz       r0, D_8018BEF0@sda21(r0)
/* 0BDF10 800C0F10 38A000FF */  li        r5, 0xff
/* 0BDF14 800C0F14 3BE00000 */  li        r31, 0x0
/* 0BDF18 800C0F18 7C806214 */  add       r4, r0, r12
/* 0BDF1C 800C0F1C 38040300 */  addi      r0, r4, 0x300
/* 0BDF20 800C0F20 7CA801AE */  stbx      r5, r8, r0
/* 0BDF24 800C0F24 48000058 */  b         lbl_800C0F7C
lbl_800C0F28:
/* 0BDF28 800C0F28 816D8F70 */  lwz       r11, D_8018BEF0@sda21(r0)
/* 0BDF2C 800C0F2C 209F0004 */  subfic    r4, r31, 0x4
/* 0BDF30 800C0F30 57E0103A */  slwi      r0, r31, 2
/* 0BDF34 800C0F34 7CA85A14 */  add       r5, r8, r11
/* 0BDF38 800C0F38 7D450214 */  add       r10, r5, r0
/* 0BDF3C 800C0F3C 800A0348 */  lwz       r0, 0x348(r10)
/* 0BDF40 800C0F40 7D892430 */  srw       r9, r12, r4
/* 0BDF44 800C0F44 7C090000 */  cmpw      r9, r0
/* 0BDF48 800C0F48 41810030 */  bgt       lbl_800C0F78
/* 0BDF4C 800C0F4C 80C50340 */  lwz       r6, 0x340(r5)
/* 0BDF50 800C0F50 38BF0001 */  addi      r5, r31, 0x1
/* 0BDF54 800C0F54 808A0390 */  lwz       r4, 0x390(r10)
/* 0BDF58 800C0F58 380B0300 */  addi      r0, r11, 0x300
/* 0BDF5C 800C0F5C 3BE00063 */  li        r31, 0x63
/* 0BDF60 800C0F60 7C843214 */  add       r4, r4, r6
/* 0BDF64 800C0F64 7C8920AE */  lbzx      r4, r9, r4
/* 0BDF68 800C0F68 7C8701AE */  stbx      r4, r7, r0
/* 0BDF6C 800C0F6C 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDF70 800C0F70 38040320 */  addi      r0, r4, 0x320
/* 0BDF74 800C0F74 7CA701AE */  stbx      r5, r7, r0
lbl_800C0F78:
/* 0BDF78 800C0F78 3BFF0001 */  addi      r31, r31, 0x1
lbl_800C0F7C:
/* 0BDF7C 800C0F7C 281F0005 */  cmplwi    r31, 0x5
/* 0BDF80 800C0F80 4180FFA8 */  blt       lbl_800C0F28
/* 0BDF84 800C0F84 800D8F70 */  lwz       r0, D_8018BEF0@sda21(r0)
/* 0BDF88 800C0F88 398C0001 */  addi      r12, r12, 0x1
/* 0BDF8C 800C0F8C 38A000FF */  li        r5, 0xff
/* 0BDF90 800C0F90 7C806214 */  add       r4, r0, r12
/* 0BDF94 800C0F94 38040300 */  addi      r0, r4, 0x300
/* 0BDF98 800C0F98 7CA801AE */  stbx      r5, r8, r0
/* 0BDF9C 800C0F9C 3BE00000 */  li        r31, 0x0
/* 0BDFA0 800C0FA0 38E70001 */  addi      r7, r7, 0x1
/* 0BDFA4 800C0FA4 48000058 */  b         lbl_800C0FFC
lbl_800C0FA8:
/* 0BDFA8 800C0FA8 816D8F70 */  lwz       r11, D_8018BEF0@sda21(r0)
/* 0BDFAC 800C0FAC 209F0004 */  subfic    r4, r31, 0x4
/* 0BDFB0 800C0FB0 57E0103A */  slwi      r0, r31, 2
/* 0BDFB4 800C0FB4 7CA85A14 */  add       r5, r8, r11
/* 0BDFB8 800C0FB8 7D450214 */  add       r10, r5, r0
/* 0BDFBC 800C0FBC 800A0348 */  lwz       r0, 0x348(r10)
/* 0BDFC0 800C0FC0 7D892430 */  srw       r9, r12, r4
/* 0BDFC4 800C0FC4 7C090000 */  cmpw      r9, r0
/* 0BDFC8 800C0FC8 41810030 */  bgt       lbl_800C0FF8
/* 0BDFCC 800C0FCC 80C50340 */  lwz       r6, 0x340(r5)
/* 0BDFD0 800C0FD0 38BF0001 */  addi      r5, r31, 0x1
/* 0BDFD4 800C0FD4 808A0390 */  lwz       r4, 0x390(r10)
/* 0BDFD8 800C0FD8 380B0300 */  addi      r0, r11, 0x300
/* 0BDFDC 800C0FDC 3BE00063 */  li        r31, 0x63
/* 0BDFE0 800C0FE0 7C843214 */  add       r4, r4, r6
/* 0BDFE4 800C0FE4 7C8920AE */  lbzx      r4, r9, r4
/* 0BDFE8 800C0FE8 7C8701AE */  stbx      r4, r7, r0
/* 0BDFEC 800C0FEC 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BDFF0 800C0FF0 38040320 */  addi      r0, r4, 0x320
/* 0BDFF4 800C0FF4 7CA701AE */  stbx      r5, r7, r0
lbl_800C0FF8:
/* 0BDFF8 800C0FF8 3BFF0001 */  addi      r31, r31, 0x1
lbl_800C0FFC:
/* 0BDFFC 800C0FFC 281F0005 */  cmplwi    r31, 0x5
/* 0BE000 800C1000 4180FFA8 */  blt       lbl_800C0FA8
/* 0BE004 800C1004 38E70001 */  addi      r7, r7, 0x1
/* 0BE008 800C1008 398C0001 */  addi      r12, r12, 0x1
/* 0BE00C 800C100C 4200FF00 */  bdnz      lbl_800C0F0C
lbl_800C1010:
/* 0BE010 800C1010 38630001 */  addi      r3, r3, 0x1
/* 0BE014 800C1014 28030004 */  cmplwi    r3, 0x4
/* 0BE018 800C1018 390800E0 */  addi      r8, r8, 0xe0
/* 0BE01C 800C101C 4180FEC8 */  blt       lbl_800C0EE4
/* 0BE020 800C1020 812D8F70 */  lwz       r9, D_8018BEF0@sda21(r0)
/* 0BE024 800C1024 88890682 */  lbz       r4, 0x682(r9)
/* 0BE028 800C1028 88090688 */  lbz       r0, 0x688(r9)
/* 0BE02C 800C102C 8869068E */  lbz       r3, 0x68e(r9)
/* 0BE030 800C1030 5485083C */  slwi      r5, r4, 1
/* 0BE034 800C1034 88E90687 */  lbz       r7, 0x687(r9)
/* 0BE038 800C1038 5404083C */  slwi      r4, r0, 1
/* 0BE03C 800C103C 88C9068D */  lbz       r6, 0x68d(r9)
/* 0BE040 800C1040 88090681 */  lbz       r0, 0x681(r9)
/* 0BE044 800C1044 5463083C */  slwi      r3, r3, 1
/* 0BE048 800C1048 54E7083C */  slwi      r7, r7, 1
/* 0BE04C 800C104C 54C6083C */  slwi      r6, r6, 1
/* 0BE050 800C1050 38A50001 */  addi      r5, r5, 0x1
/* 0BE054 800C1054 38840001 */  addi      r4, r4, 0x1
/* 0BE058 800C1058 38630001 */  addi      r3, r3, 0x1
/* 0BE05C 800C105C 5400083C */  slwi      r0, r0, 1
/* 0BE060 800C1060 1D0000E0 */  mulli     r8, r0, 0xe0
/* 0BE064 800C1064 1CE700E0 */  mulli     r7, r7, 0xe0
/* 0BE068 800C1068 1CC600E0 */  mulli     r6, r6, 0xe0
/* 0BE06C 800C106C 1CA500E0 */  mulli     r5, r5, 0xe0
/* 0BE070 800C1070 1C8400E0 */  mulli     r4, r4, 0xe0
/* 0BE074 800C1074 1C6300E0 */  mulli     r3, r3, 0xe0
/* 0BE078 800C1078 39080300 */  addi      r8, r8, 0x300
/* 0BE07C 800C107C 38E70300 */  addi      r7, r7, 0x300
/* 0BE080 800C1080 38C60300 */  addi      r6, r6, 0x300
/* 0BE084 800C1084 38A50300 */  addi      r5, r5, 0x300
/* 0BE088 800C1088 38840300 */  addi      r4, r4, 0x300
/* 0BE08C 800C108C 38030300 */  addi      r0, r3, 0x300
/* 0BE090 800C1090 7D094214 */  add       r8, r9, r8
/* 0BE094 800C1094 7C693A14 */  add       r3, r9, r7
/* 0BE098 800C1098 910D8E60 */  stw       r8, D_8018BDE0@sda21(r0)
/* 0BE09C 800C109C 7CC93214 */  add       r6, r9, r6
/* 0BE0A0 800C10A0 7CA92A14 */  add       r5, r9, r5
/* 0BE0A4 800C10A4 906D8E80 */  stw       r3, D_8018BE00@sda21(r0)
/* 0BE0A8 800C10A8 7C692214 */  add       r3, r9, r4
/* 0BE0AC 800C10AC 7C090214 */  add       r0, r9, r0
/* 0BE0B0 800C10B0 90CD8EA0 */  stw       r6, D_8018BE20@sda21(r0)
/* 0BE0B4 800C10B4 90AD8EC0 */  stw       r5, D_8018BE40@sda21(r0)
/* 0BE0B8 800C10B8 906D8EE0 */  stw       r3, D_8018BE60@sda21(r0)
/* 0BE0BC 800C10BC 900D8F00 */  stw       r0, D_8018BE80@sda21(r0)
/* 0BE0C0 800C10C0 83E10014 */  lwz       r31, 0x14(r1)
/* 0BE0C4 800C10C4 38210018 */  addi      r1, r1, 0x18
/* 0BE0C8 800C10C8 4E800020 */  blr

glabel __THPDecompressYUV
/* 0BE0CC 800C10CC 7C0802A6 */  mflr      r0
/* 0BE0D0 800C10D0 90010004 */  stw       r0, 0x4(r1)
/* 0BE0D4 800C10D4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BE0D8 800C10D8 93E1001C */  stw       r31, 0x1c(r1)
/* 0BE0DC 800C10DC 93C10018 */  stw       r30, 0x18(r1)
/* 0BE0E0 800C10E0 80CD8F70 */  lwz       r6, D_8018BEF0@sda21(r0)
/* 0BE0E4 800C10E4 906606B0 */  stw       r3, 0x6b0(r6)
/* 0BE0E8 800C10E8 80CD8F70 */  lwz       r6, D_8018BEF0@sda21(r0)
/* 0BE0EC 800C10EC 908606B4 */  stw       r4, 0x6b4(r6)
/* 0BE0F0 800C10F0 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BE0F4 800C10F4 90A406B8 */  stw       r5, 0x6b8(r4)
/* 0BE0F8 800C10F8 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BE0FC 800C10FC A3E40698 */  lhz       r31, 0x698(r4)
/* 0BE100 800C1100 A3C40694 */  lhz       r30, 0x694(r4)
/* 0BE104 800C1104 7C95E2A6 */  mfspr     r4, GQR5
/* 0BE108 800C1108 7C16E2A6 */  mfspr     r0, GQR6
/* 0BE10C 800C110C 908D8F64 */  stw       r4, D_8018BEE4@sda21(r0)
/* 0BE110 800C1110 900D8F68 */  stw       r0, D_8018BEE8@sda21(r0)
/* 0BE114 800C1114 38600007 */  li        r3, 0x7
/* 0BE118 800C1118 64630007 */  oris      r3, r3, 0x7
/* 0BE11C 800C111C 7C75E3A6 */  mtspr     GQR5, r3
/* 0BE120 800C1120 38603D04 */  li        r3, 0x3d04
/* 0BE124 800C1124 64633D04 */  oris      r3, r3, 0x3d04
/* 0BE128 800C1128 7C76E3A6 */  mtspr     GQR6, r3
/* 0BE12C 800C112C 4BFFFD55 */  bl        __THPPrepBitStream
/* 0BE130 800C1130 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BE134 800C1134 A0040692 */  lhz       r0, 0x692(r4)
/* 0BE138 800C1138 28000200 */  cmplwi    r0, 0x200
/* 0BE13C 800C113C 40820028 */  bne       lbl_800C1164
/* 0BE140 800C1140 281E01C0 */  cmplwi    r30, 0x1c0
/* 0BE144 800C1144 40820020 */  bne       lbl_800C1164
/* 0BE148 800C1148 4800000C */  b         lbl_800C1154
lbl_800C114C:
/* 0BE14C 800C114C 4800008D */  bl        __THPDecompressiMCURow512x448
/* 0BE150 800C1150 3BFF0010 */  addi      r31, r31, 0x10
lbl_800C1154:
/* 0BE154 800C1154 57E0043E */  clrlwi    r0, r31, 16
/* 0BE158 800C1158 7C00F040 */  cmplw     r0, r30
/* 0BE15C 800C115C 4180FFF0 */  blt       lbl_800C114C
/* 0BE160 800C1160 48000050 */  b         lbl_800C11B0
lbl_800C1164:
/* 0BE164 800C1164 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BE168 800C1168 A0040692 */  lhz       r0, 0x692(r4)
/* 0BE16C 800C116C 28000280 */  cmplwi    r0, 0x280
/* 0BE170 800C1170 40820034 */  bne       lbl_800C11A4
/* 0BE174 800C1174 281E01E0 */  cmplwi    r30, 0x1e0
/* 0BE178 800C1178 4082002C */  bne       lbl_800C11A4
/* 0BE17C 800C117C 4800000C */  b         lbl_800C1188
lbl_800C1180:
/* 0BE180 800C1180 48001AE1 */  bl        __THPDecompressiMCURow640x480
/* 0BE184 800C1184 3BFF0010 */  addi      r31, r31, 0x10
lbl_800C1188:
/* 0BE188 800C1188 57E0043E */  clrlwi    r0, r31, 16
/* 0BE18C 800C118C 7C00F040 */  cmplw     r0, r30
/* 0BE190 800C1190 4180FFF0 */  blt       lbl_800C1180
/* 0BE194 800C1194 4800001C */  b         lbl_800C11B0
/* 0BE198 800C1198 4800000C */  b         lbl_800C11A4
lbl_800C119C:
/* 0BE19C 800C119C 48003551 */  bl        __THPDecompressiMCURowNxN
/* 0BE1A0 800C11A0 3BFF0010 */  addi      r31, r31, 0x10
lbl_800C11A4:
/* 0BE1A4 800C11A4 57E0043E */  clrlwi    r0, r31, 16
/* 0BE1A8 800C11A8 7C00F040 */  cmplw     r0, r30
/* 0BE1AC 800C11AC 4180FFF0 */  blt       lbl_800C119C
lbl_800C11B0:
/* 0BE1B0 800C11B0 808D8F64 */  lwz       r4, D_8018BEE4@sda21(r0)
/* 0BE1B4 800C11B4 800D8F68 */  lwz       r0, D_8018BEE8@sda21(r0)
/* 0BE1B8 800C11B8 7C95E3A6 */  mtspr     GQR5, r4
/* 0BE1BC 800C11BC 7C16E3A6 */  mtspr     GQR6, r0
/* 0BE1C0 800C11C0 80010024 */  lwz       r0, 0x24(r1)
/* 0BE1C4 800C11C4 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BE1C8 800C11C8 83C10018 */  lwz       r30, 0x18(r1)
/* 0BE1CC 800C11CC 38210020 */  addi      r1, r1, 0x20
/* 0BE1D0 800C11D0 7C0803A6 */  mtlr      r0
/* 0BE1D4 800C11D4 4E800020 */  blr

glabel __THPDecompressiMCURow512x448
/* 0BE1D8 800C11D8 7C0802A6 */  mflr      r0
/* 0BE1DC 800C11DC 3C608019 */  lis       r3, D_80188CC0@ha
/* 0BE1E0 800C11E0 90010004 */  stw       r0, 0x4(r1)
/* 0BE1E4 800C11E4 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0BE1E8 800C11E8 DBE10030 */  stfd      f31, 0x30(r1)
/* 0BE1EC 800C11EC DBC10028 */  stfd      f30, 0x28(r1)
/* 0BE1F0 800C11F0 DBA10020 */  stfd      f29, 0x20(r1)
/* 0BE1F4 800C11F4 DB810018 */  stfd      f28, 0x18(r1)
/* 0BE1F8 800C11F8 DB610010 */  stfd      f27, 0x10(r1)
/* 0BE1FC 800C11FC 93E1000C */  stw       r31, 0xc(r1)
/* 0BE200 800C1200 3BE38CC0 */  addi      r31, r3, D_80188CC0@l
/* 0BE204 800C1204 38600003 */  li        r3, 0x3
/* 0BE208 800C1208 93C10008 */  stw       r30, 0x8(r1)
/* 0BE20C 800C120C 4BFDBDC5 */  bl        LCQueueWait
/* 0BE210 800C1210 C3628510 */  lfs       f27, D_8018C450@sda21(r0)
/* 0BE214 800C1214 3BC00000 */  li        r30, 0x0
/* 0BE218 800C1218 C3828514 */  lfs       f28, D_8018C454@sda21(r0)
/* 0BE21C 800C121C C3A28518 */  lfs       f29, D_8018C458@sda21(r0)
/* 0BE220 800C1220 C3C2851C */  lfs       f30, D_8018C45C@sda21(r0)
/* 0BE224 800C1224 C3E28520 */  lfs       f31, D_8018C460@sda21(r0)
/* 0BE228 800C1228 48001990 */  b         lbl_800C2BB8
lbl_800C122C:
/* 0BE22C 800C122C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BE230 800C1230 809F0118 */  lwz       r4, 0x118(r31)
/* 0BE234 800C1234 48004F65 */  bl        __THPHuffDecodeDCTCompY
/* 0BE238 800C1238 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BE23C 800C123C 809F011C */  lwz       r4, 0x11c(r31)
/* 0BE240 800C1240 48004F59 */  bl        __THPHuffDecodeDCTCompY
/* 0BE244 800C1244 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BE248 800C1248 809F0120 */  lwz       r4, 0x120(r31)
/* 0BE24C 800C124C 48004F4D */  bl        __THPHuffDecodeDCTCompY
/* 0BE250 800C1250 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BE254 800C1254 809F0124 */  lwz       r4, 0x124(r31)
/* 0BE258 800C1258 48004F41 */  bl        __THPHuffDecodeDCTCompY
/* 0BE25C 800C125C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BE260 800C1260 809F0128 */  lwz       r4, 0x128(r31)
/* 0BE264 800C1264 480055B1 */  bl        __THPHuffDecodeDCTCompU
/* 0BE268 800C1268 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BE26C 800C126C 809F012C */  lwz       r4, 0x12c(r31)
/* 0BE270 800C1270 48005C4D */  bl        __THPHuffDecodeDCTCompV
/* 0BE274 800C1274 807F0100 */  lwz       r3, 0x100(r31)
/* 0BE278 800C1278 38000200 */  li        r0, 0x200
/* 0BE27C 800C127C 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BE280 800C1280 393FFFF8 */  subi      r9, r31, 0x8
/* 0BE284 800C1284 906D8F20 */  stw       r3, D_8018BEA0@sda21(r0)
/* 0BE288 800C1288 57C32536 */  clrlslwi  r3, r30, 24, 4
/* 0BE28C 800C128C 900D8F40 */  stw       r0, D_8018BEC0@sda21(r0)
/* 0BE290 800C1290 88040680 */  lbz       r0, 0x680(r4)
/* 0BE294 800C1294 5400402E */  slwi      r0, r0, 8
/* 0BE298 800C1298 7C040214 */  add       r0, r4, r0
/* 0BE29C 800C129C 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0BE2A0 800C12A0 811F0118 */  lwz       r8, 0x118(r31)
/* 0BE2A4 800C12A4 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0BE2A8 800C12A8 38800008 */  li        r4, 0x8
/* 0BE2AC 800C12AC 7C8903A6 */  mtctr     r4
lbl_800C12B0:
/* 0BE2B0 800C12B0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE2B4 800C12B4 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE2B8 800C12B8 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE2BC 800C12BC 80080008 */  lwz       r0, 0x8(r8)
/* 0BE2C0 800C12C0 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE2C4 800C12C4 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE2C8 800C12C8 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE2CC 800C12CC 7CC60379 */  or.       r6, r6, r0
lbl_800C12D0:
/* 0BE2D0 800C12D0 2C060000 */  cmpwi     r6, 0x0
/* 0BE2D4 800C12D4 40820148 */  bne       lbl_800C141C
/* 0BE2D8 800C12D8 10873C20 */  ps_merge00 f4, f7, f7
/* 0BE2DC 800C12DC 2C050000 */  cmpwi     r5, 0x0
/* 0BE2E0 800C12E0 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0BE2E4 800C12E4 4082009C */  bne       lbl_800C1380
/* 0BE2E8 800C12E8 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0BE2EC 800C12EC 2C040000 */  cmpwi     r4, 0x0
/* 0BE2F0 800C12F0 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0BE2F4 800C12F4 40820018 */  bne       lbl_800C130C
/* 0BE2F8 800C12F8 38E70020 */  addi      r7, r7, 0x20
/* 0BE2FC 800C12FC F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0BE300 800C1300 39080010 */  addi      r8, r8, 0x10
/* 0BE304 800C1304 4200FFAC */  bdnz      lbl_800C12B0
/* 0BE308 800C1308 480001DC */  b         lbl_800C14E4
lbl_800C130C:
/* 0BE30C 800C130C 39080010 */  addi      r8, r8, 0x10
/* 0BE310 800C1310 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0BE314 800C1314 38E70020 */  addi      r7, r7, 0x20
/* 0BE318 800C1318 10473C20 */  ps_merge00 f2, f7, f7
/* 0BE31C 800C131C 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE320 800C1320 103CE828 */  ps_sub    f1, f28, f29
/* 0BE324 800C1324 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0BE328 800C1328 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE32C 800C132C 11476CE0 */  ps_merge11 f10, f7, f13
/* 0BE330 800C1330 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE334 800C1334 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0BE338 800C1338 1102502A */  ps_add    f8, f2, f10
/* 0BE33C 800C133C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE340 800C1340 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0BE344 800C1344 11425028 */  ps_sub    f10, f2, f10
/* 0BE348 800C1348 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE34C 800C134C 1062482A */  ps_add    f3, f2, f9
/* 0BE350 800C1350 80080008 */  lwz       r0, 0x8(r8)
/* 0BE354 800C1354 11224828 */  ps_sub    f9, f2, f9
/* 0BE358 800C1358 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0BE35C 800C135C 11294CA0 */  ps_merge10 f9, f9, f9
/* 0BE360 800C1360 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0BE364 800C1364 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BE368 800C1368 7CC60378 */  or        r6, r6, r0
/* 0BE36C 800C136C F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BE370 800C1370 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE374 800C1374 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BE378 800C1378 4200FF58 */  bdnz      lbl_800C12D0
/* 0BE37C 800C137C 48000168 */  b         lbl_800C14E4
lbl_800C1380:
/* 0BE380 800C1380 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0BE384 800C1384 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0BE388 800C1388 39080010 */  addi      r8, r8, 0x10
/* 0BE38C 800C138C 102100B2 */  ps_mul    f1, f1, f2
/* 0BE390 800C1390 38E70020 */  addi      r7, r7, 0x20
/* 0BE394 800C1394 11870828 */  ps_sub    f12, f7, f1
/* 0BE398 800C1398 11A7082A */  ps_add    f13, f7, f1
/* 0BE39C 800C139C 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE3A0 800C13A0 116166FA */  ps_madd   f11, f1, f27, f12
/* 0BE3A4 800C13A4 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0BE3A8 800C13A8 106C0732 */  ps_mul    f3, f12, f28
/* 0BE3AC 800C13AC 116D5C20 */  ps_merge00 f11, f13, f11
/* 0BE3B0 800C13B0 80080008 */  lwz       r0, 0x8(r8)
/* 0BE3B4 800C13B4 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0BE3B8 800C13B8 114A6420 */  ps_merge00 f10, f10, f12
/* 0BE3BC 800C13BC 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE3C0 800C13C0 11296828 */  ps_sub    f9, f9, f13
/* 0BE3C4 800C13C4 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0BE3C8 800C13C8 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE3CC 800C13CC 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0BE3D0 800C13D0 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0BE3D4 800C13D4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE3D8 800C13D8 104B682A */  ps_add    f2, f11, f13
/* 0BE3DC 800C13DC 11081828 */  ps_sub    f8, f8, f3
/* 0BE3E0 800C13E0 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE3E4 800C13E4 118344E0 */  ps_merge11 f12, f3, f8
/* 0BE3E8 800C13E8 116B6828 */  ps_sub    f11, f11, f13
/* 0BE3EC 800C13EC F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0BE3F0 800C13F0 108A602A */  ps_add    f4, f10, f12
/* 0BE3F4 800C13F4 102A6028 */  ps_sub    f1, f10, f12
/* 0BE3F8 800C13F8 7CC60378 */  or        r6, r6, r0
/* 0BE3FC 800C13FC F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BE400 800C1400 10210CA0 */  ps_merge10 f1, f1, f1
/* 0BE404 800C1404 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0BE408 800C1408 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0BE40C 800C140C 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE410 800C1410 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0BE414 800C1414 4200FEBC */  bdnz      lbl_800C12D0
/* 0BE418 800C1418 480000CC */  b         lbl_800C14E4
lbl_800C141C:
/* 0BE41C 800C141C E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0BE420 800C1420 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0BE424 800C1424 104202B2 */  ps_mul    f2, f2, f10
/* 0BE428 800C1428 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0BE42C 800C142C E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0BE430 800C1430 10871460 */  ps_merge01 f4, f7, f2
/* 0BE434 800C1434 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0BE438 800C1438 10223C60 */  ps_merge01 f1, f2, f7
/* 0BE43C 800C143C E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0BE440 800C1440 39080010 */  addi      r8, r8, 0x10
/* 0BE444 800C1444 116D227A */  ps_madd   f11, f13, f9, f4
/* 0BE448 800C1448 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0BE44C 800C144C 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0BE450 800C1450 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0BE454 800C1454 38E70020 */  addi      r7, r7, 0x20
/* 0BE458 800C1458 108B482A */  ps_add    f4, f11, f9
/* 0BE45C 800C145C 118B4828 */  ps_sub    f12, f11, f9
/* 0BE460 800C1460 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0BE464 800C1464 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE468 800C1468 10685028 */  ps_sub    f3, f8, f10
/* 0BE46C 800C146C 102A682A */  ps_add    f1, f10, f13
/* 0BE470 800C1470 11AA6828 */  ps_sub    f13, f10, f13
/* 0BE474 800C1474 10630732 */  ps_mul    f3, f3, f28
/* 0BE478 800C1478 80080008 */  lwz       r0, 0x8(r8)
/* 0BE47C 800C147C 10240C20 */  ps_merge00 f1, f4, f1
/* 0BE480 800C1480 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0BE484 800C1484 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0BE488 800C1488 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE48C 800C148C 11292028 */  ps_sub    f9, f9, f4
/* 0BE490 800C1490 11AD6420 */  ps_merge00 f13, f13, f12
/* 0BE494 800C1494 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE498 800C1498 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0BE49C 800C149C 11044CE0 */  ps_merge11 f8, f4, f9
/* 0BE4A0 800C14A0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE4A4 800C14A4 116B5028 */  ps_sub    f11, f11, f10
/* 0BE4A8 800C14A8 1181402A */  ps_add    f12, f1, f8
/* 0BE4AC 800C14AC E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE4B0 800C14B0 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0BE4B4 800C14B4 10814028 */  ps_sub    f4, f1, f8
/* 0BE4B8 800C14B8 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE4BC 800C14BC 114D582A */  ps_add    f10, f13, f11
/* 0BE4C0 800C14C0 112D5828 */  ps_sub    f9, f13, f11
/* 0BE4C4 800C14C4 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BE4C8 800C14C8 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0BE4CC 800C14CC 108424A0 */  ps_merge10 f4, f4, f4
/* 0BE4D0 800C14D0 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BE4D4 800C14D4 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BE4D8 800C14D8 7CC60378 */  or        r6, r6, r0
/* 0BE4DC 800C14DC F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BE4E0 800C14E0 4200FDF0 */  bdnz      lbl_800C12D0
lbl_800C14E4:
/* 0BE4E4 800C14E4 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0BE4E8 800C14E8 7FE9FB78 */  mr        r9, r31
/* 0BE4EC 800C14EC 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0BE4F0 800C14F0 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BE4F4 800C14F4 5464103A */  slwi      r4, r3, 2
/* 0BE4F8 800C14F8 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BE4FC 800C14FC 5406103A */  slwi      r6, r0, 2
/* 0BE500 800C1500 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BE504 800C1504 7C872378 */  mr        r7, r4
/* 0BE508 800C1508 1127302A */  ps_add    f9, f7, f6
/* 0BE50C 800C150C E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BE510 800C1510 10673028 */  ps_sub    f3, f7, f6
/* 0BE514 800C1514 7CC73214 */  add       r6, r7, r6
/* 0BE518 800C1518 1129F82A */  ps_add    f9, f9, f31
/* 0BE51C 800C151C 38000003 */  li        r0, 0x3
/* 0BE520 800C1520 1105202A */  ps_add    f8, f5, f4
/* 0BE524 800C1524 7CA83A14 */  add       r5, r8, r7
/* 0BE528 800C1528 10452028 */  ps_sub    f2, f5, f4
/* 0BE52C 800C152C 1089402A */  ps_add    f4, f9, f8
/* 0BE530 800C1530 7C883214 */  add       r4, r8, r6
/* 0BE534 800C1534 1063F82A */  ps_add    f3, f3, f31
/* 0BE538 800C1538 7C0903A6 */  mtctr     r0
lbl_800C153C:
/* 0BE53C 800C153C E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BE540 800C1540 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BE544 800C1544 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BE548 800C1548 11894028 */  ps_sub    f12, f9, f8
/* 0BE54C 800C154C 1023102A */  ps_add    f1, f3, f2
/* 0BE550 800C1550 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BE554 800C1554 11A31028 */  ps_sub    f13, f3, f2
/* 0BE558 800C1558 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BE55C 800C155C 1069502A */  ps_add    f3, f9, f10
/* 0BE560 800C1560 11295028 */  ps_sub    f9, f9, f10
/* 0BE564 800C1564 39290008 */  addi      r9, r9, 0x8
/* 0BE568 800C1568 104B402A */  ps_add    f2, f11, f8
/* 0BE56C 800C156C 116B4028 */  ps_sub    f11, f11, f8
/* 0BE570 800C1570 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BE574 800C1574 1102182A */  ps_add    f8, f2, f3
/* 0BE578 800C1578 11421828 */  ps_sub    f10, f2, f3
/* 0BE57C 800C157C 1069582A */  ps_add    f3, f9, f11
/* 0BE580 800C1580 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BE584 800C1584 1044402A */  ps_add    f2, f4, f8
/* 0BE588 800C1588 10630732 */  ps_mul    f3, f3, f28
/* 0BE58C 800C158C E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BE590 800C1590 10044028 */  ps_sub    f0, f4, f8
/* 0BE594 800C1594 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BE598 800C1598 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BE59C 800C159C 11294028 */  ps_sub    f9, f9, f8
/* 0BE5A0 800C15A0 38E70002 */  addi      r7, r7, 0x2
/* 0BE5A4 800C15A4 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BE5A8 800C15A8 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BE5AC 800C15AC 1041482A */  ps_add    f2, f1, f9
/* 0BE5B0 800C15B0 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BE5B4 800C15B4 10214828 */  ps_sub    f1, f1, f9
/* 0BE5B8 800C15B8 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BE5BC 800C15BC 106D502A */  ps_add    f3, f13, f10
/* 0BE5C0 800C15C0 116B502A */  ps_add    f11, f11, f10
/* 0BE5C4 800C15C4 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BE5C8 800C15C8 38C60002 */  addi      r6, r6, 0x2
/* 0BE5CC 800C15CC 104C5828 */  ps_sub    f2, f12, f11
/* 0BE5D0 800C15D0 106C582A */  ps_add    f3, f12, f11
/* 0BE5D4 800C15D4 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BE5D8 800C15D8 104D5028 */  ps_sub    f2, f13, f10
/* 0BE5DC 800C15DC 1127302A */  ps_add    f9, f7, f6
/* 0BE5E0 800C15E0 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BE5E4 800C15E4 10673028 */  ps_sub    f3, f7, f6
/* 0BE5E8 800C15E8 1129F82A */  ps_add    f9, f9, f31
/* 0BE5EC 800C15EC F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BE5F0 800C15F0 1105202A */  ps_add    f8, f5, f4
/* 0BE5F4 800C15F4 10452028 */  ps_sub    f2, f5, f4
/* 0BE5F8 800C15F8 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BE5FC 800C15FC 7CA83A14 */  add       r5, r8, r7
/* 0BE600 800C1600 1089402A */  ps_add    f4, f9, f8
/* 0BE604 800C1604 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BE608 800C1608 1063F82A */  ps_add    f3, f3, f31
/* 0BE60C 800C160C 7C883214 */  add       r4, r8, r6
/* 0BE610 800C1610 4200FF2C */  bdnz      lbl_800C153C
/* 0BE614 800C1614 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BE618 800C1618 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BE61C 800C161C E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BE620 800C1620 11894028 */  ps_sub    f12, f9, f8
/* 0BE624 800C1624 1023102A */  ps_add    f1, f3, f2
/* 0BE628 800C1628 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BE62C 800C162C 11A31028 */  ps_sub    f13, f3, f2
/* 0BE630 800C1630 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BE634 800C1634 1069502A */  ps_add    f3, f9, f10
/* 0BE638 800C1638 11295028 */  ps_sub    f9, f9, f10
/* 0BE63C 800C163C 104B402A */  ps_add    f2, f11, f8
/* 0BE640 800C1640 116B4028 */  ps_sub    f11, f11, f8
/* 0BE644 800C1644 1102182A */  ps_add    f8, f2, f3
/* 0BE648 800C1648 11421828 */  ps_sub    f10, f2, f3
/* 0BE64C 800C164C 1069582A */  ps_add    f3, f9, f11
/* 0BE650 800C1650 1044402A */  ps_add    f2, f4, f8
/* 0BE654 800C1654 10630732 */  ps_mul    f3, f3, f28
/* 0BE658 800C1658 10044028 */  ps_sub    f0, f4, f8
/* 0BE65C 800C165C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BE660 800C1660 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BE664 800C1664 11294028 */  ps_sub    f9, f9, f8
/* 0BE668 800C1668 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BE66C 800C166C F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BE670 800C1670 1041482A */  ps_add    f2, f1, f9
/* 0BE674 800C1674 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BE678 800C1678 10214828 */  ps_sub    f1, f1, f9
/* 0BE67C 800C167C F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BE680 800C1680 106D502A */  ps_add    f3, f13, f10
/* 0BE684 800C1684 116B502A */  ps_add    f11, f11, f10
/* 0BE688 800C1688 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BE68C 800C168C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BE690 800C1690 104C5828 */  ps_sub    f2, f12, f11
/* 0BE694 800C1694 106C582A */  ps_add    f3, f12, f11
/* 0BE698 800C1698 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BE69C 800C169C 104D5028 */  ps_sub    f2, f13, f10
/* 0BE6A0 800C16A0 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BE6A4 800C16A4 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BE6A8 800C16A8 811F011C */  lwz       r8, 0x11c(r31)
/* 0BE6AC 800C16AC 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0BE6B0 800C16B0 39430008 */  addi      r10, r3, 0x8
/* 0BE6B4 800C16B4 393FFFF8 */  subi      r9, r31, 0x8
/* 0BE6B8 800C16B8 38800008 */  li        r4, 0x8
/* 0BE6BC 800C16BC 7C8903A6 */  mtctr     r4
lbl_800C16C0:
/* 0BE6C0 800C16C0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE6C4 800C16C4 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE6C8 800C16C8 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE6CC 800C16CC 80080008 */  lwz       r0, 0x8(r8)
/* 0BE6D0 800C16D0 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE6D4 800C16D4 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE6D8 800C16D8 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE6DC 800C16DC 7CC60379 */  or.       r6, r6, r0
lbl_800C16E0:
/* 0BE6E0 800C16E0 2C060000 */  cmpwi     r6, 0x0
/* 0BE6E4 800C16E4 40820148 */  bne       lbl_800C182C
/* 0BE6E8 800C16E8 10873C20 */  ps_merge00 f4, f7, f7
/* 0BE6EC 800C16EC 2C050000 */  cmpwi     r5, 0x0
/* 0BE6F0 800C16F0 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0BE6F4 800C16F4 4082009C */  bne       lbl_800C1790
/* 0BE6F8 800C16F8 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0BE6FC 800C16FC 2C040000 */  cmpwi     r4, 0x0
/* 0BE700 800C1700 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0BE704 800C1704 40820018 */  bne       lbl_800C171C
/* 0BE708 800C1708 38E70020 */  addi      r7, r7, 0x20
/* 0BE70C 800C170C F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0BE710 800C1710 39080010 */  addi      r8, r8, 0x10
/* 0BE714 800C1714 4200FFAC */  bdnz      lbl_800C16C0
/* 0BE718 800C1718 480001DC */  b         lbl_800C18F4
lbl_800C171C:
/* 0BE71C 800C171C 39080010 */  addi      r8, r8, 0x10
/* 0BE720 800C1720 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0BE724 800C1724 38E70020 */  addi      r7, r7, 0x20
/* 0BE728 800C1728 10473C20 */  ps_merge00 f2, f7, f7
/* 0BE72C 800C172C 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE730 800C1730 103CE828 */  ps_sub    f1, f28, f29
/* 0BE734 800C1734 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0BE738 800C1738 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE73C 800C173C 11476CE0 */  ps_merge11 f10, f7, f13
/* 0BE740 800C1740 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE744 800C1744 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0BE748 800C1748 1102502A */  ps_add    f8, f2, f10
/* 0BE74C 800C174C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE750 800C1750 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0BE754 800C1754 11425028 */  ps_sub    f10, f2, f10
/* 0BE758 800C1758 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE75C 800C175C 1062482A */  ps_add    f3, f2, f9
/* 0BE760 800C1760 80080008 */  lwz       r0, 0x8(r8)
/* 0BE764 800C1764 11224828 */  ps_sub    f9, f2, f9
/* 0BE768 800C1768 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0BE76C 800C176C 11294CA0 */  ps_merge10 f9, f9, f9
/* 0BE770 800C1770 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0BE774 800C1774 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BE778 800C1778 7CC60378 */  or        r6, r6, r0
/* 0BE77C 800C177C F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BE780 800C1780 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE784 800C1784 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BE788 800C1788 4200FF58 */  bdnz      lbl_800C16E0
/* 0BE78C 800C178C 48000168 */  b         lbl_800C18F4
lbl_800C1790:
/* 0BE790 800C1790 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0BE794 800C1794 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0BE798 800C1798 39080010 */  addi      r8, r8, 0x10
/* 0BE79C 800C179C 102100B2 */  ps_mul    f1, f1, f2
/* 0BE7A0 800C17A0 38E70020 */  addi      r7, r7, 0x20
/* 0BE7A4 800C17A4 11870828 */  ps_sub    f12, f7, f1
/* 0BE7A8 800C17A8 11A7082A */  ps_add    f13, f7, f1
/* 0BE7AC 800C17AC 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE7B0 800C17B0 116166FA */  ps_madd   f11, f1, f27, f12
/* 0BE7B4 800C17B4 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0BE7B8 800C17B8 106C0732 */  ps_mul    f3, f12, f28
/* 0BE7BC 800C17BC 116D5C20 */  ps_merge00 f11, f13, f11
/* 0BE7C0 800C17C0 80080008 */  lwz       r0, 0x8(r8)
/* 0BE7C4 800C17C4 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0BE7C8 800C17C8 114A6420 */  ps_merge00 f10, f10, f12
/* 0BE7CC 800C17CC 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE7D0 800C17D0 11296828 */  ps_sub    f9, f9, f13
/* 0BE7D4 800C17D4 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0BE7D8 800C17D8 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE7DC 800C17DC 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0BE7E0 800C17E0 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0BE7E4 800C17E4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE7E8 800C17E8 104B682A */  ps_add    f2, f11, f13
/* 0BE7EC 800C17EC 11081828 */  ps_sub    f8, f8, f3
/* 0BE7F0 800C17F0 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE7F4 800C17F4 118344E0 */  ps_merge11 f12, f3, f8
/* 0BE7F8 800C17F8 116B6828 */  ps_sub    f11, f11, f13
/* 0BE7FC 800C17FC F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0BE800 800C1800 108A602A */  ps_add    f4, f10, f12
/* 0BE804 800C1804 102A6028 */  ps_sub    f1, f10, f12
/* 0BE808 800C1808 7CC60378 */  or        r6, r6, r0
/* 0BE80C 800C180C F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BE810 800C1810 10210CA0 */  ps_merge10 f1, f1, f1
/* 0BE814 800C1814 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0BE818 800C1818 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0BE81C 800C181C 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE820 800C1820 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0BE824 800C1824 4200FEBC */  bdnz      lbl_800C16E0
/* 0BE828 800C1828 480000CC */  b         lbl_800C18F4
lbl_800C182C:
/* 0BE82C 800C182C E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0BE830 800C1830 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0BE834 800C1834 104202B2 */  ps_mul    f2, f2, f10
/* 0BE838 800C1838 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0BE83C 800C183C E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0BE840 800C1840 10871460 */  ps_merge01 f4, f7, f2
/* 0BE844 800C1844 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0BE848 800C1848 10223C60 */  ps_merge01 f1, f2, f7
/* 0BE84C 800C184C E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0BE850 800C1850 39080010 */  addi      r8, r8, 0x10
/* 0BE854 800C1854 116D227A */  ps_madd   f11, f13, f9, f4
/* 0BE858 800C1858 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0BE85C 800C185C 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0BE860 800C1860 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0BE864 800C1864 38E70020 */  addi      r7, r7, 0x20
/* 0BE868 800C1868 108B482A */  ps_add    f4, f11, f9
/* 0BE86C 800C186C 118B4828 */  ps_sub    f12, f11, f9
/* 0BE870 800C1870 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0BE874 800C1874 80C8000C */  lwz       r6, 0xc(r8)
/* 0BE878 800C1878 10685028 */  ps_sub    f3, f8, f10
/* 0BE87C 800C187C 102A682A */  ps_add    f1, f10, f13
/* 0BE880 800C1880 11AA6828 */  ps_sub    f13, f10, f13
/* 0BE884 800C1884 10630732 */  ps_mul    f3, f3, f28
/* 0BE888 800C1888 80080008 */  lwz       r0, 0x8(r8)
/* 0BE88C 800C188C 10240C20 */  ps_merge00 f1, f4, f1
/* 0BE890 800C1890 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0BE894 800C1894 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0BE898 800C1898 80A80004 */  lwz       r5, 0x4(r8)
/* 0BE89C 800C189C 11292028 */  ps_sub    f9, f9, f4
/* 0BE8A0 800C18A0 11AD6420 */  ps_merge00 f13, f13, f12
/* 0BE8A4 800C18A4 A0880002 */  lhz       r4, 0x2(r8)
/* 0BE8A8 800C18A8 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0BE8AC 800C18AC 11044CE0 */  ps_merge11 f8, f4, f9
/* 0BE8B0 800C18B0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BE8B4 800C18B4 116B5028 */  ps_sub    f11, f11, f10
/* 0BE8B8 800C18B8 1181402A */  ps_add    f12, f1, f8
/* 0BE8BC 800C18BC E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BE8C0 800C18C0 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0BE8C4 800C18C4 10814028 */  ps_sub    f4, f1, f8
/* 0BE8C8 800C18C8 10E701B2 */  ps_mul    f7, f7, f6
/* 0BE8CC 800C18CC 114D582A */  ps_add    f10, f13, f11
/* 0BE8D0 800C18D0 112D5828 */  ps_sub    f9, f13, f11
/* 0BE8D4 800C18D4 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BE8D8 800C18D8 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0BE8DC 800C18DC 108424A0 */  ps_merge10 f4, f4, f4
/* 0BE8E0 800C18E0 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BE8E4 800C18E4 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BE8E8 800C18E8 7CC60378 */  or        r6, r6, r0
/* 0BE8EC 800C18EC F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BE8F0 800C18F0 4200FDF0 */  bdnz      lbl_800C16E0
lbl_800C18F4:
/* 0BE8F4 800C18F4 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0BE8F8 800C18F8 7FE9FB78 */  mr        r9, r31
/* 0BE8FC 800C18FC 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0BE900 800C1900 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BE904 800C1904 554A103A */  slwi      r10, r10, 2
/* 0BE908 800C1908 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BE90C 800C190C 5406103A */  slwi      r6, r0, 2
/* 0BE910 800C1910 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BE914 800C1914 7D475378 */  mr        r7, r10
/* 0BE918 800C1918 1127302A */  ps_add    f9, f7, f6
/* 0BE91C 800C191C E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BE920 800C1920 10673028 */  ps_sub    f3, f7, f6
/* 0BE924 800C1924 7CC73214 */  add       r6, r7, r6
/* 0BE928 800C1928 1129F82A */  ps_add    f9, f9, f31
/* 0BE92C 800C192C 38000003 */  li        r0, 0x3
/* 0BE930 800C1930 1105202A */  ps_add    f8, f5, f4
/* 0BE934 800C1934 7CA83A14 */  add       r5, r8, r7
/* 0BE938 800C1938 10452028 */  ps_sub    f2, f5, f4
/* 0BE93C 800C193C 1089402A */  ps_add    f4, f9, f8
/* 0BE940 800C1940 7C883214 */  add       r4, r8, r6
/* 0BE944 800C1944 1063F82A */  ps_add    f3, f3, f31
/* 0BE948 800C1948 7C0903A6 */  mtctr     r0
lbl_800C194C:
/* 0BE94C 800C194C E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BE950 800C1950 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BE954 800C1954 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BE958 800C1958 11894028 */  ps_sub    f12, f9, f8
/* 0BE95C 800C195C 1023102A */  ps_add    f1, f3, f2
/* 0BE960 800C1960 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BE964 800C1964 11A31028 */  ps_sub    f13, f3, f2
/* 0BE968 800C1968 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BE96C 800C196C 1069502A */  ps_add    f3, f9, f10
/* 0BE970 800C1970 11295028 */  ps_sub    f9, f9, f10
/* 0BE974 800C1974 39290008 */  addi      r9, r9, 0x8
/* 0BE978 800C1978 104B402A */  ps_add    f2, f11, f8
/* 0BE97C 800C197C 116B4028 */  ps_sub    f11, f11, f8
/* 0BE980 800C1980 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BE984 800C1984 1102182A */  ps_add    f8, f2, f3
/* 0BE988 800C1988 11421828 */  ps_sub    f10, f2, f3
/* 0BE98C 800C198C 1069582A */  ps_add    f3, f9, f11
/* 0BE990 800C1990 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BE994 800C1994 1044402A */  ps_add    f2, f4, f8
/* 0BE998 800C1998 10630732 */  ps_mul    f3, f3, f28
/* 0BE99C 800C199C E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BE9A0 800C19A0 10044028 */  ps_sub    f0, f4, f8
/* 0BE9A4 800C19A4 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BE9A8 800C19A8 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BE9AC 800C19AC 11294028 */  ps_sub    f9, f9, f8
/* 0BE9B0 800C19B0 38E70002 */  addi      r7, r7, 0x2
/* 0BE9B4 800C19B4 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BE9B8 800C19B8 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BE9BC 800C19BC 1041482A */  ps_add    f2, f1, f9
/* 0BE9C0 800C19C0 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BE9C4 800C19C4 10214828 */  ps_sub    f1, f1, f9
/* 0BE9C8 800C19C8 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BE9CC 800C19CC 106D502A */  ps_add    f3, f13, f10
/* 0BE9D0 800C19D0 116B502A */  ps_add    f11, f11, f10
/* 0BE9D4 800C19D4 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BE9D8 800C19D8 38C60002 */  addi      r6, r6, 0x2
/* 0BE9DC 800C19DC 104C5828 */  ps_sub    f2, f12, f11
/* 0BE9E0 800C19E0 106C582A */  ps_add    f3, f12, f11
/* 0BE9E4 800C19E4 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BE9E8 800C19E8 104D5028 */  ps_sub    f2, f13, f10
/* 0BE9EC 800C19EC 1127302A */  ps_add    f9, f7, f6
/* 0BE9F0 800C19F0 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BE9F4 800C19F4 10673028 */  ps_sub    f3, f7, f6
/* 0BE9F8 800C19F8 1129F82A */  ps_add    f9, f9, f31
/* 0BE9FC 800C19FC F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BEA00 800C1A00 1105202A */  ps_add    f8, f5, f4
/* 0BEA04 800C1A04 10452028 */  ps_sub    f2, f5, f4
/* 0BEA08 800C1A08 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BEA0C 800C1A0C 7CA83A14 */  add       r5, r8, r7
/* 0BEA10 800C1A10 1089402A */  ps_add    f4, f9, f8
/* 0BEA14 800C1A14 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BEA18 800C1A18 1063F82A */  ps_add    f3, f3, f31
/* 0BEA1C 800C1A1C 7C883214 */  add       r4, r8, r6
/* 0BEA20 800C1A20 4200FF2C */  bdnz      lbl_800C194C
/* 0BEA24 800C1A24 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BEA28 800C1A28 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BEA2C 800C1A2C E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BEA30 800C1A30 11894028 */  ps_sub    f12, f9, f8
/* 0BEA34 800C1A34 1023102A */  ps_add    f1, f3, f2
/* 0BEA38 800C1A38 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BEA3C 800C1A3C 11A31028 */  ps_sub    f13, f3, f2
/* 0BEA40 800C1A40 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BEA44 800C1A44 1069502A */  ps_add    f3, f9, f10
/* 0BEA48 800C1A48 11295028 */  ps_sub    f9, f9, f10
/* 0BEA4C 800C1A4C 104B402A */  ps_add    f2, f11, f8
/* 0BEA50 800C1A50 116B4028 */  ps_sub    f11, f11, f8
/* 0BEA54 800C1A54 1102182A */  ps_add    f8, f2, f3
/* 0BEA58 800C1A58 11421828 */  ps_sub    f10, f2, f3
/* 0BEA5C 800C1A5C 1069582A */  ps_add    f3, f9, f11
/* 0BEA60 800C1A60 1044402A */  ps_add    f2, f4, f8
/* 0BEA64 800C1A64 10630732 */  ps_mul    f3, f3, f28
/* 0BEA68 800C1A68 10044028 */  ps_sub    f0, f4, f8
/* 0BEA6C 800C1A6C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BEA70 800C1A70 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BEA74 800C1A74 11294028 */  ps_sub    f9, f9, f8
/* 0BEA78 800C1A78 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BEA7C 800C1A7C F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BEA80 800C1A80 1041482A */  ps_add    f2, f1, f9
/* 0BEA84 800C1A84 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BEA88 800C1A88 10214828 */  ps_sub    f1, f1, f9
/* 0BEA8C 800C1A8C F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BEA90 800C1A90 106D502A */  ps_add    f3, f13, f10
/* 0BEA94 800C1A94 116B502A */  ps_add    f11, f11, f10
/* 0BEA98 800C1A98 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BEA9C 800C1A9C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BEAA0 800C1AA0 104C5828 */  ps_sub    f2, f12, f11
/* 0BEAA4 800C1AA4 106C582A */  ps_add    f3, f12, f11
/* 0BEAA8 800C1AA8 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BEAAC 800C1AAC 104D5028 */  ps_sub    f2, f13, f10
/* 0BEAB0 800C1AB0 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BEAB4 800C1AB4 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BEAB8 800C1AB8 811F0120 */  lwz       r8, 0x120(r31)
/* 0BEABC 800C1ABC 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0BEAC0 800C1AC0 393FFFF8 */  subi      r9, r31, 0x8
/* 0BEAC4 800C1AC4 38800008 */  li        r4, 0x8
/* 0BEAC8 800C1AC8 7C8903A6 */  mtctr     r4
lbl_800C1ACC:
/* 0BEACC 800C1ACC E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BEAD0 800C1AD0 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BEAD4 800C1AD4 80C8000C */  lwz       r6, 0xc(r8)
/* 0BEAD8 800C1AD8 80080008 */  lwz       r0, 0x8(r8)
/* 0BEADC 800C1ADC 10E701B2 */  ps_mul    f7, f7, f6
/* 0BEAE0 800C1AE0 80A80004 */  lwz       r5, 0x4(r8)
/* 0BEAE4 800C1AE4 A0880002 */  lhz       r4, 0x2(r8)
/* 0BEAE8 800C1AE8 7CC60378 */  or        r6, r6, r0
lbl_800C1AEC:
/* 0BEAEC 800C1AEC 2C060000 */  cmpwi     r6, 0x0
/* 0BEAF0 800C1AF0 40820148 */  bne       lbl_800C1C38
/* 0BEAF4 800C1AF4 10873C20 */  ps_merge00 f4, f7, f7
/* 0BEAF8 800C1AF8 2C050000 */  cmpwi     r5, 0x0
/* 0BEAFC 800C1AFC F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0BEB00 800C1B00 4082009C */  bne       lbl_800C1B9C
/* 0BEB04 800C1B04 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0BEB08 800C1B08 2C040000 */  cmpwi     r4, 0x0
/* 0BEB0C 800C1B0C F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0BEB10 800C1B10 40820018 */  bne       lbl_800C1B28
/* 0BEB14 800C1B14 38E70020 */  addi      r7, r7, 0x20
/* 0BEB18 800C1B18 F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0BEB1C 800C1B1C 39080010 */  addi      r8, r8, 0x10
/* 0BEB20 800C1B20 4200FFAC */  bdnz      lbl_800C1ACC
/* 0BEB24 800C1B24 480001DC */  b         lbl_800C1D00
lbl_800C1B28:
/* 0BEB28 800C1B28 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0BEB2C 800C1B2C 39080010 */  addi      r8, r8, 0x10
/* 0BEB30 800C1B30 10473C20 */  ps_merge00 f2, f7, f7
/* 0BEB34 800C1B34 38E70020 */  addi      r7, r7, 0x20
/* 0BEB38 800C1B38 103CE828 */  ps_sub    f1, f28, f29
/* 0BEB3C 800C1B3C 80A80004 */  lwz       r5, 0x4(r8)
/* 0BEB40 800C1B40 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0BEB44 800C1B44 A0880002 */  lhz       r4, 0x2(r8)
/* 0BEB48 800C1B48 11476CE0 */  ps_merge11 f10, f7, f13
/* 0BEB4C 800C1B4C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BEB50 800C1B50 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0BEB54 800C1B54 1102502A */  ps_add    f8, f2, f10
/* 0BEB58 800C1B58 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BEB5C 800C1B5C 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0BEB60 800C1B60 11425028 */  ps_sub    f10, f2, f10
/* 0BEB64 800C1B64 80C8000C */  lwz       r6, 0xc(r8)
/* 0BEB68 800C1B68 1062482A */  ps_add    f3, f2, f9
/* 0BEB6C 800C1B6C 80080008 */  lwz       r0, 0x8(r8)
/* 0BEB70 800C1B70 11224828 */  ps_sub    f9, f2, f9
/* 0BEB74 800C1B74 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0BEB78 800C1B78 11294CA0 */  ps_merge10 f9, f9, f9
/* 0BEB7C 800C1B7C F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0BEB80 800C1B80 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BEB84 800C1B84 7CC60378 */  or        r6, r6, r0
/* 0BEB88 800C1B88 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BEB8C 800C1B8C 10E701B2 */  ps_mul    f7, f7, f6
/* 0BEB90 800C1B90 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BEB94 800C1B94 4200FF58 */  bdnz      lbl_800C1AEC
/* 0BEB98 800C1B98 48000168 */  b         lbl_800C1D00
lbl_800C1B9C:
/* 0BEB9C 800C1B9C E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0BEBA0 800C1BA0 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0BEBA4 800C1BA4 39080010 */  addi      r8, r8, 0x10
/* 0BEBA8 800C1BA8 102100B2 */  ps_mul    f1, f1, f2
/* 0BEBAC 800C1BAC 38E70020 */  addi      r7, r7, 0x20
/* 0BEBB0 800C1BB0 11870828 */  ps_sub    f12, f7, f1
/* 0BEBB4 800C1BB4 11A7082A */  ps_add    f13, f7, f1
/* 0BEBB8 800C1BB8 80C8000C */  lwz       r6, 0xc(r8)
/* 0BEBBC 800C1BBC 116166FA */  ps_madd   f11, f1, f27, f12
/* 0BEBC0 800C1BC0 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0BEBC4 800C1BC4 106C0732 */  ps_mul    f3, f12, f28
/* 0BEBC8 800C1BC8 116D5C20 */  ps_merge00 f11, f13, f11
/* 0BEBCC 800C1BCC 80080008 */  lwz       r0, 0x8(r8)
/* 0BEBD0 800C1BD0 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0BEBD4 800C1BD4 114A6420 */  ps_merge00 f10, f10, f12
/* 0BEBD8 800C1BD8 80A80004 */  lwz       r5, 0x4(r8)
/* 0BEBDC 800C1BDC 11296828 */  ps_sub    f9, f9, f13
/* 0BEBE0 800C1BE0 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0BEBE4 800C1BE4 A0880002 */  lhz       r4, 0x2(r8)
/* 0BEBE8 800C1BE8 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0BEBEC 800C1BEC 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0BEBF0 800C1BF0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BEBF4 800C1BF4 104B682A */  ps_add    f2, f11, f13
/* 0BEBF8 800C1BF8 11081828 */  ps_sub    f8, f8, f3
/* 0BEBFC 800C1BFC E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BEC00 800C1C00 118344E0 */  ps_merge11 f12, f3, f8
/* 0BEC04 800C1C04 116B6828 */  ps_sub    f11, f11, f13
/* 0BEC08 800C1C08 F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0BEC0C 800C1C0C 108A602A */  ps_add    f4, f10, f12
/* 0BEC10 800C1C10 102A6028 */  ps_sub    f1, f10, f12
/* 0BEC14 800C1C14 7CC60378 */  or        r6, r6, r0
/* 0BEC18 800C1C18 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BEC1C 800C1C1C 10210CA0 */  ps_merge10 f1, f1, f1
/* 0BEC20 800C1C20 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0BEC24 800C1C24 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0BEC28 800C1C28 10E701B2 */  ps_mul    f7, f7, f6
/* 0BEC2C 800C1C2C F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0BEC30 800C1C30 4200FEBC */  bdnz      lbl_800C1AEC
/* 0BEC34 800C1C34 480000CC */  b         lbl_800C1D00
lbl_800C1C38:
/* 0BEC38 800C1C38 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0BEC3C 800C1C3C E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0BEC40 800C1C40 104202B2 */  ps_mul    f2, f2, f10
/* 0BEC44 800C1C44 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0BEC48 800C1C48 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0BEC4C 800C1C4C 10871460 */  ps_merge01 f4, f7, f2
/* 0BEC50 800C1C50 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0BEC54 800C1C54 10223C60 */  ps_merge01 f1, f2, f7
/* 0BEC58 800C1C58 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0BEC5C 800C1C5C 39080010 */  addi      r8, r8, 0x10
/* 0BEC60 800C1C60 116D227A */  ps_madd   f11, f13, f9, f4
/* 0BEC64 800C1C64 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0BEC68 800C1C68 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0BEC6C 800C1C6C 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0BEC70 800C1C70 38E70020 */  addi      r7, r7, 0x20
/* 0BEC74 800C1C74 108B482A */  ps_add    f4, f11, f9
/* 0BEC78 800C1C78 118B4828 */  ps_sub    f12, f11, f9
/* 0BEC7C 800C1C7C 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0BEC80 800C1C80 80C8000C */  lwz       r6, 0xc(r8)
/* 0BEC84 800C1C84 10685028 */  ps_sub    f3, f8, f10
/* 0BEC88 800C1C88 102A682A */  ps_add    f1, f10, f13
/* 0BEC8C 800C1C8C 11AA6828 */  ps_sub    f13, f10, f13
/* 0BEC90 800C1C90 10630732 */  ps_mul    f3, f3, f28
/* 0BEC94 800C1C94 80080008 */  lwz       r0, 0x8(r8)
/* 0BEC98 800C1C98 10240C20 */  ps_merge00 f1, f4, f1
/* 0BEC9C 800C1C9C 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0BECA0 800C1CA0 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0BECA4 800C1CA4 80A80004 */  lwz       r5, 0x4(r8)
/* 0BECA8 800C1CA8 11292028 */  ps_sub    f9, f9, f4
/* 0BECAC 800C1CAC 11AD6420 */  ps_merge00 f13, f13, f12
/* 0BECB0 800C1CB0 A0880002 */  lhz       r4, 0x2(r8)
/* 0BECB4 800C1CB4 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0BECB8 800C1CB8 11044CE0 */  ps_merge11 f8, f4, f9
/* 0BECBC 800C1CBC E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BECC0 800C1CC0 116B5028 */  ps_sub    f11, f11, f10
/* 0BECC4 800C1CC4 1181402A */  ps_add    f12, f1, f8
/* 0BECC8 800C1CC8 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BECCC 800C1CCC 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0BECD0 800C1CD0 10814028 */  ps_sub    f4, f1, f8
/* 0BECD4 800C1CD4 10E701B2 */  ps_mul    f7, f7, f6
/* 0BECD8 800C1CD8 114D582A */  ps_add    f10, f13, f11
/* 0BECDC 800C1CDC 112D5828 */  ps_sub    f9, f13, f11
/* 0BECE0 800C1CE0 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BECE4 800C1CE4 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0BECE8 800C1CE8 108424A0 */  ps_merge10 f4, f4, f4
/* 0BECEC 800C1CEC F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BECF0 800C1CF0 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BECF4 800C1CF4 7CC60378 */  or        r6, r6, r0
/* 0BECF8 800C1CF8 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BECFC 800C1CFC 4200FDF0 */  bdnz      lbl_800C1AEC
lbl_800C1D00:
/* 0BED00 800C1D00 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0BED04 800C1D04 7FE9FB78 */  mr        r9, r31
/* 0BED08 800C1D08 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0BED0C 800C1D0C E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BED10 800C1D10 54071838 */  slwi      r7, r0, 3
/* 0BED14 800C1D14 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BED18 800C1D18 5464103A */  slwi      r4, r3, 2
/* 0BED1C 800C1D1C E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BED20 800C1D20 5406103A */  slwi      r6, r0, 2
/* 0BED24 800C1D24 1127302A */  ps_add    f9, f7, f6
/* 0BED28 800C1D28 7CE72214 */  add       r7, r7, r4
/* 0BED2C 800C1D2C E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BED30 800C1D30 10673028 */  ps_sub    f3, f7, f6
/* 0BED34 800C1D34 7CC73214 */  add       r6, r7, r6
/* 0BED38 800C1D38 1129F82A */  ps_add    f9, f9, f31
/* 0BED3C 800C1D3C 38000003 */  li        r0, 0x3
/* 0BED40 800C1D40 1105202A */  ps_add    f8, f5, f4
/* 0BED44 800C1D44 7CA83A14 */  add       r5, r8, r7
/* 0BED48 800C1D48 10452028 */  ps_sub    f2, f5, f4
/* 0BED4C 800C1D4C 1089402A */  ps_add    f4, f9, f8
/* 0BED50 800C1D50 7C883214 */  add       r4, r8, r6
/* 0BED54 800C1D54 1063F82A */  ps_add    f3, f3, f31
/* 0BED58 800C1D58 7C0903A6 */  mtctr     r0
lbl_800C1D5C:
/* 0BED5C 800C1D5C E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BED60 800C1D60 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BED64 800C1D64 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BED68 800C1D68 11894028 */  ps_sub    f12, f9, f8
/* 0BED6C 800C1D6C 1023102A */  ps_add    f1, f3, f2
/* 0BED70 800C1D70 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BED74 800C1D74 11A31028 */  ps_sub    f13, f3, f2
/* 0BED78 800C1D78 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BED7C 800C1D7C 1069502A */  ps_add    f3, f9, f10
/* 0BED80 800C1D80 11295028 */  ps_sub    f9, f9, f10
/* 0BED84 800C1D84 39290008 */  addi      r9, r9, 0x8
/* 0BED88 800C1D88 104B402A */  ps_add    f2, f11, f8
/* 0BED8C 800C1D8C 116B4028 */  ps_sub    f11, f11, f8
/* 0BED90 800C1D90 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BED94 800C1D94 1102182A */  ps_add    f8, f2, f3
/* 0BED98 800C1D98 11421828 */  ps_sub    f10, f2, f3
/* 0BED9C 800C1D9C 1069582A */  ps_add    f3, f9, f11
/* 0BEDA0 800C1DA0 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BEDA4 800C1DA4 1044402A */  ps_add    f2, f4, f8
/* 0BEDA8 800C1DA8 10630732 */  ps_mul    f3, f3, f28
/* 0BEDAC 800C1DAC E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BEDB0 800C1DB0 10044028 */  ps_sub    f0, f4, f8
/* 0BEDB4 800C1DB4 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BEDB8 800C1DB8 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BEDBC 800C1DBC 11294028 */  ps_sub    f9, f9, f8
/* 0BEDC0 800C1DC0 38E70002 */  addi      r7, r7, 0x2
/* 0BEDC4 800C1DC4 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BEDC8 800C1DC8 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BEDCC 800C1DCC 1041482A */  ps_add    f2, f1, f9
/* 0BEDD0 800C1DD0 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BEDD4 800C1DD4 10214828 */  ps_sub    f1, f1, f9
/* 0BEDD8 800C1DD8 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BEDDC 800C1DDC 106D502A */  ps_add    f3, f13, f10
/* 0BEDE0 800C1DE0 116B502A */  ps_add    f11, f11, f10
/* 0BEDE4 800C1DE4 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BEDE8 800C1DE8 38C60002 */  addi      r6, r6, 0x2
/* 0BEDEC 800C1DEC 104C5828 */  ps_sub    f2, f12, f11
/* 0BEDF0 800C1DF0 106C582A */  ps_add    f3, f12, f11
/* 0BEDF4 800C1DF4 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BEDF8 800C1DF8 104D5028 */  ps_sub    f2, f13, f10
/* 0BEDFC 800C1DFC 1127302A */  ps_add    f9, f7, f6
/* 0BEE00 800C1E00 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BEE04 800C1E04 10673028 */  ps_sub    f3, f7, f6
/* 0BEE08 800C1E08 1129F82A */  ps_add    f9, f9, f31
/* 0BEE0C 800C1E0C F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BEE10 800C1E10 1105202A */  ps_add    f8, f5, f4
/* 0BEE14 800C1E14 10452028 */  ps_sub    f2, f5, f4
/* 0BEE18 800C1E18 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BEE1C 800C1E1C 7CA83A14 */  add       r5, r8, r7
/* 0BEE20 800C1E20 1089402A */  ps_add    f4, f9, f8
/* 0BEE24 800C1E24 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BEE28 800C1E28 1063F82A */  ps_add    f3, f3, f31
/* 0BEE2C 800C1E2C 7C883214 */  add       r4, r8, r6
/* 0BEE30 800C1E30 4200FF2C */  bdnz      lbl_800C1D5C
/* 0BEE34 800C1E34 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BEE38 800C1E38 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BEE3C 800C1E3C E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BEE40 800C1E40 11894028 */  ps_sub    f12, f9, f8
/* 0BEE44 800C1E44 1023102A */  ps_add    f1, f3, f2
/* 0BEE48 800C1E48 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BEE4C 800C1E4C 11A31028 */  ps_sub    f13, f3, f2
/* 0BEE50 800C1E50 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BEE54 800C1E54 1069502A */  ps_add    f3, f9, f10
/* 0BEE58 800C1E58 11295028 */  ps_sub    f9, f9, f10
/* 0BEE5C 800C1E5C 104B402A */  ps_add    f2, f11, f8
/* 0BEE60 800C1E60 116B4028 */  ps_sub    f11, f11, f8
/* 0BEE64 800C1E64 1102182A */  ps_add    f8, f2, f3
/* 0BEE68 800C1E68 11421828 */  ps_sub    f10, f2, f3
/* 0BEE6C 800C1E6C 1069582A */  ps_add    f3, f9, f11
/* 0BEE70 800C1E70 1044402A */  ps_add    f2, f4, f8
/* 0BEE74 800C1E74 10630732 */  ps_mul    f3, f3, f28
/* 0BEE78 800C1E78 10044028 */  ps_sub    f0, f4, f8
/* 0BEE7C 800C1E7C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BEE80 800C1E80 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BEE84 800C1E84 11294028 */  ps_sub    f9, f9, f8
/* 0BEE88 800C1E88 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BEE8C 800C1E8C F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BEE90 800C1E90 1041482A */  ps_add    f2, f1, f9
/* 0BEE94 800C1E94 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BEE98 800C1E98 10214828 */  ps_sub    f1, f1, f9
/* 0BEE9C 800C1E9C F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BEEA0 800C1EA0 106D502A */  ps_add    f3, f13, f10
/* 0BEEA4 800C1EA4 116B502A */  ps_add    f11, f11, f10
/* 0BEEA8 800C1EA8 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BEEAC 800C1EAC 104C5828 */  ps_sub    f2, f12, f11
/* 0BEEB0 800C1EB0 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BEEB4 800C1EB4 106C582A */  ps_add    f3, f12, f11
/* 0BEEB8 800C1EB8 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BEEBC 800C1EBC 104D5028 */  ps_sub    f2, f13, f10
/* 0BEEC0 800C1EC0 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BEEC4 800C1EC4 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BEEC8 800C1EC8 811F0124 */  lwz       r8, 0x124(r31)
/* 0BEECC 800C1ECC 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0BEED0 800C1ED0 39230008 */  addi      r9, r3, 0x8
/* 0BEED4 800C1ED4 395FFFF8 */  subi      r10, r31, 0x8
/* 0BEED8 800C1ED8 38800008 */  li        r4, 0x8
/* 0BEEDC 800C1EDC 7C8903A6 */  mtctr     r4
lbl_800C1EE0:
/* 0BEEE0 800C1EE0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BEEE4 800C1EE4 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BEEE8 800C1EE8 80C8000C */  lwz       r6, 0xc(r8)
/* 0BEEEC 800C1EEC 80080008 */  lwz       r0, 0x8(r8)
/* 0BEEF0 800C1EF0 10E701B2 */  ps_mul    f7, f7, f6
/* 0BEEF4 800C1EF4 80A80004 */  lwz       r5, 0x4(r8)
/* 0BEEF8 800C1EF8 A0880002 */  lhz       r4, 0x2(r8)
/* 0BEEFC 800C1EFC 7CC60378 */  or        r6, r6, r0
lbl_800C1F00:
/* 0BEF00 800C1F00 2C060000 */  cmpwi     r6, 0x0
/* 0BEF04 800C1F04 40820148 */  bne       lbl_800C204C
/* 0BEF08 800C1F08 10873C20 */  ps_merge00 f4, f7, f7
/* 0BEF0C 800C1F0C 2C050000 */  cmpwi     r5, 0x0
/* 0BEF10 800C1F10 F08A0008 */  psq_st    f4, 0x8(r10), 0, qr0
/* 0BEF14 800C1F14 4082009C */  bne       lbl_800C1FB0
/* 0BEF18 800C1F18 F08A0010 */  psq_st    f4, 0x10(r10), 0, qr0
/* 0BEF1C 800C1F1C 2C040000 */  cmpwi     r4, 0x0
/* 0BEF20 800C1F20 F08A0018 */  psq_st    f4, 0x18(r10), 0, qr0
/* 0BEF24 800C1F24 40820018 */  bne       lbl_800C1F3C
/* 0BEF28 800C1F28 38E70020 */  addi      r7, r7, 0x20
/* 0BEF2C 800C1F2C F48A0020 */  psq_stu   f4, 0x20(r10), 0, qr0
/* 0BEF30 800C1F30 39080010 */  addi      r8, r8, 0x10
/* 0BEF34 800C1F34 4200FFAC */  bdnz      lbl_800C1EE0
/* 0BEF38 800C1F38 480001DC */  b         lbl_800C2114
lbl_800C1F3C:
/* 0BEF3C 800C1F3C 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0BEF40 800C1F40 39080010 */  addi      r8, r8, 0x10
/* 0BEF44 800C1F44 10473C20 */  ps_merge00 f2, f7, f7
/* 0BEF48 800C1F48 38E70020 */  addi      r7, r7, 0x20
/* 0BEF4C 800C1F4C 103CE828 */  ps_sub    f1, f28, f29
/* 0BEF50 800C1F50 80A80004 */  lwz       r5, 0x4(r8)
/* 0BEF54 800C1F54 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0BEF58 800C1F58 A0880002 */  lhz       r4, 0x2(r8)
/* 0BEF5C 800C1F5C 11476CE0 */  ps_merge11 f10, f7, f13
/* 0BEF60 800C1F60 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BEF64 800C1F64 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0BEF68 800C1F68 1102502A */  ps_add    f8, f2, f10
/* 0BEF6C 800C1F6C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BEF70 800C1F70 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0BEF74 800C1F74 11425028 */  ps_sub    f10, f2, f10
/* 0BEF78 800C1F78 80C8000C */  lwz       r6, 0xc(r8)
/* 0BEF7C 800C1F7C 1062482A */  ps_add    f3, f2, f9
/* 0BEF80 800C1F80 80080008 */  lwz       r0, 0x8(r8)
/* 0BEF84 800C1F84 11224828 */  ps_sub    f9, f2, f9
/* 0BEF88 800C1F88 F50A0008 */  psq_stu   f8, 0x8(r10), 0, qr0
/* 0BEF8C 800C1F8C 11294CA0 */  ps_merge10 f9, f9, f9
/* 0BEF90 800C1F90 F46A0008 */  psq_stu   f3, 0x8(r10), 0, qr0
/* 0BEF94 800C1F94 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BEF98 800C1F98 7CC60378 */  or        r6, r6, r0
/* 0BEF9C 800C1F9C F52A0008 */  psq_stu   f9, 0x8(r10), 0, qr0
/* 0BEFA0 800C1FA0 10E701B2 */  ps_mul    f7, f7, f6
/* 0BEFA4 800C1FA4 F54A0008 */  psq_stu   f10, 0x8(r10), 0, qr0
/* 0BEFA8 800C1FA8 4200FF58 */  bdnz      lbl_800C1F00
/* 0BEFAC 800C1FAC 48000168 */  b         lbl_800C2114
lbl_800C1FB0:
/* 0BEFB0 800C1FB0 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0BEFB4 800C1FB4 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0BEFB8 800C1FB8 39080010 */  addi      r8, r8, 0x10
/* 0BEFBC 800C1FBC 102100B2 */  ps_mul    f1, f1, f2
/* 0BEFC0 800C1FC0 38E70020 */  addi      r7, r7, 0x20
/* 0BEFC4 800C1FC4 11870828 */  ps_sub    f12, f7, f1
/* 0BEFC8 800C1FC8 11A7082A */  ps_add    f13, f7, f1
/* 0BEFCC 800C1FCC 80C8000C */  lwz       r6, 0xc(r8)
/* 0BEFD0 800C1FD0 116166FA */  ps_madd   f11, f1, f27, f12
/* 0BEFD4 800C1FD4 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0BEFD8 800C1FD8 106C0732 */  ps_mul    f3, f12, f28
/* 0BEFDC 800C1FDC 116D5C20 */  ps_merge00 f11, f13, f11
/* 0BEFE0 800C1FE0 80080008 */  lwz       r0, 0x8(r8)
/* 0BEFE4 800C1FE4 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0BEFE8 800C1FE8 114A6420 */  ps_merge00 f10, f10, f12
/* 0BEFEC 800C1FEC 80A80004 */  lwz       r5, 0x4(r8)
/* 0BEFF0 800C1FF0 11296828 */  ps_sub    f9, f9, f13
/* 0BEFF4 800C1FF4 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0BEFF8 800C1FF8 A0880002 */  lhz       r4, 0x2(r8)
/* 0BEFFC 800C1FFC 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0BF000 800C2000 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0BF004 800C2004 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BF008 800C2008 104B682A */  ps_add    f2, f11, f13
/* 0BF00C 800C200C 11081828 */  ps_sub    f8, f8, f3
/* 0BF010 800C2010 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF014 800C2014 118344E0 */  ps_merge11 f12, f3, f8
/* 0BF018 800C2018 116B6828 */  ps_sub    f11, f11, f13
/* 0BF01C 800C201C F44A0008 */  psq_stu   f2, 0x8(r10), 0, qr0
/* 0BF020 800C2020 108A602A */  ps_add    f4, f10, f12
/* 0BF024 800C2024 102A6028 */  ps_sub    f1, f10, f12
/* 0BF028 800C2028 7CC60378 */  or        r6, r6, r0
/* 0BF02C 800C202C F48A0008 */  psq_stu   f4, 0x8(r10), 0, qr0
/* 0BF030 800C2030 10210CA0 */  ps_merge10 f1, f1, f1
/* 0BF034 800C2034 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0BF038 800C2038 F42A0008 */  psq_stu   f1, 0x8(r10), 0, qr0
/* 0BF03C 800C203C 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF040 800C2040 F56A0008 */  psq_stu   f11, 0x8(r10), 0, qr0
/* 0BF044 800C2044 4200FEBC */  bdnz      lbl_800C1F00
/* 0BF048 800C2048 480000CC */  b         lbl_800C2114
lbl_800C204C:
/* 0BF04C 800C204C E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0BF050 800C2050 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0BF054 800C2054 104202B2 */  ps_mul    f2, f2, f10
/* 0BF058 800C2058 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0BF05C 800C205C E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0BF060 800C2060 10871460 */  ps_merge01 f4, f7, f2
/* 0BF064 800C2064 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0BF068 800C2068 10223C60 */  ps_merge01 f1, f2, f7
/* 0BF06C 800C206C E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0BF070 800C2070 39080010 */  addi      r8, r8, 0x10
/* 0BF074 800C2074 116D227A */  ps_madd   f11, f13, f9, f4
/* 0BF078 800C2078 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0BF07C 800C207C 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0BF080 800C2080 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0BF084 800C2084 38E70020 */  addi      r7, r7, 0x20
/* 0BF088 800C2088 108B482A */  ps_add    f4, f11, f9
/* 0BF08C 800C208C 118B4828 */  ps_sub    f12, f11, f9
/* 0BF090 800C2090 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0BF094 800C2094 80C8000C */  lwz       r6, 0xc(r8)
/* 0BF098 800C2098 10685028 */  ps_sub    f3, f8, f10
/* 0BF09C 800C209C 102A682A */  ps_add    f1, f10, f13
/* 0BF0A0 800C20A0 11AA6828 */  ps_sub    f13, f10, f13
/* 0BF0A4 800C20A4 10630732 */  ps_mul    f3, f3, f28
/* 0BF0A8 800C20A8 80080008 */  lwz       r0, 0x8(r8)
/* 0BF0AC 800C20AC 10240C20 */  ps_merge00 f1, f4, f1
/* 0BF0B0 800C20B0 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0BF0B4 800C20B4 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0BF0B8 800C20B8 80A80004 */  lwz       r5, 0x4(r8)
/* 0BF0BC 800C20BC 11292028 */  ps_sub    f9, f9, f4
/* 0BF0C0 800C20C0 11AD6420 */  ps_merge00 f13, f13, f12
/* 0BF0C4 800C20C4 A0880002 */  lhz       r4, 0x2(r8)
/* 0BF0C8 800C20C8 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0BF0CC 800C20CC 11044CE0 */  ps_merge11 f8, f4, f9
/* 0BF0D0 800C20D0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BF0D4 800C20D4 116B5028 */  ps_sub    f11, f11, f10
/* 0BF0D8 800C20D8 1181402A */  ps_add    f12, f1, f8
/* 0BF0DC 800C20DC E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF0E0 800C20E0 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0BF0E4 800C20E4 10814028 */  ps_sub    f4, f1, f8
/* 0BF0E8 800C20E8 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF0EC 800C20EC 114D582A */  ps_add    f10, f13, f11
/* 0BF0F0 800C20F0 112D5828 */  ps_sub    f9, f13, f11
/* 0BF0F4 800C20F4 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BF0F8 800C20F8 F58A0008 */  psq_stu   f12, 0x8(r10), 0, qr0
/* 0BF0FC 800C20FC 108424A0 */  ps_merge10 f4, f4, f4
/* 0BF100 800C2100 F52A0008 */  psq_stu   f9, 0x8(r10), 0, qr0
/* 0BF104 800C2104 F54A0008 */  psq_stu   f10, 0x8(r10), 0, qr0
/* 0BF108 800C2108 7CC60378 */  or        r6, r6, r0
/* 0BF10C 800C210C F48A0008 */  psq_stu   f4, 0x8(r10), 0, qr0
/* 0BF110 800C2110 4200FDF0 */  bdnz      lbl_800C1F00
lbl_800C2114:
/* 0BF114 800C2114 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0BF118 800C2118 7FEAFB78 */  mr        r10, r31
/* 0BF11C 800C211C 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0BF120 800C2120 E0EA0000 */  psq_l     f7, 0x0(r10), 0, qr0
/* 0BF124 800C2124 54071838 */  slwi      r7, r0, 3
/* 0BF128 800C2128 E0CA0080 */  psq_l     f6, 0x80(r10), 0, qr0
/* 0BF12C 800C212C 5529103A */  slwi      r9, r9, 2
/* 0BF130 800C2130 E0AA0040 */  psq_l     f5, 0x40(r10), 0, qr0
/* 0BF134 800C2134 5406103A */  slwi      r6, r0, 2
/* 0BF138 800C2138 1127302A */  ps_add    f9, f7, f6
/* 0BF13C 800C213C 7CE74A14 */  add       r7, r7, r9
/* 0BF140 800C2140 E08A00C0 */  psq_l     f4, 0xc0(r10), 0, qr0
/* 0BF144 800C2144 10673028 */  ps_sub    f3, f7, f6
/* 0BF148 800C2148 7CC73214 */  add       r6, r7, r6
/* 0BF14C 800C214C 1129F82A */  ps_add    f9, f9, f31
/* 0BF150 800C2150 38000003 */  li        r0, 0x3
/* 0BF154 800C2154 1105202A */  ps_add    f8, f5, f4
/* 0BF158 800C2158 7CA83A14 */  add       r5, r8, r7
/* 0BF15C 800C215C 10452028 */  ps_sub    f2, f5, f4
/* 0BF160 800C2160 1089402A */  ps_add    f4, f9, f8
/* 0BF164 800C2164 7C883214 */  add       r4, r8, r6
/* 0BF168 800C2168 1063F82A */  ps_add    f3, f3, f31
/* 0BF16C 800C216C 7C0903A6 */  mtctr     r0
lbl_800C2170:
/* 0BF170 800C2170 E16A0020 */  psq_l     f11, 0x20(r10), 0, qr0
/* 0BF174 800C2174 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BF178 800C2178 E14A0060 */  psq_l     f10, 0x60(r10), 0, qr0
/* 0BF17C 800C217C 11894028 */  ps_sub    f12, f9, f8
/* 0BF180 800C2180 1023102A */  ps_add    f1, f3, f2
/* 0BF184 800C2184 E12A00A0 */  psq_l     f9, 0xa0(r10), 0, qr0
/* 0BF188 800C2188 11A31028 */  ps_sub    f13, f3, f2
/* 0BF18C 800C218C E10A00E0 */  psq_l     f8, 0xe0(r10), 0, qr0
/* 0BF190 800C2190 1069502A */  ps_add    f3, f9, f10
/* 0BF194 800C2194 11295028 */  ps_sub    f9, f9, f10
/* 0BF198 800C2198 394A0008 */  addi      r10, r10, 0x8
/* 0BF19C 800C219C 104B402A */  ps_add    f2, f11, f8
/* 0BF1A0 800C21A0 116B4028 */  ps_sub    f11, f11, f8
/* 0BF1A4 800C21A4 E0EA0000 */  psq_l     f7, 0x0(r10), 0, qr0
/* 0BF1A8 800C21A8 1102182A */  ps_add    f8, f2, f3
/* 0BF1AC 800C21AC 11421828 */  ps_sub    f10, f2, f3
/* 0BF1B0 800C21B0 1069582A */  ps_add    f3, f9, f11
/* 0BF1B4 800C21B4 E0CA0080 */  psq_l     f6, 0x80(r10), 0, qr0
/* 0BF1B8 800C21B8 1044402A */  ps_add    f2, f4, f8
/* 0BF1BC 800C21BC 10630732 */  ps_mul    f3, f3, f28
/* 0BF1C0 800C21C0 E0AA0040 */  psq_l     f5, 0x40(r10), 0, qr0
/* 0BF1C4 800C21C4 10044028 */  ps_sub    f0, f4, f8
/* 0BF1C8 800C21C8 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BF1CC 800C21CC E08A00C0 */  psq_l     f4, 0xc0(r10), 0, qr0
/* 0BF1D0 800C21D0 11294028 */  ps_sub    f9, f9, f8
/* 0BF1D4 800C21D4 38E70002 */  addi      r7, r7, 0x2
/* 0BF1D8 800C21D8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BF1DC 800C21DC 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BF1E0 800C21E0 1041482A */  ps_add    f2, f1, f9
/* 0BF1E4 800C21E4 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BF1E8 800C21E8 10214828 */  ps_sub    f1, f1, f9
/* 0BF1EC 800C21EC F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BF1F0 800C21F0 106D502A */  ps_add    f3, f13, f10
/* 0BF1F4 800C21F4 116B502A */  ps_add    f11, f11, f10
/* 0BF1F8 800C21F8 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BF1FC 800C21FC 38C60002 */  addi      r6, r6, 0x2
/* 0BF200 800C2200 104C5828 */  ps_sub    f2, f12, f11
/* 0BF204 800C2204 106C582A */  ps_add    f3, f12, f11
/* 0BF208 800C2208 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BF20C 800C220C 104D5028 */  ps_sub    f2, f13, f10
/* 0BF210 800C2210 1127302A */  ps_add    f9, f7, f6
/* 0BF214 800C2214 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BF218 800C2218 10673028 */  ps_sub    f3, f7, f6
/* 0BF21C 800C221C 1129F82A */  ps_add    f9, f9, f31
/* 0BF220 800C2220 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BF224 800C2224 1105202A */  ps_add    f8, f5, f4
/* 0BF228 800C2228 10452028 */  ps_sub    f2, f5, f4
/* 0BF22C 800C222C F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BF230 800C2230 7CA83A14 */  add       r5, r8, r7
/* 0BF234 800C2234 1089402A */  ps_add    f4, f9, f8
/* 0BF238 800C2238 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BF23C 800C223C 1063F82A */  ps_add    f3, f3, f31
/* 0BF240 800C2240 7C883214 */  add       r4, r8, r6
/* 0BF244 800C2244 4200FF2C */  bdnz      lbl_800C2170
/* 0BF248 800C2248 E16A0020 */  psq_l     f11, 0x20(r10), 0, qr0
/* 0BF24C 800C224C 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BF250 800C2250 E14A0060 */  psq_l     f10, 0x60(r10), 0, qr0
/* 0BF254 800C2254 11894028 */  ps_sub    f12, f9, f8
/* 0BF258 800C2258 1023102A */  ps_add    f1, f3, f2
/* 0BF25C 800C225C E12A00A0 */  psq_l     f9, 0xa0(r10), 0, qr0
/* 0BF260 800C2260 11A31028 */  ps_sub    f13, f3, f2
/* 0BF264 800C2264 E10A00E0 */  psq_l     f8, 0xe0(r10), 0, qr0
/* 0BF268 800C2268 1069502A */  ps_add    f3, f9, f10
/* 0BF26C 800C226C 11295028 */  ps_sub    f9, f9, f10
/* 0BF270 800C2270 104B402A */  ps_add    f2, f11, f8
/* 0BF274 800C2274 116B4028 */  ps_sub    f11, f11, f8
/* 0BF278 800C2278 1102182A */  ps_add    f8, f2, f3
/* 0BF27C 800C227C 11421828 */  ps_sub    f10, f2, f3
/* 0BF280 800C2280 1069582A */  ps_add    f3, f9, f11
/* 0BF284 800C2284 1044402A */  ps_add    f2, f4, f8
/* 0BF288 800C2288 10630732 */  ps_mul    f3, f3, f28
/* 0BF28C 800C228C 10044028 */  ps_sub    f0, f4, f8
/* 0BF290 800C2290 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BF294 800C2294 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BF298 800C2298 11294028 */  ps_sub    f9, f9, f8
/* 0BF29C 800C229C 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BF2A0 800C22A0 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BF2A4 800C22A4 1041482A */  ps_add    f2, f1, f9
/* 0BF2A8 800C22A8 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BF2AC 800C22AC 10214828 */  ps_sub    f1, f1, f9
/* 0BF2B0 800C22B0 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BF2B4 800C22B4 106D502A */  ps_add    f3, f13, f10
/* 0BF2B8 800C22B8 116B502A */  ps_add    f11, f11, f10
/* 0BF2BC 800C22BC F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BF2C0 800C22C0 104C5828 */  ps_sub    f2, f12, f11
/* 0BF2C4 800C22C4 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BF2C8 800C22C8 106C582A */  ps_add    f3, f12, f11
/* 0BF2CC 800C22CC F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BF2D0 800C22D0 104D5028 */  ps_sub    f2, f13, f10
/* 0BF2D4 800C22D4 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BF2D8 800C22D8 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BF2DC 800C22DC 809F0104 */  lwz       r4, 0x104(r31)
/* 0BF2E0 800C22E0 38000100 */  li        r0, 0x100
/* 0BF2E4 800C22E4 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0BF2E8 800C22E8 908D8F20 */  stw       r4, D_8018BEA0@sda21(r0)
/* 0BF2EC 800C22EC 5463F87E */  srwi      r3, r3, 1
/* 0BF2F0 800C22F0 393FFFF8 */  subi      r9, r31, 0x8
/* 0BF2F4 800C22F4 900D8F40 */  stw       r0, D_8018BEC0@sda21(r0)
/* 0BF2F8 800C22F8 88050686 */  lbz       r0, 0x686(r5)
/* 0BF2FC 800C22FC 5400402E */  slwi      r0, r0, 8
/* 0BF300 800C2300 7C050214 */  add       r0, r5, r0
/* 0BF304 800C2304 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0BF308 800C2308 811F0128 */  lwz       r8, 0x128(r31)
/* 0BF30C 800C230C 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0BF310 800C2310 38800008 */  li        r4, 0x8
/* 0BF314 800C2314 7C8903A6 */  mtctr     r4
lbl_800C2318:
/* 0BF318 800C2318 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BF31C 800C231C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF320 800C2320 80C8000C */  lwz       r6, 0xc(r8)
/* 0BF324 800C2324 80080008 */  lwz       r0, 0x8(r8)
/* 0BF328 800C2328 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF32C 800C232C 80A80004 */  lwz       r5, 0x4(r8)
/* 0BF330 800C2330 A0880002 */  lhz       r4, 0x2(r8)
/* 0BF334 800C2334 7CC60379 */  or.       r6, r6, r0
lbl_800C2338:
/* 0BF338 800C2338 2C060000 */  cmpwi     r6, 0x0
/* 0BF33C 800C233C 40820148 */  bne       lbl_800C2484
/* 0BF340 800C2340 10873C20 */  ps_merge00 f4, f7, f7
/* 0BF344 800C2344 2C050000 */  cmpwi     r5, 0x0
/* 0BF348 800C2348 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0BF34C 800C234C 4082009C */  bne       lbl_800C23E8
/* 0BF350 800C2350 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0BF354 800C2354 2C040000 */  cmpwi     r4, 0x0
/* 0BF358 800C2358 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0BF35C 800C235C 40820018 */  bne       lbl_800C2374
/* 0BF360 800C2360 38E70020 */  addi      r7, r7, 0x20
/* 0BF364 800C2364 F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0BF368 800C2368 39080010 */  addi      r8, r8, 0x10
/* 0BF36C 800C236C 4200FFAC */  bdnz      lbl_800C2318
/* 0BF370 800C2370 480001DC */  b         lbl_800C254C
lbl_800C2374:
/* 0BF374 800C2374 39080010 */  addi      r8, r8, 0x10
/* 0BF378 800C2378 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0BF37C 800C237C 38E70020 */  addi      r7, r7, 0x20
/* 0BF380 800C2380 10473C20 */  ps_merge00 f2, f7, f7
/* 0BF384 800C2384 80A80004 */  lwz       r5, 0x4(r8)
/* 0BF388 800C2388 103CE828 */  ps_sub    f1, f28, f29
/* 0BF38C 800C238C 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0BF390 800C2390 A0880002 */  lhz       r4, 0x2(r8)
/* 0BF394 800C2394 11476CE0 */  ps_merge11 f10, f7, f13
/* 0BF398 800C2398 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF39C 800C239C 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0BF3A0 800C23A0 1102502A */  ps_add    f8, f2, f10
/* 0BF3A4 800C23A4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BF3A8 800C23A8 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0BF3AC 800C23AC 11425028 */  ps_sub    f10, f2, f10
/* 0BF3B0 800C23B0 80C8000C */  lwz       r6, 0xc(r8)
/* 0BF3B4 800C23B4 1062482A */  ps_add    f3, f2, f9
/* 0BF3B8 800C23B8 80080008 */  lwz       r0, 0x8(r8)
/* 0BF3BC 800C23BC 11224828 */  ps_sub    f9, f2, f9
/* 0BF3C0 800C23C0 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0BF3C4 800C23C4 11294CA0 */  ps_merge10 f9, f9, f9
/* 0BF3C8 800C23C8 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0BF3CC 800C23CC 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BF3D0 800C23D0 7CC60378 */  or        r6, r6, r0
/* 0BF3D4 800C23D4 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BF3D8 800C23D8 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF3DC 800C23DC F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BF3E0 800C23E0 4200FF58 */  bdnz      lbl_800C2338
/* 0BF3E4 800C23E4 48000168 */  b         lbl_800C254C
lbl_800C23E8:
/* 0BF3E8 800C23E8 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0BF3EC 800C23EC E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0BF3F0 800C23F0 39080010 */  addi      r8, r8, 0x10
/* 0BF3F4 800C23F4 102100B2 */  ps_mul    f1, f1, f2
/* 0BF3F8 800C23F8 38E70020 */  addi      r7, r7, 0x20
/* 0BF3FC 800C23FC 11870828 */  ps_sub    f12, f7, f1
/* 0BF400 800C2400 11A7082A */  ps_add    f13, f7, f1
/* 0BF404 800C2404 80C8000C */  lwz       r6, 0xc(r8)
/* 0BF408 800C2408 116166FA */  ps_madd   f11, f1, f27, f12
/* 0BF40C 800C240C 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0BF410 800C2410 106C0732 */  ps_mul    f3, f12, f28
/* 0BF414 800C2414 116D5C20 */  ps_merge00 f11, f13, f11
/* 0BF418 800C2418 80080008 */  lwz       r0, 0x8(r8)
/* 0BF41C 800C241C 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0BF420 800C2420 114A6420 */  ps_merge00 f10, f10, f12
/* 0BF424 800C2424 80A80004 */  lwz       r5, 0x4(r8)
/* 0BF428 800C2428 11296828 */  ps_sub    f9, f9, f13
/* 0BF42C 800C242C 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0BF430 800C2430 A0880002 */  lhz       r4, 0x2(r8)
/* 0BF434 800C2434 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0BF438 800C2438 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0BF43C 800C243C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BF440 800C2440 104B682A */  ps_add    f2, f11, f13
/* 0BF444 800C2444 11081828 */  ps_sub    f8, f8, f3
/* 0BF448 800C2448 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF44C 800C244C 118344E0 */  ps_merge11 f12, f3, f8
/* 0BF450 800C2450 116B6828 */  ps_sub    f11, f11, f13
/* 0BF454 800C2454 F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0BF458 800C2458 108A602A */  ps_add    f4, f10, f12
/* 0BF45C 800C245C 102A6028 */  ps_sub    f1, f10, f12
/* 0BF460 800C2460 7CC60378 */  or        r6, r6, r0
/* 0BF464 800C2464 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BF468 800C2468 10210CA0 */  ps_merge10 f1, f1, f1
/* 0BF46C 800C246C 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0BF470 800C2470 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0BF474 800C2474 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF478 800C2478 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0BF47C 800C247C 4200FEBC */  bdnz      lbl_800C2338
/* 0BF480 800C2480 480000CC */  b         lbl_800C254C
lbl_800C2484:
/* 0BF484 800C2484 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0BF488 800C2488 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0BF48C 800C248C 104202B2 */  ps_mul    f2, f2, f10
/* 0BF490 800C2490 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0BF494 800C2494 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0BF498 800C2498 10871460 */  ps_merge01 f4, f7, f2
/* 0BF49C 800C249C E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0BF4A0 800C24A0 10223C60 */  ps_merge01 f1, f2, f7
/* 0BF4A4 800C24A4 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0BF4A8 800C24A8 39080010 */  addi      r8, r8, 0x10
/* 0BF4AC 800C24AC 116D227A */  ps_madd   f11, f13, f9, f4
/* 0BF4B0 800C24B0 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0BF4B4 800C24B4 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0BF4B8 800C24B8 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0BF4BC 800C24BC 38E70020 */  addi      r7, r7, 0x20
/* 0BF4C0 800C24C0 108B482A */  ps_add    f4, f11, f9
/* 0BF4C4 800C24C4 118B4828 */  ps_sub    f12, f11, f9
/* 0BF4C8 800C24C8 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0BF4CC 800C24CC 80C8000C */  lwz       r6, 0xc(r8)
/* 0BF4D0 800C24D0 10685028 */  ps_sub    f3, f8, f10
/* 0BF4D4 800C24D4 102A682A */  ps_add    f1, f10, f13
/* 0BF4D8 800C24D8 11AA6828 */  ps_sub    f13, f10, f13
/* 0BF4DC 800C24DC 10630732 */  ps_mul    f3, f3, f28
/* 0BF4E0 800C24E0 80080008 */  lwz       r0, 0x8(r8)
/* 0BF4E4 800C24E4 10240C20 */  ps_merge00 f1, f4, f1
/* 0BF4E8 800C24E8 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0BF4EC 800C24EC 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0BF4F0 800C24F0 80A80004 */  lwz       r5, 0x4(r8)
/* 0BF4F4 800C24F4 11292028 */  ps_sub    f9, f9, f4
/* 0BF4F8 800C24F8 11AD6420 */  ps_merge00 f13, f13, f12
/* 0BF4FC 800C24FC A0880002 */  lhz       r4, 0x2(r8)
/* 0BF500 800C2500 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0BF504 800C2504 11044CE0 */  ps_merge11 f8, f4, f9
/* 0BF508 800C2508 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BF50C 800C250C 116B5028 */  ps_sub    f11, f11, f10
/* 0BF510 800C2510 1181402A */  ps_add    f12, f1, f8
/* 0BF514 800C2514 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF518 800C2518 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0BF51C 800C251C 10814028 */  ps_sub    f4, f1, f8
/* 0BF520 800C2520 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF524 800C2524 114D582A */  ps_add    f10, f13, f11
/* 0BF528 800C2528 112D5828 */  ps_sub    f9, f13, f11
/* 0BF52C 800C252C 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BF530 800C2530 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0BF534 800C2534 108424A0 */  ps_merge10 f4, f4, f4
/* 0BF538 800C2538 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BF53C 800C253C F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BF540 800C2540 7CC60378 */  or        r6, r6, r0
/* 0BF544 800C2544 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BF548 800C2548 4200FDF0 */  bdnz      lbl_800C2338
lbl_800C254C:
/* 0BF54C 800C254C 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0BF550 800C2550 7FE9FB78 */  mr        r9, r31
/* 0BF554 800C2554 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0BF558 800C2558 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BF55C 800C255C 5464103A */  slwi      r4, r3, 2
/* 0BF560 800C2560 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BF564 800C2564 5406103A */  slwi      r6, r0, 2
/* 0BF568 800C2568 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BF56C 800C256C 7C872378 */  mr        r7, r4
/* 0BF570 800C2570 1127302A */  ps_add    f9, f7, f6
/* 0BF574 800C2574 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BF578 800C2578 10673028 */  ps_sub    f3, f7, f6
/* 0BF57C 800C257C 7CC73214 */  add       r6, r7, r6
/* 0BF580 800C2580 1129F82A */  ps_add    f9, f9, f31
/* 0BF584 800C2584 38000003 */  li        r0, 0x3
/* 0BF588 800C2588 1105202A */  ps_add    f8, f5, f4
/* 0BF58C 800C258C 7CA83A14 */  add       r5, r8, r7
/* 0BF590 800C2590 10452028 */  ps_sub    f2, f5, f4
/* 0BF594 800C2594 1089402A */  ps_add    f4, f9, f8
/* 0BF598 800C2598 7C883214 */  add       r4, r8, r6
/* 0BF59C 800C259C 1063F82A */  ps_add    f3, f3, f31
/* 0BF5A0 800C25A0 7C0903A6 */  mtctr     r0
lbl_800C25A4:
/* 0BF5A4 800C25A4 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BF5A8 800C25A8 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BF5AC 800C25AC E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BF5B0 800C25B0 11894028 */  ps_sub    f12, f9, f8
/* 0BF5B4 800C25B4 1023102A */  ps_add    f1, f3, f2
/* 0BF5B8 800C25B8 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BF5BC 800C25BC 11A31028 */  ps_sub    f13, f3, f2
/* 0BF5C0 800C25C0 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BF5C4 800C25C4 1069502A */  ps_add    f3, f9, f10
/* 0BF5C8 800C25C8 11295028 */  ps_sub    f9, f9, f10
/* 0BF5CC 800C25CC 39290008 */  addi      r9, r9, 0x8
/* 0BF5D0 800C25D0 104B402A */  ps_add    f2, f11, f8
/* 0BF5D4 800C25D4 116B4028 */  ps_sub    f11, f11, f8
/* 0BF5D8 800C25D8 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BF5DC 800C25DC 1102182A */  ps_add    f8, f2, f3
/* 0BF5E0 800C25E0 11421828 */  ps_sub    f10, f2, f3
/* 0BF5E4 800C25E4 1069582A */  ps_add    f3, f9, f11
/* 0BF5E8 800C25E8 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BF5EC 800C25EC 1044402A */  ps_add    f2, f4, f8
/* 0BF5F0 800C25F0 10630732 */  ps_mul    f3, f3, f28
/* 0BF5F4 800C25F4 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BF5F8 800C25F8 10044028 */  ps_sub    f0, f4, f8
/* 0BF5FC 800C25FC 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BF600 800C2600 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BF604 800C2604 11294028 */  ps_sub    f9, f9, f8
/* 0BF608 800C2608 38E70002 */  addi      r7, r7, 0x2
/* 0BF60C 800C260C F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BF610 800C2610 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BF614 800C2614 1041482A */  ps_add    f2, f1, f9
/* 0BF618 800C2618 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BF61C 800C261C 10214828 */  ps_sub    f1, f1, f9
/* 0BF620 800C2620 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BF624 800C2624 106D502A */  ps_add    f3, f13, f10
/* 0BF628 800C2628 116B502A */  ps_add    f11, f11, f10
/* 0BF62C 800C262C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BF630 800C2630 38C60002 */  addi      r6, r6, 0x2
/* 0BF634 800C2634 104C5828 */  ps_sub    f2, f12, f11
/* 0BF638 800C2638 106C582A */  ps_add    f3, f12, f11
/* 0BF63C 800C263C F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BF640 800C2640 104D5028 */  ps_sub    f2, f13, f10
/* 0BF644 800C2644 1127302A */  ps_add    f9, f7, f6
/* 0BF648 800C2648 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BF64C 800C264C 10673028 */  ps_sub    f3, f7, f6
/* 0BF650 800C2650 1129F82A */  ps_add    f9, f9, f31
/* 0BF654 800C2654 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BF658 800C2658 1105202A */  ps_add    f8, f5, f4
/* 0BF65C 800C265C 10452028 */  ps_sub    f2, f5, f4
/* 0BF660 800C2660 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BF664 800C2664 7CA83A14 */  add       r5, r8, r7
/* 0BF668 800C2668 1089402A */  ps_add    f4, f9, f8
/* 0BF66C 800C266C F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BF670 800C2670 1063F82A */  ps_add    f3, f3, f31
/* 0BF674 800C2674 7C883214 */  add       r4, r8, r6
/* 0BF678 800C2678 4200FF2C */  bdnz      lbl_800C25A4
/* 0BF67C 800C267C E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BF680 800C2680 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BF684 800C2684 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BF688 800C2688 11894028 */  ps_sub    f12, f9, f8
/* 0BF68C 800C268C 1023102A */  ps_add    f1, f3, f2
/* 0BF690 800C2690 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BF694 800C2694 11A31028 */  ps_sub    f13, f3, f2
/* 0BF698 800C2698 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BF69C 800C269C 1069502A */  ps_add    f3, f9, f10
/* 0BF6A0 800C26A0 11295028 */  ps_sub    f9, f9, f10
/* 0BF6A4 800C26A4 104B402A */  ps_add    f2, f11, f8
/* 0BF6A8 800C26A8 116B4028 */  ps_sub    f11, f11, f8
/* 0BF6AC 800C26AC 1102182A */  ps_add    f8, f2, f3
/* 0BF6B0 800C26B0 11421828 */  ps_sub    f10, f2, f3
/* 0BF6B4 800C26B4 1069582A */  ps_add    f3, f9, f11
/* 0BF6B8 800C26B8 1044402A */  ps_add    f2, f4, f8
/* 0BF6BC 800C26BC 10630732 */  ps_mul    f3, f3, f28
/* 0BF6C0 800C26C0 10044028 */  ps_sub    f0, f4, f8
/* 0BF6C4 800C26C4 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BF6C8 800C26C8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0BF6CC 800C26CC 11294028 */  ps_sub    f9, f9, f8
/* 0BF6D0 800C26D0 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BF6D4 800C26D4 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0BF6D8 800C26D8 1041482A */  ps_add    f2, f1, f9
/* 0BF6DC 800C26DC 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BF6E0 800C26E0 10214828 */  ps_sub    f1, f1, f9
/* 0BF6E4 800C26E4 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0BF6E8 800C26E8 106D502A */  ps_add    f3, f13, f10
/* 0BF6EC 800C26EC 116B502A */  ps_add    f11, f11, f10
/* 0BF6F0 800C26F0 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0BF6F4 800C26F4 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0BF6F8 800C26F8 104C5828 */  ps_sub    f2, f12, f11
/* 0BF6FC 800C26FC 106C582A */  ps_add    f3, f12, f11
/* 0BF700 800C2700 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0BF704 800C2704 104D5028 */  ps_sub    f2, f13, f10
/* 0BF708 800C2708 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0BF70C 800C270C F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BF710 800C2710 801F0108 */  lwz       r0, 0x108(r31)
/* 0BF714 800C2714 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BF718 800C2718 391FFFF8 */  subi      r8, r31, 0x8
/* 0BF71C 800C271C 900D8F20 */  stw       r0, D_8018BEA0@sda21(r0)
/* 0BF720 800C2720 8804068C */  lbz       r0, 0x68c(r4)
/* 0BF724 800C2724 5400402E */  slwi      r0, r0, 8
/* 0BF728 800C2728 7C040214 */  add       r0, r4, r0
/* 0BF72C 800C272C 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0BF730 800C2730 813F012C */  lwz       r9, 0x12c(r31)
/* 0BF734 800C2734 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0BF738 800C2738 38800008 */  li        r4, 0x8
/* 0BF73C 800C273C 7C8903A6 */  mtctr     r4
lbl_800C2740:
/* 0BF740 800C2740 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0BF744 800C2744 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF748 800C2748 80C9000C */  lwz       r6, 0xc(r9)
/* 0BF74C 800C274C 80090008 */  lwz       r0, 0x8(r9)
/* 0BF750 800C2750 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF754 800C2754 80A90004 */  lwz       r5, 0x4(r9)
/* 0BF758 800C2758 A0890002 */  lhz       r4, 0x2(r9)
/* 0BF75C 800C275C 7CC60379 */  or.       r6, r6, r0
lbl_800C2760:
/* 0BF760 800C2760 2C060000 */  cmpwi     r6, 0x0
/* 0BF764 800C2764 40820148 */  bne       lbl_800C28AC
/* 0BF768 800C2768 10873C20 */  ps_merge00 f4, f7, f7
/* 0BF76C 800C276C 2C050000 */  cmpwi     r5, 0x0
/* 0BF770 800C2770 F0880008 */  psq_st    f4, 0x8(r8), 0, qr0
/* 0BF774 800C2774 4082009C */  bne       lbl_800C2810
/* 0BF778 800C2778 F0880010 */  psq_st    f4, 0x10(r8), 0, qr0
/* 0BF77C 800C277C 2C040000 */  cmpwi     r4, 0x0
/* 0BF780 800C2780 F0880018 */  psq_st    f4, 0x18(r8), 0, qr0
/* 0BF784 800C2784 40820018 */  bne       lbl_800C279C
/* 0BF788 800C2788 38E70020 */  addi      r7, r7, 0x20
/* 0BF78C 800C278C F4880020 */  psq_stu   f4, 0x20(r8), 0, qr0
/* 0BF790 800C2790 39290010 */  addi      r9, r9, 0x10
/* 0BF794 800C2794 4200FFAC */  bdnz      lbl_800C2740
/* 0BF798 800C2798 480001DC */  b         lbl_800C2974
lbl_800C279C:
/* 0BF79C 800C279C 39290010 */  addi      r9, r9, 0x10
/* 0BF7A0 800C27A0 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0BF7A4 800C27A4 38E70020 */  addi      r7, r7, 0x20
/* 0BF7A8 800C27A8 10473C20 */  ps_merge00 f2, f7, f7
/* 0BF7AC 800C27AC 80A90004 */  lwz       r5, 0x4(r9)
/* 0BF7B0 800C27B0 103CE828 */  ps_sub    f1, f28, f29
/* 0BF7B4 800C27B4 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0BF7B8 800C27B8 A0890002 */  lhz       r4, 0x2(r9)
/* 0BF7BC 800C27BC 11476CE0 */  ps_merge11 f10, f7, f13
/* 0BF7C0 800C27C0 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF7C4 800C27C4 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0BF7C8 800C27C8 1102502A */  ps_add    f8, f2, f10
/* 0BF7CC 800C27CC E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0BF7D0 800C27D0 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0BF7D4 800C27D4 11425028 */  ps_sub    f10, f2, f10
/* 0BF7D8 800C27D8 80C9000C */  lwz       r6, 0xc(r9)
/* 0BF7DC 800C27DC 1062482A */  ps_add    f3, f2, f9
/* 0BF7E0 800C27E0 80090008 */  lwz       r0, 0x8(r9)
/* 0BF7E4 800C27E4 11224828 */  ps_sub    f9, f2, f9
/* 0BF7E8 800C27E8 F5080008 */  psq_stu   f8, 0x8(r8), 0, qr0
/* 0BF7EC 800C27EC 11294CA0 */  ps_merge10 f9, f9, f9
/* 0BF7F0 800C27F0 F4680008 */  psq_stu   f3, 0x8(r8), 0, qr0
/* 0BF7F4 800C27F4 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BF7F8 800C27F8 7CC60378 */  or        r6, r6, r0
/* 0BF7FC 800C27FC F5280008 */  psq_stu   f9, 0x8(r8), 0, qr0
/* 0BF800 800C2800 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF804 800C2804 F5480008 */  psq_stu   f10, 0x8(r8), 0, qr0
/* 0BF808 800C2808 4200FF58 */  bdnz      lbl_800C2760
/* 0BF80C 800C280C 48000168 */  b         lbl_800C2974
lbl_800C2810:
/* 0BF810 800C2810 E0295004 */  psq_l     f1, 0x4(r9), 0, qr5
/* 0BF814 800C2814 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0BF818 800C2818 39290010 */  addi      r9, r9, 0x10
/* 0BF81C 800C281C 102100B2 */  ps_mul    f1, f1, f2
/* 0BF820 800C2820 38E70020 */  addi      r7, r7, 0x20
/* 0BF824 800C2824 11870828 */  ps_sub    f12, f7, f1
/* 0BF828 800C2828 11A7082A */  ps_add    f13, f7, f1
/* 0BF82C 800C282C 80C9000C */  lwz       r6, 0xc(r9)
/* 0BF830 800C2830 116166FA */  ps_madd   f11, f1, f27, f12
/* 0BF834 800C2834 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0BF838 800C2838 106C0732 */  ps_mul    f3, f12, f28
/* 0BF83C 800C283C 116D5C20 */  ps_merge00 f11, f13, f11
/* 0BF840 800C2840 80090008 */  lwz       r0, 0x8(r9)
/* 0BF844 800C2844 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0BF848 800C2848 114A6420 */  ps_merge00 f10, f10, f12
/* 0BF84C 800C284C 80A90004 */  lwz       r5, 0x4(r9)
/* 0BF850 800C2850 11296828 */  ps_sub    f9, f9, f13
/* 0BF854 800C2854 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0BF858 800C2858 A0890002 */  lhz       r4, 0x2(r9)
/* 0BF85C 800C285C 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0BF860 800C2860 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0BF864 800C2864 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0BF868 800C2868 104B682A */  ps_add    f2, f11, f13
/* 0BF86C 800C286C 11081828 */  ps_sub    f8, f8, f3
/* 0BF870 800C2870 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF874 800C2874 118344E0 */  ps_merge11 f12, f3, f8
/* 0BF878 800C2878 116B6828 */  ps_sub    f11, f11, f13
/* 0BF87C 800C287C F4480008 */  psq_stu   f2, 0x8(r8), 0, qr0
/* 0BF880 800C2880 108A602A */  ps_add    f4, f10, f12
/* 0BF884 800C2884 102A6028 */  ps_sub    f1, f10, f12
/* 0BF888 800C2888 7CC60378 */  or        r6, r6, r0
/* 0BF88C 800C288C F4880008 */  psq_stu   f4, 0x8(r8), 0, qr0
/* 0BF890 800C2890 10210CA0 */  ps_merge10 f1, f1, f1
/* 0BF894 800C2894 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0BF898 800C2898 F4280008 */  psq_stu   f1, 0x8(r8), 0, qr0
/* 0BF89C 800C289C 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF8A0 800C28A0 F5680008 */  psq_stu   f11, 0x8(r8), 0, qr0
/* 0BF8A4 800C28A4 4200FEBC */  bdnz      lbl_800C2760
/* 0BF8A8 800C28A8 480000CC */  b         lbl_800C2974
lbl_800C28AC:
/* 0BF8AC 800C28AC E0495004 */  psq_l     f2, 0x4(r9), 0, qr5
/* 0BF8B0 800C28B0 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0BF8B4 800C28B4 104202B2 */  ps_mul    f2, f2, f10
/* 0BF8B8 800C28B8 E1A95008 */  psq_l     f13, 0x8(r9), 0, qr5
/* 0BF8BC 800C28BC E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0BF8C0 800C28C0 10871460 */  ps_merge01 f4, f7, f2
/* 0BF8C4 800C28C4 E189500C */  psq_l     f12, 0xc(r9), 0, qr5
/* 0BF8C8 800C28C8 10223C60 */  ps_merge01 f1, f2, f7
/* 0BF8CC 800C28CC E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0BF8D0 800C28D0 39290010 */  addi      r9, r9, 0x10
/* 0BF8D4 800C28D4 116D227A */  ps_madd   f11, f13, f9, f4
/* 0BF8D8 800C28D8 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0BF8DC 800C28DC 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0BF8E0 800C28E0 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0BF8E4 800C28E4 38E70020 */  addi      r7, r7, 0x20
/* 0BF8E8 800C28E8 108B482A */  ps_add    f4, f11, f9
/* 0BF8EC 800C28EC 118B4828 */  ps_sub    f12, f11, f9
/* 0BF8F0 800C28F0 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0BF8F4 800C28F4 80C9000C */  lwz       r6, 0xc(r9)
/* 0BF8F8 800C28F8 10685028 */  ps_sub    f3, f8, f10
/* 0BF8FC 800C28FC 102A682A */  ps_add    f1, f10, f13
/* 0BF900 800C2900 11AA6828 */  ps_sub    f13, f10, f13
/* 0BF904 800C2904 10630732 */  ps_mul    f3, f3, f28
/* 0BF908 800C2908 80090008 */  lwz       r0, 0x8(r9)
/* 0BF90C 800C290C 10240C20 */  ps_merge00 f1, f4, f1
/* 0BF910 800C2910 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0BF914 800C2914 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0BF918 800C2918 80A90004 */  lwz       r5, 0x4(r9)
/* 0BF91C 800C291C 11292028 */  ps_sub    f9, f9, f4
/* 0BF920 800C2920 11AD6420 */  ps_merge00 f13, f13, f12
/* 0BF924 800C2924 A0890002 */  lhz       r4, 0x2(r9)
/* 0BF928 800C2928 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0BF92C 800C292C 11044CE0 */  ps_merge11 f8, f4, f9
/* 0BF930 800C2930 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0BF934 800C2934 116B5028 */  ps_sub    f11, f11, f10
/* 0BF938 800C2938 1181402A */  ps_add    f12, f1, f8
/* 0BF93C 800C293C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BF940 800C2940 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0BF944 800C2944 10814028 */  ps_sub    f4, f1, f8
/* 0BF948 800C2948 10E701B2 */  ps_mul    f7, f7, f6
/* 0BF94C 800C294C 114D582A */  ps_add    f10, f13, f11
/* 0BF950 800C2950 112D5828 */  ps_sub    f9, f13, f11
/* 0BF954 800C2954 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BF958 800C2958 F5880008 */  psq_stu   f12, 0x8(r8), 0, qr0
/* 0BF95C 800C295C 108424A0 */  ps_merge10 f4, f4, f4
/* 0BF960 800C2960 F5280008 */  psq_stu   f9, 0x8(r8), 0, qr0
/* 0BF964 800C2964 F5480008 */  psq_stu   f10, 0x8(r8), 0, qr0
/* 0BF968 800C2968 7CC60378 */  or        r6, r6, r0
/* 0BF96C 800C296C F4880008 */  psq_stu   f4, 0x8(r8), 0, qr0
/* 0BF970 800C2970 4200FDF0 */  bdnz      lbl_800C2760
lbl_800C2974:
/* 0BF974 800C2974 80ED8F20 */  lwz       r7, D_8018BEA0@sda21(r0)
/* 0BF978 800C2978 7FE8FB78 */  mr        r8, r31
/* 0BF97C 800C297C 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0BF980 800C2980 E0E80000 */  psq_l     f7, 0x0(r8), 0, qr0
/* 0BF984 800C2984 5463103A */  slwi      r3, r3, 2
/* 0BF988 800C2988 E0C80080 */  psq_l     f6, 0x80(r8), 0, qr0
/* 0BF98C 800C298C 5405103A */  slwi      r5, r0, 2
/* 0BF990 800C2990 E0A80040 */  psq_l     f5, 0x40(r8), 0, qr0
/* 0BF994 800C2994 7C661B78 */  mr        r6, r3
/* 0BF998 800C2998 1127302A */  ps_add    f9, f7, f6
/* 0BF99C 800C299C E08800C0 */  psq_l     f4, 0xc0(r8), 0, qr0
/* 0BF9A0 800C29A0 10673028 */  ps_sub    f3, f7, f6
/* 0BF9A4 800C29A4 7CA62A14 */  add       r5, r6, r5
/* 0BF9A8 800C29A8 1129F82A */  ps_add    f9, f9, f31
/* 0BF9AC 800C29AC 38000003 */  li        r0, 0x3
/* 0BF9B0 800C29B0 1105202A */  ps_add    f8, f5, f4
/* 0BF9B4 800C29B4 7C873214 */  add       r4, r7, r6
/* 0BF9B8 800C29B8 10452028 */  ps_sub    f2, f5, f4
/* 0BF9BC 800C29BC 1089402A */  ps_add    f4, f9, f8
/* 0BF9C0 800C29C0 7C672A14 */  add       r3, r7, r5
/* 0BF9C4 800C29C4 1063F82A */  ps_add    f3, f3, f31
/* 0BF9C8 800C29C8 7C0903A6 */  mtctr     r0
lbl_800C29CC:
/* 0BF9CC 800C29CC E1680020 */  psq_l     f11, 0x20(r8), 0, qr0
/* 0BF9D0 800C29D0 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BF9D4 800C29D4 E1480060 */  psq_l     f10, 0x60(r8), 0, qr0
/* 0BF9D8 800C29D8 11894028 */  ps_sub    f12, f9, f8
/* 0BF9DC 800C29DC 1023102A */  ps_add    f1, f3, f2
/* 0BF9E0 800C29E0 E12800A0 */  psq_l     f9, 0xa0(r8), 0, qr0
/* 0BF9E4 800C29E4 11A31028 */  ps_sub    f13, f3, f2
/* 0BF9E8 800C29E8 E10800E0 */  psq_l     f8, 0xe0(r8), 0, qr0
/* 0BF9EC 800C29EC 1069502A */  ps_add    f3, f9, f10
/* 0BF9F0 800C29F0 11295028 */  ps_sub    f9, f9, f10
/* 0BF9F4 800C29F4 39080008 */  addi      r8, r8, 0x8
/* 0BF9F8 800C29F8 104B402A */  ps_add    f2, f11, f8
/* 0BF9FC 800C29FC 116B4028 */  ps_sub    f11, f11, f8
/* 0BFA00 800C2A00 E0E80000 */  psq_l     f7, 0x0(r8), 0, qr0
/* 0BFA04 800C2A04 1102182A */  ps_add    f8, f2, f3
/* 0BFA08 800C2A08 11421828 */  ps_sub    f10, f2, f3
/* 0BFA0C 800C2A0C 1069582A */  ps_add    f3, f9, f11
/* 0BFA10 800C2A10 E0C80080 */  psq_l     f6, 0x80(r8), 0, qr0
/* 0BFA14 800C2A14 1044402A */  ps_add    f2, f4, f8
/* 0BFA18 800C2A18 10630732 */  ps_mul    f3, f3, f28
/* 0BFA1C 800C2A1C E0A80040 */  psq_l     f5, 0x40(r8), 0, qr0
/* 0BFA20 800C2A20 10044028 */  ps_sub    f0, f4, f8
/* 0BFA24 800C2A24 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BFA28 800C2A28 E08800C0 */  psq_l     f4, 0xc0(r8), 0, qr0
/* 0BFA2C 800C2A2C 11294028 */  ps_sub    f9, f9, f8
/* 0BFA30 800C2A30 38C60002 */  addi      r6, r6, 0x2
/* 0BFA34 800C2A34 F0446000 */  psq_st    f2, 0x0(r4), 0, qr6
/* 0BFA38 800C2A38 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BFA3C 800C2A3C 1041482A */  ps_add    f2, f1, f9
/* 0BFA40 800C2A40 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BFA44 800C2A44 10214828 */  ps_sub    f1, f1, f9
/* 0BFA48 800C2A48 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BFA4C 800C2A4C 106D502A */  ps_add    f3, f13, f10
/* 0BFA50 800C2A50 116B502A */  ps_add    f11, f11, f10
/* 0BFA54 800C2A54 F0646010 */  psq_st    f3, 0x10(r4), 0, qr6
/* 0BFA58 800C2A58 38A50002 */  addi      r5, r5, 0x2
/* 0BFA5C 800C2A5C 104C5828 */  ps_sub    f2, f12, f11
/* 0BFA60 800C2A60 106C582A */  ps_add    f3, f12, f11
/* 0BFA64 800C2A64 F0446018 */  psq_st    f2, 0x18(r4), 0, qr6
/* 0BFA68 800C2A68 104D5028 */  ps_sub    f2, f13, f10
/* 0BFA6C 800C2A6C 1127302A */  ps_add    f9, f7, f6
/* 0BFA70 800C2A70 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0BFA74 800C2A74 10673028 */  ps_sub    f3, f7, f6
/* 0BFA78 800C2A78 1129F82A */  ps_add    f9, f9, f31
/* 0BFA7C 800C2A7C F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0BFA80 800C2A80 1105202A */  ps_add    f8, f5, f4
/* 0BFA84 800C2A84 10452028 */  ps_sub    f2, f5, f4
/* 0BFA88 800C2A88 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0BFA8C 800C2A8C 7C873214 */  add       r4, r7, r6
/* 0BFA90 800C2A90 1089402A */  ps_add    f4, f9, f8
/* 0BFA94 800C2A94 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0BFA98 800C2A98 1063F82A */  ps_add    f3, f3, f31
/* 0BFA9C 800C2A9C 7C672A14 */  add       r3, r7, r5
/* 0BFAA0 800C2AA0 4200FF2C */  bdnz      lbl_800C29CC
/* 0BFAA4 800C2AA4 E1680020 */  psq_l     f11, 0x20(r8), 0, qr0
/* 0BFAA8 800C2AA8 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BFAAC 800C2AAC E1480060 */  psq_l     f10, 0x60(r8), 0, qr0
/* 0BFAB0 800C2AB0 11894028 */  ps_sub    f12, f9, f8
/* 0BFAB4 800C2AB4 1023102A */  ps_add    f1, f3, f2
/* 0BFAB8 800C2AB8 E12800A0 */  psq_l     f9, 0xa0(r8), 0, qr0
/* 0BFABC 800C2ABC 11A31028 */  ps_sub    f13, f3, f2
/* 0BFAC0 800C2AC0 E10800E0 */  psq_l     f8, 0xe0(r8), 0, qr0
/* 0BFAC4 800C2AC4 1069502A */  ps_add    f3, f9, f10
/* 0BFAC8 800C2AC8 11295028 */  ps_sub    f9, f9, f10
/* 0BFACC 800C2ACC 104B402A */  ps_add    f2, f11, f8
/* 0BFAD0 800C2AD0 116B4028 */  ps_sub    f11, f11, f8
/* 0BFAD4 800C2AD4 1102182A */  ps_add    f8, f2, f3
/* 0BFAD8 800C2AD8 11421828 */  ps_sub    f10, f2, f3
/* 0BFADC 800C2ADC 1069582A */  ps_add    f3, f9, f11
/* 0BFAE0 800C2AE0 1044402A */  ps_add    f2, f4, f8
/* 0BFAE4 800C2AE4 10630732 */  ps_mul    f3, f3, f28
/* 0BFAE8 800C2AE8 10044028 */  ps_sub    f0, f4, f8
/* 0BFAEC 800C2AEC 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0BFAF0 800C2AF0 F0446000 */  psq_st    f2, 0x0(r4), 0, qr6
/* 0BFAF4 800C2AF4 11294028 */  ps_sub    f9, f9, f8
/* 0BFAF8 800C2AF8 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0BFAFC 800C2AFC F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0BFB00 800C2B00 1041482A */  ps_add    f2, f1, f9
/* 0BFB04 800C2B04 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0BFB08 800C2B08 10214828 */  ps_sub    f1, f1, f9
/* 0BFB0C 800C2B0C F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0BFB10 800C2B10 106D502A */  ps_add    f3, f13, f10
/* 0BFB14 800C2B14 116B502A */  ps_add    f11, f11, f10
/* 0BFB18 800C2B18 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0BFB1C 800C2B1C F0646010 */  psq_st    f3, 0x10(r4), 0, qr6
/* 0BFB20 800C2B20 104C5828 */  ps_sub    f2, f12, f11
/* 0BFB24 800C2B24 106C582A */  ps_add    f3, f12, f11
/* 0BFB28 800C2B28 F0446018 */  psq_st    f2, 0x18(r4), 0, qr6
/* 0BFB2C 800C2B2C 104D5028 */  ps_sub    f2, f13, f10
/* 0BFB30 800C2B30 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0BFB34 800C2B34 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0BFB38 800C2B38 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BFB3C 800C2B3C 880406A9 */  lbz       r0, 0x6a9(r4)
/* 0BFB40 800C2B40 28000000 */  cmplwi    r0, 0x0
/* 0BFB44 800C2B44 41820070 */  beq       lbl_800C2BB4
/* 0BFB48 800C2B48 A06406AC */  lhz       r3, 0x6ac(r4)
/* 0BFB4C 800C2B4C 3863FFFF */  subi      r3, r3, 0x1
/* 0BFB50 800C2B50 5460043F */  clrlwi.   r0, r3, 16
/* 0BFB54 800C2B54 B06406AC */  sth       r3, 0x6ac(r4)
/* 0BFB58 800C2B58 4082005C */  bne       lbl_800C2BB4
/* 0BFB5C 800C2B5C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFB60 800C2B60 A00306AA */  lhz       r0, 0x6aa(r3)
/* 0BFB64 800C2B64 B00306AC */  sth       r0, 0x6ac(r3)
/* 0BFB68 800C2B68 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BFB6C 800C2B6C 806406A4 */  lwz       r3, 0x6a4(r4)
/* 0BFB70 800C2B70 38030006 */  addi      r0, r3, 0x6
/* 0BFB74 800C2B74 54030038 */  clrrwi    r3, r0, 3
/* 0BFB78 800C2B78 38030001 */  addi      r0, r3, 0x1
/* 0BFB7C 800C2B7C 900406A4 */  stw       r0, 0x6a4(r4)
/* 0BFB80 800C2B80 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFB84 800C2B84 800306A4 */  lwz       r0, 0x6a4(r3)
/* 0BFB88 800C2B88 28000021 */  cmplwi    r0, 0x21
/* 0BFB8C 800C2B8C 4081000C */  ble       lbl_800C2B98
/* 0BFB90 800C2B90 38000021 */  li        r0, 0x21
/* 0BFB94 800C2B94 900306A4 */  stw       r0, 0x6a4(r3)
lbl_800C2B98:
/* 0BFB98 800C2B98 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFB9C 800C2B9C 38000000 */  li        r0, 0x0
/* 0BFBA0 800C2BA0 B0030684 */  sth       r0, 0x684(r3)
/* 0BFBA4 800C2BA4 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFBA8 800C2BA8 B003068A */  sth       r0, 0x68a(r3)
/* 0BFBAC 800C2BAC 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFBB0 800C2BB0 B0030690 */  sth       r0, 0x690(r3)
lbl_800C2BB4:
/* 0BFBB4 800C2BB4 3BDE0001 */  addi      r30, r30, 0x1
lbl_800C2BB8:
/* 0BFBB8 800C2BB8 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFBBC 800C2BBC 57C4063E */  clrlwi    r4, r30, 24
/* 0BFBC0 800C2BC0 A0030696 */  lhz       r0, 0x696(r3)
/* 0BFBC4 800C2BC4 7C040000 */  cmpw      r4, r0
/* 0BFBC8 800C2BC8 4180E664 */  blt       lbl_800C122C
/* 0BFBCC 800C2BCC 806306B0 */  lwz       r3, 0x6b0(r3)
/* 0BFBD0 800C2BD0 38A02000 */  li        r5, 0x2000
/* 0BFBD4 800C2BD4 809F0100 */  lwz       r4, 0x100(r31)
/* 0BFBD8 800C2BD8 4BFDA34D */  bl        LCStoreData
/* 0BFBDC 800C2BDC 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFBE0 800C2BE0 38A00800 */  li        r5, 0x800
/* 0BFBE4 800C2BE4 809F0104 */  lwz       r4, 0x104(r31)
/* 0BFBE8 800C2BE8 806306B4 */  lwz       r3, 0x6b4(r3)
/* 0BFBEC 800C2BEC 4BFDA339 */  bl        LCStoreData
/* 0BFBF0 800C2BF0 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFBF4 800C2BF4 38A00800 */  li        r5, 0x800
/* 0BFBF8 800C2BF8 809F0108 */  lwz       r4, 0x108(r31)
/* 0BFBFC 800C2BFC 806306B8 */  lwz       r3, 0x6b8(r3)
/* 0BFC00 800C2C00 4BFDA325 */  bl        LCStoreData
/* 0BFC04 800C2C04 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BFC08 800C2C08 806406B0 */  lwz       r3, 0x6b0(r4)
/* 0BFC0C 800C2C0C 38032000 */  addi      r0, r3, 0x2000
/* 0BFC10 800C2C10 900406B0 */  stw       r0, 0x6b0(r4)
/* 0BFC14 800C2C14 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BFC18 800C2C18 806406B4 */  lwz       r3, 0x6b4(r4)
/* 0BFC1C 800C2C1C 38030800 */  addi      r0, r3, 0x800
/* 0BFC20 800C2C20 900406B4 */  stw       r0, 0x6b4(r4)
/* 0BFC24 800C2C24 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BFC28 800C2C28 806406B8 */  lwz       r3, 0x6b8(r4)
/* 0BFC2C 800C2C2C 38030800 */  addi      r0, r3, 0x800
/* 0BFC30 800C2C30 900406B8 */  stw       r0, 0x6b8(r4)
/* 0BFC34 800C2C34 8001003C */  lwz       r0, 0x3c(r1)
/* 0BFC38 800C2C38 CBE10030 */  lfd       f31, 0x30(r1)
/* 0BFC3C 800C2C3C CBC10028 */  lfd       f30, 0x28(r1)
/* 0BFC40 800C2C40 CBA10020 */  lfd       f29, 0x20(r1)
/* 0BFC44 800C2C44 CB810018 */  lfd       f28, 0x18(r1)
/* 0BFC48 800C2C48 CB610010 */  lfd       f27, 0x10(r1)
/* 0BFC4C 800C2C4C 83E1000C */  lwz       r31, 0xc(r1)
/* 0BFC50 800C2C50 83C10008 */  lwz       r30, 0x8(r1)
/* 0BFC54 800C2C54 38210038 */  addi      r1, r1, 0x38
/* 0BFC58 800C2C58 7C0803A6 */  mtlr      r0
/* 0BFC5C 800C2C5C 4E800020 */  blr

glabel __THPDecompressiMCURow640x480
/* 0BFC60 800C2C60 7C0802A6 */  mflr      r0
/* 0BFC64 800C2C64 3C608019 */  lis       r3, D_80188CC0@ha
/* 0BFC68 800C2C68 90010004 */  stw       r0, 0x4(r1)
/* 0BFC6C 800C2C6C 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0BFC70 800C2C70 DBE10030 */  stfd      f31, 0x30(r1)
/* 0BFC74 800C2C74 DBC10028 */  stfd      f30, 0x28(r1)
/* 0BFC78 800C2C78 DBA10020 */  stfd      f29, 0x20(r1)
/* 0BFC7C 800C2C7C DB810018 */  stfd      f28, 0x18(r1)
/* 0BFC80 800C2C80 DB610010 */  stfd      f27, 0x10(r1)
/* 0BFC84 800C2C84 93E1000C */  stw       r31, 0xc(r1)
/* 0BFC88 800C2C88 3BE38CC0 */  addi      r31, r3, D_80188CC0@l
/* 0BFC8C 800C2C8C 38600003 */  li        r3, 0x3
/* 0BFC90 800C2C90 93C10008 */  stw       r30, 0x8(r1)
/* 0BFC94 800C2C94 4BFDA33D */  bl        LCQueueWait
/* 0BFC98 800C2C98 C3628510 */  lfs       f27, D_8018C450@sda21(r0)
/* 0BFC9C 800C2C9C 3BC00000 */  li        r30, 0x0
/* 0BFCA0 800C2CA0 C3828514 */  lfs       f28, D_8018C454@sda21(r0)
/* 0BFCA4 800C2CA4 C3A28518 */  lfs       f29, D_8018C458@sda21(r0)
/* 0BFCA8 800C2CA8 C3C2851C */  lfs       f30, D_8018C45C@sda21(r0)
/* 0BFCAC 800C2CAC C3E28520 */  lfs       f31, D_8018C460@sda21(r0)
/* 0BFCB0 800C2CB0 48001994 */  b         lbl_800C4644
lbl_800C2CB4:
/* 0BFCB4 800C2CB4 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFCB8 800C2CB8 809F0118 */  lwz       r4, 0x118(r31)
/* 0BFCBC 800C2CBC 480034DD */  bl        __THPHuffDecodeDCTCompY
/* 0BFCC0 800C2CC0 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFCC4 800C2CC4 809F011C */  lwz       r4, 0x11c(r31)
/* 0BFCC8 800C2CC8 480034D1 */  bl        __THPHuffDecodeDCTCompY
/* 0BFCCC 800C2CCC 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFCD0 800C2CD0 809F0120 */  lwz       r4, 0x120(r31)
/* 0BFCD4 800C2CD4 480034C5 */  bl        __THPHuffDecodeDCTCompY
/* 0BFCD8 800C2CD8 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFCDC 800C2CDC 809F0124 */  lwz       r4, 0x124(r31)
/* 0BFCE0 800C2CE0 480034B9 */  bl        __THPHuffDecodeDCTCompY
/* 0BFCE4 800C2CE4 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFCE8 800C2CE8 809F0128 */  lwz       r4, 0x128(r31)
/* 0BFCEC 800C2CEC 48003B29 */  bl        __THPHuffDecodeDCTCompU
/* 0BFCF0 800C2CF0 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0BFCF4 800C2CF4 809F012C */  lwz       r4, 0x12c(r31)
/* 0BFCF8 800C2CF8 480041C5 */  bl        __THPHuffDecodeDCTCompV
/* 0BFCFC 800C2CFC 807F010C */  lwz       r3, 0x10c(r31)
/* 0BFD00 800C2D00 38000280 */  li        r0, 0x280
/* 0BFD04 800C2D04 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0BFD08 800C2D08 393FFFF8 */  subi      r9, r31, 0x8
/* 0BFD0C 800C2D0C 906D8F20 */  stw       r3, D_8018BEA0@sda21(r0)
/* 0BFD10 800C2D10 57C32536 */  clrlslwi  r3, r30, 24, 4
/* 0BFD14 800C2D14 900D8F40 */  stw       r0, D_8018BEC0@sda21(r0)
/* 0BFD18 800C2D18 88040680 */  lbz       r0, 0x680(r4)
/* 0BFD1C 800C2D1C 5400402E */  slwi      r0, r0, 8
/* 0BFD20 800C2D20 7C040214 */  add       r0, r4, r0
/* 0BFD24 800C2D24 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0BFD28 800C2D28 811F0118 */  lwz       r8, 0x118(r31)
/* 0BFD2C 800C2D2C 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0BFD30 800C2D30 38800008 */  li        r4, 0x8
/* 0BFD34 800C2D34 7C8903A6 */  mtctr     r4
lbl_800C2D38:
/* 0BFD38 800C2D38 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BFD3C 800C2D3C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BFD40 800C2D40 80C8000C */  lwz       r6, 0xc(r8)
/* 0BFD44 800C2D44 80080008 */  lwz       r0, 0x8(r8)
/* 0BFD48 800C2D48 10E701B2 */  ps_mul    f7, f7, f6
/* 0BFD4C 800C2D4C 80A80004 */  lwz       r5, 0x4(r8)
/* 0BFD50 800C2D50 A0880002 */  lhz       r4, 0x2(r8)
/* 0BFD54 800C2D54 7CC60379 */  or.       r6, r6, r0
lbl_800C2D58:
/* 0BFD58 800C2D58 2C060000 */  cmpwi     r6, 0x0
/* 0BFD5C 800C2D5C 40820148 */  bne       lbl_800C2EA4
/* 0BFD60 800C2D60 10873C20 */  ps_merge00 f4, f7, f7
/* 0BFD64 800C2D64 2C050000 */  cmpwi     r5, 0x0
/* 0BFD68 800C2D68 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0BFD6C 800C2D6C 4082009C */  bne       lbl_800C2E08
/* 0BFD70 800C2D70 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0BFD74 800C2D74 2C040000 */  cmpwi     r4, 0x0
/* 0BFD78 800C2D78 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0BFD7C 800C2D7C 40820018 */  bne       lbl_800C2D94
/* 0BFD80 800C2D80 38E70020 */  addi      r7, r7, 0x20
/* 0BFD84 800C2D84 F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0BFD88 800C2D88 39080010 */  addi      r8, r8, 0x10
/* 0BFD8C 800C2D8C 4200FFAC */  bdnz      lbl_800C2D38
/* 0BFD90 800C2D90 480001DC */  b         lbl_800C2F6C
lbl_800C2D94:
/* 0BFD94 800C2D94 39080010 */  addi      r8, r8, 0x10
/* 0BFD98 800C2D98 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0BFD9C 800C2D9C 38E70020 */  addi      r7, r7, 0x20
/* 0BFDA0 800C2DA0 10473C20 */  ps_merge00 f2, f7, f7
/* 0BFDA4 800C2DA4 80A80004 */  lwz       r5, 0x4(r8)
/* 0BFDA8 800C2DA8 103CE828 */  ps_sub    f1, f28, f29
/* 0BFDAC 800C2DAC 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0BFDB0 800C2DB0 A0880002 */  lhz       r4, 0x2(r8)
/* 0BFDB4 800C2DB4 11476CE0 */  ps_merge11 f10, f7, f13
/* 0BFDB8 800C2DB8 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BFDBC 800C2DBC 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0BFDC0 800C2DC0 1102502A */  ps_add    f8, f2, f10
/* 0BFDC4 800C2DC4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BFDC8 800C2DC8 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0BFDCC 800C2DCC 11425028 */  ps_sub    f10, f2, f10
/* 0BFDD0 800C2DD0 80C8000C */  lwz       r6, 0xc(r8)
/* 0BFDD4 800C2DD4 1062482A */  ps_add    f3, f2, f9
/* 0BFDD8 800C2DD8 80080008 */  lwz       r0, 0x8(r8)
/* 0BFDDC 800C2DDC 11224828 */  ps_sub    f9, f2, f9
/* 0BFDE0 800C2DE0 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0BFDE4 800C2DE4 11294CA0 */  ps_merge10 f9, f9, f9
/* 0BFDE8 800C2DE8 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0BFDEC 800C2DEC 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BFDF0 800C2DF0 7CC60378 */  or        r6, r6, r0
/* 0BFDF4 800C2DF4 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BFDF8 800C2DF8 10E701B2 */  ps_mul    f7, f7, f6
/* 0BFDFC 800C2DFC F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BFE00 800C2E00 4200FF58 */  bdnz      lbl_800C2D58
/* 0BFE04 800C2E04 48000168 */  b         lbl_800C2F6C
lbl_800C2E08:
/* 0BFE08 800C2E08 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0BFE0C 800C2E0C E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0BFE10 800C2E10 39080010 */  addi      r8, r8, 0x10
/* 0BFE14 800C2E14 102100B2 */  ps_mul    f1, f1, f2
/* 0BFE18 800C2E18 38E70020 */  addi      r7, r7, 0x20
/* 0BFE1C 800C2E1C 11870828 */  ps_sub    f12, f7, f1
/* 0BFE20 800C2E20 11A7082A */  ps_add    f13, f7, f1
/* 0BFE24 800C2E24 80C8000C */  lwz       r6, 0xc(r8)
/* 0BFE28 800C2E28 116166FA */  ps_madd   f11, f1, f27, f12
/* 0BFE2C 800C2E2C 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0BFE30 800C2E30 106C0732 */  ps_mul    f3, f12, f28
/* 0BFE34 800C2E34 116D5C20 */  ps_merge00 f11, f13, f11
/* 0BFE38 800C2E38 80080008 */  lwz       r0, 0x8(r8)
/* 0BFE3C 800C2E3C 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0BFE40 800C2E40 114A6420 */  ps_merge00 f10, f10, f12
/* 0BFE44 800C2E44 80A80004 */  lwz       r5, 0x4(r8)
/* 0BFE48 800C2E48 11296828 */  ps_sub    f9, f9, f13
/* 0BFE4C 800C2E4C 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0BFE50 800C2E50 A0880002 */  lhz       r4, 0x2(r8)
/* 0BFE54 800C2E54 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0BFE58 800C2E58 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0BFE5C 800C2E5C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BFE60 800C2E60 104B682A */  ps_add    f2, f11, f13
/* 0BFE64 800C2E64 11081828 */  ps_sub    f8, f8, f3
/* 0BFE68 800C2E68 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BFE6C 800C2E6C 118344E0 */  ps_merge11 f12, f3, f8
/* 0BFE70 800C2E70 116B6828 */  ps_sub    f11, f11, f13
/* 0BFE74 800C2E74 F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0BFE78 800C2E78 108A602A */  ps_add    f4, f10, f12
/* 0BFE7C 800C2E7C 102A6028 */  ps_sub    f1, f10, f12
/* 0BFE80 800C2E80 7CC60378 */  or        r6, r6, r0
/* 0BFE84 800C2E84 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BFE88 800C2E88 10210CA0 */  ps_merge10 f1, f1, f1
/* 0BFE8C 800C2E8C 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0BFE90 800C2E90 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0BFE94 800C2E94 10E701B2 */  ps_mul    f7, f7, f6
/* 0BFE98 800C2E98 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0BFE9C 800C2E9C 4200FEBC */  bdnz      lbl_800C2D58
/* 0BFEA0 800C2EA0 480000CC */  b         lbl_800C2F6C
lbl_800C2EA4:
/* 0BFEA4 800C2EA4 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0BFEA8 800C2EA8 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0BFEAC 800C2EAC 104202B2 */  ps_mul    f2, f2, f10
/* 0BFEB0 800C2EB0 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0BFEB4 800C2EB4 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0BFEB8 800C2EB8 10871460 */  ps_merge01 f4, f7, f2
/* 0BFEBC 800C2EBC E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0BFEC0 800C2EC0 10223C60 */  ps_merge01 f1, f2, f7
/* 0BFEC4 800C2EC4 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0BFEC8 800C2EC8 39080010 */  addi      r8, r8, 0x10
/* 0BFECC 800C2ECC 116D227A */  ps_madd   f11, f13, f9, f4
/* 0BFED0 800C2ED0 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0BFED4 800C2ED4 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0BFED8 800C2ED8 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0BFEDC 800C2EDC 38E70020 */  addi      r7, r7, 0x20
/* 0BFEE0 800C2EE0 108B482A */  ps_add    f4, f11, f9
/* 0BFEE4 800C2EE4 118B4828 */  ps_sub    f12, f11, f9
/* 0BFEE8 800C2EE8 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0BFEEC 800C2EEC 80C8000C */  lwz       r6, 0xc(r8)
/* 0BFEF0 800C2EF0 10685028 */  ps_sub    f3, f8, f10
/* 0BFEF4 800C2EF4 102A682A */  ps_add    f1, f10, f13
/* 0BFEF8 800C2EF8 11AA6828 */  ps_sub    f13, f10, f13
/* 0BFEFC 800C2EFC 10630732 */  ps_mul    f3, f3, f28
/* 0BFF00 800C2F00 80080008 */  lwz       r0, 0x8(r8)
/* 0BFF04 800C2F04 10240C20 */  ps_merge00 f1, f4, f1
/* 0BFF08 800C2F08 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0BFF0C 800C2F0C 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0BFF10 800C2F10 80A80004 */  lwz       r5, 0x4(r8)
/* 0BFF14 800C2F14 11292028 */  ps_sub    f9, f9, f4
/* 0BFF18 800C2F18 11AD6420 */  ps_merge00 f13, f13, f12
/* 0BFF1C 800C2F1C A0880002 */  lhz       r4, 0x2(r8)
/* 0BFF20 800C2F20 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0BFF24 800C2F24 11044CE0 */  ps_merge11 f8, f4, f9
/* 0BFF28 800C2F28 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0BFF2C 800C2F2C 116B5028 */  ps_sub    f11, f11, f10
/* 0BFF30 800C2F30 1181402A */  ps_add    f12, f1, f8
/* 0BFF34 800C2F34 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0BFF38 800C2F38 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0BFF3C 800C2F3C 10814028 */  ps_sub    f4, f1, f8
/* 0BFF40 800C2F40 10E701B2 */  ps_mul    f7, f7, f6
/* 0BFF44 800C2F44 114D582A */  ps_add    f10, f13, f11
/* 0BFF48 800C2F48 112D5828 */  ps_sub    f9, f13, f11
/* 0BFF4C 800C2F4C 114A54A0 */  ps_merge10 f10, f10, f10
/* 0BFF50 800C2F50 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0BFF54 800C2F54 108424A0 */  ps_merge10 f4, f4, f4
/* 0BFF58 800C2F58 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0BFF5C 800C2F5C F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0BFF60 800C2F60 7CC60378 */  or        r6, r6, r0
/* 0BFF64 800C2F64 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0BFF68 800C2F68 4200FDF0 */  bdnz      lbl_800C2D58
lbl_800C2F6C:
/* 0BFF6C 800C2F6C 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0BFF70 800C2F70 7FE9FB78 */  mr        r9, r31
/* 0BFF74 800C2F74 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0BFF78 800C2F78 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BFF7C 800C2F7C 5464103A */  slwi      r4, r3, 2
/* 0BFF80 800C2F80 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0BFF84 800C2F84 5406103A */  slwi      r6, r0, 2
/* 0BFF88 800C2F88 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0BFF8C 800C2F8C 7C872378 */  mr        r7, r4
/* 0BFF90 800C2F90 1127302A */  ps_add    f9, f7, f6
/* 0BFF94 800C2F94 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0BFF98 800C2F98 10673028 */  ps_sub    f3, f7, f6
/* 0BFF9C 800C2F9C 7CC73214 */  add       r6, r7, r6
/* 0BFFA0 800C2FA0 1129F82A */  ps_add    f9, f9, f31
/* 0BFFA4 800C2FA4 38000003 */  li        r0, 0x3
/* 0BFFA8 800C2FA8 1105202A */  ps_add    f8, f5, f4
/* 0BFFAC 800C2FAC 7CA83A14 */  add       r5, r8, r7
/* 0BFFB0 800C2FB0 10452028 */  ps_sub    f2, f5, f4
/* 0BFFB4 800C2FB4 1089402A */  ps_add    f4, f9, f8
/* 0BFFB8 800C2FB8 7C883214 */  add       r4, r8, r6
/* 0BFFBC 800C2FBC 1063F82A */  ps_add    f3, f3, f31
/* 0BFFC0 800C2FC0 7C0903A6 */  mtctr     r0
lbl_800C2FC4:
/* 0BFFC4 800C2FC4 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0BFFC8 800C2FC8 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0BFFCC 800C2FCC E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0BFFD0 800C2FD0 11894028 */  ps_sub    f12, f9, f8
/* 0BFFD4 800C2FD4 1023102A */  ps_add    f1, f3, f2
/* 0BFFD8 800C2FD8 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0BFFDC 800C2FDC 11A31028 */  ps_sub    f13, f3, f2
/* 0BFFE0 800C2FE0 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0BFFE4 800C2FE4 1069502A */  ps_add    f3, f9, f10
/* 0BFFE8 800C2FE8 11295028 */  ps_sub    f9, f9, f10
/* 0BFFEC 800C2FEC 39290008 */  addi      r9, r9, 0x8
/* 0BFFF0 800C2FF0 104B402A */  ps_add    f2, f11, f8
/* 0BFFF4 800C2FF4 116B4028 */  ps_sub    f11, f11, f8
/* 0BFFF8 800C2FF8 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0BFFFC 800C2FFC 1102182A */  ps_add    f8, f2, f3
/* 0C0000 800C3000 11421828 */  ps_sub    f10, f2, f3
/* 0C0004 800C3004 1069582A */  ps_add    f3, f9, f11
/* 0C0008 800C3008 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C000C 800C300C 1044402A */  ps_add    f2, f4, f8
/* 0C0010 800C3010 10630732 */  ps_mul    f3, f3, f28
/* 0C0014 800C3014 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C0018 800C3018 10044028 */  ps_sub    f0, f4, f8
/* 0C001C 800C301C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C0020 800C3020 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C0024 800C3024 11294028 */  ps_sub    f9, f9, f8
/* 0C0028 800C3028 38E70002 */  addi      r7, r7, 0x2
/* 0C002C 800C302C F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C0030 800C3030 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C0034 800C3034 1041482A */  ps_add    f2, f1, f9
/* 0C0038 800C3038 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C003C 800C303C 10214828 */  ps_sub    f1, f1, f9
/* 0C0040 800C3040 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0044 800C3044 106D502A */  ps_add    f3, f13, f10
/* 0C0048 800C3048 116B502A */  ps_add    f11, f11, f10
/* 0C004C 800C304C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0050 800C3050 38C60002 */  addi      r6, r6, 0x2
/* 0C0054 800C3054 104C5828 */  ps_sub    f2, f12, f11
/* 0C0058 800C3058 106C582A */  ps_add    f3, f12, f11
/* 0C005C 800C305C F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0060 800C3060 104D5028 */  ps_sub    f2, f13, f10
/* 0C0064 800C3064 1127302A */  ps_add    f9, f7, f6
/* 0C0068 800C3068 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C006C 800C306C 10673028 */  ps_sub    f3, f7, f6
/* 0C0070 800C3070 1129F82A */  ps_add    f9, f9, f31
/* 0C0074 800C3074 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0078 800C3078 1105202A */  ps_add    f8, f5, f4
/* 0C007C 800C307C 10452028 */  ps_sub    f2, f5, f4
/* 0C0080 800C3080 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C0084 800C3084 7CA83A14 */  add       r5, r8, r7
/* 0C0088 800C3088 1089402A */  ps_add    f4, f9, f8
/* 0C008C 800C308C F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C0090 800C3090 1063F82A */  ps_add    f3, f3, f31
/* 0C0094 800C3094 7C883214 */  add       r4, r8, r6
/* 0C0098 800C3098 4200FF2C */  bdnz      lbl_800C2FC4
/* 0C009C 800C309C E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C00A0 800C30A0 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C00A4 800C30A4 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C00A8 800C30A8 11894028 */  ps_sub    f12, f9, f8
/* 0C00AC 800C30AC 1023102A */  ps_add    f1, f3, f2
/* 0C00B0 800C30B0 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C00B4 800C30B4 11A31028 */  ps_sub    f13, f3, f2
/* 0C00B8 800C30B8 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C00BC 800C30BC 1069502A */  ps_add    f3, f9, f10
/* 0C00C0 800C30C0 11295028 */  ps_sub    f9, f9, f10
/* 0C00C4 800C30C4 104B402A */  ps_add    f2, f11, f8
/* 0C00C8 800C30C8 116B4028 */  ps_sub    f11, f11, f8
/* 0C00CC 800C30CC 1102182A */  ps_add    f8, f2, f3
/* 0C00D0 800C30D0 11421828 */  ps_sub    f10, f2, f3
/* 0C00D4 800C30D4 1069582A */  ps_add    f3, f9, f11
/* 0C00D8 800C30D8 1044402A */  ps_add    f2, f4, f8
/* 0C00DC 800C30DC 10630732 */  ps_mul    f3, f3, f28
/* 0C00E0 800C30E0 10044028 */  ps_sub    f0, f4, f8
/* 0C00E4 800C30E4 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C00E8 800C30E8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C00EC 800C30EC 11294028 */  ps_sub    f9, f9, f8
/* 0C00F0 800C30F0 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C00F4 800C30F4 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C00F8 800C30F8 1041482A */  ps_add    f2, f1, f9
/* 0C00FC 800C30FC 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C0100 800C3100 10214828 */  ps_sub    f1, f1, f9
/* 0C0104 800C3104 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0108 800C3108 106D502A */  ps_add    f3, f13, f10
/* 0C010C 800C310C 116B502A */  ps_add    f11, f11, f10
/* 0C0110 800C3110 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C0114 800C3114 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0118 800C3118 104C5828 */  ps_sub    f2, f12, f11
/* 0C011C 800C311C 106C582A */  ps_add    f3, f12, f11
/* 0C0120 800C3120 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0124 800C3124 104D5028 */  ps_sub    f2, f13, f10
/* 0C0128 800C3128 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C012C 800C312C F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0130 800C3130 811F011C */  lwz       r8, 0x11c(r31)
/* 0C0134 800C3134 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C0138 800C3138 39430008 */  addi      r10, r3, 0x8
/* 0C013C 800C313C 393FFFF8 */  subi      r9, r31, 0x8
/* 0C0140 800C3140 38800008 */  li        r4, 0x8
/* 0C0144 800C3144 7C8903A6 */  mtctr     r4
lbl_800C3148:
/* 0C0148 800C3148 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C014C 800C314C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0150 800C3150 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0154 800C3154 80080008 */  lwz       r0, 0x8(r8)
/* 0C0158 800C3158 10E701B2 */  ps_mul    f7, f7, f6
/* 0C015C 800C315C 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0160 800C3160 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0164 800C3164 7CC60379 */  or.       r6, r6, r0
lbl_800C3168:
/* 0C0168 800C3168 2C060000 */  cmpwi     r6, 0x0
/* 0C016C 800C316C 40820148 */  bne       lbl_800C32B4
/* 0C0170 800C3170 10873C20 */  ps_merge00 f4, f7, f7
/* 0C0174 800C3174 2C050000 */  cmpwi     r5, 0x0
/* 0C0178 800C3178 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0C017C 800C317C 4082009C */  bne       lbl_800C3218
/* 0C0180 800C3180 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0C0184 800C3184 2C040000 */  cmpwi     r4, 0x0
/* 0C0188 800C3188 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0C018C 800C318C 40820018 */  bne       lbl_800C31A4
/* 0C0190 800C3190 38E70020 */  addi      r7, r7, 0x20
/* 0C0194 800C3194 F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0C0198 800C3198 39080010 */  addi      r8, r8, 0x10
/* 0C019C 800C319C 4200FFAC */  bdnz      lbl_800C3148
/* 0C01A0 800C31A0 480001DC */  b         lbl_800C337C
lbl_800C31A4:
/* 0C01A4 800C31A4 39080010 */  addi      r8, r8, 0x10
/* 0C01A8 800C31A8 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C01AC 800C31AC 38E70020 */  addi      r7, r7, 0x20
/* 0C01B0 800C31B0 10473C20 */  ps_merge00 f2, f7, f7
/* 0C01B4 800C31B4 80A80004 */  lwz       r5, 0x4(r8)
/* 0C01B8 800C31B8 103CE828 */  ps_sub    f1, f28, f29
/* 0C01BC 800C31BC 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C01C0 800C31C0 A0880002 */  lhz       r4, 0x2(r8)
/* 0C01C4 800C31C4 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C01C8 800C31C8 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C01CC 800C31CC 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C01D0 800C31D0 1102502A */  ps_add    f8, f2, f10
/* 0C01D4 800C31D4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C01D8 800C31D8 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C01DC 800C31DC 11425028 */  ps_sub    f10, f2, f10
/* 0C01E0 800C31E0 80C8000C */  lwz       r6, 0xc(r8)
/* 0C01E4 800C31E4 1062482A */  ps_add    f3, f2, f9
/* 0C01E8 800C31E8 80080008 */  lwz       r0, 0x8(r8)
/* 0C01EC 800C31EC 11224828 */  ps_sub    f9, f2, f9
/* 0C01F0 800C31F0 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0C01F4 800C31F4 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C01F8 800C31F8 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0C01FC 800C31FC 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C0200 800C3200 7CC60378 */  or        r6, r6, r0
/* 0C0204 800C3204 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C0208 800C3208 10E701B2 */  ps_mul    f7, f7, f6
/* 0C020C 800C320C F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C0210 800C3210 4200FF58 */  bdnz      lbl_800C3168
/* 0C0214 800C3214 48000168 */  b         lbl_800C337C
lbl_800C3218:
/* 0C0218 800C3218 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C021C 800C321C E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C0220 800C3220 39080010 */  addi      r8, r8, 0x10
/* 0C0224 800C3224 102100B2 */  ps_mul    f1, f1, f2
/* 0C0228 800C3228 38E70020 */  addi      r7, r7, 0x20
/* 0C022C 800C322C 11870828 */  ps_sub    f12, f7, f1
/* 0C0230 800C3230 11A7082A */  ps_add    f13, f7, f1
/* 0C0234 800C3234 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0238 800C3238 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C023C 800C323C 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C0240 800C3240 106C0732 */  ps_mul    f3, f12, f28
/* 0C0244 800C3244 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C0248 800C3248 80080008 */  lwz       r0, 0x8(r8)
/* 0C024C 800C324C 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C0250 800C3250 114A6420 */  ps_merge00 f10, f10, f12
/* 0C0254 800C3254 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0258 800C3258 11296828 */  ps_sub    f9, f9, f13
/* 0C025C 800C325C 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C0260 800C3260 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0264 800C3264 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C0268 800C3268 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C026C 800C326C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0270 800C3270 104B682A */  ps_add    f2, f11, f13
/* 0C0274 800C3274 11081828 */  ps_sub    f8, f8, f3
/* 0C0278 800C3278 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C027C 800C327C 118344E0 */  ps_merge11 f12, f3, f8
/* 0C0280 800C3280 116B6828 */  ps_sub    f11, f11, f13
/* 0C0284 800C3284 F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0C0288 800C3288 108A602A */  ps_add    f4, f10, f12
/* 0C028C 800C328C 102A6028 */  ps_sub    f1, f10, f12
/* 0C0290 800C3290 7CC60378 */  or        r6, r6, r0
/* 0C0294 800C3294 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C0298 800C3298 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C029C 800C329C 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C02A0 800C32A0 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0C02A4 800C32A4 10E701B2 */  ps_mul    f7, f7, f6
/* 0C02A8 800C32A8 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0C02AC 800C32AC 4200FEBC */  bdnz      lbl_800C3168
/* 0C02B0 800C32B0 480000CC */  b         lbl_800C337C
lbl_800C32B4:
/* 0C02B4 800C32B4 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C02B8 800C32B8 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C02BC 800C32BC 104202B2 */  ps_mul    f2, f2, f10
/* 0C02C0 800C32C0 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C02C4 800C32C4 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C02C8 800C32C8 10871460 */  ps_merge01 f4, f7, f2
/* 0C02CC 800C32CC E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C02D0 800C32D0 10223C60 */  ps_merge01 f1, f2, f7
/* 0C02D4 800C32D4 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C02D8 800C32D8 39080010 */  addi      r8, r8, 0x10
/* 0C02DC 800C32DC 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C02E0 800C32E0 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C02E4 800C32E4 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C02E8 800C32E8 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C02EC 800C32EC 38E70020 */  addi      r7, r7, 0x20
/* 0C02F0 800C32F0 108B482A */  ps_add    f4, f11, f9
/* 0C02F4 800C32F4 118B4828 */  ps_sub    f12, f11, f9
/* 0C02F8 800C32F8 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C02FC 800C32FC 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0300 800C3300 10685028 */  ps_sub    f3, f8, f10
/* 0C0304 800C3304 102A682A */  ps_add    f1, f10, f13
/* 0C0308 800C3308 11AA6828 */  ps_sub    f13, f10, f13
/* 0C030C 800C330C 10630732 */  ps_mul    f3, f3, f28
/* 0C0310 800C3310 80080008 */  lwz       r0, 0x8(r8)
/* 0C0314 800C3314 10240C20 */  ps_merge00 f1, f4, f1
/* 0C0318 800C3318 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C031C 800C331C 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C0320 800C3320 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0324 800C3324 11292028 */  ps_sub    f9, f9, f4
/* 0C0328 800C3328 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C032C 800C332C A0880002 */  lhz       r4, 0x2(r8)
/* 0C0330 800C3330 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C0334 800C3334 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C0338 800C3338 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C033C 800C333C 116B5028 */  ps_sub    f11, f11, f10
/* 0C0340 800C3340 1181402A */  ps_add    f12, f1, f8
/* 0C0344 800C3344 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0348 800C3348 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C034C 800C334C 10814028 */  ps_sub    f4, f1, f8
/* 0C0350 800C3350 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0354 800C3354 114D582A */  ps_add    f10, f13, f11
/* 0C0358 800C3358 112D5828 */  ps_sub    f9, f13, f11
/* 0C035C 800C335C 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C0360 800C3360 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0C0364 800C3364 108424A0 */  ps_merge10 f4, f4, f4
/* 0C0368 800C3368 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C036C 800C336C F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C0370 800C3370 7CC60378 */  or        r6, r6, r0
/* 0C0374 800C3374 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C0378 800C3378 4200FDF0 */  bdnz      lbl_800C3168
lbl_800C337C:
/* 0C037C 800C337C 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C0380 800C3380 7FE9FB78 */  mr        r9, r31
/* 0C0384 800C3384 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C0388 800C3388 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C038C 800C338C 554A103A */  slwi      r10, r10, 2
/* 0C0390 800C3390 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C0394 800C3394 5406103A */  slwi      r6, r0, 2
/* 0C0398 800C3398 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C039C 800C339C 7D475378 */  mr        r7, r10
/* 0C03A0 800C33A0 1127302A */  ps_add    f9, f7, f6
/* 0C03A4 800C33A4 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C03A8 800C33A8 10673028 */  ps_sub    f3, f7, f6
/* 0C03AC 800C33AC 7CC73214 */  add       r6, r7, r6
/* 0C03B0 800C33B0 1129F82A */  ps_add    f9, f9, f31
/* 0C03B4 800C33B4 38000003 */  li        r0, 0x3
/* 0C03B8 800C33B8 1105202A */  ps_add    f8, f5, f4
/* 0C03BC 800C33BC 7CA83A14 */  add       r5, r8, r7
/* 0C03C0 800C33C0 10452028 */  ps_sub    f2, f5, f4
/* 0C03C4 800C33C4 1089402A */  ps_add    f4, f9, f8
/* 0C03C8 800C33C8 7C883214 */  add       r4, r8, r6
/* 0C03CC 800C33CC 1063F82A */  ps_add    f3, f3, f31
/* 0C03D0 800C33D0 7C0903A6 */  mtctr     r0
lbl_800C33D4:
/* 0C03D4 800C33D4 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C03D8 800C33D8 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C03DC 800C33DC E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C03E0 800C33E0 11894028 */  ps_sub    f12, f9, f8
/* 0C03E4 800C33E4 1023102A */  ps_add    f1, f3, f2
/* 0C03E8 800C33E8 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C03EC 800C33EC 11A31028 */  ps_sub    f13, f3, f2
/* 0C03F0 800C33F0 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C03F4 800C33F4 1069502A */  ps_add    f3, f9, f10
/* 0C03F8 800C33F8 11295028 */  ps_sub    f9, f9, f10
/* 0C03FC 800C33FC 39290008 */  addi      r9, r9, 0x8
/* 0C0400 800C3400 104B402A */  ps_add    f2, f11, f8
/* 0C0404 800C3404 116B4028 */  ps_sub    f11, f11, f8
/* 0C0408 800C3408 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C040C 800C340C 1102182A */  ps_add    f8, f2, f3
/* 0C0410 800C3410 11421828 */  ps_sub    f10, f2, f3
/* 0C0414 800C3414 1069582A */  ps_add    f3, f9, f11
/* 0C0418 800C3418 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C041C 800C341C 1044402A */  ps_add    f2, f4, f8
/* 0C0420 800C3420 10630732 */  ps_mul    f3, f3, f28
/* 0C0424 800C3424 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C0428 800C3428 10044028 */  ps_sub    f0, f4, f8
/* 0C042C 800C342C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C0430 800C3430 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C0434 800C3434 11294028 */  ps_sub    f9, f9, f8
/* 0C0438 800C3438 38E70002 */  addi      r7, r7, 0x2
/* 0C043C 800C343C F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C0440 800C3440 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C0444 800C3444 1041482A */  ps_add    f2, f1, f9
/* 0C0448 800C3448 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C044C 800C344C 10214828 */  ps_sub    f1, f1, f9
/* 0C0450 800C3450 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0454 800C3454 106D502A */  ps_add    f3, f13, f10
/* 0C0458 800C3458 116B502A */  ps_add    f11, f11, f10
/* 0C045C 800C345C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0460 800C3460 38C60002 */  addi      r6, r6, 0x2
/* 0C0464 800C3464 104C5828 */  ps_sub    f2, f12, f11
/* 0C0468 800C3468 106C582A */  ps_add    f3, f12, f11
/* 0C046C 800C346C F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0470 800C3470 104D5028 */  ps_sub    f2, f13, f10
/* 0C0474 800C3474 1127302A */  ps_add    f9, f7, f6
/* 0C0478 800C3478 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C047C 800C347C 10673028 */  ps_sub    f3, f7, f6
/* 0C0480 800C3480 1129F82A */  ps_add    f9, f9, f31
/* 0C0484 800C3484 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0488 800C3488 1105202A */  ps_add    f8, f5, f4
/* 0C048C 800C348C 10452028 */  ps_sub    f2, f5, f4
/* 0C0490 800C3490 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C0494 800C3494 7CA83A14 */  add       r5, r8, r7
/* 0C0498 800C3498 1089402A */  ps_add    f4, f9, f8
/* 0C049C 800C349C F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C04A0 800C34A0 1063F82A */  ps_add    f3, f3, f31
/* 0C04A4 800C34A4 7C883214 */  add       r4, r8, r6
/* 0C04A8 800C34A8 4200FF2C */  bdnz      lbl_800C33D4
/* 0C04AC 800C34AC E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C04B0 800C34B0 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C04B4 800C34B4 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C04B8 800C34B8 11894028 */  ps_sub    f12, f9, f8
/* 0C04BC 800C34BC 1023102A */  ps_add    f1, f3, f2
/* 0C04C0 800C34C0 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C04C4 800C34C4 11A31028 */  ps_sub    f13, f3, f2
/* 0C04C8 800C34C8 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C04CC 800C34CC 1069502A */  ps_add    f3, f9, f10
/* 0C04D0 800C34D0 11295028 */  ps_sub    f9, f9, f10
/* 0C04D4 800C34D4 104B402A */  ps_add    f2, f11, f8
/* 0C04D8 800C34D8 116B4028 */  ps_sub    f11, f11, f8
/* 0C04DC 800C34DC 1102182A */  ps_add    f8, f2, f3
/* 0C04E0 800C34E0 11421828 */  ps_sub    f10, f2, f3
/* 0C04E4 800C34E4 1069582A */  ps_add    f3, f9, f11
/* 0C04E8 800C34E8 1044402A */  ps_add    f2, f4, f8
/* 0C04EC 800C34EC 10630732 */  ps_mul    f3, f3, f28
/* 0C04F0 800C34F0 10044028 */  ps_sub    f0, f4, f8
/* 0C04F4 800C34F4 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C04F8 800C34F8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C04FC 800C34FC 11294028 */  ps_sub    f9, f9, f8
/* 0C0500 800C3500 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C0504 800C3504 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C0508 800C3508 1041482A */  ps_add    f2, f1, f9
/* 0C050C 800C350C 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C0510 800C3510 10214828 */  ps_sub    f1, f1, f9
/* 0C0514 800C3514 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0518 800C3518 106D502A */  ps_add    f3, f13, f10
/* 0C051C 800C351C 116B502A */  ps_add    f11, f11, f10
/* 0C0520 800C3520 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C0524 800C3524 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0528 800C3528 104C5828 */  ps_sub    f2, f12, f11
/* 0C052C 800C352C 106C582A */  ps_add    f3, f12, f11
/* 0C0530 800C3530 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0534 800C3534 104D5028 */  ps_sub    f2, f13, f10
/* 0C0538 800C3538 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C053C 800C353C F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0540 800C3540 811F0120 */  lwz       r8, 0x120(r31)
/* 0C0544 800C3544 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C0548 800C3548 393FFFF8 */  subi      r9, r31, 0x8
/* 0C054C 800C354C 38800008 */  li        r4, 0x8
/* 0C0550 800C3550 7C8903A6 */  mtctr     r4
lbl_800C3554:
/* 0C0554 800C3554 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0558 800C3558 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C055C 800C355C 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0560 800C3560 80080008 */  lwz       r0, 0x8(r8)
/* 0C0564 800C3564 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0568 800C3568 80A80004 */  lwz       r5, 0x4(r8)
/* 0C056C 800C356C A0880002 */  lhz       r4, 0x2(r8)
/* 0C0570 800C3570 7CC60378 */  or        r6, r6, r0
lbl_800C3574:
/* 0C0574 800C3574 2C060000 */  cmpwi     r6, 0x0
/* 0C0578 800C3578 40820148 */  bne       lbl_800C36C0
/* 0C057C 800C357C 10873C20 */  ps_merge00 f4, f7, f7
/* 0C0580 800C3580 2C050000 */  cmpwi     r5, 0x0
/* 0C0584 800C3584 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0C0588 800C3588 4082009C */  bne       lbl_800C3624
/* 0C058C 800C358C F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0C0590 800C3590 2C040000 */  cmpwi     r4, 0x0
/* 0C0594 800C3594 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0C0598 800C3598 40820018 */  bne       lbl_800C35B0
/* 0C059C 800C359C 38E70020 */  addi      r7, r7, 0x20
/* 0C05A0 800C35A0 F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0C05A4 800C35A4 39080010 */  addi      r8, r8, 0x10
/* 0C05A8 800C35A8 4200FFAC */  bdnz      lbl_800C3554
/* 0C05AC 800C35AC 480001DC */  b         lbl_800C3788
lbl_800C35B0:
/* 0C05B0 800C35B0 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C05B4 800C35B4 39080010 */  addi      r8, r8, 0x10
/* 0C05B8 800C35B8 10473C20 */  ps_merge00 f2, f7, f7
/* 0C05BC 800C35BC 38E70020 */  addi      r7, r7, 0x20
/* 0C05C0 800C35C0 103CE828 */  ps_sub    f1, f28, f29
/* 0C05C4 800C35C4 80A80004 */  lwz       r5, 0x4(r8)
/* 0C05C8 800C35C8 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C05CC 800C35CC A0880002 */  lhz       r4, 0x2(r8)
/* 0C05D0 800C35D0 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C05D4 800C35D4 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C05D8 800C35D8 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C05DC 800C35DC 1102502A */  ps_add    f8, f2, f10
/* 0C05E0 800C35E0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C05E4 800C35E4 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C05E8 800C35E8 11425028 */  ps_sub    f10, f2, f10
/* 0C05EC 800C35EC 80C8000C */  lwz       r6, 0xc(r8)
/* 0C05F0 800C35F0 1062482A */  ps_add    f3, f2, f9
/* 0C05F4 800C35F4 80080008 */  lwz       r0, 0x8(r8)
/* 0C05F8 800C35F8 11224828 */  ps_sub    f9, f2, f9
/* 0C05FC 800C35FC F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0C0600 800C3600 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C0604 800C3604 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0C0608 800C3608 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C060C 800C360C 7CC60378 */  or        r6, r6, r0
/* 0C0610 800C3610 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C0614 800C3614 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0618 800C3618 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C061C 800C361C 4200FF58 */  bdnz      lbl_800C3574
/* 0C0620 800C3620 48000168 */  b         lbl_800C3788
lbl_800C3624:
/* 0C0624 800C3624 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C0628 800C3628 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C062C 800C362C 39080010 */  addi      r8, r8, 0x10
/* 0C0630 800C3630 102100B2 */  ps_mul    f1, f1, f2
/* 0C0634 800C3634 38E70020 */  addi      r7, r7, 0x20
/* 0C0638 800C3638 11870828 */  ps_sub    f12, f7, f1
/* 0C063C 800C363C 11A7082A */  ps_add    f13, f7, f1
/* 0C0640 800C3640 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0644 800C3644 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C0648 800C3648 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C064C 800C364C 106C0732 */  ps_mul    f3, f12, f28
/* 0C0650 800C3650 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C0654 800C3654 80080008 */  lwz       r0, 0x8(r8)
/* 0C0658 800C3658 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C065C 800C365C 114A6420 */  ps_merge00 f10, f10, f12
/* 0C0660 800C3660 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0664 800C3664 11296828 */  ps_sub    f9, f9, f13
/* 0C0668 800C3668 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C066C 800C366C A0880002 */  lhz       r4, 0x2(r8)
/* 0C0670 800C3670 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C0674 800C3674 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C0678 800C3678 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C067C 800C367C 104B682A */  ps_add    f2, f11, f13
/* 0C0680 800C3680 11081828 */  ps_sub    f8, f8, f3
/* 0C0684 800C3684 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0688 800C3688 118344E0 */  ps_merge11 f12, f3, f8
/* 0C068C 800C368C 116B6828 */  ps_sub    f11, f11, f13
/* 0C0690 800C3690 F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0C0694 800C3694 108A602A */  ps_add    f4, f10, f12
/* 0C0698 800C3698 102A6028 */  ps_sub    f1, f10, f12
/* 0C069C 800C369C 7CC60378 */  or        r6, r6, r0
/* 0C06A0 800C36A0 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C06A4 800C36A4 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C06A8 800C36A8 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C06AC 800C36AC F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0C06B0 800C36B0 10E701B2 */  ps_mul    f7, f7, f6
/* 0C06B4 800C36B4 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0C06B8 800C36B8 4200FEBC */  bdnz      lbl_800C3574
/* 0C06BC 800C36BC 480000CC */  b         lbl_800C3788
lbl_800C36C0:
/* 0C06C0 800C36C0 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C06C4 800C36C4 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C06C8 800C36C8 104202B2 */  ps_mul    f2, f2, f10
/* 0C06CC 800C36CC E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C06D0 800C36D0 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C06D4 800C36D4 10871460 */  ps_merge01 f4, f7, f2
/* 0C06D8 800C36D8 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C06DC 800C36DC 10223C60 */  ps_merge01 f1, f2, f7
/* 0C06E0 800C36E0 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C06E4 800C36E4 39080010 */  addi      r8, r8, 0x10
/* 0C06E8 800C36E8 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C06EC 800C36EC 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C06F0 800C36F0 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C06F4 800C36F4 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C06F8 800C36F8 38E70020 */  addi      r7, r7, 0x20
/* 0C06FC 800C36FC 108B482A */  ps_add    f4, f11, f9
/* 0C0700 800C3700 118B4828 */  ps_sub    f12, f11, f9
/* 0C0704 800C3704 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C0708 800C3708 80C8000C */  lwz       r6, 0xc(r8)
/* 0C070C 800C370C 10685028 */  ps_sub    f3, f8, f10
/* 0C0710 800C3710 102A682A */  ps_add    f1, f10, f13
/* 0C0714 800C3714 11AA6828 */  ps_sub    f13, f10, f13
/* 0C0718 800C3718 10630732 */  ps_mul    f3, f3, f28
/* 0C071C 800C371C 80080008 */  lwz       r0, 0x8(r8)
/* 0C0720 800C3720 10240C20 */  ps_merge00 f1, f4, f1
/* 0C0724 800C3724 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C0728 800C3728 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C072C 800C372C 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0730 800C3730 11292028 */  ps_sub    f9, f9, f4
/* 0C0734 800C3734 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C0738 800C3738 A0880002 */  lhz       r4, 0x2(r8)
/* 0C073C 800C373C 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C0740 800C3740 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C0744 800C3744 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0748 800C3748 116B5028 */  ps_sub    f11, f11, f10
/* 0C074C 800C374C 1181402A */  ps_add    f12, f1, f8
/* 0C0750 800C3750 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0754 800C3754 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C0758 800C3758 10814028 */  ps_sub    f4, f1, f8
/* 0C075C 800C375C 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0760 800C3760 114D582A */  ps_add    f10, f13, f11
/* 0C0764 800C3764 112D5828 */  ps_sub    f9, f13, f11
/* 0C0768 800C3768 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C076C 800C376C F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0C0770 800C3770 108424A0 */  ps_merge10 f4, f4, f4
/* 0C0774 800C3774 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C0778 800C3778 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C077C 800C377C 7CC60378 */  or        r6, r6, r0
/* 0C0780 800C3780 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C0784 800C3784 4200FDF0 */  bdnz      lbl_800C3574
lbl_800C3788:
/* 0C0788 800C3788 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C078C 800C378C 7FE9FB78 */  mr        r9, r31
/* 0C0790 800C3790 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C0794 800C3794 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C0798 800C3798 54071838 */  slwi      r7, r0, 3
/* 0C079C 800C379C E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C07A0 800C37A0 5464103A */  slwi      r4, r3, 2
/* 0C07A4 800C37A4 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C07A8 800C37A8 5406103A */  slwi      r6, r0, 2
/* 0C07AC 800C37AC 1127302A */  ps_add    f9, f7, f6
/* 0C07B0 800C37B0 7CE72214 */  add       r7, r7, r4
/* 0C07B4 800C37B4 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C07B8 800C37B8 10673028 */  ps_sub    f3, f7, f6
/* 0C07BC 800C37BC 7CC73214 */  add       r6, r7, r6
/* 0C07C0 800C37C0 1129F82A */  ps_add    f9, f9, f31
/* 0C07C4 800C37C4 38000003 */  li        r0, 0x3
/* 0C07C8 800C37C8 1105202A */  ps_add    f8, f5, f4
/* 0C07CC 800C37CC 7CA83A14 */  add       r5, r8, r7
/* 0C07D0 800C37D0 10452028 */  ps_sub    f2, f5, f4
/* 0C07D4 800C37D4 1089402A */  ps_add    f4, f9, f8
/* 0C07D8 800C37D8 7C883214 */  add       r4, r8, r6
/* 0C07DC 800C37DC 1063F82A */  ps_add    f3, f3, f31
/* 0C07E0 800C37E0 7C0903A6 */  mtctr     r0
lbl_800C37E4:
/* 0C07E4 800C37E4 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C07E8 800C37E8 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C07EC 800C37EC E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C07F0 800C37F0 11894028 */  ps_sub    f12, f9, f8
/* 0C07F4 800C37F4 1023102A */  ps_add    f1, f3, f2
/* 0C07F8 800C37F8 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C07FC 800C37FC 11A31028 */  ps_sub    f13, f3, f2
/* 0C0800 800C3800 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C0804 800C3804 1069502A */  ps_add    f3, f9, f10
/* 0C0808 800C3808 11295028 */  ps_sub    f9, f9, f10
/* 0C080C 800C380C 39290008 */  addi      r9, r9, 0x8
/* 0C0810 800C3810 104B402A */  ps_add    f2, f11, f8
/* 0C0814 800C3814 116B4028 */  ps_sub    f11, f11, f8
/* 0C0818 800C3818 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C081C 800C381C 1102182A */  ps_add    f8, f2, f3
/* 0C0820 800C3820 11421828 */  ps_sub    f10, f2, f3
/* 0C0824 800C3824 1069582A */  ps_add    f3, f9, f11
/* 0C0828 800C3828 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C082C 800C382C 1044402A */  ps_add    f2, f4, f8
/* 0C0830 800C3830 10630732 */  ps_mul    f3, f3, f28
/* 0C0834 800C3834 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C0838 800C3838 10044028 */  ps_sub    f0, f4, f8
/* 0C083C 800C383C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C0840 800C3840 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C0844 800C3844 11294028 */  ps_sub    f9, f9, f8
/* 0C0848 800C3848 38E70002 */  addi      r7, r7, 0x2
/* 0C084C 800C384C F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C0850 800C3850 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C0854 800C3854 1041482A */  ps_add    f2, f1, f9
/* 0C0858 800C3858 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C085C 800C385C 10214828 */  ps_sub    f1, f1, f9
/* 0C0860 800C3860 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0864 800C3864 106D502A */  ps_add    f3, f13, f10
/* 0C0868 800C3868 116B502A */  ps_add    f11, f11, f10
/* 0C086C 800C386C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0870 800C3870 38C60002 */  addi      r6, r6, 0x2
/* 0C0874 800C3874 104C5828 */  ps_sub    f2, f12, f11
/* 0C0878 800C3878 106C582A */  ps_add    f3, f12, f11
/* 0C087C 800C387C F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0880 800C3880 104D5028 */  ps_sub    f2, f13, f10
/* 0C0884 800C3884 1127302A */  ps_add    f9, f7, f6
/* 0C0888 800C3888 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C088C 800C388C 10673028 */  ps_sub    f3, f7, f6
/* 0C0890 800C3890 1129F82A */  ps_add    f9, f9, f31
/* 0C0894 800C3894 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0898 800C3898 1105202A */  ps_add    f8, f5, f4
/* 0C089C 800C389C 10452028 */  ps_sub    f2, f5, f4
/* 0C08A0 800C38A0 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C08A4 800C38A4 7CA83A14 */  add       r5, r8, r7
/* 0C08A8 800C38A8 1089402A */  ps_add    f4, f9, f8
/* 0C08AC 800C38AC F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C08B0 800C38B0 1063F82A */  ps_add    f3, f3, f31
/* 0C08B4 800C38B4 7C883214 */  add       r4, r8, r6
/* 0C08B8 800C38B8 4200FF2C */  bdnz      lbl_800C37E4
/* 0C08BC 800C38BC E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C08C0 800C38C0 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C08C4 800C38C4 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C08C8 800C38C8 11894028 */  ps_sub    f12, f9, f8
/* 0C08CC 800C38CC 1023102A */  ps_add    f1, f3, f2
/* 0C08D0 800C38D0 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C08D4 800C38D4 11A31028 */  ps_sub    f13, f3, f2
/* 0C08D8 800C38D8 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C08DC 800C38DC 1069502A */  ps_add    f3, f9, f10
/* 0C08E0 800C38E0 11295028 */  ps_sub    f9, f9, f10
/* 0C08E4 800C38E4 104B402A */  ps_add    f2, f11, f8
/* 0C08E8 800C38E8 116B4028 */  ps_sub    f11, f11, f8
/* 0C08EC 800C38EC 1102182A */  ps_add    f8, f2, f3
/* 0C08F0 800C38F0 11421828 */  ps_sub    f10, f2, f3
/* 0C08F4 800C38F4 1069582A */  ps_add    f3, f9, f11
/* 0C08F8 800C38F8 1044402A */  ps_add    f2, f4, f8
/* 0C08FC 800C38FC 10630732 */  ps_mul    f3, f3, f28
/* 0C0900 800C3900 10044028 */  ps_sub    f0, f4, f8
/* 0C0904 800C3904 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C0908 800C3908 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C090C 800C390C 11294028 */  ps_sub    f9, f9, f8
/* 0C0910 800C3910 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C0914 800C3914 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C0918 800C3918 1041482A */  ps_add    f2, f1, f9
/* 0C091C 800C391C 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C0920 800C3920 10214828 */  ps_sub    f1, f1, f9
/* 0C0924 800C3924 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0928 800C3928 106D502A */  ps_add    f3, f13, f10
/* 0C092C 800C392C 116B502A */  ps_add    f11, f11, f10
/* 0C0930 800C3930 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0934 800C3934 104C5828 */  ps_sub    f2, f12, f11
/* 0C0938 800C3938 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C093C 800C393C 106C582A */  ps_add    f3, f12, f11
/* 0C0940 800C3940 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0944 800C3944 104D5028 */  ps_sub    f2, f13, f10
/* 0C0948 800C3948 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C094C 800C394C F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0950 800C3950 811F0124 */  lwz       r8, 0x124(r31)
/* 0C0954 800C3954 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C0958 800C3958 39230008 */  addi      r9, r3, 0x8
/* 0C095C 800C395C 395FFFF8 */  subi      r10, r31, 0x8
/* 0C0960 800C3960 38800008 */  li        r4, 0x8
/* 0C0964 800C3964 7C8903A6 */  mtctr     r4
lbl_800C3968:
/* 0C0968 800C3968 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C096C 800C396C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0970 800C3970 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0974 800C3974 80080008 */  lwz       r0, 0x8(r8)
/* 0C0978 800C3978 10E701B2 */  ps_mul    f7, f7, f6
/* 0C097C 800C397C 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0980 800C3980 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0984 800C3984 7CC60378 */  or        r6, r6, r0
lbl_800C3988:
/* 0C0988 800C3988 2C060000 */  cmpwi     r6, 0x0
/* 0C098C 800C398C 40820148 */  bne       lbl_800C3AD4
/* 0C0990 800C3990 10873C20 */  ps_merge00 f4, f7, f7
/* 0C0994 800C3994 2C050000 */  cmpwi     r5, 0x0
/* 0C0998 800C3998 F08A0008 */  psq_st    f4, 0x8(r10), 0, qr0
/* 0C099C 800C399C 4082009C */  bne       lbl_800C3A38
/* 0C09A0 800C39A0 F08A0010 */  psq_st    f4, 0x10(r10), 0, qr0
/* 0C09A4 800C39A4 2C040000 */  cmpwi     r4, 0x0
/* 0C09A8 800C39A8 F08A0018 */  psq_st    f4, 0x18(r10), 0, qr0
/* 0C09AC 800C39AC 40820018 */  bne       lbl_800C39C4
/* 0C09B0 800C39B0 38E70020 */  addi      r7, r7, 0x20
/* 0C09B4 800C39B4 F48A0020 */  psq_stu   f4, 0x20(r10), 0, qr0
/* 0C09B8 800C39B8 39080010 */  addi      r8, r8, 0x10
/* 0C09BC 800C39BC 4200FFAC */  bdnz      lbl_800C3968
/* 0C09C0 800C39C0 480001DC */  b         lbl_800C3B9C
lbl_800C39C4:
/* 0C09C4 800C39C4 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C09C8 800C39C8 39080010 */  addi      r8, r8, 0x10
/* 0C09CC 800C39CC 10473C20 */  ps_merge00 f2, f7, f7
/* 0C09D0 800C39D0 38E70020 */  addi      r7, r7, 0x20
/* 0C09D4 800C39D4 103CE828 */  ps_sub    f1, f28, f29
/* 0C09D8 800C39D8 80A80004 */  lwz       r5, 0x4(r8)
/* 0C09DC 800C39DC 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C09E0 800C39E0 A0880002 */  lhz       r4, 0x2(r8)
/* 0C09E4 800C39E4 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C09E8 800C39E8 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C09EC 800C39EC 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C09F0 800C39F0 1102502A */  ps_add    f8, f2, f10
/* 0C09F4 800C39F4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C09F8 800C39F8 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C09FC 800C39FC 11425028 */  ps_sub    f10, f2, f10
/* 0C0A00 800C3A00 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0A04 800C3A04 1062482A */  ps_add    f3, f2, f9
/* 0C0A08 800C3A08 80080008 */  lwz       r0, 0x8(r8)
/* 0C0A0C 800C3A0C 11224828 */  ps_sub    f9, f2, f9
/* 0C0A10 800C3A10 F50A0008 */  psq_stu   f8, 0x8(r10), 0, qr0
/* 0C0A14 800C3A14 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C0A18 800C3A18 F46A0008 */  psq_stu   f3, 0x8(r10), 0, qr0
/* 0C0A1C 800C3A1C 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C0A20 800C3A20 7CC60378 */  or        r6, r6, r0
/* 0C0A24 800C3A24 F52A0008 */  psq_stu   f9, 0x8(r10), 0, qr0
/* 0C0A28 800C3A28 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0A2C 800C3A2C F54A0008 */  psq_stu   f10, 0x8(r10), 0, qr0
/* 0C0A30 800C3A30 4200FF58 */  bdnz      lbl_800C3988
/* 0C0A34 800C3A34 48000168 */  b         lbl_800C3B9C
lbl_800C3A38:
/* 0C0A38 800C3A38 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C0A3C 800C3A3C E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C0A40 800C3A40 39080010 */  addi      r8, r8, 0x10
/* 0C0A44 800C3A44 102100B2 */  ps_mul    f1, f1, f2
/* 0C0A48 800C3A48 38E70020 */  addi      r7, r7, 0x20
/* 0C0A4C 800C3A4C 11870828 */  ps_sub    f12, f7, f1
/* 0C0A50 800C3A50 11A7082A */  ps_add    f13, f7, f1
/* 0C0A54 800C3A54 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0A58 800C3A58 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C0A5C 800C3A5C 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C0A60 800C3A60 106C0732 */  ps_mul    f3, f12, f28
/* 0C0A64 800C3A64 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C0A68 800C3A68 80080008 */  lwz       r0, 0x8(r8)
/* 0C0A6C 800C3A6C 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C0A70 800C3A70 114A6420 */  ps_merge00 f10, f10, f12
/* 0C0A74 800C3A74 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0A78 800C3A78 11296828 */  ps_sub    f9, f9, f13
/* 0C0A7C 800C3A7C 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C0A80 800C3A80 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0A84 800C3A84 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C0A88 800C3A88 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C0A8C 800C3A8C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0A90 800C3A90 104B682A */  ps_add    f2, f11, f13
/* 0C0A94 800C3A94 11081828 */  ps_sub    f8, f8, f3
/* 0C0A98 800C3A98 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0A9C 800C3A9C 118344E0 */  ps_merge11 f12, f3, f8
/* 0C0AA0 800C3AA0 116B6828 */  ps_sub    f11, f11, f13
/* 0C0AA4 800C3AA4 F44A0008 */  psq_stu   f2, 0x8(r10), 0, qr0
/* 0C0AA8 800C3AA8 108A602A */  ps_add    f4, f10, f12
/* 0C0AAC 800C3AAC 102A6028 */  ps_sub    f1, f10, f12
/* 0C0AB0 800C3AB0 7CC60378 */  or        r6, r6, r0
/* 0C0AB4 800C3AB4 F48A0008 */  psq_stu   f4, 0x8(r10), 0, qr0
/* 0C0AB8 800C3AB8 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C0ABC 800C3ABC 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C0AC0 800C3AC0 F42A0008 */  psq_stu   f1, 0x8(r10), 0, qr0
/* 0C0AC4 800C3AC4 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0AC8 800C3AC8 F56A0008 */  psq_stu   f11, 0x8(r10), 0, qr0
/* 0C0ACC 800C3ACC 4200FEBC */  bdnz      lbl_800C3988
/* 0C0AD0 800C3AD0 480000CC */  b         lbl_800C3B9C
lbl_800C3AD4:
/* 0C0AD4 800C3AD4 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C0AD8 800C3AD8 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C0ADC 800C3ADC 104202B2 */  ps_mul    f2, f2, f10
/* 0C0AE0 800C3AE0 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C0AE4 800C3AE4 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C0AE8 800C3AE8 10871460 */  ps_merge01 f4, f7, f2
/* 0C0AEC 800C3AEC E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C0AF0 800C3AF0 10223C60 */  ps_merge01 f1, f2, f7
/* 0C0AF4 800C3AF4 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C0AF8 800C3AF8 39080010 */  addi      r8, r8, 0x10
/* 0C0AFC 800C3AFC 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C0B00 800C3B00 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C0B04 800C3B04 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C0B08 800C3B08 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C0B0C 800C3B0C 38E70020 */  addi      r7, r7, 0x20
/* 0C0B10 800C3B10 108B482A */  ps_add    f4, f11, f9
/* 0C0B14 800C3B14 118B4828 */  ps_sub    f12, f11, f9
/* 0C0B18 800C3B18 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C0B1C 800C3B1C 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0B20 800C3B20 10685028 */  ps_sub    f3, f8, f10
/* 0C0B24 800C3B24 102A682A */  ps_add    f1, f10, f13
/* 0C0B28 800C3B28 11AA6828 */  ps_sub    f13, f10, f13
/* 0C0B2C 800C3B2C 10630732 */  ps_mul    f3, f3, f28
/* 0C0B30 800C3B30 80080008 */  lwz       r0, 0x8(r8)
/* 0C0B34 800C3B34 10240C20 */  ps_merge00 f1, f4, f1
/* 0C0B38 800C3B38 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C0B3C 800C3B3C 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C0B40 800C3B40 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0B44 800C3B44 11292028 */  ps_sub    f9, f9, f4
/* 0C0B48 800C3B48 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C0B4C 800C3B4C A0880002 */  lhz       r4, 0x2(r8)
/* 0C0B50 800C3B50 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C0B54 800C3B54 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C0B58 800C3B58 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0B5C 800C3B5C 116B5028 */  ps_sub    f11, f11, f10
/* 0C0B60 800C3B60 1181402A */  ps_add    f12, f1, f8
/* 0C0B64 800C3B64 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0B68 800C3B68 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C0B6C 800C3B6C 10814028 */  ps_sub    f4, f1, f8
/* 0C0B70 800C3B70 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0B74 800C3B74 114D582A */  ps_add    f10, f13, f11
/* 0C0B78 800C3B78 112D5828 */  ps_sub    f9, f13, f11
/* 0C0B7C 800C3B7C 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C0B80 800C3B80 F58A0008 */  psq_stu   f12, 0x8(r10), 0, qr0
/* 0C0B84 800C3B84 108424A0 */  ps_merge10 f4, f4, f4
/* 0C0B88 800C3B88 F52A0008 */  psq_stu   f9, 0x8(r10), 0, qr0
/* 0C0B8C 800C3B8C F54A0008 */  psq_stu   f10, 0x8(r10), 0, qr0
/* 0C0B90 800C3B90 7CC60378 */  or        r6, r6, r0
/* 0C0B94 800C3B94 F48A0008 */  psq_stu   f4, 0x8(r10), 0, qr0
/* 0C0B98 800C3B98 4200FDF0 */  bdnz      lbl_800C3988
lbl_800C3B9C:
/* 0C0B9C 800C3B9C 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C0BA0 800C3BA0 7FEAFB78 */  mr        r10, r31
/* 0C0BA4 800C3BA4 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C0BA8 800C3BA8 E0EA0000 */  psq_l     f7, 0x0(r10), 0, qr0
/* 0C0BAC 800C3BAC 54071838 */  slwi      r7, r0, 3
/* 0C0BB0 800C3BB0 E0CA0080 */  psq_l     f6, 0x80(r10), 0, qr0
/* 0C0BB4 800C3BB4 5529103A */  slwi      r9, r9, 2
/* 0C0BB8 800C3BB8 E0AA0040 */  psq_l     f5, 0x40(r10), 0, qr0
/* 0C0BBC 800C3BBC 5406103A */  slwi      r6, r0, 2
/* 0C0BC0 800C3BC0 1127302A */  ps_add    f9, f7, f6
/* 0C0BC4 800C3BC4 7CE74A14 */  add       r7, r7, r9
/* 0C0BC8 800C3BC8 E08A00C0 */  psq_l     f4, 0xc0(r10), 0, qr0
/* 0C0BCC 800C3BCC 10673028 */  ps_sub    f3, f7, f6
/* 0C0BD0 800C3BD0 7CC73214 */  add       r6, r7, r6
/* 0C0BD4 800C3BD4 1129F82A */  ps_add    f9, f9, f31
/* 0C0BD8 800C3BD8 38000003 */  li        r0, 0x3
/* 0C0BDC 800C3BDC 1105202A */  ps_add    f8, f5, f4
/* 0C0BE0 800C3BE0 7CA83A14 */  add       r5, r8, r7
/* 0C0BE4 800C3BE4 10452028 */  ps_sub    f2, f5, f4
/* 0C0BE8 800C3BE8 1089402A */  ps_add    f4, f9, f8
/* 0C0BEC 800C3BEC 7C883214 */  add       r4, r8, r6
/* 0C0BF0 800C3BF0 1063F82A */  ps_add    f3, f3, f31
/* 0C0BF4 800C3BF4 7C0903A6 */  mtctr     r0
lbl_800C3BF8:
/* 0C0BF8 800C3BF8 E16A0020 */  psq_l     f11, 0x20(r10), 0, qr0
/* 0C0BFC 800C3BFC 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C0C00 800C3C00 E14A0060 */  psq_l     f10, 0x60(r10), 0, qr0
/* 0C0C04 800C3C04 11894028 */  ps_sub    f12, f9, f8
/* 0C0C08 800C3C08 1023102A */  ps_add    f1, f3, f2
/* 0C0C0C 800C3C0C E12A00A0 */  psq_l     f9, 0xa0(r10), 0, qr0
/* 0C0C10 800C3C10 11A31028 */  ps_sub    f13, f3, f2
/* 0C0C14 800C3C14 E10A00E0 */  psq_l     f8, 0xe0(r10), 0, qr0
/* 0C0C18 800C3C18 1069502A */  ps_add    f3, f9, f10
/* 0C0C1C 800C3C1C 11295028 */  ps_sub    f9, f9, f10
/* 0C0C20 800C3C20 394A0008 */  addi      r10, r10, 0x8
/* 0C0C24 800C3C24 104B402A */  ps_add    f2, f11, f8
/* 0C0C28 800C3C28 116B4028 */  ps_sub    f11, f11, f8
/* 0C0C2C 800C3C2C E0EA0000 */  psq_l     f7, 0x0(r10), 0, qr0
/* 0C0C30 800C3C30 1102182A */  ps_add    f8, f2, f3
/* 0C0C34 800C3C34 11421828 */  ps_sub    f10, f2, f3
/* 0C0C38 800C3C38 1069582A */  ps_add    f3, f9, f11
/* 0C0C3C 800C3C3C E0CA0080 */  psq_l     f6, 0x80(r10), 0, qr0
/* 0C0C40 800C3C40 1044402A */  ps_add    f2, f4, f8
/* 0C0C44 800C3C44 10630732 */  ps_mul    f3, f3, f28
/* 0C0C48 800C3C48 E0AA0040 */  psq_l     f5, 0x40(r10), 0, qr0
/* 0C0C4C 800C3C4C 10044028 */  ps_sub    f0, f4, f8
/* 0C0C50 800C3C50 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C0C54 800C3C54 E08A00C0 */  psq_l     f4, 0xc0(r10), 0, qr0
/* 0C0C58 800C3C58 11294028 */  ps_sub    f9, f9, f8
/* 0C0C5C 800C3C5C 38E70002 */  addi      r7, r7, 0x2
/* 0C0C60 800C3C60 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C0C64 800C3C64 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C0C68 800C3C68 1041482A */  ps_add    f2, f1, f9
/* 0C0C6C 800C3C6C 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C0C70 800C3C70 10214828 */  ps_sub    f1, f1, f9
/* 0C0C74 800C3C74 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0C78 800C3C78 106D502A */  ps_add    f3, f13, f10
/* 0C0C7C 800C3C7C 116B502A */  ps_add    f11, f11, f10
/* 0C0C80 800C3C80 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0C84 800C3C84 38C60002 */  addi      r6, r6, 0x2
/* 0C0C88 800C3C88 104C5828 */  ps_sub    f2, f12, f11
/* 0C0C8C 800C3C8C 106C582A */  ps_add    f3, f12, f11
/* 0C0C90 800C3C90 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0C94 800C3C94 104D5028 */  ps_sub    f2, f13, f10
/* 0C0C98 800C3C98 1127302A */  ps_add    f9, f7, f6
/* 0C0C9C 800C3C9C F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C0CA0 800C3CA0 10673028 */  ps_sub    f3, f7, f6
/* 0C0CA4 800C3CA4 1129F82A */  ps_add    f9, f9, f31
/* 0C0CA8 800C3CA8 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0CAC 800C3CAC 1105202A */  ps_add    f8, f5, f4
/* 0C0CB0 800C3CB0 10452028 */  ps_sub    f2, f5, f4
/* 0C0CB4 800C3CB4 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C0CB8 800C3CB8 7CA83A14 */  add       r5, r8, r7
/* 0C0CBC 800C3CBC 1089402A */  ps_add    f4, f9, f8
/* 0C0CC0 800C3CC0 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C0CC4 800C3CC4 1063F82A */  ps_add    f3, f3, f31
/* 0C0CC8 800C3CC8 7C883214 */  add       r4, r8, r6
/* 0C0CCC 800C3CCC 4200FF2C */  bdnz      lbl_800C3BF8
/* 0C0CD0 800C3CD0 E16A0020 */  psq_l     f11, 0x20(r10), 0, qr0
/* 0C0CD4 800C3CD4 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C0CD8 800C3CD8 E14A0060 */  psq_l     f10, 0x60(r10), 0, qr0
/* 0C0CDC 800C3CDC 11894028 */  ps_sub    f12, f9, f8
/* 0C0CE0 800C3CE0 1023102A */  ps_add    f1, f3, f2
/* 0C0CE4 800C3CE4 E12A00A0 */  psq_l     f9, 0xa0(r10), 0, qr0
/* 0C0CE8 800C3CE8 11A31028 */  ps_sub    f13, f3, f2
/* 0C0CEC 800C3CEC E10A00E0 */  psq_l     f8, 0xe0(r10), 0, qr0
/* 0C0CF0 800C3CF0 1069502A */  ps_add    f3, f9, f10
/* 0C0CF4 800C3CF4 11295028 */  ps_sub    f9, f9, f10
/* 0C0CF8 800C3CF8 104B402A */  ps_add    f2, f11, f8
/* 0C0CFC 800C3CFC 116B4028 */  ps_sub    f11, f11, f8
/* 0C0D00 800C3D00 1102182A */  ps_add    f8, f2, f3
/* 0C0D04 800C3D04 11421828 */  ps_sub    f10, f2, f3
/* 0C0D08 800C3D08 1069582A */  ps_add    f3, f9, f11
/* 0C0D0C 800C3D0C 1044402A */  ps_add    f2, f4, f8
/* 0C0D10 800C3D10 10630732 */  ps_mul    f3, f3, f28
/* 0C0D14 800C3D14 10044028 */  ps_sub    f0, f4, f8
/* 0C0D18 800C3D18 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C0D1C 800C3D1C F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C0D20 800C3D20 11294028 */  ps_sub    f9, f9, f8
/* 0C0D24 800C3D24 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C0D28 800C3D28 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C0D2C 800C3D2C 1041482A */  ps_add    f2, f1, f9
/* 0C0D30 800C3D30 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C0D34 800C3D34 10214828 */  ps_sub    f1, f1, f9
/* 0C0D38 800C3D38 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C0D3C 800C3D3C 106D502A */  ps_add    f3, f13, f10
/* 0C0D40 800C3D40 116B502A */  ps_add    f11, f11, f10
/* 0C0D44 800C3D44 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C0D48 800C3D48 104C5828 */  ps_sub    f2, f12, f11
/* 0C0D4C 800C3D4C F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C0D50 800C3D50 106C582A */  ps_add    f3, f12, f11
/* 0C0D54 800C3D54 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C0D58 800C3D58 104D5028 */  ps_sub    f2, f13, f10
/* 0C0D5C 800C3D5C F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C0D60 800C3D60 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C0D64 800C3D64 809F0110 */  lwz       r4, 0x110(r31)
/* 0C0D68 800C3D68 38000140 */  li        r0, 0x140
/* 0C0D6C 800C3D6C 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0C0D70 800C3D70 908D8F20 */  stw       r4, D_8018BEA0@sda21(r0)
/* 0C0D74 800C3D74 5463F87E */  srwi      r3, r3, 1
/* 0C0D78 800C3D78 393FFFF8 */  subi      r9, r31, 0x8
/* 0C0D7C 800C3D7C 900D8F40 */  stw       r0, D_8018BEC0@sda21(r0)
/* 0C0D80 800C3D80 88050686 */  lbz       r0, 0x686(r5)
/* 0C0D84 800C3D84 5400402E */  slwi      r0, r0, 8
/* 0C0D88 800C3D88 7C050214 */  add       r0, r5, r0
/* 0C0D8C 800C3D8C 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0C0D90 800C3D90 811F0128 */  lwz       r8, 0x128(r31)
/* 0C0D94 800C3D94 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C0D98 800C3D98 38800008 */  li        r4, 0x8
/* 0C0D9C 800C3D9C 7C8903A6 */  mtctr     r4
lbl_800C3DA0:
/* 0C0DA0 800C3DA0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0DA4 800C3DA4 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0DA8 800C3DA8 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0DAC 800C3DAC 80080008 */  lwz       r0, 0x8(r8)
/* 0C0DB0 800C3DB0 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0DB4 800C3DB4 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0DB8 800C3DB8 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0DBC 800C3DBC 7CC60379 */  or.       r6, r6, r0
lbl_800C3DC0:
/* 0C0DC0 800C3DC0 2C060000 */  cmpwi     r6, 0x0
/* 0C0DC4 800C3DC4 40820148 */  bne       lbl_800C3F0C
/* 0C0DC8 800C3DC8 10873C20 */  ps_merge00 f4, f7, f7
/* 0C0DCC 800C3DCC 2C050000 */  cmpwi     r5, 0x0
/* 0C0DD0 800C3DD0 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0C0DD4 800C3DD4 4082009C */  bne       lbl_800C3E70
/* 0C0DD8 800C3DD8 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0C0DDC 800C3DDC 2C040000 */  cmpwi     r4, 0x0
/* 0C0DE0 800C3DE0 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0C0DE4 800C3DE4 40820018 */  bne       lbl_800C3DFC
/* 0C0DE8 800C3DE8 38E70020 */  addi      r7, r7, 0x20
/* 0C0DEC 800C3DEC F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0C0DF0 800C3DF0 39080010 */  addi      r8, r8, 0x10
/* 0C0DF4 800C3DF4 4200FFAC */  bdnz      lbl_800C3DA0
/* 0C0DF8 800C3DF8 480001DC */  b         lbl_800C3FD4
lbl_800C3DFC:
/* 0C0DFC 800C3DFC 39080010 */  addi      r8, r8, 0x10
/* 0C0E00 800C3E00 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C0E04 800C3E04 38E70020 */  addi      r7, r7, 0x20
/* 0C0E08 800C3E08 10473C20 */  ps_merge00 f2, f7, f7
/* 0C0E0C 800C3E0C 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0E10 800C3E10 103CE828 */  ps_sub    f1, f28, f29
/* 0C0E14 800C3E14 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C0E18 800C3E18 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0E1C 800C3E1C 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C0E20 800C3E20 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0E24 800C3E24 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C0E28 800C3E28 1102502A */  ps_add    f8, f2, f10
/* 0C0E2C 800C3E2C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0E30 800C3E30 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C0E34 800C3E34 11425028 */  ps_sub    f10, f2, f10
/* 0C0E38 800C3E38 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0E3C 800C3E3C 1062482A */  ps_add    f3, f2, f9
/* 0C0E40 800C3E40 80080008 */  lwz       r0, 0x8(r8)
/* 0C0E44 800C3E44 11224828 */  ps_sub    f9, f2, f9
/* 0C0E48 800C3E48 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0C0E4C 800C3E4C 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C0E50 800C3E50 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0C0E54 800C3E54 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C0E58 800C3E58 7CC60378 */  or        r6, r6, r0
/* 0C0E5C 800C3E5C F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C0E60 800C3E60 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0E64 800C3E64 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C0E68 800C3E68 4200FF58 */  bdnz      lbl_800C3DC0
/* 0C0E6C 800C3E6C 48000168 */  b         lbl_800C3FD4
lbl_800C3E70:
/* 0C0E70 800C3E70 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C0E74 800C3E74 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C0E78 800C3E78 39080010 */  addi      r8, r8, 0x10
/* 0C0E7C 800C3E7C 102100B2 */  ps_mul    f1, f1, f2
/* 0C0E80 800C3E80 38E70020 */  addi      r7, r7, 0x20
/* 0C0E84 800C3E84 11870828 */  ps_sub    f12, f7, f1
/* 0C0E88 800C3E88 11A7082A */  ps_add    f13, f7, f1
/* 0C0E8C 800C3E8C 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0E90 800C3E90 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C0E94 800C3E94 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C0E98 800C3E98 106C0732 */  ps_mul    f3, f12, f28
/* 0C0E9C 800C3E9C 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C0EA0 800C3EA0 80080008 */  lwz       r0, 0x8(r8)
/* 0C0EA4 800C3EA4 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C0EA8 800C3EA8 114A6420 */  ps_merge00 f10, f10, f12
/* 0C0EAC 800C3EAC 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0EB0 800C3EB0 11296828 */  ps_sub    f9, f9, f13
/* 0C0EB4 800C3EB4 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C0EB8 800C3EB8 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0EBC 800C3EBC 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C0EC0 800C3EC0 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C0EC4 800C3EC4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0EC8 800C3EC8 104B682A */  ps_add    f2, f11, f13
/* 0C0ECC 800C3ECC 11081828 */  ps_sub    f8, f8, f3
/* 0C0ED0 800C3ED0 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0ED4 800C3ED4 118344E0 */  ps_merge11 f12, f3, f8
/* 0C0ED8 800C3ED8 116B6828 */  ps_sub    f11, f11, f13
/* 0C0EDC 800C3EDC F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0C0EE0 800C3EE0 108A602A */  ps_add    f4, f10, f12
/* 0C0EE4 800C3EE4 102A6028 */  ps_sub    f1, f10, f12
/* 0C0EE8 800C3EE8 7CC60378 */  or        r6, r6, r0
/* 0C0EEC 800C3EEC F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C0EF0 800C3EF0 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C0EF4 800C3EF4 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C0EF8 800C3EF8 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0C0EFC 800C3EFC 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0F00 800C3F00 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0C0F04 800C3F04 4200FEBC */  bdnz      lbl_800C3DC0
/* 0C0F08 800C3F08 480000CC */  b         lbl_800C3FD4
lbl_800C3F0C:
/* 0C0F0C 800C3F0C E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C0F10 800C3F10 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C0F14 800C3F14 104202B2 */  ps_mul    f2, f2, f10
/* 0C0F18 800C3F18 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C0F1C 800C3F1C E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C0F20 800C3F20 10871460 */  ps_merge01 f4, f7, f2
/* 0C0F24 800C3F24 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C0F28 800C3F28 10223C60 */  ps_merge01 f1, f2, f7
/* 0C0F2C 800C3F2C E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C0F30 800C3F30 39080010 */  addi      r8, r8, 0x10
/* 0C0F34 800C3F34 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C0F38 800C3F38 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C0F3C 800C3F3C 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C0F40 800C3F40 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C0F44 800C3F44 38E70020 */  addi      r7, r7, 0x20
/* 0C0F48 800C3F48 108B482A */  ps_add    f4, f11, f9
/* 0C0F4C 800C3F4C 118B4828 */  ps_sub    f12, f11, f9
/* 0C0F50 800C3F50 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C0F54 800C3F54 80C8000C */  lwz       r6, 0xc(r8)
/* 0C0F58 800C3F58 10685028 */  ps_sub    f3, f8, f10
/* 0C0F5C 800C3F5C 102A682A */  ps_add    f1, f10, f13
/* 0C0F60 800C3F60 11AA6828 */  ps_sub    f13, f10, f13
/* 0C0F64 800C3F64 10630732 */  ps_mul    f3, f3, f28
/* 0C0F68 800C3F68 80080008 */  lwz       r0, 0x8(r8)
/* 0C0F6C 800C3F6C 10240C20 */  ps_merge00 f1, f4, f1
/* 0C0F70 800C3F70 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C0F74 800C3F74 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C0F78 800C3F78 80A80004 */  lwz       r5, 0x4(r8)
/* 0C0F7C 800C3F7C 11292028 */  ps_sub    f9, f9, f4
/* 0C0F80 800C3F80 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C0F84 800C3F84 A0880002 */  lhz       r4, 0x2(r8)
/* 0C0F88 800C3F88 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C0F8C 800C3F8C 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C0F90 800C3F90 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C0F94 800C3F94 116B5028 */  ps_sub    f11, f11, f10
/* 0C0F98 800C3F98 1181402A */  ps_add    f12, f1, f8
/* 0C0F9C 800C3F9C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C0FA0 800C3FA0 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C0FA4 800C3FA4 10814028 */  ps_sub    f4, f1, f8
/* 0C0FA8 800C3FA8 10E701B2 */  ps_mul    f7, f7, f6
/* 0C0FAC 800C3FAC 114D582A */  ps_add    f10, f13, f11
/* 0C0FB0 800C3FB0 112D5828 */  ps_sub    f9, f13, f11
/* 0C0FB4 800C3FB4 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C0FB8 800C3FB8 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0C0FBC 800C3FBC 108424A0 */  ps_merge10 f4, f4, f4
/* 0C0FC0 800C3FC0 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C0FC4 800C3FC4 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C0FC8 800C3FC8 7CC60378 */  or        r6, r6, r0
/* 0C0FCC 800C3FCC F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C0FD0 800C3FD0 4200FDF0 */  bdnz      lbl_800C3DC0
lbl_800C3FD4:
/* 0C0FD4 800C3FD4 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C0FD8 800C3FD8 7FE9FB78 */  mr        r9, r31
/* 0C0FDC 800C3FDC 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C0FE0 800C3FE0 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C0FE4 800C3FE4 5464103A */  slwi      r4, r3, 2
/* 0C0FE8 800C3FE8 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C0FEC 800C3FEC 5406103A */  slwi      r6, r0, 2
/* 0C0FF0 800C3FF0 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C0FF4 800C3FF4 7C872378 */  mr        r7, r4
/* 0C0FF8 800C3FF8 1127302A */  ps_add    f9, f7, f6
/* 0C0FFC 800C3FFC E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C1000 800C4000 10673028 */  ps_sub    f3, f7, f6
/* 0C1004 800C4004 7CC73214 */  add       r6, r7, r6
/* 0C1008 800C4008 1129F82A */  ps_add    f9, f9, f31
/* 0C100C 800C400C 38000003 */  li        r0, 0x3
/* 0C1010 800C4010 1105202A */  ps_add    f8, f5, f4
/* 0C1014 800C4014 7CA83A14 */  add       r5, r8, r7
/* 0C1018 800C4018 10452028 */  ps_sub    f2, f5, f4
/* 0C101C 800C401C 1089402A */  ps_add    f4, f9, f8
/* 0C1020 800C4020 7C883214 */  add       r4, r8, r6
/* 0C1024 800C4024 1063F82A */  ps_add    f3, f3, f31
/* 0C1028 800C4028 7C0903A6 */  mtctr     r0
lbl_800C402C:
/* 0C102C 800C402C E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C1030 800C4030 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C1034 800C4034 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C1038 800C4038 11894028 */  ps_sub    f12, f9, f8
/* 0C103C 800C403C 1023102A */  ps_add    f1, f3, f2
/* 0C1040 800C4040 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C1044 800C4044 11A31028 */  ps_sub    f13, f3, f2
/* 0C1048 800C4048 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C104C 800C404C 1069502A */  ps_add    f3, f9, f10
/* 0C1050 800C4050 11295028 */  ps_sub    f9, f9, f10
/* 0C1054 800C4054 39290008 */  addi      r9, r9, 0x8
/* 0C1058 800C4058 104B402A */  ps_add    f2, f11, f8
/* 0C105C 800C405C 116B4028 */  ps_sub    f11, f11, f8
/* 0C1060 800C4060 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C1064 800C4064 1102182A */  ps_add    f8, f2, f3
/* 0C1068 800C4068 11421828 */  ps_sub    f10, f2, f3
/* 0C106C 800C406C 1069582A */  ps_add    f3, f9, f11
/* 0C1070 800C4070 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C1074 800C4074 1044402A */  ps_add    f2, f4, f8
/* 0C1078 800C4078 10630732 */  ps_mul    f3, f3, f28
/* 0C107C 800C407C E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C1080 800C4080 10044028 */  ps_sub    f0, f4, f8
/* 0C1084 800C4084 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C1088 800C4088 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C108C 800C408C 11294028 */  ps_sub    f9, f9, f8
/* 0C1090 800C4090 38E70002 */  addi      r7, r7, 0x2
/* 0C1094 800C4094 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C1098 800C4098 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C109C 800C409C 1041482A */  ps_add    f2, f1, f9
/* 0C10A0 800C40A0 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C10A4 800C40A4 10214828 */  ps_sub    f1, f1, f9
/* 0C10A8 800C40A8 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C10AC 800C40AC 106D502A */  ps_add    f3, f13, f10
/* 0C10B0 800C40B0 116B502A */  ps_add    f11, f11, f10
/* 0C10B4 800C40B4 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C10B8 800C40B8 38C60002 */  addi      r6, r6, 0x2
/* 0C10BC 800C40BC 104C5828 */  ps_sub    f2, f12, f11
/* 0C10C0 800C40C0 106C582A */  ps_add    f3, f12, f11
/* 0C10C4 800C40C4 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C10C8 800C40C8 104D5028 */  ps_sub    f2, f13, f10
/* 0C10CC 800C40CC 1127302A */  ps_add    f9, f7, f6
/* 0C10D0 800C40D0 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C10D4 800C40D4 10673028 */  ps_sub    f3, f7, f6
/* 0C10D8 800C40D8 1129F82A */  ps_add    f9, f9, f31
/* 0C10DC 800C40DC F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C10E0 800C40E0 1105202A */  ps_add    f8, f5, f4
/* 0C10E4 800C40E4 10452028 */  ps_sub    f2, f5, f4
/* 0C10E8 800C40E8 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C10EC 800C40EC 7CA83A14 */  add       r5, r8, r7
/* 0C10F0 800C40F0 1089402A */  ps_add    f4, f9, f8
/* 0C10F4 800C40F4 F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C10F8 800C40F8 1063F82A */  ps_add    f3, f3, f31
/* 0C10FC 800C40FC 7C883214 */  add       r4, r8, r6
/* 0C1100 800C4100 4200FF2C */  bdnz      lbl_800C402C
/* 0C1104 800C4104 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C1108 800C4108 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C110C 800C410C E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C1110 800C4110 11894028 */  ps_sub    f12, f9, f8
/* 0C1114 800C4114 1023102A */  ps_add    f1, f3, f2
/* 0C1118 800C4118 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C111C 800C411C 11A31028 */  ps_sub    f13, f3, f2
/* 0C1120 800C4120 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C1124 800C4124 1069502A */  ps_add    f3, f9, f10
/* 0C1128 800C4128 11295028 */  ps_sub    f9, f9, f10
/* 0C112C 800C412C 104B402A */  ps_add    f2, f11, f8
/* 0C1130 800C4130 116B4028 */  ps_sub    f11, f11, f8
/* 0C1134 800C4134 1102182A */  ps_add    f8, f2, f3
/* 0C1138 800C4138 11421828 */  ps_sub    f10, f2, f3
/* 0C113C 800C413C 1069582A */  ps_add    f3, f9, f11
/* 0C1140 800C4140 1044402A */  ps_add    f2, f4, f8
/* 0C1144 800C4144 10630732 */  ps_mul    f3, f3, f28
/* 0C1148 800C4148 10044028 */  ps_sub    f0, f4, f8
/* 0C114C 800C414C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C1150 800C4150 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C1154 800C4154 11294028 */  ps_sub    f9, f9, f8
/* 0C1158 800C4158 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C115C 800C415C F0046018 */  psq_st    f0, 0x18(r4), 0, qr6
/* 0C1160 800C4160 1041482A */  ps_add    f2, f1, f9
/* 0C1164 800C4164 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C1168 800C4168 10214828 */  ps_sub    f1, f1, f9
/* 0C116C 800C416C F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C1170 800C4170 106D502A */  ps_add    f3, f13, f10
/* 0C1174 800C4174 116B502A */  ps_add    f11, f11, f10
/* 0C1178 800C4178 F0246010 */  psq_st    f1, 0x10(r4), 0, qr6
/* 0C117C 800C417C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C1180 800C4180 104C5828 */  ps_sub    f2, f12, f11
/* 0C1184 800C4184 106C582A */  ps_add    f3, f12, f11
/* 0C1188 800C4188 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C118C 800C418C 104D5028 */  ps_sub    f2, f13, f10
/* 0C1190 800C4190 F0646000 */  psq_st    f3, 0x0(r4), 0, qr6
/* 0C1194 800C4194 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C1198 800C4198 801F0114 */  lwz       r0, 0x114(r31)
/* 0C119C 800C419C 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C11A0 800C41A0 391FFFF8 */  subi      r8, r31, 0x8
/* 0C11A4 800C41A4 900D8F20 */  stw       r0, D_8018BEA0@sda21(r0)
/* 0C11A8 800C41A8 8804068C */  lbz       r0, 0x68c(r4)
/* 0C11AC 800C41AC 5400402E */  slwi      r0, r0, 8
/* 0C11B0 800C41B0 7C040214 */  add       r0, r4, r0
/* 0C11B4 800C41B4 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0C11B8 800C41B8 813F012C */  lwz       r9, 0x12c(r31)
/* 0C11BC 800C41BC 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C11C0 800C41C0 38800008 */  li        r4, 0x8
/* 0C11C4 800C41C4 7C8903A6 */  mtctr     r4
lbl_800C41C8:
/* 0C11C8 800C41C8 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C11CC 800C41CC E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C11D0 800C41D0 80C9000C */  lwz       r6, 0xc(r9)
/* 0C11D4 800C41D4 80090008 */  lwz       r0, 0x8(r9)
/* 0C11D8 800C41D8 10E701B2 */  ps_mul    f7, f7, f6
/* 0C11DC 800C41DC 80A90004 */  lwz       r5, 0x4(r9)
/* 0C11E0 800C41E0 A0890002 */  lhz       r4, 0x2(r9)
/* 0C11E4 800C41E4 7CC60379 */  or.       r6, r6, r0
lbl_800C41E8:
/* 0C11E8 800C41E8 2C060000 */  cmpwi     r6, 0x0
/* 0C11EC 800C41EC 40820148 */  bne       lbl_800C4334
/* 0C11F0 800C41F0 10873C20 */  ps_merge00 f4, f7, f7
/* 0C11F4 800C41F4 2C050000 */  cmpwi     r5, 0x0
/* 0C11F8 800C41F8 F0880008 */  psq_st    f4, 0x8(r8), 0, qr0
/* 0C11FC 800C41FC 4082009C */  bne       lbl_800C4298
/* 0C1200 800C4200 F0880010 */  psq_st    f4, 0x10(r8), 0, qr0
/* 0C1204 800C4204 2C040000 */  cmpwi     r4, 0x0
/* 0C1208 800C4208 F0880018 */  psq_st    f4, 0x18(r8), 0, qr0
/* 0C120C 800C420C 40820018 */  bne       lbl_800C4224
/* 0C1210 800C4210 38E70020 */  addi      r7, r7, 0x20
/* 0C1214 800C4214 F4880020 */  psq_stu   f4, 0x20(r8), 0, qr0
/* 0C1218 800C4218 39290010 */  addi      r9, r9, 0x10
/* 0C121C 800C421C 4200FFAC */  bdnz      lbl_800C41C8
/* 0C1220 800C4220 480001DC */  b         lbl_800C43FC
lbl_800C4224:
/* 0C1224 800C4224 39290010 */  addi      r9, r9, 0x10
/* 0C1228 800C4228 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C122C 800C422C 38E70020 */  addi      r7, r7, 0x20
/* 0C1230 800C4230 10473C20 */  ps_merge00 f2, f7, f7
/* 0C1234 800C4234 80A90004 */  lwz       r5, 0x4(r9)
/* 0C1238 800C4238 103CE828 */  ps_sub    f1, f28, f29
/* 0C123C 800C423C 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C1240 800C4240 A0890002 */  lhz       r4, 0x2(r9)
/* 0C1244 800C4244 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C1248 800C4248 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C124C 800C424C 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C1250 800C4250 1102502A */  ps_add    f8, f2, f10
/* 0C1254 800C4254 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C1258 800C4258 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C125C 800C425C 11425028 */  ps_sub    f10, f2, f10
/* 0C1260 800C4260 80C9000C */  lwz       r6, 0xc(r9)
/* 0C1264 800C4264 1062482A */  ps_add    f3, f2, f9
/* 0C1268 800C4268 80090008 */  lwz       r0, 0x8(r9)
/* 0C126C 800C426C 11224828 */  ps_sub    f9, f2, f9
/* 0C1270 800C4270 F5080008 */  psq_stu   f8, 0x8(r8), 0, qr0
/* 0C1274 800C4274 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C1278 800C4278 F4680008 */  psq_stu   f3, 0x8(r8), 0, qr0
/* 0C127C 800C427C 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C1280 800C4280 7CC60378 */  or        r6, r6, r0
/* 0C1284 800C4284 F5280008 */  psq_stu   f9, 0x8(r8), 0, qr0
/* 0C1288 800C4288 10E701B2 */  ps_mul    f7, f7, f6
/* 0C128C 800C428C F5480008 */  psq_stu   f10, 0x8(r8), 0, qr0
/* 0C1290 800C4290 4200FF58 */  bdnz      lbl_800C41E8
/* 0C1294 800C4294 48000168 */  b         lbl_800C43FC
lbl_800C4298:
/* 0C1298 800C4298 E0295004 */  psq_l     f1, 0x4(r9), 0, qr5
/* 0C129C 800C429C E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C12A0 800C42A0 39290010 */  addi      r9, r9, 0x10
/* 0C12A4 800C42A4 102100B2 */  ps_mul    f1, f1, f2
/* 0C12A8 800C42A8 38E70020 */  addi      r7, r7, 0x20
/* 0C12AC 800C42AC 11870828 */  ps_sub    f12, f7, f1
/* 0C12B0 800C42B0 11A7082A */  ps_add    f13, f7, f1
/* 0C12B4 800C42B4 80C9000C */  lwz       r6, 0xc(r9)
/* 0C12B8 800C42B8 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C12BC 800C42BC 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C12C0 800C42C0 106C0732 */  ps_mul    f3, f12, f28
/* 0C12C4 800C42C4 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C12C8 800C42C8 80090008 */  lwz       r0, 0x8(r9)
/* 0C12CC 800C42CC 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C12D0 800C42D0 114A6420 */  ps_merge00 f10, f10, f12
/* 0C12D4 800C42D4 80A90004 */  lwz       r5, 0x4(r9)
/* 0C12D8 800C42D8 11296828 */  ps_sub    f9, f9, f13
/* 0C12DC 800C42DC 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C12E0 800C42E0 A0890002 */  lhz       r4, 0x2(r9)
/* 0C12E4 800C42E4 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C12E8 800C42E8 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C12EC 800C42EC E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C12F0 800C42F0 104B682A */  ps_add    f2, f11, f13
/* 0C12F4 800C42F4 11081828 */  ps_sub    f8, f8, f3
/* 0C12F8 800C42F8 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C12FC 800C42FC 118344E0 */  ps_merge11 f12, f3, f8
/* 0C1300 800C4300 116B6828 */  ps_sub    f11, f11, f13
/* 0C1304 800C4304 F4480008 */  psq_stu   f2, 0x8(r8), 0, qr0
/* 0C1308 800C4308 108A602A */  ps_add    f4, f10, f12
/* 0C130C 800C430C 102A6028 */  ps_sub    f1, f10, f12
/* 0C1310 800C4310 7CC60378 */  or        r6, r6, r0
/* 0C1314 800C4314 F4880008 */  psq_stu   f4, 0x8(r8), 0, qr0
/* 0C1318 800C4318 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C131C 800C431C 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C1320 800C4320 F4280008 */  psq_stu   f1, 0x8(r8), 0, qr0
/* 0C1324 800C4324 10E701B2 */  ps_mul    f7, f7, f6
/* 0C1328 800C4328 F5680008 */  psq_stu   f11, 0x8(r8), 0, qr0
/* 0C132C 800C432C 4200FEBC */  bdnz      lbl_800C41E8
/* 0C1330 800C4330 480000CC */  b         lbl_800C43FC
lbl_800C4334:
/* 0C1334 800C4334 E0495004 */  psq_l     f2, 0x4(r9), 0, qr5
/* 0C1338 800C4338 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C133C 800C433C 104202B2 */  ps_mul    f2, f2, f10
/* 0C1340 800C4340 E1A95008 */  psq_l     f13, 0x8(r9), 0, qr5
/* 0C1344 800C4344 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C1348 800C4348 10871460 */  ps_merge01 f4, f7, f2
/* 0C134C 800C434C E189500C */  psq_l     f12, 0xc(r9), 0, qr5
/* 0C1350 800C4350 10223C60 */  ps_merge01 f1, f2, f7
/* 0C1354 800C4354 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C1358 800C4358 39290010 */  addi      r9, r9, 0x10
/* 0C135C 800C435C 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C1360 800C4360 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C1364 800C4364 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C1368 800C4368 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C136C 800C436C 38E70020 */  addi      r7, r7, 0x20
/* 0C1370 800C4370 108B482A */  ps_add    f4, f11, f9
/* 0C1374 800C4374 118B4828 */  ps_sub    f12, f11, f9
/* 0C1378 800C4378 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C137C 800C437C 80C9000C */  lwz       r6, 0xc(r9)
/* 0C1380 800C4380 10685028 */  ps_sub    f3, f8, f10
/* 0C1384 800C4384 102A682A */  ps_add    f1, f10, f13
/* 0C1388 800C4388 11AA6828 */  ps_sub    f13, f10, f13
/* 0C138C 800C438C 10630732 */  ps_mul    f3, f3, f28
/* 0C1390 800C4390 80090008 */  lwz       r0, 0x8(r9)
/* 0C1394 800C4394 10240C20 */  ps_merge00 f1, f4, f1
/* 0C1398 800C4398 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C139C 800C439C 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C13A0 800C43A0 80A90004 */  lwz       r5, 0x4(r9)
/* 0C13A4 800C43A4 11292028 */  ps_sub    f9, f9, f4
/* 0C13A8 800C43A8 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C13AC 800C43AC A0890002 */  lhz       r4, 0x2(r9)
/* 0C13B0 800C43B0 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C13B4 800C43B4 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C13B8 800C43B8 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C13BC 800C43BC 116B5028 */  ps_sub    f11, f11, f10
/* 0C13C0 800C43C0 1181402A */  ps_add    f12, f1, f8
/* 0C13C4 800C43C4 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C13C8 800C43C8 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C13CC 800C43CC 10814028 */  ps_sub    f4, f1, f8
/* 0C13D0 800C43D0 10E701B2 */  ps_mul    f7, f7, f6
/* 0C13D4 800C43D4 114D582A */  ps_add    f10, f13, f11
/* 0C13D8 800C43D8 112D5828 */  ps_sub    f9, f13, f11
/* 0C13DC 800C43DC 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C13E0 800C43E0 F5880008 */  psq_stu   f12, 0x8(r8), 0, qr0
/* 0C13E4 800C43E4 108424A0 */  ps_merge10 f4, f4, f4
/* 0C13E8 800C43E8 F5280008 */  psq_stu   f9, 0x8(r8), 0, qr0
/* 0C13EC 800C43EC F5480008 */  psq_stu   f10, 0x8(r8), 0, qr0
/* 0C13F0 800C43F0 7CC60378 */  or        r6, r6, r0
/* 0C13F4 800C43F4 F4880008 */  psq_stu   f4, 0x8(r8), 0, qr0
/* 0C13F8 800C43F8 4200FDF0 */  bdnz      lbl_800C41E8
lbl_800C43FC:
/* 0C13FC 800C43FC 80ED8F20 */  lwz       r7, D_8018BEA0@sda21(r0)
/* 0C1400 800C4400 7FE8FB78 */  mr        r8, r31
/* 0C1404 800C4404 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C1408 800C4408 E0E80000 */  psq_l     f7, 0x0(r8), 0, qr0
/* 0C140C 800C440C 5463103A */  slwi      r3, r3, 2
/* 0C1410 800C4410 E0C80080 */  psq_l     f6, 0x80(r8), 0, qr0
/* 0C1414 800C4414 5405103A */  slwi      r5, r0, 2
/* 0C1418 800C4418 E0A80040 */  psq_l     f5, 0x40(r8), 0, qr0
/* 0C141C 800C441C 7C661B78 */  mr        r6, r3
/* 0C1420 800C4420 1127302A */  ps_add    f9, f7, f6
/* 0C1424 800C4424 E08800C0 */  psq_l     f4, 0xc0(r8), 0, qr0
/* 0C1428 800C4428 10673028 */  ps_sub    f3, f7, f6
/* 0C142C 800C442C 7CA62A14 */  add       r5, r6, r5
/* 0C1430 800C4430 1129F82A */  ps_add    f9, f9, f31
/* 0C1434 800C4434 38000003 */  li        r0, 0x3
/* 0C1438 800C4438 1105202A */  ps_add    f8, f5, f4
/* 0C143C 800C443C 7C873214 */  add       r4, r7, r6
/* 0C1440 800C4440 10452028 */  ps_sub    f2, f5, f4
/* 0C1444 800C4444 1089402A */  ps_add    f4, f9, f8
/* 0C1448 800C4448 7C672A14 */  add       r3, r7, r5
/* 0C144C 800C444C 1063F82A */  ps_add    f3, f3, f31
/* 0C1450 800C4450 7C0903A6 */  mtctr     r0
lbl_800C4454:
/* 0C1454 800C4454 E1680020 */  psq_l     f11, 0x20(r8), 0, qr0
/* 0C1458 800C4458 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C145C 800C445C E1480060 */  psq_l     f10, 0x60(r8), 0, qr0
/* 0C1460 800C4460 11894028 */  ps_sub    f12, f9, f8
/* 0C1464 800C4464 1023102A */  ps_add    f1, f3, f2
/* 0C1468 800C4468 E12800A0 */  psq_l     f9, 0xa0(r8), 0, qr0
/* 0C146C 800C446C 11A31028 */  ps_sub    f13, f3, f2
/* 0C1470 800C4470 E10800E0 */  psq_l     f8, 0xe0(r8), 0, qr0
/* 0C1474 800C4474 1069502A */  ps_add    f3, f9, f10
/* 0C1478 800C4478 11295028 */  ps_sub    f9, f9, f10
/* 0C147C 800C447C 39080008 */  addi      r8, r8, 0x8
/* 0C1480 800C4480 104B402A */  ps_add    f2, f11, f8
/* 0C1484 800C4484 116B4028 */  ps_sub    f11, f11, f8
/* 0C1488 800C4488 E0E80000 */  psq_l     f7, 0x0(r8), 0, qr0
/* 0C148C 800C448C 1102182A */  ps_add    f8, f2, f3
/* 0C1490 800C4490 11421828 */  ps_sub    f10, f2, f3
/* 0C1494 800C4494 1069582A */  ps_add    f3, f9, f11
/* 0C1498 800C4498 E0C80080 */  psq_l     f6, 0x80(r8), 0, qr0
/* 0C149C 800C449C 1044402A */  ps_add    f2, f4, f8
/* 0C14A0 800C44A0 10630732 */  ps_mul    f3, f3, f28
/* 0C14A4 800C44A4 E0A80040 */  psq_l     f5, 0x40(r8), 0, qr0
/* 0C14A8 800C44A8 10044028 */  ps_sub    f0, f4, f8
/* 0C14AC 800C44AC 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C14B0 800C44B0 E08800C0 */  psq_l     f4, 0xc0(r8), 0, qr0
/* 0C14B4 800C44B4 11294028 */  ps_sub    f9, f9, f8
/* 0C14B8 800C44B8 38C60002 */  addi      r6, r6, 0x2
/* 0C14BC 800C44BC F0446000 */  psq_st    f2, 0x0(r4), 0, qr6
/* 0C14C0 800C44C0 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C14C4 800C44C4 1041482A */  ps_add    f2, f1, f9
/* 0C14C8 800C44C8 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C14CC 800C44CC 10214828 */  ps_sub    f1, f1, f9
/* 0C14D0 800C44D0 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C14D4 800C44D4 106D502A */  ps_add    f3, f13, f10
/* 0C14D8 800C44D8 116B502A */  ps_add    f11, f11, f10
/* 0C14DC 800C44DC F0646010 */  psq_st    f3, 0x10(r4), 0, qr6
/* 0C14E0 800C44E0 38A50002 */  addi      r5, r5, 0x2
/* 0C14E4 800C44E4 104C5828 */  ps_sub    f2, f12, f11
/* 0C14E8 800C44E8 106C582A */  ps_add    f3, f12, f11
/* 0C14EC 800C44EC F0446018 */  psq_st    f2, 0x18(r4), 0, qr6
/* 0C14F0 800C44F0 104D5028 */  ps_sub    f2, f13, f10
/* 0C14F4 800C44F4 1127302A */  ps_add    f9, f7, f6
/* 0C14F8 800C44F8 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C14FC 800C44FC 10673028 */  ps_sub    f3, f7, f6
/* 0C1500 800C4500 1129F82A */  ps_add    f9, f9, f31
/* 0C1504 800C4504 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C1508 800C4508 1105202A */  ps_add    f8, f5, f4
/* 0C150C 800C450C 10452028 */  ps_sub    f2, f5, f4
/* 0C1510 800C4510 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C1514 800C4514 7C873214 */  add       r4, r7, r6
/* 0C1518 800C4518 1089402A */  ps_add    f4, f9, f8
/* 0C151C 800C451C F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C1520 800C4520 1063F82A */  ps_add    f3, f3, f31
/* 0C1524 800C4524 7C672A14 */  add       r3, r7, r5
/* 0C1528 800C4528 4200FF2C */  bdnz      lbl_800C4454
/* 0C152C 800C452C E1680020 */  psq_l     f11, 0x20(r8), 0, qr0
/* 0C1530 800C4530 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C1534 800C4534 E1480060 */  psq_l     f10, 0x60(r8), 0, qr0
/* 0C1538 800C4538 11894028 */  ps_sub    f12, f9, f8
/* 0C153C 800C453C 1023102A */  ps_add    f1, f3, f2
/* 0C1540 800C4540 E12800A0 */  psq_l     f9, 0xa0(r8), 0, qr0
/* 0C1544 800C4544 11A31028 */  ps_sub    f13, f3, f2
/* 0C1548 800C4548 E10800E0 */  psq_l     f8, 0xe0(r8), 0, qr0
/* 0C154C 800C454C 1069502A */  ps_add    f3, f9, f10
/* 0C1550 800C4550 11295028 */  ps_sub    f9, f9, f10
/* 0C1554 800C4554 104B402A */  ps_add    f2, f11, f8
/* 0C1558 800C4558 116B4028 */  ps_sub    f11, f11, f8
/* 0C155C 800C455C 1102182A */  ps_add    f8, f2, f3
/* 0C1560 800C4560 11421828 */  ps_sub    f10, f2, f3
/* 0C1564 800C4564 1069582A */  ps_add    f3, f9, f11
/* 0C1568 800C4568 1044402A */  ps_add    f2, f4, f8
/* 0C156C 800C456C 10630732 */  ps_mul    f3, f3, f28
/* 0C1570 800C4570 10044028 */  ps_sub    f0, f4, f8
/* 0C1574 800C4574 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C1578 800C4578 F0446000 */  psq_st    f2, 0x0(r4), 0, qr6
/* 0C157C 800C457C 11294028 */  ps_sub    f9, f9, f8
/* 0C1580 800C4580 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C1584 800C4584 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C1588 800C4588 1041482A */  ps_add    f2, f1, f9
/* 0C158C 800C458C 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C1590 800C4590 10214828 */  ps_sub    f1, f1, f9
/* 0C1594 800C4594 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C1598 800C4598 106D502A */  ps_add    f3, f13, f10
/* 0C159C 800C459C 116B502A */  ps_add    f11, f11, f10
/* 0C15A0 800C45A0 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C15A4 800C45A4 F0646010 */  psq_st    f3, 0x10(r4), 0, qr6
/* 0C15A8 800C45A8 104C5828 */  ps_sub    f2, f12, f11
/* 0C15AC 800C45AC 106C582A */  ps_add    f3, f12, f11
/* 0C15B0 800C45B0 F0446018 */  psq_st    f2, 0x18(r4), 0, qr6
/* 0C15B4 800C45B4 104D5028 */  ps_sub    f2, f13, f10
/* 0C15B8 800C45B8 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C15BC 800C45BC F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C15C0 800C45C0 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C15C4 800C45C4 880406A9 */  lbz       r0, 0x6a9(r4)
/* 0C15C8 800C45C8 28000000 */  cmplwi    r0, 0x0
/* 0C15CC 800C45CC 41820074 */  beq       lbl_800C4640
/* 0C15D0 800C45D0 A06406AC */  lhz       r3, 0x6ac(r4)
/* 0C15D4 800C45D4 3803FFFF */  subi      r0, r3, 0x1
/* 0C15D8 800C45D8 B00406AC */  sth       r0, 0x6ac(r4)
/* 0C15DC 800C45DC 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C15E0 800C45E0 A00306AC */  lhz       r0, 0x6ac(r3)
/* 0C15E4 800C45E4 28000000 */  cmplwi    r0, 0x0
/* 0C15E8 800C45E8 40820058 */  bne       lbl_800C4640
/* 0C15EC 800C45EC A00306AA */  lhz       r0, 0x6aa(r3)
/* 0C15F0 800C45F0 B00306AC */  sth       r0, 0x6ac(r3)
/* 0C15F4 800C45F4 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C15F8 800C45F8 806406A4 */  lwz       r3, 0x6a4(r4)
/* 0C15FC 800C45FC 38030006 */  addi      r0, r3, 0x6
/* 0C1600 800C4600 54030038 */  clrrwi    r3, r0, 3
/* 0C1604 800C4604 38030001 */  addi      r0, r3, 0x1
/* 0C1608 800C4608 900406A4 */  stw       r0, 0x6a4(r4)
/* 0C160C 800C460C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1610 800C4610 800306A4 */  lwz       r0, 0x6a4(r3)
/* 0C1614 800C4614 28000020 */  cmplwi    r0, 0x20
/* 0C1618 800C4618 4081000C */  ble       lbl_800C4624
/* 0C161C 800C461C 38000021 */  li        r0, 0x21
/* 0C1620 800C4620 900306A4 */  stw       r0, 0x6a4(r3)
lbl_800C4624:
/* 0C1624 800C4624 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1628 800C4628 38000000 */  li        r0, 0x0
/* 0C162C 800C462C B0030684 */  sth       r0, 0x684(r3)
/* 0C1630 800C4630 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1634 800C4634 B003068A */  sth       r0, 0x68a(r3)
/* 0C1638 800C4638 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C163C 800C463C B0030690 */  sth       r0, 0x690(r3)
lbl_800C4640:
/* 0C1640 800C4640 3BDE0001 */  addi      r30, r30, 0x1
lbl_800C4644:
/* 0C1644 800C4644 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1648 800C4648 57C4063E */  clrlwi    r4, r30, 24
/* 0C164C 800C464C A0030696 */  lhz       r0, 0x696(r3)
/* 0C1650 800C4650 7C040000 */  cmpw      r4, r0
/* 0C1654 800C4654 4180E660 */  blt       lbl_800C2CB4
/* 0C1658 800C4658 806306B0 */  lwz       r3, 0x6b0(r3)
/* 0C165C 800C465C 38A02800 */  li        r5, 0x2800
/* 0C1660 800C4660 809F010C */  lwz       r4, 0x10c(r31)
/* 0C1664 800C4664 4BFD88C1 */  bl        LCStoreData
/* 0C1668 800C4668 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C166C 800C466C 38A00A00 */  li        r5, 0xa00
/* 0C1670 800C4670 809F0110 */  lwz       r4, 0x110(r31)
/* 0C1674 800C4674 806306B4 */  lwz       r3, 0x6b4(r3)
/* 0C1678 800C4678 4BFD88AD */  bl        LCStoreData
/* 0C167C 800C467C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1680 800C4680 38A00A00 */  li        r5, 0xa00
/* 0C1684 800C4684 809F0114 */  lwz       r4, 0x114(r31)
/* 0C1688 800C4688 806306B8 */  lwz       r3, 0x6b8(r3)
/* 0C168C 800C468C 4BFD8899 */  bl        LCStoreData
/* 0C1690 800C4690 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C1694 800C4694 806406B0 */  lwz       r3, 0x6b0(r4)
/* 0C1698 800C4698 38032800 */  addi      r0, r3, 0x2800
/* 0C169C 800C469C 900406B0 */  stw       r0, 0x6b0(r4)
/* 0C16A0 800C46A0 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C16A4 800C46A4 806406B4 */  lwz       r3, 0x6b4(r4)
/* 0C16A8 800C46A8 38030A00 */  addi      r0, r3, 0xa00
/* 0C16AC 800C46AC 900406B4 */  stw       r0, 0x6b4(r4)
/* 0C16B0 800C46B0 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C16B4 800C46B4 806406B8 */  lwz       r3, 0x6b8(r4)
/* 0C16B8 800C46B8 38030A00 */  addi      r0, r3, 0xa00
/* 0C16BC 800C46BC 900406B8 */  stw       r0, 0x6b8(r4)
/* 0C16C0 800C46C0 8001003C */  lwz       r0, 0x3c(r1)
/* 0C16C4 800C46C4 CBE10030 */  lfd       f31, 0x30(r1)
/* 0C16C8 800C46C8 CBC10028 */  lfd       f30, 0x28(r1)
/* 0C16CC 800C46CC CBA10020 */  lfd       f29, 0x20(r1)
/* 0C16D0 800C46D0 CB810018 */  lfd       f28, 0x18(r1)
/* 0C16D4 800C46D4 CB610010 */  lfd       f27, 0x10(r1)
/* 0C16D8 800C46D8 83E1000C */  lwz       r31, 0xc(r1)
/* 0C16DC 800C46DC 83C10008 */  lwz       r30, 0x8(r1)
/* 0C16E0 800C46E0 38210038 */  addi      r1, r1, 0x38
/* 0C16E4 800C46E4 7C0803A6 */  mtlr      r0
/* 0C16E8 800C46E8 4E800020 */  blr

glabel __THPDecompressiMCURowNxN
/* 0C16EC 800C46EC 7C0802A6 */  mflr      r0
/* 0C16F0 800C46F0 3C808019 */  lis       r4, D_80188CC0@ha
/* 0C16F4 800C46F4 90010004 */  stw       r0, 0x4(r1)
/* 0C16F8 800C46F8 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0C16FC 800C46FC DBE10038 */  stfd      f31, 0x38(r1)
/* 0C1700 800C4700 DBC10030 */  stfd      f30, 0x30(r1)
/* 0C1704 800C4704 DBA10028 */  stfd      f29, 0x28(r1)
/* 0C1708 800C4708 DB810020 */  stfd      f28, 0x20(r1)
/* 0C170C 800C470C DB610018 */  stfd      f27, 0x18(r1)
/* 0C1710 800C4710 93E10014 */  stw       r31, 0x14(r1)
/* 0C1714 800C4714 93C10010 */  stw       r30, 0x10(r1)
/* 0C1718 800C4718 3BC48CC0 */  addi      r30, r4, D_80188CC0@l
/* 0C171C 800C471C 93A1000C */  stw       r29, 0xc(r1)
/* 0C1720 800C4720 93810008 */  stw       r28, 0x8(r1)
/* 0C1724 800C4724 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1728 800C4728 A3830692 */  lhz       r28, 0x692(r3)
/* 0C172C 800C472C 38600003 */  li        r3, 0x3
/* 0C1730 800C4730 4BFD88A1 */  bl        LCQueueWait
/* 0C1734 800C4734 C3628510 */  lfs       f27, D_8018C450@sda21(r0)
/* 0C1738 800C4738 579FF87E */  srwi      r31, r28, 1
/* 0C173C 800C473C C3828514 */  lfs       f28, D_8018C454@sda21(r0)
/* 0C1740 800C4740 3BA00000 */  li        r29, 0x0
/* 0C1744 800C4744 C3A28518 */  lfs       f29, D_8018C458@sda21(r0)
/* 0C1748 800C4748 C3C2851C */  lfs       f30, D_8018C45C@sda21(r0)
/* 0C174C 800C474C C3E28520 */  lfs       f31, D_8018C460@sda21(r0)
/* 0C1750 800C4750 4800198C */  b         lbl_800C60DC
lbl_800C4754:
/* 0C1754 800C4754 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1758 800C4758 809E0118 */  lwz       r4, 0x118(r30)
/* 0C175C 800C475C 48001A3D */  bl        __THPHuffDecodeDCTCompY
/* 0C1760 800C4760 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1764 800C4764 809E011C */  lwz       r4, 0x11c(r30)
/* 0C1768 800C4768 48001A31 */  bl        __THPHuffDecodeDCTCompY
/* 0C176C 800C476C 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1770 800C4770 809E0120 */  lwz       r4, 0x120(r30)
/* 0C1774 800C4774 48001A25 */  bl        __THPHuffDecodeDCTCompY
/* 0C1778 800C4778 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C177C 800C477C 809E0124 */  lwz       r4, 0x124(r30)
/* 0C1780 800C4780 48001A19 */  bl        __THPHuffDecodeDCTCompY
/* 0C1784 800C4784 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1788 800C4788 809E0128 */  lwz       r4, 0x128(r30)
/* 0C178C 800C478C 48002089 */  bl        __THPHuffDecodeDCTCompU
/* 0C1790 800C4790 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C1794 800C4794 809E012C */  lwz       r4, 0x12c(r30)
/* 0C1798 800C4798 48002725 */  bl        __THPHuffDecodeDCTCompV
/* 0C179C 800C479C 801E010C */  lwz       r0, 0x10c(r30)
/* 0C17A0 800C47A0 57A42536 */  clrlslwi  r4, r29, 24, 4
/* 0C17A4 800C47A4 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0C17A8 800C47A8 387EFFF8 */  subi      r3, r30, 0x8
/* 0C17AC 800C47AC 900D8F20 */  stw       r0, D_8018BEA0@sda21(r0)
/* 0C17B0 800C47B0 938D8F40 */  stw       r28, D_8018BEC0@sda21(r0)
/* 0C17B4 800C47B4 88050680 */  lbz       r0, 0x680(r5)
/* 0C17B8 800C47B8 5400402E */  slwi      r0, r0, 8
/* 0C17BC 800C47BC 7C050214 */  add       r0, r5, r0
/* 0C17C0 800C47C0 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0C17C4 800C47C4 813E0118 */  lwz       r9, 0x118(r30)
/* 0C17C8 800C47C8 810D8F60 */  lwz       r8, D_8018BEE0@sda21(r0)
/* 0C17CC 800C47CC 38A00008 */  li        r5, 0x8
/* 0C17D0 800C47D0 7CA903A6 */  mtctr     r5
lbl_800C47D4:
/* 0C17D4 800C47D4 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C17D8 800C47D8 E0C80000 */  psq_l     f6, 0x0(r8), 0, qr0
/* 0C17DC 800C47DC 80E9000C */  lwz       r7, 0xc(r9)
/* 0C17E0 800C47E0 80090008 */  lwz       r0, 0x8(r9)
/* 0C17E4 800C47E4 10E701B2 */  ps_mul    f7, f7, f6
/* 0C17E8 800C47E8 80C90004 */  lwz       r6, 0x4(r9)
/* 0C17EC 800C47EC A0A90002 */  lhz       r5, 0x2(r9)
/* 0C17F0 800C47F0 7CE70379 */  or.       r7, r7, r0
lbl_800C47F4:
/* 0C17F4 800C47F4 2C070000 */  cmpwi     r7, 0x0
/* 0C17F8 800C47F8 40820148 */  bne       lbl_800C4940
/* 0C17FC 800C47FC 10873C20 */  ps_merge00 f4, f7, f7
/* 0C1800 800C4800 2C060000 */  cmpwi     r6, 0x0
/* 0C1804 800C4804 F0830008 */  psq_st    f4, 0x8(r3), 0, qr0
/* 0C1808 800C4808 4082009C */  bne       lbl_800C48A4
/* 0C180C 800C480C F0830010 */  psq_st    f4, 0x10(r3), 0, qr0
/* 0C1810 800C4810 2C050000 */  cmpwi     r5, 0x0
/* 0C1814 800C4814 F0830018 */  psq_st    f4, 0x18(r3), 0, qr0
/* 0C1818 800C4818 40820018 */  bne       lbl_800C4830
/* 0C181C 800C481C 39080020 */  addi      r8, r8, 0x20
/* 0C1820 800C4820 F4830020 */  psq_stu   f4, 0x20(r3), 0, qr0
/* 0C1824 800C4824 39290010 */  addi      r9, r9, 0x10
/* 0C1828 800C4828 4200FFAC */  bdnz      lbl_800C47D4
/* 0C182C 800C482C 480001DC */  b         lbl_800C4A08
lbl_800C4830:
/* 0C1830 800C4830 39290010 */  addi      r9, r9, 0x10
/* 0C1834 800C4834 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C1838 800C4838 39080020 */  addi      r8, r8, 0x20
/* 0C183C 800C483C 10473C20 */  ps_merge00 f2, f7, f7
/* 0C1840 800C4840 80C90004 */  lwz       r6, 0x4(r9)
/* 0C1844 800C4844 103CE828 */  ps_sub    f1, f28, f29
/* 0C1848 800C4848 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C184C 800C484C A0A90002 */  lhz       r5, 0x2(r9)
/* 0C1850 800C4850 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C1854 800C4854 E0C80000 */  psq_l     f6, 0x0(r8), 0, qr0
/* 0C1858 800C4858 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C185C 800C485C 1102502A */  ps_add    f8, f2, f10
/* 0C1860 800C4860 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C1864 800C4864 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C1868 800C4868 11425028 */  ps_sub    f10, f2, f10
/* 0C186C 800C486C 80E9000C */  lwz       r7, 0xc(r9)
/* 0C1870 800C4870 1062482A */  ps_add    f3, f2, f9
/* 0C1874 800C4874 80090008 */  lwz       r0, 0x8(r9)
/* 0C1878 800C4878 11224828 */  ps_sub    f9, f2, f9
/* 0C187C 800C487C F5030008 */  psq_stu   f8, 0x8(r3), 0, qr0
/* 0C1880 800C4880 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C1884 800C4884 F4630008 */  psq_stu   f3, 0x8(r3), 0, qr0
/* 0C1888 800C4888 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C188C 800C488C 7CE70378 */  or        r7, r7, r0
/* 0C1890 800C4890 F5230008 */  psq_stu   f9, 0x8(r3), 0, qr0
/* 0C1894 800C4894 10E701B2 */  ps_mul    f7, f7, f6
/* 0C1898 800C4898 F5430008 */  psq_stu   f10, 0x8(r3), 0, qr0
/* 0C189C 800C489C 4200FF58 */  bdnz      lbl_800C47F4
/* 0C18A0 800C48A0 48000168 */  b         lbl_800C4A08
lbl_800C48A4:
/* 0C18A4 800C48A4 E0295004 */  psq_l     f1, 0x4(r9), 0, qr5
/* 0C18A8 800C48A8 E0480008 */  psq_l     f2, 0x8(r8), 0, qr0
/* 0C18AC 800C48AC 39290010 */  addi      r9, r9, 0x10
/* 0C18B0 800C48B0 102100B2 */  ps_mul    f1, f1, f2
/* 0C18B4 800C48B4 39080020 */  addi      r8, r8, 0x20
/* 0C18B8 800C48B8 11870828 */  ps_sub    f12, f7, f1
/* 0C18BC 800C48BC 11A7082A */  ps_add    f13, f7, f1
/* 0C18C0 800C48C0 80E9000C */  lwz       r7, 0xc(r9)
/* 0C18C4 800C48C4 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C18C8 800C48C8 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C18CC 800C48CC 106C0732 */  ps_mul    f3, f12, f28
/* 0C18D0 800C48D0 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C18D4 800C48D4 80090008 */  lwz       r0, 0x8(r9)
/* 0C18D8 800C48D8 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C18DC 800C48DC 114A6420 */  ps_merge00 f10, f10, f12
/* 0C18E0 800C48E0 80C90004 */  lwz       r6, 0x4(r9)
/* 0C18E4 800C48E4 11296828 */  ps_sub    f9, f9, f13
/* 0C18E8 800C48E8 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C18EC 800C48EC A0A90002 */  lhz       r5, 0x2(r9)
/* 0C18F0 800C48F0 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C18F4 800C48F4 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C18F8 800C48F8 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C18FC 800C48FC 104B682A */  ps_add    f2, f11, f13
/* 0C1900 800C4900 11081828 */  ps_sub    f8, f8, f3
/* 0C1904 800C4904 E0C80000 */  psq_l     f6, 0x0(r8), 0, qr0
/* 0C1908 800C4908 118344E0 */  ps_merge11 f12, f3, f8
/* 0C190C 800C490C 116B6828 */  ps_sub    f11, f11, f13
/* 0C1910 800C4910 F4430008 */  psq_stu   f2, 0x8(r3), 0, qr0
/* 0C1914 800C4914 108A602A */  ps_add    f4, f10, f12
/* 0C1918 800C4918 102A6028 */  ps_sub    f1, f10, f12
/* 0C191C 800C491C 7CE70378 */  or        r7, r7, r0
/* 0C1920 800C4920 F4830008 */  psq_stu   f4, 0x8(r3), 0, qr0
/* 0C1924 800C4924 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C1928 800C4928 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C192C 800C492C F4230008 */  psq_stu   f1, 0x8(r3), 0, qr0
/* 0C1930 800C4930 10E701B2 */  ps_mul    f7, f7, f6
/* 0C1934 800C4934 F5630008 */  psq_stu   f11, 0x8(r3), 0, qr0
/* 0C1938 800C4938 4200FEBC */  bdnz      lbl_800C47F4
/* 0C193C 800C493C 480000CC */  b         lbl_800C4A08
lbl_800C4940:
/* 0C1940 800C4940 E0495004 */  psq_l     f2, 0x4(r9), 0, qr5
/* 0C1944 800C4944 E1480008 */  psq_l     f10, 0x8(r8), 0, qr0
/* 0C1948 800C4948 104202B2 */  ps_mul    f2, f2, f10
/* 0C194C 800C494C E1A95008 */  psq_l     f13, 0x8(r9), 0, qr5
/* 0C1950 800C4950 E1280010 */  psq_l     f9, 0x10(r8), 0, qr0
/* 0C1954 800C4954 10871460 */  ps_merge01 f4, f7, f2
/* 0C1958 800C4958 E189500C */  psq_l     f12, 0xc(r9), 0, qr5
/* 0C195C 800C495C 10223C60 */  ps_merge01 f1, f2, f7
/* 0C1960 800C4960 E1080018 */  psq_l     f8, 0x18(r8), 0, qr0
/* 0C1964 800C4964 39290010 */  addi      r9, r9, 0x10
/* 0C1968 800C4968 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C196C 800C496C 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C1970 800C4970 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C1974 800C4974 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C1978 800C4978 39080020 */  addi      r8, r8, 0x20
/* 0C197C 800C497C 108B482A */  ps_add    f4, f11, f9
/* 0C1980 800C4980 118B4828 */  ps_sub    f12, f11, f9
/* 0C1984 800C4984 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C1988 800C4988 80E9000C */  lwz       r7, 0xc(r9)
/* 0C198C 800C498C 10685028 */  ps_sub    f3, f8, f10
/* 0C1990 800C4990 102A682A */  ps_add    f1, f10, f13
/* 0C1994 800C4994 11AA6828 */  ps_sub    f13, f10, f13
/* 0C1998 800C4998 10630732 */  ps_mul    f3, f3, f28
/* 0C199C 800C499C 80090008 */  lwz       r0, 0x8(r9)
/* 0C19A0 800C49A0 10240C20 */  ps_merge00 f1, f4, f1
/* 0C19A4 800C49A4 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C19A8 800C49A8 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C19AC 800C49AC 80C90004 */  lwz       r6, 0x4(r9)
/* 0C19B0 800C49B0 11292028 */  ps_sub    f9, f9, f4
/* 0C19B4 800C49B4 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C19B8 800C49B8 A0A90002 */  lhz       r5, 0x2(r9)
/* 0C19BC 800C49BC 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C19C0 800C49C0 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C19C4 800C49C4 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C19C8 800C49C8 116B5028 */  ps_sub    f11, f11, f10
/* 0C19CC 800C49CC 1181402A */  ps_add    f12, f1, f8
/* 0C19D0 800C49D0 E0C80000 */  psq_l     f6, 0x0(r8), 0, qr0
/* 0C19D4 800C49D4 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C19D8 800C49D8 10814028 */  ps_sub    f4, f1, f8
/* 0C19DC 800C49DC 10E701B2 */  ps_mul    f7, f7, f6
/* 0C19E0 800C49E0 114D582A */  ps_add    f10, f13, f11
/* 0C19E4 800C49E4 112D5828 */  ps_sub    f9, f13, f11
/* 0C19E8 800C49E8 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C19EC 800C49EC F5830008 */  psq_stu   f12, 0x8(r3), 0, qr0
/* 0C19F0 800C49F0 108424A0 */  ps_merge10 f4, f4, f4
/* 0C19F4 800C49F4 F5230008 */  psq_stu   f9, 0x8(r3), 0, qr0
/* 0C19F8 800C49F8 F5430008 */  psq_stu   f10, 0x8(r3), 0, qr0
/* 0C19FC 800C49FC 7CE70378 */  or        r7, r7, r0
/* 0C1A00 800C4A00 F4830008 */  psq_stu   f4, 0x8(r3), 0, qr0
/* 0C1A04 800C4A04 4200FDF0 */  bdnz      lbl_800C47F4
lbl_800C4A08:
/* 0C1A08 800C4A08 812D8F20 */  lwz       r9, D_8018BEA0@sda21(r0)
/* 0C1A0C 800C4A0C 7FC3F378 */  mr        r3, r30
/* 0C1A10 800C4A10 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C1A14 800C4A14 E0E30000 */  psq_l     f7, 0x0(r3), 0, qr0
/* 0C1A18 800C4A18 5485103A */  slwi      r5, r4, 2
/* 0C1A1C 800C4A1C E0C30080 */  psq_l     f6, 0x80(r3), 0, qr0
/* 0C1A20 800C4A20 5407103A */  slwi      r7, r0, 2
/* 0C1A24 800C4A24 E0A30040 */  psq_l     f5, 0x40(r3), 0, qr0
/* 0C1A28 800C4A28 7CA82B78 */  mr        r8, r5
/* 0C1A2C 800C4A2C 1127302A */  ps_add    f9, f7, f6
/* 0C1A30 800C4A30 E08300C0 */  psq_l     f4, 0xc0(r3), 0, qr0
/* 0C1A34 800C4A34 10673028 */  ps_sub    f3, f7, f6
/* 0C1A38 800C4A38 7CE83A14 */  add       r7, r8, r7
/* 0C1A3C 800C4A3C 1129F82A */  ps_add    f9, f9, f31
/* 0C1A40 800C4A40 38000003 */  li        r0, 0x3
/* 0C1A44 800C4A44 1105202A */  ps_add    f8, f5, f4
/* 0C1A48 800C4A48 7CC94214 */  add       r6, r9, r8
/* 0C1A4C 800C4A4C 10452028 */  ps_sub    f2, f5, f4
/* 0C1A50 800C4A50 1089402A */  ps_add    f4, f9, f8
/* 0C1A54 800C4A54 7CA93A14 */  add       r5, r9, r7
/* 0C1A58 800C4A58 1063F82A */  ps_add    f3, f3, f31
/* 0C1A5C 800C4A5C 7C0903A6 */  mtctr     r0
lbl_800C4A60:
/* 0C1A60 800C4A60 E1630020 */  psq_l     f11, 0x20(r3), 0, qr0
/* 0C1A64 800C4A64 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C1A68 800C4A68 E1430060 */  psq_l     f10, 0x60(r3), 0, qr0
/* 0C1A6C 800C4A6C 11894028 */  ps_sub    f12, f9, f8
/* 0C1A70 800C4A70 1023102A */  ps_add    f1, f3, f2
/* 0C1A74 800C4A74 E12300A0 */  psq_l     f9, 0xa0(r3), 0, qr0
/* 0C1A78 800C4A78 11A31028 */  ps_sub    f13, f3, f2
/* 0C1A7C 800C4A7C E10300E0 */  psq_l     f8, 0xe0(r3), 0, qr0
/* 0C1A80 800C4A80 1069502A */  ps_add    f3, f9, f10
/* 0C1A84 800C4A84 11295028 */  ps_sub    f9, f9, f10
/* 0C1A88 800C4A88 38630008 */  addi      r3, r3, 0x8
/* 0C1A8C 800C4A8C 104B402A */  ps_add    f2, f11, f8
/* 0C1A90 800C4A90 116B4028 */  ps_sub    f11, f11, f8
/* 0C1A94 800C4A94 E0E30000 */  psq_l     f7, 0x0(r3), 0, qr0
/* 0C1A98 800C4A98 1102182A */  ps_add    f8, f2, f3
/* 0C1A9C 800C4A9C 11421828 */  ps_sub    f10, f2, f3
/* 0C1AA0 800C4AA0 1069582A */  ps_add    f3, f9, f11
/* 0C1AA4 800C4AA4 E0C30080 */  psq_l     f6, 0x80(r3), 0, qr0
/* 0C1AA8 800C4AA8 1044402A */  ps_add    f2, f4, f8
/* 0C1AAC 800C4AAC 10630732 */  ps_mul    f3, f3, f28
/* 0C1AB0 800C4AB0 E0A30040 */  psq_l     f5, 0x40(r3), 0, qr0
/* 0C1AB4 800C4AB4 10044028 */  ps_sub    f0, f4, f8
/* 0C1AB8 800C4AB8 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C1ABC 800C4ABC E08300C0 */  psq_l     f4, 0xc0(r3), 0, qr0
/* 0C1AC0 800C4AC0 11294028 */  ps_sub    f9, f9, f8
/* 0C1AC4 800C4AC4 39080002 */  addi      r8, r8, 0x2
/* 0C1AC8 800C4AC8 F0466000 */  psq_st    f2, 0x0(r6), 0, qr6
/* 0C1ACC 800C4ACC 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C1AD0 800C4AD0 1041482A */  ps_add    f2, f1, f9
/* 0C1AD4 800C4AD4 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C1AD8 800C4AD8 10214828 */  ps_sub    f1, f1, f9
/* 0C1ADC 800C4ADC F0466008 */  psq_st    f2, 0x8(r6), 0, qr6
/* 0C1AE0 800C4AE0 106D502A */  ps_add    f3, f13, f10
/* 0C1AE4 800C4AE4 116B502A */  ps_add    f11, f11, f10
/* 0C1AE8 800C4AE8 F0666010 */  psq_st    f3, 0x10(r6), 0, qr6
/* 0C1AEC 800C4AEC 38E70002 */  addi      r7, r7, 0x2
/* 0C1AF0 800C4AF0 104C5828 */  ps_sub    f2, f12, f11
/* 0C1AF4 800C4AF4 106C582A */  ps_add    f3, f12, f11
/* 0C1AF8 800C4AF8 F0466018 */  psq_st    f2, 0x18(r6), 0, qr6
/* 0C1AFC 800C4AFC 104D5028 */  ps_sub    f2, f13, f10
/* 0C1B00 800C4B00 1127302A */  ps_add    f9, f7, f6
/* 0C1B04 800C4B04 F0656000 */  psq_st    f3, 0x0(r5), 0, qr6
/* 0C1B08 800C4B08 10673028 */  ps_sub    f3, f7, f6
/* 0C1B0C 800C4B0C 1129F82A */  ps_add    f9, f9, f31
/* 0C1B10 800C4B10 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C1B14 800C4B14 1105202A */  ps_add    f8, f5, f4
/* 0C1B18 800C4B18 10452028 */  ps_sub    f2, f5, f4
/* 0C1B1C 800C4B1C F0256010 */  psq_st    f1, 0x10(r5), 0, qr6
/* 0C1B20 800C4B20 7CC94214 */  add       r6, r9, r8
/* 0C1B24 800C4B24 1089402A */  ps_add    f4, f9, f8
/* 0C1B28 800C4B28 F0056018 */  psq_st    f0, 0x18(r5), 0, qr6
/* 0C1B2C 800C4B2C 1063F82A */  ps_add    f3, f3, f31
/* 0C1B30 800C4B30 7CA93A14 */  add       r5, r9, r7
/* 0C1B34 800C4B34 4200FF2C */  bdnz      lbl_800C4A60
/* 0C1B38 800C4B38 E1630020 */  psq_l     f11, 0x20(r3), 0, qr0
/* 0C1B3C 800C4B3C 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C1B40 800C4B40 E1430060 */  psq_l     f10, 0x60(r3), 0, qr0
/* 0C1B44 800C4B44 11894028 */  ps_sub    f12, f9, f8
/* 0C1B48 800C4B48 1023102A */  ps_add    f1, f3, f2
/* 0C1B4C 800C4B4C E12300A0 */  psq_l     f9, 0xa0(r3), 0, qr0
/* 0C1B50 800C4B50 11A31028 */  ps_sub    f13, f3, f2
/* 0C1B54 800C4B54 E10300E0 */  psq_l     f8, 0xe0(r3), 0, qr0
/* 0C1B58 800C4B58 1069502A */  ps_add    f3, f9, f10
/* 0C1B5C 800C4B5C 11295028 */  ps_sub    f9, f9, f10
/* 0C1B60 800C4B60 104B402A */  ps_add    f2, f11, f8
/* 0C1B64 800C4B64 116B4028 */  ps_sub    f11, f11, f8
/* 0C1B68 800C4B68 1102182A */  ps_add    f8, f2, f3
/* 0C1B6C 800C4B6C 11421828 */  ps_sub    f10, f2, f3
/* 0C1B70 800C4B70 1069582A */  ps_add    f3, f9, f11
/* 0C1B74 800C4B74 1044402A */  ps_add    f2, f4, f8
/* 0C1B78 800C4B78 10630732 */  ps_mul    f3, f3, f28
/* 0C1B7C 800C4B7C 10044028 */  ps_sub    f0, f4, f8
/* 0C1B80 800C4B80 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C1B84 800C4B84 F0466000 */  psq_st    f2, 0x0(r6), 0, qr6
/* 0C1B88 800C4B88 11294028 */  ps_sub    f9, f9, f8
/* 0C1B8C 800C4B8C 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C1B90 800C4B90 F0056018 */  psq_st    f0, 0x18(r5), 0, qr6
/* 0C1B94 800C4B94 1041482A */  ps_add    f2, f1, f9
/* 0C1B98 800C4B98 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C1B9C 800C4B9C 10214828 */  ps_sub    f1, f1, f9
/* 0C1BA0 800C4BA0 F0466008 */  psq_st    f2, 0x8(r6), 0, qr6
/* 0C1BA4 800C4BA4 106D502A */  ps_add    f3, f13, f10
/* 0C1BA8 800C4BA8 116B502A */  ps_add    f11, f11, f10
/* 0C1BAC 800C4BAC F0256010 */  psq_st    f1, 0x10(r5), 0, qr6
/* 0C1BB0 800C4BB0 F0666010 */  psq_st    f3, 0x10(r6), 0, qr6
/* 0C1BB4 800C4BB4 104C5828 */  ps_sub    f2, f12, f11
/* 0C1BB8 800C4BB8 106C582A */  ps_add    f3, f12, f11
/* 0C1BBC 800C4BBC F0466018 */  psq_st    f2, 0x18(r6), 0, qr6
/* 0C1BC0 800C4BC0 104D5028 */  ps_sub    f2, f13, f10
/* 0C1BC4 800C4BC4 F0656000 */  psq_st    f3, 0x0(r5), 0, qr6
/* 0C1BC8 800C4BC8 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C1BCC 800C4BCC 811E011C */  lwz       r8, 0x11c(r30)
/* 0C1BD0 800C4BD0 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C1BD4 800C4BD4 39440008 */  addi      r10, r4, 0x8
/* 0C1BD8 800C4BD8 393EFFF8 */  subi      r9, r30, 0x8
/* 0C1BDC 800C4BDC 38600008 */  li        r3, 0x8
/* 0C1BE0 800C4BE0 7C6903A6 */  mtctr     r3
lbl_800C4BE4:
/* 0C1BE4 800C4BE4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C1BE8 800C4BE8 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C1BEC 800C4BEC 80C8000C */  lwz       r6, 0xc(r8)
/* 0C1BF0 800C4BF0 80080008 */  lwz       r0, 0x8(r8)
/* 0C1BF4 800C4BF4 10E701B2 */  ps_mul    f7, f7, f6
/* 0C1BF8 800C4BF8 80A80004 */  lwz       r5, 0x4(r8)
/* 0C1BFC 800C4BFC A0680002 */  lhz       r3, 0x2(r8)
/* 0C1C00 800C4C00 7CC60379 */  or.       r6, r6, r0
lbl_800C4C04:
/* 0C1C04 800C4C04 2C060000 */  cmpwi     r6, 0x0
/* 0C1C08 800C4C08 40820148 */  bne       lbl_800C4D50
/* 0C1C0C 800C4C0C 10873C20 */  ps_merge00 f4, f7, f7
/* 0C1C10 800C4C10 2C050000 */  cmpwi     r5, 0x0
/* 0C1C14 800C4C14 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0C1C18 800C4C18 4082009C */  bne       lbl_800C4CB4
/* 0C1C1C 800C4C1C F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0C1C20 800C4C20 2C030000 */  cmpwi     r3, 0x0
/* 0C1C24 800C4C24 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0C1C28 800C4C28 40820018 */  bne       lbl_800C4C40
/* 0C1C2C 800C4C2C 38E70020 */  addi      r7, r7, 0x20
/* 0C1C30 800C4C30 F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0C1C34 800C4C34 39080010 */  addi      r8, r8, 0x10
/* 0C1C38 800C4C38 4200FFAC */  bdnz      lbl_800C4BE4
/* 0C1C3C 800C4C3C 480001DC */  b         lbl_800C4E18
lbl_800C4C40:
/* 0C1C40 800C4C40 39080010 */  addi      r8, r8, 0x10
/* 0C1C44 800C4C44 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C1C48 800C4C48 38E70020 */  addi      r7, r7, 0x20
/* 0C1C4C 800C4C4C 10473C20 */  ps_merge00 f2, f7, f7
/* 0C1C50 800C4C50 80A80004 */  lwz       r5, 0x4(r8)
/* 0C1C54 800C4C54 103CE828 */  ps_sub    f1, f28, f29
/* 0C1C58 800C4C58 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C1C5C 800C4C5C A0680002 */  lhz       r3, 0x2(r8)
/* 0C1C60 800C4C60 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C1C64 800C4C64 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C1C68 800C4C68 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C1C6C 800C4C6C 1102502A */  ps_add    f8, f2, f10
/* 0C1C70 800C4C70 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C1C74 800C4C74 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C1C78 800C4C78 11425028 */  ps_sub    f10, f2, f10
/* 0C1C7C 800C4C7C 80C8000C */  lwz       r6, 0xc(r8)
/* 0C1C80 800C4C80 1062482A */  ps_add    f3, f2, f9
/* 0C1C84 800C4C84 80080008 */  lwz       r0, 0x8(r8)
/* 0C1C88 800C4C88 11224828 */  ps_sub    f9, f2, f9
/* 0C1C8C 800C4C8C F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0C1C90 800C4C90 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C1C94 800C4C94 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0C1C98 800C4C98 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C1C9C 800C4C9C 7CC60378 */  or        r6, r6, r0
/* 0C1CA0 800C4CA0 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C1CA4 800C4CA4 10E701B2 */  ps_mul    f7, f7, f6
/* 0C1CA8 800C4CA8 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C1CAC 800C4CAC 4200FF58 */  bdnz      lbl_800C4C04
/* 0C1CB0 800C4CB0 48000168 */  b         lbl_800C4E18
lbl_800C4CB4:
/* 0C1CB4 800C4CB4 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C1CB8 800C4CB8 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C1CBC 800C4CBC 39080010 */  addi      r8, r8, 0x10
/* 0C1CC0 800C4CC0 102100B2 */  ps_mul    f1, f1, f2
/* 0C1CC4 800C4CC4 38E70020 */  addi      r7, r7, 0x20
/* 0C1CC8 800C4CC8 11870828 */  ps_sub    f12, f7, f1
/* 0C1CCC 800C4CCC 11A7082A */  ps_add    f13, f7, f1
/* 0C1CD0 800C4CD0 80C8000C */  lwz       r6, 0xc(r8)
/* 0C1CD4 800C4CD4 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C1CD8 800C4CD8 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C1CDC 800C4CDC 106C0732 */  ps_mul    f3, f12, f28
/* 0C1CE0 800C4CE0 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C1CE4 800C4CE4 80080008 */  lwz       r0, 0x8(r8)
/* 0C1CE8 800C4CE8 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C1CEC 800C4CEC 114A6420 */  ps_merge00 f10, f10, f12
/* 0C1CF0 800C4CF0 80A80004 */  lwz       r5, 0x4(r8)
/* 0C1CF4 800C4CF4 11296828 */  ps_sub    f9, f9, f13
/* 0C1CF8 800C4CF8 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C1CFC 800C4CFC A0680002 */  lhz       r3, 0x2(r8)
/* 0C1D00 800C4D00 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C1D04 800C4D04 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C1D08 800C4D08 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C1D0C 800C4D0C 104B682A */  ps_add    f2, f11, f13
/* 0C1D10 800C4D10 11081828 */  ps_sub    f8, f8, f3
/* 0C1D14 800C4D14 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C1D18 800C4D18 118344E0 */  ps_merge11 f12, f3, f8
/* 0C1D1C 800C4D1C 116B6828 */  ps_sub    f11, f11, f13
/* 0C1D20 800C4D20 F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0C1D24 800C4D24 108A602A */  ps_add    f4, f10, f12
/* 0C1D28 800C4D28 102A6028 */  ps_sub    f1, f10, f12
/* 0C1D2C 800C4D2C 7CC60378 */  or        r6, r6, r0
/* 0C1D30 800C4D30 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C1D34 800C4D34 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C1D38 800C4D38 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C1D3C 800C4D3C F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0C1D40 800C4D40 10E701B2 */  ps_mul    f7, f7, f6
/* 0C1D44 800C4D44 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0C1D48 800C4D48 4200FEBC */  bdnz      lbl_800C4C04
/* 0C1D4C 800C4D4C 480000CC */  b         lbl_800C4E18
lbl_800C4D50:
/* 0C1D50 800C4D50 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C1D54 800C4D54 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C1D58 800C4D58 104202B2 */  ps_mul    f2, f2, f10
/* 0C1D5C 800C4D5C E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C1D60 800C4D60 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C1D64 800C4D64 10871460 */  ps_merge01 f4, f7, f2
/* 0C1D68 800C4D68 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C1D6C 800C4D6C 10223C60 */  ps_merge01 f1, f2, f7
/* 0C1D70 800C4D70 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C1D74 800C4D74 39080010 */  addi      r8, r8, 0x10
/* 0C1D78 800C4D78 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C1D7C 800C4D7C 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C1D80 800C4D80 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C1D84 800C4D84 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C1D88 800C4D88 38E70020 */  addi      r7, r7, 0x20
/* 0C1D8C 800C4D8C 108B482A */  ps_add    f4, f11, f9
/* 0C1D90 800C4D90 118B4828 */  ps_sub    f12, f11, f9
/* 0C1D94 800C4D94 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C1D98 800C4D98 80C8000C */  lwz       r6, 0xc(r8)
/* 0C1D9C 800C4D9C 10685028 */  ps_sub    f3, f8, f10
/* 0C1DA0 800C4DA0 102A682A */  ps_add    f1, f10, f13
/* 0C1DA4 800C4DA4 11AA6828 */  ps_sub    f13, f10, f13
/* 0C1DA8 800C4DA8 10630732 */  ps_mul    f3, f3, f28
/* 0C1DAC 800C4DAC 80080008 */  lwz       r0, 0x8(r8)
/* 0C1DB0 800C4DB0 10240C20 */  ps_merge00 f1, f4, f1
/* 0C1DB4 800C4DB4 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C1DB8 800C4DB8 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C1DBC 800C4DBC 80A80004 */  lwz       r5, 0x4(r8)
/* 0C1DC0 800C4DC0 11292028 */  ps_sub    f9, f9, f4
/* 0C1DC4 800C4DC4 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C1DC8 800C4DC8 A0680002 */  lhz       r3, 0x2(r8)
/* 0C1DCC 800C4DCC 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C1DD0 800C4DD0 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C1DD4 800C4DD4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C1DD8 800C4DD8 116B5028 */  ps_sub    f11, f11, f10
/* 0C1DDC 800C4DDC 1181402A */  ps_add    f12, f1, f8
/* 0C1DE0 800C4DE0 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C1DE4 800C4DE4 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C1DE8 800C4DE8 10814028 */  ps_sub    f4, f1, f8
/* 0C1DEC 800C4DEC 10E701B2 */  ps_mul    f7, f7, f6
/* 0C1DF0 800C4DF0 114D582A */  ps_add    f10, f13, f11
/* 0C1DF4 800C4DF4 112D5828 */  ps_sub    f9, f13, f11
/* 0C1DF8 800C4DF8 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C1DFC 800C4DFC F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0C1E00 800C4E00 108424A0 */  ps_merge10 f4, f4, f4
/* 0C1E04 800C4E04 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C1E08 800C4E08 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C1E0C 800C4E0C 7CC60378 */  or        r6, r6, r0
/* 0C1E10 800C4E10 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C1E14 800C4E14 4200FDF0 */  bdnz      lbl_800C4C04
lbl_800C4E18:
/* 0C1E18 800C4E18 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C1E1C 800C4E1C 7FC9F378 */  mr        r9, r30
/* 0C1E20 800C4E20 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C1E24 800C4E24 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C1E28 800C4E28 554A103A */  slwi      r10, r10, 2
/* 0C1E2C 800C4E2C E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C1E30 800C4E30 5406103A */  slwi      r6, r0, 2
/* 0C1E34 800C4E34 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C1E38 800C4E38 7D475378 */  mr        r7, r10
/* 0C1E3C 800C4E3C 1127302A */  ps_add    f9, f7, f6
/* 0C1E40 800C4E40 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C1E44 800C4E44 10673028 */  ps_sub    f3, f7, f6
/* 0C1E48 800C4E48 7CC73214 */  add       r6, r7, r6
/* 0C1E4C 800C4E4C 1129F82A */  ps_add    f9, f9, f31
/* 0C1E50 800C4E50 38000003 */  li        r0, 0x3
/* 0C1E54 800C4E54 1105202A */  ps_add    f8, f5, f4
/* 0C1E58 800C4E58 7CA83A14 */  add       r5, r8, r7
/* 0C1E5C 800C4E5C 10452028 */  ps_sub    f2, f5, f4
/* 0C1E60 800C4E60 1089402A */  ps_add    f4, f9, f8
/* 0C1E64 800C4E64 7C683214 */  add       r3, r8, r6
/* 0C1E68 800C4E68 1063F82A */  ps_add    f3, f3, f31
/* 0C1E6C 800C4E6C 7C0903A6 */  mtctr     r0
lbl_800C4E70:
/* 0C1E70 800C4E70 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C1E74 800C4E74 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C1E78 800C4E78 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C1E7C 800C4E7C 11894028 */  ps_sub    f12, f9, f8
/* 0C1E80 800C4E80 1023102A */  ps_add    f1, f3, f2
/* 0C1E84 800C4E84 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C1E88 800C4E88 11A31028 */  ps_sub    f13, f3, f2
/* 0C1E8C 800C4E8C E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C1E90 800C4E90 1069502A */  ps_add    f3, f9, f10
/* 0C1E94 800C4E94 11295028 */  ps_sub    f9, f9, f10
/* 0C1E98 800C4E98 39290008 */  addi      r9, r9, 0x8
/* 0C1E9C 800C4E9C 104B402A */  ps_add    f2, f11, f8
/* 0C1EA0 800C4EA0 116B4028 */  ps_sub    f11, f11, f8
/* 0C1EA4 800C4EA4 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C1EA8 800C4EA8 1102182A */  ps_add    f8, f2, f3
/* 0C1EAC 800C4EAC 11421828 */  ps_sub    f10, f2, f3
/* 0C1EB0 800C4EB0 1069582A */  ps_add    f3, f9, f11
/* 0C1EB4 800C4EB4 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C1EB8 800C4EB8 1044402A */  ps_add    f2, f4, f8
/* 0C1EBC 800C4EBC 10630732 */  ps_mul    f3, f3, f28
/* 0C1EC0 800C4EC0 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C1EC4 800C4EC4 10044028 */  ps_sub    f0, f4, f8
/* 0C1EC8 800C4EC8 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C1ECC 800C4ECC E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C1ED0 800C4ED0 11294028 */  ps_sub    f9, f9, f8
/* 0C1ED4 800C4ED4 38E70002 */  addi      r7, r7, 0x2
/* 0C1ED8 800C4ED8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C1EDC 800C4EDC 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C1EE0 800C4EE0 1041482A */  ps_add    f2, f1, f9
/* 0C1EE4 800C4EE4 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C1EE8 800C4EE8 10214828 */  ps_sub    f1, f1, f9
/* 0C1EEC 800C4EEC F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C1EF0 800C4EF0 106D502A */  ps_add    f3, f13, f10
/* 0C1EF4 800C4EF4 116B502A */  ps_add    f11, f11, f10
/* 0C1EF8 800C4EF8 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C1EFC 800C4EFC 38C60002 */  addi      r6, r6, 0x2
/* 0C1F00 800C4F00 104C5828 */  ps_sub    f2, f12, f11
/* 0C1F04 800C4F04 106C582A */  ps_add    f3, f12, f11
/* 0C1F08 800C4F08 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C1F0C 800C4F0C 104D5028 */  ps_sub    f2, f13, f10
/* 0C1F10 800C4F10 1127302A */  ps_add    f9, f7, f6
/* 0C1F14 800C4F14 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C1F18 800C4F18 10673028 */  ps_sub    f3, f7, f6
/* 0C1F1C 800C4F1C 1129F82A */  ps_add    f9, f9, f31
/* 0C1F20 800C4F20 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C1F24 800C4F24 1105202A */  ps_add    f8, f5, f4
/* 0C1F28 800C4F28 10452028 */  ps_sub    f2, f5, f4
/* 0C1F2C 800C4F2C F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C1F30 800C4F30 7CA83A14 */  add       r5, r8, r7
/* 0C1F34 800C4F34 1089402A */  ps_add    f4, f9, f8
/* 0C1F38 800C4F38 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C1F3C 800C4F3C 1063F82A */  ps_add    f3, f3, f31
/* 0C1F40 800C4F40 7C683214 */  add       r3, r8, r6
/* 0C1F44 800C4F44 4200FF2C */  bdnz      lbl_800C4E70
/* 0C1F48 800C4F48 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C1F4C 800C4F4C 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C1F50 800C4F50 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C1F54 800C4F54 11894028 */  ps_sub    f12, f9, f8
/* 0C1F58 800C4F58 1023102A */  ps_add    f1, f3, f2
/* 0C1F5C 800C4F5C E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C1F60 800C4F60 11A31028 */  ps_sub    f13, f3, f2
/* 0C1F64 800C4F64 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C1F68 800C4F68 1069502A */  ps_add    f3, f9, f10
/* 0C1F6C 800C4F6C 11295028 */  ps_sub    f9, f9, f10
/* 0C1F70 800C4F70 104B402A */  ps_add    f2, f11, f8
/* 0C1F74 800C4F74 116B4028 */  ps_sub    f11, f11, f8
/* 0C1F78 800C4F78 1102182A */  ps_add    f8, f2, f3
/* 0C1F7C 800C4F7C 11421828 */  ps_sub    f10, f2, f3
/* 0C1F80 800C4F80 1069582A */  ps_add    f3, f9, f11
/* 0C1F84 800C4F84 1044402A */  ps_add    f2, f4, f8
/* 0C1F88 800C4F88 10630732 */  ps_mul    f3, f3, f28
/* 0C1F8C 800C4F8C 10044028 */  ps_sub    f0, f4, f8
/* 0C1F90 800C4F90 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C1F94 800C4F94 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C1F98 800C4F98 11294028 */  ps_sub    f9, f9, f8
/* 0C1F9C 800C4F9C 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C1FA0 800C4FA0 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C1FA4 800C4FA4 1041482A */  ps_add    f2, f1, f9
/* 0C1FA8 800C4FA8 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C1FAC 800C4FAC 10214828 */  ps_sub    f1, f1, f9
/* 0C1FB0 800C4FB0 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C1FB4 800C4FB4 106D502A */  ps_add    f3, f13, f10
/* 0C1FB8 800C4FB8 116B502A */  ps_add    f11, f11, f10
/* 0C1FBC 800C4FBC F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C1FC0 800C4FC0 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C1FC4 800C4FC4 104C5828 */  ps_sub    f2, f12, f11
/* 0C1FC8 800C4FC8 106C582A */  ps_add    f3, f12, f11
/* 0C1FCC 800C4FCC F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C1FD0 800C4FD0 104D5028 */  ps_sub    f2, f13, f10
/* 0C1FD4 800C4FD4 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C1FD8 800C4FD8 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C1FDC 800C4FDC 811E0120 */  lwz       r8, 0x120(r30)
/* 0C1FE0 800C4FE0 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C1FE4 800C4FE4 393EFFF8 */  subi      r9, r30, 0x8
/* 0C1FE8 800C4FE8 38600008 */  li        r3, 0x8
/* 0C1FEC 800C4FEC 7C6903A6 */  mtctr     r3
lbl_800C4FF0:
/* 0C1FF0 800C4FF0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C1FF4 800C4FF4 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C1FF8 800C4FF8 80C8000C */  lwz       r6, 0xc(r8)
/* 0C1FFC 800C4FFC 80080008 */  lwz       r0, 0x8(r8)
/* 0C2000 800C5000 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2004 800C5004 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2008 800C5008 A0680002 */  lhz       r3, 0x2(r8)
/* 0C200C 800C500C 7CC60378 */  or        r6, r6, r0
lbl_800C5010:
/* 0C2010 800C5010 2C060000 */  cmpwi     r6, 0x0
/* 0C2014 800C5014 40820148 */  bne       lbl_800C515C
/* 0C2018 800C5018 10873C20 */  ps_merge00 f4, f7, f7
/* 0C201C 800C501C 2C050000 */  cmpwi     r5, 0x0
/* 0C2020 800C5020 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0C2024 800C5024 4082009C */  bne       lbl_800C50C0
/* 0C2028 800C5028 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0C202C 800C502C 2C030000 */  cmpwi     r3, 0x0
/* 0C2030 800C5030 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0C2034 800C5034 40820018 */  bne       lbl_800C504C
/* 0C2038 800C5038 38E70020 */  addi      r7, r7, 0x20
/* 0C203C 800C503C F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0C2040 800C5040 39080010 */  addi      r8, r8, 0x10
/* 0C2044 800C5044 4200FFAC */  bdnz      lbl_800C4FF0
/* 0C2048 800C5048 480001DC */  b         lbl_800C5224
lbl_800C504C:
/* 0C204C 800C504C 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C2050 800C5050 39080010 */  addi      r8, r8, 0x10
/* 0C2054 800C5054 10473C20 */  ps_merge00 f2, f7, f7
/* 0C2058 800C5058 38E70020 */  addi      r7, r7, 0x20
/* 0C205C 800C505C 103CE828 */  ps_sub    f1, f28, f29
/* 0C2060 800C5060 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2064 800C5064 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C2068 800C5068 A0680002 */  lhz       r3, 0x2(r8)
/* 0C206C 800C506C 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C2070 800C5070 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2074 800C5074 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C2078 800C5078 1102502A */  ps_add    f8, f2, f10
/* 0C207C 800C507C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C2080 800C5080 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C2084 800C5084 11425028 */  ps_sub    f10, f2, f10
/* 0C2088 800C5088 80C8000C */  lwz       r6, 0xc(r8)
/* 0C208C 800C508C 1062482A */  ps_add    f3, f2, f9
/* 0C2090 800C5090 80080008 */  lwz       r0, 0x8(r8)
/* 0C2094 800C5094 11224828 */  ps_sub    f9, f2, f9
/* 0C2098 800C5098 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0C209C 800C509C 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C20A0 800C50A0 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0C20A4 800C50A4 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C20A8 800C50A8 7CC60378 */  or        r6, r6, r0
/* 0C20AC 800C50AC F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C20B0 800C50B0 10E701B2 */  ps_mul    f7, f7, f6
/* 0C20B4 800C50B4 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C20B8 800C50B8 4200FF58 */  bdnz      lbl_800C5010
/* 0C20BC 800C50BC 48000168 */  b         lbl_800C5224
lbl_800C50C0:
/* 0C20C0 800C50C0 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C20C4 800C50C4 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C20C8 800C50C8 39080010 */  addi      r8, r8, 0x10
/* 0C20CC 800C50CC 102100B2 */  ps_mul    f1, f1, f2
/* 0C20D0 800C50D0 38E70020 */  addi      r7, r7, 0x20
/* 0C20D4 800C50D4 11870828 */  ps_sub    f12, f7, f1
/* 0C20D8 800C50D8 11A7082A */  ps_add    f13, f7, f1
/* 0C20DC 800C50DC 80C8000C */  lwz       r6, 0xc(r8)
/* 0C20E0 800C50E0 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C20E4 800C50E4 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C20E8 800C50E8 106C0732 */  ps_mul    f3, f12, f28
/* 0C20EC 800C50EC 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C20F0 800C50F0 80080008 */  lwz       r0, 0x8(r8)
/* 0C20F4 800C50F4 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C20F8 800C50F8 114A6420 */  ps_merge00 f10, f10, f12
/* 0C20FC 800C50FC 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2100 800C5100 11296828 */  ps_sub    f9, f9, f13
/* 0C2104 800C5104 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C2108 800C5108 A0680002 */  lhz       r3, 0x2(r8)
/* 0C210C 800C510C 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C2110 800C5110 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C2114 800C5114 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C2118 800C5118 104B682A */  ps_add    f2, f11, f13
/* 0C211C 800C511C 11081828 */  ps_sub    f8, f8, f3
/* 0C2120 800C5120 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2124 800C5124 118344E0 */  ps_merge11 f12, f3, f8
/* 0C2128 800C5128 116B6828 */  ps_sub    f11, f11, f13
/* 0C212C 800C512C F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0C2130 800C5130 108A602A */  ps_add    f4, f10, f12
/* 0C2134 800C5134 102A6028 */  ps_sub    f1, f10, f12
/* 0C2138 800C5138 7CC60378 */  or        r6, r6, r0
/* 0C213C 800C513C F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C2140 800C5140 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C2144 800C5144 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C2148 800C5148 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0C214C 800C514C 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2150 800C5150 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0C2154 800C5154 4200FEBC */  bdnz      lbl_800C5010
/* 0C2158 800C5158 480000CC */  b         lbl_800C5224
lbl_800C515C:
/* 0C215C 800C515C E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C2160 800C5160 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C2164 800C5164 104202B2 */  ps_mul    f2, f2, f10
/* 0C2168 800C5168 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C216C 800C516C E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C2170 800C5170 10871460 */  ps_merge01 f4, f7, f2
/* 0C2174 800C5174 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C2178 800C5178 10223C60 */  ps_merge01 f1, f2, f7
/* 0C217C 800C517C E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C2180 800C5180 39080010 */  addi      r8, r8, 0x10
/* 0C2184 800C5184 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C2188 800C5188 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C218C 800C518C 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C2190 800C5190 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C2194 800C5194 38E70020 */  addi      r7, r7, 0x20
/* 0C2198 800C5198 108B482A */  ps_add    f4, f11, f9
/* 0C219C 800C519C 118B4828 */  ps_sub    f12, f11, f9
/* 0C21A0 800C51A0 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C21A4 800C51A4 80C8000C */  lwz       r6, 0xc(r8)
/* 0C21A8 800C51A8 10685028 */  ps_sub    f3, f8, f10
/* 0C21AC 800C51AC 102A682A */  ps_add    f1, f10, f13
/* 0C21B0 800C51B0 11AA6828 */  ps_sub    f13, f10, f13
/* 0C21B4 800C51B4 10630732 */  ps_mul    f3, f3, f28
/* 0C21B8 800C51B8 80080008 */  lwz       r0, 0x8(r8)
/* 0C21BC 800C51BC 10240C20 */  ps_merge00 f1, f4, f1
/* 0C21C0 800C51C0 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C21C4 800C51C4 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C21C8 800C51C8 80A80004 */  lwz       r5, 0x4(r8)
/* 0C21CC 800C51CC 11292028 */  ps_sub    f9, f9, f4
/* 0C21D0 800C51D0 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C21D4 800C51D4 A0680002 */  lhz       r3, 0x2(r8)
/* 0C21D8 800C51D8 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C21DC 800C51DC 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C21E0 800C51E0 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C21E4 800C51E4 116B5028 */  ps_sub    f11, f11, f10
/* 0C21E8 800C51E8 1181402A */  ps_add    f12, f1, f8
/* 0C21EC 800C51EC E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C21F0 800C51F0 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C21F4 800C51F4 10814028 */  ps_sub    f4, f1, f8
/* 0C21F8 800C51F8 10E701B2 */  ps_mul    f7, f7, f6
/* 0C21FC 800C51FC 114D582A */  ps_add    f10, f13, f11
/* 0C2200 800C5200 112D5828 */  ps_sub    f9, f13, f11
/* 0C2204 800C5204 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C2208 800C5208 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0C220C 800C520C 108424A0 */  ps_merge10 f4, f4, f4
/* 0C2210 800C5210 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C2214 800C5214 F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C2218 800C5218 7CC60378 */  or        r6, r6, r0
/* 0C221C 800C521C F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C2220 800C5220 4200FDF0 */  bdnz      lbl_800C5010
lbl_800C5224:
/* 0C2224 800C5224 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C2228 800C5228 7FC9F378 */  mr        r9, r30
/* 0C222C 800C522C 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C2230 800C5230 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C2234 800C5234 54071838 */  slwi      r7, r0, 3
/* 0C2238 800C5238 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C223C 800C523C 5483103A */  slwi      r3, r4, 2
/* 0C2240 800C5240 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C2244 800C5244 5406103A */  slwi      r6, r0, 2
/* 0C2248 800C5248 1127302A */  ps_add    f9, f7, f6
/* 0C224C 800C524C 7CE71A14 */  add       r7, r7, r3
/* 0C2250 800C5250 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C2254 800C5254 10673028 */  ps_sub    f3, f7, f6
/* 0C2258 800C5258 7CC73214 */  add       r6, r7, r6
/* 0C225C 800C525C 1129F82A */  ps_add    f9, f9, f31
/* 0C2260 800C5260 38000003 */  li        r0, 0x3
/* 0C2264 800C5264 1105202A */  ps_add    f8, f5, f4
/* 0C2268 800C5268 7CA83A14 */  add       r5, r8, r7
/* 0C226C 800C526C 10452028 */  ps_sub    f2, f5, f4
/* 0C2270 800C5270 1089402A */  ps_add    f4, f9, f8
/* 0C2274 800C5274 7C683214 */  add       r3, r8, r6
/* 0C2278 800C5278 1063F82A */  ps_add    f3, f3, f31
/* 0C227C 800C527C 7C0903A6 */  mtctr     r0
lbl_800C5280:
/* 0C2280 800C5280 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C2284 800C5284 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C2288 800C5288 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C228C 800C528C 11894028 */  ps_sub    f12, f9, f8
/* 0C2290 800C5290 1023102A */  ps_add    f1, f3, f2
/* 0C2294 800C5294 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C2298 800C5298 11A31028 */  ps_sub    f13, f3, f2
/* 0C229C 800C529C E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C22A0 800C52A0 1069502A */  ps_add    f3, f9, f10
/* 0C22A4 800C52A4 11295028 */  ps_sub    f9, f9, f10
/* 0C22A8 800C52A8 39290008 */  addi      r9, r9, 0x8
/* 0C22AC 800C52AC 104B402A */  ps_add    f2, f11, f8
/* 0C22B0 800C52B0 116B4028 */  ps_sub    f11, f11, f8
/* 0C22B4 800C52B4 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C22B8 800C52B8 1102182A */  ps_add    f8, f2, f3
/* 0C22BC 800C52BC 11421828 */  ps_sub    f10, f2, f3
/* 0C22C0 800C52C0 1069582A */  ps_add    f3, f9, f11
/* 0C22C4 800C52C4 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C22C8 800C52C8 1044402A */  ps_add    f2, f4, f8
/* 0C22CC 800C52CC 10630732 */  ps_mul    f3, f3, f28
/* 0C22D0 800C52D0 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C22D4 800C52D4 10044028 */  ps_sub    f0, f4, f8
/* 0C22D8 800C52D8 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C22DC 800C52DC E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C22E0 800C52E0 11294028 */  ps_sub    f9, f9, f8
/* 0C22E4 800C52E4 38E70002 */  addi      r7, r7, 0x2
/* 0C22E8 800C52E8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C22EC 800C52EC 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C22F0 800C52F0 1041482A */  ps_add    f2, f1, f9
/* 0C22F4 800C52F4 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C22F8 800C52F8 10214828 */  ps_sub    f1, f1, f9
/* 0C22FC 800C52FC F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C2300 800C5300 106D502A */  ps_add    f3, f13, f10
/* 0C2304 800C5304 116B502A */  ps_add    f11, f11, f10
/* 0C2308 800C5308 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C230C 800C530C 38C60002 */  addi      r6, r6, 0x2
/* 0C2310 800C5310 104C5828 */  ps_sub    f2, f12, f11
/* 0C2314 800C5314 106C582A */  ps_add    f3, f12, f11
/* 0C2318 800C5318 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C231C 800C531C 104D5028 */  ps_sub    f2, f13, f10
/* 0C2320 800C5320 1127302A */  ps_add    f9, f7, f6
/* 0C2324 800C5324 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C2328 800C5328 10673028 */  ps_sub    f3, f7, f6
/* 0C232C 800C532C 1129F82A */  ps_add    f9, f9, f31
/* 0C2330 800C5330 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C2334 800C5334 1105202A */  ps_add    f8, f5, f4
/* 0C2338 800C5338 10452028 */  ps_sub    f2, f5, f4
/* 0C233C 800C533C F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C2340 800C5340 7CA83A14 */  add       r5, r8, r7
/* 0C2344 800C5344 1089402A */  ps_add    f4, f9, f8
/* 0C2348 800C5348 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C234C 800C534C 1063F82A */  ps_add    f3, f3, f31
/* 0C2350 800C5350 7C683214 */  add       r3, r8, r6
/* 0C2354 800C5354 4200FF2C */  bdnz      lbl_800C5280
/* 0C2358 800C5358 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C235C 800C535C 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C2360 800C5360 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C2364 800C5364 11894028 */  ps_sub    f12, f9, f8
/* 0C2368 800C5368 1023102A */  ps_add    f1, f3, f2
/* 0C236C 800C536C E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C2370 800C5370 11A31028 */  ps_sub    f13, f3, f2
/* 0C2374 800C5374 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C2378 800C5378 1069502A */  ps_add    f3, f9, f10
/* 0C237C 800C537C 11295028 */  ps_sub    f9, f9, f10
/* 0C2380 800C5380 104B402A */  ps_add    f2, f11, f8
/* 0C2384 800C5384 116B4028 */  ps_sub    f11, f11, f8
/* 0C2388 800C5388 1102182A */  ps_add    f8, f2, f3
/* 0C238C 800C538C 11421828 */  ps_sub    f10, f2, f3
/* 0C2390 800C5390 1069582A */  ps_add    f3, f9, f11
/* 0C2394 800C5394 1044402A */  ps_add    f2, f4, f8
/* 0C2398 800C5398 10630732 */  ps_mul    f3, f3, f28
/* 0C239C 800C539C 10044028 */  ps_sub    f0, f4, f8
/* 0C23A0 800C53A0 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C23A4 800C53A4 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C23A8 800C53A8 11294028 */  ps_sub    f9, f9, f8
/* 0C23AC 800C53AC 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C23B0 800C53B0 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C23B4 800C53B4 1041482A */  ps_add    f2, f1, f9
/* 0C23B8 800C53B8 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C23BC 800C53BC 10214828 */  ps_sub    f1, f1, f9
/* 0C23C0 800C53C0 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C23C4 800C53C4 106D502A */  ps_add    f3, f13, f10
/* 0C23C8 800C53C8 116B502A */  ps_add    f11, f11, f10
/* 0C23CC 800C53CC F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C23D0 800C53D0 104C5828 */  ps_sub    f2, f12, f11
/* 0C23D4 800C53D4 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C23D8 800C53D8 106C582A */  ps_add    f3, f12, f11
/* 0C23DC 800C53DC F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C23E0 800C53E0 104D5028 */  ps_sub    f2, f13, f10
/* 0C23E4 800C53E4 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C23E8 800C53E8 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C23EC 800C53EC 811E0124 */  lwz       r8, 0x124(r30)
/* 0C23F0 800C53F0 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C23F4 800C53F4 39240008 */  addi      r9, r4, 0x8
/* 0C23F8 800C53F8 395EFFF8 */  subi      r10, r30, 0x8
/* 0C23FC 800C53FC 38600008 */  li        r3, 0x8
/* 0C2400 800C5400 7C6903A6 */  mtctr     r3
lbl_800C5404:
/* 0C2404 800C5404 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C2408 800C5408 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C240C 800C540C 80C8000C */  lwz       r6, 0xc(r8)
/* 0C2410 800C5410 80080008 */  lwz       r0, 0x8(r8)
/* 0C2414 800C5414 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2418 800C5418 80A80004 */  lwz       r5, 0x4(r8)
/* 0C241C 800C541C A0680002 */  lhz       r3, 0x2(r8)
/* 0C2420 800C5420 7CC60378 */  or        r6, r6, r0
lbl_800C5424:
/* 0C2424 800C5424 2C060000 */  cmpwi     r6, 0x0
/* 0C2428 800C5428 40820148 */  bne       lbl_800C5570
/* 0C242C 800C542C 10873C20 */  ps_merge00 f4, f7, f7
/* 0C2430 800C5430 2C050000 */  cmpwi     r5, 0x0
/* 0C2434 800C5434 F08A0008 */  psq_st    f4, 0x8(r10), 0, qr0
/* 0C2438 800C5438 4082009C */  bne       lbl_800C54D4
/* 0C243C 800C543C F08A0010 */  psq_st    f4, 0x10(r10), 0, qr0
/* 0C2440 800C5440 2C030000 */  cmpwi     r3, 0x0
/* 0C2444 800C5444 F08A0018 */  psq_st    f4, 0x18(r10), 0, qr0
/* 0C2448 800C5448 40820018 */  bne       lbl_800C5460
/* 0C244C 800C544C 38E70020 */  addi      r7, r7, 0x20
/* 0C2450 800C5450 F48A0020 */  psq_stu   f4, 0x20(r10), 0, qr0
/* 0C2454 800C5454 39080010 */  addi      r8, r8, 0x10
/* 0C2458 800C5458 4200FFAC */  bdnz      lbl_800C5404
/* 0C245C 800C545C 480001DC */  b         lbl_800C5638
lbl_800C5460:
/* 0C2460 800C5460 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C2464 800C5464 39080010 */  addi      r8, r8, 0x10
/* 0C2468 800C5468 10473C20 */  ps_merge00 f2, f7, f7
/* 0C246C 800C546C 38E70020 */  addi      r7, r7, 0x20
/* 0C2470 800C5470 103CE828 */  ps_sub    f1, f28, f29
/* 0C2474 800C5474 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2478 800C5478 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C247C 800C547C A0680002 */  lhz       r3, 0x2(r8)
/* 0C2480 800C5480 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C2484 800C5484 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2488 800C5488 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C248C 800C548C 1102502A */  ps_add    f8, f2, f10
/* 0C2490 800C5490 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C2494 800C5494 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C2498 800C5498 11425028 */  ps_sub    f10, f2, f10
/* 0C249C 800C549C 80C8000C */  lwz       r6, 0xc(r8)
/* 0C24A0 800C54A0 1062482A */  ps_add    f3, f2, f9
/* 0C24A4 800C54A4 80080008 */  lwz       r0, 0x8(r8)
/* 0C24A8 800C54A8 11224828 */  ps_sub    f9, f2, f9
/* 0C24AC 800C54AC F50A0008 */  psq_stu   f8, 0x8(r10), 0, qr0
/* 0C24B0 800C54B0 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C24B4 800C54B4 F46A0008 */  psq_stu   f3, 0x8(r10), 0, qr0
/* 0C24B8 800C54B8 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C24BC 800C54BC 7CC60378 */  or        r6, r6, r0
/* 0C24C0 800C54C0 F52A0008 */  psq_stu   f9, 0x8(r10), 0, qr0
/* 0C24C4 800C54C4 10E701B2 */  ps_mul    f7, f7, f6
/* 0C24C8 800C54C8 F54A0008 */  psq_stu   f10, 0x8(r10), 0, qr0
/* 0C24CC 800C54CC 4200FF58 */  bdnz      lbl_800C5424
/* 0C24D0 800C54D0 48000168 */  b         lbl_800C5638
lbl_800C54D4:
/* 0C24D4 800C54D4 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C24D8 800C54D8 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C24DC 800C54DC 39080010 */  addi      r8, r8, 0x10
/* 0C24E0 800C54E0 102100B2 */  ps_mul    f1, f1, f2
/* 0C24E4 800C54E4 38E70020 */  addi      r7, r7, 0x20
/* 0C24E8 800C54E8 11870828 */  ps_sub    f12, f7, f1
/* 0C24EC 800C54EC 11A7082A */  ps_add    f13, f7, f1
/* 0C24F0 800C54F0 80C8000C */  lwz       r6, 0xc(r8)
/* 0C24F4 800C54F4 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C24F8 800C54F8 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C24FC 800C54FC 106C0732 */  ps_mul    f3, f12, f28
/* 0C2500 800C5500 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C2504 800C5504 80080008 */  lwz       r0, 0x8(r8)
/* 0C2508 800C5508 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C250C 800C550C 114A6420 */  ps_merge00 f10, f10, f12
/* 0C2510 800C5510 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2514 800C5514 11296828 */  ps_sub    f9, f9, f13
/* 0C2518 800C5518 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C251C 800C551C A0680002 */  lhz       r3, 0x2(r8)
/* 0C2520 800C5520 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C2524 800C5524 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C2528 800C5528 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C252C 800C552C 104B682A */  ps_add    f2, f11, f13
/* 0C2530 800C5530 11081828 */  ps_sub    f8, f8, f3
/* 0C2534 800C5534 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2538 800C5538 118344E0 */  ps_merge11 f12, f3, f8
/* 0C253C 800C553C 116B6828 */  ps_sub    f11, f11, f13
/* 0C2540 800C5540 F44A0008 */  psq_stu   f2, 0x8(r10), 0, qr0
/* 0C2544 800C5544 108A602A */  ps_add    f4, f10, f12
/* 0C2548 800C5548 102A6028 */  ps_sub    f1, f10, f12
/* 0C254C 800C554C 7CC60378 */  or        r6, r6, r0
/* 0C2550 800C5550 F48A0008 */  psq_stu   f4, 0x8(r10), 0, qr0
/* 0C2554 800C5554 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C2558 800C5558 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C255C 800C555C F42A0008 */  psq_stu   f1, 0x8(r10), 0, qr0
/* 0C2560 800C5560 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2564 800C5564 F56A0008 */  psq_stu   f11, 0x8(r10), 0, qr0
/* 0C2568 800C5568 4200FEBC */  bdnz      lbl_800C5424
/* 0C256C 800C556C 480000CC */  b         lbl_800C5638
lbl_800C5570:
/* 0C2570 800C5570 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C2574 800C5574 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C2578 800C5578 104202B2 */  ps_mul    f2, f2, f10
/* 0C257C 800C557C E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C2580 800C5580 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C2584 800C5584 10871460 */  ps_merge01 f4, f7, f2
/* 0C2588 800C5588 E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C258C 800C558C 10223C60 */  ps_merge01 f1, f2, f7
/* 0C2590 800C5590 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C2594 800C5594 39080010 */  addi      r8, r8, 0x10
/* 0C2598 800C5598 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C259C 800C559C 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C25A0 800C55A0 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C25A4 800C55A4 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C25A8 800C55A8 38E70020 */  addi      r7, r7, 0x20
/* 0C25AC 800C55AC 108B482A */  ps_add    f4, f11, f9
/* 0C25B0 800C55B0 118B4828 */  ps_sub    f12, f11, f9
/* 0C25B4 800C55B4 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C25B8 800C55B8 80C8000C */  lwz       r6, 0xc(r8)
/* 0C25BC 800C55BC 10685028 */  ps_sub    f3, f8, f10
/* 0C25C0 800C55C0 102A682A */  ps_add    f1, f10, f13
/* 0C25C4 800C55C4 11AA6828 */  ps_sub    f13, f10, f13
/* 0C25C8 800C55C8 10630732 */  ps_mul    f3, f3, f28
/* 0C25CC 800C55CC 80080008 */  lwz       r0, 0x8(r8)
/* 0C25D0 800C55D0 10240C20 */  ps_merge00 f1, f4, f1
/* 0C25D4 800C55D4 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C25D8 800C55D8 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C25DC 800C55DC 80A80004 */  lwz       r5, 0x4(r8)
/* 0C25E0 800C55E0 11292028 */  ps_sub    f9, f9, f4
/* 0C25E4 800C55E4 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C25E8 800C55E8 A0680002 */  lhz       r3, 0x2(r8)
/* 0C25EC 800C55EC 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C25F0 800C55F0 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C25F4 800C55F4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C25F8 800C55F8 116B5028 */  ps_sub    f11, f11, f10
/* 0C25FC 800C55FC 1181402A */  ps_add    f12, f1, f8
/* 0C2600 800C5600 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2604 800C5604 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C2608 800C5608 10814028 */  ps_sub    f4, f1, f8
/* 0C260C 800C560C 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2610 800C5610 114D582A */  ps_add    f10, f13, f11
/* 0C2614 800C5614 112D5828 */  ps_sub    f9, f13, f11
/* 0C2618 800C5618 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C261C 800C561C F58A0008 */  psq_stu   f12, 0x8(r10), 0, qr0
/* 0C2620 800C5620 108424A0 */  ps_merge10 f4, f4, f4
/* 0C2624 800C5624 F52A0008 */  psq_stu   f9, 0x8(r10), 0, qr0
/* 0C2628 800C5628 F54A0008 */  psq_stu   f10, 0x8(r10), 0, qr0
/* 0C262C 800C562C 7CC60378 */  or        r6, r6, r0
/* 0C2630 800C5630 F48A0008 */  psq_stu   f4, 0x8(r10), 0, qr0
/* 0C2634 800C5634 4200FDF0 */  bdnz      lbl_800C5424
lbl_800C5638:
/* 0C2638 800C5638 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C263C 800C563C 7FCAF378 */  mr        r10, r30
/* 0C2640 800C5640 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C2644 800C5644 E0EA0000 */  psq_l     f7, 0x0(r10), 0, qr0
/* 0C2648 800C5648 54071838 */  slwi      r7, r0, 3
/* 0C264C 800C564C E0CA0080 */  psq_l     f6, 0x80(r10), 0, qr0
/* 0C2650 800C5650 5529103A */  slwi      r9, r9, 2
/* 0C2654 800C5654 E0AA0040 */  psq_l     f5, 0x40(r10), 0, qr0
/* 0C2658 800C5658 5406103A */  slwi      r6, r0, 2
/* 0C265C 800C565C 1127302A */  ps_add    f9, f7, f6
/* 0C2660 800C5660 7CE74A14 */  add       r7, r7, r9
/* 0C2664 800C5664 E08A00C0 */  psq_l     f4, 0xc0(r10), 0, qr0
/* 0C2668 800C5668 10673028 */  ps_sub    f3, f7, f6
/* 0C266C 800C566C 7CC73214 */  add       r6, r7, r6
/* 0C2670 800C5670 1129F82A */  ps_add    f9, f9, f31
/* 0C2674 800C5674 38000003 */  li        r0, 0x3
/* 0C2678 800C5678 1105202A */  ps_add    f8, f5, f4
/* 0C267C 800C567C 7CA83A14 */  add       r5, r8, r7
/* 0C2680 800C5680 10452028 */  ps_sub    f2, f5, f4
/* 0C2684 800C5684 1089402A */  ps_add    f4, f9, f8
/* 0C2688 800C5688 7C683214 */  add       r3, r8, r6
/* 0C268C 800C568C 1063F82A */  ps_add    f3, f3, f31
/* 0C2690 800C5690 7C0903A6 */  mtctr     r0
lbl_800C5694:
/* 0C2694 800C5694 E16A0020 */  psq_l     f11, 0x20(r10), 0, qr0
/* 0C2698 800C5698 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C269C 800C569C E14A0060 */  psq_l     f10, 0x60(r10), 0, qr0
/* 0C26A0 800C56A0 11894028 */  ps_sub    f12, f9, f8
/* 0C26A4 800C56A4 1023102A */  ps_add    f1, f3, f2
/* 0C26A8 800C56A8 E12A00A0 */  psq_l     f9, 0xa0(r10), 0, qr0
/* 0C26AC 800C56AC 11A31028 */  ps_sub    f13, f3, f2
/* 0C26B0 800C56B0 E10A00E0 */  psq_l     f8, 0xe0(r10), 0, qr0
/* 0C26B4 800C56B4 1069502A */  ps_add    f3, f9, f10
/* 0C26B8 800C56B8 11295028 */  ps_sub    f9, f9, f10
/* 0C26BC 800C56BC 394A0008 */  addi      r10, r10, 0x8
/* 0C26C0 800C56C0 104B402A */  ps_add    f2, f11, f8
/* 0C26C4 800C56C4 116B4028 */  ps_sub    f11, f11, f8
/* 0C26C8 800C56C8 E0EA0000 */  psq_l     f7, 0x0(r10), 0, qr0
/* 0C26CC 800C56CC 1102182A */  ps_add    f8, f2, f3
/* 0C26D0 800C56D0 11421828 */  ps_sub    f10, f2, f3
/* 0C26D4 800C56D4 1069582A */  ps_add    f3, f9, f11
/* 0C26D8 800C56D8 E0CA0080 */  psq_l     f6, 0x80(r10), 0, qr0
/* 0C26DC 800C56DC 1044402A */  ps_add    f2, f4, f8
/* 0C26E0 800C56E0 10630732 */  ps_mul    f3, f3, f28
/* 0C26E4 800C56E4 E0AA0040 */  psq_l     f5, 0x40(r10), 0, qr0
/* 0C26E8 800C56E8 10044028 */  ps_sub    f0, f4, f8
/* 0C26EC 800C56EC 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C26F0 800C56F0 E08A00C0 */  psq_l     f4, 0xc0(r10), 0, qr0
/* 0C26F4 800C56F4 11294028 */  ps_sub    f9, f9, f8
/* 0C26F8 800C56F8 38E70002 */  addi      r7, r7, 0x2
/* 0C26FC 800C56FC F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C2700 800C5700 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C2704 800C5704 1041482A */  ps_add    f2, f1, f9
/* 0C2708 800C5708 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C270C 800C570C 10214828 */  ps_sub    f1, f1, f9
/* 0C2710 800C5710 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C2714 800C5714 106D502A */  ps_add    f3, f13, f10
/* 0C2718 800C5718 116B502A */  ps_add    f11, f11, f10
/* 0C271C 800C571C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C2720 800C5720 38C60002 */  addi      r6, r6, 0x2
/* 0C2724 800C5724 104C5828 */  ps_sub    f2, f12, f11
/* 0C2728 800C5728 106C582A */  ps_add    f3, f12, f11
/* 0C272C 800C572C F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C2730 800C5730 104D5028 */  ps_sub    f2, f13, f10
/* 0C2734 800C5734 1127302A */  ps_add    f9, f7, f6
/* 0C2738 800C5738 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C273C 800C573C 10673028 */  ps_sub    f3, f7, f6
/* 0C2740 800C5740 1129F82A */  ps_add    f9, f9, f31
/* 0C2744 800C5744 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C2748 800C5748 1105202A */  ps_add    f8, f5, f4
/* 0C274C 800C574C 10452028 */  ps_sub    f2, f5, f4
/* 0C2750 800C5750 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C2754 800C5754 7CA83A14 */  add       r5, r8, r7
/* 0C2758 800C5758 1089402A */  ps_add    f4, f9, f8
/* 0C275C 800C575C F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C2760 800C5760 1063F82A */  ps_add    f3, f3, f31
/* 0C2764 800C5764 7C683214 */  add       r3, r8, r6
/* 0C2768 800C5768 4200FF2C */  bdnz      lbl_800C5694
/* 0C276C 800C576C E16A0020 */  psq_l     f11, 0x20(r10), 0, qr0
/* 0C2770 800C5770 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C2774 800C5774 E14A0060 */  psq_l     f10, 0x60(r10), 0, qr0
/* 0C2778 800C5778 11894028 */  ps_sub    f12, f9, f8
/* 0C277C 800C577C 1023102A */  ps_add    f1, f3, f2
/* 0C2780 800C5780 E12A00A0 */  psq_l     f9, 0xa0(r10), 0, qr0
/* 0C2784 800C5784 11A31028 */  ps_sub    f13, f3, f2
/* 0C2788 800C5788 E10A00E0 */  psq_l     f8, 0xe0(r10), 0, qr0
/* 0C278C 800C578C 1069502A */  ps_add    f3, f9, f10
/* 0C2790 800C5790 11295028 */  ps_sub    f9, f9, f10
/* 0C2794 800C5794 104B402A */  ps_add    f2, f11, f8
/* 0C2798 800C5798 116B4028 */  ps_sub    f11, f11, f8
/* 0C279C 800C579C 1102182A */  ps_add    f8, f2, f3
/* 0C27A0 800C57A0 11421828 */  ps_sub    f10, f2, f3
/* 0C27A4 800C57A4 1069582A */  ps_add    f3, f9, f11
/* 0C27A8 800C57A8 1044402A */  ps_add    f2, f4, f8
/* 0C27AC 800C57AC 10630732 */  ps_mul    f3, f3, f28
/* 0C27B0 800C57B0 10044028 */  ps_sub    f0, f4, f8
/* 0C27B4 800C57B4 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C27B8 800C57B8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C27BC 800C57BC 11294028 */  ps_sub    f9, f9, f8
/* 0C27C0 800C57C0 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C27C4 800C57C4 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C27C8 800C57C8 1041482A */  ps_add    f2, f1, f9
/* 0C27CC 800C57CC 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C27D0 800C57D0 10214828 */  ps_sub    f1, f1, f9
/* 0C27D4 800C57D4 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C27D8 800C57D8 106D502A */  ps_add    f3, f13, f10
/* 0C27DC 800C57DC 116B502A */  ps_add    f11, f11, f10
/* 0C27E0 800C57E0 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C27E4 800C57E4 104C5828 */  ps_sub    f2, f12, f11
/* 0C27E8 800C57E8 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C27EC 800C57EC 106C582A */  ps_add    f3, f12, f11
/* 0C27F0 800C57F0 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C27F4 800C57F4 104D5028 */  ps_sub    f2, f13, f10
/* 0C27F8 800C57F8 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C27FC 800C57FC F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C2800 800C5800 801E0110 */  lwz       r0, 0x110(r30)
/* 0C2804 800C5804 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C2808 800C5808 5484F87E */  srwi      r4, r4, 1
/* 0C280C 800C580C 900D8F20 */  stw       r0, D_8018BEA0@sda21(r0)
/* 0C2810 800C5810 393EFFF8 */  subi      r9, r30, 0x8
/* 0C2814 800C5814 93ED8F40 */  stw       r31, D_8018BEC0@sda21(r0)
/* 0C2818 800C5818 88030686 */  lbz       r0, 0x686(r3)
/* 0C281C 800C581C 5400402E */  slwi      r0, r0, 8
/* 0C2820 800C5820 7C030214 */  add       r0, r3, r0
/* 0C2824 800C5824 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0C2828 800C5828 811E0128 */  lwz       r8, 0x128(r30)
/* 0C282C 800C582C 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C2830 800C5830 38600008 */  li        r3, 0x8
/* 0C2834 800C5834 7C6903A6 */  mtctr     r3
lbl_800C5838:
/* 0C2838 800C5838 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C283C 800C583C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2840 800C5840 80C8000C */  lwz       r6, 0xc(r8)
/* 0C2844 800C5844 80080008 */  lwz       r0, 0x8(r8)
/* 0C2848 800C5848 10E701B2 */  ps_mul    f7, f7, f6
/* 0C284C 800C584C 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2850 800C5850 A0680002 */  lhz       r3, 0x2(r8)
/* 0C2854 800C5854 7CC60379 */  or.       r6, r6, r0
lbl_800C5858:
/* 0C2858 800C5858 2C060000 */  cmpwi     r6, 0x0
/* 0C285C 800C585C 40820148 */  bne       lbl_800C59A4
/* 0C2860 800C5860 10873C20 */  ps_merge00 f4, f7, f7
/* 0C2864 800C5864 2C050000 */  cmpwi     r5, 0x0
/* 0C2868 800C5868 F0890008 */  psq_st    f4, 0x8(r9), 0, qr0
/* 0C286C 800C586C 4082009C */  bne       lbl_800C5908
/* 0C2870 800C5870 F0890010 */  psq_st    f4, 0x10(r9), 0, qr0
/* 0C2874 800C5874 2C030000 */  cmpwi     r3, 0x0
/* 0C2878 800C5878 F0890018 */  psq_st    f4, 0x18(r9), 0, qr0
/* 0C287C 800C587C 40820018 */  bne       lbl_800C5894
/* 0C2880 800C5880 38E70020 */  addi      r7, r7, 0x20
/* 0C2884 800C5884 F4890020 */  psq_stu   f4, 0x20(r9), 0, qr0
/* 0C2888 800C5888 39080010 */  addi      r8, r8, 0x10
/* 0C288C 800C588C 4200FFAC */  bdnz      lbl_800C5838
/* 0C2890 800C5890 480001DC */  b         lbl_800C5A6C
lbl_800C5894:
/* 0C2894 800C5894 39080010 */  addi      r8, r8, 0x10
/* 0C2898 800C5898 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C289C 800C589C 38E70020 */  addi      r7, r7, 0x20
/* 0C28A0 800C58A0 10473C20 */  ps_merge00 f2, f7, f7
/* 0C28A4 800C58A4 80A80004 */  lwz       r5, 0x4(r8)
/* 0C28A8 800C58A8 103CE828 */  ps_sub    f1, f28, f29
/* 0C28AC 800C58AC 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C28B0 800C58B0 A0680002 */  lhz       r3, 0x2(r8)
/* 0C28B4 800C58B4 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C28B8 800C58B8 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C28BC 800C58BC 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C28C0 800C58C0 1102502A */  ps_add    f8, f2, f10
/* 0C28C4 800C58C4 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C28C8 800C58C8 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C28CC 800C58CC 11425028 */  ps_sub    f10, f2, f10
/* 0C28D0 800C58D0 80C8000C */  lwz       r6, 0xc(r8)
/* 0C28D4 800C58D4 1062482A */  ps_add    f3, f2, f9
/* 0C28D8 800C58D8 80080008 */  lwz       r0, 0x8(r8)
/* 0C28DC 800C58DC 11224828 */  ps_sub    f9, f2, f9
/* 0C28E0 800C58E0 F5090008 */  psq_stu   f8, 0x8(r9), 0, qr0
/* 0C28E4 800C58E4 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C28E8 800C58E8 F4690008 */  psq_stu   f3, 0x8(r9), 0, qr0
/* 0C28EC 800C58EC 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C28F0 800C58F0 7CC60378 */  or        r6, r6, r0
/* 0C28F4 800C58F4 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C28F8 800C58F8 10E701B2 */  ps_mul    f7, f7, f6
/* 0C28FC 800C58FC F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C2900 800C5900 4200FF58 */  bdnz      lbl_800C5858
/* 0C2904 800C5904 48000168 */  b         lbl_800C5A6C
lbl_800C5908:
/* 0C2908 800C5908 E0285004 */  psq_l     f1, 0x4(r8), 0, qr5
/* 0C290C 800C590C E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C2910 800C5910 39080010 */  addi      r8, r8, 0x10
/* 0C2914 800C5914 102100B2 */  ps_mul    f1, f1, f2
/* 0C2918 800C5918 38E70020 */  addi      r7, r7, 0x20
/* 0C291C 800C591C 11870828 */  ps_sub    f12, f7, f1
/* 0C2920 800C5920 11A7082A */  ps_add    f13, f7, f1
/* 0C2924 800C5924 80C8000C */  lwz       r6, 0xc(r8)
/* 0C2928 800C5928 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C292C 800C592C 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C2930 800C5930 106C0732 */  ps_mul    f3, f12, f28
/* 0C2934 800C5934 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C2938 800C5938 80080008 */  lwz       r0, 0x8(r8)
/* 0C293C 800C593C 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C2940 800C5940 114A6420 */  ps_merge00 f10, f10, f12
/* 0C2944 800C5944 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2948 800C5948 11296828 */  ps_sub    f9, f9, f13
/* 0C294C 800C594C 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C2950 800C5950 A0680002 */  lhz       r3, 0x2(r8)
/* 0C2954 800C5954 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C2958 800C5958 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C295C 800C595C E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C2960 800C5960 104B682A */  ps_add    f2, f11, f13
/* 0C2964 800C5964 11081828 */  ps_sub    f8, f8, f3
/* 0C2968 800C5968 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C296C 800C596C 118344E0 */  ps_merge11 f12, f3, f8
/* 0C2970 800C5970 116B6828 */  ps_sub    f11, f11, f13
/* 0C2974 800C5974 F4490008 */  psq_stu   f2, 0x8(r9), 0, qr0
/* 0C2978 800C5978 108A602A */  ps_add    f4, f10, f12
/* 0C297C 800C597C 102A6028 */  ps_sub    f1, f10, f12
/* 0C2980 800C5980 7CC60378 */  or        r6, r6, r0
/* 0C2984 800C5984 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C2988 800C5988 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C298C 800C598C 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C2990 800C5990 F4290008 */  psq_stu   f1, 0x8(r9), 0, qr0
/* 0C2994 800C5994 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2998 800C5998 F5690008 */  psq_stu   f11, 0x8(r9), 0, qr0
/* 0C299C 800C599C 4200FEBC */  bdnz      lbl_800C5858
/* 0C29A0 800C59A0 480000CC */  b         lbl_800C5A6C
lbl_800C59A4:
/* 0C29A4 800C59A4 E0485004 */  psq_l     f2, 0x4(r8), 0, qr5
/* 0C29A8 800C59A8 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C29AC 800C59AC 104202B2 */  ps_mul    f2, f2, f10
/* 0C29B0 800C59B0 E1A85008 */  psq_l     f13, 0x8(r8), 0, qr5
/* 0C29B4 800C59B4 E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C29B8 800C59B8 10871460 */  ps_merge01 f4, f7, f2
/* 0C29BC 800C59BC E188500C */  psq_l     f12, 0xc(r8), 0, qr5
/* 0C29C0 800C59C0 10223C60 */  ps_merge01 f1, f2, f7
/* 0C29C4 800C59C4 E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C29C8 800C59C8 39080010 */  addi      r8, r8, 0x10
/* 0C29CC 800C59CC 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C29D0 800C59D0 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C29D4 800C59D4 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C29D8 800C59D8 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C29DC 800C59DC 38E70020 */  addi      r7, r7, 0x20
/* 0C29E0 800C59E0 108B482A */  ps_add    f4, f11, f9
/* 0C29E4 800C59E4 118B4828 */  ps_sub    f12, f11, f9
/* 0C29E8 800C59E8 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C29EC 800C59EC 80C8000C */  lwz       r6, 0xc(r8)
/* 0C29F0 800C59F0 10685028 */  ps_sub    f3, f8, f10
/* 0C29F4 800C59F4 102A682A */  ps_add    f1, f10, f13
/* 0C29F8 800C59F8 11AA6828 */  ps_sub    f13, f10, f13
/* 0C29FC 800C59FC 10630732 */  ps_mul    f3, f3, f28
/* 0C2A00 800C5A00 80080008 */  lwz       r0, 0x8(r8)
/* 0C2A04 800C5A04 10240C20 */  ps_merge00 f1, f4, f1
/* 0C2A08 800C5A08 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C2A0C 800C5A0C 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C2A10 800C5A10 80A80004 */  lwz       r5, 0x4(r8)
/* 0C2A14 800C5A14 11292028 */  ps_sub    f9, f9, f4
/* 0C2A18 800C5A18 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C2A1C 800C5A1C A0680002 */  lhz       r3, 0x2(r8)
/* 0C2A20 800C5A20 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C2A24 800C5A24 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C2A28 800C5A28 E0E85000 */  psq_l     f7, 0x0(r8), 0, qr5
/* 0C2A2C 800C5A2C 116B5028 */  ps_sub    f11, f11, f10
/* 0C2A30 800C5A30 1181402A */  ps_add    f12, f1, f8
/* 0C2A34 800C5A34 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2A38 800C5A38 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C2A3C 800C5A3C 10814028 */  ps_sub    f4, f1, f8
/* 0C2A40 800C5A40 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2A44 800C5A44 114D582A */  ps_add    f10, f13, f11
/* 0C2A48 800C5A48 112D5828 */  ps_sub    f9, f13, f11
/* 0C2A4C 800C5A4C 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C2A50 800C5A50 F5890008 */  psq_stu   f12, 0x8(r9), 0, qr0
/* 0C2A54 800C5A54 108424A0 */  ps_merge10 f4, f4, f4
/* 0C2A58 800C5A58 F5290008 */  psq_stu   f9, 0x8(r9), 0, qr0
/* 0C2A5C 800C5A5C F5490008 */  psq_stu   f10, 0x8(r9), 0, qr0
/* 0C2A60 800C5A60 7CC60378 */  or        r6, r6, r0
/* 0C2A64 800C5A64 F4890008 */  psq_stu   f4, 0x8(r9), 0, qr0
/* 0C2A68 800C5A68 4200FDF0 */  bdnz      lbl_800C5858
lbl_800C5A6C:
/* 0C2A6C 800C5A6C 810D8F20 */  lwz       r8, D_8018BEA0@sda21(r0)
/* 0C2A70 800C5A70 7FC9F378 */  mr        r9, r30
/* 0C2A74 800C5A74 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C2A78 800C5A78 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C2A7C 800C5A7C 5483103A */  slwi      r3, r4, 2
/* 0C2A80 800C5A80 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C2A84 800C5A84 5406103A */  slwi      r6, r0, 2
/* 0C2A88 800C5A88 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C2A8C 800C5A8C 7C671B78 */  mr        r7, r3
/* 0C2A90 800C5A90 1127302A */  ps_add    f9, f7, f6
/* 0C2A94 800C5A94 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C2A98 800C5A98 10673028 */  ps_sub    f3, f7, f6
/* 0C2A9C 800C5A9C 7CC73214 */  add       r6, r7, r6
/* 0C2AA0 800C5AA0 1129F82A */  ps_add    f9, f9, f31
/* 0C2AA4 800C5AA4 38000003 */  li        r0, 0x3
/* 0C2AA8 800C5AA8 1105202A */  ps_add    f8, f5, f4
/* 0C2AAC 800C5AAC 7CA83A14 */  add       r5, r8, r7
/* 0C2AB0 800C5AB0 10452028 */  ps_sub    f2, f5, f4
/* 0C2AB4 800C5AB4 1089402A */  ps_add    f4, f9, f8
/* 0C2AB8 800C5AB8 7C683214 */  add       r3, r8, r6
/* 0C2ABC 800C5ABC 1063F82A */  ps_add    f3, f3, f31
/* 0C2AC0 800C5AC0 7C0903A6 */  mtctr     r0
lbl_800C5AC4:
/* 0C2AC4 800C5AC4 E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C2AC8 800C5AC8 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C2ACC 800C5ACC E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C2AD0 800C5AD0 11894028 */  ps_sub    f12, f9, f8
/* 0C2AD4 800C5AD4 1023102A */  ps_add    f1, f3, f2
/* 0C2AD8 800C5AD8 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C2ADC 800C5ADC 11A31028 */  ps_sub    f13, f3, f2
/* 0C2AE0 800C5AE0 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C2AE4 800C5AE4 1069502A */  ps_add    f3, f9, f10
/* 0C2AE8 800C5AE8 11295028 */  ps_sub    f9, f9, f10
/* 0C2AEC 800C5AEC 39290008 */  addi      r9, r9, 0x8
/* 0C2AF0 800C5AF0 104B402A */  ps_add    f2, f11, f8
/* 0C2AF4 800C5AF4 116B4028 */  ps_sub    f11, f11, f8
/* 0C2AF8 800C5AF8 E0E90000 */  psq_l     f7, 0x0(r9), 0, qr0
/* 0C2AFC 800C5AFC 1102182A */  ps_add    f8, f2, f3
/* 0C2B00 800C5B00 11421828 */  ps_sub    f10, f2, f3
/* 0C2B04 800C5B04 1069582A */  ps_add    f3, f9, f11
/* 0C2B08 800C5B08 E0C90080 */  psq_l     f6, 0x80(r9), 0, qr0
/* 0C2B0C 800C5B0C 1044402A */  ps_add    f2, f4, f8
/* 0C2B10 800C5B10 10630732 */  ps_mul    f3, f3, f28
/* 0C2B14 800C5B14 E0A90040 */  psq_l     f5, 0x40(r9), 0, qr0
/* 0C2B18 800C5B18 10044028 */  ps_sub    f0, f4, f8
/* 0C2B1C 800C5B1C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C2B20 800C5B20 E08900C0 */  psq_l     f4, 0xc0(r9), 0, qr0
/* 0C2B24 800C5B24 11294028 */  ps_sub    f9, f9, f8
/* 0C2B28 800C5B28 38E70002 */  addi      r7, r7, 0x2
/* 0C2B2C 800C5B2C F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C2B30 800C5B30 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C2B34 800C5B34 1041482A */  ps_add    f2, f1, f9
/* 0C2B38 800C5B38 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C2B3C 800C5B3C 10214828 */  ps_sub    f1, f1, f9
/* 0C2B40 800C5B40 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C2B44 800C5B44 106D502A */  ps_add    f3, f13, f10
/* 0C2B48 800C5B48 116B502A */  ps_add    f11, f11, f10
/* 0C2B4C 800C5B4C F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C2B50 800C5B50 38C60002 */  addi      r6, r6, 0x2
/* 0C2B54 800C5B54 104C5828 */  ps_sub    f2, f12, f11
/* 0C2B58 800C5B58 106C582A */  ps_add    f3, f12, f11
/* 0C2B5C 800C5B5C F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C2B60 800C5B60 104D5028 */  ps_sub    f2, f13, f10
/* 0C2B64 800C5B64 1127302A */  ps_add    f9, f7, f6
/* 0C2B68 800C5B68 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C2B6C 800C5B6C 10673028 */  ps_sub    f3, f7, f6
/* 0C2B70 800C5B70 1129F82A */  ps_add    f9, f9, f31
/* 0C2B74 800C5B74 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C2B78 800C5B78 1105202A */  ps_add    f8, f5, f4
/* 0C2B7C 800C5B7C 10452028 */  ps_sub    f2, f5, f4
/* 0C2B80 800C5B80 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C2B84 800C5B84 7CA83A14 */  add       r5, r8, r7
/* 0C2B88 800C5B88 1089402A */  ps_add    f4, f9, f8
/* 0C2B8C 800C5B8C F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C2B90 800C5B90 1063F82A */  ps_add    f3, f3, f31
/* 0C2B94 800C5B94 7C683214 */  add       r3, r8, r6
/* 0C2B98 800C5B98 4200FF2C */  bdnz      lbl_800C5AC4
/* 0C2B9C 800C5B9C E1690020 */  psq_l     f11, 0x20(r9), 0, qr0
/* 0C2BA0 800C5BA0 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C2BA4 800C5BA4 E1490060 */  psq_l     f10, 0x60(r9), 0, qr0
/* 0C2BA8 800C5BA8 11894028 */  ps_sub    f12, f9, f8
/* 0C2BAC 800C5BAC 1023102A */  ps_add    f1, f3, f2
/* 0C2BB0 800C5BB0 E12900A0 */  psq_l     f9, 0xa0(r9), 0, qr0
/* 0C2BB4 800C5BB4 11A31028 */  ps_sub    f13, f3, f2
/* 0C2BB8 800C5BB8 E10900E0 */  psq_l     f8, 0xe0(r9), 0, qr0
/* 0C2BBC 800C5BBC 1069502A */  ps_add    f3, f9, f10
/* 0C2BC0 800C5BC0 11295028 */  ps_sub    f9, f9, f10
/* 0C2BC4 800C5BC4 104B402A */  ps_add    f2, f11, f8
/* 0C2BC8 800C5BC8 116B4028 */  ps_sub    f11, f11, f8
/* 0C2BCC 800C5BCC 1102182A */  ps_add    f8, f2, f3
/* 0C2BD0 800C5BD0 11421828 */  ps_sub    f10, f2, f3
/* 0C2BD4 800C5BD4 1069582A */  ps_add    f3, f9, f11
/* 0C2BD8 800C5BD8 1044402A */  ps_add    f2, f4, f8
/* 0C2BDC 800C5BDC 10630732 */  ps_mul    f3, f3, f28
/* 0C2BE0 800C5BE0 10044028 */  ps_sub    f0, f4, f8
/* 0C2BE4 800C5BE4 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C2BE8 800C5BE8 F0456000 */  psq_st    f2, 0x0(r5), 0, qr6
/* 0C2BEC 800C5BEC 11294028 */  ps_sub    f9, f9, f8
/* 0C2BF0 800C5BF0 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C2BF4 800C5BF4 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C2BF8 800C5BF8 1041482A */  ps_add    f2, f1, f9
/* 0C2BFC 800C5BFC 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C2C00 800C5C00 10214828 */  ps_sub    f1, f1, f9
/* 0C2C04 800C5C04 F0456008 */  psq_st    f2, 0x8(r5), 0, qr6
/* 0C2C08 800C5C08 106D502A */  ps_add    f3, f13, f10
/* 0C2C0C 800C5C0C 116B502A */  ps_add    f11, f11, f10
/* 0C2C10 800C5C10 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C2C14 800C5C14 F0656010 */  psq_st    f3, 0x10(r5), 0, qr6
/* 0C2C18 800C5C18 104C5828 */  ps_sub    f2, f12, f11
/* 0C2C1C 800C5C1C 106C582A */  ps_add    f3, f12, f11
/* 0C2C20 800C5C20 F0456018 */  psq_st    f2, 0x18(r5), 0, qr6
/* 0C2C24 800C5C24 104D5028 */  ps_sub    f2, f13, f10
/* 0C2C28 800C5C28 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C2C2C 800C5C2C F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C2C30 800C5C30 801E0114 */  lwz       r0, 0x114(r30)
/* 0C2C34 800C5C34 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C2C38 800C5C38 391EFFF8 */  subi      r8, r30, 0x8
/* 0C2C3C 800C5C3C 900D8F20 */  stw       r0, D_8018BEA0@sda21(r0)
/* 0C2C40 800C5C40 8803068C */  lbz       r0, 0x68c(r3)
/* 0C2C44 800C5C44 5400402E */  slwi      r0, r0, 8
/* 0C2C48 800C5C48 7C030214 */  add       r0, r3, r0
/* 0C2C4C 800C5C4C 900D8F60 */  stw       r0, D_8018BEE0@sda21(r0)
/* 0C2C50 800C5C50 813E012C */  lwz       r9, 0x12c(r30)
/* 0C2C54 800C5C54 80ED8F60 */  lwz       r7, D_8018BEE0@sda21(r0)
/* 0C2C58 800C5C58 38600008 */  li        r3, 0x8
/* 0C2C5C 800C5C5C 7C6903A6 */  mtctr     r3
lbl_800C5C60:
/* 0C2C60 800C5C60 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C2C64 800C5C64 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2C68 800C5C68 80C9000C */  lwz       r6, 0xc(r9)
/* 0C2C6C 800C5C6C 80090008 */  lwz       r0, 0x8(r9)
/* 0C2C70 800C5C70 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2C74 800C5C74 80A90004 */  lwz       r5, 0x4(r9)
/* 0C2C78 800C5C78 A0690002 */  lhz       r3, 0x2(r9)
/* 0C2C7C 800C5C7C 7CC60379 */  or.       r6, r6, r0
lbl_800C5C80:
/* 0C2C80 800C5C80 2C060000 */  cmpwi     r6, 0x0
/* 0C2C84 800C5C84 40820148 */  bne       lbl_800C5DCC
/* 0C2C88 800C5C88 10873C20 */  ps_merge00 f4, f7, f7
/* 0C2C8C 800C5C8C 2C050000 */  cmpwi     r5, 0x0
/* 0C2C90 800C5C90 F0880008 */  psq_st    f4, 0x8(r8), 0, qr0
/* 0C2C94 800C5C94 4082009C */  bne       lbl_800C5D30
/* 0C2C98 800C5C98 F0880010 */  psq_st    f4, 0x10(r8), 0, qr0
/* 0C2C9C 800C5C9C 2C030000 */  cmpwi     r3, 0x0
/* 0C2CA0 800C5CA0 F0880018 */  psq_st    f4, 0x18(r8), 0, qr0
/* 0C2CA4 800C5CA4 40820018 */  bne       lbl_800C5CBC
/* 0C2CA8 800C5CA8 38E70020 */  addi      r7, r7, 0x20
/* 0C2CAC 800C5CAC F4880020 */  psq_stu   f4, 0x20(r8), 0, qr0
/* 0C2CB0 800C5CB0 39290010 */  addi      r9, r9, 0x10
/* 0C2CB4 800C5CB4 4200FFAC */  bdnz      lbl_800C5C60
/* 0C2CB8 800C5CB8 480001DC */  b         lbl_800C5E94
lbl_800C5CBC:
/* 0C2CBC 800C5CBC 39290010 */  addi      r9, r9, 0x10
/* 0C2CC0 800C5CC0 11A73F38 */  ps_msub   f13, f7, f28, f7
/* 0C2CC4 800C5CC4 38E70020 */  addi      r7, r7, 0x20
/* 0C2CC8 800C5CC8 10473C20 */  ps_merge00 f2, f7, f7
/* 0C2CCC 800C5CCC 80A90004 */  lwz       r5, 0x4(r9)
/* 0C2CD0 800C5CD0 103CE828 */  ps_sub    f1, f28, f29
/* 0C2CD4 800C5CD4 11876EF8 */  ps_msub   f12, f7, f27, f13
/* 0C2CD8 800C5CD8 A0690002 */  lhz       r3, 0x2(r9)
/* 0C2CDC 800C5CDC 11476CE0 */  ps_merge11 f10, f7, f13
/* 0C2CE0 800C5CE0 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2CE4 800C5CE4 1167607C */  ps_nmsub  f11, f7, f1, f12
/* 0C2CE8 800C5CE8 1102502A */  ps_add    f8, f2, f10
/* 0C2CEC 800C5CEC E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C2CF0 800C5CF0 112C5CE0 */  ps_merge11 f9, f12, f11
/* 0C2CF4 800C5CF4 11425028 */  ps_sub    f10, f2, f10
/* 0C2CF8 800C5CF8 80C9000C */  lwz       r6, 0xc(r9)
/* 0C2CFC 800C5CFC 1062482A */  ps_add    f3, f2, f9
/* 0C2D00 800C5D00 80090008 */  lwz       r0, 0x8(r9)
/* 0C2D04 800C5D04 11224828 */  ps_sub    f9, f2, f9
/* 0C2D08 800C5D08 F5080008 */  psq_stu   f8, 0x8(r8), 0, qr0
/* 0C2D0C 800C5D0C 11294CA0 */  ps_merge10 f9, f9, f9
/* 0C2D10 800C5D10 F4680008 */  psq_stu   f3, 0x8(r8), 0, qr0
/* 0C2D14 800C5D14 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C2D18 800C5D18 7CC60378 */  or        r6, r6, r0
/* 0C2D1C 800C5D1C F5280008 */  psq_stu   f9, 0x8(r8), 0, qr0
/* 0C2D20 800C5D20 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2D24 800C5D24 F5480008 */  psq_stu   f10, 0x8(r8), 0, qr0
/* 0C2D28 800C5D28 4200FF58 */  bdnz      lbl_800C5C80
/* 0C2D2C 800C5D2C 48000168 */  b         lbl_800C5E94
lbl_800C5D30:
/* 0C2D30 800C5D30 E0295004 */  psq_l     f1, 0x4(r9), 0, qr5
/* 0C2D34 800C5D34 E0470008 */  psq_l     f2, 0x8(r7), 0, qr0
/* 0C2D38 800C5D38 39290010 */  addi      r9, r9, 0x10
/* 0C2D3C 800C5D3C 102100B2 */  ps_mul    f1, f1, f2
/* 0C2D40 800C5D40 38E70020 */  addi      r7, r7, 0x20
/* 0C2D44 800C5D44 11870828 */  ps_sub    f12, f7, f1
/* 0C2D48 800C5D48 11A7082A */  ps_add    f13, f7, f1
/* 0C2D4C 800C5D4C 80C9000C */  lwz       r6, 0xc(r9)
/* 0C2D50 800C5D50 116166FA */  ps_madd   f11, f1, f27, f12
/* 0C2D54 800C5D54 11416EFC */  ps_nmsub  f10, f1, f27, f13
/* 0C2D58 800C5D58 106C0732 */  ps_mul    f3, f12, f28
/* 0C2D5C 800C5D5C 116D5C20 */  ps_merge00 f11, f13, f11
/* 0C2D60 800C5D60 80090008 */  lwz       r0, 0x8(r9)
/* 0C2D64 800C5D64 11211FBC */  ps_nmsub  f9, f1, f30, f3
/* 0C2D68 800C5D68 114A6420 */  ps_merge00 f10, f10, f12
/* 0C2D6C 800C5D6C 80A90004 */  lwz       r5, 0x4(r9)
/* 0C2D70 800C5D70 11296828 */  ps_sub    f9, f9, f13
/* 0C2D74 800C5D74 11071F7C */  ps_nmsub  f8, f7, f29, f3
/* 0C2D78 800C5D78 A0690002 */  lhz       r3, 0x2(r9)
/* 0C2D7C 800C5D7C 11AD4CE0 */  ps_merge11 f13, f13, f9
/* 0C2D80 800C5D80 106C4EF8 */  ps_msub   f3, f12, f27, f9
/* 0C2D84 800C5D84 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C2D88 800C5D88 104B682A */  ps_add    f2, f11, f13
/* 0C2D8C 800C5D8C 11081828 */  ps_sub    f8, f8, f3
/* 0C2D90 800C5D90 E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2D94 800C5D94 118344E0 */  ps_merge11 f12, f3, f8
/* 0C2D98 800C5D98 116B6828 */  ps_sub    f11, f11, f13
/* 0C2D9C 800C5D9C F4480008 */  psq_stu   f2, 0x8(r8), 0, qr0
/* 0C2DA0 800C5DA0 108A602A */  ps_add    f4, f10, f12
/* 0C2DA4 800C5DA4 102A6028 */  ps_sub    f1, f10, f12
/* 0C2DA8 800C5DA8 7CC60378 */  or        r6, r6, r0
/* 0C2DAC 800C5DAC F4880008 */  psq_stu   f4, 0x8(r8), 0, qr0
/* 0C2DB0 800C5DB0 10210CA0 */  ps_merge10 f1, f1, f1
/* 0C2DB4 800C5DB4 116B5CA0 */  ps_merge10 f11, f11, f11
/* 0C2DB8 800C5DB8 F4280008 */  psq_stu   f1, 0x8(r8), 0, qr0
/* 0C2DBC 800C5DBC 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2DC0 800C5DC0 F5680008 */  psq_stu   f11, 0x8(r8), 0, qr0
/* 0C2DC4 800C5DC4 4200FEBC */  bdnz      lbl_800C5C80
/* 0C2DC8 800C5DC8 480000CC */  b         lbl_800C5E94
lbl_800C5DCC:
/* 0C2DCC 800C5DCC E0495004 */  psq_l     f2, 0x4(r9), 0, qr5
/* 0C2DD0 800C5DD0 E1470008 */  psq_l     f10, 0x8(r7), 0, qr0
/* 0C2DD4 800C5DD4 104202B2 */  ps_mul    f2, f2, f10
/* 0C2DD8 800C5DD8 E1A95008 */  psq_l     f13, 0x8(r9), 0, qr5
/* 0C2DDC 800C5DDC E1270010 */  psq_l     f9, 0x10(r7), 0, qr0
/* 0C2DE0 800C5DE0 10871460 */  ps_merge01 f4, f7, f2
/* 0C2DE4 800C5DE4 E189500C */  psq_l     f12, 0xc(r9), 0, qr5
/* 0C2DE8 800C5DE8 10223C60 */  ps_merge01 f1, f2, f7
/* 0C2DEC 800C5DEC E1070018 */  psq_l     f8, 0x18(r7), 0, qr0
/* 0C2DF0 800C5DF0 39290010 */  addi      r9, r9, 0x10
/* 0C2DF4 800C5DF4 116D227A */  ps_madd   f11, f13, f9, f4
/* 0C2DF8 800C5DF8 114D227C */  ps_nmsub  f10, f13, f9, f4
/* 0C2DFC 800C5DFC 112C0A3A */  ps_madd   f9, f12, f8, f1
/* 0C2E00 800C5E00 110C0A3C */  ps_nmsub  f8, f12, f8, f1
/* 0C2E04 800C5E04 38E70020 */  addi      r7, r7, 0x20
/* 0C2E08 800C5E08 108B482A */  ps_add    f4, f11, f9
/* 0C2E0C 800C5E0C 118B4828 */  ps_sub    f12, f11, f9
/* 0C2E10 800C5E10 11A84EF8 */  ps_msub   f13, f8, f27, f9
/* 0C2E14 800C5E14 80C9000C */  lwz       r6, 0xc(r9)
/* 0C2E18 800C5E18 10685028 */  ps_sub    f3, f8, f10
/* 0C2E1C 800C5E1C 102A682A */  ps_add    f1, f10, f13
/* 0C2E20 800C5E20 11AA6828 */  ps_sub    f13, f10, f13
/* 0C2E24 800C5E24 10630732 */  ps_mul    f3, f3, f28
/* 0C2E28 800C5E28 80090008 */  lwz       r0, 0x8(r9)
/* 0C2E2C 800C5E2C 10240C20 */  ps_merge00 f1, f4, f1
/* 0C2E30 800C5E30 112A1FBC */  ps_nmsub  f9, f10, f30, f3
/* 0C2E34 800C5E34 11681F78 */  ps_msub   f11, f8, f29, f3
/* 0C2E38 800C5E38 80A90004 */  lwz       r5, 0x4(r9)
/* 0C2E3C 800C5E3C 11292028 */  ps_sub    f9, f9, f4
/* 0C2E40 800C5E40 11AD6420 */  ps_merge00 f13, f13, f12
/* 0C2E44 800C5E44 A0690002 */  lhz       r3, 0x2(r9)
/* 0C2E48 800C5E48 114C4EFA */  ps_madd   f10, f12, f27, f9
/* 0C2E4C 800C5E4C 11044CE0 */  ps_merge11 f8, f4, f9
/* 0C2E50 800C5E50 E0E95000 */  psq_l     f7, 0x0(r9), 0, qr5
/* 0C2E54 800C5E54 116B5028 */  ps_sub    f11, f11, f10
/* 0C2E58 800C5E58 1181402A */  ps_add    f12, f1, f8
/* 0C2E5C 800C5E5C E0C70000 */  psq_l     f6, 0x0(r7), 0, qr0
/* 0C2E60 800C5E60 116A5CE0 */  ps_merge11 f11, f10, f11
/* 0C2E64 800C5E64 10814028 */  ps_sub    f4, f1, f8
/* 0C2E68 800C5E68 10E701B2 */  ps_mul    f7, f7, f6
/* 0C2E6C 800C5E6C 114D582A */  ps_add    f10, f13, f11
/* 0C2E70 800C5E70 112D5828 */  ps_sub    f9, f13, f11
/* 0C2E74 800C5E74 114A54A0 */  ps_merge10 f10, f10, f10
/* 0C2E78 800C5E78 F5880008 */  psq_stu   f12, 0x8(r8), 0, qr0
/* 0C2E7C 800C5E7C 108424A0 */  ps_merge10 f4, f4, f4
/* 0C2E80 800C5E80 F5280008 */  psq_stu   f9, 0x8(r8), 0, qr0
/* 0C2E84 800C5E84 F5480008 */  psq_stu   f10, 0x8(r8), 0, qr0
/* 0C2E88 800C5E88 7CC60378 */  or        r6, r6, r0
/* 0C2E8C 800C5E8C F4880008 */  psq_stu   f4, 0x8(r8), 0, qr0
/* 0C2E90 800C5E90 4200FDF0 */  bdnz      lbl_800C5C80
lbl_800C5E94:
/* 0C2E94 800C5E94 80ED8F20 */  lwz       r7, D_8018BEA0@sda21(r0)
/* 0C2E98 800C5E98 7FC8F378 */  mr        r8, r30
/* 0C2E9C 800C5E9C 800D8F40 */  lwz       r0, D_8018BEC0@sda21(r0)
/* 0C2EA0 800C5EA0 E0E80000 */  psq_l     f7, 0x0(r8), 0, qr0
/* 0C2EA4 800C5EA4 5483103A */  slwi      r3, r4, 2
/* 0C2EA8 800C5EA8 E0C80080 */  psq_l     f6, 0x80(r8), 0, qr0
/* 0C2EAC 800C5EAC 5405103A */  slwi      r5, r0, 2
/* 0C2EB0 800C5EB0 E0A80040 */  psq_l     f5, 0x40(r8), 0, qr0
/* 0C2EB4 800C5EB4 7C661B78 */  mr        r6, r3
/* 0C2EB8 800C5EB8 1127302A */  ps_add    f9, f7, f6
/* 0C2EBC 800C5EBC E08800C0 */  psq_l     f4, 0xc0(r8), 0, qr0
/* 0C2EC0 800C5EC0 10673028 */  ps_sub    f3, f7, f6
/* 0C2EC4 800C5EC4 7CA62A14 */  add       r5, r6, r5
/* 0C2EC8 800C5EC8 1129F82A */  ps_add    f9, f9, f31
/* 0C2ECC 800C5ECC 38000003 */  li        r0, 0x3
/* 0C2ED0 800C5ED0 1105202A */  ps_add    f8, f5, f4
/* 0C2ED4 800C5ED4 7C873214 */  add       r4, r7, r6
/* 0C2ED8 800C5ED8 10452028 */  ps_sub    f2, f5, f4
/* 0C2EDC 800C5EDC 1089402A */  ps_add    f4, f9, f8
/* 0C2EE0 800C5EE0 7C672A14 */  add       r3, r7, r5
/* 0C2EE4 800C5EE4 1063F82A */  ps_add    f3, f3, f31
/* 0C2EE8 800C5EE8 7C0903A6 */  mtctr     r0
lbl_800C5EEC:
/* 0C2EEC 800C5EEC E1680020 */  psq_l     f11, 0x20(r8), 0, qr0
/* 0C2EF0 800C5EF0 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C2EF4 800C5EF4 E1480060 */  psq_l     f10, 0x60(r8), 0, qr0
/* 0C2EF8 800C5EF8 11894028 */  ps_sub    f12, f9, f8
/* 0C2EFC 800C5EFC 1023102A */  ps_add    f1, f3, f2
/* 0C2F00 800C5F00 E12800A0 */  psq_l     f9, 0xa0(r8), 0, qr0
/* 0C2F04 800C5F04 11A31028 */  ps_sub    f13, f3, f2
/* 0C2F08 800C5F08 E10800E0 */  psq_l     f8, 0xe0(r8), 0, qr0
/* 0C2F0C 800C5F0C 1069502A */  ps_add    f3, f9, f10
/* 0C2F10 800C5F10 11295028 */  ps_sub    f9, f9, f10
/* 0C2F14 800C5F14 39080008 */  addi      r8, r8, 0x8
/* 0C2F18 800C5F18 104B402A */  ps_add    f2, f11, f8
/* 0C2F1C 800C5F1C 116B4028 */  ps_sub    f11, f11, f8
/* 0C2F20 800C5F20 E0E80000 */  psq_l     f7, 0x0(r8), 0, qr0
/* 0C2F24 800C5F24 1102182A */  ps_add    f8, f2, f3
/* 0C2F28 800C5F28 11421828 */  ps_sub    f10, f2, f3
/* 0C2F2C 800C5F2C 1069582A */  ps_add    f3, f9, f11
/* 0C2F30 800C5F30 E0C80080 */  psq_l     f6, 0x80(r8), 0, qr0
/* 0C2F34 800C5F34 1044402A */  ps_add    f2, f4, f8
/* 0C2F38 800C5F38 10630732 */  ps_mul    f3, f3, f28
/* 0C2F3C 800C5F3C E0A80040 */  psq_l     f5, 0x40(r8), 0, qr0
/* 0C2F40 800C5F40 10044028 */  ps_sub    f0, f4, f8
/* 0C2F44 800C5F44 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C2F48 800C5F48 E08800C0 */  psq_l     f4, 0xc0(r8), 0, qr0
/* 0C2F4C 800C5F4C 11294028 */  ps_sub    f9, f9, f8
/* 0C2F50 800C5F50 38C60002 */  addi      r6, r6, 0x2
/* 0C2F54 800C5F54 F0446000 */  psq_st    f2, 0x0(r4), 0, qr6
/* 0C2F58 800C5F58 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C2F5C 800C5F5C 1041482A */  ps_add    f2, f1, f9
/* 0C2F60 800C5F60 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C2F64 800C5F64 10214828 */  ps_sub    f1, f1, f9
/* 0C2F68 800C5F68 F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C2F6C 800C5F6C 106D502A */  ps_add    f3, f13, f10
/* 0C2F70 800C5F70 116B502A */  ps_add    f11, f11, f10
/* 0C2F74 800C5F74 F0646010 */  psq_st    f3, 0x10(r4), 0, qr6
/* 0C2F78 800C5F78 38A50002 */  addi      r5, r5, 0x2
/* 0C2F7C 800C5F7C 104C5828 */  ps_sub    f2, f12, f11
/* 0C2F80 800C5F80 106C582A */  ps_add    f3, f12, f11
/* 0C2F84 800C5F84 F0446018 */  psq_st    f2, 0x18(r4), 0, qr6
/* 0C2F88 800C5F88 104D5028 */  ps_sub    f2, f13, f10
/* 0C2F8C 800C5F8C 1127302A */  ps_add    f9, f7, f6
/* 0C2F90 800C5F90 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C2F94 800C5F94 10673028 */  ps_sub    f3, f7, f6
/* 0C2F98 800C5F98 1129F82A */  ps_add    f9, f9, f31
/* 0C2F9C 800C5F9C F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C2FA0 800C5FA0 1105202A */  ps_add    f8, f5, f4
/* 0C2FA4 800C5FA4 10452028 */  ps_sub    f2, f5, f4
/* 0C2FA8 800C5FA8 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C2FAC 800C5FAC 7C873214 */  add       r4, r7, r6
/* 0C2FB0 800C5FB0 1089402A */  ps_add    f4, f9, f8
/* 0C2FB4 800C5FB4 F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C2FB8 800C5FB8 1063F82A */  ps_add    f3, f3, f31
/* 0C2FBC 800C5FBC 7C672A14 */  add       r3, r7, r5
/* 0C2FC0 800C5FC0 4200FF2C */  bdnz      lbl_800C5EEC
/* 0C2FC4 800C5FC4 E1680020 */  psq_l     f11, 0x20(r8), 0, qr0
/* 0C2FC8 800C5FC8 104246F8 */  ps_msub   f2, f2, f27, f8
/* 0C2FCC 800C5FCC E1480060 */  psq_l     f10, 0x60(r8), 0, qr0
/* 0C2FD0 800C5FD0 11894028 */  ps_sub    f12, f9, f8
/* 0C2FD4 800C5FD4 1023102A */  ps_add    f1, f3, f2
/* 0C2FD8 800C5FD8 E12800A0 */  psq_l     f9, 0xa0(r8), 0, qr0
/* 0C2FDC 800C5FDC 11A31028 */  ps_sub    f13, f3, f2
/* 0C2FE0 800C5FE0 E10800E0 */  psq_l     f8, 0xe0(r8), 0, qr0
/* 0C2FE4 800C5FE4 1069502A */  ps_add    f3, f9, f10
/* 0C2FE8 800C5FE8 11295028 */  ps_sub    f9, f9, f10
/* 0C2FEC 800C5FEC 104B402A */  ps_add    f2, f11, f8
/* 0C2FF0 800C5FF0 116B4028 */  ps_sub    f11, f11, f8
/* 0C2FF4 800C5FF4 1102182A */  ps_add    f8, f2, f3
/* 0C2FF8 800C5FF8 11421828 */  ps_sub    f10, f2, f3
/* 0C2FFC 800C5FFC 1069582A */  ps_add    f3, f9, f11
/* 0C3000 800C6000 1044402A */  ps_add    f2, f4, f8
/* 0C3004 800C6004 10630732 */  ps_mul    f3, f3, f28
/* 0C3008 800C6008 10044028 */  ps_sub    f0, f4, f8
/* 0C300C 800C600C 11291FBA */  ps_madd   f9, f9, f30, f3
/* 0C3010 800C6010 F0446000 */  psq_st    f2, 0x0(r4), 0, qr6
/* 0C3014 800C6014 11294028 */  ps_sub    f9, f9, f8
/* 0C3018 800C6018 116B1F78 */  ps_msub   f11, f11, f29, f3
/* 0C301C 800C601C F0036018 */  psq_st    f0, 0x18(r3), 0, qr6
/* 0C3020 800C6020 1041482A */  ps_add    f2, f1, f9
/* 0C3024 800C6024 114A4EF8 */  ps_msub   f10, f10, f27, f9
/* 0C3028 800C6028 10214828 */  ps_sub    f1, f1, f9
/* 0C302C 800C602C F0446008 */  psq_st    f2, 0x8(r4), 0, qr6
/* 0C3030 800C6030 106D502A */  ps_add    f3, f13, f10
/* 0C3034 800C6034 116B502A */  ps_add    f11, f11, f10
/* 0C3038 800C6038 F0236010 */  psq_st    f1, 0x10(r3), 0, qr6
/* 0C303C 800C603C F0646010 */  psq_st    f3, 0x10(r4), 0, qr6
/* 0C3040 800C6040 104C5828 */  ps_sub    f2, f12, f11
/* 0C3044 800C6044 106C582A */  ps_add    f3, f12, f11
/* 0C3048 800C6048 F0446018 */  psq_st    f2, 0x18(r4), 0, qr6
/* 0C304C 800C604C 104D5028 */  ps_sub    f2, f13, f10
/* 0C3050 800C6050 F0636000 */  psq_st    f3, 0x0(r3), 0, qr6
/* 0C3054 800C6054 F0436008 */  psq_st    f2, 0x8(r3), 0, qr6
/* 0C3058 800C6058 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0C305C 800C605C 880506A9 */  lbz       r0, 0x6a9(r5)
/* 0C3060 800C6060 28000000 */  cmplwi    r0, 0x0
/* 0C3064 800C6064 41820074 */  beq       lbl_800C60D8
/* 0C3068 800C6068 A08506AC */  lhz       r4, 0x6ac(r5)
/* 0C306C 800C606C 3804FFFF */  subi      r0, r4, 0x1
/* 0C3070 800C6070 B00506AC */  sth       r0, 0x6ac(r5)
/* 0C3074 800C6074 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C3078 800C6078 A00406AC */  lhz       r0, 0x6ac(r4)
/* 0C307C 800C607C 28000000 */  cmplwi    r0, 0x0
/* 0C3080 800C6080 40820058 */  bne       lbl_800C60D8
/* 0C3084 800C6084 A00406AA */  lhz       r0, 0x6aa(r4)
/* 0C3088 800C6088 B00406AC */  sth       r0, 0x6ac(r4)
/* 0C308C 800C608C 808D8F70 */  lwz       r4, D_8018BEF0@sda21(r0)
/* 0C3090 800C6090 806406A4 */  lwz       r3, 0x6a4(r4)
/* 0C3094 800C6094 38030006 */  addi      r0, r3, 0x6
/* 0C3098 800C6098 54030038 */  clrrwi    r3, r0, 3
/* 0C309C 800C609C 38030001 */  addi      r0, r3, 0x1
/* 0C30A0 800C60A0 900406A4 */  stw       r0, 0x6a4(r4)
/* 0C30A4 800C60A4 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C30A8 800C60A8 800306A4 */  lwz       r0, 0x6a4(r3)
/* 0C30AC 800C60AC 28000020 */  cmplwi    r0, 0x20
/* 0C30B0 800C60B0 4081000C */  ble       lbl_800C60BC
/* 0C30B4 800C60B4 38000021 */  li        r0, 0x21
/* 0C30B8 800C60B8 900306A4 */  stw       r0, 0x6a4(r3)
lbl_800C60BC:
/* 0C30BC 800C60BC 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C30C0 800C60C0 38000000 */  li        r0, 0x0
/* 0C30C4 800C60C4 B0030684 */  sth       r0, 0x684(r3)
/* 0C30C8 800C60C8 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C30CC 800C60CC B003068A */  sth       r0, 0x68a(r3)
/* 0C30D0 800C60D0 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C30D4 800C60D4 B0030690 */  sth       r0, 0x690(r3)
lbl_800C60D8:
/* 0C30D8 800C60D8 3BBD0001 */  addi      r29, r29, 0x1
lbl_800C60DC:
/* 0C30DC 800C60DC 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C30E0 800C60E0 57A4063E */  clrlwi    r4, r29, 24
/* 0C30E4 800C60E4 A0030696 */  lhz       r0, 0x696(r3)
/* 0C30E8 800C60E8 7C040000 */  cmpw      r4, r0
/* 0C30EC 800C60EC 4180E668 */  blt       lbl_800C4754
/* 0C30F0 800C60F0 579DE13E */  srwi      r29, r28, 4
/* 0C30F4 800C60F4 806306B0 */  lwz       r3, 0x6b0(r3)
/* 0C30F8 800C60F8 809E010C */  lwz       r4, 0x10c(r30)
/* 0C30FC 800C60FC 5785202E */  extlwi    r5, r28, 24, 4
/* 0C3100 800C6100 4BFD6E25 */  bl        LCStoreData
/* 0C3104 800C6104 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C3108 800C6108 57A53032 */  slwi      r5, r29, 6
/* 0C310C 800C610C 809E0110 */  lwz       r4, 0x110(r30)
/* 0C3110 800C6110 806306B4 */  lwz       r3, 0x6b4(r3)
/* 0C3114 800C6114 4BFD6E11 */  bl        LCStoreData
/* 0C3118 800C6118 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C311C 800C611C 57A53032 */  slwi      r5, r29, 6
/* 0C3120 800C6120 809E0114 */  lwz       r4, 0x114(r30)
/* 0C3124 800C6124 806306B8 */  lwz       r3, 0x6b8(r3)
/* 0C3128 800C6128 4BFD6DFD */  bl        LCStoreData
/* 0C312C 800C612C 80AD8F70 */  lwz       r5, D_8018BEF0@sda21(r0)
/* 0C3130 800C6130 57A0402E */  slwi      r0, r29, 8
/* 0C3134 800C6134 57A43032 */  slwi      r4, r29, 6
/* 0C3138 800C6138 806506B0 */  lwz       r3, 0x6b0(r5)
/* 0C313C 800C613C 7C030214 */  add       r0, r3, r0
/* 0C3140 800C6140 900506B0 */  stw       r0, 0x6b0(r5)
/* 0C3144 800C6144 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C3148 800C6148 800306B4 */  lwz       r0, 0x6b4(r3)
/* 0C314C 800C614C 7C002214 */  add       r0, r0, r4
/* 0C3150 800C6150 900306B4 */  stw       r0, 0x6b4(r3)
/* 0C3154 800C6154 806D8F70 */  lwz       r3, D_8018BEF0@sda21(r0)
/* 0C3158 800C6158 800306B8 */  lwz       r0, 0x6b8(r3)
/* 0C315C 800C615C 7C002214 */  add       r0, r0, r4
/* 0C3160 800C6160 900306B8 */  stw       r0, 0x6b8(r3)
/* 0C3164 800C6164 80010044 */  lwz       r0, 0x44(r1)
/* 0C3168 800C6168 CBE10038 */  lfd       f31, 0x38(r1)
/* 0C316C 800C616C CBC10030 */  lfd       f30, 0x30(r1)
/* 0C3170 800C6170 CBA10028 */  lfd       f29, 0x28(r1)
/* 0C3174 800C6174 CB810020 */  lfd       f28, 0x20(r1)
/* 0C3178 800C6178 CB610018 */  lfd       f27, 0x18(r1)
/* 0C317C 800C617C 83E10014 */  lwz       r31, 0x14(r1)
/* 0C3180 800C6180 83C10010 */  lwz       r30, 0x10(r1)
/* 0C3184 800C6184 83A1000C */  lwz       r29, 0xc(r1)
/* 0C3188 800C6188 83810008 */  lwz       r28, 0x8(r1)
/* 0C318C 800C618C 38210040 */  addi      r1, r1, 0x40
/* 0C3190 800C6190 7C0803A6 */  mtlr      r0
/* 0C3194 800C6194 4E800020 */  blr

glabel __THPHuffDecodeDCTCompY
/* 0C3198 800C6198 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0C319C 800C619C 93E1001C */  stw       r31, 0x1c(r1)
/* 0C31A0 800C61A0 93C10018 */  stw       r30, 0x18(r1)
/* 0C31A4 800C61A4 93A10014 */  stw       r29, 0x14(r1)
/* 0C31A8 800C61A8 7C0027EC */  dcbz      r0, r4
/* 0C31AC 800C61AC 818D8E60 */  lwz       r12, D_8018BDE0@sda21(r0)
/* 0C31B0 800C61B0 816306A4 */  lwz       r11, 0x6a4(r3)
/* 0C31B4 800C61B4 392C0020 */  addi      r9, r12, 0x20
/* 0C31B8 800C61B8 814306A0 */  lwz       r10, 0x6a0(r3)
/* 0C31BC 800C61BC 38AB0004 */  addi      r5, r11, 0x4
/* 0C31C0 800C61C0 2C0B001C */  cmpwi     r11, 0x1c
/* 0C31C4 800C61C4 5D482EFE */  rlwnm     r8, r10, r5, 27, 31
/* 0C31C8 800C61C8 418100C4 */  bgt       lbl_800C628C
/* 0C31CC 800C61CC 7CAC40AE */  lbzx      r5, r12, r8
/* 0C31D0 800C61D0 7D2940AE */  lbzx      r9, r9, r8
/* 0C31D4 800C61D4 2C0500FF */  cmpwi     r5, 0xff
/* 0C31D8 800C61D8 41820010 */  beq       lbl_800C61E8
/* 0C31DC 800C61DC 7D6B4A14 */  add       r11, r11, r9
/* 0C31E0 800C61E0 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C31E4 800C61E4 4800024C */  b         lbl_800C6430
lbl_800C61E8:
/* 0C31E8 800C61E8 38CC0044 */  addi      r6, r12, 0x44
/* 0C31EC 800C61EC 396B0005 */  addi      r11, r11, 0x5
/* 0C31F0 800C61F0 38000014 */  li        r0, 0x14
/* 0C31F4 800C61F4 38A00005 */  li        r5, 0x5
/* 0C31F8 800C61F8 38C60014 */  addi      r6, r6, 0x14
lbl_800C61FC:
/* 0C31FC 800C61FC 2C0B0021 */  cmpwi     r11, 0x21
/* 0C3200 800C6200 5508083C */  slwi      r8, r8, 1
/* 0C3204 800C6204 41820018 */  beq       lbl_800C621C
/* 0C3208 800C6208 5D495FFE */  rlwnm     r9, r10, r11, 31, 31
/* 0C320C 800C620C 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3210 800C6210 7D084B78 */  or        r8, r8, r9
/* 0C3214 800C6214 396B0001 */  addi      r11, r11, 0x1
/* 0C3218 800C6218 48000048 */  b         lbl_800C6260
lbl_800C621C:
/* 0C321C 800C621C 8123069C */  lwz       r9, 0x69c(r3)
/* 0C3220 800C6220 39600001 */  li        r11, 0x1
/* 0C3224 800C6224 85490004 */  lwzu      r10, 0x4(r9)
/* 0C3228 800C6228 84060004 */  lwzu      r0, 0x4(r6)
/* 0C322C 800C622C 9123069C */  stw       r9, 0x69c(r3)
/* 0C3230 800C6230 51480FFE */  rlwimi    r8, r10, 1, 31, 31
/* 0C3234 800C6234 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C3238 800C6238 48000014 */  b         lbl_800C624C
lbl_800C623C:
/* 0C323C 800C623C 5508083C */  slwi      r8, r8, 1
/* 0C3240 800C6240 5D495FFE */  rlwnm     r9, r10, r11, 31, 31
/* 0C3244 800C6244 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3248 800C6248 7D084B78 */  or        r8, r8, r9
lbl_800C624C:
/* 0C324C 800C624C 7C080000 */  cmpw      r8, r0
/* 0C3250 800C6250 396B0001 */  addi      r11, r11, 0x1
/* 0C3254 800C6254 38A50001 */  addi      r5, r5, 0x1
/* 0C3258 800C6258 4181FFE4 */  bgt       lbl_800C623C
/* 0C325C 800C625C 48000010 */  b         lbl_800C626C
lbl_800C6260:
/* 0C3260 800C6260 7C080000 */  cmpw      r8, r0
/* 0C3264 800C6264 38A50001 */  addi      r5, r5, 0x1
/* 0C3268 800C6268 4181FF94 */  bgt       lbl_800C61FC
lbl_800C626C:
/* 0C326C 800C626C 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C3270 800C6270 54A0103A */  slwi      r0, r5, 2
/* 0C3274 800C6274 7CAC0214 */  add       r5, r12, r0
/* 0C3278 800C6278 80CC0040 */  lwz       r6, 0x40(r12)
/* 0C327C 800C627C 8005008C */  lwz       r0, 0x8c(r5)
/* 0C3280 800C6280 7C003214 */  add       r0, r0, r6
/* 0C3284 800C6284 7CA800AE */  lbzx      r5, r8, r0
/* 0C3288 800C6288 480001A8 */  b         lbl_800C6430
lbl_800C628C:
/* 0C328C 800C628C 2C0B0021 */  cmpwi     r11, 0x21
/* 0C3290 800C6290 8103069C */  lwz       r8, 0x69c(r3)
/* 0C3294 800C6294 418200B4 */  beq       lbl_800C6348
/* 0C3298 800C6298 2C0B0020 */  cmpwi     r11, 0x20
/* 0C329C 800C629C 5D452EFE */  rlwnm     r5, r10, r5, 27, 31
/* 0C32A0 800C62A0 4182002C */  beq       lbl_800C62CC
/* 0C32A4 800C62A4 7D0C28AE */  lbzx      r8, r12, r5
/* 0C32A8 800C62A8 7D2928AE */  lbzx      r9, r9, r5
/* 0C32AC 800C62AC 2C0800FF */  cmpwi     r8, 0xff
/* 0C32B0 800C62B0 7CAB4A14 */  add       r5, r11, r9
/* 0C32B4 800C62B4 418200F8 */  beq       lbl_800C63AC
/* 0C32B8 800C62B8 2C050021 */  cmpwi     r5, 0x21
/* 0C32BC 800C62BC 90A306A4 */  stw       r5, 0x6a4(r3)
/* 0C32C0 800C62C0 418100EC */  bgt       lbl_800C63AC
/* 0C32C4 800C62C4 7D054378 */  mr        r5, r8
/* 0C32C8 800C62C8 48000168 */  b         lbl_800C6430
lbl_800C62CC:
/* 0C32CC 800C62CC 85480004 */  lwzu      r10, 0x4(r8)
/* 0C32D0 800C62D0 9103069C */  stw       r8, 0x69c(r3)
/* 0C32D4 800C62D4 5145273E */  rlwimi    r5, r10, 4, 28, 31
/* 0C32D8 800C62D8 7D0C28AE */  lbzx      r8, r12, r5
/* 0C32DC 800C62DC 7D2928AE */  lbzx      r9, r9, r5
/* 0C32E0 800C62E0 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C32E4 800C62E4 2C0800FF */  cmpwi     r8, 0xff
/* 0C32E8 800C62E8 912306A4 */  stw       r9, 0x6a4(r3)
/* 0C32EC 800C62EC 4182000C */  beq       lbl_800C62F8
/* 0C32F0 800C62F0 7D054378 */  mr        r5, r8
/* 0C32F4 800C62F4 4800013C */  b         lbl_800C6430
lbl_800C62F8:
/* 0C32F8 800C62F8 38CC0044 */  addi      r6, r12, 0x44
/* 0C32FC 800C62FC 39600014 */  li        r11, 0x14
/* 0C3300 800C6300 38C60014 */  addi      r6, r6, 0x14
/* 0C3304 800C6304 54A8D808 */  slwi      r8, r5, 27
/* 0C3308 800C6308 39600005 */  li        r11, 0x5
/* 0C330C 800C630C 5148F87E */  rlwimi    r8, r10, 31, 1, 31
lbl_800C6310:
/* 0C3310 800C6310 214B001F */  subfic    r10, r11, 0x1f
/* 0C3314 800C6314 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3318 800C6318 7D055430 */  srw       r5, r8, r10
/* 0C331C 800C631C 7C050000 */  cmpw      r5, r0
/* 0C3320 800C6320 396B0001 */  addi      r11, r11, 0x1
/* 0C3324 800C6324 4181FFEC */  bgt       lbl_800C6310
/* 0C3328 800C6328 916306A4 */  stw       r11, 0x6a4(r3)
lbl_800C632C:
/* 0C332C 800C632C 5560103A */  slwi      r0, r11, 2
/* 0C3330 800C6330 80EC0040 */  lwz       r7, 0x40(r12)
/* 0C3334 800C6334 7CCC0214 */  add       r6, r12, r0
/* 0C3338 800C6338 8006008C */  lwz       r0, 0x8c(r6)
/* 0C333C 800C633C 7C003A14 */  add       r0, r0, r7
/* 0C3340 800C6340 7CA500AE */  lbzx      r5, r5, r0
/* 0C3344 800C6344 480000EC */  b         lbl_800C6430
lbl_800C6348:
/* 0C3348 800C6348 85480004 */  lwzu      r10, 0x4(r8)
/* 0C334C 800C634C 55452EFE */  srwi      r5, r10, 27
/* 0C3350 800C6350 9103069C */  stw       r8, 0x69c(r3)
/* 0C3354 800C6354 7D6C28AE */  lbzx      r11, r12, r5
/* 0C3358 800C6358 7D2928AE */  lbzx      r9, r9, r5
/* 0C335C 800C635C 2C0B00FF */  cmpwi     r11, 0xff
/* 0C3360 800C6360 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C3364 800C6364 39290001 */  addi      r9, r9, 0x1
/* 0C3368 800C6368 41820010 */  beq       lbl_800C6378
/* 0C336C 800C636C 912306A4 */  stw       r9, 0x6a4(r3)
/* 0C3370 800C6370 7D655B78 */  mr        r5, r11
/* 0C3374 800C6374 480000BC */  b         lbl_800C6430
lbl_800C6378:
/* 0C3378 800C6378 39600005 */  li        r11, 0x5
/* 0C337C 800C637C 38C00014 */  li        r6, 0x14
lbl_800C6380:
/* 0C3380 800C6380 210B001F */  subfic    r8, r11, 0x1f
/* 0C3384 800C6384 396B0001 */  addi      r11, r11, 0x1
/* 0C3388 800C6388 38C60004 */  addi      r6, r6, 0x4
/* 0C338C 800C638C 7D454430 */  srw       r5, r10, r8
/* 0C3390 800C6390 7CEC3214 */  add       r7, r12, r6
/* 0C3394 800C6394 80070044 */  lwz       r0, 0x44(r7)
/* 0C3398 800C6398 7C050000 */  cmpw      r5, r0
/* 0C339C 800C639C 4181FFE4 */  bgt       lbl_800C6380
/* 0C33A0 800C63A0 380B0001 */  addi      r0, r11, 0x1
/* 0C33A4 800C63A4 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C33A8 800C63A8 4BFFFF84 */  b         lbl_800C632C
lbl_800C63AC:
/* 0C33AC 800C63AC 200B0021 */  subfic    r0, r11, 0x21
/* 0C33B0 800C63B0 38A0FFFF */  li        r5, -0x1
/* 0C33B4 800C63B4 7CA70030 */  slw       r7, r5, r0
/* 0C33B8 800C63B8 7D453878 */  andc      r5, r10, r7
/* 0C33BC 800C63BC 38EC0044 */  addi      r7, r12, 0x44
/* 0C33C0 800C63C0 8103069C */  lwz       r8, 0x69c(r3)
/* 0C33C4 800C63C4 20CB0021 */  subfic    r6, r11, 0x21
/* 0C33C8 800C63C8 39660001 */  addi      r11, r6, 0x1
/* 0C33CC 800C63CC 54C6103A */  slwi      r6, r6, 2
/* 0C33D0 800C63D0 85480004 */  lwzu      r10, 0x4(r8)
/* 0C33D4 800C63D4 7CE73214 */  add       r7, r7, r6
/* 0C33D8 800C63D8 9103069C */  stw       r8, 0x69c(r3)
/* 0C33DC 800C63DC 54A5083C */  slwi      r5, r5, 1
/* 0C33E0 800C63E0 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C33E4 800C63E4 51450FFE */  rlwimi    r5, r10, 1, 31, 31
/* 0C33E8 800C63E8 84C70004 */  lwzu      r6, 0x4(r7)
/* 0C33EC 800C63EC 39000002 */  li        r8, 0x2
/* 0C33F0 800C63F0 48000018 */  b         lbl_800C6408
lbl_800C63F4:
/* 0C33F4 800C63F4 54A5083C */  slwi      r5, r5, 1
/* 0C33F8 800C63F8 396B0001 */  addi      r11, r11, 0x1
/* 0C33FC 800C63FC 84C70004 */  lwzu      r6, 0x4(r7)
/* 0C3400 800C6400 7CA54A14 */  add       r5, r5, r9
/* 0C3404 800C6404 39080001 */  addi      r8, r8, 0x1
lbl_800C6408:
/* 0C3408 800C6408 7C053000 */  cmpw      r5, r6
/* 0C340C 800C640C 5D4947FE */  rlwnm     r9, r10, r8, 31, 31
/* 0C3410 800C6410 4181FFE4 */  bgt       lbl_800C63F4
/* 0C3414 800C6414 910306A4 */  stw       r8, 0x6a4(r3)
/* 0C3418 800C6418 5560103A */  slwi      r0, r11, 2
/* 0C341C 800C641C 7CCC0214 */  add       r6, r12, r0
/* 0C3420 800C6420 80EC0040 */  lwz       r7, 0x40(r12)
/* 0C3424 800C6424 8006008C */  lwz       r0, 0x8c(r6)
/* 0C3428 800C6428 7C003A14 */  add       r0, r0, r7
/* 0C342C 800C642C 7CA500AE */  lbzx      r5, r5, r0
lbl_800C6430:
/* 0C3430 800C6430 38000020 */  li        r0, 0x20
/* 0C3434 800C6434 7C0407EC */  dcbz      r4, r0
/* 0C3438 800C6438 38E00000 */  li        r7, 0x0
/* 0C343C 800C643C 38000040 */  li        r0, 0x40
/* 0C3440 800C6440 7C0407EC */  dcbz      r4, r0
/* 0C3444 800C6444 2C050000 */  cmpwi     r5, 0x0
/* 0C3448 800C6448 41820084 */  beq       lbl_800C64CC
/* 0C344C 800C644C 80E306A4 */  lwz       r7, 0x6a4(r3)
/* 0C3450 800C6450 21070021 */  subfic    r8, r7, 0x21
/* 0C3454 800C6454 80C306A0 */  lwz       r6, 0x6a0(r3)
/* 0C3458 800C6458 7D282811 */  subfc.    r9, r8, r5
/* 0C345C 800C645C 3947FFFF */  subi      r10, r7, 0x1
/* 0C3460 800C6460 4181001C */  bgt       lbl_800C647C
/* 0C3464 800C6464 7C072A14 */  add       r0, r7, r5
/* 0C3468 800C6468 7CC75030 */  slw       r7, r6, r10
/* 0C346C 800C646C 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C3470 800C6470 20050020 */  subfic    r0, r5, 0x20
/* 0C3474 800C6474 7CE70430 */  srw       r7, r7, r0
/* 0C3478 800C6478 48000030 */  b         lbl_800C64A8
lbl_800C647C:
/* 0C347C 800C647C 80E3069C */  lwz       r7, 0x69c(r3)
/* 0C3480 800C6480 7CC05030 */  slw       r0, r6, r10
/* 0C3484 800C6484 84C70004 */  lwzu      r6, 0x4(r7)
/* 0C3488 800C6488 39290001 */  addi      r9, r9, 0x1
/* 0C348C 800C648C 90C306A0 */  stw       r6, 0x6a0(r3)
/* 0C3490 800C6490 7CC64430 */  srw       r6, r6, r8
/* 0C3494 800C6494 90E3069C */  stw       r7, 0x69c(r3)
/* 0C3498 800C6498 7C060214 */  add       r0, r6, r0
/* 0C349C 800C649C 912306A4 */  stw       r9, 0x6a4(r3)
/* 0C34A0 800C64A0 21250020 */  subfic    r9, r5, 0x20
/* 0C34A4 800C64A4 7C074C30 */  srw       r7, r0, r9
lbl_800C64A8:
/* 0C34A8 800C64A8 7CE00734 */  extsh     r0, r7
/* 0C34AC 800C64AC 7C060034 */  cntlzw    r6, r0
/* 0C34B0 800C64B0 20050020 */  subfic    r0, r5, 0x20
/* 0C34B4 800C64B4 7C060000 */  cmpw      r6, r0
/* 0C34B8 800C64B8 40810014 */  ble       lbl_800C64CC
/* 0C34BC 800C64BC 3800FFFF */  li        r0, -0x1
/* 0C34C0 800C64C0 7C002830 */  slw       r0, r0, r5
/* 0C34C4 800C64C4 7CE03A14 */  add       r7, r0, r7
/* 0C34C8 800C64C8 38E70001 */  addi      r7, r7, 0x1
lbl_800C64CC:
/* 0C34CC 800C64CC 38000060 */  li        r0, 0x60
/* 0C34D0 800C64D0 7C0407EC */  dcbz      r4, r0
/* 0C34D4 800C64D4 A8030684 */  lha       r0, 0x684(r3)
/* 0C34D8 800C64D8 7C003A14 */  add       r0, r0, r7
/* 0C34DC 800C64DC B0030684 */  sth       r0, 0x684(r3)
/* 0C34E0 800C64E0 B0040000 */  sth       r0, 0x0(r4)
/* 0C34E4 800C64E4 810D8EC0 */  lwz       r8, D_8018BE40@sda21(r0)
/* 0C34E8 800C64E8 80C306A4 */  lwz       r6, 0x6a4(r3)
/* 0C34EC 800C64EC 38E80020 */  addi      r7, r8, 0x20
/* 0C34F0 800C64F0 800306A0 */  lwz       r0, 0x6a0(r3)
/* 0C34F4 800C64F4 38A00001 */  li        r5, 0x1
/* 0C34F8 800C64F8 3D20800D */  lis       r9, D_800D1DF0@ha
/* 0C34FC 800C64FC 39491DF0 */  addi      r10, r9, D_800D1DF0@l
/* 0C3500 800C6500 480002F0 */  b         lbl_800C67F0
lbl_800C6504:
/* 0C3504 800C6504 3BE60004 */  addi      r31, r6, 0x4
/* 0C3508 800C6508 2C06001C */  cmpwi     r6, 0x1c
/* 0C350C 800C650C 5C0CFEFE */  rlwnm     r12, r0, r31, 27, 31
/* 0C3510 800C6510 418100B8 */  bgt       lbl_800C65C8
/* 0C3514 800C6514 7FC860AE */  lbzx      r30, r8, r12
/* 0C3518 800C6518 7FE760AE */  lbzx      r31, r7, r12
/* 0C351C 800C651C 2C1E00FF */  cmpwi     r30, 0xff
/* 0C3520 800C6520 4182000C */  beq       lbl_800C652C
/* 0C3524 800C6524 7CC6FA14 */  add       r6, r6, r31
/* 0C3528 800C6528 48000228 */  b         lbl_800C6750
lbl_800C652C:
/* 0C352C 800C652C 38C60005 */  addi      r6, r6, 0x5
/* 0C3530 800C6530 39280044 */  addi      r9, r8, 0x44
/* 0C3534 800C6534 39600014 */  li        r11, 0x14
/* 0C3538 800C6538 3BE00005 */  li        r31, 0x5
/* 0C353C 800C653C 39290014 */  addi      r9, r9, 0x14
lbl_800C6540:
/* 0C3540 800C6540 2C060021 */  cmpwi     r6, 0x21
/* 0C3544 800C6544 558C083C */  slwi      r12, r12, 1
/* 0C3548 800C6548 41820018 */  beq       lbl_800C6560
/* 0C354C 800C654C 5C1E37FE */  rlwnm     r30, r0, r6, 31, 31
/* 0C3550 800C6550 85690004 */  lwzu      r11, 0x4(r9)
/* 0C3554 800C6554 7D8CF378 */  or        r12, r12, r30
/* 0C3558 800C6558 38C60001 */  addi      r6, r6, 0x1
/* 0C355C 800C655C 48000044 */  b         lbl_800C65A0
lbl_800C6560:
/* 0C3560 800C6560 83C3069C */  lwz       r30, 0x69c(r3)
/* 0C3564 800C6564 38C00001 */  li        r6, 0x1
/* 0C3568 800C6568 841E0004 */  lwzu      r0, 0x4(r30)
/* 0C356C 800C656C 85690004 */  lwzu      r11, 0x4(r9)
/* 0C3570 800C6570 93C3069C */  stw       r30, 0x69c(r3)
/* 0C3574 800C6574 500C0FFE */  rlwimi    r12, r0, 1, 31, 31
/* 0C3578 800C6578 48000014 */  b         lbl_800C658C
lbl_800C657C:
/* 0C357C 800C657C 558C083C */  slwi      r12, r12, 1
/* 0C3580 800C6580 5C1E37FE */  rlwnm     r30, r0, r6, 31, 31
/* 0C3584 800C6584 85690004 */  lwzu      r11, 0x4(r9)
/* 0C3588 800C6588 7D8CF378 */  or        r12, r12, r30
lbl_800C658C:
/* 0C358C 800C658C 7C0C5800 */  cmpw      r12, r11
/* 0C3590 800C6590 38C60001 */  addi      r6, r6, 0x1
/* 0C3594 800C6594 3BFF0001 */  addi      r31, r31, 0x1
/* 0C3598 800C6598 4181FFE4 */  bgt       lbl_800C657C
/* 0C359C 800C659C 48000010 */  b         lbl_800C65AC
lbl_800C65A0:
/* 0C35A0 800C65A0 7C0C5800 */  cmpw      r12, r11
/* 0C35A4 800C65A4 3BFF0001 */  addi      r31, r31, 0x1
/* 0C35A8 800C65A8 4181FF98 */  bgt       lbl_800C6540
lbl_800C65AC:
/* 0C35AC 800C65AC 57E9103A */  slwi      r9, r31, 2
/* 0C35B0 800C65B0 81680040 */  lwz       r11, 0x40(r8)
/* 0C35B4 800C65B4 7D284A14 */  add       r9, r8, r9
/* 0C35B8 800C65B8 8129008C */  lwz       r9, 0x8c(r9)
/* 0C35BC 800C65BC 7D295A14 */  add       r9, r9, r11
/* 0C35C0 800C65C0 7FCC48AE */  lbzx      r30, r12, r9
/* 0C35C4 800C65C4 4800018C */  b         lbl_800C6750
lbl_800C65C8:
/* 0C35C8 800C65C8 2C060021 */  cmpwi     r6, 0x21
/* 0C35CC 800C65CC 8183069C */  lwz       r12, 0x69c(r3)
/* 0C35D0 800C65D0 41820034 */  beq       lbl_800C6604
/* 0C35D4 800C65D4 2C060020 */  cmpwi     r6, 0x20
/* 0C35D8 800C65D8 5C1FFEFE */  rlwnm     r31, r0, r31, 27, 31
/* 0C35DC 800C65DC 4182008C */  beq       lbl_800C6668
/* 0C35E0 800C65E0 7FC8F8AE */  lbzx      r30, r8, r31
/* 0C35E4 800C65E4 7FA7F8AE */  lbzx      r29, r7, r31
/* 0C35E8 800C65E8 2C1E00FF */  cmpwi     r30, 0xff
/* 0C35EC 800C65EC 7FE6EA14 */  add       r31, r6, r29
/* 0C35F0 800C65F0 418200E4 */  beq       lbl_800C66D4
/* 0C35F4 800C65F4 2C1F0021 */  cmpwi     r31, 0x21
/* 0C35F8 800C65F8 418100DC */  bgt       lbl_800C66D4
/* 0C35FC 800C65FC 7FE6FB78 */  mr        r6, r31
/* 0C3600 800C6600 48000150 */  b         lbl_800C6750
lbl_800C6604:
/* 0C3604 800C6604 840C0004 */  lwzu      r0, 0x4(r12)
/* 0C3608 800C6608 541F2EFE */  srwi      r31, r0, 27
/* 0C360C 800C660C 9183069C */  stw       r12, 0x69c(r3)
/* 0C3610 800C6610 7FC8F8AE */  lbzx      r30, r8, r31
/* 0C3614 800C6614 7D87F8AE */  lbzx      r12, r7, r31
/* 0C3618 800C6618 2C1E00FF */  cmpwi     r30, 0xff
/* 0C361C 800C661C 38CC0001 */  addi      r6, r12, 0x1
/* 0C3620 800C6620 41820008 */  beq       lbl_800C6628
/* 0C3624 800C6624 4800012C */  b         lbl_800C6750
lbl_800C6628:
/* 0C3628 800C6628 3BC00005 */  li        r30, 0x5
/* 0C362C 800C662C 38C00014 */  li        r6, 0x14
lbl_800C6630:
/* 0C3630 800C6630 219E001F */  subfic    r12, r30, 0x1f
/* 0C3634 800C6634 3BDE0001 */  addi      r30, r30, 0x1
/* 0C3638 800C6638 38C60004 */  addi      r6, r6, 0x4
/* 0C363C 800C663C 7C1F6430 */  srw       r31, r0, r12
/* 0C3640 800C6640 7D883214 */  add       r12, r8, r6
/* 0C3644 800C6644 812C0044 */  lwz       r9, 0x44(r12)
/* 0C3648 800C6648 7C1F4800 */  cmpw      r31, r9
/* 0C364C 800C664C 4181FFE4 */  bgt       lbl_800C6630
/* 0C3650 800C6650 81680040 */  lwz       r11, 0x40(r8)
/* 0C3654 800C6654 38DE0001 */  addi      r6, r30, 0x1
/* 0C3658 800C6658 812C008C */  lwz       r9, 0x8c(r12)
/* 0C365C 800C665C 7D295A14 */  add       r9, r9, r11
/* 0C3660 800C6660 7FDF48AE */  lbzx      r30, r31, r9
/* 0C3664 800C6664 480000EC */  b         lbl_800C6750
lbl_800C6668:
/* 0C3668 800C6668 840C0004 */  lwzu      r0, 0x4(r12)
/* 0C366C 800C666C 9183069C */  stw       r12, 0x69c(r3)
/* 0C3670 800C6670 501F273E */  rlwimi    r31, r0, 4, 28, 31
/* 0C3674 800C6674 7FC8F8AE */  lbzx      r30, r8, r31
/* 0C3678 800C6678 7CC7F8AE */  lbzx      r6, r7, r31
/* 0C367C 800C667C 2C1E00FF */  cmpwi     r30, 0xff
/* 0C3680 800C6680 41820008 */  beq       lbl_800C6688
/* 0C3684 800C6684 480000CC */  b         lbl_800C6750
lbl_800C6688:
/* 0C3688 800C6688 39280044 */  addi      r9, r8, 0x44
/* 0C368C 800C668C 38C00014 */  li        r6, 0x14
/* 0C3690 800C6690 39290014 */  addi      r9, r9, 0x14
/* 0C3694 800C6694 57ECD808 */  slwi      r12, r31, 27
/* 0C3698 800C6698 38C00005 */  li        r6, 0x5
/* 0C369C 800C669C 500CF87E */  rlwimi    r12, r0, 31, 1, 31
lbl_800C66A0:
/* 0C36A0 800C66A0 23C6001F */  subfic    r30, r6, 0x1f
/* 0C36A4 800C66A4 85690004 */  lwzu      r11, 0x4(r9)
/* 0C36A8 800C66A8 7D9FF430 */  srw       r31, r12, r30
/* 0C36AC 800C66AC 7C1F5800 */  cmpw      r31, r11
/* 0C36B0 800C66B0 38C60001 */  addi      r6, r6, 0x1
/* 0C36B4 800C66B4 4181FFEC */  bgt       lbl_800C66A0
/* 0C36B8 800C66B8 54C9103A */  slwi      r9, r6, 2
/* 0C36BC 800C66BC 81680040 */  lwz       r11, 0x40(r8)
/* 0C36C0 800C66C0 7D284A14 */  add       r9, r8, r9
/* 0C36C4 800C66C4 8129008C */  lwz       r9, 0x8c(r9)
/* 0C36C8 800C66C8 7D295A14 */  add       r9, r9, r11
/* 0C36CC 800C66CC 7FDF48AE */  lbzx      r30, r31, r9
/* 0C36D0 800C66D0 48000080 */  b         lbl_800C6750
lbl_800C66D4:
/* 0C36D4 800C66D4 21260021 */  subfic    r9, r6, 0x21
/* 0C36D8 800C66D8 3960FFFF */  li        r11, -0x1
/* 0C36DC 800C66DC 7D694830 */  slw       r9, r11, r9
/* 0C36E0 800C66E0 7C1F4878 */  andc      r31, r0, r9
/* 0C36E4 800C66E4 39280044 */  addi      r9, r8, 0x44
/* 0C36E8 800C66E8 8183069C */  lwz       r12, 0x69c(r3)
/* 0C36EC 800C66EC 21660021 */  subfic    r11, r6, 0x21
/* 0C36F0 800C66F0 3BCB0001 */  addi      r30, r11, 0x1
/* 0C36F4 800C66F4 556B103A */  slwi      r11, r11, 2
/* 0C36F8 800C66F8 840C0004 */  lwzu      r0, 0x4(r12)
/* 0C36FC 800C66FC 7D295A14 */  add       r9, r9, r11
/* 0C3700 800C6700 9183069C */  stw       r12, 0x69c(r3)
/* 0C3704 800C6704 57FF083C */  slwi      r31, r31, 1
/* 0C3708 800C6708 501F0FFE */  rlwimi    r31, r0, 1, 31, 31
/* 0C370C 800C670C 85690004 */  lwzu      r11, 0x4(r9)
/* 0C3710 800C6710 38C00002 */  li        r6, 0x2
/* 0C3714 800C6714 48000018 */  b         lbl_800C672C
lbl_800C6718:
/* 0C3718 800C6718 57FF083C */  slwi      r31, r31, 1
/* 0C371C 800C671C 3BDE0001 */  addi      r30, r30, 0x1
/* 0C3720 800C6720 85690004 */  lwzu      r11, 0x4(r9)
/* 0C3724 800C6724 7FFFEA14 */  add       r31, r31, r29
/* 0C3728 800C6728 38C60001 */  addi      r6, r6, 0x1
lbl_800C672C:
/* 0C372C 800C672C 7C1F5800 */  cmpw      r31, r11
/* 0C3730 800C6730 5C1D37FE */  rlwnm     r29, r0, r6, 31, 31
/* 0C3734 800C6734 4181FFE4 */  bgt       lbl_800C6718
/* 0C3738 800C6738 57C9103A */  slwi      r9, r30, 2
/* 0C373C 800C673C 81680040 */  lwz       r11, 0x40(r8)
/* 0C3740 800C6740 7D284A14 */  add       r9, r8, r9
/* 0C3744 800C6744 8129008C */  lwz       r9, 0x8c(r9)
/* 0C3748 800C6748 7D295A14 */  add       r9, r9, r11
/* 0C374C 800C674C 7FDF48AE */  lbzx      r30, r31, r9
lbl_800C6750:
/* 0C3750 800C6750 73DD000F */  andi.     r29, r30, 0xf
/* 0C3754 800C6754 7FDE2670 */  srawi     r30, r30, 4
/* 0C3758 800C6758 41820088 */  beq       lbl_800C67E0
/* 0C375C 800C675C 7CA5F214 */  add       r5, r5, r30
/* 0C3760 800C6760 23E60021 */  subfic    r31, r6, 0x21
/* 0C3764 800C6764 7D9FE811 */  subfc.    r12, r31, r29
/* 0C3768 800C6768 3926FFFF */  subi      r9, r6, 0x1
/* 0C376C 800C676C 41810018 */  bgt       lbl_800C6784
/* 0C3770 800C6770 7CC6EA14 */  add       r6, r6, r29
/* 0C3774 800C6774 7C0B4830 */  slw       r11, r0, r9
/* 0C3778 800C6778 213D0020 */  subfic    r9, r29, 0x20
/* 0C377C 800C677C 7D7E4C30 */  srw       r30, r11, r9
/* 0C3780 800C6780 48000028 */  b         lbl_800C67A8
lbl_800C6784:
/* 0C3784 800C6784 8163069C */  lwz       r11, 0x69c(r3)
/* 0C3788 800C6788 7C094830 */  slw       r9, r0, r9
/* 0C378C 800C678C 840B0004 */  lwzu      r0, 0x4(r11)
/* 0C3790 800C6790 38CC0001 */  addi      r6, r12, 0x1
/* 0C3794 800C6794 9163069C */  stw       r11, 0x69c(r3)
/* 0C3798 800C6798 7C0BFC30 */  srw       r11, r0, r31
/* 0C379C 800C679C 7D2B4A14 */  add       r9, r11, r9
/* 0C37A0 800C67A0 219D0020 */  subfic    r12, r29, 0x20
/* 0C37A4 800C67A4 7D3E6430 */  srw       r30, r9, r12
lbl_800C67A8:
/* 0C37A8 800C67A8 7FCB0034 */  cntlzw    r11, r30
/* 0C37AC 800C67AC 213D0020 */  subfic    r9, r29, 0x20
/* 0C37B0 800C67B0 7C0B4800 */  cmpw      r11, r9
/* 0C37B4 800C67B4 40810014 */  ble       lbl_800C67C8
/* 0C37B8 800C67B8 3920FFFF */  li        r9, -0x1
/* 0C37BC 800C67BC 7D29E830 */  slw       r9, r9, r29
/* 0C37C0 800C67C0 7FC9F214 */  add       r30, r9, r30
/* 0C37C4 800C67C4 3BDE0001 */  addi      r30, r30, 0x1
lbl_800C67C8:
/* 0C37C8 800C67C8 7D2A2A14 */  add       r9, r10, r5
/* 0C37CC 800C67CC 89290000 */  lbz       r9, 0x0(r9)
/* 0C37D0 800C67D0 7FCB0734 */  extsh     r11, r30
/* 0C37D4 800C67D4 5529083C */  slwi      r9, r9, 1
/* 0C37D8 800C67D8 7D644B2E */  sthx      r11, r4, r9
/* 0C37DC 800C67DC 48000010 */  b         lbl_800C67EC
lbl_800C67E0:
/* 0C37E0 800C67E0 2C1E000F */  cmpwi     r30, 0xf
/* 0C37E4 800C67E4 40820014 */  bne       lbl_800C67F8
/* 0C37E8 800C67E8 38A5000F */  addi      r5, r5, 0xf
lbl_800C67EC:
/* 0C37EC 800C67EC 38A50001 */  addi      r5, r5, 0x1
lbl_800C67F0:
/* 0C37F0 800C67F0 2C050040 */  cmpwi     r5, 0x40
/* 0C37F4 800C67F4 4180FD10 */  blt       lbl_800C6504
lbl_800C67F8:
/* 0C37F8 800C67F8 90C306A4 */  stw       r6, 0x6a4(r3)
/* 0C37FC 800C67FC 900306A0 */  stw       r0, 0x6a0(r3)
/* 0C3800 800C6800 83E1001C */  lwz       r31, 0x1c(r1)
/* 0C3804 800C6804 83C10018 */  lwz       r30, 0x18(r1)
/* 0C3808 800C6808 83A10014 */  lwz       r29, 0x14(r1)
/* 0C380C 800C680C 38210020 */  addi      r1, r1, 0x20
/* 0C3810 800C6810 4E800020 */  blr

glabel __THPHuffDecodeDCTCompU
/* 0C3814 800C6814 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C3818 800C6818 93E10014 */  stw       r31, 0x14(r1)
/* 0C381C 800C681C 93C10010 */  stw       r30, 0x10(r1)
/* 0C3820 800C6820 7C0027EC */  dcbz      r0, r4
/* 0C3824 800C6824 818D8E80 */  lwz       r12, D_8018BE00@sda21(r0)
/* 0C3828 800C6828 816306A4 */  lwz       r11, 0x6a4(r3)
/* 0C382C 800C682C 392C0020 */  addi      r9, r12, 0x20
/* 0C3830 800C6830 814306A0 */  lwz       r10, 0x6a0(r3)
/* 0C3834 800C6834 38AB0004 */  addi      r5, r11, 0x4
/* 0C3838 800C6838 2C0B001C */  cmpwi     r11, 0x1c
/* 0C383C 800C683C 5D482EFE */  rlwnm     r8, r10, r5, 27, 31
/* 0C3840 800C6840 418100C4 */  bgt       lbl_800C6904
/* 0C3844 800C6844 7CAC40AE */  lbzx      r5, r12, r8
/* 0C3848 800C6848 7D2940AE */  lbzx      r9, r9, r8
/* 0C384C 800C684C 2C0500FF */  cmpwi     r5, 0xff
/* 0C3850 800C6850 41820010 */  beq       lbl_800C6860
/* 0C3854 800C6854 7D6B4A14 */  add       r11, r11, r9
/* 0C3858 800C6858 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C385C 800C685C 4800024C */  b         lbl_800C6AA8
lbl_800C6860:
/* 0C3860 800C6860 38CC0044 */  addi      r6, r12, 0x44
/* 0C3864 800C6864 396B0005 */  addi      r11, r11, 0x5
/* 0C3868 800C6868 38000014 */  li        r0, 0x14
/* 0C386C 800C686C 38A00005 */  li        r5, 0x5
/* 0C3870 800C6870 38C60014 */  addi      r6, r6, 0x14
lbl_800C6874:
/* 0C3874 800C6874 2C0B0021 */  cmpwi     r11, 0x21
/* 0C3878 800C6878 5508083C */  slwi      r8, r8, 1
/* 0C387C 800C687C 41820018 */  beq       lbl_800C6894
/* 0C3880 800C6880 5D495FFE */  rlwnm     r9, r10, r11, 31, 31
/* 0C3884 800C6884 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3888 800C6888 7D084B78 */  or        r8, r8, r9
/* 0C388C 800C688C 396B0001 */  addi      r11, r11, 0x1
/* 0C3890 800C6890 48000048 */  b         lbl_800C68D8
lbl_800C6894:
/* 0C3894 800C6894 8123069C */  lwz       r9, 0x69c(r3)
/* 0C3898 800C6898 39600001 */  li        r11, 0x1
/* 0C389C 800C689C 85490004 */  lwzu      r10, 0x4(r9)
/* 0C38A0 800C68A0 84060004 */  lwzu      r0, 0x4(r6)
/* 0C38A4 800C68A4 9123069C */  stw       r9, 0x69c(r3)
/* 0C38A8 800C68A8 51480FFE */  rlwimi    r8, r10, 1, 31, 31
/* 0C38AC 800C68AC 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C38B0 800C68B0 48000014 */  b         lbl_800C68C4
lbl_800C68B4:
/* 0C38B4 800C68B4 5508083C */  slwi      r8, r8, 1
/* 0C38B8 800C68B8 5D495FFE */  rlwnm     r9, r10, r11, 31, 31
/* 0C38BC 800C68BC 84060004 */  lwzu      r0, 0x4(r6)
/* 0C38C0 800C68C0 7D084B78 */  or        r8, r8, r9
lbl_800C68C4:
/* 0C38C4 800C68C4 7C080000 */  cmpw      r8, r0
/* 0C38C8 800C68C8 396B0001 */  addi      r11, r11, 0x1
/* 0C38CC 800C68CC 38A50001 */  addi      r5, r5, 0x1
/* 0C38D0 800C68D0 4181FFE4 */  bgt       lbl_800C68B4
/* 0C38D4 800C68D4 48000010 */  b         lbl_800C68E4
lbl_800C68D8:
/* 0C38D8 800C68D8 7C080000 */  cmpw      r8, r0
/* 0C38DC 800C68DC 38A50001 */  addi      r5, r5, 0x1
/* 0C38E0 800C68E0 4181FF94 */  bgt       lbl_800C6874
lbl_800C68E4:
/* 0C38E4 800C68E4 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C38E8 800C68E8 54A0103A */  slwi      r0, r5, 2
/* 0C38EC 800C68EC 7CAC0214 */  add       r5, r12, r0
/* 0C38F0 800C68F0 80CC0040 */  lwz       r6, 0x40(r12)
/* 0C38F4 800C68F4 8005008C */  lwz       r0, 0x8c(r5)
/* 0C38F8 800C68F8 7C003214 */  add       r0, r0, r6
/* 0C38FC 800C68FC 7CA800AE */  lbzx      r5, r8, r0
/* 0C3900 800C6900 480001A8 */  b         lbl_800C6AA8
lbl_800C6904:
/* 0C3904 800C6904 2C0B0021 */  cmpwi     r11, 0x21
/* 0C3908 800C6908 8103069C */  lwz       r8, 0x69c(r3)
/* 0C390C 800C690C 418200B4 */  beq       lbl_800C69C0
/* 0C3910 800C6910 2C0B0020 */  cmpwi     r11, 0x20
/* 0C3914 800C6914 5D452EFE */  rlwnm     r5, r10, r5, 27, 31
/* 0C3918 800C6918 4182002C */  beq       lbl_800C6944
/* 0C391C 800C691C 7D0C28AE */  lbzx      r8, r12, r5
/* 0C3920 800C6920 7D2928AE */  lbzx      r9, r9, r5
/* 0C3924 800C6924 2C0800FF */  cmpwi     r8, 0xff
/* 0C3928 800C6928 7CAB4A14 */  add       r5, r11, r9
/* 0C392C 800C692C 418200F8 */  beq       lbl_800C6A24
/* 0C3930 800C6930 2C050021 */  cmpwi     r5, 0x21
/* 0C3934 800C6934 90A306A4 */  stw       r5, 0x6a4(r3)
/* 0C3938 800C6938 418100EC */  bgt       lbl_800C6A24
/* 0C393C 800C693C 7D054378 */  mr        r5, r8
/* 0C3940 800C6940 48000168 */  b         lbl_800C6AA8
lbl_800C6944:
/* 0C3944 800C6944 85480004 */  lwzu      r10, 0x4(r8)
/* 0C3948 800C6948 9103069C */  stw       r8, 0x69c(r3)
/* 0C394C 800C694C 5145273E */  rlwimi    r5, r10, 4, 28, 31
/* 0C3950 800C6950 7D0C28AE */  lbzx      r8, r12, r5
/* 0C3954 800C6954 7D2928AE */  lbzx      r9, r9, r5
/* 0C3958 800C6958 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C395C 800C695C 2C0800FF */  cmpwi     r8, 0xff
/* 0C3960 800C6960 912306A4 */  stw       r9, 0x6a4(r3)
/* 0C3964 800C6964 4182000C */  beq       lbl_800C6970
/* 0C3968 800C6968 7D054378 */  mr        r5, r8
/* 0C396C 800C696C 4800013C */  b         lbl_800C6AA8
lbl_800C6970:
/* 0C3970 800C6970 38CC0044 */  addi      r6, r12, 0x44
/* 0C3974 800C6974 39600014 */  li        r11, 0x14
/* 0C3978 800C6978 38C60014 */  addi      r6, r6, 0x14
/* 0C397C 800C697C 54A8D808 */  slwi      r8, r5, 27
/* 0C3980 800C6980 39600005 */  li        r11, 0x5
/* 0C3984 800C6984 5148F87E */  rlwimi    r8, r10, 31, 1, 31
lbl_800C6988:
/* 0C3988 800C6988 214B001F */  subfic    r10, r11, 0x1f
/* 0C398C 800C698C 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3990 800C6990 7D055430 */  srw       r5, r8, r10
/* 0C3994 800C6994 7C050000 */  cmpw      r5, r0
/* 0C3998 800C6998 396B0001 */  addi      r11, r11, 0x1
/* 0C399C 800C699C 4181FFEC */  bgt       lbl_800C6988
/* 0C39A0 800C69A0 916306A4 */  stw       r11, 0x6a4(r3)
lbl_800C69A4:
/* 0C39A4 800C69A4 5560103A */  slwi      r0, r11, 2
/* 0C39A8 800C69A8 80EC0040 */  lwz       r7, 0x40(r12)
/* 0C39AC 800C69AC 7CCC0214 */  add       r6, r12, r0
/* 0C39B0 800C69B0 8006008C */  lwz       r0, 0x8c(r6)
/* 0C39B4 800C69B4 7C003A14 */  add       r0, r0, r7
/* 0C39B8 800C69B8 7CA500AE */  lbzx      r5, r5, r0
/* 0C39BC 800C69BC 480000EC */  b         lbl_800C6AA8
lbl_800C69C0:
/* 0C39C0 800C69C0 85480004 */  lwzu      r10, 0x4(r8)
/* 0C39C4 800C69C4 55452EFE */  srwi      r5, r10, 27
/* 0C39C8 800C69C8 9103069C */  stw       r8, 0x69c(r3)
/* 0C39CC 800C69CC 7D6C28AE */  lbzx      r11, r12, r5
/* 0C39D0 800C69D0 7D2928AE */  lbzx      r9, r9, r5
/* 0C39D4 800C69D4 2C0B00FF */  cmpwi     r11, 0xff
/* 0C39D8 800C69D8 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C39DC 800C69DC 39290001 */  addi      r9, r9, 0x1
/* 0C39E0 800C69E0 41820010 */  beq       lbl_800C69F0
/* 0C39E4 800C69E4 912306A4 */  stw       r9, 0x6a4(r3)
/* 0C39E8 800C69E8 7D655B78 */  mr        r5, r11
/* 0C39EC 800C69EC 480000BC */  b         lbl_800C6AA8
lbl_800C69F0:
/* 0C39F0 800C69F0 39600005 */  li        r11, 0x5
/* 0C39F4 800C69F4 38C00014 */  li        r6, 0x14
lbl_800C69F8:
/* 0C39F8 800C69F8 210B001F */  subfic    r8, r11, 0x1f
/* 0C39FC 800C69FC 396B0001 */  addi      r11, r11, 0x1
/* 0C3A00 800C6A00 38C60004 */  addi      r6, r6, 0x4
/* 0C3A04 800C6A04 7D454430 */  srw       r5, r10, r8
/* 0C3A08 800C6A08 7CEC3214 */  add       r7, r12, r6
/* 0C3A0C 800C6A0C 80070044 */  lwz       r0, 0x44(r7)
/* 0C3A10 800C6A10 7C050000 */  cmpw      r5, r0
/* 0C3A14 800C6A14 4181FFE4 */  bgt       lbl_800C69F8
/* 0C3A18 800C6A18 380B0001 */  addi      r0, r11, 0x1
/* 0C3A1C 800C6A1C 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C3A20 800C6A20 4BFFFF84 */  b         lbl_800C69A4
lbl_800C6A24:
/* 0C3A24 800C6A24 200B0021 */  subfic    r0, r11, 0x21
/* 0C3A28 800C6A28 38A0FFFF */  li        r5, -0x1
/* 0C3A2C 800C6A2C 7CA70030 */  slw       r7, r5, r0
/* 0C3A30 800C6A30 7D453878 */  andc      r5, r10, r7
/* 0C3A34 800C6A34 38EC0044 */  addi      r7, r12, 0x44
/* 0C3A38 800C6A38 8103069C */  lwz       r8, 0x69c(r3)
/* 0C3A3C 800C6A3C 20CB0021 */  subfic    r6, r11, 0x21
/* 0C3A40 800C6A40 39660001 */  addi      r11, r6, 0x1
/* 0C3A44 800C6A44 54C6103A */  slwi      r6, r6, 2
/* 0C3A48 800C6A48 85480004 */  lwzu      r10, 0x4(r8)
/* 0C3A4C 800C6A4C 7CE73214 */  add       r7, r7, r6
/* 0C3A50 800C6A50 9103069C */  stw       r8, 0x69c(r3)
/* 0C3A54 800C6A54 54A5083C */  slwi      r5, r5, 1
/* 0C3A58 800C6A58 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C3A5C 800C6A5C 51450FFE */  rlwimi    r5, r10, 1, 31, 31
/* 0C3A60 800C6A60 84C70004 */  lwzu      r6, 0x4(r7)
/* 0C3A64 800C6A64 39000002 */  li        r8, 0x2
/* 0C3A68 800C6A68 48000018 */  b         lbl_800C6A80
lbl_800C6A6C:
/* 0C3A6C 800C6A6C 54A5083C */  slwi      r5, r5, 1
/* 0C3A70 800C6A70 396B0001 */  addi      r11, r11, 0x1
/* 0C3A74 800C6A74 84C70004 */  lwzu      r6, 0x4(r7)
/* 0C3A78 800C6A78 7CA54A14 */  add       r5, r5, r9
/* 0C3A7C 800C6A7C 39080001 */  addi      r8, r8, 0x1
lbl_800C6A80:
/* 0C3A80 800C6A80 7C053000 */  cmpw      r5, r6
/* 0C3A84 800C6A84 5D4947FE */  rlwnm     r9, r10, r8, 31, 31
/* 0C3A88 800C6A88 4181FFE4 */  bgt       lbl_800C6A6C
/* 0C3A8C 800C6A8C 910306A4 */  stw       r8, 0x6a4(r3)
/* 0C3A90 800C6A90 5560103A */  slwi      r0, r11, 2
/* 0C3A94 800C6A94 7CCC0214 */  add       r6, r12, r0
/* 0C3A98 800C6A98 80EC0040 */  lwz       r7, 0x40(r12)
/* 0C3A9C 800C6A9C 8006008C */  lwz       r0, 0x8c(r6)
/* 0C3AA0 800C6AA0 7C003A14 */  add       r0, r0, r7
/* 0C3AA4 800C6AA4 7CA500AE */  lbzx      r5, r5, r0
lbl_800C6AA8:
/* 0C3AA8 800C6AA8 38000020 */  li        r0, 0x20
/* 0C3AAC 800C6AAC 7C0407EC */  dcbz      r4, r0
/* 0C3AB0 800C6AB0 38E00000 */  li        r7, 0x0
/* 0C3AB4 800C6AB4 38000040 */  li        r0, 0x40
/* 0C3AB8 800C6AB8 7C0407EC */  dcbz      r4, r0
/* 0C3ABC 800C6ABC 2C050000 */  cmpwi     r5, 0x0
/* 0C3AC0 800C6AC0 41820084 */  beq       lbl_800C6B44
/* 0C3AC4 800C6AC4 812306A4 */  lwz       r9, 0x6a4(r3)
/* 0C3AC8 800C6AC8 21490021 */  subfic    r10, r9, 0x21
/* 0C3ACC 800C6ACC 80E306A0 */  lwz       r7, 0x6a0(r3)
/* 0C3AD0 800C6AD0 7D6A2811 */  subfc.    r11, r10, r5
/* 0C3AD4 800C6AD4 3989FFFF */  subi      r12, r9, 0x1
/* 0C3AD8 800C6AD8 4181001C */  bgt       lbl_800C6AF4
/* 0C3ADC 800C6ADC 7C092A14 */  add       r0, r9, r5
/* 0C3AE0 800C6AE0 7CE96030 */  slw       r9, r7, r12
/* 0C3AE4 800C6AE4 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C3AE8 800C6AE8 20050020 */  subfic    r0, r5, 0x20
/* 0C3AEC 800C6AEC 7D270430 */  srw       r7, r9, r0
/* 0C3AF0 800C6AF0 48000030 */  b         lbl_800C6B20
lbl_800C6AF4:
/* 0C3AF4 800C6AF4 8123069C */  lwz       r9, 0x69c(r3)
/* 0C3AF8 800C6AF8 7CE06030 */  slw       r0, r7, r12
/* 0C3AFC 800C6AFC 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C3B00 800C6B00 396B0001 */  addi      r11, r11, 0x1
/* 0C3B04 800C6B04 90E306A0 */  stw       r7, 0x6a0(r3)
/* 0C3B08 800C6B08 7CE75430 */  srw       r7, r7, r10
/* 0C3B0C 800C6B0C 9123069C */  stw       r9, 0x69c(r3)
/* 0C3B10 800C6B10 7C070214 */  add       r0, r7, r0
/* 0C3B14 800C6B14 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C3B18 800C6B18 21650020 */  subfic    r11, r5, 0x20
/* 0C3B1C 800C6B1C 7C075C30 */  srw       r7, r0, r11
lbl_800C6B20:
/* 0C3B20 800C6B20 7CE00734 */  extsh     r0, r7
/* 0C3B24 800C6B24 7C060034 */  cntlzw    r6, r0
/* 0C3B28 800C6B28 20050020 */  subfic    r0, r5, 0x20
/* 0C3B2C 800C6B2C 7C060000 */  cmpw      r6, r0
/* 0C3B30 800C6B30 40810014 */  ble       lbl_800C6B44
/* 0C3B34 800C6B34 3800FFFF */  li        r0, -0x1
/* 0C3B38 800C6B38 7C002830 */  slw       r0, r0, r5
/* 0C3B3C 800C6B3C 7CE03A14 */  add       r7, r0, r7
/* 0C3B40 800C6B40 38E70001 */  addi      r7, r7, 0x1
lbl_800C6B44:
/* 0C3B44 800C6B44 38000060 */  li        r0, 0x60
/* 0C3B48 800C6B48 7C0407EC */  dcbz      r4, r0
/* 0C3B4C 800C6B4C A803068A */  lha       r0, 0x68a(r3)
/* 0C3B50 800C6B50 3CA0800D */  lis       r5, D_800D1DF0@ha
/* 0C3B54 800C6B54 39051DF0 */  addi      r8, r5, D_800D1DF0@l
/* 0C3B58 800C6B58 7C003A14 */  add       r0, r0, r7
/* 0C3B5C 800C6B5C B003068A */  sth       r0, 0x68a(r3)
/* 0C3B60 800C6B60 38C00001 */  li        r6, 0x1
/* 0C3B64 800C6B64 B0040000 */  sth       r0, 0x0(r4)
/* 0C3B68 800C6B68 4800033C */  b         lbl_800C6EA4
lbl_800C6B6C:
/* 0C3B6C 800C6B6C 83CD8EE0 */  lwz       r30, D_8018BE60@sda21(r0)
/* 0C3B70 800C6B70 83E306A4 */  lwz       r31, 0x6a4(r3)
/* 0C3B74 800C6B74 397E0020 */  addi      r11, r30, 0x20
/* 0C3B78 800C6B78 818306A0 */  lwz       r12, 0x6a0(r3)
/* 0C3B7C 800C6B7C 38BF0004 */  addi      r5, r31, 0x4
/* 0C3B80 800C6B80 2C1F001C */  cmpwi     r31, 0x1c
/* 0C3B84 800C6B84 5D8A2EFE */  rlwnm     r10, r12, r5, 27, 31
/* 0C3B88 800C6B88 418100C4 */  bgt       lbl_800C6C4C
/* 0C3B8C 800C6B8C 7CBE50AE */  lbzx      r5, r30, r10
/* 0C3B90 800C6B90 7D6B50AE */  lbzx      r11, r11, r10
/* 0C3B94 800C6B94 2C0500FF */  cmpwi     r5, 0xff
/* 0C3B98 800C6B98 41820010 */  beq       lbl_800C6BA8
/* 0C3B9C 800C6B9C 7FFF5A14 */  add       r31, r31, r11
/* 0C3BA0 800C6BA0 93E306A4 */  stw       r31, 0x6a4(r3)
/* 0C3BA4 800C6BA4 4800024C */  b         lbl_800C6DF0
lbl_800C6BA8:
/* 0C3BA8 800C6BA8 38FE0044 */  addi      r7, r30, 0x44
/* 0C3BAC 800C6BAC 3BFF0005 */  addi      r31, r31, 0x5
/* 0C3BB0 800C6BB0 38000014 */  li        r0, 0x14
/* 0C3BB4 800C6BB4 38A00005 */  li        r5, 0x5
/* 0C3BB8 800C6BB8 38E70014 */  addi      r7, r7, 0x14
lbl_800C6BBC:
/* 0C3BBC 800C6BBC 2C1F0021 */  cmpwi     r31, 0x21
/* 0C3BC0 800C6BC0 554A083C */  slwi      r10, r10, 1
/* 0C3BC4 800C6BC4 41820018 */  beq       lbl_800C6BDC
/* 0C3BC8 800C6BC8 5D8BFFFE */  rlwnm     r11, r12, r31, 31, 31
/* 0C3BCC 800C6BCC 84070004 */  lwzu      r0, 0x4(r7)
/* 0C3BD0 800C6BD0 7D4A5B78 */  or        r10, r10, r11
/* 0C3BD4 800C6BD4 3BFF0001 */  addi      r31, r31, 0x1
/* 0C3BD8 800C6BD8 48000048 */  b         lbl_800C6C20
lbl_800C6BDC:
/* 0C3BDC 800C6BDC 8163069C */  lwz       r11, 0x69c(r3)
/* 0C3BE0 800C6BE0 3BE00001 */  li        r31, 0x1
/* 0C3BE4 800C6BE4 858B0004 */  lwzu      r12, 0x4(r11)
/* 0C3BE8 800C6BE8 84070004 */  lwzu      r0, 0x4(r7)
/* 0C3BEC 800C6BEC 9163069C */  stw       r11, 0x69c(r3)
/* 0C3BF0 800C6BF0 518A0FFE */  rlwimi    r10, r12, 1, 31, 31
/* 0C3BF4 800C6BF4 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C3BF8 800C6BF8 48000014 */  b         lbl_800C6C0C
lbl_800C6BFC:
/* 0C3BFC 800C6BFC 554A083C */  slwi      r10, r10, 1
/* 0C3C00 800C6C00 5D8BFFFE */  rlwnm     r11, r12, r31, 31, 31
/* 0C3C04 800C6C04 84070004 */  lwzu      r0, 0x4(r7)
/* 0C3C08 800C6C08 7D4A5B78 */  or        r10, r10, r11
lbl_800C6C0C:
/* 0C3C0C 800C6C0C 7C0A0000 */  cmpw      r10, r0
/* 0C3C10 800C6C10 3BFF0001 */  addi      r31, r31, 0x1
/* 0C3C14 800C6C14 38A50001 */  addi      r5, r5, 0x1
/* 0C3C18 800C6C18 4181FFE4 */  bgt       lbl_800C6BFC
/* 0C3C1C 800C6C1C 48000010 */  b         lbl_800C6C2C
lbl_800C6C20:
/* 0C3C20 800C6C20 7C0A0000 */  cmpw      r10, r0
/* 0C3C24 800C6C24 38A50001 */  addi      r5, r5, 0x1
/* 0C3C28 800C6C28 4181FF94 */  bgt       lbl_800C6BBC
lbl_800C6C2C:
/* 0C3C2C 800C6C2C 93E306A4 */  stw       r31, 0x6a4(r3)
/* 0C3C30 800C6C30 54A0103A */  slwi      r0, r5, 2
/* 0C3C34 800C6C34 7CBE0214 */  add       r5, r30, r0
/* 0C3C38 800C6C38 80FE0040 */  lwz       r7, 0x40(r30)
/* 0C3C3C 800C6C3C 8005008C */  lwz       r0, 0x8c(r5)
/* 0C3C40 800C6C40 7C003A14 */  add       r0, r0, r7
/* 0C3C44 800C6C44 7CAA00AE */  lbzx      r5, r10, r0
/* 0C3C48 800C6C48 480001A8 */  b         lbl_800C6DF0
lbl_800C6C4C:
/* 0C3C4C 800C6C4C 2C1F0021 */  cmpwi     r31, 0x21
/* 0C3C50 800C6C50 8143069C */  lwz       r10, 0x69c(r3)
/* 0C3C54 800C6C54 418200B4 */  beq       lbl_800C6D08
/* 0C3C58 800C6C58 2C1F0020 */  cmpwi     r31, 0x20
/* 0C3C5C 800C6C5C 5D852EFE */  rlwnm     r5, r12, r5, 27, 31
/* 0C3C60 800C6C60 4182002C */  beq       lbl_800C6C8C
/* 0C3C64 800C6C64 7D5E28AE */  lbzx      r10, r30, r5
/* 0C3C68 800C6C68 7D6B28AE */  lbzx      r11, r11, r5
/* 0C3C6C 800C6C6C 2C0A00FF */  cmpwi     r10, 0xff
/* 0C3C70 800C6C70 7CBF5A14 */  add       r5, r31, r11
/* 0C3C74 800C6C74 418200F8 */  beq       lbl_800C6D6C
/* 0C3C78 800C6C78 2C050021 */  cmpwi     r5, 0x21
/* 0C3C7C 800C6C7C 90A306A4 */  stw       r5, 0x6a4(r3)
/* 0C3C80 800C6C80 418100EC */  bgt       lbl_800C6D6C
/* 0C3C84 800C6C84 7D455378 */  mr        r5, r10
/* 0C3C88 800C6C88 48000168 */  b         lbl_800C6DF0
lbl_800C6C8C:
/* 0C3C8C 800C6C8C 858A0004 */  lwzu      r12, 0x4(r10)
/* 0C3C90 800C6C90 9143069C */  stw       r10, 0x69c(r3)
/* 0C3C94 800C6C94 5185273E */  rlwimi    r5, r12, 4, 28, 31
/* 0C3C98 800C6C98 7D5E28AE */  lbzx      r10, r30, r5
/* 0C3C9C 800C6C9C 7D6B28AE */  lbzx      r11, r11, r5
/* 0C3CA0 800C6CA0 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C3CA4 800C6CA4 2C0A00FF */  cmpwi     r10, 0xff
/* 0C3CA8 800C6CA8 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C3CAC 800C6CAC 4182000C */  beq       lbl_800C6CB8
/* 0C3CB0 800C6CB0 7D455378 */  mr        r5, r10
/* 0C3CB4 800C6CB4 4800013C */  b         lbl_800C6DF0
lbl_800C6CB8:
/* 0C3CB8 800C6CB8 38FE0044 */  addi      r7, r30, 0x44
/* 0C3CBC 800C6CBC 3BE00014 */  li        r31, 0x14
/* 0C3CC0 800C6CC0 38E70014 */  addi      r7, r7, 0x14
/* 0C3CC4 800C6CC4 54AAD808 */  slwi      r10, r5, 27
/* 0C3CC8 800C6CC8 3BE00005 */  li        r31, 0x5
/* 0C3CCC 800C6CCC 518AF87E */  rlwimi    r10, r12, 31, 1, 31
lbl_800C6CD0:
/* 0C3CD0 800C6CD0 219F001F */  subfic    r12, r31, 0x1f
/* 0C3CD4 800C6CD4 84070004 */  lwzu      r0, 0x4(r7)
/* 0C3CD8 800C6CD8 7D456430 */  srw       r5, r10, r12
/* 0C3CDC 800C6CDC 7C050000 */  cmpw      r5, r0
/* 0C3CE0 800C6CE0 3BFF0001 */  addi      r31, r31, 0x1
/* 0C3CE4 800C6CE4 4181FFEC */  bgt       lbl_800C6CD0
/* 0C3CE8 800C6CE8 93E306A4 */  stw       r31, 0x6a4(r3)
lbl_800C6CEC:
/* 0C3CEC 800C6CEC 57E0103A */  slwi      r0, r31, 2
/* 0C3CF0 800C6CF0 813E0040 */  lwz       r9, 0x40(r30)
/* 0C3CF4 800C6CF4 7CFE0214 */  add       r7, r30, r0
/* 0C3CF8 800C6CF8 8007008C */  lwz       r0, 0x8c(r7)
/* 0C3CFC 800C6CFC 7C004A14 */  add       r0, r0, r9
/* 0C3D00 800C6D00 7CA500AE */  lbzx      r5, r5, r0
/* 0C3D04 800C6D04 480000EC */  b         lbl_800C6DF0
lbl_800C6D08:
/* 0C3D08 800C6D08 858A0004 */  lwzu      r12, 0x4(r10)
/* 0C3D0C 800C6D0C 55852EFE */  srwi      r5, r12, 27
/* 0C3D10 800C6D10 9143069C */  stw       r10, 0x69c(r3)
/* 0C3D14 800C6D14 7FFE28AE */  lbzx      r31, r30, r5
/* 0C3D18 800C6D18 7D6B28AE */  lbzx      r11, r11, r5
/* 0C3D1C 800C6D1C 2C1F00FF */  cmpwi     r31, 0xff
/* 0C3D20 800C6D20 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C3D24 800C6D24 396B0001 */  addi      r11, r11, 0x1
/* 0C3D28 800C6D28 41820010 */  beq       lbl_800C6D38
/* 0C3D2C 800C6D2C 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C3D30 800C6D30 7FE5FB78 */  mr        r5, r31
/* 0C3D34 800C6D34 480000BC */  b         lbl_800C6DF0
lbl_800C6D38:
/* 0C3D38 800C6D38 3BE00005 */  li        r31, 0x5
/* 0C3D3C 800C6D3C 38E00014 */  li        r7, 0x14
lbl_800C6D40:
/* 0C3D40 800C6D40 215F001F */  subfic    r10, r31, 0x1f
/* 0C3D44 800C6D44 3BFF0001 */  addi      r31, r31, 0x1
/* 0C3D48 800C6D48 38E70004 */  addi      r7, r7, 0x4
/* 0C3D4C 800C6D4C 7D855430 */  srw       r5, r12, r10
/* 0C3D50 800C6D50 7D3E3A14 */  add       r9, r30, r7
/* 0C3D54 800C6D54 80090044 */  lwz       r0, 0x44(r9)
/* 0C3D58 800C6D58 7C050000 */  cmpw      r5, r0
/* 0C3D5C 800C6D5C 4181FFE4 */  bgt       lbl_800C6D40
/* 0C3D60 800C6D60 381F0001 */  addi      r0, r31, 0x1
/* 0C3D64 800C6D64 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C3D68 800C6D68 4BFFFF84 */  b         lbl_800C6CEC
lbl_800C6D6C:
/* 0C3D6C 800C6D6C 201F0021 */  subfic    r0, r31, 0x21
/* 0C3D70 800C6D70 38A0FFFF */  li        r5, -0x1
/* 0C3D74 800C6D74 7CA90030 */  slw       r9, r5, r0
/* 0C3D78 800C6D78 7D854878 */  andc      r5, r12, r9
/* 0C3D7C 800C6D7C 393E0044 */  addi      r9, r30, 0x44
/* 0C3D80 800C6D80 8143069C */  lwz       r10, 0x69c(r3)
/* 0C3D84 800C6D84 20FF0021 */  subfic    r7, r31, 0x21
/* 0C3D88 800C6D88 3BE70001 */  addi      r31, r7, 0x1
/* 0C3D8C 800C6D8C 54E7103A */  slwi      r7, r7, 2
/* 0C3D90 800C6D90 858A0004 */  lwzu      r12, 0x4(r10)
/* 0C3D94 800C6D94 7D293A14 */  add       r9, r9, r7
/* 0C3D98 800C6D98 9143069C */  stw       r10, 0x69c(r3)
/* 0C3D9C 800C6D9C 54A5083C */  slwi      r5, r5, 1
/* 0C3DA0 800C6DA0 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C3DA4 800C6DA4 51850FFE */  rlwimi    r5, r12, 1, 31, 31
/* 0C3DA8 800C6DA8 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C3DAC 800C6DAC 39400002 */  li        r10, 0x2
/* 0C3DB0 800C6DB0 48000018 */  b         lbl_800C6DC8
lbl_800C6DB4:
/* 0C3DB4 800C6DB4 54A5083C */  slwi      r5, r5, 1
/* 0C3DB8 800C6DB8 3BFF0001 */  addi      r31, r31, 0x1
/* 0C3DBC 800C6DBC 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C3DC0 800C6DC0 7CA55A14 */  add       r5, r5, r11
/* 0C3DC4 800C6DC4 394A0001 */  addi      r10, r10, 0x1
lbl_800C6DC8:
/* 0C3DC8 800C6DC8 7C053800 */  cmpw      r5, r7
/* 0C3DCC 800C6DCC 5D8B57FE */  rlwnm     r11, r12, r10, 31, 31
/* 0C3DD0 800C6DD0 4181FFE4 */  bgt       lbl_800C6DB4
/* 0C3DD4 800C6DD4 914306A4 */  stw       r10, 0x6a4(r3)
/* 0C3DD8 800C6DD8 57E0103A */  slwi      r0, r31, 2
/* 0C3DDC 800C6DDC 7CFE0214 */  add       r7, r30, r0
/* 0C3DE0 800C6DE0 813E0040 */  lwz       r9, 0x40(r30)
/* 0C3DE4 800C6DE4 8007008C */  lwz       r0, 0x8c(r7)
/* 0C3DE8 800C6DE8 7C004A14 */  add       r0, r0, r9
/* 0C3DEC 800C6DEC 7CA500AE */  lbzx      r5, r5, r0
lbl_800C6DF0:
/* 0C3DF0 800C6DF0 54BE073F */  clrlwi.   r30, r5, 28
/* 0C3DF4 800C6DF4 7CA72670 */  srawi     r7, r5, 4
/* 0C3DF8 800C6DF8 4182009C */  beq       lbl_800C6E94
/* 0C3DFC 800C6DFC 7CC63A14 */  add       r6, r6, r7
/* 0C3E00 800C6E00 812306A4 */  lwz       r9, 0x6a4(r3)
/* 0C3E04 800C6E04 21490021 */  subfic    r10, r9, 0x21
/* 0C3E08 800C6E08 80E306A0 */  lwz       r7, 0x6a0(r3)
/* 0C3E0C 800C6E0C 7D6AF051 */  subf.     r11, r10, r30
/* 0C3E10 800C6E10 3989FFFF */  subi      r12, r9, 0x1
/* 0C3E14 800C6E14 4181001C */  bgt       lbl_800C6E30
/* 0C3E18 800C6E18 7C09F214 */  add       r0, r9, r30
/* 0C3E1C 800C6E1C 7CE96030 */  slw       r9, r7, r12
/* 0C3E20 800C6E20 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C3E24 800C6E24 201E0020 */  subfic    r0, r30, 0x20
/* 0C3E28 800C6E28 7D270430 */  srw       r7, r9, r0
/* 0C3E2C 800C6E2C 48000030 */  b         lbl_800C6E5C
lbl_800C6E30:
/* 0C3E30 800C6E30 8123069C */  lwz       r9, 0x69c(r3)
/* 0C3E34 800C6E34 7CE06030 */  slw       r0, r7, r12
/* 0C3E38 800C6E38 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C3E3C 800C6E3C 396B0001 */  addi      r11, r11, 0x1
/* 0C3E40 800C6E40 90E306A0 */  stw       r7, 0x6a0(r3)
/* 0C3E44 800C6E44 7CE75430 */  srw       r7, r7, r10
/* 0C3E48 800C6E48 9123069C */  stw       r9, 0x69c(r3)
/* 0C3E4C 800C6E4C 7C070214 */  add       r0, r7, r0
/* 0C3E50 800C6E50 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C3E54 800C6E54 217E0020 */  subfic    r11, r30, 0x20
/* 0C3E58 800C6E58 7C075C30 */  srw       r7, r0, r11
lbl_800C6E5C:
/* 0C3E5C 800C6E5C 7CE50034 */  cntlzw    r5, r7
/* 0C3E60 800C6E60 201E0020 */  subfic    r0, r30, 0x20
/* 0C3E64 800C6E64 7C050000 */  cmpw      r5, r0
/* 0C3E68 800C6E68 40810014 */  ble       lbl_800C6E7C
/* 0C3E6C 800C6E6C 3800FFFF */  li        r0, -0x1
/* 0C3E70 800C6E70 7C00F030 */  slw       r0, r0, r30
/* 0C3E74 800C6E74 7CE03A14 */  add       r7, r0, r7
/* 0C3E78 800C6E78 38E70001 */  addi      r7, r7, 0x1
lbl_800C6E7C:
/* 0C3E7C 800C6E7C 7CA83214 */  add       r5, r8, r6
/* 0C3E80 800C6E80 88050000 */  lbz       r0, 0x0(r5)
/* 0C3E84 800C6E84 7CE50734 */  extsh     r5, r7
/* 0C3E88 800C6E88 5400083C */  slwi      r0, r0, 1
/* 0C3E8C 800C6E8C 7CA4032E */  sthx      r5, r4, r0
/* 0C3E90 800C6E90 48000010 */  b         lbl_800C6EA0
lbl_800C6E94:
/* 0C3E94 800C6E94 2C07000F */  cmpwi     r7, 0xf
/* 0C3E98 800C6E98 40820014 */  bne       lbl_800C6EAC
/* 0C3E9C 800C6E9C 38C6000F */  addi      r6, r6, 0xf
lbl_800C6EA0:
/* 0C3EA0 800C6EA0 38C60001 */  addi      r6, r6, 0x1
lbl_800C6EA4:
/* 0C3EA4 800C6EA4 2C060040 */  cmpwi     r6, 0x40
/* 0C3EA8 800C6EA8 4180FCC4 */  blt       lbl_800C6B6C
lbl_800C6EAC:
/* 0C3EAC 800C6EAC 83E10014 */  lwz       r31, 0x14(r1)
/* 0C3EB0 800C6EB0 83C10010 */  lwz       r30, 0x10(r1)
/* 0C3EB4 800C6EB4 38210018 */  addi      r1, r1, 0x18
/* 0C3EB8 800C6EB8 4E800020 */  blr

glabel __THPHuffDecodeDCTCompV
/* 0C3EBC 800C6EBC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0C3EC0 800C6EC0 93E10014 */  stw       r31, 0x14(r1)
/* 0C3EC4 800C6EC4 93C10010 */  stw       r30, 0x10(r1)
/* 0C3EC8 800C6EC8 7C0027EC */  dcbz      r0, r4
/* 0C3ECC 800C6ECC 818D8EA0 */  lwz       r12, D_8018BE20@sda21(r0)
/* 0C3ED0 800C6ED0 816306A4 */  lwz       r11, 0x6a4(r3)
/* 0C3ED4 800C6ED4 392C0020 */  addi      r9, r12, 0x20
/* 0C3ED8 800C6ED8 814306A0 */  lwz       r10, 0x6a0(r3)
/* 0C3EDC 800C6EDC 38AB0004 */  addi      r5, r11, 0x4
/* 0C3EE0 800C6EE0 2C0B001C */  cmpwi     r11, 0x1c
/* 0C3EE4 800C6EE4 5D482EFE */  rlwnm     r8, r10, r5, 27, 31
/* 0C3EE8 800C6EE8 418100C4 */  bgt       lbl_800C6FAC
/* 0C3EEC 800C6EEC 7CAC40AE */  lbzx      r5, r12, r8
/* 0C3EF0 800C6EF0 7D2940AE */  lbzx      r9, r9, r8
/* 0C3EF4 800C6EF4 2C0500FF */  cmpwi     r5, 0xff
/* 0C3EF8 800C6EF8 41820010 */  beq       lbl_800C6F08
/* 0C3EFC 800C6EFC 7D6B4A14 */  add       r11, r11, r9
/* 0C3F00 800C6F00 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C3F04 800C6F04 4800024C */  b         lbl_800C7150
lbl_800C6F08:
/* 0C3F08 800C6F08 38CC0044 */  addi      r6, r12, 0x44
/* 0C3F0C 800C6F0C 396B0005 */  addi      r11, r11, 0x5
/* 0C3F10 800C6F10 38000014 */  li        r0, 0x14
/* 0C3F14 800C6F14 38A00005 */  li        r5, 0x5
/* 0C3F18 800C6F18 38C60014 */  addi      r6, r6, 0x14
lbl_800C6F1C:
/* 0C3F1C 800C6F1C 2C0B0021 */  cmpwi     r11, 0x21
/* 0C3F20 800C6F20 5508083C */  slwi      r8, r8, 1
/* 0C3F24 800C6F24 41820018 */  beq       lbl_800C6F3C
/* 0C3F28 800C6F28 5D495FFE */  rlwnm     r9, r10, r11, 31, 31
/* 0C3F2C 800C6F2C 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3F30 800C6F30 7D084B78 */  or        r8, r8, r9
/* 0C3F34 800C6F34 396B0001 */  addi      r11, r11, 0x1
/* 0C3F38 800C6F38 48000048 */  b         lbl_800C6F80
lbl_800C6F3C:
/* 0C3F3C 800C6F3C 8123069C */  lwz       r9, 0x69c(r3)
/* 0C3F40 800C6F40 39600001 */  li        r11, 0x1
/* 0C3F44 800C6F44 85490004 */  lwzu      r10, 0x4(r9)
/* 0C3F48 800C6F48 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3F4C 800C6F4C 9123069C */  stw       r9, 0x69c(r3)
/* 0C3F50 800C6F50 51480FFE */  rlwimi    r8, r10, 1, 31, 31
/* 0C3F54 800C6F54 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C3F58 800C6F58 48000014 */  b         lbl_800C6F6C
lbl_800C6F5C:
/* 0C3F5C 800C6F5C 5508083C */  slwi      r8, r8, 1
/* 0C3F60 800C6F60 5D495FFE */  rlwnm     r9, r10, r11, 31, 31
/* 0C3F64 800C6F64 84060004 */  lwzu      r0, 0x4(r6)
/* 0C3F68 800C6F68 7D084B78 */  or        r8, r8, r9
lbl_800C6F6C:
/* 0C3F6C 800C6F6C 7C080000 */  cmpw      r8, r0
/* 0C3F70 800C6F70 396B0001 */  addi      r11, r11, 0x1
/* 0C3F74 800C6F74 38A50001 */  addi      r5, r5, 0x1
/* 0C3F78 800C6F78 4181FFE4 */  bgt       lbl_800C6F5C
/* 0C3F7C 800C6F7C 48000010 */  b         lbl_800C6F8C
lbl_800C6F80:
/* 0C3F80 800C6F80 7C080000 */  cmpw      r8, r0
/* 0C3F84 800C6F84 38A50001 */  addi      r5, r5, 0x1
/* 0C3F88 800C6F88 4181FF94 */  bgt       lbl_800C6F1C
lbl_800C6F8C:
/* 0C3F8C 800C6F8C 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C3F90 800C6F90 54A0103A */  slwi      r0, r5, 2
/* 0C3F94 800C6F94 7CAC0214 */  add       r5, r12, r0
/* 0C3F98 800C6F98 80CC0040 */  lwz       r6, 0x40(r12)
/* 0C3F9C 800C6F9C 8005008C */  lwz       r0, 0x8c(r5)
/* 0C3FA0 800C6FA0 7C003214 */  add       r0, r0, r6
/* 0C3FA4 800C6FA4 7CA800AE */  lbzx      r5, r8, r0
/* 0C3FA8 800C6FA8 480001A8 */  b         lbl_800C7150
lbl_800C6FAC:
/* 0C3FAC 800C6FAC 2C0B0021 */  cmpwi     r11, 0x21
/* 0C3FB0 800C6FB0 8103069C */  lwz       r8, 0x69c(r3)
/* 0C3FB4 800C6FB4 418200B4 */  beq       lbl_800C7068
/* 0C3FB8 800C6FB8 2C0B0020 */  cmpwi     r11, 0x20
/* 0C3FBC 800C6FBC 5D452EFE */  rlwnm     r5, r10, r5, 27, 31
/* 0C3FC0 800C6FC0 4182002C */  beq       lbl_800C6FEC
/* 0C3FC4 800C6FC4 7D0C28AE */  lbzx      r8, r12, r5
/* 0C3FC8 800C6FC8 7D2928AE */  lbzx      r9, r9, r5
/* 0C3FCC 800C6FCC 2C0800FF */  cmpwi     r8, 0xff
/* 0C3FD0 800C6FD0 7CAB4A14 */  add       r5, r11, r9
/* 0C3FD4 800C6FD4 418200F8 */  beq       lbl_800C70CC
/* 0C3FD8 800C6FD8 2C050021 */  cmpwi     r5, 0x21
/* 0C3FDC 800C6FDC 90A306A4 */  stw       r5, 0x6a4(r3)
/* 0C3FE0 800C6FE0 418100EC */  bgt       lbl_800C70CC
/* 0C3FE4 800C6FE4 7D054378 */  mr        r5, r8
/* 0C3FE8 800C6FE8 48000168 */  b         lbl_800C7150
lbl_800C6FEC:
/* 0C3FEC 800C6FEC 85480004 */  lwzu      r10, 0x4(r8)
/* 0C3FF0 800C6FF0 9103069C */  stw       r8, 0x69c(r3)
/* 0C3FF4 800C6FF4 5145273E */  rlwimi    r5, r10, 4, 28, 31
/* 0C3FF8 800C6FF8 7D0C28AE */  lbzx      r8, r12, r5
/* 0C3FFC 800C6FFC 7D2928AE */  lbzx      r9, r9, r5
/* 0C4000 800C7000 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C4004 800C7004 2C0800FF */  cmpwi     r8, 0xff
/* 0C4008 800C7008 912306A4 */  stw       r9, 0x6a4(r3)
/* 0C400C 800C700C 4182000C */  beq       lbl_800C7018
/* 0C4010 800C7010 7D054378 */  mr        r5, r8
/* 0C4014 800C7014 4800013C */  b         lbl_800C7150
lbl_800C7018:
/* 0C4018 800C7018 38CC0044 */  addi      r6, r12, 0x44
/* 0C401C 800C701C 39600014 */  li        r11, 0x14
/* 0C4020 800C7020 38C60014 */  addi      r6, r6, 0x14
/* 0C4024 800C7024 54A8D808 */  slwi      r8, r5, 27
/* 0C4028 800C7028 39600005 */  li        r11, 0x5
/* 0C402C 800C702C 5148F87E */  rlwimi    r8, r10, 31, 1, 31
lbl_800C7030:
/* 0C4030 800C7030 214B001F */  subfic    r10, r11, 0x1f
/* 0C4034 800C7034 84060004 */  lwzu      r0, 0x4(r6)
/* 0C4038 800C7038 7D055430 */  srw       r5, r8, r10
/* 0C403C 800C703C 7C050000 */  cmpw      r5, r0
/* 0C4040 800C7040 396B0001 */  addi      r11, r11, 0x1
/* 0C4044 800C7044 4181FFEC */  bgt       lbl_800C7030
/* 0C4048 800C7048 916306A4 */  stw       r11, 0x6a4(r3)
lbl_800C704C:
/* 0C404C 800C704C 5560103A */  slwi      r0, r11, 2
/* 0C4050 800C7050 80EC0040 */  lwz       r7, 0x40(r12)
/* 0C4054 800C7054 7CCC0214 */  add       r6, r12, r0
/* 0C4058 800C7058 8006008C */  lwz       r0, 0x8c(r6)
/* 0C405C 800C705C 7C003A14 */  add       r0, r0, r7
/* 0C4060 800C7060 7CA500AE */  lbzx      r5, r5, r0
/* 0C4064 800C7064 480000EC */  b         lbl_800C7150
lbl_800C7068:
/* 0C4068 800C7068 85480004 */  lwzu      r10, 0x4(r8)
/* 0C406C 800C706C 55452EFE */  srwi      r5, r10, 27
/* 0C4070 800C7070 9103069C */  stw       r8, 0x69c(r3)
/* 0C4074 800C7074 7D6C28AE */  lbzx      r11, r12, r5
/* 0C4078 800C7078 7D2928AE */  lbzx      r9, r9, r5
/* 0C407C 800C707C 2C0B00FF */  cmpwi     r11, 0xff
/* 0C4080 800C7080 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C4084 800C7084 39290001 */  addi      r9, r9, 0x1
/* 0C4088 800C7088 41820010 */  beq       lbl_800C7098
/* 0C408C 800C708C 912306A4 */  stw       r9, 0x6a4(r3)
/* 0C4090 800C7090 7D655B78 */  mr        r5, r11
/* 0C4094 800C7094 480000BC */  b         lbl_800C7150
lbl_800C7098:
/* 0C4098 800C7098 39600005 */  li        r11, 0x5
/* 0C409C 800C709C 38C00014 */  li        r6, 0x14
lbl_800C70A0:
/* 0C40A0 800C70A0 210B001F */  subfic    r8, r11, 0x1f
/* 0C40A4 800C70A4 396B0001 */  addi      r11, r11, 0x1
/* 0C40A8 800C70A8 38C60004 */  addi      r6, r6, 0x4
/* 0C40AC 800C70AC 7D454430 */  srw       r5, r10, r8
/* 0C40B0 800C70B0 7CEC3214 */  add       r7, r12, r6
/* 0C40B4 800C70B4 80070044 */  lwz       r0, 0x44(r7)
/* 0C40B8 800C70B8 7C050000 */  cmpw      r5, r0
/* 0C40BC 800C70BC 4181FFE4 */  bgt       lbl_800C70A0
/* 0C40C0 800C70C0 380B0001 */  addi      r0, r11, 0x1
/* 0C40C4 800C70C4 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C40C8 800C70C8 4BFFFF84 */  b         lbl_800C704C
lbl_800C70CC:
/* 0C40CC 800C70CC 200B0021 */  subfic    r0, r11, 0x21
/* 0C40D0 800C70D0 38A0FFFF */  li        r5, -0x1
/* 0C40D4 800C70D4 7CA70030 */  slw       r7, r5, r0
/* 0C40D8 800C70D8 7D453878 */  andc      r5, r10, r7
/* 0C40DC 800C70DC 38EC0044 */  addi      r7, r12, 0x44
/* 0C40E0 800C70E0 8103069C */  lwz       r8, 0x69c(r3)
/* 0C40E4 800C70E4 20CB0021 */  subfic    r6, r11, 0x21
/* 0C40E8 800C70E8 39660001 */  addi      r11, r6, 0x1
/* 0C40EC 800C70EC 54C6103A */  slwi      r6, r6, 2
/* 0C40F0 800C70F0 85480004 */  lwzu      r10, 0x4(r8)
/* 0C40F4 800C70F4 7CE73214 */  add       r7, r7, r6
/* 0C40F8 800C70F8 9103069C */  stw       r8, 0x69c(r3)
/* 0C40FC 800C70FC 54A5083C */  slwi      r5, r5, 1
/* 0C4100 800C7100 914306A0 */  stw       r10, 0x6a0(r3)
/* 0C4104 800C7104 51450FFE */  rlwimi    r5, r10, 1, 31, 31
/* 0C4108 800C7108 84C70004 */  lwzu      r6, 0x4(r7)
/* 0C410C 800C710C 39000002 */  li        r8, 0x2
/* 0C4110 800C7110 48000018 */  b         lbl_800C7128
lbl_800C7114:
/* 0C4114 800C7114 54A5083C */  slwi      r5, r5, 1
/* 0C4118 800C7118 396B0001 */  addi      r11, r11, 0x1
/* 0C411C 800C711C 84C70004 */  lwzu      r6, 0x4(r7)
/* 0C4120 800C7120 7CA54A14 */  add       r5, r5, r9
/* 0C4124 800C7124 39080001 */  addi      r8, r8, 0x1
lbl_800C7128:
/* 0C4128 800C7128 7C053000 */  cmpw      r5, r6
/* 0C412C 800C712C 5D4947FE */  rlwnm     r9, r10, r8, 31, 31
/* 0C4130 800C7130 4181FFE4 */  bgt       lbl_800C7114
/* 0C4134 800C7134 910306A4 */  stw       r8, 0x6a4(r3)
/* 0C4138 800C7138 5560103A */  slwi      r0, r11, 2
/* 0C413C 800C713C 7CCC0214 */  add       r6, r12, r0
/* 0C4140 800C7140 80EC0040 */  lwz       r7, 0x40(r12)
/* 0C4144 800C7144 8006008C */  lwz       r0, 0x8c(r6)
/* 0C4148 800C7148 7C003A14 */  add       r0, r0, r7
/* 0C414C 800C714C 7CA500AE */  lbzx      r5, r5, r0
lbl_800C7150:
/* 0C4150 800C7150 38000020 */  li        r0, 0x20
/* 0C4154 800C7154 7C0407EC */  dcbz      r4, r0
/* 0C4158 800C7158 38E00000 */  li        r7, 0x0
/* 0C415C 800C715C 38000040 */  li        r0, 0x40
/* 0C4160 800C7160 7C0407EC */  dcbz      r4, r0
/* 0C4164 800C7164 2C050000 */  cmpwi     r5, 0x0
/* 0C4168 800C7168 41820084 */  beq       lbl_800C71EC
/* 0C416C 800C716C 812306A4 */  lwz       r9, 0x6a4(r3)
/* 0C4170 800C7170 21490021 */  subfic    r10, r9, 0x21
/* 0C4174 800C7174 80E306A0 */  lwz       r7, 0x6a0(r3)
/* 0C4178 800C7178 7D6A2851 */  subf.     r11, r10, r5
/* 0C417C 800C717C 3989FFFF */  subi      r12, r9, 0x1
/* 0C4180 800C7180 4181001C */  bgt       lbl_800C719C
/* 0C4184 800C7184 7C092A14 */  add       r0, r9, r5
/* 0C4188 800C7188 7CE96030 */  slw       r9, r7, r12
/* 0C418C 800C718C 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C4190 800C7190 20050020 */  subfic    r0, r5, 0x20
/* 0C4194 800C7194 7D270430 */  srw       r7, r9, r0
/* 0C4198 800C7198 48000030 */  b         lbl_800C71C8
lbl_800C719C:
/* 0C419C 800C719C 8123069C */  lwz       r9, 0x69c(r3)
/* 0C41A0 800C71A0 7CE06030 */  slw       r0, r7, r12
/* 0C41A4 800C71A4 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C41A8 800C71A8 396B0001 */  addi      r11, r11, 0x1
/* 0C41AC 800C71AC 90E306A0 */  stw       r7, 0x6a0(r3)
/* 0C41B0 800C71B0 7CE75430 */  srw       r7, r7, r10
/* 0C41B4 800C71B4 9123069C */  stw       r9, 0x69c(r3)
/* 0C41B8 800C71B8 7C070214 */  add       r0, r7, r0
/* 0C41BC 800C71BC 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C41C0 800C71C0 21650020 */  subfic    r11, r5, 0x20
/* 0C41C4 800C71C4 7C075C30 */  srw       r7, r0, r11
lbl_800C71C8:
/* 0C41C8 800C71C8 7CE00734 */  extsh     r0, r7
/* 0C41CC 800C71CC 7C060034 */  cntlzw    r6, r0
/* 0C41D0 800C71D0 20050020 */  subfic    r0, r5, 0x20
/* 0C41D4 800C71D4 7C060000 */  cmpw      r6, r0
/* 0C41D8 800C71D8 40810014 */  ble       lbl_800C71EC
/* 0C41DC 800C71DC 3800FFFF */  li        r0, -0x1
/* 0C41E0 800C71E0 7C002830 */  slw       r0, r0, r5
/* 0C41E4 800C71E4 7CE03A14 */  add       r7, r0, r7
/* 0C41E8 800C71E8 38E70001 */  addi      r7, r7, 0x1
lbl_800C71EC:
/* 0C41EC 800C71EC 38000060 */  li        r0, 0x60
/* 0C41F0 800C71F0 7C0407EC */  dcbz      r4, r0
/* 0C41F4 800C71F4 A8030690 */  lha       r0, 0x690(r3)
/* 0C41F8 800C71F8 3CA0800D */  lis       r5, D_800D1DF0@ha
/* 0C41FC 800C71FC 39051DF0 */  addi      r8, r5, D_800D1DF0@l
/* 0C4200 800C7200 7C003A14 */  add       r0, r0, r7
/* 0C4204 800C7204 B0030690 */  sth       r0, 0x690(r3)
/* 0C4208 800C7208 38C00001 */  li        r6, 0x1
/* 0C420C 800C720C B0040000 */  sth       r0, 0x0(r4)
/* 0C4210 800C7210 4800033C */  b         lbl_800C754C
lbl_800C7214:
/* 0C4214 800C7214 83CD8F00 */  lwz       r30, D_8018BE80@sda21(r0)
/* 0C4218 800C7218 83E306A4 */  lwz       r31, 0x6a4(r3)
/* 0C421C 800C721C 397E0020 */  addi      r11, r30, 0x20
/* 0C4220 800C7220 818306A0 */  lwz       r12, 0x6a0(r3)
/* 0C4224 800C7224 38BF0004 */  addi      r5, r31, 0x4
/* 0C4228 800C7228 2C1F001C */  cmpwi     r31, 0x1c
/* 0C422C 800C722C 5D8A2EFE */  rlwnm     r10, r12, r5, 27, 31
/* 0C4230 800C7230 418100C4 */  bgt       lbl_800C72F4
/* 0C4234 800C7234 7CBE50AE */  lbzx      r5, r30, r10
/* 0C4238 800C7238 7D6B50AE */  lbzx      r11, r11, r10
/* 0C423C 800C723C 2C0500FF */  cmpwi     r5, 0xff
/* 0C4240 800C7240 41820010 */  beq       lbl_800C7250
/* 0C4244 800C7244 7FFF5A14 */  add       r31, r31, r11
/* 0C4248 800C7248 93E306A4 */  stw       r31, 0x6a4(r3)
/* 0C424C 800C724C 4800024C */  b         lbl_800C7498
lbl_800C7250:
/* 0C4250 800C7250 38FE0044 */  addi      r7, r30, 0x44
/* 0C4254 800C7254 3BFF0005 */  addi      r31, r31, 0x5
/* 0C4258 800C7258 38000014 */  li        r0, 0x14
/* 0C425C 800C725C 38A00005 */  li        r5, 0x5
/* 0C4260 800C7260 38E70014 */  addi      r7, r7, 0x14
lbl_800C7264:
/* 0C4264 800C7264 2C1F0021 */  cmpwi     r31, 0x21
/* 0C4268 800C7268 554A083C */  slwi      r10, r10, 1
/* 0C426C 800C726C 41820018 */  beq       lbl_800C7284
/* 0C4270 800C7270 5D8BFFFE */  rlwnm     r11, r12, r31, 31, 31
/* 0C4274 800C7274 84070004 */  lwzu      r0, 0x4(r7)
/* 0C4278 800C7278 7D4A5B78 */  or        r10, r10, r11
/* 0C427C 800C727C 3BFF0001 */  addi      r31, r31, 0x1
/* 0C4280 800C7280 48000048 */  b         lbl_800C72C8
lbl_800C7284:
/* 0C4284 800C7284 8163069C */  lwz       r11, 0x69c(r3)
/* 0C4288 800C7288 3BE00001 */  li        r31, 0x1
/* 0C428C 800C728C 858B0004 */  lwzu      r12, 0x4(r11)
/* 0C4290 800C7290 84070004 */  lwzu      r0, 0x4(r7)
/* 0C4294 800C7294 9163069C */  stw       r11, 0x69c(r3)
/* 0C4298 800C7298 518A0FFE */  rlwimi    r10, r12, 1, 31, 31
/* 0C429C 800C729C 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C42A0 800C72A0 48000014 */  b         lbl_800C72B4
lbl_800C72A4:
/* 0C42A4 800C72A4 554A083C */  slwi      r10, r10, 1
/* 0C42A8 800C72A8 5D8BFFFE */  rlwnm     r11, r12, r31, 31, 31
/* 0C42AC 800C72AC 84070004 */  lwzu      r0, 0x4(r7)
/* 0C42B0 800C72B0 7D4A5B78 */  or        r10, r10, r11
lbl_800C72B4:
/* 0C42B4 800C72B4 7C0A0000 */  cmpw      r10, r0
/* 0C42B8 800C72B8 3BFF0001 */  addi      r31, r31, 0x1
/* 0C42BC 800C72BC 38A50001 */  addi      r5, r5, 0x1
/* 0C42C0 800C72C0 4181FFE4 */  bgt       lbl_800C72A4
/* 0C42C4 800C72C4 48000010 */  b         lbl_800C72D4
lbl_800C72C8:
/* 0C42C8 800C72C8 7C0A0000 */  cmpw      r10, r0
/* 0C42CC 800C72CC 38A50001 */  addi      r5, r5, 0x1
/* 0C42D0 800C72D0 4181FF94 */  bgt       lbl_800C7264
lbl_800C72D4:
/* 0C42D4 800C72D4 93E306A4 */  stw       r31, 0x6a4(r3)
/* 0C42D8 800C72D8 54A0103A */  slwi      r0, r5, 2
/* 0C42DC 800C72DC 7CBE0214 */  add       r5, r30, r0
/* 0C42E0 800C72E0 80FE0040 */  lwz       r7, 0x40(r30)
/* 0C42E4 800C72E4 8005008C */  lwz       r0, 0x8c(r5)
/* 0C42E8 800C72E8 7C003A14 */  add       r0, r0, r7
/* 0C42EC 800C72EC 7CAA00AE */  lbzx      r5, r10, r0
/* 0C42F0 800C72F0 480001A8 */  b         lbl_800C7498
lbl_800C72F4:
/* 0C42F4 800C72F4 2C1F0021 */  cmpwi     r31, 0x21
/* 0C42F8 800C72F8 8143069C */  lwz       r10, 0x69c(r3)
/* 0C42FC 800C72FC 418200B4 */  beq       lbl_800C73B0
/* 0C4300 800C7300 2C1F0020 */  cmpwi     r31, 0x20
/* 0C4304 800C7304 5D852EFE */  rlwnm     r5, r12, r5, 27, 31
/* 0C4308 800C7308 4182002C */  beq       lbl_800C7334
/* 0C430C 800C730C 7D5E28AE */  lbzx      r10, r30, r5
/* 0C4310 800C7310 7D6B28AE */  lbzx      r11, r11, r5
/* 0C4314 800C7314 2C0A00FF */  cmpwi     r10, 0xff
/* 0C4318 800C7318 7CBF5A14 */  add       r5, r31, r11
/* 0C431C 800C731C 418200F8 */  beq       lbl_800C7414
/* 0C4320 800C7320 2C050021 */  cmpwi     r5, 0x21
/* 0C4324 800C7324 90A306A4 */  stw       r5, 0x6a4(r3)
/* 0C4328 800C7328 418100EC */  bgt       lbl_800C7414
/* 0C432C 800C732C 7D455378 */  mr        r5, r10
/* 0C4330 800C7330 48000168 */  b         lbl_800C7498
lbl_800C7334:
/* 0C4334 800C7334 858A0004 */  lwzu      r12, 0x4(r10)
/* 0C4338 800C7338 9143069C */  stw       r10, 0x69c(r3)
/* 0C433C 800C733C 5185273E */  rlwimi    r5, r12, 4, 28, 31
/* 0C4340 800C7340 7D5E28AE */  lbzx      r10, r30, r5
/* 0C4344 800C7344 7D6B28AE */  lbzx      r11, r11, r5
/* 0C4348 800C7348 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C434C 800C734C 2C0A00FF */  cmpwi     r10, 0xff
/* 0C4350 800C7350 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C4354 800C7354 4182000C */  beq       lbl_800C7360
/* 0C4358 800C7358 7D455378 */  mr        r5, r10
/* 0C435C 800C735C 4800013C */  b         lbl_800C7498
lbl_800C7360:
/* 0C4360 800C7360 38FE0044 */  addi      r7, r30, 0x44
/* 0C4364 800C7364 3BE00014 */  li        r31, 0x14
/* 0C4368 800C7368 38E70014 */  addi      r7, r7, 0x14
/* 0C436C 800C736C 54AAD808 */  slwi      r10, r5, 27
/* 0C4370 800C7370 3BE00005 */  li        r31, 0x5
/* 0C4374 800C7374 518AF87E */  rlwimi    r10, r12, 31, 1, 31
lbl_800C7378:
/* 0C4378 800C7378 219F001F */  subfic    r12, r31, 0x1f
/* 0C437C 800C737C 84070004 */  lwzu      r0, 0x4(r7)
/* 0C4380 800C7380 7D456430 */  srw       r5, r10, r12
/* 0C4384 800C7384 7C050000 */  cmpw      r5, r0
/* 0C4388 800C7388 3BFF0001 */  addi      r31, r31, 0x1
/* 0C438C 800C738C 4181FFEC */  bgt       lbl_800C7378
/* 0C4390 800C7390 93E306A4 */  stw       r31, 0x6a4(r3)
lbl_800C7394:
/* 0C4394 800C7394 57E0103A */  slwi      r0, r31, 2
/* 0C4398 800C7398 813E0040 */  lwz       r9, 0x40(r30)
/* 0C439C 800C739C 7CFE0214 */  add       r7, r30, r0
/* 0C43A0 800C73A0 8007008C */  lwz       r0, 0x8c(r7)
/* 0C43A4 800C73A4 7C004A14 */  add       r0, r0, r9
/* 0C43A8 800C73A8 7CA500AE */  lbzx      r5, r5, r0
/* 0C43AC 800C73AC 480000EC */  b         lbl_800C7498
lbl_800C73B0:
/* 0C43B0 800C73B0 858A0004 */  lwzu      r12, 0x4(r10)
/* 0C43B4 800C73B4 55852EFE */  srwi      r5, r12, 27
/* 0C43B8 800C73B8 9143069C */  stw       r10, 0x69c(r3)
/* 0C43BC 800C73BC 7FFE28AE */  lbzx      r31, r30, r5
/* 0C43C0 800C73C0 7D6B28AE */  lbzx      r11, r11, r5
/* 0C43C4 800C73C4 2C1F00FF */  cmpwi     r31, 0xff
/* 0C43C8 800C73C8 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C43CC 800C73CC 396B0001 */  addi      r11, r11, 0x1
/* 0C43D0 800C73D0 41820010 */  beq       lbl_800C73E0
/* 0C43D4 800C73D4 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C43D8 800C73D8 7FE5FB78 */  mr        r5, r31
/* 0C43DC 800C73DC 480000BC */  b         lbl_800C7498
lbl_800C73E0:
/* 0C43E0 800C73E0 3BE00005 */  li        r31, 0x5
/* 0C43E4 800C73E4 38E00014 */  li        r7, 0x14
lbl_800C73E8:
/* 0C43E8 800C73E8 215F001F */  subfic    r10, r31, 0x1f
/* 0C43EC 800C73EC 3BFF0001 */  addi      r31, r31, 0x1
/* 0C43F0 800C73F0 38E70004 */  addi      r7, r7, 0x4
/* 0C43F4 800C73F4 7D855430 */  srw       r5, r12, r10
/* 0C43F8 800C73F8 7D3E3A14 */  add       r9, r30, r7
/* 0C43FC 800C73FC 80090044 */  lwz       r0, 0x44(r9)
/* 0C4400 800C7400 7C050000 */  cmpw      r5, r0
/* 0C4404 800C7404 4181FFE4 */  bgt       lbl_800C73E8
/* 0C4408 800C7408 381F0001 */  addi      r0, r31, 0x1
/* 0C440C 800C740C 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C4410 800C7410 4BFFFF84 */  b         lbl_800C7394
lbl_800C7414:
/* 0C4414 800C7414 201F0021 */  subfic    r0, r31, 0x21
/* 0C4418 800C7418 38A0FFFF */  li        r5, -0x1
/* 0C441C 800C741C 7CA90030 */  slw       r9, r5, r0
/* 0C4420 800C7420 7D854878 */  andc      r5, r12, r9
/* 0C4424 800C7424 393E0044 */  addi      r9, r30, 0x44
/* 0C4428 800C7428 8143069C */  lwz       r10, 0x69c(r3)
/* 0C442C 800C742C 20FF0021 */  subfic    r7, r31, 0x21
/* 0C4430 800C7430 3BE70001 */  addi      r31, r7, 0x1
/* 0C4434 800C7434 54E7103A */  slwi      r7, r7, 2
/* 0C4438 800C7438 858A0004 */  lwzu      r12, 0x4(r10)
/* 0C443C 800C743C 7D293A14 */  add       r9, r9, r7
/* 0C4440 800C7440 9143069C */  stw       r10, 0x69c(r3)
/* 0C4444 800C7444 54A5083C */  slwi      r5, r5, 1
/* 0C4448 800C7448 918306A0 */  stw       r12, 0x6a0(r3)
/* 0C444C 800C744C 51850FFE */  rlwimi    r5, r12, 1, 31, 31
/* 0C4450 800C7450 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C4454 800C7454 39400002 */  li        r10, 0x2
/* 0C4458 800C7458 48000018 */  b         lbl_800C7470
lbl_800C745C:
/* 0C445C 800C745C 54A5083C */  slwi      r5, r5, 1
/* 0C4460 800C7460 3BFF0001 */  addi      r31, r31, 0x1
/* 0C4464 800C7464 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C4468 800C7468 7CA55A14 */  add       r5, r5, r11
/* 0C446C 800C746C 394A0001 */  addi      r10, r10, 0x1
lbl_800C7470:
/* 0C4470 800C7470 7C053800 */  cmpw      r5, r7
/* 0C4474 800C7474 5D8B57FE */  rlwnm     r11, r12, r10, 31, 31
/* 0C4478 800C7478 4181FFE4 */  bgt       lbl_800C745C
/* 0C447C 800C747C 914306A4 */  stw       r10, 0x6a4(r3)
/* 0C4480 800C7480 57E0103A */  slwi      r0, r31, 2
/* 0C4484 800C7484 7CFE0214 */  add       r7, r30, r0
/* 0C4488 800C7488 813E0040 */  lwz       r9, 0x40(r30)
/* 0C448C 800C748C 8007008C */  lwz       r0, 0x8c(r7)
/* 0C4490 800C7490 7C004A14 */  add       r0, r0, r9
/* 0C4494 800C7494 7CA500AE */  lbzx      r5, r5, r0
lbl_800C7498:
/* 0C4498 800C7498 54BE073F */  clrlwi.   r30, r5, 28
/* 0C449C 800C749C 7CA72670 */  srawi     r7, r5, 4
/* 0C44A0 800C74A0 4182009C */  beq       lbl_800C753C
/* 0C44A4 800C74A4 7CC63A14 */  add       r6, r6, r7
/* 0C44A8 800C74A8 812306A4 */  lwz       r9, 0x6a4(r3)
/* 0C44AC 800C74AC 21490021 */  subfic    r10, r9, 0x21
/* 0C44B0 800C74B0 80E306A0 */  lwz       r7, 0x6a0(r3)
/* 0C44B4 800C74B4 7D6AF051 */  subf.     r11, r10, r30
/* 0C44B8 800C74B8 3989FFFF */  subi      r12, r9, 0x1
/* 0C44BC 800C74BC 4181001C */  bgt       lbl_800C74D8
/* 0C44C0 800C74C0 7C09F214 */  add       r0, r9, r30
/* 0C44C4 800C74C4 7CE96030 */  slw       r9, r7, r12
/* 0C44C8 800C74C8 900306A4 */  stw       r0, 0x6a4(r3)
/* 0C44CC 800C74CC 201E0020 */  subfic    r0, r30, 0x20
/* 0C44D0 800C74D0 7D270430 */  srw       r7, r9, r0
/* 0C44D4 800C74D4 48000030 */  b         lbl_800C7504
lbl_800C74D8:
/* 0C44D8 800C74D8 8123069C */  lwz       r9, 0x69c(r3)
/* 0C44DC 800C74DC 7CE06030 */  slw       r0, r7, r12
/* 0C44E0 800C74E0 84E90004 */  lwzu      r7, 0x4(r9)
/* 0C44E4 800C74E4 396B0001 */  addi      r11, r11, 0x1
/* 0C44E8 800C74E8 90E306A0 */  stw       r7, 0x6a0(r3)
/* 0C44EC 800C74EC 7CE75430 */  srw       r7, r7, r10
/* 0C44F0 800C74F0 9123069C */  stw       r9, 0x69c(r3)
/* 0C44F4 800C74F4 7C070214 */  add       r0, r7, r0
/* 0C44F8 800C74F8 916306A4 */  stw       r11, 0x6a4(r3)
/* 0C44FC 800C74FC 217E0020 */  subfic    r11, r30, 0x20
/* 0C4500 800C7500 7C075C30 */  srw       r7, r0, r11
lbl_800C7504:
/* 0C4504 800C7504 7CE50034 */  cntlzw    r5, r7
/* 0C4508 800C7508 201E0020 */  subfic    r0, r30, 0x20
/* 0C450C 800C750C 7C050000 */  cmpw      r5, r0
/* 0C4510 800C7510 40810014 */  ble       lbl_800C7524
/* 0C4514 800C7514 3800FFFF */  li        r0, -0x1
/* 0C4518 800C7518 7C00F030 */  slw       r0, r0, r30
/* 0C451C 800C751C 7CE03A14 */  add       r7, r0, r7
/* 0C4520 800C7520 38E70001 */  addi      r7, r7, 0x1
lbl_800C7524:
/* 0C4524 800C7524 7CA83214 */  add       r5, r8, r6
/* 0C4528 800C7528 88050000 */  lbz       r0, 0x0(r5)
/* 0C452C 800C752C 7CE50734 */  extsh     r5, r7
/* 0C4530 800C7530 5400083C */  slwi      r0, r0, 1
/* 0C4534 800C7534 7CA4032E */  sthx      r5, r4, r0
/* 0C4538 800C7538 48000010 */  b         lbl_800C7548
lbl_800C753C:
/* 0C453C 800C753C 2C07000F */  cmpwi     r7, 0xf
/* 0C4540 800C7540 40820014 */  bne       lbl_800C7554
/* 0C4544 800C7544 38C6000F */  addi      r6, r6, 0xf
lbl_800C7548:
/* 0C4548 800C7548 38C60001 */  addi      r6, r6, 0x1
lbl_800C754C:
/* 0C454C 800C754C 2C060040 */  cmpwi     r6, 0x40
/* 0C4550 800C7550 4180FCC4 */  blt       lbl_800C7214
lbl_800C7554:
/* 0C4554 800C7554 83E10014 */  lwz       r31, 0x14(r1)
/* 0C4558 800C7558 83C10010 */  lwz       r30, 0x10(r1)
/* 0C455C 800C755C 38210018 */  addi      r1, r1, 0x18
/* 0C4560 800C7560 4E800020 */  blr

glabel THPInit
/* 0C4564 800C7564 7C0802A6 */  mflr      r0
/* 0C4568 800C7568 3C808019 */  lis       r4, D_80188CC0@ha
/* 0C456C 800C756C 90010004 */  stw       r0, 0x4(r1)
/* 0C4570 800C7570 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C4574 800C7574 93E1000C */  stw       r31, 0xc(r1)
/* 0C4578 800C7578 3BE48CC0 */  addi      r31, r4, D_80188CC0@l
/* 0C457C 800C757C 806D8868 */  lwz       r3, D_8018B7E8@sda21(r0)
/* 0C4580 800C7580 4BFD4705 */  bl        OSRegisterVersion
/* 0C4584 800C7584 3C80E000 */  lis       r4, 0xe000
/* 0C4588 800C7588 909F0100 */  stw       r4, 0x100(r31)
/* 0C458C 800C758C 38842000 */  addi      r4, r4, 0x2000
/* 0C4590 800C7590 909F0104 */  stw       r4, 0x104(r31)
/* 0C4594 800C7594 38840800 */  addi      r4, r4, 0x800
/* 0C4598 800C7598 909F0108 */  stw       r4, 0x108(r31)
/* 0C459C 800C759C 3C80E000 */  lis       r4, 0xe000
/* 0C45A0 800C75A0 909F010C */  stw       r4, 0x10c(r31)
/* 0C45A4 800C75A4 38842800 */  addi      r4, r4, 0x2800
/* 0C45A8 800C75A8 909F0110 */  stw       r4, 0x110(r31)
/* 0C45AC 800C75AC 38840A00 */  addi      r4, r4, 0xa00
/* 0C45B0 800C75B0 909F0114 */  stw       r4, 0x114(r31)
/* 0C45B4 800C75B4 38600004 */  li        r3, 0x4
/* 0C45B8 800C75B8 64630004 */  oris      r3, r3, 0x4
/* 0C45BC 800C75BC 7C72E3A6 */  mtspr     GQR2, r3
/* 0C45C0 800C75C0 38600005 */  li        r3, 0x5
/* 0C45C4 800C75C4 64630005 */  oris      r3, r3, 0x5
/* 0C45C8 800C75C8 7C73E3A6 */  mtspr     GQR3, r3
/* 0C45CC 800C75CC 38600006 */  li        r3, 0x6
/* 0C45D0 800C75D0 64630006 */  oris      r3, r3, 0x6
/* 0C45D4 800C75D4 7C74E3A6 */  mtspr     GQR4, r3
/* 0C45D8 800C75D8 38600007 */  li        r3, 0x7
/* 0C45DC 800C75DC 64630007 */  oris      r3, r3, 0x7
/* 0C45E0 800C75E0 7C75E3A6 */  mtspr     GQR5, r3
/* 0C45E4 800C75E4 38000001 */  li        r0, 0x1
/* 0C45E8 800C75E8 900D8F74 */  stw       r0, D_8018BEF4@sda21(r0)
/* 0C45EC 800C75EC 38600001 */  li        r3, 0x1
/* 0C45F0 800C75F0 80010014 */  lwz       r0, 0x14(r1)
/* 0C45F4 800C75F4 83E1000C */  lwz       r31, 0xc(r1)
/* 0C45F8 800C75F8 38210010 */  addi      r1, r1, 0x10
/* 0C45FC 800C75FC 7C0803A6 */  mtlr      r0
/* 0C4600 800C7600 4E800020 */  blr

# 0x800D1DF0 - 0x800D1E80
.section .rodata, "a"

.balign 8

glabel D_800D1DF0
	.long 0x00010810
	.long 0x0902030A
	.long 0x11182019
	.long 0x120B0405
	.long 0x0C131A21
	.long 0x28302922
	.long 0x1B140D06
	.long 0x070E151C
	.long 0x232A3138
	.long 0x39322B24
	.long 0x1D160F17
	.long 0x1E252C33
	.long 0x3A3B342D
	.long 0x261F272E
	.long 0x353C3D36
	.long 0x2F373E3F
	.long 0x3F3F3F3F
	.long 0x3F3F3F3F
	.long 0x3F3F3F3F
	.long 0x3F3F3F3F
	.long 0x3FF00000
	.long 0x00000000
	.long 0x3FF63150
	.long 0xC0000000
	.long 0x3FF4E7AE
	.long 0xA0000000
	.long 0x3FF2D062
	.long 0xE0000000
	.long 0x3FF00000
	.long 0x00000000
	.long 0x3FE92469
	.long 0xC0000000
	.long 0x3FE1517A
	.long 0x80000000
	.long 0x3FD1A855
	.long 0xE0000000

# 0x800F4D40 - 0x800F4D80
.section .data, "wa"

.balign 8

glabel D_800F4D40
	.string "<< Dolphin SDK - THP\trelease build: Aug 27 2002 20:42:01 >>"

glabel gap_05_800F4D7C_data
.hidden gap_05_800F4D7C_data
	.long 0x00000000

# 0x80188CC0 - 0x80188DF0
.section .bss, "wa"

glabel D_80188CC0
	.skip 0x100

glabel D_80188DC0
	.skip 0xC

glabel D_80188DCC
	.skip 0xC

glabel D_80188DD8
	.skip 0x18

# 0x8018B7E8 - 0x8018B7F0
.section .sdata, "wa"

glabel D_8018B7E8
	.long D_800F4D40
	.long 0x00000000

# 0x8018BDE0 - 0x8018BEF8
.section .sbss, "wa"

glabel D_8018BDE0
	.skip 0x20

glabel D_8018BE00
	.skip 0x20

glabel D_8018BE20
	.skip 0x20

glabel D_8018BE40
	.skip 0x20

glabel D_8018BE60
	.skip 0x20

glabel D_8018BE80
	.skip 0x4

glabel D_8018BE84
	.skip 0x4

glabel D_8018BE88
	.skip 0x4

glabel D_8018BE8C
	.skip 0x14

glabel D_8018BEA0
	.skip 0x20

glabel D_8018BEC0
	.skip 0x20

glabel D_8018BEE0
	.skip 0x4

glabel D_8018BEE4
	.skip 0x4

glabel D_8018BEE8
	.skip 0x4

glabel D_8018BEEC
	.skip 0x4

glabel D_8018BEF0
	.skip 0x4

glabel D_8018BEF4
	.skip 0x4

# 0x8018C448 - 0x8018C468
.section .sdata2, "a"

glabel D_8018C448
	.double 4503599627370496

glabel D_8018C450
	.float 1.4142135

glabel D_8018C454
	.float 1.847759

glabel D_8018C458
	.float 1.0823922

glabel D_8018C45C
	.float -2.613126

glabel D_8018C460
	.float 1024

glabel gap_09_8018C464_sdata2
.hidden gap_09_8018C464_sdata2
	.long 0x00000000
