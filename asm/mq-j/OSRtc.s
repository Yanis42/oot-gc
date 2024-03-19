# OSRtc.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009F974 - 0x800A028C

glabel fn_8009F974
/* 09C974 8009F974 7C0802A6 */  mflr      r0
/* 09C978 8009F978 3C608018 */  lis       r3, Scb@ha
/* 09C97C 8009F97C 90010004 */  stw       r0, 0x4(r1)
/* 09C980 8009F980 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09C984 8009F984 93E10014 */  stw       r31, 0x14(r1)
/* 09C988 8009F988 3BE37340 */  addi      r31, r3, Scb@l
/* 09C98C 8009F98C 93C10010 */  stw       r30, 0x10(r1)
/* 09C990 8009F990 3BDF0040 */  addi      r30, r31, 0x40
/* 09C994 8009F994 809F0040 */  lwz       r4, 0x40(r31)
/* 09C998 8009F998 7C7F2214 */  add       r3, r31, r4
/* 09C99C 8009F99C 20A40040 */  subfic    r5, r4, 0x40
/* 09C9A0 8009F9A0 48000035 */  bl        fn_8009F9D4
/* 09C9A4 8009F9A4 907F004C */  stw       r3, 0x4c(r31)
/* 09C9A8 8009F9A8 801F004C */  lwz       r0, 0x4c(r31)
/* 09C9AC 8009F9AC 2C000000 */  cmpwi     r0, 0x0
/* 09C9B0 8009F9B0 4182000C */  beq       lbl_8009F9BC
/* 09C9B4 8009F9B4 38000040 */  li        r0, 0x40
/* 09C9B8 8009F9B8 901E0000 */  stw       r0, 0x0(r30)
lbl_8009F9BC:
/* 09C9BC 8009F9BC 8001001C */  lwz       r0, 0x1c(r1)
/* 09C9C0 8009F9C0 83E10014 */  lwz       r31, 0x14(r1)
/* 09C9C4 8009F9C4 83C10010 */  lwz       r30, 0x10(r1)
/* 09C9C8 8009F9C8 38210018 */  addi      r1, r1, 0x18
/* 09C9CC 8009F9CC 7C0803A6 */  mtlr      r0
/* 09C9D0 8009F9D0 4E800020 */  blr

glabel fn_8009F9D4
/* 09C9D4 8009F9D4 7C0802A6 */  mflr      r0
/* 09C9D8 8009F9D8 3CC0800A */  lis       r6, fn_8009F974@ha
/* 09C9DC 8009F9DC 90010004 */  stw       r0, 0x4(r1)
/* 09C9E0 8009F9E0 3806F974 */  addi      r0, r6, fn_8009F974@l
/* 09C9E4 8009F9E4 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09C9E8 8009F9E8 93E10024 */  stw       r31, 0x24(r1)
/* 09C9EC 8009F9EC 3BE40000 */  addi      r31, r4, 0x0
/* 09C9F0 8009F9F0 38800001 */  li        r4, 0x1
/* 09C9F4 8009F9F4 93C10020 */  stw       r30, 0x20(r1)
/* 09C9F8 8009F9F8 3BC50000 */  addi      r30, r5, 0x0
/* 09C9FC 8009F9FC 7C050378 */  mr        r5, r0
/* 09CA00 8009FA00 93A1001C */  stw       r29, 0x1c(r1)
/* 09CA04 8009FA04 3BA30000 */  addi      r29, r3, 0x0
/* 09CA08 8009FA08 38600000 */  li        r3, 0x0
/* 09CA0C 8009FA0C 480032DD */  bl        EXILock
/* 09CA10 8009FA10 2C030000 */  cmpwi     r3, 0x0
/* 09CA14 8009FA14 4082000C */  bne       lbl_8009FA20
/* 09CA18 8009FA18 38600000 */  li        r3, 0x0
/* 09CA1C 8009FA1C 480000B4 */  b         lbl_8009FAD0
lbl_8009FA20:
/* 09CA20 8009FA20 38600000 */  li        r3, 0x0
/* 09CA24 8009FA24 38800001 */  li        r4, 0x1
/* 09CA28 8009FA28 38A00003 */  li        r5, 0x3
/* 09CA2C 8009FA2C 48002BB5 */  bl        EXISelect
/* 09CA30 8009FA30 2C030000 */  cmpwi     r3, 0x0
/* 09CA34 8009FA34 40820014 */  bne       lbl_8009FA48
/* 09CA38 8009FA38 38600000 */  li        r3, 0x0
/* 09CA3C 8009FA3C 480033A1 */  bl        EXIUnlock
/* 09CA40 8009FA40 38600000 */  li        r3, 0x0
/* 09CA44 8009FA44 4800008C */  b         lbl_8009FAD0
lbl_8009FA48:
/* 09CA48 8009FA48 57FF3032 */  slwi      r31, r31, 6
/* 09CA4C 8009FA4C 381F0100 */  addi      r0, r31, 0x100
/* 09CA50 8009FA50 6400A000 */  oris      r0, r0, 0xa000
/* 09CA54 8009FA54 90010014 */  stw       r0, 0x14(r1)
/* 09CA58 8009FA58 38810014 */  addi      r4, r1, 0x14
/* 09CA5C 8009FA5C 38600000 */  li        r3, 0x0
/* 09CA60 8009FA60 38A00004 */  li        r5, 0x4
/* 09CA64 8009FA64 38C00001 */  li        r6, 0x1
/* 09CA68 8009FA68 38E00000 */  li        r7, 0x0
/* 09CA6C 8009FA6C 48002021 */  bl        EXIImm
/* 09CA70 8009FA70 7C600034 */  cntlzw    r0, r3
/* 09CA74 8009FA74 541FD97E */  srwi      r31, r0, 5
/* 09CA78 8009FA78 38600000 */  li        r3, 0x0
/* 09CA7C 8009FA7C 480023F9 */  bl        EXISync
/* 09CA80 8009FA80 7C600034 */  cntlzw    r0, r3
/* 09CA84 8009FA84 5400D97E */  srwi      r0, r0, 5
/* 09CA88 8009FA88 389D0000 */  addi      r4, r29, 0x0
/* 09CA8C 8009FA8C 38BE0000 */  addi      r5, r30, 0x0
/* 09CA90 8009FA90 7FFF0378 */  or        r31, r31, r0
/* 09CA94 8009FA94 38600000 */  li        r3, 0x0
/* 09CA98 8009FA98 38C00001 */  li        r6, 0x1
/* 09CA9C 8009FA9C 4800224D */  bl        EXIImmEx
/* 09CAA0 8009FAA0 7C600034 */  cntlzw    r0, r3
/* 09CAA4 8009FAA4 5400D97E */  srwi      r0, r0, 5
/* 09CAA8 8009FAA8 7FFF0378 */  or        r31, r31, r0
/* 09CAAC 8009FAAC 38600000 */  li        r3, 0x0
/* 09CAB0 8009FAB0 48002C5D */  bl        EXIDeselect
/* 09CAB4 8009FAB4 7C600034 */  cntlzw    r0, r3
/* 09CAB8 8009FAB8 5400D97E */  srwi      r0, r0, 5
/* 09CABC 8009FABC 7FFF0378 */  or        r31, r31, r0
/* 09CAC0 8009FAC0 38600000 */  li        r3, 0x0
/* 09CAC4 8009FAC4 48003319 */  bl        EXIUnlock
/* 09CAC8 8009FAC8 7FE00034 */  cntlzw    r0, r31
/* 09CACC 8009FACC 5403D97E */  srwi      r3, r0, 5
lbl_8009FAD0:
/* 09CAD0 8009FAD0 8001002C */  lwz       r0, 0x2c(r1)
/* 09CAD4 8009FAD4 83E10024 */  lwz       r31, 0x24(r1)
/* 09CAD8 8009FAD8 83C10020 */  lwz       r30, 0x20(r1)
/* 09CADC 8009FADC 83A1001C */  lwz       r29, 0x1c(r1)
/* 09CAE0 8009FAE0 38210028 */  addi      r1, r1, 0x28
/* 09CAE4 8009FAE4 7C0803A6 */  mtlr      r0
/* 09CAE8 8009FAE8 4E800020 */  blr

