# mips.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8008CA14 - 0x8008CF48

glabel mipsEvent
/* 089A14 8008CA14 7C0802A6 */  mflr      r0
/* 089A18 8008CA18 2C040003 */  cmpwi     r4, 0x3
/* 089A1C 8008CA1C 90010004 */  stw       r0, 0x4(r1)
/* 089A20 8008CA20 9421FFE0 */  stwu      r1, -0x20(r1)
/* 089A24 8008CA24 93E1001C */  stw       r31, 0x1c(r1)
/* 089A28 8008CA28 3BE50000 */  addi      r31, r5, 0x0
/* 089A2C 8008CA2C 93C10018 */  stw       r30, 0x18(r1)
/* 089A30 8008CA30 3BC30000 */  addi      r30, r3, 0x0
/* 089A34 8008CA34 418200C8 */  beq       lbl_8008CAFC
/* 089A38 8008CA38 40800018 */  bge       lbl_8008CA50
/* 089A3C 8008CA3C 2C040002 */  cmpwi     r4, 0x2
/* 089A40 8008CA40 4080001C */  bge       lbl_8008CA5C
/* 089A44 8008CA44 2C040000 */  cmpwi     r4, 0x0
/* 089A48 8008CA48 408000B4 */  bge       lbl_8008CAFC
/* 089A4C 8008CA4C 480000A8 */  b         lbl_8008CAF4
lbl_8008CA50:
/* 089A50 8008CA50 2C041002 */  cmpwi     r4, 0x1002
/* 089A54 8008CA54 41820020 */  beq       lbl_8008CA74
/* 089A58 8008CA58 4800009C */  b         lbl_8008CAF4
lbl_8008CA5C:
/* 089A5C 8008CA5C 38000000 */  li        r0, 0x0
/* 089A60 8008CA60 901E0004 */  stw       r0, 0x4(r30)
/* 089A64 8008CA64 901E0000 */  stw       r0, 0x0(r30)
/* 089A68 8008CA68 901E000C */  stw       r0, 0xc(r30)
/* 089A6C 8008CA6C 93FE0008 */  stw       r31, 0x8(r30)
/* 089A70 8008CA70 4800008C */  b         lbl_8008CAFC
lbl_8008CA74:
/* 089A74 8008CA74 807E0008 */  lwz       r3, 0x8(r30)
/* 089A78 8008CA78 3CA08009 */  lis       r5, mipsPut8@ha
/* 089A7C 8008CA7C 3CC08009 */  lis       r6, mipsPut16@ha
/* 089A80 8008CA80 3CE08009 */  lis       r7, mipsPut32@ha
/* 089A84 8008CA84 80630024 */  lwz       r3, 0x24(r3)
/* 089A88 8008CA88 3C808009 */  lis       r4, mipsPut64@ha
/* 089A8C 8008CA8C 3904CB98 */  addi      r8, r4, mipsPut64@l
/* 089A90 8008CA90 38A5CDB0 */  addi      r5, r5, mipsPut8@l
/* 089A94 8008CA94 38C6CDA8 */  addi      r6, r6, mipsPut16@l
/* 089A98 8008CA98 38E7CBA0 */  addi      r7, r7, mipsPut32@l
/* 089A9C 8008CA9C 389F0000 */  addi      r4, r31, 0x0
/* 089AA0 8008CAA0 4BFA7E45 */  bl        cpuSetDevicePut
/* 089AA4 8008CAA4 2C030000 */  cmpwi     r3, 0x0
/* 089AA8 8008CAA8 4082000C */  bne       lbl_8008CAB4
/* 089AAC 8008CAAC 38600000 */  li        r3, 0x0
/* 089AB0 8008CAB0 48000050 */  b         lbl_8008CB00
lbl_8008CAB4:
/* 089AB4 8008CAB4 807E0008 */  lwz       r3, 0x8(r30)
/* 089AB8 8008CAB8 3CA08009 */  lis       r5, mipsGet8@ha
/* 089ABC 8008CABC 3CC08009 */  lis       r6, mipsGet16@ha
/* 089AC0 8008CAC0 3CE08009 */  lis       r7, mipsGet32@ha
/* 089AC4 8008CAC4 80630024 */  lwz       r3, 0x24(r3)
/* 089AC8 8008CAC8 3C808009 */  lis       r4, mipsGet64@ha
/* 089ACC 8008CACC 3904CB18 */  addi      r8, r4, mipsGet64@l
/* 089AD0 8008CAD0 38A5CB90 */  addi      r5, r5, mipsGet8@l
/* 089AD4 8008CAD4 38C6CB88 */  addi      r6, r6, mipsGet16@l
/* 089AD8 8008CAD8 38E7CB20 */  addi      r7, r7, mipsGet32@l
/* 089ADC 8008CADC 389F0000 */  addi      r4, r31, 0x0
/* 089AE0 8008CAE0 4BFA7E1D */  bl        cpuSetDeviceGet
/* 089AE4 8008CAE4 2C030000 */  cmpwi     r3, 0x0
/* 089AE8 8008CAE8 40820014 */  bne       lbl_8008CAFC
/* 089AEC 8008CAEC 38600000 */  li        r3, 0x0
/* 089AF0 8008CAF0 48000010 */  b         lbl_8008CB00
lbl_8008CAF4:
/* 089AF4 8008CAF4 38600000 */  li        r3, 0x0
/* 089AF8 8008CAF8 48000008 */  b         lbl_8008CB00
lbl_8008CAFC:
/* 089AFC 8008CAFC 38600001 */  li        r3, 0x1
lbl_8008CB00:
/* 089B00 8008CB00 80010024 */  lwz       r0, 0x24(r1)
/* 089B04 8008CB04 83E1001C */  lwz       r31, 0x1c(r1)
/* 089B08 8008CB08 83C10018 */  lwz       r30, 0x18(r1)
/* 089B0C 8008CB0C 7C0803A6 */  mtlr      r0
/* 089B10 8008CB10 38210020 */  addi      r1, r1, 0x20
/* 089B14 8008CB14 4E800020 */  blr

