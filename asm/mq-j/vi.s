# vi.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A4CE4 - 0x800A67C0

glabel fn_800A4CE4
/* 0A1CE4 800A4CE4 7C0802A6 */  mflr      r0
/* 0A1CE8 800A4CE8 3C60CC00 */  lis       r3, 0xcc00
/* 0A1CEC 800A4CEC 90010004 */  stw       r0, 0x4(r1)
/* 0A1CF0 800A4CF0 38A32000 */  addi      r5, r3, 0x2000
/* 0A1CF4 800A4CF4 3C608019 */  lis       r3, D_80188050@ha
/* 0A1CF8 800A4CF8 9421FD08 */  stwu      r1, -0x2f8(r1)
/* 0A1CFC 800A4CFC 38E00000 */  li        r7, 0x0
/* 0A1D00 800A4D00 BF6102E4 */  stmw      r27, 0x2e4(r1)
/* 0A1D04 800A4D04 3BC40000 */  addi      r30, r4, 0x0
/* 0A1D08 800A4D08 3BE38050 */  addi      r31, r3, D_80188050@l
/* 0A1D0C 800A4D0C A4C50030 */  lhzu      r6, 0x30(r5)
/* 0A1D10 800A4D10 54C00421 */  rlwinm.   r0, r6, 0, 16, 16
/* 0A1D14 800A4D14 41820010 */  beq       lbl_800A4D24
/* 0A1D18 800A4D18 54C0045E */  rlwinm    r0, r6, 0, 17, 15
/* 0A1D1C 800A4D1C B0050000 */  sth       r0, 0x0(r5)
/* 0A1D20 800A4D20 60E70001 */  ori       r7, r7, 0x1
lbl_800A4D24:
/* 0A1D24 800A4D24 3C60CC00 */  lis       r3, 0xcc00
/* 0A1D28 800A4D28 A4832034 */  lhzu      r4, 0x2034(r3)
/* 0A1D2C 800A4D2C 54800421 */  rlwinm.   r0, r4, 0, 16, 16
/* 0A1D30 800A4D30 41820010 */  beq       lbl_800A4D40
/* 0A1D34 800A4D34 5480045E */  rlwinm    r0, r4, 0, 17, 15
/* 0A1D38 800A4D38 B0030000 */  sth       r0, 0x0(r3)
/* 0A1D3C 800A4D3C 60E70002 */  ori       r7, r7, 0x2
lbl_800A4D40:
/* 0A1D40 800A4D40 3C60CC00 */  lis       r3, 0xcc00
/* 0A1D44 800A4D44 A4832038 */  lhzu      r4, 0x2038(r3)
/* 0A1D48 800A4D48 54800421 */  rlwinm.   r0, r4, 0, 16, 16
/* 0A1D4C 800A4D4C 41820010 */  beq       lbl_800A4D5C
/* 0A1D50 800A4D50 5480045E */  rlwinm    r0, r4, 0, 17, 15
/* 0A1D54 800A4D54 B0030000 */  sth       r0, 0x0(r3)
/* 0A1D58 800A4D58 60E70004 */  ori       r7, r7, 0x4
lbl_800A4D5C:
/* 0A1D5C 800A4D5C 3C60CC00 */  lis       r3, 0xcc00
/* 0A1D60 800A4D60 A483203C */  lhzu      r4, 0x203c(r3)
/* 0A1D64 800A4D64 54800421 */  rlwinm.   r0, r4, 0, 16, 16
/* 0A1D68 800A4D68 41820010 */  beq       lbl_800A4D78
/* 0A1D6C 800A4D6C 5480045E */  rlwinm    r0, r4, 0, 17, 15
/* 0A1D70 800A4D70 B0030000 */  sth       r0, 0x0(r3)
/* 0A1D74 800A4D74 60E70008 */  ori       r7, r7, 0x8
lbl_800A4D78:
/* 0A1D78 800A4D78 54E0077B */  rlwinm.   r0, r7, 0, 29, 29
/* 0A1D7C 800A4D7C 4082000C */  bne       lbl_800A4D88
/* 0A1D80 800A4D80 54E00739 */  rlwinm.   r0, r7, 0, 28, 28
/* 0A1D84 800A4D84 41820010 */  beq       lbl_800A4D94
lbl_800A4D88:
/* 0A1D88 800A4D88 7FC3F378 */  mr        r3, r30
/* 0A1D8C 800A4D8C 4BFF879D */  bl        OSSetCurrentContext
/* 0A1D90 800A4D90 48000170 */  b         lbl_800A4F00
lbl_800A4D94:
/* 0A1D94 800A4D94 808D8B9C */  lwz       r4, D_8018BB1C@sda21(r0)
/* 0A1D98 800A4D98 38610018 */  addi      r3, r1, 0x18
/* 0A1D9C 800A4D9C 38040001 */  addi      r0, r4, 0x1
/* 0A1DA0 800A4DA0 900D8B9C */  stw       r0, D_8018BB1C@sda21(r0)
/* 0A1DA4 800A4DA4 4BFF894D */  bl        OSClearContext
/* 0A1DA8 800A4DA8 38610018 */  addi      r3, r1, 0x18
/* 0A1DAC 800A4DAC 4BFF877D */  bl        OSSetCurrentContext
/* 0A1DB0 800A4DB0 818D8BAC */  lwz       r12, D_8018BB2C@sda21(r0)
/* 0A1DB4 800A4DB4 280C0000 */  cmplwi    r12, 0x0
/* 0A1DB8 800A4DB8 41820010 */  beq       lbl_800A4DC8
/* 0A1DBC 800A4DBC 806D8B9C */  lwz       r3, D_8018BB1C@sda21(r0)
/* 0A1DC0 800A4DC0 7D8803A6 */  mtlr      r12
/* 0A1DC4 800A4DC4 4E800021 */  blrl
lbl_800A4DC8:
/* 0A1DC8 800A4DC8 800D8BA0 */  lwz       r0, D_8018BB20@sda21(r0)
/* 0A1DCC 800A4DCC 28000000 */  cmplwi    r0, 0x0
/* 0A1DD0 800A4DD0 418200F4 */  beq       lbl_800A4EC4
/* 0A1DD4 800A4DD4 800D8BC8 */  lwz       r0, D_8018BB48@sda21(r0)
/* 0A1DD8 800A4DD8 28000001 */  cmplwi    r0, 0x1
/* 0A1DDC 800A4DDC 40820010 */  bne       lbl_800A4DEC
/* 0A1DE0 800A4DE0 480017D1 */  bl        fn_800A65B0
/* 0A1DE4 800A4DE4 28030000 */  cmplwi    r3, 0x0
/* 0A1DE8 800A4DE8 418200C4 */  beq       lbl_800A4EAC
lbl_800A4DEC:
/* 0A1DEC 800A4DEC 3C60CC00 */  lis       r3, 0xcc00
/* 0A1DF0 800A4DF0 3BA32000 */  addi      r29, r3, 0x2000
/* 0A1DF4 800A4DF4 48000078 */  b         lbl_800A4E6C
lbl_800A4DF8:
/* 0A1DF8 800A4DF8 806D8BD0 */  lwz       r3, D_8018BB50@sda21(r0)
/* 0A1DFC 800A4DFC 38A00020 */  li        r5, 0x20
/* 0A1E00 800A4E00 836D8BD4 */  lwz       r27, D_8018BB54@sda21(r0)
/* 0A1E04 800A4E04 389B0000 */  addi      r4, r27, 0x0
/* 0A1E08 800A4E08 48027B39 */  bl        __shr2u
/* 0A1E0C 800A4E0C 7C840034 */  cntlzw    r4, r4
/* 0A1E10 800A4E10 2C040020 */  cmpwi     r4, 0x20
/* 0A1E14 800A4E14 3800FFFF */  li        r0, -0x1
/* 0A1E18 800A4E18 7F600038 */  and       r0, r27, r0
/* 0A1E1C 800A4E1C 40800008 */  bge       lbl_800A4E24
/* 0A1E20 800A4E20 4800000C */  b         lbl_800A4E2C
lbl_800A4E24:
/* 0A1E24 800A4E24 7C030034 */  cntlzw    r3, r0
/* 0A1E28 800A4E28 38830020 */  addi      r4, r3, 0x20
lbl_800A4E2C:
/* 0A1E2C 800A4E2C 5486083C */  slwi      r6, r4, 1
/* 0A1E30 800A4E30 7C7F3214 */  add       r3, r31, r6
/* 0A1E34 800A4E34 A0030078 */  lhz       r0, 0x78(r3)
/* 0A1E38 800A4E38 20A4003F */  subfic    r5, r4, 0x3f
/* 0A1E3C 800A4E3C 38600000 */  li        r3, 0x0
/* 0A1E40 800A4E40 7C1D332E */  sthx      r0, r29, r6
/* 0A1E44 800A4E44 38800001 */  li        r4, 0x1
/* 0A1E48 800A4E48 48027AD5 */  bl        __shl2i
/* 0A1E4C 800A4E4C 800D8BD0 */  lwz       r0, D_8018BB50@sda21(r0)
/* 0A1E50 800A4E50 7C6518F8 */  nor       r5, r3, r3
/* 0A1E54 800A4E54 7C8420F8 */  nor       r4, r4, r4
/* 0A1E58 800A4E58 806D8BD4 */  lwz       r3, D_8018BB54@sda21(r0)
/* 0A1E5C 800A4E5C 7C002838 */  and       r0, r0, r5
/* 0A1E60 800A4E60 7C632038 */  and       r3, r3, r4
/* 0A1E64 800A4E64 906D8BD4 */  stw       r3, D_8018BB54@sda21(r0)
/* 0A1E68 800A4E68 900D8BD0 */  stw       r0, D_8018BB50@sda21(r0)
lbl_800A4E6C:
/* 0A1E6C 800A4E6C 800D8BD0 */  lwz       r0, D_8018BB50@sda21(r0)
/* 0A1E70 800A4E70 38800000 */  li        r4, 0x0
/* 0A1E74 800A4E74 806D8BD4 */  lwz       r3, D_8018BB54@sda21(r0)
/* 0A1E78 800A4E78 7C002278 */  xor       r0, r0, r4
/* 0A1E7C 800A4E7C 7C632278 */  xor       r3, r3, r4
/* 0A1E80 800A4E80 7C600379 */  or.       r0, r3, r0
/* 0A1E84 800A4E84 4082FF74 */  bne       lbl_800A4DF8
/* 0A1E88 800A4E88 908D8BC8 */  stw       r4, D_8018BB48@sda21(r0)
/* 0A1E8C 800A4E8C 38800001 */  li        r4, 0x1
/* 0A1E90 800A4E90 800D8BE0 */  lwz       r0, D_8018BB60@sda21(r0)
/* 0A1E94 800A4E94 807F0144 */  lwz       r3, 0x144(r31)
/* 0A1E98 800A4E98 906D8BD8 */  stw       r3, D_8018BB58@sda21(r0)
/* 0A1E9C 800A4E9C 807F0118 */  lwz       r3, 0x118(r31)
/* 0A1EA0 800A4EA0 906D8BDC */  stw       r3, CurrTvMode@sda21(r0)
/* 0A1EA4 800A4EA4 900D8BE4 */  stw       r0, D_8018BB64@sda21(r0)
/* 0A1EA8 800A4EA8 48000008 */  b         lbl_800A4EB0
lbl_800A4EAC:
/* 0A1EAC 800A4EAC 38800000 */  li        r4, 0x0
lbl_800A4EB0:
/* 0A1EB0 800A4EB0 2C040000 */  cmpwi     r4, 0x0
/* 0A1EB4 800A4EB4 41820010 */  beq       lbl_800A4EC4
/* 0A1EB8 800A4EB8 38000000 */  li        r0, 0x0
/* 0A1EBC 800A4EBC 900D8BA0 */  stw       r0, D_8018BB20@sda21(r0)
/* 0A1EC0 800A4EC0 4BFFFE01 */  bl        SIRefreshSamplingRate
lbl_800A4EC4:
/* 0A1EC4 800A4EC4 800D8BB0 */  lwz       r0, D_8018BB30@sda21(r0)
/* 0A1EC8 800A4EC8 28000000 */  cmplwi    r0, 0x0
/* 0A1ECC 800A4ECC 4182001C */  beq       lbl_800A4EE8
/* 0A1ED0 800A4ED0 38610018 */  addi      r3, r1, 0x18
/* 0A1ED4 800A4ED4 4BFF881D */  bl        OSClearContext
/* 0A1ED8 800A4ED8 818D8BB0 */  lwz       r12, D_8018BB30@sda21(r0)
/* 0A1EDC 800A4EDC 806D8B9C */  lwz       r3, D_8018BB1C@sda21(r0)
/* 0A1EE0 800A4EE0 7D8803A6 */  mtlr      r12
/* 0A1EE4 800A4EE4 4E800021 */  blrl
lbl_800A4EE8:
/* 0A1EE8 800A4EE8 386D8BA4 */  li        r3, D_8018BB24@sda21
/* 0A1EEC 800A4EEC 4BFFC445 */  bl        OSWakeupThread
/* 0A1EF0 800A4EF0 38610018 */  addi      r3, r1, 0x18
/* 0A1EF4 800A4EF4 4BFF87FD */  bl        OSClearContext
/* 0A1EF8 800A4EF8 7FC3F378 */  mr        r3, r30
/* 0A1EFC 800A4EFC 4BFF862D */  bl        OSSetCurrentContext
lbl_800A4F00:
/* 0A1F00 800A4F00 BB6102E4 */  lmw       r27, 0x2e4(r1)
/* 0A1F04 800A4F04 800102FC */  lwz       r0, 0x2fc(r1)
/* 0A1F08 800A4F08 382102F8 */  addi      r1, r1, 0x2f8
/* 0A1F0C 800A4F0C 7C0803A6 */  mtlr      r0
/* 0A1F10 800A4F10 4E800020 */  blr

glabel fn_800A4F14
/* 0A1F14 800A4F14 7C0802A6 */  mflr      r0
/* 0A1F18 800A4F18 90010004 */  stw       r0, 0x4(r1)
/* 0A1F1C 800A4F1C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A1F20 800A4F20 93E10014 */  stw       r31, 0x14(r1)
/* 0A1F24 800A4F24 93C10010 */  stw       r30, 0x10(r1)
/* 0A1F28 800A4F28 7C7E1B78 */  mr        r30, r3
/* 0A1F2C 800A4F2C 83ED8BB0 */  lwz       r31, D_8018BB30@sda21(r0)
/* 0A1F30 800A4F30 4BFF9319 */  bl        OSDisableInterrupts
/* 0A1F34 800A4F34 93CD8BB0 */  stw       r30, D_8018BB30@sda21(r0)
/* 0A1F38 800A4F38 4BFF9339 */  bl        OSRestoreInterrupts
/* 0A1F3C 800A4F3C 7FE3FB78 */  mr        r3, r31
/* 0A1F40 800A4F40 8001001C */  lwz       r0, 0x1c(r1)
/* 0A1F44 800A4F44 83E10014 */  lwz       r31, 0x14(r1)
/* 0A1F48 800A4F48 83C10010 */  lwz       r30, 0x10(r1)
/* 0A1F4C 800A4F4C 38210018 */  addi      r1, r1, 0x18
/* 0A1F50 800A4F50 7C0803A6 */  mtlr      r0
/* 0A1F54 800A4F54 4E800020 */  blr

glabel fn_800A4F58
/* 0A1F58 800A4F58 2803001A */  cmplwi    r3, 0x1a
/* 0A1F5C 800A4F5C 3C80800F */  lis       r4, D_800F2B50@ha
/* 0A1F60 800A4F60 38A42B50 */  addi      r5, r4, D_800F2B50@l
/* 0A1F64 800A4F64 4181008C */  bgt       lbl_800A4FF0
/* 0A1F68 800A4F68 3C80800F */  lis       r4, jtbl_800F2D44@ha
/* 0A1F6C 800A4F6C 38842D44 */  addi      r4, r4, jtbl_800F2D44@l
/* 0A1F70 800A4F70 5460103A */  slwi      r0, r3, 2
/* 0A1F74 800A4F74 7C04002E */  lwzx      r0, r4, r0
/* 0A1F78 800A4F78 7C0903A6 */  mtctr     r0
/* 0A1F7C 800A4F7C 4E800420 */  bctr
lbl_800A4F80:
/* 0A1F80 800A4F80 38650044 */  addi      r3, r5, 0x44
/* 0A1F84 800A4F84 4E800020 */  blr
lbl_800A4F88:
/* 0A1F88 800A4F88 3865006A */  addi      r3, r5, 0x6a
/* 0A1F8C 800A4F8C 4E800020 */  blr
lbl_800A4F90:
/* 0A1F90 800A4F90 38650090 */  addi      r3, r5, 0x90
/* 0A1F94 800A4F94 4E800020 */  blr
lbl_800A4F98:
/* 0A1F98 800A4F98 386500B6 */  addi      r3, r5, 0xb6
/* 0A1F9C 800A4F9C 4E800020 */  blr
lbl_800A4FA0:
/* 0A1FA0 800A4FA0 38650044 */  addi      r3, r5, 0x44
/* 0A1FA4 800A4FA4 4E800020 */  blr
lbl_800A4FA8:
/* 0A1FA8 800A4FA8 3865006A */  addi      r3, r5, 0x6a
/* 0A1FAC 800A4FAC 4E800020 */  blr
lbl_800A4FB0:
/* 0A1FB0 800A4FB0 386500DC */  addi      r3, r5, 0xdc
/* 0A1FB4 800A4FB4 4E800020 */  blr
lbl_800A4FB8:
/* 0A1FB8 800A4FB8 38650102 */  addi      r3, r5, 0x102
/* 0A1FBC 800A4FBC 4E800020 */  blr
lbl_800A4FC0:
/* 0A1FC0 800A4FC0 38650128 */  addi      r3, r5, 0x128
/* 0A1FC4 800A4FC4 4E800020 */  blr
lbl_800A4FC8:
/* 0A1FC8 800A4FC8 3865014E */  addi      r3, r5, 0x14e
/* 0A1FCC 800A4FCC 4E800020 */  blr
lbl_800A4FD0:
/* 0A1FD0 800A4FD0 38650090 */  addi      r3, r5, 0x90
/* 0A1FD4 800A4FD4 4E800020 */  blr
lbl_800A4FD8:
/* 0A1FD8 800A4FD8 386500B6 */  addi      r3, r5, 0xb6
/* 0A1FDC 800A4FDC 4E800020 */  blr
lbl_800A4FE0:
/* 0A1FE0 800A4FE0 38650174 */  addi      r3, r5, 0x174
/* 0A1FE4 800A4FE4 4E800020 */  blr
lbl_800A4FE8:
/* 0A1FE8 800A4FE8 3865019A */  addi      r3, r5, 0x19a
/* 0A1FEC 800A4FEC 4E800020 */  blr
lbl_800A4FF0:
/* 0A1FF0 800A4FF0 38600000 */  li        r3, 0x0
/* 0A1FF4 800A4FF4 4E800020 */  blr

