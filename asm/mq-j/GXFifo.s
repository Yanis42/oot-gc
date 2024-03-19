# GXFifo.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A7F34 - 0x800A868C

glabel fn_800A7F34
/* 0A4F34 800A7F34 7C0802A6 */  mflr      r0
/* 0A4F38 800A7F38 90010004 */  stw       r0, 0x4(r1)
/* 0A4F3C 800A7F3C 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0A4F40 800A7F40 93E102DC */  stw       r31, 0x2dc(r1)
/* 0A4F44 800A7F44 7C9F2378 */  mr        r31, r4
/* 0A4F48 800A7F48 80AD8BFC */  lwz       r5, __cpReg@sda21(r0)
/* 0A4F4C 800A7F4C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A4F50 800A7F50 A0050000 */  lhz       r0, 0x0(r5)
/* 0A4F54 800A7F54 9003000C */  stw       r0, 0xc(r3)
/* 0A4F58 800A7F58 80030008 */  lwz       r0, 0x8(r3)
/* 0A4F5C 800A7F5C 5400EFFF */  extrwi.   r0, r0, 1, 28
/* 0A4F60 800A7F60 41820038 */  beq       lbl_800A7F98
/* 0A4F64 800A7F64 8003000C */  lwz       r0, 0xc(r3)
/* 0A4F68 800A7F68 5400FFFF */  extrwi.   r0, r0, 1, 30
/* 0A4F6C 800A7F6C 4182002C */  beq       lbl_800A7F98
/* 0A4F70 800A7F70 806D8C10 */  lwz       r3, D_8018BB90@sda21(r0)
/* 0A4F74 800A7F74 4BFF8ED9 */  bl        OSResumeThread
/* 0A4F78 800A7F78 38000000 */  li        r0, 0x0
/* 0A4F7C 800A7F7C 900D8C18 */  stw       r0, D_8018BB98@sda21(r0)
/* 0A4F80 800A7F80 38600001 */  li        r3, 0x1
/* 0A4F84 800A7F84 38800001 */  li        r4, 0x1
/* 0A4F88 800A7F88 480005B9 */  bl        fn_800A8540
/* 0A4F8C 800A7F8C 38600001 */  li        r3, 0x1
/* 0A4F90 800A7F90 38800000 */  li        r4, 0x0
/* 0A4F94 800A7F94 48000571 */  bl        fn_800A8504
lbl_800A7F98:
/* 0A4F98 800A7F98 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A4F9C 800A7F9C 80030008 */  lwz       r0, 0x8(r3)
/* 0A4FA0 800A7FA0 5400F7FF */  extrwi.   r0, r0, 1, 29
/* 0A4FA4 800A7FA4 41820044 */  beq       lbl_800A7FE8
/* 0A4FA8 800A7FA8 8003000C */  lwz       r0, 0xc(r3)
/* 0A4FAC 800A7FAC 540007FF */  clrlwi.   r0, r0, 31
/* 0A4FB0 800A7FB0 41820038 */  beq       lbl_800A7FE8
/* 0A4FB4 800A7FB4 80AD8C20 */  lwz       r5, D_8018BBA0@sda21(r0)
/* 0A4FB8 800A7FB8 38600000 */  li        r3, 0x0
/* 0A4FBC 800A7FBC 38800001 */  li        r4, 0x1
/* 0A4FC0 800A7FC0 38050001 */  addi      r0, r5, 0x1
/* 0A4FC4 800A7FC4 900D8C20 */  stw       r0, D_8018BBA0@sda21(r0)
/* 0A4FC8 800A7FC8 4800053D */  bl        fn_800A8504
/* 0A4FCC 800A7FCC 38600001 */  li        r3, 0x1
/* 0A4FD0 800A7FD0 38800000 */  li        r4, 0x0
/* 0A4FD4 800A7FD4 4800056D */  bl        fn_800A8540
/* 0A4FD8 800A7FD8 38000001 */  li        r0, 0x1
/* 0A4FDC 800A7FDC 806D8C10 */  lwz       r3, D_8018BB90@sda21(r0)
/* 0A4FE0 800A7FE0 900D8C18 */  stw       r0, D_8018BB98@sda21(r0)
/* 0A4FE4 800A7FE4 4BFF90F1 */  bl        OSSuspendThread
lbl_800A7FE8:
/* 0A4FE8 800A7FE8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A4FEC 800A7FEC 80830008 */  lwz       r4, 0x8(r3)
/* 0A4FF0 800A7FF0 38A30008 */  addi      r5, r3, 0x8
/* 0A4FF4 800A7FF4 5480DFFF */  extrwi.   r0, r4, 1, 26
/* 0A4FF8 800A7FF8 4182005C */  beq       lbl_800A8054
/* 0A4FFC 800A7FFC 8003000C */  lwz       r0, 0xc(r3)
/* 0A5000 800A8000 5400E7FF */  extrwi.   r0, r0, 1, 27
/* 0A5004 800A8004 41820050 */  beq       lbl_800A8054
/* 0A5008 800A8008 548006F2 */  rlwinm    r0, r4, 0, 27, 25
/* 0A500C 800A800C 90050000 */  stw       r0, 0x0(r5)
/* 0A5010 800A8010 80030008 */  lwz       r0, 0x8(r3)
/* 0A5014 800A8014 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5018 800A8018 B0030002 */  sth       r0, 0x2(r3)
/* 0A501C 800A801C 800D8C1C */  lwz       r0, D_8018BB9C@sda21(r0)
/* 0A5020 800A8020 28000000 */  cmplwi    r0, 0x0
/* 0A5024 800A8024 41820030 */  beq       lbl_800A8054
/* 0A5028 800A8028 38610010 */  addi      r3, r1, 0x10
/* 0A502C 800A802C 4BFF56C5 */  bl        OSClearContext
/* 0A5030 800A8030 38610010 */  addi      r3, r1, 0x10
/* 0A5034 800A8034 4BFF54F5 */  bl        OSSetCurrentContext
/* 0A5038 800A8038 818D8C1C */  lwz       r12, D_8018BB9C@sda21(r0)
/* 0A503C 800A803C 7D8803A6 */  mtlr      r12
/* 0A5040 800A8040 4E800021 */  blrl
/* 0A5044 800A8044 38610010 */  addi      r3, r1, 0x10
/* 0A5048 800A8048 4BFF56A9 */  bl        OSClearContext
/* 0A504C 800A804C 7FE3FB78 */  mr        r3, r31
/* 0A5050 800A8050 4BFF54D9 */  bl        OSSetCurrentContext
lbl_800A8054:
/* 0A5054 800A8054 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0A5058 800A8058 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0A505C 800A805C 382102E0 */  addi      r1, r1, 0x2e0
/* 0A5060 800A8060 7C0803A6 */  mtlr      r0
/* 0A5064 800A8064 4E800020 */  blr

