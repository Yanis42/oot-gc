# __va_arg.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CC370 - 0x800CC464

glabel __va_arg
/* 0C9370 800CC370 5480063E */  clrlwi    r0, r4, 24
/* 0C9374 800CC374 88C30000 */  lbz       r6, 0x0(r3)
/* 0C9378 800CC378 28000004 */  cmplwi    r0, 0x4
/* 0C937C 800CC37C 38E30000 */  addi      r7, r3, 0x0
/* 0C9380 800CC380 7CC60774 */  extsb     r6, r6
/* 0C9384 800CC384 38A00008 */  li        r5, 0x8
/* 0C9388 800CC388 39000004 */  li        r8, 0x4
/* 0C938C 800CC38C 39200001 */  li        r9, 0x1
/* 0C9390 800CC390 39400000 */  li        r10, 0x0
/* 0C9394 800CC394 39600000 */  li        r11, 0x0
/* 0C9398 800CC398 39800004 */  li        r12, 0x4
/* 0C939C 800CC39C 40820020 */  bne       lbl_800CC3BC
/* 0C93A0 800CC3A0 80830004 */  lwz       r4, 0x4(r3)
/* 0C93A4 800CC3A4 3804000F */  addi      r0, r4, 0xf
/* 0C93A8 800CC3A8 54040036 */  clrrwi    r4, r0, 4
/* 0C93AC 800CC3AC 38040010 */  addi      r0, r4, 0x10
/* 0C93B0 800CC3B0 90030004 */  stw       r0, 0x4(r3)
/* 0C93B4 800CC3B4 7C832378 */  mr        r3, r4
/* 0C93B8 800CC3B8 4E800020 */  blr
lbl_800CC3BC:
/* 0C93BC 800CC3BC 28000003 */  cmplwi    r0, 0x3
/* 0C93C0 800CC3C0 4082001C */  bne       lbl_800CC3DC
/* 0C93C4 800CC3C4 88C30001 */  lbz       r6, 0x1(r3)
/* 0C93C8 800CC3C8 38E30001 */  addi      r7, r3, 0x1
/* 0C93CC 800CC3CC 39000008 */  li        r8, 0x8
/* 0C93D0 800CC3D0 7CC60774 */  extsb     r6, r6
/* 0C93D4 800CC3D4 39600020 */  li        r11, 0x20
/* 0C93D8 800CC3D8 39800008 */  li        r12, 0x8
lbl_800CC3DC:
/* 0C93DC 800CC3DC 5480063E */  clrlwi    r0, r4, 24
/* 0C93E0 800CC3E0 28000002 */  cmplwi    r0, 0x2
/* 0C93E4 800CC3E4 4082001C */  bne       lbl_800CC400
/* 0C93E8 800CC3E8 54C007FF */  clrlwi.   r0, r6, 31
/* 0C93EC 800CC3EC 39000008 */  li        r8, 0x8
/* 0C93F0 800CC3F0 38A00007 */  li        r5, 0x7
/* 0C93F4 800CC3F4 41820008 */  beq       lbl_800CC3FC
/* 0C93F8 800CC3F8 39400001 */  li        r10, 0x1
lbl_800CC3FC:
/* 0C93FC 800CC3FC 39200002 */  li        r9, 0x2
lbl_800CC400:
/* 0C9400 800CC400 7C062800 */  cmpw      r6, r5
/* 0C9404 800CC404 40800024 */  bge       lbl_800CC428
/* 0C9408 800CC408 7CC65214 */  add       r6, r6, r10
/* 0C940C 800CC40C 80A30008 */  lwz       r5, 0x8(r3)
/* 0C9410 800CC410 7C6661D6 */  mullw     r3, r6, r12
/* 0C9414 800CC414 7C064A14 */  add       r0, r6, r9
/* 0C9418 800CC418 7CCB1A14 */  add       r6, r11, r3
/* 0C941C 800CC41C 98070000 */  stb       r0, 0x0(r7)
/* 0C9420 800CC420 7CC53214 */  add       r6, r5, r6
/* 0C9424 800CC424 4800002C */  b         lbl_800CC450
lbl_800CC428:
/* 0C9428 800CC428 38000008 */  li        r0, 0x8
/* 0C942C 800CC42C 98070000 */  stb       r0, 0x0(r7)
/* 0C9430 800CC430 3808FFFF */  subi      r0, r8, 0x1
/* 0C9434 800CC434 7C0600F8 */  nor       r6, r0, r0
/* 0C9438 800CC438 80030004 */  lwz       r0, 0x4(r3)
/* 0C943C 800CC43C 7CA80214 */  add       r5, r8, r0
/* 0C9440 800CC440 3805FFFF */  subi      r0, r5, 0x1
/* 0C9444 800CC444 7CC60038 */  and       r6, r6, r0
/* 0C9448 800CC448 7C064214 */  add       r0, r6, r8
/* 0C944C 800CC44C 90030004 */  stw       r0, 0x4(r3)
lbl_800CC450:
/* 0C9450 800CC450 5480063F */  clrlwi.   r0, r4, 24
/* 0C9454 800CC454 40820008 */  bne       lbl_800CC45C
/* 0C9458 800CC458 80C60000 */  lwz       r6, 0x0(r6)
lbl_800CC45C:
/* 0C945C 800CC45C 7CC33378 */  mr        r3, r6
/* 0C9460 800CC460 4E800020 */  blr
