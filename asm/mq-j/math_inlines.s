# math_inlines.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D101C - 0x800D10AC

glabel sqrt
/* 0CE01C 800D101C C80286F8 */  lfd       f0, D_8018C638@sda21(r0)
/* 0CE020 800D1020 FC010040 */  fcmpo     cr0, f1, f0
/* 0CE024 800D1024 40810058 */  ble       lbl_800D107C
/* 0CE028 800D1028 FC400834 */  frsqrte   f2, f1
/* 0CE02C 800D102C C8828700 */  lfd       f4, D_8018C640@sda21(r0)
/* 0CE030 800D1030 C8628708 */  lfd       f3, D_8018C648@sda21(r0)
/* 0CE034 800D1034 FC0200B2 */  fmul      f0, f2, f2
/* 0CE038 800D1038 FC4400B2 */  fmul      f2, f4, f2
/* 0CE03C 800D103C FC01183C */  fnmsub    f0, f1, f0, f3
/* 0CE040 800D1040 FC420032 */  fmul      f2, f2, f0
/* 0CE044 800D1044 FC0200B2 */  fmul      f0, f2, f2
/* 0CE048 800D1048 FC4400B2 */  fmul      f2, f4, f2
/* 0CE04C 800D104C FC01183C */  fnmsub    f0, f1, f0, f3
/* 0CE050 800D1050 FC420032 */  fmul      f2, f2, f0
/* 0CE054 800D1054 FC0200B2 */  fmul      f0, f2, f2
/* 0CE058 800D1058 FC4400B2 */  fmul      f2, f4, f2
/* 0CE05C 800D105C FC01183C */  fnmsub    f0, f1, f0, f3
/* 0CE060 800D1060 FC420032 */  fmul      f2, f2, f0
/* 0CE064 800D1064 FC0200B2 */  fmul      f0, f2, f2
/* 0CE068 800D1068 FC4400B2 */  fmul      f2, f4, f2
/* 0CE06C 800D106C FC01183C */  fnmsub    f0, f1, f0, f3
/* 0CE070 800D1070 FC020032 */  fmul      f0, f2, f0
/* 0CE074 800D1074 FC210032 */  fmul      f1, f1, f0
/* 0CE078 800D1078 4E800020 */  blr
lbl_800D107C:
/* 0CE07C 800D107C FC000800 */  fcmpu     cr0, f0, f1
/* 0CE080 800D1080 4082000C */  bne       lbl_800D108C
/* 0CE084 800D1084 FC200090 */  fmr       f1, f0
/* 0CE088 800D1088 4E800020 */  blr
lbl_800D108C:
/* 0CE08C 800D108C FC010000 */  fcmpu     cr0, f1, f0
/* 0CE090 800D1090 41820010 */  beq       lbl_800D10A0
/* 0CE094 800D1094 3C60800F */  lis       r3, D_800F51D8@ha
/* 0CE098 800D1098 C02351D8 */  lfs       f1, D_800F51D8@l(r3)
/* 0CE09C 800D109C 4E800020 */  blr
lbl_800D10A0:
/* 0CE0A0 800D10A0 3C60800F */  lis       r3, D_800F51DC@ha
/* 0CE0A4 800D10A4 C02351DC */  lfs       f1, D_800F51DC@l(r3)
/* 0CE0A8 800D10A8 4E800020 */  blr

# 0x8018C638 - 0x8018C650
.section .sdata2, "a"

glabel D_8018C638
	.double 0

glabel D_8018C640
	.double 0.5

glabel D_8018C648
	.double 3
