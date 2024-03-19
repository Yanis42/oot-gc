# sram.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8008D8E0 - 0x8008DC44

glabel sramEvent
/* 08A8E0 8008D8E0 7C0802A6 */  mflr      r0
/* 08A8E4 8008D8E4 2C040003 */  cmpwi     r4, 0x3
/* 08A8E8 8008D8E8 90010004 */  stw       r0, 0x4(r1)
/* 08A8EC 8008D8EC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 08A8F0 8008D8F0 93E1001C */  stw       r31, 0x1c(r1)
/* 08A8F4 8008D8F4 3BE50000 */  addi      r31, r5, 0x0
/* 08A8F8 8008D8F8 93C10018 */  stw       r30, 0x18(r1)
/* 08A8FC 8008D8FC 3BC30000 */  addi      r30, r3, 0x0
/* 08A900 8008D900 418200B8 */  beq       lbl_8008D9B8
/* 08A904 8008D904 40800018 */  bge       lbl_8008D91C
/* 08A908 8008D908 2C040002 */  cmpwi     r4, 0x2
/* 08A90C 8008D90C 4080001C */  bge       lbl_8008D928
/* 08A910 8008D910 2C040000 */  cmpwi     r4, 0x0
/* 08A914 8008D914 408000A4 */  bge       lbl_8008D9B8
/* 08A918 8008D918 48000098 */  b         lbl_8008D9B0
lbl_8008D91C:
/* 08A91C 8008D91C 2C041002 */  cmpwi     r4, 0x1002
/* 08A920 8008D920 41820010 */  beq       lbl_8008D930
/* 08A924 8008D924 4800008C */  b         lbl_8008D9B0
lbl_8008D928:
/* 08A928 8008D928 93FE0000 */  stw       r31, 0x0(r30)
/* 08A92C 8008D92C 4800008C */  b         lbl_8008D9B8
lbl_8008D930:
/* 08A930 8008D930 807E0000 */  lwz       r3, 0x0(r30)
/* 08A934 8008D934 3CA08009 */  lis       r5, sramPut8@ha
/* 08A938 8008D938 3CC08009 */  lis       r6, sramPut16@ha
/* 08A93C 8008D93C 3CE08009 */  lis       r7, sramPut32@ha
/* 08A940 8008D940 80630024 */  lwz       r3, 0x24(r3)
/* 08A944 8008D944 3C808009 */  lis       r4, sramPut64@ha
/* 08A948 8008D948 3904DA94 */  addi      r8, r4, sramPut64@l
/* 08A94C 8008D94C 38A5DB24 */  addi      r5, r5, sramPut8@l
/* 08A950 8008D950 38C6DAF4 */  addi      r6, r6, sramPut16@l
/* 08A954 8008D954 38E7DAC4 */  addi      r7, r7, sramPut32@l
/* 08A958 8008D958 389F0000 */  addi      r4, r31, 0x0
/* 08A95C 8008D95C 4BFA6F89 */  bl        cpuSetDevicePut
/* 08A960 8008D960 2C030000 */  cmpwi     r3, 0x0
/* 08A964 8008D964 4082000C */  bne       lbl_8008D970
/* 08A968 8008D968 38600000 */  li        r3, 0x0
/* 08A96C 8008D96C 48000050 */  b         lbl_8008D9BC
lbl_8008D970:
/* 08A970 8008D970 807E0000 */  lwz       r3, 0x0(r30)
/* 08A974 8008D974 3CA08009 */  lis       r5, sramGet8@ha
/* 08A978 8008D978 3CC08009 */  lis       r6, sramGet16@ha
/* 08A97C 8008D97C 3CE08009 */  lis       r7, sramGet32@ha
/* 08A980 8008D980 80630024 */  lwz       r3, 0x24(r3)
/* 08A984 8008D984 3C808009 */  lis       r4, sramGet64@ha
/* 08A988 8008D988 3904D9D4 */  addi      r8, r4, sramGet64@l
/* 08A98C 8008D98C 38A5DA64 */  addi      r5, r5, sramGet8@l
/* 08A990 8008D990 38C6DA34 */  addi      r6, r6, sramGet16@l
/* 08A994 8008D994 38E7DA04 */  addi      r7, r7, sramGet32@l
/* 08A998 8008D998 389F0000 */  addi      r4, r31, 0x0
/* 08A99C 8008D99C 4BFA6F61 */  bl        cpuSetDeviceGet
/* 08A9A0 8008D9A0 2C030000 */  cmpwi     r3, 0x0
/* 08A9A4 8008D9A4 40820014 */  bne       lbl_8008D9B8
/* 08A9A8 8008D9A8 38600000 */  li        r3, 0x0
/* 08A9AC 8008D9AC 48000010 */  b         lbl_8008D9BC
lbl_8008D9B0:
/* 08A9B0 8008D9B0 38600000 */  li        r3, 0x0
/* 08A9B4 8008D9B4 48000008 */  b         lbl_8008D9BC
lbl_8008D9B8:
/* 08A9B8 8008D9B8 38600001 */  li        r3, 0x1
lbl_8008D9BC:
/* 08A9BC 8008D9BC 80010024 */  lwz       r0, 0x24(r1)
/* 08A9C0 8008D9C0 83E1001C */  lwz       r31, 0x1c(r1)
/* 08A9C4 8008D9C4 83C10018 */  lwz       r30, 0x18(r1)
/* 08A9C8 8008D9C8 7C0803A6 */  mtlr      r0
/* 08A9CC 8008D9CC 38210020 */  addi      r1, r1, 0x20
/* 08A9D0 8008D9D0 4E800020 */  blr