glabel fn_800A4FF8
/* 0A1FF8 800A4FF8 7C0802A6 */  mflr      r0
/* 0A1FFC 800A4FFC 90010004 */  stw       r0, 0x4(r1)
/* 0A2000 800A5000 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0A2004 800A5004 93E1002C */  stw       r31, 0x2c(r1)
/* 0A2008 800A5008 547FF0BE */  srwi      r31, r3, 2
/* 0A200C 800A500C 93C10028 */  stw       r30, 0x28(r1)
/* 0A2010 800A5010 93A10024 */  stw       r29, 0x24(r1)
/* 0A2014 800A5014 3BA30000 */  addi      r29, r3, 0x0
/* 0A2018 800A5018 3C608000 */  lis       r3, 0x8000
/* 0A201C 800A501C 93E300CC */  stw       r31, 0xcc(r3)
/* 0A2020 800A5020 387D0000 */  addi      r3, r29, 0x0
/* 0A2024 800A5024 57BE07BC */  rlwinm    r30, r29, 0, 30, 30
/* 0A2028 800A5028 4BFFFF31 */  bl        fn_800A4F58
/* 0A202C 800A502C 3C80CC00 */  lis       r4, 0xcc00
/* 0A2030 800A5030 38000002 */  li        r0, 0x2
/* 0A2034 800A5034 38A42000 */  addi      r5, r4, 0x2000
/* 0A2038 800A5038 B4050002 */  sthu      r0, 0x2(r5)
/* 0A203C 800A503C 38000000 */  li        r0, 0x0
/* 0A2040 800A5040 9001001C */  stw       r0, 0x1c(r1)
/* 0A2044 800A5044 8001001C */  lwz       r0, 0x1c(r1)
/* 0A2048 800A5048 280003E8 */  cmplwi    r0, 0x3e8
/* 0A204C 800A504C 40800020 */  bge       lbl_800A506C
/* 0A2050 800A5050 48000010 */  b         lbl_800A5060
lbl_800A5054:
/* 0A2054 800A5054 8081001C */  lwz       r4, 0x1c(r1)
/* 0A2058 800A5058 38040008 */  addi      r0, r4, 0x8
/* 0A205C 800A505C 9001001C */  stw       r0, 0x1c(r1)
lbl_800A5060:
/* 0A2060 800A5060 8001001C */  lwz       r0, 0x1c(r1)
/* 0A2064 800A5064 280003E8 */  cmplwi    r0, 0x3e8
/* 0A2068 800A5068 4180FFEC */  blt       lbl_800A5054
lbl_800A506C:
/* 0A206C 800A506C 38000000 */  li        r0, 0x0
/* 0A2070 800A5070 B0050000 */  sth       r0, 0x0(r5)
/* 0A2074 800A5074 3D80CC00 */  lis       r12, 0xcc00
/* 0A2078 800A5078 39002828 */  li        r8, 0x2828
/* 0A207C 800A507C A0C3001A */  lhz       r6, 0x1a(r3)
/* 0A2080 800A5080 38E00001 */  li        r7, 0x1
/* 0A2084 800A5084 2C1D0002 */  cmpwi     r29, 0x2
/* 0A2088 800A5088 B0CC2006 */  sth       r6, 0x2006(r12)
/* 0A208C 800A508C 38C01001 */  li        r6, 0x1001
/* 0A2090 800A5090 388C2000 */  addi      r4, r12, 0x2000
/* 0A2094 800A5094 8923001D */  lbz       r9, 0x1d(r3)
/* 0A2098 800A5098 8943001E */  lbz       r10, 0x1e(r3)
/* 0A209C 800A509C 512A442E */  rlwimi    r10, r9, 8, 16, 23
/* 0A20A0 800A50A0 B14C2004 */  sth       r10, 0x2004(r12)
/* 0A20A4 800A50A4 8923001F */  lbz       r9, 0x1f(r3)
/* 0A20A8 800A50A8 8943001C */  lbz       r10, 0x1c(r3)
/* 0A20AC 800A50AC 55293830 */  slwi      r9, r9, 7
/* 0A20B0 800A50B0 7D494B78 */  or        r9, r10, r9
/* 0A20B4 800A50B4 B12C200A */  sth       r9, 0x200a(r12)
/* 0A20B8 800A50B8 A1230020 */  lhz       r9, 0x20(r3)
/* 0A20BC 800A50BC 55290C3C */  clrlslwi  r9, r9, 17, 1
/* 0A20C0 800A50C0 B12C2008 */  sth       r9, 0x2008(r12)
/* 0A20C4 800A50C4 A1230002 */  lhz       r9, 0x2(r3)
/* 0A20C8 800A50C8 89630000 */  lbz       r11, 0x0(r3)
/* 0A20CC 800A50CC 5529083C */  slwi      r9, r9, 1
/* 0A20D0 800A50D0 A1430004 */  lhz       r10, 0x4(r3)
/* 0A20D4 800A50D4 3929FFFE */  subi      r9, r9, 0x2
/* 0A20D8 800A50D8 B16C2000 */  sth       r11, 0x2000(r12)
/* 0A20DC 800A50DC 7D2A4A14 */  add       r9, r10, r9
/* 0A20E0 800A50E0 B12C200E */  sth       r9, 0x200e(r12)
/* 0A20E4 800A50E4 A1230008 */  lhz       r9, 0x8(r3)
/* 0A20E8 800A50E8 39290002 */  addi      r9, r9, 0x2
/* 0A20EC 800A50EC B12C200C */  sth       r9, 0x200c(r12)
/* 0A20F0 800A50F0 A1230002 */  lhz       r9, 0x2(r3)
/* 0A20F4 800A50F4 A1430006 */  lhz       r10, 0x6(r3)
/* 0A20F8 800A50F8 5529083C */  slwi      r9, r9, 1
/* 0A20FC 800A50FC 3929FFFE */  subi      r9, r9, 0x2
/* 0A2100 800A5100 7D2A4A14 */  add       r9, r10, r9
/* 0A2104 800A5104 B12C2012 */  sth       r9, 0x2012(r12)
/* 0A2108 800A5108 A123000A */  lhz       r9, 0xa(r3)
/* 0A210C 800A510C 39290002 */  addi      r9, r9, 0x2
/* 0A2110 800A5110 B12C2010 */  sth       r9, 0x2010(r12)
/* 0A2114 800A5114 A1230010 */  lhz       r9, 0x10(r3)
/* 0A2118 800A5118 8943000C */  lbz       r10, 0xc(r3)
/* 0A211C 800A511C 55292834 */  slwi      r9, r9, 5
/* 0A2120 800A5120 7D494B78 */  or        r9, r10, r9
/* 0A2124 800A5124 B12C2016 */  sth       r9, 0x2016(r12)
/* 0A2128 800A5128 A1230014 */  lhz       r9, 0x14(r3)
/* 0A212C 800A512C 8943000E */  lbz       r10, 0xe(r3)
/* 0A2130 800A5130 55292834 */  slwi      r9, r9, 5
/* 0A2134 800A5134 7D494B78 */  or        r9, r10, r9
/* 0A2138 800A5138 B12C2014 */  sth       r9, 0x2014(r12)
/* 0A213C 800A513C A1230012 */  lhz       r9, 0x12(r3)
/* 0A2140 800A5140 8943000D */  lbz       r10, 0xd(r3)
/* 0A2144 800A5144 55292834 */  slwi      r9, r9, 5
/* 0A2148 800A5148 7D494B78 */  or        r9, r10, r9
/* 0A214C 800A514C B12C201A */  sth       r9, 0x201a(r12)
/* 0A2150 800A5150 A1230016 */  lhz       r9, 0x16(r3)
/* 0A2154 800A5154 8943000F */  lbz       r10, 0xf(r3)
/* 0A2158 800A5158 55292834 */  slwi      r9, r9, 5
/* 0A215C 800A515C 7D494B78 */  or        r9, r10, r9
/* 0A2160 800A5160 B12C2018 */  sth       r9, 0x2018(r12)
/* 0A2164 800A5164 B10C2048 */  sth       r8, 0x2048(r12)
/* 0A2168 800A5168 B0EC2036 */  sth       r7, 0x2036(r12)
/* 0A216C 800A516C B0CC2034 */  sth       r6, 0x2034(r12)
/* 0A2170 800A5170 A0C30018 */  lhz       r6, 0x18(r3)
/* 0A2174 800A5174 A063001A */  lhz       r3, 0x1a(r3)
/* 0A2178 800A5178 7CC60E70 */  srawi     r6, r6, 1
/* 0A217C 800A517C 38630001 */  addi      r3, r3, 0x1
/* 0A2180 800A5180 7CC60194 */  addze     r6, r6
/* 0A2184 800A5184 B06C2032 */  sth       r3, 0x2032(r12)
/* 0A2188 800A5188 38C60001 */  addi      r6, r6, 0x1
/* 0A218C 800A518C 60C31000 */  ori       r3, r6, 0x1000
/* 0A2190 800A5190 B06C2030 */  sth       r3, 0x2030(r12)
/* 0A2194 800A5194 41820030 */  beq       lbl_800A51C4
/* 0A2198 800A5198 2C1D0003 */  cmpwi     r29, 0x3
/* 0A219C 800A519C 41820028 */  beq       lbl_800A51C4
/* 0A21A0 800A51A0 2C1D001A */  cmpwi     r29, 0x1a
/* 0A21A4 800A51A4 41820020 */  beq       lbl_800A51C4
/* 0A21A8 800A51A8 57C3103A */  slwi      r3, r30, 2
/* 0A21AC 800A51AC 60660001 */  ori       r6, r3, 0x1
/* 0A21B0 800A51B0 57E3402E */  slwi      r3, r31, 8
/* 0A21B4 800A51B4 7CC31B78 */  or        r3, r6, r3
/* 0A21B8 800A51B8 B0650000 */  sth       r3, 0x0(r5)
/* 0A21BC 800A51BC B004006C */  sth       r0, 0x6c(r4)
/* 0A21C0 800A51C0 4800001C */  b         lbl_800A51DC
lbl_800A51C4:
/* 0A21C4 800A51C4 57E0402E */  slwi      r0, r31, 8
/* 0A21C8 800A51C8 60000005 */  ori       r0, r0, 0x5
/* 0A21CC 800A51CC B0050000 */  sth       r0, 0x0(r5)
/* 0A21D0 800A51D0 3C60CC00 */  lis       r3, 0xcc00
/* 0A21D4 800A51D4 38000001 */  li        r0, 0x1
/* 0A21D8 800A51D8 B003206C */  sth       r0, 0x206c(r3)
lbl_800A51DC:
/* 0A21DC 800A51DC 80010034 */  lwz       r0, 0x34(r1)
/* 0A21E0 800A51E0 83E1002C */  lwz       r31, 0x2c(r1)
/* 0A21E4 800A51E4 83C10028 */  lwz       r30, 0x28(r1)
/* 0A21E8 800A51E8 83A10024 */  lwz       r29, 0x24(r1)
/* 0A21EC 800A51EC 38210030 */  addi      r1, r1, 0x30
/* 0A21F0 800A51F0 7C0803A6 */  mtlr      r0
/* 0A21F4 800A51F4 4E800020 */  blr

