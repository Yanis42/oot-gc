# rom.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8006CC1C - 0x8006F6D0

glabel romEvent
/* 069C1C 8006CC1C 7C0802A6 */  mflr      r0
/* 069C20 8006CC20 2C040003 */  cmpwi     r4, 0x3
/* 069C24 8006CC24 90010004 */  stw       r0, 0x4(r1)
/* 069C28 8006CC28 9421FFE0 */  stwu      r1, -0x20(r1)
/* 069C2C 8006CC2C 93E1001C */  stw       r31, 0x1c(r1)
/* 069C30 8006CC30 3BE50000 */  addi      r31, r5, 0x0
/* 069C34 8006CC34 93C10018 */  stw       r30, 0x18(r1)
/* 069C38 8006CC38 3BC30000 */  addi      r30, r3, 0x0
/* 069C3C 8006CC3C 4182008C */  beq       lbl_8006CCC8
/* 069C40 8006CC40 40800018 */  bge       lbl_8006CC58
/* 069C44 8006CC44 2C040002 */  cmpwi     r4, 0x2
/* 069C48 8006CC48 4080001C */  bge       lbl_8006CC64
/* 069C4C 8006CC4C 2C040000 */  cmpwi     r4, 0x0
/* 069C50 8006CC50 408001D0 */  bge       lbl_8006CE20
/* 069C54 8006CC54 480001C4 */  b         lbl_8006CE18
lbl_8006CC58:
/* 069C58 8006CC58 2C041002 */  cmpwi     r4, 0x1002
/* 069C5C 8006CC5C 418200A0 */  beq       lbl_8006CCFC
/* 069C60 8006CC60 480001B8 */  b         lbl_8006CE18
lbl_8006CC64:
/* 069C64 8006CC64 38A00000 */  li        r5, 0x0
/* 069C68 8006CC68 90BE0214 */  stw       r5, 0x214(r30)
/* 069C6C 8006CC6C 3C9E0001 */  addis     r4, r30, 0x1
/* 069C70 8006CC70 38600001 */  li        r3, 0x1
/* 069C74 8006CC74 90A4021C */  stw       r5, 0x21c(r4)
/* 069C78 8006CC78 3800FFFF */  li        r0, -0x1
/* 069C7C 8006CC7C 907E000C */  stw       r3, 0xc(r30)
/* 069C80 8006CC80 90BE0008 */  stw       r5, 0x8(r30)
/* 069C84 8006CC84 93FE0000 */  stw       r31, 0x0(r30)
/* 069C88 8006CC88 98BE0010 */  stb       r5, 0x10(r30)
/* 069C8C 8006CC8C 901E0218 */  stw       r0, 0x218(r30)
/* 069C90 8006CC90 90BE0004 */  stw       r5, 0x4(r30)
/* 069C94 8006CC94 90A40EF4 */  stw       r5, 0xef4(r4)
/* 069C98 8006CC98 90A40EB0 */  stw       r5, 0xeb0(r4)
/* 069C9C 8006CC9C 90A40EB4 */  stw       r5, 0xeb4(r4)
/* 069CA0 8006CCA0 90A40E30 */  stw       r5, 0xe30(r4)
/* 069CA4 8006CCA4 90A40E24 */  stw       r5, 0xe24(r4)
/* 069CA8 8006CCA8 90A40E38 */  stw       r5, 0xe38(r4)
/* 069CAC 8006CCAC 90A40E5C */  stw       r5, 0xe5c(r4)
/* 069CB0 8006CCB0 90A40E58 */  stw       r5, 0xe58(r4)
/* 069CB4 8006CCB4 90A40E3C */  stw       r5, 0xe3c(r4)
/* 069CB8 8006CCB8 90A40E6C */  stw       r5, 0xe6c(r4)
/* 069CBC 8006CCBC 90A40E68 */  stw       r5, 0xe68(r4)
/* 069CC0 8006CCC0 90A40220 */  stw       r5, 0x220(r4)
/* 069CC4 8006CCC4 4800015C */  b         lbl_8006CE20
lbl_8006CCC8:
/* 069CC8 8006CCC8 809E0004 */  lwz       r4, 0x4(r30)
/* 069CCC 8006CCCC 28040000 */  cmplwi    r4, 0x0
/* 069CD0 8006CCD0 41820150 */  beq       lbl_8006CE20
/* 069CD4 8006CCD4 3C7E0001 */  addis     r3, r30, 0x1
/* 069CD8 8006CCD8 80030220 */  lwz       r0, 0x220(r3)
/* 069CDC 8006CCDC 7C040040 */  cmplw     r4, r0
/* 069CE0 8006CCE0 41820140 */  beq       lbl_8006CE20
/* 069CE4 8006CCE4 387E0004 */  addi      r3, r30, 0x4
/* 069CE8 8006CCE8 4BF9A311 */  bl        xlHeapFree
/* 069CEC 8006CCEC 2C030000 */  cmpwi     r3, 0x0
/* 069CF0 8006CCF0 40820130 */  bne       lbl_8006CE20
/* 069CF4 8006CCF4 38600000 */  li        r3, 0x0
/* 069CF8 8006CCF8 4800012C */  b         lbl_8006CE24
lbl_8006CCFC:
/* 069CFC 8006CCFC 801F0000 */  lwz       r0, 0x0(r31)
/* 069D00 8006CD00 2C000001 */  cmpwi     r0, 0x1
/* 069D04 8006CD04 41820094 */  beq       lbl_8006CD98
/* 069D08 8006CD08 40800118 */  bge       lbl_8006CE20
/* 069D0C 8006CD0C 2C000000 */  cmpwi     r0, 0x0
/* 069D10 8006CD10 40800008 */  bge       lbl_8006CD18
/* 069D14 8006CD14 4800010C */  b         lbl_8006CE20
lbl_8006CD18:
/* 069D18 8006CD18 807E0000 */  lwz       r3, 0x0(r30)
/* 069D1C 8006CD1C 3CA08007 */  lis       r5, romPut8@ha
/* 069D20 8006CD20 3CC08007 */  lis       r6, romPut16@ha
/* 069D24 8006CD24 3CE08007 */  lis       r7, romPut32@ha
/* 069D28 8006CD28 80630024 */  lwz       r3, 0x24(r3)
/* 069D2C 8006CD2C 3C808007 */  lis       r4, romPut64@ha
/* 069D30 8006CD30 3904D924 */  addi      r8, r4, romPut64@l
/* 069D34 8006CD34 38A5D93C */  addi      r5, r5, romPut8@l
/* 069D38 8006CD38 38C6D934 */  addi      r6, r6, romPut16@l
/* 069D3C 8006CD3C 38E7D92C */  addi      r7, r7, romPut32@l
/* 069D40 8006CD40 389F0000 */  addi      r4, r31, 0x0
/* 069D44 8006CD44 4BFC7BA1 */  bl        cpuSetDevicePut
/* 069D48 8006CD48 2C030000 */  cmpwi     r3, 0x0
/* 069D4C 8006CD4C 4082000C */  bne       lbl_8006CD58
/* 069D50 8006CD50 38600000 */  li        r3, 0x0
/* 069D54 8006CD54 480000D0 */  b         lbl_8006CE24
lbl_8006CD58:
/* 069D58 8006CD58 807E0000 */  lwz       r3, 0x0(r30)
/* 069D5C 8006CD5C 3CA08007 */  lis       r5, romGet8@ha
/* 069D60 8006CD60 3CC08007 */  lis       r6, romGet16@ha
/* 069D64 8006CD64 3CE08007 */  lis       r7, romGet32@ha
/* 069D68 8006CD68 80630024 */  lwz       r3, 0x24(r3)
/* 069D6C 8006CD6C 3C808007 */  lis       r4, romGet64@ha
/* 069D70 8006CD70 3904D758 */  addi      r8, r4, romGet64@l
/* 069D74 8006CD74 38A5D8B4 */  addi      r5, r5, romGet8@l
/* 069D78 8006CD78 38C6D844 */  addi      r6, r6, romGet16@l
/* 069D7C 8006CD7C 38E7D7D4 */  addi      r7, r7, romGet32@l
/* 069D80 8006CD80 389F0000 */  addi      r4, r31, 0x0
/* 069D84 8006CD84 4BFC7B79 */  bl        cpuSetDeviceGet
/* 069D88 8006CD88 2C030000 */  cmpwi     r3, 0x0
/* 069D8C 8006CD8C 40820094 */  bne       lbl_8006CE20
/* 069D90 8006CD90 38600000 */  li        r3, 0x0
/* 069D94 8006CD94 48000090 */  b         lbl_8006CE24
lbl_8006CD98:
/* 069D98 8006CD98 807E0000 */  lwz       r3, 0x0(r30)
/* 069D9C 8006CD9C 3CA08007 */  lis       r5, romPutDebug8@ha
/* 069DA0 8006CDA0 3CC08007 */  lis       r6, romPutDebug16@ha
/* 069DA4 8006CDA4 3CE08007 */  lis       r7, romPutDebug32@ha
/* 069DA8 8006CDA8 80630024 */  lwz       r3, 0x24(r3)
/* 069DAC 8006CDAC 3C808007 */  lis       r4, romPutDebug64@ha
/* 069DB0 8006CDB0 3904D738 */  addi      r8, r4, romPutDebug64@l
/* 069DB4 8006CDB4 38A5D750 */  addi      r5, r5, romPutDebug8@l
/* 069DB8 8006CDB8 38C6D748 */  addi      r6, r6, romPutDebug16@l
/* 069DBC 8006CDBC 38E7D740 */  addi      r7, r7, romPutDebug32@l
/* 069DC0 8006CDC0 389F0000 */  addi      r4, r31, 0x0
/* 069DC4 8006CDC4 4BFC7B21 */  bl        cpuSetDevicePut
/* 069DC8 8006CDC8 2C030000 */  cmpwi     r3, 0x0
/* 069DCC 8006CDCC 4082000C */  bne       lbl_8006CDD8
/* 069DD0 8006CDD0 38600000 */  li        r3, 0x0
/* 069DD4 8006CDD4 48000050 */  b         lbl_8006CE24
lbl_8006CDD8:
/* 069DD8 8006CDD8 807E0000 */  lwz       r3, 0x0(r30)
/* 069DDC 8006CDDC 3CA08007 */  lis       r5, romGetDebug8@ha
/* 069DE0 8006CDE0 3CC08007 */  lis       r6, romGetDebug16@ha
/* 069DE4 8006CDE4 3CE08007 */  lis       r7, romGetDebug32@ha
/* 069DE8 8006CDE8 80630024 */  lwz       r3, 0x24(r3)
/* 069DEC 8006CDEC 3C808007 */  lis       r4, romGetDebug64@ha
/* 069DF0 8006CDF0 3904D6F4 */  addi      r8, r4, romGetDebug64@l
/* 069DF4 8006CDF4 38A5D728 */  addi      r5, r5, romGetDebug8@l
/* 069DF8 8006CDF8 38C6D718 */  addi      r6, r6, romGetDebug16@l
/* 069DFC 8006CDFC 38E7D708 */  addi      r7, r7, romGetDebug32@l
/* 069E00 8006CE00 389F0000 */  addi      r4, r31, 0x0
/* 069E04 8006CE04 4BFC7AF9 */  bl        cpuSetDeviceGet
/* 069E08 8006CE08 2C030000 */  cmpwi     r3, 0x0
/* 069E0C 8006CE0C 40820014 */  bne       lbl_8006CE20
/* 069E10 8006CE10 38600000 */  li        r3, 0x0
/* 069E14 8006CE14 48000010 */  b         lbl_8006CE24
lbl_8006CE18:
/* 069E18 8006CE18 38600000 */  li        r3, 0x0
/* 069E1C 8006CE1C 48000008 */  b         lbl_8006CE24
lbl_8006CE20:
/* 069E20 8006CE20 38600001 */  li        r3, 0x1
lbl_8006CE24:
/* 069E24 8006CE24 80010024 */  lwz       r0, 0x24(r1)
/* 069E28 8006CE28 83E1001C */  lwz       r31, 0x1c(r1)
/* 069E2C 8006CE2C 83C10018 */  lwz       r30, 0x18(r1)
/* 069E30 8006CE30 7C0803A6 */  mtlr      r0
/* 069E34 8006CE34 38210020 */  addi      r1, r1, 0x20
/* 069E38 8006CE38 4E800020 */  blr

glabel romGetImage
/* 069E3C 8006CE3C 88030010 */  lbz       r0, 0x10(r3)
/* 069E40 8006CE40 7C000775 */  extsb.    r0, r0
/* 069E44 8006CE44 4082000C */  bne       lbl_8006CE50
/* 069E48 8006CE48 38600000 */  li        r3, 0x0
/* 069E4C 8006CE4C 4E800020 */  blr
lbl_8006CE50:
/* 069E50 8006CE50 28040000 */  cmplwi    r4, 0x0
/* 069E54 8006CE54 41820028 */  beq       lbl_8006CE7C
/* 069E58 8006CE58 38C00000 */  li        r6, 0x0
/* 069E5C 8006CE5C 48000010 */  b         lbl_8006CE6C
lbl_8006CE60:
/* 069E60 8006CE60 98A40000 */  stb       r5, 0x0(r4)
/* 069E64 8006CE64 38C60001 */  addi      r6, r6, 0x1
/* 069E68 8006CE68 38840001 */  addi      r4, r4, 0x1
lbl_8006CE6C:
/* 069E6C 8006CE6C 38060010 */  addi      r0, r6, 0x10
/* 069E70 8006CE70 7CA300AE */  lbzx      r5, r3, r0
/* 069E74 8006CE74 7CA00775 */  extsb.    r0, r5
/* 069E78 8006CE78 4082FFE8 */  bne       lbl_8006CE60
lbl_8006CE7C:
/* 069E7C 8006CE7C 38600001 */  li        r3, 0x1
/* 069E80 8006CE80 4E800020 */  blr

glabel romSetImage
/* 069E84 8006CE84 7C0802A6 */  mflr      r0
/* 069E88 8006CE88 38A00000 */  li        r5, 0x0
/* 069E8C 8006CE8C 90010004 */  stw       r0, 0x4(r1)
/* 069E90 8006CE90 9421FFD8 */  stwu      r1, -0x28(r1)
/* 069E94 8006CE94 93E10024 */  stw       r31, 0x24(r1)
/* 069E98 8006CE98 93C10020 */  stw       r30, 0x20(r1)
/* 069E9C 8006CE9C 93A1001C */  stw       r29, 0x1c(r1)
/* 069EA0 8006CEA0 3BA40000 */  addi      r29, r4, 0x0
/* 069EA4 8006CEA4 93810018 */  stw       r28, 0x18(r1)
/* 069EA8 8006CEA8 3B830000 */  addi      r28, r3, 0x0
/* 069EAC 8006CEAC 387D0000 */  addi      r3, r29, 0x0
/* 069EB0 8006CEB0 48000014 */  b         lbl_8006CEC4
lbl_8006CEB4:
/* 069EB4 8006CEB4 38050010 */  addi      r0, r5, 0x10
/* 069EB8 8006CEB8 7C9C01AE */  stbx      r4, r28, r0
/* 069EBC 8006CEBC 38A50001 */  addi      r5, r5, 0x1
/* 069EC0 8006CEC0 38630001 */  addi      r3, r3, 0x1
lbl_8006CEC4:
/* 069EC4 8006CEC4 88830000 */  lbz       r4, 0x0(r3)
/* 069EC8 8006CEC8 7C800775 */  extsb.    r0, r4
/* 069ECC 8006CECC 4182000C */  beq       lbl_8006CED8
/* 069ED0 8006CED0 2C050200 */  cmpwi     r5, 0x200
/* 069ED4 8006CED4 4180FFE0 */  blt       lbl_8006CEB4
lbl_8006CED8:
/* 069ED8 8006CED8 7C7C2A14 */  add       r3, r28, r5
/* 069EDC 8006CEDC 3BC00000 */  li        r30, 0x0
/* 069EE0 8006CEE0 9BC30010 */  stb       r30, 0x10(r3)
/* 069EE4 8006CEE4 38610010 */  addi      r3, r1, 0x10
/* 069EE8 8006CEE8 389C0010 */  addi      r4, r28, 0x10
/* 069EEC 8006CEEC 4BF991C1 */  bl        xlFileGetSize
/* 069EF0 8006CEF0 2C030000 */  cmpwi     r3, 0x0
/* 069EF4 8006CEF4 4182001C */  beq       lbl_8006CF10
/* 069EF8 8006CEF8 3FFC0001 */  addis     r31, r28, 0x1
/* 069EFC 8006CEFC 80010010 */  lwz       r0, 0x10(r1)
/* 069F00 8006CF00 807F0EF4 */  lwz       r3, 0xef4(r31)
/* 069F04 8006CF04 7C030050 */  subf      r0, r3, r0
/* 069F08 8006CF08 901C0214 */  stw       r0, 0x214(r28)
/* 069F0C 8006CF0C 4800000C */  b         lbl_8006CF18
lbl_8006CF10:
/* 069F10 8006CF10 38600000 */  li        r3, 0x0
/* 069F14 8006CF14 480000C4 */  b         lbl_8006CFD8
lbl_8006CF18:
/* 069F18 8006CF18 38BD0000 */  addi      r5, r29, 0x0
/* 069F1C 8006CF1C 38610014 */  addi      r3, r1, 0x14
/* 069F20 8006CF20 38800001 */  li        r4, 0x1
/* 069F24 8006CF24 4BF990B5 */  bl        xlFileOpen
/* 069F28 8006CF28 2C030000 */  cmpwi     r3, 0x0
/* 069F2C 8006CF2C 4082000C */  bne       lbl_8006CF38
/* 069F30 8006CF30 38600000 */  li        r3, 0x0
/* 069F34 8006CF34 480000A4 */  b         lbl_8006CFD8
lbl_8006CF38:
/* 069F38 8006CF38 80610014 */  lwz       r3, 0x14(r1)
/* 069F3C 8006CF3C 809F0EF4 */  lwz       r4, 0xef4(r31)
/* 069F40 8006CF40 4BF98F39 */  bl        xlFileSetPosition
/* 069F44 8006CF44 2C030000 */  cmpwi     r3, 0x0
/* 069F48 8006CF48 4082000C */  bne       lbl_8006CF54
/* 069F4C 8006CF4C 38600000 */  li        r3, 0x0
/* 069F50 8006CF50 48000088 */  b         lbl_8006CFD8
lbl_8006CF54:
/* 069F54 8006CF54 7FE4FB78 */  mr        r4, r31
/* 069F58 8006CF58 80610014 */  lwz       r3, 0x14(r1)
/* 069F5C 8006CF5C 38A00040 */  li        r5, 0x40
/* 069F60 8006CF60 38840E70 */  addi      r4, r4, 0xe70
/* 069F64 8006CF64 4BF98F3D */  bl        xlFileGet
/* 069F68 8006CF68 2C030000 */  cmpwi     r3, 0x0
/* 069F6C 8006CF6C 4082000C */  bne       lbl_8006CF78
/* 069F70 8006CF70 38600000 */  li        r3, 0x0
/* 069F74 8006CF74 48000064 */  b         lbl_8006CFD8
lbl_8006CF78:
/* 069F78 8006CF78 38610014 */  addi      r3, r1, 0x14
/* 069F7C 8006CF7C 4BF99029 */  bl        xlFileClose
/* 069F80 8006CF80 2C030000 */  cmpwi     r3, 0x0
/* 069F84 8006CF84 4082000C */  bne       lbl_8006CF90
/* 069F88 8006CF88 38600000 */  li        r3, 0x0
/* 069F8C 8006CF8C 4800004C */  b         lbl_8006CFD8
lbl_8006CF90:
/* 069F90 8006CF90 881F0E70 */  lbz       r0, 0xe70(r31)
/* 069F94 8006CF94 28000037 */  cmplwi    r0, 0x37
/* 069F98 8006CF98 40820014 */  bne       lbl_8006CFAC
/* 069F9C 8006CF9C 881F0E71 */  lbz       r0, 0xe71(r31)
/* 069FA0 8006CFA0 28000080 */  cmplwi    r0, 0x80
/* 069FA4 8006CFA4 40820008 */  bne       lbl_8006CFAC
/* 069FA8 8006CFA8 3BC00001 */  li        r30, 0x1
lbl_8006CFAC:
/* 069FAC 8006CFAC 2C1E0000 */  cmpwi     r30, 0x0
/* 069FB0 8006CFB0 4182000C */  beq       lbl_8006CFBC
/* 069FB4 8006CFB4 38000001 */  li        r0, 0x1
/* 069FB8 8006CFB8 48000008 */  b         lbl_8006CFC0
lbl_8006CFBC:
/* 069FBC 8006CFBC 38000000 */  li        r0, 0x0
lbl_8006CFC0:
/* 069FC0 8006CFC0 3C9C0001 */  addis     r4, r28, 0x1
/* 069FC4 8006CFC4 901C0008 */  stw       r0, 0x8(r28)
/* 069FC8 8006CFC8 387D0000 */  addi      r3, r29, 0x0
/* 069FCC 8006CFCC 38840EB8 */  addi      r4, r4, 0xeb8
/* 069FD0 8006CFD0 4BFA1BE9 */  bl        simulatorDVDOpen
/* 069FD4 8006CFD4 38600001 */  li        r3, 0x1
lbl_8006CFD8:
/* 069FD8 8006CFD8 8001002C */  lwz       r0, 0x2c(r1)
/* 069FDC 8006CFDC 83E10024 */  lwz       r31, 0x24(r1)
/* 069FE0 8006CFE0 83C10020 */  lwz       r30, 0x20(r1)
/* 069FE4 8006CFE4 7C0803A6 */  mtlr      r0
/* 069FE8 8006CFE8 83A1001C */  lwz       r29, 0x1c(r1)
/* 069FEC 8006CFEC 83810018 */  lwz       r28, 0x18(r1)
/* 069FF0 8006CFF0 38210028 */  addi      r1, r1, 0x28
/* 069FF4 8006CFF4 4E800020 */  blr

glabel romSetCacheSize
/* 069FF8 8006CFF8 7C0802A6 */  mflr      r0
/* 069FFC 8006CFFC 90010004 */  stw       r0, 0x4(r1)
/* 06A000 8006D000 3C000010 */  lis       r0, 0x10
/* 06A004 8006D004 7C040000 */  cmpw      r4, r0
/* 06A008 8006D008 9421FFE8 */  stwu      r1, -0x18(r1)
/* 06A00C 8006D00C 93E10014 */  stw       r31, 0x14(r1)
/* 06A010 8006D010 93C10010 */  stw       r30, 0x10(r1)
/* 06A014 8006D014 3BC30000 */  addi      r30, r3, 0x0
/* 06A018 8006D018 4080000C */  bge       lbl_8006D024
/* 06A01C 8006D01C 3C800010 */  lis       r4, 0x10
/* 06A020 8006D020 48000020 */  b         lbl_8006D040
lbl_8006D024:
/* 06A024 8006D024 3C000080 */  lis       r0, 0x80
/* 06A028 8006D028 7C040000 */  cmpw      r4, r0
/* 06A02C 8006D02C 4081000C */  ble       lbl_8006D038
/* 06A030 8006D030 3C800080 */  lis       r4, 0x80
/* 06A034 8006D034 4800000C */  b         lbl_8006D040
lbl_8006D038:
/* 06A038 8006D038 38041FFF */  addi      r0, r4, 0x1fff
/* 06A03C 8006D03C 54040024 */  clrrwi    r4, r0, 13
lbl_8006D040:
/* 06A040 8006D040 3FFE0001 */  addis     r31, r30, 0x1
/* 06A044 8006D044 7C806E70 */  srawi     r0, r4, 13
/* 06A048 8006D048 909F0E6C */  stw       r4, 0xe6c(r31)
/* 06A04C 8006D04C 7C000194 */  addze     r0, r0
/* 06A050 8006D050 901F0E68 */  stw       r0, 0xe68(r31)
/* 06A054 8006D054 387E0004 */  addi      r3, r30, 0x4
/* 06A058 8006D058 64843000 */  oris      r4, r4, 0x3000
/* 06A05C 8006D05C 4BF9A0B9 */  bl        xlHeapTake
/* 06A060 8006D060 2C030000 */  cmpwi     r3, 0x0
/* 06A064 8006D064 4082000C */  bne       lbl_8006D070
/* 06A068 8006D068 38600000 */  li        r3, 0x0
/* 06A06C 8006D06C 48000010 */  b         lbl_8006D07C
lbl_8006D070:
/* 06A070 8006D070 801E0004 */  lwz       r0, 0x4(r30)
/* 06A074 8006D074 38600001 */  li        r3, 0x1
/* 06A078 8006D078 901F0220 */  stw       r0, 0x220(r31)
lbl_8006D07C:
/* 06A07C 8006D07C 8001001C */  lwz       r0, 0x1c(r1)
/* 06A080 8006D080 83E10014 */  lwz       r31, 0x14(r1)
/* 06A084 8006D084 83C10010 */  lwz       r30, 0x10(r1)
/* 06A088 8006D088 7C0803A6 */  mtlr      r0
/* 06A08C 8006D08C 38210018 */  addi      r1, r1, 0x18
/* 06A090 8006D090 4E800020 */  blr

glabel romUpdate
/* 06A094 8006D094 7C0802A6 */  mflr      r0
/* 06A098 8006D098 90010004 */  stw       r0, 0x4(r1)
/* 06A09C 8006D09C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 06A0A0 8006D0A0 93E10014 */  stw       r31, 0x14(r1)
/* 06A0A4 8006D0A4 3BE30000 */  addi      r31, r3, 0x0
/* 06A0A8 8006D0A8 3C7F0001 */  addis     r3, r31, 0x1
/* 06A0AC 8006D0AC 93C10010 */  stw       r30, 0x10(r1)
/* 06A0B0 8006D0B0 80030E24 */  lwz       r0, 0xe24(r3)
/* 06A0B4 8006D0B4 2C000000 */  cmpwi     r0, 0x0
/* 06A0B8 8006D0B8 40820010 */  bne       lbl_8006D0C8
/* 06A0BC 8006D0BC 80030E38 */  lwz       r0, 0xe38(r3)
/* 06A0C0 8006D0C0 2C000000 */  cmpwi     r0, 0x0
/* 06A0C4 8006D0C4 418200E4 */  beq       lbl_8006D1A8
lbl_8006D0C8:
/* 06A0C8 8006D0C8 3C9F0001 */  addis     r4, r31, 0x1
/* 06A0CC 8006D0CC 80040E3C */  lwz       r0, 0xe3c(r4)
/* 06A0D0 8006D0D0 2C000000 */  cmpwi     r0, 0x0
/* 06A0D4 8006D0D4 41820034 */  beq       lbl_8006D108
/* 06A0D8 8006D0D8 80640E40 */  lwz       r3, 0xe40(r4)
/* 06A0DC 8006D0DC 80040E64 */  lwz       r0, 0xe64(r4)
/* 06A0E0 8006D0E0 7C030040 */  cmplw     r3, r0
/* 06A0E4 8006D0E4 40820024 */  bne       lbl_8006D108
/* 06A0E8 8006D0E8 38000000 */  li        r0, 0x0
/* 06A0EC 8006D0EC 90040E3C */  stw       r0, 0xe3c(r4)
/* 06A0F0 8006D0F0 7FE3FB78 */  mr        r3, r31
/* 06A0F4 8006D0F4 48001E09 */  bl        __romLoadBlock_Complete
/* 06A0F8 8006D0F8 2C030000 */  cmpwi     r3, 0x0
/* 06A0FC 8006D0FC 4082000C */  bne       lbl_8006D108
/* 06A100 8006D100 38600000 */  li        r3, 0x0
/* 06A104 8006D104 480000D8 */  b         lbl_8006D1DC
lbl_8006D108:
/* 06A108 8006D108 3C7F0001 */  addis     r3, r31, 0x1
/* 06A10C 8006D10C 38630EB8 */  addi      r3, r3, 0xeb8
/* 06A110 8006D110 48046CD1 */  bl        DVDGetCommandBlockStatus
/* 06A114 8006D114 3BC30000 */  addi      r30, r3, 0x0
/* 06A118 8006D118 2C1E0001 */  cmpwi     r30, 0x1
/* 06A11C 8006D11C 4182008C */  beq       lbl_8006D1A8
/* 06A120 8006D120 3CBF0001 */  addis     r5, r31, 0x1
/* 06A124 8006D124 80C50EF4 */  lwz       r6, 0xef4(r5)
/* 06A128 8006D128 7FC3F378 */  mr        r3, r30
/* 06A12C 8006D12C 80050E54 */  lwz       r0, 0xe54(r5)
/* 06A130 8006D130 80850E44 */  lwz       r4, 0xe44(r5)
/* 06A134 8006D134 80A50E64 */  lwz       r5, 0xe64(r5)
/* 06A138 8006D138 7CC60214 */  add       r6, r6, r0
/* 06A13C 8006D13C 4BFA1AED */  bl        simulatorDVDShowError
/* 06A140 8006D140 2C030000 */  cmpwi     r3, 0x0
/* 06A144 8006D144 4082000C */  bne       lbl_8006D150
/* 06A148 8006D148 38600000 */  li        r3, 0x0
/* 06A14C 8006D14C 48000090 */  b         lbl_8006D1DC
lbl_8006D150:
/* 06A150 8006D150 2C1E000B */  cmpwi     r30, 0xb
/* 06A154 8006D154 4182000C */  beq       lbl_8006D160
/* 06A158 8006D158 2C1EFFFF */  cmpwi     r30, -0x1
/* 06A15C 8006D15C 4082004C */  bne       lbl_8006D1A8
lbl_8006D160:
/* 06A160 8006D160 3C7F0001 */  addis     r3, r31, 0x1
/* 06A164 8006D164 38630EB8 */  addi      r3, r3, 0xeb8
/* 06A168 8006D168 48046FF1 */  bl        DVDCancel
/* 06A16C 8006D16C 3CBF0001 */  addis     r5, r31, 0x1
/* 06A170 8006D170 3C808007 */  lis       r4, __romLoadBlock_CompleteGCN@ha
/* 06A174 8006D174 80C50EF4 */  lwz       r6, 0xef4(r5)
/* 06A178 8006D178 80050E54 */  lwz       r0, 0xe54(r5)
/* 06A17C 8006D17C 3C7F0001 */  addis     r3, r31, 0x1
/* 06A180 8006D180 38E4EEE0 */  addi      r7, r4, __romLoadBlock_CompleteGCN@l
/* 06A184 8006D184 80850E44 */  lwz       r4, 0xe44(r5)
/* 06A188 8006D188 80A50E64 */  lwz       r5, 0xe64(r5)
/* 06A18C 8006D18C 7CC60214 */  add       r6, r6, r0
/* 06A190 8006D190 38630EB8 */  addi      r3, r3, 0xeb8
/* 06A194 8006D194 4BFA1941 */  bl        simulatorDVDRead
/* 06A198 8006D198 2C030000 */  cmpwi     r3, 0x0
/* 06A19C 8006D19C 4082000C */  bne       lbl_8006D1A8
/* 06A1A0 8006D1A0 38600000 */  li        r3, 0x0
/* 06A1A4 8006D1A4 48000038 */  b         lbl_8006D1DC
lbl_8006D1A8:
/* 06A1A8 8006D1A8 7FE3FB78 */  mr        r3, r31
/* 06A1AC 8006D1AC 4800118D */  bl        romLoadUpdate
/* 06A1B0 8006D1B0 2C030000 */  cmpwi     r3, 0x0
/* 06A1B4 8006D1B4 4082000C */  bne       lbl_8006D1C0
/* 06A1B8 8006D1B8 38600000 */  li        r3, 0x0
/* 06A1BC 8006D1BC 48000020 */  b         lbl_8006D1DC
lbl_8006D1C0:
/* 06A1C0 8006D1C0 7FE3FB78 */  mr        r3, r31
/* 06A1C4 8006D1C4 48000ED9 */  bl        romCopyUpdate
/* 06A1C8 8006D1C8 2C030000 */  cmpwi     r3, 0x0
/* 06A1CC 8006D1CC 4082000C */  bne       lbl_8006D1D8
/* 06A1D0 8006D1D0 38600000 */  li        r3, 0x0
/* 06A1D4 8006D1D4 48000008 */  b         lbl_8006D1DC
lbl_8006D1D8:
/* 06A1D8 8006D1D8 38600001 */  li        r3, 0x1
lbl_8006D1DC:
/* 06A1DC 8006D1DC 8001001C */  lwz       r0, 0x1c(r1)
/* 06A1E0 8006D1E0 83E10014 */  lwz       r31, 0x14(r1)
/* 06A1E4 8006D1E4 83C10010 */  lwz       r30, 0x10(r1)
/* 06A1E8 8006D1E8 7C0803A6 */  mtlr      r0
/* 06A1EC 8006D1EC 38210018 */  addi      r1, r1, 0x18
/* 06A1F0 8006D1F0 4E800020 */  blr