glabel __OSInitSram
/* 09CAEC 8009FAEC 7C0802A6 */  mflr      r0
/* 09CAF0 8009FAF0 3C608018 */  lis       r3, Scb@ha
/* 09CAF4 8009FAF4 90010004 */  stw       r0, 0x4(r1)
/* 09CAF8 8009FAF8 38800040 */  li        r4, 0x40
/* 09CAFC 8009FAFC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09CB00 8009FB00 93E10014 */  stw       r31, 0x14(r1)
/* 09CB04 8009FB04 3BE00000 */  li        r31, 0x0
/* 09CB08 8009FB08 93C10010 */  stw       r30, 0x10(r1)
/* 09CB0C 8009FB0C 3BC37340 */  addi      r30, r3, Scb@l
/* 09CB10 8009FB10 387E0000 */  addi      r3, r30, 0x0
/* 09CB14 8009FB14 93FE0044 */  stw       r31, 0x44(r30)
/* 09CB18 8009FB18 93FE0048 */  stw       r31, 0x48(r30)
/* 09CB1C 8009FB1C 4BFFD17D */  bl        DCInvalidateRange
/* 09CB20 8009FB20 38600000 */  li        r3, 0x0
/* 09CB24 8009FB24 38800001 */  li        r4, 0x1
/* 09CB28 8009FB28 38A00000 */  li        r5, 0x0
/* 09CB2C 8009FB2C 480031BD */  bl        EXILock
/* 09CB30 8009FB30 2C030000 */  cmpwi     r3, 0x0
/* 09CB34 8009FB34 40820008 */  bne       lbl_8009FB3C
/* 09CB38 8009FB38 480000C4 */  b         lbl_8009FBFC
lbl_8009FB3C:
/* 09CB3C 8009FB3C 38600000 */  li        r3, 0x0
/* 09CB40 8009FB40 38800001 */  li        r4, 0x1
/* 09CB44 8009FB44 38A00003 */  li        r5, 0x3
/* 09CB48 8009FB48 48002A99 */  bl        EXISelect
/* 09CB4C 8009FB4C 2C030000 */  cmpwi     r3, 0x0
/* 09CB50 8009FB50 40820010 */  bne       lbl_8009FB60
/* 09CB54 8009FB54 38600000 */  li        r3, 0x0
/* 09CB58 8009FB58 48003285 */  bl        EXIUnlock
/* 09CB5C 8009FB5C 480000A0 */  b         lbl_8009FBFC
lbl_8009FB60:
/* 09CB60 8009FB60 3C602000 */  lis       r3, 0x2000
/* 09CB64 8009FB64 38030100 */  addi      r0, r3, 0x100
/* 09CB68 8009FB68 90010008 */  stw       r0, 0x8(r1)
/* 09CB6C 8009FB6C 38810008 */  addi      r4, r1, 0x8
/* 09CB70 8009FB70 38600000 */  li        r3, 0x0
/* 09CB74 8009FB74 38A00004 */  li        r5, 0x4
/* 09CB78 8009FB78 38C00001 */  li        r6, 0x1
/* 09CB7C 8009FB7C 38E00000 */  li        r7, 0x0
/* 09CB80 8009FB80 48001F0D */  bl        EXIImm
/* 09CB84 8009FB84 7C600034 */  cntlzw    r0, r3
/* 09CB88 8009FB88 541FD97E */  srwi      r31, r0, 5
/* 09CB8C 8009FB8C 38600000 */  li        r3, 0x0
/* 09CB90 8009FB90 480022E5 */  bl        EXISync
/* 09CB94 8009FB94 7C600034 */  cntlzw    r0, r3
/* 09CB98 8009FB98 5400D97E */  srwi      r0, r0, 5
/* 09CB9C 8009FB9C 389E0000 */  addi      r4, r30, 0x0
/* 09CBA0 8009FBA0 7FFF0378 */  or        r31, r31, r0
/* 09CBA4 8009FBA4 38600000 */  li        r3, 0x0
/* 09CBA8 8009FBA8 38A00040 */  li        r5, 0x40
/* 09CBAC 8009FBAC 38C00000 */  li        r6, 0x0
/* 09CBB0 8009FBB0 38E00000 */  li        r7, 0x0
/* 09CBB4 8009FBB4 480021D5 */  bl        EXIDma
/* 09CBB8 8009FBB8 7C600034 */  cntlzw    r0, r3
/* 09CBBC 8009FBBC 5400D97E */  srwi      r0, r0, 5
/* 09CBC0 8009FBC0 7FFF0378 */  or        r31, r31, r0
/* 09CBC4 8009FBC4 38600000 */  li        r3, 0x0
/* 09CBC8 8009FBC8 480022AD */  bl        EXISync
/* 09CBCC 8009FBCC 7C600034 */  cntlzw    r0, r3
/* 09CBD0 8009FBD0 5400D97E */  srwi      r0, r0, 5
/* 09CBD4 8009FBD4 7FFF0378 */  or        r31, r31, r0
/* 09CBD8 8009FBD8 38600000 */  li        r3, 0x0
/* 09CBDC 8009FBDC 48002B31 */  bl        EXIDeselect
/* 09CBE0 8009FBE0 7C600034 */  cntlzw    r0, r3
/* 09CBE4 8009FBE4 5400D97E */  srwi      r0, r0, 5
/* 09CBE8 8009FBE8 7FFF0378 */  or        r31, r31, r0
/* 09CBEC 8009FBEC 38600000 */  li        r3, 0x0
/* 09CBF0 8009FBF0 480031ED */  bl        EXIUnlock
/* 09CBF4 8009FBF4 7FE00034 */  cntlzw    r0, r31
/* 09CBF8 8009FBF8 541FD97E */  srwi      r31, r0, 5
lbl_8009FBFC:
/* 09CBFC 8009FBFC 93FE004C */  stw       r31, 0x4c(r30)
/* 09CC00 8009FC00 38000040 */  li        r0, 0x40
/* 09CC04 8009FC04 901E0040 */  stw       r0, 0x40(r30)
/* 09CC08 8009FC08 8001001C */  lwz       r0, 0x1c(r1)
/* 09CC0C 8009FC0C 83E10014 */  lwz       r31, 0x14(r1)
/* 09CC10 8009FC10 83C10010 */  lwz       r30, 0x10(r1)
/* 09CC14 8009FC14 38210018 */  addi      r1, r1, 0x18
/* 09CC18 8009FC18 7C0803A6 */  mtlr      r0
/* 09CC1C 8009FC1C 4E800020 */  blr