glabel sramGet64
/* 08A9D4 8008D9D4 7C0802A6 */  mflr      r0
/* 08A9D8 8008D9D8 5483047E */  clrlwi    r3, r4, 17
/* 08A9DC 8008D9DC 90010004 */  stw       r0, 0x4(r1)
/* 08A9E0 8008D9E0 38850000 */  addi      r4, r5, 0x0
/* 08A9E4 8008D9E4 38A00008 */  li        r5, 0x8
/* 08A9E8 8008D9E8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08A9EC 8008D9EC 4BF7B2CD */  bl        simulatorReadSRAM
/* 08A9F0 8008D9F0 8001000C */  lwz       r0, 0xc(r1)
/* 08A9F4 8008D9F4 38600001 */  li        r3, 0x1
/* 08A9F8 8008D9F8 38210008 */  addi      r1, r1, 0x8
/* 08A9FC 8008D9FC 7C0803A6 */  mtlr      r0
/* 08AA00 8008DA00 4E800020 */  blr

glabel sramGet32
/* 08AA04 8008DA04 7C0802A6 */  mflr      r0
/* 08AA08 8008DA08 5483047E */  clrlwi    r3, r4, 17
/* 08AA0C 8008DA0C 90010004 */  stw       r0, 0x4(r1)
/* 08AA10 8008DA10 38850000 */  addi      r4, r5, 0x0
/* 08AA14 8008DA14 38A00004 */  li        r5, 0x4
/* 08AA18 8008DA18 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08AA1C 8008DA1C 4BF7B29D */  bl        simulatorReadSRAM
/* 08AA20 8008DA20 8001000C */  lwz       r0, 0xc(r1)
/* 08AA24 8008DA24 38600001 */  li        r3, 0x1
/* 08AA28 8008DA28 38210008 */  addi      r1, r1, 0x8
/* 08AA2C 8008DA2C 7C0803A6 */  mtlr      r0
/* 08AA30 8008DA30 4E800020 */  blr