glabel mipsGet64
/* 089B18 8008CB18 38600000 */  li        r3, 0x0
/* 089B1C 8008CB1C 4E800020 */  blr

glabel mipsGet32
/* 089B20 8008CB20 5480073E */  clrlwi    r0, r4, 28
/* 089B24 8008CB24 2800000C */  cmplwi    r0, 0xc
/* 089B28 8008CB28 41810050 */  bgt       lbl_8008CB78
/* 089B2C 8008CB2C 3C80800F */  lis       r4, jtbl_800EFBA0@ha
/* 089B30 8008CB30 3884FBA0 */  addi      r4, r4, jtbl_800EFBA0@l
/* 089B34 8008CB34 5400103A */  slwi      r0, r0, 2
/* 089B38 8008CB38 7C04002E */  lwzx      r0, r4, r0
/* 089B3C 8008CB3C 7C0903A6 */  mtctr     r0
/* 089B40 8008CB40 4E800420 */  bctr
lbl_8008CB44:
/* 089B44 8008CB44 80030004 */  lwz       r0, 0x4(r3)
/* 089B48 8008CB48 90050000 */  stw       r0, 0x0(r5)
/* 089B4C 8008CB4C 48000034 */  b         lbl_8008CB80
lbl_8008CB50:
/* 089B50 8008CB50 3C600202 */  lis       r3, 0x202
/* 089B54 8008CB54 38030102 */  addi      r0, r3, 0x102
/* 089B58 8008CB58 90050000 */  stw       r0, 0x0(r5)
/* 089B5C 8008CB5C 48000024 */  b         lbl_8008CB80
lbl_8008CB60:
/* 089B60 8008CB60 8003000C */  lwz       r0, 0xc(r3)
/* 089B64 8008CB64 90050000 */  stw       r0, 0x0(r5)
/* 089B68 8008CB68 48000018 */  b         lbl_8008CB80
lbl_8008CB6C:
/* 089B6C 8008CB6C 80030000 */  lwz       r0, 0x0(r3)
/* 089B70 8008CB70 90050000 */  stw       r0, 0x0(r5)
/* 089B74 8008CB74 4800000C */  b         lbl_8008CB80
lbl_8008CB78:
/* 089B78 8008CB78 38600000 */  li        r3, 0x0
/* 089B7C 8008CB7C 4E800020 */  blr
lbl_8008CB80:
/* 089B80 8008CB80 38600001 */  li        r3, 0x1
/* 089B84 8008CB84 4E800020 */  blr

