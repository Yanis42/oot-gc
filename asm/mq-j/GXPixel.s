# GXPixel.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800ACC34 - 0x800AD3D4

glabel fn_800ACC34
/* 0A9C34 800ACC34 7C0802A6 */  mflr      r0
/* 0A9C38 800ACC38 FC041800 */  fcmpu     cr0, f4, f3
/* 0A9C3C 800ACC3C 90010004 */  stw       r0, 0x4(r1)
/* 0A9C40 800ACC40 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0A9C44 800ACC44 93E10044 */  stw       r31, 0x44(r1)
/* 0A9C48 800ACC48 3BE30000 */  addi      r31, r3, 0x0
/* 0A9C4C 800ACC4C 93C10040 */  stw       r30, 0x40(r1)
/* 0A9C50 800ACC50 93A1003C */  stw       r29, 0x3c(r1)
/* 0A9C54 800ACC54 3BA40000 */  addi      r29, r4, 0x0
/* 0A9C58 800ACC58 4182000C */  beq       lbl_800ACC64
/* 0A9C5C 800ACC5C FC020800 */  fcmpu     cr0, f2, f1
/* 0A9C60 800ACC60 40820014 */  bne       lbl_800ACC74
lbl_800ACC64:
/* 0A9C64 800ACC64 C0628460 */  lfs       f3, D_8018C3A0@sda21(r0)
/* 0A9C68 800ACC68 C0828464 */  lfs       f4, D_8018C3A4@sda21(r0)
/* 0A9C6C 800ACC6C FCA01890 */  fmr       f5, f3
/* 0A9C70 800ACC70 48000020 */  b         lbl_800ACC90
lbl_800ACC74:
/* 0A9C74 800ACC74 EC041828 */  fsubs     f0, f4, f3
/* 0A9C78 800ACC78 ECA20828 */  fsubs     f5, f2, f1
/* 0A9C7C 800ACC7C EC4400F2 */  fmuls     f2, f4, f3
/* 0A9C80 800ACC80 EC840024 */  fdivs     f4, f4, f0
/* 0A9C84 800ACC84 EC000172 */  fmuls     f0, f0, f5
/* 0A9C88 800ACC88 ECA12824 */  fdivs     f5, f1, f5
/* 0A9C8C 800ACC8C EC620024 */  fdivs     f3, f2, f0
lbl_800ACC90:
/* 0A9C90 800ACC90 C0228464 */  lfs       f1, D_8018C3A4@sda21(r0)
/* 0A9C94 800ACC94 38600000 */  li        r3, 0x0
/* 0A9C98 800ACC98 C8028468 */  lfd       f0, D_8018C3A8@sda21(r0)
/* 0A9C9C 800ACC9C 4800000C */  b         lbl_800ACCA8
lbl_800ACCA0:
/* 0A9CA0 800ACCA0 EC840072 */  fmuls     f4, f4, f1
/* 0A9CA4 800ACCA4 38630001 */  addi      r3, r3, 0x1
lbl_800ACCA8:
/* 0A9CA8 800ACCA8 FC040040 */  fcmpo     cr0, f4, f0
/* 0A9CAC 800ACCAC 4181FFF4 */  bgt       lbl_800ACCA0
/* 0A9CB0 800ACCB0 C8028478 */  lfd       f0, D_8018C3B8@sda21(r0)
/* 0A9CB4 800ACCB4 C0428470 */  lfs       f2, D_8018C3B0@sda21(r0)
/* 0A9CB8 800ACCB8 C0228460 */  lfs       f1, D_8018C3A0@sda21(r0)
/* 0A9CBC 800ACCBC 4800000C */  b         lbl_800ACCC8
lbl_800ACCC0:
/* 0A9CC0 800ACCC0 EC8400B2 */  fmuls     f4, f4, f2
/* 0A9CC4 800ACCC4 3863FFFF */  subi      r3, r3, 0x1
lbl_800ACCC8:
/* 0A9CC8 800ACCC8 FC040840 */  fcmpo     cr0, f4, f1
/* 0A9CCC 800ACCCC 4081000C */  ble       lbl_800ACCD8
/* 0A9CD0 800ACCD0 FC040040 */  fcmpo     cr0, f4, f0
/* 0A9CD4 800ACCD4 4180FFEC */  blt       lbl_800ACCC0
lbl_800ACCD8:
/* 0A9CD8 800ACCD8 3BC30001 */  addi      r30, r3, 0x1
/* 0A9CDC 800ACCDC C0028480 */  lfs       f0, D_8018C3C0@sda21(r0)
/* 0A9CE0 800ACCE0 38000001 */  li        r0, 0x1
/* 0A9CE4 800ACCE4 C8428488 */  lfd       f2, D_8018C3C8@sda21(r0)
/* 0A9CE8 800ACCE8 7C00F030 */  slw       r0, r0, r30
/* 0A9CEC 800ACCEC EC200132 */  fmuls     f1, f0, f4
/* 0A9CF0 800ACCF0 6C038000 */  xoris     r3, r0, 0x8000
/* 0A9CF4 800ACCF4 D0A10028 */  stfs      f5, 0x28(r1)
/* 0A9CF8 800ACCF8 3C004330 */  lis       r0, 0x4330
/* 0A9CFC 800ACCFC 90610034 */  stw       r3, 0x34(r1)
/* 0A9D00 800ACD00 90010030 */  stw       r0, 0x30(r1)
/* 0A9D04 800ACD04 C8010030 */  lfd       f0, 0x30(r1)
/* 0A9D08 800ACD08 EC001028 */  fsubs     f0, f0, f2
/* 0A9D0C 800ACD0C EC030024 */  fdivs     f0, f3, f0
/* 0A9D10 800ACD10 D001002C */  stfs      f0, 0x2c(r1)
/* 0A9D14 800ACD14 4801F799 */  bl        __cvt_fp2unsigned
/* 0A9D18 800ACD18 8001002C */  lwz       r0, 0x2c(r1)
/* 0A9D1C 800ACD1C 5469023E */  clrlwi    r9, r3, 8
/* 0A9D20 800ACD20 88DD0001 */  lbz       r6, 0x1(r29)
/* 0A9D24 800ACD24 57C8023E */  clrlwi    r8, r30, 8
/* 0A9D28 800ACD28 5404A368 */  rlwinm    r4, r0, 20, 13, 20
/* 0A9D2C 800ACD2C 5004A57E */  rlwimi    r4, r0, 20, 21, 31
/* 0A9D30 800ACD30 897D0002 */  lbz       r11, 0x2(r29)
/* 0A9D34 800ACD34 5400A318 */  rlwinm    r0, r0, 20, 12, 12
/* 0A9D38 800ACD38 88BD0000 */  lbz       r5, 0x0(r29)
/* 0A9D3C 800ACD3C 5080037E */  rlwimi    r0, r4, 0, 13, 31
/* 0A9D40 800ACD40 81810028 */  lwz       r12, 0x28(r1)
/* 0A9D44 800ACD44 5407023E */  clrlwi    r7, r0, 8
/* 0A9D48 800ACD48 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A9D4C 800ACD4C 64EAEE00 */  oris      r10, r7, 0xee00
/* 0A9D50 800ACD50 38000061 */  li        r0, 0x61
/* 0A9D54 800ACD54 3C80CC01 */  lis       r4, 0xcc01
/* 0A9D58 800ACD58 98048000 */  stb       r0, -0x8000(r4)
/* 0A9D5C 800ACD5C 6527EF00 */  oris      r7, r9, 0xef00
/* 0A9D60 800ACD60 54C6402E */  slwi      r6, r6, 8
/* 0A9D64 800ACD64 91448000 */  stw       r10, -0x8000(r4)
/* 0A9D68 800ACD68 558AA368 */  rlwinm    r10, r12, 20, 13, 20
/* 0A9D6C 800ACD6C 518AA57E */  rlwimi    r10, r12, 20, 21, 31
/* 0A9D70 800ACD70 98048000 */  stb       r0, -0x8000(r4)
/* 0A9D74 800ACD74 5589A318 */  rlwinm    r9, r12, 20, 12, 12
/* 0A9D78 800ACD78 5149037E */  rlwimi    r9, r10, 0, 13, 31
/* 0A9D7C 800ACD7C 90E48000 */  stw       r7, -0x8000(r4)
/* 0A9D80 800ACD80 6507F000 */  oris      r7, r8, 0xf000
/* 0A9D84 800ACD84 5166063E */  rlwimi    r6, r11, 0, 24, 31
/* 0A9D88 800ACD88 98048000 */  stb       r0, -0x8000(r4)
/* 0A9D8C 800ACD8C 90E48000 */  stw       r7, -0x8000(r4)
/* 0A9D90 800ACD90 57E7A814 */  slwi      r7, r31, 21
/* 0A9D94 800ACD94 5127033E */  rlwimi    r7, r9, 0, 12, 31
/* 0A9D98 800ACD98 54E7023E */  clrlwi    r7, r7, 8
/* 0A9D9C 800ACD9C 98048000 */  stb       r0, -0x8000(r4)
/* 0A9DA0 800ACDA0 64E7F100 */  oris      r7, r7, 0xf100
/* 0A9DA4 800ACDA4 90E48000 */  stw       r7, -0x8000(r4)
/* 0A9DA8 800ACDA8 98048000 */  stb       r0, -0x8000(r4)
/* 0A9DAC 800ACDAC 54A0801E */  slwi      r0, r5, 16
/* 0A9DB0 800ACDB0 50C0043E */  rlwimi    r0, r6, 0, 16, 31
/* 0A9DB4 800ACDB4 5400023E */  clrlwi    r0, r0, 8
/* 0A9DB8 800ACDB8 6400F200 */  oris      r0, r0, 0xf200
/* 0A9DBC 800ACDBC 90048000 */  stw       r0, -0x8000(r4)
/* 0A9DC0 800ACDC0 38000000 */  li        r0, 0x0
/* 0A9DC4 800ACDC4 B0030002 */  sth       r0, 0x2(r3)
/* 0A9DC8 800ACDC8 8001004C */  lwz       r0, 0x4c(r1)
/* 0A9DCC 800ACDCC 83E10044 */  lwz       r31, 0x44(r1)
/* 0A9DD0 800ACDD0 83C10040 */  lwz       r30, 0x40(r1)
/* 0A9DD4 800ACDD4 83A1003C */  lwz       r29, 0x3c(r1)
/* 0A9DD8 800ACDD8 38210048 */  addi      r1, r1, 0x48
/* 0A9DDC 800ACDDC 7C0803A6 */  mtlr      r0
/* 0A9DE0 800ACDE0 4E800020 */  blr