glabel __OSLockSram
/* 09CC20 8009FC20 7C0802A6 */  mflr      r0
/* 09CC24 8009FC24 3C608018 */  lis       r3, Scb@ha
/* 09CC28 8009FC28 90010004 */  stw       r0, 0x4(r1)
/* 09CC2C 8009FC2C 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09CC30 8009FC30 93E1000C */  stw       r31, 0xc(r1)
/* 09CC34 8009FC34 3BE37340 */  addi      r31, r3, Scb@l
/* 09CC38 8009FC38 4BFFE611 */  bl        OSDisableInterrupts
/* 09CC3C 8009FC3C 801F0048 */  lwz       r0, 0x48(r31)
/* 09CC40 8009FC40 389F0048 */  addi      r4, r31, 0x48
/* 09CC44 8009FC44 2C000000 */  cmpwi     r0, 0x0
/* 09CC48 8009FC48 41820010 */  beq       lbl_8009FC58
/* 09CC4C 8009FC4C 4BFFE625 */  bl        OSRestoreInterrupts
/* 09CC50 8009FC50 3BE00000 */  li        r31, 0x0
/* 09CC54 8009FC54 48000010 */  b         lbl_8009FC64
lbl_8009FC58:
/* 09CC58 8009FC58 907F0044 */  stw       r3, 0x44(r31)
/* 09CC5C 8009FC5C 38000001 */  li        r0, 0x1
/* 09CC60 8009FC60 90040000 */  stw       r0, 0x0(r4)
lbl_8009FC64:
/* 09CC64 8009FC64 7FE3FB78 */  mr        r3, r31
/* 09CC68 8009FC68 80010014 */  lwz       r0, 0x14(r1)
/* 09CC6C 8009FC6C 83E1000C */  lwz       r31, 0xc(r1)
/* 09CC70 8009FC70 38210010 */  addi      r1, r1, 0x10
/* 09CC74 8009FC74 7C0803A6 */  mtlr      r0
/* 09CC78 8009FC78 4E800020 */  blr

glabel __OSLockSramEx
/* 09CC7C 8009FC7C 7C0802A6 */  mflr      r0
/* 09CC80 8009FC80 3C608018 */  lis       r3, Scb@ha
/* 09CC84 8009FC84 90010004 */  stw       r0, 0x4(r1)
/* 09CC88 8009FC88 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09CC8C 8009FC8C 93E1000C */  stw       r31, 0xc(r1)
/* 09CC90 8009FC90 3BE37340 */  addi      r31, r3, Scb@l
/* 09CC94 8009FC94 4BFFE5B5 */  bl        OSDisableInterrupts
/* 09CC98 8009FC98 801F0048 */  lwz       r0, 0x48(r31)
/* 09CC9C 8009FC9C 389F0048 */  addi      r4, r31, 0x48
/* 09CCA0 8009FCA0 2C000000 */  cmpwi     r0, 0x0
/* 09CCA4 8009FCA4 41820010 */  beq       lbl_8009FCB4
/* 09CCA8 8009FCA8 4BFFE5C9 */  bl        OSRestoreInterrupts
/* 09CCAC 8009FCAC 38600000 */  li        r3, 0x0
/* 09CCB0 8009FCB0 48000014 */  b         lbl_8009FCC4
lbl_8009FCB4:
/* 09CCB4 8009FCB4 907F0044 */  stw       r3, 0x44(r31)
/* 09CCB8 8009FCB8 38000001 */  li        r0, 0x1
/* 09CCBC 8009FCBC 387F0014 */  addi      r3, r31, 0x14
/* 09CCC0 8009FCC0 90040000 */  stw       r0, 0x0(r4)
lbl_8009FCC4:
/* 09CCC4 8009FCC4 80010014 */  lwz       r0, 0x14(r1)
/* 09CCC8 8009FCC8 83E1000C */  lwz       r31, 0xc(r1)
/* 09CCCC 8009FCCC 38210010 */  addi      r1, r1, 0x10
/* 09CCD0 8009FCD0 7C0803A6 */  mtlr      r0
/* 09CCD4 8009FCD4 4E800020 */  blr