glabel mipsGet16
/* 089B88 8008CB88 38600000 */  li        r3, 0x0
/* 089B8C 8008CB8C 4E800020 */  blr

glabel mipsGet8
/* 089B90 8008CB90 38600000 */  li        r3, 0x0
/* 089B94 8008CB94 4E800020 */  blr

glabel mipsPut64
/* 089B98 8008CB98 38600000 */  li        r3, 0x0
/* 089B9C 8008CB9C 4E800020 */  blr

glabel mipsPut32
/* 089BA0 8008CBA0 7C0802A6 */  mflr      r0
/* 089BA4 8008CBA4 90010004 */  stw       r0, 0x4(r1)
/* 089BA8 8008CBA8 5480073E */  clrlwi    r0, r4, 28
/* 089BAC 8008CBAC 2800000C */  cmplwi    r0, 0xc
/* 089BB0 8008CBB0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 089BB4 8008CBB4 93E1001C */  stw       r31, 0x1c(r1)
/* 089BB8 8008CBB8 93C10018 */  stw       r30, 0x18(r1)
/* 089BBC 8008CBBC 3BC30000 */  addi      r30, r3, 0x0
/* 089BC0 8008CBC0 418101C4 */  bgt       lbl_8008CD84
/* 089BC4 8008CBC4 3C60800F */  lis       r3, jtbl_800EFBD4@ha
/* 089BC8 8008CBC8 3863FBD4 */  addi      r3, r3, jtbl_800EFBD4@l
/* 089BCC 8008CBCC 5400103A */  slwi      r0, r0, 2
/* 089BD0 8008CBD0 7C03002E */  lwzx      r0, r3, r0
/* 089BD4 8008CBD4 7C0903A6 */  mtctr     r0
/* 089BD8 8008CBD8 4E800420 */  bctr
lbl_8008CBDC:
/* 089BDC 8008CBDC 80650000 */  lwz       r3, 0x0(r5)
/* 089BE0 8008CBE0 809E0004 */  lwz       r4, 0x4(r30)
/* 089BE4 8008CBE4 547F053E */  clrlwi    r31, r3, 20
/* 089BE8 8008CBE8 54600631 */  rlwinm.   r0, r3, 0, 24, 24
/* 089BEC 8008CBEC 5463067E */  clrlwi    r3, r3, 25
/* 089BF0 8008CBF0 50830030 */  rlwimi    r3, r4, 0, 0, 24
/* 089BF4 8008CBF4 907E0004 */  stw       r3, 0x4(r30)
/* 089BF8 8008CBF8 41820010 */  beq       lbl_8008CC08
/* 089BFC 8008CBFC 801E0004 */  lwz       r0, 0x4(r30)
/* 089C00 8008CC00 5400066E */  rlwinm    r0, r0, 0, 25, 23
/* 089C04 8008CC04 901E0004 */  stw       r0, 0x4(r30)
lbl_8008CC08:
/* 089C08 8008CC08 57E005EF */  rlwinm.   r0, r31, 0, 23, 23
/* 089C0C 8008CC0C 41820010 */  beq       lbl_8008CC1C
/* 089C10 8008CC10 801E0004 */  lwz       r0, 0x4(r30)
/* 089C14 8008CC14 60000080 */  ori       r0, r0, 0x80
/* 089C18 8008CC18 901E0004 */  stw       r0, 0x4(r30)
lbl_8008CC1C:
/* 089C1C 8008CC1C 57E005AD */  rlwinm.   r0, r31, 0, 22, 22
/* 089C20 8008CC20 41820010 */  beq       lbl_8008CC30
/* 089C24 8008CC24 801E0004 */  lwz       r0, 0x4(r30)
/* 089C28 8008CC28 5400062C */  rlwinm    r0, r0, 0, 24, 22
/* 089C2C 8008CC2C 901E0004 */  stw       r0, 0x4(r30)
lbl_8008CC30:
/* 089C30 8008CC30 57E0056B */  rlwinm.   r0, r31, 0, 21, 21
/* 089C34 8008CC34 41820010 */  beq       lbl_8008CC44
/* 089C38 8008CC38 801E0004 */  lwz       r0, 0x4(r30)
/* 089C3C 8008CC3C 60000100 */  ori       r0, r0, 0x100
/* 089C40 8008CC40 901E0004 */  stw       r0, 0x4(r30)
lbl_8008CC44:
/* 089C44 8008CC44 57E00529 */  rlwinm.   r0, r31, 0, 20, 20
/* 089C48 8008CC48 41820014 */  beq       lbl_8008CC5C
/* 089C4C 8008CC4C 807E0008 */  lwz       r3, 0x8(r30)
/* 089C50 8008CC50 38801001 */  li        r4, 0x1001
/* 089C54 8008CC54 38A0000A */  li        r5, 0xa
/* 089C58 8008CC58 4BF7AF75 */  bl        xlObjectEvent
lbl_8008CC5C:
/* 089C5C 8008CC5C 57E004E7 */  rlwinm.   r0, r31, 0, 19, 19
/* 089C60 8008CC60 41820010 */  beq       lbl_8008CC70
/* 089C64 8008CC64 801E0004 */  lwz       r0, 0x4(r30)
/* 089C68 8008CC68 540005EA */  rlwinm    r0, r0, 0, 23, 21
/* 089C6C 8008CC6C 901E0004 */  stw       r0, 0x4(r30)
lbl_8008CC70:
/* 089C70 8008CC70 57E004A5 */  rlwinm.   r0, r31, 0, 18, 18
/* 089C74 8008CC74 41820118 */  beq       lbl_8008CD8C
/* 089C78 8008CC78 801E0004 */  lwz       r0, 0x4(r30)
/* 089C7C 8008CC7C 60000200 */  ori       r0, r0, 0x200
/* 089C80 8008CC80 901E0004 */  stw       r0, 0x4(r30)
/* 089C84 8008CC84 48000108 */  b         lbl_8008CD8C
lbl_8008CC88:
/* 089C88 8008CC88 80650000 */  lwz       r3, 0x0(r5)
/* 089C8C 8008CC8C 546007FF */  clrlwi.   r0, r3, 31
/* 089C90 8008CC90 5460053E */  clrlwi    r0, r3, 20
/* 089C94 8008CC94 41820010 */  beq       lbl_8008CCA4
/* 089C98 8008CC98 807E0000 */  lwz       r3, 0x0(r30)
/* 089C9C 8008CC9C 5463003C */  clrrwi    r3, r3, 1
/* 089CA0 8008CCA0 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CCA4:
/* 089CA4 8008CCA4 540307BD */  rlwinm.   r3, r0, 0, 30, 30
/* 089CA8 8008CCA8 41820010 */  beq       lbl_8008CCB8
/* 089CAC 8008CCAC 807E0000 */  lwz       r3, 0x0(r30)
/* 089CB0 8008CCB0 60630001 */  ori       r3, r3, 0x1
/* 089CB4 8008CCB4 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CCB8:
/* 089CB8 8008CCB8 5403077B */  rlwinm.   r3, r0, 0, 29, 29
/* 089CBC 8008CCBC 41820010 */  beq       lbl_8008CCCC
/* 089CC0 8008CCC0 807E0000 */  lwz       r3, 0x0(r30)
/* 089CC4 8008CCC4 546307FA */  rlwinm    r3, r3, 0, 31, 29
/* 089CC8 8008CCC8 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CCCC:
/* 089CCC 8008CCCC 54030739 */  rlwinm.   r3, r0, 0, 28, 28
/* 089CD0 8008CCD0 41820010 */  beq       lbl_8008CCE0
/* 089CD4 8008CCD4 807E0000 */  lwz       r3, 0x0(r30)
/* 089CD8 8008CCD8 60630002 */  ori       r3, r3, 0x2
/* 089CDC 8008CCDC 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CCE0:
/* 089CE0 8008CCE0 540306F7 */  rlwinm.   r3, r0, 0, 27, 27
/* 089CE4 8008CCE4 41820010 */  beq       lbl_8008CCF4
/* 089CE8 8008CCE8 807E0000 */  lwz       r3, 0x0(r30)
/* 089CEC 8008CCEC 546307B8 */  rlwinm    r3, r3, 0, 30, 28
/* 089CF0 8008CCF0 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CCF4:
/* 089CF4 8008CCF4 540306B5 */  rlwinm.   r3, r0, 0, 26, 26
/* 089CF8 8008CCF8 41820010 */  beq       lbl_8008CD08
/* 089CFC 8008CCFC 807E0000 */  lwz       r3, 0x0(r30)
/* 089D00 8008CD00 60630004 */  ori       r3, r3, 0x4
/* 089D04 8008CD04 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CD08:
/* 089D08 8008CD08 54030673 */  rlwinm.   r3, r0, 0, 25, 25
/* 089D0C 8008CD0C 41820010 */  beq       lbl_8008CD1C
/* 089D10 8008CD10 807E0000 */  lwz       r3, 0x0(r30)
/* 089D14 8008CD14 54630776 */  rlwinm    r3, r3, 0, 29, 27
/* 089D18 8008CD18 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CD1C:
/* 089D1C 8008CD1C 54030631 */  rlwinm.   r3, r0, 0, 24, 24
/* 089D20 8008CD20 41820010 */  beq       lbl_8008CD30
/* 089D24 8008CD24 807E0000 */  lwz       r3, 0x0(r30)
/* 089D28 8008CD28 60630008 */  ori       r3, r3, 0x8
/* 089D2C 8008CD2C 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CD30:
/* 089D30 8008CD30 540305EF */  rlwinm.   r3, r0, 0, 23, 23
/* 089D34 8008CD34 41820010 */  beq       lbl_8008CD44
/* 089D38 8008CD38 807E0000 */  lwz       r3, 0x0(r30)
/* 089D3C 8008CD3C 54630734 */  rlwinm    r3, r3, 0, 28, 26
/* 089D40 8008CD40 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CD44:
/* 089D44 8008CD44 540305AD */  rlwinm.   r3, r0, 0, 22, 22
/* 089D48 8008CD48 41820010 */  beq       lbl_8008CD58
/* 089D4C 8008CD4C 807E0000 */  lwz       r3, 0x0(r30)
/* 089D50 8008CD50 60630010 */  ori       r3, r3, 0x10
/* 089D54 8008CD54 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CD58:
/* 089D58 8008CD58 5403056B */  rlwinm.   r3, r0, 0, 21, 21
/* 089D5C 8008CD5C 41820010 */  beq       lbl_8008CD6C
/* 089D60 8008CD60 807E0000 */  lwz       r3, 0x0(r30)
/* 089D64 8008CD64 546306F2 */  rlwinm    r3, r3, 0, 27, 25
/* 089D68 8008CD68 907E0000 */  stw       r3, 0x0(r30)
lbl_8008CD6C:
/* 089D6C 8008CD6C 54000529 */  rlwinm.   r0, r0, 0, 20, 20
/* 089D70 8008CD70 4182001C */  beq       lbl_8008CD8C
/* 089D74 8008CD74 801E0000 */  lwz       r0, 0x0(r30)
/* 089D78 8008CD78 60000020 */  ori       r0, r0, 0x20
/* 089D7C 8008CD7C 901E0000 */  stw       r0, 0x0(r30)
/* 089D80 8008CD80 4800000C */  b         lbl_8008CD8C
lbl_8008CD84:
/* 089D84 8008CD84 38600000 */  li        r3, 0x0
/* 089D88 8008CD88 48000008 */  b         lbl_8008CD90
lbl_8008CD8C:
/* 089D8C 8008CD8C 38600001 */  li        r3, 0x1
lbl_8008CD90:
/* 089D90 8008CD90 80010024 */  lwz       r0, 0x24(r1)
/* 089D94 8008CD94 83E1001C */  lwz       r31, 0x1c(r1)
/* 089D98 8008CD98 83C10018 */  lwz       r30, 0x18(r1)
/* 089D9C 8008CD9C 7C0803A6 */  mtlr      r0
/* 089DA0 8008CDA0 38210020 */  addi      r1, r1, 0x20
/* 089DA4 8008CDA4 4E800020 */  blr