glabel VIInit
/* 0A21F8 800A51F8 7C0802A6 */  mflr      r0
/* 0A21FC 800A51FC 3C80800F */  lis       r4, D_800F2B50@ha
/* 0A2200 800A5200 90010004 */  stw       r0, 0x4(r1)
/* 0A2204 800A5204 3C608019 */  lis       r3, D_80188050@ha
/* 0A2208 800A5208 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A220C 800A520C 93E10014 */  stw       r31, 0x14(r1)
/* 0A2210 800A5210 93C10010 */  stw       r30, 0x10(r1)
/* 0A2214 800A5214 3BC38050 */  addi      r30, r3, D_80188050@l
/* 0A2218 800A5218 93A1000C */  stw       r29, 0xc(r1)
/* 0A221C 800A521C 3BA42B50 */  addi      r29, r4, D_800F2B50@l
/* 0A2220 800A5220 93810008 */  stw       r28, 0x8(r1)
/* 0A2224 800A5224 800D8B98 */  lwz       r0, D_8018BB18@sda21(r0)
/* 0A2228 800A5228 2C000000 */  cmpwi     r0, 0x0
/* 0A222C 800A522C 4082045C */  bne       lbl_800A5688
/* 0A2230 800A5230 806D8760 */  lwz       r3, D_8018B6E0@sda21(r0)
/* 0A2234 800A5234 4BFF6A51 */  bl        OSRegisterVersion
/* 0A2238 800A5238 38000001 */  li        r0, 0x1
/* 0A223C 800A523C 900D8B98 */  stw       r0, D_8018BB18@sda21(r0)
/* 0A2240 800A5240 3C60CC00 */  lis       r3, 0xcc00
/* 0A2244 800A5244 3B832000 */  addi      r28, r3, 0x2000
/* 0A2248 800A5248 900D8BB4 */  stw       r0, D_8018BB34@sda21(r0)
/* 0A224C 800A524C A41C0002 */  lhzu      r0, 0x2(r28)
/* 0A2250 800A5250 540007FF */  clrlwi.   r0, r0, 31
/* 0A2254 800A5254 4082000C */  bne       lbl_800A5260
/* 0A2258 800A5258 38600000 */  li        r3, 0x0
/* 0A225C 800A525C 4BFFFD9D */  bl        fn_800A4FF8
lbl_800A5260:
/* 0A2260 800A5260 3BE00000 */  li        r31, 0x0
/* 0A2264 800A5264 93ED8B9C */  stw       r31, D_8018BB1C@sda21(r0)
/* 0A2268 800A5268 3C60CC00 */  lis       r3, 0xcc00
/* 0A226C 800A526C 38632000 */  addi      r3, r3, 0x2000
/* 0A2270 800A5270 93ED8BC4 */  stw       r31, D_8018BB44@sda21(r0)
/* 0A2274 800A5274 38000280 */  li        r0, 0x280
/* 0A2278 800A5278 93ED8BC0 */  stw       r31, D_8018BB40@sda21(r0)
/* 0A227C 800A527C 93ED8BD4 */  stw       r31, D_8018BB54@sda21(r0)
/* 0A2280 800A5280 93ED8BD0 */  stw       r31, D_8018BB50@sda21(r0)
/* 0A2284 800A5284 93ED8BBC */  stw       r31, D_8018BB3C@sda21(r0)
/* 0A2288 800A5288 93ED8BC8 */  stw       r31, D_8018BB48@sda21(r0)
/* 0A228C 800A528C 93ED8BA0 */  stw       r31, D_8018BB20@sda21(r0)
/* 0A2290 800A5290 A0BD01C2 */  lhz       r5, 0x1c2(r29)
/* 0A2294 800A5294 A0DD01C0 */  lhz       r6, 0x1c0(r29)
/* 0A2298 800A5298 54A5542A */  clrlslwi  r5, r5, 26, 10
/* 0A229C 800A529C 7CC52B78 */  or        r5, r6, r5
/* 0A22A0 800A52A0 B0A3004E */  sth       r5, 0x4e(r3)
/* 0A22A4 800A52A4 A0DD01C2 */  lhz       r6, 0x1c2(r29)
/* 0A22A8 800A52A8 A0BD01C4 */  lhz       r5, 0x1c4(r29)
/* 0A22AC 800A52AC 7CC63670 */  srawi     r6, r6, 6
/* 0A22B0 800A52B0 54A52036 */  slwi      r5, r5, 4
/* 0A22B4 800A52B4 7CC52B78 */  or        r5, r6, r5
/* 0A22B8 800A52B8 B0A3004C */  sth       r5, 0x4c(r3)
/* 0A22BC 800A52BC A0BD01C8 */  lhz       r5, 0x1c8(r29)
/* 0A22C0 800A52C0 A0DD01C6 */  lhz       r6, 0x1c6(r29)
/* 0A22C4 800A52C4 54A5542A */  clrlslwi  r5, r5, 26, 10
/* 0A22C8 800A52C8 7CC52B78 */  or        r5, r6, r5
/* 0A22CC 800A52CC B0A30052 */  sth       r5, 0x52(r3)
/* 0A22D0 800A52D0 A0DD01C8 */  lhz       r6, 0x1c8(r29)
/* 0A22D4 800A52D4 A0BD01CA */  lhz       r5, 0x1ca(r29)
/* 0A22D8 800A52D8 7CC63670 */  srawi     r6, r6, 6
/* 0A22DC 800A52DC 54A52036 */  slwi      r5, r5, 4
/* 0A22E0 800A52E0 7CC52B78 */  or        r5, r6, r5
/* 0A22E4 800A52E4 B0A30050 */  sth       r5, 0x50(r3)
/* 0A22E8 800A52E8 A0BD01CE */  lhz       r5, 0x1ce(r29)
/* 0A22EC 800A52EC A0DD01CC */  lhz       r6, 0x1cc(r29)
/* 0A22F0 800A52F0 54A5542A */  clrlslwi  r5, r5, 26, 10
/* 0A22F4 800A52F4 7CC52B78 */  or        r5, r6, r5
/* 0A22F8 800A52F8 B0A30056 */  sth       r5, 0x56(r3)
/* 0A22FC 800A52FC A0BD01CE */  lhz       r5, 0x1ce(r29)
/* 0A2300 800A5300 A09D01D0 */  lhz       r4, 0x1d0(r29)
/* 0A2304 800A5304 7CA53670 */  srawi     r5, r5, 6
/* 0A2308 800A5308 54842036 */  slwi      r4, r4, 4
/* 0A230C 800A530C 7CA42378 */  or        r4, r5, r4
/* 0A2310 800A5310 B0830054 */  sth       r4, 0x54(r3)
/* 0A2314 800A5314 A09D01D4 */  lhz       r4, 0x1d4(r29)
/* 0A2318 800A5318 A0BD01D2 */  lhz       r5, 0x1d2(r29)
/* 0A231C 800A531C 5484402E */  slwi      r4, r4, 8
/* 0A2320 800A5320 7CA42378 */  or        r4, r5, r4
/* 0A2324 800A5324 B083005A */  sth       r4, 0x5a(r3)
/* 0A2328 800A5328 A09D01D8 */  lhz       r4, 0x1d8(r29)
/* 0A232C 800A532C A0BD01D6 */  lhz       r5, 0x1d6(r29)
/* 0A2330 800A5330 5484402E */  slwi      r4, r4, 8
/* 0A2334 800A5334 7CA42378 */  or        r4, r5, r4
/* 0A2338 800A5338 B0830058 */  sth       r4, 0x58(r3)
/* 0A233C 800A533C A09D01DC */  lhz       r4, 0x1dc(r29)
/* 0A2340 800A5340 A0BD01DA */  lhz       r5, 0x1da(r29)
/* 0A2344 800A5344 5484402E */  slwi      r4, r4, 8
/* 0A2348 800A5348 7CA42378 */  or        r4, r5, r4
/* 0A234C 800A534C B083005E */  sth       r4, 0x5e(r3)
/* 0A2350 800A5350 A09D01E0 */  lhz       r4, 0x1e0(r29)
/* 0A2354 800A5354 A0BD01DE */  lhz       r5, 0x1de(r29)
/* 0A2358 800A5358 5484402E */  slwi      r4, r4, 8
/* 0A235C 800A535C 7CA42378 */  or        r4, r5, r4
/* 0A2360 800A5360 B083005C */  sth       r4, 0x5c(r3)
/* 0A2364 800A5364 A09D01E4 */  lhz       r4, 0x1e4(r29)
/* 0A2368 800A5368 A0BD01E2 */  lhz       r5, 0x1e2(r29)
/* 0A236C 800A536C 5484402E */  slwi      r4, r4, 8
/* 0A2370 800A5370 7CA42378 */  or        r4, r5, r4
/* 0A2374 800A5374 B0830062 */  sth       r4, 0x62(r3)
/* 0A2378 800A5378 A09D01E8 */  lhz       r4, 0x1e8(r29)
/* 0A237C 800A537C A0BD01E6 */  lhz       r5, 0x1e6(r29)
/* 0A2380 800A5380 5484402E */  slwi      r4, r4, 8
/* 0A2384 800A5384 7CA42378 */  or        r4, r5, r4
/* 0A2388 800A5388 B0830060 */  sth       r4, 0x60(r3)
/* 0A238C 800A538C A09D01EC */  lhz       r4, 0x1ec(r29)
/* 0A2390 800A5390 A0BD01EA */  lhz       r5, 0x1ea(r29)
/* 0A2394 800A5394 5484402E */  slwi      r4, r4, 8
/* 0A2398 800A5398 7CA42378 */  or        r4, r5, r4
/* 0A239C 800A539C B0830066 */  sth       r4, 0x66(r3)
/* 0A23A0 800A53A0 A09D01F0 */  lhz       r4, 0x1f0(r29)
/* 0A23A4 800A53A4 A0BD01EE */  lhz       r5, 0x1ee(r29)
/* 0A23A8 800A53A8 5484402E */  slwi      r4, r4, 8
/* 0A23AC 800A53AC 7CA42378 */  or        r4, r5, r4
/* 0A23B0 800A53B0 B0830064 */  sth       r4, 0x64(r3)
/* 0A23B4 800A53B4 B0030070 */  sth       r0, 0x70(r3)
/* 0A23B8 800A53B8 4BFFA869 */  bl        __OSLockSram
/* 0A23BC 800A53BC 88030010 */  lbz       r0, 0x10(r3)
/* 0A23C0 800A53C0 38600000 */  li        r3, 0x0
/* 0A23C4 800A53C4 7C000774 */  extsb     r0, r0
/* 0A23C8 800A53C8 B3ED8BBA */  sth       r31, D_8018BB3A@sda21(r0)
/* 0A23CC 800A53CC B00D8BB8 */  sth       r0, D_8018BB38@sda21(r0)
/* 0A23D0 800A53D0 4BFFAC11 */  bl        __OSUnlockSram
/* 0A23D4 800A53D4 A3BC0000 */  lhz       r29, 0x0(r28)
/* 0A23D8 800A53D8 3C608000 */  lis       r3, 0x8000
/* 0A23DC 800A53DC 806300CC */  lwz       r3, 0xcc(r3)
/* 0A23E0 800A53E0 389E0114 */  addi      r4, r30, 0x114
/* 0A23E4 800A53E4 57A0F7FE */  extrwi    r0, r29, 1, 29
/* 0A23E8 800A53E8 901E0114 */  stw       r0, 0x114(r30)
/* 0A23EC 800A53EC 57A0C7BE */  extrwi    r0, r29, 2, 22
/* 0A23F0 800A53F0 28030001 */  cmplwi    r3, 0x1
/* 0A23F4 800A53F4 901E0118 */  stw       r0, 0x118(r30)
/* 0A23F8 800A53F8 3B9E0118 */  addi      r28, r30, 0x118
/* 0A23FC 800A53FC 40820018 */  bne       lbl_800A5414
/* 0A2400 800A5400 801C0000 */  lwz       r0, 0x0(r28)
/* 0A2404 800A5404 28000000 */  cmplwi    r0, 0x0
/* 0A2408 800A5408 4082000C */  bne       lbl_800A5414
/* 0A240C 800A540C 38000005 */  li        r0, 0x5
/* 0A2410 800A5410 901C0000 */  stw       r0, 0x0(r28)
lbl_800A5414:
/* 0A2414 800A5414 807C0000 */  lwz       r3, 0x0(r28)
/* 0A2418 800A5418 28030003 */  cmplwi    r3, 0x3
/* 0A241C 800A541C 40820008 */  bne       lbl_800A5424
/* 0A2420 800A5420 38600000 */  li        r3, 0x0
lbl_800A5424:
/* 0A2424 800A5424 80040000 */  lwz       r0, 0x0(r4)
/* 0A2428 800A5428 5463103A */  slwi      r3, r3, 2
/* 0A242C 800A542C 7C630214 */  add       r3, r3, r0
/* 0A2430 800A5430 4BFFFB29 */  bl        fn_800A4F58
/* 0A2434 800A5434 907E0144 */  stw       r3, 0x144(r30)
/* 0A2438 800A5438 389E0144 */  addi      r4, r30, 0x144
/* 0A243C 800A543C 38000280 */  li        r0, 0x280
/* 0A2440 800A5440 B3BE0002 */  sth       r29, 0x2(r30)
/* 0A2444 800A5444 39000000 */  li        r8, 0x0
/* 0A2448 800A5448 38DE00F6 */  addi      r6, r30, 0xf6
/* 0A244C 800A544C 80840000 */  lwz       r4, 0x0(r4)
/* 0A2450 800A5450 387E00F2 */  addi      r3, r30, 0xf2
/* 0A2454 800A5454 908D8BD8 */  stw       r4, D_8018BB58@sda21(r0)
/* 0A2458 800A5458 809C0000 */  lwz       r4, 0x0(r28)
/* 0A245C 800A545C 908D8BDC */  stw       r4, CurrTvMode@sda21(r0)
/* 0A2460 800A5460 B01E00F4 */  sth       r0, 0xf4(r30)
/* 0A2464 800A5464 808D8BD8 */  lwz       r4, D_8018BB58@sda21(r0)
/* 0A2468 800A5468 A4040002 */  lhzu      r0, 0x2(r4)
/* 0A246C 800A546C 54000C3C */  clrlslwi  r0, r0, 17, 1
/* 0A2470 800A5470 B01E00F6 */  sth       r0, 0xf6(r30)
/* 0A2474 800A5474 A01E00F4 */  lhz       r0, 0xf4(r30)
/* 0A2478 800A5478 200002D0 */  subfic    r0, r0, 0x2d0
/* 0A247C 800A547C 7C000E70 */  srawi     r0, r0, 1
/* 0A2480 800A5480 7C000194 */  addze     r0, r0
/* 0A2484 800A5484 B01E00F0 */  sth       r0, 0xf0(r30)
/* 0A2488 800A5488 B11E00F2 */  sth       r8, 0xf2(r30)
/* 0A248C 800A548C A01E00F4 */  lhz       r0, 0xf4(r30)
/* 0A2490 800A5490 A8FE00F0 */  lha       r7, 0xf0(r30)
/* 0A2494 800A5494 A8AD8BB8 */  lha       r5, D_8018BB38@sda21(r0)
/* 0A2498 800A5498 200002D0 */  subfic    r0, r0, 0x2d0
/* 0A249C 800A549C A1240000 */  lhz       r9, 0x0(r4)
/* 0A24A0 800A54A0 7CA72A14 */  add       r5, r7, r5
/* 0A24A4 800A54A4 7C050000 */  cmpw      r5, r0
/* 0A24A8 800A54A8 40810008 */  ble       lbl_800A54B0
/* 0A24AC 800A54AC 48000018 */  b         lbl_800A54C4
lbl_800A54B0:
/* 0A24B0 800A54B0 2C050000 */  cmpwi     r5, 0x0
/* 0A24B4 800A54B4 40800008 */  bge       lbl_800A54BC
/* 0A24B8 800A54B8 48000008 */  b         lbl_800A54C0
lbl_800A54BC:
/* 0A24BC 800A54BC 7CA82B78 */  mr        r8, r5
lbl_800A54C0:
/* 0A24C0 800A54C0 7D004378 */  mr        r0, r8
lbl_800A54C4:
/* 0A24C4 800A54C4 B01E00F8 */  sth       r0, 0xf8(r30)
/* 0A24C8 800A54C8 391E0110 */  addi      r8, r30, 0x110
/* 0A24CC 800A54CC 801E0110 */  lwz       r0, 0x110(r30)
/* 0A24D0 800A54D0 2C000000 */  cmpwi     r0, 0x0
/* 0A24D4 800A54D4 4082000C */  bne       lbl_800A54E0
/* 0A24D8 800A54D8 39600002 */  li        r11, 0x2
/* 0A24DC 800A54DC 48000008 */  b         lbl_800A54E4
lbl_800A54E0:
/* 0A24E0 800A54E0 39600001 */  li        r11, 0x1
lbl_800A54E4:
/* 0A24E4 800A54E4 A0030000 */  lhz       r0, 0x0(r3)
/* 0A24E8 800A54E8 A8AD8BBA */  lha       r5, D_8018BB3A@sda21(r0)
/* 0A24EC 800A54EC 7C070734 */  extsh     r7, r0
/* 0A24F0 800A54F0 540007FE */  clrlwi    r0, r0, 31
/* 0A24F4 800A54F4 7CE72A14 */  add       r7, r7, r5
/* 0A24F8 800A54F8 7C070000 */  cmpw      r7, r0
/* 0A24FC 800A54FC 40810008 */  ble       lbl_800A5504
/* 0A2500 800A5500 48000008 */  b         lbl_800A5508
lbl_800A5504:
/* 0A2504 800A5504 7C070378 */  mr        r7, r0
lbl_800A5508:
/* 0A2508 800A5508 B0FE00FA */  sth       r7, 0xfa(r30)
/* 0A250C 800A550C 7D270734 */  extsh     r7, r9
/* 0A2510 800A5510 54E7083C */  slwi      r7, r7, 1
/* 0A2514 800A5514 A3860000 */  lhz       r28, 0x0(r6)
/* 0A2518 800A5518 7D803850 */  subf      r12, r0, r7
/* 0A251C 800A551C A9430000 */  lha       r10, 0x0(r3)
/* 0A2520 800A5520 7F870734 */  extsh     r7, r28
/* 0A2524 800A5524 7D272A14 */  add       r9, r7, r5
/* 0A2528 800A5528 7D2A4A14 */  add       r9, r10, r9
/* 0A252C 800A552C 7CEC4851 */  subf.     r7, r12, r9
/* 0A2530 800A5530 4081000C */  ble       lbl_800A553C
/* 0A2534 800A5534 7D2C4850 */  subf      r9, r12, r9
/* 0A2538 800A5538 48000008 */  b         lbl_800A5540
lbl_800A553C:
/* 0A253C 800A553C 39200000 */  li        r9, 0x0
lbl_800A5540:
/* 0A2540 800A5540 7D4A2A14 */  add       r10, r10, r5
/* 0A2544 800A5544 7CE05051 */  subf.     r7, r0, r10
/* 0A2548 800A5548 4080000C */  bge       lbl_800A5554
/* 0A254C 800A554C 7CE05050 */  subf      r7, r0, r10
/* 0A2550 800A5550 48000008 */  b         lbl_800A5558
lbl_800A5554:
/* 0A2554 800A5554 38E00000 */  li        r7, 0x0
lbl_800A5558:
/* 0A2558 800A5558 7CFC3A14 */  add       r7, r28, r7
/* 0A255C 800A555C 7CE93850 */  subf      r7, r9, r7
/* 0A2560 800A5560 B0FE00FC */  sth       r7, 0xfc(r30)
/* 0A2564 800A5564 A8E30000 */  lha       r7, 0x0(r3)
/* 0A2568 800A5568 7D272A14 */  add       r9, r7, r5
/* 0A256C 800A556C 7CE04851 */  subf.     r7, r0, r9
/* 0A2570 800A5570 4080000C */  bge       lbl_800A557C
/* 0A2574 800A5574 7CE04850 */  subf      r7, r0, r9
/* 0A2578 800A5578 48000008 */  b         lbl_800A5580
lbl_800A557C:
/* 0A257C 800A557C 38E00000 */  li        r7, 0x0
lbl_800A5580:
/* 0A2580 800A5580 7D475BD6 */  divw      r10, r7, r11
/* 0A2584 800A5584 38FE0108 */  addi      r7, r30, 0x108
/* 0A2588 800A5588 A13E0108 */  lhz       r9, 0x108(r30)
/* 0A258C 800A558C 7D2A4850 */  subf      r9, r10, r9
/* 0A2590 800A5590 B13E00FE */  sth       r9, 0xfe(r30)
/* 0A2594 800A5594 A8C60000 */  lha       r6, 0x0(r6)
/* 0A2598 800A5598 A9230000 */  lha       r9, 0x0(r3)
/* 0A259C 800A559C 7CC62A14 */  add       r6, r6, r5
/* 0A25A0 800A55A0 7CC93214 */  add       r6, r9, r6
/* 0A25A4 800A55A4 7C6C3051 */  subf.     r3, r12, r6
/* 0A25A8 800A55A8 4081000C */  ble       lbl_800A55B4
/* 0A25AC 800A55AC 7CCC3050 */  subf      r6, r12, r6
/* 0A25B0 800A55B0 48000008 */  b         lbl_800A55B8
lbl_800A55B4:
/* 0A25B4 800A55B4 38C00000 */  li        r6, 0x0
lbl_800A55B8:
/* 0A25B8 800A55B8 7CA92A14 */  add       r5, r9, r5
/* 0A25BC 800A55BC 7C602851 */  subf.     r3, r0, r5
/* 0A25C0 800A55C0 4080000C */  bge       lbl_800A55CC
/* 0A25C4 800A55C4 7C002850 */  subf      r0, r0, r5
/* 0A25C8 800A55C8 48000008 */  b         lbl_800A55D0
lbl_800A55CC:
/* 0A25CC 800A55CC 38000000 */  li        r0, 0x0
lbl_800A55D0:
/* 0A25D0 800A55D0 7C005BD6 */  divw      r0, r0, r11
/* 0A25D4 800A55D4 A07E010C */  lhz       r3, 0x10c(r30)
/* 0A25D8 800A55D8 7C030214 */  add       r0, r3, r0
/* 0A25DC 800A55DC 7CA65BD6 */  divw      r5, r6, r11
/* 0A25E0 800A55E0 7C050050 */  subf      r0, r5, r0
/* 0A25E4 800A55E4 B01E0100 */  sth       r0, 0x100(r30)
/* 0A25E8 800A55E8 39200280 */  li        r9, 0x280
/* 0A25EC 800A55EC 3B800000 */  li        r28, 0x0
/* 0A25F0 800A55F0 B13E0102 */  sth       r9, 0x102(r30)
/* 0A25F4 800A55F4 38A00028 */  li        r5, 0x28
/* 0A25F8 800A55F8 38000001 */  li        r0, 0x1
/* 0A25FC 800A55FC A0C40000 */  lhz       r6, 0x0(r4)
/* 0A2600 800A5600 386D8BA4 */  li        r3, D_8018BB24@sda21
/* 0A2604 800A5604 54C60C3C */  clrlslwi  r6, r6, 17, 1
/* 0A2608 800A5608 B0DE0104 */  sth       r6, 0x104(r30)
/* 0A260C 800A560C B39E0106 */  sth       r28, 0x106(r30)
/* 0A2610 800A5610 B3870000 */  sth       r28, 0x0(r7)
/* 0A2614 800A5614 B13E010A */  sth       r9, 0x10a(r30)
/* 0A2618 800A5618 A0840000 */  lhz       r4, 0x0(r4)
/* 0A261C 800A561C 54840C3C */  clrlslwi  r4, r4, 17, 1
/* 0A2620 800A5620 B09E010C */  sth       r4, 0x10c(r30)
/* 0A2624 800A5624 93880000 */  stw       r28, 0x0(r8)
/* 0A2628 800A5628 98BE011C */  stb       r5, 0x11c(r30)
/* 0A262C 800A562C 98BE011D */  stb       r5, 0x11d(r30)
/* 0A2630 800A5630 98BE011E */  stb       r5, 0x11e(r30)
/* 0A2634 800A5634 9B9E012C */  stb       r28, 0x12c(r30)
/* 0A2638 800A5638 901E0130 */  stw       r0, 0x130(r30)
/* 0A263C 800A563C 939E0134 */  stw       r28, 0x134(r30)
/* 0A2640 800A5640 4BFFAE2D */  bl        OSInitThreadQueue
/* 0A2644 800A5644 3C60CC00 */  lis       r3, 0xcc00
/* 0A2648 800A5648 A0032030 */  lhz       r0, 0x2030(r3)
/* 0A264C 800A564C 38832000 */  addi      r4, r3, 0x2000
/* 0A2650 800A5650 38A32000 */  addi      r5, r3, 0x2000
/* 0A2654 800A5654 5400047E */  clrlwi    r0, r0, 17
/* 0A2658 800A5658 B0040030 */  sth       r0, 0x30(r4)
/* 0A265C 800A565C 3C60800A */  lis       r3, fn_800A4CE4@ha
/* 0A2660 800A5660 38834CE4 */  addi      r4, r3, fn_800A4CE4@l
/* 0A2664 800A5664 A0050034 */  lhz       r0, 0x34(r5)
/* 0A2668 800A5668 38600018 */  li        r3, 0x18
/* 0A266C 800A566C 5400047E */  clrlwi    r0, r0, 17
/* 0A2670 800A5670 B0050034 */  sth       r0, 0x34(r5)
/* 0A2674 800A5674 938D8BAC */  stw       r28, D_8018BB2C@sda21(r0)
/* 0A2678 800A5678 938D8BB0 */  stw       r28, D_8018BB30@sda21(r0)
/* 0A267C 800A567C 4BFF8C19 */  bl        __OSSetInterruptHandler
/* 0A2680 800A5680 38600080 */  li        r3, 0x80
/* 0A2684 800A5684 4BFF9015 */  bl        __OSUnmaskInterrupts
lbl_800A5688:
/* 0A2688 800A5688 8001001C */  lwz       r0, 0x1c(r1)
/* 0A268C 800A568C 83E10014 */  lwz       r31, 0x14(r1)
/* 0A2690 800A5690 83C10010 */  lwz       r30, 0x10(r1)
/* 0A2694 800A5694 83A1000C */  lwz       r29, 0xc(r1)
/* 0A2698 800A5698 83810008 */  lwz       r28, 0x8(r1)
/* 0A269C 800A569C 38210018 */  addi      r1, r1, 0x18
/* 0A26A0 800A56A0 7C0803A6 */  mtlr      r0
/* 0A26A4 800A56A4 4E800020 */  blr

glabel VIWaitForRetrace
/* 0A26A8 800A56A8 7C0802A6 */  mflr      r0
/* 0A26AC 800A56AC 90010004 */  stw       r0, 0x4(r1)
/* 0A26B0 800A56B0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0A26B4 800A56B4 93E1000C */  stw       r31, 0xc(r1)
/* 0A26B8 800A56B8 93C10008 */  stw       r30, 0x8(r1)
/* 0A26BC 800A56BC 4BFF8B8D */  bl        OSDisableInterrupts
/* 0A26C0 800A56C0 83CD8B9C */  lwz       r30, D_8018BB1C@sda21(r0)
/* 0A26C4 800A56C4 7C7F1B78 */  mr        r31, r3
lbl_800A56C8:
/* 0A26C8 800A56C8 386D8BA4 */  li        r3, D_8018BB24@sda21
/* 0A26CC 800A56CC 4BFFBB79 */  bl        OSSleepThread
/* 0A26D0 800A56D0 800D8B9C */  lwz       r0, D_8018BB1C@sda21(r0)
/* 0A26D4 800A56D4 7C1E0040 */  cmplw     r30, r0
/* 0A26D8 800A56D8 4182FFF0 */  beq       lbl_800A56C8
/* 0A26DC 800A56DC 7FE3FB78 */  mr        r3, r31
/* 0A26E0 800A56E0 4BFF8B91 */  bl        OSRestoreInterrupts
/* 0A26E4 800A56E4 80010014 */  lwz       r0, 0x14(r1)
/* 0A26E8 800A56E8 83E1000C */  lwz       r31, 0xc(r1)
/* 0A26EC 800A56EC 83C10008 */  lwz       r30, 0x8(r1)
/* 0A26F0 800A56F0 38210010 */  addi      r1, r1, 0x10
/* 0A26F4 800A56F4 7C0803A6 */  mtlr      r0
/* 0A26F8 800A56F8 4E800020 */  blr