glabel sramGet16
/* 08AA34 8008DA34 7C0802A6 */  mflr      r0
/* 08AA38 8008DA38 5483047E */  clrlwi    r3, r4, 17
/* 08AA3C 8008DA3C 90010004 */  stw       r0, 0x4(r1)
/* 08AA40 8008DA40 38850000 */  addi      r4, r5, 0x0
/* 08AA44 8008DA44 38A00002 */  li        r5, 0x2
/* 08AA48 8008DA48 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08AA4C 8008DA4C 4BF7B26D */  bl        simulatorReadSRAM
/* 08AA50 8008DA50 8001000C */  lwz       r0, 0xc(r1)
/* 08AA54 8008DA54 38600001 */  li        r3, 0x1
/* 08AA58 8008DA58 38210008 */  addi      r1, r1, 0x8
/* 08AA5C 8008DA5C 7C0803A6 */  mtlr      r0
/* 08AA60 8008DA60 4E800020 */  blr

glabel sramGet8
/* 08AA64 8008DA64 7C0802A6 */  mflr      r0
/* 08AA68 8008DA68 5483047E */  clrlwi    r3, r4, 17
/* 08AA6C 8008DA6C 90010004 */  stw       r0, 0x4(r1)
/* 08AA70 8008DA70 38850000 */  addi      r4, r5, 0x0
/* 08AA74 8008DA74 38A00001 */  li        r5, 0x1
/* 08AA78 8008DA78 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08AA7C 8008DA7C 4BF7B23D */  bl        simulatorReadSRAM
/* 08AA80 8008DA80 8001000C */  lwz       r0, 0xc(r1)
/* 08AA84 8008DA84 38600001 */  li        r3, 0x1
/* 08AA88 8008DA88 38210008 */  addi      r1, r1, 0x8
/* 08AA8C 8008DA8C 7C0803A6 */  mtlr      r0
/* 08AA90 8008DA90 4E800020 */  blr

glabel sramPut64
/* 08AA94 8008DA94 7C0802A6 */  mflr      r0
/* 08AA98 8008DA98 5483047E */  clrlwi    r3, r4, 17
/* 08AA9C 8008DA9C 90010004 */  stw       r0, 0x4(r1)
/* 08AAA0 8008DAA0 38850000 */  addi      r4, r5, 0x0
/* 08AAA4 8008DAA4 38A00008 */  li        r5, 0x8
/* 08AAA8 8008DAA8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08AAAC 8008DAAC 4BF7B1D9 */  bl        simulatorWriteSRAM
/* 08AAB0 8008DAB0 8001000C */  lwz       r0, 0xc(r1)
/* 08AAB4 8008DAB4 38600001 */  li        r3, 0x1
/* 08AAB8 8008DAB8 38210008 */  addi      r1, r1, 0x8
/* 08AABC 8008DABC 7C0803A6 */  mtlr      r0
/* 08AAC0 8008DAC0 4E800020 */  blr

glabel sramPut32
/* 08AAC4 8008DAC4 7C0802A6 */  mflr      r0
/* 08AAC8 8008DAC8 5483047E */  clrlwi    r3, r4, 17
/* 08AACC 8008DACC 90010004 */  stw       r0, 0x4(r1)
/* 08AAD0 8008DAD0 38850000 */  addi      r4, r5, 0x0
/* 08AAD4 8008DAD4 38A00004 */  li        r5, 0x4
/* 08AAD8 8008DAD8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08AADC 8008DADC 4BF7B1A9 */  bl        simulatorWriteSRAM
/* 08AAE0 8008DAE0 8001000C */  lwz       r0, 0xc(r1)
/* 08AAE4 8008DAE4 38600001 */  li        r3, 0x1
/* 08AAE8 8008DAE8 38210008 */  addi      r1, r1, 0x8
/* 08AAEC 8008DAEC 7C0803A6 */  mtlr      r0
/* 08AAF0 8008DAF0 4E800020 */  blr

