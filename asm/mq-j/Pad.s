# Pad.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AEC3C - 0x800B070C

glabel UpdateOrigin
/* 0ABC3C 800AEC3C 7C0802A6 */  mflr      r0
/* 0ABC40 800AEC40 3CA08019 */  lis       r5, Origin@ha
/* 0ABC44 800AEC44 90010004 */  stw       r0, 0x4(r1)
/* 0ABC48 800AEC48 1CC3000C */  mulli     r6, r3, 0xc
/* 0ABC4C 800AEC4C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0ABC50 800AEC50 38A58720 */  addi      r5, r5, Origin@l
/* 0ABC54 800AEC54 93E10014 */  stw       r31, 0x14(r1)
/* 0ABC58 800AEC58 7FE53214 */  add       r31, r5, r6
/* 0ABC5C 800AEC5C 800D87DC */  lwz       r0, D_8018B75C@sda21(r0)
/* 0ABC60 800AEC60 5404056E */  rlwinm    r4, r0, 0, 21, 23
/* 0ABC64 800AEC64 2C040400 */  cmpwi     r4, 0x400
/* 0ABC68 800AEC68 3C008000 */  lis       r0, 0x8000
/* 0ABC6C 800AEC6C 7C001C30 */  srw       r0, r0, r3
/* 0ABC70 800AEC70 418200F4 */  beq       lbl_800AED64
/* 0ABC74 800AEC74 40800034 */  bge       lbl_800AECA8
/* 0ABC78 800AEC78 2C040200 */  cmpwi     r4, 0x200
/* 0ABC7C 800AEC7C 418200B8 */  beq       lbl_800AED34
/* 0ABC80 800AEC80 4080001C */  bge       lbl_800AEC9C
/* 0ABC84 800AEC84 2C040100 */  cmpwi     r4, 0x100
/* 0ABC88 800AEC88 41820078 */  beq       lbl_800AED00
/* 0ABC8C 800AEC8C 408000D8 */  bge       lbl_800AED64
/* 0ABC90 800AEC90 2C040000 */  cmpwi     r4, 0x0
/* 0ABC94 800AEC94 41820038 */  beq       lbl_800AECCC
/* 0ABC98 800AEC98 480000CC */  b         lbl_800AED64
lbl_800AEC9C:
/* 0ABC9C 800AEC9C 2C040300 */  cmpwi     r4, 0x300
/* 0ABCA0 800AECA0 418200C4 */  beq       lbl_800AED64
/* 0ABCA4 800AECA4 480000C0 */  b         lbl_800AED64
lbl_800AECA8:
/* 0ABCA8 800AECA8 2C040600 */  cmpwi     r4, 0x600
/* 0ABCAC 800AECAC 41820020 */  beq       lbl_800AECCC
/* 0ABCB0 800AECB0 40800010 */  bge       lbl_800AECC0
/* 0ABCB4 800AECB4 2C040500 */  cmpwi     r4, 0x500
/* 0ABCB8 800AECB8 41820014 */  beq       lbl_800AECCC
/* 0ABCBC 800AECBC 480000A8 */  b         lbl_800AED64
lbl_800AECC0:
/* 0ABCC0 800AECC0 2C040700 */  cmpwi     r4, 0x700
/* 0ABCC4 800AECC4 41820008 */  beq       lbl_800AECCC
/* 0ABCC8 800AECC8 4800009C */  b         lbl_800AED64
lbl_800AECCC:
/* 0ABCCC 800AECCC 889F0006 */  lbz       r4, 0x6(r31)
/* 0ABCD0 800AECD0 54840036 */  clrrwi    r4, r4, 4
/* 0ABCD4 800AECD4 989F0006 */  stb       r4, 0x6(r31)
/* 0ABCD8 800AECD8 889F0007 */  lbz       r4, 0x7(r31)
/* 0ABCDC 800AECDC 54840036 */  clrrwi    r4, r4, 4
/* 0ABCE0 800AECE0 989F0007 */  stb       r4, 0x7(r31)
/* 0ABCE4 800AECE4 889F0008 */  lbz       r4, 0x8(r31)
/* 0ABCE8 800AECE8 54840036 */  clrrwi    r4, r4, 4
/* 0ABCEC 800AECEC 989F0008 */  stb       r4, 0x8(r31)
/* 0ABCF0 800AECF0 889F0009 */  lbz       r4, 0x9(r31)
/* 0ABCF4 800AECF4 54840036 */  clrrwi    r4, r4, 4
/* 0ABCF8 800AECF8 989F0009 */  stb       r4, 0x9(r31)
/* 0ABCFC 800AECFC 48000068 */  b         lbl_800AED64
lbl_800AED00:
/* 0ABD00 800AED00 889F0004 */  lbz       r4, 0x4(r31)
/* 0ABD04 800AED04 54840036 */  clrrwi    r4, r4, 4
/* 0ABD08 800AED08 989F0004 */  stb       r4, 0x4(r31)
/* 0ABD0C 800AED0C 889F0005 */  lbz       r4, 0x5(r31)
/* 0ABD10 800AED10 54840036 */  clrrwi    r4, r4, 4
/* 0ABD14 800AED14 989F0005 */  stb       r4, 0x5(r31)
/* 0ABD18 800AED18 889F0008 */  lbz       r4, 0x8(r31)
/* 0ABD1C 800AED1C 54840036 */  clrrwi    r4, r4, 4
/* 0ABD20 800AED20 989F0008 */  stb       r4, 0x8(r31)
/* 0ABD24 800AED24 889F0009 */  lbz       r4, 0x9(r31)
/* 0ABD28 800AED28 54840036 */  clrrwi    r4, r4, 4
/* 0ABD2C 800AED2C 989F0009 */  stb       r4, 0x9(r31)
/* 0ABD30 800AED30 48000034 */  b         lbl_800AED64
lbl_800AED34:
/* 0ABD34 800AED34 889F0004 */  lbz       r4, 0x4(r31)
/* 0ABD38 800AED38 54840036 */  clrrwi    r4, r4, 4
/* 0ABD3C 800AED3C 989F0004 */  stb       r4, 0x4(r31)
/* 0ABD40 800AED40 889F0005 */  lbz       r4, 0x5(r31)
/* 0ABD44 800AED44 54840036 */  clrrwi    r4, r4, 4
/* 0ABD48 800AED48 989F0005 */  stb       r4, 0x5(r31)
/* 0ABD4C 800AED4C 889F0006 */  lbz       r4, 0x6(r31)
/* 0ABD50 800AED50 54840036 */  clrrwi    r4, r4, 4
/* 0ABD54 800AED54 989F0006 */  stb       r4, 0x6(r31)
/* 0ABD58 800AED58 889F0007 */  lbz       r4, 0x7(r31)
/* 0ABD5C 800AED5C 54840036 */  clrrwi    r4, r4, 4
/* 0ABD60 800AED60 989F0007 */  stb       r4, 0x7(r31)
lbl_800AED64:
/* 0ABD64 800AED64 889F0002 */  lbz       r4, 0x2(r31)
/* 0ABD68 800AED68 3884FF80 */  subi      r4, r4, 0x80
/* 0ABD6C 800AED6C 989F0002 */  stb       r4, 0x2(r31)
/* 0ABD70 800AED70 889F0003 */  lbz       r4, 0x3(r31)
/* 0ABD74 800AED74 3884FF80 */  subi      r4, r4, 0x80
/* 0ABD78 800AED78 989F0003 */  stb       r4, 0x3(r31)
/* 0ABD7C 800AED7C 889F0004 */  lbz       r4, 0x4(r31)
/* 0ABD80 800AED80 3884FF80 */  subi      r4, r4, 0x80
/* 0ABD84 800AED84 989F0004 */  stb       r4, 0x4(r31)
/* 0ABD88 800AED88 889F0005 */  lbz       r4, 0x5(r31)
/* 0ABD8C 800AED8C 3884FF80 */  subi      r4, r4, 0x80
/* 0ABD90 800AED90 989F0005 */  stb       r4, 0x5(r31)
/* 0ABD94 800AED94 808D87D8 */  lwz       r4, D_8018B758@sda21(r0)
/* 0ABD98 800AED98 7C800039 */  and.      r0, r4, r0
/* 0ABD9C 800AED9C 41820030 */  beq       lbl_800AEDCC
/* 0ABDA0 800AEDA0 881F0002 */  lbz       r0, 0x2(r31)
/* 0ABDA4 800AEDA4 7C000774 */  extsb     r0, r0
/* 0ABDA8 800AEDA8 2C000040 */  cmpwi     r0, 0x40
/* 0ABDAC 800AEDAC 40810020 */  ble       lbl_800AEDCC
/* 0ABDB0 800AEDB0 4BFF5B2D */  bl        SIGetType
/* 0ABDB4 800AEDB4 5463001E */  clrrwi    r3, r3, 16
/* 0ABDB8 800AEDB8 3C03F700 */  subis     r0, r3, 0x900
/* 0ABDBC 800AEDBC 28000000 */  cmplwi    r0, 0x0
/* 0ABDC0 800AEDC0 4082000C */  bne       lbl_800AEDCC
/* 0ABDC4 800AEDC4 38000000 */  li        r0, 0x0
/* 0ABDC8 800AEDC8 981F0002 */  stb       r0, 0x2(r31)
lbl_800AEDCC:
/* 0ABDCC 800AEDCC 8001001C */  lwz       r0, 0x1c(r1)
/* 0ABDD0 800AEDD0 83E10014 */  lwz       r31, 0x14(r1)
/* 0ABDD4 800AEDD4 38210018 */  addi      r1, r1, 0x18
/* 0ABDD8 800AEDD8 7C0803A6 */  mtlr      r0
/* 0ABDDC 800AEDDC 4E800020 */  blr

glabel PADOriginCallback
/* 0ABDE0 800AEDE0 7C0802A6 */  mflr      r0
/* 0ABDE4 800AEDE4 90010004 */  stw       r0, 0x4(r1)
/* 0ABDE8 800AEDE8 5480073F */  clrlwi.   r0, r4, 28
/* 0ABDEC 800AEDEC 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0ABDF0 800AEDF0 93E1002C */  stw       r31, 0x2c(r1)
/* 0ABDF4 800AEDF4 40820048 */  bne       lbl_800AEE3C
/* 0ABDF8 800AEDF8 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0ABDFC 800AEDFC 4BFFFE41 */  bl        UpdateOrigin
/* 0ABE00 800AEE00 83ED87D4 */  lwz       r31, D_8018B754@sda21(r0)
/* 0ABE04 800AEE04 3C008000 */  lis       r0, 0x8000
/* 0ABE08 800AEE08 806D8C44 */  lwz       r3, D_8018BBC4@sda21(r0)
/* 0ABE0C 800AEE0C 3881001C */  addi      r4, r1, 0x1c
/* 0ABE10 800AEE10 7C00FC30 */  srw       r0, r0, r31
/* 0ABE14 800AEE14 7C600378 */  or        r0, r3, r0
/* 0ABE18 800AEE18 900D8C44 */  stw       r0, D_8018BBC4@sda21(r0)
/* 0ABE1C 800AEE1C 7FE3FB78 */  mr        r3, r31
/* 0ABE20 800AEE20 4BFF5569 */  bl        SIGetResponse
/* 0ABE24 800AEE24 800D87DC */  lwz       r0, D_8018B75C@sda21(r0)
/* 0ABE28 800AEE28 387F0000 */  addi      r3, r31, 0x0
/* 0ABE2C 800AEE2C 64040040 */  oris      r4, r0, 0x40
/* 0ABE30 800AEE30 4BFF52ED */  bl        SISetCommand
/* 0ABE34 800AEE34 806D8C44 */  lwz       r3, D_8018BBC4@sda21(r0)
/* 0ABE38 800AEE38 4BFF5375 */  bl        SIEnablePolling
lbl_800AEE3C:
/* 0ABE3C 800AEE3C 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0ABE40 800AEE40 7CA00034 */  cntlzw    r0, r5
/* 0ABE44 800AEE44 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0ABE48 800AEE48 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0ABE4C 800AEE4C 2C040020 */  cmpwi     r4, 0x20
/* 0ABE50 800AEE50 41820040 */  beq       lbl_800AEE90
/* 0ABE54 800AEE54 3C008000 */  lis       r0, 0x8000
/* 0ABE58 800AEE58 7C002430 */  srw       r0, r0, r4
/* 0ABE5C 800AEE5C 7CA00078 */  andc      r0, r5, r0
/* 0ABE60 800AEE60 1C84000C */  mulli     r4, r4, 0xc
/* 0ABE64 800AEE64 900D8C48 */  stw       r0, D_8018BBC8@sda21(r0)
/* 0ABE68 800AEE68 3C608019 */  lis       r3, Origin@ha
/* 0ABE6C 800AEE6C 38038720 */  addi      r0, r3, Origin@l
/* 0ABE70 800AEE70 7C602214 */  add       r3, r0, r4
/* 0ABE74 800AEE74 38800000 */  li        r4, 0x0
/* 0ABE78 800AEE78 38A0000C */  li        r5, 0xc
/* 0ABE7C 800AEE7C 4BF564A5 */  bl        memset
/* 0ABE80 800AEE80 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0ABE84 800AEE84 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0ABE88 800AEE88 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0ABE8C 800AEE8C 4BFF5C15 */  bl        SIGetTypeAsync
lbl_800AEE90:
/* 0ABE90 800AEE90 80010034 */  lwz       r0, 0x34(r1)
/* 0ABE94 800AEE94 83E1002C */  lwz       r31, 0x2c(r1)
/* 0ABE98 800AEE98 38210030 */  addi      r1, r1, 0x30
/* 0ABE9C 800AEE9C 7C0803A6 */  mtlr      r0
/* 0ABEA0 800AEEA0 4E800020 */  blr

glabel PADOriginUpdateCallback
/* 0ABEA4 800AEEA4 7C0802A6 */  mflr      r0
/* 0ABEA8 800AEEA8 90010004 */  stw       r0, 0x4(r1)
/* 0ABEAC 800AEEAC 3C008000 */  lis       r0, 0x8000
/* 0ABEB0 800AEEB0 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0ABEB4 800AEEB4 93E10024 */  stw       r31, 0x24(r1)
/* 0ABEB8 800AEEB8 3BE40000 */  addi      r31, r4, 0x0
/* 0ABEBC 800AEEBC 93C10020 */  stw       r30, 0x20(r1)
/* 0ABEC0 800AEEC0 93A1001C */  stw       r29, 0x1c(r1)
/* 0ABEC4 800AEEC4 7C7D1B78 */  mr        r29, r3
/* 0ABEC8 800AEEC8 7C1EEC30 */  srw       r30, r0, r29
/* 0ABECC 800AEECC 806D8C44 */  lwz       r3, D_8018BBC4@sda21(r0)
/* 0ABED0 800AEED0 7C60F039 */  and.      r0, r3, r30
/* 0ABED4 800AEED4 41820074 */  beq       lbl_800AEF48
/* 0ABED8 800AEED8 57E0073F */  clrlwi.   r0, r31, 28
/* 0ABEDC 800AEEDC 4082000C */  bne       lbl_800AEEE8
/* 0ABEE0 800AEEE0 7FA3EB78 */  mr        r3, r29
/* 0ABEE4 800AEEE4 4BFFFD59 */  bl        UpdateOrigin
lbl_800AEEE8:
/* 0ABEE8 800AEEE8 57E00739 */  rlwinm.   r0, r31, 0, 28, 28
/* 0ABEEC 800AEEEC 4182005C */  beq       lbl_800AEF48
/* 0ABEF0 800AEEF0 4BFEF359 */  bl        OSDisableInterrupts
/* 0ABEF4 800AEEF4 3BE30000 */  addi      r31, r3, 0x0
/* 0ABEF8 800AEEF8 387E0000 */  addi      r3, r30, 0x0
/* 0ABEFC 800AEEFC 4BFF534D */  bl        SIDisablePolling
/* 0ABF00 800AEF00 80CD8C44 */  lwz       r6, D_8018BBC4@sda21(r0)
/* 0ABF04 800AEF04 7FC8F0F8 */  nor       r8, r30, r30
/* 0ABF08 800AEF08 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0ABF0C 800AEF0C 7FA3EB78 */  mr        r3, r29
/* 0ABF10 800AEF10 808D8C54 */  lwz       r4, D_8018BBD4@sda21(r0)
/* 0ABF14 800AEF14 800D8C58 */  lwz       r0, D_8018BBD8@sda21(r0)
/* 0ABF18 800AEF18 7CC74038 */  and       r7, r6, r8
/* 0ABF1C 800AEF1C 7CA64038 */  and       r6, r5, r8
/* 0ABF20 800AEF20 90ED8C44 */  stw       r7, D_8018BBC4@sda21(r0)
/* 0ABF24 800AEF24 7C854038 */  and       r5, r4, r8
/* 0ABF28 800AEF28 7C004038 */  and       r0, r0, r8
/* 0ABF2C 800AEF2C 90CD8C50 */  stw       r6, D_8018BBD0@sda21(r0)
/* 0ABF30 800AEF30 38800000 */  li        r4, 0x0
/* 0ABF34 800AEF34 90AD8C54 */  stw       r5, D_8018BBD4@sda21(r0)
/* 0ABF38 800AEF38 900D8C58 */  stw       r0, D_8018BBD8@sda21(r0)
/* 0ABF3C 800AEF3C 4BFF12A5 */  bl        fn_800A01E0
/* 0ABF40 800AEF40 7FE3FB78 */  mr        r3, r31
/* 0ABF44 800AEF44 4BFEF32D */  bl        OSRestoreInterrupts
lbl_800AEF48:
/* 0ABF48 800AEF48 8001002C */  lwz       r0, 0x2c(r1)
/* 0ABF4C 800AEF4C 83E10024 */  lwz       r31, 0x24(r1)
/* 0ABF50 800AEF50 83C10020 */  lwz       r30, 0x20(r1)
/* 0ABF54 800AEF54 83A1001C */  lwz       r29, 0x1c(r1)
/* 0ABF58 800AEF58 38210028 */  addi      r1, r1, 0x28
/* 0ABF5C 800AEF5C 7C0803A6 */  mtlr      r0
/* 0ABF60 800AEF60 4E800020 */  blr