glabel mipsPut16
/* 089DA8 8008CDA8 38600000 */  li        r3, 0x0
/* 089DAC 8008CDAC 4E800020 */  blr

glabel mipsPut8
/* 089DB0 8008CDB0 38600000 */  li        r3, 0x0
/* 089DB4 8008CDB4 4E800020 */  blr

glabel mipsResetInterrupt
/* 089DB8 8008CDB8 2C040003 */  cmpwi     r4, 0x3
/* 089DBC 8008CDBC 80A3000C */  lwz       r5, 0xc(r3)
/* 089DC0 8008CDC0 41820054 */  beq       lbl_8008CE14
/* 089DC4 8008CDC4 4080001C */  bge       lbl_8008CDE0
/* 089DC8 8008CDC8 2C040001 */  cmpwi     r4, 0x1
/* 089DCC 8008CDCC 41820030 */  beq       lbl_8008CDFC
/* 089DD0 8008CDD0 40800038 */  bge       lbl_8008CE08
/* 089DD4 8008CDD4 2C040000 */  cmpwi     r4, 0x0
/* 089DD8 8008CDD8 40800018 */  bge       lbl_8008CDF0
/* 089DDC 8008CDDC 4800005C */  b         lbl_8008CE38
lbl_8008CDE0:
/* 089DE0 8008CDE0 2C040005 */  cmpwi     r4, 0x5
/* 089DE4 8008CDE4 41820048 */  beq       lbl_8008CE2C
/* 089DE8 8008CDE8 40800050 */  bge       lbl_8008CE38
/* 089DEC 8008CDEC 48000034 */  b         lbl_8008CE20
lbl_8008CDF0:
/* 089DF0 8008CDF0 54A0003C */  clrrwi    r0, r5, 1
/* 089DF4 8008CDF4 9003000C */  stw       r0, 0xc(r3)
/* 089DF8 8008CDF8 48000048 */  b         lbl_8008CE40
lbl_8008CDFC:
/* 089DFC 8008CDFC 54A007FA */  rlwinm    r0, r5, 0, 31, 29
/* 089E00 8008CE00 9003000C */  stw       r0, 0xc(r3)
/* 089E04 8008CE04 4800003C */  b         lbl_8008CE40
lbl_8008CE08:
/* 089E08 8008CE08 54A007B8 */  rlwinm    r0, r5, 0, 30, 28
/* 089E0C 8008CE0C 9003000C */  stw       r0, 0xc(r3)
/* 089E10 8008CE10 48000030 */  b         lbl_8008CE40
lbl_8008CE14:
/* 089E14 8008CE14 54A00776 */  rlwinm    r0, r5, 0, 29, 27
/* 089E18 8008CE18 9003000C */  stw       r0, 0xc(r3)
/* 089E1C 8008CE1C 48000024 */  b         lbl_8008CE40
lbl_8008CE20:
/* 089E20 8008CE20 54A00734 */  rlwinm    r0, r5, 0, 28, 26
/* 089E24 8008CE24 9003000C */  stw       r0, 0xc(r3)
/* 089E28 8008CE28 48000018 */  b         lbl_8008CE40
lbl_8008CE2C:
/* 089E2C 8008CE2C 54A006F2 */  rlwinm    r0, r5, 0, 27, 25
/* 089E30 8008CE30 9003000C */  stw       r0, 0xc(r3)
/* 089E34 8008CE34 4800000C */  b         lbl_8008CE40
lbl_8008CE38:
/* 089E38 8008CE38 38600000 */  li        r3, 0x0
/* 089E3C 8008CE3C 4E800020 */  blr
lbl_8008CE40:
/* 089E40 8008CE40 8003000C */  lwz       r0, 0xc(r3)
/* 089E44 8008CE44 7C050000 */  cmpw      r5, r0
/* 089E48 8008CE48 4182000C */  beq       lbl_8008CE54
/* 089E4C 8008CE4C 38600001 */  li        r3, 0x1
/* 089E50 8008CE50 4E800020 */  blr
lbl_8008CE54:
/* 089E54 8008CE54 38600000 */  li        r3, 0x0
/* 089E58 8008CE58 4E800020 */  blr