glabel fn_800A56FC
/* 0A26FC 800A56FC 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0A2700 800A5700 3D208019 */  lis       r9, D_80188050@ha
/* 0A2704 800A5704 39298050 */  addi      r9, r9, D_80188050@l
/* 0A2708 800A5708 93E10044 */  stw       r31, 0x44(r1)
/* 0A270C 800A570C 8903002C */  lbz       r8, 0x2c(r3)
/* 0A2710 800A5710 A003000E */  lhz       r0, 0xe(r3)
/* 0A2714 800A5714 551F2834 */  slwi      r31, r8, 5
/* 0A2718 800A5718 A1030016 */  lhz       r8, 0x16(r3)
/* 0A271C 800A571C 7C1F01D6 */  mullw     r0, r31, r0
/* 0A2720 800A5720 81630020 */  lwz       r11, 0x20(r3)
/* 0A2724 800A5724 81430030 */  lwz       r10, 0x30(r3)
/* 0A2728 800A5728 A183000A */  lhz       r12, 0xa(r3)
/* 0A272C 800A572C 55080834 */  extlwi    r8, r8, 27, 1
/* 0A2730 800A5730 7C080214 */  add       r0, r8, r0
/* 0A2734 800A5734 7C0A0214 */  add       r0, r10, r0
/* 0A2738 800A5738 2C0B0000 */  cmpwi     r11, 0x0
/* 0A273C 800A573C 90040000 */  stw       r0, 0x0(r4)
/* 0A2740 800A5740 4082000C */  bne       lbl_800A574C
/* 0A2744 800A5744 81040000 */  lwz       r8, 0x0(r4)
/* 0A2748 800A5748 4800000C */  b         lbl_800A5754
lbl_800A574C:
/* 0A274C 800A574C 80040000 */  lwz       r0, 0x0(r4)
/* 0A2750 800A5750 7D00FA14 */  add       r8, r0, r31
lbl_800A5754:
/* 0A2754 800A5754 7D800E70 */  srawi     r0, r12, 1
/* 0A2758 800A5758 91050000 */  stw       r8, 0x0(r5)
/* 0A275C 800A575C 7C000194 */  addze     r0, r0
/* 0A2760 800A5760 5400083C */  slwi      r0, r0, 1
/* 0A2764 800A5764 7C006010 */  subfc     r0, r0, r12
/* 0A2768 800A5768 2C000001 */  cmpwi     r0, 0x1
/* 0A276C 800A576C 40820014 */  bne       lbl_800A5780
/* 0A2770 800A5770 81040000 */  lwz       r8, 0x0(r4)
/* 0A2774 800A5774 80050000 */  lwz       r0, 0x0(r5)
/* 0A2778 800A5778 90040000 */  stw       r0, 0x0(r4)
/* 0A277C 800A577C 91050000 */  stw       r8, 0x0(r5)
lbl_800A5780:
/* 0A2780 800A5780 80040000 */  lwz       r0, 0x0(r4)
/* 0A2784 800A5784 540000BE */  clrlwi    r0, r0, 2
/* 0A2788 800A5788 90040000 */  stw       r0, 0x0(r4)
/* 0A278C 800A578C 80050000 */  lwz       r0, 0x0(r5)
/* 0A2790 800A5790 540000BE */  clrlwi    r0, r0, 2
/* 0A2794 800A5794 90050000 */  stw       r0, 0x0(r5)
/* 0A2798 800A5798 80030044 */  lwz       r0, 0x44(r3)
/* 0A279C 800A579C 2C000000 */  cmpwi     r0, 0x0
/* 0A27A0 800A57A0 41820090 */  beq       lbl_800A5830
/* 0A27A4 800A57A4 8903002C */  lbz       r8, 0x2c(r3)
/* 0A27A8 800A57A8 A003000E */  lhz       r0, 0xe(r3)
/* 0A27AC 800A57AC 551F2834 */  slwi      r31, r8, 5
/* 0A27B0 800A57B0 A1030016 */  lhz       r8, 0x16(r3)
/* 0A27B4 800A57B4 7C1F01D6 */  mullw     r0, r31, r0
/* 0A27B8 800A57B8 81630020 */  lwz       r11, 0x20(r3)
/* 0A27BC 800A57BC 81430048 */  lwz       r10, 0x48(r3)
/* 0A27C0 800A57C0 A183000A */  lhz       r12, 0xa(r3)
/* 0A27C4 800A57C4 55080834 */  extlwi    r8, r8, 27, 1
/* 0A27C8 800A57C8 7C080214 */  add       r0, r8, r0
/* 0A27CC 800A57CC 7C0A0214 */  add       r0, r10, r0
/* 0A27D0 800A57D0 2C0B0000 */  cmpwi     r11, 0x0
/* 0A27D4 800A57D4 90060000 */  stw       r0, 0x0(r6)
/* 0A27D8 800A57D8 4082000C */  bne       lbl_800A57E4
/* 0A27DC 800A57DC 81060000 */  lwz       r8, 0x0(r6)
/* 0A27E0 800A57E0 4800000C */  b         lbl_800A57EC
lbl_800A57E4:
/* 0A27E4 800A57E4 80060000 */  lwz       r0, 0x0(r6)
/* 0A27E8 800A57E8 7D00FA14 */  add       r8, r0, r31
lbl_800A57EC:
/* 0A27EC 800A57EC 7D800E70 */  srawi     r0, r12, 1
/* 0A27F0 800A57F0 91070000 */  stw       r8, 0x0(r7)
/* 0A27F4 800A57F4 7C000194 */  addze     r0, r0
/* 0A27F8 800A57F8 5400083C */  slwi      r0, r0, 1
/* 0A27FC 800A57FC 7C006010 */  subfc     r0, r0, r12
/* 0A2800 800A5800 2C000001 */  cmpwi     r0, 0x1
/* 0A2804 800A5804 40820014 */  bne       lbl_800A5818
/* 0A2808 800A5808 81060000 */  lwz       r8, 0x0(r6)
/* 0A280C 800A580C 80070000 */  lwz       r0, 0x0(r7)
/* 0A2810 800A5810 90060000 */  stw       r0, 0x0(r6)
/* 0A2814 800A5814 91070000 */  stw       r8, 0x0(r7)
lbl_800A5818:
/* 0A2818 800A5818 80060000 */  lwz       r0, 0x0(r6)
/* 0A281C 800A581C 540000BE */  clrlwi    r0, r0, 2
/* 0A2820 800A5820 90060000 */  stw       r0, 0x0(r6)
/* 0A2824 800A5824 80070000 */  lwz       r0, 0x0(r7)
/* 0A2828 800A5828 540000BE */  clrlwi    r0, r0, 2
/* 0A282C 800A582C 90070000 */  stw       r0, 0x0(r7)
lbl_800A5830:
/* 0A2830 800A5830 80040000 */  lwz       r0, 0x0(r4)
/* 0A2834 800A5834 3D000100 */  lis       r8, 0x100
/* 0A2838 800A5838 7C004040 */  cmplw     r0, r8
/* 0A283C 800A583C 40800030 */  bge       lbl_800A586C
/* 0A2840 800A5840 80050000 */  lwz       r0, 0x0(r5)
/* 0A2844 800A5844 7C004040 */  cmplw     r0, r8
/* 0A2848 800A5848 40800024 */  bge       lbl_800A586C
/* 0A284C 800A584C 80060000 */  lwz       r0, 0x0(r6)
/* 0A2850 800A5850 7C004040 */  cmplw     r0, r8
/* 0A2854 800A5854 40800018 */  bge       lbl_800A586C
/* 0A2858 800A5858 80070000 */  lwz       r0, 0x0(r7)
/* 0A285C 800A585C 7C004040 */  cmplw     r0, r8
/* 0A2860 800A5860 4080000C */  bge       lbl_800A586C
/* 0A2864 800A5864 39400000 */  li        r10, 0x0
/* 0A2868 800A5868 48000008 */  b         lbl_800A5870
lbl_800A586C:
/* 0A286C 800A586C 39400001 */  li        r10, 0x1
lbl_800A5870:
/* 0A2870 800A5870 280A0000 */  cmplwi    r10, 0x0
/* 0A2874 800A5874 41820034 */  beq       lbl_800A58A8
/* 0A2878 800A5878 80040000 */  lwz       r0, 0x0(r4)
/* 0A287C 800A587C 5400D97E */  srwi      r0, r0, 5
/* 0A2880 800A5880 90040000 */  stw       r0, 0x0(r4)
/* 0A2884 800A5884 80050000 */  lwz       r0, 0x0(r5)
/* 0A2888 800A5888 5400D97E */  srwi      r0, r0, 5
/* 0A288C 800A588C 90050000 */  stw       r0, 0x0(r5)
/* 0A2890 800A5890 80060000 */  lwz       r0, 0x0(r6)
/* 0A2894 800A5894 5400D97E */  srwi      r0, r0, 5
/* 0A2898 800A5898 90060000 */  stw       r0, 0x0(r6)
/* 0A289C 800A589C 80070000 */  lwz       r0, 0x0(r7)
/* 0A28A0 800A58A0 5400D97E */  srwi      r0, r0, 5
/* 0A28A4 800A58A4 90070000 */  stw       r0, 0x0(r7)
lbl_800A58A8:
/* 0A28A8 800A58A8 80040000 */  lwz       r0, 0x0(r4)
/* 0A28AC 800A58AC 554B6026 */  slwi      r11, r10, 12
/* 0A28B0 800A58B0 3D000001 */  lis       r8, 0x1
/* 0A28B4 800A58B4 B009001E */  sth       r0, 0x1e(r9)
/* 0A28B8 800A58B8 3C000002 */  lis       r0, 0x2
/* 0A28BC 800A58BC 814D8BC0 */  lwz       r10, D_8018BB40@sda21(r0)
/* 0A28C0 800A58C0 818D8BC4 */  lwz       r12, D_8018BB44@sda21(r0)
/* 0A28C4 800A58C4 7D4A4378 */  or        r10, r10, r8
/* 0A28C8 800A58C8 918D8BC4 */  stw       r12, D_8018BB44@sda21(r0)
/* 0A28CC 800A58CC 914D8BC0 */  stw       r10, D_8018BB40@sda21(r0)
/* 0A28D0 800A58D0 81440000 */  lwz       r10, 0x0(r4)
/* 0A28D4 800A58D4 8883003C */  lbz       r4, 0x3c(r3)
/* 0A28D8 800A58D8 554A843E */  srwi      r10, r10, 16
/* 0A28DC 800A58DC 5484402E */  slwi      r4, r4, 8
/* 0A28E0 800A58E0 7D442378 */  or        r4, r10, r4
/* 0A28E4 800A58E4 7D642378 */  or        r4, r11, r4
/* 0A28E8 800A58E8 B089001C */  sth       r4, 0x1c(r9)
/* 0A28EC 800A58EC 808D8BC0 */  lwz       r4, D_8018BB40@sda21(r0)
/* 0A28F0 800A58F0 814D8BC4 */  lwz       r10, D_8018BB44@sda21(r0)
/* 0A28F4 800A58F4 7C800378 */  or        r0, r4, r0
/* 0A28F8 800A58F8 914D8BC4 */  stw       r10, D_8018BB44@sda21(r0)
/* 0A28FC 800A58FC 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A2900 800A5900 80050000 */  lwz       r0, 0x0(r5)
/* 0A2904 800A5904 B0090026 */  sth       r0, 0x26(r9)
/* 0A2908 800A5908 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A290C 800A590C 808D8BC4 */  lwz       r4, D_8018BB44@sda21(r0)
/* 0A2910 800A5910 60001000 */  ori       r0, r0, 0x1000
/* 0A2914 800A5914 908D8BC4 */  stw       r4, D_8018BB44@sda21(r0)
/* 0A2918 800A5918 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A291C 800A591C 80050000 */  lwz       r0, 0x0(r5)
/* 0A2920 800A5920 5400843E */  srwi      r0, r0, 16
/* 0A2924 800A5924 B0090024 */  sth       r0, 0x24(r9)
/* 0A2928 800A5928 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A292C 800A592C 808D8BC4 */  lwz       r4, D_8018BB44@sda21(r0)
/* 0A2930 800A5930 60002000 */  ori       r0, r0, 0x2000
/* 0A2934 800A5934 908D8BC4 */  stw       r4, D_8018BB44@sda21(r0)
/* 0A2938 800A5938 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A293C 800A593C 80030044 */  lwz       r0, 0x44(r3)
/* 0A2940 800A5940 2C000000 */  cmpwi     r0, 0x0
/* 0A2944 800A5944 41820080 */  beq       lbl_800A59C4
/* 0A2948 800A5948 80660000 */  lwz       r3, 0x0(r6)
/* 0A294C 800A594C 38088000 */  addi      r0, r8, -0x8000
/* 0A2950 800A5950 B0690022 */  sth       r3, 0x22(r9)
/* 0A2954 800A5954 806D8BC0 */  lwz       r3, D_8018BB40@sda21(r0)
/* 0A2958 800A5958 808D8BC4 */  lwz       r4, D_8018BB44@sda21(r0)
/* 0A295C 800A595C 60634000 */  ori       r3, r3, 0x4000
/* 0A2960 800A5960 908D8BC4 */  stw       r4, D_8018BB44@sda21(r0)
/* 0A2964 800A5964 906D8BC0 */  stw       r3, D_8018BB40@sda21(r0)
/* 0A2968 800A5968 80660000 */  lwz       r3, 0x0(r6)
/* 0A296C 800A596C 5463843E */  srwi      r3, r3, 16
/* 0A2970 800A5970 B0690020 */  sth       r3, 0x20(r9)
/* 0A2974 800A5974 806D8BC0 */  lwz       r3, D_8018BB40@sda21(r0)
/* 0A2978 800A5978 808D8BC4 */  lwz       r4, D_8018BB44@sda21(r0)
/* 0A297C 800A597C 7C600378 */  or        r0, r3, r0
/* 0A2980 800A5980 908D8BC4 */  stw       r4, D_8018BB44@sda21(r0)
/* 0A2984 800A5984 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A2988 800A5988 80070000 */  lwz       r0, 0x0(r7)
/* 0A298C 800A598C B009002A */  sth       r0, 0x2a(r9)
/* 0A2990 800A5990 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A2994 800A5994 806D8BC4 */  lwz       r3, D_8018BB44@sda21(r0)
/* 0A2998 800A5998 60000400 */  ori       r0, r0, 0x400
/* 0A299C 800A599C 906D8BC4 */  stw       r3, D_8018BB44@sda21(r0)
/* 0A29A0 800A59A0 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A29A4 800A59A4 80070000 */  lwz       r0, 0x0(r7)
/* 0A29A8 800A59A8 5400843E */  srwi      r0, r0, 16
/* 0A29AC 800A59AC B0090028 */  sth       r0, 0x28(r9)
/* 0A29B0 800A59B0 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A29B4 800A59B4 806D8BC4 */  lwz       r3, D_8018BB44@sda21(r0)
/* 0A29B8 800A59B8 60000800 */  ori       r0, r0, 0x800
/* 0A29BC 800A59BC 906D8BC4 */  stw       r3, D_8018BB44@sda21(r0)
/* 0A29C0 800A59C0 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
lbl_800A59C4:
/* 0A29C4 800A59C4 83E10044 */  lwz       r31, 0x44(r1)
/* 0A29C8 800A59C8 38210048 */  addi      r1, r1, 0x48
/* 0A29CC 800A59CC 4E800020 */  blr

glabel fn_800A59D0
/* 0A29D0 800A59D0 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A29D4 800A59D4 3D608019 */  lis       r11, D_80188050@ha
/* 0A29D8 800A59D8 396B8050 */  addi      r11, r11, D_80188050@l
/* 0A29DC 800A59DC 93E10024 */  stw       r31, 0x24(r1)
/* 0A29E0 800A59E0 83E10030 */  lwz       r31, 0x30(r1)
/* 0A29E4 800A59E4 93C10020 */  stw       r30, 0x20(r1)
/* 0A29E8 800A59E8 93A1001C */  stw       r29, 0x1c(r1)
/* 0A29EC 800A59EC A00B006C */  lhz       r0, 0x6c(r11)
/* 0A29F0 800A59F0 540007FF */  clrlwi.   r0, r0, 31
/* 0A29F4 800A59F4 41820010 */  beq       lbl_800A5A04
/* 0A29F8 800A59F8 39800001 */  li        r12, 0x1
/* 0A29FC 800A59FC 3BA00002 */  li        r29, 0x2
/* 0A2A00 800A5A00 4800000C */  b         lbl_800A5A0C
lbl_800A5A04:
/* 0A2A04 800A5A04 39800002 */  li        r12, 0x2
/* 0A2A08 800A5A08 3BA00001 */  li        r29, 0x1
lbl_800A5A0C:
/* 0A2A0C 800A5A0C 547E043E */  clrlwi    r30, r3, 16
/* 0A2A10 800A5A10 7FC00E70 */  srawi     r0, r30, 1
/* 0A2A14 800A5A14 7C000194 */  addze     r0, r0
/* 0A2A18 800A5A18 5400083C */  slwi      r0, r0, 1
/* 0A2A1C 800A5A1C 7C00F011 */  subfc.    r0, r0, r30
/* 0A2A20 800A5A20 4082003C */  bne       lbl_800A5A5C
/* 0A2A24 800A5A24 5583043E */  clrlwi    r3, r12, 16
/* 0A2A28 800A5A28 54C0043E */  clrlwi    r0, r6, 16
/* 0A2A2C 800A5A2C 7C0301D6 */  mullw     r0, r3, r0
/* 0A2A30 800A5A30 5483043E */  clrlwi    r3, r4, 16
/* 0A2A34 800A5A34 7C030050 */  subf      r0, r3, r0
/* 0A2A38 800A5A38 57A3043E */  clrlwi    r3, r29, 16
/* 0A2A3C 800A5A3C 7FA3F1D6 */  mullw     r29, r3, r30
/* 0A2A40 800A5A40 7C1E0050 */  subf      r0, r30, r0
/* 0A2A44 800A5A44 7FC301D6 */  mullw     r30, r3, r0
/* 0A2A48 800A5A48 7C07EA14 */  add       r0, r7, r29
/* 0A2A4C 800A5A4C 7CC9F214 */  add       r6, r9, r30
/* 0A2A50 800A5A50 7C68EA14 */  add       r3, r8, r29
/* 0A2A54 800A5A54 7CEAF214 */  add       r7, r10, r30
/* 0A2A58 800A5A58 48000038 */  b         lbl_800A5A90
lbl_800A5A5C:
/* 0A2A5C 800A5A5C 5583043E */  clrlwi    r3, r12, 16
/* 0A2A60 800A5A60 54C0043E */  clrlwi    r0, r6, 16
/* 0A2A64 800A5A64 7C0301D6 */  mullw     r0, r3, r0
/* 0A2A68 800A5A68 5483043E */  clrlwi    r3, r4, 16
/* 0A2A6C 800A5A6C 7C030050 */  subf      r0, r3, r0
/* 0A2A70 800A5A70 57A3043E */  clrlwi    r3, r29, 16
/* 0A2A74 800A5A74 7FA3F1D6 */  mullw     r29, r3, r30
/* 0A2A78 800A5A78 7C1E0050 */  subf      r0, r30, r0
/* 0A2A7C 800A5A7C 7FC301D6 */  mullw     r30, r3, r0
/* 0A2A80 800A5A80 7C08EA14 */  add       r0, r8, r29
/* 0A2A84 800A5A84 7CCAF214 */  add       r6, r10, r30
/* 0A2A88 800A5A88 7C67EA14 */  add       r3, r7, r29
/* 0A2A8C 800A5A8C 7CE9F214 */  add       r7, r9, r30
lbl_800A5A90:
/* 0A2A90 800A5A90 5488043E */  clrlwi    r8, r4, 16
/* 0A2A94 800A5A94 5584043E */  clrlwi    r4, r12, 16
/* 0A2A98 800A5A98 7C8823D6 */  divw      r4, r8, r4
/* 0A2A9C 800A5A9C 2C1F0000 */  cmpwi     r31, 0x0
/* 0A2AA0 800A5AA0 5484043E */  clrlwi    r4, r4, 16
/* 0A2AA4 800A5AA4 41820020 */  beq       lbl_800A5AC4
/* 0A2AA8 800A5AA8 5484083C */  slwi      r4, r4, 1
/* 0A2AAC 800A5AAC 3884FFFE */  subi      r4, r4, 0x2
/* 0A2AB0 800A5AB0 7C002214 */  add       r0, r0, r4
/* 0A2AB4 800A5AB4 7C632214 */  add       r3, r3, r4
/* 0A2AB8 800A5AB8 38800000 */  li        r4, 0x0
/* 0A2ABC 800A5ABC 38C60002 */  addi      r6, r6, 0x2
/* 0A2AC0 800A5AC0 38E70002 */  addi      r7, r7, 0x2
lbl_800A5AC4:
/* 0A2AC4 800A5AC4 54A5063E */  clrlwi    r5, r5, 24
/* 0A2AC8 800A5AC8 54842336 */  clrlslwi  r4, r4, 16, 4
/* 0A2ACC 800A5ACC 7CA42378 */  or        r4, r5, r4
/* 0A2AD0 800A5AD0 B08B0000 */  sth       r4, 0x0(r11)
/* 0A2AD4 800A5AD4 3C808000 */  lis       r4, 0x8000
/* 0A2AD8 800A5AD8 3D200100 */  lis       r9, 0x100
/* 0A2ADC 800A5ADC 80AD8BC0 */  lwz       r5, D_8018BB40@sda21(r0)
/* 0A2AE0 800A5AE0 3D000200 */  lis       r8, 0x200
/* 0A2AE4 800A5AE4 814D8BC4 */  lwz       r10, D_8018BB44@sda21(r0)
/* 0A2AE8 800A5AE8 7CA42378 */  or        r4, r5, r4
/* 0A2AEC 800A5AEC 3CA00040 */  lis       r5, 0x40
/* 0A2AF0 800A5AF0 914D8BC4 */  stw       r10, D_8018BB44@sda21(r0)
/* 0A2AF4 800A5AF4 908D8BC0 */  stw       r4, D_8018BB40@sda21(r0)
/* 0A2AF8 800A5AF8 3C800080 */  lis       r4, 0x80
/* 0A2AFC 800A5AFC B00B000E */  sth       r0, 0xe(r11)
/* 0A2B00 800A5B00 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A2B04 800A5B04 814D8BC4 */  lwz       r10, D_8018BB44@sda21(r0)
/* 0A2B08 800A5B08 7C004B78 */  or        r0, r0, r9
/* 0A2B0C 800A5B0C 914D8BC4 */  stw       r10, D_8018BB44@sda21(r0)
/* 0A2B10 800A5B10 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A2B14 800A5B14 B0CB000C */  sth       r6, 0xc(r11)
/* 0A2B18 800A5B18 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A2B1C 800A5B1C 80CD8BC4 */  lwz       r6, D_8018BB44@sda21(r0)
/* 0A2B20 800A5B20 7C004378 */  or        r0, r0, r8
/* 0A2B24 800A5B24 90CD8BC4 */  stw       r6, D_8018BB44@sda21(r0)
/* 0A2B28 800A5B28 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A2B2C 800A5B2C B06B0012 */  sth       r3, 0x12(r11)
/* 0A2B30 800A5B30 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A2B34 800A5B34 806D8BC4 */  lwz       r3, D_8018BB44@sda21(r0)
/* 0A2B38 800A5B38 7C002B78 */  or        r0, r0, r5
/* 0A2B3C 800A5B3C 906D8BC4 */  stw       r3, D_8018BB44@sda21(r0)
/* 0A2B40 800A5B40 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A2B44 800A5B44 B0EB0010 */  sth       r7, 0x10(r11)
/* 0A2B48 800A5B48 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A2B4C 800A5B4C 806D8BC4 */  lwz       r3, D_8018BB44@sda21(r0)
/* 0A2B50 800A5B50 7C002378 */  or        r0, r0, r4
/* 0A2B54 800A5B54 906D8BC4 */  stw       r3, D_8018BB44@sda21(r0)
/* 0A2B58 800A5B58 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A2B5C 800A5B5C 83E10024 */  lwz       r31, 0x24(r1)
/* 0A2B60 800A5B60 83C10020 */  lwz       r30, 0x20(r1)
/* 0A2B64 800A5B64 83A1001C */  lwz       r29, 0x1c(r1)
/* 0A2B68 800A5B68 38210028 */  addi      r1, r1, 0x28
/* 0A2B6C 800A5B6C 4E800020 */  blr

