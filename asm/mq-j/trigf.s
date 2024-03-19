# trigf.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800D0C30 - 0x800D101C

glabel tanf
/* 0CDC30 800D0C30 7C0802A6 */  mflr      r0
/* 0CDC34 800D0C34 90010004 */  stw       r0, 0x4(r1)
/* 0CDC38 800D0C38 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0CDC3C 800D0C3C DBE10018 */  stfd      f31, 0x18(r1)
/* 0CDC40 800D0C40 DBC10010 */  stfd      f30, 0x10(r1)
/* 0CDC44 800D0C44 FFC00890 */  fmr       f30, f1
/* 0CDC48 800D0C48 4800002D */  bl        cos__Ff
/* 0CDC4C 800D0C4C FFE00890 */  fmr       f31, f1
/* 0CDC50 800D0C50 FC20F090 */  fmr       f1, f30
/* 0CDC54 800D0C54 48000041 */  bl        sin__Ff
/* 0CDC58 800D0C58 EC21F824 */  fdivs     f1, f1, f31
/* 0CDC5C 800D0C5C 80010024 */  lwz       r0, 0x24(r1)
/* 0CDC60 800D0C60 CBE10018 */  lfd       f31, 0x18(r1)
/* 0CDC64 800D0C64 CBC10010 */  lfd       f30, 0x10(r1)
/* 0CDC68 800D0C68 7C0803A6 */  mtlr      r0
/* 0CDC6C 800D0C6C 38210020 */  addi      r1, r1, 0x20
/* 0CDC70 800D0C70 4E800020 */  blr

# cos(float)
glabel cos__Ff
/* 0CDC74 800D0C74 7C0802A6 */  mflr      r0
/* 0CDC78 800D0C78 90010004 */  stw       r0, 0x4(r1)
/* 0CDC7C 800D0C7C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0CDC80 800D0C80 48000035 */  bl        cosf
/* 0CDC84 800D0C84 8001000C */  lwz       r0, 0xc(r1)
/* 0CDC88 800D0C88 38210008 */  addi      r1, r1, 0x8
/* 0CDC8C 800D0C8C 7C0803A6 */  mtlr      r0
/* 0CDC90 800D0C90 4E800020 */  blr

# sin(float)
glabel sin__Ff
/* 0CDC94 800D0C94 7C0802A6 */  mflr      r0
/* 0CDC98 800D0C98 90010004 */  stw       r0, 0x4(r1)
/* 0CDC9C 800D0C9C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0CDCA0 800D0CA0 480001A9 */  bl        sinf
/* 0CDCA4 800D0CA4 8001000C */  lwz       r0, 0xc(r1)
/* 0CDCA8 800D0CA8 38210008 */  addi      r1, r1, 0x8
/* 0CDCAC 800D0CAC 7C0803A6 */  mtlr      r0
/* 0CDCB0 800D0CB0 4E800020 */  blr

