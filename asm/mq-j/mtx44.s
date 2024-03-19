# mtx44.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A6BC8 - 0x800A6D64

glabel C_MTXOrtho
/* 0A3BC8 800A6BC8 ED041828 */  fsubs     f8, f4, f3
/* 0A3BCC 800A6BCC C12283E8 */  lfs       f9, D_8018C328@sda21(r0)
/* 0A3BD0 800A6BD0 EC011028 */  fsubs     f0, f1, f2
/* 0A3BD4 800A6BD4 C0E283EC */  lfs       f7, D_8018C32C@sda21(r0)
/* 0A3BD8 800A6BD8 EC64182A */  fadds     f3, f4, f3
/* 0A3BDC 800A6BDC ED494024 */  fdivs     f10, f9, f8
/* 0A3BE0 800A6BE0 ED090024 */  fdivs     f8, f9, f0
/* 0A3BE4 800A6BE4 EC8702B2 */  fmuls     f4, f7, f10
/* 0A3BE8 800A6BE8 FC601850 */  fneg      f3, f3
/* 0A3BEC 800A6BEC EC062828 */  fsubs     f0, f6, f5
/* 0A3BF0 800A6BF0 D0830000 */  stfs      f4, 0x0(r3)
/* 0A3BF4 800A6BF4 EC21102A */  fadds     f1, f1, f2
/* 0A3BF8 800A6BF8 EC4A00F2 */  fmuls     f2, f10, f3
/* 0A3BFC 800A6BFC C06283F0 */  lfs       f3, D_8018C330@sda21(r0)
/* 0A3C00 800A6C00 FC200850 */  fneg      f1, f1
/* 0A3C04 800A6C04 D0630004 */  stfs      f3, 0x4(r3)
/* 0A3C08 800A6C08 EC890024 */  fdivs     f4, f9, f0
/* 0A3C0C 800A6C0C D0630008 */  stfs      f3, 0x8(r3)
/* 0A3C10 800A6C10 D043000C */  stfs      f2, 0xc(r3)
/* 0A3C14 800A6C14 D0630010 */  stfs      f3, 0x10(r3)
/* 0A3C18 800A6C18 EC470232 */  fmuls     f2, f7, f8
/* 0A3C1C 800A6C1C FC003050 */  fneg      f0, f6
/* 0A3C20 800A6C20 EC280072 */  fmuls     f1, f8, f1
/* 0A3C24 800A6C24 D0430014 */  stfs      f2, 0x14(r3)
/* 0A3C28 800A6C28 EC000132 */  fmuls     f0, f0, f4
/* 0A3C2C 800A6C2C D0630018 */  stfs      f3, 0x18(r3)
/* 0A3C30 800A6C30 D023001C */  stfs      f1, 0x1c(r3)
/* 0A3C34 800A6C34 D0630020 */  stfs      f3, 0x20(r3)
/* 0A3C38 800A6C38 D0630024 */  stfs      f3, 0x24(r3)
/* 0A3C3C 800A6C3C C02283F4 */  lfs       f1, D_8018C334@sda21(r0)
/* 0A3C40 800A6C40 EC210132 */  fmuls     f1, f1, f4
/* 0A3C44 800A6C44 D0230028 */  stfs      f1, 0x28(r3)
/* 0A3C48 800A6C48 D003002C */  stfs      f0, 0x2c(r3)
/* 0A3C4C 800A6C4C D0630030 */  stfs      f3, 0x30(r3)
/* 0A3C50 800A6C50 D0630034 */  stfs      f3, 0x34(r3)
/* 0A3C54 800A6C54 D0630038 */  stfs      f3, 0x38(r3)
/* 0A3C58 800A6C58 D123003C */  stfs      f9, 0x3c(r3)
/* 0A3C5C 800A6C5C 4E800020 */  blr

