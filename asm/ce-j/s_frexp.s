# s_frexp.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel frexp
/* 0CC6A8 800D1C48 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0CC6AC 800D1C4C 3C007FF0 */  lis     r0, 0x7ff0
/* 0CC6B0 800D1C50 38800000 */  li      r4, 0
/* 0CC6B4 800D1C54 D8210008 */  stfd    f1, 8(r1)
/* 0CC6B8 800D1C58 80A10008 */  lwz     r5, 8(r1)
/* 0CC6BC 800D1C5C 8101000C */  lwz     r8, 0xc(r1)
/* 0CC6C0 800D1C60 54A6007E */  clrlwi  r6, r5, 1
/* 0CC6C4 800D1C64 7C060000 */  cmpw    r6, r0
/* 0CC6C8 800D1C68 90830000 */  stw     r4, 0(r3)
/* 0CC6CC 800D1C6C 38E50000 */  addi    r7, r5, 0
/* 0CC6D0 800D1C70 38860000 */  addi    r4, r6, 0
/* 0CC6D4 800D1C74 4080000C */  bge     lbl_800D1C80
/* 0CC6D8 800D1C78 7C804379 */  or.     r0, r4, r8
/* 0CC6DC 800D1C7C 4082000C */  bne     lbl_800D1C88
lbl_800D1C80:
/* 0CC6E0 800D1C80 C8210008 */  lfd     f1, 8(r1)
/* 0CC6E4 800D1C84 48000058 */  b       lbl_800D1CDC
lbl_800D1C88:
/* 0CC6E8 800D1C88 3C000010 */  lis     r0, 0x10
/* 0CC6EC 800D1C8C 7C040000 */  cmpw    r4, r0
/* 0CC6F0 800D1C90 40800028 */  bge     lbl_800D1CB8
/* 0CC6F4 800D1C94 C8210008 */  lfd     f1, 8(r1)
/* 0CC6F8 800D1C98 3800FFCA */  li      r0, -54
/* 0CC6FC 800D1C9C C80286A0 */  lfd     f0, D_801363A0@sda21(r2)
/* 0CC700 800D1CA0 FC010032 */  fmul    f0, f1, f0
/* 0CC704 800D1CA4 D8010008 */  stfd    f0, 8(r1)
/* 0CC708 800D1CA8 80810008 */  lwz     r4, 8(r1)
/* 0CC70C 800D1CAC 90030000 */  stw     r0, 0(r3)
/* 0CC710 800D1CB0 38E40000 */  addi    r7, r4, 0
/* 0CC714 800D1CB4 5484007E */  clrlwi  r4, r4, 1
lbl_800D1CB8:
/* 0CC718 800D1CB8 80A30000 */  lwz     r5, 0(r3)
/* 0CC71C 800D1CBC 7C84A670 */  srawi   r4, r4, 0x14
/* 0CC720 800D1CC0 54E00300 */  rlwinm  r0, r7, 0, 0xc, 0
/* 0CC724 800D1CC4 7C842A14 */  add     r4, r4, r5
/* 0CC728 800D1CC8 3884FC02 */  addi    r4, r4, -1022
/* 0CC72C 800D1CCC 90830000 */  stw     r4, 0(r3)
/* 0CC730 800D1CD0 64003FE0 */  oris    r0, r0, 0x3fe0
/* 0CC734 800D1CD4 90010008 */  stw     r0, 8(r1)
/* 0CC738 800D1CD8 C8210008 */  lfd     f1, 8(r1)
lbl_800D1CDC:
/* 0CC73C 800D1CDC 38210018 */  addi    r1, r1, 0x18
/* 0CC740 800D1CE0 4E800020 */  blr     

.section .sdata2, "wa"

.balign 8

/* 000F1EA0 801363A0 0008 */
D_801363A0:
    .double 1.8014398509481984e+16