glabel fn_800ACDE4
/* 0A9DE4 800ACDE4 7C0802A6 */  mflr      r0
/* 0A9DE8 800ACDE8 90010004 */  stw       r0, 0x4(r1)
/* 0A9DEC 800ACDEC 9421FF80 */  stwu      r1, -0x80(r1)
/* 0A9DF0 800ACDF0 DBE10078 */  stfd      f31, 0x78(r1)
/* 0A9DF4 800ACDF4 DBC10070 */  stfd      f30, 0x70(r1)
/* 0A9DF8 800ACDF8 DBA10068 */  stfd      f29, 0x68(r1)
/* 0A9DFC 800ACDFC DB810060 */  stfd      f28, 0x60(r1)
/* 0A9E00 800ACE00 DB610058 */  stfd      f27, 0x58(r1)
/* 0A9E04 800ACE04 DB410050 */  stfd      f26, 0x50(r1)
/* 0A9E08 800ACE08 DB210048 */  stfd      f25, 0x48(r1)
/* 0A9E0C 800ACE0C DB010040 */  stfd      f24, 0x40(r1)
/* 0A9E10 800ACE10 DAE10038 */  stfd      f23, 0x38(r1)
/* 0A9E14 800ACE14 93E10034 */  stw       r31, 0x34(r1)
/* 0A9E18 800ACE18 93C10030 */  stw       r30, 0x30(r1)
/* 0A9E1C 800ACE1C 93A1002C */  stw       r29, 0x2c(r1)
/* 0A9E20 800ACE20 C8228490 */  lfd       f1, D_8018C3D0@sda21(r0)
/* 0A9E24 800ACE24 C005003C */  lfs       f0, 0x3c(r5)
/* 0A9E28 800ACE28 FC010000 */  fcmpu     cr0, f1, f0
/* 0A9E2C 800ACE2C 40820030 */  bne       lbl_800ACE5C
/* 0A9E30 800ACE30 C0450028 */  lfs       f2, 0x28(r5)
/* 0A9E34 800ACE34 C0228498 */  lfs       f1, D_8018C3D8@sda21(r0)
/* 0A9E38 800ACE38 C065002C */  lfs       f3, 0x2c(r5)
/* 0A9E3C 800ACE3C EC420828 */  fsubs     f2, f2, f1
/* 0A9E40 800ACE40 C0050008 */  lfs       f0, 0x8(r5)
/* 0A9E44 800ACE44 EC21002A */  fadds     f1, f1, f0
/* 0A9E48 800ACE48 C0050000 */  lfs       f0, 0x0(r5)
/* 0A9E4C 800ACE4C EC431024 */  fdivs     f2, f3, f2
/* 0A9E50 800ACE50 EC220072 */  fmuls     f1, f2, f1
/* 0A9E54 800ACE54 EF010024 */  fdivs     f24, f1, f0
/* 0A9E58 800ACE58 4800002C */  b         lbl_800ACE84
lbl_800ACE5C:
/* 0A9E5C 800ACE5C C0828498 */  lfs       f4, D_8018C3D8@sda21(r0)
/* 0A9E60 800ACE60 C005000C */  lfs       f0, 0xc(r5)
/* 0A9E64 800ACE64 C065002C */  lfs       f3, 0x2c(r5)
/* 0A9E68 800ACE68 EC202028 */  fsubs     f1, f0, f4
/* 0A9E6C 800ACE6C C0450028 */  lfs       f2, 0x28(r5)
/* 0A9E70 800ACE70 EC64182A */  fadds     f3, f4, f3
/* 0A9E74 800ACE74 C0050000 */  lfs       f0, 0x0(r5)
/* 0A9E78 800ACE78 FC200850 */  fneg      f1, f1
/* 0A9E7C 800ACE7C EC431024 */  fdivs     f2, f3, f2
/* 0A9E80 800ACE80 EF010024 */  fdivs     f24, f1, f0
lbl_800ACE84:
/* 0A9E84 800ACE84 5480043E */  clrlwi    r0, r4, 16
/* 0A9E88 800ACE88 CB6284B0 */  lfd       f27, D_8018C3F0@sda21(r0)
/* 0A9E8C 800ACE8C 90010024 */  stw       r0, 0x24(r1)
/* 0A9E90 800ACE90 3FE04330 */  lis       r31, 0x4330
/* 0A9E94 800ACE94 C0228470 */  lfs       f1, D_8018C3B0@sda21(r0)
/* 0A9E98 800ACE98 EF4200B2 */  fmuls     f26, f2, f2
/* 0A9E9C 800ACE9C 93E10020 */  stw       r31, 0x20(r1)
/* 0A9EA0 800ACEA0 C3828498 */  lfs       f28, D_8018C3D8@sda21(r0)
/* 0A9EA4 800ACEA4 7C7E1B78 */  mr        r30, r3
/* 0A9EA8 800ACEA8 C8010020 */  lfd       f0, 0x20(r1)
/* 0A9EAC 800ACEAC C3A28460 */  lfs       f29, D_8018C3A0@sda21(r0)
/* 0A9EB0 800ACEB0 3BA00000 */  li        r29, 0x0
/* 0A9EB4 800ACEB4 EC00D828 */  fsubs     f0, f0, f27
/* 0A9EB8 800ACEB8 CBC28478 */  lfd       f30, D_8018C3B8@sda21(r0)
/* 0A9EBC 800ACEBC CBE284A0 */  lfd       f31, D_8018C3E0@sda21(r0)
/* 0A9EC0 800ACEC0 C2E284A8 */  lfs       f23, D_8018C3E8@sda21(r0)
/* 0A9EC4 800ACEC4 EF210024 */  fdivs     f25, f1, f0
lbl_800ACEC8:
/* 0A9EC8 800ACEC8 381D0001 */  addi      r0, r29, 0x1
/* 0A9ECC 800ACECC 54002834 */  slwi      r0, r0, 5
/* 0A9ED0 800ACED0 90010024 */  stw       r0, 0x24(r1)
/* 0A9ED4 800ACED4 93E10020 */  stw       r31, 0x20(r1)
/* 0A9ED8 800ACED8 C8010020 */  lfd       f0, 0x20(r1)
/* 0A9EDC 800ACEDC EC00D828 */  fsubs     f0, f0, f27
/* 0A9EE0 800ACEE0 EC000672 */  fmuls     f0, f0, f25
/* 0A9EE4 800ACEE4 EC000632 */  fmuls     f0, f0, f24
/* 0A9EE8 800ACEE8 EC000032 */  fmuls     f0, f0, f0
/* 0A9EEC 800ACEEC EC00D024 */  fdivs     f0, f0, f26
/* 0A9EF0 800ACEF0 EC5C002A */  fadds     f2, f28, f0
/* 0A9EF4 800ACEF4 FC02E840 */  fcmpo     cr0, f2, f29
/* 0A9EF8 800ACEF8 40810054 */  ble       lbl_800ACF4C
/* 0A9EFC 800ACEFC FC201034 */  frsqrte   f1, f2
/* 0A9F00 800ACF00 FC010072 */  fmul      f0, f1, f1
/* 0A9F04 800ACF04 FC3E0072 */  fmul      f1, f30, f1
/* 0A9F08 800ACF08 FC020032 */  fmul      f0, f2, f0
/* 0A9F0C 800ACF0C FC1F0028 */  fsub      f0, f31, f0
/* 0A9F10 800ACF10 FC210032 */  fmul      f1, f1, f0
/* 0A9F14 800ACF14 FC010072 */  fmul      f0, f1, f1
/* 0A9F18 800ACF18 FC3E0072 */  fmul      f1, f30, f1
/* 0A9F1C 800ACF1C FC020032 */  fmul      f0, f2, f0
/* 0A9F20 800ACF20 FC1F0028 */  fsub      f0, f31, f0
/* 0A9F24 800ACF24 FC210032 */  fmul      f1, f1, f0
/* 0A9F28 800ACF28 FC010072 */  fmul      f0, f1, f1
/* 0A9F2C 800ACF2C FC3E0072 */  fmul      f1, f30, f1
/* 0A9F30 800ACF30 FC020032 */  fmul      f0, f2, f0
/* 0A9F34 800ACF34 FC1F0028 */  fsub      f0, f31, f0
/* 0A9F38 800ACF38 FC010032 */  fmul      f0, f1, f0
/* 0A9F3C 800ACF3C FC020032 */  fmul      f0, f2, f0
/* 0A9F40 800ACF40 FC000018 */  frsp      f0, f0
/* 0A9F44 800ACF44 D0010014 */  stfs      f0, 0x14(r1)
/* 0A9F48 800ACF48 C0410014 */  lfs       f2, 0x14(r1)
lbl_800ACF4C:
/* 0A9F4C 800ACF4C EC3700B2 */  fmuls     f1, f23, f2
/* 0A9F50 800ACF50 4801F55D */  bl        __cvt_fp2unsigned
/* 0A9F54 800ACF54 3BBD0001 */  addi      r29, r29, 0x1
/* 0A9F58 800ACF58 5460053E */  clrlwi    r0, r3, 20
/* 0A9F5C 800ACF5C B01E0000 */  sth       r0, 0x0(r30)
/* 0A9F60 800ACF60 281D000A */  cmplwi    r29, 0xa
/* 0A9F64 800ACF64 3BDE0002 */  addi      r30, r30, 0x2
/* 0A9F68 800ACF68 4180FF60 */  blt       lbl_800ACEC8
/* 0A9F6C 800ACF6C 80010084 */  lwz       r0, 0x84(r1)
/* 0A9F70 800ACF70 CBE10078 */  lfd       f31, 0x78(r1)
/* 0A9F74 800ACF74 CBC10070 */  lfd       f30, 0x70(r1)
/* 0A9F78 800ACF78 CBA10068 */  lfd       f29, 0x68(r1)
/* 0A9F7C 800ACF7C CB810060 */  lfd       f28, 0x60(r1)
/* 0A9F80 800ACF80 CB610058 */  lfd       f27, 0x58(r1)
/* 0A9F84 800ACF84 CB410050 */  lfd       f26, 0x50(r1)
/* 0A9F88 800ACF88 CB210048 */  lfd       f25, 0x48(r1)
/* 0A9F8C 800ACF8C CB010040 */  lfd       f24, 0x40(r1)
/* 0A9F90 800ACF90 CAE10038 */  lfd       f23, 0x38(r1)
/* 0A9F94 800ACF94 83E10034 */  lwz       r31, 0x34(r1)
/* 0A9F98 800ACF98 83C10030 */  lwz       r30, 0x30(r1)
/* 0A9F9C 800ACF9C 83A1002C */  lwz       r29, 0x2c(r1)
/* 0A9FA0 800ACFA0 38210080 */  addi      r1, r1, 0x80
/* 0A9FA4 800ACFA4 7C0803A6 */  mtlr      r0
/* 0A9FA8 800ACFA8 4E800020 */  blr