glabel GXInitFifoBase
/* 0A5068 800A8068 7C0802A6 */  mflr      r0
/* 0A506C 800A806C 90010004 */  stw       r0, 0x4(r1)
/* 0A5070 800A8070 3805FFFC */  subi      r0, r5, 0x4
/* 0A5074 800A8074 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A5078 800A8078 93E1001C */  stw       r31, 0x1c(r1)
/* 0A507C 800A807C 3BE40000 */  addi      r31, r4, 0x0
/* 0A5080 800A8080 7C1F0214 */  add       r0, r31, r0
/* 0A5084 800A8084 93C10018 */  stw       r30, 0x18(r1)
/* 0A5088 800A8088 3BC30000 */  addi      r30, r3, 0x0
/* 0A508C 800A808C 3885C000 */  subi      r4, r5, 0x4000
/* 0A5090 800A8090 93E30000 */  stw       r31, 0x0(r3)
/* 0A5094 800A8094 90030004 */  stw       r0, 0x4(r3)
/* 0A5098 800A8098 38000000 */  li        r0, 0x0
/* 0A509C 800A809C 90A30008 */  stw       r5, 0x8(r3)
/* 0A50A0 800A80A0 54A5F874 */  rlwinm    r5, r5, 31, 1, 26
/* 0A50A4 800A80A4 901E001C */  stw       r0, 0x1c(r30)
/* 0A50A8 800A80A8 4800009D */  bl        fn_800A8144
/* 0A50AC 800A80AC 387E0000 */  addi      r3, r30, 0x0
/* 0A50B0 800A80B0 389F0000 */  addi      r4, r31, 0x0
/* 0A50B4 800A80B4 38BF0000 */  addi      r5, r31, 0x0
/* 0A50B8 800A80B8 4800001D */  bl        fn_800A80D4
/* 0A50BC 800A80BC 80010024 */  lwz       r0, 0x24(r1)
/* 0A50C0 800A80C0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A50C4 800A80C4 83C10018 */  lwz       r30, 0x18(r1)
/* 0A50C8 800A80C8 38210020 */  addi      r1, r1, 0x20
/* 0A50CC 800A80CC 7C0803A6 */  mtlr      r0
/* 0A50D0 800A80D0 4E800020 */  blr

