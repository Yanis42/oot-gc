# DEMOPad.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B5C48 - 0x800B5F80

glabel DEMOPadCopy
/* 0B2C48 800B5C48 8803000A */  lbz       r0, 0xa(r3)
/* 0B2C4C 800B5C4C 7C000774 */  extsb     r0, r0
/* 0B2C50 800B5C50 2C00FFFD */  cmpwi     r0, -0x3
/* 0B2C54 800B5C54 41820164 */  beq       lbl_800B5DB8
/* 0B2C58 800B5C58 88A30002 */  lbz       r5, 0x2(r3)
/* 0B2C5C 800B5C5C 38E00000 */  li        r7, 0x0
/* 0B2C60 800B5C60 7CA00774 */  extsb     r0, r5
/* 0B2C64 800B5C64 2C00FFD0 */  cmpwi     r0, -0x30
/* 0B2C68 800B5C68 40800008 */  bge       lbl_800B5C70
/* 0B2C6C 800B5C6C 60E74000 */  ori       r7, r7, 0x4000
lbl_800B5C70:
/* 0B2C70 800B5C70 7CA00774 */  extsb     r0, r5
/* 0B2C74 800B5C74 2C000030 */  cmpwi     r0, 0x30
/* 0B2C78 800B5C78 40810008 */  ble       lbl_800B5C80
/* 0B2C7C 800B5C7C 60E78000 */  ori       r7, r7, 0x8000
lbl_800B5C80:
/* 0B2C80 800B5C80 88A30003 */  lbz       r5, 0x3(r3)
/* 0B2C84 800B5C84 7CA00774 */  extsb     r0, r5
/* 0B2C88 800B5C88 2C00FFD0 */  cmpwi     r0, -0x30
/* 0B2C8C 800B5C8C 40800008 */  bge       lbl_800B5C94
/* 0B2C90 800B5C90 60E72000 */  ori       r7, r7, 0x2000
lbl_800B5C94:
/* 0B2C94 800B5C94 7CA00774 */  extsb     r0, r5
/* 0B2C98 800B5C98 2C000030 */  cmpwi     r0, 0x30
/* 0B2C9C 800B5C9C 40810008 */  ble       lbl_800B5CA4
/* 0B2CA0 800B5CA0 60E71000 */  ori       r7, r7, 0x1000
lbl_800B5CA4:
/* 0B2CA4 800B5CA4 88A30004 */  lbz       r5, 0x4(r3)
/* 0B2CA8 800B5CA8 7CA00774 */  extsb     r0, r5
/* 0B2CAC 800B5CAC 2C00FFD0 */  cmpwi     r0, -0x30
/* 0B2CB0 800B5CB0 40800008 */  bge       lbl_800B5CB8
/* 0B2CB4 800B5CB4 60E70400 */  ori       r7, r7, 0x400
lbl_800B5CB8:
/* 0B2CB8 800B5CB8 7CA00774 */  extsb     r0, r5
/* 0B2CBC 800B5CBC 2C000030 */  cmpwi     r0, 0x30
/* 0B2CC0 800B5CC0 40810008 */  ble       lbl_800B5CC8
/* 0B2CC4 800B5CC4 60E70800 */  ori       r7, r7, 0x800
lbl_800B5CC8:
/* 0B2CC8 800B5CC8 88A30005 */  lbz       r5, 0x5(r3)
/* 0B2CCC 800B5CCC 7CA00774 */  extsb     r0, r5
/* 0B2CD0 800B5CD0 2C00FFD0 */  cmpwi     r0, -0x30
/* 0B2CD4 800B5CD4 40800008 */  bge       lbl_800B5CDC
/* 0B2CD8 800B5CD8 60E70200 */  ori       r7, r7, 0x200
lbl_800B5CDC:
/* 0B2CDC 800B5CDC 7CA00774 */  extsb     r0, r5
/* 0B2CE0 800B5CE0 2C000030 */  cmpwi     r0, 0x30
/* 0B2CE4 800B5CE4 40810008 */  ble       lbl_800B5CEC
/* 0B2CE8 800B5CE8 60E70100 */  ori       r7, r7, 0x100
lbl_800B5CEC:
/* 0B2CEC 800B5CEC A0040010 */  lhz       r0, 0x10(r4)
/* 0B2CF0 800B5CF0 54E5043E */  clrlwi    r5, r7, 16
/* 0B2CF4 800B5CF4 7C002A78 */  xor       r0, r0, r5
/* 0B2CF8 800B5CF8 7CA00038 */  and       r0, r5, r0
/* 0B2CFC 800B5CFC B0040012 */  sth       r0, 0x12(r4)
/* 0B2D00 800B5D00 A0C40010 */  lhz       r6, 0x10(r4)
/* 0B2D04 800B5D04 7CC02A78 */  xor       r0, r6, r5
/* 0B2D08 800B5D08 7CC00038 */  and       r0, r6, r0
/* 0B2D0C 800B5D0C B0040014 */  sth       r0, 0x14(r4)
/* 0B2D10 800B5D10 B0E40010 */  sth       r7, 0x10(r4)
/* 0B2D14 800B5D14 A0A30000 */  lhz       r5, 0x0(r3)
/* 0B2D18 800B5D18 A0040000 */  lhz       r0, 0x0(r4)
/* 0B2D1C 800B5D1C 7C002A78 */  xor       r0, r0, r5
/* 0B2D20 800B5D20 7CA00038 */  and       r0, r5, r0
/* 0B2D24 800B5D24 B004000C */  sth       r0, 0xc(r4)
/* 0B2D28 800B5D28 A0A40000 */  lhz       r5, 0x0(r4)
/* 0B2D2C 800B5D2C A0030000 */  lhz       r0, 0x0(r3)
/* 0B2D30 800B5D30 7CA00278 */  xor       r0, r5, r0
/* 0B2D34 800B5D34 7CA00038 */  and       r0, r5, r0
/* 0B2D38 800B5D38 B004000E */  sth       r0, 0xe(r4)
/* 0B2D3C 800B5D3C 88A40002 */  lbz       r5, 0x2(r4)
/* 0B2D40 800B5D40 88030002 */  lbz       r0, 0x2(r3)
/* 0B2D44 800B5D44 7CA50774 */  extsb     r5, r5
/* 0B2D48 800B5D48 7C000774 */  extsb     r0, r0
/* 0B2D4C 800B5D4C 7C050050 */  subf      r0, r5, r0
/* 0B2D50 800B5D50 B0040016 */  sth       r0, 0x16(r4)
/* 0B2D54 800B5D54 88A40003 */  lbz       r5, 0x3(r4)
/* 0B2D58 800B5D58 88030003 */  lbz       r0, 0x3(r3)
/* 0B2D5C 800B5D5C 7CA50774 */  extsb     r5, r5
/* 0B2D60 800B5D60 7C000774 */  extsb     r0, r0
/* 0B2D64 800B5D64 7C050050 */  subf      r0, r5, r0
/* 0B2D68 800B5D68 B0040018 */  sth       r0, 0x18(r4)
/* 0B2D6C 800B5D6C 88A40004 */  lbz       r5, 0x4(r4)
/* 0B2D70 800B5D70 88030004 */  lbz       r0, 0x4(r3)
/* 0B2D74 800B5D74 7CA50774 */  extsb     r5, r5
/* 0B2D78 800B5D78 7C000774 */  extsb     r0, r0
/* 0B2D7C 800B5D7C 7C050050 */  subf      r0, r5, r0
/* 0B2D80 800B5D80 B004001A */  sth       r0, 0x1a(r4)
/* 0B2D84 800B5D84 88A40005 */  lbz       r5, 0x5(r4)
/* 0B2D88 800B5D88 88030005 */  lbz       r0, 0x5(r3)
/* 0B2D8C 800B5D8C 7CA50774 */  extsb     r5, r5
/* 0B2D90 800B5D90 7C000774 */  extsb     r0, r0
/* 0B2D94 800B5D94 7C050050 */  subf      r0, r5, r0
/* 0B2D98 800B5D98 B004001C */  sth       r0, 0x1c(r4)
/* 0B2D9C 800B5D9C 80A30000 */  lwz       r5, 0x0(r3)
/* 0B2DA0 800B5DA0 80030004 */  lwz       r0, 0x4(r3)
/* 0B2DA4 800B5DA4 90A40000 */  stw       r5, 0x0(r4)
/* 0B2DA8 800B5DA8 90040004 */  stw       r0, 0x4(r4)
/* 0B2DAC 800B5DAC 80030008 */  lwz       r0, 0x8(r3)
/* 0B2DB0 800B5DB0 90040008 */  stw       r0, 0x8(r4)
/* 0B2DB4 800B5DB4 4E800020 */  blr
lbl_800B5DB8:
/* 0B2DB8 800B5DB8 38000000 */  li        r0, 0x0
/* 0B2DBC 800B5DBC B0040014 */  sth       r0, 0x14(r4)
/* 0B2DC0 800B5DC0 B0040012 */  sth       r0, 0x12(r4)
/* 0B2DC4 800B5DC4 B004000E */  sth       r0, 0xe(r4)
/* 0B2DC8 800B5DC8 B004000C */  sth       r0, 0xc(r4)
/* 0B2DCC 800B5DCC B0040018 */  sth       r0, 0x18(r4)
/* 0B2DD0 800B5DD0 B0040016 */  sth       r0, 0x16(r4)
/* 0B2DD4 800B5DD4 B004001C */  sth       r0, 0x1c(r4)
/* 0B2DD8 800B5DD8 B004001A */  sth       r0, 0x1a(r4)
/* 0B2DDC 800B5DDC 4E800020 */  blr

