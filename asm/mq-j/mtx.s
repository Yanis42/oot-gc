# mtx.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A68AC - 0x800A6AA4

glabel PSMTXIdentity
/* 0A38AC 800A68AC C00283E4 */  lfs       f0, D_8018C324@sda21(r0)
/* 0A38B0 800A68B0 C02283E0 */  lfs       f1, D_8018C320@sda21(r0)
/* 0A38B4 800A68B4 F0030008 */  psq_st    f0, 0x8(r3), 0, qr0
/* 0A38B8 800A68B8 10400C60 */  ps_merge01 f2, f0, f1
/* 0A38BC 800A68BC F0030018 */  psq_st    f0, 0x18(r3), 0, qr0
/* 0A38C0 800A68C0 102104A0 */  ps_merge10 f1, f1, f0
/* 0A38C4 800A68C4 F0030020 */  psq_st    f0, 0x20(r3), 0, qr0
/* 0A38C8 800A68C8 F0430010 */  psq_st    f2, 0x10(r3), 0, qr0
/* 0A38CC 800A68CC F0230000 */  psq_st    f1, 0x0(r3), 0, qr0
/* 0A38D0 800A68D0 F0230028 */  psq_st    f1, 0x28(r3), 0, qr0
/* 0A38D4 800A68D4 4E800020 */  blr

glabel PSMTXConcat
/* 0A38D8 800A68D8 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0A38DC 800A68DC E0030000 */  psq_l     f0, 0x0(r3), 0, qr0
/* 0A38E0 800A68E0 D9C10008 */  stfd      f14, 0x8(r1)
/* 0A38E4 800A68E4 E0C40000 */  psq_l     f6, 0x0(r4), 0, qr0
/* 0A38E8 800A68E8 3CC08019 */  lis       r6, D_8018B6F0@ha
/* 0A38EC 800A68EC E0E40008 */  psq_l     f7, 0x8(r4), 0, qr0
/* 0A38F0 800A68F0 D9E10010 */  stfd      f15, 0x10(r1)
/* 0A38F4 800A68F4 38C6B6F0 */  addi      r6, r6, D_8018B6F0@l
/* 0A38F8 800A68F8 DBE10028 */  stfd      f31, 0x28(r1)
/* 0A38FC 800A68FC E1040010 */  psq_l     f8, 0x10(r4), 0, qr0
/* 0A3900 800A6900 11860018 */  ps_muls0  f12, f6, f0
/* 0A3904 800A6904 E0430010 */  psq_l     f2, 0x10(r3), 0, qr0
/* 0A3908 800A6908 11A70018 */  ps_muls0  f13, f7, f0
/* 0A390C 800A690C E3E60000 */  psq_l     f31, 0x0(r6), 0, qr0
/* 0A3910 800A6910 11C60098 */  ps_muls0  f14, f6, f2
/* 0A3914 800A6914 E1240018 */  psq_l     f9, 0x18(r4), 0, qr0
/* 0A3918 800A6918 11E70098 */  ps_muls0  f15, f7, f2
/* 0A391C 800A691C E0230008 */  psq_l     f1, 0x8(r3), 0, qr0
/* 0A3920 800A6920 1188601E */  ps_madds1 f12, f8, f0, f12
/* 0A3924 800A6924 E0630018 */  psq_l     f3, 0x18(r3), 0, qr0
/* 0A3928 800A6928 11C8709E */  ps_madds1 f14, f8, f2, f14
/* 0A392C 800A692C E1440020 */  psq_l     f10, 0x20(r4), 0, qr0
/* 0A3930 800A6930 11A9681E */  ps_madds1 f13, f9, f0, f13
/* 0A3934 800A6934 E1640028 */  psq_l     f11, 0x28(r4), 0, qr0
/* 0A3938 800A6938 11E9789E */  ps_madds1 f15, f9, f2, f15
/* 0A393C 800A693C E0830020 */  psq_l     f4, 0x20(r3), 0, qr0
/* 0A3940 800A6940 E0A30028 */  psq_l     f5, 0x28(r3), 0, qr0
/* 0A3944 800A6944 118A605C */  ps_madds0 f12, f10, f1, f12
/* 0A3948 800A6948 11AB685C */  ps_madds0 f13, f11, f1, f13
/* 0A394C 800A694C 11CA70DC */  ps_madds0 f14, f10, f3, f14
/* 0A3950 800A6950 11EB78DC */  ps_madds0 f15, f11, f3, f15
/* 0A3954 800A6954 F1850000 */  psq_st    f12, 0x0(r5), 0, qr0
/* 0A3958 800A6958 10460118 */  ps_muls0  f2, f6, f4
/* 0A395C 800A695C 11BF685E */  ps_madds1 f13, f31, f1, f13
/* 0A3960 800A6960 10070118 */  ps_muls0  f0, f7, f4
/* 0A3964 800A6964 F1C50010 */  psq_st    f14, 0x10(r5), 0, qr0
/* 0A3968 800A6968 11FF78DE */  ps_madds1 f15, f31, f3, f15
/* 0A396C 800A696C F1A50008 */  psq_st    f13, 0x8(r5), 0, qr0
/* 0A3970 800A6970 1048111E */  ps_madds1 f2, f8, f4, f2
/* 0A3974 800A6974 1009011E */  ps_madds1 f0, f9, f4, f0
/* 0A3978 800A6978 104A115C */  ps_madds0 f2, f10, f5, f2
/* 0A397C 800A697C C9C10008 */  lfd       f14, 0x8(r1)
/* 0A3980 800A6980 F1E50018 */  psq_st    f15, 0x18(r5), 0, qr0
/* 0A3984 800A6984 100B015C */  ps_madds0 f0, f11, f5, f0
/* 0A3988 800A6988 F0450020 */  psq_st    f2, 0x20(r5), 0, qr0
/* 0A398C 800A698C 101F015E */  ps_madds1 f0, f31, f5, f0
/* 0A3990 800A6990 C9E10010 */  lfd       f15, 0x10(r1)
/* 0A3994 800A6994 F0050028 */  psq_st    f0, 0x28(r5), 0, qr0
/* 0A3998 800A6998 CBE10028 */  lfd       f31, 0x28(r1)
/* 0A399C 800A699C 38210040 */  addi      r1, r1, 0x40
/* 0A39A0 800A69A0 4E800020 */  blr

