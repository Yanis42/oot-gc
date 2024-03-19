# mtxvec.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A6AA4 - 0x800A6BC8

glabel fn_800A6AA4
/* 0A3AA4 800A6AA4 E0040000 */  psq_l     f0, 0x0(r4), 0, qr0
/* 0A3AA8 800A6AA8 E0430000 */  psq_l     f2, 0x0(r3), 0, qr0
/* 0A3AAC 800A6AAC E0248008 */  psq_l     f1, 0x8(r4), 1, qr0
/* 0A3AB0 800A6AB0 10820032 */  ps_mul    f4, f2, f0
/* 0A3AB4 800A6AB4 E0630008 */  psq_l     f3, 0x8(r3), 0, qr0
/* 0A3AB8 800A6AB8 10A3207A */  ps_madd   f5, f3, f1, f4
/* 0A3ABC 800A6ABC E1030010 */  psq_l     f8, 0x10(r3), 0, qr0
/* 0A3AC0 800A6AC0 10C52994 */  ps_sum0   f6, f5, f6, f5
/* 0A3AC4 800A6AC4 E1230018 */  psq_l     f9, 0x18(r3), 0, qr0
/* 0A3AC8 800A6AC8 11480032 */  ps_mul    f10, f8, f0
/* 0A3ACC 800A6ACC F0C58000 */  psq_st    f6, 0x0(r5), 1, qr0
/* 0A3AD0 800A6AD0 1169507A */  ps_madd   f11, f9, f1, f10
/* 0A3AD4 800A6AD4 E0430020 */  psq_l     f2, 0x20(r3), 0, qr0
/* 0A3AD8 800A6AD8 118B5B14 */  ps_sum0   f12, f11, f12, f11
/* 0A3ADC 800A6ADC E0630028 */  psq_l     f3, 0x28(r3), 0, qr0
/* 0A3AE0 800A6AE0 10820032 */  ps_mul    f4, f2, f0
/* 0A3AE4 800A6AE4 F1858004 */  psq_st    f12, 0x4(r5), 1, qr0
/* 0A3AE8 800A6AE8 10A3207A */  ps_madd   f5, f3, f1, f4
/* 0A3AEC 800A6AEC 10C52994 */  ps_sum0   f6, f5, f6, f5
/* 0A3AF0 800A6AF0 F0C58008 */  psq_st    f6, 0x8(r5), 1, qr0
/* 0A3AF4 800A6AF4 4E800020 */  blr

glabel fn_800A6AF8
/* 0A3AF8 800A6AF8 7C0802A6 */  mflr      r0
/* 0A3AFC 800A6AFC 90010004 */  stw       r0, 0x4(r1)
/* 0A3B00 800A6B00 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0A3B04 800A6B04 DBE10038 */  stfd      f31, 0x38(r1)
/* 0A3B08 800A6B08 FFE02090 */  fmr       f31, f4
/* 0A3B0C 800A6B0C DBC10030 */  stfd      f30, 0x30(r1)
/* 0A3B10 800A6B10 FFC01890 */  fmr       f30, f3
/* 0A3B14 800A6B14 DBA10028 */  stfd      f29, 0x28(r1)
/* 0A3B18 800A6B18 FFA01090 */  fmr       f29, f2
/* 0A3B1C 800A6B1C 93E10024 */  stw       r31, 0x24(r1)
/* 0A3B20 800A6B20 7C7F1B78 */  mr        r31, r3
/* 0A3B24 800A6B24 C0A283F8 */  lfs       f5, D_8018C338@sda21(r0)
/* 0A3B28 800A6B28 C00283FC */  lfs       f0, D_8018C33C@sda21(r0)
/* 0A3B2C 800A6B2C EC250072 */  fmuls     f1, f5, f1
/* 0A3B30 800A6B30 EC200072 */  fmuls     f1, f0, f1
/* 0A3B34 800A6B34 4802A0FD */  bl        tanf
/* 0A3B38 800A6B38 C06283E8 */  lfs       f3, D_8018C328@sda21(r0)
/* 0A3B3C 800A6B3C EC5FF028 */  fsubs     f2, f31, f30
/* 0A3B40 800A6B40 EC1F07B2 */  fmuls     f0, f31, f30
/* 0A3B44 800A6B44 EC830824 */  fdivs     f4, f3, f1
/* 0A3B48 800A6B48 EC24E824 */  fdivs     f1, f4, f29
/* 0A3B4C 800A6B4C D03F0000 */  stfs      f1, 0x0(r31)
/* 0A3B50 800A6B50 EC631024 */  fdivs     f3, f3, f2
/* 0A3B54 800A6B54 C04283F0 */  lfs       f2, D_8018C330@sda21(r0)
/* 0A3B58 800A6B58 D05F0004 */  stfs      f2, 0x4(r31)
/* 0A3B5C 800A6B5C D05F0008 */  stfs      f2, 0x8(r31)
/* 0A3B60 800A6B60 D05F000C */  stfs      f2, 0xc(r31)
/* 0A3B64 800A6B64 D05F0010 */  stfs      f2, 0x10(r31)
/* 0A3B68 800A6B68 FC20F050 */  fneg      f1, f30
/* 0A3B6C 800A6B6C FC000050 */  fneg      f0, f0
/* 0A3B70 800A6B70 D09F0014 */  stfs      f4, 0x14(r31)
/* 0A3B74 800A6B74 EC2100F2 */  fmuls     f1, f1, f3
/* 0A3B78 800A6B78 D05F0018 */  stfs      f2, 0x18(r31)
/* 0A3B7C 800A6B7C EC030032 */  fmuls     f0, f3, f0
/* 0A3B80 800A6B80 D05F001C */  stfs      f2, 0x1c(r31)
/* 0A3B84 800A6B84 D05F0020 */  stfs      f2, 0x20(r31)
/* 0A3B88 800A6B88 D05F0024 */  stfs      f2, 0x24(r31)
/* 0A3B8C 800A6B8C D03F0028 */  stfs      f1, 0x28(r31)
/* 0A3B90 800A6B90 D01F002C */  stfs      f0, 0x2c(r31)
/* 0A3B94 800A6B94 D05F0030 */  stfs      f2, 0x30(r31)
/* 0A3B98 800A6B98 D05F0034 */  stfs      f2, 0x34(r31)
/* 0A3B9C 800A6B9C C00283F4 */  lfs       f0, D_8018C334@sda21(r0)
/* 0A3BA0 800A6BA0 D01F0038 */  stfs      f0, 0x38(r31)
/* 0A3BA4 800A6BA4 D05F003C */  stfs      f2, 0x3c(r31)
/* 0A3BA8 800A6BA8 80010044 */  lwz       r0, 0x44(r1)
/* 0A3BAC 800A6BAC CBE10038 */  lfd       f31, 0x38(r1)
/* 0A3BB0 800A6BB0 CBC10030 */  lfd       f30, 0x30(r1)
/* 0A3BB4 800A6BB4 CBA10028 */  lfd       f29, 0x28(r1)
/* 0A3BB8 800A6BB8 83E10024 */  lwz       r31, 0x24(r1)
/* 0A3BBC 800A6BBC 38210040 */  addi      r1, r1, 0x40
/* 0A3BC0 800A6BC0 7C0803A6 */  mtlr      r0
/* 0A3BC4 800A6BC4 4E800020 */  blr