glabel fn_8009FCD8
/* 09CCD8 8009FCD8 7C0802A6 */  mflr      r0
/* 09CCDC 8009FCDC 2C030000 */  cmpwi     r3, 0x0
/* 09CCE0 8009FCE0 90010004 */  stw       r0, 0x4(r1)
/* 09CCE4 8009FCE4 3C608018 */  lis       r3, Scb@ha
/* 09CCE8 8009FCE8 9421FFD0 */  stwu      r1, -0x30(r1)
/* 09CCEC 8009FCEC BF61001C */  stmw      r27, 0x1c(r1)
/* 09CCF0 8009FCF0 3BE37340 */  addi      r31, r3, Scb@l
/* 09CCF4 8009FCF4 418202C4 */  beq       lbl_8009FFB8
/* 09CCF8 8009FCF8 28040000 */  cmplwi    r4, 0x0
/* 09CCFC 8009FCFC 408201B0 */  bne       lbl_8009FEAC
/* 09CD00 8009FD00 887F0013 */  lbz       r3, 0x13(r31)
/* 09CD04 8009FD04 546007BE */  clrlwi    r0, r3, 30
/* 09CD08 8009FD08 28000002 */  cmplwi    r0, 0x2
/* 09CD0C 8009FD0C 4081000C */  ble       lbl_8009FD18
/* 09CD10 8009FD10 5460003A */  clrrwi    r0, r3, 2
/* 09CD14 8009FD14 981F0013 */  stb       r0, 0x13(r31)
lbl_8009FD18:
/* 09CD18 8009FD18 38000000 */  li        r0, 0x0
/* 09CD1C 8009FD1C B01F0002 */  sth       r0, 0x2(r31)
/* 09CD20 8009FD20 38BF0014 */  addi      r5, r31, 0x14
/* 09CD24 8009FD24 38DF000C */  addi      r6, r31, 0xc
/* 09CD28 8009FD28 38650001 */  addi      r3, r5, 0x1
/* 09CD2C 8009FD2C B01F0000 */  sth       r0, 0x0(r31)
/* 09CD30 8009FD30 7C661850 */  subf      r3, r6, r3
/* 09CD34 8009FD34 7C062840 */  cmplw     r6, r5
/* 09CD38 8009FD38 5463F87E */  srwi      r3, r3, 1
/* 09CD3C 8009FD3C 40800170 */  bge       lbl_8009FEAC
/* 09CD40 8009FD40 5460E8FF */  srwi.     r0, r3, 3
/* 09CD44 8009FD44 7C0903A6 */  mtctr     r0
/* 09CD48 8009FD48 41820134 */  beq       lbl_8009FE7C
lbl_8009FD4C:
/* 09CD4C 8009FD4C A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CD50 8009FD50 A0060000 */  lhz       r0, 0x0(r6)
/* 09CD54 8009FD54 7C050214 */  add       r0, r5, r0
/* 09CD58 8009FD58 B01F0000 */  sth       r0, 0x0(r31)
/* 09CD5C 8009FD5C A0060000 */  lhz       r0, 0x0(r6)
/* 09CD60 8009FD60 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CD64 8009FD64 7C0000F8 */  nor       r0, r0, r0
/* 09CD68 8009FD68 7C050214 */  add       r0, r5, r0
/* 09CD6C 8009FD6C B01F0002 */  sth       r0, 0x2(r31)
/* 09CD70 8009FD70 A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CD74 8009FD74 A0060002 */  lhz       r0, 0x2(r6)
/* 09CD78 8009FD78 7C050214 */  add       r0, r5, r0
/* 09CD7C 8009FD7C B01F0000 */  sth       r0, 0x0(r31)
/* 09CD80 8009FD80 A0060002 */  lhz       r0, 0x2(r6)
/* 09CD84 8009FD84 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CD88 8009FD88 7C0000F8 */  nor       r0, r0, r0
/* 09CD8C 8009FD8C 7C050214 */  add       r0, r5, r0
/* 09CD90 8009FD90 B01F0002 */  sth       r0, 0x2(r31)
/* 09CD94 8009FD94 A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CD98 8009FD98 A0060004 */  lhz       r0, 0x4(r6)
/* 09CD9C 8009FD9C 7C050214 */  add       r0, r5, r0
/* 09CDA0 8009FDA0 B01F0000 */  sth       r0, 0x0(r31)
/* 09CDA4 8009FDA4 A0060004 */  lhz       r0, 0x4(r6)
/* 09CDA8 8009FDA8 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CDAC 8009FDAC 7C0000F8 */  nor       r0, r0, r0
/* 09CDB0 8009FDB0 7C050214 */  add       r0, r5, r0
/* 09CDB4 8009FDB4 B01F0002 */  sth       r0, 0x2(r31)
/* 09CDB8 8009FDB8 A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CDBC 8009FDBC A0060006 */  lhz       r0, 0x6(r6)
/* 09CDC0 8009FDC0 7C050214 */  add       r0, r5, r0
/* 09CDC4 8009FDC4 B01F0000 */  sth       r0, 0x0(r31)
/* 09CDC8 8009FDC8 A0060006 */  lhz       r0, 0x6(r6)
/* 09CDCC 8009FDCC A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CDD0 8009FDD0 7C0000F8 */  nor       r0, r0, r0
/* 09CDD4 8009FDD4 7C050214 */  add       r0, r5, r0
/* 09CDD8 8009FDD8 B01F0002 */  sth       r0, 0x2(r31)
/* 09CDDC 8009FDDC A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CDE0 8009FDE0 A0060008 */  lhz       r0, 0x8(r6)
/* 09CDE4 8009FDE4 7C050214 */  add       r0, r5, r0
/* 09CDE8 8009FDE8 B01F0000 */  sth       r0, 0x0(r31)
/* 09CDEC 8009FDEC A0060008 */  lhz       r0, 0x8(r6)
/* 09CDF0 8009FDF0 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CDF4 8009FDF4 7C0000F8 */  nor       r0, r0, r0
/* 09CDF8 8009FDF8 7C050214 */  add       r0, r5, r0
/* 09CDFC 8009FDFC B01F0002 */  sth       r0, 0x2(r31)
/* 09CE00 8009FE00 A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CE04 8009FE04 A006000A */  lhz       r0, 0xa(r6)
/* 09CE08 8009FE08 7C050214 */  add       r0, r5, r0
/* 09CE0C 8009FE0C B01F0000 */  sth       r0, 0x0(r31)
/* 09CE10 8009FE10 A006000A */  lhz       r0, 0xa(r6)
/* 09CE14 8009FE14 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CE18 8009FE18 7C0000F8 */  nor       r0, r0, r0
/* 09CE1C 8009FE1C 7C050214 */  add       r0, r5, r0
/* 09CE20 8009FE20 B01F0002 */  sth       r0, 0x2(r31)
/* 09CE24 8009FE24 A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CE28 8009FE28 A006000C */  lhz       r0, 0xc(r6)
/* 09CE2C 8009FE2C 7C050214 */  add       r0, r5, r0
/* 09CE30 8009FE30 B01F0000 */  sth       r0, 0x0(r31)
/* 09CE34 8009FE34 A006000C */  lhz       r0, 0xc(r6)
/* 09CE38 8009FE38 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CE3C 8009FE3C 7C0000F8 */  nor       r0, r0, r0
/* 09CE40 8009FE40 7C050214 */  add       r0, r5, r0
/* 09CE44 8009FE44 B01F0002 */  sth       r0, 0x2(r31)
/* 09CE48 8009FE48 A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CE4C 8009FE4C A006000E */  lhz       r0, 0xe(r6)
/* 09CE50 8009FE50 7C050214 */  add       r0, r5, r0
/* 09CE54 8009FE54 B01F0000 */  sth       r0, 0x0(r31)
/* 09CE58 8009FE58 A006000E */  lhz       r0, 0xe(r6)
/* 09CE5C 8009FE5C 38C60010 */  addi      r6, r6, 0x10
/* 09CE60 8009FE60 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CE64 8009FE64 7C0000F8 */  nor       r0, r0, r0
/* 09CE68 8009FE68 7C050214 */  add       r0, r5, r0
/* 09CE6C 8009FE6C B01F0002 */  sth       r0, 0x2(r31)
/* 09CE70 8009FE70 4200FEDC */  bdnz      lbl_8009FD4C
/* 09CE74 8009FE74 70630007 */  andi.     r3, r3, 0x7
/* 09CE78 8009FE78 41820034 */  beq       lbl_8009FEAC
lbl_8009FE7C:
/* 09CE7C 8009FE7C 7C6903A6 */  mtctr     r3
lbl_8009FE80:
/* 09CE80 8009FE80 A0BF0000 */  lhz       r5, 0x0(r31)
/* 09CE84 8009FE84 A0060000 */  lhz       r0, 0x0(r6)
/* 09CE88 8009FE88 7C050214 */  add       r0, r5, r0
/* 09CE8C 8009FE8C B01F0000 */  sth       r0, 0x0(r31)
/* 09CE90 8009FE90 A0060000 */  lhz       r0, 0x0(r6)
/* 09CE94 8009FE94 38C60002 */  addi      r6, r6, 0x2
/* 09CE98 8009FE98 A0BF0002 */  lhz       r5, 0x2(r31)
/* 09CE9C 8009FE9C 7C0000F8 */  nor       r0, r0, r0
/* 09CEA0 8009FEA0 7C050214 */  add       r0, r5, r0
/* 09CEA4 8009FEA4 B01F0002 */  sth       r0, 0x2(r31)
/* 09CEA8 8009FEA8 4200FFD8 */  bdnz      lbl_8009FE80
lbl_8009FEAC:
/* 09CEAC 8009FEAC 3BDF0040 */  addi      r30, r31, 0x40
/* 09CEB0 8009FEB0 801F0040 */  lwz       r0, 0x40(r31)
/* 09CEB4 8009FEB4 7C040040 */  cmplw     r4, r0
/* 09CEB8 8009FEB8 40800008 */  bge       lbl_8009FEC0
/* 09CEBC 8009FEBC 909E0000 */  stw       r4, 0x0(r30)
lbl_8009FEC0:
/* 09CEC0 8009FEC0 83BE0000 */  lwz       r29, 0x0(r30)
/* 09CEC4 8009FEC4 3C60800A */  lis       r3, fn_8009F974@ha
/* 09CEC8 8009FEC8 38A3F974 */  addi      r5, r3, fn_8009F974@l
/* 09CECC 8009FECC 237D0040 */  subfic    r27, r29, 0x40
/* 09CED0 8009FED0 7F9FEA14 */  add       r28, r31, r29
/* 09CED4 8009FED4 38600000 */  li        r3, 0x0
/* 09CED8 8009FED8 38800001 */  li        r4, 0x1
/* 09CEDC 8009FEDC 48002E0D */  bl        EXILock
/* 09CEE0 8009FEE0 2C030000 */  cmpwi     r3, 0x0
/* 09CEE4 8009FEE4 4082000C */  bne       lbl_8009FEF0
/* 09CEE8 8009FEE8 38000000 */  li        r0, 0x0
/* 09CEEC 8009FEEC 480000B4 */  b         lbl_8009FFA0
lbl_8009FEF0:
/* 09CEF0 8009FEF0 38600000 */  li        r3, 0x0
/* 09CEF4 8009FEF4 38800001 */  li        r4, 0x1
/* 09CEF8 8009FEF8 38A00003 */  li        r5, 0x3
/* 09CEFC 8009FEFC 480026E5 */  bl        EXISelect
/* 09CF00 8009FF00 2C030000 */  cmpwi     r3, 0x0
/* 09CF04 8009FF04 40820014 */  bne       lbl_8009FF18
/* 09CF08 8009FF08 38600000 */  li        r3, 0x0
/* 09CF0C 8009FF0C 48002ED1 */  bl        EXIUnlock
/* 09CF10 8009FF10 38000000 */  li        r0, 0x0
/* 09CF14 8009FF14 4800008C */  b         lbl_8009FFA0
lbl_8009FF18:
/* 09CF18 8009FF18 57A33032 */  slwi      r3, r29, 6
/* 09CF1C 8009FF1C 38030100 */  addi      r0, r3, 0x100
/* 09CF20 8009FF20 6400A000 */  oris      r0, r0, 0xa000
/* 09CF24 8009FF24 90010010 */  stw       r0, 0x10(r1)
/* 09CF28 8009FF28 38810010 */  addi      r4, r1, 0x10
/* 09CF2C 8009FF2C 38600000 */  li        r3, 0x0
/* 09CF30 8009FF30 38A00004 */  li        r5, 0x4
/* 09CF34 8009FF34 38C00001 */  li        r6, 0x1
/* 09CF38 8009FF38 38E00000 */  li        r7, 0x0
/* 09CF3C 8009FF3C 48001B51 */  bl        EXIImm
/* 09CF40 8009FF40 7C600034 */  cntlzw    r0, r3
/* 09CF44 8009FF44 541DD97E */  srwi      r29, r0, 5
/* 09CF48 8009FF48 38600000 */  li        r3, 0x0
/* 09CF4C 8009FF4C 48001F29 */  bl        EXISync
/* 09CF50 8009FF50 7C600034 */  cntlzw    r0, r3
/* 09CF54 8009FF54 5400D97E */  srwi      r0, r0, 5
/* 09CF58 8009FF58 389C0000 */  addi      r4, r28, 0x0
/* 09CF5C 8009FF5C 38BB0000 */  addi      r5, r27, 0x0
/* 09CF60 8009FF60 7FBD0378 */  or        r29, r29, r0
/* 09CF64 8009FF64 38600000 */  li        r3, 0x0
/* 09CF68 8009FF68 38C00001 */  li        r6, 0x1
/* 09CF6C 8009FF6C 48001D7D */  bl        EXIImmEx
/* 09CF70 8009FF70 7C600034 */  cntlzw    r0, r3
/* 09CF74 8009FF74 5400D97E */  srwi      r0, r0, 5
/* 09CF78 8009FF78 7FBD0378 */  or        r29, r29, r0
/* 09CF7C 8009FF7C 38600000 */  li        r3, 0x0
/* 09CF80 8009FF80 4800278D */  bl        EXIDeselect
/* 09CF84 8009FF84 7C600034 */  cntlzw    r0, r3
/* 09CF88 8009FF88 5400D97E */  srwi      r0, r0, 5
/* 09CF8C 8009FF8C 7FBD0378 */  or        r29, r29, r0
/* 09CF90 8009FF90 38600000 */  li        r3, 0x0
/* 09CF94 8009FF94 48002E49 */  bl        EXIUnlock
/* 09CF98 8009FF98 7FA00034 */  cntlzw    r0, r29
/* 09CF9C 8009FF9C 5400D97E */  srwi      r0, r0, 5
lbl_8009FFA0:
/* 09CFA0 8009FFA0 901F004C */  stw       r0, 0x4c(r31)
/* 09CFA4 8009FFA4 801F004C */  lwz       r0, 0x4c(r31)
/* 09CFA8 8009FFA8 2C000000 */  cmpwi     r0, 0x0
/* 09CFAC 8009FFAC 4182000C */  beq       lbl_8009FFB8
/* 09CFB0 8009FFB0 38000040 */  li        r0, 0x40
/* 09CFB4 8009FFB4 901E0000 */  stw       r0, 0x0(r30)
lbl_8009FFB8:
/* 09CFB8 8009FFB8 38000000 */  li        r0, 0x0
/* 09CFBC 8009FFBC 901F0048 */  stw       r0, 0x48(r31)
/* 09CFC0 8009FFC0 807F0044 */  lwz       r3, 0x44(r31)
/* 09CFC4 8009FFC4 4BFFE2AD */  bl        OSRestoreInterrupts
/* 09CFC8 8009FFC8 807F004C */  lwz       r3, 0x4c(r31)
/* 09CFCC 8009FFCC BB61001C */  lmw       r27, 0x1c(r1)
/* 09CFD0 8009FFD0 80010034 */  lwz       r0, 0x34(r1)
/* 09CFD4 8009FFD4 38210030 */  addi      r1, r1, 0x30
/* 09CFD8 8009FFD8 7C0803A6 */  mtlr      r0
/* 09CFDC 8009FFDC 4E800020 */  blr

