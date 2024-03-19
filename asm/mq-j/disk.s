# disk.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8008CF48 - 0x8008D1D0

glabel diskEvent
/* 089F48 8008CF48 7C0802A6 */  mflr      r0
/* 089F4C 8008CF4C 2C040003 */  cmpwi     r4, 0x3
/* 089F50 8008CF50 90010004 */  stw       r0, 0x4(r1)
/* 089F54 8008CF54 9421FFE0 */  stwu      r1, -0x20(r1)
/* 089F58 8008CF58 93E1001C */  stw       r31, 0x1c(r1)
/* 089F5C 8008CF5C 3BE50000 */  addi      r31, r5, 0x0
/* 089F60 8008CF60 93C10018 */  stw       r30, 0x18(r1)
/* 089F64 8008CF64 3BC30000 */  addi      r30, r3, 0x0
/* 089F68 8008CF68 41820154 */  beq       lbl_8008D0BC
/* 089F6C 8008CF6C 40800018 */  bge       lbl_8008CF84
/* 089F70 8008CF70 2C040002 */  cmpwi     r4, 0x2
/* 089F74 8008CF74 4080001C */  bge       lbl_8008CF90
/* 089F78 8008CF78 2C040000 */  cmpwi     r4, 0x0
/* 089F7C 8008CF7C 40800140 */  bge       lbl_8008D0BC
/* 089F80 8008CF80 48000134 */  b         lbl_8008D0B4
lbl_8008CF84:
/* 089F84 8008CF84 2C041002 */  cmpwi     r4, 0x1002
/* 089F88 8008CF88 41820010 */  beq       lbl_8008CF98
/* 089F8C 8008CF8C 48000128 */  b         lbl_8008D0B4
lbl_8008CF90:
/* 089F90 8008CF90 93FE0000 */  stw       r31, 0x0(r30)
/* 089F94 8008CF94 48000128 */  b         lbl_8008D0BC
lbl_8008CF98:
/* 089F98 8008CF98 801F0000 */  lwz       r0, 0x0(r31)
/* 089F9C 8008CF9C 2C000001 */  cmpwi     r0, 0x1
/* 089FA0 8008CFA0 41820094 */  beq       lbl_8008D034
/* 089FA4 8008CFA4 40800118 */  bge       lbl_8008D0BC
/* 089FA8 8008CFA8 2C000000 */  cmpwi     r0, 0x0
/* 089FAC 8008CFAC 40800008 */  bge       lbl_8008CFB4
/* 089FB0 8008CFB0 4800010C */  b         lbl_8008D0BC
lbl_8008CFB4:
/* 089FB4 8008CFB4 807E0000 */  lwz       r3, 0x0(r30)
/* 089FB8 8008CFB8 3CA08009 */  lis       r5, diskPutDrive8@ha
/* 089FBC 8008CFBC 3CC08009 */  lis       r6, diskPutDrive16@ha
/* 089FC0 8008CFC0 3CE08009 */  lis       r7, diskPutDrive32@ha
/* 089FC4 8008CFC4 80630024 */  lwz       r3, 0x24(r3)
/* 089FC8 8008CFC8 3C808009 */  lis       r4, diskPutDrive64@ha
/* 089FCC 8008CFCC 3904D128 */  addi      r8, r4, diskPutDrive64@l
/* 089FD0 8008CFD0 38A5D164 */  addi      r5, r5, diskPutDrive8@l
/* 089FD4 8008CFD4 38C6D15C */  addi      r6, r6, diskPutDrive16@l
/* 089FD8 8008CFD8 38E7D130 */  addi      r7, r7, diskPutDrive32@l
/* 089FDC 8008CFDC 389F0000 */  addi      r4, r31, 0x0
/* 089FE0 8008CFE0 4BFA7905 */  bl        cpuSetDevicePut
/* 089FE4 8008CFE4 2C030000 */  cmpwi     r3, 0x0
/* 089FE8 8008CFE8 4082000C */  bne       lbl_8008CFF4
/* 089FEC 8008CFEC 38600000 */  li        r3, 0x0
/* 089FF0 8008CFF0 480000D0 */  b         lbl_8008D0C0
lbl_8008CFF4:
/* 089FF4 8008CFF4 807E0000 */  lwz       r3, 0x0(r30)
/* 089FF8 8008CFF8 3CA08009 */  lis       r5, diskGetDrive8@ha
/* 089FFC 8008CFFC 3CC08009 */  lis       r6, diskGetDrive16@ha
/* 08A000 8008D000 3CE08009 */  lis       r7, diskGetDrive32@ha
/* 08A004 8008D004 80630024 */  lwz       r3, 0x24(r3)
/* 08A008 8008D008 3C808009 */  lis       r4, diskGetDrive64@ha
/* 08A00C 8008D00C 3904D0D8 */  addi      r8, r4, diskGetDrive64@l
/* 08A010 8008D010 38A5D120 */  addi      r5, r5, diskGetDrive8@l
/* 08A014 8008D014 38C6D118 */  addi      r6, r6, diskGetDrive16@l
/* 08A018 8008D018 38E7D0E0 */  addi      r7, r7, diskGetDrive32@l
/* 08A01C 8008D01C 389F0000 */  addi      r4, r31, 0x0
/* 08A020 8008D020 4BFA78DD */  bl        cpuSetDeviceGet
/* 08A024 8008D024 2C030000 */  cmpwi     r3, 0x0
/* 08A028 8008D028 40820094 */  bne       lbl_8008D0BC
/* 08A02C 8008D02C 38600000 */  li        r3, 0x0
/* 08A030 8008D030 48000090 */  b         lbl_8008D0C0
lbl_8008D034:
/* 08A034 8008D034 807E0000 */  lwz       r3, 0x0(r30)
/* 08A038 8008D038 3CA08009 */  lis       r5, diskPutROM8@ha
/* 08A03C 8008D03C 3CC08009 */  lis       r6, diskPutROM16@ha
/* 08A040 8008D040 3CE08009 */  lis       r7, diskPutROM32@ha
/* 08A044 8008D044 80630024 */  lwz       r3, 0x24(r3)
/* 08A048 8008D048 3C808009 */  lis       r4, diskPutROM64@ha
/* 08A04C 8008D04C 3904D1B0 */  addi      r8, r4, diskPutROM64@l
/* 08A050 8008D050 38A5D1C8 */  addi      r5, r5, diskPutROM8@l
/* 08A054 8008D054 38C6D1C0 */  addi      r6, r6, diskPutROM16@l
/* 08A058 8008D058 38E7D1B8 */  addi      r7, r7, diskPutROM32@l
/* 08A05C 8008D05C 389F0000 */  addi      r4, r31, 0x0
/* 08A060 8008D060 4BFA7885 */  bl        cpuSetDevicePut
/* 08A064 8008D064 2C030000 */  cmpwi     r3, 0x0
/* 08A068 8008D068 4082000C */  bne       lbl_8008D074
/* 08A06C 8008D06C 38600000 */  li        r3, 0x0
/* 08A070 8008D070 48000050 */  b         lbl_8008D0C0
lbl_8008D074:
/* 08A074 8008D074 807E0000 */  lwz       r3, 0x0(r30)
/* 08A078 8008D078 3CA08009 */  lis       r5, diskGetROM8@ha
/* 08A07C 8008D07C 3CC08009 */  lis       r6, diskGetROM16@ha
/* 08A080 8008D080 3CE08009 */  lis       r7, diskGetROM32@ha
/* 08A084 8008D084 80630024 */  lwz       r3, 0x24(r3)
/* 08A088 8008D088 3C808009 */  lis       r4, diskGetROM64@ha
/* 08A08C 8008D08C 3904D16C */  addi      r8, r4, diskGetROM64@l
/* 08A090 8008D090 38A5D1A0 */  addi      r5, r5, diskGetROM8@l
/* 08A094 8008D094 38C6D190 */  addi      r6, r6, diskGetROM16@l
/* 08A098 8008D098 38E7D180 */  addi      r7, r7, diskGetROM32@l
/* 08A09C 8008D09C 389F0000 */  addi      r4, r31, 0x0
/* 08A0A0 8008D0A0 4BFA785D */  bl        cpuSetDeviceGet
/* 08A0A4 8008D0A4 2C030000 */  cmpwi     r3, 0x0
/* 08A0A8 8008D0A8 40820014 */  bne       lbl_8008D0BC
/* 08A0AC 8008D0AC 38600000 */  li        r3, 0x0
/* 08A0B0 8008D0B0 48000010 */  b         lbl_8008D0C0
lbl_8008D0B4:
/* 08A0B4 8008D0B4 38600000 */  li        r3, 0x0
/* 08A0B8 8008D0B8 48000008 */  b         lbl_8008D0C0
lbl_8008D0BC:
/* 08A0BC 8008D0BC 38600001 */  li        r3, 0x1
lbl_8008D0C0:
/* 08A0C0 8008D0C0 80010024 */  lwz       r0, 0x24(r1)
/* 08A0C4 8008D0C4 83E1001C */  lwz       r31, 0x1c(r1)
/* 08A0C8 8008D0C8 83C10018 */  lwz       r30, 0x18(r1)
/* 08A0CC 8008D0CC 7C0803A6 */  mtlr      r0
/* 08A0D0 8008D0D0 38210020 */  addi      r1, r1, 0x20
/* 08A0D4 8008D0D4 4E800020 */  blr