glabel VIConfigure
/* 0A2B70 800A5B70 7C0802A6 */  mflr      r0
/* 0A2B74 800A5B74 3CA0800F */  lis       r5, D_800F2B50@ha
/* 0A2B78 800A5B78 90010004 */  stw       r0, 0x4(r1)
/* 0A2B7C 800A5B7C 3C808019 */  lis       r4, D_80188050@ha
/* 0A2B80 800A5B80 9421FF88 */  stwu      r1, -0x78(r1)
/* 0A2B84 800A5B84 BDC10030 */  stmw      r14, 0x30(r1)
/* 0A2B88 800A5B88 3BE30000 */  addi      r31, r3, 0x0
/* 0A2B8C 800A5B8C 39E52B50 */  addi      r15, r5, D_800F2B50@l
/* 0A2B90 800A5B90 3BA48050 */  addi      r29, r4, D_80188050@l
/* 0A2B94 800A5B94 4BFF86B5 */  bl        OSDisableInterrupts
/* 0A2B98 800A5B98 809F0000 */  lwz       r4, 0x0(r31)
/* 0A2B9C 800A5B9C 3B9D0114 */  addi      r28, r29, 0x114
/* 0A2BA0 800A5BA0 801D0114 */  lwz       r0, 0x114(r29)
/* 0A2BA4 800A5BA4 39C30000 */  addi      r14, r3, 0x0
/* 0A2BA8 800A5BA8 548407BE */  clrlwi    r4, r4, 30
/* 0A2BAC 800A5BAC 7C002040 */  cmplw     r0, r4
/* 0A2BB0 800A5BB0 41820010 */  beq       lbl_800A5BC0
/* 0A2BB4 800A5BB4 38000001 */  li        r0, 0x1
/* 0A2BB8 800A5BB8 900D8BBC */  stw       r0, D_8018BB3C@sda21(r0)
/* 0A2BBC 800A5BBC 909C0000 */  stw       r4, 0x0(r28)
lbl_800A5BC0:
/* 0A2BC0 800A5BC0 801F0000 */  lwz       r0, 0x0(r31)
/* 0A2BC4 800A5BC4 3C608000 */  lis       r3, 0x8000
/* 0A2BC8 800A5BC8 820300CC */  lwz       r16, 0xcc(r3)
/* 0A2BCC 800A5BCC 5400F0BE */  srwi      r0, r0, 2
/* 0A2BD0 800A5BD0 28000004 */  cmplwi    r0, 0x4
/* 0A2BD4 800A5BD4 7C110378 */  mr        r17, r0
/* 0A2BD8 800A5BD8 4082006C */  bne       lbl_800A5C44
/* 0A2BDC 800A5BDC 800D8BEC */  lwz       r0, D_8018BB6C@sda21(r0)
/* 0A2BE0 800A5BE0 28000000 */  cmplwi    r0, 0x0
/* 0A2BE4 800A5BE4 40820060 */  bne       lbl_800A5C44
/* 0A2BE8 800A5BE8 38000001 */  li        r0, 0x1
/* 0A2BEC 800A5BEC 4CC63182 */  crclr     cr1eq
/* 0A2BF0 800A5BF0 900D8BEC */  stw       r0, D_8018BB6C@sda21(r0)
/* 0A2BF4 800A5BF4 386F0260 */  addi      r3, r15, 0x260
/* 0A2BF8 800A5BF8 4BFF7F4D */  bl        OSReport
/* 0A2BFC 800A5BFC 386F028C */  addi      r3, r15, 0x28c
/* 0A2C00 800A5C00 4CC63182 */  crclr     cr1eq
/* 0A2C04 800A5C04 4BFF7F41 */  bl        OSReport
/* 0A2C08 800A5C08 386F02B8 */  addi      r3, r15, 0x2b8
/* 0A2C0C 800A5C0C 4CC63182 */  crclr     cr1eq
/* 0A2C10 800A5C10 4BFF7F35 */  bl        OSReport
/* 0A2C14 800A5C14 386F02E4 */  addi      r3, r15, 0x2e4
/* 0A2C18 800A5C18 4CC63182 */  crclr     cr1eq
/* 0A2C1C 800A5C1C 4BFF7F29 */  bl        OSReport
/* 0A2C20 800A5C20 386F0310 */  addi      r3, r15, 0x310
/* 0A2C24 800A5C24 4CC63182 */  crclr     cr1eq
/* 0A2C28 800A5C28 4BFF7F1D */  bl        OSReport
/* 0A2C2C 800A5C2C 386F033C */  addi      r3, r15, 0x33c
/* 0A2C30 800A5C30 4CC63182 */  crclr     cr1eq
/* 0A2C34 800A5C34 4BFF7F11 */  bl        OSReport
/* 0A2C38 800A5C38 386F0260 */  addi      r3, r15, 0x260
/* 0A2C3C 800A5C3C 4CC63182 */  crclr     cr1eq
/* 0A2C40 800A5C40 4BFF7F05 */  bl        OSReport
lbl_800A5C44:
/* 0A2C44 800A5C44 2C100002 */  cmpwi     r16, 0x2
/* 0A2C48 800A5C48 41820030 */  beq       lbl_800A5C78
/* 0A2C4C 800A5C4C 40800014 */  bge       lbl_800A5C60
/* 0A2C50 800A5C50 2C100000 */  cmpwi     r16, 0x0
/* 0A2C54 800A5C54 41820024 */  beq       lbl_800A5C78
/* 0A2C58 800A5C58 4080003C */  bge       lbl_800A5C94
/* 0A2C5C 800A5C5C 48000048 */  b         lbl_800A5CA4
lbl_800A5C60:
/* 0A2C60 800A5C60 2C100006 */  cmpwi     r16, 0x6
/* 0A2C64 800A5C64 41820014 */  beq       lbl_800A5C78
/* 0A2C68 800A5C68 4080003C */  bge       lbl_800A5CA4
/* 0A2C6C 800A5C6C 2C100005 */  cmpwi     r16, 0x5
/* 0A2C70 800A5C70 40800024 */  bge       lbl_800A5C94
/* 0A2C74 800A5C74 48000030 */  b         lbl_800A5CA4
lbl_800A5C78:
/* 0A2C78 800A5C78 28110000 */  cmplwi    r17, 0x0
/* 0A2C7C 800A5C7C 41820044 */  beq       lbl_800A5CC0
/* 0A2C80 800A5C80 28110002 */  cmplwi    r17, 0x2
/* 0A2C84 800A5C84 4182003C */  beq       lbl_800A5CC0
/* 0A2C88 800A5C88 28110006 */  cmplwi    r17, 0x6
/* 0A2C8C 800A5C8C 40820018 */  bne       lbl_800A5CA4
/* 0A2C90 800A5C90 48000030 */  b         lbl_800A5CC0
lbl_800A5C94:
/* 0A2C94 800A5C94 28110001 */  cmplwi    r17, 0x1
/* 0A2C98 800A5C98 41820028 */  beq       lbl_800A5CC0
/* 0A2C9C 800A5C9C 28110005 */  cmplwi    r17, 0x5
/* 0A2CA0 800A5CA0 41820020 */  beq       lbl_800A5CC0
lbl_800A5CA4:
/* 0A2CA4 800A5CA4 38D00000 */  addi      r6, r16, 0x0
/* 0A2CA8 800A5CA8 4CC63182 */  crclr     cr1eq
/* 0A2CAC 800A5CAC 38F10000 */  addi      r7, r17, 0x0
/* 0A2CB0 800A5CB0 38AF0368 */  addi      r5, r15, 0x368
/* 0A2CB4 800A5CB4 386D8764 */  li        r3, D_8018B6E4@sda21
/* 0A2CB8 800A5CB8 3880075C */  li        r4, 0x75c
/* 0A2CBC 800A5CBC 4BFF7F09 */  bl        OSPanic
lbl_800A5CC0:
/* 0A2CC0 800A5CC0 28110000 */  cmplwi    r17, 0x0
/* 0A2CC4 800A5CC4 4182000C */  beq       lbl_800A5CD0
/* 0A2CC8 800A5CC8 28110002 */  cmplwi    r17, 0x2
/* 0A2CCC 800A5CCC 4082000C */  bne       lbl_800A5CD8
lbl_800A5CD0:
/* 0A2CD0 800A5CD0 921D0118 */  stw       r16, 0x118(r29)
/* 0A2CD4 800A5CD4 48000008 */  b         lbl_800A5CDC
lbl_800A5CD8:
/* 0A2CD8 800A5CD8 923D0118 */  stw       r17, 0x118(r29)
lbl_800A5CDC:
/* 0A2CDC 800A5CDC A01F000A */  lhz       r0, 0xa(r31)
/* 0A2CE0 800A5CE0 B01D00F0 */  sth       r0, 0xf0(r29)
/* 0A2CE4 800A5CE4 801C0000 */  lwz       r0, 0x0(r28)
/* 0A2CE8 800A5CE8 28000001 */  cmplwi    r0, 0x1
/* 0A2CEC 800A5CEC 40820010 */  bne       lbl_800A5CFC
/* 0A2CF0 800A5CF0 A01F000C */  lhz       r0, 0xc(r31)
/* 0A2CF4 800A5CF4 54000C3C */  clrlslwi  r0, r0, 17, 1
/* 0A2CF8 800A5CF8 48000008 */  b         lbl_800A5D00
lbl_800A5CFC:
/* 0A2CFC 800A5CFC A01F000C */  lhz       r0, 0xc(r31)
lbl_800A5D00:
/* 0A2D00 800A5D00 B01D00F2 */  sth       r0, 0xf2(r29)
/* 0A2D04 800A5D04 3AFD00F2 */  addi      r23, r29, 0xf2
/* 0A2D08 800A5D08 3B1D00F4 */  addi      r24, r29, 0xf4
/* 0A2D0C 800A5D0C A01F000E */  lhz       r0, 0xe(r31)
/* 0A2D10 800A5D10 3B7D0102 */  addi      r27, r29, 0x102
/* 0A2D14 800A5D14 3B3D0110 */  addi      r25, r29, 0x110
/* 0A2D18 800A5D18 B01D00F4 */  sth       r0, 0xf4(r29)
/* 0A2D1C 800A5D1C 38000000 */  li        r0, 0x0
/* 0A2D20 800A5D20 3A1D010A */  addi      r16, r29, 0x10a
/* 0A2D24 800A5D24 A07F0004 */  lhz       r3, 0x4(r31)
/* 0A2D28 800A5D28 3B5D010C */  addi      r26, r29, 0x10c
/* 0A2D2C 800A5D2C 39FD0106 */  addi      r15, r29, 0x106
/* 0A2D30 800A5D30 B07D0102 */  sth       r3, 0x102(r29)
/* 0A2D34 800A5D34 3A3D0108 */  addi      r17, r29, 0x108
/* 0A2D38 800A5D38 A07F0008 */  lhz       r3, 0x8(r31)
/* 0A2D3C 800A5D3C B07D0104 */  sth       r3, 0x104(r29)
/* 0A2D40 800A5D40 807F0014 */  lwz       r3, 0x14(r31)
/* 0A2D44 800A5D44 907D0110 */  stw       r3, 0x110(r29)
/* 0A2D48 800A5D48 A07D0102 */  lhz       r3, 0x102(r29)
/* 0A2D4C 800A5D4C B07D010A */  sth       r3, 0x10a(r29)
/* 0A2D50 800A5D50 A07D0104 */  lhz       r3, 0x104(r29)
/* 0A2D54 800A5D54 B07D010C */  sth       r3, 0x10c(r29)
/* 0A2D58 800A5D58 B01D0106 */  sth       r0, 0x106(r29)
/* 0A2D5C 800A5D5C B01D0108 */  sth       r0, 0x108(r29)
/* 0A2D60 800A5D60 801C0000 */  lwz       r0, 0x0(r28)
/* 0A2D64 800A5D64 28000002 */  cmplwi    r0, 0x2
/* 0A2D68 800A5D68 4082000C */  bne       lbl_800A5D74
/* 0A2D6C 800A5D6C A01A0000 */  lhz       r0, 0x0(r26)
/* 0A2D70 800A5D70 48000030 */  b         lbl_800A5DA0
lbl_800A5D74:
/* 0A2D74 800A5D74 28000003 */  cmplwi    r0, 0x3
/* 0A2D78 800A5D78 4082000C */  bne       lbl_800A5D84
/* 0A2D7C 800A5D7C A01A0000 */  lhz       r0, 0x0(r26)
/* 0A2D80 800A5D80 48000020 */  b         lbl_800A5DA0
lbl_800A5D84:
/* 0A2D84 800A5D84 80190000 */  lwz       r0, 0x0(r25)
/* 0A2D88 800A5D88 2C000000 */  cmpwi     r0, 0x0
/* 0A2D8C 800A5D8C 40820010 */  bne       lbl_800A5D9C
/* 0A2D90 800A5D90 A01A0000 */  lhz       r0, 0x0(r26)
/* 0A2D94 800A5D94 54000C3C */  clrlslwi  r0, r0, 17, 1
/* 0A2D98 800A5D98 48000008 */  b         lbl_800A5DA0
lbl_800A5D9C:
/* 0A2D9C 800A5D9C A01A0000 */  lhz       r0, 0x0(r26)
lbl_800A5DA0:
/* 0A2DA0 800A5DA0 3ADD00F6 */  addi      r22, r29, 0xf6
/* 0A2DA4 800A5DA4 B01D00F6 */  sth       r0, 0xf6(r29)
/* 0A2DA8 800A5DA8 801C0000 */  lwz       r0, 0x0(r28)
/* 0A2DAC 800A5DAC 28000003 */  cmplwi    r0, 0x3
/* 0A2DB0 800A5DB0 4082000C */  bne       lbl_800A5DBC
/* 0A2DB4 800A5DB4 38000001 */  li        r0, 0x1
/* 0A2DB8 800A5DB8 48000008 */  b         lbl_800A5DC0
lbl_800A5DBC:
/* 0A2DBC 800A5DBC 38000000 */  li        r0, 0x0
lbl_800A5DC0:
/* 0A2DC0 800A5DC0 3A5D0134 */  addi      r18, r29, 0x134
/* 0A2DC4 800A5DC4 901D0134 */  stw       r0, 0x134(r29)
/* 0A2DC8 800A5DC8 3ABD0118 */  addi      r21, r29, 0x118
/* 0A2DCC 800A5DCC 807D0118 */  lwz       r3, 0x118(r29)
/* 0A2DD0 800A5DD0 801C0000 */  lwz       r0, 0x0(r28)
/* 0A2DD4 800A5DD4 5463103A */  slwi      r3, r3, 2
/* 0A2DD8 800A5DD8 7C630214 */  add       r3, r3, r0
/* 0A2DDC 800A5DDC 4BFFF17D */  bl        fn_800A4F58
/* 0A2DE0 800A5DE0 7C7E1B78 */  mr        r30, r3
/* 0A2DE4 800A5DE4 93DD0144 */  stw       r30, 0x144(r29)
/* 0A2DE8 800A5DE8 A0180000 */  lhz       r0, 0x0(r24)
/* 0A2DEC 800A5DEC A89D00F0 */  lha       r4, 0xf0(r29)
/* 0A2DF0 800A5DF0 A86D8BB8 */  lha       r3, D_8018BB38@sda21(r0)
/* 0A2DF4 800A5DF4 20A002D0 */  subfic    r5, r0, 0x2d0
/* 0A2DF8 800A5DF8 A01E0002 */  lhz       r0, 0x2(r30)
/* 0A2DFC 800A5DFC 7C641A14 */  add       r3, r4, r3
/* 0A2E00 800A5E00 7C032800 */  cmpw      r3, r5
/* 0A2E04 800A5E04 40810008 */  ble       lbl_800A5E0C
/* 0A2E08 800A5E08 48000014 */  b         lbl_800A5E1C
lbl_800A5E0C:
/* 0A2E0C 800A5E0C 2C030000 */  cmpwi     r3, 0x0
/* 0A2E10 800A5E10 40800008 */  bge       lbl_800A5E18
/* 0A2E14 800A5E14 38600000 */  li        r3, 0x0
lbl_800A5E18:
/* 0A2E18 800A5E18 7C651B78 */  mr        r5, r3
lbl_800A5E1C:
/* 0A2E1C 800A5E1C B0BD00F8 */  sth       r5, 0xf8(r29)
/* 0A2E20 800A5E20 387D00F8 */  addi      r3, r29, 0xf8
/* 0A2E24 800A5E24 80990000 */  lwz       r4, 0x0(r25)
/* 0A2E28 800A5E28 2C040000 */  cmpwi     r4, 0x0
/* 0A2E2C 800A5E2C 4082000C */  bne       lbl_800A5E38
/* 0A2E30 800A5E30 38800002 */  li        r4, 0x2
/* 0A2E34 800A5E34 48000008 */  b         lbl_800A5E3C
lbl_800A5E38:
/* 0A2E38 800A5E38 38800001 */  li        r4, 0x1
lbl_800A5E3C:
/* 0A2E3C 800A5E3C A0B70000 */  lhz       r5, 0x0(r23)
/* 0A2E40 800A5E40 A8CD8BBA */  lha       r6, D_8018BB3A@sda21(r0)
/* 0A2E44 800A5E44 7CA70734 */  extsh     r7, r5
/* 0A2E48 800A5E48 54A507FE */  clrlwi    r5, r5, 31
/* 0A2E4C 800A5E4C 7CE73214 */  add       r7, r7, r6
/* 0A2E50 800A5E50 7C072800 */  cmpw      r7, r5
/* 0A2E54 800A5E54 40810008 */  ble       lbl_800A5E5C
/* 0A2E58 800A5E58 48000008 */  b         lbl_800A5E60
lbl_800A5E5C:
/* 0A2E5C 800A5E5C 7CA72B78 */  mr        r7, r5
lbl_800A5E60:
/* 0A2E60 800A5E60 B0FD00FA */  sth       r7, 0xfa(r29)
/* 0A2E64 800A5E64 7C000734 */  extsh     r0, r0
/* 0A2E68 800A5E68 5400083C */  slwi      r0, r0, 1
/* 0A2E6C 800A5E6C A1160000 */  lhz       r8, 0x0(r22)
/* 0A2E70 800A5E70 7C050050 */  subf      r0, r5, r0
/* 0A2E74 800A5E74 A8F70000 */  lha       r7, 0x0(r23)
/* 0A2E78 800A5E78 3A7D00FA */  addi      r19, r29, 0xfa
/* 0A2E7C 800A5E7C 7D090734 */  extsh     r9, r8
/* 0A2E80 800A5E80 7D493214 */  add       r10, r9, r6
/* 0A2E84 800A5E84 7D475214 */  add       r10, r7, r10
/* 0A2E88 800A5E88 7D205051 */  subf.     r9, r0, r10
/* 0A2E8C 800A5E8C 4081000C */  ble       lbl_800A5E98
/* 0A2E90 800A5E90 7D205050 */  subf      r9, r0, r10
/* 0A2E94 800A5E94 48000008 */  b         lbl_800A5E9C
lbl_800A5E98:
/* 0A2E98 800A5E98 39200000 */  li        r9, 0x0
lbl_800A5E9C:
/* 0A2E9C 800A5E9C 7D473214 */  add       r10, r7, r6
/* 0A2EA0 800A5EA0 7CE55051 */  subf.     r7, r5, r10
/* 0A2EA4 800A5EA4 4080000C */  bge       lbl_800A5EB0
/* 0A2EA8 800A5EA8 7CE55050 */  subf      r7, r5, r10
/* 0A2EAC 800A5EAC 48000008 */  b         lbl_800A5EB4
lbl_800A5EB0:
/* 0A2EB0 800A5EB0 38E00000 */  li        r7, 0x0
lbl_800A5EB4:
/* 0A2EB4 800A5EB4 7CE83A14 */  add       r7, r8, r7
/* 0A2EB8 800A5EB8 7CE93850 */  subf      r7, r9, r7
/* 0A2EBC 800A5EBC 3A9D00FC */  addi      r20, r29, 0xfc
/* 0A2EC0 800A5EC0 B0FD00FC */  sth       r7, 0xfc(r29)
/* 0A2EC4 800A5EC4 A8F70000 */  lha       r7, 0x0(r23)
/* 0A2EC8 800A5EC8 7D073214 */  add       r8, r7, r6
/* 0A2ECC 800A5ECC 7CE54051 */  subf.     r7, r5, r8
/* 0A2ED0 800A5ED0 4080000C */  bge       lbl_800A5EDC
/* 0A2ED4 800A5ED4 7CE54050 */  subf      r7, r5, r8
/* 0A2ED8 800A5ED8 48000008 */  b         lbl_800A5EE0
lbl_800A5EDC:
/* 0A2EDC 800A5EDC 38E00000 */  li        r7, 0x0
lbl_800A5EE0:
/* 0A2EE0 800A5EE0 7D0723D6 */  divw      r8, r7, r4
/* 0A2EE4 800A5EE4 A0F10000 */  lhz       r7, 0x0(r17)
/* 0A2EE8 800A5EE8 7CE83850 */  subf      r7, r8, r7
/* 0A2EEC 800A5EEC B0FD00FE */  sth       r7, 0xfe(r29)
/* 0A2EF0 800A5EF0 A8F60000 */  lha       r7, 0x0(r22)
/* 0A2EF4 800A5EF4 A9370000 */  lha       r9, 0x0(r23)
/* 0A2EF8 800A5EF8 7D073214 */  add       r8, r7, r6
/* 0A2EFC 800A5EFC 7D094214 */  add       r8, r9, r8
/* 0A2F00 800A5F00 7CE04051 */  subf.     r7, r0, r8
/* 0A2F04 800A5F04 4081000C */  ble       lbl_800A5F10
/* 0A2F08 800A5F08 7CE04050 */  subf      r7, r0, r8
/* 0A2F0C 800A5F0C 48000008 */  b         lbl_800A5F14
lbl_800A5F10:
/* 0A2F10 800A5F10 38E00000 */  li        r7, 0x0
lbl_800A5F14:
/* 0A2F14 800A5F14 7CC93214 */  add       r6, r9, r6
/* 0A2F18 800A5F18 7C053051 */  subf.     r0, r5, r6
/* 0A2F1C 800A5F1C 4080000C */  bge       lbl_800A5F28
/* 0A2F20 800A5F20 7C053050 */  subf      r0, r5, r6
/* 0A2F24 800A5F24 48000008 */  b         lbl_800A5F2C
lbl_800A5F28:
/* 0A2F28 800A5F28 38000000 */  li        r0, 0x0
lbl_800A5F2C:
/* 0A2F2C 800A5F2C 7C0023D6 */  divw      r0, r0, r4
/* 0A2F30 800A5F30 A0BA0000 */  lhz       r5, 0x0(r26)
/* 0A2F34 800A5F34 7C8723D6 */  divw      r4, r7, r4
/* 0A2F38 800A5F38 7C050214 */  add       r0, r5, r0
/* 0A2F3C 800A5F3C 7C040050 */  subf      r0, r4, r0
/* 0A2F40 800A5F40 B01D0100 */  sth       r0, 0x100(r29)
/* 0A2F44 800A5F44 800D8BB4 */  lwz       r0, D_8018BB34@sda21(r0)
/* 0A2F48 800A5F48 28000000 */  cmplwi    r0, 0x0
/* 0A2F4C 800A5F4C 4082000C */  bne       lbl_800A5F58
/* 0A2F50 800A5F50 38000003 */  li        r0, 0x3
/* 0A2F54 800A5F54 90150000 */  stw       r0, 0x0(r21)
lbl_800A5F58:
/* 0A2F58 800A5F58 A0BE0018 */  lhz       r5, 0x18(r30)
/* 0A2F5C 800A5F5C 7CA40E70 */  srawi     r4, r5, 1
/* 0A2F60 800A5F60 7C840194 */  addze     r4, r4
/* 0A2F64 800A5F64 7CA00E70 */  srawi     r0, r5, 1
/* 0A2F68 800A5F68 7C000194 */  addze     r0, r0
/* 0A2F6C 800A5F6C 5400083C */  slwi      r0, r0, 1
/* 0A2F70 800A5F70 7C002810 */  subfc     r0, r0, r5
/* 0A2F74 800A5F74 5400043F */  clrlwi.   r0, r0, 16
/* 0A2F78 800A5F78 5484043E */  clrlwi    r4, r4, 16
/* 0A2F7C 800A5F7C 4182000C */  beq       lbl_800A5F88
/* 0A2F80 800A5F80 A0BE001A */  lhz       r5, 0x1a(r30)
/* 0A2F84 800A5F84 48000008 */  b         lbl_800A5F8C
lbl_800A5F88:
/* 0A2F88 800A5F88 38A00000 */  li        r5, 0x0
lbl_800A5F8C:
/* 0A2F8C 800A5F8C 38050001 */  addi      r0, r5, 0x1
/* 0A2F90 800A5F90 B01D0032 */  sth       r0, 0x32(r29)
/* 0A2F94 800A5F94 38040001 */  addi      r0, r4, 0x1
/* 0A2F98 800A5F98 60001000 */  ori       r0, r0, 0x1000
/* 0A2F9C 800A5F9C 80AD8BC0 */  lwz       r5, D_8018BB40@sda21(r0)
/* 0A2FA0 800A5FA0 389D0002 */  addi      r4, r29, 0x2
/* 0A2FA4 800A5FA4 80CD8BC4 */  lwz       r6, D_8018BB44@sda21(r0)
/* 0A2FA8 800A5FA8 60A50040 */  ori       r5, r5, 0x40
/* 0A2FAC 800A5FAC 90CD8BC4 */  stw       r6, D_8018BB44@sda21(r0)
/* 0A2FB0 800A5FB0 90AD8BC0 */  stw       r5, D_8018BB40@sda21(r0)
/* 0A2FB4 800A5FB4 B01D0030 */  sth       r0, 0x30(r29)
/* 0A2FB8 800A5FB8 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A2FBC 800A5FBC 80AD8BC4 */  lwz       r5, D_8018BB44@sda21(r0)
/* 0A2FC0 800A5FC0 60000080 */  ori       r0, r0, 0x80
/* 0A2FC4 800A5FC4 90AD8BC4 */  stw       r5, D_8018BB44@sda21(r0)
/* 0A2FC8 800A5FC8 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A2FCC 800A5FCC 801C0000 */  lwz       r0, 0x0(r28)
/* 0A2FD0 800A5FD0 A0BD0002 */  lhz       r5, 0x2(r29)
/* 0A2FD4 800A5FD4 28000002 */  cmplwi    r0, 0x2
/* 0A2FD8 800A5FD8 4182000C */  beq       lbl_800A5FE4
/* 0A2FDC 800A5FDC 28000003 */  cmplwi    r0, 0x3
/* 0A2FE0 800A5FE0 40820010 */  bne       lbl_800A5FF0
lbl_800A5FE4:
/* 0A2FE4 800A5FE4 54A007B8 */  rlwinm    r0, r5, 0, 30, 28
/* 0A2FE8 800A5FE8 60050004 */  ori       r5, r0, 0x4
/* 0A2FEC 800A5FEC 4800000C */  b         lbl_800A5FF8
lbl_800A5FF0:
/* 0A2FF0 800A5FF0 54A507B8 */  rlwinm    r5, r5, 0, 30, 28
/* 0A2FF4 800A5FF4 5005177A */  rlwimi    r5, r0, 2, 29, 29
lbl_800A5FF8:
/* 0A2FF8 800A5FF8 80D50000 */  lwz       r6, 0x0(r21)
/* 0A2FFC 800A5FFC 54A50776 */  rlwinm    r5, r5, 0, 29, 27
/* 0A3000 800A6000 80F20000 */  lwz       r7, 0x0(r18)
/* 0A3004 800A6004 28060004 */  cmplwi    r6, 0x4
/* 0A3008 800A6008 54E01838 */  slwi      r0, r7, 3
/* 0A300C 800A600C 7CA50378 */  or        r5, r5, r0
/* 0A3010 800A6010 41820010 */  beq       lbl_800A6020
/* 0A3014 800A6014 3806FFFB */  subi      r0, r6, 0x5
/* 0A3018 800A6018 28000001 */  cmplwi    r0, 0x1
/* 0A301C 800A601C 4181000C */  bgt       lbl_800A6028
lbl_800A6020:
/* 0A3020 800A6020 54A0062A */  rlwinm    r0, r5, 0, 24, 21
/* 0A3024 800A6024 48000010 */  b         lbl_800A6034
lbl_800A6028:
/* 0A3028 800A6028 54A5062A */  rlwinm    r5, r5, 0, 24, 21
/* 0A302C 800A602C 54C0402E */  slwi      r0, r6, 8
/* 0A3030 800A6030 7CA00378 */  or        r0, r5, r0
lbl_800A6034:
/* 0A3034 800A6034 B0040000 */  sth       r0, 0x0(r4)
/* 0A3038 800A6038 3C004000 */  lis       r0, 0x4000
/* 0A303C 800A603C 38DD006C */  addi      r6, r29, 0x6c
/* 0A3040 800A6040 808D8BC0 */  lwz       r4, D_8018BB40@sda21(r0)
/* 0A3044 800A6044 80AD8BC4 */  lwz       r5, D_8018BB44@sda21(r0)
/* 0A3048 800A6048 7C800378 */  or        r0, r4, r0
/* 0A304C 800A604C 90AD8BC4 */  stw       r5, D_8018BB44@sda21(r0)
/* 0A3050 800A6050 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A3054 800A6054 801F0000 */  lwz       r0, 0x0(r31)
/* 0A3058 800A6058 A09D006C */  lhz       r4, 0x6c(r29)
/* 0A305C 800A605C 2C000002 */  cmpwi     r0, 0x2
/* 0A3060 800A6060 41820014 */  beq       lbl_800A6074
/* 0A3064 800A6064 2C000003 */  cmpwi     r0, 0x3
/* 0A3068 800A6068 4182000C */  beq       lbl_800A6074
/* 0A306C 800A606C 2C00001A */  cmpwi     r0, 0x1a
/* 0A3070 800A6070 40820010 */  bne       lbl_800A6080
lbl_800A6074:
/* 0A3074 800A6074 5480003C */  clrrwi    r0, r4, 1
/* 0A3078 800A6078 60000001 */  ori       r0, r0, 0x1
/* 0A307C 800A607C 48000008 */  b         lbl_800A6084
lbl_800A6080:
/* 0A3080 800A6080 5480003C */  clrrwi    r0, r4, 1
lbl_800A6084:
/* 0A3084 800A6084 B0060000 */  sth       r0, 0x0(r6)
/* 0A3088 800A6088 2C070000 */  cmpwi     r7, 0x0
/* 0A308C 800A608C 808D8BC0 */  lwz       r4, D_8018BB40@sda21(r0)
/* 0A3090 800A6090 800D8BC4 */  lwz       r0, D_8018BB44@sda21(r0)
/* 0A3094 800A6094 60000200 */  ori       r0, r0, 0x200
/* 0A3098 800A6098 900D8BC4 */  stw       r0, D_8018BB44@sda21(r0)
/* 0A309C 800A609C 908D8BC0 */  stw       r4, D_8018BB40@sda21(r0)
/* 0A30A0 800A60A0 A0980000 */  lhz       r4, 0x0(r24)
/* 0A30A4 800A60A4 A0B00000 */  lhz       r5, 0x0(r16)
/* 0A30A8 800A60A8 4182000C */  beq       lbl_800A60B4
/* 0A30AC 800A60AC 54A0083C */  slwi      r0, r5, 1
/* 0A30B0 800A60B0 48000008 */  b         lbl_800A60B8
lbl_800A60B4:
/* 0A30B4 800A60B4 7CA02B78 */  mr        r0, r5
lbl_800A60B8:
/* 0A30B8 800A60B8 5408043E */  clrlwi    r8, r0, 16
/* 0A30BC 800A60BC 7C082040 */  cmplw     r8, r4
/* 0A30C0 800A60C0 40800050 */  bge       lbl_800A6110
/* 0A30C4 800A60C4 5506402E */  slwi      r6, r8, 8
/* 0A30C8 800A60C8 3806FFFF */  subi      r0, r6, 0x1
/* 0A30CC 800A60CC 7C040214 */  add       r0, r4, r0
/* 0A30D0 800A60D0 7C002396 */  divwu     r0, r0, r4
/* 0A30D4 800A60D4 60001000 */  ori       r0, r0, 0x1000
/* 0A30D8 800A60D8 B01D004A */  sth       r0, 0x4a(r29)
/* 0A30DC 800A60DC 3C000400 */  lis       r0, 0x400
/* 0A30E0 800A60E0 80CD8BC0 */  lwz       r6, D_8018BB40@sda21(r0)
/* 0A30E4 800A60E4 80ED8BC4 */  lwz       r7, D_8018BB44@sda21(r0)
/* 0A30E8 800A60E8 7CE00378 */  or        r0, r7, r0
/* 0A30EC 800A60EC 900D8BC4 */  stw       r0, D_8018BB44@sda21(r0)
/* 0A30F0 800A60F0 90CD8BC0 */  stw       r6, D_8018BB40@sda21(r0)
/* 0A30F4 800A60F4 B11D0070 */  sth       r8, 0x70(r29)
/* 0A30F8 800A60F8 80CD8BC0 */  lwz       r6, D_8018BB40@sda21(r0)
/* 0A30FC 800A60FC 800D8BC4 */  lwz       r0, D_8018BB44@sda21(r0)
/* 0A3100 800A6100 60000080 */  ori       r0, r0, 0x80
/* 0A3104 800A6104 900D8BC4 */  stw       r0, D_8018BB44@sda21(r0)
/* 0A3108 800A6108 90CD8BC0 */  stw       r6, D_8018BB40@sda21(r0)
/* 0A310C 800A610C 48000024 */  b         lbl_800A6130
lbl_800A6110:
/* 0A3110 800A6110 38000100 */  li        r0, 0x100
/* 0A3114 800A6114 B01D004A */  sth       r0, 0x4a(r29)
/* 0A3118 800A6118 3C000400 */  lis       r0, 0x400
/* 0A311C 800A611C 80CD8BC0 */  lwz       r6, D_8018BB40@sda21(r0)
/* 0A3120 800A6120 80ED8BC4 */  lwz       r7, D_8018BB44@sda21(r0)
/* 0A3124 800A6124 7CE00378 */  or        r0, r7, r0
/* 0A3128 800A6128 900D8BC4 */  stw       r0, D_8018BB44@sda21(r0)
/* 0A312C 800A612C 90CD8BC0 */  stw       r6, D_8018BB40@sda21(r0)
lbl_800A6130:
/* 0A3130 800A6130 A0030000 */  lhz       r0, 0x0(r3)
/* 0A3134 800A6134 218402D0 */  subfic    r12, r4, 0x2d0
/* 0A3138 800A6138 A0DE001A */  lhz       r6, 0x1a(r30)
/* 0A313C 800A613C 3C601000 */  lis       r3, 0x1000
/* 0A3140 800A6140 3D002000 */  lis       r8, 0x2000
/* 0A3144 800A6144 B0DD0006 */  sth       r6, 0x6(r29)
/* 0A3148 800A6148 3D200400 */  lis       r9, 0x400
/* 0A314C 800A614C 3CE00800 */  lis       r7, 0x800
/* 0A3150 800A6150 814D8BC0 */  lwz       r10, D_8018BB40@sda21(r0)
/* 0A3154 800A6154 3CC00010 */  lis       r6, 0x10
/* 0A3158 800A6158 3C800020 */  lis       r4, 0x20
/* 0A315C 800A615C 816D8BC4 */  lwz       r11, D_8018BB44@sda21(r0)
/* 0A3160 800A6160 7D4A1B78 */  or        r10, r10, r3
/* 0A3164 800A6164 3C600004 */  lis       r3, 0x4
/* 0A3168 800A6168 916D8BC4 */  stw       r11, D_8018BB44@sda21(r0)
/* 0A316C 800A616C 914D8BC0 */  stw       r10, D_8018BB40@sda21(r0)
/* 0A3170 800A6170 895E001D */  lbz       r10, 0x1d(r30)
/* 0A3174 800A6174 897E001E */  lbz       r11, 0x1e(r30)
/* 0A3178 800A6178 514B442E */  rlwimi    r11, r10, 8, 16, 23
/* 0A317C 800A617C B17D0004 */  sth       r11, 0x4(r29)
/* 0A3180 800A6180 814D8BC0 */  lwz       r10, D_8018BB40@sda21(r0)
/* 0A3184 800A6184 816D8BC4 */  lwz       r11, D_8018BB44@sda21(r0)
/* 0A3188 800A6188 7D484378 */  or        r8, r10, r8
/* 0A318C 800A618C 916D8BC4 */  stw       r11, D_8018BB44@sda21(r0)
/* 0A3190 800A6190 910D8BC0 */  stw       r8, D_8018BB40@sda21(r0)
/* 0A3194 800A6194 891E001F */  lbz       r8, 0x1f(r30)
/* 0A3198 800A6198 895E001C */  lbz       r10, 0x1c(r30)
/* 0A319C 800A619C 7E080214 */  add       r16, r8, r0
/* 0A31A0 800A61A0 A17E0020 */  lhz       r11, 0x20(r30)
/* 0A31A4 800A61A4 3A10FFD8 */  subi      r16, r16, 0x28
/* 0A31A8 800A61A8 56083C30 */  clrlslwi  r8, r16, 23, 7
/* 0A31AC 800A61AC 7D484378 */  or        r8, r10, r8
/* 0A31B0 800A61B0 B11D000A */  sth       r8, 0xa(r29)
/* 0A31B4 800A61B4 7D0B0214 */  add       r8, r11, r0
/* 0A31B8 800A61B8 38080028 */  addi      r0, r8, 0x28
/* 0A31BC 800A61BC 814D8BC0 */  lwz       r10, D_8018BB40@sda21(r0)
/* 0A31C0 800A61C0 7C0C0050 */  subf      r0, r12, r0
/* 0A31C4 800A61C4 5608BA7E */  srwi      r8, r16, 9
/* 0A31C8 800A61C8 816D8BC4 */  lwz       r11, D_8018BB44@sda21(r0)
/* 0A31CC 800A61CC 5400083C */  slwi      r0, r0, 1
/* 0A31D0 800A61D0 7D494B78 */  or        r9, r10, r9
/* 0A31D4 800A61D4 916D8BC4 */  stw       r11, D_8018BB44@sda21(r0)
/* 0A31D8 800A61D8 7D000378 */  or        r0, r8, r0
/* 0A31DC 800A61DC 912D8BC0 */  stw       r9, D_8018BB40@sda21(r0)
/* 0A31E0 800A61E0 B01D0008 */  sth       r0, 0x8(r29)
/* 0A31E4 800A61E4 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A31E8 800A61E8 810D8BC4 */  lwz       r8, D_8018BB44@sda21(r0)
/* 0A31EC 800A61EC 7C003B78 */  or        r0, r0, r7
/* 0A31F0 800A61F0 910D8BC4 */  stw       r8, D_8018BB44@sda21(r0)
/* 0A31F4 800A61F4 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A31F8 800A61F8 A01E0010 */  lhz       r0, 0x10(r30)
/* 0A31FC 800A61FC 88FE000C */  lbz       r7, 0xc(r30)
/* 0A3200 800A6200 54002834 */  slwi      r0, r0, 5
/* 0A3204 800A6204 7CE00378 */  or        r0, r7, r0
/* 0A3208 800A6208 B01D0016 */  sth       r0, 0x16(r29)
/* 0A320C 800A620C 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A3210 800A6210 80ED8BC4 */  lwz       r7, D_8018BB44@sda21(r0)
/* 0A3214 800A6214 7C003378 */  or        r0, r0, r6
/* 0A3218 800A6218 90ED8BC4 */  stw       r7, D_8018BB44@sda21(r0)
/* 0A321C 800A621C 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A3220 800A6220 A01E0014 */  lhz       r0, 0x14(r30)
/* 0A3224 800A6224 88DE000E */  lbz       r6, 0xe(r30)
/* 0A3228 800A6228 54002834 */  slwi      r0, r0, 5
/* 0A322C 800A622C 7CC00378 */  or        r0, r6, r0
/* 0A3230 800A6230 B01D0014 */  sth       r0, 0x14(r29)
/* 0A3234 800A6234 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A3238 800A6238 80CD8BC4 */  lwz       r6, D_8018BB44@sda21(r0)
/* 0A323C 800A623C 7C002378 */  or        r0, r0, r4
/* 0A3240 800A6240 90CD8BC4 */  stw       r6, D_8018BB44@sda21(r0)
/* 0A3244 800A6244 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A3248 800A6248 A01E0012 */  lhz       r0, 0x12(r30)
/* 0A324C 800A624C 889E000D */  lbz       r4, 0xd(r30)
/* 0A3250 800A6250 54002834 */  slwi      r0, r0, 5
/* 0A3254 800A6254 7C800378 */  or        r0, r4, r0
/* 0A3258 800A6258 B01D001A */  sth       r0, 0x1a(r29)
/* 0A325C 800A625C 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A3260 800A6260 808D8BC4 */  lwz       r4, D_8018BB44@sda21(r0)
/* 0A3264 800A6264 7C001B78 */  or        r0, r0, r3
/* 0A3268 800A6268 908D8BC4 */  stw       r4, D_8018BB44@sda21(r0)
/* 0A326C 800A626C 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A3270 800A6270 A01E0016 */  lhz       r0, 0x16(r30)
/* 0A3274 800A6274 887E000F */  lbz       r3, 0xf(r30)
/* 0A3278 800A6278 54002834 */  slwi      r0, r0, 5
/* 0A327C 800A627C 7C600378 */  or        r0, r3, r0
/* 0A3280 800A6280 B01D0018 */  sth       r0, 0x18(r29)
/* 0A3284 800A6284 806D8BC0 */  lwz       r3, D_8018BB40@sda21(r0)
/* 0A3288 800A6288 3C000008 */  lis       r0, 0x8
/* 0A328C 800A628C 38DD011C */  addi      r6, r29, 0x11c
/* 0A3290 800A6290 808D8BC4 */  lwz       r4, D_8018BB44@sda21(r0)
/* 0A3294 800A6294 7C600378 */  or        r0, r3, r0
/* 0A3298 800A6298 908D8BC4 */  stw       r4, D_8018BB44@sda21(r0)
/* 0A329C 800A629C 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
/* 0A32A0 800A62A0 A07B0000 */  lhz       r3, 0x0(r27)
/* 0A32A4 800A62A4 80990000 */  lwz       r4, 0x0(r25)
/* 0A32A8 800A62A8 3803000F */  addi      r0, r3, 0xf
/* 0A32AC 800A62AC A06F0000 */  lhz       r3, 0x0(r15)
/* 0A32B0 800A62B0 7C002670 */  srawi     r0, r0, 4
/* 0A32B4 800A62B4 7C000194 */  addze     r0, r0
/* 0A32B8 800A62B8 2C040000 */  cmpwi     r4, 0x0
/* 0A32BC 800A62BC 981D011C */  stb       r0, 0x11c(r29)
/* 0A32C0 800A62C0 4082000C */  bne       lbl_800A62CC
/* 0A32C4 800A62C4 88860000 */  lbz       r4, 0x0(r6)
/* 0A32C8 800A62C8 4800000C */  b         lbl_800A62D4
lbl_800A62CC:
/* 0A32CC 800A62CC 88060000 */  lbz       r0, 0x0(r6)
/* 0A32D0 800A62D0 54040E3C */  clrlslwi  r4, r0, 25, 1
lbl_800A62D4:
/* 0A32D4 800A62D4 7C602670 */  srawi     r0, r3, 4
/* 0A32D8 800A62D8 989D011D */  stb       r4, 0x11d(r29)
/* 0A32DC 800A62DC 7C000194 */  addze     r0, r0
/* 0A32E0 800A62E0 54002036 */  slwi      r0, r0, 4
/* 0A32E4 800A62E4 7C001810 */  subfc     r0, r0, r3
/* 0A32E8 800A62E8 981D012C */  stb       r0, 0x12c(r29)
/* 0A32EC 800A62EC 3805000F */  addi      r0, r5, 0xf
/* 0A32F0 800A62F0 3C600800 */  lis       r3, 0x800
/* 0A32F4 800A62F4 889D012C */  lbz       r4, 0x12c(r29)
/* 0A32F8 800A62F8 7C040214 */  add       r0, r4, r0
/* 0A32FC 800A62FC 7C002670 */  srawi     r0, r0, 4
/* 0A3300 800A6300 7C000194 */  addze     r0, r0
/* 0A3304 800A6304 981D011E */  stb       r0, 0x11e(r29)
/* 0A3308 800A6308 881D011E */  lbz       r0, 0x11e(r29)
/* 0A330C 800A630C 889D011D */  lbz       r4, 0x11d(r29)
/* 0A3310 800A6310 5004442E */  rlwimi    r4, r0, 8, 16, 23
/* 0A3314 800A6314 B09D0048 */  sth       r4, 0x48(r29)
/* 0A3318 800A6318 808D8BC0 */  lwz       r4, D_8018BB40@sda21(r0)
/* 0A331C 800A631C 800D8BE8 */  lwz       r0, D_8018BB68@sda21(r0)
/* 0A3320 800A6320 80AD8BC4 */  lwz       r5, D_8018BB44@sda21(r0)
/* 0A3324 800A6324 28000000 */  cmplwi    r0, 0x0
/* 0A3328 800A6328 7CA01B78 */  or        r0, r5, r3
/* 0A332C 800A632C 900D8BC4 */  stw       r0, D_8018BB44@sda21(r0)
/* 0A3330 800A6330 908D8BC0 */  stw       r4, D_8018BB40@sda21(r0)
/* 0A3334 800A6334 4182001C */  beq       lbl_800A6350
/* 0A3338 800A6338 387D00F0 */  addi      r3, r29, 0xf0
/* 0A333C 800A633C 389D0124 */  addi      r4, r29, 0x124
/* 0A3340 800A6340 38BD0128 */  addi      r5, r29, 0x128
/* 0A3344 800A6344 38DD013C */  addi      r6, r29, 0x13c
/* 0A3348 800A6348 38FD0140 */  addi      r7, r29, 0x140
/* 0A334C 800A634C 4BFFF3B1 */  bl        fn_800A56FC
lbl_800A6350:
/* 0A3350 800A6350 801D0130 */  lwz       r0, 0x130(r29)
/* 0A3354 800A6354 90010008 */  stw       r0, 0x8(r1)
/* 0A3358 800A6358 A0730000 */  lhz       r3, 0x0(r19)
/* 0A335C 800A635C A0940000 */  lhz       r4, 0x0(r20)
/* 0A3360 800A6360 88BE0000 */  lbz       r5, 0x0(r30)
/* 0A3364 800A6364 A0DE0002 */  lhz       r6, 0x2(r30)
/* 0A3368 800A6368 A0FE0004 */  lhz       r7, 0x4(r30)
/* 0A336C 800A636C A11E0006 */  lhz       r8, 0x6(r30)
/* 0A3370 800A6370 A13E0008 */  lhz       r9, 0x8(r30)
/* 0A3374 800A6374 A15E000A */  lhz       r10, 0xa(r30)
/* 0A3378 800A6378 4BFFF659 */  bl        fn_800A59D0
/* 0A337C 800A637C 7DC37378 */  mr        r3, r14
/* 0A3380 800A6380 4BFF7EF1 */  bl        OSRestoreInterrupts
/* 0A3384 800A6384 B9C10030 */  lmw       r14, 0x30(r1)
/* 0A3388 800A6388 8001007C */  lwz       r0, 0x7c(r1)
/* 0A338C 800A638C 38210078 */  addi      r1, r1, 0x78
/* 0A3390 800A6390 7C0803A6 */  mtlr      r0
/* 0A3394 800A6394 4E800020 */  blr