glabel fn_800A80D4
/* 0A50D4 800A80D4 7C0802A6 */  mflr      r0
/* 0A50D8 800A80D8 90010004 */  stw       r0, 0x4(r1)
/* 0A50DC 800A80DC 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A50E0 800A80E0 93E10024 */  stw       r31, 0x24(r1)
/* 0A50E4 800A80E4 3BE50000 */  addi      r31, r5, 0x0
/* 0A50E8 800A80E8 93C10020 */  stw       r30, 0x20(r1)
/* 0A50EC 800A80EC 3BC40000 */  addi      r30, r4, 0x0
/* 0A50F0 800A80F0 93A1001C */  stw       r29, 0x1c(r1)
/* 0A50F4 800A80F4 3BA30000 */  addi      r29, r3, 0x0
/* 0A50F8 800A80F8 4BFF6151 */  bl        OSDisableInterrupts
/* 0A50FC 800A80FC 93DD0014 */  stw       r30, 0x14(r29)
/* 0A5100 800A8100 7C1EF850 */  subf      r0, r30, r31
/* 0A5104 800A8104 93FD0018 */  stw       r31, 0x18(r29)
/* 0A5108 800A8108 901D001C */  stw       r0, 0x1c(r29)
/* 0A510C 800A810C 809D001C */  lwz       r4, 0x1c(r29)
/* 0A5110 800A8110 2C040000 */  cmpwi     r4, 0x0
/* 0A5114 800A8114 40800010 */  bge       lbl_800A8124
/* 0A5118 800A8118 801D0008 */  lwz       r0, 0x8(r29)
/* 0A511C 800A811C 7C040214 */  add       r0, r4, r0
/* 0A5120 800A8120 901D001C */  stw       r0, 0x1c(r29)
lbl_800A8124:
/* 0A5124 800A8124 4BFF614D */  bl        OSRestoreInterrupts
/* 0A5128 800A8128 8001002C */  lwz       r0, 0x2c(r1)
/* 0A512C 800A812C 83E10024 */  lwz       r31, 0x24(r1)
/* 0A5130 800A8130 83C10020 */  lwz       r30, 0x20(r1)
/* 0A5134 800A8134 83A1001C */  lwz       r29, 0x1c(r1)
/* 0A5138 800A8138 38210028 */  addi      r1, r1, 0x28
/* 0A513C 800A813C 7C0803A6 */  mtlr      r0
/* 0A5140 800A8140 4E800020 */  blr

glabel fn_800A8144
/* 0A5144 800A8144 9083000C */  stw       r4, 0xc(r3)
/* 0A5148 800A8148 90A30010 */  stw       r5, 0x10(r3)
/* 0A514C 800A814C 4E800020 */  blr

glabel GXSetCPUFifo
/* 0A5150 800A8150 7C0802A6 */  mflr      r0
/* 0A5154 800A8154 90010004 */  stw       r0, 0x4(r1)
/* 0A5158 800A8158 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A515C 800A815C 93E10014 */  stw       r31, 0x14(r1)
/* 0A5160 800A8160 93C10010 */  stw       r30, 0x10(r1)
/* 0A5164 800A8164 7C7E1B78 */  mr        r30, r3
/* 0A5168 800A8168 4BFF60E1 */  bl        OSDisableInterrupts
/* 0A516C 800A816C 800D8C0C */  lwz       r0, D_8018BB8C@sda21(r0)
/* 0A5170 800A8170 3BE30000 */  addi      r31, r3, 0x0
/* 0A5174 800A8174 93CD8C08 */  stw       r30, D_8018BB88@sda21(r0)
/* 0A5178 800A8178 7C1E0040 */  cmplw     r30, r0
/* 0A517C 800A817C 40820064 */  bne       lbl_800A81E0
/* 0A5180 800A8180 80BE0000 */  lwz       r5, 0x0(r30)
/* 0A5184 800A8184 38000001 */  li        r0, 0x1
/* 0A5188 800A8188 808D8BF8 */  lwz       r4, __piReg@sda21(r0)
/* 0A518C 800A818C 38600001 */  li        r3, 0x1
/* 0A5190 800A8190 54A500BE */  clrlwi    r5, r5, 2
/* 0A5194 800A8194 90A4000C */  stw       r5, 0xc(r4)
/* 0A5198 800A8198 38800001 */  li        r4, 0x1
/* 0A519C 800A819C 80DE0004 */  lwz       r6, 0x4(r30)
/* 0A51A0 800A81A0 80AD8BF8 */  lwz       r5, __piReg@sda21(r0)
/* 0A51A4 800A81A4 54C600BE */  clrlwi    r6, r6, 2
/* 0A51A8 800A81A8 90C50010 */  stw       r6, 0x10(r5)
/* 0A51AC 800A81AC 80DE0018 */  lwz       r6, 0x18(r30)
/* 0A51B0 800A81B0 80AD8BF8 */  lwz       r5, __piReg@sda21(r0)
/* 0A51B4 800A81B4 54C600B4 */  rlwinm    r6, r6, 0, 2, 26
/* 0A51B8 800A81B8 54C60188 */  rlwinm    r6, r6, 0, 6, 4
/* 0A51BC 800A81BC 90C50014 */  stw       r6, 0x14(r5)
/* 0A51C0 800A81C0 980D8C14 */  stb       r0, D_8018BB94@sda21(r0)
/* 0A51C4 800A81C4 4800037D */  bl        fn_800A8540
/* 0A51C8 800A81C8 38600001 */  li        r3, 0x1
/* 0A51CC 800A81CC 38800000 */  li        r4, 0x0
/* 0A51D0 800A81D0 48000335 */  bl        fn_800A8504
/* 0A51D4 800A81D4 38600001 */  li        r3, 0x1
/* 0A51D8 800A81D8 480002F1 */  bl        fn_800A84C8
/* 0A51DC 800A81DC 48000060 */  b         lbl_800A823C
lbl_800A81E0:
/* 0A51E0 800A81E0 880D8C14 */  lbz       r0, D_8018BB94@sda21(r0)
/* 0A51E4 800A81E4 28000000 */  cmplwi    r0, 0x0
/* 0A51E8 800A81E8 41820014 */  beq       lbl_800A81FC
/* 0A51EC 800A81EC 38600000 */  li        r3, 0x0
/* 0A51F0 800A81F0 480002D9 */  bl        fn_800A84C8
/* 0A51F4 800A81F4 38000000 */  li        r0, 0x0
/* 0A51F8 800A81F8 980D8C14 */  stb       r0, D_8018BB94@sda21(r0)
lbl_800A81FC:
/* 0A51FC 800A81FC 38600000 */  li        r3, 0x0
/* 0A5200 800A8200 38800000 */  li        r4, 0x0
/* 0A5204 800A8204 48000301 */  bl        fn_800A8504
/* 0A5208 800A8208 801E0000 */  lwz       r0, 0x0(r30)
/* 0A520C 800A820C 806D8BF8 */  lwz       r3, __piReg@sda21(r0)
/* 0A5210 800A8210 540000BE */  clrlwi    r0, r0, 2
/* 0A5214 800A8214 9003000C */  stw       r0, 0xc(r3)
/* 0A5218 800A8218 801E0004 */  lwz       r0, 0x4(r30)
/* 0A521C 800A821C 806D8BF8 */  lwz       r3, __piReg@sda21(r0)
/* 0A5220 800A8220 540000BE */  clrlwi    r0, r0, 2
/* 0A5224 800A8224 90030010 */  stw       r0, 0x10(r3)
/* 0A5228 800A8228 801E0018 */  lwz       r0, 0x18(r30)
/* 0A522C 800A822C 806D8BF8 */  lwz       r3, __piReg@sda21(r0)
/* 0A5230 800A8230 540000B4 */  rlwinm    r0, r0, 0, 2, 26
/* 0A5234 800A8234 54000188 */  rlwinm    r0, r0, 0, 6, 4
/* 0A5238 800A8238 90030014 */  stw       r0, 0x14(r3)
lbl_800A823C:
/* 0A523C 800A823C 4BFF3081 */  bl        fn_8009B2BC
/* 0A5240 800A8240 7FE3FB78 */  mr        r3, r31
/* 0A5244 800A8244 4BFF602D */  bl        OSRestoreInterrupts
/* 0A5248 800A8248 8001001C */  lwz       r0, 0x1c(r1)
/* 0A524C 800A824C 83E10014 */  lwz       r31, 0x14(r1)
/* 0A5250 800A8250 83C10010 */  lwz       r30, 0x10(r1)
/* 0A5254 800A8254 38210018 */  addi      r1, r1, 0x18
/* 0A5258 800A8258 7C0803A6 */  mtlr      r0
/* 0A525C 800A825C 4E800020 */  blr