glabel diskGetDrive64
/* 08A0D8 8008D0D8 38600001 */  li        r3, 0x1
/* 08A0DC 8008D0DC 4E800020 */  blr

glabel diskGetDrive32
/* 08A0E0 8008D0E0 5480023E */  clrlwi    r0, r4, 8
/* 08A0E4 8008D0E4 2C000510 */  cmpwi     r0, 0x510
/* 08A0E8 8008D0E8 41820020 */  beq       lbl_8008D108
/* 08A0EC 8008D0EC 40800024 */  bge       lbl_8008D110
/* 08A0F0 8008D0F0 2C000508 */  cmpwi     r0, 0x508
/* 08A0F4 8008D0F4 41820008 */  beq       lbl_8008D0FC
/* 08A0F8 8008D0F8 48000018 */  b         lbl_8008D110
lbl_8008D0FC:
/* 08A0FC 8008D0FC 38000000 */  li        r0, 0x0
/* 08A100 8008D100 90050000 */  stw       r0, 0x0(r5)
/* 08A104 8008D104 4800000C */  b         lbl_8008D110
lbl_8008D108:
/* 08A108 8008D108 38600000 */  li        r3, 0x0
/* 08A10C 8008D10C 4E800020 */  blr
lbl_8008D110:
/* 08A110 8008D110 38600001 */  li        r3, 0x1
/* 08A114 8008D114 4E800020 */  blr

