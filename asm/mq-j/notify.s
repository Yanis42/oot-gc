# notify.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CA344 - 0x800CA41C

glabel fn_800CA344
/* 0C7344 800CA344 7C0802A6 */  mflr      r0
/* 0C7348 800CA348 90010004 */  stw       r0, 0x4(r1)
/* 0C734C 800CA34C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0C7350 800CA350 93E1001C */  stw       r31, 0x1c(r1)
/* 0C7354 800CA354 3881000C */  addi      r4, r1, 0xc
/* 0C7358 800CA358 93C10018 */  stw       r30, 0x18(r1)
/* 0C735C 800CA35C 3BC30000 */  addi      r30, r3, 0x0
/* 0C7360 800CA360 38610008 */  addi      r3, r1, 0x8
/* 0C7364 800CA364 4BFFDEB5 */  bl        fn_800C8218
/* 0C7368 800CA368 7C7F1B79 */  mr.       r31, r3
/* 0C736C 800CA36C 40820094 */  bne       lbl_800CA400
/* 0C7370 800CA370 80A1000C */  lwz       r5, 0xc(r1)
/* 0C7374 800CA374 8065000C */  lwz       r3, 0xc(r5)
/* 0C7378 800CA378 28030880 */  cmplwi    r3, 0x880
/* 0C737C 800CA37C 4180000C */  blt       lbl_800CA388
/* 0C7380 800CA380 38800301 */  li        r4, 0x301
/* 0C7384 800CA384 48000024 */  b         lbl_800CA3A8
lbl_800CA388:
/* 0C7388 800CA388 38030001 */  addi      r0, r3, 0x1
/* 0C738C 800CA38C 7C651A14 */  add       r3, r5, r3
/* 0C7390 800CA390 9005000C */  stw       r0, 0xc(r5)
/* 0C7394 800CA394 38800000 */  li        r4, 0x0
/* 0C7398 800CA398 9BC30010 */  stb       r30, 0x10(r3)
/* 0C739C 800CA39C 80650008 */  lwz       r3, 0x8(r5)
/* 0C73A0 800CA3A0 38030001 */  addi      r0, r3, 0x1
/* 0C73A4 800CA3A4 90050008 */  stw       r0, 0x8(r5)
lbl_800CA3A8:
/* 0C73A8 800CA3A8 2C040000 */  cmpwi     r4, 0x0
/* 0C73AC 800CA3AC 40820024 */  bne       lbl_800CA3D0
/* 0C73B0 800CA3B0 57C0063E */  clrlwi    r0, r30, 24
/* 0C73B4 800CA3B4 28000090 */  cmplwi    r0, 0x90
/* 0C73B8 800CA3B8 40820010 */  bne       lbl_800CA3C8
/* 0C73BC 800CA3BC 8061000C */  lwz       r3, 0xc(r1)
/* 0C73C0 800CA3C0 48000E91 */  bl        fn_800CB250
/* 0C73C4 800CA3C4 4800000C */  b         lbl_800CA3D0
lbl_800CA3C8:
/* 0C73C8 800CA3C8 8061000C */  lwz       r3, 0xc(r1)
/* 0C73CC 800CA3CC 48000F15 */  bl        fn_800CB2E0
lbl_800CA3D0:
/* 0C73D0 800CA3D0 8061000C */  lwz       r3, 0xc(r1)
/* 0C73D4 800CA3D4 38810010 */  addi      r4, r1, 0x10
/* 0C73D8 800CA3D8 38A00002 */  li        r5, 0x2
/* 0C73DC 800CA3DC 38C00003 */  li        r6, 0x3
/* 0C73E0 800CA3E0 38E00001 */  li        r7, 0x1
/* 0C73E4 800CA3E4 4BFFFDA5 */  bl        fn_800CA188
/* 0C73E8 800CA3E8 7C7F1B79 */  mr.       r31, r3
/* 0C73EC 800CA3EC 4082000C */  bne       lbl_800CA3F8
/* 0C73F0 800CA3F0 80610010 */  lwz       r3, 0x10(r1)
/* 0C73F4 800CA3F4 4BFFDEED */  bl        fn_800C82E0
lbl_800CA3F8:
/* 0C73F8 800CA3F8 80610008 */  lwz       r3, 0x8(r1)
/* 0C73FC 800CA3FC 4BFFDEE5 */  bl        fn_800C82E0
lbl_800CA400:
/* 0C7400 800CA400 7FE3FB78 */  mr        r3, r31
/* 0C7404 800CA404 83E1001C */  lwz       r31, 0x1c(r1)
/* 0C7408 800CA408 83C10018 */  lwz       r30, 0x18(r1)
/* 0C740C 800CA40C 38210020 */  addi      r1, r1, 0x20
/* 0C7410 800CA410 80010004 */  lwz       r0, 0x4(r1)
/* 0C7414 800CA414 7C0803A6 */  mtlr      r0
/* 0C7418 800CA418 4E800020 */  blr