glabel romCopyImmediate
/* 06A1F4 8006D1F4 7C0802A6 */  mflr      r0
/* 06A1F8 8006D1F8 90010004 */  stw       r0, 0x4(r1)
/* 06A1FC 8006D1FC 9421FD48 */  stwu      r1, -0x2b8(r1)
/* 06A200 8006D200 BE610284 */  stmw      r19, 0x284(r1)
/* 06A204 8006D204 3B430000 */  addi      r26, r3, 0x0
/* 06A208 8006D208 3C7A0001 */  addis     r3, r26, 0x1
/* 06A20C 8006D20C 3B640000 */  addi      r27, r4, 0x0
/* 06A210 8006D210 3B850000 */  addi      r28, r5, 0x0
/* 06A214 8006D214 3BA60000 */  addi      r29, r6, 0x0
/* 06A218 8006D218 80030E6C */  lwz       r0, 0xe6c(r3)
/* 06A21C 8006D21C 2C000000 */  cmpwi     r0, 0x0
/* 06A220 8006D220 4082000C */  bne       lbl_8006D22C
/* 06A224 8006D224 38600000 */  li        r3, 0x0
/* 06A228 8006D228 48000220 */  b         lbl_8006D448
lbl_8006D22C:
/* 06A22C 8006D22C 801A000C */  lwz       r0, 0xc(r26)
/* 06A230 8006D230 2C000000 */  cmpwi     r0, 0x0
/* 06A234 8006D234 41820050 */  beq       lbl_8006D284
/* 06A238 8006D238 7F43D378 */  mr        r3, r26
/* 06A23C 8006D23C 480009FD */  bl        romLoadFullOrPart
/* 06A240 8006D240 2C030000 */  cmpwi     r3, 0x0
/* 06A244 8006D244 4082000C */  bne       lbl_8006D250
/* 06A248 8006D248 38000000 */  li        r0, 0x0
/* 06A24C 8006D24C 48000028 */  b         lbl_8006D274
lbl_8006D250:
/* 06A250 8006D250 7F43D378 */  mr        r3, r26
/* 06A254 8006D254 4800125D */  bl        romCacheGame
/* 06A258 8006D258 2C030000 */  cmpwi     r3, 0x0
/* 06A25C 8006D25C 4082000C */  bne       lbl_8006D268
/* 06A260 8006D260 38000000 */  li        r0, 0x0
/* 06A264 8006D264 48000010 */  b         lbl_8006D274
lbl_8006D268:
/* 06A268 8006D268 38000000 */  li        r0, 0x0
/* 06A26C 8006D26C 901A000C */  stw       r0, 0xc(r26)
/* 06A270 8006D270 38000001 */  li        r0, 0x1
lbl_8006D274:
/* 06A274 8006D274 2C000000 */  cmpwi     r0, 0x0
/* 06A278 8006D278 4082000C */  bne       lbl_8006D284
/* 06A27C 8006D27C 38600000 */  li        r3, 0x0
/* 06A280 8006D280 480001C8 */  b         lbl_8006D448
lbl_8006D284:
/* 06A284 8006D284 579C017E */  clrlwi    r28, r28, 5
/* 06A288 8006D288 807A0214 */  lwz       r3, 0x214(r26)
/* 06A28C 8006D28C 7C1CEA14 */  add       r0, r28, r29
/* 06A290 8006D290 7C001840 */  cmplw     r0, r3
/* 06A294 8006D294 38010037 */  addi      r0, r1, 0x37
/* 06A298 8006D298 541E0034 */  clrrwi    r30, r0, 5
/* 06A29C 8006D29C 40810014 */  ble       lbl_8006D2B0
/* 06A2A0 8006D2A0 7FBC1851 */  subf.     r29, r28, r3
/* 06A2A4 8006D2A4 4080000C */  bge       lbl_8006D2B0
/* 06A2A8 8006D2A8 38600001 */  li        r3, 0x1
/* 06A2AC 8006D2AC 4800019C */  b         lbl_8006D448
lbl_8006D2B0:
/* 06A2B0 8006D2B0 801A0218 */  lwz       r0, 0x218(r26)
/* 06A2B4 8006D2B4 2C000000 */  cmpwi     r0, 0x0
/* 06A2B8 8006D2B8 40820158 */  bne       lbl_8006D410
/* 06A2BC 8006D2BC 3F3A0001 */  addis     r25, r26, 0x1
/* 06A2C0 8006D2C0 48000140 */  b         lbl_8006D400
lbl_8006D2C4:
/* 06A2C4 8006D2C4 7F806E70 */  srawi     r0, r28, 13
/* 06A2C8 8006D2C8 7C000194 */  addze     r0, r0
/* 06A2CC 8006D2CC 54002036 */  slwi      r0, r0, 4
/* 06A2D0 8006D2D0 7C7A0214 */  add       r3, r26, r0
/* 06A2D4 8006D2D4 80030220 */  lwz       r0, 0x220(r3)
/* 06A2D8 8006D2D8 3863021C */  addi      r3, r3, 0x21c
/* 06A2DC 8006D2DC 28000000 */  cmplwi    r0, 0x0
/* 06A2E0 8006D2E0 4082000C */  bne       lbl_8006D2EC
/* 06A2E4 8006D2E4 38600000 */  li        r3, 0x0
/* 06A2E8 8006D2E8 48000160 */  b         lbl_8006D448
lbl_8006D2EC:
/* 06A2EC 8006D2EC 7F846E70 */  srawi     r4, r28, 13
/* 06A2F0 8006D2F0 80030004 */  lwz       r0, 0x4(r3)
/* 06A2F4 8006D2F4 7C840194 */  addze     r4, r4
/* 06A2F8 8006D2F8 54846824 */  slwi      r4, r4, 13
/* 06A2FC 8006D2FC 7C84E010 */  subfc     r4, r4, r28
/* 06A300 8006D300 7FE40050 */  subf      r31, r4, r0
/* 06A304 8006D304 7C1FE800 */  cmpw      r31, r29
/* 06A308 8006D308 40810008 */  ble       lbl_8006D310
/* 06A30C 8006D30C 7FBFEB78 */  mr        r31, r29
lbl_8006D310:
/* 06A310 8006D310 80630000 */  lwz       r3, 0x0(r3)
/* 06A314 8006D314 2C030000 */  cmpwi     r3, 0x0
/* 06A318 8006D318 41800030 */  blt       lbl_8006D348
/* 06A31C 8006D31C 54606824 */  slwi      r0, r3, 13
/* 06A320 8006D320 80790220 */  lwz       r3, 0x220(r25)
/* 06A324 8006D324 7C802214 */  add       r4, r0, r4
/* 06A328 8006D328 7C832214 */  add       r4, r3, r4
/* 06A32C 8006D32C 387B0000 */  addi      r3, r27, 0x0
/* 06A330 8006D330 38BF0000 */  addi      r5, r31, 0x0
/* 06A334 8006D334 4BF9971D */  bl        xlHeapCopy
/* 06A338 8006D338 2C030000 */  cmpwi     r3, 0x0
/* 06A33C 8006D33C 408200B8 */  bne       lbl_8006D3F4
/* 06A340 8006D340 38600000 */  li        r3, 0x0
/* 06A344 8006D344 48000104 */  b         lbl_8006D448
lbl_8006D348:
/* 06A348 8006D348 38030001 */  addi      r0, r3, 0x1
/* 06A34C 8006D34C 7C0000D0 */  neg       r0, r0
/* 06A350 8006D350 54006824 */  slwi      r0, r0, 13
/* 06A354 8006D354 3ADF0000 */  addi      r22, r31, 0x0
/* 06A358 8006D358 7EE40214 */  add       r23, r4, r0
/* 06A35C 8006D35C 3A600000 */  li        r19, 0x0
/* 06A360 8006D360 4804A489 */  bl        ARGetBaseAddress
/* 06A364 8006D364 7EF71A14 */  add       r23, r23, r3
/* 06A368 8006D368 48000084 */  b         lbl_8006D3EC
lbl_8006D36C:
/* 06A36C 8006D36C 3AB60000 */  addi      r21, r22, 0x0
/* 06A370 8006D370 2C150200 */  cmpwi     r21, 0x200
/* 06A374 8006D374 40810008 */  ble       lbl_8006D37C
/* 06A378 8006D378 3AA00200 */  li        r21, 0x200
lbl_8006D37C:
/* 06A37C 8006D37C 4804A27D */  bl        ARGetDMAStatus
/* 06A380 8006D380 28030000 */  cmplwi    r3, 0x0
/* 06A384 8006D384 4082FFF8 */  bne       lbl_8006D37C
/* 06A388 8006D388 56F406FE */  clrlwi    r20, r23, 27
/* 06A38C 8006D38C 7F15A214 */  add       r24, r21, r20
/* 06A390 8006D390 3818001F */  addi      r0, r24, 0x1f
/* 06A394 8006D394 389E0000 */  addi      r4, r30, 0x0
/* 06A398 8006D398 56E50034 */  clrrwi    r5, r23, 5
/* 06A39C 8006D39C 54060034 */  clrrwi    r6, r0, 5
/* 06A3A0 8006D3A0 38600001 */  li        r3, 0x1
/* 06A3A4 8006D3A4 4804A291 */  bl        ARStartDMA
/* 06A3A8 8006D3A8 387E0000 */  addi      r3, r30, 0x0
/* 06A3AC 8006D3AC 38980000 */  addi      r4, r24, 0x0
/* 06A3B0 8006D3B0 4802F8E9 */  bl        DCInvalidateRange
lbl_8006D3B4:
/* 06A3B4 8006D3B4 4804A245 */  bl        ARGetDMAStatus
/* 06A3B8 8006D3B8 28030000 */  cmplwi    r3, 0x0
/* 06A3BC 8006D3BC 4082FFF8 */  bne       lbl_8006D3B4
/* 06A3C0 8006D3C0 38B50000 */  addi      r5, r21, 0x0
/* 06A3C4 8006D3C4 7C7B9A14 */  add       r3, r27, r19
/* 06A3C8 8006D3C8 7C9EA214 */  add       r4, r30, r20
/* 06A3CC 8006D3CC 4BF99685 */  bl        xlHeapCopy
/* 06A3D0 8006D3D0 2C030000 */  cmpwi     r3, 0x0
/* 06A3D4 8006D3D4 4082000C */  bne       lbl_8006D3E0
/* 06A3D8 8006D3D8 38600000 */  li        r3, 0x0
/* 06A3DC 8006D3DC 4800006C */  b         lbl_8006D448
lbl_8006D3E0:
/* 06A3E0 8006D3E0 7EF7AA14 */  add       r23, r23, r21
/* 06A3E4 8006D3E4 7E73AA14 */  add       r19, r19, r21
/* 06A3E8 8006D3E8 7ED5B050 */  subf      r22, r21, r22
lbl_8006D3EC:
/* 06A3EC 8006D3EC 2C160000 */  cmpwi     r22, 0x0
/* 06A3F0 8006D3F0 4181FF7C */  bgt       lbl_8006D36C
lbl_8006D3F4:
/* 06A3F4 8006D3F4 7F7BFA14 */  add       r27, r27, r31
/* 06A3F8 8006D3F8 7F9CFA14 */  add       r28, r28, r31
/* 06A3FC 8006D3FC 7FBFE850 */  subf      r29, r31, r29
lbl_8006D400:
/* 06A400 8006D400 281D0000 */  cmplwi    r29, 0x0
/* 06A404 8006D404 4082FEC0 */  bne       lbl_8006D2C4
/* 06A408 8006D408 38600001 */  li        r3, 0x1
/* 06A40C 8006D40C 4800003C */  b         lbl_8006D448
lbl_8006D410:
/* 06A410 8006D410 2C000001 */  cmpwi     r0, 0x1
/* 06A414 8006D414 40820030 */  bne       lbl_8006D444
/* 06A418 8006D418 801A0004 */  lwz       r0, 0x4(r26)
/* 06A41C 8006D41C 387B0000 */  addi      r3, r27, 0x0
/* 06A420 8006D420 38BD0000 */  addi      r5, r29, 0x0
/* 06A424 8006D424 7C80E214 */  add       r4, r0, r28
/* 06A428 8006D428 4BF99629 */  bl        xlHeapCopy
/* 06A42C 8006D42C 2C030000 */  cmpwi     r3, 0x0
/* 06A430 8006D430 4082000C */  bne       lbl_8006D43C
/* 06A434 8006D434 38600000 */  li        r3, 0x0
/* 06A438 8006D438 48000010 */  b         lbl_8006D448
lbl_8006D43C:
/* 06A43C 8006D43C 38600001 */  li        r3, 0x1
/* 06A440 8006D440 48000008 */  b         lbl_8006D448
lbl_8006D444:
/* 06A444 8006D444 38600000 */  li        r3, 0x0
lbl_8006D448:
/* 06A448 8006D448 BA610284 */  lmw       r19, 0x284(r1)
/* 06A44C 8006D44C 800102BC */  lwz       r0, 0x2bc(r1)
/* 06A450 8006D450 382102B8 */  addi      r1, r1, 0x2b8
/* 06A454 8006D454 7C0803A6 */  mtlr      r0
/* 06A458 8006D458 4E800020 */  blr

glabel romCopy
/* 06A45C 8006D45C 7C0802A6 */  mflr      r0
/* 06A460 8006D460 90010004 */  stw       r0, 0x4(r1)
/* 06A464 8006D464 9421FFC8 */  stwu      r1, -0x38(r1)
/* 06A468 8006D468 BF410020 */  stmw      r26, 0x20(r1)
/* 06A46C 8006D46C 3B630000 */  addi      r27, r3, 0x0
/* 06A470 8006D470 3F5B0001 */  addis     r26, r27, 0x1
/* 06A474 8006D474 3B840000 */  addi      r28, r4, 0x0
/* 06A478 8006D478 3BC60000 */  addi      r30, r6, 0x0
/* 06A47C 8006D47C 3BE70000 */  addi      r31, r7, 0x0
/* 06A480 8006D480 54BD017E */  clrlwi    r29, r5, 5
/* 06A484 8006D484 801A0E6C */  lwz       r0, 0xe6c(r26)
/* 06A488 8006D488 2C000000 */  cmpwi     r0, 0x0
/* 06A48C 8006D48C 408200A8 */  bne       lbl_8006D534
/* 06A490 8006D490 3861001C */  addi      r3, r1, 0x1c
/* 06A494 8006D494 38BB0010 */  addi      r5, r27, 0x10
/* 06A498 8006D498 38800001 */  li        r4, 0x1
/* 06A49C 8006D49C 4BF98B3D */  bl        xlFileOpen
/* 06A4A0 8006D4A0 2C030000 */  cmpwi     r3, 0x0
/* 06A4A4 8006D4A4 4082000C */  bne       lbl_8006D4B0
/* 06A4A8 8006D4A8 38600000 */  li        r3, 0x0
/* 06A4AC 8006D4AC 48000234 */  b         lbl_8006D6E0
lbl_8006D4B0:
/* 06A4B0 8006D4B0 801A0EF4 */  lwz       r0, 0xef4(r26)
/* 06A4B4 8006D4B4 8061001C */  lwz       r3, 0x1c(r1)
/* 06A4B8 8006D4B8 7C9D0214 */  add       r4, r29, r0
/* 06A4BC 8006D4BC 4BF989BD */  bl        xlFileSetPosition
/* 06A4C0 8006D4C0 2C030000 */  cmpwi     r3, 0x0
/* 06A4C4 8006D4C4 4082000C */  bne       lbl_8006D4D0
/* 06A4C8 8006D4C8 38600000 */  li        r3, 0x0
/* 06A4CC 8006D4CC 48000214 */  b         lbl_8006D6E0
lbl_8006D4D0:
/* 06A4D0 8006D4D0 8061001C */  lwz       r3, 0x1c(r1)
/* 06A4D4 8006D4D4 389C0000 */  addi      r4, r28, 0x0
/* 06A4D8 8006D4D8 38BE0000 */  addi      r5, r30, 0x0
/* 06A4DC 8006D4DC 4BF989C5 */  bl        xlFileGet
/* 06A4E0 8006D4E0 2C030000 */  cmpwi     r3, 0x0
/* 06A4E4 8006D4E4 4082000C */  bne       lbl_8006D4F0
/* 06A4E8 8006D4E8 38600000 */  li        r3, 0x0
/* 06A4EC 8006D4EC 480001F4 */  b         lbl_8006D6E0
lbl_8006D4F0:
/* 06A4F0 8006D4F0 3861001C */  addi      r3, r1, 0x1c
/* 06A4F4 8006D4F4 4BF98AB1 */  bl        xlFileClose
/* 06A4F8 8006D4F8 2C030000 */  cmpwi     r3, 0x0
/* 06A4FC 8006D4FC 4082000C */  bne       lbl_8006D508
/* 06A500 8006D500 38600000 */  li        r3, 0x0
/* 06A504 8006D504 480001DC */  b         lbl_8006D6E0
lbl_8006D508:
/* 06A508 8006D508 281F0000 */  cmplwi    r31, 0x0
/* 06A50C 8006D50C 41820020 */  beq       lbl_8006D52C
/* 06A510 8006D510 399F0000 */  addi      r12, r31, 0x0
/* 06A514 8006D514 7D8803A6 */  mtlr      r12
/* 06A518 8006D518 4E800021 */  blrl
/* 06A51C 8006D51C 2C030000 */  cmpwi     r3, 0x0
/* 06A520 8006D520 4082000C */  bne       lbl_8006D52C
/* 06A524 8006D524 38600000 */  li        r3, 0x0
/* 06A528 8006D528 480001B8 */  b         lbl_8006D6E0
lbl_8006D52C:
/* 06A52C 8006D52C 38600001 */  li        r3, 0x1
/* 06A530 8006D530 480001B0 */  b         lbl_8006D6E0
lbl_8006D534:
/* 06A534 8006D534 801B000C */  lwz       r0, 0xc(r27)
/* 06A538 8006D538 2C000000 */  cmpwi     r0, 0x0
/* 06A53C 8006D53C 41820050 */  beq       lbl_8006D58C
/* 06A540 8006D540 7F63DB78 */  mr        r3, r27
/* 06A544 8006D544 480006F5 */  bl        romLoadFullOrPart
/* 06A548 8006D548 2C030000 */  cmpwi     r3, 0x0
/* 06A54C 8006D54C 4082000C */  bne       lbl_8006D558
/* 06A550 8006D550 38000000 */  li        r0, 0x0
/* 06A554 8006D554 48000028 */  b         lbl_8006D57C
lbl_8006D558:
/* 06A558 8006D558 7F63DB78 */  mr        r3, r27
/* 06A55C 8006D55C 48000F55 */  bl        romCacheGame
/* 06A560 8006D560 2C030000 */  cmpwi     r3, 0x0
/* 06A564 8006D564 4082000C */  bne       lbl_8006D570
/* 06A568 8006D568 38000000 */  li        r0, 0x0
/* 06A56C 8006D56C 48000010 */  b         lbl_8006D57C
lbl_8006D570:
/* 06A570 8006D570 38000000 */  li        r0, 0x0
/* 06A574 8006D574 901B000C */  stw       r0, 0xc(r27)
/* 06A578 8006D578 38000001 */  li        r0, 0x1
lbl_8006D57C:
/* 06A57C 8006D57C 2C000000 */  cmpwi     r0, 0x0
/* 06A580 8006D580 4082000C */  bne       lbl_8006D58C
/* 06A584 8006D584 38600000 */  li        r3, 0x0
/* 06A588 8006D588 48000158 */  b         lbl_8006D6E0
lbl_8006D58C:
/* 06A58C 8006D58C 807B0214 */  lwz       r3, 0x214(r27)
/* 06A590 8006D590 7C1DF214 */  add       r0, r29, r30
/* 06A594 8006D594 7C001840 */  cmplw     r0, r3
/* 06A598 8006D598 40810014 */  ble       lbl_8006D5AC
/* 06A59C 8006D59C 7FDD1851 */  subf.     r30, r29, r3
/* 06A5A0 8006D5A0 4080000C */  bge       lbl_8006D5AC
/* 06A5A4 8006D5A4 38600001 */  li        r3, 0x1
/* 06A5A8 8006D5A8 48000138 */  b         lbl_8006D6E0
lbl_8006D5AC:
/* 06A5AC 8006D5AC 801B0218 */  lwz       r0, 0x218(r27)
/* 06A5B0 8006D5B0 2C000000 */  cmpwi     r0, 0x0
/* 06A5B4 8006D5B4 408200D0 */  bne       lbl_8006D684
/* 06A5B8 8006D5B8 38600000 */  li        r3, 0x0
/* 06A5BC 8006D5BC 3C9B0001 */  addis     r4, r27, 0x1
/* 06A5C0 8006D5C0 90640E24 */  stw       r3, 0xe24(r4)
/* 06A5C4 8006D5C4 7C651B78 */  mr        r5, r3
/* 06A5C8 8006D5C8 93C40E30 */  stw       r30, 0xe30(r4)
/* 06A5CC 8006D5CC 93840E2C */  stw       r28, 0xe2c(r4)
/* 06A5D0 8006D5D0 93A40E34 */  stw       r29, 0xe34(r4)
/* 06A5D4 8006D5D4 93E40E28 */  stw       r31, 0xe28(r4)
/* 06A5D8 8006D5D8 80C40EB4 */  lwz       r6, 0xeb4(r4)
/* 06A5DC 8006D5DC 38060001 */  addi      r0, r6, 0x1
/* 06A5E0 8006D5E0 5400F87E */  srwi      r0, r0, 1
/* 06A5E4 8006D5E4 2C060000 */  cmpwi     r6, 0x0
/* 06A5E8 8006D5E8 7C0903A6 */  mtctr     r0
/* 06A5EC 8006D5EC 40810054 */  ble       lbl_8006D640
lbl_8006D5F0:
/* 06A5F0 8006D5F0 80E40EB0 */  lwz       r7, 0xeb0(r4)
/* 06A5F4 8006D5F4 7CC72A14 */  add       r6, r7, r5
/* 06A5F8 8006D5F8 80060000 */  lwz       r0, 0x0(r6)
/* 06A5FC 8006D5FC 7C00E840 */  cmplw     r0, r29
/* 06A600 8006D600 41810034 */  bgt       lbl_8006D634
/* 06A604 8006D604 80060004 */  lwz       r0, 0x4(r6)
/* 06A608 8006D608 7C1D0040 */  cmplw     r29, r0
/* 06A60C 8006D60C 41810028 */  bgt       lbl_8006D634
/* 06A610 8006D610 5463103A */  slwi      r3, r3, 2
/* 06A614 8006D614 7C07182E */  lwzx      r0, r7, r3
/* 06A618 8006D618 38A00001 */  li        r5, 0x1
/* 06A61C 8006D61C 90040E58 */  stw       r0, 0xe58(r4)
/* 06A620 8006D620 80040EB0 */  lwz       r0, 0xeb0(r4)
/* 06A624 8006D624 7C601A14 */  add       r3, r0, r3
/* 06A628 8006D628 80030004 */  lwz       r0, 0x4(r3)
/* 06A62C 8006D62C 90040E5C */  stw       r0, 0xe5c(r4)
/* 06A630 8006D630 48000014 */  b         lbl_8006D644
lbl_8006D634:
/* 06A634 8006D634 38A50008 */  addi      r5, r5, 0x8
/* 06A638 8006D638 38630002 */  addi      r3, r3, 0x2
/* 06A63C 8006D63C 4200FFB4 */  bdnz      lbl_8006D5F0
lbl_8006D640:
/* 06A640 8006D640 38A00000 */  li        r5, 0x0
lbl_8006D644:
/* 06A644 8006D644 2C050000 */  cmpwi     r5, 0x0
/* 06A648 8006D648 4182001C */  beq       lbl_8006D664
/* 06A64C 8006D64C 7F63DB78 */  mr        r3, r27
/* 06A650 8006D650 48000CE9 */  bl        romLoadUpdate
/* 06A654 8006D654 2C030000 */  cmpwi     r3, 0x0
/* 06A658 8006D658 4082000C */  bne       lbl_8006D664
/* 06A65C 8006D65C 38600000 */  li        r3, 0x0
/* 06A660 8006D660 48000080 */  b         lbl_8006D6E0
lbl_8006D664:
/* 06A664 8006D664 7F63DB78 */  mr        r3, r27
/* 06A668 8006D668 48000A35 */  bl        romCopyUpdate
/* 06A66C 8006D66C 2C030000 */  cmpwi     r3, 0x0
/* 06A670 8006D670 4082000C */  bne       lbl_8006D67C
/* 06A674 8006D674 38600000 */  li        r3, 0x0
/* 06A678 8006D678 48000068 */  b         lbl_8006D6E0
lbl_8006D67C:
/* 06A67C 8006D67C 38600001 */  li        r3, 0x1
/* 06A680 8006D680 48000060 */  b         lbl_8006D6E0
lbl_8006D684:
/* 06A684 8006D684 2C000001 */  cmpwi     r0, 0x1
/* 06A688 8006D688 40820054 */  bne       lbl_8006D6DC
/* 06A68C 8006D68C 801B0004 */  lwz       r0, 0x4(r27)
/* 06A690 8006D690 387C0000 */  addi      r3, r28, 0x0
/* 06A694 8006D694 38BE0000 */  addi      r5, r30, 0x0
/* 06A698 8006D698 7C80EA14 */  add       r4, r0, r29
/* 06A69C 8006D69C 4BF993B5 */  bl        xlHeapCopy
/* 06A6A0 8006D6A0 2C030000 */  cmpwi     r3, 0x0
/* 06A6A4 8006D6A4 4082000C */  bne       lbl_8006D6B0
/* 06A6A8 8006D6A8 38600000 */  li        r3, 0x0
/* 06A6AC 8006D6AC 48000034 */  b         lbl_8006D6E0
lbl_8006D6B0:
/* 06A6B0 8006D6B0 281F0000 */  cmplwi    r31, 0x0
/* 06A6B4 8006D6B4 41820020 */  beq       lbl_8006D6D4
/* 06A6B8 8006D6B8 399F0000 */  addi      r12, r31, 0x0
/* 06A6BC 8006D6BC 7D8803A6 */  mtlr      r12
/* 06A6C0 8006D6C0 4E800021 */  blrl
/* 06A6C4 8006D6C4 2C030000 */  cmpwi     r3, 0x0
/* 06A6C8 8006D6C8 4082000C */  bne       lbl_8006D6D4
/* 06A6CC 8006D6CC 38600000 */  li        r3, 0x0
/* 06A6D0 8006D6D0 48000010 */  b         lbl_8006D6E0
lbl_8006D6D4:
/* 06A6D4 8006D6D4 38600001 */  li        r3, 0x1
/* 06A6D8 8006D6D8 48000008 */  b         lbl_8006D6E0
lbl_8006D6DC:
/* 06A6DC 8006D6DC 38600000 */  li        r3, 0x0
lbl_8006D6E0:
/* 06A6E0 8006D6E0 BB410020 */  lmw       r26, 0x20(r1)
/* 06A6E4 8006D6E4 8001003C */  lwz       r0, 0x3c(r1)
/* 06A6E8 8006D6E8 38210038 */  addi      r1, r1, 0x38
/* 06A6EC 8006D6EC 7C0803A6 */  mtlr      r0
/* 06A6F0 8006D6F0 4E800020 */  blr

glabel romGetDebug64
/* 06A6F4 8006D6F4 38000000 */  li        r0, 0x0
/* 06A6F8 8006D6F8 90050004 */  stw       r0, 0x4(r5)
/* 06A6FC 8006D6FC 38600001 */  li        r3, 0x1
/* 06A700 8006D700 90050000 */  stw       r0, 0x0(r5)
/* 06A704 8006D704 4E800020 */  blr

glabel romGetDebug32
/* 06A708 8006D708 38000000 */  li        r0, 0x0
/* 06A70C 8006D70C 90050000 */  stw       r0, 0x0(r5)
/* 06A710 8006D710 38600001 */  li        r3, 0x1
/* 06A714 8006D714 4E800020 */  blr

glabel romGetDebug16
/* 06A718 8006D718 38000000 */  li        r0, 0x0
/* 06A71C 8006D71C B0050000 */  sth       r0, 0x0(r5)
/* 06A720 8006D720 38600001 */  li        r3, 0x1
/* 06A724 8006D724 4E800020 */  blr

glabel romGetDebug8
/* 06A728 8006D728 38000000 */  li        r0, 0x0
/* 06A72C 8006D72C 98050000 */  stb       r0, 0x0(r5)
/* 06A730 8006D730 38600001 */  li        r3, 0x1
/* 06A734 8006D734 4E800020 */  blr

glabel romPutDebug64
/* 06A738 8006D738 38600001 */  li        r3, 0x1
/* 06A73C 8006D73C 4E800020 */  blr

glabel romPutDebug32
/* 06A740 8006D740 38600001 */  li        r3, 0x1
/* 06A744 8006D744 4E800020 */  blr

glabel romPutDebug16
/* 06A748 8006D748 38600001 */  li        r3, 0x1
/* 06A74C 8006D74C 4E800020 */  blr

glabel romPutDebug8
/* 06A750 8006D750 38600001 */  li        r3, 0x1
/* 06A754 8006D754 4E800020 */  blr