glabel fn_800ACFAC
/* 0A9FAC 800ACFAC 5460063F */  clrlwi.   r0, r3, 24
/* 0A9FB0 800ACFB0 418200C0 */  beq       lbl_800AD070
/* 0A9FB4 800ACFB4 A1050002 */  lhz       r8, 0x2(r5)
/* 0A9FB8 800ACFB8 38000061 */  li        r0, 0x61
/* 0A9FBC 800ACFBC A1450000 */  lhz       r10, 0x0(r5)
/* 0A9FC0 800ACFC0 3CC0CC01 */  lis       r6, 0xcc01
/* 0A9FC4 800ACFC4 55086026 */  slwi      r8, r8, 12
/* 0A9FC8 800ACFC8 5148053E */  rlwimi    r8, r10, 0, 20, 31
/* 0A9FCC 800ACFCC 98068000 */  stb       r0, -0x8000(r6)
/* 0A9FD0 800ACFD0 38E000E9 */  li        r7, 0xe9
/* 0A9FD4 800ACFD4 5509023E */  clrlwi    r9, r8, 8
/* 0A9FD8 800ACFD8 50E9C00E */  rlwimi    r9, r7, 24, 0, 7
/* 0A9FDC 800ACFDC 91268000 */  stw       r9, -0x8000(r6)
/* 0A9FE0 800ACFE0 38E000EA */  li        r7, 0xea
/* 0A9FE4 800ACFE4 54E9C00E */  slwi      r9, r7, 24
/* 0A9FE8 800ACFE8 A5450004 */  lhzu      r10, 0x4(r5)
/* 0A9FEC 800ACFEC 38E000EB */  li        r7, 0xeb
/* 0A9FF0 800ACFF0 A1050002 */  lhz       r8, 0x2(r5)
/* 0A9FF4 800ACFF4 55086026 */  slwi      r8, r8, 12
/* 0A9FF8 800ACFF8 98068000 */  stb       r0, -0x8000(r6)
/* 0A9FFC 800ACFFC 5148053E */  rlwimi    r8, r10, 0, 20, 31
/* 0AA000 800AD000 5109023E */  rlwimi    r9, r8, 0, 8, 31
/* 0AA004 800AD004 91268000 */  stw       r9, -0x8000(r6)
/* 0AA008 800AD008 54E9C00E */  slwi      r9, r7, 24
/* 0AA00C 800AD00C 38E000EC */  li        r7, 0xec
/* 0AA010 800AD010 A1050006 */  lhz       r8, 0x6(r5)
/* 0AA014 800AD014 A1450004 */  lhz       r10, 0x4(r5)
/* 0AA018 800AD018 55086026 */  slwi      r8, r8, 12
/* 0AA01C 800AD01C 5148053E */  rlwimi    r8, r10, 0, 20, 31
/* 0AA020 800AD020 98068000 */  stb       r0, -0x8000(r6)
/* 0AA024 800AD024 5109023E */  rlwimi    r9, r8, 0, 8, 31
/* 0AA028 800AD028 91268000 */  stw       r9, -0x8000(r6)
/* 0AA02C 800AD02C 54E9C00E */  slwi      r9, r7, 24
/* 0AA030 800AD030 38E000ED */  li        r7, 0xed
/* 0AA034 800AD034 A105000A */  lhz       r8, 0xa(r5)
/* 0AA038 800AD038 A1450008 */  lhz       r10, 0x8(r5)
/* 0AA03C 800AD03C 55086026 */  slwi      r8, r8, 12
/* 0AA040 800AD040 5148053E */  rlwimi    r8, r10, 0, 20, 31
/* 0AA044 800AD044 98068000 */  stb       r0, -0x8000(r6)
/* 0AA048 800AD048 5109023E */  rlwimi    r9, r8, 0, 8, 31
/* 0AA04C 800AD04C 91268000 */  stw       r9, -0x8000(r6)
/* 0AA050 800AD050 A105000E */  lhz       r8, 0xe(r5)
/* 0AA054 800AD054 A145000C */  lhz       r10, 0xc(r5)
/* 0AA058 800AD058 55086026 */  slwi      r8, r8, 12
/* 0AA05C 800AD05C 5148053E */  rlwimi    r8, r10, 0, 20, 31
/* 0AA060 800AD060 98068000 */  stb       r0, -0x8000(r6)
/* 0AA064 800AD064 5509023E */  clrlwi    r9, r8, 8
/* 0AA068 800AD068 50E9C00E */  rlwimi    r9, r7, 24, 0, 7
/* 0AA06C 800AD06C 91268000 */  stw       r9, -0x8000(r6)
lbl_800AD070:
/* 0AA070 800AD070 5485043E */  clrlwi    r5, r4, 16
/* 0AA074 800AD074 80828400 */  lwz       r4, gx@sda21(r0)
/* 0AA078 800AD078 38050156 */  addi      r0, r5, 0x156
/* 0AA07C 800AD07C 540505A8 */  rlwinm    r5, r0, 0, 22, 20
/* 0AA080 800AD080 546053AA */  clrlslwi  r0, r3, 24, 10
/* 0AA084 800AD084 7CA00378 */  or        r0, r5, r0
/* 0AA088 800AD088 5405023E */  clrlwi    r5, r0, 8
/* 0AA08C 800AD08C 38000061 */  li        r0, 0x61
/* 0AA090 800AD090 3C60CC01 */  lis       r3, 0xcc01
/* 0AA094 800AD094 98038000 */  stb       r0, -0x8000(r3)
/* 0AA098 800AD098 64A5E800 */  oris      r5, r5, 0xe800
/* 0AA09C 800AD09C 38000000 */  li        r0, 0x0
/* 0AA0A0 800AD0A0 90A38000 */  stw       r5, -0x8000(r3)
/* 0AA0A4 800AD0A4 B0040002 */  sth       r0, 0x2(r4)
/* 0AA0A8 800AD0A8 4E800020 */  blr