glabel DEMOPadRead
/* 0B2DE0 800B5DE0 7C0802A6 */  mflr      r0
/* 0B2DE4 800B5DE4 3C608019 */  lis       r3, D_801889C8@ha
/* 0B2DE8 800B5DE8 90010004 */  stw       r0, 0x4(r1)
/* 0B2DEC 800B5DEC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B2DF0 800B5DF0 BF61000C */  stmw      r27, 0xc(r1)
/* 0B2DF4 800B5DF4 3BE389C8 */  addi      r31, r3, D_801889C8@l
/* 0B2DF8 800B5DF8 387F0000 */  addi      r3, r31, 0x0
/* 0B2DFC 800B5DFC 3B600000 */  li        r27, 0x0
/* 0B2E00 800B5E00 4BFF9AB9 */  bl        PADRead
/* 0B2E04 800B5E04 7FE3FB78 */  mr        r3, r31
/* 0B2E08 800B5E08 4BFF8D21 */  bl        PADClamp
/* 0B2E0C 800B5E0C 3B800000 */  li        r28, 0x0
/* 0B2E10 800B5E10 1C1C001E */  mulli     r0, r28, 0x1e
/* 0B2E14 800B5E14 38800000 */  li        r4, 0x0
/* 0B2E18 800B5E18 3C60800F */  lis       r3, D_800F4780@ha
/* 0B2E1C 800B5E1C 908D8D60 */  stw       r4, D_8018BCE0@sda21(r0)
/* 0B2E20 800B5E20 7FBF0214 */  add       r29, r31, r0
/* 0B2E24 800B5E24 3BC34780 */  addi      r30, r3, D_800F4780@l
/* 0B2E28 800B5E28 3BBD0030 */  addi      r29, r29, 0x30
lbl_800B5E2C:
/* 0B2E2C 800B5E2C 887F000A */  lbz       r3, 0xa(r31)
/* 0B2E30 800B5E30 7C600775 */  extsb.    r0, r3
/* 0B2E34 800B5E34 41820010 */  beq       lbl_800B5E44
/* 0B2E38 800B5E38 7C600774 */  extsb     r0, r3
/* 0B2E3C 800B5E3C 2C00FFFD */  cmpwi     r0, -0x3
/* 0B2E40 800B5E40 40820014 */  bne       lbl_800B5E54
lbl_800B5E44:
/* 0B2E44 800B5E44 806D8D60 */  lwz       r3, D_8018BCE0@sda21(r0)
/* 0B2E48 800B5E48 38030001 */  addi      r0, r3, 0x1
/* 0B2E4C 800B5E4C 900D8D60 */  stw       r0, D_8018BCE0@sda21(r0)
/* 0B2E50 800B5E50 48000014 */  b         lbl_800B5E64
lbl_800B5E54:
/* 0B2E54 800B5E54 2C00FFFF */  cmpwi     r0, -0x1
/* 0B2E58 800B5E58 4082000C */  bne       lbl_800B5E64
/* 0B2E5C 800B5E5C 801E0000 */  lwz       r0, 0x0(r30)
/* 0B2E60 800B5E60 7F7B0378 */  or        r27, r27, r0
lbl_800B5E64:
/* 0B2E64 800B5E64 387F0000 */  addi      r3, r31, 0x0
/* 0B2E68 800B5E68 389D0000 */  addi      r4, r29, 0x0
/* 0B2E6C 800B5E6C 4BFFFDDD */  bl        DEMOPadCopy
/* 0B2E70 800B5E70 3B9C0001 */  addi      r28, r28, 0x1
/* 0B2E74 800B5E74 2C1C0004 */  cmpwi     r28, 0x4
/* 0B2E78 800B5E78 3BFF000C */  addi      r31, r31, 0xc
/* 0B2E7C 800B5E7C 3BDE0004 */  addi      r30, r30, 0x4
/* 0B2E80 800B5E80 3BBD001E */  addi      r29, r29, 0x1e
/* 0B2E84 800B5E84 4180FFA8 */  blt       lbl_800B5E2C
/* 0B2E88 800B5E88 281B0000 */  cmplwi    r27, 0x0
/* 0B2E8C 800B5E8C 4182000C */  beq       lbl_800B5E98
/* 0B2E90 800B5E90 7F63DB78 */  mr        r3, r27
/* 0B2E94 800B5E94 4BFF9609 */  bl        PADReset
lbl_800B5E98:
/* 0B2E98 800B5E98 BB61000C */  lmw       r27, 0xc(r1)
/* 0B2E9C 800B5E9C 80010024 */  lwz       r0, 0x24(r1)
/* 0B2EA0 800B5EA0 38210020 */  addi      r1, r1, 0x20
/* 0B2EA4 800B5EA4 7C0803A6 */  mtlr      r0
/* 0B2EA8 800B5EA8 4E800020 */  blr

