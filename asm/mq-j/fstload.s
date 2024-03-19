# fstload.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B48E8 - 0x800B4B28

cb:
/* 0B18E8 800B48E8 7C0802A6 */  mflr      r0
/* 0B18EC 800B48EC 2C030000 */  cmpwi     r3, 0x0
/* 0B18F0 800B48F0 90010004 */  stw       r0, 0x4(r1)
/* 0B18F4 800B48F4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B18F8 800B48F8 93E10014 */  stw       r31, 0x14(r1)
/* 0B18FC 800B48FC 3BE40000 */  addi      r31, r4, 0x0
/* 0B1900 800B4900 4081007C */  ble       lbl_800B497C
/* 0B1904 800B4904 800D8D20 */  lwz       r0, D_8018BCA0@sda21(r0)
/* 0B1908 800B4908 2C000001 */  cmpwi     r0, 0x1
/* 0B190C 800B490C 4182003C */  beq       lbl_800B4948
/* 0B1910 800B4910 4080009C */  bge       lbl_800B49AC
/* 0B1914 800B4914 2C000000 */  cmpwi     r0, 0x0
/* 0B1918 800B4918 40800008 */  bge       lbl_800B4920
/* 0B191C 800B491C 48000090 */  b         lbl_800B49AC
lbl_800B4920:
/* 0B1920 800B4920 38000001 */  li        r0, 0x1
/* 0B1924 800B4924 808D8D24 */  lwz       r4, bb2@sda21(r0)
/* 0B1928 800B4928 3C60800B */  lis       r3, cb@ha
/* 0B192C 800B492C 900D8D20 */  stw       r0, D_8018BCA0@sda21(r0)
/* 0B1930 800B4930 38E348E8 */  addi      r7, r3, cb@l
/* 0B1934 800B4934 387F0000 */  addi      r3, r31, 0x0
/* 0B1938 800B4938 38A00020 */  li        r5, 0x20
/* 0B193C 800B493C 38C00420 */  li        r6, 0x420
/* 0B1940 800B4940 4BFFF1E9 */  bl        fn_800B3B28
/* 0B1944 800B4944 48000068 */  b         lbl_800B49AC
lbl_800B4948:
/* 0B1948 800B4948 38000002 */  li        r0, 0x2
/* 0B194C 800B494C 80CD8D24 */  lwz       r6, bb2@sda21(r0)
/* 0B1950 800B4950 900D8D20 */  stw       r0, D_8018BCA0@sda21(r0)
/* 0B1954 800B4954 3C60800B */  lis       r3, cb@ha
/* 0B1958 800B4958 38E348E8 */  addi      r7, r3, cb@l
/* 0B195C 800B495C 80A60008 */  lwz       r5, 0x8(r6)
/* 0B1960 800B4960 7FE3FB78 */  mr        r3, r31
/* 0B1964 800B4964 80860010 */  lwz       r4, 0x10(r6)
/* 0B1968 800B4968 3805001F */  addi      r0, r5, 0x1f
/* 0B196C 800B496C 80C60004 */  lwz       r6, 0x4(r6)
/* 0B1970 800B4970 54050034 */  clrrwi    r5, r0, 5
/* 0B1974 800B4974 4BFFF1B5 */  bl        fn_800B3B28
/* 0B1978 800B4978 48000034 */  b         lbl_800B49AC
lbl_800B497C:
/* 0B197C 800B497C 2C03FFFF */  cmpwi     r3, -0x1
/* 0B1980 800B4980 4182002C */  beq       lbl_800B49AC
/* 0B1984 800B4984 2C03FFFC */  cmpwi     r3, -0x4
/* 0B1988 800B4988 40820024 */  bne       lbl_800B49AC
/* 0B198C 800B498C 38000000 */  li        r0, 0x0
/* 0B1990 800B4990 900D8D20 */  stw       r0, D_8018BCA0@sda21(r0)
/* 0B1994 800B4994 4BFFF409 */  bl        DVDReset
/* 0B1998 800B4998 3C60800B */  lis       r3, cb@ha
/* 0B199C 800B499C 808D8D28 */  lwz       r4, idTmp@sda21(r0)
/* 0B19A0 800B49A0 38A348E8 */  addi      r5, r3, cb@l
/* 0B19A4 800B49A4 387F0000 */  addi      r3, r31, 0x0
/* 0B19A8 800B49A8 4BFFF251 */  bl        DVDReadDiskID
lbl_800B49AC:
/* 0B19AC 800B49AC 8001001C */  lwz       r0, 0x1c(r1)
/* 0B19B0 800B49B0 83E10014 */  lwz       r31, 0x14(r1)
/* 0B19B4 800B49B4 38210018 */  addi      r1, r1, 0x18
/* 0B19B8 800B49B8 7C0803A6 */  mtlr      r0
/* 0B19BC 800B49BC 4E800020 */  blr