glabel GXSetGPFifo
/* 0A5260 800A8260 7C0802A6 */  mflr      r0
/* 0A5264 800A8264 90010004 */  stw       r0, 0x4(r1)
/* 0A5268 800A8268 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A526C 800A826C 93E10014 */  stw       r31, 0x14(r1)
/* 0A5270 800A8270 93C10010 */  stw       r30, 0x10(r1)
/* 0A5274 800A8274 7C7E1B78 */  mr        r30, r3
/* 0A5278 800A8278 4BFF5FD1 */  bl        OSDisableInterrupts
/* 0A527C 800A827C 7C7F1B78 */  mr        r31, r3
/* 0A5280 800A8280 48000229 */  bl        fn_800A84A8
/* 0A5284 800A8284 38600000 */  li        r3, 0x0
/* 0A5288 800A8288 38800000 */  li        r4, 0x0
/* 0A528C 800A828C 48000279 */  bl        fn_800A8504
/* 0A5290 800A8290 93CD8C0C */  stw       r30, D_8018BB8C@sda21(r0)
/* 0A5294 800A8294 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5298 800A8298 801E0000 */  lwz       r0, 0x0(r30)
/* 0A529C 800A829C B0030020 */  sth       r0, 0x20(r3)
/* 0A52A0 800A82A0 801E0004 */  lwz       r0, 0x4(r30)
/* 0A52A4 800A82A4 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A52A8 800A82A8 B0030024 */  sth       r0, 0x24(r3)
/* 0A52AC 800A82AC 801E001C */  lwz       r0, 0x1c(r30)
/* 0A52B0 800A82B0 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A52B4 800A82B4 B0030030 */  sth       r0, 0x30(r3)
/* 0A52B8 800A82B8 801E0018 */  lwz       r0, 0x18(r30)
/* 0A52BC 800A82BC 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A52C0 800A82C0 B0030034 */  sth       r0, 0x34(r3)
/* 0A52C4 800A82C4 801E0014 */  lwz       r0, 0x14(r30)
/* 0A52C8 800A82C8 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A52CC 800A82CC B0030038 */  sth       r0, 0x38(r3)
/* 0A52D0 800A82D0 801E000C */  lwz       r0, 0xc(r30)
/* 0A52D4 800A82D4 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A52D8 800A82D8 B0030028 */  sth       r0, 0x28(r3)
/* 0A52DC 800A82DC 801E0010 */  lwz       r0, 0x10(r30)
/* 0A52E0 800A82E0 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A52E4 800A82E4 B003002C */  sth       r0, 0x2c(r3)
/* 0A52E8 800A82E8 801E0000 */  lwz       r0, 0x0(r30)
/* 0A52EC 800A82EC 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A52F0 800A82F0 540084BE */  extrwi    r0, r0, 14, 2
/* 0A52F4 800A82F4 B0030022 */  sth       r0, 0x22(r3)
/* 0A52F8 800A82F8 801E0004 */  lwz       r0, 0x4(r30)
/* 0A52FC 800A82FC 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5300 800A8300 540084BE */  extrwi    r0, r0, 14, 2
/* 0A5304 800A8304 B0030026 */  sth       r0, 0x26(r3)
/* 0A5308 800A8308 801E001C */  lwz       r0, 0x1c(r30)
/* 0A530C 800A830C 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5310 800A8310 7C008670 */  srawi     r0, r0, 16
/* 0A5314 800A8314 B0030032 */  sth       r0, 0x32(r3)
/* 0A5318 800A8318 801E0018 */  lwz       r0, 0x18(r30)
/* 0A531C 800A831C 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5320 800A8320 540084BE */  extrwi    r0, r0, 14, 2
/* 0A5324 800A8324 B0030036 */  sth       r0, 0x36(r3)
/* 0A5328 800A8328 801E0014 */  lwz       r0, 0x14(r30)
/* 0A532C 800A832C 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5330 800A8330 540084BE */  extrwi    r0, r0, 14, 2
/* 0A5334 800A8334 B003003A */  sth       r0, 0x3a(r3)
/* 0A5338 800A8338 801E000C */  lwz       r0, 0xc(r30)
/* 0A533C 800A833C 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5340 800A8340 5400843E */  srwi      r0, r0, 16
/* 0A5344 800A8344 B003002A */  sth       r0, 0x2a(r3)
/* 0A5348 800A8348 801E0010 */  lwz       r0, 0x10(r30)
/* 0A534C 800A834C 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5350 800A8350 5400843E */  srwi      r0, r0, 16
/* 0A5354 800A8354 B003002E */  sth       r0, 0x2e(r3)
/* 0A5358 800A8358 4BFF2F65 */  bl        fn_8009B2BC
/* 0A535C 800A835C 806D8C08 */  lwz       r3, D_8018BB88@sda21(r0)
/* 0A5360 800A8360 800D8C0C */  lwz       r0, D_8018BB8C@sda21(r0)
/* 0A5364 800A8364 7C030040 */  cmplw     r3, r0
/* 0A5368 800A8368 40820024 */  bne       lbl_800A838C
/* 0A536C 800A836C 38000001 */  li        r0, 0x1
/* 0A5370 800A8370 980D8C14 */  stb       r0, D_8018BB94@sda21(r0)
/* 0A5374 800A8374 38600001 */  li        r3, 0x1
/* 0A5378 800A8378 38800000 */  li        r4, 0x0
/* 0A537C 800A837C 48000189 */  bl        fn_800A8504
/* 0A5380 800A8380 38600001 */  li        r3, 0x1
/* 0A5384 800A8384 48000145 */  bl        fn_800A84C8
/* 0A5388 800A8388 48000020 */  b         lbl_800A83A8
lbl_800A838C:
/* 0A538C 800A838C 38000000 */  li        r0, 0x0
/* 0A5390 800A8390 980D8C14 */  stb       r0, D_8018BB94@sda21(r0)
/* 0A5394 800A8394 38600000 */  li        r3, 0x0
/* 0A5398 800A8398 38800000 */  li        r4, 0x0
/* 0A539C 800A839C 48000169 */  bl        fn_800A8504
/* 0A53A0 800A83A0 38600000 */  li        r3, 0x0
/* 0A53A4 800A83A4 48000125 */  bl        fn_800A84C8
lbl_800A83A8:
/* 0A53A8 800A83A8 38600001 */  li        r3, 0x1
/* 0A53AC 800A83AC 38800001 */  li        r4, 0x1
/* 0A53B0 800A83B0 48000191 */  bl        fn_800A8540
/* 0A53B4 800A83B4 480000D1 */  bl        fn_800A8484
/* 0A53B8 800A83B8 7FE3FB78 */  mr        r3, r31
/* 0A53BC 800A83BC 4BFF5EB5 */  bl        OSRestoreInterrupts
/* 0A53C0 800A83C0 8001001C */  lwz       r0, 0x1c(r1)
/* 0A53C4 800A83C4 83E10014 */  lwz       r31, 0x14(r1)
/* 0A53C8 800A83C8 83C10010 */  lwz       r30, 0x10(r1)
/* 0A53CC 800A83CC 38210018 */  addi      r1, r1, 0x18
/* 0A53D0 800A83D0 7C0803A6 */  mtlr      r0
/* 0A53D4 800A83D4 4E800020 */  blr