glabel romGet64
/* 06A758 8006D758 7C0802A6 */  mflr      r0
/* 06A75C 8006D75C 5484017E */  clrlwi    r4, r4, 5
/* 06A760 8006D760 90010004 */  stw       r0, 0x4(r1)
/* 06A764 8006D764 9421FFD8 */  stwu      r1, -0x28(r1)
/* 06A768 8006D768 93E10024 */  stw       r31, 0x24(r1)
/* 06A76C 8006D76C 3BE50000 */  addi      r31, r5, 0x0
/* 06A770 8006D770 80030214 */  lwz       r0, 0x214(r3)
/* 06A774 8006D774 7C040040 */  cmplw     r4, r0
/* 06A778 8006D778 40800038 */  bge       lbl_8006D7B0
/* 06A77C 8006D77C 38A40000 */  addi      r5, r4, 0x0
/* 06A780 8006D780 38810018 */  addi      r4, r1, 0x18
/* 06A784 8006D784 38C00008 */  li        r6, 0x8
/* 06A788 8006D788 38E00000 */  li        r7, 0x0
/* 06A78C 8006D78C 4BFFFCD1 */  bl        romCopy
/* 06A790 8006D790 2C030000 */  cmpwi     r3, 0x0
/* 06A794 8006D794 4182001C */  beq       lbl_8006D7B0
/* 06A798 8006D798 80010018 */  lwz       r0, 0x18(r1)
/* 06A79C 8006D79C 38600001 */  li        r3, 0x1
/* 06A7A0 8006D7A0 8081001C */  lwz       r4, 0x1c(r1)
/* 06A7A4 8006D7A4 909F0004 */  stw       r4, 0x4(r31)
/* 06A7A8 8006D7A8 901F0000 */  stw       r0, 0x0(r31)
/* 06A7AC 8006D7AC 48000014 */  b         lbl_8006D7C0
lbl_8006D7B0:
/* 06A7B0 8006D7B0 38000000 */  li        r0, 0x0
/* 06A7B4 8006D7B4 901F0004 */  stw       r0, 0x4(r31)
/* 06A7B8 8006D7B8 38600001 */  li        r3, 0x1
/* 06A7BC 8006D7BC 901F0000 */  stw       r0, 0x0(r31)
lbl_8006D7C0:
/* 06A7C0 8006D7C0 8001002C */  lwz       r0, 0x2c(r1)
/* 06A7C4 8006D7C4 83E10024 */  lwz       r31, 0x24(r1)
/* 06A7C8 8006D7C8 38210028 */  addi      r1, r1, 0x28
/* 06A7CC 8006D7CC 7C0803A6 */  mtlr      r0
/* 06A7D0 8006D7D0 4E800020 */  blr

glabel romGet32
/* 06A7D4 8006D7D4 7C0802A6 */  mflr      r0
/* 06A7D8 8006D7D8 5484017E */  clrlwi    r4, r4, 5
/* 06A7DC 8006D7DC 90010004 */  stw       r0, 0x4(r1)
/* 06A7E0 8006D7E0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 06A7E4 8006D7E4 93E1001C */  stw       r31, 0x1c(r1)
/* 06A7E8 8006D7E8 3BE50000 */  addi      r31, r5, 0x0
/* 06A7EC 8006D7EC 80030214 */  lwz       r0, 0x214(r3)
/* 06A7F0 8006D7F0 7C040040 */  cmplw     r4, r0
/* 06A7F4 8006D7F4 40800030 */  bge       lbl_8006D824
/* 06A7F8 8006D7F8 38A40000 */  addi      r5, r4, 0x0
/* 06A7FC 8006D7FC 38810014 */  addi      r4, r1, 0x14
/* 06A800 8006D800 38C00004 */  li        r6, 0x4
/* 06A804 8006D804 38E00000 */  li        r7, 0x0
/* 06A808 8006D808 4BFFFC55 */  bl        romCopy
/* 06A80C 8006D80C 2C030000 */  cmpwi     r3, 0x0
/* 06A810 8006D810 41820014 */  beq       lbl_8006D824
/* 06A814 8006D814 80010014 */  lwz       r0, 0x14(r1)
/* 06A818 8006D818 38600001 */  li        r3, 0x1
/* 06A81C 8006D81C 901F0000 */  stw       r0, 0x0(r31)
/* 06A820 8006D820 48000010 */  b         lbl_8006D830
lbl_8006D824:
/* 06A824 8006D824 38000000 */  li        r0, 0x0
/* 06A828 8006D828 901F0000 */  stw       r0, 0x0(r31)
/* 06A82C 8006D82C 38600001 */  li        r3, 0x1
lbl_8006D830:
/* 06A830 8006D830 80010024 */  lwz       r0, 0x24(r1)
/* 06A834 8006D834 83E1001C */  lwz       r31, 0x1c(r1)
/* 06A838 8006D838 38210020 */  addi      r1, r1, 0x20
/* 06A83C 8006D83C 7C0803A6 */  mtlr      r0
/* 06A840 8006D840 4E800020 */  blr

glabel romGet16
/* 06A844 8006D844 7C0802A6 */  mflr      r0
/* 06A848 8006D848 5484017E */  clrlwi    r4, r4, 5
/* 06A84C 8006D84C 90010004 */  stw       r0, 0x4(r1)
/* 06A850 8006D850 9421FFE0 */  stwu      r1, -0x20(r1)
/* 06A854 8006D854 93E1001C */  stw       r31, 0x1c(r1)
/* 06A858 8006D858 3BE50000 */  addi      r31, r5, 0x0
/* 06A85C 8006D85C 80030214 */  lwz       r0, 0x214(r3)
/* 06A860 8006D860 7C040040 */  cmplw     r4, r0
/* 06A864 8006D864 40800030 */  bge       lbl_8006D894
/* 06A868 8006D868 38A40000 */  addi      r5, r4, 0x0
/* 06A86C 8006D86C 38810014 */  addi      r4, r1, 0x14
/* 06A870 8006D870 38C00002 */  li        r6, 0x2
/* 06A874 8006D874 38E00000 */  li        r7, 0x0
/* 06A878 8006D878 4BFFFBE5 */  bl        romCopy
/* 06A87C 8006D87C 2C030000 */  cmpwi     r3, 0x0
/* 06A880 8006D880 41820014 */  beq       lbl_8006D894
/* 06A884 8006D884 A8010014 */  lha       r0, 0x14(r1)
/* 06A888 8006D888 38600001 */  li        r3, 0x1
/* 06A88C 8006D88C B01F0000 */  sth       r0, 0x0(r31)
/* 06A890 8006D890 48000010 */  b         lbl_8006D8A0
lbl_8006D894:
/* 06A894 8006D894 38000000 */  li        r0, 0x0
/* 06A898 8006D898 B01F0000 */  sth       r0, 0x0(r31)
/* 06A89C 8006D89C 38600001 */  li        r3, 0x1
lbl_8006D8A0:
/* 06A8A0 8006D8A0 80010024 */  lwz       r0, 0x24(r1)
/* 06A8A4 8006D8A4 83E1001C */  lwz       r31, 0x1c(r1)
/* 06A8A8 8006D8A8 38210020 */  addi      r1, r1, 0x20
/* 06A8AC 8006D8AC 7C0803A6 */  mtlr      r0
/* 06A8B0 8006D8B0 4E800020 */  blr

glabel romGet8
/* 06A8B4 8006D8B4 7C0802A6 */  mflr      r0
/* 06A8B8 8006D8B8 5484017E */  clrlwi    r4, r4, 5
/* 06A8BC 8006D8BC 90010004 */  stw       r0, 0x4(r1)
/* 06A8C0 8006D8C0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 06A8C4 8006D8C4 93E1001C */  stw       r31, 0x1c(r1)
/* 06A8C8 8006D8C8 3BE50000 */  addi      r31, r5, 0x0
/* 06A8CC 8006D8CC 80030214 */  lwz       r0, 0x214(r3)
/* 06A8D0 8006D8D0 7C040040 */  cmplw     r4, r0
/* 06A8D4 8006D8D4 40800030 */  bge       lbl_8006D904
/* 06A8D8 8006D8D8 38A40000 */  addi      r5, r4, 0x0
/* 06A8DC 8006D8DC 38810014 */  addi      r4, r1, 0x14
/* 06A8E0 8006D8E0 38C00001 */  li        r6, 0x1
/* 06A8E4 8006D8E4 38E00000 */  li        r7, 0x0
/* 06A8E8 8006D8E8 4BFFFB75 */  bl        romCopy
/* 06A8EC 8006D8EC 2C030000 */  cmpwi     r3, 0x0
/* 06A8F0 8006D8F0 41820014 */  beq       lbl_8006D904
/* 06A8F4 8006D8F4 88010014 */  lbz       r0, 0x14(r1)
/* 06A8F8 8006D8F8 38600001 */  li        r3, 0x1
/* 06A8FC 8006D8FC 981F0000 */  stb       r0, 0x0(r31)
/* 06A900 8006D900 48000010 */  b         lbl_8006D910
lbl_8006D904:
/* 06A904 8006D904 38000000 */  li        r0, 0x0
/* 06A908 8006D908 981F0000 */  stb       r0, 0x0(r31)
/* 06A90C 8006D90C 38600001 */  li        r3, 0x1
lbl_8006D910:
/* 06A910 8006D910 80010024 */  lwz       r0, 0x24(r1)
/* 06A914 8006D914 83E1001C */  lwz       r31, 0x1c(r1)
/* 06A918 8006D918 38210020 */  addi      r1, r1, 0x20
/* 06A91C 8006D91C 7C0803A6 */  mtlr      r0
/* 06A920 8006D920 4E800020 */  blr

glabel romPut64
/* 06A924 8006D924 38600001 */  li        r3, 0x1
/* 06A928 8006D928 4E800020 */  blr

glabel romPut32
/* 06A92C 8006D92C 38600001 */  li        r3, 0x1
/* 06A930 8006D930 4E800020 */  blr

glabel romPut16
/* 06A934 8006D934 38600001 */  li        r3, 0x1
/* 06A938 8006D938 4E800020 */  blr

glabel romPut8
/* 06A93C 8006D93C 38600001 */  li        r3, 0x1
/* 06A940 8006D940 4E800020 */  blr

glabel romTestCode
/* 06A944 8006D944 9421FFD8 */  stwu      r1, -0x28(r1)
/* 06A948 8006D948 3CA30001 */  addis     r5, r3, 0x1
/* 06A94C 8006D94C 38000000 */  li        r0, 0x0
/* 06A950 8006D950 88650EAB */  lbz       r3, 0xeab(r5)
/* 06A954 8006D954 38C1001C */  addi      r6, r1, 0x1c
/* 06A958 8006D958 9861001C */  stb       r3, 0x1c(r1)
/* 06A95C 8006D95C 88650EAC */  lbz       r3, 0xeac(r5)
/* 06A960 8006D960 9861001D */  stb       r3, 0x1d(r1)
/* 06A964 8006D964 88650EAD */  lbz       r3, 0xead(r5)
/* 06A968 8006D968 9861001E */  stb       r3, 0x1e(r1)
/* 06A96C 8006D96C 88650EAE */  lbz       r3, 0xeae(r5)
/* 06A970 8006D970 9861001F */  stb       r3, 0x1f(r1)
/* 06A974 8006D974 98010020 */  stb       r0, 0x20(r1)
/* 06A978 8006D978 88A1001C */  lbz       r5, 0x1c(r1)
/* 06A97C 8006D97C 88040000 */  lbz       r0, 0x0(r4)
/* 06A980 8006D980 7CA50774 */  extsb     r5, r5
/* 06A984 8006D984 7C000774 */  extsb     r0, r0
/* 06A988 8006D988 7C050000 */  cmpw      r5, r0
/* 06A98C 8006D98C 4182000C */  beq       lbl_8006D998
/* 06A990 8006D990 38600000 */  li        r3, 0x0
/* 06A994 8006D994 4800006C */  b         lbl_8006DA00
lbl_8006D998:
/* 06A998 8006D998 8CA60001 */  lbzu      r5, 0x1(r6)
/* 06A99C 8006D99C 38640001 */  addi      r3, r4, 0x1
/* 06A9A0 8006D9A0 88040001 */  lbz       r0, 0x1(r4)
/* 06A9A4 8006D9A4 7CA50774 */  extsb     r5, r5
/* 06A9A8 8006D9A8 7C000774 */  extsb     r0, r0
/* 06A9AC 8006D9AC 7C050000 */  cmpw      r5, r0
/* 06A9B0 8006D9B0 4182000C */  beq       lbl_8006D9BC
/* 06A9B4 8006D9B4 38600000 */  li        r3, 0x0
/* 06A9B8 8006D9B8 48000048 */  b         lbl_8006DA00
lbl_8006D9BC:
/* 06A9BC 8006D9BC 8CA60001 */  lbzu      r5, 0x1(r6)
/* 06A9C0 8006D9C0 8C030001 */  lbzu      r0, 0x1(r3)
/* 06A9C4 8006D9C4 7CA50774 */  extsb     r5, r5
/* 06A9C8 8006D9C8 7C000774 */  extsb     r0, r0
/* 06A9CC 8006D9CC 7C050000 */  cmpw      r5, r0
/* 06A9D0 8006D9D0 4182000C */  beq       lbl_8006D9DC
/* 06A9D4 8006D9D4 38600000 */  li        r3, 0x0
/* 06A9D8 8006D9D8 48000028 */  b         lbl_8006DA00
lbl_8006D9DC:
/* 06A9DC 8006D9DC 88A60001 */  lbz       r5, 0x1(r6)
/* 06A9E0 8006D9E0 88030001 */  lbz       r0, 0x1(r3)
/* 06A9E4 8006D9E4 7CA50774 */  extsb     r5, r5
/* 06A9E8 8006D9E8 7C000774 */  extsb     r0, r0
/* 06A9EC 8006D9EC 7C050000 */  cmpw      r5, r0
/* 06A9F0 8006D9F0 4182000C */  beq       lbl_8006D9FC
/* 06A9F4 8006D9F4 38600000 */  li        r3, 0x0
/* 06A9F8 8006D9F8 48000008 */  b         lbl_8006DA00
lbl_8006D9FC:
/* 06A9FC 8006D9FC 38600001 */  li        r3, 0x1
lbl_8006DA00:
/* 06AA00 8006DA00 38210028 */  addi      r1, r1, 0x28
/* 06AA04 8006DA04 4E800020 */  blr

glabel romGetCode
/* 06AA08 8006DA08 3CC30001 */  addis     r6, r3, 0x1
/* 06AA0C 8006DA0C 88A60EAB */  lbz       r5, 0xeab(r6)
/* 06AA10 8006DA10 38000000 */  li        r0, 0x0
/* 06AA14 8006DA14 38600001 */  li        r3, 0x1
/* 06AA18 8006DA18 98A40000 */  stb       r5, 0x0(r4)
/* 06AA1C 8006DA1C 88A60EAC */  lbz       r5, 0xeac(r6)
/* 06AA20 8006DA20 98A40001 */  stb       r5, 0x1(r4)
/* 06AA24 8006DA24 88A60EAD */  lbz       r5, 0xead(r6)
/* 06AA28 8006DA28 98A40002 */  stb       r5, 0x2(r4)
/* 06AA2C 8006DA2C 88A60EAE */  lbz       r5, 0xeae(r6)
/* 06AA30 8006DA30 98A40003 */  stb       r5, 0x3(r4)
/* 06AA34 8006DA34 98040004 */  stb       r0, 0x4(r4)
/* 06AA38 8006DA38 4E800020 */  blr

glabel romGetPC
/* 06AA3C 8006DA3C 7C0802A6 */  mflr      r0
/* 06AA40 8006DA40 38A00000 */  li        r5, 0x0
/* 06AA44 8006DA44 90010004 */  stw       r0, 0x4(r1)
/* 06AA48 8006DA48 38C01000 */  li        r6, 0x1000
/* 06AA4C 8006DA4C 38E00000 */  li        r7, 0x0
/* 06AA50 8006DA50 9421EFE0 */  stwu      r1, -0x1020(r1)
/* 06AA54 8006DA54 93E1101C */  stw       r31, 0x101c(r1)
/* 06AA58 8006DA58 3BE40000 */  addi      r31, r4, 0x0
/* 06AA5C 8006DA5C 38810018 */  addi      r4, r1, 0x18
/* 06AA60 8006DA60 4BFFF9FD */  bl        romCopy
/* 06AA64 8006DA64 2C030000 */  cmpwi     r3, 0x0
/* 06AA68 8006DA68 418201B8 */  beq       lbl_8006DC20
/* 06AA6C 8006DA6C 3800002A */  li        r0, 0x2a
/* 06AA70 8006DA70 7C0903A6 */  mtctr     r0
/* 06AA74 8006DA74 38810018 */  addi      r4, r1, 0x18
/* 06AA78 8006DA78 38A00000 */  li        r5, 0x0
lbl_8006DA7C:
/* 06AA7C 8006DA7C 80640040 */  lwz       r3, 0x40(r4)
/* 06AA80 8006DA80 80040044 */  lwz       r0, 0x44(r4)
/* 06AA84 8006DA84 7CA51A14 */  add       r5, r5, r3
/* 06AA88 8006DA88 80640048 */  lwz       r3, 0x48(r4)
/* 06AA8C 8006DA8C 7CA50214 */  add       r5, r5, r0
/* 06AA90 8006DA90 8004004C */  lwz       r0, 0x4c(r4)
/* 06AA94 8006DA94 7CA51A14 */  add       r5, r5, r3
/* 06AA98 8006DA98 80640050 */  lwz       r3, 0x50(r4)
/* 06AA9C 8006DA9C 7CA50214 */  add       r5, r5, r0
/* 06AAA0 8006DAA0 80040054 */  lwz       r0, 0x54(r4)
/* 06AAA4 8006DAA4 7CA51A14 */  add       r5, r5, r3
/* 06AAA8 8006DAA8 80640058 */  lwz       r3, 0x58(r4)
/* 06AAAC 8006DAAC 7CA50214 */  add       r5, r5, r0
/* 06AAB0 8006DAB0 8004005C */  lwz       r0, 0x5c(r4)
/* 06AAB4 8006DAB4 7CA51A14 */  add       r5, r5, r3
/* 06AAB8 8006DAB8 80640060 */  lwz       r3, 0x60(r4)
/* 06AABC 8006DABC 7CA50214 */  add       r5, r5, r0
/* 06AAC0 8006DAC0 80040064 */  lwz       r0, 0x64(r4)
/* 06AAC4 8006DAC4 7CA51A14 */  add       r5, r5, r3
/* 06AAC8 8006DAC8 80640068 */  lwz       r3, 0x68(r4)
/* 06AACC 8006DACC 7CA50214 */  add       r5, r5, r0
/* 06AAD0 8006DAD0 8004006C */  lwz       r0, 0x6c(r4)
/* 06AAD4 8006DAD4 7CA51A14 */  add       r5, r5, r3
/* 06AAD8 8006DAD8 80640070 */  lwz       r3, 0x70(r4)
/* 06AADC 8006DADC 7CA50214 */  add       r5, r5, r0
/* 06AAE0 8006DAE0 80040074 */  lwz       r0, 0x74(r4)
/* 06AAE4 8006DAE4 7CA51A14 */  add       r5, r5, r3
/* 06AAE8 8006DAE8 80640078 */  lwz       r3, 0x78(r4)
/* 06AAEC 8006DAEC 7CA50214 */  add       r5, r5, r0
/* 06AAF0 8006DAF0 8004007C */  lwz       r0, 0x7c(r4)
/* 06AAF4 8006DAF4 7CA51A14 */  add       r5, r5, r3
/* 06AAF8 8006DAF8 80640080 */  lwz       r3, 0x80(r4)
/* 06AAFC 8006DAFC 7CA50214 */  add       r5, r5, r0
/* 06AB00 8006DB00 80040084 */  lwz       r0, 0x84(r4)
/* 06AB04 8006DB04 7CA51A14 */  add       r5, r5, r3
/* 06AB08 8006DB08 80640088 */  lwz       r3, 0x88(r4)
/* 06AB0C 8006DB0C 7CA50214 */  add       r5, r5, r0
/* 06AB10 8006DB10 8004008C */  lwz       r0, 0x8c(r4)
/* 06AB14 8006DB14 7CA51A14 */  add       r5, r5, r3
/* 06AB18 8006DB18 80640090 */  lwz       r3, 0x90(r4)
/* 06AB1C 8006DB1C 7CA50214 */  add       r5, r5, r0
/* 06AB20 8006DB20 80040094 */  lwz       r0, 0x94(r4)
/* 06AB24 8006DB24 7CA51A14 */  add       r5, r5, r3
/* 06AB28 8006DB28 80640098 */  lwz       r3, 0x98(r4)
/* 06AB2C 8006DB2C 7CA50214 */  add       r5, r5, r0
/* 06AB30 8006DB30 8004009C */  lwz       r0, 0x9c(r4)
/* 06AB34 8006DB34 7CA51A14 */  add       r5, r5, r3
/* 06AB38 8006DB38 7CA50214 */  add       r5, r5, r0
/* 06AB3C 8006DB3C 38840060 */  addi      r4, r4, 0x60
/* 06AB40 8006DB40 4200FF3C */  bdnz      lbl_8006DA7C
/* 06AB44 8006DB44 3C602AE0 */  lis       r3, 0x2ae0
/* 06AB48 8006DB48 3803E50A */  subi      r0, r3, 0x1af6
/* 06AB4C 8006DB4C 7C050000 */  cmpw      r5, r0
/* 06AB50 8006DB50 41820094 */  beq       lbl_8006DBE4
/* 06AB54 8006DB54 40800054 */  bge       lbl_8006DBA8
/* 06AB58 8006DB58 3C60FB63 */  lis       r3, 0xfb63
/* 06AB5C 8006DB5C 38031223 */  addi      r0, r3, 0x1223
/* 06AB60 8006DB60 7C050000 */  cmpw      r5, r0
/* 06AB64 8006DB64 41820080 */  beq       lbl_8006DBE4
/* 06AB68 8006DB68 4080002C */  bge       lbl_8006DB94
/* 06AB6C 8006DB6C 3C60E6DF */  lis       r3, 0xe6df
/* 06AB70 8006DB70 3803CB4B */  subi      r0, r3, 0x34b5
/* 06AB74 8006DB74 7C050000 */  cmpw      r5, r0
/* 06AB78 8006DB78 41820074 */  beq       lbl_8006DBEC
/* 06AB7C 8006DB7C 40800080 */  bge       lbl_8006DBFC
/* 06AB80 8006DB80 3C60D5BE */  lis       r3, 0xd5be
/* 06AB84 8006DB84 38035580 */  addi      r0, r3, 0x5580
/* 06AB88 8006DB88 7C050000 */  cmpw      r5, r0
/* 06AB8C 8006DB8C 41820068 */  beq       lbl_8006DBF4
/* 06AB90 8006DB90 4800006C */  b         lbl_8006DBFC
lbl_8006DB94:
/* 06AB94 8006DB94 3C6027C5 */  lis       r3, 0x27c5
/* 06AB98 8006DB98 3803ED44 */  subi      r0, r3, 0x12bc
/* 06AB9C 8006DB9C 7C050000 */  cmpw      r5, r0
/* 06ABA0 8006DBA0 4182004C */  beq       lbl_8006DBEC
/* 06ABA4 8006DBA4 48000058 */  b         lbl_8006DBFC
lbl_8006DBA8:
/* 06ABA8 8006DBA8 3C6049F6 */  lis       r3, 0x49f6
/* 06ABAC 8006DBAC 38030E96 */  addi      r0, r3, 0xe96
/* 06ABB0 8006DBB0 7C050000 */  cmpw      r5, r0
/* 06ABB4 8006DBB4 41820030 */  beq       lbl_8006DBE4
/* 06ABB8 8006DBB8 40800018 */  bge       lbl_8006DBD0
/* 06ABBC 8006DBBC 3C60497E */  lis       r3, 0x497e
/* 06ABC0 8006DBC0 3803414B */  addi      r0, r3, 0x414b
/* 06ABC4 8006DBC4 7C050000 */  cmpw      r5, r0
/* 06ABC8 8006DBC8 41820024 */  beq       lbl_8006DBEC
/* 06ABCC 8006DBCC 48000030 */  b         lbl_8006DBFC
lbl_8006DBD0:
/* 06ABD0 8006DBD0 3C6057C8 */  lis       r3, 0x57c8
/* 06ABD4 8006DBD4 38035244 */  addi      r0, r3, 0x5244
/* 06ABD8 8006DBD8 7C050000 */  cmpw      r5, r0
/* 06ABDC 8006DBDC 41820008 */  beq       lbl_8006DBE4
/* 06ABE0 8006DBE0 4800001C */  b         lbl_8006DBFC
lbl_8006DBE4:
/* 06ABE4 8006DBE4 38A00000 */  li        r5, 0x0
/* 06ABE8 8006DBE8 4800001C */  b         lbl_8006DC04
lbl_8006DBEC:
/* 06ABEC 8006DBEC 3CA00010 */  lis       r5, 0x10
/* 06ABF0 8006DBF0 48000014 */  b         lbl_8006DC04
lbl_8006DBF4:
/* 06ABF4 8006DBF4 3CA00020 */  lis       r5, 0x20
/* 06ABF8 8006DBF8 4800000C */  b         lbl_8006DC04
lbl_8006DBFC:
/* 06ABFC 8006DBFC 38600000 */  li        r3, 0x0
/* 06AC00 8006DC00 48000024 */  b         lbl_8006DC24
lbl_8006DC04:
/* 06AC04 8006DC04 80810020 */  lwz       r4, 0x20(r1)
/* 06AC08 8006DC08 38000000 */  li        r0, 0x0
/* 06AC0C 8006DC0C 38600001 */  li        r3, 0x1
/* 06AC10 8006DC10 7C852050 */  subf      r4, r5, r4
/* 06AC14 8006DC14 909F0004 */  stw       r4, 0x4(r31)
/* 06AC18 8006DC18 901F0000 */  stw       r0, 0x0(r31)
/* 06AC1C 8006DC1C 48000008 */  b         lbl_8006DC24
lbl_8006DC20:
/* 06AC20 8006DC20 38600000 */  li        r3, 0x0
lbl_8006DC24:
/* 06AC24 8006DC24 80011024 */  lwz       r0, 0x1024(r1)
/* 06AC28 8006DC28 83E1101C */  lwz       r31, 0x101c(r1)
/* 06AC2C 8006DC2C 38211020 */  addi      r1, r1, 0x1020
/* 06AC30 8006DC30 7C0803A6 */  mtlr      r0
/* 06AC34 8006DC34 4E800020 */  blr