glabel diskGetDrive16
/* 08A118 8008D118 38600001 */  li        r3, 0x1
/* 08A11C 8008D11C 4E800020 */  blr

glabel diskGetDrive8
/* 08A120 8008D120 38600001 */  li        r3, 0x1
/* 08A124 8008D124 4E800020 */  blr

glabel diskPutDrive64
/* 08A128 8008D128 38600001 */  li        r3, 0x1
/* 08A12C 8008D12C 4E800020 */  blr

glabel diskPutDrive32
/* 08A130 8008D130 5480023E */  clrlwi    r0, r4, 8
/* 08A134 8008D134 2C000510 */  cmpwi     r0, 0x510
/* 08A138 8008D138 4182001C */  beq       lbl_8008D154
/* 08A13C 8008D13C 40800018 */  bge       lbl_8008D154
/* 08A140 8008D140 2C000508 */  cmpwi     r0, 0x508
/* 08A144 8008D144 41820008 */  beq       lbl_8008D14C
/* 08A148 8008D148 4800000C */  b         lbl_8008D154
lbl_8008D14C:
/* 08A14C 8008D14C 38600000 */  li        r3, 0x0
/* 08A150 8008D150 4E800020 */  blr
lbl_8008D154:
/* 08A154 8008D154 38600001 */  li        r3, 0x1
/* 08A158 8008D158 4E800020 */  blr

glabel diskPutDrive16
/* 08A15C 8008D15C 38600001 */  li        r3, 0x1
/* 08A160 8008D160 4E800020 */  blr

glabel diskPutDrive8
/* 08A164 8008D164 38600001 */  li        r3, 0x1
/* 08A168 8008D168 4E800020 */  blr

glabel diskGetROM64
/* 08A16C 8008D16C 38000000 */  li        r0, 0x0
/* 08A170 8008D170 90050004 */  stw       r0, 0x4(r5)
/* 08A174 8008D174 38600001 */  li        r3, 0x1
/* 08A178 8008D178 90050000 */  stw       r0, 0x0(r5)
/* 08A17C 8008D17C 4E800020 */  blr

glabel diskGetROM32
/* 08A180 8008D180 38000000 */  li        r0, 0x0
/* 08A184 8008D184 90050000 */  stw       r0, 0x0(r5)
/* 08A188 8008D188 38600001 */  li        r3, 0x1
/* 08A18C 8008D18C 4E800020 */  blr

glabel diskGetROM16
/* 08A190 8008D190 38000000 */  li        r0, 0x0
/* 08A194 8008D194 B0050000 */  sth       r0, 0x0(r5)
/* 08A198 8008D198 38600001 */  li        r3, 0x1
/* 08A19C 8008D19C 4E800020 */  blr

glabel diskGetROM8
/* 08A1A0 8008D1A0 38000000 */  li        r0, 0x0
/* 08A1A4 8008D1A4 98050000 */  stb       r0, 0x0(r5)
/* 08A1A8 8008D1A8 38600001 */  li        r3, 0x1
/* 08A1AC 8008D1AC 4E800020 */  blr

glabel diskPutROM64
/* 08A1B0 8008D1B0 38600001 */  li        r3, 0x1
/* 08A1B4 8008D1B4 4E800020 */  blr

glabel diskPutROM32
/* 08A1B8 8008D1B8 38600001 */  li        r3, 0x1
/* 08A1BC 8008D1BC 4E800020 */  blr

glabel diskPutROM16
/* 08A1C0 8008D1C0 38600001 */  li        r3, 0x1
/* 08A1C4 8008D1C4 4E800020 */  blr

glabel diskPutROM8
/* 08A1C8 8008D1C8 38600001 */  li        r3, 0x1
/* 08A1CC 8008D1CC 4E800020 */  blr

# 0x800EFC08 - 0x800EFC18
.section .data, "wa"

.balign 8

glabel gClassDisk
	.long D_8018B580
	.long 0x00000004
	.long 0x00000000
	.long diskEvent

# 0x8018B580 - 0x8018B588
.section .sdata, "wa"

glabel D_8018B580
	.long 0x4449534B
	.long 0x00000000