glabel PADProbeCallback
/* 0ABF64 800AEF64 7C0802A6 */  mflr      r0
/* 0ABF68 800AEF68 90010004 */  stw       r0, 0x4(r1)
/* 0ABF6C 800AEF6C 5480073F */  clrlwi.   r0, r4, 28
/* 0ABF70 800AEF70 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0ABF74 800AEF74 93E1002C */  stw       r31, 0x2c(r1)
/* 0ABF78 800AEF78 93C10028 */  stw       r30, 0x28(r1)
/* 0ABF7C 800AEF7C 40820054 */  bne       lbl_800AEFD0
/* 0ABF80 800AEF80 83CD87D4 */  lwz       r30, D_8018B754@sda21(r0)
/* 0ABF84 800AEF84 3FE08000 */  lis       r31, 0x8000
/* 0ABF88 800AEF88 806D8C44 */  lwz       r3, D_8018BBC4@sda21(r0)
/* 0ABF8C 800AEF8C 3881001C */  addi      r4, r1, 0x1c
/* 0ABF90 800AEF90 7FE0F430 */  srw       r0, r31, r30
/* 0ABF94 800AEF94 7C600378 */  or        r0, r3, r0
/* 0ABF98 800AEF98 900D8C44 */  stw       r0, D_8018BBC4@sda21(r0)
/* 0ABF9C 800AEF9C 7FC3F378 */  mr        r3, r30
/* 0ABFA0 800AEFA0 4BFF53E9 */  bl        SIGetResponse
/* 0ABFA4 800AEFA4 800D87DC */  lwz       r0, D_8018B75C@sda21(r0)
/* 0ABFA8 800AEFA8 387E0000 */  addi      r3, r30, 0x0
/* 0ABFAC 800AEFAC 64040040 */  oris      r4, r0, 0x40
/* 0ABFB0 800AEFB0 4BFF516D */  bl        SISetCommand
/* 0ABFB4 800AEFB4 806D8C44 */  lwz       r3, D_8018BBC4@sda21(r0)
/* 0ABFB8 800AEFB8 4BFF51F5 */  bl        SIEnablePolling
/* 0ABFBC 800AEFBC 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0ABFC0 800AEFC0 806D8C50 */  lwz       r3, D_8018BBD0@sda21(r0)
/* 0ABFC4 800AEFC4 7FE00430 */  srw       r0, r31, r0
/* 0ABFC8 800AEFC8 7C600378 */  or        r0, r3, r0
/* 0ABFCC 800AEFCC 900D8C50 */  stw       r0, D_8018BBD0@sda21(r0)
lbl_800AEFD0:
/* 0ABFD0 800AEFD0 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0ABFD4 800AEFD4 7CA00034 */  cntlzw    r0, r5
/* 0ABFD8 800AEFD8 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0ABFDC 800AEFDC 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0ABFE0 800AEFE0 2C040020 */  cmpwi     r4, 0x20
/* 0ABFE4 800AEFE4 41820040 */  beq       lbl_800AF024
/* 0ABFE8 800AEFE8 3C008000 */  lis       r0, 0x8000
/* 0ABFEC 800AEFEC 7C002430 */  srw       r0, r0, r4
/* 0ABFF0 800AEFF0 7CA00078 */  andc      r0, r5, r0
/* 0ABFF4 800AEFF4 1C84000C */  mulli     r4, r4, 0xc
/* 0ABFF8 800AEFF8 900D8C48 */  stw       r0, D_8018BBC8@sda21(r0)
/* 0ABFFC 800AEFFC 3C608019 */  lis       r3, Origin@ha
/* 0AC000 800AF000 38038720 */  addi      r0, r3, Origin@l
/* 0AC004 800AF004 7C602214 */  add       r3, r0, r4
/* 0AC008 800AF008 38800000 */  li        r4, 0x0
/* 0AC00C 800AF00C 38A0000C */  li        r5, 0xc
/* 0AC010 800AF010 4BF56311 */  bl        memset
/* 0AC014 800AF014 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC018 800AF018 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC01C 800AF01C 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC020 800AF020 4BFF5A81 */  bl        SIGetTypeAsync
lbl_800AF024:
/* 0AC024 800AF024 80010034 */  lwz       r0, 0x34(r1)
/* 0AC028 800AF028 83E1002C */  lwz       r31, 0x2c(r1)
/* 0AC02C 800AF02C 83C10028 */  lwz       r30, 0x28(r1)
/* 0AC030 800AF030 38210030 */  addi      r1, r1, 0x30
/* 0AC034 800AF034 7C0803A6 */  mtlr      r0
/* 0AC038 800AF038 4E800020 */  blr

glabel PADTypeAndStatusCallback
/* 0AC03C 800AF03C 7C0802A6 */  mflr      r0
/* 0AC040 800AF040 3CC08019 */  lis       r6, Type@ha
/* 0AC044 800AF044 90010004 */  stw       r0, 0x4(r1)
/* 0AC048 800AF048 5480073F */  clrlwi.   r0, r4, 28
/* 0AC04C 800AF04C 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0AC050 800AF050 93E1003C */  stw       r31, 0x3c(r1)
/* 0AC054 800AF054 3FE08000 */  lis       r31, 0x8000
/* 0AC058 800AF058 93C10038 */  stw       r30, 0x38(r1)
/* 0AC05C 800AF05C 3BC68710 */  addi      r30, r6, Type@l
/* 0AC060 800AF060 93A10034 */  stw       r29, 0x34(r1)
/* 0AC064 800AF064 93810030 */  stw       r28, 0x30(r1)
/* 0AC068 800AF068 83AD87D4 */  lwz       r29, D_8018B754@sda21(r0)
/* 0AC06C 800AF06C 80AD8C4C */  lwz       r5, D_8018BBCC@sda21(r0)
/* 0AC070 800AF070 7FFCEC30 */  srw       r28, r31, r29
/* 0AC074 800AF074 7CA3E078 */  andc      r3, r5, r28
/* 0AC078 800AF078 906D8C4C */  stw       r3, D_8018BBCC@sda21(r0)
/* 0AC07C 800AF07C 7CA5E038 */  and       r5, r5, r28
/* 0AC080 800AF080 38600001 */  li        r3, 0x1
/* 0AC084 800AF084 41820054 */  beq       lbl_800AF0D8
/* 0AC088 800AF088 808D8C48 */  lwz       r4, D_8018BBC8@sda21(r0)
/* 0AC08C 800AF08C 7C800034 */  cntlzw    r0, r4
/* 0AC090 800AF090 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC094 800AF094 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC098 800AF098 2C030020 */  cmpwi     r3, 0x20
/* 0AC09C 800AF09C 418202AC */  beq       lbl_800AF348
/* 0AC0A0 800AF0A0 1C03000C */  mulli     r0, r3, 0xc
/* 0AC0A4 800AF0A4 7FE31C30 */  srw       r3, r31, r3
/* 0AC0A8 800AF0A8 7C841878 */  andc      r4, r4, r3
/* 0AC0AC 800AF0AC 7C7E0214 */  add       r3, r30, r0
/* 0AC0B0 800AF0B0 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC0B4 800AF0B4 38800000 */  li        r4, 0x0
/* 0AC0B8 800AF0B8 38A0000C */  li        r5, 0xc
/* 0AC0BC 800AF0BC 38630010 */  addi      r3, r3, 0x10
/* 0AC0C0 800AF0C0 4BF56261 */  bl        memset
/* 0AC0C4 800AF0C4 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC0C8 800AF0C8 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC0CC 800AF0CC 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC0D0 800AF0D0 4BFF59D1 */  bl        SIGetTypeAsync
/* 0AC0D4 800AF0D4 48000274 */  b         lbl_800AF348
lbl_800AF0D8:
/* 0AC0D8 800AF0D8 5486002E */  clrrwi    r6, r4, 8
/* 0AC0DC 800AF0DC 548400C8 */  rlwinm    r4, r4, 0, 3, 4
/* 0AC0E0 800AF0E0 3C04F800 */  subis     r0, r4, 0x800
/* 0AC0E4 800AF0E4 57A4103A */  slwi      r4, r29, 2
/* 0AC0E8 800AF0E8 28000000 */  cmplwi    r0, 0x0
/* 0AC0EC 800AF0EC 7CDE212E */  stwx      r6, r30, r4
/* 0AC0F0 800AF0F0 4082000C */  bne       lbl_800AF0FC
/* 0AC0F4 800AF0F4 54C001CF */  rlwinm.   r0, r6, 0, 7, 7
/* 0AC0F8 800AF0F8 40820058 */  bne       lbl_800AF150
lbl_800AF0FC:
/* 0AC0FC 800AF0FC 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0AC100 800AF100 7CA00034 */  cntlzw    r0, r5
/* 0AC104 800AF104 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC108 800AF108 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0AC10C 800AF10C 2C040020 */  cmpwi     r4, 0x20
/* 0AC110 800AF110 41820238 */  beq       lbl_800AF348
/* 0AC114 800AF114 3C608000 */  lis       r3, 0x8000
/* 0AC118 800AF118 1C04000C */  mulli     r0, r4, 0xc
/* 0AC11C 800AF11C 7C632430 */  srw       r3, r3, r4
/* 0AC120 800AF120 7CA41878 */  andc      r4, r5, r3
/* 0AC124 800AF124 7C7E0214 */  add       r3, r30, r0
/* 0AC128 800AF128 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC12C 800AF12C 38800000 */  li        r4, 0x0
/* 0AC130 800AF130 38A0000C */  li        r5, 0xc
/* 0AC134 800AF134 38630010 */  addi      r3, r3, 0x10
/* 0AC138 800AF138 4BF561E9 */  bl        memset
/* 0AC13C 800AF13C 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC140 800AF140 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC144 800AF144 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC148 800AF148 4BFF5959 */  bl        SIGetTypeAsync
/* 0AC14C 800AF14C 480001FC */  b         lbl_800AF348
lbl_800AF150:
/* 0AC150 800AF150 800D87E0 */  lwz       r0, D_8018B760@sda21(r0)
/* 0AC154 800AF154 28000002 */  cmplwi    r0, 0x2
/* 0AC158 800AF158 40800084 */  bge       lbl_800AF1DC
/* 0AC15C 800AF15C 800D8C44 */  lwz       r0, D_8018BBC4@sda21(r0)
/* 0AC160 800AF160 387D0000 */  addi      r3, r29, 0x0
/* 0AC164 800AF164 3881001C */  addi      r4, r1, 0x1c
/* 0AC168 800AF168 7C00E378 */  or        r0, r0, r28
/* 0AC16C 800AF16C 900D8C44 */  stw       r0, D_8018BBC4@sda21(r0)
/* 0AC170 800AF170 4BFF5219 */  bl        SIGetResponse
/* 0AC174 800AF174 800D87DC */  lwz       r0, D_8018B75C@sda21(r0)
/* 0AC178 800AF178 387D0000 */  addi      r3, r29, 0x0
/* 0AC17C 800AF17C 64040040 */  oris      r4, r0, 0x40
/* 0AC180 800AF180 4BFF4F9D */  bl        SISetCommand
/* 0AC184 800AF184 806D8C44 */  lwz       r3, D_8018BBC4@sda21(r0)
/* 0AC188 800AF188 4BFF5025 */  bl        SIEnablePolling
/* 0AC18C 800AF18C 808D8C48 */  lwz       r4, D_8018BBC8@sda21(r0)
/* 0AC190 800AF190 7C800034 */  cntlzw    r0, r4
/* 0AC194 800AF194 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC198 800AF198 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC19C 800AF19C 2C030020 */  cmpwi     r3, 0x20
/* 0AC1A0 800AF1A0 418201A8 */  beq       lbl_800AF348
/* 0AC1A4 800AF1A4 1C03000C */  mulli     r0, r3, 0xc
/* 0AC1A8 800AF1A8 7FE31C30 */  srw       r3, r31, r3
/* 0AC1AC 800AF1AC 7C841878 */  andc      r4, r4, r3
/* 0AC1B0 800AF1B0 7C7E0214 */  add       r3, r30, r0
/* 0AC1B4 800AF1B4 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC1B8 800AF1B8 38800000 */  li        r4, 0x0
/* 0AC1BC 800AF1BC 38A0000C */  li        r5, 0xc
/* 0AC1C0 800AF1C0 38630010 */  addi      r3, r3, 0x10
/* 0AC1C4 800AF1C4 4BF5615D */  bl        memset
/* 0AC1C8 800AF1C8 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC1CC 800AF1CC 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC1D0 800AF1D0 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC1D4 800AF1D4 4BFF58CD */  bl        SIGetTypeAsync
/* 0AC1D8 800AF1D8 48000170 */  b         lbl_800AF348
lbl_800AF1DC:
/* 0AC1DC 800AF1DC 54C00001 */  clrrwi.   r0, r6, 31
/* 0AC1E0 800AF1E0 4182000C */  beq       lbl_800AF1EC
/* 0AC1E4 800AF1E4 54C0014B */  rlwinm.   r0, r6, 0, 5, 5
/* 0AC1E8 800AF1E8 41820074 */  beq       lbl_800AF25C
lbl_800AF1EC:
/* 0AC1EC 800AF1EC 28050000 */  cmplwi    r5, 0x0
/* 0AC1F0 800AF1F0 41820038 */  beq       lbl_800AF228
/* 0AC1F4 800AF1F4 1C1D000C */  mulli     r0, r29, 0xc
/* 0AC1F8 800AF1F8 3C60800B */  lis       r3, PADOriginCallback@ha
/* 0AC1FC 800AF1FC 7CDE0214 */  add       r6, r30, r0
/* 0AC200 800AF200 3903EDE0 */  addi      r8, r3, PADOriginCallback@l
/* 0AC204 800AF204 387D0000 */  addi      r3, r29, 0x0
/* 0AC208 800AF208 388D87EC */  li        r4, D_8018B76C@sda21
/* 0AC20C 800AF20C 38A00003 */  li        r5, 0x3
/* 0AC210 800AF210 38E0000A */  li        r7, 0xa
/* 0AC214 800AF214 39400000 */  li        r10, 0x0
/* 0AC218 800AF218 39200000 */  li        r9, 0x0
/* 0AC21C 800AF21C 38C60010 */  addi      r6, r6, 0x10
/* 0AC220 800AF220 4BFF52B9 */  bl        SITransfer
/* 0AC224 800AF224 480000C0 */  b         lbl_800AF2E4
lbl_800AF228:
/* 0AC228 800AF228 1C1D000C */  mulli     r0, r29, 0xc
/* 0AC22C 800AF22C 3C60800B */  lis       r3, PADOriginCallback@ha
/* 0AC230 800AF230 7CDE0214 */  add       r6, r30, r0
/* 0AC234 800AF234 3903EDE0 */  addi      r8, r3, PADOriginCallback@l
/* 0AC238 800AF238 387D0000 */  addi      r3, r29, 0x0
/* 0AC23C 800AF23C 388D87E8 */  li        r4, D_8018B768@sda21
/* 0AC240 800AF240 38A00001 */  li        r5, 0x1
/* 0AC244 800AF244 38E0000A */  li        r7, 0xa
/* 0AC248 800AF248 39400000 */  li        r10, 0x0
/* 0AC24C 800AF24C 39200000 */  li        r9, 0x0
/* 0AC250 800AF250 38C60010 */  addi      r6, r6, 0x10
/* 0AC254 800AF254 4BFF5285 */  bl        SITransfer
/* 0AC258 800AF258 4800008C */  b         lbl_800AF2E4
lbl_800AF25C:
/* 0AC25C 800AF25C 54C002D7 */  rlwinm.   r0, r6, 0, 11, 11
/* 0AC260 800AF260 41820084 */  beq       lbl_800AF2E4
/* 0AC264 800AF264 54C00319 */  rlwinm.   r0, r6, 0, 12, 12
/* 0AC268 800AF268 4082007C */  bne       lbl_800AF2E4
/* 0AC26C 800AF26C 54C0035B */  rlwinm.   r0, r6, 0, 13, 13
/* 0AC270 800AF270 40820074 */  bne       lbl_800AF2E4
/* 0AC274 800AF274 54C00043 */  rlwinm.   r0, r6, 0, 1, 1
/* 0AC278 800AF278 41820038 */  beq       lbl_800AF2B0
/* 0AC27C 800AF27C 1C1D000C */  mulli     r0, r29, 0xc
/* 0AC280 800AF280 3C60800B */  lis       r3, PADOriginCallback@ha
/* 0AC284 800AF284 7CDE0214 */  add       r6, r30, r0
/* 0AC288 800AF288 3903EDE0 */  addi      r8, r3, PADOriginCallback@l
/* 0AC28C 800AF28C 387D0000 */  addi      r3, r29, 0x0
/* 0AC290 800AF290 388D87E8 */  li        r4, D_8018B768@sda21
/* 0AC294 800AF294 38A00001 */  li        r5, 0x1
/* 0AC298 800AF298 38E0000A */  li        r7, 0xa
/* 0AC29C 800AF29C 39400000 */  li        r10, 0x0
/* 0AC2A0 800AF2A0 39200000 */  li        r9, 0x0
/* 0AC2A4 800AF2A4 38C60010 */  addi      r6, r6, 0x10
/* 0AC2A8 800AF2A8 4BFF5231 */  bl        SITransfer
/* 0AC2AC 800AF2AC 48000038 */  b         lbl_800AF2E4
lbl_800AF2B0:
/* 0AC2B0 800AF2B0 1C1D000C */  mulli     r0, r29, 0xc
/* 0AC2B4 800AF2B4 3C60800B */  lis       r3, PADProbeCallback@ha
/* 0AC2B8 800AF2B8 7C9E2214 */  add       r4, r30, r4
/* 0AC2BC 800AF2BC 7CDE0214 */  add       r6, r30, r0
/* 0AC2C0 800AF2C0 3903EF64 */  addi      r8, r3, PADProbeCallback@l
/* 0AC2C4 800AF2C4 387D0000 */  addi      r3, r29, 0x0
/* 0AC2C8 800AF2C8 38A00003 */  li        r5, 0x3
/* 0AC2CC 800AF2CC 38E00008 */  li        r7, 0x8
/* 0AC2D0 800AF2D0 39400000 */  li        r10, 0x0
/* 0AC2D4 800AF2D4 39200000 */  li        r9, 0x0
/* 0AC2D8 800AF2D8 38840040 */  addi      r4, r4, 0x40
/* 0AC2DC 800AF2DC 38C60010 */  addi      r6, r6, 0x10
/* 0AC2E0 800AF2E0 4BFF51F9 */  bl        SITransfer
lbl_800AF2E4:
/* 0AC2E4 800AF2E4 2C030000 */  cmpwi     r3, 0x0
/* 0AC2E8 800AF2E8 40820060 */  bne       lbl_800AF348
/* 0AC2EC 800AF2EC 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0AC2F0 800AF2F0 806D8C58 */  lwz       r3, D_8018BBD8@sda21(r0)
/* 0AC2F4 800AF2F4 7CA00034 */  cntlzw    r0, r5
/* 0AC2F8 800AF2F8 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC2FC 800AF2FC 7C60E378 */  or        r0, r3, r28
/* 0AC300 800AF300 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0AC304 800AF304 900D8C58 */  stw       r0, D_8018BBD8@sda21(r0)
/* 0AC308 800AF308 2C040020 */  cmpwi     r4, 0x20
/* 0AC30C 800AF30C 4182003C */  beq       lbl_800AF348
/* 0AC310 800AF310 3C608000 */  lis       r3, 0x8000
/* 0AC314 800AF314 1C04000C */  mulli     r0, r4, 0xc
/* 0AC318 800AF318 7C632430 */  srw       r3, r3, r4
/* 0AC31C 800AF31C 7CA41878 */  andc      r4, r5, r3
/* 0AC320 800AF320 7C7E0214 */  add       r3, r30, r0
/* 0AC324 800AF324 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC328 800AF328 38800000 */  li        r4, 0x0
/* 0AC32C 800AF32C 38A0000C */  li        r5, 0xc
/* 0AC330 800AF330 38630010 */  addi      r3, r3, 0x10
/* 0AC334 800AF334 4BF55FED */  bl        memset
/* 0AC338 800AF338 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC33C 800AF33C 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC340 800AF340 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC344 800AF344 4BFF575D */  bl        SIGetTypeAsync
lbl_800AF348:
/* 0AC348 800AF348 80010044 */  lwz       r0, 0x44(r1)
/* 0AC34C 800AF34C 83E1003C */  lwz       r31, 0x3c(r1)
/* 0AC350 800AF350 83C10038 */  lwz       r30, 0x38(r1)
/* 0AC354 800AF354 83A10034 */  lwz       r29, 0x34(r1)
/* 0AC358 800AF358 83810030 */  lwz       r28, 0x30(r1)
/* 0AC35C 800AF35C 38210040 */  addi      r1, r1, 0x40
/* 0AC360 800AF360 7C0803A6 */  mtlr      r0
/* 0AC364 800AF364 4E800020 */  blr