glabel DEMOPadInit
/* 0B2EAC 800B5EAC 7C0802A6 */  mflr      r0
/* 0B2EB0 800B5EB0 90010004 */  stw       r0, 0x4(r1)
/* 0B2EB4 800B5EB4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B2EB8 800B5EB8 4BFF97E9 */  bl        PADInit
/* 0B2EBC 800B5EBC 38000002 */  li        r0, 0x2
/* 0B2EC0 800B5EC0 3C608019 */  lis       r3, D_801889F8@ha
/* 0B2EC4 800B5EC4 7C0903A6 */  mtctr     r0
/* 0B2EC8 800B5EC8 386389F8 */  addi      r3, r3, D_801889F8@l
lbl_800B5ECC:
/* 0B2ECC 800B5ECC 38000000 */  li        r0, 0x0
/* 0B2ED0 800B5ED0 B0030000 */  sth       r0, 0x0(r3)
/* 0B2ED4 800B5ED4 98030002 */  stb       r0, 0x2(r3)
/* 0B2ED8 800B5ED8 98030003 */  stb       r0, 0x3(r3)
/* 0B2EDC 800B5EDC 98030004 */  stb       r0, 0x4(r3)
/* 0B2EE0 800B5EE0 98030005 */  stb       r0, 0x5(r3)
/* 0B2EE4 800B5EE4 98030006 */  stb       r0, 0x6(r3)
/* 0B2EE8 800B5EE8 98030007 */  stb       r0, 0x7(r3)
/* 0B2EEC 800B5EEC 98030008 */  stb       r0, 0x8(r3)
/* 0B2EF0 800B5EF0 98030009 */  stb       r0, 0x9(r3)
/* 0B2EF4 800B5EF4 9803000A */  stb       r0, 0xa(r3)
/* 0B2EF8 800B5EF8 B003000C */  sth       r0, 0xc(r3)
/* 0B2EFC 800B5EFC B003000E */  sth       r0, 0xe(r3)
/* 0B2F00 800B5F00 B0030010 */  sth       r0, 0x10(r3)
/* 0B2F04 800B5F04 B0030012 */  sth       r0, 0x12(r3)
/* 0B2F08 800B5F08 B0030014 */  sth       r0, 0x14(r3)
/* 0B2F0C 800B5F0C B0030016 */  sth       r0, 0x16(r3)
/* 0B2F10 800B5F10 B0030018 */  sth       r0, 0x18(r3)
/* 0B2F14 800B5F14 B003001A */  sth       r0, 0x1a(r3)
/* 0B2F18 800B5F18 B003001C */  sth       r0, 0x1c(r3)
/* 0B2F1C 800B5F1C B003001E */  sth       r0, 0x1e(r3)
/* 0B2F20 800B5F20 98030020 */  stb       r0, 0x20(r3)
/* 0B2F24 800B5F24 98030021 */  stb       r0, 0x21(r3)
/* 0B2F28 800B5F28 98030022 */  stb       r0, 0x22(r3)
/* 0B2F2C 800B5F2C 98030023 */  stb       r0, 0x23(r3)
/* 0B2F30 800B5F30 98030024 */  stb       r0, 0x24(r3)
/* 0B2F34 800B5F34 98030025 */  stb       r0, 0x25(r3)
/* 0B2F38 800B5F38 98030026 */  stb       r0, 0x26(r3)
/* 0B2F3C 800B5F3C 98030027 */  stb       r0, 0x27(r3)
/* 0B2F40 800B5F40 98030028 */  stb       r0, 0x28(r3)
/* 0B2F44 800B5F44 B003002A */  sth       r0, 0x2a(r3)
/* 0B2F48 800B5F48 B003002C */  sth       r0, 0x2c(r3)
/* 0B2F4C 800B5F4C B003002E */  sth       r0, 0x2e(r3)
/* 0B2F50 800B5F50 B0030030 */  sth       r0, 0x30(r3)
/* 0B2F54 800B5F54 B0030032 */  sth       r0, 0x32(r3)
/* 0B2F58 800B5F58 B0030034 */  sth       r0, 0x34(r3)
/* 0B2F5C 800B5F5C B0030036 */  sth       r0, 0x36(r3)
/* 0B2F60 800B5F60 B0030038 */  sth       r0, 0x38(r3)
/* 0B2F64 800B5F64 B003003A */  sth       r0, 0x3a(r3)
/* 0B2F68 800B5F68 3863003C */  addi      r3, r3, 0x3c
/* 0B2F6C 800B5F6C 4200FF60 */  bdnz      lbl_800B5ECC
/* 0B2F70 800B5F70 8001000C */  lwz       r0, 0xc(r1)
/* 0B2F74 800B5F74 38210008 */  addi      r1, r1, 0x8
/* 0B2F78 800B5F78 7C0803A6 */  mtlr      r0
/* 0B2F7C 800B5F7C 4E800020 */  blr

# 0x800F4780 - 0x800F4790
.section .data, "wa"

.balign 8

glabel D_800F4780
	.long 0x80000000
	.long 0x40000000
	.long 0x20000000
	.long 0x10000000

# 0x801889C8 - 0x80188A70
.section .bss, "wa"

glabel D_801889C8
	.skip 0x30

glabel D_801889F8
	.skip 0x78

# 0x8018BCE0 - 0x8018BCE8
.section .sbss, "wa"

glabel D_8018BCE0
	.skip 0x8