glabel fn_800AD0AC
/* 0AA0AC 800AD0AC 81028400 */  lwz       r8, gx@sda21(r0)
/* 0AA0B0 800AD0B0 20030003 */  subfic    r0, r3, 0x3
/* 0AA0B4 800AD0B4 7C070034 */  cntlzw    r7, r0
/* 0AA0B8 800AD0B8 20030002 */  subfic    r0, r3, 0x2
/* 0AA0BC 800AD0BC 812801D0 */  lwz       r9, 0x1d0(r8)
/* 0AA0C0 800AD0C0 50E93528 */  rlwimi    r9, r7, 6, 20, 20
/* 0AA0C4 800AD0C4 38E90000 */  addi      r7, r9, 0x0
/* 0AA0C8 800AD0C8 506707FE */  rlwimi    r7, r3, 0, 31, 31
/* 0AA0CC 800AD0CC 7C000034 */  cntlzw    r0, r0
/* 0AA0D0 800AD0D0 5007E7BC */  rlwimi    r7, r0, 28, 30, 30
/* 0AA0D4 800AD0D4 50C76426 */  rlwimi    r7, r6, 12, 16, 19
/* 0AA0D8 800AD0D8 5087456E */  rlwimi    r7, r4, 8, 21, 23
/* 0AA0DC 800AD0DC 38000061 */  li        r0, 0x61
/* 0AA0E0 800AD0E0 3C60CC01 */  lis       r3, 0xcc01
/* 0AA0E4 800AD0E4 98038000 */  stb       r0, -0x8000(r3)
/* 0AA0E8 800AD0E8 50A72E34 */  rlwimi    r7, r5, 5, 24, 26
/* 0AA0EC 800AD0EC 38000000 */  li        r0, 0x0
/* 0AA0F0 800AD0F0 90E38000 */  stw       r7, -0x8000(r3)
/* 0AA0F4 800AD0F4 90E801D0 */  stw       r7, 0x1d0(r8)
/* 0AA0F8 800AD0F8 B0080002 */  sth       r0, 0x2(r8)
/* 0AA0FC 800AD0FC 4E800020 */  blr