glabel VIFlush
/* 0A3398 800A6398 7C0802A6 */  mflr      r0
/* 0A339C 800A639C 3C608019 */  lis       r3, D_80188050@ha
/* 0A33A0 800A63A0 90010004 */  stw       r0, 0x4(r1)
/* 0A33A4 800A63A4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A33A8 800A63A8 93E1001C */  stw       r31, 0x1c(r1)
/* 0A33AC 800A63AC 3BE38050 */  addi      r31, r3, D_80188050@l
/* 0A33B0 800A63B0 93C10018 */  stw       r30, 0x18(r1)
/* 0A33B4 800A63B4 93A10014 */  stw       r29, 0x14(r1)
/* 0A33B8 800A63B8 93810010 */  stw       r28, 0x10(r1)
/* 0A33BC 800A63BC 4BFF7E8D */  bl        OSDisableInterrupts
/* 0A33C0 800A63C0 80AD8BC8 */  lwz       r5, D_8018BB48@sda21(r0)
/* 0A33C4 800A63C4 3BC30000 */  addi      r30, r3, 0x0
/* 0A33C8 800A63C8 38000000 */  li        r0, 0x0
/* 0A33CC 800A63CC 808D8BBC */  lwz       r4, D_8018BB3C@sda21(r0)
/* 0A33D0 800A63D0 7CA32378 */  or        r3, r5, r4
/* 0A33D4 800A63D4 906D8BC8 */  stw       r3, D_8018BB48@sda21(r0)
/* 0A33D8 800A63D8 900D8BBC */  stw       r0, D_8018BB3C@sda21(r0)
/* 0A33DC 800A63DC 808D8BD0 */  lwz       r4, D_8018BB50@sda21(r0)
/* 0A33E0 800A63E0 80AD8BD4 */  lwz       r5, D_8018BB54@sda21(r0)
/* 0A33E4 800A63E4 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A33E8 800A63E8 806D8BC4 */  lwz       r3, D_8018BB44@sda21(r0)
/* 0A33EC 800A63EC 7C800378 */  or        r0, r4, r0
/* 0A33F0 800A63F0 7CA31B78 */  or        r3, r5, r3
/* 0A33F4 800A63F4 906D8BD4 */  stw       r3, D_8018BB54@sda21(r0)
/* 0A33F8 800A63F8 900D8BD0 */  stw       r0, D_8018BB50@sda21(r0)
/* 0A33FC 800A63FC 48000078 */  b         lbl_800A6474
lbl_800A6400:
/* 0A3400 800A6400 806D8BC0 */  lwz       r3, D_8018BB40@sda21(r0)
/* 0A3404 800A6404 38A00020 */  li        r5, 0x20
/* 0A3408 800A6408 838D8BC4 */  lwz       r28, D_8018BB44@sda21(r0)
/* 0A340C 800A640C 389C0000 */  addi      r4, r28, 0x0
/* 0A3410 800A6410 48026531 */  bl        __shr2u
/* 0A3414 800A6414 7C840034 */  cntlzw    r4, r4
/* 0A3418 800A6418 2C040020 */  cmpwi     r4, 0x20
/* 0A341C 800A641C 3800FFFF */  li        r0, -0x1
/* 0A3420 800A6420 7F800038 */  and       r0, r28, r0
/* 0A3424 800A6424 40800008 */  bge       lbl_800A642C
/* 0A3428 800A6428 4800000C */  b         lbl_800A6434
lbl_800A642C:
/* 0A342C 800A642C 7C030034 */  cntlzw    r3, r0
/* 0A3430 800A6430 38830020 */  addi      r4, r3, 0x20
lbl_800A6434:
/* 0A3434 800A6434 5483083C */  slwi      r3, r4, 1
/* 0A3438 800A6438 7C1F1A2E */  lhzx      r0, r31, r3
/* 0A343C 800A643C 7C7F1A14 */  add       r3, r31, r3
/* 0A3440 800A6440 20A4003F */  subfic    r5, r4, 0x3f
/* 0A3444 800A6444 B0030078 */  sth       r0, 0x78(r3)
/* 0A3448 800A6448 38600000 */  li        r3, 0x0
/* 0A344C 800A644C 38800001 */  li        r4, 0x1
/* 0A3450 800A6450 480264CD */  bl        __shl2i
/* 0A3454 800A6454 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A3458 800A6458 7C6518F8 */  nor       r5, r3, r3
/* 0A345C 800A645C 7C8420F8 */  nor       r4, r4, r4
/* 0A3460 800A6460 806D8BC4 */  lwz       r3, D_8018BB44@sda21(r0)
/* 0A3464 800A6464 7C002838 */  and       r0, r0, r5
/* 0A3468 800A6468 7C632038 */  and       r3, r3, r4
/* 0A346C 800A646C 906D8BC4 */  stw       r3, D_8018BB44@sda21(r0)
/* 0A3470 800A6470 900D8BC0 */  stw       r0, D_8018BB40@sda21(r0)
lbl_800A6474:
/* 0A3474 800A6474 800D8BC0 */  lwz       r0, D_8018BB40@sda21(r0)
/* 0A3478 800A6478 38600000 */  li        r3, 0x0
/* 0A347C 800A647C 808D8BC4 */  lwz       r4, D_8018BB44@sda21(r0)
/* 0A3480 800A6480 7C001A78 */  xor       r0, r0, r3
/* 0A3484 800A6484 7C831A78 */  xor       r3, r4, r3
/* 0A3488 800A6488 7C600379 */  or.       r0, r3, r0
/* 0A348C 800A648C 4082FF74 */  bne       lbl_800A6400
/* 0A3490 800A6490 38000001 */  li        r0, 0x1
/* 0A3494 800A6494 900D8BA0 */  stw       r0, D_8018BB20@sda21(r0)
/* 0A3498 800A6498 7FC3F378 */  mr        r3, r30
/* 0A349C 800A649C 801F0120 */  lwz       r0, 0x120(r31)
/* 0A34A0 800A64A0 900D8BE0 */  stw       r0, D_8018BB60@sda21(r0)
/* 0A34A4 800A64A4 4BFF7DCD */  bl        OSRestoreInterrupts
/* 0A34A8 800A64A8 80010024 */  lwz       r0, 0x24(r1)
/* 0A34AC 800A64AC 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A34B0 800A64B0 83C10018 */  lwz       r30, 0x18(r1)
/* 0A34B4 800A64B4 83A10014 */  lwz       r29, 0x14(r1)
/* 0A34B8 800A64B8 83810010 */  lwz       r28, 0x10(r1)
/* 0A34BC 800A64BC 38210020 */  addi      r1, r1, 0x20
/* 0A34C0 800A64C0 7C0803A6 */  mtlr      r0
/* 0A34C4 800A64C4 4E800020 */  blr