glabel PADReceiveCheckCallback
/* 0AC368 800AF368 7C0802A6 */  mflr      r0
/* 0AC36C 800AF36C 90010004 */  stw       r0, 0x4(r1)
/* 0AC370 800AF370 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0AC374 800AF374 93E1001C */  stw       r31, 0x1c(r1)
/* 0AC378 800AF378 7C7F1B78 */  mr        r31, r3
/* 0AC37C 800AF37C 3C608000 */  lis       r3, 0x8000
/* 0AC380 800AF380 93C10018 */  stw       r30, 0x18(r1)
/* 0AC384 800AF384 93A10014 */  stw       r29, 0x14(r1)
/* 0AC388 800AF388 7C7DFC30 */  srw       r29, r3, r31
/* 0AC38C 800AF38C 800D8C44 */  lwz       r0, D_8018BBC4@sda21(r0)
/* 0AC390 800AF390 7C00E839 */  and.      r0, r0, r29
/* 0AC394 800AF394 418200EC */  beq       lbl_800AF480
/* 0AC398 800AF398 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0AC39C 800AF39C 7FA6E8F8 */  nor       r6, r29, r29
/* 0AC3A0 800AF3A0 806D8C54 */  lwz       r3, D_8018BBD4@sda21(r0)
/* 0AC3A4 800AF3A4 5480073F */  clrlwi.   r0, r4, 28
/* 0AC3A8 800AF3A8 7CA53038 */  and       r5, r5, r6
/* 0AC3AC 800AF3AC 7C633038 */  and       r3, r3, r6
/* 0AC3B0 800AF3B0 90AD8C50 */  stw       r5, D_8018BBD0@sda21(r0)
/* 0AC3B4 800AF3B4 906D8C54 */  stw       r3, D_8018BBD4@sda21(r0)
/* 0AC3B8 800AF3B8 5483002E */  clrrwi    r3, r4, 8
/* 0AC3BC 800AF3BC 4082006C */  bne       lbl_800AF428
/* 0AC3C0 800AF3C0 54600001 */  clrrwi.   r0, r3, 31
/* 0AC3C4 800AF3C4 41820064 */  beq       lbl_800AF428
/* 0AC3C8 800AF3C8 546002D7 */  rlwinm.   r0, r3, 0, 11, 11
/* 0AC3CC 800AF3CC 4182005C */  beq       lbl_800AF428
/* 0AC3D0 800AF3D0 54600043 */  rlwinm.   r0, r3, 0, 1, 1
/* 0AC3D4 800AF3D4 41820054 */  beq       lbl_800AF428
/* 0AC3D8 800AF3D8 5460014B */  rlwinm.   r0, r3, 0, 5, 5
/* 0AC3DC 800AF3DC 4082004C */  bne       lbl_800AF428
/* 0AC3E0 800AF3E0 54600319 */  rlwinm.   r0, r3, 0, 12, 12
/* 0AC3E4 800AF3E4 40820044 */  bne       lbl_800AF428
/* 0AC3E8 800AF3E8 5460035B */  rlwinm.   r0, r3, 0, 13, 13
/* 0AC3EC 800AF3EC 4082003C */  bne       lbl_800AF428
/* 0AC3F0 800AF3F0 1C9F000C */  mulli     r4, r31, 0xc
/* 0AC3F4 800AF3F4 3C608019 */  lis       r3, Origin@ha
/* 0AC3F8 800AF3F8 38038720 */  addi      r0, r3, Origin@l
/* 0AC3FC 800AF3FC 3C60800B */  lis       r3, PADOriginUpdateCallback@ha
/* 0AC400 800AF400 7CC02214 */  add       r6, r0, r4
/* 0AC404 800AF404 3903EEA4 */  addi      r8, r3, PADOriginUpdateCallback@l
/* 0AC408 800AF408 387F0000 */  addi      r3, r31, 0x0
/* 0AC40C 800AF40C 388D87E8 */  li        r4, D_8018B768@sda21
/* 0AC410 800AF410 38A00001 */  li        r5, 0x1
/* 0AC414 800AF414 38E0000A */  li        r7, 0xa
/* 0AC418 800AF418 39400000 */  li        r10, 0x0
/* 0AC41C 800AF41C 39200000 */  li        r9, 0x0
/* 0AC420 800AF420 4BFF50B9 */  bl        SITransfer
/* 0AC424 800AF424 4800005C */  b         lbl_800AF480
lbl_800AF428:
/* 0AC428 800AF428 4BFEEE21 */  bl        OSDisableInterrupts
/* 0AC42C 800AF42C 3BC30000 */  addi      r30, r3, 0x0
/* 0AC430 800AF430 387D0000 */  addi      r3, r29, 0x0
/* 0AC434 800AF434 4BFF4E15 */  bl        SIDisablePolling
/* 0AC438 800AF438 80CD8C44 */  lwz       r6, D_8018BBC4@sda21(r0)
/* 0AC43C 800AF43C 7FA8E8F8 */  nor       r8, r29, r29
/* 0AC440 800AF440 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0AC444 800AF444 7FE3FB78 */  mr        r3, r31
/* 0AC448 800AF448 808D8C54 */  lwz       r4, D_8018BBD4@sda21(r0)
/* 0AC44C 800AF44C 800D8C58 */  lwz       r0, D_8018BBD8@sda21(r0)
/* 0AC450 800AF450 7CC74038 */  and       r7, r6, r8
/* 0AC454 800AF454 7CA64038 */  and       r6, r5, r8
/* 0AC458 800AF458 90ED8C44 */  stw       r7, D_8018BBC4@sda21(r0)
/* 0AC45C 800AF45C 7C854038 */  and       r5, r4, r8
/* 0AC460 800AF460 7C004038 */  and       r0, r0, r8
/* 0AC464 800AF464 90CD8C50 */  stw       r6, D_8018BBD0@sda21(r0)
/* 0AC468 800AF468 38800000 */  li        r4, 0x0
/* 0AC46C 800AF46C 90AD8C54 */  stw       r5, D_8018BBD4@sda21(r0)
/* 0AC470 800AF470 900D8C58 */  stw       r0, D_8018BBD8@sda21(r0)
/* 0AC474 800AF474 4BFF0D6D */  bl        fn_800A01E0
/* 0AC478 800AF478 7FC3F378 */  mr        r3, r30
/* 0AC47C 800AF47C 4BFEEDF5 */  bl        OSRestoreInterrupts
lbl_800AF480:
/* 0AC480 800AF480 80010024 */  lwz       r0, 0x24(r1)
/* 0AC484 800AF484 83E1001C */  lwz       r31, 0x1c(r1)
/* 0AC488 800AF488 83C10018 */  lwz       r30, 0x18(r1)
/* 0AC48C 800AF48C 83A10014 */  lwz       r29, 0x14(r1)
/* 0AC490 800AF490 38210020 */  addi      r1, r1, 0x20
/* 0AC494 800AF494 7C0803A6 */  mtlr      r0
/* 0AC498 800AF498 4E800020 */  blr

glabel PADReset
/* 0AC49C 800AF49C 7C0802A6 */  mflr      r0
/* 0AC4A0 800AF4A0 90010004 */  stw       r0, 0x4(r1)
/* 0AC4A4 800AF4A4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AC4A8 800AF4A8 93E10014 */  stw       r31, 0x14(r1)
/* 0AC4AC 800AF4AC 93C10010 */  stw       r30, 0x10(r1)
/* 0AC4B0 800AF4B0 7C7E1B78 */  mr        r30, r3
/* 0AC4B4 800AF4B4 4BFEED95 */  bl        OSDisableInterrupts
/* 0AC4B8 800AF4B8 808D8C58 */  lwz       r4, D_8018BBD8@sda21(r0)
/* 0AC4BC 800AF4BC 38E00000 */  li        r7, 0x0
/* 0AC4C0 800AF4C0 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0AC4C4 800AF4C4 3BE30000 */  addi      r31, r3, 0x0
/* 0AC4C8 800AF4C8 800D8C54 */  lwz       r0, D_8018BBD4@sda21(r0)
/* 0AC4CC 800AF4CC 7FDE2378 */  or        r30, r30, r4
/* 0AC4D0 800AF4D0 808D8C48 */  lwz       r4, D_8018BBC8@sda21(r0)
/* 0AC4D4 800AF4D4 7CA50378 */  or        r5, r5, r0
/* 0AC4D8 800AF4D8 800D87E0 */  lwz       r0, D_8018B760@sda21(r0)
/* 0AC4DC 800AF4DC 7FDE2878 */  andc      r30, r30, r5
/* 0AC4E0 800AF4E0 80AD8C44 */  lwz       r5, D_8018BBC4@sda21(r0)
/* 0AC4E4 800AF4E4 7C86F378 */  or        r6, r4, r30
/* 0AC4E8 800AF4E8 90ED8C58 */  stw       r7, D_8018BBD8@sda21(r0)
/* 0AC4EC 800AF4EC 7CA4F078 */  andc      r4, r5, r30
/* 0AC4F0 800AF4F0 90CD8C48 */  stw       r6, D_8018BBC8@sda21(r0)
/* 0AC4F4 800AF4F4 28000004 */  cmplwi    r0, 0x4
/* 0AC4F8 800AF4F8 800D8C48 */  lwz       r0, D_8018BBC8@sda21(r0)
/* 0AC4FC 800AF4FC 908D8C44 */  stw       r4, D_8018BBC4@sda21(r0)
/* 0AC500 800AF500 7C032838 */  and       r3, r0, r5
/* 0AC504 800AF504 40820010 */  bne       lbl_800AF514
/* 0AC508 800AF508 800D8C4C */  lwz       r0, D_8018BBCC@sda21(r0)
/* 0AC50C 800AF50C 7C00F378 */  or        r0, r0, r30
/* 0AC510 800AF510 900D8C4C */  stw       r0, D_8018BBCC@sda21(r0)
lbl_800AF514:
/* 0AC514 800AF514 4BFF4D35 */  bl        SIDisablePolling
/* 0AC518 800AF518 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0AC51C 800AF51C 2C000020 */  cmpwi     r0, 0x20
/* 0AC520 800AF520 40820058 */  bne       lbl_800AF578
/* 0AC524 800AF524 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0AC528 800AF528 7CA00034 */  cntlzw    r0, r5
/* 0AC52C 800AF52C 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC530 800AF530 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0AC534 800AF534 2C040020 */  cmpwi     r4, 0x20
/* 0AC538 800AF538 41820040 */  beq       lbl_800AF578
/* 0AC53C 800AF53C 3C008000 */  lis       r0, 0x8000
/* 0AC540 800AF540 7C002430 */  srw       r0, r0, r4
/* 0AC544 800AF544 7CA00078 */  andc      r0, r5, r0
/* 0AC548 800AF548 1C84000C */  mulli     r4, r4, 0xc
/* 0AC54C 800AF54C 900D8C48 */  stw       r0, D_8018BBC8@sda21(r0)
/* 0AC550 800AF550 3C608019 */  lis       r3, Origin@ha
/* 0AC554 800AF554 38038720 */  addi      r0, r3, Origin@l
/* 0AC558 800AF558 7C602214 */  add       r3, r0, r4
/* 0AC55C 800AF55C 38800000 */  li        r4, 0x0
/* 0AC560 800AF560 38A0000C */  li        r5, 0xc
/* 0AC564 800AF564 4BF55DBD */  bl        memset
/* 0AC568 800AF568 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC56C 800AF56C 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC570 800AF570 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC574 800AF574 4BFF552D */  bl        SIGetTypeAsync
lbl_800AF578:
/* 0AC578 800AF578 7FE3FB78 */  mr        r3, r31
/* 0AC57C 800AF57C 4BFEECF5 */  bl        OSRestoreInterrupts
/* 0AC580 800AF580 8001001C */  lwz       r0, 0x1c(r1)
/* 0AC584 800AF584 38600001 */  li        r3, 0x1
/* 0AC588 800AF588 83E10014 */  lwz       r31, 0x14(r1)
/* 0AC58C 800AF58C 83C10010 */  lwz       r30, 0x10(r1)
/* 0AC590 800AF590 38210018 */  addi      r1, r1, 0x18
/* 0AC594 800AF594 7C0803A6 */  mtlr      r0
/* 0AC598 800AF598 4E800020 */  blr

glabel PADRecalibrate
/* 0AC59C 800AF59C 7C0802A6 */  mflr      r0
/* 0AC5A0 800AF5A0 90010004 */  stw       r0, 0x4(r1)
/* 0AC5A4 800AF5A4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AC5A8 800AF5A8 93E10014 */  stw       r31, 0x14(r1)
/* 0AC5AC 800AF5AC 93C10010 */  stw       r30, 0x10(r1)
/* 0AC5B0 800AF5B0 7C7E1B78 */  mr        r30, r3
/* 0AC5B4 800AF5B4 4BFEEC95 */  bl        OSDisableInterrupts
/* 0AC5B8 800AF5B8 80CD8C58 */  lwz       r6, D_8018BBD8@sda21(r0)
/* 0AC5BC 800AF5BC 38E00000 */  li        r7, 0x0
/* 0AC5C0 800AF5C0 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0AC5C4 800AF5C4 3C808000 */  lis       r4, 0x8000
/* 0AC5C8 800AF5C8 800D8C54 */  lwz       r0, D_8018BBD4@sda21(r0)
/* 0AC5CC 800AF5CC 7FDE3378 */  or        r30, r30, r6
/* 0AC5D0 800AF5D0 80CD8C48 */  lwz       r6, D_8018BBC8@sda21(r0)
/* 0AC5D4 800AF5D4 7CA50378 */  or        r5, r5, r0
/* 0AC5D8 800AF5D8 880430E3 */  lbz       r0, 0x30e3(r4)
/* 0AC5DC 800AF5DC 7FDE2878 */  andc      r30, r30, r5
/* 0AC5E0 800AF5E0 80AD8C44 */  lwz       r5, D_8018BBC4@sda21(r0)
/* 0AC5E4 800AF5E4 7CC4F378 */  or        r4, r6, r30
/* 0AC5E8 800AF5E8 90ED8C58 */  stw       r7, D_8018BBD8@sda21(r0)
/* 0AC5EC 800AF5EC 54000673 */  rlwinm.   r0, r0, 0, 25, 25
/* 0AC5F0 800AF5F0 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC5F4 800AF5F4 7CA4F078 */  andc      r4, r5, r30
/* 0AC5F8 800AF5F8 3BE30000 */  addi      r31, r3, 0x0
/* 0AC5FC 800AF5FC 80CD8C48 */  lwz       r6, D_8018BBC8@sda21(r0)
/* 0AC600 800AF600 908D8C44 */  stw       r4, D_8018BBC4@sda21(r0)
/* 0AC604 800AF604 7CC32838 */  and       r3, r6, r5
/* 0AC608 800AF608 40820010 */  bne       lbl_800AF618
/* 0AC60C 800AF60C 800D8C4C */  lwz       r0, D_8018BBCC@sda21(r0)
/* 0AC610 800AF610 7C00F378 */  or        r0, r0, r30
/* 0AC614 800AF614 900D8C4C */  stw       r0, D_8018BBCC@sda21(r0)
lbl_800AF618:
/* 0AC618 800AF618 4BFF4C31 */  bl        SIDisablePolling
/* 0AC61C 800AF61C 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0AC620 800AF620 2C000020 */  cmpwi     r0, 0x20
/* 0AC624 800AF624 40820058 */  bne       lbl_800AF67C
/* 0AC628 800AF628 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0AC62C 800AF62C 7CA00034 */  cntlzw    r0, r5
/* 0AC630 800AF630 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC634 800AF634 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0AC638 800AF638 2C040020 */  cmpwi     r4, 0x20
/* 0AC63C 800AF63C 41820040 */  beq       lbl_800AF67C
/* 0AC640 800AF640 3C008000 */  lis       r0, 0x8000
/* 0AC644 800AF644 7C002430 */  srw       r0, r0, r4
/* 0AC648 800AF648 7CA00078 */  andc      r0, r5, r0
/* 0AC64C 800AF64C 1C84000C */  mulli     r4, r4, 0xc
/* 0AC650 800AF650 900D8C48 */  stw       r0, D_8018BBC8@sda21(r0)
/* 0AC654 800AF654 3C608019 */  lis       r3, Origin@ha
/* 0AC658 800AF658 38038720 */  addi      r0, r3, Origin@l
/* 0AC65C 800AF65C 7C602214 */  add       r3, r0, r4
/* 0AC660 800AF660 38800000 */  li        r4, 0x0
/* 0AC664 800AF664 38A0000C */  li        r5, 0xc
/* 0AC668 800AF668 4BF55CB9 */  bl        memset
/* 0AC66C 800AF66C 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC670 800AF670 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC674 800AF674 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC678 800AF678 4BFF5429 */  bl        SIGetTypeAsync
lbl_800AF67C:
/* 0AC67C 800AF67C 7FE3FB78 */  mr        r3, r31
/* 0AC680 800AF680 4BFEEBF1 */  bl        OSRestoreInterrupts
/* 0AC684 800AF684 8001001C */  lwz       r0, 0x1c(r1)
/* 0AC688 800AF688 38600001 */  li        r3, 0x1
/* 0AC68C 800AF68C 83E10014 */  lwz       r31, 0x14(r1)
/* 0AC690 800AF690 83C10010 */  lwz       r30, 0x10(r1)
/* 0AC694 800AF694 38210018 */  addi      r1, r1, 0x18
/* 0AC698 800AF698 7C0803A6 */  mtlr      r0
/* 0AC69C 800AF69C 4E800020 */  blr