glabel fn_800A83D8
/* 0A53D8 800A83D8 812D8BFC */  lwz       r9, __cpReg@sda21(r0)
/* 0A53DC 800A83DC 81028400 */  lwz       r8, gx@sda21(r0)
/* 0A53E0 800A83E0 A0090000 */  lhz       r0, 0x0(r9)
/* 0A53E4 800A83E4 9008000C */  stw       r0, 0xc(r8)
/* 0A53E8 800A83E8 8008000C */  lwz       r0, 0xc(r8)
/* 0A53EC 800A83EC 540007FE */  clrlwi    r0, r0, 31
/* 0A53F0 800A83F0 98030000 */  stb       r0, 0x0(r3)
/* 0A53F4 800A83F4 8008000C */  lwz       r0, 0xc(r8)
/* 0A53F8 800A83F8 5400FFFE */  extrwi    r0, r0, 1, 30
/* 0A53FC 800A83FC 98040000 */  stb       r0, 0x0(r4)
/* 0A5400 800A8400 8008000C */  lwz       r0, 0xc(r8)
/* 0A5404 800A8404 5400F7FE */  extrwi    r0, r0, 1, 29
/* 0A5408 800A8408 98050000 */  stb       r0, 0x0(r5)
/* 0A540C 800A840C 8008000C */  lwz       r0, 0xc(r8)
/* 0A5410 800A8410 5400EFFE */  extrwi    r0, r0, 1, 28
/* 0A5414 800A8414 98060000 */  stb       r0, 0x0(r6)
/* 0A5418 800A8418 8008000C */  lwz       r0, 0xc(r8)
/* 0A541C 800A841C 5400E7FE */  extrwi    r0, r0, 1, 27
/* 0A5420 800A8420 98070000 */  stb       r0, 0x0(r7)
/* 0A5424 800A8424 4E800020 */  blr