glabel romLoadFullOrPart
/* 06AC38 8006DC38 7C0802A6 */  mflr      r0
/* 06AC3C 8006DC3C 90010004 */  stw       r0, 0x4(r1)
/* 06AC40 8006DC40 9421FFA8 */  stwu      r1, -0x58(r1)
/* 06AC44 8006DC44 DBE10050 */  stfd      f31, 0x50(r1)
/* 06AC48 8006DC48 DBC10048 */  stfd      f30, 0x48(r1)
/* 06AC4C 8006DC4C BF610034 */  stmw      r27, 0x34(r1)
/* 06AC50 8006DC50 3BE30000 */  addi      r31, r3, 0x0
/* 06AC54 8006DC54 3FDF0001 */  addis     r30, r31, 0x1
/* 06AC58 8006DC58 80630214 */  lwz       r3, 0x214(r3)
/* 06AC5C 8006DC5C 801E0E6C */  lwz       r0, 0xe6c(r30)
/* 06AC60 8006DC60 7C030000 */  cmpw      r3, r0
/* 06AC64 8006DC64 40810294 */  ble       lbl_8006DEF8
/* 06AC68 8006DC68 38600000 */  li        r3, 0x0
/* 06AC6C 8006DC6C 907E021C */  stw       r3, 0x21c(r30)
/* 06AC70 8006DC70 38000100 */  li        r0, 0x100
/* 06AC74 8006DC74 7C0903A6 */  mtctr     r0
/* 06AC78 8006DC78 38BF0000 */  addi      r5, r31, 0x0
/* 06AC7C 8006DC7C 907F0218 */  stw       r3, 0x218(r31)
lbl_8006DC80:
/* 06AC80 8006DC80 38800000 */  li        r4, 0x0
/* 06AC84 8006DC84 90850220 */  stw       r4, 0x220(r5)
/* 06AC88 8006DC88 9085021C */  stw       r4, 0x21c(r5)
/* 06AC8C 8006DC8C 90850224 */  stw       r4, 0x224(r5)
/* 06AC90 8006DC90 90850230 */  stw       r4, 0x230(r5)
/* 06AC94 8006DC94 9085022C */  stw       r4, 0x22c(r5)
/* 06AC98 8006DC98 90850234 */  stw       r4, 0x234(r5)
/* 06AC9C 8006DC9C 90850240 */  stw       r4, 0x240(r5)
/* 06ACA0 8006DCA0 9085023C */  stw       r4, 0x23c(r5)
/* 06ACA4 8006DCA4 90850244 */  stw       r4, 0x244(r5)
/* 06ACA8 8006DCA8 90850250 */  stw       r4, 0x250(r5)
/* 06ACAC 8006DCAC 9085024C */  stw       r4, 0x24c(r5)
/* 06ACB0 8006DCB0 90850254 */  stw       r4, 0x254(r5)
/* 06ACB4 8006DCB4 90850260 */  stw       r4, 0x260(r5)
/* 06ACB8 8006DCB8 9085025C */  stw       r4, 0x25c(r5)
/* 06ACBC 8006DCBC 90850264 */  stw       r4, 0x264(r5)
/* 06ACC0 8006DCC0 90850270 */  stw       r4, 0x270(r5)
/* 06ACC4 8006DCC4 9085026C */  stw       r4, 0x26c(r5)
/* 06ACC8 8006DCC8 90850274 */  stw       r4, 0x274(r5)
/* 06ACCC 8006DCCC 90850280 */  stw       r4, 0x280(r5)
/* 06ACD0 8006DCD0 9085027C */  stw       r4, 0x27c(r5)
/* 06ACD4 8006DCD4 90850284 */  stw       r4, 0x284(r5)
/* 06ACD8 8006DCD8 90850290 */  stw       r4, 0x290(r5)
/* 06ACDC 8006DCDC 9085028C */  stw       r4, 0x28c(r5)
/* 06ACE0 8006DCE0 90850294 */  stw       r4, 0x294(r5)
/* 06ACE4 8006DCE4 908502A0 */  stw       r4, 0x2a0(r5)
/* 06ACE8 8006DCE8 9085029C */  stw       r4, 0x29c(r5)
/* 06ACEC 8006DCEC 908502A4 */  stw       r4, 0x2a4(r5)
/* 06ACF0 8006DCF0 908502B0 */  stw       r4, 0x2b0(r5)
/* 06ACF4 8006DCF4 908502AC */  stw       r4, 0x2ac(r5)
/* 06ACF8 8006DCF8 908502B4 */  stw       r4, 0x2b4(r5)
/* 06ACFC 8006DCFC 908502C0 */  stw       r4, 0x2c0(r5)
/* 06AD00 8006DD00 908502BC */  stw       r4, 0x2bc(r5)
/* 06AD04 8006DD04 908502C4 */  stw       r4, 0x2c4(r5)
/* 06AD08 8006DD08 908502D0 */  stw       r4, 0x2d0(r5)
/* 06AD0C 8006DD0C 908502CC */  stw       r4, 0x2cc(r5)
/* 06AD10 8006DD10 908502D4 */  stw       r4, 0x2d4(r5)
/* 06AD14 8006DD14 908502E0 */  stw       r4, 0x2e0(r5)
/* 06AD18 8006DD18 908502DC */  stw       r4, 0x2dc(r5)
/* 06AD1C 8006DD1C 908502E4 */  stw       r4, 0x2e4(r5)
/* 06AD20 8006DD20 908502F0 */  stw       r4, 0x2f0(r5)
/* 06AD24 8006DD24 908502EC */  stw       r4, 0x2ec(r5)
/* 06AD28 8006DD28 908502F4 */  stw       r4, 0x2f4(r5)
/* 06AD2C 8006DD2C 90850300 */  stw       r4, 0x300(r5)
/* 06AD30 8006DD30 908502FC */  stw       r4, 0x2fc(r5)
/* 06AD34 8006DD34 90850304 */  stw       r4, 0x304(r5)
/* 06AD38 8006DD38 90850310 */  stw       r4, 0x310(r5)
/* 06AD3C 8006DD3C 9085030C */  stw       r4, 0x30c(r5)
/* 06AD40 8006DD40 90850314 */  stw       r4, 0x314(r5)
/* 06AD44 8006DD44 38A50100 */  addi      r5, r5, 0x100
/* 06AD48 8006DD48 4200FF38 */  bdnz      lbl_8006DC80
/* 06AD4C 8006DD4C 38000080 */  li        r0, 0x80
/* 06AD50 8006DD50 7C0903A6 */  mtctr     r0
/* 06AD54 8006DD54 38A40000 */  addi      r5, r4, 0x0
lbl_8006DD58:
/* 06AD58 8006DD58 3C650001 */  addis     r3, r5, 0x1
/* 06AD5C 8006DD5C 38630224 */  addi      r3, r3, 0x224
/* 06AD60 8006DD60 38A50001 */  addi      r5, r5, 0x1
/* 06AD64 8006DD64 7C9F19AE */  stbx      r4, r31, r3
/* 06AD68 8006DD68 3C650001 */  addis     r3, r5, 0x1
/* 06AD6C 8006DD6C 38630224 */  addi      r3, r3, 0x224
/* 06AD70 8006DD70 38A50001 */  addi      r5, r5, 0x1
/* 06AD74 8006DD74 7C9F19AE */  stbx      r4, r31, r3
/* 06AD78 8006DD78 3C650001 */  addis     r3, r5, 0x1
/* 06AD7C 8006DD7C 38630224 */  addi      r3, r3, 0x224
/* 06AD80 8006DD80 38A50001 */  addi      r5, r5, 0x1
/* 06AD84 8006DD84 7C9F19AE */  stbx      r4, r31, r3
/* 06AD88 8006DD88 3C650001 */  addis     r3, r5, 0x1
/* 06AD8C 8006DD8C 38630224 */  addi      r3, r3, 0x224
/* 06AD90 8006DD90 38A50001 */  addi      r5, r5, 0x1
/* 06AD94 8006DD94 7C9F19AE */  stbx      r4, r31, r3
/* 06AD98 8006DD98 3C650001 */  addis     r3, r5, 0x1
/* 06AD9C 8006DD9C 38630224 */  addi      r3, r3, 0x224
/* 06ADA0 8006DDA0 38A50001 */  addi      r5, r5, 0x1
/* 06ADA4 8006DDA4 7C9F19AE */  stbx      r4, r31, r3
/* 06ADA8 8006DDA8 3C650001 */  addis     r3, r5, 0x1
/* 06ADAC 8006DDAC 38630224 */  addi      r3, r3, 0x224
/* 06ADB0 8006DDB0 38A50001 */  addi      r5, r5, 0x1
/* 06ADB4 8006DDB4 7C9F19AE */  stbx      r4, r31, r3
/* 06ADB8 8006DDB8 3C650001 */  addis     r3, r5, 0x1
/* 06ADBC 8006DDBC 38630224 */  addi      r3, r3, 0x224
/* 06ADC0 8006DDC0 38A50001 */  addi      r5, r5, 0x1
/* 06ADC4 8006DDC4 7C9F19AE */  stbx      r4, r31, r3
/* 06ADC8 8006DDC8 3C650001 */  addis     r3, r5, 0x1
/* 06ADCC 8006DDCC 38630224 */  addi      r3, r3, 0x224
/* 06ADD0 8006DDD0 7C9F19AE */  stbx      r4, r31, r3
/* 06ADD4 8006DDD4 38A50001 */  addi      r5, r5, 0x1
/* 06ADD8 8006DDD8 4200FF80 */  bdnz      lbl_8006DD58
/* 06ADDC 8006DDDC 38000155 */  li        r0, 0x155
/* 06ADE0 8006DDE0 38800000 */  li        r4, 0x0
/* 06ADE4 8006DDE4 7C0903A6 */  mtctr     r0
/* 06ADE8 8006DDE8 38040000 */  addi      r0, r4, 0x0
lbl_8006DDEC:
/* 06ADEC 8006DDEC 3C640001 */  addis     r3, r4, 0x1
/* 06ADF0 8006DDF0 38630624 */  addi      r3, r3, 0x624
/* 06ADF4 8006DDF4 38840001 */  addi      r4, r4, 0x1
/* 06ADF8 8006DDF8 7C1F19AE */  stbx      r0, r31, r3
/* 06ADFC 8006DDFC 3C640001 */  addis     r3, r4, 0x1
/* 06AE00 8006DE00 38630624 */  addi      r3, r3, 0x624
/* 06AE04 8006DE04 38840001 */  addi      r4, r4, 0x1
/* 06AE08 8006DE08 7C1F19AE */  stbx      r0, r31, r3
/* 06AE0C 8006DE0C 3C640001 */  addis     r3, r4, 0x1
/* 06AE10 8006DE10 38630624 */  addi      r3, r3, 0x624
/* 06AE14 8006DE14 38840001 */  addi      r4, r4, 0x1
/* 06AE18 8006DE18 7C1F19AE */  stbx      r0, r31, r3
/* 06AE1C 8006DE1C 3C640001 */  addis     r3, r4, 0x1
/* 06AE20 8006DE20 38630624 */  addi      r3, r3, 0x624
/* 06AE24 8006DE24 38840001 */  addi      r4, r4, 0x1
/* 06AE28 8006DE28 7C1F19AE */  stbx      r0, r31, r3
/* 06AE2C 8006DE2C 3C640001 */  addis     r3, r4, 0x1
/* 06AE30 8006DE30 38630624 */  addi      r3, r3, 0x624
/* 06AE34 8006DE34 38840001 */  addi      r4, r4, 0x1
/* 06AE38 8006DE38 7C1F19AE */  stbx      r0, r31, r3
/* 06AE3C 8006DE3C 3C640001 */  addis     r3, r4, 0x1
/* 06AE40 8006DE40 38630624 */  addi      r3, r3, 0x624
/* 06AE44 8006DE44 7C1F19AE */  stbx      r0, r31, r3
/* 06AE48 8006DE48 38840001 */  addi      r4, r4, 0x1
/* 06AE4C 8006DE4C 4200FFA0 */  bdnz      lbl_8006DDEC
/* 06AE50 8006DE50 3C9F0001 */  addis     r4, r31, 0x1
/* 06AE54 8006DE54 80BF0214 */  lwz       r5, 0x214(r31)
/* 06AE58 8006DE58 80640E6C */  lwz       r3, 0xe6c(r4)
/* 06AE5C 8006DE5C 3C630100 */  addis     r3, r3, 0x100
/* 06AE60 8006DE60 3803A000 */  subi      r0, r3, 0x6000
/* 06AE64 8006DE64 7C050000 */  cmpw      r5, r0
/* 06AE68 8006DE68 40800214 */  bge       lbl_8006E07C
/* 06AE6C 8006DE6C 3805FFFF */  subi      r0, r5, 0x1
/* 06AE70 8006DE70 541B9B7E */  srwi      r27, r0, 13
/* 06AE74 8006DE74 3BDB0001 */  addi      r30, r27, 0x1
/* 06AE78 8006DE78 93C4021C */  stw       r30, 0x21c(r4)
/* 06AE7C 8006DE7C 3B9F0000 */  addi      r28, r31, 0x0
/* 06AE80 8006DE80 3BA00000 */  li        r29, 0x0
/* 06AE84 8006DE84 48000058 */  b         lbl_8006DEDC
lbl_8006DE88:
/* 06AE88 8006DE88 7C1DD850 */  subf      r0, r29, r27
/* 06AE8C 8006DE8C 901C0224 */  stw       r0, 0x224(r28)
/* 06AE90 8006DE90 387F0000 */  addi      r3, r31, 0x0
/* 06AE94 8006DE94 38810014 */  addi      r4, r1, 0x14
/* 06AE98 8006DE98 38A00000 */  li        r5, 0x0
/* 06AE9C 8006DE9C 480013AD */  bl        romMakeFreeCache
/* 06AEA0 8006DEA0 2C030000 */  cmpwi     r3, 0x0
/* 06AEA4 8006DEA4 4082000C */  bne       lbl_8006DEB0
/* 06AEA8 8006DEA8 38000000 */  li        r0, 0x0
/* 06AEAC 8006DEAC 4800003C */  b         lbl_8006DEE8
lbl_8006DEB0:
/* 06AEB0 8006DEB0 80A10014 */  lwz       r5, 0x14(r1)
/* 06AEB4 8006DEB4 387F0000 */  addi      r3, r31, 0x0
/* 06AEB8 8006DEB8 389D0000 */  addi      r4, r29, 0x0
/* 06AEBC 8006DEBC 38C00000 */  li        r6, 0x0
/* 06AEC0 8006DEC0 48000F25 */  bl        romLoadBlock
/* 06AEC4 8006DEC4 2C030000 */  cmpwi     r3, 0x0
/* 06AEC8 8006DEC8 4082000C */  bne       lbl_8006DED4
/* 06AECC 8006DECC 38000000 */  li        r0, 0x0
/* 06AED0 8006DED0 48000018 */  b         lbl_8006DEE8
lbl_8006DED4:
/* 06AED4 8006DED4 3B9C0010 */  addi      r28, r28, 0x10
/* 06AED8 8006DED8 3BBD0001 */  addi      r29, r29, 0x1
lbl_8006DEDC:
/* 06AEDC 8006DEDC 7C1DF040 */  cmplw     r29, r30
/* 06AEE0 8006DEE0 4180FFA8 */  blt       lbl_8006DE88
/* 06AEE4 8006DEE4 38000001 */  li        r0, 0x1
lbl_8006DEE8:
/* 06AEE8 8006DEE8 2C000000 */  cmpwi     r0, 0x0
/* 06AEEC 8006DEEC 40820190 */  bne       lbl_8006E07C
/* 06AEF0 8006DEF0 38600000 */  li        r3, 0x0
/* 06AEF4 8006DEF4 4800018C */  b         lbl_8006E080
lbl_8006DEF8:
/* 06AEF8 8006DEF8 3861001C */  addi      r3, r1, 0x1c
/* 06AEFC 8006DEFC 38BF0010 */  addi      r5, r31, 0x10
/* 06AF00 8006DF00 38800001 */  li        r4, 0x1
/* 06AF04 8006DF04 4BF980D5 */  bl        xlFileOpen
/* 06AF08 8006DF08 2C030000 */  cmpwi     r3, 0x0
/* 06AF0C 8006DF0C 4082000C */  bne       lbl_8006DF18
/* 06AF10 8006DF10 38600000 */  li        r3, 0x0
/* 06AF14 8006DF14 4800016C */  b         lbl_8006E080
lbl_8006DF18:
/* 06AF18 8006DF18 801E0220 */  lwz       r0, 0x220(r30)
/* 06AF1C 8006DF1C 901F0004 */  stw       r0, 0x4(r31)
/* 06AF20 8006DF20 801F0214 */  lwz       r0, 0x214(r31)
/* 06AF24 8006DF24 541CD97F */  srwi.     r28, r0, 5
/* 06AF28 8006DF28 40820044 */  bne       lbl_8006DF6C
/* 06AF2C 8006DF2C 8061001C */  lwz       r3, 0x1c(r1)
/* 06AF30 8006DF30 809E0EF4 */  lwz       r4, 0xef4(r30)
/* 06AF34 8006DF34 4BF97F45 */  bl        xlFileSetPosition
/* 06AF38 8006DF38 2C030000 */  cmpwi     r3, 0x0
/* 06AF3C 8006DF3C 4082000C */  bne       lbl_8006DF48
/* 06AF40 8006DF40 38600000 */  li        r3, 0x0
/* 06AF44 8006DF44 4800013C */  b         lbl_8006E080
lbl_8006DF48:
/* 06AF48 8006DF48 8061001C */  lwz       r3, 0x1c(r1)
/* 06AF4C 8006DF4C 809F0004 */  lwz       r4, 0x4(r31)
/* 06AF50 8006DF50 80BF0214 */  lwz       r5, 0x214(r31)
/* 06AF54 8006DF54 4BF97F4D */  bl        xlFileGet
/* 06AF58 8006DF58 C02282D0 */  lfs       f1, D_8018C210@sda21(r0)
/* 06AF5C 8006DF5C 389F0010 */  addi      r4, r31, 0x10
/* 06AF60 8006DF60 38600001 */  li        r3, 0x1
/* 06AF64 8006DF64 4BF9AFB5 */  bl        simulatorShowLoad
/* 06AF68 8006DF68 48000094 */  b         lbl_8006DFFC
lbl_8006DF6C:
/* 06AF6C 8006DF6C CBC282D8 */  lfd       f30, D_8018C218@sda21(r0)
/* 06AF70 8006DF70 3B600000 */  li        r27, 0x0
/* 06AF74 8006DF74 CBE282E0 */  lfd       f31, D_8018C220@sda21(r0)
/* 06AF78 8006DF78 3FC04330 */  lis       r30, 0x4330
/* 06AF7C 8006DF7C 48000074 */  b         lbl_8006DFF0
lbl_8006DF80:
/* 06AF80 8006DF80 38600000 */  li        r3, 0x0
/* 06AF84 8006DF84 38800000 */  li        r4, 0x0
/* 06AF88 8006DF88 38A00001 */  li        r5, 0x1
/* 06AF8C 8006DF8C 4BF9AAE5 */  bl        simulatorTestReset
/* 06AF90 8006DF90 2C030000 */  cmpwi     r3, 0x0
/* 06AF94 8006DF94 4082000C */  bne       lbl_8006DFA0
/* 06AF98 8006DF98 38600000 */  li        r3, 0x0
/* 06AF9C 8006DF9C 480000E4 */  b         lbl_8006E080
lbl_8006DFA0:
/* 06AFA0 8006DFA0 801F0004 */  lwz       r0, 0x4(r31)
/* 06AFA4 8006DFA4 7F85E378 */  mr        r5, r28
/* 06AFA8 8006DFA8 8061001C */  lwz       r3, 0x1c(r1)
/* 06AFAC 8006DFAC 7C80DA14 */  add       r4, r0, r27
/* 06AFB0 8006DFB0 4BF97EF1 */  bl        xlFileGet
/* 06AFB4 8006DFB4 7F7BE214 */  add       r27, r27, r28
/* 06AFB8 8006DFB8 801F0214 */  lwz       r0, 0x214(r31)
/* 06AFBC 8006DFBC 6F638000 */  xoris     r3, r27, 0x8000
/* 06AFC0 8006DFC0 9061002C */  stw       r3, 0x2c(r1)
/* 06AFC4 8006DFC4 389F0010 */  addi      r4, r31, 0x10
/* 06AFC8 8006DFC8 38600000 */  li        r3, 0x0
/* 06AFCC 8006DFCC 90010024 */  stw       r0, 0x24(r1)
/* 06AFD0 8006DFD0 93C10028 */  stw       r30, 0x28(r1)
/* 06AFD4 8006DFD4 93C10020 */  stw       r30, 0x20(r1)
/* 06AFD8 8006DFD8 C8210028 */  lfd       f1, 0x28(r1)
/* 06AFDC 8006DFDC C8010020 */  lfd       f0, 0x20(r1)
/* 06AFE0 8006DFE0 EC21F028 */  fsubs     f1, f1, f30
/* 06AFE4 8006DFE4 EC00F828 */  fsubs     f0, f0, f31
/* 06AFE8 8006DFE8 EC210024 */  fdivs     f1, f1, f0
/* 06AFEC 8006DFEC 4BF9AF2D */  bl        simulatorShowLoad
lbl_8006DFF0:
/* 06AFF0 8006DFF0 801F0214 */  lwz       r0, 0x214(r31)
/* 06AFF4 8006DFF4 7C1B0000 */  cmpw      r27, r0
/* 06AFF8 8006DFF8 4180FF88 */  blt       lbl_8006DF80
lbl_8006DFFC:
/* 06AFFC 8006DFFC 3861001C */  addi      r3, r1, 0x1c
/* 06B000 8006E000 4BF97FA5 */  bl        xlFileClose
/* 06B004 8006E004 2C030000 */  cmpwi     r3, 0x0
/* 06B008 8006E008 4082000C */  bne       lbl_8006E014
/* 06B00C 8006E00C 38600000 */  li        r3, 0x0
/* 06B010 8006E010 48000070 */  b         lbl_8006E080
lbl_8006E014:
/* 06B014 8006E014 38000001 */  li        r0, 0x1
/* 06B018 8006E018 901F0218 */  stw       r0, 0x218(r31)
/* 06B01C 8006E01C 801F0008 */  lwz       r0, 0x8(r31)
/* 06B020 8006E020 2C000000 */  cmpwi     r0, 0x0
/* 06B024 8006E024 41820058 */  beq       lbl_8006E07C
/* 06B028 8006E028 3C8000FF */  lis       r4, 0xff
/* 06B02C 8006E02C 80DF0004 */  lwz       r6, 0x4(r31)
/* 06B030 8006E030 3C60FF01 */  lis       r3, 0xff01
/* 06B034 8006E034 38A400FF */  addi      r5, r4, 0xff
/* 06B038 8006E038 3883FF00 */  subi      r4, r3, 0x100
/* 06B03C 8006E03C 38E00000 */  li        r7, 0x0
/* 06B040 8006E040 48000028 */  b         lbl_8006E068
lbl_8006E044:
/* 06B044 8006E044 80060000 */  lwz       r0, 0x0(r6)
/* 06B048 8006E048 38E70001 */  addi      r7, r7, 0x1
/* 06B04C 8006E04C 5403C23E */  srwi      r3, r0, 8
/* 06B050 8006E050 5400402E */  slwi      r0, r0, 8
/* 06B054 8006E054 7C632838 */  and       r3, r3, r5
/* 06B058 8006E058 7C002038 */  and       r0, r0, r4
/* 06B05C 8006E05C 7C600378 */  or        r0, r3, r0
/* 06B060 8006E060 90060000 */  stw       r0, 0x0(r6)
/* 06B064 8006E064 38C60004 */  addi      r6, r6, 0x4
lbl_8006E068:
/* 06B068 8006E068 807F0214 */  lwz       r3, 0x214(r31)
/* 06B06C 8006E06C 38030003 */  addi      r0, r3, 0x3
/* 06B070 8006E070 7C001670 */  srawi     r0, r0, 2
/* 06B074 8006E074 7C070000 */  cmpw      r7, r0
/* 06B078 8006E078 4180FFCC */  blt       lbl_8006E044
lbl_8006E07C:
/* 06B07C 8006E07C 38600001 */  li        r3, 0x1
lbl_8006E080:
/* 06B080 8006E080 BB610034 */  lmw       r27, 0x34(r1)
/* 06B084 8006E084 8001005C */  lwz       r0, 0x5c(r1)
/* 06B088 8006E088 CBE10050 */  lfd       f31, 0x50(r1)
/* 06B08C 8006E08C CBC10048 */  lfd       f30, 0x48(r1)
/* 06B090 8006E090 7C0803A6 */  mtlr      r0
/* 06B094 8006E094 38210058 */  addi      r1, r1, 0x58
/* 06B098 8006E098 4E800020 */  blr

glabel romCopyUpdate
/* 06B09C 8006E09C 7C0802A6 */  mflr      r0
/* 06B0A0 8006E0A0 38A00000 */  li        r5, 0x0
/* 06B0A4 8006E0A4 90010004 */  stw       r0, 0x4(r1)
/* 06B0A8 8006E0A8 9421FFD0 */  stwu      r1, -0x30(r1)
/* 06B0AC 8006E0AC BF410018 */  stmw      r26, 0x18(r1)
/* 06B0B0 8006E0B0 3BA30000 */  addi      r29, r3, 0x0
/* 06B0B4 8006E0B4 3C7D0001 */  addis     r3, r29, 0x1
/* 06B0B8 8006E0B8 80030E58 */  lwz       r0, 0xe58(r3)
/* 06B0BC 8006E0BC 809D0000 */  lwz       r4, 0x0(r29)
/* 06B0C0 8006E0C0 28000000 */  cmplwi    r0, 0x0
/* 06B0C4 8006E0C4 83C40024 */  lwz       r30, 0x24(r4)
/* 06B0C8 8006E0C8 40820014 */  bne       lbl_8006E0DC
/* 06B0CC 8006E0CC 80030E5C */  lwz       r0, 0xe5c(r3)
/* 06B0D0 8006E0D0 28000000 */  cmplwi    r0, 0x0
/* 06B0D4 8006E0D4 40820008 */  bne       lbl_8006E0DC
/* 06B0D8 8006E0D8 38A00001 */  li        r5, 0x1
lbl_8006E0DC:
/* 06B0DC 8006E0DC 2C050000 */  cmpwi     r5, 0x0
/* 06B0E0 8006E0E0 4182000C */  beq       lbl_8006E0EC
/* 06B0E4 8006E0E4 38000000 */  li        r0, 0x0
/* 06B0E8 8006E0E8 48000008 */  b         lbl_8006E0F0
lbl_8006E0EC:
/* 06B0EC 8006E0EC 38000001 */  li        r0, 0x1
lbl_8006E0F0:
/* 06B0F0 8006E0F0 2C000000 */  cmpwi     r0, 0x0
/* 06B0F4 8006E0F4 40820020 */  bne       lbl_8006E114
/* 06B0F8 8006E0F8 3FFD0001 */  addis     r31, r29, 0x1
/* 06B0FC 8006E0FC 801F0E30 */  lwz       r0, 0xe30(r31)
/* 06B100 8006E100 28000000 */  cmplwi    r0, 0x0
/* 06B104 8006E104 41820010 */  beq       lbl_8006E114
/* 06B108 8006E108 801F0E24 */  lwz       r0, 0xe24(r31)
/* 06B10C 8006E10C 2C000000 */  cmpwi     r0, 0x0
/* 06B110 8006E110 418201C4 */  beq       lbl_8006E2D4
lbl_8006E114:
/* 06B114 8006E114 38600001 */  li        r3, 0x1
/* 06B118 8006E118 480001F0 */  b         lbl_8006E308
/* 06B11C 8006E11C 480001B8 */  b         lbl_8006E2D4
lbl_8006E120:
/* 06B120 8006E120 801F0E28 */  lwz       r0, 0xe28(r31)
/* 06B124 8006E124 28000000 */  cmplwi    r0, 0x0
/* 06B128 8006E128 4182001C */  beq       lbl_8006E144
/* 06B12C 8006E12C 807E0B5C */  lwz       r3, 0xb5c(r30)
/* 06B130 8006E130 801E0B60 */  lwz       r0, 0xb60(r30)
/* 06B134 8006E134 7C030040 */  cmplw     r3, r0
/* 06B138 8006E138 4182000C */  beq       lbl_8006E144
/* 06B13C 8006E13C 38600001 */  li        r3, 0x1
/* 06B140 8006E140 480001C8 */  b         lbl_8006E308
lbl_8006E144:
/* 06B144 8006E144 38600000 */  li        r3, 0x0
/* 06B148 8006E148 38800000 */  li        r4, 0x0
/* 06B14C 8006E14C 38A00001 */  li        r5, 0x1
/* 06B150 8006E150 4BF9A921 */  bl        simulatorTestReset
/* 06B154 8006E154 2C030000 */  cmpwi     r3, 0x0
/* 06B158 8006E158 4082000C */  bne       lbl_8006E164
/* 06B15C 8006E15C 38600000 */  li        r3, 0x0
/* 06B160 8006E160 480001A8 */  b         lbl_8006E308
lbl_8006E164:
/* 06B164 8006E164 801F0E34 */  lwz       r0, 0xe34(r31)
/* 06B168 8006E168 807F021C */  lwz       r3, 0x21c(r31)
/* 06B16C 8006E16C 54059B7E */  srwi      r5, r0, 13
/* 06B170 8006E170 5404BA76 */  rlwinm    r4, r0, 23, 9, 27
/* 06B174 8006E174 3B84021C */  addi      r28, r4, 0x21c
/* 06B178 8006E178 7F9DE214 */  add       r28, r29, r28
/* 06B17C 8006E17C 837C0008 */  lwz       r27, 0x8(r28)
/* 06B180 8006E180 38030001 */  addi      r0, r3, 0x1
/* 06B184 8006E184 3B450000 */  addi      r26, r5, 0x0
/* 06B188 8006E188 901F021C */  stw       r0, 0x21c(r31)
/* 06B18C 8006E18C 901C0008 */  stw       r0, 0x8(r28)
/* 06B190 8006E190 801C0004 */  lwz       r0, 0x4(r28)
/* 06B194 8006E194 28000000 */  cmplwi    r0, 0x0
/* 06B198 8006E198 41820030 */  beq       lbl_8006E1C8
/* 06B19C 8006E19C 801C0000 */  lwz       r0, 0x0(r28)
/* 06B1A0 8006E1A0 2C000000 */  cmpwi     r0, 0x0
/* 06B1A4 8006E1A4 408000BC */  bge       lbl_8006E260
/* 06B1A8 8006E1A8 387D0000 */  addi      r3, r29, 0x0
/* 06B1AC 8006E1AC 389A0000 */  addi      r4, r26, 0x0
/* 06B1B0 8006E1B0 38A00000 */  li        r5, 0x0
/* 06B1B4 8006E1B4 48000E3D */  bl        romSetBlockCache
/* 06B1B8 8006E1B8 2C030000 */  cmpwi     r3, 0x0
/* 06B1BC 8006E1BC 408200A4 */  bne       lbl_8006E260
/* 06B1C0 8006E1C0 38600000 */  li        r3, 0x0
/* 06B1C4 8006E1C4 48000144 */  b         lbl_8006E308
lbl_8006E1C8:
/* 06B1C8 8006E1C8 387D0000 */  addi      r3, r29, 0x0
/* 06B1CC 8006E1CC 3881000C */  addi      r4, r1, 0xc
/* 06B1D0 8006E1D0 38A00000 */  li        r5, 0x0
/* 06B1D4 8006E1D4 48001075 */  bl        romMakeFreeCache
/* 06B1D8 8006E1D8 2C030000 */  cmpwi     r3, 0x0
/* 06B1DC 8006E1DC 4082000C */  bne       lbl_8006E1E8
/* 06B1E0 8006E1E0 38600000 */  li        r3, 0x0
/* 06B1E4 8006E1E4 48000124 */  b         lbl_8006E308
lbl_8006E1E8:
/* 06B1E8 8006E1E8 801F0E28 */  lwz       r0, 0xe28(r31)
/* 06B1EC 8006E1EC 28000000 */  cmplwi    r0, 0x0
/* 06B1F0 8006E1F0 40820028 */  bne       lbl_8006E218
/* 06B1F4 8006E1F4 80A1000C */  lwz       r5, 0xc(r1)
/* 06B1F8 8006E1F8 387D0000 */  addi      r3, r29, 0x0
/* 06B1FC 8006E1FC 389A0000 */  addi      r4, r26, 0x0
/* 06B200 8006E200 38C00000 */  li        r6, 0x0
/* 06B204 8006E204 48000BE1 */  bl        romLoadBlock
/* 06B208 8006E208 2C030000 */  cmpwi     r3, 0x0
/* 06B20C 8006E20C 40820054 */  bne       lbl_8006E260
/* 06B210 8006E210 38600000 */  li        r3, 0x0
/* 06B214 8006E214 480000F4 */  b         lbl_8006E308
lbl_8006E218:
/* 06B218 8006E218 937C0008 */  stw       r27, 0x8(r28)
/* 06B21C 8006E21C 3C608007 */  lis       r3, __romCopyUpdate_Complete@ha
/* 06B220 8006E220 38C3E31C */  addi      r6, r3, __romCopyUpdate_Complete@l
/* 06B224 8006E224 809F021C */  lwz       r4, 0x21c(r31)
/* 06B228 8006E228 38000001 */  li        r0, 0x1
/* 06B22C 8006E22C 387D0000 */  addi      r3, r29, 0x0
/* 06B230 8006E230 3884FFFF */  subi      r4, r4, 0x1
/* 06B234 8006E234 909F021C */  stw       r4, 0x21c(r31)
/* 06B238 8006E238 7F44D378 */  mr        r4, r26
/* 06B23C 8006E23C 901F0E24 */  stw       r0, 0xe24(r31)
/* 06B240 8006E240 80A1000C */  lwz       r5, 0xc(r1)
/* 06B244 8006E244 48000BA1 */  bl        romLoadBlock
/* 06B248 8006E248 2C030000 */  cmpwi     r3, 0x0
/* 06B24C 8006E24C 4082000C */  bne       lbl_8006E258
/* 06B250 8006E250 38600000 */  li        r3, 0x0
/* 06B254 8006E254 480000B4 */  b         lbl_8006E308
lbl_8006E258:
/* 06B258 8006E258 38600001 */  li        r3, 0x1
/* 06B25C 8006E25C 480000AC */  b         lbl_8006E308
lbl_8006E260:
/* 06B260 8006E260 807F0E34 */  lwz       r3, 0xe34(r31)
/* 06B264 8006E264 801C0004 */  lwz       r0, 0x4(r28)
/* 06B268 8006E268 546604FE */  clrlwi    r6, r3, 19
/* 06B26C 8006E26C 807F0E30 */  lwz       r3, 0xe30(r31)
/* 06B270 8006E270 7F460050 */  subf      r26, r6, r0
/* 06B274 8006E274 7C1A1840 */  cmplw     r26, r3
/* 06B278 8006E278 40810008 */  ble       lbl_8006E280
/* 06B27C 8006E27C 7C7A1B78 */  mr        r26, r3
lbl_8006E280:
/* 06B280 8006E280 801C0000 */  lwz       r0, 0x0(r28)
/* 06B284 8006E284 7F45D378 */  mr        r5, r26
/* 06B288 8006E288 809F0220 */  lwz       r4, 0x220(r31)
/* 06B28C 8006E28C 54006824 */  slwi      r0, r0, 13
/* 06B290 8006E290 807F0E2C */  lwz       r3, 0xe2c(r31)
/* 06B294 8006E294 7C040214 */  add       r0, r4, r0
/* 06B298 8006E298 7C803214 */  add       r4, r0, r6
/* 06B29C 8006E29C 4BF987B5 */  bl        xlHeapCopy
/* 06B2A0 8006E2A0 2C030000 */  cmpwi     r3, 0x0
/* 06B2A4 8006E2A4 4082000C */  bne       lbl_8006E2B0
/* 06B2A8 8006E2A8 38600000 */  li        r3, 0x0
/* 06B2AC 8006E2AC 4800005C */  b         lbl_8006E308
lbl_8006E2B0:
/* 06B2B0 8006E2B0 801F0E2C */  lwz       r0, 0xe2c(r31)
/* 06B2B4 8006E2B4 7C00D214 */  add       r0, r0, r26
/* 06B2B8 8006E2B8 901F0E2C */  stw       r0, 0xe2c(r31)
/* 06B2BC 8006E2BC 801F0E30 */  lwz       r0, 0xe30(r31)
/* 06B2C0 8006E2C0 7C1A0050 */  subf      r0, r26, r0
/* 06B2C4 8006E2C4 901F0E30 */  stw       r0, 0xe30(r31)
/* 06B2C8 8006E2C8 801F0E34 */  lwz       r0, 0xe34(r31)
/* 06B2CC 8006E2CC 7C00D214 */  add       r0, r0, r26
/* 06B2D0 8006E2D0 901F0E34 */  stw       r0, 0xe34(r31)
lbl_8006E2D4:
/* 06B2D4 8006E2D4 801F0E30 */  lwz       r0, 0xe30(r31)
/* 06B2D8 8006E2D8 28000000 */  cmplwi    r0, 0x0
/* 06B2DC 8006E2DC 4082FE44 */  bne       lbl_8006E120
/* 06B2E0 8006E2E0 819F0E28 */  lwz       r12, 0xe28(r31)
/* 06B2E4 8006E2E4 280C0000 */  cmplwi    r12, 0x0
/* 06B2E8 8006E2E8 4182001C */  beq       lbl_8006E304
/* 06B2EC 8006E2EC 7D8803A6 */  mtlr      r12
/* 06B2F0 8006E2F0 4E800021 */  blrl
/* 06B2F4 8006E2F4 2C030000 */  cmpwi     r3, 0x0
/* 06B2F8 8006E2F8 4082000C */  bne       lbl_8006E304
/* 06B2FC 8006E2FC 38600000 */  li        r3, 0x0
/* 06B300 8006E300 48000008 */  b         lbl_8006E308
lbl_8006E304:
/* 06B304 8006E304 38600001 */  li        r3, 0x1
lbl_8006E308:
/* 06B308 8006E308 BB410018 */  lmw       r26, 0x18(r1)
/* 06B30C 8006E30C 80010034 */  lwz       r0, 0x34(r1)
/* 06B310 8006E310 38210030 */  addi      r1, r1, 0x30
/* 06B314 8006E314 7C0803A6 */  mtlr      r0
/* 06B318 8006E318 4E800020 */  blr