glabel cosf
/* 0CDCB4 800D0CB4 7C0802A6 */  mflr      r0
/* 0CDCB8 800D0CB8 3C60800F */  lis       r3, D_800F51E0@ha
/* 0CDCBC 800D0CBC 90010004 */  stw       r0, 0x4(r1)
/* 0CDCC0 800D0CC0 386351E0 */  addi      r3, r3, D_800F51E0@l
/* 0CDCC4 800D0CC4 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0CDCC8 800D0CC8 DBE10020 */  stfd      f31, 0x20(r1)
/* 0CDCCC 800D0CCC 93E1001C */  stw       r31, 0x1c(r1)
/* 0CDCD0 800D0CD0 D0210008 */  stfs      f1, 0x8(r1)
/* 0CDCD4 800D0CD4 C00286E0 */  lfs       f0, D_8018C620@sda21(r0)
/* 0CDCD8 800D0CD8 80010008 */  lwz       r0, 0x8(r1)
/* 0CDCDC 800D0CDC C0C10008 */  lfs       f6, 0x8(r1)
/* 0CDCE0 800D0CE0 54000001 */  clrrwi.   r0, r0, 31
/* 0CDCE4 800D0CE4 EC2001B2 */  fmuls     f1, f0, f6
/* 0CDCE8 800D0CE8 4182001C */  beq       lbl_800D0D04
/* 0CDCEC 800D0CEC C00286E4 */  lfs       f0, D_8018C624@sda21(r0)
/* 0CDCF0 800D0CF0 EC010028 */  fsubs     f0, f1, f0
/* 0CDCF4 800D0CF4 FC00001E */  fctiwz    f0, f0
/* 0CDCF8 800D0CF8 D8010010 */  stfd      f0, 0x10(r1)
/* 0CDCFC 800D0CFC 80810014 */  lwz       r4, 0x14(r1)
/* 0CDD00 800D0D00 48000018 */  b         lbl_800D0D18
lbl_800D0D04:
/* 0CDD04 800D0D04 C00286E4 */  lfs       f0, D_8018C624@sda21(r0)
/* 0CDD08 800D0D08 EC00082A */  fadds     f0, f0, f1
/* 0CDD0C 800D0D0C FC00001E */  fctiwz    f0, f0
/* 0CDD10 800D0D10 D8010010 */  stfd      f0, 0x10(r1)
/* 0CDD14 800D0D14 80810014 */  lwz       r4, 0x14(r1)
lbl_800D0D18:
/* 0CDD18 800D0D18 5480083C */  slwi      r0, r4, 1
/* 0CDD1C 800D0D1C C82286F0 */  lfd       f1, D_8018C630@sda21(r0)
/* 0CDD20 800D0D20 6C008000 */  xoris     r0, r0, 0x8000
/* 0CDD24 800D0D24 C0430000 */  lfs       f2, 0x0(r3)
/* 0CDD28 800D0D28 90010014 */  stw       r0, 0x14(r1)
/* 0CDD2C 800D0D2C 3C004330 */  lis       r0, 0x4330
/* 0CDD30 800D0D30 C0630004 */  lfs       f3, 0x4(r3)
/* 0CDD34 800D0D34 549F07BE */  clrlwi    r31, r4, 30
/* 0CDD38 800D0D38 90010010 */  stw       r0, 0x10(r1)
/* 0CDD3C 800D0D3C C0830008 */  lfs       f4, 0x8(r3)
/* 0CDD40 800D0D40 C8010010 */  lfd       f0, 0x10(r1)
/* 0CDD44 800D0D44 C0A3000C */  lfs       f5, 0xc(r3)
/* 0CDD48 800D0D48 EC000828 */  fsubs     f0, f0, f1
/* 0CDD4C 800D0D4C EC060028 */  fsubs     f0, f6, f0
/* 0CDD50 800D0D50 EC0201BA */  fmadds    f0, f2, f6, f0
/* 0CDD54 800D0D54 EC0301BA */  fmadds    f0, f3, f6, f0
/* 0CDD58 800D0D58 EC0401BA */  fmadds    f0, f4, f6, f0
/* 0CDD5C 800D0D5C EFE501BA */  fmadds    f31, f5, f6, f0
/* 0CDD60 800D0D60 FC20F890 */  fmr       f1, f31
/* 0CDD64 800D0D64 4BFFFCF1 */  bl        fabsf__Ff
/* 0CDD68 800D0D68 C00286E8 */  lfs       f0, D_8018C628@sda21(r0)
/* 0CDD6C 800D0D6C FC010040 */  fcmpo     cr0, f1, f0
/* 0CDD70 800D0D70 40800024 */  bge       lbl_800D0D94
/* 0CDD74 800D0D74 3C60800F */  lis       r3, __sincos_on_quadrant@ha
/* 0CDD78 800D0D78 57E41838 */  slwi      r4, r31, 3
/* 0CDD7C 800D0D7C 380351F0 */  addi      r0, r3, __sincos_on_quadrant@l
/* 0CDD80 800D0D80 7C602214 */  add       r3, r0, r4
/* 0CDD84 800D0D84 C0230000 */  lfs       f1, 0x0(r3)
/* 0CDD88 800D0D88 C0030004 */  lfs       f0, 0x4(r3)
/* 0CDD8C 800D0D8C EC3F007C */  fnmsubs   f1, f31, f1, f0
/* 0CDD90 800D0D90 480000A0 */  b         lbl_800D0E30
lbl_800D0D94:
/* 0CDD94 800D0D94 57E007FF */  clrlwi.   r0, r31, 31
/* 0CDD98 800D0D98 EC9F07F2 */  fmuls     f4, f31, f31
/* 0CDD9C 800D0D9C 41820050 */  beq       lbl_800D0DEC
/* 0CDDA0 800D0DA0 3C60800F */  lis       r3, __sincos_poly@ha
/* 0CDDA4 800D0DA4 38835210 */  addi      r4, r3, __sincos_poly@l
/* 0CDDA8 800D0DA8 C0440004 */  lfs       f2, 0x4(r4)
/* 0CDDAC 800D0DAC 3C60800F */  lis       r3, __sincos_on_quadrant@ha
/* 0CDDB0 800D0DB0 C024000C */  lfs       f1, 0xc(r4)
/* 0CDDB4 800D0DB4 380351F0 */  addi      r0, r3, __sincos_on_quadrant@l
/* 0CDDB8 800D0DB8 C0040014 */  lfs       f0, 0x14(r4)
/* 0CDDBC 800D0DBC EC62093A */  fmadds    f3, f2, f4, f1
/* 0CDDC0 800D0DC0 C044001C */  lfs       f2, 0x1c(r4)
/* 0CDDC4 800D0DC4 C0240024 */  lfs       f1, 0x24(r4)
/* 0CDDC8 800D0DC8 57E41838 */  slwi      r4, r31, 3
/* 0CDDCC 800D0DCC 7C602214 */  add       r3, r0, r4
/* 0CDDD0 800D0DD0 EC6400FA */  fmadds    f3, f4, f3, f0
/* 0CDDD4 800D0DD4 C0030000 */  lfs       f0, 0x0(r3)
/* 0CDDD8 800D0DD8 EC4410FA */  fmadds    f2, f4, f3, f2
/* 0CDDDC 800D0DDC EC2408BE */  fnmadds   f1, f4, f2, f1
/* 0CDDE0 800D0DE0 EC3F0072 */  fmuls     f1, f31, f1
/* 0CDDE4 800D0DE4 EC210032 */  fmuls     f1, f1, f0
/* 0CDDE8 800D0DE8 48000048 */  b         lbl_800D0E30
lbl_800D0DEC:
/* 0CDDEC 800D0DEC 3C60800F */  lis       r3, __sincos_poly@ha
/* 0CDDF0 800D0DF0 38835210 */  addi      r4, r3, __sincos_poly@l
/* 0CDDF4 800D0DF4 C0440000 */  lfs       f2, 0x0(r4)
/* 0CDDF8 800D0DF8 3C60800F */  lis       r3, __sincos_on_quadrant@ha
/* 0CDDFC 800D0DFC C0240008 */  lfs       f1, 0x8(r4)
/* 0CDE00 800D0E00 386351F0 */  addi      r3, r3, __sincos_on_quadrant@l
/* 0CDE04 800D0E04 57E01838 */  slwi      r0, r31, 3
/* 0CDE08 800D0E08 EC62093A */  fmadds    f3, f2, f4, f1
/* 0CDE0C 800D0E0C C0040010 */  lfs       f0, 0x10(r4)
/* 0CDE10 800D0E10 C0440018 */  lfs       f2, 0x18(r4)
/* 0CDE14 800D0E14 7C630214 */  add       r3, r3, r0
/* 0CDE18 800D0E18 C0240020 */  lfs       f1, 0x20(r4)
/* 0CDE1C 800D0E1C EC6400FA */  fmadds    f3, f4, f3, f0
/* 0CDE20 800D0E20 C0030004 */  lfs       f0, 0x4(r3)
/* 0CDE24 800D0E24 EC4410FA */  fmadds    f2, f4, f3, f2
/* 0CDE28 800D0E28 EC2408BA */  fmadds    f1, f4, f2, f1
/* 0CDE2C 800D0E2C EC210032 */  fmuls     f1, f1, f0
lbl_800D0E30:
/* 0CDE30 800D0E30 8001002C */  lwz       r0, 0x2c(r1)
/* 0CDE34 800D0E34 CBE10020 */  lfd       f31, 0x20(r1)
/* 0CDE38 800D0E38 83E1001C */  lwz       r31, 0x1c(r1)
/* 0CDE3C 800D0E3C 7C0803A6 */  mtlr      r0
/* 0CDE40 800D0E40 38210028 */  addi      r1, r1, 0x28
/* 0CDE44 800D0E44 4E800020 */  blr