glabel __OSUnlockSram
/* 09CFE0 8009FFE0 7C0802A6 */  mflr      r0
/* 09CFE4 8009FFE4 38800000 */  li        r4, 0x0
/* 09CFE8 8009FFE8 90010004 */  stw       r0, 0x4(r1)
/* 09CFEC 8009FFEC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09CFF0 8009FFF0 4BFFFCE9 */  bl        fn_8009FCD8
/* 09CFF4 8009FFF4 8001000C */  lwz       r0, 0xc(r1)
/* 09CFF8 8009FFF8 38210008 */  addi      r1, r1, 0x8
/* 09CFFC 8009FFFC 7C0803A6 */  mtlr      r0
/* 09D000 800A0000 4E800020 */  blr

glabel __OSUnlockSramEx
/* 09D004 800A0004 7C0802A6 */  mflr      r0
/* 09D008 800A0008 38800014 */  li        r4, 0x14
/* 09D00C 800A000C 90010004 */  stw       r0, 0x4(r1)
/* 09D010 800A0010 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09D014 800A0014 4BFFFCC5 */  bl        fn_8009FCD8
/* 09D018 800A0018 8001000C */  lwz       r0, 0xc(r1)
/* 09D01C 800A001C 38210008 */  addi      r1, r1, 0x8
/* 09D020 800A0020 7C0803A6 */  mtlr      r0
/* 09D024 800A0024 4E800020 */  blr