glabel __romCopyUpdate_Complete
/* 06B31C 8006E31C 808D8914 */  lwz       r4, gpSystem@sda21(r0)
/* 06B320 8006E320 38000000 */  li        r0, 0x0
/* 06B324 8006E324 38600001 */  li        r3, 0x1
/* 06B328 8006E328 80840030 */  lwz       r4, 0x30(r4)
/* 06B32C 8006E32C 3C840001 */  addis     r4, r4, 0x1
/* 06B330 8006E330 90040E24 */  stw       r0, 0xe24(r4)
/* 06B334 8006E334 4E800020 */  blr

glabel romLoadUpdate
/* 06B338 8006E338 7C0802A6 */  mflr      r0
/* 06B33C 8006E33C 90010004 */  stw       r0, 0x4(r1)
/* 06B340 8006E340 9421FFD0 */  stwu      r1, -0x30(r1)
/* 06B344 8006E344 BF210014 */  stmw      r25, 0x14(r1)
/* 06B348 8006E348 3BA30000 */  addi      r29, r3, 0x0
/* 06B34C 8006E34C 3C7D0001 */  addis     r3, r29, 0x1
/* 06B350 8006E350 80A30E58 */  lwz       r5, 0xe58(r3)
/* 06B354 8006E354 809D0000 */  lwz       r4, 0x0(r29)
/* 06B358 8006E358 28050000 */  cmplwi    r5, 0x0
/* 06B35C 8006E35C 83C40024 */  lwz       r30, 0x24(r4)
/* 06B360 8006E360 40820010 */  bne       lbl_8006E370
/* 06B364 8006E364 80030E5C */  lwz       r0, 0xe5c(r3)
/* 06B368 8006E368 28000000 */  cmplwi    r0, 0x0
/* 06B36C 8006E36C 41820014 */  beq       lbl_8006E380
lbl_8006E370:
/* 06B370 8006E370 3F7D0001 */  addis     r27, r29, 0x1
/* 06B374 8006E374 801B0E38 */  lwz       r0, 0xe38(r27)
/* 06B378 8006E378 2C000000 */  cmpwi     r0, 0x0
/* 06B37C 8006E37C 4182000C */  beq       lbl_8006E388
lbl_8006E380:
/* 06B380 8006E380 38600001 */  li        r3, 0x1
/* 06B384 8006E384 480000FC */  b         lbl_8006E480
lbl_8006E388:
/* 06B388 8006E388 54A09B7E */  srwi      r0, r5, 13
/* 06B38C 8006E38C 807B0E5C */  lwz       r3, 0xe5c(r27)
/* 06B390 8006E390 7C1F0378 */  mr        r31, r0
/* 06B394 8006E394 54A0BA76 */  rlwinm    r0, r5, 23, 9, 27
/* 06B398 8006E398 54799B7E */  srwi      r25, r3, 13
/* 06B39C 8006E39C 7F5D0214 */  add       r26, r29, r0
/* 06B3A0 8006E3A0 57FC6824 */  slwi      r28, r31, 13
/* 06B3A4 8006E3A4 480000C0 */  b         lbl_8006E464
lbl_8006E3A8:
/* 06B3A8 8006E3A8 807E0B5C */  lwz       r3, 0xb5c(r30)
/* 06B3AC 8006E3AC 801E0B60 */  lwz       r0, 0xb60(r30)
/* 06B3B0 8006E3B0 7C030040 */  cmplw     r3, r0
/* 06B3B4 8006E3B4 4182000C */  beq       lbl_8006E3C0
/* 06B3B8 8006E3B8 38600001 */  li        r3, 0x1
/* 06B3BC 8006E3BC 480000C4 */  b         lbl_8006E480
lbl_8006E3C0:
/* 06B3C0 8006E3C0 38600000 */  li        r3, 0x0
/* 06B3C4 8006E3C4 38800000 */  li        r4, 0x0
/* 06B3C8 8006E3C8 38A00001 */  li        r5, 0x1
/* 06B3CC 8006E3CC 4BF9A6A5 */  bl        simulatorTestReset
/* 06B3D0 8006E3D0 2C030000 */  cmpwi     r3, 0x0
/* 06B3D4 8006E3D4 4082000C */  bne       lbl_8006E3E0
/* 06B3D8 8006E3D8 38600000 */  li        r3, 0x0
/* 06B3DC 8006E3DC 480000A4 */  b         lbl_8006E480
lbl_8006E3E0:
/* 06B3E0 8006E3E0 807B021C */  lwz       r3, 0x21c(r27)
/* 06B3E4 8006E3E4 38030001 */  addi      r0, r3, 0x1
/* 06B3E8 8006E3E8 901B021C */  stw       r0, 0x21c(r27)
/* 06B3EC 8006E3EC 901A0224 */  stw       r0, 0x224(r26)
/* 06B3F0 8006E3F0 801A0220 */  lwz       r0, 0x220(r26)
/* 06B3F4 8006E3F4 28000000 */  cmplwi    r0, 0x0
/* 06B3F8 8006E3F8 4082005C */  bne       lbl_8006E454
/* 06B3FC 8006E3FC 387D0000 */  addi      r3, r29, 0x0
/* 06B400 8006E400 3881000C */  addi      r4, r1, 0xc
/* 06B404 8006E404 38A00000 */  li        r5, 0x0
/* 06B408 8006E408 48000E41 */  bl        romMakeFreeCache
/* 06B40C 8006E40C 2C030000 */  cmpwi     r3, 0x0
/* 06B410 8006E410 4082000C */  bne       lbl_8006E41C
/* 06B414 8006E414 38600000 */  li        r3, 0x0
/* 06B418 8006E418 48000068 */  b         lbl_8006E480
lbl_8006E41C:
/* 06B41C 8006E41C 38000001 */  li        r0, 0x1
/* 06B420 8006E420 901B0E38 */  stw       r0, 0xe38(r27)
/* 06B424 8006E424 3C608007 */  lis       r3, __romLoadUpdate_Complete@ha
/* 06B428 8006E428 38C3E494 */  addi      r6, r3, __romLoadUpdate_Complete@l
/* 06B42C 8006E42C 80A1000C */  lwz       r5, 0xc(r1)
/* 06B430 8006E430 387D0000 */  addi      r3, r29, 0x0
/* 06B434 8006E434 389F0000 */  addi      r4, r31, 0x0
/* 06B438 8006E438 480009AD */  bl        romLoadBlock
/* 06B43C 8006E43C 2C030000 */  cmpwi     r3, 0x0
/* 06B440 8006E440 4082000C */  bne       lbl_8006E44C
/* 06B444 8006E444 38600000 */  li        r3, 0x0
/* 06B448 8006E448 48000038 */  b         lbl_8006E480
lbl_8006E44C:
/* 06B44C 8006E44C 38600001 */  li        r3, 0x1
/* 06B450 8006E450 48000030 */  b         lbl_8006E480
lbl_8006E454:
/* 06B454 8006E454 3B9C2000 */  addi      r28, r28, 0x2000
/* 06B458 8006E458 939B0E58 */  stw       r28, 0xe58(r27)
/* 06B45C 8006E45C 3B5A0010 */  addi      r26, r26, 0x10
/* 06B460 8006E460 3BFF0001 */  addi      r31, r31, 0x1
lbl_8006E464:
/* 06B464 8006E464 7C1FC840 */  cmplw     r31, r25
/* 06B468 8006E468 4081FF40 */  ble       lbl_8006E3A8
/* 06B46C 8006E46C 3C9D0001 */  addis     r4, r29, 0x1
/* 06B470 8006E470 38000000 */  li        r0, 0x0
/* 06B474 8006E474 90040E5C */  stw       r0, 0xe5c(r4)
/* 06B478 8006E478 38600001 */  li        r3, 0x1
/* 06B47C 8006E47C 90040E58 */  stw       r0, 0xe58(r4)
lbl_8006E480:
/* 06B480 8006E480 BB210014 */  lmw       r25, 0x14(r1)
/* 06B484 8006E484 80010034 */  lwz       r0, 0x34(r1)
/* 06B488 8006E488 38210030 */  addi      r1, r1, 0x30
/* 06B48C 8006E48C 7C0803A6 */  mtlr      r0
/* 06B490 8006E490 4E800020 */  blr

glabel __romLoadUpdate_Complete
/* 06B494 8006E494 808D8914 */  lwz       r4, gpSystem@sda21(r0)
/* 06B498 8006E498 38000000 */  li        r0, 0x0
/* 06B49C 8006E49C 38600001 */  li        r3, 0x1
/* 06B4A0 8006E4A0 80840030 */  lwz       r4, 0x30(r4)
/* 06B4A4 8006E4A4 3C840001 */  addis     r4, r4, 0x1
/* 06B4A8 8006E4A8 90040E38 */  stw       r0, 0xe38(r4)
/* 06B4AC 8006E4AC 4E800020 */  blr

glabel romCacheGame
/* 06B4B0 8006E4B0 7C0802A6 */  mflr      r0
/* 06B4B4 8006E4B4 38C00000 */  li        r6, 0x0
/* 06B4B8 8006E4B8 90010004 */  stw       r0, 0x4(r1)
/* 06B4BC 8006E4BC 38A00001 */  li        r5, 0x1
/* 06B4C0 8006E4C0 38ED8594 */  li        r7, D_8018B514@sda21
/* 06B4C4 8006E4C4 9421FF90 */  stwu      r1, -0x70(r1)
/* 06B4C8 8006E4C8 93E1006C */  stw       r31, 0x6c(r1)
/* 06B4CC 8006E4CC 7C7F1B78 */  mr        r31, r3
/* 06B4D0 8006E4D0 3C60800F */  lis       r3, gClassROM@ha
/* 06B4D4 8006E4D4 93C10068 */  stw       r30, 0x68(r1)
/* 06B4D8 8006E4D8 3C9F0001 */  addis     r4, r31, 0x1
/* 06B4DC 8006E4DC 3863EDB0 */  addi      r3, r3, gClassROM@l
/* 06B4E0 8006E4E0 90C10060 */  stw       r6, 0x60(r1)
/* 06B4E4 8006E4E4 39010054 */  addi      r8, r1, 0x54
/* 06B4E8 8006E4E8 90AD88F8 */  stw       r5, gDVDResetToggle@sda21(r0)
/* 06B4EC 8006E4EC 88040EAB */  lbz       r0, 0xeab(r4)
/* 06B4F0 8006E4F0 98010054 */  stb       r0, 0x54(r1)
/* 06B4F4 8006E4F4 88040EAC */  lbz       r0, 0xeac(r4)
/* 06B4F8 8006E4F8 98010055 */  stb       r0, 0x55(r1)
/* 06B4FC 8006E4FC 88040EAD */  lbz       r0, 0xead(r4)
/* 06B500 8006E500 98010056 */  stb       r0, 0x56(r1)
/* 06B504 8006E504 88040EAE */  lbz       r0, 0xeae(r4)
/* 06B508 8006E508 98010057 */  stb       r0, 0x57(r1)
/* 06B50C 8006E50C 98C10058 */  stb       r6, 0x58(r1)
/* 06B510 8006E510 88810054 */  lbz       r4, 0x54(r1)
/* 06B514 8006E514 880D8594 */  lbz       r0, D_8018B514@sda21(r0)
/* 06B518 8006E518 7C840774 */  extsb     r4, r4
/* 06B51C 8006E51C 7C000774 */  extsb     r0, r0
/* 06B520 8006E520 7C040000 */  cmpw      r4, r0
/* 06B524 8006E524 41820008 */  beq       lbl_8006E52C
/* 06B528 8006E528 4800005C */  b         lbl_8006E584
lbl_8006E52C:
/* 06B52C 8006E52C 8C070001 */  lbzu      r0, 0x1(r7)
/* 06B530 8006E530 8C880001 */  lbzu      r4, 0x1(r8)
/* 06B534 8006E534 7C000774 */  extsb     r0, r0
/* 06B538 8006E538 7C840774 */  extsb     r4, r4
/* 06B53C 8006E53C 7C040000 */  cmpw      r4, r0
/* 06B540 8006E540 41820008 */  beq       lbl_8006E548
/* 06B544 8006E544 48000040 */  b         lbl_8006E584
lbl_8006E548:
/* 06B548 8006E548 8C070001 */  lbzu      r0, 0x1(r7)
/* 06B54C 8006E54C 8C880001 */  lbzu      r4, 0x1(r8)
/* 06B550 8006E550 7C000774 */  extsb     r0, r0
/* 06B554 8006E554 7C840774 */  extsb     r4, r4
/* 06B558 8006E558 7C040000 */  cmpw      r4, r0
/* 06B55C 8006E55C 41820008 */  beq       lbl_8006E564
/* 06B560 8006E560 48000024 */  b         lbl_8006E584
lbl_8006E564:
/* 06B564 8006E564 88070001 */  lbz       r0, 0x1(r7)
/* 06B568 8006E568 88880001 */  lbz       r4, 0x1(r8)
/* 06B56C 8006E56C 7C000774 */  extsb     r0, r0
/* 06B570 8006E570 7C840774 */  extsb     r4, r4
/* 06B574 8006E574 7C040000 */  cmpw      r4, r0
/* 06B578 8006E578 41820008 */  beq       lbl_8006E580
/* 06B57C 8006E57C 48000008 */  b         lbl_8006E584
lbl_8006E580:
/* 06B580 8006E580 7CA62B78 */  mr        r6, r5
lbl_8006E584:
/* 06B584 8006E584 2C060000 */  cmpwi     r6, 0x0
/* 06B588 8006E588 408200B4 */  bne       lbl_8006E63C
/* 06B58C 8006E58C 3C9F0001 */  addis     r4, r31, 0x1
/* 06B590 8006E590 88040EAB */  lbz       r0, 0xeab(r4)
/* 06B594 8006E594 38A00000 */  li        r5, 0x0
/* 06B598 8006E598 38CD859C */  li        r6, D_8018B51C@sda21
/* 06B59C 8006E59C 9801004C */  stb       r0, 0x4c(r1)
/* 06B5A0 8006E5A0 38E1004C */  addi      r7, r1, 0x4c
/* 06B5A4 8006E5A4 88040EAC */  lbz       r0, 0xeac(r4)
/* 06B5A8 8006E5A8 9801004D */  stb       r0, 0x4d(r1)
/* 06B5AC 8006E5AC 88040EAD */  lbz       r0, 0xead(r4)
/* 06B5B0 8006E5B0 9801004E */  stb       r0, 0x4e(r1)
/* 06B5B4 8006E5B4 88040EAE */  lbz       r0, 0xeae(r4)
/* 06B5B8 8006E5B8 9801004F */  stb       r0, 0x4f(r1)
/* 06B5BC 8006E5BC 98A10050 */  stb       r5, 0x50(r1)
/* 06B5C0 8006E5C0 8881004C */  lbz       r4, 0x4c(r1)
/* 06B5C4 8006E5C4 880D859C */  lbz       r0, D_8018B51C@sda21(r0)
/* 06B5C8 8006E5C8 7C840774 */  extsb     r4, r4
/* 06B5CC 8006E5CC 7C000774 */  extsb     r0, r0
/* 06B5D0 8006E5D0 7C040000 */  cmpw      r4, r0
/* 06B5D4 8006E5D4 41820008 */  beq       lbl_8006E5DC
/* 06B5D8 8006E5D8 4800005C */  b         lbl_8006E634
lbl_8006E5DC:
/* 06B5DC 8006E5DC 8C060001 */  lbzu      r0, 0x1(r6)
/* 06B5E0 8006E5E0 8C870001 */  lbzu      r4, 0x1(r7)
/* 06B5E4 8006E5E4 7C000774 */  extsb     r0, r0
/* 06B5E8 8006E5E8 7C840774 */  extsb     r4, r4
/* 06B5EC 8006E5EC 7C040000 */  cmpw      r4, r0
/* 06B5F0 8006E5F0 41820008 */  beq       lbl_8006E5F8
/* 06B5F4 8006E5F4 48000040 */  b         lbl_8006E634
lbl_8006E5F8:
/* 06B5F8 8006E5F8 8C060001 */  lbzu      r0, 0x1(r6)
/* 06B5FC 8006E5FC 8C870001 */  lbzu      r4, 0x1(r7)
/* 06B600 8006E600 7C000774 */  extsb     r0, r0
/* 06B604 8006E604 7C840774 */  extsb     r4, r4
/* 06B608 8006E608 7C040000 */  cmpw      r4, r0
/* 06B60C 8006E60C 41820008 */  beq       lbl_8006E614
/* 06B610 8006E610 48000024 */  b         lbl_8006E634
lbl_8006E614:
/* 06B614 8006E614 88060001 */  lbz       r0, 0x1(r6)
/* 06B618 8006E618 88870001 */  lbz       r4, 0x1(r7)
/* 06B61C 8006E61C 7C000774 */  extsb     r0, r0
/* 06B620 8006E620 7C840774 */  extsb     r4, r4
/* 06B624 8006E624 7C040000 */  cmpw      r4, r0
/* 06B628 8006E628 41820008 */  beq       lbl_8006E630
/* 06B62C 8006E62C 48000008 */  b         lbl_8006E634
lbl_8006E630:
/* 06B630 8006E630 38A00001 */  li        r5, 0x1
lbl_8006E634:
/* 06B634 8006E634 2C050000 */  cmpwi     r5, 0x0
/* 06B638 8006E638 418201C4 */  beq       lbl_8006E7FC
lbl_8006E63C:
/* 06B63C 8006E63C 800D89E8 */  lwz       r0, gnFlagZelda@sda21(r0)
/* 06B640 8006E640 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 06B644 8006E644 4182001C */  beq       lbl_8006E660
/* 06B648 8006E648 38030010 */  addi      r0, r3, 0x10
/* 06B64C 8006E64C 3C9F0001 */  addis     r4, r31, 0x1
/* 06B650 8006E650 90040EB0 */  stw       r0, 0xeb0(r4)
/* 06B654 8006E654 380000C6 */  li        r0, 0xc6
/* 06B658 8006E658 90040EB4 */  stw       r0, 0xeb4(r4)
/* 06B65C 8006E65C 48000018 */  b         lbl_8006E674
lbl_8006E660:
/* 06B660 8006E660 38030328 */  addi      r0, r3, 0x328
/* 06B664 8006E664 3C9F0001 */  addis     r4, r31, 0x1
/* 06B668 8006E668 90040EB0 */  stw       r0, 0xeb0(r4)
/* 06B66C 8006E66C 380000C6 */  li        r0, 0xc6
/* 06B670 8006E670 90040EB4 */  stw       r0, 0xeb4(r4)
lbl_8006E674:
/* 06B674 8006E674 800D89E8 */  lwz       r0, gnFlagZelda@sda21(r0)
/* 06B678 8006E678 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 06B67C 8006E67C 4182000C */  beq       lbl_8006E688
/* 06B680 8006E680 380D85A4 */  li        r0, D_8018B524@sda21
/* 06B684 8006E684 48000008 */  b         lbl_8006E68C
lbl_8006E688:
/* 06B688 8006E688 38030640 */  addi      r0, r3, 0x640
lbl_8006E68C:
/* 06B68C 8006E68C 7C050378 */  mr        r5, r0
/* 06B690 8006E690 3861005C */  addi      r3, r1, 0x5c
/* 06B694 8006E694 38800001 */  li        r4, 0x1
/* 06B698 8006E698 4BF97941 */  bl        xlFileOpen
/* 06B69C 8006E69C 2C030000 */  cmpwi     r3, 0x0
/* 06B6A0 8006E6A0 41820078 */  beq       lbl_8006E718
/* 06B6A4 8006E6A4 809F0000 */  lwz       r4, 0x0(r31)
/* 06B6A8 8006E6A8 8061005C */  lwz       r3, 0x5c(r1)
/* 06B6AC 8006E6AC 8084002C */  lwz       r4, 0x2c(r4)
/* 06B6B0 8006E6B0 83C30010 */  lwz       r30, 0x10(r3)
/* 06B6B4 8006E6B4 80840004 */  lwz       r4, 0x4(r4)
/* 06B6B8 8006E6B8 38BE0000 */  addi      r5, r30, 0x0
/* 06B6BC 8006E6BC 3C040030 */  addis     r0, r4, 0x30
/* 06B6C0 8006E6C0 900D8A74 */  stw       r0, D_8018B9F4@sda21(r0)
/* 06B6C4 8006E6C4 808D8A74 */  lwz       r4, D_8018B9F4@sda21(r0)
/* 06B6C8 8006E6C8 4BF977D9 */  bl        xlFileGet
/* 06B6CC 8006E6CC 2C030000 */  cmpwi     r3, 0x0
/* 06B6D0 8006E6D0 4082000C */  bne       lbl_8006E6DC
/* 06B6D4 8006E6D4 38600000 */  li        r3, 0x0
/* 06B6D8 8006E6D8 48000328 */  b         lbl_8006EA00
lbl_8006E6DC:
/* 06B6DC 8006E6DC 3861005C */  addi      r3, r1, 0x5c
/* 06B6E0 8006E6E0 4BF978C5 */  bl        xlFileClose
/* 06B6E4 8006E6E4 2C030000 */  cmpwi     r3, 0x0
/* 06B6E8 8006E6E8 4082000C */  bne       lbl_8006E6F4
/* 06B6EC 8006E6EC 38600000 */  li        r3, 0x0
/* 06B6F0 8006E6F0 48000310 */  b         lbl_8006EA00
lbl_8006E6F4:
/* 06B6F4 8006E6F4 806D8A74 */  lwz       r3, D_8018B9F4@sda21(r0)
/* 06B6F8 8006E6F8 4BFA0705 */  bl        simulatorUnpackTexPalette
/* 06B6FC 8006E6FC 806D8A74 */  lwz       r3, D_8018B9F4@sda21(r0)
/* 06B700 8006E700 7FC4F378 */  mr        r4, r30
/* 06B704 8006E704 4802E5F1 */  bl        DCStoreRange
/* 06B708 8006E708 38600000 */  li        r3, 0x0
/* 06B70C 8006E70C 38000001 */  li        r0, 0x1
/* 06B710 8006E710 906D8A70 */  stw       r3, D_8018B9F0@sda21(r0)
/* 06B714 8006E714 900D8910 */  stw       r0, gbDisplayedError@sda21(r0)
lbl_8006E718:
/* 06B718 8006E718 800D89E8 */  lwz       r0, gnFlagZelda@sda21(r0)
/* 06B71C 8006E71C 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 06B720 8006E720 41820070 */  beq       lbl_8006E790
/* 06B724 8006E724 3C608007 */  lis       r3, romCacheGame_ZELDA@ha
/* 06B728 8006E728 3BC3EA18 */  addi      r30, r3, romCacheGame_ZELDA@l
/* 06B72C 8006E72C 3C8000A6 */  lis       r4, 0xa6
/* 06B730 8006E730 387F0000 */  addi      r3, r31, 0x0
/* 06B734 8006E734 391E0000 */  addi      r8, r30, 0x0
/* 06B738 8006E738 38A4251F */  addi      r5, r4, 0x251f
/* 06B73C 8006E73C 38C10060 */  addi      r6, r1, 0x60
/* 06B740 8006E740 38800000 */  li        r4, 0x0
/* 06B744 8006E744 38E00001 */  li        r7, 0x1
/* 06B748 8006E748 48000551 */  bl        romLoadRange
/* 06B74C 8006E74C 2C030000 */  cmpwi     r3, 0x0
/* 06B750 8006E750 4082000C */  bne       lbl_8006E75C
/* 06B754 8006E754 38600000 */  li        r3, 0x0
/* 06B758 8006E758 480002A8 */  b         lbl_8006EA00
lbl_8006E75C:
/* 06B75C 8006E75C 3C8000B0 */  lis       r4, 0xb0
/* 06B760 8006E760 3CA00168 */  lis       r5, 0x168
/* 06B764 8006E764 387F0000 */  addi      r3, r31, 0x0
/* 06B768 8006E768 391E0000 */  addi      r8, r30, 0x0
/* 06B76C 8006E76C 3884DAA0 */  subi      r4, r4, 0x2560
/* 06B770 8006E770 38A5515F */  addi      r5, r5, 0x515f
/* 06B774 8006E774 38C10060 */  addi      r6, r1, 0x60
/* 06B778 8006E778 38E00001 */  li        r7, 0x1
/* 06B77C 8006E77C 4800051D */  bl        romLoadRange
/* 06B780 8006E780 2C030000 */  cmpwi     r3, 0x0
/* 06B784 8006E784 40820270 */  bne       lbl_8006E9F4
/* 06B788 8006E788 38600000 */  li        r3, 0x0
/* 06B78C 8006E78C 48000274 */  b         lbl_8006EA00
lbl_8006E790:
/* 06B790 8006E790 3C608007 */  lis       r3, romCacheGame_ZELDA@ha
/* 06B794 8006E794 3BC3EA18 */  addi      r30, r3, romCacheGame_ZELDA@l
/* 06B798 8006E798 3C8000A6 */  lis       r4, 0xa6
/* 06B79C 8006E79C 387F0000 */  addi      r3, r31, 0x0
/* 06B7A0 8006E7A0 391E0000 */  addi      r8, r30, 0x0
/* 06B7A4 8006E7A4 38A4251F */  addi      r5, r4, 0x251f
/* 06B7A8 8006E7A8 38C10060 */  addi      r6, r1, 0x60
/* 06B7AC 8006E7AC 38800000 */  li        r4, 0x0
/* 06B7B0 8006E7B0 38E00001 */  li        r7, 0x1
/* 06B7B4 8006E7B4 480004E5 */  bl        romLoadRange
/* 06B7B8 8006E7B8 2C030000 */  cmpwi     r3, 0x0
/* 06B7BC 8006E7BC 4082000C */  bne       lbl_8006E7C8
/* 06B7C0 8006E7C0 38600000 */  li        r3, 0x0
/* 06B7C4 8006E7C4 4800023C */  b         lbl_8006EA00
lbl_8006E7C8:
/* 06B7C8 8006E7C8 3C8000B0 */  lis       r4, 0xb0
/* 06B7CC 8006E7CC 3CA00168 */  lis       r5, 0x168
/* 06B7D0 8006E7D0 387F0000 */  addi      r3, r31, 0x0
/* 06B7D4 8006E7D4 391E0000 */  addi      r8, r30, 0x0
/* 06B7D8 8006E7D8 3884DB00 */  subi      r4, r4, 0x2500
/* 06B7DC 8006E7DC 38A54BCF */  addi      r5, r5, 0x4bcf
/* 06B7E0 8006E7E0 38C10060 */  addi      r6, r1, 0x60
/* 06B7E4 8006E7E4 38E00001 */  li        r7, 0x1
/* 06B7E8 8006E7E8 480004B1 */  bl        romLoadRange
/* 06B7EC 8006E7EC 2C030000 */  cmpwi     r3, 0x0
/* 06B7F0 8006E7F0 40820204 */  bne       lbl_8006E9F4
/* 06B7F4 8006E7F4 38600000 */  li        r3, 0x0
/* 06B7F8 8006E7F8 48000208 */  b         lbl_8006EA00
lbl_8006E7FC:
/* 06B7FC 8006E7FC 3C7F0001 */  addis     r3, r31, 0x1
/* 06B800 8006E800 88030EAB */  lbz       r0, 0xeab(r3)
/* 06B804 8006E804 38800000 */  li        r4, 0x0
/* 06B808 8006E808 38AD85AC */  li        r5, D_8018B52C@sda21
/* 06B80C 8006E80C 98010044 */  stb       r0, 0x44(r1)
/* 06B810 8006E810 38C10044 */  addi      r6, r1, 0x44
/* 06B814 8006E814 88030EAC */  lbz       r0, 0xeac(r3)
/* 06B818 8006E818 98010045 */  stb       r0, 0x45(r1)
/* 06B81C 8006E81C 88030EAD */  lbz       r0, 0xead(r3)
/* 06B820 8006E820 98010046 */  stb       r0, 0x46(r1)
/* 06B824 8006E824 88030EAE */  lbz       r0, 0xeae(r3)
/* 06B828 8006E828 98010047 */  stb       r0, 0x47(r1)
/* 06B82C 8006E82C 98810048 */  stb       r4, 0x48(r1)
/* 06B830 8006E830 88610044 */  lbz       r3, 0x44(r1)
/* 06B834 8006E834 880D85AC */  lbz       r0, D_8018B52C@sda21(r0)
/* 06B838 8006E838 7C630774 */  extsb     r3, r3
/* 06B83C 8006E83C 7C000774 */  extsb     r0, r0
/* 06B840 8006E840 7C030000 */  cmpw      r3, r0
/* 06B844 8006E844 41820008 */  beq       lbl_8006E84C
/* 06B848 8006E848 4800005C */  b         lbl_8006E8A4
lbl_8006E84C:
/* 06B84C 8006E84C 8C050001 */  lbzu      r0, 0x1(r5)
/* 06B850 8006E850 8C660001 */  lbzu      r3, 0x1(r6)
/* 06B854 8006E854 7C000774 */  extsb     r0, r0
/* 06B858 8006E858 7C630774 */  extsb     r3, r3
/* 06B85C 8006E85C 7C030000 */  cmpw      r3, r0
/* 06B860 8006E860 41820008 */  beq       lbl_8006E868
/* 06B864 8006E864 48000040 */  b         lbl_8006E8A4
lbl_8006E868:
/* 06B868 8006E868 8C050001 */  lbzu      r0, 0x1(r5)
/* 06B86C 8006E86C 8C660001 */  lbzu      r3, 0x1(r6)
/* 06B870 8006E870 7C000774 */  extsb     r0, r0
/* 06B874 8006E874 7C630774 */  extsb     r3, r3
/* 06B878 8006E878 7C030000 */  cmpw      r3, r0
/* 06B87C 8006E87C 41820008 */  beq       lbl_8006E884
/* 06B880 8006E880 48000024 */  b         lbl_8006E8A4
lbl_8006E884:
/* 06B884 8006E884 88050001 */  lbz       r0, 0x1(r5)
/* 06B888 8006E888 88660001 */  lbz       r3, 0x1(r6)
/* 06B88C 8006E88C 7C000774 */  extsb     r0, r0
/* 06B890 8006E890 7C630774 */  extsb     r3, r3
/* 06B894 8006E894 7C030000 */  cmpw      r3, r0
/* 06B898 8006E898 41820008 */  beq       lbl_8006E8A0
/* 06B89C 8006E89C 48000008 */  b         lbl_8006E8A4
lbl_8006E8A0:
/* 06B8A0 8006E8A0 38800001 */  li        r4, 0x1
lbl_8006E8A4:
/* 06B8A4 8006E8A4 2C040000 */  cmpwi     r4, 0x0
/* 06B8A8 8006E8A8 408200B4 */  bne       lbl_8006E95C
/* 06B8AC 8006E8AC 3C7F0001 */  addis     r3, r31, 0x1
/* 06B8B0 8006E8B0 88030EAB */  lbz       r0, 0xeab(r3)
/* 06B8B4 8006E8B4 38800000 */  li        r4, 0x0
/* 06B8B8 8006E8B8 38AD85B4 */  li        r5, D_8018B534@sda21
/* 06B8BC 8006E8BC 9801003C */  stb       r0, 0x3c(r1)
/* 06B8C0 8006E8C0 38C1003C */  addi      r6, r1, 0x3c
/* 06B8C4 8006E8C4 88030EAC */  lbz       r0, 0xeac(r3)
/* 06B8C8 8006E8C8 9801003D */  stb       r0, 0x3d(r1)
/* 06B8CC 8006E8CC 88030EAD */  lbz       r0, 0xead(r3)
/* 06B8D0 8006E8D0 9801003E */  stb       r0, 0x3e(r1)
/* 06B8D4 8006E8D4 88030EAE */  lbz       r0, 0xeae(r3)
/* 06B8D8 8006E8D8 9801003F */  stb       r0, 0x3f(r1)
/* 06B8DC 8006E8DC 98810040 */  stb       r4, 0x40(r1)
/* 06B8E0 8006E8E0 8861003C */  lbz       r3, 0x3c(r1)
/* 06B8E4 8006E8E4 880D85B4 */  lbz       r0, D_8018B534@sda21(r0)
/* 06B8E8 8006E8E8 7C630774 */  extsb     r3, r3
/* 06B8EC 8006E8EC 7C000774 */  extsb     r0, r0
/* 06B8F0 8006E8F0 7C030000 */  cmpw      r3, r0
/* 06B8F4 8006E8F4 41820008 */  beq       lbl_8006E8FC
/* 06B8F8 8006E8F8 4800005C */  b         lbl_8006E954
lbl_8006E8FC:
/* 06B8FC 8006E8FC 8C050001 */  lbzu      r0, 0x1(r5)
/* 06B900 8006E900 8C660001 */  lbzu      r3, 0x1(r6)
/* 06B904 8006E904 7C000774 */  extsb     r0, r0
/* 06B908 8006E908 7C630774 */  extsb     r3, r3
/* 06B90C 8006E90C 7C030000 */  cmpw      r3, r0
/* 06B910 8006E910 41820008 */  beq       lbl_8006E918
/* 06B914 8006E914 48000040 */  b         lbl_8006E954
lbl_8006E918:
/* 06B918 8006E918 8C050001 */  lbzu      r0, 0x1(r5)
/* 06B91C 8006E91C 8C660001 */  lbzu      r3, 0x1(r6)
/* 06B920 8006E920 7C000774 */  extsb     r0, r0
/* 06B924 8006E924 7C630774 */  extsb     r3, r3
/* 06B928 8006E928 7C030000 */  cmpw      r3, r0
/* 06B92C 8006E92C 41820008 */  beq       lbl_8006E934
/* 06B930 8006E930 48000024 */  b         lbl_8006E954
lbl_8006E934:
/* 06B934 8006E934 88050001 */  lbz       r0, 0x1(r5)
/* 06B938 8006E938 88660001 */  lbz       r3, 0x1(r6)
/* 06B93C 8006E93C 7C000774 */  extsb     r0, r0
/* 06B940 8006E940 7C630774 */  extsb     r3, r3
/* 06B944 8006E944 7C030000 */  cmpw      r3, r0
/* 06B948 8006E948 41820008 */  beq       lbl_8006E950
/* 06B94C 8006E94C 48000008 */  b         lbl_8006E954
lbl_8006E950:
/* 06B950 8006E950 38800001 */  li        r4, 0x1
lbl_8006E954:
/* 06B954 8006E954 2C040000 */  cmpwi     r4, 0x0
/* 06B958 8006E958 4182009C */  beq       lbl_8006E9F4
lbl_8006E95C:
/* 06B95C 8006E95C 3C8000F0 */  lis       r4, 0xf0
/* 06B960 8006E960 387F0000 */  addi      r3, r31, 0x0
/* 06B964 8006E964 38A4AB5F */  subi      r5, r4, 0x54a1
/* 06B968 8006E968 38C10060 */  addi      r6, r1, 0x60
/* 06B96C 8006E96C 38800000 */  li        r4, 0x0
/* 06B970 8006E970 38E00001 */  li        r7, 0x1
/* 06B974 8006E974 39000000 */  li        r8, 0x0
/* 06B978 8006E978 48000321 */  bl        romLoadRange
/* 06B97C 8006E97C 2C030000 */  cmpwi     r3, 0x0
/* 06B980 8006E980 4082000C */  bne       lbl_8006E98C
/* 06B984 8006E984 38600000 */  li        r3, 0x0
/* 06B988 8006E988 48000078 */  b         lbl_8006EA00
lbl_8006E98C:
/* 06B98C 8006E98C 3C800168 */  lis       r4, 0x168
/* 06B990 8006E990 3CA0016B */  lis       r5, 0x16b
/* 06B994 8006E994 387F0000 */  addi      r3, r31, 0x0
/* 06B998 8006E998 3884CE40 */  subi      r4, r4, 0x31c0
/* 06B99C 8006E99C 38A54E8F */  addi      r5, r5, 0x4e8f
/* 06B9A0 8006E9A0 38C10060 */  addi      r6, r1, 0x60
/* 06B9A4 8006E9A4 38E00001 */  li        r7, 0x1
/* 06B9A8 8006E9A8 39000000 */  li        r8, 0x0
/* 06B9AC 8006E9AC 480002ED */  bl        romLoadRange
/* 06B9B0 8006E9B0 2C030000 */  cmpwi     r3, 0x0
/* 06B9B4 8006E9B4 4082000C */  bne       lbl_8006E9C0
/* 06B9B8 8006E9B8 38600000 */  li        r3, 0x0
/* 06B9BC 8006E9BC 48000044 */  b         lbl_8006EA00
lbl_8006E9C0:
/* 06B9C0 8006E9C0 80BF0214 */  lwz       r5, 0x214(r31)
/* 06B9C4 8006E9C4 3C8001F8 */  lis       r4, 0x1f8
/* 06B9C8 8006E9C8 387F0000 */  addi      r3, r31, 0x0
/* 06B9CC 8006E9CC 38842960 */  addi      r4, r4, 0x2960
/* 06B9D0 8006E9D0 38A5FFFF */  subi      r5, r5, 0x1
/* 06B9D4 8006E9D4 38C10060 */  addi      r6, r1, 0x60
/* 06B9D8 8006E9D8 38E00001 */  li        r7, 0x1
/* 06B9DC 8006E9DC 39000000 */  li        r8, 0x0
/* 06B9E0 8006E9E0 480002B9 */  bl        romLoadRange
/* 06B9E4 8006E9E4 2C030000 */  cmpwi     r3, 0x0
/* 06B9E8 8006E9E8 4082000C */  bne       lbl_8006E9F4
/* 06B9EC 8006E9EC 38600000 */  li        r3, 0x0
/* 06B9F0 8006E9F0 48000010 */  b         lbl_8006EA00
lbl_8006E9F4:
/* 06B9F4 8006E9F4 38000000 */  li        r0, 0x0
/* 06B9F8 8006E9F8 900D88F8 */  stw       r0, gDVDResetToggle@sda21(r0)
/* 06B9FC 8006E9FC 38600001 */  li        r3, 0x1
lbl_8006EA00:
/* 06BA00 8006EA00 80010074 */  lwz       r0, 0x74(r1)
/* 06BA04 8006EA04 83E1006C */  lwz       r31, 0x6c(r1)
/* 06BA08 8006EA08 83C10068 */  lwz       r30, 0x68(r1)
/* 06BA0C 8006EA0C 7C0803A6 */  mtlr      r0
/* 06BA10 8006EA10 38210070 */  addi      r1, r1, 0x70
/* 06BA14 8006EA14 4E800020 */  blr