glabel fn_800A8428
/* 0A5428 800A8428 80630000 */  lwz       r3, 0x0(r3)
/* 0A542C 800A842C 4E800020 */  blr

glabel fn_800A8430
/* 0A5430 800A8430 80630008 */  lwz       r3, 0x8(r3)
/* 0A5434 800A8434 4E800020 */  blr

glabel __GXFifoInit
/* 0A5438 800A8438 7C0802A6 */  mflr      r0
/* 0A543C 800A843C 3C60800A */  lis       r3, fn_800A7F34@ha
/* 0A5440 800A8440 90010004 */  stw       r0, 0x4(r1)
/* 0A5444 800A8444 38837F34 */  addi      r4, r3, fn_800A7F34@l
/* 0A5448 800A8448 38600011 */  li        r3, 0x11
/* 0A544C 800A844C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A5450 800A8450 4BFF5E45 */  bl        __OSSetInterruptHandler
/* 0A5454 800A8454 38604000 */  li        r3, 0x4000
/* 0A5458 800A8458 4BFF6241 */  bl        __OSUnmaskInterrupts
/* 0A545C 800A845C 4BFF8021 */  bl        OSGetCurrentThread
/* 0A5460 800A8460 38000000 */  li        r0, 0x0
/* 0A5464 800A8464 906D8C10 */  stw       r3, D_8018BB90@sda21(r0)
/* 0A5468 800A8468 900D8C18 */  stw       r0, D_8018BB98@sda21(r0)
/* 0A546C 800A846C 900D8C08 */  stw       r0, D_8018BB88@sda21(r0)
/* 0A5470 800A8470 900D8C0C */  stw       r0, D_8018BB8C@sda21(r0)
/* 0A5474 800A8474 8001000C */  lwz       r0, 0xc(r1)
/* 0A5478 800A8478 38210008 */  addi      r1, r1, 0x8
/* 0A547C 800A847C 7C0803A6 */  mtlr      r0
/* 0A5480 800A8480 4E800020 */  blr

glabel fn_800A8484
/* 0A5484 800A8484 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5488 800A8488 80030008 */  lwz       r0, 0x8(r3)
/* 0A548C 800A848C 5400003C */  clrrwi    r0, r0, 1
/* 0A5490 800A8490 60000001 */  ori       r0, r0, 0x1
/* 0A5494 800A8494 90030008 */  stw       r0, 0x8(r3)
/* 0A5498 800A8498 80030008 */  lwz       r0, 0x8(r3)
/* 0A549C 800A849C 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A54A0 800A84A0 B0030002 */  sth       r0, 0x2(r3)
/* 0A54A4 800A84A4 4E800020 */  blr

glabel fn_800A84A8
/* 0A54A8 800A84A8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A54AC 800A84AC 80030008 */  lwz       r0, 0x8(r3)
/* 0A54B0 800A84B0 5400003C */  clrrwi    r0, r0, 1
/* 0A54B4 800A84B4 90030008 */  stw       r0, 0x8(r3)
/* 0A54B8 800A84B8 80030008 */  lwz       r0, 0x8(r3)
/* 0A54BC 800A84BC 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A54C0 800A84C0 B0030002 */  sth       r0, 0x2(r3)
/* 0A54C4 800A84C4 4E800020 */  blr