glabel fn_800AD100
/* 0AA100 800AD100 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0AA104 800AD104 38000061 */  li        r0, 0x61
/* 0AA108 800AD108 3C80CC01 */  lis       r4, 0xcc01
/* 0AA10C 800AD10C 80C501D0 */  lwz       r6, 0x1d0(r5)
/* 0AA110 800AD110 50661F38 */  rlwimi    r6, r3, 3, 28, 28
/* 0AA114 800AD114 98048000 */  stb       r0, -0x8000(r4)
/* 0AA118 800AD118 38000000 */  li        r0, 0x0
/* 0AA11C 800AD11C 90C48000 */  stw       r6, -0x8000(r4)
/* 0AA120 800AD120 90C501D0 */  stw       r6, 0x1d0(r5)
/* 0AA124 800AD124 B0050002 */  sth       r0, 0x2(r5)
/* 0AA128 800AD128 4E800020 */  blr

glabel fn_800AD12C
/* 0AA12C 800AD12C 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0AA130 800AD130 38000061 */  li        r0, 0x61
/* 0AA134 800AD134 3C80CC01 */  lis       r4, 0xcc01
/* 0AA138 800AD138 80C501D0 */  lwz       r6, 0x1d0(r5)
/* 0AA13C 800AD13C 506626F6 */  rlwimi    r6, r3, 4, 27, 27
/* 0AA140 800AD140 98048000 */  stb       r0, -0x8000(r4)
/* 0AA144 800AD144 38000000 */  li        r0, 0x0
/* 0AA148 800AD148 90C48000 */  stw       r6, -0x8000(r4)
/* 0AA14C 800AD14C 90C501D0 */  stw       r6, 0x1d0(r5)
/* 0AA150 800AD150 B0050002 */  sth       r0, 0x2(r5)
/* 0AA154 800AD154 4E800020 */  blr