glabel PADInit
/* 0AC6A0 800AF6A0 7C0802A6 */  mflr      r0
/* 0AC6A4 800AF6A4 3C608019 */  lis       r3, Type@ha
/* 0AC6A8 800AF6A8 90010004 */  stw       r0, 0x4(r1)
/* 0AC6AC 800AF6AC 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0AC6B0 800AF6B0 BF21001C */  stmw      r25, 0x1c(r1)
/* 0AC6B4 800AF6B4 3BE38710 */  addi      r31, r3, Type@l
/* 0AC6B8 800AF6B8 800D8C40 */  lwz       r0, D_8018BBC0@sda21(r0)
/* 0AC6BC 800AF6BC 2C000000 */  cmpwi     r0, 0x0
/* 0AC6C0 800AF6C0 4182000C */  beq       lbl_800AF6CC
/* 0AC6C4 800AF6C4 38600001 */  li        r3, 0x1
/* 0AC6C8 800AF6C8 480001DC */  b         lbl_800AF8A4
lbl_800AF6CC:
/* 0AC6CC 800AF6CC 806D87D0 */  lwz       r3, D_8018B750@sda21(r0)
/* 0AC6D0 800AF6D0 4BFEC5B5 */  bl        OSRegisterVersion
/* 0AC6D4 800AF6D4 806D8C64 */  lwz       r3, __PADSpec@sda21(r0)
/* 0AC6D8 800AF6D8 28030000 */  cmplwi    r3, 0x0
/* 0AC6DC 800AF6DC 41820008 */  beq       lbl_800AF6E4
/* 0AC6E0 800AF6E0 48000629 */  bl        PADSetSpec
lbl_800AF6E4:
/* 0AC6E4 800AF6E4 800D8B88 */  lwz       r0, D_8018BB08@sda21(r0)
/* 0AC6E8 800AF6E8 38600001 */  li        r3, 0x1
/* 0AC6EC 800AF6EC 906D8C40 */  stw       r3, D_8018BBC0@sda21(r0)
/* 0AC6F0 800AF6F0 28000000 */  cmplwi    r0, 0x0
/* 0AC6F4 800AF6F4 4182008C */  beq       lbl_800AF780
/* 0AC6F8 800AF6F8 4BFF1DE9 */  bl        OSGetTime
/* 0AC6FC 800AF6FC 3B240000 */  addi      r25, r4, 0x0
/* 0AC700 800AF700 3B430000 */  addi      r26, r3, 0x0
/* 0AC704 800AF704 38A00010 */  li        r5, 0x10
/* 0AC708 800AF708 4801D25D */  bl        __shr2i
/* 0AC70C 800AF70C 3CA00001 */  lis       r5, 0x1
/* 0AC710 800AF710 3B65FFFF */  subi      r27, r5, 0x1
/* 0AC714 800AF714 3B800000 */  li        r28, 0x0
/* 0AC718 800AF718 7C86D838 */  and       r6, r4, r27
/* 0AC71C 800AF71C 7F24D838 */  and       r4, r25, r27
/* 0AC720 800AF720 7C65E038 */  and       r5, r3, r28
/* 0AC724 800AF724 7F40E038 */  and       r0, r26, r28
/* 0AC728 800AF728 7FA43014 */  addc      r29, r4, r6
/* 0AC72C 800AF72C 387A0000 */  addi      r3, r26, 0x0
/* 0AC730 800AF730 38990000 */  addi      r4, r25, 0x0
/* 0AC734 800AF734 7FC02914 */  adde      r30, r0, r5
/* 0AC738 800AF738 38A00020 */  li        r5, 0x20
/* 0AC73C 800AF73C 4801D229 */  bl        __shr2i
/* 0AC740 800AF740 7C84D838 */  and       r4, r4, r27
/* 0AC744 800AF744 7C60E038 */  and       r0, r3, r28
/* 0AC748 800AF748 7FA4E814 */  addc      r29, r4, r29
/* 0AC74C 800AF74C 387A0000 */  addi      r3, r26, 0x0
/* 0AC750 800AF750 38990000 */  addi      r4, r25, 0x0
/* 0AC754 800AF754 7FC0F114 */  adde      r30, r0, r30
/* 0AC758 800AF758 38A00030 */  li        r5, 0x30
/* 0AC75C 800AF75C 4801D209 */  bl        __shr2i
/* 0AC760 800AF760 7C80D838 */  and       r0, r4, r27
/* 0AC764 800AF764 7CA0E814 */  addc      r5, r0, r29
/* 0AC768 800AF768 3C00F000 */  lis       r0, 0xf000
/* 0AC76C 800AF76C 38803FFF */  li        r4, 0x3fff
/* 0AC770 800AF770 900D8C4C */  stw       r0, D_8018BBCC@sda21(r0)
/* 0AC774 800AF774 7CA02038 */  and       r0, r5, r4
/* 0AC778 800AF778 3C608000 */  lis       r3, 0x8000
/* 0AC77C 800AF77C B00330E0 */  sth       r0, 0x30e0(r3)
lbl_800AF780:
/* 0AC780 800AF780 3C608000 */  lis       r3, 0x8000
/* 0AC784 800AF784 A00330E0 */  lhz       r0, 0x30e0(r3)
/* 0AC788 800AF788 540042AE */  clrlslwi  r0, r0, 18, 8
/* 0AC78C 800AF78C 64004D00 */  oris      r0, r0, 0x4d00
/* 0AC790 800AF790 901F0040 */  stw       r0, 0x40(r31)
/* 0AC794 800AF794 A00330E0 */  lhz       r0, 0x30e0(r3)
/* 0AC798 800AF798 540042AE */  clrlslwi  r0, r0, 18, 8
/* 0AC79C 800AF79C 64004D40 */  oris      r0, r0, 0x4d40
/* 0AC7A0 800AF7A0 901F0044 */  stw       r0, 0x44(r31)
/* 0AC7A4 800AF7A4 A00330E0 */  lhz       r0, 0x30e0(r3)
/* 0AC7A8 800AF7A8 540042AE */  clrlslwi  r0, r0, 18, 8
/* 0AC7AC 800AF7AC 64004D80 */  oris      r0, r0, 0x4d80
/* 0AC7B0 800AF7B0 901F0048 */  stw       r0, 0x48(r31)
/* 0AC7B4 800AF7B4 A00330E0 */  lhz       r0, 0x30e0(r3)
/* 0AC7B8 800AF7B8 540042AE */  clrlslwi  r0, r0, 18, 8
/* 0AC7BC 800AF7BC 64004DC0 */  oris      r0, r0, 0x4dc0
/* 0AC7C0 800AF7C0 901F004C */  stw       r0, 0x4c(r31)
/* 0AC7C4 800AF7C4 4BFF54FD */  bl        SIRefreshSamplingRate
/* 0AC7C8 800AF7C8 3C60800F */  lis       r3, D_800F3650@ha
/* 0AC7CC 800AF7CC 38633650 */  addi      r3, r3, D_800F3650@l
/* 0AC7D0 800AF7D0 4BFEFA35 */  bl        OSRegisterResetFunction
/* 0AC7D4 800AF7D4 3F80F000 */  lis       r28, 0xf000
/* 0AC7D8 800AF7D8 4BFEEA71 */  bl        OSDisableInterrupts
/* 0AC7DC 800AF7DC 808D8C58 */  lwz       r4, D_8018BBD8@sda21(r0)
/* 0AC7E0 800AF7E0 38E00000 */  li        r7, 0x0
/* 0AC7E4 800AF7E4 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0AC7E8 800AF7E8 3B630000 */  addi      r27, r3, 0x0
/* 0AC7EC 800AF7EC 800D8C54 */  lwz       r0, D_8018BBD4@sda21(r0)
/* 0AC7F0 800AF7F0 7F9C2378 */  or        r28, r28, r4
/* 0AC7F4 800AF7F4 808D8C48 */  lwz       r4, D_8018BBC8@sda21(r0)
/* 0AC7F8 800AF7F8 7CA50378 */  or        r5, r5, r0
/* 0AC7FC 800AF7FC 800D87E0 */  lwz       r0, D_8018B760@sda21(r0)
/* 0AC800 800AF800 7F9C2878 */  andc      r28, r28, r5
/* 0AC804 800AF804 80AD8C44 */  lwz       r5, D_8018BBC4@sda21(r0)
/* 0AC808 800AF808 7C86E378 */  or        r6, r4, r28
/* 0AC80C 800AF80C 90ED8C58 */  stw       r7, D_8018BBD8@sda21(r0)
/* 0AC810 800AF810 7CA4E078 */  andc      r4, r5, r28
/* 0AC814 800AF814 90CD8C48 */  stw       r6, D_8018BBC8@sda21(r0)
/* 0AC818 800AF818 28000004 */  cmplwi    r0, 0x4
/* 0AC81C 800AF81C 800D8C48 */  lwz       r0, D_8018BBC8@sda21(r0)
/* 0AC820 800AF820 908D8C44 */  stw       r4, D_8018BBC4@sda21(r0)
/* 0AC824 800AF824 7C032838 */  and       r3, r0, r5
/* 0AC828 800AF828 40820010 */  bne       lbl_800AF838
/* 0AC82C 800AF82C 800D8C4C */  lwz       r0, D_8018BBCC@sda21(r0)
/* 0AC830 800AF830 7C00E378 */  or        r0, r0, r28
/* 0AC834 800AF834 900D8C4C */  stw       r0, D_8018BBCC@sda21(r0)
lbl_800AF838:
/* 0AC838 800AF838 4BFF4A11 */  bl        SIDisablePolling
/* 0AC83C 800AF83C 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0AC840 800AF840 2C000020 */  cmpwi     r0, 0x20
/* 0AC844 800AF844 40820054 */  bne       lbl_800AF898
/* 0AC848 800AF848 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0AC84C 800AF84C 7CA00034 */  cntlzw    r0, r5
/* 0AC850 800AF850 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC854 800AF854 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0AC858 800AF858 2C040020 */  cmpwi     r4, 0x20
/* 0AC85C 800AF85C 4182003C */  beq       lbl_800AF898
/* 0AC860 800AF860 3C608000 */  lis       r3, 0x8000
/* 0AC864 800AF864 1C04000C */  mulli     r0, r4, 0xc
/* 0AC868 800AF868 7C632430 */  srw       r3, r3, r4
/* 0AC86C 800AF86C 7CA41878 */  andc      r4, r5, r3
/* 0AC870 800AF870 7C7F0214 */  add       r3, r31, r0
/* 0AC874 800AF874 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC878 800AF878 38800000 */  li        r4, 0x0
/* 0AC87C 800AF87C 38A0000C */  li        r5, 0xc
/* 0AC880 800AF880 38630010 */  addi      r3, r3, 0x10
/* 0AC884 800AF884 4BF55A9D */  bl        memset
/* 0AC888 800AF888 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AC88C 800AF88C 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC890 800AF890 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AC894 800AF894 4BFF520D */  bl        SIGetTypeAsync
lbl_800AF898:
/* 0AC898 800AF898 7F63DB78 */  mr        r3, r27
/* 0AC89C 800AF89C 4BFEE9D5 */  bl        OSRestoreInterrupts
/* 0AC8A0 800AF8A0 38600001 */  li        r3, 0x1
lbl_800AF8A4:
/* 0AC8A4 800AF8A4 BB21001C */  lmw       r25, 0x1c(r1)
/* 0AC8A8 800AF8A8 8001003C */  lwz       r0, 0x3c(r1)
/* 0AC8AC 800AF8AC 38210038 */  addi      r1, r1, 0x38
/* 0AC8B0 800AF8B0 7C0803A6 */  mtlr      r0
/* 0AC8B4 800AF8B4 4E800020 */  blr