glabel __OSSyncSram
/* 09D028 800A0028 3C608018 */  lis       r3, Scb@ha
/* 09D02C 800A002C 38637340 */  addi      r3, r3, Scb@l
/* 09D030 800A0030 8063004C */  lwz       r3, 0x4c(r3)
/* 09D034 800A0034 4E800020 */  blr

glabel fn_800A0038
/* 09D038 800A0038 7C0802A6 */  mflr      r0
/* 09D03C 800A003C 3C608018 */  lis       r3, Scb@ha
/* 09D040 800A0040 90010004 */  stw       r0, 0x4(r1)
/* 09D044 800A0044 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09D048 800A0048 93E1001C */  stw       r31, 0x1c(r1)
/* 09D04C 800A004C 3BE37340 */  addi      r31, r3, Scb@l
/* 09D050 800A0050 4BFFE1F9 */  bl        OSDisableInterrupts
/* 09D054 800A0054 801F0048 */  lwz       r0, 0x48(r31)
/* 09D058 800A0058 389F0048 */  addi      r4, r31, 0x48
/* 09D05C 800A005C 2C000000 */  cmpwi     r0, 0x0
/* 09D060 800A0060 41820010 */  beq       lbl_800A0070
/* 09D064 800A0064 4BFFE20D */  bl        OSRestoreInterrupts
/* 09D068 800A0068 3BE00000 */  li        r31, 0x0
/* 09D06C 800A006C 48000010 */  b         lbl_800A007C
lbl_800A0070:
/* 09D070 800A0070 907F0044 */  stw       r3, 0x44(r31)
/* 09D074 800A0074 38000001 */  li        r0, 0x1
/* 09D078 800A0078 90040000 */  stw       r0, 0x0(r4)
lbl_800A007C:
/* 09D07C 800A007C 881F0013 */  lbz       r0, 0x13(r31)
/* 09D080 800A0080 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 09D084 800A0084 4182000C */  beq       lbl_800A0090
/* 09D088 800A0088 3BE00001 */  li        r31, 0x1
/* 09D08C 800A008C 48000008 */  b         lbl_800A0094
lbl_800A0090:
/* 09D090 800A0090 3BE00000 */  li        r31, 0x0
lbl_800A0094:
/* 09D094 800A0094 38600000 */  li        r3, 0x0
/* 09D098 800A0098 38800000 */  li        r4, 0x0
/* 09D09C 800A009C 4BFFFC3D */  bl        fn_8009FCD8
/* 09D0A0 800A00A0 7FE3FB78 */  mr        r3, r31
/* 09D0A4 800A00A4 80010024 */  lwz       r0, 0x24(r1)
/* 09D0A8 800A00A8 83E1001C */  lwz       r31, 0x1c(r1)
/* 09D0AC 800A00AC 38210020 */  addi      r1, r1, 0x20
/* 09D0B0 800A00B0 7C0803A6 */  mtlr      r0
/* 09D0B4 800A00B4 4E800020 */  blr