glabel sinf
/* 0CDE48 800D0E48 7C0802A6 */  mflr      r0
/* 0CDE4C 800D0E4C 3C60800F */  lis       r3, D_800F51E0@ha
/* 0CDE50 800D0E50 90010004 */  stw       r0, 0x4(r1)
/* 0CDE54 800D0E54 386351E0 */  addi      r3, r3, D_800F51E0@l
/* 0CDE58 800D0E58 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0CDE5C 800D0E5C DBE10020 */  stfd      f31, 0x20(r1)
/* 0CDE60 800D0E60 93E1001C */  stw       r31, 0x1c(r1)
/* 0CDE64 800D0E64 D0210008 */  stfs      f1, 0x8(r1)
/* 0CDE68 800D0E68 C00286E0 */  lfs       f0, D_8018C620@sda21(r0)
/* 0CDE6C 800D0E6C 80010008 */  lwz       r0, 0x8(r1)
/* 0CDE70 800D0E70 C0C10008 */  lfs       f6, 0x8(r1)
/* 0CDE74 800D0E74 54000001 */  clrrwi.   r0, r0, 31
/* 0CDE78 800D0E78 EC2001B2 */  fmuls     f1, f0, f6
/* 0CDE7C 800D0E7C 4182001C */  beq       lbl_800D0E98
/* 0CDE80 800D0E80 C00286E4 */  lfs       f0, D_8018C624@sda21(r0)
/* 0CDE84 800D0E84 EC010028 */  fsubs     f0, f1, f0
/* 0CDE88 800D0E88 FC00001E */  fctiwz    f0, f0
/* 0CDE8C 800D0E8C D8010010 */  stfd      f0, 0x10(r1)
/* 0CDE90 800D0E90 80810014 */  lwz       r4, 0x14(r1)
/* 0CDE94 800D0E94 48000018 */  b         lbl_800D0EAC
lbl_800D0E98:
/* 0CDE98 800D0E98 C00286E4 */  lfs       f0, D_8018C624@sda21(r0)
/* 0CDE9C 800D0E9C EC00082A */  fadds     f0, f0, f1
/* 0CDEA0 800D0EA0 FC00001E */  fctiwz    f0, f0
/* 0CDEA4 800D0EA4 D8010010 */  stfd      f0, 0x10(r1)
/* 0CDEA8 800D0EA8 80810014 */  lwz       r4, 0x14(r1)
lbl_800D0EAC:
/* 0CDEAC 800D0EAC 5480083C */  slwi      r0, r4, 1
/* 0CDEB0 800D0EB0 C82286F0 */  lfd       f1, D_8018C630@sda21(r0)
/* 0CDEB4 800D0EB4 6C008000 */  xoris     r0, r0, 0x8000
/* 0CDEB8 800D0EB8 C0430000 */  lfs       f2, 0x0(r3)
/* 0CDEBC 800D0EBC 90010014 */  stw       r0, 0x14(r1)
/* 0CDEC0 800D0EC0 3C004330 */  lis       r0, 0x4330
/* 0CDEC4 800D0EC4 C0630004 */  lfs       f3, 0x4(r3)
/* 0CDEC8 800D0EC8 549F07BE */  clrlwi    r31, r4, 30
/* 0CDECC 800D0ECC 90010010 */  stw       r0, 0x10(r1)
/* 0CDED0 800D0ED0 C0830008 */  lfs       f4, 0x8(r3)
/* 0CDED4 800D0ED4 C8010010 */  lfd       f0, 0x10(r1)
/* 0CDED8 800D0ED8 C0A3000C */  lfs       f5, 0xc(r3)
/* 0CDEDC 800D0EDC EC000828 */  fsubs     f0, f0, f1
/* 0CDEE0 800D0EE0 EC060028 */  fsubs     f0, f6, f0
/* 0CDEE4 800D0EE4 EC0201BA */  fmadds    f0, f2, f6, f0
/* 0CDEE8 800D0EE8 EC0301BA */  fmadds    f0, f3, f6, f0
/* 0CDEEC 800D0EEC EC0401BA */  fmadds    f0, f4, f6, f0
/* 0CDEF0 800D0EF0 EFE501BA */  fmadds    f31, f5, f6, f0
/* 0CDEF4 800D0EF4 FC20F890 */  fmr       f1, f31
/* 0CDEF8 800D0EF8 4BFFFB5D */  bl        fabsf__Ff
/* 0CDEFC 800D0EFC C00286E8 */  lfs       f0, D_8018C628@sda21(r0)
/* 0CDF00 800D0F00 FC010040 */  fcmpo     cr0, f1, f0
/* 0CDF04 800D0F04 40800034 */  bge       lbl_800D0F38
/* 0CDF08 800D0F08 3C60800F */  lis       r3, __sincos_on_quadrant@ha
/* 0CDF0C 800D0F0C 57E41838 */  slwi      r4, r31, 3
/* 0CDF10 800D0F10 380351F0 */  addi      r0, r3, __sincos_on_quadrant@l
/* 0CDF14 800D0F14 7C602214 */  add       r3, r0, r4
/* 0CDF18 800D0F18 C0230004 */  lfs       f1, 0x4(r3)
/* 0CDF1C 800D0F1C 3C80800F */  lis       r4, __sincos_poly@ha
/* 0CDF20 800D0F20 38845210 */  addi      r4, r4, __sincos_poly@l
/* 0CDF24 800D0F24 C0030000 */  lfs       f0, 0x0(r3)
/* 0CDF28 800D0F28 EC3F0072 */  fmuls     f1, f31, f1
/* 0CDF2C 800D0F2C C0440024 */  lfs       f2, 0x24(r4)
/* 0CDF30 800D0F30 EC22007A */  fmadds    f1, f2, f1, f0
/* 0CDF34 800D0F34 480000A0 */  b         lbl_800D0FD4
lbl_800D0F38:
/* 0CDF38 800D0F38 57E007FF */  clrlwi.   r0, r31, 31
/* 0CDF3C 800D0F3C EC9F07F2 */  fmuls     f4, f31, f31
/* 0CDF40 800D0F40 4182004C */  beq       lbl_800D0F8C
/* 0CDF44 800D0F44 3C60800F */  lis       r3, __sincos_poly@ha
/* 0CDF48 800D0F48 38835210 */  addi      r4, r3, __sincos_poly@l
/* 0CDF4C 800D0F4C C0440000 */  lfs       f2, 0x0(r4)
/* 0CDF50 800D0F50 3C60800F */  lis       r3, __sincos_on_quadrant@ha
/* 0CDF54 800D0F54 C0240008 */  lfs       f1, 0x8(r4)
/* 0CDF58 800D0F58 380351F0 */  addi      r0, r3, __sincos_on_quadrant@l
/* 0CDF5C 800D0F5C C0040010 */  lfs       f0, 0x10(r4)
/* 0CDF60 800D0F60 EC62093A */  fmadds    f3, f2, f4, f1
/* 0CDF64 800D0F64 C0440018 */  lfs       f2, 0x18(r4)
/* 0CDF68 800D0F68 C0240020 */  lfs       f1, 0x20(r4)
/* 0CDF6C 800D0F6C 57E41838 */  slwi      r4, r31, 3
/* 0CDF70 800D0F70 7C602214 */  add       r3, r0, r4
/* 0CDF74 800D0F74 EC6400FA */  fmadds    f3, f4, f3, f0
/* 0CDF78 800D0F78 C0030000 */  lfs       f0, 0x0(r3)
/* 0CDF7C 800D0F7C EC4410FA */  fmadds    f2, f4, f3, f2
/* 0CDF80 800D0F80 EC2408BA */  fmadds    f1, f4, f2, f1
/* 0CDF84 800D0F84 EC210032 */  fmuls     f1, f1, f0
/* 0CDF88 800D0F88 4800004C */  b         lbl_800D0FD4
lbl_800D0F8C:
/* 0CDF8C 800D0F8C 3C60800F */  lis       r3, __sincos_poly@ha
/* 0CDF90 800D0F90 38835210 */  addi      r4, r3, __sincos_poly@l
/* 0CDF94 800D0F94 C0440004 */  lfs       f2, 0x4(r4)
/* 0CDF98 800D0F98 3C60800F */  lis       r3, __sincos_on_quadrant@ha
/* 0CDF9C 800D0F9C C024000C */  lfs       f1, 0xc(r4)
/* 0CDFA0 800D0FA0 386351F0 */  addi      r3, r3, __sincos_on_quadrant@l
/* 0CDFA4 800D0FA4 57E01838 */  slwi      r0, r31, 3
/* 0CDFA8 800D0FA8 EC62093A */  fmadds    f3, f2, f4, f1
/* 0CDFAC 800D0FAC C0040014 */  lfs       f0, 0x14(r4)
/* 0CDFB0 800D0FB0 C044001C */  lfs       f2, 0x1c(r4)
/* 0CDFB4 800D0FB4 7C630214 */  add       r3, r3, r0
/* 0CDFB8 800D0FB8 C0240024 */  lfs       f1, 0x24(r4)
/* 0CDFBC 800D0FBC EC6400FA */  fmadds    f3, f4, f3, f0
/* 0CDFC0 800D0FC0 C0030004 */  lfs       f0, 0x4(r3)
/* 0CDFC4 800D0FC4 EC4410FA */  fmadds    f2, f4, f3, f2
/* 0CDFC8 800D0FC8 EC2408BA */  fmadds    f1, f4, f2, f1
/* 0CDFCC 800D0FCC EC3F0072 */  fmuls     f1, f31, f1
/* 0CDFD0 800D0FD0 EC210032 */  fmuls     f1, f1, f0
lbl_800D0FD4:
/* 0CDFD4 800D0FD4 8001002C */  lwz       r0, 0x2c(r1)
/* 0CDFD8 800D0FD8 CBE10020 */  lfd       f31, 0x20(r1)
/* 0CDFDC 800D0FDC 83E1001C */  lwz       r31, 0x1c(r1)
/* 0CDFE0 800D0FE0 7C0803A6 */  mtlr      r0
/* 0CDFE4 800D0FE4 38210028 */  addi      r1, r1, 0x28
/* 0CDFE8 800D0FE8 4E800020 */  blr