glabel __fstLoad
/* 0B19C0 800B49C0 7C0802A6 */  mflr      r0
/* 0B19C4 800B49C4 3C60800F */  lis       r3, "@36"@ha
/* 0B19C8 800B49C8 90010004 */  stw       r0, 0x4(r1)
/* 0B19CC 800B49CC 9421FFA0 */  stwu      r1, -0x60(r1)
/* 0B19D0 800B49D0 93E1005C */  stw       r31, 0x5c(r1)
/* 0B19D4 800B49D4 3BE33990 */  addi      r31, r3, "@36"@l
/* 0B19D8 800B49D8 93C10058 */  stw       r30, 0x58(r1)
/* 0B19DC 800B49DC 93A10054 */  stw       r29, 0x54(r1)
/* 0B19E0 800B49E0 4BFE7FF1 */  bl        OSGetArenaHi
/* 0B19E4 800B49E4 3C608019 */  lis       r3, bb2Buf@ha
/* 0B19E8 800B49E8 386388F8 */  addi      r3, r3, bb2Buf@l
/* 0B19EC 800B49EC 3881002B */  addi      r4, r1, 0x2b
/* 0B19F0 800B49F0 3803001F */  addi      r0, r3, 0x1f
/* 0B19F4 800B49F4 54830034 */  clrrwi    r3, r4, 5
/* 0B19F8 800B49F8 54000034 */  clrrwi    r0, r0, 5
/* 0B19FC 800B49FC 906D8D28 */  stw       r3, idTmp@sda21(r0)
/* 0B1A00 800B4A00 900D8D24 */  stw       r0, bb2@sda21(r0)
/* 0B1A04 800B4A04 4BFFF399 */  bl        DVDReset
/* 0B1A08 800B4A08 3C608019 */  lis       r3, block$16@ha
/* 0B1A0C 800B4A0C 808D8D28 */  lwz       r4, idTmp@sda21(r0)
/* 0B1A10 800B4A10 3CA0800B */  lis       r5, cb@ha
/* 0B1A14 800B4A14 38638938 */  addi      r3, r3, block$16@l
/* 0B1A18 800B4A18 38A548E8 */  addi      r5, r5, cb@l
/* 0B1A1C 800B4A1C 4BFFF1DD */  bl        DVDReadDiskID
lbl_800B4A20:
/* 0B1A20 800B4A20 4BFFF40D */  bl        DVDGetDriveStatus
/* 0B1A24 800B4A24 2C030000 */  cmpwi     r3, 0x0
/* 0B1A28 800B4A28 4082FFF8 */  bne       lbl_800B4A20
/* 0B1A2C 800B4A2C 806D8D24 */  lwz       r3, bb2@sda21(r0)
/* 0B1A30 800B4A30 3FA08000 */  lis       r29, 0x8000
/* 0B1A34 800B4A34 3FC08000 */  lis       r30, 0x8000
/* 0B1A38 800B4A38 80030010 */  lwz       r0, 0x10(r3)
/* 0B1A3C 800B4A3C 387D0000 */  addi      r3, r29, 0x0
/* 0B1A40 800B4A40 38A00020 */  li        r5, 0x20
/* 0B1A44 800B4A44 901E0038 */  stw       r0, 0x38(r30)
/* 0B1A48 800B4A48 808D8D24 */  lwz       r4, bb2@sda21(r0)
/* 0B1A4C 800B4A4C 8004000C */  lwz       r0, 0xc(r4)
/* 0B1A50 800B4A50 901E003C */  stw       r0, 0x3c(r30)
/* 0B1A54 800B4A54 808D8D28 */  lwz       r4, idTmp@sda21(r0)
/* 0B1A58 800B4A58 4BF509BD */  bl        memcpy
/* 0B1A5C 800B4A5C 386D8818 */  li        r3, "@35"@sda21
/* 0B1A60 800B4A60 4CC63182 */  crclr     cr1eq
/* 0B1A64 800B4A64 4BFE90E1 */  bl        OSReport
/* 0B1A68 800B4A68 889D0000 */  lbz       r4, 0x0(r29)
/* 0B1A6C 800B4A6C 7FE3FB78 */  mr        r3, r31
/* 0B1A70 800B4A70 88BD0001 */  lbz       r5, 0x1(r29)
/* 0B1A74 800B4A74 4CC63182 */  crclr     cr1eq
/* 0B1A78 800B4A78 88DD0002 */  lbz       r6, 0x2(r29)
/* 0B1A7C 800B4A7C 88FD0003 */  lbz       r7, 0x3(r29)
/* 0B1A80 800B4A80 7C840774 */  extsb     r4, r4
/* 0B1A84 800B4A84 7CA50774 */  extsb     r5, r5
/* 0B1A88 800B4A88 7CC60774 */  extsb     r6, r6
/* 0B1A8C 800B4A8C 7CE70774 */  extsb     r7, r7
/* 0B1A90 800B4A90 4BFE90B5 */  bl        OSReport
/* 0B1A94 800B4A94 889D0004 */  lbz       r4, 0x4(r29)
/* 0B1A98 800B4A98 387F001C */  addi      r3, r31, 0x1c
/* 0B1A9C 800B4A9C 88BD0005 */  lbz       r5, 0x5(r29)
/* 0B1AA0 800B4AA0 4CC63182 */  crclr     cr1eq
/* 0B1AA4 800B4AA4 7C840774 */  extsb     r4, r4
/* 0B1AA8 800B4AA8 7CA50774 */  extsb     r5, r5
/* 0B1AAC 800B4AAC 4BFE9099 */  bl        OSReport
/* 0B1AB0 800B4AB0 889D0006 */  lbz       r4, 0x6(r29)
/* 0B1AB4 800B4AB4 387F0034 */  addi      r3, r31, 0x34
/* 0B1AB8 800B4AB8 4CC63182 */  crclr     cr1eq
/* 0B1ABC 800B4ABC 4BFE9089 */  bl        OSReport
/* 0B1AC0 800B4AC0 889D0007 */  lbz       r4, 0x7(r29)
/* 0B1AC4 800B4AC4 387F0048 */  addi      r3, r31, 0x48
/* 0B1AC8 800B4AC8 4CC63182 */  crclr     cr1eq
/* 0B1ACC 800B4ACC 4BFE9079 */  bl        OSReport
/* 0B1AD0 800B4AD0 881E0008 */  lbz       r0, 0x8(r30)
/* 0B1AD4 800B4AD4 28000000 */  cmplwi    r0, 0x0
/* 0B1AD8 800B4AD8 4082000C */  bne       lbl_800B4AE4
/* 0B1ADC 800B4ADC 388D881C */  li        r4, "@40"@sda21
/* 0B1AE0 800B4AE0 48000008 */  b         lbl_800B4AE8
lbl_800B4AE4:
/* 0B1AE4 800B4AE4 388D8820 */  li        r4, "@41"@sda21
lbl_800B4AE8:
/* 0B1AE8 800B4AE8 4CC63182 */  crclr     cr1eq
/* 0B1AEC 800B4AEC 387F005C */  addi      r3, r31, 0x5c
/* 0B1AF0 800B4AF0 4BFE9055 */  bl        OSReport
/* 0B1AF4 800B4AF4 386D8818 */  li        r3, "@35"@sda21
/* 0B1AF8 800B4AF8 4CC63182 */  crclr     cr1eq
/* 0B1AFC 800B4AFC 4BFE9049 */  bl        OSReport
/* 0B1B00 800B4B00 806D8D24 */  lwz       r3, bb2@sda21(r0)
/* 0B1B04 800B4B04 80630010 */  lwz       r3, 0x10(r3)
/* 0B1B08 800B4B08 4BFE7ED9 */  bl        OSSetArenaHi
/* 0B1B0C 800B4B0C 80010064 */  lwz       r0, 0x64(r1)
/* 0B1B10 800B4B10 83E1005C */  lwz       r31, 0x5c(r1)
/* 0B1B14 800B4B14 83C10058 */  lwz       r30, 0x58(r1)
/* 0B1B18 800B4B18 83A10054 */  lwz       r29, 0x54(r1)
/* 0B1B1C 800B4B1C 38210060 */  addi      r1, r1, 0x60
/* 0B1B20 800B4B20 7C0803A6 */  mtlr      r0
/* 0B1B24 800B4B24 4E800020 */  blr