glabel sramPut16
/* 08AAF4 8008DAF4 7C0802A6 */  mflr      r0
/* 08AAF8 8008DAF8 5483047E */  clrlwi    r3, r4, 17
/* 08AAFC 8008DAFC 90010004 */  stw       r0, 0x4(r1)
/* 08AB00 8008DB00 38850000 */  addi      r4, r5, 0x0
/* 08AB04 8008DB04 38A00002 */  li        r5, 0x2
/* 08AB08 8008DB08 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08AB0C 8008DB0C 4BF7B179 */  bl        simulatorWriteSRAM
/* 08AB10 8008DB10 8001000C */  lwz       r0, 0xc(r1)
/* 08AB14 8008DB14 38600001 */  li        r3, 0x1
/* 08AB18 8008DB18 38210008 */  addi      r1, r1, 0x8
/* 08AB1C 8008DB1C 7C0803A6 */  mtlr      r0
/* 08AB20 8008DB20 4E800020 */  blr

glabel sramPut8
/* 08AB24 8008DB24 7C0802A6 */  mflr      r0
/* 08AB28 8008DB28 5483047E */  clrlwi    r3, r4, 17
/* 08AB2C 8008DB2C 90010004 */  stw       r0, 0x4(r1)
/* 08AB30 8008DB30 38850000 */  addi      r4, r5, 0x0
/* 08AB34 8008DB34 38A00001 */  li        r5, 0x1
/* 08AB38 8008DB38 9421FFF8 */  stwu      r1, -0x8(r1)
/* 08AB3C 8008DB3C 4BF7B149 */  bl        simulatorWriteSRAM
/* 08AB40 8008DB40 8001000C */  lwz       r0, 0xc(r1)
/* 08AB44 8008DB44 38600001 */  li        r3, 0x1
/* 08AB48 8008DB48 38210008 */  addi      r1, r1, 0x8
/* 08AB4C 8008DB4C 7C0803A6 */  mtlr      r0
/* 08AB50 8008DB50 4E800020 */  blr

glabel sramTransferSRAM
/* 08AB54 8008DB54 7C0802A6 */  mflr      r0
/* 08AB58 8008DB58 90010004 */  stw       r0, 0x4(r1)
/* 08AB5C 8008DB5C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 08AB60 8008DB60 93E10024 */  stw       r31, 0x24(r1)
/* 08AB64 8008DB64 7CBF2B78 */  mr        r31, r5
/* 08AB68 8008DB68 38A40000 */  addi      r5, r4, 0x0
/* 08AB6C 8008DB6C 90C10014 */  stw       r6, 0x14(r1)
/* 08AB70 8008DB70 38810018 */  addi      r4, r1, 0x18
/* 08AB74 8008DB74 38C10014 */  addi      r6, r1, 0x14
/* 08AB78 8008DB78 80630000 */  lwz       r3, 0x0(r3)
/* 08AB7C 8008DB7C 8063002C */  lwz       r3, 0x2c(r3)
/* 08AB80 8008DB80 4BFDED91 */  bl        ramGetBuffer
/* 08AB84 8008DB84 2C030000 */  cmpwi     r3, 0x0
/* 08AB88 8008DB88 4082000C */  bne       lbl_8008DB94
/* 08AB8C 8008DB8C 38600000 */  li        r3, 0x0
/* 08AB90 8008DB90 48000028 */  b         lbl_8008DBB8
lbl_8008DB94:
/* 08AB94 8008DB94 80810018 */  lwz       r4, 0x18(r1)
/* 08AB98 8008DB98 57E3047E */  clrlwi    r3, r31, 17
/* 08AB9C 8008DB9C 80A10014 */  lwz       r5, 0x14(r1)
/* 08ABA0 8008DBA0 4BF7B0E5 */  bl        simulatorWriteSRAM
/* 08ABA4 8008DBA4 2C030000 */  cmpwi     r3, 0x0
/* 08ABA8 8008DBA8 4082000C */  bne       lbl_8008DBB4
/* 08ABAC 8008DBAC 38600000 */  li        r3, 0x0
/* 08ABB0 8008DBB0 48000008 */  b         lbl_8008DBB8
lbl_8008DBB4:
/* 08ABB4 8008DBB4 38600001 */  li        r3, 0x1
lbl_8008DBB8:
/* 08ABB8 8008DBB8 8001002C */  lwz       r0, 0x2c(r1)
/* 08ABBC 8008DBBC 83E10024 */  lwz       r31, 0x24(r1)
/* 08ABC0 8008DBC0 38210028 */  addi      r1, r1, 0x28
/* 08ABC4 8008DBC4 7C0803A6 */  mtlr      r0
/* 08ABC8 8008DBC8 4E800020 */  blr