glabel PADRead
/* 0AC8B8 800AF8B8 7C0802A6 */  mflr      r0
/* 0AC8BC 800AF8BC 90010004 */  stw       r0, 0x4(r1)
/* 0AC8C0 800AF8C0 9421FFB0 */  stwu      r1, -0x50(r1)
/* 0AC8C4 800AF8C4 BE810020 */  stmw      r20, 0x20(r1)
/* 0AC8C8 800AF8C8 7C7F1B78 */  mr        r31, r3
/* 0AC8CC 800AF8CC 4BFEE97D */  bl        OSDisableInterrupts
/* 0AC8D0 800AF8D0 3AA00000 */  li        r21, 0x0
/* 0AC8D4 800AF8D4 1C15000C */  mulli     r0, r21, 0xc
/* 0AC8D8 800AF8D8 3C808019 */  lis       r4, Origin@ha
/* 0AC8DC 800AF8DC 3B448720 */  addi      r26, r4, Origin@l
/* 0AC8E0 800AF8E0 3C80800B */  lis       r4, PADOriginUpdateCallback@ha
/* 0AC8E4 800AF8E4 3CA0800B */  lis       r5, PADReceiveCheckCallback@ha
/* 0AC8E8 800AF8E8 3CC0800B */  lis       r6, PADTypeAndStatusCallback@ha
/* 0AC8EC 800AF8EC 7F1A0214 */  add       r24, r26, r0
/* 0AC8F0 800AF8F0 3AC30000 */  addi      r22, r3, 0x0
/* 0AC8F4 800AF8F4 3BC4EEA4 */  addi      r30, r4, PADOriginUpdateCallback@l
/* 0AC8F8 800AF8F8 3BA5F368 */  addi      r29, r5, PADReceiveCheckCallback@l
/* 0AC8FC 800AF8FC 3B86F03C */  addi      r28, r6, PADTypeAndStatusCallback@l
/* 0AC900 800AF900 3A800000 */  li        r20, 0x0
/* 0AC904 800AF904 3F608000 */  lis       r27, 0x8000
lbl_800AF908:
/* 0AC908 800AF908 800D8C58 */  lwz       r0, D_8018BBD8@sda21(r0)
/* 0AC90C 800AF90C 7F77AC30 */  srw       r23, r27, r21
/* 0AC910 800AF910 7C00B839 */  and.      r0, r0, r23
/* 0AC914 800AF914 418200D8 */  beq       lbl_800AF9EC
/* 0AC918 800AF918 4BFEE931 */  bl        OSDisableInterrupts
/* 0AC91C 800AF91C 808D8C50 */  lwz       r4, D_8018BBD0@sda21(r0)
/* 0AC920 800AF920 38C00000 */  li        r6, 0x0
/* 0AC924 800AF924 800D8C54 */  lwz       r0, D_8018BBD4@sda21(r0)
/* 0AC928 800AF928 7C791B78 */  mr        r25, r3
/* 0AC92C 800AF92C 80AD8C58 */  lwz       r5, D_8018BBD8@sda21(r0)
/* 0AC930 800AF930 7C840378 */  or        r4, r4, r0
/* 0AC934 800AF934 800D8C48 */  lwz       r0, D_8018BBC8@sda21(r0)
/* 0AC938 800AF938 7CA72078 */  andc      r7, r5, r4
/* 0AC93C 800AF93C 80AD8C44 */  lwz       r5, D_8018BBC4@sda21(r0)
/* 0AC940 800AF940 7C043B78 */  or        r4, r0, r7
/* 0AC944 800AF944 800D87E0 */  lwz       r0, D_8018B760@sda21(r0)
/* 0AC948 800AF948 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC94C 800AF94C 7CA43878 */  andc      r4, r5, r7
/* 0AC950 800AF950 28000004 */  cmplwi    r0, 0x4
/* 0AC954 800AF954 800D8C48 */  lwz       r0, D_8018BBC8@sda21(r0)
/* 0AC958 800AF958 90CD8C58 */  stw       r6, D_8018BBD8@sda21(r0)
/* 0AC95C 800AF95C 7C032838 */  and       r3, r0, r5
/* 0AC960 800AF960 908D8C44 */  stw       r4, D_8018BBC4@sda21(r0)
/* 0AC964 800AF964 40820010 */  bne       lbl_800AF974
/* 0AC968 800AF968 800D8C4C */  lwz       r0, D_8018BBCC@sda21(r0)
/* 0AC96C 800AF96C 7C003B78 */  or        r0, r0, r7
/* 0AC970 800AF970 900D8C4C */  stw       r0, D_8018BBCC@sda21(r0)
lbl_800AF974:
/* 0AC974 800AF974 4BFF48D5 */  bl        SIDisablePolling
/* 0AC978 800AF978 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0AC97C 800AF97C 2C000020 */  cmpwi     r0, 0x20
/* 0AC980 800AF980 40820048 */  bne       lbl_800AF9C8
/* 0AC984 800AF984 808D8C48 */  lwz       r4, D_8018BBC8@sda21(r0)
/* 0AC988 800AF988 7C800034 */  cntlzw    r0, r4
/* 0AC98C 800AF98C 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AC990 800AF990 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC994 800AF994 2C030020 */  cmpwi     r3, 0x20
/* 0AC998 800AF998 41820030 */  beq       lbl_800AF9C8
/* 0AC99C 800AF99C 1C03000C */  mulli     r0, r3, 0xc
/* 0AC9A0 800AF9A0 7F631C30 */  srw       r3, r27, r3
/* 0AC9A4 800AF9A4 7C841878 */  andc      r4, r4, r3
/* 0AC9A8 800AF9A8 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AC9AC 800AF9AC 7C7A0214 */  add       r3, r26, r0
/* 0AC9B0 800AF9B0 38800000 */  li        r4, 0x0
/* 0AC9B4 800AF9B4 38A0000C */  li        r5, 0xc
/* 0AC9B8 800AF9B8 4BF55969 */  bl        memset
/* 0AC9BC 800AF9BC 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AC9C0 800AF9C0 7F84E378 */  mr        r4, r28
/* 0AC9C4 800AF9C4 4BFF50DD */  bl        SIGetTypeAsync
lbl_800AF9C8:
/* 0AC9C8 800AF9C8 7F23CB78 */  mr        r3, r25
/* 0AC9CC 800AF9CC 4BFEE8A5 */  bl        OSRestoreInterrupts
/* 0AC9D0 800AF9D0 3800FFFE */  li        r0, -0x2
/* 0AC9D4 800AF9D4 981F000A */  stb       r0, 0xa(r31)
/* 0AC9D8 800AF9D8 387F0000 */  addi      r3, r31, 0x0
/* 0AC9DC 800AF9DC 38800000 */  li        r4, 0x0
/* 0AC9E0 800AF9E0 38A0000A */  li        r5, 0xa
/* 0AC9E4 800AF9E4 4BF5593D */  bl        memset
/* 0AC9E8 800AF9E8 48000248 */  b         lbl_800AFC30
lbl_800AF9EC:
/* 0AC9EC 800AF9EC 800D8C48 */  lwz       r0, D_8018BBC8@sda21(r0)
/* 0AC9F0 800AF9F0 7C00B839 */  and.      r0, r0, r23
/* 0AC9F4 800AF9F4 40820010 */  bne       lbl_800AFA04
/* 0AC9F8 800AF9F8 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0AC9FC 800AF9FC 7C00A800 */  cmpw      r0, r21
/* 0ACA00 800AFA00 40820020 */  bne       lbl_800AFA20
lbl_800AFA04:
/* 0ACA04 800AFA04 3800FFFE */  li        r0, -0x2
/* 0ACA08 800AFA08 981F000A */  stb       r0, 0xa(r31)
/* 0ACA0C 800AFA0C 387F0000 */  addi      r3, r31, 0x0
/* 0ACA10 800AFA10 38800000 */  li        r4, 0x0
/* 0ACA14 800AFA14 38A0000A */  li        r5, 0xa
/* 0ACA18 800AFA18 4BF55909 */  bl        memset
/* 0ACA1C 800AFA1C 48000214 */  b         lbl_800AFC30
lbl_800AFA20:
/* 0ACA20 800AFA20 800D8C44 */  lwz       r0, D_8018BBC4@sda21(r0)
/* 0ACA24 800AFA24 7C00B839 */  and.      r0, r0, r23
/* 0ACA28 800AFA28 40820020 */  bne       lbl_800AFA48
/* 0ACA2C 800AFA2C 3800FFFF */  li        r0, -0x1
/* 0ACA30 800AFA30 981F000A */  stb       r0, 0xa(r31)
/* 0ACA34 800AFA34 387F0000 */  addi      r3, r31, 0x0
/* 0ACA38 800AFA38 38800000 */  li        r4, 0x0
/* 0ACA3C 800AFA3C 38A0000A */  li        r5, 0xa
/* 0ACA40 800AFA40 4BF558E1 */  bl        memset
/* 0ACA44 800AFA44 480001EC */  b         lbl_800AFC30
lbl_800AFA48:
/* 0ACA48 800AFA48 7EA3AB78 */  mr        r3, r21
/* 0ACA4C 800AFA4C 4BFF3AC1 */  bl        SIIsChanBusy
/* 0ACA50 800AFA50 2C030000 */  cmpwi     r3, 0x0
/* 0ACA54 800AFA54 41820020 */  beq       lbl_800AFA74
/* 0ACA58 800AFA58 3800FFFD */  li        r0, -0x3
/* 0ACA5C 800AFA5C 981F000A */  stb       r0, 0xa(r31)
/* 0ACA60 800AFA60 387F0000 */  addi      r3, r31, 0x0
/* 0ACA64 800AFA64 38800000 */  li        r4, 0x0
/* 0ACA68 800AFA68 38A0000A */  li        r5, 0xa
/* 0ACA6C 800AFA6C 4BF558B5 */  bl        memset
/* 0ACA70 800AFA70 480001C0 */  b         lbl_800AFC30
lbl_800AFA74:
/* 0ACA74 800AFA74 7EA3AB78 */  mr        r3, r21
/* 0ACA78 800AFA78 4BFF4629 */  bl        SIGetStatus
/* 0ACA7C 800AFA7C 54600739 */  rlwinm.   r0, r3, 0, 28, 28
/* 0ACA80 800AFA80 418200CC */  beq       lbl_800AFB4C
/* 0ACA84 800AFA84 38750000 */  addi      r3, r21, 0x0
/* 0ACA88 800AFA88 38810014 */  addi      r4, r1, 0x14
/* 0ACA8C 800AFA8C 4BFF48FD */  bl        SIGetResponse
/* 0ACA90 800AFA90 800D8C50 */  lwz       r0, D_8018BBD0@sda21(r0)
/* 0ACA94 800AFA94 7C00B839 */  and.      r0, r0, r23
/* 0ACA98 800AFA98 41820040 */  beq       lbl_800AFAD8
/* 0ACA9C 800AFA9C 38000000 */  li        r0, 0x0
/* 0ACAA0 800AFAA0 981F000A */  stb       r0, 0xa(r31)
/* 0ACAA4 800AFAA4 387F0000 */  addi      r3, r31, 0x0
/* 0ACAA8 800AFAA8 38800000 */  li        r4, 0x0
/* 0ACAAC 800AFAAC 38A0000A */  li        r5, 0xa
/* 0ACAB0 800AFAB0 4BF55871 */  bl        memset
/* 0ACAB4 800AFAB4 806D8C54 */  lwz       r3, D_8018BBD4@sda21(r0)
/* 0ACAB8 800AFAB8 7C60B839 */  and.      r0, r3, r23
/* 0ACABC 800AFABC 40820174 */  bne       lbl_800AFC30
/* 0ACAC0 800AFAC0 7C60BB78 */  or        r0, r3, r23
/* 0ACAC4 800AFAC4 900D8C54 */  stw       r0, D_8018BBD4@sda21(r0)
/* 0ACAC8 800AFAC8 38750000 */  addi      r3, r21, 0x0
/* 0ACACC 800AFACC 389D0000 */  addi      r4, r29, 0x0
/* 0ACAD0 800AFAD0 4BFF4FD1 */  bl        SIGetTypeAsync
/* 0ACAD4 800AFAD4 4800015C */  b         lbl_800AFC30
lbl_800AFAD8:
/* 0ACAD8 800AFAD8 4BFEE771 */  bl        OSDisableInterrupts
/* 0ACADC 800AFADC 3B230000 */  addi      r25, r3, 0x0
/* 0ACAE0 800AFAE0 38770000 */  addi      r3, r23, 0x0
/* 0ACAE4 800AFAE4 4BFF4765 */  bl        SIDisablePolling
/* 0ACAE8 800AFAE8 80CD8C44 */  lwz       r6, D_8018BBC4@sda21(r0)
/* 0ACAEC 800AFAEC 7EE8B8F8 */  nor       r8, r23, r23
/* 0ACAF0 800AFAF0 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0ACAF4 800AFAF4 7EA3AB78 */  mr        r3, r21
/* 0ACAF8 800AFAF8 808D8C54 */  lwz       r4, D_8018BBD4@sda21(r0)
/* 0ACAFC 800AFAFC 800D8C58 */  lwz       r0, D_8018BBD8@sda21(r0)
/* 0ACB00 800AFB00 7CC74038 */  and       r7, r6, r8
/* 0ACB04 800AFB04 7CA64038 */  and       r6, r5, r8
/* 0ACB08 800AFB08 90ED8C44 */  stw       r7, D_8018BBC4@sda21(r0)
/* 0ACB0C 800AFB0C 7C854038 */  and       r5, r4, r8
/* 0ACB10 800AFB10 7C004038 */  and       r0, r0, r8
/* 0ACB14 800AFB14 90CD8C50 */  stw       r6, D_8018BBD0@sda21(r0)
/* 0ACB18 800AFB18 38800000 */  li        r4, 0x0
/* 0ACB1C 800AFB1C 90AD8C54 */  stw       r5, D_8018BBD4@sda21(r0)
/* 0ACB20 800AFB20 900D8C58 */  stw       r0, D_8018BBD8@sda21(r0)
/* 0ACB24 800AFB24 4BFF06BD */  bl        fn_800A01E0
/* 0ACB28 800AFB28 7F23CB78 */  mr        r3, r25
/* 0ACB2C 800AFB2C 4BFEE745 */  bl        OSRestoreInterrupts
/* 0ACB30 800AFB30 3800FFFF */  li        r0, -0x1
/* 0ACB34 800AFB34 981F000A */  stb       r0, 0xa(r31)
/* 0ACB38 800AFB38 387F0000 */  addi      r3, r31, 0x0
/* 0ACB3C 800AFB3C 38800000 */  li        r4, 0x0
/* 0ACB40 800AFB40 38A0000A */  li        r5, 0xa
/* 0ACB44 800AFB44 4BF557DD */  bl        memset
/* 0ACB48 800AFB48 480000E8 */  b         lbl_800AFC30
lbl_800AFB4C:
/* 0ACB4C 800AFB4C 7EA3AB78 */  mr        r3, r21
/* 0ACB50 800AFB50 4BFF4D8D */  bl        SIGetType
/* 0ACB54 800AFB54 54600085 */  rlwinm.   r0, r3, 0, 2, 2
/* 0ACB58 800AFB58 40820008 */  bne       lbl_800AFB60
/* 0ACB5C 800AFB5C 7E94BB78 */  or        r20, r20, r23
lbl_800AFB60:
/* 0ACB60 800AFB60 38750000 */  addi      r3, r21, 0x0
/* 0ACB64 800AFB64 38810014 */  addi      r4, r1, 0x14
/* 0ACB68 800AFB68 4BFF4821 */  bl        SIGetResponse
/* 0ACB6C 800AFB6C 2C030000 */  cmpwi     r3, 0x0
/* 0ACB70 800AFB70 40820020 */  bne       lbl_800AFB90
/* 0ACB74 800AFB74 3800FFFD */  li        r0, -0x3
/* 0ACB78 800AFB78 981F000A */  stb       r0, 0xa(r31)
/* 0ACB7C 800AFB7C 387F0000 */  addi      r3, r31, 0x0
/* 0ACB80 800AFB80 38800000 */  li        r4, 0x0
/* 0ACB84 800AFB84 38A0000A */  li        r5, 0xa
/* 0ACB88 800AFB88 4BF55799 */  bl        memset
/* 0ACB8C 800AFB8C 480000A4 */  b         lbl_800AFC30
lbl_800AFB90:
/* 0ACB90 800AFB90 80010014 */  lwz       r0, 0x14(r1)
/* 0ACB94 800AFB94 54000001 */  clrrwi.   r0, r0, 31
/* 0ACB98 800AFB98 41820020 */  beq       lbl_800AFBB8
/* 0ACB9C 800AFB9C 3800FFFD */  li        r0, -0x3
/* 0ACBA0 800AFBA0 981F000A */  stb       r0, 0xa(r31)
/* 0ACBA4 800AFBA4 387F0000 */  addi      r3, r31, 0x0
/* 0ACBA8 800AFBA8 38800000 */  li        r4, 0x0
/* 0ACBAC 800AFBAC 38A0000A */  li        r5, 0xa
/* 0ACBB0 800AFBB0 4BF55771 */  bl        memset
/* 0ACBB4 800AFBB4 4800007C */  b         lbl_800AFC30
lbl_800AFBB8:
/* 0ACBB8 800AFBB8 818D87E4 */  lwz       r12, D_8018B764@sda21(r0)
/* 0ACBBC 800AFBBC 38750000 */  addi      r3, r21, 0x0
/* 0ACBC0 800AFBC0 389F0000 */  addi      r4, r31, 0x0
/* 0ACBC4 800AFBC4 7D8803A6 */  mtlr      r12
/* 0ACBC8 800AFBC8 38A10014 */  addi      r5, r1, 0x14
/* 0ACBCC 800AFBCC 4E800021 */  blrl
/* 0ACBD0 800AFBD0 A01F0000 */  lhz       r0, 0x0(r31)
/* 0ACBD4 800AFBD4 540004A5 */  rlwinm.   r0, r0, 0, 18, 18
/* 0ACBD8 800AFBD8 41820044 */  beq       lbl_800AFC1C
/* 0ACBDC 800AFBDC 3800FFFD */  li        r0, -0x3
/* 0ACBE0 800AFBE0 981F000A */  stb       r0, 0xa(r31)
/* 0ACBE4 800AFBE4 387F0000 */  addi      r3, r31, 0x0
/* 0ACBE8 800AFBE8 38800000 */  li        r4, 0x0
/* 0ACBEC 800AFBEC 38A0000A */  li        r5, 0xa
/* 0ACBF0 800AFBF0 4BF55731 */  bl        memset
/* 0ACBF4 800AFBF4 38750000 */  addi      r3, r21, 0x0
/* 0ACBF8 800AFBF8 38D80000 */  addi      r6, r24, 0x0
/* 0ACBFC 800AFBFC 391E0000 */  addi      r8, r30, 0x0
/* 0ACC00 800AFC00 388D87E8 */  li        r4, D_8018B768@sda21
/* 0ACC04 800AFC04 38A00001 */  li        r5, 0x1
/* 0ACC08 800AFC08 38E0000A */  li        r7, 0xa
/* 0ACC0C 800AFC0C 39400000 */  li        r10, 0x0
/* 0ACC10 800AFC10 39200000 */  li        r9, 0x0
/* 0ACC14 800AFC14 4BFF48C5 */  bl        SITransfer
/* 0ACC18 800AFC18 48000018 */  b         lbl_800AFC30
lbl_800AFC1C:
/* 0ACC1C 800AFC1C 38000000 */  li        r0, 0x0
/* 0ACC20 800AFC20 981F000A */  stb       r0, 0xa(r31)
/* 0ACC24 800AFC24 A01F0000 */  lhz       r0, 0x0(r31)
/* 0ACC28 800AFC28 5400066E */  rlwinm    r0, r0, 0, 25, 23
/* 0ACC2C 800AFC2C B01F0000 */  sth       r0, 0x0(r31)
lbl_800AFC30:
/* 0ACC30 800AFC30 3AB50001 */  addi      r21, r21, 0x1
/* 0ACC34 800AFC34 2C150004 */  cmpwi     r21, 0x4
/* 0ACC38 800AFC38 3B18000C */  addi      r24, r24, 0xc
/* 0ACC3C 800AFC3C 3BFF000C */  addi      r31, r31, 0xc
/* 0ACC40 800AFC40 4180FCC8 */  blt       lbl_800AF908
/* 0ACC44 800AFC44 7EC3B378 */  mr        r3, r22
/* 0ACC48 800AFC48 4BFEE629 */  bl        OSRestoreInterrupts
/* 0ACC4C 800AFC4C 7E83A378 */  mr        r3, r20
/* 0ACC50 800AFC50 BA810020 */  lmw       r20, 0x20(r1)
/* 0ACC54 800AFC54 80010054 */  lwz       r0, 0x54(r1)
/* 0ACC58 800AFC58 38210050 */  addi      r1, r1, 0x50
/* 0ACC5C 800AFC5C 7C0803A6 */  mtlr      r0
/* 0ACC60 800AFC60 4E800020 */  blr

glabel PADControlMotor
/* 0ACC64 800AFC64 7C0802A6 */  mflr      r0
/* 0ACC68 800AFC68 90010004 */  stw       r0, 0x4(r1)
/* 0ACC6C 800AFC6C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0ACC70 800AFC70 93E10024 */  stw       r31, 0x24(r1)
/* 0ACC74 800AFC74 93C10020 */  stw       r30, 0x20(r1)
/* 0ACC78 800AFC78 3BC40000 */  addi      r30, r4, 0x0
/* 0ACC7C 800AFC7C 93A1001C */  stw       r29, 0x1c(r1)
/* 0ACC80 800AFC80 3BA30000 */  addi      r29, r3, 0x0
/* 0ACC84 800AFC84 4BFEE5C5 */  bl        OSDisableInterrupts
/* 0ACC88 800AFC88 3C008000 */  lis       r0, 0x8000
/* 0ACC8C 800AFC8C 808D8C44 */  lwz       r4, D_8018BBC4@sda21(r0)
/* 0ACC90 800AFC90 7C00EC30 */  srw       r0, r0, r29
/* 0ACC94 800AFC94 7C800039 */  and.      r0, r4, r0
/* 0ACC98 800AFC98 3BE30000 */  addi      r31, r3, 0x0
/* 0ACC9C 800AFC9C 41820048 */  beq       lbl_800AFCE4
/* 0ACCA0 800AFCA0 7FA3EB78 */  mr        r3, r29
/* 0ACCA4 800AFCA4 4BFF4C39 */  bl        SIGetType
/* 0ACCA8 800AFCA8 54600085 */  rlwinm.   r0, r3, 0, 2, 2
/* 0ACCAC 800AFCAC 40820038 */  bne       lbl_800AFCE4
/* 0ACCB0 800AFCB0 800D87E0 */  lwz       r0, D_8018B760@sda21(r0)
/* 0ACCB4 800AFCB4 28000002 */  cmplwi    r0, 0x2
/* 0ACCB8 800AFCB8 40800010 */  bge       lbl_800AFCC8
/* 0ACCBC 800AFCBC 281E0002 */  cmplwi    r30, 0x2
/* 0ACCC0 800AFCC0 40820008 */  bne       lbl_800AFCC8
/* 0ACCC4 800AFCC4 3BC00000 */  li        r30, 0x0
lbl_800AFCC8:
/* 0ACCC8 800AFCC8 808D87DC */  lwz       r4, D_8018B75C@sda21(r0)
/* 0ACCCC 800AFCCC 57C007BE */  clrlwi    r0, r30, 30
/* 0ACCD0 800AFCD0 387D0000 */  addi      r3, r29, 0x0
/* 0ACCD4 800AFCD4 64840040 */  oris      r4, r4, 0x40
/* 0ACCD8 800AFCD8 7C840378 */  or        r4, r4, r0
/* 0ACCDC 800AFCDC 4BFF4441 */  bl        SISetCommand
/* 0ACCE0 800AFCE0 4BFF4451 */  bl        SITransferCommands
lbl_800AFCE4:
/* 0ACCE4 800AFCE4 7FE3FB78 */  mr        r3, r31
/* 0ACCE8 800AFCE8 4BFEE589 */  bl        OSRestoreInterrupts
/* 0ACCEC 800AFCEC 8001002C */  lwz       r0, 0x2c(r1)
/* 0ACCF0 800AFCF0 83E10024 */  lwz       r31, 0x24(r1)
/* 0ACCF4 800AFCF4 83C10020 */  lwz       r30, 0x20(r1)
/* 0ACCF8 800AFCF8 83A1001C */  lwz       r29, 0x1c(r1)
/* 0ACCFC 800AFCFC 38210028 */  addi      r1, r1, 0x28
/* 0ACD00 800AFD00 7C0803A6 */  mtlr      r0
/* 0ACD04 800AFD04 4E800020 */  blr

glabel PADSetSpec
/* 0ACD08 800AFD08 38000000 */  li        r0, 0x0
/* 0ACD0C 800AFD0C 2C030001 */  cmpwi     r3, 0x1
/* 0ACD10 800AFD10 900D8C64 */  stw       r0, __PADSpec@sda21(r0)
/* 0ACD14 800AFD14 41820030 */  beq       lbl_800AFD44
/* 0ACD18 800AFD18 40800010 */  bge       lbl_800AFD28
/* 0ACD1C 800AFD1C 2C030000 */  cmpwi     r3, 0x0
/* 0ACD20 800AFD20 40800014 */  bge       lbl_800AFD34
/* 0ACD24 800AFD24 4800003C */  b         lbl_800AFD60
lbl_800AFD28:
/* 0ACD28 800AFD28 2C030006 */  cmpwi     r3, 0x6
/* 0ACD2C 800AFD2C 40800034 */  bge       lbl_800AFD60
/* 0ACD30 800AFD30 48000024 */  b         lbl_800AFD54
lbl_800AFD34:
/* 0ACD34 800AFD34 3C80800B */  lis       r4, SPEC0_MakeStatus@ha
/* 0ACD38 800AFD38 3804FD68 */  addi      r0, r4, SPEC0_MakeStatus@l
/* 0ACD3C 800AFD3C 900D87E4 */  stw       r0, D_8018B764@sda21(r0)
/* 0ACD40 800AFD40 48000020 */  b         lbl_800AFD60
lbl_800AFD44:
/* 0ACD44 800AFD44 3C80800B */  lis       r4, SPEC1_MakeStatus@ha
/* 0ACD48 800AFD48 3804FEDC */  addi      r0, r4, SPEC1_MakeStatus@l
/* 0ACD4C 800AFD4C 900D87E4 */  stw       r0, D_8018B764@sda21(r0)
/* 0ACD50 800AFD50 48000010 */  b         lbl_800AFD60
lbl_800AFD54:
/* 0ACD54 800AFD54 3C80800B */  lis       r4, SPEC2_MakeStatus@ha
/* 0ACD58 800AFD58 38040050 */  addi      r0, r4, SPEC2_MakeStatus@l
/* 0ACD5C 800AFD5C 900D87E4 */  stw       r0, D_8018B764@sda21(r0)
lbl_800AFD60:
/* 0ACD60 800AFD60 906D87E0 */  stw       r3, D_8018B760@sda21(r0)
/* 0ACD64 800AFD64 4E800020 */  blr

