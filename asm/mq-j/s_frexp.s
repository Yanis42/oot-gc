# s_frexp.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D0820 - 0x800D08BC

glabel frexp
/* 0CD820 800D0820 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0CD824 800D0824 3C007FF0 */  lis       r0, 0x7ff0
/* 0CD828 800D0828 38800000 */  li        r4, 0x0
/* 0CD82C 800D082C D8210008 */  stfd      f1, 0x8(r1)
/* 0CD830 800D0830 80A10008 */  lwz       r5, 0x8(r1)
/* 0CD834 800D0834 8101000C */  lwz       r8, 0xc(r1)
/* 0CD838 800D0838 54A6007E */  clrlwi    r6, r5, 1
/* 0CD83C 800D083C 7C060000 */  cmpw      r6, r0
/* 0CD840 800D0840 90830000 */  stw       r4, 0x0(r3)
/* 0CD844 800D0844 38E50000 */  addi      r7, r5, 0x0
/* 0CD848 800D0848 38860000 */  addi      r4, r6, 0x0
/* 0CD84C 800D084C 4080000C */  bge       lbl_800D0858
/* 0CD850 800D0850 7C804379 */  or.       r0, r4, r8
/* 0CD854 800D0854 4082000C */  bne       lbl_800D0860
lbl_800D0858:
/* 0CD858 800D0858 C8210008 */  lfd       f1, 0x8(r1)
/* 0CD85C 800D085C 48000058 */  b         lbl_800D08B4
lbl_800D0860:
/* 0CD860 800D0860 3C000010 */  lis       r0, 0x10
/* 0CD864 800D0864 7C040000 */  cmpw      r4, r0
/* 0CD868 800D0868 40800028 */  bge       lbl_800D0890
/* 0CD86C 800D086C C8210008 */  lfd       f1, 0x8(r1)
/* 0CD870 800D0870 3800FFCA */  li        r0, -0x36
/* 0CD874 800D0874 C8028690 */  lfd       f0, D_8018C5D0@sda21(r0)
/* 0CD878 800D0878 FC010032 */  fmul      f0, f1, f0
/* 0CD87C 800D087C D8010008 */  stfd      f0, 0x8(r1)
/* 0CD880 800D0880 80810008 */  lwz       r4, 0x8(r1)
/* 0CD884 800D0884 90030000 */  stw       r0, 0x0(r3)
/* 0CD888 800D0888 38E40000 */  addi      r7, r4, 0x0
/* 0CD88C 800D088C 5484007E */  clrlwi    r4, r4, 1
lbl_800D0890:
/* 0CD890 800D0890 80A30000 */  lwz       r5, 0x0(r3)
/* 0CD894 800D0894 7C84A670 */  srawi     r4, r4, 20
/* 0CD898 800D0898 54E00300 */  rlwinm    r0, r7, 0, 12, 0
/* 0CD89C 800D089C 7C842A14 */  add       r4, r4, r5
/* 0CD8A0 800D08A0 3884FC02 */  subi      r4, r4, 0x3fe
/* 0CD8A4 800D08A4 90830000 */  stw       r4, 0x0(r3)
/* 0CD8A8 800D08A8 64003FE0 */  oris      r0, r0, 0x3fe0
/* 0CD8AC 800D08AC 90010008 */  stw       r0, 0x8(r1)
/* 0CD8B0 800D08B0 C8210008 */  lfd       f1, 0x8(r1)
lbl_800D08B4:
/* 0CD8B4 800D08B4 38210018 */  addi      r1, r1, 0x18
/* 0CD8B8 800D08B8 4E800020 */  blr

# 0x8018C5D0 - 0x8018C5D8
.section .sdata2, "a"

glabel D_8018C5D0
	.double 18014398509481984