glabel GXSetZMode
/* 0AA158 800AD158 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0AA15C 800AD15C 38000061 */  li        r0, 0x61
/* 0AA160 800AD160 80E601D8 */  lwz       r7, 0x1d8(r6)
/* 0AA164 800AD164 506707FE */  rlwimi    r7, r3, 0, 31, 31
/* 0AA168 800AD168 3C60CC01 */  lis       r3, 0xcc01
/* 0AA16C 800AD16C 98038000 */  stb       r0, -0x8000(r3)
/* 0AA170 800AD170 50870F3C */  rlwimi    r7, r4, 1, 28, 30
/* 0AA174 800AD174 50A726F6 */  rlwimi    r7, r5, 4, 27, 27
/* 0AA178 800AD178 90E38000 */  stw       r7, -0x8000(r3)
/* 0AA17C 800AD17C 38000000 */  li        r0, 0x0
/* 0AA180 800AD180 90E601D8 */  stw       r7, 0x1d8(r6)
/* 0AA184 800AD184 B0060002 */  sth       r0, 0x2(r6)
/* 0AA188 800AD188 4E800020 */  blr

glabel fn_800AD18C
/* 0AA18C 800AD18C 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0AA190 800AD190 546034B2 */  clrlslwi  r0, r3, 24, 6
/* 0AA194 800AD194 38600061 */  li        r3, 0x61
/* 0AA198 800AD198 80A601DC */  lwz       r5, 0x1dc(r6)
/* 0AA19C 800AD19C 3C80CC01 */  lis       r4, 0xcc01
/* 0AA1A0 800AD1A0 54A506B0 */  rlwinm    r5, r5, 0, 26, 24
/* 0AA1A4 800AD1A4 7CA00378 */  or        r0, r5, r0
/* 0AA1A8 800AD1A8 900601DC */  stw       r0, 0x1dc(r6)
/* 0AA1AC 800AD1AC 38000000 */  li        r0, 0x0
/* 0AA1B0 800AD1B0 98648000 */  stb       r3, -0x8000(r4)
/* 0AA1B4 800AD1B4 806601DC */  lwz       r3, 0x1dc(r6)
/* 0AA1B8 800AD1B8 90648000 */  stw       r3, -0x8000(r4)
/* 0AA1BC 800AD1BC B0060002 */  sth       r0, 0x2(r6)
/* 0AA1C0 800AD1C0 4E800020 */  blr