glabel sramCopySRAM
/* 08ABCC 8008DBCC 7C0802A6 */  mflr      r0
/* 08ABD0 8008DBD0 90010004 */  stw       r0, 0x4(r1)
/* 08ABD4 8008DBD4 9421FFD8 */  stwu      r1, -0x28(r1)
/* 08ABD8 8008DBD8 93E10024 */  stw       r31, 0x24(r1)
/* 08ABDC 8008DBDC 7CBF2B78 */  mr        r31, r5
/* 08ABE0 8008DBE0 38A40000 */  addi      r5, r4, 0x0
/* 08ABE4 8008DBE4 90C10014 */  stw       r6, 0x14(r1)
/* 08ABE8 8008DBE8 38810018 */  addi      r4, r1, 0x18
/* 08ABEC 8008DBEC 38C10014 */  addi      r6, r1, 0x14
/* 08ABF0 8008DBF0 80630000 */  lwz       r3, 0x0(r3)
/* 08ABF4 8008DBF4 8063002C */  lwz       r3, 0x2c(r3)
/* 08ABF8 8008DBF8 4BFDED19 */  bl        ramGetBuffer
/* 08ABFC 8008DBFC 2C030000 */  cmpwi     r3, 0x0
/* 08AC00 8008DC00 4082000C */  bne       lbl_8008DC0C
/* 08AC04 8008DC04 38600000 */  li        r3, 0x0
/* 08AC08 8008DC08 48000028 */  b         lbl_8008DC30
lbl_8008DC0C:
/* 08AC0C 8008DC0C 80810018 */  lwz       r4, 0x18(r1)
/* 08AC10 8008DC10 57E3047E */  clrlwi    r3, r31, 17
/* 08AC14 8008DC14 80A10014 */  lwz       r5, 0x14(r1)
/* 08AC18 8008DC18 4BF7B0A1 */  bl        simulatorReadSRAM
/* 08AC1C 8008DC1C 2C030000 */  cmpwi     r3, 0x0
/* 08AC20 8008DC20 4082000C */  bne       lbl_8008DC2C
/* 08AC24 8008DC24 38600000 */  li        r3, 0x0
/* 08AC28 8008DC28 48000008 */  b         lbl_8008DC30
lbl_8008DC2C:
/* 08AC2C 8008DC2C 38600001 */  li        r3, 0x1
lbl_8008DC30:
/* 08AC30 8008DC30 8001002C */  lwz       r0, 0x2c(r1)
/* 08AC34 8008DC34 83E10024 */  lwz       r31, 0x24(r1)
/* 08AC38 8008DC38 38210028 */  addi      r1, r1, 0x28
/* 08AC3C 8008DC3C 7C0803A6 */  mtlr      r0
/* 08AC40 8008DC40 4E800020 */  blr

# 0x800EFC28 - 0x800EFC38
.section .data, "wa"

.balign 8

glabel gClassSram
	.long D_8018B590
	.long 0x00000004
	.long 0x00000000
	.long sramEvent

# 0x8018B590 - 0x8018B598
.section .sdata, "wa"

glabel D_8018B590
	.long 0x5352414D
	.long 0x00000000