glabel SPEC0_MakeStatus
/* 0ACD68 800AFD68 38600000 */  li        r3, 0x0
/* 0ACD6C 800AFD6C B0640000 */  sth       r3, 0x0(r4)
/* 0ACD70 800AFD70 80050000 */  lwz       r0, 0x0(r5)
/* 0ACD74 800AFD74 54008739 */  rlwinm.   r0, r0, 16, 28, 28
/* 0ACD78 800AFD78 41820008 */  beq       lbl_800AFD80
/* 0ACD7C 800AFD7C 38600100 */  li        r3, 0x100
lbl_800AFD80:
/* 0ACD80 800AFD80 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACD84 800AFD84 7C001B78 */  or        r0, r0, r3
/* 0ACD88 800AFD88 B0040000 */  sth       r0, 0x0(r4)
/* 0ACD8C 800AFD8C 80050000 */  lwz       r0, 0x0(r5)
/* 0ACD90 800AFD90 540086B5 */  rlwinm.   r0, r0, 16, 26, 26
/* 0ACD94 800AFD94 4182000C */  beq       lbl_800AFDA0
/* 0ACD98 800AFD98 38600200 */  li        r3, 0x200
/* 0ACD9C 800AFD9C 48000008 */  b         lbl_800AFDA4
lbl_800AFDA0:
/* 0ACDA0 800AFDA0 38600000 */  li        r3, 0x0
lbl_800AFDA4:
/* 0ACDA4 800AFDA4 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACDA8 800AFDA8 7C001B78 */  or        r0, r0, r3
/* 0ACDAC 800AFDAC B0040000 */  sth       r0, 0x0(r4)
/* 0ACDB0 800AFDB0 80050000 */  lwz       r0, 0x0(r5)
/* 0ACDB4 800AFDB4 540085EF */  rlwinm.   r0, r0, 16, 23, 23
/* 0ACDB8 800AFDB8 4182000C */  beq       lbl_800AFDC4
/* 0ACDBC 800AFDBC 38600400 */  li        r3, 0x400
/* 0ACDC0 800AFDC0 48000008 */  b         lbl_800AFDC8
lbl_800AFDC4:
/* 0ACDC4 800AFDC4 38600000 */  li        r3, 0x0
lbl_800AFDC8:
/* 0ACDC8 800AFDC8 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACDCC 800AFDCC 7C001B78 */  or        r0, r0, r3
/* 0ACDD0 800AFDD0 B0040000 */  sth       r0, 0x0(r4)
/* 0ACDD4 800AFDD4 80050000 */  lwz       r0, 0x0(r5)
/* 0ACDD8 800AFDD8 540087FF */  extrwi.   r0, r0, 1, 15
/* 0ACDDC 800AFDDC 4182000C */  beq       lbl_800AFDE8
/* 0ACDE0 800AFDE0 38600800 */  li        r3, 0x800
/* 0ACDE4 800AFDE4 48000008 */  b         lbl_800AFDEC
lbl_800AFDE8:
/* 0ACDE8 800AFDE8 38600000 */  li        r3, 0x0
lbl_800AFDEC:
/* 0ACDEC 800AFDEC A0040000 */  lhz       r0, 0x0(r4)
/* 0ACDF0 800AFDF0 7C001B78 */  or        r0, r0, r3
/* 0ACDF4 800AFDF4 B0040000 */  sth       r0, 0x0(r4)
/* 0ACDF8 800AFDF8 80050000 */  lwz       r0, 0x0(r5)
/* 0ACDFC 800AFDFC 540086F7 */  rlwinm.   r0, r0, 16, 27, 27
/* 0ACE00 800AFE00 4182000C */  beq       lbl_800AFE0C
/* 0ACE04 800AFE04 38C01000 */  li        r6, 0x1000
/* 0ACE08 800AFE08 48000008 */  b         lbl_800AFE10
lbl_800AFE0C:
/* 0ACE0C 800AFE0C 38C00000 */  li        r6, 0x0
lbl_800AFE10:
/* 0ACE10 800AFE10 A0640000 */  lhz       r3, 0x0(r4)
/* 0ACE14 800AFE14 38000000 */  li        r0, 0x0
/* 0ACE18 800AFE18 7C633378 */  or        r3, r3, r6
/* 0ACE1C 800AFE1C B0640000 */  sth       r3, 0x0(r4)
/* 0ACE20 800AFE20 80650004 */  lwz       r3, 0x4(r5)
/* 0ACE24 800AFE24 5463843E */  srwi      r3, r3, 16
/* 0ACE28 800AFE28 7C630774 */  extsb     r3, r3
/* 0ACE2C 800AFE2C 98640002 */  stb       r3, 0x2(r4)
/* 0ACE30 800AFE30 80650004 */  lwz       r3, 0x4(r5)
/* 0ACE34 800AFE34 5463463E */  srwi      r3, r3, 24
/* 0ACE38 800AFE38 7C630774 */  extsb     r3, r3
/* 0ACE3C 800AFE3C 98640003 */  stb       r3, 0x3(r4)
/* 0ACE40 800AFE40 80650004 */  lwz       r3, 0x4(r5)
/* 0ACE44 800AFE44 7C630774 */  extsb     r3, r3
/* 0ACE48 800AFE48 98640004 */  stb       r3, 0x4(r4)
/* 0ACE4C 800AFE4C 80650004 */  lwz       r3, 0x4(r5)
/* 0ACE50 800AFE50 5463C23E */  srwi      r3, r3, 8
/* 0ACE54 800AFE54 7C630774 */  extsb     r3, r3
/* 0ACE58 800AFE58 98640005 */  stb       r3, 0x5(r4)
/* 0ACE5C 800AFE5C 80650000 */  lwz       r3, 0x0(r5)
/* 0ACE60 800AFE60 5463C63E */  extrwi    r3, r3, 8, 16
/* 0ACE64 800AFE64 98640006 */  stb       r3, 0x6(r4)
/* 0ACE68 800AFE68 80650000 */  lwz       r3, 0x0(r5)
/* 0ACE6C 800AFE6C 98640007 */  stb       r3, 0x7(r4)
/* 0ACE70 800AFE70 98040008 */  stb       r0, 0x8(r4)
/* 0ACE74 800AFE74 98040009 */  stb       r0, 0x9(r4)
/* 0ACE78 800AFE78 88040006 */  lbz       r0, 0x6(r4)
/* 0ACE7C 800AFE7C 280000AA */  cmplwi    r0, 0xaa
/* 0ACE80 800AFE80 41800010 */  blt       lbl_800AFE90
/* 0ACE84 800AFE84 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACE88 800AFE88 60000040 */  ori       r0, r0, 0x40
/* 0ACE8C 800AFE8C B0040000 */  sth       r0, 0x0(r4)
lbl_800AFE90:
/* 0ACE90 800AFE90 88040007 */  lbz       r0, 0x7(r4)
/* 0ACE94 800AFE94 280000AA */  cmplwi    r0, 0xaa
/* 0ACE98 800AFE98 41800010 */  blt       lbl_800AFEA8
/* 0ACE9C 800AFE9C A0040000 */  lhz       r0, 0x0(r4)
/* 0ACEA0 800AFEA0 60000020 */  ori       r0, r0, 0x20
/* 0ACEA4 800AFEA4 B0040000 */  sth       r0, 0x0(r4)
lbl_800AFEA8:
/* 0ACEA8 800AFEA8 88640002 */  lbz       r3, 0x2(r4)
/* 0ACEAC 800AFEAC 3803FF80 */  subi      r0, r3, 0x80
/* 0ACEB0 800AFEB0 98040002 */  stb       r0, 0x2(r4)
/* 0ACEB4 800AFEB4 88640003 */  lbz       r3, 0x3(r4)
/* 0ACEB8 800AFEB8 3803FF80 */  subi      r0, r3, 0x80
/* 0ACEBC 800AFEBC 98040003 */  stb       r0, 0x3(r4)
/* 0ACEC0 800AFEC0 88640004 */  lbz       r3, 0x4(r4)
/* 0ACEC4 800AFEC4 3803FF80 */  subi      r0, r3, 0x80
/* 0ACEC8 800AFEC8 98040004 */  stb       r0, 0x4(r4)
/* 0ACECC 800AFECC 88640005 */  lbz       r3, 0x5(r4)
/* 0ACED0 800AFED0 3803FF80 */  subi      r0, r3, 0x80
/* 0ACED4 800AFED4 98040005 */  stb       r0, 0x5(r4)
/* 0ACED8 800AFED8 4E800020 */  blr

glabel SPEC1_MakeStatus
/* 0ACEDC 800AFEDC 38600000 */  li        r3, 0x0
/* 0ACEE0 800AFEE0 B0640000 */  sth       r3, 0x0(r4)
/* 0ACEE4 800AFEE4 80050000 */  lwz       r0, 0x0(r5)
/* 0ACEE8 800AFEE8 54008631 */  rlwinm.   r0, r0, 16, 24, 24
/* 0ACEEC 800AFEEC 41820008 */  beq       lbl_800AFEF4
/* 0ACEF0 800AFEF0 38600100 */  li        r3, 0x100
lbl_800AFEF4:
/* 0ACEF4 800AFEF4 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACEF8 800AFEF8 7C001B78 */  or        r0, r0, r3
/* 0ACEFC 800AFEFC B0040000 */  sth       r0, 0x0(r4)
/* 0ACF00 800AFF00 80050000 */  lwz       r0, 0x0(r5)
/* 0ACF04 800AFF04 540085EF */  rlwinm.   r0, r0, 16, 23, 23
/* 0ACF08 800AFF08 4182000C */  beq       lbl_800AFF14
/* 0ACF0C 800AFF0C 38600200 */  li        r3, 0x200
/* 0ACF10 800AFF10 48000008 */  b         lbl_800AFF18
lbl_800AFF14:
/* 0ACF14 800AFF14 38600000 */  li        r3, 0x0
lbl_800AFF18:
/* 0ACF18 800AFF18 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACF1C 800AFF1C 7C001B78 */  or        r0, r0, r3
/* 0ACF20 800AFF20 B0040000 */  sth       r0, 0x0(r4)
/* 0ACF24 800AFF24 80050000 */  lwz       r0, 0x0(r5)
/* 0ACF28 800AFF28 540086B5 */  rlwinm.   r0, r0, 16, 26, 26
/* 0ACF2C 800AFF2C 4182000C */  beq       lbl_800AFF38
/* 0ACF30 800AFF30 38600400 */  li        r3, 0x400
/* 0ACF34 800AFF34 48000008 */  b         lbl_800AFF3C
lbl_800AFF38:
/* 0ACF38 800AFF38 38600000 */  li        r3, 0x0
lbl_800AFF3C:
/* 0ACF3C 800AFF3C A0040000 */  lhz       r0, 0x0(r4)
/* 0ACF40 800AFF40 7C001B78 */  or        r0, r0, r3
/* 0ACF44 800AFF44 B0040000 */  sth       r0, 0x0(r4)
/* 0ACF48 800AFF48 80050000 */  lwz       r0, 0x0(r5)
/* 0ACF4C 800AFF4C 540086F7 */  rlwinm.   r0, r0, 16, 27, 27
/* 0ACF50 800AFF50 4182000C */  beq       lbl_800AFF5C
/* 0ACF54 800AFF54 38600800 */  li        r3, 0x800
/* 0ACF58 800AFF58 48000008 */  b         lbl_800AFF60
lbl_800AFF5C:
/* 0ACF5C 800AFF5C 38600000 */  li        r3, 0x0
lbl_800AFF60:
/* 0ACF60 800AFF60 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACF64 800AFF64 7C001B78 */  or        r0, r0, r3
/* 0ACF68 800AFF68 B0040000 */  sth       r0, 0x0(r4)
/* 0ACF6C 800AFF6C 80050000 */  lwz       r0, 0x0(r5)
/* 0ACF70 800AFF70 540085AD */  rlwinm.   r0, r0, 16, 22, 22
/* 0ACF74 800AFF74 4182000C */  beq       lbl_800AFF80
/* 0ACF78 800AFF78 38C01000 */  li        r6, 0x1000
/* 0ACF7C 800AFF7C 48000008 */  b         lbl_800AFF84
lbl_800AFF80:
/* 0ACF80 800AFF80 38C00000 */  li        r6, 0x0
lbl_800AFF84:
/* 0ACF84 800AFF84 A0640000 */  lhz       r3, 0x0(r4)
/* 0ACF88 800AFF88 38000000 */  li        r0, 0x0
/* 0ACF8C 800AFF8C 7C633378 */  or        r3, r3, r6
/* 0ACF90 800AFF90 B0640000 */  sth       r3, 0x0(r4)
/* 0ACF94 800AFF94 80650004 */  lwz       r3, 0x4(r5)
/* 0ACF98 800AFF98 5463843E */  srwi      r3, r3, 16
/* 0ACF9C 800AFF9C 7C630774 */  extsb     r3, r3
/* 0ACFA0 800AFFA0 98640002 */  stb       r3, 0x2(r4)
/* 0ACFA4 800AFFA4 80650004 */  lwz       r3, 0x4(r5)
/* 0ACFA8 800AFFA8 5463463E */  srwi      r3, r3, 24
/* 0ACFAC 800AFFAC 7C630774 */  extsb     r3, r3
/* 0ACFB0 800AFFB0 98640003 */  stb       r3, 0x3(r4)
/* 0ACFB4 800AFFB4 80650004 */  lwz       r3, 0x4(r5)
/* 0ACFB8 800AFFB8 7C630774 */  extsb     r3, r3
/* 0ACFBC 800AFFBC 98640004 */  stb       r3, 0x4(r4)
/* 0ACFC0 800AFFC0 80650004 */  lwz       r3, 0x4(r5)
/* 0ACFC4 800AFFC4 5463C23E */  srwi      r3, r3, 8
/* 0ACFC8 800AFFC8 7C630774 */  extsb     r3, r3
/* 0ACFCC 800AFFCC 98640005 */  stb       r3, 0x5(r4)
/* 0ACFD0 800AFFD0 80650000 */  lwz       r3, 0x0(r5)
/* 0ACFD4 800AFFD4 5463C63E */  extrwi    r3, r3, 8, 16
/* 0ACFD8 800AFFD8 98640006 */  stb       r3, 0x6(r4)
/* 0ACFDC 800AFFDC 80650000 */  lwz       r3, 0x0(r5)
/* 0ACFE0 800AFFE0 98640007 */  stb       r3, 0x7(r4)
/* 0ACFE4 800AFFE4 98040008 */  stb       r0, 0x8(r4)
/* 0ACFE8 800AFFE8 98040009 */  stb       r0, 0x9(r4)
/* 0ACFEC 800AFFEC 88040006 */  lbz       r0, 0x6(r4)
/* 0ACFF0 800AFFF0 280000AA */  cmplwi    r0, 0xaa
/* 0ACFF4 800AFFF4 41800010 */  blt       lbl_800B0004
/* 0ACFF8 800AFFF8 A0040000 */  lhz       r0, 0x0(r4)
/* 0ACFFC 800AFFFC 60000040 */  ori       r0, r0, 0x40
/* 0AD000 800B0000 B0040000 */  sth       r0, 0x0(r4)
lbl_800B0004:
/* 0AD004 800B0004 88040007 */  lbz       r0, 0x7(r4)
/* 0AD008 800B0008 280000AA */  cmplwi    r0, 0xaa
/* 0AD00C 800B000C 41800010 */  blt       lbl_800B001C
/* 0AD010 800B0010 A0040000 */  lhz       r0, 0x0(r4)
/* 0AD014 800B0014 60000020 */  ori       r0, r0, 0x20
/* 0AD018 800B0018 B0040000 */  sth       r0, 0x0(r4)
lbl_800B001C:
/* 0AD01C 800B001C 88640002 */  lbz       r3, 0x2(r4)
/* 0AD020 800B0020 3803FF80 */  subi      r0, r3, 0x80
/* 0AD024 800B0024 98040002 */  stb       r0, 0x2(r4)
/* 0AD028 800B0028 88640003 */  lbz       r3, 0x3(r4)
/* 0AD02C 800B002C 3803FF80 */  subi      r0, r3, 0x80
/* 0AD030 800B0030 98040003 */  stb       r0, 0x3(r4)
/* 0AD034 800B0034 88640004 */  lbz       r3, 0x4(r4)
/* 0AD038 800B0038 3803FF80 */  subi      r0, r3, 0x80
/* 0AD03C 800B003C 98040004 */  stb       r0, 0x4(r4)
/* 0AD040 800B0040 88640005 */  lbz       r3, 0x5(r4)
/* 0AD044 800B0044 3803FF80 */  subi      r0, r3, 0x80
/* 0AD048 800B0048 98040005 */  stb       r0, 0x5(r4)
/* 0AD04C 800B004C 4E800020 */  blr