glabel romCacheGame_ZELDA
/* 06BA18 8006EA18 7C0802A6 */  mflr      r0
/* 06BA1C 8006EA1C 90010004 */  stw       r0, 0x4(r1)
/* 06BA20 8006EA20 9421FF78 */  stwu      r1, -0x88(r1)
/* 06BA24 8006EA24 DBE10080 */  stfd      f31, 0x80(r1)
/* 06BA28 8006EA28 FFE00890 */  fmr       f31, f1
/* 06BA2C 8006EA2C 93E1007C */  stw       r31, 0x7c(r1)
/* 06BA30 8006EA30 800D8910 */  lwz       r0, gbDisplayedError@sda21(r0)
/* 06BA34 8006EA34 2C000000 */  cmpwi     r0, 0x0
/* 06BA38 8006EA38 41820178 */  beq       lbl_8006EBB0
/* 06BA3C 8006EA3C 3BE00000 */  li        r31, 0x0
/* 06BA40 8006EA40 806D8A74 */  lwz       r3, D_8018B9F4@sda21(r0)
/* 06BA44 8006EA44 93ED8910 */  stw       r31, gbDisplayedError@sda21(r0)
/* 06BA48 8006EA48 3881000C */  addi      r4, r1, 0xc
/* 06BA4C 8006EA4C 38A00000 */  li        r5, 0x0
/* 06BA50 8006EA50 480590F5 */  bl        TEXGetGXTexObjFromPalette
/* 06BA54 8006EA54 4BF96AAD */  bl        xlCoreBeforeRender
/* 06BA58 8006EA58 C02282E8 */  lfs       f1, D_8018C228@sda21(r0)
/* 06BA5C 8006EA5C C06282EC */  lfs       f3, D_8018C22C@sda21(r0)
/* 06BA60 8006EA60 FC400890 */  fmr       f2, f1
/* 06BA64 8006EA64 C08282F0 */  lfs       f4, D_8018C230@sda21(r0)
/* 06BA68 8006EA68 FCA00890 */  fmr       f5, f1
/* 06BA6C 8006EA6C C0C282D0 */  lfs       f6, D_8018C210@sda21(r0)
/* 06BA70 8006EA70 4803ED69 */  bl        GXSetViewport
/* 06BA74 8006EA74 C02282E8 */  lfs       f1, D_8018C228@sda21(r0)
/* 06BA78 8006EA78 3861002C */  addi      r3, r1, 0x2c
/* 06BA7C 8006EA7C C04282F4 */  lfs       f2, D_8018C234@sda21(r0)
/* 06BA80 8006EA80 FC600890 */  fmr       f3, f1
/* 06BA84 8006EA84 C08282F8 */  lfs       f4, D_8018C238@sda21(r0)
/* 06BA88 8006EA88 FCA00890 */  fmr       f5, f1
/* 06BA8C 8006EA8C C0C282D0 */  lfs       f6, D_8018C210@sda21(r0)
/* 06BA90 8006EA90 48038139 */  bl        C_MTXOrtho
/* 06BA94 8006EA94 3861002C */  addi      r3, r1, 0x2c
/* 06BA98 8006EA98 38800001 */  li        r4, 0x1
/* 06BA9C 8006EA9C 4803E939 */  bl        GXSetProjection
/* 06BAA0 8006EAA0 38600000 */  li        r3, 0x0
/* 06BAA4 8006EAA4 4803B72D */  bl        GXSetCullMode
/* 06BAA8 8006EAA8 38600000 */  li        r3, 0x0
/* 06BAAC 8006EAAC 38800003 */  li        r4, 0x3
/* 06BAB0 8006EAB0 38A00001 */  li        r5, 0x1
/* 06BAB4 8006EAB4 4803E6A5 */  bl        GXSetZMode
/* 06BAB8 8006EAB8 38600000 */  li        r3, 0x0
/* 06BABC 8006EABC 4803C6C5 */  bl        GXSetNumChans
/* 06BAC0 8006EAC0 38600001 */  li        r3, 0x1
/* 06BAC4 8006EAC4 4803ACF9 */  bl        GXSetNumTexGens
/* 06BAC8 8006EAC8 38600001 */  li        r3, 0x1
/* 06BACC 8006EACC 4803E139 */  bl        GXSetNumTevStages
/* 06BAD0 8006EAD0 38600000 */  li        r3, 0x0
/* 06BAD4 8006EAD4 38800003 */  li        r4, 0x3
/* 06BAD8 8006EAD8 4803D979 */  bl        GXSetTevOp
/* 06BADC 8006EADC 38600000 */  li        r3, 0x0
/* 06BAE0 8006EAE0 38800000 */  li        r4, 0x0
/* 06BAE4 8006EAE4 38A00000 */  li        r5, 0x0
/* 06BAE8 8006EAE8 38C000FF */  li        r6, 0xff
/* 06BAEC 8006EAEC 4803DF41 */  bl        GXSetTevOrder
/* 06BAF0 8006EAF0 4803A1BD */  bl        GXClearVtxDesc
/* 06BAF4 8006EAF4 38600009 */  li        r3, 0x9
/* 06BAF8 8006EAF8 38800001 */  li        r4, 0x1
/* 06BAFC 8006EAFC 48039CE9 */  bl        GXSetVtxDesc
/* 06BB00 8006EB00 3860000D */  li        r3, 0xd
/* 06BB04 8006EB04 38800001 */  li        r4, 0x1
/* 06BB08 8006EB08 48039CDD */  bl        GXSetVtxDesc
/* 06BB0C 8006EB0C 38600000 */  li        r3, 0x0
/* 06BB10 8006EB10 38800009 */  li        r4, 0x9
/* 06BB14 8006EB14 38A00000 */  li        r5, 0x0
/* 06BB18 8006EB18 38C00004 */  li        r6, 0x4
/* 06BB1C 8006EB1C 38E00000 */  li        r7, 0x0
/* 06BB20 8006EB20 4803A1C5 */  bl        GXSetVtxAttrFmt
/* 06BB24 8006EB24 38600000 */  li        r3, 0x0
/* 06BB28 8006EB28 3880000D */  li        r4, 0xd
/* 06BB2C 8006EB2C 38A00001 */  li        r5, 0x1
/* 06BB30 8006EB30 38C00000 */  li        r6, 0x0
/* 06BB34 8006EB34 38E00000 */  li        r7, 0x0
/* 06BB38 8006EB38 4803A1AD */  bl        GXSetVtxAttrFmt
/* 06BB3C 8006EB3C 3861000C */  addi      r3, r1, 0xc
/* 06BB40 8006EB40 38800000 */  li        r4, 0x0
/* 06BB44 8006EB44 4803CE11 */  bl        GXLoadTexObj
/* 06BB48 8006EB48 38600080 */  li        r3, 0x80
/* 06BB4C 8006EB4C 38800000 */  li        r4, 0x0
/* 06BB50 8006EB50 38A00004 */  li        r5, 0x4
/* 06BB54 8006EB54 4803B419 */  bl        GXBegin
/* 06BB58 8006EB58 C04282E8 */  lfs       f2, D_8018C228@sda21(r0)
/* 06BB5C 8006EB5C 3C60CC01 */  lis       r3, 0xcc01
/* 06BB60 8006EB60 C02282EC */  lfs       f1, D_8018C22C@sda21(r0)
/* 06BB64 8006EB64 38000001 */  li        r0, 0x1
/* 06BB68 8006EB68 D0438000 */  stfs      f2, -0x8000(r3)
/* 06BB6C 8006EB6C C00282F0 */  lfs       f0, D_8018C230@sda21(r0)
/* 06BB70 8006EB70 D0438000 */  stfs      f2, -0x8000(r3)
/* 06BB74 8006EB74 9BE38000 */  stb       r31, -0x8000(r3)
/* 06BB78 8006EB78 9BE38000 */  stb       r31, -0x8000(r3)
/* 06BB7C 8006EB7C D0238000 */  stfs      f1, -0x8000(r3)
/* 06BB80 8006EB80 D0438000 */  stfs      f2, -0x8000(r3)
/* 06BB84 8006EB84 98038000 */  stb       r0, -0x8000(r3)
/* 06BB88 8006EB88 9BE38000 */  stb       r31, -0x8000(r3)
/* 06BB8C 8006EB8C D0238000 */  stfs      f1, -0x8000(r3)
/* 06BB90 8006EB90 D0038000 */  stfs      f0, -0x8000(r3)
/* 06BB94 8006EB94 98038000 */  stb       r0, -0x8000(r3)
/* 06BB98 8006EB98 98038000 */  stb       r0, -0x8000(r3)
/* 06BB9C 8006EB9C D0438000 */  stfs      f2, -0x8000(r3)
/* 06BBA0 8006EBA0 D0038000 */  stfs      f0, -0x8000(r3)
/* 06BBA4 8006EBA4 9BE38000 */  stb       r31, -0x8000(r3)
/* 06BBA8 8006EBA8 98038000 */  stb       r0, -0x8000(r3)
/* 06BBAC 8006EBAC 48046461 */  bl        DEMODoneRender
lbl_8006EBB0:
/* 06BBB0 8006EBB0 800D8A78 */  lwz       r0, D_8018B9F8@sda21(r0)
/* 06BBB4 8006EBB4 5400077F */  clrlwi.   r0, r0, 29
/* 06BBB8 8006EBB8 408200A4 */  bne       lbl_8006EC5C
/* 06BBBC 8006EBBC 48036AED */  bl        VIWaitForRetrace
/* 06BBC0 8006EBC0 800D8A70 */  lwz       r0, D_8018B9F0@sda21(r0)
/* 06BBC4 8006EBC4 2C000000 */  cmpwi     r0, 0x0
/* 06BBC8 8006EBC8 41820010 */  beq       lbl_8006EBD8
/* 06BBCC 8006EBCC C00282FC */  lfs       f0, D_8018C23C@sda21(r0)
/* 06BBD0 8006EBD0 EC3F003A */  fmadds    f1, f31, f0, f0
/* 06BBD4 8006EBD4 4800000C */  b         lbl_8006EBE0
lbl_8006EBD8:
/* 06BBD8 8006EBD8 C00282FC */  lfs       f0, D_8018C23C@sda21(r0)
/* 06BBDC 8006EBDC EC3F0032 */  fmuls     f1, f31, f0
lbl_8006EBE0:
/* 06BBE0 8006EBE0 C0028300 */  lfs       f0, D_8018C240@sda21(r0)
/* 06BBE4 8006EBE4 3C604083 */  lis       r3, 0x4083
/* 06BBE8 8006EBE8 80AD8914 */  lwz       r5, gpSystem@sda21(r0)
/* 06BBEC 8006EBEC 3883407D */  addi      r4, r3, 0x407d
/* 06BBF0 8006EBF0 EC000072 */  fmuls     f0, f0, f1
/* 06BBF4 8006EBF4 80650000 */  lwz       r3, 0x0(r5)
/* 06BBF8 8006EBF8 38A00078 */  li        r5, 0x78
/* 06BBFC 8006EBFC 38C001AE */  li        r6, 0x1ae
/* 06BC00 8006EC00 FC00001E */  fctiwz    f0, f0
/* 06BC04 8006EC04 38E00190 */  li        r7, 0x190
/* 06BC08 8006EC08 39000008 */  li        r8, 0x8
/* 06BC0C 8006EC0C D8010070 */  stfd      f0, 0x70(r1)
/* 06BC10 8006EC10 83E10074 */  lwz       r31, 0x74(r1)
/* 06BC14 8006EC14 4BFB68E5 */  bl        _frameDrawRectangle
/* 06BC18 8006EC18 2C030000 */  cmpwi     r3, 0x0
/* 06BC1C 8006EC1C 4082000C */  bne       lbl_8006EC28
/* 06BC20 8006EC20 38600000 */  li        r3, 0x0
/* 06BC24 8006EC24 4800005C */  b         lbl_8006EC80
lbl_8006EC28:
/* 06BC28 8006EC28 806D8914 */  lwz       r3, gpSystem@sda21(r0)
/* 06BC2C 8006EC2C 3C808F9C */  lis       r4, 0x8f9c
/* 06BC30 8006EC30 38FF0000 */  addi      r7, r31, 0x0
/* 06BC34 8006EC34 80630000 */  lwz       r3, 0x0(r3)
/* 06BC38 8006EC38 38848F7C */  subi      r4, r4, 0x7084
/* 06BC3C 8006EC3C 38A00078 */  li        r5, 0x78
/* 06BC40 8006EC40 38C001AE */  li        r6, 0x1ae
/* 06BC44 8006EC44 39000008 */  li        r8, 0x8
/* 06BC48 8006EC48 4BFB68B1 */  bl        _frameDrawRectangle
/* 06BC4C 8006EC4C 2C030000 */  cmpwi     r3, 0x0
/* 06BC50 8006EC50 4082000C */  bne       lbl_8006EC5C
/* 06BC54 8006EC54 38600000 */  li        r3, 0x0
/* 06BC58 8006EC58 48000028 */  b         lbl_8006EC80
lbl_8006EC5C:
/* 06BC5C 8006EC5C C00282D0 */  lfs       f0, D_8018C210@sda21(r0)
/* 06BC60 8006EC60 806D8A78 */  lwz       r3, D_8018B9F8@sda21(r0)
/* 06BC64 8006EC64 FC00F800 */  fcmpu     cr0, f0, f31
/* 06BC68 8006EC68 38030001 */  addi      r0, r3, 0x1
/* 06BC6C 8006EC6C 900D8A78 */  stw       r0, D_8018B9F8@sda21(r0)
/* 06BC70 8006EC70 4082000C */  bne       lbl_8006EC7C
/* 06BC74 8006EC74 38000001 */  li        r0, 0x1
/* 06BC78 8006EC78 900D8A70 */  stw       r0, D_8018B9F0@sda21(r0)
lbl_8006EC7C:
/* 06BC7C 8006EC7C 38600001 */  li        r3, 0x1
lbl_8006EC80:
/* 06BC80 8006EC80 8001008C */  lwz       r0, 0x8c(r1)
/* 06BC84 8006EC84 CBE10080 */  lfd       f31, 0x80(r1)
/* 06BC88 8006EC88 83E1007C */  lwz       r31, 0x7c(r1)
/* 06BC8C 8006EC8C 7C0803A6 */  mtlr      r0
/* 06BC90 8006EC90 38210088 */  addi      r1, r1, 0x88
/* 06BC94 8006EC94 4E800020 */  blr

glabel romLoadRange
/* 06BC98 8006EC98 7C0802A6 */  mflr      r0
/* 06BC9C 8006EC9C 90010004 */  stw       r0, 0x4(r1)
/* 06BCA0 8006ECA0 7C042850 */  subf      r0, r4, r5
/* 06BCA4 8006ECA4 9421FF88 */  stwu      r1, -0x78(r1)
/* 06BCA8 8006ECA8 DBE10070 */  stfd      f31, 0x70(r1)
/* 06BCAC 8006ECAC DBC10068 */  stfd      f30, 0x68(r1)
/* 06BCB0 8006ECB0 BEA1003C */  stmw      r21, 0x3c(r1)
/* 06BCB4 8006ECB4 7CBD6E70 */  srawi     r29, r5, 13
/* 06BCB8 8006ECB8 7FBD0194 */  addze     r29, r29
/* 06BCBC 8006ECBC 7C9F6E70 */  srawi     r31, r4, 13
/* 06BCC0 8006ECC0 7FFF0194 */  addze     r31, r31
/* 06BCC4 8006ECC4 7C046E70 */  srawi     r4, r0, 13
/* 06BCC8 8006ECC8 3B430000 */  addi      r26, r3, 0x0
/* 06BCCC 8006ECCC 57E02036 */  slwi      r0, r31, 4
/* 06BCD0 8006ECD0 7C840194 */  addze     r4, r4
/* 06BCD4 8006ECD4 3BDF0000 */  addi      r30, r31, 0x0
/* 06BCD8 8006ECD8 3B660000 */  addi      r27, r6, 0x0
/* 06BCDC 8006ECDC 3B880000 */  addi      r28, r8, 0x0
/* 06BCE0 8006ECE0 7EBA0214 */  add       r21, r26, r0
/* 06BCE4 8006ECE4 6C978000 */  xoris     r23, r4, 0x8000
/* 06BCE8 8006ECE8 CBC282E0 */  lfd       f30, D_8018C220@sda21(r0)
/* 06BCEC 8006ECEC 7CF80774 */  extsb     r24, r7
/* 06BCF0 8006ECF0 CBE282D8 */  lfd       f31, D_8018C218@sda21(r0)
/* 06BCF4 8006ECF4 3F3A0001 */  addis     r25, r26, 0x1
/* 06BCF8 8006ECF8 3EC04330 */  lis       r22, 0x4330
/* 06BCFC 8006ECFC 480000C0 */  b         lbl_8006EDBC
lbl_8006ED00:
/* 06BD00 8006ED00 281C0000 */  cmplwi    r28, 0x0
/* 06BD04 8006ED04 41820038 */  beq       lbl_8006ED3C
/* 06BD08 8006ED08 7C1FF050 */  subf      r0, r31, r30
/* 06BD0C 8006ED0C 92E1002C */  stw       r23, 0x2c(r1)
/* 06BD10 8006ED10 7F8CE378 */  mr        r12, r28
/* 06BD14 8006ED14 90010034 */  stw       r0, 0x34(r1)
/* 06BD18 8006ED18 7D8803A6 */  mtlr      r12
/* 06BD1C 8006ED1C 92C10030 */  stw       r22, 0x30(r1)
/* 06BD20 8006ED20 92C10028 */  stw       r22, 0x28(r1)
/* 06BD24 8006ED24 C8210030 */  lfd       f1, 0x30(r1)
/* 06BD28 8006ED28 C8010028 */  lfd       f0, 0x28(r1)
/* 06BD2C 8006ED2C EC21F028 */  fsubs     f1, f1, f30
/* 06BD30 8006ED30 EC00F828 */  fsubs     f0, f0, f31
/* 06BD34 8006ED34 EC210024 */  fdivs     f1, f1, f0
/* 06BD38 8006ED38 4E800021 */  blrl
lbl_8006ED3C:
/* 06BD3C 8006ED3C 80150220 */  lwz       r0, 0x220(r21)
/* 06BD40 8006ED40 28000000 */  cmplwi    r0, 0x0
/* 06BD44 8006ED44 40820048 */  bne       lbl_8006ED8C
/* 06BD48 8006ED48 387A0000 */  addi      r3, r26, 0x0
/* 06BD4C 8006ED4C 38810020 */  addi      r4, r1, 0x20
/* 06BD50 8006ED50 38A00000 */  li        r5, 0x0
/* 06BD54 8006ED54 480004F5 */  bl        romMakeFreeCache
/* 06BD58 8006ED58 2C030000 */  cmpwi     r3, 0x0
/* 06BD5C 8006ED5C 4082000C */  bne       lbl_8006ED68
/* 06BD60 8006ED60 38600000 */  li        r3, 0x0
/* 06BD64 8006ED64 48000064 */  b         lbl_8006EDC8
lbl_8006ED68:
/* 06BD68 8006ED68 80A10020 */  lwz       r5, 0x20(r1)
/* 06BD6C 8006ED6C 387A0000 */  addi      r3, r26, 0x0
/* 06BD70 8006ED70 389E0000 */  addi      r4, r30, 0x0
/* 06BD74 8006ED74 38C00000 */  li        r6, 0x0
/* 06BD78 8006ED78 4800006D */  bl        romLoadBlock
/* 06BD7C 8006ED7C 2C030000 */  cmpwi     r3, 0x0
/* 06BD80 8006ED80 4082000C */  bne       lbl_8006ED8C
/* 06BD84 8006ED84 38600000 */  li        r3, 0x0
/* 06BD88 8006ED88 48000040 */  b         lbl_8006EDC8
lbl_8006ED8C:
/* 06BD8C 8006ED8C 9B150228 */  stb       r24, 0x228(r21)
/* 06BD90 8006ED90 281B0000 */  cmplwi    r27, 0x0
/* 06BD94 8006ED94 8079021C */  lwz       r3, 0x21c(r25)
/* 06BD98 8006ED98 38030001 */  addi      r0, r3, 0x1
/* 06BD9C 8006ED9C 9019021C */  stw       r0, 0x21c(r25)
/* 06BDA0 8006EDA0 90150224 */  stw       r0, 0x224(r21)
/* 06BDA4 8006EDA4 41820010 */  beq       lbl_8006EDB4
/* 06BDA8 8006EDA8 807B0000 */  lwz       r3, 0x0(r27)
/* 06BDAC 8006EDAC 38030001 */  addi      r0, r3, 0x1
/* 06BDB0 8006EDB0 901B0000 */  stw       r0, 0x0(r27)
lbl_8006EDB4:
/* 06BDB4 8006EDB4 3AB50010 */  addi      r21, r21, 0x10
/* 06BDB8 8006EDB8 3BDE0001 */  addi      r30, r30, 0x1
lbl_8006EDBC:
/* 06BDBC 8006EDBC 7C1EE840 */  cmplw     r30, r29
/* 06BDC0 8006EDC0 4081FF40 */  ble       lbl_8006ED00
/* 06BDC4 8006EDC4 38600001 */  li        r3, 0x1
lbl_8006EDC8:
/* 06BDC8 8006EDC8 BAA1003C */  lmw       r21, 0x3c(r1)
/* 06BDCC 8006EDCC 8001007C */  lwz       r0, 0x7c(r1)
/* 06BDD0 8006EDD0 CBE10070 */  lfd       f31, 0x70(r1)
/* 06BDD4 8006EDD4 CBC10068 */  lfd       f30, 0x68(r1)
/* 06BDD8 8006EDD8 7C0803A6 */  mtlr      r0
/* 06BDDC 8006EDDC 38210078 */  addi      r1, r1, 0x78
/* 06BDE0 8006EDE0 4E800020 */  blr