# 0x800F3990 - 0x800F3A00
.section .data, "wa"

.balign 8

"@36":
	.string "  Game Name ... %c%c%c%c\n"

glabel gap_05_800F39AA_data
.hidden gap_05_800F39AA_data
	.2byte 0x0000

glabel D_800F39AC
	.string "  Company ..... %c%c\n"

glabel gap_05_800F39C2_data
.hidden gap_05_800F39C2_data
	.2byte 0x0000

glabel D_800F39C4
	.string "  Disk # ...... %d\n"

glabel D_800F39D8
	.string "  Game ver .... %d\n"

glabel D_800F39EC
	.string "  Streaming ... %s\n"

# 0x801888F8 - 0x80188968
.section .bss, "wa"

bb2Buf:
	.skip 0x3F

glabel gap_06_80188937_bss
.hidden gap_06_80188937_bss
	.skip 0x1

block$16:
	.skip 0x30

# 0x8018B798 - 0x8018B7A8
.section .sdata, "wa"

"@35":
	.string "\n"

glabel gap_07_8018B79A_sdata
.hidden gap_07_8018B79A_sdata
	.2byte 0x0000

"@40":
	.string "OFF"

"@41":
	.string "ON"

glabel gap_07_8018B7A3_sdata
.hidden gap_07_8018B7A3_sdata
	.long 0x00000000
	.byte 0x00

# 0x8018BCA0 - 0x8018BCB0
.section .sbss, "wa"

glabel D_8018BCA0
	.skip 0x4

bb2:
	.skip 0x4

idTmp:
	.skip 0x4

glabel gap_08_8018BCAC_sbss
.hidden gap_08_8018BCAC_sbss
	.skip 0x4