glabel GXSetPixelFmt
/* 0AA1C4 800AD1C4 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0AA1C8 800AD1C8 3CA0800F */  lis       r5, D_800F34A0@ha
/* 0AA1CC 800AD1CC 5466103A */  slwi      r6, r3, 2
/* 0AA1D0 800AD1D0 380534A0 */  addi      r0, r5, D_800F34A0@l
/* 0AA1D4 800AD1D4 810701DC */  lwz       r8, 0x1dc(r7)
/* 0AA1D8 800AD1D8 7D403214 */  add       r10, r0, r6
/* 0AA1DC 800AD1DC 80AA0000 */  lwz       r5, 0x0(r10)
/* 0AA1E0 800AD1E0 55060038 */  clrrwi    r6, r8, 3
/* 0AA1E4 800AD1E4 54801838 */  slwi      r0, r4, 3
/* 0AA1E8 800AD1E8 7CC42B78 */  or        r4, r6, r5
/* 0AA1EC 800AD1EC 908701DC */  stw       r4, 0x1dc(r7)
/* 0AA1F0 800AD1F0 808701DC */  lwz       r4, 0x1dc(r7)
/* 0AA1F4 800AD1F4 54840772 */  rlwinm    r4, r4, 0, 29, 25
/* 0AA1F8 800AD1F8 7C800378 */  or        r0, r4, r0
/* 0AA1FC 800AD1FC 900701DC */  stw       r0, 0x1dc(r7)
/* 0AA200 800AD200 80A701DC */  lwz       r5, 0x1dc(r7)
/* 0AA204 800AD204 7C082840 */  cmplw     r8, r5
/* 0AA208 800AD208 4182004C */  beq       lbl_800AD254
/* 0AA20C 800AD20C 38000061 */  li        r0, 0x61
/* 0AA210 800AD210 3C80CC01 */  lis       r4, 0xcc01
/* 0AA214 800AD214 98048000 */  stb       r0, -0x8000(r4)
/* 0AA218 800AD218 2C030002 */  cmpwi     r3, 0x2
/* 0AA21C 800AD21C 90A48000 */  stw       r5, -0x8000(r4)
/* 0AA220 800AD220 4082000C */  bne       lbl_800AD22C
/* 0AA224 800AD224 38000001 */  li        r0, 0x1
/* 0AA228 800AD228 48000008 */  b         lbl_800AD230
lbl_800AD22C:
/* 0AA22C 800AD22C 38000000 */  li        r0, 0x0
lbl_800AD230:
/* 0AA230 800AD230 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0AA234 800AD234 54004BEC */  clrlslwi  r0, r0, 24, 9
/* 0AA238 800AD238 80850204 */  lwz       r4, 0x204(r5)
/* 0AA23C 800AD23C 548405EA */  rlwinm    r4, r4, 0, 23, 21
/* 0AA240 800AD240 7C800378 */  or        r0, r4, r0
/* 0AA244 800AD244 90050204 */  stw       r0, 0x204(r5)
/* 0AA248 800AD248 800504F4 */  lwz       r0, 0x4f4(r5)
/* 0AA24C 800AD24C 60000004 */  ori       r0, r0, 0x4
/* 0AA250 800AD250 900504F4 */  stw       r0, 0x4f4(r5)
lbl_800AD254:
/* 0AA254 800AD254 800A0000 */  lwz       r0, 0x0(r10)
/* 0AA258 800AD258 28000004 */  cmplwi    r0, 0x4
/* 0AA25C 800AD25C 40820040 */  bne       lbl_800AD29C
/* 0AA260 800AD260 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0AA264 800AD264 3863FFFC */  subi      r3, r3, 0x4
/* 0AA268 800AD268 38000061 */  li        r0, 0x61
/* 0AA26C 800AD26C 808501D4 */  lwz       r4, 0x1d4(r5)
/* 0AA270 800AD270 548405E8 */  rlwinm    r4, r4, 0, 23, 20
/* 0AA274 800AD274 50644D6C */  rlwimi    r4, r3, 9, 21, 22
/* 0AA278 800AD278 908501D4 */  stw       r4, 0x1d4(r5)
/* 0AA27C 800AD27C 3C60CC01 */  lis       r3, 0xcc01
/* 0AA280 800AD280 808501D4 */  lwz       r4, 0x1d4(r5)
/* 0AA284 800AD284 5484023E */  clrlwi    r4, r4, 8
/* 0AA288 800AD288 64844200 */  oris      r4, r4, 0x4200
/* 0AA28C 800AD28C 908501D4 */  stw       r4, 0x1d4(r5)
/* 0AA290 800AD290 98038000 */  stb       r0, -0x8000(r3)
/* 0AA294 800AD294 800501D4 */  lwz       r0, 0x1d4(r5)
/* 0AA298 800AD298 90038000 */  stw       r0, -0x8000(r3)
lbl_800AD29C:
/* 0AA29C 800AD29C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0AA2A0 800AD2A0 38000000 */  li        r0, 0x0
/* 0AA2A4 800AD2A4 B0030002 */  sth       r0, 0x2(r3)
/* 0AA2A8 800AD2A8 4E800020 */  blr

glabel fn_800AD2AC
/* 0AA2AC 800AD2AC 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0AA2B0 800AD2B0 38000061 */  li        r0, 0x61
/* 0AA2B4 800AD2B4 3C80CC01 */  lis       r4, 0xcc01
/* 0AA2B8 800AD2B8 80A601D0 */  lwz       r5, 0x1d0(r6)
/* 0AA2BC 800AD2BC 546315BA */  clrlslwi  r3, r3, 24, 2
/* 0AA2C0 800AD2C0 54A507B8 */  rlwinm    r5, r5, 0, 30, 28
/* 0AA2C4 800AD2C4 98048000 */  stb       r0, -0x8000(r4)
/* 0AA2C8 800AD2C8 7CA31B78 */  or        r3, r5, r3
/* 0AA2CC 800AD2CC 90648000 */  stw       r3, -0x8000(r4)
/* 0AA2D0 800AD2D0 38000000 */  li        r0, 0x0
/* 0AA2D4 800AD2D4 906601D0 */  stw       r3, 0x1d0(r6)
/* 0AA2D8 800AD2D8 B0060002 */  sth       r0, 0x2(r6)
/* 0AA2DC 800AD2DC 4E800020 */  blr

glabel fn_800AD2E0
/* 0AA2E0 800AD2E0 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0AA2E4 800AD2E4 5485063E */  clrlwi    r5, r4, 24
/* 0AA2E8 800AD2E8 38000061 */  li        r0, 0x61
/* 0AA2EC 800AD2EC 80E601D4 */  lwz       r7, 0x1d4(r6)
/* 0AA2F0 800AD2F0 3C80CC01 */  lis       r4, 0xcc01
/* 0AA2F4 800AD2F4 50A7063E */  rlwimi    r7, r5, 0, 24, 31
/* 0AA2F8 800AD2F8 98048000 */  stb       r0, -0x8000(r4)
/* 0AA2FC 800AD2FC 5460063E */  clrlwi    r0, r3, 24
/* 0AA300 800AD300 38670000 */  addi      r3, r7, 0x0
/* 0AA304 800AD304 500345EE */  rlwimi    r3, r0, 8, 23, 23
/* 0AA308 800AD308 90648000 */  stw       r3, -0x8000(r4)
/* 0AA30C 800AD30C 38000000 */  li        r0, 0x0
/* 0AA310 800AD310 906601D4 */  stw       r3, 0x1d4(r6)
/* 0AA314 800AD314 B0060002 */  sth       r0, 0x2(r6)
/* 0AA318 800AD318 4E800020 */  blr