glabel romLoadBlock
/* 06BDE4 8006EDE4 7C0802A6 */  mflr      r0
/* 06BDE8 8006EDE8 54896824 */  slwi      r9, r4, 13
/* 06BDEC 8006EDEC 90010004 */  stw       r0, 0x4(r1)
/* 06BDF0 8006EDF0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 06BDF4 8006EDF4 93E1001C */  stw       r31, 0x1c(r1)
/* 06BDF8 8006EDF8 7C7F1B78 */  mr        r31, r3
/* 06BDFC 8006EDFC 80030214 */  lwz       r0, 0x214(r3)
/* 06BE00 8006EE00 7D490050 */  subf      r10, r9, r0
/* 06BE04 8006EE04 280A2000 */  cmplwi    r10, 0x2000
/* 06BE08 8006EE08 40810008 */  ble       lbl_8006EE10
/* 06BE0C 8006EE0C 39402000 */  li        r10, 0x2000
lbl_8006EE10:
/* 06BE10 8006EE10 3C7F0001 */  addis     r3, r31, 0x1
/* 06BE14 8006EE14 81030220 */  lwz       r8, 0x220(r3)
/* 06BE18 8006EE18 54A76824 */  slwi      r7, r5, 13
/* 06BE1C 8006EE1C 380A001F */  addi      r0, r10, 0x1f
/* 06BE20 8006EE20 91430E60 */  stw       r10, 0xe60(r3)
/* 06BE24 8006EE24 7D083A14 */  add       r8, r8, r7
/* 06BE28 8006EE28 28060000 */  cmplwi    r6, 0x0
/* 06BE2C 8006EE2C 90830E50 */  stw       r4, 0xe50(r3)
/* 06BE30 8006EE30 540A0034 */  clrrwi    r10, r0, 5
/* 06BE34 8006EE34 90A30E4C */  stw       r5, 0xe4c(r3)
/* 06BE38 8006EE38 91030E44 */  stw       r8, 0xe44(r3)
/* 06BE3C 8006EE3C 90C30E48 */  stw       r6, 0xe48(r3)
/* 06BE40 8006EE40 40820030 */  bne       lbl_8006EE70
/* 06BE44 8006EE44 80030EF4 */  lwz       r0, 0xef4(r3)
/* 06BE48 8006EE48 38880000 */  addi      r4, r8, 0x0
/* 06BE4C 8006EE4C 38AA0000 */  addi      r5, r10, 0x0
/* 06BE50 8006EE50 7CC90214 */  add       r6, r9, r0
/* 06BE54 8006EE54 38E00000 */  li        r7, 0x0
/* 06BE58 8006EE58 38630EB8 */  addi      r3, r3, 0xeb8
/* 06BE5C 8006EE5C 4BF9FC79 */  bl        simulatorDVDRead
/* 06BE60 8006EE60 2C030000 */  cmpwi     r3, 0x0
/* 06BE64 8006EE64 4082004C */  bne       lbl_8006EEB0
/* 06BE68 8006EE68 38600000 */  li        r3, 0x0
/* 06BE6C 8006EE6C 48000060 */  b         lbl_8006EECC
lbl_8006EE70:
/* 06BE70 8006EE70 91230E54 */  stw       r9, 0xe54(r3)
/* 06BE74 8006EE74 3C808007 */  lis       r4, __romLoadBlock_CompleteGCN@ha
/* 06BE78 8006EE78 38E4EEE0 */  addi      r7, r4, __romLoadBlock_CompleteGCN@l
/* 06BE7C 8006EE7C 91430E64 */  stw       r10, 0xe64(r3)
/* 06BE80 8006EE80 38880000 */  addi      r4, r8, 0x0
/* 06BE84 8006EE84 38AA0000 */  addi      r5, r10, 0x0
/* 06BE88 8006EE88 80030EF4 */  lwz       r0, 0xef4(r3)
/* 06BE8C 8006EE8C 38630EB8 */  addi      r3, r3, 0xeb8
/* 06BE90 8006EE90 7CC90214 */  add       r6, r9, r0
/* 06BE94 8006EE94 4BF9FC41 */  bl        simulatorDVDRead
/* 06BE98 8006EE98 2C030000 */  cmpwi     r3, 0x0
/* 06BE9C 8006EE9C 4082000C */  bne       lbl_8006EEA8
/* 06BEA0 8006EEA0 38600000 */  li        r3, 0x0
/* 06BEA4 8006EEA4 48000028 */  b         lbl_8006EECC
lbl_8006EEA8:
/* 06BEA8 8006EEA8 38600001 */  li        r3, 0x1
/* 06BEAC 8006EEAC 48000020 */  b         lbl_8006EECC
lbl_8006EEB0:
/* 06BEB0 8006EEB0 7FE3FB78 */  mr        r3, r31
/* 06BEB4 8006EEB4 48000049 */  bl        __romLoadBlock_Complete
/* 06BEB8 8006EEB8 2C030000 */  cmpwi     r3, 0x0
/* 06BEBC 8006EEBC 4082000C */  bne       lbl_8006EEC8
/* 06BEC0 8006EEC0 38600000 */  li        r3, 0x0
/* 06BEC4 8006EEC4 48000008 */  b         lbl_8006EECC
lbl_8006EEC8:
/* 06BEC8 8006EEC8 38600001 */  li        r3, 0x1
lbl_8006EECC:
/* 06BECC 8006EECC 80010024 */  lwz       r0, 0x24(r1)
/* 06BED0 8006EED0 83E1001C */  lwz       r31, 0x1c(r1)
/* 06BED4 8006EED4 38210020 */  addi      r1, r1, 0x20
/* 06BED8 8006EED8 7C0803A6 */  mtlr      r0
/* 06BEDC 8006EEDC 4E800020 */  blr

glabel __romLoadBlock_CompleteGCN
/* 06BEE0 8006EEE0 808D8914 */  lwz       r4, gpSystem@sda21(r0)
/* 06BEE4 8006EEE4 38000001 */  li        r0, 0x1
/* 06BEE8 8006EEE8 80840030 */  lwz       r4, 0x30(r4)
/* 06BEEC 8006EEEC 3C840001 */  addis     r4, r4, 0x1
/* 06BEF0 8006EEF0 90640E40 */  stw       r3, 0xe40(r4)
/* 06BEF4 8006EEF4 90040E3C */  stw       r0, 0xe3c(r4)
/* 06BEF8 8006EEF8 4E800020 */  blr

glabel __romLoadBlock_Complete
/* 06BEFC 8006EEFC 7C0802A6 */  mflr      r0
/* 06BF00 8006EF00 90010004 */  stw       r0, 0x4(r1)
/* 06BF04 8006EF04 9421FFF8 */  stwu      r1, -0x8(r1)
/* 06BF08 8006EF08 80030008 */  lwz       r0, 0x8(r3)
/* 06BF0C 8006EF0C 2C000000 */  cmpwi     r0, 0x0
/* 06BF10 8006EF10 4182005C */  beq       lbl_8006EF6C
/* 06BF14 8006EF14 3CE30001 */  addis     r7, r3, 0x1
/* 06BF18 8006EF18 3CA000FF */  lis       r5, 0xff
/* 06BF1C 8006EF1C 81070E44 */  lwz       r8, 0xe44(r7)
/* 06BF20 8006EF20 3C80FF01 */  lis       r4, 0xff01
/* 06BF24 8006EF24 38C500FF */  addi      r6, r5, 0xff
/* 06BF28 8006EF28 38A4FF00 */  subi      r5, r4, 0x100
/* 06BF2C 8006EF2C 39200000 */  li        r9, 0x0
/* 06BF30 8006EF30 48000028 */  b         lbl_8006EF58
lbl_8006EF34:
/* 06BF34 8006EF34 80080000 */  lwz       r0, 0x0(r8)
/* 06BF38 8006EF38 39290001 */  addi      r9, r9, 0x1
/* 06BF3C 8006EF3C 5404C23E */  srwi      r4, r0, 8
/* 06BF40 8006EF40 5400402E */  slwi      r0, r0, 8
/* 06BF44 8006EF44 7C843038 */  and       r4, r4, r6
/* 06BF48 8006EF48 7C002838 */  and       r0, r0, r5
/* 06BF4C 8006EF4C 7C800378 */  or        r0, r4, r0
/* 06BF50 8006EF50 90080000 */  stw       r0, 0x0(r8)
/* 06BF54 8006EF54 39080004 */  addi      r8, r8, 0x4
lbl_8006EF58:
/* 06BF58 8006EF58 80870E60 */  lwz       r4, 0xe60(r7)
/* 06BF5C 8006EF5C 38040003 */  addi      r0, r4, 0x3
/* 06BF60 8006EF60 5400F0BE */  srwi      r0, r0, 2
/* 06BF64 8006EF64 7C090040 */  cmplw     r9, r0
/* 06BF68 8006EF68 4180FFCC */  blt       lbl_8006EF34
lbl_8006EF6C:
/* 06BF6C 8006EF6C 3CE30001 */  addis     r7, r3, 0x1
/* 06BF70 8006EF70 80A70E50 */  lwz       r5, 0xe50(r7)
/* 06BF74 8006EF74 38000000 */  li        r0, 0x0
/* 06BF78 8006EF78 80C70E60 */  lwz       r6, 0xe60(r7)
/* 06BF7C 8006EF7C 38800001 */  li        r4, 0x1
/* 06BF80 8006EF80 54A52036 */  slwi      r5, r5, 4
/* 06BF84 8006EF84 7CA32A14 */  add       r5, r3, r5
/* 06BF88 8006EF88 90C50220 */  stw       r6, 0x220(r5)
/* 06BF8C 8006EF8C 80670E4C */  lwz       r3, 0xe4c(r7)
/* 06BF90 8006EF90 9065021C */  stw       r3, 0x21c(r5)
/* 06BF94 8006EF94 98050228 */  stb       r0, 0x228(r5)
/* 06BF98 8006EF98 80670E4C */  lwz       r3, 0xe4c(r7)
/* 06BF9C 8006EF9C 7C601E70 */  srawi     r0, r3, 3
/* 06BFA0 8006EFA0 7CA70214 */  add       r5, r7, r0
/* 06BFA4 8006EFA4 5460077E */  clrlwi    r0, r3, 29
/* 06BFA8 8006EFA8 88650224 */  lbz       r3, 0x224(r5)
/* 06BFAC 8006EFAC 7C800030 */  slw       r0, r4, r0
/* 06BFB0 8006EFB0 7C600378 */  or        r0, r3, r0
/* 06BFB4 8006EFB4 98050224 */  stb       r0, 0x224(r5)
/* 06BFB8 8006EFB8 81870E48 */  lwz       r12, 0xe48(r7)
/* 06BFBC 8006EFBC 280C0000 */  cmplwi    r12, 0x0
/* 06BFC0 8006EFC0 4182001C */  beq       lbl_8006EFDC
/* 06BFC4 8006EFC4 7D8803A6 */  mtlr      r12
/* 06BFC8 8006EFC8 4E800021 */  blrl
/* 06BFCC 8006EFCC 2C030000 */  cmpwi     r3, 0x0
/* 06BFD0 8006EFD0 4082000C */  bne       lbl_8006EFDC
/* 06BFD4 8006EFD4 38600000 */  li        r3, 0x0
/* 06BFD8 8006EFD8 48000008 */  b         lbl_8006EFE0
lbl_8006EFDC:
/* 06BFDC 8006EFDC 38600001 */  li        r3, 0x1
lbl_8006EFE0:
/* 06BFE0 8006EFE0 8001000C */  lwz       r0, 0xc(r1)
/* 06BFE4 8006EFE4 38210008 */  addi      r1, r1, 0x8
/* 06BFE8 8006EFE8 7C0803A6 */  mtlr      r0
/* 06BFEC 8006EFEC 4E800020 */  blr

glabel romSetBlockCache
/* 06BFF0 8006EFF0 7C0802A6 */  mflr      r0
/* 06BFF4 8006EFF4 54842036 */  slwi      r4, r4, 4
/* 06BFF8 8006EFF8 90010004 */  stw       r0, 0x4(r1)
/* 06BFFC 8006EFFC 2C050000 */  cmpwi     r5, 0x0
/* 06C000 8006F000 9421FFD0 */  stwu      r1, -0x30(r1)
/* 06C004 8006F004 93E1002C */  stw       r31, 0x2c(r1)
/* 06C008 8006F008 3BE4021C */  addi      r31, r4, 0x21c
/* 06C00C 8006F00C 93C10028 */  stw       r30, 0x28(r1)
/* 06C010 8006F010 3BC30000 */  addi      r30, r3, 0x0
/* 06C014 8006F014 7FFEFA14 */  add       r31, r30, r31
/* 06C018 8006F018 93A10024 */  stw       r29, 0x24(r1)
/* 06C01C 8006F01C 93810020 */  stw       r28, 0x20(r1)
/* 06C020 8006F020 40820010 */  bne       lbl_8006F030
/* 06C024 8006F024 801F0000 */  lwz       r0, 0x0(r31)
/* 06C028 8006F028 2C000000 */  cmpwi     r0, 0x0
/* 06C02C 8006F02C 40800018 */  bge       lbl_8006F044
lbl_8006F030:
/* 06C030 8006F030 2C050001 */  cmpwi     r5, 0x1
/* 06C034 8006F034 40820018 */  bne       lbl_8006F04C
/* 06C038 8006F038 801F0000 */  lwz       r0, 0x0(r31)
/* 06C03C 8006F03C 2C000000 */  cmpwi     r0, 0x0
/* 06C040 8006F040 4080000C */  bge       lbl_8006F04C
lbl_8006F044:
/* 06C044 8006F044 38600001 */  li        r3, 0x1
/* 06C048 8006F048 480001E0 */  b         lbl_8006F228
lbl_8006F04C:
/* 06C04C 8006F04C 2C050000 */  cmpwi     r5, 0x0
/* 06C050 8006F050 408200D4 */  bne       lbl_8006F124
/* 06C054 8006F054 80BF0000 */  lwz       r5, 0x0(r31)
/* 06C058 8006F058 387E0000 */  addi      r3, r30, 0x0
/* 06C05C 8006F05C 38810018 */  addi      r4, r1, 0x18
/* 06C060 8006F060 38050001 */  addi      r0, r5, 0x1
/* 06C064 8006F064 7C0000D0 */  neg       r0, r0
/* 06C068 8006F068 90010014 */  stw       r0, 0x14(r1)
/* 06C06C 8006F06C 38A00000 */  li        r5, 0x0
/* 06C070 8006F070 480001D9 */  bl        romMakeFreeCache
/* 06C074 8006F074 2C030000 */  cmpwi     r3, 0x0
/* 06C078 8006F078 4082000C */  bne       lbl_8006F084
/* 06C07C 8006F07C 38600000 */  li        r3, 0x0
/* 06C080 8006F080 480001A8 */  b         lbl_8006F228
lbl_8006F084:
/* 06C084 8006F084 80610018 */  lwz       r3, 0x18(r1)
/* 06C088 8006F088 80010014 */  lwz       r0, 0x14(r1)
/* 06C08C 8006F08C 547C6824 */  slwi      r28, r3, 13
/* 06C090 8006F090 541D6824 */  slwi      r29, r0, 13
/* 06C094 8006F094 48048755 */  bl        ARGetBaseAddress
/* 06C098 8006F098 7FBD1A14 */  add       r29, r29, r3
lbl_8006F09C:
/* 06C09C 8006F09C 4804855D */  bl        ARGetDMAStatus
/* 06C0A0 8006F0A0 28030000 */  cmplwi    r3, 0x0
/* 06C0A4 8006F0A4 4082FFF8 */  bne       lbl_8006F09C
/* 06C0A8 8006F0A8 3FDE0001 */  addis     r30, r30, 0x1
/* 06C0AC 8006F0AC 801E0220 */  lwz       r0, 0x220(r30)
/* 06C0B0 8006F0B0 38BD0000 */  addi      r5, r29, 0x0
/* 06C0B4 8006F0B4 38600001 */  li        r3, 0x1
/* 06C0B8 8006F0B8 7C80E214 */  add       r4, r0, r28
/* 06C0BC 8006F0BC 38C02000 */  li        r6, 0x2000
/* 06C0C0 8006F0C0 48048575 */  bl        ARStartDMA
/* 06C0C4 8006F0C4 801E0220 */  lwz       r0, 0x220(r30)
/* 06C0C8 8006F0C8 38802000 */  li        r4, 0x2000
/* 06C0CC 8006F0CC 7C60E214 */  add       r3, r0, r28
/* 06C0D0 8006F0D0 4802DBC9 */  bl        DCInvalidateRange
/* 06C0D4 8006F0D4 80610014 */  lwz       r3, 0x14(r1)
/* 06C0D8 8006F0D8 38A00001 */  li        r5, 0x1
/* 06C0DC 8006F0DC 7C601E70 */  srawi     r0, r3, 3
/* 06C0E0 8006F0E0 7C9E0214 */  add       r4, r30, r0
/* 06C0E4 8006F0E4 5460077E */  clrlwi    r0, r3, 29
/* 06C0E8 8006F0E8 88640624 */  lbz       r3, 0x624(r4)
/* 06C0EC 8006F0EC 7CA00030 */  slw       r0, r5, r0
/* 06C0F0 8006F0F0 7C600078 */  andc      r0, r3, r0
/* 06C0F4 8006F0F4 98040624 */  stb       r0, 0x624(r4)
/* 06C0F8 8006F0F8 80610018 */  lwz       r3, 0x18(r1)
/* 06C0FC 8006F0FC 7C601E70 */  srawi     r0, r3, 3
/* 06C100 8006F100 7C9E0214 */  add       r4, r30, r0
/* 06C104 8006F104 5460077E */  clrlwi    r0, r3, 29
/* 06C108 8006F108 88640224 */  lbz       r3, 0x224(r4)
/* 06C10C 8006F10C 7CA00030 */  slw       r0, r5, r0
/* 06C110 8006F110 7C600378 */  or        r0, r3, r0
/* 06C114 8006F114 98040224 */  stb       r0, 0x224(r4)
/* 06C118 8006F118 80010018 */  lwz       r0, 0x18(r1)
/* 06C11C 8006F11C 901F0000 */  stw       r0, 0x0(r31)
/* 06C120 8006F120 480000F8 */  b         lbl_8006F218
lbl_8006F124:
/* 06C124 8006F124 2C050001 */  cmpwi     r5, 0x1
/* 06C128 8006F128 408200E8 */  bne       lbl_8006F210
/* 06C12C 8006F12C 801F0000 */  lwz       r0, 0x0(r31)
/* 06C130 8006F130 387E0000 */  addi      r3, r30, 0x0
/* 06C134 8006F134 38810014 */  addi      r4, r1, 0x14
/* 06C138 8006F138 90010018 */  stw       r0, 0x18(r1)
/* 06C13C 8006F13C 38A00001 */  li        r5, 0x1
/* 06C140 8006F140 48000109 */  bl        romMakeFreeCache
/* 06C144 8006F144 2C030000 */  cmpwi     r3, 0x0
/* 06C148 8006F148 4082000C */  bne       lbl_8006F154
/* 06C14C 8006F14C 38600000 */  li        r3, 0x0
/* 06C150 8006F150 480000D8 */  b         lbl_8006F228
lbl_8006F154:
/* 06C154 8006F154 80610014 */  lwz       r3, 0x14(r1)
/* 06C158 8006F158 80010018 */  lwz       r0, 0x18(r1)
/* 06C15C 8006F15C 38630001 */  addi      r3, r3, 0x1
/* 06C160 8006F160 7C6300D0 */  neg       r3, r3
/* 06C164 8006F164 90610014 */  stw       r3, 0x14(r1)
/* 06C168 8006F168 541D6824 */  slwi      r29, r0, 13
/* 06C16C 8006F16C 80010014 */  lwz       r0, 0x14(r1)
/* 06C170 8006F170 541C6824 */  slwi      r28, r0, 13
/* 06C174 8006F174 48048675 */  bl        ARGetBaseAddress
/* 06C178 8006F178 3C9E0001 */  addis     r4, r30, 0x1
/* 06C17C 8006F17C 80040220 */  lwz       r0, 0x220(r4)
/* 06C180 8006F180 7F9C1A14 */  add       r28, r28, r3
/* 06C184 8006F184 38802000 */  li        r4, 0x2000
/* 06C188 8006F188 7C60EA14 */  add       r3, r0, r29
/* 06C18C 8006F18C 4802DB69 */  bl        DCStoreRange
lbl_8006F190:
/* 06C190 8006F190 48048469 */  bl        ARGetDMAStatus
/* 06C194 8006F194 28030000 */  cmplwi    r3, 0x0
/* 06C198 8006F198 4082FFF8 */  bne       lbl_8006F190
/* 06C19C 8006F19C 3FDE0001 */  addis     r30, r30, 0x1
/* 06C1A0 8006F1A0 801E0220 */  lwz       r0, 0x220(r30)
/* 06C1A4 8006F1A4 38BC0000 */  addi      r5, r28, 0x0
/* 06C1A8 8006F1A8 38600000 */  li        r3, 0x0
/* 06C1AC 8006F1AC 7C80EA14 */  add       r4, r0, r29
/* 06C1B0 8006F1B0 38C02000 */  li        r6, 0x2000
/* 06C1B4 8006F1B4 48048481 */  bl        ARStartDMA
/* 06C1B8 8006F1B8 80610018 */  lwz       r3, 0x18(r1)
/* 06C1BC 8006F1BC 38A00001 */  li        r5, 0x1
/* 06C1C0 8006F1C0 7C601E70 */  srawi     r0, r3, 3
/* 06C1C4 8006F1C4 7C9E0214 */  add       r4, r30, r0
/* 06C1C8 8006F1C8 5460077E */  clrlwi    r0, r3, 29
/* 06C1CC 8006F1CC 88640224 */  lbz       r3, 0x224(r4)
/* 06C1D0 8006F1D0 7CA00030 */  slw       r0, r5, r0
/* 06C1D4 8006F1D4 7C600078 */  andc      r0, r3, r0
/* 06C1D8 8006F1D8 98040224 */  stb       r0, 0x224(r4)
/* 06C1DC 8006F1DC 80610014 */  lwz       r3, 0x14(r1)
/* 06C1E0 8006F1E0 7C601E70 */  srawi     r0, r3, 3
/* 06C1E4 8006F1E4 7C9E0214 */  add       r4, r30, r0
/* 06C1E8 8006F1E8 5460077E */  clrlwi    r0, r3, 29
/* 06C1EC 8006F1EC 88640624 */  lbz       r3, 0x624(r4)
/* 06C1F0 8006F1F0 7CA00030 */  slw       r0, r5, r0
/* 06C1F4 8006F1F4 7C600378 */  or        r0, r3, r0
/* 06C1F8 8006F1F8 98040624 */  stb       r0, 0x624(r4)
/* 06C1FC 8006F1FC 80610014 */  lwz       r3, 0x14(r1)
/* 06C200 8006F200 38030001 */  addi      r0, r3, 0x1
/* 06C204 8006F204 7C0000D0 */  neg       r0, r0
/* 06C208 8006F208 901F0000 */  stw       r0, 0x0(r31)
/* 06C20C 8006F20C 4800000C */  b         lbl_8006F218
lbl_8006F210:
/* 06C210 8006F210 38600000 */  li        r3, 0x0
/* 06C214 8006F214 48000014 */  b         lbl_8006F228
lbl_8006F218:
/* 06C218 8006F218 480483E1 */  bl        ARGetDMAStatus
/* 06C21C 8006F21C 28030000 */  cmplwi    r3, 0x0
/* 06C220 8006F220 4082FFF8 */  bne       lbl_8006F218
/* 06C224 8006F224 38600001 */  li        r3, 0x1
lbl_8006F228:
/* 06C228 8006F228 80010034 */  lwz       r0, 0x34(r1)
/* 06C22C 8006F22C 83E1002C */  lwz       r31, 0x2c(r1)
/* 06C230 8006F230 83C10028 */  lwz       r30, 0x28(r1)
/* 06C234 8006F234 7C0803A6 */  mtlr      r0
/* 06C238 8006F238 83A10024 */  lwz       r29, 0x24(r1)
/* 06C23C 8006F23C 83810020 */  lwz       r28, 0x20(r1)
/* 06C240 8006F240 38210030 */  addi      r1, r1, 0x30
/* 06C244 8006F244 4E800020 */  blr

glabel romMakeFreeCache
/* 06C248 8006F248 7C0802A6 */  mflr      r0
/* 06C24C 8006F24C 2C050000 */  cmpwi     r5, 0x0
/* 06C250 8006F250 90010004 */  stw       r0, 0x4(r1)
/* 06C254 8006F254 9421FFD0 */  stwu      r1, -0x30(r1)
/* 06C258 8006F258 93E1002C */  stw       r31, 0x2c(r1)
/* 06C25C 8006F25C 3BE40000 */  addi      r31, r4, 0x0
/* 06C260 8006F260 93C10028 */  stw       r30, 0x28(r1)
/* 06C264 8006F264 3BC30000 */  addi      r30, r3, 0x0
/* 06C268 8006F268 4082010C */  bne       lbl_8006F374
/* 06C26C 8006F26C 387E0000 */  addi      r3, r30, 0x0
/* 06C270 8006F270 38810020 */  addi      r4, r1, 0x20
/* 06C274 8006F274 38A00000 */  li        r5, 0x0
/* 06C278 8006F278 48000395 */  bl        romFindFreeCache
/* 06C27C 8006F27C 2C030000 */  cmpwi     r3, 0x0
/* 06C280 8006F280 408201B8 */  bne       lbl_8006F438
/* 06C284 8006F284 387E0000 */  addi      r3, r30, 0x0
/* 06C288 8006F288 3881001C */  addi      r4, r1, 0x1c
/* 06C28C 8006F28C 38A00000 */  li        r5, 0x0
/* 06C290 8006F290 38C00002 */  li        r6, 0x2
/* 06C294 8006F294 480001C9 */  bl        romFindOldestBlock
/* 06C298 8006F298 2C030000 */  cmpwi     r3, 0x0
/* 06C29C 8006F29C 418200D0 */  beq       lbl_8006F36C
/* 06C2A0 8006F2A0 8081001C */  lwz       r4, 0x1c(r1)
/* 06C2A4 8006F2A4 387E0000 */  addi      r3, r30, 0x0
/* 06C2A8 8006F2A8 38A00001 */  li        r5, 0x1
/* 06C2AC 8006F2AC 54802036 */  slwi      r0, r4, 4
/* 06C2B0 8006F2B0 7CDE0214 */  add       r6, r30, r0
/* 06C2B4 8006F2B4 8006021C */  lwz       r0, 0x21c(r6)
/* 06C2B8 8006F2B8 90010020 */  stw       r0, 0x20(r1)
/* 06C2BC 8006F2BC 4BFFFD35 */  bl        romSetBlockCache
/* 06C2C0 8006F2C0 2C030000 */  cmpwi     r3, 0x0
/* 06C2C4 8006F2C4 40820174 */  bne       lbl_8006F438
/* 06C2C8 8006F2C8 387E0000 */  addi      r3, r30, 0x0
/* 06C2CC 8006F2CC 3881001C */  addi      r4, r1, 0x1c
/* 06C2D0 8006F2D0 38A00000 */  li        r5, 0x0
/* 06C2D4 8006F2D4 38C00000 */  li        r6, 0x0
/* 06C2D8 8006F2D8 48000185 */  bl        romFindOldestBlock
/* 06C2DC 8006F2DC 2C030000 */  cmpwi     r3, 0x0
/* 06C2E0 8006F2E0 41820158 */  beq       lbl_8006F438
/* 06C2E4 8006F2E4 8001001C */  lwz       r0, 0x1c(r1)
/* 06C2E8 8006F2E8 54042036 */  slwi      r4, r0, 4
/* 06C2EC 8006F2EC 7C7E2214 */  add       r3, r30, r4
/* 06C2F0 8006F2F0 8003021C */  lwz       r0, 0x21c(r3)
/* 06C2F4 8006F2F4 38C4021C */  addi      r6, r4, 0x21c
/* 06C2F8 8006F2F8 7CDE3214 */  add       r6, r30, r6
/* 06C2FC 8006F2FC 90010020 */  stw       r0, 0x20(r1)
/* 06C300 8006F300 80860000 */  lwz       r4, 0x0(r6)
/* 06C304 8006F304 2C040000 */  cmpwi     r4, 0x0
/* 06C308 8006F308 40800034 */  bge       lbl_8006F33C
/* 06C30C 8006F30C 38040001 */  addi      r0, r4, 0x1
/* 06C310 8006F310 7C8000D0 */  neg       r4, r0
/* 06C314 8006F314 3C7E0001 */  addis     r3, r30, 0x1
/* 06C318 8006F318 7C801E70 */  srawi     r0, r4, 3
/* 06C31C 8006F31C 7CA30214 */  add       r5, r3, r0
/* 06C320 8006F320 5480077E */  clrlwi    r0, r4, 29
/* 06C324 8006F324 88850624 */  lbz       r4, 0x624(r5)
/* 06C328 8006F328 38600001 */  li        r3, 0x1
/* 06C32C 8006F32C 7C600030 */  slw       r0, r3, r0
/* 06C330 8006F330 7C800078 */  andc      r0, r4, r0
/* 06C334 8006F334 98050624 */  stb       r0, 0x624(r5)
/* 06C338 8006F338 48000028 */  b         lbl_8006F360
lbl_8006F33C:
/* 06C33C 8006F33C 3C7E0001 */  addis     r3, r30, 0x1
/* 06C340 8006F340 7C801E70 */  srawi     r0, r4, 3
/* 06C344 8006F344 7CA30214 */  add       r5, r3, r0
/* 06C348 8006F348 5480077E */  clrlwi    r0, r4, 29
/* 06C34C 8006F34C 88850224 */  lbz       r4, 0x224(r5)
/* 06C350 8006F350 38600001 */  li        r3, 0x1
/* 06C354 8006F354 7C600030 */  slw       r0, r3, r0
/* 06C358 8006F358 7C800078 */  andc      r0, r4, r0
/* 06C35C 8006F35C 98050224 */  stb       r0, 0x224(r5)
lbl_8006F360:
/* 06C360 8006F360 38000000 */  li        r0, 0x0
/* 06C364 8006F364 90060004 */  stw       r0, 0x4(r6)
/* 06C368 8006F368 480000D0 */  b         lbl_8006F438
lbl_8006F36C:
/* 06C36C 8006F36C 38600000 */  li        r3, 0x0
/* 06C370 8006F370 480000D4 */  b         lbl_8006F444
lbl_8006F374:
/* 06C374 8006F374 387E0000 */  addi      r3, r30, 0x0
/* 06C378 8006F378 38810020 */  addi      r4, r1, 0x20
/* 06C37C 8006F37C 38A00001 */  li        r5, 0x1
/* 06C380 8006F380 4800028D */  bl        romFindFreeCache
/* 06C384 8006F384 2C030000 */  cmpwi     r3, 0x0
/* 06C388 8006F388 408200B0 */  bne       lbl_8006F438
/* 06C38C 8006F38C 387E0000 */  addi      r3, r30, 0x0
/* 06C390 8006F390 3881001C */  addi      r4, r1, 0x1c
/* 06C394 8006F394 38A00001 */  li        r5, 0x1
/* 06C398 8006F398 38C00000 */  li        r6, 0x0
/* 06C39C 8006F39C 480000C1 */  bl        romFindOldestBlock
/* 06C3A0 8006F3A0 2C030000 */  cmpwi     r3, 0x0
/* 06C3A4 8006F3A4 4182008C */  beq       lbl_8006F430
/* 06C3A8 8006F3A8 8001001C */  lwz       r0, 0x1c(r1)
/* 06C3AC 8006F3AC 54042036 */  slwi      r4, r0, 4
/* 06C3B0 8006F3B0 7C7E2214 */  add       r3, r30, r4
/* 06C3B4 8006F3B4 8003021C */  lwz       r0, 0x21c(r3)
/* 06C3B8 8006F3B8 38C4021C */  addi      r6, r4, 0x21c
/* 06C3BC 8006F3BC 7CDE3214 */  add       r6, r30, r6
/* 06C3C0 8006F3C0 90010020 */  stw       r0, 0x20(r1)
/* 06C3C4 8006F3C4 80860000 */  lwz       r4, 0x0(r6)
/* 06C3C8 8006F3C8 2C040000 */  cmpwi     r4, 0x0
/* 06C3CC 8006F3CC 40800034 */  bge       lbl_8006F400
/* 06C3D0 8006F3D0 38040001 */  addi      r0, r4, 0x1
/* 06C3D4 8006F3D4 7C8000D0 */  neg       r4, r0
/* 06C3D8 8006F3D8 3C7E0001 */  addis     r3, r30, 0x1
/* 06C3DC 8006F3DC 7C801E70 */  srawi     r0, r4, 3
/* 06C3E0 8006F3E0 7CA30214 */  add       r5, r3, r0
/* 06C3E4 8006F3E4 5480077E */  clrlwi    r0, r4, 29
/* 06C3E8 8006F3E8 88850624 */  lbz       r4, 0x624(r5)
/* 06C3EC 8006F3EC 38600001 */  li        r3, 0x1
/* 06C3F0 8006F3F0 7C600030 */  slw       r0, r3, r0
/* 06C3F4 8006F3F4 7C800078 */  andc      r0, r4, r0
/* 06C3F8 8006F3F8 98050624 */  stb       r0, 0x624(r5)
/* 06C3FC 8006F3FC 48000028 */  b         lbl_8006F424
lbl_8006F400:
/* 06C400 8006F400 3C7E0001 */  addis     r3, r30, 0x1
/* 06C404 8006F404 7C801E70 */  srawi     r0, r4, 3
/* 06C408 8006F408 7CA30214 */  add       r5, r3, r0
/* 06C40C 8006F40C 5480077E */  clrlwi    r0, r4, 29
/* 06C410 8006F410 88850224 */  lbz       r4, 0x224(r5)
/* 06C414 8006F414 38600001 */  li        r3, 0x1
/* 06C418 8006F418 7C600030 */  slw       r0, r3, r0
/* 06C41C 8006F41C 7C800078 */  andc      r0, r4, r0
/* 06C420 8006F420 98050224 */  stb       r0, 0x224(r5)
lbl_8006F424:
/* 06C424 8006F424 38000000 */  li        r0, 0x0
/* 06C428 8006F428 90060004 */  stw       r0, 0x4(r6)
/* 06C42C 8006F42C 4800000C */  b         lbl_8006F438
lbl_8006F430:
/* 06C430 8006F430 38600000 */  li        r3, 0x0
/* 06C434 8006F434 48000010 */  b         lbl_8006F444
lbl_8006F438:
/* 06C438 8006F438 80010020 */  lwz       r0, 0x20(r1)
/* 06C43C 8006F43C 38600001 */  li        r3, 0x1
/* 06C440 8006F440 901F0000 */  stw       r0, 0x0(r31)
lbl_8006F444:
/* 06C444 8006F444 80010034 */  lwz       r0, 0x34(r1)
/* 06C448 8006F448 83E1002C */  lwz       r31, 0x2c(r1)
/* 06C44C 8006F44C 83C10028 */  lwz       r30, 0x28(r1)
/* 06C450 8006F450 7C0803A6 */  mtlr      r0
/* 06C454 8006F454 38210030 */  addi      r1, r1, 0x30
/* 06C458 8006F458 4E800020 */  blr