glabel SPEC2_MakeStatus
/* 0AD050 800B0050 80050000 */  lwz       r0, 0x0(r5)
/* 0AD054 800B0054 540084BE */  extrwi    r0, r0, 14, 2
/* 0AD058 800B0058 B0040000 */  sth       r0, 0x0(r4)
/* 0AD05C 800B005C 80050000 */  lwz       r0, 0x0(r5)
/* 0AD060 800B0060 5400C23E */  srwi      r0, r0, 8
/* 0AD064 800B0064 7C000774 */  extsb     r0, r0
/* 0AD068 800B0068 98040002 */  stb       r0, 0x2(r4)
/* 0AD06C 800B006C 80050000 */  lwz       r0, 0x0(r5)
/* 0AD070 800B0070 7C000774 */  extsb     r0, r0
/* 0AD074 800B0074 98040003 */  stb       r0, 0x3(r4)
/* 0AD078 800B0078 800D87DC */  lwz       r0, D_8018B75C@sda21(r0)
/* 0AD07C 800B007C 5400056E */  rlwinm    r0, r0, 0, 21, 23
/* 0AD080 800B0080 2C000400 */  cmpwi     r0, 0x400
/* 0AD084 800B0084 41820198 */  beq       lbl_800B021C
/* 0AD088 800B0088 40800034 */  bge       lbl_800B00BC
/* 0AD08C 800B008C 2C000200 */  cmpwi     r0, 0x200
/* 0AD090 800B0090 418200F8 */  beq       lbl_800B0188
/* 0AD094 800B0094 4080001C */  bge       lbl_800B00B0
/* 0AD098 800B0098 2C000100 */  cmpwi     r0, 0x100
/* 0AD09C 800B009C 41820098 */  beq       lbl_800B0134
/* 0AD0A0 800B00A0 408001BC */  bge       lbl_800B025C
/* 0AD0A4 800B00A4 2C000000 */  cmpwi     r0, 0x0
/* 0AD0A8 800B00A8 41820038 */  beq       lbl_800B00E0
/* 0AD0AC 800B00AC 480001B0 */  b         lbl_800B025C
lbl_800B00B0:
/* 0AD0B0 800B00B0 2C000300 */  cmpwi     r0, 0x300
/* 0AD0B4 800B00B4 41820124 */  beq       lbl_800B01D8
/* 0AD0B8 800B00B8 480001A4 */  b         lbl_800B025C
lbl_800B00BC:
/* 0AD0BC 800B00BC 2C000600 */  cmpwi     r0, 0x600
/* 0AD0C0 800B00C0 41820020 */  beq       lbl_800B00E0
/* 0AD0C4 800B00C4 40800010 */  bge       lbl_800B00D4
/* 0AD0C8 800B00C8 2C000500 */  cmpwi     r0, 0x500
/* 0AD0CC 800B00CC 41820014 */  beq       lbl_800B00E0
/* 0AD0D0 800B00D0 4800018C */  b         lbl_800B025C
lbl_800B00D4:
/* 0AD0D4 800B00D4 2C000700 */  cmpwi     r0, 0x700
/* 0AD0D8 800B00D8 41820008 */  beq       lbl_800B00E0
/* 0AD0DC 800B00DC 48000180 */  b         lbl_800B025C
lbl_800B00E0:
/* 0AD0E0 800B00E0 80050004 */  lwz       r0, 0x4(r5)
/* 0AD0E4 800B00E4 5400463E */  srwi      r0, r0, 24
/* 0AD0E8 800B00E8 7C000774 */  extsb     r0, r0
/* 0AD0EC 800B00EC 98040004 */  stb       r0, 0x4(r4)
/* 0AD0F0 800B00F0 80050004 */  lwz       r0, 0x4(r5)
/* 0AD0F4 800B00F4 5400843E */  srwi      r0, r0, 16
/* 0AD0F8 800B00F8 7C000774 */  extsb     r0, r0
/* 0AD0FC 800B00FC 98040005 */  stb       r0, 0x5(r4)
/* 0AD100 800B0100 80050004 */  lwz       r0, 0x4(r5)
/* 0AD104 800B0104 5400C636 */  rlwinm    r0, r0, 24, 24, 27
/* 0AD108 800B0108 98040006 */  stb       r0, 0x6(r4)
/* 0AD10C 800B010C 80050004 */  lwz       r0, 0x4(r5)
/* 0AD110 800B0110 5400E636 */  rlwinm    r0, r0, 28, 24, 27
/* 0AD114 800B0114 98040007 */  stb       r0, 0x7(r4)
/* 0AD118 800B0118 80050004 */  lwz       r0, 0x4(r5)
/* 0AD11C 800B011C 54000636 */  rlwinm    r0, r0, 0, 24, 27
/* 0AD120 800B0120 98040008 */  stb       r0, 0x8(r4)
/* 0AD124 800B0124 80050004 */  lwz       r0, 0x4(r5)
/* 0AD128 800B0128 54002636 */  clrlslwi  r0, r0, 28, 4
/* 0AD12C 800B012C 98040009 */  stb       r0, 0x9(r4)
/* 0AD130 800B0130 4800012C */  b         lbl_800B025C
lbl_800B0134:
/* 0AD134 800B0134 80050004 */  lwz       r0, 0x4(r5)
/* 0AD138 800B0138 54004636 */  rlwinm    r0, r0, 8, 24, 27
/* 0AD13C 800B013C 7C000774 */  extsb     r0, r0
/* 0AD140 800B0140 98040004 */  stb       r0, 0x4(r4)
/* 0AD144 800B0144 80050004 */  lwz       r0, 0x4(r5)
/* 0AD148 800B0148 54006636 */  rlwinm    r0, r0, 12, 24, 27
/* 0AD14C 800B014C 7C000774 */  extsb     r0, r0
/* 0AD150 800B0150 98040005 */  stb       r0, 0x5(r4)
/* 0AD154 800B0154 80050004 */  lwz       r0, 0x4(r5)
/* 0AD158 800B0158 5400863E */  extrwi    r0, r0, 8, 8
/* 0AD15C 800B015C 98040006 */  stb       r0, 0x6(r4)
/* 0AD160 800B0160 80050004 */  lwz       r0, 0x4(r5)
/* 0AD164 800B0164 5400C63E */  extrwi    r0, r0, 8, 16
/* 0AD168 800B0168 98040007 */  stb       r0, 0x7(r4)
/* 0AD16C 800B016C 80050004 */  lwz       r0, 0x4(r5)
/* 0AD170 800B0170 54000636 */  rlwinm    r0, r0, 0, 24, 27
/* 0AD174 800B0174 98040008 */  stb       r0, 0x8(r4)
/* 0AD178 800B0178 80050004 */  lwz       r0, 0x4(r5)
/* 0AD17C 800B017C 54002636 */  clrlslwi  r0, r0, 28, 4
/* 0AD180 800B0180 98040009 */  stb       r0, 0x9(r4)
/* 0AD184 800B0184 480000D8 */  b         lbl_800B025C
lbl_800B0188:
/* 0AD188 800B0188 80050004 */  lwz       r0, 0x4(r5)
/* 0AD18C 800B018C 54004636 */  rlwinm    r0, r0, 8, 24, 27
/* 0AD190 800B0190 7C000774 */  extsb     r0, r0
/* 0AD194 800B0194 98040004 */  stb       r0, 0x4(r4)
/* 0AD198 800B0198 80050004 */  lwz       r0, 0x4(r5)
/* 0AD19C 800B019C 54006636 */  rlwinm    r0, r0, 12, 24, 27
/* 0AD1A0 800B01A0 7C000774 */  extsb     r0, r0
/* 0AD1A4 800B01A4 98040005 */  stb       r0, 0x5(r4)
/* 0AD1A8 800B01A8 80050004 */  lwz       r0, 0x4(r5)
/* 0AD1AC 800B01AC 54008636 */  rlwinm    r0, r0, 16, 24, 27
/* 0AD1B0 800B01B0 98040006 */  stb       r0, 0x6(r4)
/* 0AD1B4 800B01B4 80050004 */  lwz       r0, 0x4(r5)
/* 0AD1B8 800B01B8 5400A636 */  rlwinm    r0, r0, 20, 24, 27
/* 0AD1BC 800B01BC 98040007 */  stb       r0, 0x7(r4)
/* 0AD1C0 800B01C0 80050004 */  lwz       r0, 0x4(r5)
/* 0AD1C4 800B01C4 5400C63E */  extrwi    r0, r0, 8, 16
/* 0AD1C8 800B01C8 98040008 */  stb       r0, 0x8(r4)
/* 0AD1CC 800B01CC 80050004 */  lwz       r0, 0x4(r5)
/* 0AD1D0 800B01D0 98040009 */  stb       r0, 0x9(r4)
/* 0AD1D4 800B01D4 48000088 */  b         lbl_800B025C
lbl_800B01D8:
/* 0AD1D8 800B01D8 80C50004 */  lwz       r6, 0x4(r5)
/* 0AD1DC 800B01DC 38000000 */  li        r0, 0x0
/* 0AD1E0 800B01E0 54C6463E */  srwi      r6, r6, 24
/* 0AD1E4 800B01E4 7CC60774 */  extsb     r6, r6
/* 0AD1E8 800B01E8 98C40004 */  stb       r6, 0x4(r4)
/* 0AD1EC 800B01EC 80C50004 */  lwz       r6, 0x4(r5)
/* 0AD1F0 800B01F0 54C6843E */  srwi      r6, r6, 16
/* 0AD1F4 800B01F4 7CC60774 */  extsb     r6, r6
/* 0AD1F8 800B01F8 98C40005 */  stb       r6, 0x5(r4)
/* 0AD1FC 800B01FC 80C50004 */  lwz       r6, 0x4(r5)
/* 0AD200 800B0200 54C6C63E */  extrwi    r6, r6, 8, 16
/* 0AD204 800B0204 98C40006 */  stb       r6, 0x6(r4)
/* 0AD208 800B0208 80A50004 */  lwz       r5, 0x4(r5)
/* 0AD20C 800B020C 98A40007 */  stb       r5, 0x7(r4)
/* 0AD210 800B0210 98040008 */  stb       r0, 0x8(r4)
/* 0AD214 800B0214 98040009 */  stb       r0, 0x9(r4)
/* 0AD218 800B0218 48000044 */  b         lbl_800B025C
lbl_800B021C:
/* 0AD21C 800B021C 80C50004 */  lwz       r6, 0x4(r5)
/* 0AD220 800B0220 38000000 */  li        r0, 0x0
/* 0AD224 800B0224 54C6463E */  srwi      r6, r6, 24
/* 0AD228 800B0228 7CC60774 */  extsb     r6, r6
/* 0AD22C 800B022C 98C40004 */  stb       r6, 0x4(r4)
/* 0AD230 800B0230 80C50004 */  lwz       r6, 0x4(r5)
/* 0AD234 800B0234 54C6843E */  srwi      r6, r6, 16
/* 0AD238 800B0238 7CC60774 */  extsb     r6, r6
/* 0AD23C 800B023C 98C40005 */  stb       r6, 0x5(r4)
/* 0AD240 800B0240 98040006 */  stb       r0, 0x6(r4)
/* 0AD244 800B0244 98040007 */  stb       r0, 0x7(r4)
/* 0AD248 800B0248 80050004 */  lwz       r0, 0x4(r5)
/* 0AD24C 800B024C 5400C63E */  extrwi    r0, r0, 8, 16
/* 0AD250 800B0250 98040008 */  stb       r0, 0x8(r4)
/* 0AD254 800B0254 80050004 */  lwz       r0, 0x4(r5)
/* 0AD258 800B0258 98040009 */  stb       r0, 0x9(r4)
lbl_800B025C:
/* 0AD25C 800B025C 88C40002 */  lbz       r6, 0x2(r4)
/* 0AD260 800B0260 3CA08019 */  lis       r5, Origin@ha
/* 0AD264 800B0264 1C63000C */  mulli     r3, r3, 0xc
/* 0AD268 800B0268 3806FF80 */  subi      r0, r6, 0x80
/* 0AD26C 800B026C 98040002 */  stb       r0, 0x2(r4)
/* 0AD270 800B0270 38058720 */  addi      r0, r5, Origin@l
/* 0AD274 800B0274 7C601A14 */  add       r3, r0, r3
/* 0AD278 800B0278 88A40003 */  lbz       r5, 0x3(r4)
/* 0AD27C 800B027C 3805FF80 */  subi      r0, r5, 0x80
/* 0AD280 800B0280 98040003 */  stb       r0, 0x3(r4)
/* 0AD284 800B0284 88A40004 */  lbz       r5, 0x4(r4)
/* 0AD288 800B0288 3805FF80 */  subi      r0, r5, 0x80
/* 0AD28C 800B028C 98040004 */  stb       r0, 0x4(r4)
/* 0AD290 800B0290 88A40005 */  lbz       r5, 0x5(r4)
/* 0AD294 800B0294 3805FF80 */  subi      r0, r5, 0x80
/* 0AD298 800B0298 98040005 */  stb       r0, 0x5(r4)
/* 0AD29C 800B029C 88E30002 */  lbz       r7, 0x2(r3)
/* 0AD2A0 800B02A0 88C40002 */  lbz       r6, 0x2(r4)
/* 0AD2A4 800B02A4 7CE00775 */  extsb.    r0, r7
/* 0AD2A8 800B02A8 40810024 */  ble       lbl_800B02CC
/* 0AD2AC 800B02AC 7CE50774 */  extsb     r5, r7
/* 0AD2B0 800B02B0 3805FF80 */  subi      r0, r5, 0x80
/* 0AD2B4 800B02B4 7C050774 */  extsb     r5, r0
/* 0AD2B8 800B02B8 7CC00774 */  extsb     r0, r6
/* 0AD2BC 800B02BC 7C002800 */  cmpw      r0, r5
/* 0AD2C0 800B02C0 40800030 */  bge       lbl_800B02F0
/* 0AD2C4 800B02C4 7CA62B78 */  mr        r6, r5
/* 0AD2C8 800B02C8 48000028 */  b         lbl_800B02F0
lbl_800B02CC:
/* 0AD2CC 800B02CC 7CE00775 */  extsb.    r0, r7
/* 0AD2D0 800B02D0 40800020 */  bge       lbl_800B02F0
/* 0AD2D4 800B02D4 7CE50774 */  extsb     r5, r7
/* 0AD2D8 800B02D8 3805007F */  addi      r0, r5, 0x7f
/* 0AD2DC 800B02DC 7C050774 */  extsb     r5, r0
/* 0AD2E0 800B02E0 7CC00774 */  extsb     r0, r6
/* 0AD2E4 800B02E4 7C050000 */  cmpw      r5, r0
/* 0AD2E8 800B02E8 40800008 */  bge       lbl_800B02F0
/* 0AD2EC 800B02EC 7CA62B78 */  mr        r6, r5
lbl_800B02F0:
/* 0AD2F0 800B02F0 7CC73050 */  subf      r6, r7, r6
/* 0AD2F4 800B02F4 98C40002 */  stb       r6, 0x2(r4)
/* 0AD2F8 800B02F8 88E30003 */  lbz       r7, 0x3(r3)
/* 0AD2FC 800B02FC 88C40003 */  lbz       r6, 0x3(r4)
/* 0AD300 800B0300 7CE00775 */  extsb.    r0, r7
/* 0AD304 800B0304 40810024 */  ble       lbl_800B0328
/* 0AD308 800B0308 7CE50774 */  extsb     r5, r7
/* 0AD30C 800B030C 3805FF80 */  subi      r0, r5, 0x80
/* 0AD310 800B0310 7C050774 */  extsb     r5, r0
/* 0AD314 800B0314 7CC00774 */  extsb     r0, r6
/* 0AD318 800B0318 7C002800 */  cmpw      r0, r5
/* 0AD31C 800B031C 40800030 */  bge       lbl_800B034C
/* 0AD320 800B0320 7CA62B78 */  mr        r6, r5
/* 0AD324 800B0324 48000028 */  b         lbl_800B034C
lbl_800B0328:
/* 0AD328 800B0328 7CE00775 */  extsb.    r0, r7
/* 0AD32C 800B032C 40800020 */  bge       lbl_800B034C
/* 0AD330 800B0330 7CE50774 */  extsb     r5, r7
/* 0AD334 800B0334 3805007F */  addi      r0, r5, 0x7f
/* 0AD338 800B0338 7C050774 */  extsb     r5, r0
/* 0AD33C 800B033C 7CC00774 */  extsb     r0, r6
/* 0AD340 800B0340 7C050000 */  cmpw      r5, r0
/* 0AD344 800B0344 40800008 */  bge       lbl_800B034C
/* 0AD348 800B0348 7CA62B78 */  mr        r6, r5
lbl_800B034C:
/* 0AD34C 800B034C 7CC73050 */  subf      r6, r7, r6
/* 0AD350 800B0350 98C40003 */  stb       r6, 0x3(r4)
/* 0AD354 800B0354 88E30004 */  lbz       r7, 0x4(r3)
/* 0AD358 800B0358 88C40004 */  lbz       r6, 0x4(r4)
/* 0AD35C 800B035C 7CE00775 */  extsb.    r0, r7
/* 0AD360 800B0360 40810024 */  ble       lbl_800B0384
/* 0AD364 800B0364 7CE50774 */  extsb     r5, r7
/* 0AD368 800B0368 3805FF80 */  subi      r0, r5, 0x80
/* 0AD36C 800B036C 7C050774 */  extsb     r5, r0
/* 0AD370 800B0370 7CC00774 */  extsb     r0, r6
/* 0AD374 800B0374 7C002800 */  cmpw      r0, r5
/* 0AD378 800B0378 40800030 */  bge       lbl_800B03A8
/* 0AD37C 800B037C 7CA62B78 */  mr        r6, r5
/* 0AD380 800B0380 48000028 */  b         lbl_800B03A8
lbl_800B0384:
/* 0AD384 800B0384 7CE00775 */  extsb.    r0, r7
/* 0AD388 800B0388 40800020 */  bge       lbl_800B03A8
/* 0AD38C 800B038C 7CE50774 */  extsb     r5, r7
/* 0AD390 800B0390 3805007F */  addi      r0, r5, 0x7f
/* 0AD394 800B0394 7C050774 */  extsb     r5, r0
/* 0AD398 800B0398 7CC00774 */  extsb     r0, r6
/* 0AD39C 800B039C 7C050000 */  cmpw      r5, r0
/* 0AD3A0 800B03A0 40800008 */  bge       lbl_800B03A8
/* 0AD3A4 800B03A4 7CA62B78 */  mr        r6, r5
lbl_800B03A8:
/* 0AD3A8 800B03A8 7CC73050 */  subf      r6, r7, r6
/* 0AD3AC 800B03AC 98C40004 */  stb       r6, 0x4(r4)
/* 0AD3B0 800B03B0 88E30005 */  lbz       r7, 0x5(r3)
/* 0AD3B4 800B03B4 88C40005 */  lbz       r6, 0x5(r4)
/* 0AD3B8 800B03B8 7CE00775 */  extsb.    r0, r7
/* 0AD3BC 800B03BC 40810024 */  ble       lbl_800B03E0
/* 0AD3C0 800B03C0 7CE50774 */  extsb     r5, r7
/* 0AD3C4 800B03C4 3805FF80 */  subi      r0, r5, 0x80
/* 0AD3C8 800B03C8 7C050774 */  extsb     r5, r0
/* 0AD3CC 800B03CC 7CC00774 */  extsb     r0, r6
/* 0AD3D0 800B03D0 7C002800 */  cmpw      r0, r5
/* 0AD3D4 800B03D4 40800030 */  bge       lbl_800B0404
/* 0AD3D8 800B03D8 7CA62B78 */  mr        r6, r5
/* 0AD3DC 800B03DC 48000028 */  b         lbl_800B0404
lbl_800B03E0:
/* 0AD3E0 800B03E0 7CE00775 */  extsb.    r0, r7
/* 0AD3E4 800B03E4 40800020 */  bge       lbl_800B0404
/* 0AD3E8 800B03E8 7CE50774 */  extsb     r5, r7
/* 0AD3EC 800B03EC 3805007F */  addi      r0, r5, 0x7f
/* 0AD3F0 800B03F0 7C050774 */  extsb     r5, r0
/* 0AD3F4 800B03F4 7CC00774 */  extsb     r0, r6
/* 0AD3F8 800B03F8 7C050000 */  cmpw      r5, r0
/* 0AD3FC 800B03FC 40800008 */  bge       lbl_800B0404
/* 0AD400 800B0400 7CA62B78 */  mr        r6, r5
lbl_800B0404:
/* 0AD404 800B0404 7CC73050 */  subf      r6, r7, r6
/* 0AD408 800B0408 98C40005 */  stb       r6, 0x5(r4)
/* 0AD40C 800B040C 88030006 */  lbz       r0, 0x6(r3)
/* 0AD410 800B0410 88A40006 */  lbz       r5, 0x6(r4)
/* 0AD414 800B0414 7C050040 */  cmplw     r5, r0
/* 0AD418 800B0418 40800008 */  bge       lbl_800B0420
/* 0AD41C 800B041C 7C050378 */  mr        r5, r0
lbl_800B0420:
/* 0AD420 800B0420 7CA02850 */  subf      r5, r0, r5
/* 0AD424 800B0424 98A40006 */  stb       r5, 0x6(r4)
/* 0AD428 800B0428 88030007 */  lbz       r0, 0x7(r3)
/* 0AD42C 800B042C 88640007 */  lbz       r3, 0x7(r4)
/* 0AD430 800B0430 7C030040 */  cmplw     r3, r0
/* 0AD434 800B0434 40800008 */  bge       lbl_800B043C
/* 0AD438 800B0438 7C030378 */  mr        r3, r0
lbl_800B043C:
/* 0AD43C 800B043C 7C601850 */  subf      r3, r0, r3
/* 0AD440 800B0440 98640007 */  stb       r3, 0x7(r4)
/* 0AD444 800B0444 4E800020 */  blr