glabel mipsSetInterrupt
/* 089E5C 8008CE5C 2C040003 */  cmpwi     r4, 0x3
/* 089E60 8008CE60 80A3000C */  lwz       r5, 0xc(r3)
/* 089E64 8008CE64 41820078 */  beq       lbl_8008CEDC
/* 089E68 8008CE68 4080001C */  bge       lbl_8008CE84
/* 089E6C 8008CE6C 2C040001 */  cmpwi     r4, 0x1
/* 089E70 8008CE70 4182003C */  beq       lbl_8008CEAC
/* 089E74 8008CE74 40800050 */  bge       lbl_8008CEC4
/* 089E78 8008CE78 2C040000 */  cmpwi     r4, 0x0
/* 089E7C 8008CE7C 40800018 */  bge       lbl_8008CE94
/* 089E80 8008CE80 480000A4 */  b         lbl_8008CF24
lbl_8008CE84:
/* 089E84 8008CE84 2C040005 */  cmpwi     r4, 0x5
/* 089E88 8008CE88 41820084 */  beq       lbl_8008CF0C
/* 089E8C 8008CE8C 40800098 */  bge       lbl_8008CF24
/* 089E90 8008CE90 48000064 */  b         lbl_8008CEF4
lbl_8008CE94:
/* 089E94 8008CE94 80030000 */  lwz       r0, 0x0(r3)
/* 089E98 8008CE98 540007FF */  clrlwi.   r0, r0, 31
/* 089E9C 8008CE9C 41820090 */  beq       lbl_8008CF2C
/* 089EA0 8008CEA0 60A00001 */  ori       r0, r5, 0x1
/* 089EA4 8008CEA4 9003000C */  stw       r0, 0xc(r3)
/* 089EA8 8008CEA8 48000084 */  b         lbl_8008CF2C
lbl_8008CEAC:
/* 089EAC 8008CEAC 80030000 */  lwz       r0, 0x0(r3)
/* 089EB0 8008CEB0 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 089EB4 8008CEB4 41820078 */  beq       lbl_8008CF2C
/* 089EB8 8008CEB8 60A00002 */  ori       r0, r5, 0x2
/* 089EBC 8008CEBC 9003000C */  stw       r0, 0xc(r3)
/* 089EC0 8008CEC0 4800006C */  b         lbl_8008CF2C
lbl_8008CEC4:
/* 089EC4 8008CEC4 80030000 */  lwz       r0, 0x0(r3)
/* 089EC8 8008CEC8 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 089ECC 8008CECC 41820060 */  beq       lbl_8008CF2C
/* 089ED0 8008CED0 60A00004 */  ori       r0, r5, 0x4
/* 089ED4 8008CED4 9003000C */  stw       r0, 0xc(r3)
/* 089ED8 8008CED8 48000054 */  b         lbl_8008CF2C
lbl_8008CEDC:
/* 089EDC 8008CEDC 80030000 */  lwz       r0, 0x0(r3)
/* 089EE0 8008CEE0 54000739 */  rlwinm.   r0, r0, 0, 28, 28
/* 089EE4 8008CEE4 41820048 */  beq       lbl_8008CF2C
/* 089EE8 8008CEE8 60A00008 */  ori       r0, r5, 0x8
/* 089EEC 8008CEEC 9003000C */  stw       r0, 0xc(r3)
/* 089EF0 8008CEF0 4800003C */  b         lbl_8008CF2C
lbl_8008CEF4:
/* 089EF4 8008CEF4 80030000 */  lwz       r0, 0x0(r3)
/* 089EF8 8008CEF8 540006F7 */  rlwinm.   r0, r0, 0, 27, 27
/* 089EFC 8008CEFC 41820030 */  beq       lbl_8008CF2C
/* 089F00 8008CF00 60A00010 */  ori       r0, r5, 0x10
/* 089F04 8008CF04 9003000C */  stw       r0, 0xc(r3)
/* 089F08 8008CF08 48000024 */  b         lbl_8008CF2C
lbl_8008CF0C:
/* 089F0C 8008CF0C 80030000 */  lwz       r0, 0x0(r3)
/* 089F10 8008CF10 540006B5 */  rlwinm.   r0, r0, 0, 26, 26
/* 089F14 8008CF14 41820018 */  beq       lbl_8008CF2C
/* 089F18 8008CF18 60A00020 */  ori       r0, r5, 0x20
/* 089F1C 8008CF1C 9003000C */  stw       r0, 0xc(r3)
/* 089F20 8008CF20 4800000C */  b         lbl_8008CF2C
lbl_8008CF24:
/* 089F24 8008CF24 38600000 */  li        r3, 0x0
/* 089F28 8008CF28 4E800020 */  blr
lbl_8008CF2C:
/* 089F2C 8008CF2C 8003000C */  lwz       r0, 0xc(r3)
/* 089F30 8008CF30 7C050000 */  cmpw      r5, r0
/* 089F34 8008CF34 4182000C */  beq       lbl_8008CF40
/* 089F38 8008CF38 38600001 */  li        r3, 0x1
/* 089F3C 8008CF3C 4E800020 */  blr
lbl_8008CF40:
/* 089F40 8008CF40 38600000 */  li        r3, 0x0
/* 089F44 8008CF44 4E800020 */  blr

# 0x800EFB90 - 0x800EFC08
.section .data, "wa"

.balign 8

glabel gClassMips
	.long D_8018B578
	.long 0x00000010
	.long 0x00000000
	.long mipsEvent

jtbl_800EFBA0:
	.long mipsGet32, lbl_8008CB44
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB50
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB60
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB78
	.long mipsGet32, lbl_8008CB6C

jtbl_800EFBD4:
	.long mipsPut32, lbl_8008CBDC
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD8C
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD8C
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CD84
	.long mipsPut32, lbl_8008CC88

# 0x8018B578 - 0x8018B580
.section .sdata, "wa"

glabel D_8018B578
	.long 0x4D495053
	.long 0x00000000