glabel fn_800A84C8
/* 0A54C8 800A84C8 5460063F */  clrlwi.   r0, r3, 24
/* 0A54CC 800A84CC 4182000C */  beq       lbl_800A84D8
/* 0A54D0 800A84D0 38000001 */  li        r0, 0x1
/* 0A54D4 800A84D4 48000008 */  b         lbl_800A84DC
lbl_800A84D8:
/* 0A54D8 800A84D8 38000000 */  li        r0, 0x0
lbl_800A84DC:
/* 0A54DC 800A84DC 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A54E0 800A84E0 54002036 */  slwi      r0, r0, 4
/* 0A54E4 800A84E4 80640008 */  lwz       r3, 0x8(r4)
/* 0A54E8 800A84E8 54630734 */  rlwinm    r3, r3, 0, 28, 26
/* 0A54EC 800A84EC 7C600378 */  or        r0, r3, r0
/* 0A54F0 800A84F0 90040008 */  stw       r0, 0x8(r4)
/* 0A54F4 800A84F4 80040008 */  lwz       r0, 0x8(r4)
/* 0A54F8 800A84F8 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A54FC 800A84FC B0030002 */  sth       r0, 0x2(r3)
/* 0A5500 800A8500 4E800020 */  blr

glabel fn_800A8504
/* 0A5504 800A8504 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A5508 800A8508 546315BA */  clrlslwi  r3, r3, 24, 2
/* 0A550C 800A850C 54801D78 */  clrlslwi  r0, r4, 24, 3
/* 0A5510 800A8510 80A60008 */  lwz       r5, 0x8(r6)
/* 0A5514 800A8514 54A407B8 */  rlwinm    r4, r5, 0, 30, 28
/* 0A5518 800A8518 7C831B78 */  or        r3, r4, r3
/* 0A551C 800A851C 90660008 */  stw       r3, 0x8(r6)
/* 0A5520 800A8520 80660008 */  lwz       r3, 0x8(r6)
/* 0A5524 800A8524 54630776 */  rlwinm    r3, r3, 0, 29, 27
/* 0A5528 800A8528 7C600378 */  or        r0, r3, r0
/* 0A552C 800A852C 90060008 */  stw       r0, 0x8(r6)
/* 0A5530 800A8530 80060008 */  lwz       r0, 0x8(r6)
/* 0A5534 800A8534 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5538 800A8538 B0030002 */  sth       r0, 0x2(r3)
/* 0A553C 800A853C 4E800020 */  blr

glabel fn_800A8540
/* 0A5540 800A8540 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A5544 800A8544 5463063E */  clrlwi    r3, r3, 24
/* 0A5548 800A8548 54800DFC */  clrlslwi  r0, r4, 24, 1
/* 0A554C 800A854C 80A60010 */  lwz       r5, 0x10(r6)
/* 0A5550 800A8550 54A4003C */  clrrwi    r4, r5, 1
/* 0A5554 800A8554 7C831B78 */  or        r3, r4, r3
/* 0A5558 800A8558 90660010 */  stw       r3, 0x10(r6)
/* 0A555C 800A855C 80660010 */  lwz       r3, 0x10(r6)
/* 0A5560 800A8560 546307FA */  rlwinm    r3, r3, 0, 31, 29
/* 0A5564 800A8564 7C600378 */  or        r0, r3, r0
/* 0A5568 800A8568 90060010 */  stw       r0, 0x10(r6)
/* 0A556C 800A856C 80060010 */  lwz       r0, 0x10(r6)
/* 0A5570 800A8570 806D8BFC */  lwz       r3, __cpReg@sda21(r0)
/* 0A5574 800A8574 B0030004 */  sth       r0, 0x4(r3)
/* 0A5578 800A8578 4E800020 */  blr