glabel VISetNextFrameBuffer
/* 0A34C8 800A64C8 7C0802A6 */  mflr      r0
/* 0A34CC 800A64CC 3C808019 */  lis       r4, D_80188050@ha
/* 0A34D0 800A64D0 90010004 */  stw       r0, 0x4(r1)
/* 0A34D4 800A64D4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A34D8 800A64D8 93E10014 */  stw       r31, 0x14(r1)
/* 0A34DC 800A64DC 3BE48050 */  addi      r31, r4, D_80188050@l
/* 0A34E0 800A64E0 93C10010 */  stw       r30, 0x10(r1)
/* 0A34E4 800A64E4 3BC30000 */  addi      r30, r3, 0x0
/* 0A34E8 800A64E8 4BFF7D61 */  bl        OSDisableInterrupts
/* 0A34EC 800A64EC 93DF0120 */  stw       r30, 0x120(r31)
/* 0A34F0 800A64F0 38000001 */  li        r0, 0x1
/* 0A34F4 800A64F4 3BC30000 */  addi      r30, r3, 0x0
/* 0A34F8 800A64F8 900D8BE8 */  stw       r0, D_8018BB68@sda21(r0)
/* 0A34FC 800A64FC 387F00F0 */  addi      r3, r31, 0xf0
/* 0A3500 800A6500 389F0124 */  addi      r4, r31, 0x124
/* 0A3504 800A6504 38BF0128 */  addi      r5, r31, 0x128
/* 0A3508 800A6508 38DF013C */  addi      r6, r31, 0x13c
/* 0A350C 800A650C 38FF0140 */  addi      r7, r31, 0x140
/* 0A3510 800A6510 4BFFF1ED */  bl        fn_800A56FC
/* 0A3514 800A6514 7FC3F378 */  mr        r3, r30
/* 0A3518 800A6518 4BFF7D59 */  bl        OSRestoreInterrupts
/* 0A351C 800A651C 8001001C */  lwz       r0, 0x1c(r1)
/* 0A3520 800A6520 83E10014 */  lwz       r31, 0x14(r1)
/* 0A3524 800A6524 83C10010 */  lwz       r30, 0x10(r1)
/* 0A3528 800A6528 38210018 */  addi      r1, r1, 0x18
/* 0A352C 800A652C 7C0803A6 */  mtlr      r0
/* 0A3530 800A6530 4E800020 */  blr

glabel fn_800A6534
/* 0A3534 800A6534 7C0802A6 */  mflr      r0
/* 0A3538 800A6538 3C808019 */  lis       r4, D_80188050@ha
/* 0A353C 800A653C 90010004 */  stw       r0, 0x4(r1)
/* 0A3540 800A6540 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A3544 800A6544 93E1001C */  stw       r31, 0x1c(r1)
/* 0A3548 800A6548 3BE48050 */  addi      r31, r4, D_80188050@l
/* 0A354C 800A654C 93C10018 */  stw       r30, 0x18(r1)
/* 0A3550 800A6550 3BC30000 */  addi      r30, r3, 0x0
/* 0A3554 800A6554 4BFF7CF5 */  bl        OSDisableInterrupts
/* 0A3558 800A6558 93DF0130 */  stw       r30, 0x130(r31)
/* 0A355C 800A655C 7C7E1B78 */  mr        r30, r3
/* 0A3560 800A6560 815F0144 */  lwz       r10, 0x144(r31)
/* 0A3564 800A6564 801F0130 */  lwz       r0, 0x130(r31)
/* 0A3568 800A6568 90010008 */  stw       r0, 0x8(r1)
/* 0A356C 800A656C A07F00FA */  lhz       r3, 0xfa(r31)
/* 0A3570 800A6570 A09F00F6 */  lhz       r4, 0xf6(r31)
/* 0A3574 800A6574 88AA0000 */  lbz       r5, 0x0(r10)
/* 0A3578 800A6578 A0CA0002 */  lhz       r6, 0x2(r10)
/* 0A357C 800A657C A0EA0004 */  lhz       r7, 0x4(r10)
/* 0A3580 800A6580 A10A0006 */  lhz       r8, 0x6(r10)
/* 0A3584 800A6584 A12A0008 */  lhz       r9, 0x8(r10)
/* 0A3588 800A6588 A14A000A */  lhz       r10, 0xa(r10)
/* 0A358C 800A658C 4BFFF445 */  bl        fn_800A59D0
/* 0A3590 800A6590 7FC3F378 */  mr        r3, r30
/* 0A3594 800A6594 4BFF7CDD */  bl        OSRestoreInterrupts
/* 0A3598 800A6598 80010024 */  lwz       r0, 0x24(r1)
/* 0A359C 800A659C 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A35A0 800A65A0 83C10018 */  lwz       r30, 0x18(r1)
/* 0A35A4 800A65A4 38210020 */  addi      r1, r1, 0x20
/* 0A35A8 800A65A8 7C0803A6 */  mtlr      r0
/* 0A35AC 800A65AC 4E800020 */  blr