glabel PSMTXTrans
/* 0A39A4 800A69A4 C00283E4 */  lfs       f0, D_8018C324@sda21(r0)
/* 0A39A8 800A69A8 C08283E0 */  lfs       f4, D_8018C320@sda21(r0)
/* 0A39AC 800A69AC D023000C */  stfs      f1, 0xc(r3)
/* 0A39B0 800A69B0 D043001C */  stfs      f2, 0x1c(r3)
/* 0A39B4 800A69B4 F0030004 */  psq_st    f0, 0x4(r3), 0, qr0
/* 0A39B8 800A69B8 F0030020 */  psq_st    f0, 0x20(r3), 0, qr0
/* 0A39BC 800A69BC D0030010 */  stfs      f0, 0x10(r3)
/* 0A39C0 800A69C0 D0830014 */  stfs      f4, 0x14(r3)
/* 0A39C4 800A69C4 D0030018 */  stfs      f0, 0x18(r3)
/* 0A39C8 800A69C8 D0830028 */  stfs      f4, 0x28(r3)
/* 0A39CC 800A69CC D063002C */  stfs      f3, 0x2c(r3)
/* 0A39D0 800A69D0 D0830000 */  stfs      f4, 0x0(r3)
/* 0A39D4 800A69D4 4E800020 */  blr

glabel PSMTXTransApply
/* 0A39D8 800A69D8 E0830000 */  psq_l     f4, 0x0(r3), 0, qr0
/* 0A39DC 800A69DC FC200818 */  frsp      f1, f1
/* 0A39E0 800A69E0 E0A30008 */  psq_l     f5, 0x8(r3), 0, qr0
/* 0A39E4 800A69E4 FC401018 */  frsp      f2, f2
/* 0A39E8 800A69E8 E0E30018 */  psq_l     f7, 0x18(r3), 0, qr0
/* 0A39EC 800A69EC FC601818 */  frsp      f3, f3
/* 0A39F0 800A69F0 E1030028 */  psq_l     f8, 0x28(r3), 0, qr0
/* 0A39F4 800A69F4 F0840000 */  psq_st    f4, 0x0(r4), 0, qr0
/* 0A39F8 800A69F8 10A12956 */  ps_sum1   f5, f1, f5, f5
/* 0A39FC 800A69FC E0C30010 */  psq_l     f6, 0x10(r3), 0, qr0
/* 0A3A00 800A6A00 F0A40008 */  psq_st    f5, 0x8(r4), 0, qr0
/* 0A3A04 800A6A04 10E239D6 */  ps_sum1   f7, f2, f7, f7
/* 0A3A08 800A6A08 E1230020 */  psq_l     f9, 0x20(r3), 0, qr0
/* 0A3A0C 800A6A0C F0C40010 */  psq_st    f6, 0x10(r4), 0, qr0
/* 0A3A10 800A6A10 11034216 */  ps_sum1   f8, f3, f8, f8
/* 0A3A14 800A6A14 F0E40018 */  psq_st    f7, 0x18(r4), 0, qr0
/* 0A3A18 800A6A18 F1240020 */  psq_st    f9, 0x20(r4), 0, qr0
/* 0A3A1C 800A6A1C F1040028 */  psq_st    f8, 0x28(r4), 0, qr0
/* 0A3A20 800A6A20 4E800020 */  blr