glabel fn_800AD31C
/* 0AA31C 800AD31C 5480063E */  clrlwi    r0, r4, 24
/* 0AA320 800AD320 80828400 */  lwz       r4, gx@sda21(r0)
/* 0AA324 800AD324 540507FA */  rlwinm    r5, r0, 0, 31, 29
/* 0AA328 800AD328 54600DFC */  clrlslwi  r0, r3, 24, 1
/* 0AA32C 800AD32C 7CA00378 */  or        r0, r5, r0
/* 0AA330 800AD330 5405023E */  clrlwi    r5, r0, 8
/* 0AA334 800AD334 38000061 */  li        r0, 0x61
/* 0AA338 800AD338 3C60CC01 */  lis       r3, 0xcc01
/* 0AA33C 800AD33C 98038000 */  stb       r0, -0x8000(r3)
/* 0AA340 800AD340 64A54400 */  oris      r5, r5, 0x4400
/* 0AA344 800AD344 38000000 */  li        r0, 0x0
/* 0AA348 800AD348 90A38000 */  stw       r5, -0x8000(r3)
/* 0AA34C 800AD34C B0040002 */  sth       r0, 0x2(r4)
/* 0AA350 800AD350 4E800020 */  blr

glabel fn_800AD354
/* 0AA354 800AD354 7C0802A6 */  mflr      r0
/* 0AA358 800AD358 90010004 */  stw       r0, 0x4(r1)
/* 0AA35C 800AD35C 5480B092 */  clrlslwi  r0, r4, 24, 22
/* 0AA360 800AD360 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0AA364 800AD364 93E1001C */  stw       r31, 0x1c(r1)
/* 0AA368 800AD368 3FE0CC01 */  lis       r31, 0xcc01
/* 0AA36C 800AD36C 93C10018 */  stw       r30, 0x18(r1)
/* 0AA370 800AD370 3BC00061 */  li        r30, 0x61
/* 0AA374 800AD374 93A10014 */  stw       r29, 0x14(r1)
/* 0AA378 800AD378 7C7D1B78 */  mr        r29, r3
/* 0AA37C 800AD37C 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0AA380 800AD380 8085007C */  lwz       r4, 0x7c(r5)
/* 0AA384 800AD384 54840290 */  rlwinm    r4, r4, 0, 10, 8
/* 0AA388 800AD388 7C800378 */  or        r0, r4, r0
/* 0AA38C 800AD38C 9005007C */  stw       r0, 0x7c(r5)
/* 0AA390 800AD390 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0AA394 800AD394 8005007C */  lwz       r0, 0x7c(r5)
/* 0AA398 800AD398 901F8000 */  stw       r0, -0x8000(r31)
/* 0AA39C 800AD39C 4BFFF091 */  bl        __GXFlushTextureState
/* 0AA3A0 800AD3A0 57A0063E */  clrlwi    r0, r29, 24
/* 0AA3A4 800AD3A4 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0AA3A8 800AD3A8 64006800 */  oris      r0, r0, 0x6800
/* 0AA3AC 800AD3AC 901F8000 */  stw       r0, -0x8000(r31)
/* 0AA3B0 800AD3B0 4BFFF07D */  bl        __GXFlushTextureState
/* 0AA3B4 800AD3B4 80010024 */  lwz       r0, 0x24(r1)
/* 0AA3B8 800AD3B8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0AA3BC 800AD3BC 83C10018 */  lwz       r30, 0x18(r1)
/* 0AA3C0 800AD3C0 83A10014 */  lwz       r29, 0x14(r1)
/* 0AA3C4 800AD3C4 38210020 */  addi      r1, r1, 0x20
/* 0AA3C8 800AD3C8 7C0803A6 */  mtlr      r0
/* 0AA3CC 800AD3CC 4E800020 */  blr

glabel fn_800AD3D0
/* 0AA3D0 800AD3D0 4E800020 */  blr

# 0x800F34A0 - 0x800F34C0
.section .data, "wa"

.balign 8

glabel D_800F34A0
	.long 0x00000000
	.long 0x00000001
	.long 0x00000002
	.long 0x00000003
	.long 0x00000004
	.long 0x00000004
	.long 0x00000004
	.long 0x00000005

# 0x8018C3A0 - 0x8018C3F8
.section .sdata2, "a"

glabel D_8018C3A0
	.float 0

glabel D_8018C3A4
	.float 0.5

glabel D_8018C3A8
	.double 1

glabel D_8018C3B0
	.float 2

glabel gap_09_8018C3B4_sdata2
.hidden gap_09_8018C3B4_sdata2
	.long 0x00000000

glabel D_8018C3B8
	.double 0.5

glabel D_8018C3C0
	.float 8388638

glabel gap_09_8018C3C4_sdata2
.hidden gap_09_8018C3C4_sdata2
	.long 0x00000000

glabel D_8018C3C8
	.double 4503601774854144

glabel D_8018C3D0
	.double 0

glabel D_8018C3D8
	.float 1

glabel gap_09_8018C3DC_sdata2
.hidden gap_09_8018C3DC_sdata2
	.long 0x00000000

glabel D_8018C3E0
	.double 3

glabel D_8018C3E8
	.float 256

glabel gap_09_8018C3EC_sdata2
.hidden gap_09_8018C3EC_sdata2
	.long 0x00000000

glabel D_8018C3F0
	.double 4503599627370496