glabel fn_800A00B8
/* 09D0B8 800A00B8 7C0802A6 */  mflr      r0
/* 09D0BC 800A00BC 3C808018 */  lis       r4, Scb@ha
/* 09D0C0 800A00C0 90010004 */  stw       r0, 0x4(r1)
/* 09D0C4 800A00C4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09D0C8 800A00C8 93E1001C */  stw       r31, 0x1c(r1)
/* 09D0CC 800A00CC 3BE47340 */  addi      r31, r4, Scb@l
/* 09D0D0 800A00D0 93C10018 */  stw       r30, 0x18(r1)
/* 09D0D4 800A00D4 547E177A */  clrlslwi  r30, r3, 31, 2
/* 09D0D8 800A00D8 4BFFE171 */  bl        OSDisableInterrupts
/* 09D0DC 800A00DC 801F0048 */  lwz       r0, 0x48(r31)
/* 09D0E0 800A00E0 389F0048 */  addi      r4, r31, 0x48
/* 09D0E4 800A00E4 2C000000 */  cmpwi     r0, 0x0
/* 09D0E8 800A00E8 41820010 */  beq       lbl_800A00F8
/* 09D0EC 800A00EC 4BFFE185 */  bl        OSRestoreInterrupts
/* 09D0F0 800A00F0 3BE00000 */  li        r31, 0x0
/* 09D0F4 800A00F4 48000010 */  b         lbl_800A0104
lbl_800A00F8:
/* 09D0F8 800A00F8 907F0044 */  stw       r3, 0x44(r31)
/* 09D0FC 800A00FC 38000001 */  li        r0, 0x1
/* 09D100 800A0100 90040000 */  stw       r0, 0x0(r4)
lbl_800A0104:
/* 09D104 800A0104 887F0013 */  lbz       r3, 0x13(r31)
/* 09D108 800A0108 5460077A */  rlwinm    r0, r3, 0, 29, 29
/* 09D10C 800A010C 7C1E0040 */  cmplw     r30, r0
/* 09D110 800A0110 40820014 */  bne       lbl_800A0124
/* 09D114 800A0114 38600000 */  li        r3, 0x0
/* 09D118 800A0118 38800000 */  li        r4, 0x0
/* 09D11C 800A011C 4BFFFBBD */  bl        fn_8009FCD8
/* 09D120 800A0120 48000024 */  b         lbl_800A0144
lbl_800A0124:
/* 09D124 800A0124 546007B8 */  rlwinm    r0, r3, 0, 30, 28
/* 09D128 800A0128 981F0013 */  stb       r0, 0x13(r31)
/* 09D12C 800A012C 38600001 */  li        r3, 0x1
/* 09D130 800A0130 38800000 */  li        r4, 0x0
/* 09D134 800A0134 881F0013 */  lbz       r0, 0x13(r31)
/* 09D138 800A0138 7C00F378 */  or        r0, r0, r30
/* 09D13C 800A013C 981F0013 */  stb       r0, 0x13(r31)
/* 09D140 800A0140 4BFFFB99 */  bl        fn_8009FCD8
lbl_800A0144:
/* 09D144 800A0144 80010024 */  lwz       r0, 0x24(r1)
/* 09D148 800A0148 83E1001C */  lwz       r31, 0x1c(r1)
/* 09D14C 800A014C 83C10018 */  lwz       r30, 0x18(r1)
/* 09D150 800A0150 38210020 */  addi      r1, r1, 0x20
/* 09D154 800A0154 7C0803A6 */  mtlr      r0
/* 09D158 800A0158 4E800020 */  blr