glabel PSMTXScale
/* 0A3A24 800A6A24 C00283E4 */  lfs       f0, D_8018C324@sda21(r0)
/* 0A3A28 800A6A28 D0230000 */  stfs      f1, 0x0(r3)
/* 0A3A2C 800A6A2C F0030004 */  psq_st    f0, 0x4(r3), 0, qr0
/* 0A3A30 800A6A30 F003000C */  psq_st    f0, 0xc(r3), 0, qr0
/* 0A3A34 800A6A34 D0430014 */  stfs      f2, 0x14(r3)
/* 0A3A38 800A6A38 F0030018 */  psq_st    f0, 0x18(r3), 0, qr0
/* 0A3A3C 800A6A3C F0030020 */  psq_st    f0, 0x20(r3), 0, qr0
/* 0A3A40 800A6A40 D0630028 */  stfs      f3, 0x28(r3)
/* 0A3A44 800A6A44 D003002C */  stfs      f0, 0x2c(r3)
/* 0A3A48 800A6A48 4E800020 */  blr

glabel PSMTXScaleApply
/* 0A3A4C 800A6A4C FC200818 */  frsp      f1, f1
/* 0A3A50 800A6A50 E0830000 */  psq_l     f4, 0x0(r3), 0, qr0
/* 0A3A54 800A6A54 FC401018 */  frsp      f2, f2
/* 0A3A58 800A6A58 E0A30008 */  psq_l     f5, 0x8(r3), 0, qr0
/* 0A3A5C 800A6A5C FC601818 */  frsp      f3, f3
/* 0A3A60 800A6A60 10840058 */  ps_muls0  f4, f4, f1
/* 0A3A64 800A6A64 E0C30010 */  psq_l     f6, 0x10(r3), 0, qr0
/* 0A3A68 800A6A68 10A50058 */  ps_muls0  f5, f5, f1
/* 0A3A6C 800A6A6C E0E30018 */  psq_l     f7, 0x18(r3), 0, qr0
/* 0A3A70 800A6A70 10C60098 */  ps_muls0  f6, f6, f2
/* 0A3A74 800A6A74 E1030020 */  psq_l     f8, 0x20(r3), 0, qr0
/* 0A3A78 800A6A78 F0840000 */  psq_st    f4, 0x0(r4), 0, qr0
/* 0A3A7C 800A6A7C 10E70098 */  ps_muls0  f7, f7, f2
/* 0A3A80 800A6A80 E0430028 */  psq_l     f2, 0x28(r3), 0, qr0
/* 0A3A84 800A6A84 F0A40008 */  psq_st    f5, 0x8(r4), 0, qr0
/* 0A3A88 800A6A88 110800D8 */  ps_muls0  f8, f8, f3
/* 0A3A8C 800A6A8C F0C40010 */  psq_st    f6, 0x10(r4), 0, qr0
/* 0A3A90 800A6A90 104200D8 */  ps_muls0  f2, f2, f3
/* 0A3A94 800A6A94 F0E40018 */  psq_st    f7, 0x18(r4), 0, qr0
/* 0A3A98 800A6A98 F1040020 */  psq_st    f8, 0x20(r4), 0, qr0
/* 0A3A9C 800A6A9C F0440028 */  psq_st    f2, 0x28(r4), 0, qr0
/* 0A3AA0 800A6AA0 4E800020 */  blr

# 0x8018B6F0 - 0x8018B6F8
.section .sdata, "wa"

glabel D_8018B6F0
	.float 0
	.float 1

# 0x8018C320 - 0x8018C328
.section .sdata2, "a"

glabel D_8018C320
	.float 1

glabel D_8018C324
	.float 0