OnReset:
/* 0AD448 800B0448 7C0802A6 */  mflr      r0
/* 0AD44C 800B044C 90010004 */  stw       r0, 0x4(r1)
/* 0AD450 800B0450 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0AD454 800B0454 93E10024 */  stw       r31, 0x24(r1)
/* 0AD458 800B0458 93C10020 */  stw       r30, 0x20(r1)
/* 0AD45C 800B045C 3BC30000 */  addi      r30, r3, 0x0
/* 0AD460 800B0460 800D8C5C */  lwz       r0, D_8018BBDC@sda21(r0)
/* 0AD464 800B0464 28000000 */  cmplwi    r0, 0x0
/* 0AD468 800B0468 4182000C */  beq       lbl_800B0474
/* 0AD46C 800B046C 38600000 */  li        r3, 0x0
/* 0AD470 800B0470 480001CD */  bl        PADSetSamplingCallback
lbl_800B0474:
/* 0AD474 800B0474 2C1E0000 */  cmpwi     r30, 0x0
/* 0AD478 800B0478 40820140 */  bne       lbl_800B05B8
/* 0AD47C 800B047C 800D8C48 */  lwz       r0, D_8018BBC8@sda21(r0)
/* 0AD480 800B0480 3BC00000 */  li        r30, 0x0
/* 0AD484 800B0484 387E0000 */  addi      r3, r30, 0x0
/* 0AD488 800B0488 28000000 */  cmplwi    r0, 0x0
/* 0AD48C 800B048C 40820014 */  bne       lbl_800B04A0
/* 0AD490 800B0490 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0AD494 800B0494 2C000020 */  cmpwi     r0, 0x20
/* 0AD498 800B0498 40820008 */  bne       lbl_800B04A0
/* 0AD49C 800B049C 38600001 */  li        r3, 0x1
lbl_800B04A0:
/* 0AD4A0 800B04A0 2C030000 */  cmpwi     r3, 0x0
/* 0AD4A4 800B04A4 41820014 */  beq       lbl_800B04B8
/* 0AD4A8 800B04A8 4BFF3045 */  bl        SIBusy
/* 0AD4AC 800B04AC 2C030000 */  cmpwi     r3, 0x0
/* 0AD4B0 800B04B0 40820008 */  bne       lbl_800B04B8
/* 0AD4B4 800B04B4 3BC00001 */  li        r30, 0x1
lbl_800B04B8:
/* 0AD4B8 800B04B8 800D8C60 */  lwz       r0, D_8018BBE0@sda21(r0)
/* 0AD4BC 800B04BC 2C000000 */  cmpwi     r0, 0x0
/* 0AD4C0 800B04C0 408200F0 */  bne       lbl_800B05B0
/* 0AD4C4 800B04C4 2C1E0000 */  cmpwi     r30, 0x0
/* 0AD4C8 800B04C8 418200E8 */  beq       lbl_800B05B0
/* 0AD4CC 800B04CC 3FC0F000 */  lis       r30, 0xf000
/* 0AD4D0 800B04D0 4BFEDD79 */  bl        OSDisableInterrupts
/* 0AD4D4 800B04D4 80CD8C58 */  lwz       r6, D_8018BBD8@sda21(r0)
/* 0AD4D8 800B04D8 38E00000 */  li        r7, 0x0
/* 0AD4DC 800B04DC 80AD8C50 */  lwz       r5, D_8018BBD0@sda21(r0)
/* 0AD4E0 800B04E0 3C808000 */  lis       r4, 0x8000
/* 0AD4E4 800B04E4 800D8C54 */  lwz       r0, D_8018BBD4@sda21(r0)
/* 0AD4E8 800B04E8 7FDE3378 */  or        r30, r30, r6
/* 0AD4EC 800B04EC 80CD8C48 */  lwz       r6, D_8018BBC8@sda21(r0)
/* 0AD4F0 800B04F0 7CA50378 */  or        r5, r5, r0
/* 0AD4F4 800B04F4 880430E3 */  lbz       r0, 0x30e3(r4)
/* 0AD4F8 800B04F8 7FDE2878 */  andc      r30, r30, r5
/* 0AD4FC 800B04FC 80AD8C44 */  lwz       r5, D_8018BBC4@sda21(r0)
/* 0AD500 800B0500 7CC4F378 */  or        r4, r6, r30
/* 0AD504 800B0504 90ED8C58 */  stw       r7, D_8018BBD8@sda21(r0)
/* 0AD508 800B0508 54000673 */  rlwinm.   r0, r0, 0, 25, 25
/* 0AD50C 800B050C 908D8C48 */  stw       r4, D_8018BBC8@sda21(r0)
/* 0AD510 800B0510 7CA4F078 */  andc      r4, r5, r30
/* 0AD514 800B0514 3BE30000 */  addi      r31, r3, 0x0
/* 0AD518 800B0518 80CD8C48 */  lwz       r6, D_8018BBC8@sda21(r0)
/* 0AD51C 800B051C 908D8C44 */  stw       r4, D_8018BBC4@sda21(r0)
/* 0AD520 800B0520 7CC32838 */  and       r3, r6, r5
/* 0AD524 800B0524 40820010 */  bne       lbl_800B0534
/* 0AD528 800B0528 800D8C4C */  lwz       r0, D_8018BBCC@sda21(r0)
/* 0AD52C 800B052C 7C00F378 */  or        r0, r0, r30
/* 0AD530 800B0530 900D8C4C */  stw       r0, D_8018BBCC@sda21(r0)
lbl_800B0534:
/* 0AD534 800B0534 4BFF3D15 */  bl        SIDisablePolling
/* 0AD538 800B0538 800D87D4 */  lwz       r0, D_8018B754@sda21(r0)
/* 0AD53C 800B053C 2C000020 */  cmpwi     r0, 0x20
/* 0AD540 800B0540 40820058 */  bne       lbl_800B0598
/* 0AD544 800B0544 80AD8C48 */  lwz       r5, D_8018BBC8@sda21(r0)
/* 0AD548 800B0548 7CA00034 */  cntlzw    r0, r5
/* 0AD54C 800B054C 900D87D4 */  stw       r0, D_8018B754@sda21(r0)
/* 0AD550 800B0550 808D87D4 */  lwz       r4, D_8018B754@sda21(r0)
/* 0AD554 800B0554 2C040020 */  cmpwi     r4, 0x20
/* 0AD558 800B0558 41820040 */  beq       lbl_800B0598
/* 0AD55C 800B055C 3C008000 */  lis       r0, 0x8000
/* 0AD560 800B0560 7C002430 */  srw       r0, r0, r4
/* 0AD564 800B0564 7CA00078 */  andc      r0, r5, r0
/* 0AD568 800B0568 1C84000C */  mulli     r4, r4, 0xc
/* 0AD56C 800B056C 900D8C48 */  stw       r0, D_8018BBC8@sda21(r0)
/* 0AD570 800B0570 3C608019 */  lis       r3, Origin@ha
/* 0AD574 800B0574 38038720 */  addi      r0, r3, Origin@l
/* 0AD578 800B0578 7C602214 */  add       r3, r0, r4
/* 0AD57C 800B057C 38800000 */  li        r4, 0x0
/* 0AD580 800B0580 38A0000C */  li        r5, 0xc
/* 0AD584 800B0584 4BF54D9D */  bl        memset
/* 0AD588 800B0588 3C80800B */  lis       r4, PADTypeAndStatusCallback@ha
/* 0AD58C 800B058C 806D87D4 */  lwz       r3, D_8018B754@sda21(r0)
/* 0AD590 800B0590 3884F03C */  addi      r4, r4, PADTypeAndStatusCallback@l
/* 0AD594 800B0594 4BFF450D */  bl        SIGetTypeAsync
lbl_800B0598:
/* 0AD598 800B0598 7FE3FB78 */  mr        r3, r31
/* 0AD59C 800B059C 4BFEDCD5 */  bl        OSRestoreInterrupts
/* 0AD5A0 800B05A0 38000001 */  li        r0, 0x1
/* 0AD5A4 800B05A4 900D8C60 */  stw       r0, D_8018BBE0@sda21(r0)
/* 0AD5A8 800B05A8 38600000 */  li        r3, 0x0
/* 0AD5AC 800B05AC 48000018 */  b         lbl_800B05C4
lbl_800B05B0:
/* 0AD5B0 800B05B0 7FC3F378 */  mr        r3, r30
/* 0AD5B4 800B05B4 48000010 */  b         lbl_800B05C4
lbl_800B05B8:
/* 0AD5B8 800B05B8 38000000 */  li        r0, 0x0
/* 0AD5BC 800B05BC 900D8C60 */  stw       r0, D_8018BBE0@sda21(r0)
/* 0AD5C0 800B05C0 38600001 */  li        r3, 0x1
lbl_800B05C4:
/* 0AD5C4 800B05C4 8001002C */  lwz       r0, 0x2c(r1)
/* 0AD5C8 800B05C8 83E10024 */  lwz       r31, 0x24(r1)
/* 0AD5CC 800B05CC 83C10020 */  lwz       r30, 0x20(r1)
/* 0AD5D0 800B05D0 38210028 */  addi      r1, r1, 0x28
/* 0AD5D4 800B05D4 7C0803A6 */  mtlr      r0
/* 0AD5D8 800B05D8 4E800020 */  blr

glabel SamplingHandler
/* 0AD5DC 800B05DC 7C0802A6 */  mflr      r0
/* 0AD5E0 800B05E0 90010004 */  stw       r0, 0x4(r1)
/* 0AD5E4 800B05E4 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0AD5E8 800B05E8 93E102DC */  stw       r31, 0x2dc(r1)
/* 0AD5EC 800B05EC 3BE40000 */  addi      r31, r4, 0x0
/* 0AD5F0 800B05F0 800D8C5C */  lwz       r0, D_8018BBDC@sda21(r0)
/* 0AD5F4 800B05F4 28000000 */  cmplwi    r0, 0x0
/* 0AD5F8 800B05F8 41820030 */  beq       lbl_800B0628
/* 0AD5FC 800B05FC 38610010 */  addi      r3, r1, 0x10
/* 0AD600 800B0600 4BFED0F1 */  bl        OSClearContext
/* 0AD604 800B0604 38610010 */  addi      r3, r1, 0x10
/* 0AD608 800B0608 4BFECF21 */  bl        OSSetCurrentContext
/* 0AD60C 800B060C 818D8C5C */  lwz       r12, D_8018BBDC@sda21(r0)
/* 0AD610 800B0610 7D8803A6 */  mtlr      r12
/* 0AD614 800B0614 4E800021 */  blrl
/* 0AD618 800B0618 38610010 */  addi      r3, r1, 0x10
/* 0AD61C 800B061C 4BFED0D5 */  bl        OSClearContext
/* 0AD620 800B0620 7FE3FB78 */  mr        r3, r31
/* 0AD624 800B0624 4BFECF05 */  bl        OSSetCurrentContext
lbl_800B0628:
/* 0AD628 800B0628 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0AD62C 800B062C 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0AD630 800B0630 382102E0 */  addi      r1, r1, 0x2e0
/* 0AD634 800B0634 7C0803A6 */  mtlr      r0
/* 0AD638 800B0638 4E800020 */  blr

glabel PADSetSamplingCallback
/* 0AD63C 800B063C 7C0802A6 */  mflr      r0
/* 0AD640 800B0640 28030000 */  cmplwi    r3, 0x0
/* 0AD644 800B0644 90010004 */  stw       r0, 0x4(r1)
/* 0AD648 800B0648 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AD64C 800B064C 93E10014 */  stw       r31, 0x14(r1)
/* 0AD650 800B0650 83ED8C5C */  lwz       r31, D_8018BBDC@sda21(r0)
/* 0AD654 800B0654 906D8C5C */  stw       r3, D_8018BBDC@sda21(r0)
/* 0AD658 800B0658 41820014 */  beq       lbl_800B066C
/* 0AD65C 800B065C 3C60800B */  lis       r3, SamplingHandler@ha
/* 0AD660 800B0660 386305DC */  addi      r3, r3, SamplingHandler@l
/* 0AD664 800B0664 4BFF35BD */  bl        SIRegisterPollingHandler
/* 0AD668 800B0668 48000010 */  b         lbl_800B0678
lbl_800B066C:
/* 0AD66C 800B066C 3C60800B */  lis       r3, SamplingHandler@ha
/* 0AD670 800B0670 386305DC */  addi      r3, r3, SamplingHandler@l
/* 0AD674 800B0674 4BFF3679 */  bl        SIUnregisterPollingHandler
lbl_800B0678:
/* 0AD678 800B0678 7FE3FB78 */  mr        r3, r31
/* 0AD67C 800B067C 8001001C */  lwz       r0, 0x1c(r1)
/* 0AD680 800B0680 83E10014 */  lwz       r31, 0x14(r1)
/* 0AD684 800B0684 38210018 */  addi      r1, r1, 0x18
/* 0AD688 800B0688 7C0803A6 */  mtlr      r0
/* 0AD68C 800B068C 4E800020 */  blr

glabel __PADDisableRecalibration
/* 0AD690 800B0690 7C0802A6 */  mflr      r0
/* 0AD694 800B0694 90010004 */  stw       r0, 0x4(r1)
/* 0AD698 800B0698 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AD69C 800B069C 93E10014 */  stw       r31, 0x14(r1)
/* 0AD6A0 800B06A0 93C10010 */  stw       r30, 0x10(r1)
/* 0AD6A4 800B06A4 7C7E1B78 */  mr        r30, r3
/* 0AD6A8 800B06A8 4BFEDBA1 */  bl        OSDisableInterrupts
/* 0AD6AC 800B06AC 3C808000 */  lis       r4, 0x8000
/* 0AD6B0 800B06B0 880430E3 */  lbz       r0, 0x30e3(r4)
/* 0AD6B4 800B06B4 54000673 */  rlwinm.   r0, r0, 0, 25, 25
/* 0AD6B8 800B06B8 4182000C */  beq       lbl_800B06C4
/* 0AD6BC 800B06BC 3BE00001 */  li        r31, 0x1
/* 0AD6C0 800B06C0 48000008 */  b         lbl_800B06C8
lbl_800B06C4:
/* 0AD6C4 800B06C4 3BE00000 */  li        r31, 0x0
lbl_800B06C8:
/* 0AD6C8 800B06C8 3C808000 */  lis       r4, 0x8000
/* 0AD6CC 800B06CC 880430E3 */  lbz       r0, 0x30e3(r4)
/* 0AD6D0 800B06D0 700000BF */  andi.     r0, r0, 0xbf
/* 0AD6D4 800B06D4 2C1E0000 */  cmpwi     r30, 0x0
/* 0AD6D8 800B06D8 980430E3 */  stb       r0, 0x30e3(r4)
/* 0AD6DC 800B06DC 41820010 */  beq       lbl_800B06EC
/* 0AD6E0 800B06E0 880430E3 */  lbz       r0, 0x30e3(r4)
/* 0AD6E4 800B06E4 60000040 */  ori       r0, r0, 0x40
/* 0AD6E8 800B06E8 980430E3 */  stb       r0, 0x30e3(r4)
lbl_800B06EC:
/* 0AD6EC 800B06EC 4BFEDB85 */  bl        OSRestoreInterrupts
/* 0AD6F0 800B06F0 7FE3FB78 */  mr        r3, r31
/* 0AD6F4 800B06F4 8001001C */  lwz       r0, 0x1c(r1)
/* 0AD6F8 800B06F8 83E10014 */  lwz       r31, 0x14(r1)
/* 0AD6FC 800B06FC 83C10010 */  lwz       r30, 0x10(r1)
/* 0AD700 800B0700 38210018 */  addi      r1, r1, 0x18
/* 0AD704 800B0704 7C0803A6 */  mtlr      r0
/* 0AD708 800B0708 4E800020 */  blr

# 0x800F3608 - 0x800F3660
.section .data, "wa"

.balign 8

glabel D_800F3608
	.string "<< Dolphin SDK - PAD\trelease build: Sep  5 2002 05:34:02 (0x2301) >>"

glabel gap_05_800F364D_data
.hidden gap_05_800F364D_data
	.byte 0x00, 0x00, 0x00

glabel D_800F3650
	.long OnReset
	.long 0x0000007F
	.long 0x00000000
	.long 0x00000000

# 0x80188710 - 0x80188760
.section .bss, "wa"

glabel Type
	.skip 0x10

glabel Origin
	.skip 0x30

glabel CmdProbeDevice
	.skip 0x10

# 0x8018B750 - 0x8018B770
.section .sdata, "wa"

glabel D_8018B750
	.long D_800F3608

glabel D_8018B754
	.long 0x00000020

glabel D_8018B758
	.long 0xF0000000

glabel D_8018B75C
	.long 0x00000300

glabel D_8018B760
	.long 0x00000005

glabel D_8018B764
	.long SPEC2_MakeStatus

glabel D_8018B768
	.long 0x41000000

glabel D_8018B76C
	.long 0x42000000

# 0x8018BBC0 - 0x8018BBE8
.section .sbss, "wa"

glabel D_8018BBC0
	.skip 0x4

glabel D_8018BBC4
	.skip 0x4

glabel D_8018BBC8
	.skip 0x4

glabel D_8018BBCC
	.skip 0x4

glabel D_8018BBD0
	.skip 0x4

glabel D_8018BBD4
	.skip 0x4

glabel D_8018BBD8
	.skip 0x4

glabel D_8018BBDC
	.skip 0x4

glabel D_8018BBE0
	.skip 0x4

glabel __PADSpec
	.skip 0x4