glabel fn_800A015C
/* 09D15C 800A015C 7C0802A6 */  mflr      r0
/* 09D160 800A0160 3C808018 */  lis       r4, Scb@ha
/* 09D164 800A0164 90010004 */  stw       r0, 0x4(r1)
/* 09D168 800A0168 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09D16C 800A016C 93E1001C */  stw       r31, 0x1c(r1)
/* 09D170 800A0170 3BE47340 */  addi      r31, r4, Scb@l
/* 09D174 800A0174 93C10018 */  stw       r30, 0x18(r1)
/* 09D178 800A0178 3BC30000 */  addi      r30, r3, 0x0
/* 09D17C 800A017C 4BFFE0CD */  bl        OSDisableInterrupts
/* 09D180 800A0180 801F0048 */  lwz       r0, 0x48(r31)
/* 09D184 800A0184 389F0048 */  addi      r4, r31, 0x48
/* 09D188 800A0188 2C000000 */  cmpwi     r0, 0x0
/* 09D18C 800A018C 41820010 */  beq       lbl_800A019C
/* 09D190 800A0190 4BFFE0E1 */  bl        OSRestoreInterrupts
/* 09D194 800A0194 38600000 */  li        r3, 0x0
/* 09D198 800A0198 48000014 */  b         lbl_800A01AC
lbl_800A019C:
/* 09D19C 800A019C 907F0044 */  stw       r3, 0x44(r31)
/* 09D1A0 800A01A0 38000001 */  li        r0, 0x1
/* 09D1A4 800A01A4 387F0014 */  addi      r3, r31, 0x14
/* 09D1A8 800A01A8 90040000 */  stw       r0, 0x0(r4)
lbl_800A01AC:
/* 09D1AC 800A01AC 57C0083C */  slwi      r0, r30, 1
/* 09D1B0 800A01B0 7C630214 */  add       r3, r3, r0
/* 09D1B4 800A01B4 A3E3001C */  lhz       r31, 0x1c(r3)
/* 09D1B8 800A01B8 38600000 */  li        r3, 0x0
/* 09D1BC 800A01BC 38800014 */  li        r4, 0x14
/* 09D1C0 800A01C0 4BFFFB19 */  bl        fn_8009FCD8
/* 09D1C4 800A01C4 7FE3FB78 */  mr        r3, r31
/* 09D1C8 800A01C8 80010024 */  lwz       r0, 0x24(r1)
/* 09D1CC 800A01CC 83E1001C */  lwz       r31, 0x1c(r1)
/* 09D1D0 800A01D0 83C10018 */  lwz       r30, 0x18(r1)
/* 09D1D4 800A01D4 38210020 */  addi      r1, r1, 0x20
/* 09D1D8 800A01D8 7C0803A6 */  mtlr      r0
/* 09D1DC 800A01DC 4E800020 */  blr

glabel fn_800A01E0
/* 09D1E0 800A01E0 7C0802A6 */  mflr      r0
/* 09D1E4 800A01E4 3CA08018 */  lis       r5, Scb@ha
/* 09D1E8 800A01E8 90010004 */  stw       r0, 0x4(r1)
/* 09D1EC 800A01EC 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09D1F0 800A01F0 93E10024 */  stw       r31, 0x24(r1)
/* 09D1F4 800A01F4 3BE57340 */  addi      r31, r5, Scb@l
/* 09D1F8 800A01F8 93C10020 */  stw       r30, 0x20(r1)
/* 09D1FC 800A01FC 3BC40000 */  addi      r30, r4, 0x0
/* 09D200 800A0200 93A1001C */  stw       r29, 0x1c(r1)
/* 09D204 800A0204 3BA30000 */  addi      r29, r3, 0x0
/* 09D208 800A0208 4BFFE041 */  bl        OSDisableInterrupts
/* 09D20C 800A020C 801F0048 */  lwz       r0, 0x48(r31)
/* 09D210 800A0210 389F0048 */  addi      r4, r31, 0x48
/* 09D214 800A0214 2C000000 */  cmpwi     r0, 0x0
/* 09D218 800A0218 41820010 */  beq       lbl_800A0228
/* 09D21C 800A021C 4BFFE055 */  bl        OSRestoreInterrupts
/* 09D220 800A0220 38600000 */  li        r3, 0x0
/* 09D224 800A0224 48000014 */  b         lbl_800A0238
lbl_800A0228:
/* 09D228 800A0228 907F0044 */  stw       r3, 0x44(r31)
/* 09D22C 800A022C 38000001 */  li        r0, 0x1
/* 09D230 800A0230 387F0014 */  addi      r3, r31, 0x14
/* 09D234 800A0234 90040000 */  stw       r0, 0x0(r4)
lbl_800A0238:
/* 09D238 800A0238 57A0083C */  slwi      r0, r29, 1
/* 09D23C 800A023C 7C830214 */  add       r4, r3, r0
/* 09D240 800A0240 A464001C */  lhzu      r3, 0x1c(r4)
/* 09D244 800A0244 57C0043E */  clrlwi    r0, r30, 16
/* 09D248 800A0248 7C030040 */  cmplw     r3, r0
/* 09D24C 800A024C 41820018 */  beq       lbl_800A0264
/* 09D250 800A0250 B3C40000 */  sth       r30, 0x0(r4)
/* 09D254 800A0254 38600001 */  li        r3, 0x1
/* 09D258 800A0258 38800014 */  li        r4, 0x14
/* 09D25C 800A025C 4BFFFA7D */  bl        fn_8009FCD8
/* 09D260 800A0260 48000010 */  b         lbl_800A0270
lbl_800A0264:
/* 09D264 800A0264 38600000 */  li        r3, 0x0
/* 09D268 800A0268 38800014 */  li        r4, 0x14
/* 09D26C 800A026C 4BFFFA6D */  bl        fn_8009FCD8
lbl_800A0270:
/* 09D270 800A0270 8001002C */  lwz       r0, 0x2c(r1)
/* 09D274 800A0274 83E10024 */  lwz       r31, 0x24(r1)
/* 09D278 800A0278 83C10020 */  lwz       r30, 0x20(r1)
/* 09D27C 800A027C 83A1001C */  lwz       r29, 0x1c(r1)
/* 09D280 800A0280 38210028 */  addi      r1, r1, 0x28
/* 09D284 800A0284 7C0803A6 */  mtlr      r0
/* 09D288 800A0288 4E800020 */  blr

# 0x80187340 - 0x80187394
.section .bss, "wa"

Scb:
	.skip 0x54