glabel romFindOldestBlock
/* 06C45C 8006F45C 3CE30001 */  addis     r7, r3, 0x1
/* 06C460 8006F460 38000800 */  li        r0, 0x800
/* 06C464 8006F464 8147021C */  lwz       r10, 0x21c(r7)
/* 06C468 8006F468 7C0903A6 */  mtctr     r0
/* 06C46C 8006F46C 39800000 */  li        r12, 0x0
/* 06C470 8006F470 39000000 */  li        r8, 0x0
lbl_8006F474:
/* 06C474 8006F474 80030220 */  lwz       r0, 0x220(r3)
/* 06C478 8006F478 38E3021C */  addi      r7, r3, 0x21c
/* 06C47C 8006F47C 28000000 */  cmplwi    r0, 0x0
/* 06C480 8006F480 418200A8 */  beq       lbl_8006F528
/* 06C484 8006F484 2C050000 */  cmpwi     r5, 0x0
/* 06C488 8006F488 40820010 */  bne       lbl_8006F498
/* 06C48C 8006F48C 80070000 */  lwz       r0, 0x0(r7)
/* 06C490 8006F490 2C000000 */  cmpwi     r0, 0x0
/* 06C494 8006F494 40800018 */  bge       lbl_8006F4AC
lbl_8006F498:
/* 06C498 8006F498 2C050001 */  cmpwi     r5, 0x1
/* 06C49C 8006F49C 4082008C */  bne       lbl_8006F528
/* 06C4A0 8006F4A0 80070000 */  lwz       r0, 0x0(r7)
/* 06C4A4 8006F4A4 2C000000 */  cmpwi     r0, 0x0
/* 06C4A8 8006F4A8 40800080 */  bge       lbl_8006F528
lbl_8006F4AC:
/* 06C4AC 8006F4AC 80070008 */  lwz       r0, 0x8(r7)
/* 06C4B0 8006F4B0 7C005040 */  cmplw     r0, r10
/* 06C4B4 8006F4B4 40810010 */  ble       lbl_8006F4C4
/* 06C4B8 8006F4B8 7C0A0050 */  subf      r0, r10, r0
/* 06C4BC 8006F4BC 2160FFFF */  subfic    r11, r0, -0x1
/* 06C4C0 8006F4C0 48000008 */  b         lbl_8006F4C8
lbl_8006F4C4:
/* 06C4C4 8006F4C4 7D605050 */  subf      r11, r0, r10
lbl_8006F4C8:
/* 06C4C8 8006F4C8 2C060000 */  cmpwi     r6, 0x0
/* 06C4CC 8006F4CC 40820024 */  bne       lbl_8006F4F0
/* 06C4D0 8006F4D0 7C0B6040 */  cmplw     r11, r12
/* 06C4D4 8006F4D4 40810054 */  ble       lbl_8006F528
/* 06C4D8 8006F4D8 8807000C */  lbz       r0, 0xc(r7)
/* 06C4DC 8006F4DC 7C000775 */  extsb.    r0, r0
/* 06C4E0 8006F4E0 40820048 */  bne       lbl_8006F528
/* 06C4E4 8006F4E4 39280000 */  addi      r9, r8, 0x0
/* 06C4E8 8006F4E8 398B0000 */  addi      r12, r11, 0x0
/* 06C4EC 8006F4EC 4800003C */  b         lbl_8006F528
lbl_8006F4F0:
/* 06C4F0 8006F4F0 2C060001 */  cmpwi     r6, 0x1
/* 06C4F4 8006F4F4 40820024 */  bne       lbl_8006F518
/* 06C4F8 8006F4F8 7C0B6040 */  cmplw     r11, r12
/* 06C4FC 8006F4FC 4081002C */  ble       lbl_8006F528
/* 06C500 8006F500 8807000C */  lbz       r0, 0xc(r7)
/* 06C504 8006F504 2C000001 */  cmpwi     r0, 0x1
/* 06C508 8006F508 40820020 */  bne       lbl_8006F528
/* 06C50C 8006F50C 39280000 */  addi      r9, r8, 0x0
/* 06C510 8006F510 398B0000 */  addi      r12, r11, 0x0
/* 06C514 8006F514 48000014 */  b         lbl_8006F528
lbl_8006F518:
/* 06C518 8006F518 7C0B6040 */  cmplw     r11, r12
/* 06C51C 8006F51C 4081000C */  ble       lbl_8006F528
/* 06C520 8006F520 39280000 */  addi      r9, r8, 0x0
/* 06C524 8006F524 398B0000 */  addi      r12, r11, 0x0
lbl_8006F528:
/* 06C528 8006F528 80030230 */  lwz       r0, 0x230(r3)
/* 06C52C 8006F52C 38E3022C */  addi      r7, r3, 0x22c
/* 06C530 8006F530 39080001 */  addi      r8, r8, 0x1
/* 06C534 8006F534 28000000 */  cmplwi    r0, 0x0
/* 06C538 8006F538 38630010 */  addi      r3, r3, 0x10
/* 06C53C 8006F53C 418200A8 */  beq       lbl_8006F5E4
/* 06C540 8006F540 2C050000 */  cmpwi     r5, 0x0
/* 06C544 8006F544 40820010 */  bne       lbl_8006F554
/* 06C548 8006F548 80070000 */  lwz       r0, 0x0(r7)
/* 06C54C 8006F54C 2C000000 */  cmpwi     r0, 0x0
/* 06C550 8006F550 40800018 */  bge       lbl_8006F568
lbl_8006F554:
/* 06C554 8006F554 2C050001 */  cmpwi     r5, 0x1
/* 06C558 8006F558 4082008C */  bne       lbl_8006F5E4
/* 06C55C 8006F55C 80070000 */  lwz       r0, 0x0(r7)
/* 06C560 8006F560 2C000000 */  cmpwi     r0, 0x0
/* 06C564 8006F564 40800080 */  bge       lbl_8006F5E4
lbl_8006F568:
/* 06C568 8006F568 80070008 */  lwz       r0, 0x8(r7)
/* 06C56C 8006F56C 7C005040 */  cmplw     r0, r10
/* 06C570 8006F570 40810010 */  ble       lbl_8006F580
/* 06C574 8006F574 7C0A0050 */  subf      r0, r10, r0
/* 06C578 8006F578 2160FFFF */  subfic    r11, r0, -0x1
/* 06C57C 8006F57C 48000008 */  b         lbl_8006F584
lbl_8006F580:
/* 06C580 8006F580 7D605050 */  subf      r11, r0, r10
lbl_8006F584:
/* 06C584 8006F584 2C060000 */  cmpwi     r6, 0x0
/* 06C588 8006F588 40820024 */  bne       lbl_8006F5AC
/* 06C58C 8006F58C 7C0B6040 */  cmplw     r11, r12
/* 06C590 8006F590 40810054 */  ble       lbl_8006F5E4
/* 06C594 8006F594 8807000C */  lbz       r0, 0xc(r7)
/* 06C598 8006F598 7C000775 */  extsb.    r0, r0
/* 06C59C 8006F59C 40820048 */  bne       lbl_8006F5E4
/* 06C5A0 8006F5A0 39280000 */  addi      r9, r8, 0x0
/* 06C5A4 8006F5A4 398B0000 */  addi      r12, r11, 0x0
/* 06C5A8 8006F5A8 4800003C */  b         lbl_8006F5E4
lbl_8006F5AC:
/* 06C5AC 8006F5AC 2C060001 */  cmpwi     r6, 0x1
/* 06C5B0 8006F5B0 40820024 */  bne       lbl_8006F5D4
/* 06C5B4 8006F5B4 7C0B6040 */  cmplw     r11, r12
/* 06C5B8 8006F5B8 4081002C */  ble       lbl_8006F5E4
/* 06C5BC 8006F5BC 8807000C */  lbz       r0, 0xc(r7)
/* 06C5C0 8006F5C0 2C000001 */  cmpwi     r0, 0x1
/* 06C5C4 8006F5C4 40820020 */  bne       lbl_8006F5E4
/* 06C5C8 8006F5C8 39280000 */  addi      r9, r8, 0x0
/* 06C5CC 8006F5CC 398B0000 */  addi      r12, r11, 0x0
/* 06C5D0 8006F5D0 48000014 */  b         lbl_8006F5E4
lbl_8006F5D4:
/* 06C5D4 8006F5D4 7C0B6040 */  cmplw     r11, r12
/* 06C5D8 8006F5D8 4081000C */  ble       lbl_8006F5E4
/* 06C5DC 8006F5DC 39280000 */  addi      r9, r8, 0x0
/* 06C5E0 8006F5E0 398B0000 */  addi      r12, r11, 0x0
lbl_8006F5E4:
/* 06C5E4 8006F5E4 38630010 */  addi      r3, r3, 0x10
/* 06C5E8 8006F5E8 39080001 */  addi      r8, r8, 0x1
/* 06C5EC 8006F5EC 4200FE88 */  bdnz      lbl_8006F474
/* 06C5F0 8006F5F0 280C0000 */  cmplwi    r12, 0x0
/* 06C5F4 8006F5F4 41820010 */  beq       lbl_8006F604
/* 06C5F8 8006F5F8 91240000 */  stw       r9, 0x0(r4)
/* 06C5FC 8006F5FC 38600001 */  li        r3, 0x1
/* 06C600 8006F600 4E800020 */  blr
lbl_8006F604:
/* 06C604 8006F604 38600000 */  li        r3, 0x0
/* 06C608 8006F608 4E800020 */  blr

glabel romFindFreeCache
/* 06C60C 8006F60C 2C050000 */  cmpwi     r5, 0x0
/* 06C610 8006F610 40820058 */  bne       lbl_8006F668
/* 06C614 8006F614 3CA30001 */  addis     r5, r3, 0x1
/* 06C618 8006F618 80050E68 */  lwz       r0, 0xe68(r5)
/* 06C61C 8006F61C 38E00000 */  li        r7, 0x0
/* 06C620 8006F620 38A00001 */  li        r5, 0x1
/* 06C624 8006F624 2C000000 */  cmpwi     r0, 0x0
/* 06C628 8006F628 7C0903A6 */  mtctr     r0
/* 06C62C 8006F62C 4081009C */  ble       lbl_8006F6C8
lbl_8006F630:
/* 06C630 8006F630 7CE61E70 */  srawi     r6, r7, 3
/* 06C634 8006F634 3CC60001 */  addis     r6, r6, 0x1
/* 06C638 8006F638 38C60224 */  addi      r6, r6, 0x224
/* 06C63C 8006F63C 54E0077E */  clrlwi    r0, r7, 29
/* 06C640 8006F640 7CC330AE */  lbzx      r6, r3, r6
/* 06C644 8006F644 7CA00030 */  slw       r0, r5, r0
/* 06C648 8006F648 7CC00039 */  and.      r0, r6, r0
/* 06C64C 8006F64C 40820010 */  bne       lbl_8006F65C
/* 06C650 8006F650 90E40000 */  stw       r7, 0x0(r4)
/* 06C654 8006F654 38600001 */  li        r3, 0x1
/* 06C658 8006F658 4E800020 */  blr
lbl_8006F65C:
/* 06C65C 8006F65C 38E70001 */  addi      r7, r7, 0x1
/* 06C660 8006F660 4200FFD0 */  bdnz      lbl_8006F630
/* 06C664 8006F664 48000064 */  b         lbl_8006F6C8
lbl_8006F668:
/* 06C668 8006F668 2C050001 */  cmpwi     r5, 0x1
/* 06C66C 8006F66C 40820054 */  bne       lbl_8006F6C0
/* 06C670 8006F670 380007FE */  li        r0, 0x7fe
/* 06C674 8006F674 7C0903A6 */  mtctr     r0
/* 06C678 8006F678 38E00000 */  li        r7, 0x0
/* 06C67C 8006F67C 38A00001 */  li        r5, 0x1
lbl_8006F680:
/* 06C680 8006F680 7CE61E70 */  srawi     r6, r7, 3
/* 06C684 8006F684 3CC60001 */  addis     r6, r6, 0x1
/* 06C688 8006F688 38C60624 */  addi      r6, r6, 0x624
/* 06C68C 8006F68C 54E0077E */  clrlwi    r0, r7, 29
/* 06C690 8006F690 7CC330AE */  lbzx      r6, r3, r6
/* 06C694 8006F694 7CA00030 */  slw       r0, r5, r0
/* 06C698 8006F698 7CC00039 */  and.      r0, r6, r0
/* 06C69C 8006F69C 40820018 */  bne       lbl_8006F6B4
/* 06C6A0 8006F6A0 38070001 */  addi      r0, r7, 0x1
/* 06C6A4 8006F6A4 7C0000D0 */  neg       r0, r0
/* 06C6A8 8006F6A8 90040000 */  stw       r0, 0x0(r4)
/* 06C6AC 8006F6AC 38600001 */  li        r3, 0x1
/* 06C6B0 8006F6B0 4E800020 */  blr
lbl_8006F6B4:
/* 06C6B4 8006F6B4 38E70001 */  addi      r7, r7, 0x1
/* 06C6B8 8006F6B8 4200FFC8 */  bdnz      lbl_8006F680
/* 06C6BC 8006F6BC 4800000C */  b         lbl_8006F6C8
lbl_8006F6C0:
/* 06C6C0 8006F6C0 38600000 */  li        r3, 0x0
/* 06C6C4 8006F6C4 4E800020 */  blr
lbl_8006F6C8:
/* 06C6C8 8006F6C8 38600000 */  li        r3, 0x0
/* 06C6CC 8006F6CC 4E800020 */  blr

# 0x800EEDB0 - 0x800EF400
.section .data, "wa"

.balign 8

glabel gClassROM
	.long D_8018B510
	.long 0x00010EF8
	.long 0x00000000
	.long romEvent

glabel D_800EEDC0
	.long 0x01685160
	.long 0x016D376F
	.long 0x016D3770
	.long 0x0172B78F
	.long 0x0172B790
	.long 0x0175E1CF
	.long 0x0175E1D0
	.long 0x017BE4FF
	.long 0x017BE500
	.long 0x0182EA4F
	.long 0x0182EA50
	.long 0x0189A76F
	.long 0x0189A770
	.long 0x0191AD0F
	.long 0x0191AD10
	.long 0x0198436F
	.long 0x01984370
	.long 0x019CA5CF
	.long 0x019CA5D0
	.long 0x01A0942F
	.long 0x01A09430
	.long 0x01A71DEF
	.long 0x01A71DF0
	.long 0x01A950EF
	.long 0x01A950F0
	.long 0x01AAC75F
	.long 0x01AAC760
	.long 0x01AC6D2F
	.long 0x01AC6D30
	.long 0x01ADA7CF
	.long 0x01ADA7D0
	.long 0x01AFD5EF
	.long 0x01AFD5F0
	.long 0x01B0F1BF
	.long 0x01B0F1C0
	.long 0x01B26F1F
	.long 0x01B26F20
	.long 0x01B3767F
	.long 0x01B37680
	.long 0x01B4864F
	.long 0x01B48650
	.long 0x01B5775F
	.long 0x01B57760
	.long 0x01B774EF
	.long 0x01B774F0
	.long 0x01B8FB7F
	.long 0x01B8FB80
	.long 0x01BA9BDF
	.long 0x01BA9BE0
	.long 0x01BB94DF
	.long 0x01BB94E0
	.long 0x01BCF94F
	.long 0x01BCF950
	.long 0x01BEB27F
	.long 0x01BEB280
	.long 0x01C023AF
	.long 0x01C023B0
	.long 0x01C3165F
	.long 0x01C31660
	.long 0x01C341FF
	.long 0x01C34200
	.long 0x01C36C9F
	.long 0x01C36CA0
	.long 0x01C41BFF
	.long 0x01C41C00
	.long 0x01C545EF
	.long 0x01C545F0
	.long 0x01C5C85F
	.long 0x01C5C860
	.long 0x01C64A2F
	.long 0x01C64A30
	.long 0x01C6D8FF
	.long 0x01C6D900
	.long 0x01CADDAF
	.long 0x01CADDB0
	.long 0x01CB559F
	.long 0x01CB55A0
	.long 0x01CC11FF
	.long 0x01CC1200
	.long 0x01CCAD9F
	.long 0x01CCADA0
	.long 0x01CD06CF
	.long 0x01CD06D0
	.long 0x01CDF62F
	.long 0x01CDF630
	.long 0x01CEEF0F
	.long 0x01CEEF10
	.long 0x01D007FF
	.long 0x01D00800
	.long 0x01D0DFDF
	.long 0x01D0DFE0
	.long 0x01D0F5FF
	.long 0x01D0F600
	.long 0x01D148AF
	.long 0x01D148B0
	.long 0x01D1B0FF
	.long 0x01D1B100
	.long 0x01D2870F
	.long 0x01D28710
	.long 0x01D29FFF
	.long 0x01D2A000
	.long 0x01D35B2F
	.long 0x01D35B30
	.long 0x01D3D55F
	.long 0x01D3D560
	.long 0x01D4366F
	.long 0x01D43670
	.long 0x01D487DF
	.long 0x01D487E0
	.long 0x01D5193F
	.long 0x01D51940
	.long 0x01D56E6F
	.long 0x01D56E70
	.long 0x01D5F1FF
	.long 0x01D5F200
	.long 0x01D63CEF
	.long 0x01D63CF0
	.long 0x01D6B4EF
	.long 0x01D6B4F0
	.long 0x01D72DAF
	.long 0x01D72DB0
	.long 0x01D7797F
	.long 0x01D77980
	.long 0x01D7CE2F
	.long 0x01D7CE30
	.long 0x01D8342F
	.long 0x01D83430
	.long 0x01D8845F
	.long 0x01D88460
	.long 0x01D8DCEF
	.long 0x01D8DCF0
	.long 0x01D92C6F
	.long 0x01D92C70
	.long 0x01D9A38F
	.long 0x01D9A390
	.long 0x01DA39EF
	.long 0x01DA39F0
	.long 0x01DB34CF
	.long 0x01DB34D0
	.long 0x01DBA48F
	.long 0x01DBA490
	.long 0x01DC53FF
	.long 0x01DC5400
	.long 0x01DCBB3F
	.long 0x01DCBB40
	.long 0x01DD524F
	.long 0x01DD5250
	.long 0x01E0A42F
	.long 0x01E0A430
	.long 0x01E1BCDF
	.long 0x01E1BCE0
	.long 0x01E296DF
	.long 0x01E296E0
	.long 0x01E3398F
	.long 0x01E33990
	.long 0x01E45A6F
	.long 0x01E45A70
	.long 0x01E4C74F
	.long 0x01E4C750
	.long 0x01E72C6F
	.long 0x01E72C70
	.long 0x01E80F5F
	.long 0x01E80F60
	.long 0x01E90CAF
	.long 0x01E90CB0
	.long 0x01E9BC2F
	.long 0x01E9BC30
	.long 0x01EA6E9F
	.long 0x01EA6EA0
	.long 0x01EB30BF
	.long 0x01EB30C0
	.long 0x01ECADFF
	.long 0x01ECAE00
	.long 0x01ED259F
	.long 0x01ED25A0
	.long 0x01EDD1EF
	.long 0x01EDD1F0
	.long 0x01EEB1CF
	.long 0x01EEB1D0
	.long 0x01EF793F
	.long 0x01EF7940
	.long 0x01F0A15F
	.long 0x01F0A160
	.long 0x01F12BFF
	.long 0x01F12C00
	.long 0x01F1C5AF
	.long 0x01F1C5B0
	.long 0x01F2D9DF
	.long 0x01F2D9E0
	.long 0x01F440CF
	.long 0x01F440D0
	.long 0x01F4D90F
	.long 0x01F4D910
	.long 0x01F5623F
	.long 0x01F56240
	.long 0x01F60C1F
	.long 0x01F60C20
	.long 0x01F7209F

glabel D_800EF0D8
	.long 0x01684BD0
	.long 0x016D355F
	.long 0x016D3560
	.long 0x0172B9AF
	.long 0x0172B9B0
	.long 0x0175E9CF
	.long 0x0175E9D0
	.long 0x017BEE5F
	.long 0x017BEE60
	.long 0x0182F2AF
	.long 0x0182F2B0
	.long 0x0189B35F
	.long 0x0189B360
	.long 0x0191BC0F
	.long 0x0191BC10
	.long 0x01985B8F
	.long 0x01985B90
	.long 0x019CBE9F
	.long 0x019CBEA0
	.long 0x01A0AC2F
	.long 0x01A0AC30
	.long 0x01A7371F
	.long 0x01A73720
	.long 0x01A96A1F
	.long 0x01A96A20
	.long 0x01AAE08F
	.long 0x01AAE090
	.long 0x01AC865F
	.long 0x01AC8660
	.long 0x01ADC0EF
	.long 0x01ADC0F0
	.long 0x01AFEF0F
	.long 0x01AFEF10
	.long 0x01B10ADF
	.long 0x01B10AE0
	.long 0x01B2883F
	.long 0x01B28840
	.long 0x01B38F9F
	.long 0x01B38FA0
	.long 0x01B49F6F
	.long 0x01B49F70
	.long 0x01B5907F
	.long 0x01B59080
	.long 0x01B78E0F
	.long 0x01B78E10
	.long 0x01B9149F
	.long 0x01B914A0
	.long 0x01BAB4FF
	.long 0x01BAB500
	.long 0x01BBADFF
	.long 0x01BBAE00
	.long 0x01BD126F
	.long 0x01BD1270
	.long 0x01BECB9F
	.long 0x01BECBA0
	.long 0x01C03CDF
	.long 0x01C03CE0
	.long 0x01C32F8F
	.long 0x01C32F90
	.long 0x01C35B2F
	.long 0x01C35B30
	.long 0x01C385CF
	.long 0x01C385D0
	.long 0x01C4352F
	.long 0x01C43530
	.long 0x01C55F1F
	.long 0x01C55F20
	.long 0x01C5E18F
	.long 0x01C5E190
	.long 0x01C6635F
	.long 0x01C66360
	.long 0x01C6F22F
	.long 0x01C6F230
	.long 0x01CAF6DF
	.long 0x01CAF6E0
	.long 0x01CB6ECF
	.long 0x01CB6ED0
	.long 0x01CC2B2F
	.long 0x01CC2B30
	.long 0x01CCC6CF
	.long 0x01CCC6D0
	.long 0x01CD1FFF
	.long 0x01CD2000
	.long 0x01CE0F5F
	.long 0x01CE0F60
	.long 0x01CF083F
	.long 0x01CF0840
	.long 0x01D0212F
	.long 0x01D02130
	.long 0x01D0F90F
	.long 0x01D0F910
	.long 0x01D10F2F
	.long 0x01D10F30
	.long 0x01D161DF
	.long 0x01D161E0
	.long 0x01D1CA2F
	.long 0x01D1CA30
	.long 0x01D2A03F
	.long 0x01D2A040
	.long 0x01D2B92F
	.long 0x01D2B930
	.long 0x01D3745F
	.long 0x01D37460
	.long 0x01D3EE8F
	.long 0x01D3EE90
	.long 0x01D44FAF
	.long 0x01D44FB0
	.long 0x01D4A11F
	.long 0x01D4A120
	.long 0x01D5327F
	.long 0x01D53280
	.long 0x01D587AF
	.long 0x01D587B0
	.long 0x01D60B3F
	.long 0x01D60B40
	.long 0x01D6562F
	.long 0x01D65630
	.long 0x01D6CE2F
	.long 0x01D6CE30
	.long 0x01D746EF
	.long 0x01D746F0
	.long 0x01D792BF
	.long 0x01D792C0
	.long 0x01D7E76F
	.long 0x01D7E770
	.long 0x01D84D6F
	.long 0x01D84D70
	.long 0x01D89D9F
	.long 0x01D89DA0
	.long 0x01D8F62F
	.long 0x01D8F630
	.long 0x01D945AF
	.long 0x01D945B0
	.long 0x01D9BCCF
	.long 0x01D9BCD0
	.long 0x01DA532F
	.long 0x01DA5330
	.long 0x01DB4E0F
	.long 0x01DB4E10
	.long 0x01DBBDCF
	.long 0x01DBBDD0
	.long 0x01DC6D3F
	.long 0x01DC6D40
	.long 0x01DCD47F
	.long 0x01DCD480
	.long 0x01DD6B8F
	.long 0x01DD6B90
	.long 0x01E0BD6F
	.long 0x01E0BD70
	.long 0x01E1D61F
	.long 0x01E1D620
	.long 0x01E2B01F
	.long 0x01E2B020
	.long 0x01E352CF
	.long 0x01E352D0
	.long 0x01E473AF
	.long 0x01E473B0
	.long 0x01E4E08F
	.long 0x01E4E090
	.long 0x01E745AF
	.long 0x01E745B0
	.long 0x01E8289F
	.long 0x01E828A0
	.long 0x01E925EF
	.long 0x01E925F0
	.long 0x01E9D56F
	.long 0x01E9D570
	.long 0x01EA87DF
	.long 0x01EA87E0
	.long 0x01EB49FF
	.long 0x01EB4A00
	.long 0x01ECC73F
	.long 0x01ECC740
	.long 0x01ED3EDF
	.long 0x01ED3EE0
	.long 0x01EDEB2F
	.long 0x01EDEB30
	.long 0x01EECB0F
	.long 0x01EECB10
	.long 0x01EF927F
	.long 0x01EF9280
	.long 0x01F0BA9F
	.long 0x01F0BAA0
	.long 0x01F1453F
	.long 0x01F14540
	.long 0x01F1DEEF
	.long 0x01F1DEF0
	.long 0x01F2F31F
	.long 0x01F2F320
	.long 0x01F45A0F
	.long 0x01F45A10
	.long 0x01F4F24F
	.long 0x01F4F250
	.long 0x01F57B7F
	.long 0x01F57B80
	.long 0x01F6255F
	.long 0x01F62560
	.long 0x01F739DF

glabel D_800EF3F0
	.string "urazlj.tpl"

glabel gap_05_800EF3FB_data
.hidden gap_05_800EF3FB_data
	.long 0x00000000
	.byte 0x00

# 0x8018B510 - 0x8018B540
.section .sdata, "wa"

glabel D_8018B510
	.string "ROM"

glabel D_8018B514
	.string "CZLE"

glabel gap_07_8018B519_sdata
.hidden gap_07_8018B519_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B51C
	.string "CZLJ"

glabel gap_07_8018B521_sdata
.hidden gap_07_8018B521_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B524
	.string "zlj.tpl"

glabel D_8018B52C
	.string "NZSJ"

glabel gap_07_8018B531_sdata
.hidden gap_07_8018B531_sdata
	.byte 0x00, 0x00, 0x00

glabel D_8018B534
	.string "NZSE"

glabel gap_07_8018B539_sdata
.hidden gap_07_8018B539_sdata
	.long 0x00000000
	.byte 0x00, 0x00, 0x00

# 0x8018B9F0 - 0x8018BA00
.section .sbss, "wa"

glabel D_8018B9F0
	.skip 0x4

glabel D_8018B9F4
	.skip 0x4

glabel D_8018B9F8
	.skip 0x8

# 0x8018C210 - 0x8018C248
.section .sdata2, "a"

glabel D_8018C210
	.float 1

glabel gap_09_8018C214_sdata2
.hidden gap_09_8018C214_sdata2
	.long 0x00000000

glabel D_8018C218
	.double 4503601774854144

glabel D_8018C220
	.double 4503599627370496

glabel D_8018C228
	.float 0

glabel D_8018C22C
	.float 640

glabel D_8018C230
	.float 480

glabel D_8018C234
	.float 479

glabel D_8018C238
	.float 639

glabel D_8018C23C
	.float 0.5

glabel D_8018C240
	.float 400
	.float 0
