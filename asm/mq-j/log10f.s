# log10f.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D0A5C - 0x800D0C30

glabel log10f
/* 0CDA5C 800D0A5C 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0CDA60 800D0A60 3C60800D */  lis       r3, D_800D22D0@ha
/* 0CDA64 800D0A64 38A322D0 */  addi      r5, r3, D_800D22D0@l
/* 0CDA68 800D0A68 D0210008 */  stfs      f1, 0x8(r1)
/* 0CDA6C 800D0A6C 80C10008 */  lwz       r6, 0x8(r1)
/* 0CDA70 800D0A70 54C40011 */  clrrwi.   r4, r6, 23
/* 0CDA74 800D0A74 418201A8 */  beq       lbl_800D0C1C
/* 0CDA78 800D0A78 40800028 */  bge       lbl_800D0AA0
/* 0CDA7C 800D0A7C 3C00FF80 */  lis       r0, 0xff80
/* 0CDA80 800D0A80 7C040000 */  cmpw      r4, r0
/* 0CDA84 800D0A84 41820168 */  beq       lbl_800D0BEC
/* 0CDA88 800D0A88 40800024 */  bge       lbl_800D0AAC
/* 0CDA8C 800D0A8C 3C608000 */  lis       r3, 0x8000
/* 0CDA90 800D0A90 38030001 */  addi      r0, r3, 0x1
/* 0CDA94 800D0A94 7C040000 */  cmpw      r4, r0
/* 0CDA98 800D0A98 40800014 */  bge       lbl_800D0AAC
/* 0CDA9C 800D0A9C 48000180 */  b         lbl_800D0C1C
lbl_800D0AA0:
/* 0CDAA0 800D0AA0 3C007F80 */  lis       r0, 0x7f80
/* 0CDAA4 800D0AA4 7C040000 */  cmpw      r4, r0
/* 0CDAA8 800D0AA8 41820144 */  beq       lbl_800D0BEC
lbl_800D0AAC:
/* 0CDAAC 800D0AAC 54C00001 */  clrrwi.   r0, r6, 31
/* 0CDAB0 800D0AB0 C10286C0 */  lfs       f8, D_8018C600@sda21(r0)
/* 0CDAB4 800D0AB4 41820010 */  beq       lbl_800D0AC4
/* 0CDAB8 800D0AB8 3C60800F */  lis       r3, D_800F51D8@ha
/* 0CDABC 800D0ABC C02351D8 */  lfs       f1, D_800F51D8@l(r3)
/* 0CDAC0 800D0AC0 48000168 */  b         lbl_800D0C28
lbl_800D0AC4:
/* 0CDAC4 800D0AC4 80610008 */  lwz       r3, 0x8(r1)
/* 0CDAC8 800D0AC8 5460027F */  clrlwi.   r0, r3, 9
/* 0CDACC 800D0ACC 54634DFE */  srwi      r3, r3, 23
/* 0CDAD0 800D0AD0 38C3FF82 */  subi      r6, r3, 0x7e
/* 0CDAD4 800D0AD4 90010008 */  stw       r0, 0x8(r1)
/* 0CDAD8 800D0AD8 41820014 */  beq       lbl_800D0AEC
/* 0CDADC 800D0ADC 80010008 */  lwz       r0, 0x8(r1)
/* 0CDAE0 800D0AE0 64003F00 */  oris      r0, r0, 0x3f00
/* 0CDAE4 800D0AE4 90010008 */  stw       r0, 0x8(r1)
/* 0CDAE8 800D0AE8 48000030 */  b         lbl_800D0B18
lbl_800D0AEC:
/* 0CDAEC 800D0AEC 38C6FFFF */  subi      r6, r6, 0x1
/* 0CDAF0 800D0AF0 C82286D8 */  lfd       f1, D_8018C618@sda21(r0)
/* 0CDAF4 800D0AF4 6CC08000 */  xoris     r0, r6, 0x8000
/* 0CDAF8 800D0AF8 C04286C4 */  lfs       f2, D_8018C604@sda21(r0)
/* 0CDAFC 800D0AFC 9001002C */  stw       r0, 0x2c(r1)
/* 0CDB00 800D0B00 3C004330 */  lis       r0, 0x4330
/* 0CDB04 800D0B04 90010028 */  stw       r0, 0x28(r1)
/* 0CDB08 800D0B08 C8010028 */  lfd       f0, 0x28(r1)
/* 0CDB0C 800D0B0C EC000828 */  fsubs     f0, f0, f1
/* 0CDB10 800D0B10 EC220032 */  fmuls     f1, f2, f0
/* 0CDB14 800D0B14 48000114 */  b         lbl_800D0C28
lbl_800D0B18:
/* 0CDB18 800D0B18 3C603F35 */  lis       r3, 0x3f35
/* 0CDB1C 800D0B1C 80810008 */  lwz       r4, 0x8(r1)
/* 0CDB20 800D0B20 380304F3 */  addi      r0, r3, 0x4f3
/* 0CDB24 800D0B24 7C040000 */  cmpw      r4, r0
/* 0CDB28 800D0B28 40800018 */  bge       lbl_800D0B40
/* 0CDB2C 800D0B2C C02286C8 */  lfs       f1, D_8018C608@sda21(r0)
/* 0CDB30 800D0B30 C0010008 */  lfs       f0, 0x8(r1)
/* 0CDB34 800D0B34 EC01003A */  fmadds    f0, f1, f0, f0
/* 0CDB38 800D0B38 D0010008 */  stfs      f0, 0x8(r1)
/* 0CDB3C 800D0B3C 48000008 */  b         lbl_800D0B44
lbl_800D0B40:
/* 0CDB40 800D0B40 C10286CC */  lfs       f8, D_8018C60C@sda21(r0)
lbl_800D0B44:
/* 0CDB44 800D0B44 C04286D0 */  lfs       f2, D_8018C610@sda21(r0)
/* 0CDB48 800D0B48 6CC08000 */  xoris     r0, r6, 0x8000
/* 0CDB4C 800D0B4C C0010008 */  lfs       f0, 0x8(r1)
/* 0CDB50 800D0B50 3C604330 */  lis       r3, 0x4330
/* 0CDB54 800D0B54 9001001C */  stw       r0, 0x1c(r1)
/* 0CDB58 800D0B58 EC02002A */  fadds     f0, f2, f0
/* 0CDB5C 800D0B5C C02286D4 */  lfs       f1, D_8018C614@sda21(r0)
/* 0CDB60 800D0B60 90610018 */  stw       r3, 0x18(r1)
/* 0CDB64 800D0B64 C88286D8 */  lfd       f4, D_8018C618@sda21(r0)
/* 0CDB68 800D0B68 EC210024 */  fdivs     f1, f1, f0
/* 0CDB6C 800D0B6C C8010018 */  lfd       f0, 0x18(r1)
/* 0CDB70 800D0B70 C06286C4 */  lfs       f3, D_8018C604@sda21(r0)
/* 0CDB74 800D0B74 EC220828 */  fsubs     f1, f2, f1
/* 0CDB78 800D0B78 EC402028 */  fsubs     f2, f0, f4
/* 0CDB7C 800D0B7C D0210008 */  stfs      f1, 0x8(r1)
/* 0CDB80 800D0B80 C0E10008 */  lfs       f7, 0x8(r1)
/* 0CDB84 800D0B84 C0C5000C */  lfs       f6, 0xc(r5)
/* 0CDB88 800D0B88 ED2701F2 */  fmuls     f9, f7, f7
/* 0CDB8C 800D0B8C C0A50008 */  lfs       f5, 0x8(r5)
/* 0CDB90 800D0B90 C0250004 */  lfs       f1, 0x4(r5)
/* 0CDB94 800D0B94 C0050000 */  lfs       f0, 0x0(r5)
/* 0CDB98 800D0B98 ECA62A7A */  fmadds    f5, f6, f9, f5
/* 0CDB9C 800D0B9C EC29097A */  fmadds    f1, f9, f5, f1
/* 0CDBA0 800D0BA0 EC09007A */  fmadds    f0, f9, f1, f0
/* 0CDBA4 800D0BA4 ECA70032 */  fmuls     f5, f7, f0
/* 0CDBA8 800D0BA8 FC00281E */  fctiwz    f0, f5
/* 0CDBAC 800D0BAC D8010028 */  stfd      f0, 0x28(r1)
/* 0CDBB0 800D0BB0 8001002C */  lwz       r0, 0x2c(r1)
/* 0CDBB4 800D0BB4 6C008000 */  xoris     r0, r0, 0x8000
/* 0CDBB8 800D0BB8 90010024 */  stw       r0, 0x24(r1)
/* 0CDBBC 800D0BBC 90610020 */  stw       r3, 0x20(r1)
/* 0CDBC0 800D0BC0 90010014 */  stw       r0, 0x14(r1)
/* 0CDBC4 800D0BC4 C8010020 */  lfd       f0, 0x20(r1)
/* 0CDBC8 800D0BC8 90610010 */  stw       r3, 0x10(r1)
/* 0CDBCC 800D0BCC EC202028 */  fsubs     f1, f0, f4
/* 0CDBD0 800D0BD0 C8010010 */  lfd       f0, 0x10(r1)
/* 0CDBD4 800D0BD4 ECA50828 */  fsubs     f5, f5, f1
/* 0CDBD8 800D0BD8 EC202028 */  fsubs     f1, f0, f4
/* 0CDBDC 800D0BDC EC054028 */  fsubs     f0, f5, f8
/* 0CDBE0 800D0BE0 EC2308BA */  fmadds    f1, f3, f2, f1
/* 0CDBE4 800D0BE4 EC21002A */  fadds     f1, f1, f0
/* 0CDBE8 800D0BE8 48000040 */  b         lbl_800D0C28
lbl_800D0BEC:
/* 0CDBEC 800D0BEC 54C0027F */  clrlwi.   r0, r6, 9
/* 0CDBF0 800D0BF0 4182000C */  beq       lbl_800D0BFC
/* 0CDBF4 800D0BF4 C0210008 */  lfs       f1, 0x8(r1)
/* 0CDBF8 800D0BF8 48000030 */  b         lbl_800D0C28
lbl_800D0BFC:
/* 0CDBFC 800D0BFC 54C00001 */  clrrwi.   r0, r6, 31
/* 0CDC00 800D0C00 41820010 */  beq       lbl_800D0C10
/* 0CDC04 800D0C04 3C60800F */  lis       r3, D_800F51D8@ha
/* 0CDC08 800D0C08 C02351D8 */  lfs       f1, D_800F51D8@l(r3)
/* 0CDC0C 800D0C0C 4800001C */  b         lbl_800D0C28
lbl_800D0C10:
/* 0CDC10 800D0C10 3C60800F */  lis       r3, D_800F51DC@ha
/* 0CDC14 800D0C14 C02351DC */  lfs       f1, D_800F51DC@l(r3)
/* 0CDC18 800D0C18 48000010 */  b         lbl_800D0C28
lbl_800D0C1C:
/* 0CDC1C 800D0C1C 3C60800F */  lis       r3, D_800F51DC@ha
/* 0CDC20 800D0C20 C00351DC */  lfs       f0, D_800F51DC@l(r3)
/* 0CDC24 800D0C24 FC200050 */  fneg      f1, f0
lbl_800D0C28:
/* 0CDC28 800D0C28 38210030 */  addi      r1, r1, 0x30
/* 0CDC2C 800D0C2C 4E800020 */  blr

# 0x800D22D0 - 0x800D22E0
.section .rodata, "a"

.balign 8

glabel D_800D22D0
	.float 0.868589
	.float 0.28953087
	.float 0.17356925
	.float 0.13072406

# 0x8018C600 - 0x8018C620
.section .sdata2, "a"

glabel D_8018C600
	.float 0.150515

glabel D_8018C604
	.float 0.30103

glabel D_8018C608
	.float 0.41421357

glabel D_8018C60C
	.float 0

glabel D_8018C610
	.float 1

glabel D_8018C614
	.float 2

glabel D_8018C618
	.double 4503601774854144