glabel fn_800A6C60
/* 0A3C60 800A6C60 E0030000 */  psq_l     f0, 0x0(r3), 0, qr0
/* 0A3C64 800A6C64 E0440000 */  psq_l     f2, 0x0(r4), 0, qr0
/* 0A3C68 800A6C68 10C20018 */  ps_muls0  f6, f2, f0
/* 0A3C6C 800A6C6C E0640010 */  psq_l     f3, 0x10(r4), 0, qr0
/* 0A3C70 800A6C70 E0840020 */  psq_l     f4, 0x20(r4), 0, qr0
/* 0A3C74 800A6C74 10C3301E */  ps_madds1 f6, f3, f0, f6
/* 0A3C78 800A6C78 E0230008 */  psq_l     f1, 0x8(r3), 0, qr0
/* 0A3C7C 800A6C7C E0A40030 */  psq_l     f5, 0x30(r4), 0, qr0
/* 0A3C80 800A6C80 10C4305C */  ps_madds0 f6, f4, f1, f6
/* 0A3C84 800A6C84 E0030010 */  psq_l     f0, 0x10(r3), 0, qr0
/* 0A3C88 800A6C88 10C5305E */  ps_madds1 f6, f5, f1, f6
/* 0A3C8C 800A6C8C E0230018 */  psq_l     f1, 0x18(r3), 0, qr0
/* 0A3C90 800A6C90 11020018 */  ps_muls0  f8, f2, f0
/* 0A3C94 800A6C94 1103401E */  ps_madds1 f8, f3, f0, f8
/* 0A3C98 800A6C98 E0030020 */  psq_l     f0, 0x20(r3), 0, qr0
/* 0A3C9C 800A6C9C 1104405C */  ps_madds0 f8, f4, f1, f8
/* 0A3CA0 800A6CA0 1105405E */  ps_madds1 f8, f5, f1, f8
/* 0A3CA4 800A6CA4 E0230028 */  psq_l     f1, 0x28(r3), 0, qr0
/* 0A3CA8 800A6CA8 11420018 */  ps_muls0  f10, f2, f0
/* 0A3CAC 800A6CAC 1143501E */  ps_madds1 f10, f3, f0, f10
/* 0A3CB0 800A6CB0 E0030030 */  psq_l     f0, 0x30(r3), 0, qr0
/* 0A3CB4 800A6CB4 1144505C */  ps_madds0 f10, f4, f1, f10
/* 0A3CB8 800A6CB8 1145505E */  ps_madds1 f10, f5, f1, f10
/* 0A3CBC 800A6CBC E0230038 */  psq_l     f1, 0x38(r3), 0, qr0
/* 0A3CC0 800A6CC0 11820018 */  ps_muls0  f12, f2, f0
/* 0A3CC4 800A6CC4 E0440008 */  psq_l     f2, 0x8(r4), 0, qr0
/* 0A3CC8 800A6CC8 1183601E */  ps_madds1 f12, f3, f0, f12
/* 0A3CCC 800A6CCC E0030000 */  psq_l     f0, 0x0(r3), 0, qr0
/* 0A3CD0 800A6CD0 1184605C */  ps_madds0 f12, f4, f1, f12
/* 0A3CD4 800A6CD4 E0640018 */  psq_l     f3, 0x18(r4), 0, qr0
/* 0A3CD8 800A6CD8 1185605E */  ps_madds1 f12, f5, f1, f12
/* 0A3CDC 800A6CDC E0230008 */  psq_l     f1, 0x8(r3), 0, qr0
/* 0A3CE0 800A6CE0 10E20018 */  ps_muls0  f7, f2, f0
/* 0A3CE4 800A6CE4 E0840028 */  psq_l     f4, 0x28(r4), 0, qr0
/* 0A3CE8 800A6CE8 10E3381E */  ps_madds1 f7, f3, f0, f7
/* 0A3CEC 800A6CEC E0A40038 */  psq_l     f5, 0x38(r4), 0, qr0
/* 0A3CF0 800A6CF0 10E4385C */  ps_madds0 f7, f4, f1, f7
/* 0A3CF4 800A6CF4 E0030010 */  psq_l     f0, 0x10(r3), 0, qr0
/* 0A3CF8 800A6CF8 10E5385E */  ps_madds1 f7, f5, f1, f7
/* 0A3CFC 800A6CFC E0230018 */  psq_l     f1, 0x18(r3), 0, qr0
/* 0A3D00 800A6D00 11220018 */  ps_muls0  f9, f2, f0
/* 0A3D04 800A6D04 F0C50000 */  psq_st    f6, 0x0(r5), 0, qr0
/* 0A3D08 800A6D08 1123481E */  ps_madds1 f9, f3, f0, f9
/* 0A3D0C 800A6D0C E0030020 */  psq_l     f0, 0x20(r3), 0, qr0
/* 0A3D10 800A6D10 1124485C */  ps_madds0 f9, f4, f1, f9
/* 0A3D14 800A6D14 F1050010 */  psq_st    f8, 0x10(r5), 0, qr0
/* 0A3D18 800A6D18 1125485E */  ps_madds1 f9, f5, f1, f9
/* 0A3D1C 800A6D1C E0230028 */  psq_l     f1, 0x28(r3), 0, qr0
/* 0A3D20 800A6D20 11620018 */  ps_muls0  f11, f2, f0
/* 0A3D24 800A6D24 F1450020 */  psq_st    f10, 0x20(r5), 0, qr0
/* 0A3D28 800A6D28 1163581E */  ps_madds1 f11, f3, f0, f11
/* 0A3D2C 800A6D2C E0030030 */  psq_l     f0, 0x30(r3), 0, qr0
/* 0A3D30 800A6D30 1164585C */  ps_madds0 f11, f4, f1, f11
/* 0A3D34 800A6D34 F1850030 */  psq_st    f12, 0x30(r5), 0, qr0
/* 0A3D38 800A6D38 1165585E */  ps_madds1 f11, f5, f1, f11
/* 0A3D3C 800A6D3C E0230038 */  psq_l     f1, 0x38(r3), 0, qr0
/* 0A3D40 800A6D40 11A20018 */  ps_muls0  f13, f2, f0
/* 0A3D44 800A6D44 F0E50008 */  psq_st    f7, 0x8(r5), 0, qr0
/* 0A3D48 800A6D48 11A3681E */  ps_madds1 f13, f3, f0, f13
/* 0A3D4C 800A6D4C F1250018 */  psq_st    f9, 0x18(r5), 0, qr0
/* 0A3D50 800A6D50 11A4685C */  ps_madds0 f13, f4, f1, f13
/* 0A3D54 800A6D54 F1650028 */  psq_st    f11, 0x28(r5), 0, qr0
/* 0A3D58 800A6D58 11A5685E */  ps_madds1 f13, f5, f1, f13
/* 0A3D5C 800A6D5C F1A50038 */  psq_st    f13, 0x38(r5), 0, qr0
/* 0A3D60 800A6D60 4E800020 */  blr

# 0x8018C328 - 0x8018C340
.section .sdata2, "a"

glabel D_8018C328
	.float 1

glabel D_8018C32C
	.float 2

glabel D_8018C330
	.float 0

glabel D_8018C334
	.float -1

glabel D_8018C338
	.float 0.5

glabel D_8018C33C
	.float 0.017453292