glabel fn_800A857C
/* 0A557C 800A857C 7C0802A6 */  mflr      r0
/* 0A5580 800A8580 90010004 */  stw       r0, 0x4(r1)
/* 0A5584 800A8584 9421FF58 */  stwu      r1, -0xa8(r1)
/* 0A5588 800A8588 93E100A4 */  stw       r31, 0xa4(r1)
/* 0A558C 800A858C 93C100A0 */  stw       r30, 0xa0(r1)
/* 0A5590 800A8590 93A1009C */  stw       r29, 0x9c(r1)
/* 0A5594 800A8594 480000F1 */  bl        fn_800A8684
/* 0A5598 800A8598 7C7F1B79 */  mr.       r31, r3
/* 0A559C 800A859C 418200C4 */  beq       lbl_800A8660
/* 0A55A0 800A85A0 480000DD */  bl        fn_800A867C
/* 0A55A4 800A85A4 38000010 */  li        r0, 0x10
/* 0A55A8 800A85A8 83BF0000 */  lwz       r29, 0x0(r31)
/* 0A55AC 800A85AC 7C0903A6 */  mtctr     r0
/* 0A55B0 800A85B0 3BC30000 */  addi      r30, r3, 0x0
/* 0A55B4 800A85B4 38A1000C */  addi      r5, r1, 0xc
/* 0A55B8 800A85B8 389FFFF8 */  subi      r4, r31, 0x8
lbl_800A85BC:
/* 0A55BC 800A85BC 84640008 */  lwzu      r3, 0x8(r4)
/* 0A55C0 800A85C0 80040004 */  lwz       r0, 0x4(r4)
/* 0A55C4 800A85C4 94650008 */  stwu      r3, 0x8(r5)
/* 0A55C8 800A85C8 90050004 */  stw       r0, 0x4(r5)
/* 0A55CC 800A85CC 4200FFF0 */  bdnz      lbl_800A85BC
/* 0A55D0 800A85D0 4BFF5C79 */  bl        OSDisableInterrupts
/* 0A55D4 800A85D4 93A10028 */  stw       r29, 0x28(r1)
/* 0A55D8 800A85D8 38000000 */  li        r0, 0x0
/* 0A55DC 800A85DC 93A1002C */  stw       r29, 0x2c(r1)
/* 0A55E0 800A85E0 90010030 */  stw       r0, 0x30(r1)
/* 0A55E4 800A85E4 80810030 */  lwz       r4, 0x30(r1)
/* 0A55E8 800A85E8 2C040000 */  cmpwi     r4, 0x0
/* 0A55EC 800A85EC 40800010 */  bge       lbl_800A85FC
/* 0A55F0 800A85F0 8001001C */  lwz       r0, 0x1c(r1)
/* 0A55F4 800A85F4 7C040214 */  add       r0, r4, r0
/* 0A55F8 800A85F8 90010030 */  stw       r0, 0x30(r1)
lbl_800A85FC:
/* 0A55FC 800A85FC 4BFF5C75 */  bl        OSRestoreInterrupts
/* 0A5600 800A8600 38610014 */  addi      r3, r1, 0x14
/* 0A5604 800A8604 4BFFFC5D */  bl        GXSetGPFifo
/* 0A5608 800A8608 7C1EF840 */  cmplw     r30, r31
/* 0A560C 800A860C 4082000C */  bne       lbl_800A8618
/* 0A5610 800A8610 38610014 */  addi      r3, r1, 0x14
/* 0A5614 800A8614 4BFFFB3D */  bl        GXSetCPUFifo
lbl_800A8618:
/* 0A5618 800A8618 4BFF5C31 */  bl        OSDisableInterrupts
/* 0A561C 800A861C 93BF0014 */  stw       r29, 0x14(r31)
/* 0A5620 800A8620 38000000 */  li        r0, 0x0
/* 0A5624 800A8624 93BF0018 */  stw       r29, 0x18(r31)
/* 0A5628 800A8628 901F001C */  stw       r0, 0x1c(r31)
/* 0A562C 800A862C 809F001C */  lwz       r4, 0x1c(r31)
/* 0A5630 800A8630 2C040000 */  cmpwi     r4, 0x0
/* 0A5634 800A8634 40800010 */  bge       lbl_800A8644
/* 0A5638 800A8638 801F0008 */  lwz       r0, 0x8(r31)
/* 0A563C 800A863C 7C040214 */  add       r0, r4, r0
/* 0A5640 800A8640 901F001C */  stw       r0, 0x1c(r31)
lbl_800A8644:
/* 0A5644 800A8644 4BFF5C2D */  bl        OSRestoreInterrupts
/* 0A5648 800A8648 7FE3FB78 */  mr        r3, r31
/* 0A564C 800A864C 4BFFFC15 */  bl        GXSetGPFifo
/* 0A5650 800A8650 7C1EF840 */  cmplw     r30, r31
/* 0A5654 800A8654 4082000C */  bne       lbl_800A8660
/* 0A5658 800A8658 7FC3F378 */  mr        r3, r30
/* 0A565C 800A865C 4BFFFAF5 */  bl        GXSetCPUFifo
lbl_800A8660:
/* 0A5660 800A8660 800100AC */  lwz       r0, 0xac(r1)
/* 0A5664 800A8664 83E100A4 */  lwz       r31, 0xa4(r1)
/* 0A5668 800A8668 83C100A0 */  lwz       r30, 0xa0(r1)
/* 0A566C 800A866C 83A1009C */  lwz       r29, 0x9c(r1)
/* 0A5670 800A8670 382100A8 */  addi      r1, r1, 0xa8
/* 0A5674 800A8674 7C0803A6 */  mtlr      r0
/* 0A5678 800A8678 4E800020 */  blr

glabel fn_800A867C
/* 0A567C 800A867C 806D8C08 */  lwz       r3, D_8018BB88@sda21(r0)
/* 0A5680 800A8680 4E800020 */  blr

glabel fn_800A8684
/* 0A5684 800A8684 806D8C0C */  lwz       r3, D_8018BB8C@sda21(r0)
/* 0A5688 800A8688 4E800020 */  blr

# 0x8018BB88 - 0x8018BBA8
.section .sbss, "wa"

glabel D_8018BB88
	.skip 0x4

glabel D_8018BB8C
	.skip 0x4

glabel D_8018BB90
	.skip 0x4

glabel D_8018BB94
	.skip 0x1

glabel gap_08_8018BB95_sbss
.hidden gap_08_8018BB95_sbss
	.skip 0x3

glabel D_8018BB98
	.skip 0x4

glabel D_8018BB9C
	.skip 0x4

glabel D_8018BBA0
	.skip 0x8