glabel fn_800A65B0
/* 0A35B0 800A65B0 3C60CC00 */  lis       r3, 0xcc00
/* 0A35B4 800A65B4 38E32000 */  addi      r7, r3, 0x2000
/* 0A35B8 800A65B8 A407002C */  lhzu      r0, 0x2c(r7)
/* 0A35BC 800A65BC 38832000 */  addi      r4, r3, 0x2000
/* 0A35C0 800A65C0 5405057E */  clrlwi    r5, r0, 21
lbl_800A65C4:
/* 0A35C4 800A65C4 A0070000 */  lhz       r0, 0x0(r7)
/* 0A35C8 800A65C8 7CA62B78 */  mr        r6, r5
/* 0A35CC 800A65CC A064002E */  lhz       r3, 0x2e(r4)
/* 0A35D0 800A65D0 5405057E */  clrlwi    r5, r0, 21
/* 0A35D4 800A65D4 7C062840 */  cmplw     r6, r5
/* 0A35D8 800A65D8 5463057E */  clrlwi    r3, r3, 21
/* 0A35DC 800A65DC 4082FFE8 */  bne       lbl_800A65C4
/* 0A35E0 800A65E0 80CD8BD8 */  lwz       r6, D_8018BB58@sda21(r0)
/* 0A35E4 800A65E4 3805FFFF */  subi      r0, r5, 0x1
/* 0A35E8 800A65E8 3883FFFF */  subi      r4, r3, 0x1
/* 0A35EC 800A65EC A066001A */  lhz       r3, 0x1a(r6)
/* 0A35F0 800A65F0 5405083C */  slwi      r5, r0, 1
/* 0A35F4 800A65F4 A0060018 */  lhz       r0, 0x18(r6)
/* 0A35F8 800A65F8 7C641B96 */  divwu     r3, r4, r3
/* 0A35FC 800A65FC 7C651A14 */  add       r3, r5, r3
/* 0A3600 800A6600 7C030040 */  cmplw     r3, r0
/* 0A3604 800A6604 4080000C */  bge       lbl_800A6610
/* 0A3608 800A6608 38600001 */  li        r3, 0x1
/* 0A360C 800A660C 4E800020 */  blr
lbl_800A6610:
/* 0A3610 800A6610 38600000 */  li        r3, 0x0
/* 0A3614 800A6614 4E800020 */  blr

glabel VIGetNextField
/* 0A3618 800A6618 7C0802A6 */  mflr      r0
/* 0A361C 800A661C 90010004 */  stw       r0, 0x4(r1)
/* 0A3620 800A6620 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A3624 800A6624 93E1001C */  stw       r31, 0x1c(r1)
/* 0A3628 800A6628 4BFF7C21 */  bl        OSDisableInterrupts
/* 0A362C 800A662C 3C80CC00 */  lis       r4, 0xcc00
/* 0A3630 800A6630 39042000 */  addi      r8, r4, 0x2000
/* 0A3634 800A6634 A408002C */  lhzu      r0, 0x2c(r8)
/* 0A3638 800A6638 38A42000 */  addi      r5, r4, 0x2000
/* 0A363C 800A663C 5406057E */  clrlwi    r6, r0, 21
lbl_800A6640:
/* 0A3640 800A6640 A0080000 */  lhz       r0, 0x0(r8)
/* 0A3644 800A6644 7CC73378 */  mr        r7, r6
/* 0A3648 800A6648 A085002E */  lhz       r4, 0x2e(r5)
/* 0A364C 800A664C 5406057E */  clrlwi    r6, r0, 21
/* 0A3650 800A6650 7C073040 */  cmplw     r7, r6
/* 0A3654 800A6654 5484057E */  clrlwi    r4, r4, 21
/* 0A3658 800A6658 4082FFE8 */  bne       lbl_800A6640
/* 0A365C 800A665C 80ED8BD8 */  lwz       r7, D_8018BB58@sda21(r0)
/* 0A3660 800A6660 3806FFFF */  subi      r0, r6, 0x1
/* 0A3664 800A6664 38A4FFFF */  subi      r5, r4, 0x1
/* 0A3668 800A6668 A087001A */  lhz       r4, 0x1a(r7)
/* 0A366C 800A666C 5406083C */  slwi      r6, r0, 1
/* 0A3670 800A6670 A0070018 */  lhz       r0, 0x18(r7)
/* 0A3674 800A6674 7C852396 */  divwu     r4, r5, r4
/* 0A3678 800A6678 7C862214 */  add       r4, r6, r4
/* 0A367C 800A667C 7C040040 */  cmplw     r4, r0
/* 0A3680 800A6680 4080000C */  bge       lbl_800A668C
/* 0A3684 800A6684 3BE00001 */  li        r31, 0x1
/* 0A3688 800A6688 48000008 */  b         lbl_800A6690
lbl_800A668C:
/* 0A368C 800A668C 3BE00000 */  li        r31, 0x0
lbl_800A6690:
/* 0A3690 800A6690 4BFF7BE1 */  bl        OSRestoreInterrupts
/* 0A3694 800A6694 3C608019 */  lis       r3, D_80188140@ha
/* 0A3698 800A6698 38638140 */  addi      r3, r3, D_80188140@l
/* 0A369C 800A669C A003000A */  lhz       r0, 0xa(r3)
/* 0A36A0 800A66A0 6BE30001 */  xori      r3, r31, 0x1
/* 0A36A4 800A66A4 540007FE */  clrlwi    r0, r0, 31
/* 0A36A8 800A66A8 7C630278 */  xor       r3, r3, r0
/* 0A36AC 800A66AC 80010024 */  lwz       r0, 0x24(r1)
/* 0A36B0 800A66B0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A36B4 800A66B4 38210020 */  addi      r1, r1, 0x20
/* 0A36B8 800A66B8 7C0803A6 */  mtlr      r0
/* 0A36BC 800A66BC 4E800020 */  blr

glabel VIGetCurrentLine
/* 0A36C0 800A66C0 7C0802A6 */  mflr      r0
/* 0A36C4 800A66C4 90010004 */  stw       r0, 0x4(r1)
/* 0A36C8 800A66C8 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0A36CC 800A66CC 93E1000C */  stw       r31, 0xc(r1)
/* 0A36D0 800A66D0 93C10008 */  stw       r30, 0x8(r1)
/* 0A36D4 800A66D4 83ED8BD8 */  lwz       r31, D_8018BB58@sda21(r0)
/* 0A36D8 800A66D8 4BFF7B71 */  bl        OSDisableInterrupts
/* 0A36DC 800A66DC 3C80CC00 */  lis       r4, 0xcc00
/* 0A36E0 800A66E0 39042000 */  addi      r8, r4, 0x2000
/* 0A36E4 800A66E4 A408002C */  lhzu      r0, 0x2c(r8)
/* 0A36E8 800A66E8 38A42000 */  addi      r5, r4, 0x2000
/* 0A36EC 800A66EC 5406057E */  clrlwi    r6, r0, 21
lbl_800A66F0:
/* 0A36F0 800A66F0 A0080000 */  lhz       r0, 0x0(r8)
/* 0A36F4 800A66F4 7CC73378 */  mr        r7, r6
/* 0A36F8 800A66F8 A085002E */  lhz       r4, 0x2e(r5)
/* 0A36FC 800A66FC 5406057E */  clrlwi    r6, r0, 21
/* 0A3700 800A6700 7C073040 */  cmplw     r7, r6
/* 0A3704 800A6704 5487057E */  clrlwi    r7, r4, 21
/* 0A3708 800A6708 4082FFE8 */  bne       lbl_800A66F0
/* 0A370C 800A670C 808D8BD8 */  lwz       r4, D_8018BB58@sda21(r0)
/* 0A3710 800A6710 38A7FFFF */  subi      r5, r7, 0x1
/* 0A3714 800A6714 38C6FFFF */  subi      r6, r6, 0x1
/* 0A3718 800A6718 A004001A */  lhz       r0, 0x1a(r4)
/* 0A371C 800A671C 54C4083C */  slwi      r4, r6, 1
/* 0A3720 800A6720 7C050396 */  divwu     r0, r5, r0
/* 0A3724 800A6724 7FC40214 */  add       r30, r4, r0
/* 0A3728 800A6728 4BFF7B49 */  bl        OSRestoreInterrupts
/* 0A372C 800A672C A01F0018 */  lhz       r0, 0x18(r31)
/* 0A3730 800A6730 7C1E0040 */  cmplw     r30, r0
/* 0A3734 800A6734 41800008 */  blt       lbl_800A673C
/* 0A3738 800A6738 7FC0F050 */  subf      r30, r0, r30
lbl_800A673C:
/* 0A373C 800A673C 57C3F87E */  srwi      r3, r30, 1
/* 0A3740 800A6740 80010014 */  lwz       r0, 0x14(r1)
/* 0A3744 800A6744 83E1000C */  lwz       r31, 0xc(r1)
/* 0A3748 800A6748 83C10008 */  lwz       r30, 0x8(r1)
/* 0A374C 800A674C 38210010 */  addi      r1, r1, 0x10
/* 0A3750 800A6750 7C0803A6 */  mtlr      r0
/* 0A3754 800A6754 4E800020 */  blr

glabel VIGetTvFormat
/* 0A3758 800A6758 7C0802A6 */  mflr      r0
/* 0A375C 800A675C 90010004 */  stw       r0, 0x4(r1)
/* 0A3760 800A6760 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0A3764 800A6764 93E1000C */  stw       r31, 0xc(r1)
/* 0A3768 800A6768 4BFF7AE1 */  bl        OSDisableInterrupts
/* 0A376C 800A676C 80AD8BDC */  lwz       r5, CurrTvMode@sda21(r0)
/* 0A3770 800A6770 28050006 */  cmplwi    r5, 0x6
/* 0A3774 800A6774 41810030 */  bgt       lbl_800A67A4
/* 0A3778 800A6778 3C80800F */  lis       r4, "@724"@ha
/* 0A377C 800A677C 38842F04 */  addi      r4, r4, "@724"@l
/* 0A3780 800A6780 54A0103A */  slwi      r0, r5, 2
/* 0A3784 800A6784 7C04002E */  lwzx      r0, r4, r0
/* 0A3788 800A6788 7C0903A6 */  mtctr     r0
/* 0A378C 800A678C 4E800420 */  bctr
lbl_800A6790:
/* 0A3790 800A6790 3BE00000 */  li        r31, 0x0
/* 0A3794 800A6794 48000010 */  b         lbl_800A67A4
lbl_800A6798:
/* 0A3798 800A6798 3BE00001 */  li        r31, 0x1
/* 0A379C 800A679C 48000008 */  b         lbl_800A67A4
lbl_800A67A0:
/* 0A37A0 800A67A0 7CBF2B78 */  mr        r31, r5
lbl_800A67A4:
/* 0A37A4 800A67A4 4BFF7ACD */  bl        OSRestoreInterrupts
/* 0A37A8 800A67A8 7FE3FB78 */  mr        r3, r31
/* 0A37AC 800A67AC 80010014 */  lwz       r0, 0x14(r1)
/* 0A37B0 800A67B0 83E1000C */  lwz       r31, 0xc(r1)
/* 0A37B4 800A67B4 38210010 */  addi      r1, r1, 0x10
/* 0A37B8 800A67B8 7C0803A6 */  mtlr      r0
/* 0A37BC 800A67BC 4E800020 */  blr

# 0x800F2B50 - 0x800F2F20
.section .data, "wa"

.balign 8

glabel D_800F2B50
	.string "<< Dolphin SDK - VI\trelease build: Sep  5 2002 05:33:13 (0x2301) >>"

glabel D_800F2B94
	.long 0x060000F0
	.long 0x00180019
	.long 0x00030002
	.long 0x0C0D0C0D
	.long 0x02080207
	.long 0x02080207
	.long 0x020D01AD
	.long 0x404769A2
	.long 0x01757A00
	.long 0x019C0600
	.long 0x00F00018
	.long 0x00180004
	.long 0x00040C0C
	.long 0x0C0C0208
	.long 0x02080208
	.long 0x0208020E
	.long 0x01AD4047
	.long 0x69A20175
	.long 0x7A00019C
	.long 0x0500011F
	.long 0x00230024
	.long 0x00010000
	.long 0x0D0C0B0A
	.long 0x026B026A
	.long 0x0269026C
	.long 0x027101B0
	.long 0x404B6AAC
	.long 0x017C8500
	.long 0x01A40500
	.long 0x011F0021
	.long 0x00210002
	.long 0x00020D0B
	.long 0x0D0B026B
	.long 0x026D026B
	.long 0x026D0270
	.long 0x01B0404B
	.long 0x6AAC017C
	.long 0x850001A4
	.long 0x060000F0
	.long 0x00180019
	.long 0x00030002
	.long 0x100F0E0D
	.long 0x02060205
	.long 0x02040207
	.long 0x020D01AD
	.long 0x404E70A2
	.long 0x01757A00
	.long 0x019C0600
	.long 0x00F00018
	.long 0x00180004
	.long 0x0004100E
	.long 0x100E0206
	.long 0x02080206
	.long 0x0208020E
	.long 0x01AD404E
	.long 0x70A20175
	.long 0x7A00019C
	.long 0x0C0001E0
	.long 0x00300030
	.long 0x00060006
	.long 0x18181818
	.long 0x040E040E
	.long 0x040E040E
	.long 0x041A01AD
	.long 0x404769A2
	.long 0x01757A00
	.long 0x019C0C00
	.long 0x01E0002C
	.long 0x002C000A
	.long 0x000A1818
	.long 0x1818040E
	.long 0x040E040E
	.long 0x040E041A
	.long 0x01AD4047
	.long 0x69A8017B
	.long 0x7A00019C
	.long 0x060000F1
	.long 0x00180019
	.long 0x00010000
	.long 0x0C0D0C0D
	.long 0x02080207
	.long 0x02080207
	.long 0x020D01AD
	.long 0x4047699F
	.long 0x01727A00
	.long 0x019C0C00
	.long 0x01E00030
	.long 0x00300006
	.long 0x00061818
	.long 0x1818040E
	.long 0x040E040E
	.long 0x040E041A
	.long 0x01AD4047
	.long 0x69B40187
	.long 0x7A00019C

glabel gap_05_800F2D10_data
.hidden gap_05_800F2D10_data
	.long 0x01F001DC
	.long 0x01AE0174
	.long 0x012900DB
	.long 0x008E0046
	.long 0x000C00E2
	.long 0x00CB00C0
	.long 0x00C400CF
	.long 0x00DE00EC
	.long 0x00FC0008
	.long 0x000F0013
	.long 0x0013000F
	.long 0x000C0008
	.long 0x00010000

jtbl_800F2D44:
	.long lbl_800A4F80
	.long lbl_800A4F88
	.long lbl_800A4FC0
	.long lbl_800A4FC8
	.long lbl_800A4F90
	.long lbl_800A4F98
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FB0
	.long lbl_800A4FB8
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FD0
	.long lbl_800A4FD8
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FA0
	.long lbl_800A4FA8
	.long lbl_800A4FF0
	.long lbl_800A4FF0
	.long lbl_800A4FE0
	.long lbl_800A4FF0
	.long lbl_800A4FE8

glabel gap_05_800F2DB0_data
.hidden gap_05_800F2DB0_data
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A2A
	.long 0x2A2A2A0A
	.long 0x00000000
	.long 0x20212021
	.long 0x20212043
	.long 0x20412055
	.long 0x20542049
	.long 0x204F204E
	.long 0x20212021
	.long 0x20212020
	.long 0x20202020
	.long 0x20202020
	.long 0x2020200A
	.long 0x00000000
	.long 0x54686973
	.long 0x20545620
	.long 0x666F726D
	.long 0x61742022
	.long 0x44454255
	.long 0x475F5041
	.long 0x4C222069
	.long 0x73206F6E
	.long 0x6C792066
	.long 0x6F72200A
	.long 0x00000000
	.long 0x74656D70
	.long 0x6F726172
	.long 0x7920736F
	.long 0x6C757469
	.long 0x6F6E2075
	.long 0x6E74696C
	.long 0x2050414C
	.long 0x20444143
	.long 0x20626F61
	.long 0x7264200A
	.long 0x00000000
	.long 0x69732061
	.long 0x7661696C
	.long 0x61626C65
	.long 0x2E20506C
	.long 0x65617365
	.long 0x20646F20
	.long 0x4E4F5420
	.long 0x75736520
	.long 0x74686973
	.long 0x2020200A
	.long 0x00000000
	.long 0x6D6F6465
	.long 0x20696E20
	.long 0x7265616C
	.long 0x2067616D
	.long 0x65732121
	.long 0x21202020
	.long 0x20202020
	.long 0x20202020
	.long 0x20202020
	.long 0x2020200A
	.long 0x00000000
	.long 0x5649436F
	.long 0x6E666967
	.long 0x75726528
	.long 0x293A2054
	.long 0x72696564
	.long 0x20746F20
	.long 0x6368616E
	.long 0x6765206D
	.long 0x6F646520
	.long 0x66726F6D
	.long 0x20282564
	.long 0x2920746F
	.long 0x20282564
	.long 0x292C2077
	.long 0x68696368
	.long 0x20697320
	.long 0x666F7262
	.long 0x69646465
	.long 0x6E0A0000

"@724":
	.long VIGetTvFormat, lbl_800A6790
	.long VIGetTvFormat, lbl_800A6798
	.long VIGetTvFormat, lbl_800A67A0
	.long VIGetTvFormat, lbl_800A6790
	.long VIGetTvFormat, lbl_800A6798
	.long VIGetTvFormat, lbl_800A67A0
	.long VIGetTvFormat, lbl_800A6790

# 0x80188050 - 0x80188198
.section .bss, "wa"

glabel D_80188050
	.skip 0xF0

glabel D_80188140
	.skip 0x58

# 0x8018B6E0 - 0x8018B6F0
.section .sdata, "wa"

glabel D_8018B6E0
	.long D_800F2B50

glabel D_8018B6E4
	.string "vi.c"

glabel gap_07_8018B6E9_sdata
.hidden gap_07_8018B6E9_sdata
	.long 0x00000000
	.byte 0x00, 0x00, 0x00

# 0x8018BB18 - 0x8018BB70
.section .sbss, "wa"

glabel D_8018BB18
	.skip 0x4

glabel D_8018BB1C
	.skip 0x4

glabel D_8018BB20
	.skip 0x4

glabel D_8018BB24
	.skip 0x8

glabel D_8018BB2C
	.skip 0x4

glabel D_8018BB30
	.skip 0x4

glabel D_8018BB34
	.skip 0x4

glabel D_8018BB38
	.skip 0x2

glabel D_8018BB3A
	.skip 0x2

glabel D_8018BB3C
	.skip 0x4

glabel D_8018BB40
	.skip 0x4

glabel D_8018BB44
	.skip 0x4

glabel D_8018BB48
	.skip 0x8

glabel D_8018BB50
	.skip 0x4

glabel D_8018BB54
	.skip 0x4

glabel D_8018BB58
	.skip 0x4

CurrTvMode:
	.skip 0x4

glabel D_8018BB60
	.skip 0x4

glabel D_8018BB64
	.skip 0x4

glabel D_8018BB68
	.skip 0x4

glabel D_8018BB6C
	.skip 0x4