glabel __sinit_trigf_c
/* 0CDFEC 800D0FEC 3C60800D */  lis       r3, D_800D22E0@ha
/* 0CDFF0 800D0FF0 388322E0 */  addi      r4, r3, D_800D22E0@l
/* 0CDFF4 800D0FF4 C0040000 */  lfs       f0, 0x0(r4)
/* 0CDFF8 800D0FF8 3C60800F */  lis       r3, D_800F51E0@ha
/* 0CDFFC 800D0FFC D40351E0 */  stfsu     f0, D_800F51E0@l(r3)
/* 0CE000 800D1000 C0040004 */  lfs       f0, 0x4(r4)
/* 0CE004 800D1004 D0030004 */  stfs      f0, 0x4(r3)
/* 0CE008 800D1008 C0040008 */  lfs       f0, 0x8(r4)
/* 0CE00C 800D100C D0030008 */  stfs      f0, 0x8(r3)
/* 0CE010 800D1010 C004000C */  lfs       f0, 0xc(r4)
/* 0CE014 800D1014 D003000C */  stfs      f0, 0xc(r3)
/* 0CE018 800D1018 4E800020 */  blr

# 0x800D1B80 - 0x800D1B84
.section .ctors, "a"
	.long __sinit_trigf_c

# 0x800D22E0 - 0x800D22F0
.section .rodata, "a"

.balign 8

glabel D_800D22E0
	.float 0.25
	.float 0.023239374
	.float 0.00000017055572
	.float 0.00000000001867365

# 0x800F51E0 - 0x800F51F0
.section .data, "wa"

.balign 8

glabel D_800F51E0
	.float 0
	.float 0
	.float 0
	.float 0

# 0x8018C620 - 0x8018C638
.section .sdata2, "a"

glabel D_8018C620
	.float 0.63661975

glabel D_8018C624
	.float 0.5

glabel D_8018C628
	.float 0.00034526698

glabel gap_09_8018C62C_sdata2
.hidden gap_09_8018C62C_sdata2
	.long 0x00000000

glabel D_8018C630
	.double 4503601774854144
