# GXInit.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A6D64 - 0x800A7F34

glabel fn_800A6D64
/* 0A3D64 800A6D64 7C0802A6 */  mflr      r0
/* 0A3D68 800A6D68 90010004 */  stw       r0, 0x4(r1)
/* 0A3D6C 800A6D6C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A3D70 800A6D70 48004A45 */  bl        fn_800AB7B4
/* 0A3D74 800A6D74 2C030008 */  cmpwi     r3, 0x8
/* 0A3D78 800A6D78 41820038 */  beq       lbl_800A6DB0
/* 0A3D7C 800A6D7C 2C030009 */  cmpwi     r3, 0x9
/* 0A3D80 800A6D80 41820030 */  beq       lbl_800A6DB0
/* 0A3D84 800A6D84 2C03000A */  cmpwi     r3, 0xa
/* 0A3D88 800A6D88 41820028 */  beq       lbl_800A6DB0
/* 0A3D8C 800A6D8C 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A3D90 800A6D90 806502C8 */  lwz       r3, 0x2c8(r5)
/* 0A3D94 800A6D94 5460077E */  clrlwi    r0, r3, 29
/* 0A3D98 800A6D98 38830001 */  addi      r4, r3, 0x1
/* 0A3D9C 800A6D9C 54032036 */  slwi      r3, r0, 4
/* 0A3DA0 800A6DA0 908502C8 */  stw       r4, 0x2c8(r5)
/* 0A3DA4 800A6DA4 38630208 */  addi      r3, r3, 0x208
/* 0A3DA8 800A6DA8 7C651A14 */  add       r3, r5, r3
/* 0A3DAC 800A6DAC 48000024 */  b         lbl_800A6DD0
lbl_800A6DB0:
/* 0A3DB0 800A6DB0 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A3DB4 800A6DB4 806502CC */  lwz       r3, 0x2cc(r5)
/* 0A3DB8 800A6DB8 546007BE */  clrlwi    r0, r3, 30
/* 0A3DBC 800A6DBC 38830001 */  addi      r4, r3, 0x1
/* 0A3DC0 800A6DC0 54032036 */  slwi      r3, r0, 4
/* 0A3DC4 800A6DC4 908502CC */  stw       r4, 0x2cc(r5)
/* 0A3DC8 800A6DC8 38630288 */  addi      r3, r3, 0x288
/* 0A3DCC 800A6DCC 7C651A14 */  add       r3, r5, r3
lbl_800A6DD0:
/* 0A3DD0 800A6DD0 8001000C */  lwz       r0, 0xc(r1)
/* 0A3DD4 800A6DD4 38210008 */  addi      r1, r1, 0x8
/* 0A3DD8 800A6DD8 7C0803A6 */  mtlr      r0
/* 0A3DDC 800A6DDC 4E800020 */  blr

glabel fn_800A6DE0
/* 0A3DE0 800A6DE0 28030014 */  cmplwi    r3, 0x14
/* 0A3DE4 800A6DE4 4180000C */  blt       lbl_800A6DF0
/* 0A3DE8 800A6DE8 38600000 */  li        r3, 0x0
/* 0A3DEC 800A6DEC 48000014 */  b         lbl_800A6E00
lbl_800A6DF0:
/* 0A3DF0 800A6DF0 54632036 */  slwi      r3, r3, 4
/* 0A3DF4 800A6DF4 80028400 */  lwz       r0, gx@sda21(r0)
/* 0A3DF8 800A6DF8 386302D0 */  addi      r3, r3, 0x2d0
/* 0A3DFC 800A6DFC 7C601A14 */  add       r3, r0, r3
lbl_800A6E00:
/* 0A3E00 800A6E00 4E800020 */  blr

glabel GXInit
/* 0A3E04 800A6E04 7C0802A6 */  mflr      r0
/* 0A3E08 800A6E08 90010004 */  stw       r0, 0x4(r1)
/* 0A3E0C 800A6E0C 9421FFB0 */  stwu      r1, -0x50(r1)
/* 0A3E10 800A6E10 BF210034 */  stmw      r25, 0x34(r1)
/* 0A3E14 800A6E14 7C7A1B78 */  mr        r26, r3
/* 0A3E18 800A6E18 7C992378 */  mr        r25, r4
/* 0A3E1C 800A6E1C 3C808019 */  lis       r4, gxData@ha
/* 0A3E20 800A6E20 806D8778 */  lwz       r3, __GXVersion@sda21(r0)
/* 0A3E24 800A6E24 3BC48198 */  addi      r30, r4, gxData@l
/* 0A3E28 800A6E28 4BFF4E5D */  bl        OSRegisterVersion
/* 0A3E2C 800A6E2C 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A3E30 800A6E30 3BE00000 */  li        r31, 0x0
/* 0A3E34 800A6E34 38000001 */  li        r0, 0x1
/* 0A3E38 800A6E38 9BE504F0 */  stb       r31, 0x4f0(r5)
/* 0A3E3C 800A6E3C 38600001 */  li        r3, 0x1
/* 0A3E40 800A6E40 38800000 */  li        r4, 0x0
/* 0A3E44 800A6E44 980504F1 */  stb       r0, 0x4f1(r5)
/* 0A3E48 800A6E48 93E504DC */  stw       r31, 0x4dc(r5)
/* 0A3E4C 800A6E4C 93E504E0 */  stw       r31, 0x4e0(r5)
/* 0A3E50 800A6E50 480029AD */  bl        GXSetMisc
/* 0A3E54 800A6E54 3C80CC00 */  lis       r4, 0xcc00
/* 0A3E58 800A6E58 38A43000 */  addi      r5, r4, 0x3000
/* 0A3E5C 800A6E5C 908D8BFC */  stw       r4, __cpReg@sda21(r0)
/* 0A3E60 800A6E60 38641000 */  addi      r3, r4, 0x1000
/* 0A3E64 800A6E64 38044000 */  addi      r0, r4, 0x4000
/* 0A3E68 800A6E68 90AD8BF8 */  stw       r5, __piReg@sda21(r0)
/* 0A3E6C 800A6E6C 906D8C00 */  stw       r3, __peReg@sda21(r0)
/* 0A3E70 800A6E70 900D8C04 */  stw       r0, __memReg@sda21(r0)
/* 0A3E74 800A6E74 480015C5 */  bl        __GXFifoInit
/* 0A3E78 800A6E78 7F44D378 */  mr        r4, r26
/* 0A3E7C 800A6E7C 7F25CB78 */  mr        r5, r25
/* 0A3E80 800A6E80 387E04F8 */  addi      r3, r30, 0x4f8
/* 0A3E84 800A6E84 480011E5 */  bl        GXInitFifoBase
/* 0A3E88 800A6E88 387E04F8 */  addi      r3, r30, 0x4f8
/* 0A3E8C 800A6E8C 480012C5 */  bl        GXSetCPUFifo
/* 0A3E90 800A6E90 387E04F8 */  addi      r3, r30, 0x4f8
/* 0A3E94 800A6E94 480013CD */  bl        GXSetGPFifo
/* 0A3E98 800A6E98 48002FB5 */  bl        __GXPEInit
/* 0A3E9C 800A6E9C 4BFF4485 */  bl        PPCMfhid2
/* 0A3EA0 800A6EA0 3C800C01 */  lis       r4, 0xc01
/* 0A3EA4 800A6EA4 7C7A1B78 */  mr        r26, r3
/* 0A3EA8 800A6EA8 38648000 */  addi      r3, r4, -0x8000
/* 0A3EAC 800A6EAC 4BFF4485 */  bl        PPCMtwpar
/* 0A3EB0 800A6EB0 67434000 */  oris      r3, r26, 0x4000
/* 0A3EB4 800A6EB4 4BFF4475 */  bl        PPCMthid2
/* 0A3EB8 800A6EB8 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A3EBC 800A6EBC 380000FF */  li        r0, 0xff
/* 0A3EC0 800A6EC0 39000000 */  li        r8, 0x0
/* 0A3EC4 800A6EC4 93E60204 */  stw       r31, 0x204(r6)
/* 0A3EC8 800A6EC8 38860204 */  addi      r4, r6, 0x204
/* 0A3ECC 800A6ECC 38E60124 */  addi      r7, r6, 0x124
/* 0A3ED0 800A6ED0 80640000 */  lwz       r3, 0x0(r4)
/* 0A3ED4 800A6ED4 3926007C */  addi      r9, r6, 0x7c
/* 0A3ED8 800A6ED8 38A000C1 */  li        r5, 0xc1
/* 0A3EDC 800A6EDC 5463023E */  clrlwi    r3, r3, 8
/* 0A3EE0 800A6EE0 90640000 */  stw       r3, 0x0(r4)
/* 0A3EE4 800A6EE4 388000C0 */  li        r4, 0xc0
/* 0A3EE8 800A6EE8 90060124 */  stw       r0, 0x124(r6)
/* 0A3EEC 800A6EEC 80070000 */  lwz       r0, 0x0(r7)
/* 0A3EF0 800A6EF0 5400023E */  clrlwi    r0, r0, 8
/* 0A3EF4 800A6EF4 64000F00 */  oris      r0, r0, 0xf00
/* 0A3EF8 800A6EF8 90070000 */  stw       r0, 0x0(r7)
/* 0A3EFC 800A6EFC 93E6007C */  stw       r31, 0x7c(r6)
/* 0A3F00 800A6F00 80090000 */  lwz       r0, 0x0(r9)
/* 0A3F04 800A6F04 5400023E */  clrlwi    r0, r0, 8
/* 0A3F08 800A6F08 64002200 */  oris      r0, r0, 0x2200
/* 0A3F0C 800A6F0C 90090000 */  stw       r0, 0x0(r9)
/* 0A3F10 800A6F10 48000004 */  b         lbl_800A6F14
lbl_800A6F14:
/* 0A3F14 800A6F14 38000008 */  li        r0, 0x8
/* 0A3F18 800A6F18 7C0903A6 */  mtctr     r0
/* 0A3F1C 800A6F1C 48000004 */  b         lbl_800A6F20
lbl_800A6F20:
/* 0A3F20 800A6F20 48000004 */  b         lbl_800A6F24
lbl_800A6F24:
/* 0A3F24 800A6F24 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A3F28 800A6F28 5506F87E */  srwi      r6, r8, 1
/* 0A3F2C 800A6F2C 3B9F0130 */  addi      r28, r31, 0x130
/* 0A3F30 800A6F30 38000000 */  li        r0, 0x0
/* 0A3F34 800A6F34 3B5F0170 */  addi      r26, r31, 0x170
/* 0A3F38 800A6F38 7C03E12E */  stwx      r0, r3, r28
/* 0A3F3C 800A6F3C 54CA103A */  slwi      r10, r6, 2
/* 0A3F40 800A6F40 3B6A0100 */  addi      r27, r10, 0x100
/* 0A3F44 800A6F44 7C03D12E */  stwx      r0, r3, r26
/* 0A3F48 800A6F48 393F049C */  addi      r9, r31, 0x49c
/* 0A3F4C 800A6F4C 7C03D92E */  stwx      r0, r3, r27
/* 0A3F50 800A6F50 3BA000FF */  li        r29, 0xff
/* 0A3F54 800A6F54 548CC00E */  slwi      r12, r4, 24
/* 0A3F58 800A6F58 7FA3492E */  stwx      r29, r3, r9
/* 0A3F5C 800A6F5C 7F23E214 */  add       r25, r3, r28
/* 0A3F60 800A6F60 3BFF0004 */  addi      r31, r31, 0x4
/* 0A3F64 800A6F64 83990000 */  lwz       r28, 0x0(r25)
/* 0A3F68 800A6F68 7F43D214 */  add       r26, r3, r26
/* 0A3F6C 800A6F6C 54ABC00E */  slwi      r11, r5, 24
/* 0A3F70 800A6F70 579C023E */  clrlwi    r28, r28, 8
/* 0A3F74 800A6F74 7F8C6378 */  or        r12, r28, r12
/* 0A3F78 800A6F78 91990000 */  stw       r12, 0x0(r25)
/* 0A3F7C 800A6F7C 38EA01B0 */  addi      r7, r10, 0x1b0
/* 0A3F80 800A6F80 394600F6 */  addi      r10, r6, 0xf6
/* 0A3F84 800A6F84 819A0000 */  lwz       r12, 0x0(r26)
/* 0A3F88 800A6F88 39260028 */  addi      r9, r6, 0x28
/* 0A3F8C 800A6F8C 3B9F0130 */  addi      r28, r31, 0x130
/* 0A3F90 800A6F90 5586023E */  clrlwi    r6, r12, 8
/* 0A3F94 800A6F94 7CC65B78 */  or        r6, r6, r11
/* 0A3F98 800A6F98 90DA0000 */  stw       r6, 0x0(r26)
/* 0A3F9C 800A6F9C 7CE33A14 */  add       r7, r3, r7
/* 0A3FA0 800A6FA0 39080001 */  addi      r8, r8, 0x1
/* 0A3FA4 800A6FA4 81670000 */  lwz       r11, 0x0(r7)
/* 0A3FA8 800A6FA8 5506F87E */  srwi      r6, r8, 1
/* 0A3FAC 800A6FAC 554AC00E */  slwi      r10, r10, 24
/* 0A3FB0 800A6FB0 556B023E */  clrlwi    r11, r11, 8
/* 0A3FB4 800A6FB4 7D6A5378 */  or        r10, r11, r10
/* 0A3FB8 800A6FB8 91470000 */  stw       r10, 0x0(r7)
/* 0A3FBC 800A6FBC 7F23DA14 */  add       r25, r3, r27
/* 0A3FC0 800A6FC0 54CA103A */  slwi      r10, r6, 2
/* 0A3FC4 800A6FC4 80F90000 */  lwz       r7, 0x0(r25)
/* 0A3FC8 800A6FC8 5529C00E */  slwi      r9, r9, 24
/* 0A3FCC 800A6FCC 3B5F0170 */  addi      r26, r31, 0x170
/* 0A3FD0 800A6FD0 54E7023E */  clrlwi    r7, r7, 8
/* 0A3FD4 800A6FD4 7CE74B78 */  or        r7, r7, r9
/* 0A3FD8 800A6FD8 90F90000 */  stw       r7, 0x0(r25)
/* 0A3FDC 800A6FDC 3B6A0100 */  addi      r27, r10, 0x100
/* 0A3FE0 800A6FE0 393F049C */  addi      r9, r31, 0x49c
/* 0A3FE4 800A6FE4 7C03E12E */  stwx      r0, r3, r28
/* 0A3FE8 800A6FE8 38840002 */  addi      r4, r4, 0x2
/* 0A3FEC 800A6FEC 548CC00E */  slwi      r12, r4, 24
/* 0A3FF0 800A6FF0 7C03D12E */  stwx      r0, r3, r26
/* 0A3FF4 800A6FF4 38A50002 */  addi      r5, r5, 0x2
/* 0A3FF8 800A6FF8 54ABC00E */  slwi      r11, r5, 24
/* 0A3FFC 800A6FFC 7C03D92E */  stwx      r0, r3, r27
/* 0A4000 800A7000 38EA01B0 */  addi      r7, r10, 0x1b0
/* 0A4004 800A7004 394600F6 */  addi      r10, r6, 0xf6
/* 0A4008 800A7008 7FA3492E */  stwx      r29, r3, r9
/* 0A400C 800A700C 7F23E214 */  add       r25, r3, r28
/* 0A4010 800A7010 39260028 */  addi      r9, r6, 0x28
/* 0A4014 800A7014 83990000 */  lwz       r28, 0x0(r25)
/* 0A4018 800A7018 7F43D214 */  add       r26, r3, r26
/* 0A401C 800A701C 7CE33A14 */  add       r7, r3, r7
/* 0A4020 800A7020 579C023E */  clrlwi    r28, r28, 8
/* 0A4024 800A7024 7F8C6378 */  or        r12, r28, r12
/* 0A4028 800A7028 91990000 */  stw       r12, 0x0(r25)
/* 0A402C 800A702C 554AC00E */  slwi      r10, r10, 24
/* 0A4030 800A7030 7F23DA14 */  add       r25, r3, r27
/* 0A4034 800A7034 819A0000 */  lwz       r12, 0x0(r26)
/* 0A4038 800A7038 5529C00E */  slwi      r9, r9, 24
/* 0A403C 800A703C 3BFF0004 */  addi      r31, r31, 0x4
/* 0A4040 800A7040 5586023E */  clrlwi    r6, r12, 8
/* 0A4044 800A7044 7CC65B78 */  or        r6, r6, r11
/* 0A4048 800A7048 90DA0000 */  stw       r6, 0x0(r26)
/* 0A404C 800A704C 38840002 */  addi      r4, r4, 0x2
/* 0A4050 800A7050 38A50002 */  addi      r5, r5, 0x2
/* 0A4054 800A7054 81670000 */  lwz       r11, 0x0(r7)
/* 0A4058 800A7058 39080001 */  addi      r8, r8, 0x1
/* 0A405C 800A705C 556B023E */  clrlwi    r11, r11, 8
/* 0A4060 800A7060 7D6A5378 */  or        r10, r11, r10
/* 0A4064 800A7064 91470000 */  stw       r10, 0x0(r7)
/* 0A4068 800A7068 80F90000 */  lwz       r7, 0x0(r25)
/* 0A406C 800A706C 54E7023E */  clrlwi    r7, r7, 8
/* 0A4070 800A7070 7CE74B78 */  or        r7, r7, r9
/* 0A4074 800A7074 90F90000 */  stw       r7, 0x0(r25)
/* 0A4078 800A7078 4200FEAC */  bdnz      lbl_800A6F24
/* 0A407C 800A707C 90030120 */  stw       r0, 0x120(r3)
/* 0A4080 800A7080 38830120 */  addi      r4, r3, 0x120
/* 0A4084 800A7084 7C090378 */  mr        r9, r0
/* 0A4088 800A7088 80640000 */  lwz       r3, 0x0(r4)
/* 0A408C 800A708C 39400030 */  li        r10, 0x30
/* 0A4090 800A7090 39600031 */  li        r11, 0x31
/* 0A4094 800A7094 5463023E */  clrlwi    r3, r3, 8
/* 0A4098 800A7098 64632700 */  oris      r3, r3, 0x2700
/* 0A409C 800A709C 90640000 */  stw       r3, 0x0(r4)
/* 0A40A0 800A70A0 48000004 */  b         lbl_800A70A4
lbl_800A70A4:
/* 0A40A4 800A70A4 38600002 */  li        r3, 0x2
/* 0A40A8 800A70A8 7C6903A6 */  mtctr     r3
/* 0A40AC 800A70AC 48000004 */  b         lbl_800A70B0
lbl_800A70B0:
/* 0A40B0 800A70B0 48000004 */  b         lbl_800A70B4
lbl_800A70B4:
/* 0A40B4 800A70B4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A40B8 800A70B8 390900B8 */  addi      r8, r9, 0xb8
/* 0A40BC 800A70BC 38E900D8 */  addi      r7, r9, 0xd8
/* 0A40C0 800A70C0 7C03412E */  stwx      r0, r3, r8
/* 0A40C4 800A70C4 5546C00E */  slwi      r6, r10, 24
/* 0A40C8 800A70C8 5564C00E */  slwi      r4, r11, 24
/* 0A40CC 800A70CC 7C03392E */  stwx      r0, r3, r7
/* 0A40D0 800A70D0 7D834214 */  add       r12, r3, r8
/* 0A40D4 800A70D4 39290004 */  addi      r9, r9, 0x4
/* 0A40D8 800A70D8 80AC0000 */  lwz       r5, 0x0(r12)
/* 0A40DC 800A70DC 7F233A14 */  add       r25, r3, r7
/* 0A40E0 800A70E0 390900B8 */  addi      r8, r9, 0xb8
/* 0A40E4 800A70E4 54A5023E */  clrlwi    r5, r5, 8
/* 0A40E8 800A70E8 7CA53378 */  or        r5, r5, r6
/* 0A40EC 800A70EC 90AC0000 */  stw       r5, 0x0(r12)
/* 0A40F0 800A70F0 38E900D8 */  addi      r7, r9, 0xd8
/* 0A40F4 800A70F4 394A0002 */  addi      r10, r10, 0x2
/* 0A40F8 800A70F8 80B90000 */  lwz       r5, 0x0(r25)
/* 0A40FC 800A70FC 5546C00E */  slwi      r6, r10, 24
/* 0A4100 800A7100 7D834214 */  add       r12, r3, r8
/* 0A4104 800A7104 54A5023E */  clrlwi    r5, r5, 8
/* 0A4108 800A7108 7CA42378 */  or        r4, r5, r4
/* 0A410C 800A710C 90990000 */  stw       r4, 0x0(r25)
/* 0A4110 800A7110 396B0002 */  addi      r11, r11, 0x2
/* 0A4114 800A7114 5564C00E */  slwi      r4, r11, 24
/* 0A4118 800A7118 7C03412E */  stwx      r0, r3, r8
/* 0A411C 800A711C 39290004 */  addi      r9, r9, 0x4
/* 0A4120 800A7120 7F233A14 */  add       r25, r3, r7
/* 0A4124 800A7124 7C03392E */  stwx      r0, r3, r7
/* 0A4128 800A7128 390900B8 */  addi      r8, r9, 0xb8
/* 0A412C 800A712C 38E900D8 */  addi      r7, r9, 0xd8
/* 0A4130 800A7130 80AC0000 */  lwz       r5, 0x0(r12)
/* 0A4134 800A7134 394A0002 */  addi      r10, r10, 0x2
/* 0A4138 800A7138 396B0002 */  addi      r11, r11, 0x2
/* 0A413C 800A713C 54A5023E */  clrlwi    r5, r5, 8
/* 0A4140 800A7140 7CA53378 */  or        r5, r5, r6
/* 0A4144 800A7144 90AC0000 */  stw       r5, 0x0(r12)
/* 0A4148 800A7148 5546C00E */  slwi      r6, r10, 24
/* 0A414C 800A714C 7D834214 */  add       r12, r3, r8
/* 0A4150 800A7150 80B90000 */  lwz       r5, 0x0(r25)
/* 0A4154 800A7154 39290004 */  addi      r9, r9, 0x4
/* 0A4158 800A7158 394A0002 */  addi      r10, r10, 0x2
/* 0A415C 800A715C 54A5023E */  clrlwi    r5, r5, 8
/* 0A4160 800A7160 7CA42378 */  or        r4, r5, r4
/* 0A4164 800A7164 90990000 */  stw       r4, 0x0(r25)
/* 0A4168 800A7168 5564C00E */  slwi      r4, r11, 24
/* 0A416C 800A716C 7F233A14 */  add       r25, r3, r7
/* 0A4170 800A7170 7C03412E */  stwx      r0, r3, r8
/* 0A4174 800A7174 390900B8 */  addi      r8, r9, 0xb8
/* 0A4178 800A7178 396B0002 */  addi      r11, r11, 0x2
/* 0A417C 800A717C 7C03392E */  stwx      r0, r3, r7
/* 0A4180 800A7180 38E900D8 */  addi      r7, r9, 0xd8
/* 0A4184 800A7184 39290004 */  addi      r9, r9, 0x4
/* 0A4188 800A7188 80AC0000 */  lwz       r5, 0x0(r12)
/* 0A418C 800A718C 54A5023E */  clrlwi    r5, r5, 8
/* 0A4190 800A7190 7CA53378 */  or        r5, r5, r6
/* 0A4194 800A7194 90AC0000 */  stw       r5, 0x0(r12)
/* 0A4198 800A7198 5546C00E */  slwi      r6, r10, 24
/* 0A419C 800A719C 7D834214 */  add       r12, r3, r8
/* 0A41A0 800A71A0 80B90000 */  lwz       r5, 0x0(r25)
/* 0A41A4 800A71A4 394A0002 */  addi      r10, r10, 0x2
/* 0A41A8 800A71A8 54A5023E */  clrlwi    r5, r5, 8
/* 0A41AC 800A71AC 7CA42378 */  or        r4, r5, r4
/* 0A41B0 800A71B0 90990000 */  stw       r4, 0x0(r25)
/* 0A41B4 800A71B4 5564C00E */  slwi      r4, r11, 24
/* 0A41B8 800A71B8 7F233A14 */  add       r25, r3, r7
/* 0A41BC 800A71BC 7C03412E */  stwx      r0, r3, r8
/* 0A41C0 800A71C0 396B0002 */  addi      r11, r11, 0x2
/* 0A41C4 800A71C4 7C03392E */  stwx      r0, r3, r7
/* 0A41C8 800A71C8 80AC0000 */  lwz       r5, 0x0(r12)
/* 0A41CC 800A71CC 54A5023E */  clrlwi    r5, r5, 8
/* 0A41D0 800A71D0 7CA53378 */  or        r5, r5, r6
/* 0A41D4 800A71D4 90AC0000 */  stw       r5, 0x0(r12)
/* 0A41D8 800A71D8 80B90000 */  lwz       r5, 0x0(r25)
/* 0A41DC 800A71DC 54A5023E */  clrlwi    r5, r5, 8
/* 0A41E0 800A71E0 7CA42378 */  or        r4, r5, r4
/* 0A41E4 800A71E4 90990000 */  stw       r4, 0x0(r25)
/* 0A41E8 800A71E8 4200FECC */  bdnz      lbl_800A70B4
/* 0A41EC 800A71EC 38A300F8 */  addi      r5, r3, 0xf8
/* 0A41F0 800A71F0 80050000 */  lwz       r0, 0x0(r5)
/* 0A41F4 800A71F4 3C801062 */  lis       r4, 0x1062
/* 0A41F8 800A71F8 38C300FC */  addi      r6, r3, 0xfc
/* 0A41FC 800A71FC 5400023E */  clrlwi    r0, r0, 8
/* 0A4200 800A7200 64002000 */  oris      r0, r0, 0x2000
/* 0A4204 800A7204 90050000 */  stw       r0, 0x0(r5)
/* 0A4208 800A7208 38E301D0 */  addi      r7, r3, 0x1d0
/* 0A420C 800A720C 390301D4 */  addi      r8, r3, 0x1d4
/* 0A4210 800A7210 80060000 */  lwz       r0, 0x0(r6)
/* 0A4214 800A7214 392301D8 */  addi      r9, r3, 0x1d8
/* 0A4218 800A7218 394301DC */  addi      r10, r3, 0x1dc
/* 0A421C 800A721C 5400023E */  clrlwi    r0, r0, 8
/* 0A4220 800A7220 64002100 */  oris      r0, r0, 0x2100
/* 0A4224 800A7224 90060000 */  stw       r0, 0x0(r6)
/* 0A4228 800A7228 38C301FC */  addi      r6, r3, 0x1fc
/* 0A422C 800A722C 3BA00000 */  li        r29, 0x0
/* 0A4230 800A7230 80070000 */  lwz       r0, 0x0(r7)
/* 0A4234 800A7234 3CA08000 */  lis       r5, 0x8000
/* 0A4238 800A7238 38844DD3 */  addi      r4, r4, 0x4dd3
/* 0A423C 800A723C 5400023E */  clrlwi    r0, r0, 8
/* 0A4240 800A7240 64004100 */  oris      r0, r0, 0x4100
/* 0A4244 800A7244 90070000 */  stw       r0, 0x0(r7)
/* 0A4248 800A7248 80080000 */  lwz       r0, 0x0(r8)
/* 0A424C 800A724C 5400023E */  clrlwi    r0, r0, 8
/* 0A4250 800A7250 64004200 */  oris      r0, r0, 0x4200
/* 0A4254 800A7254 90080000 */  stw       r0, 0x0(r8)
/* 0A4258 800A7258 80090000 */  lwz       r0, 0x0(r9)
/* 0A425C 800A725C 5400023E */  clrlwi    r0, r0, 8
/* 0A4260 800A7260 64004000 */  oris      r0, r0, 0x4000
/* 0A4264 800A7264 90090000 */  stw       r0, 0x0(r9)
/* 0A4268 800A7268 800A0000 */  lwz       r0, 0x0(r10)
/* 0A426C 800A726C 5400023E */  clrlwi    r0, r0, 8
/* 0A4270 800A7270 64004300 */  oris      r0, r0, 0x4300
/* 0A4274 800A7274 900A0000 */  stw       r0, 0x0(r10)
/* 0A4278 800A7278 80060000 */  lwz       r0, 0x0(r6)
/* 0A427C 800A727C 5400066C */  rlwinm    r0, r0, 0, 25, 22
/* 0A4280 800A7280 90060000 */  stw       r0, 0x0(r6)
/* 0A4284 800A7284 93A304F4 */  stw       r29, 0x4f4(r3)
/* 0A4288 800A7288 9BA304F2 */  stb       r29, 0x4f2(r3)
/* 0A428C 800A728C 800500F8 */  lwz       r0, 0xf8(r5)
/* 0A4290 800A7290 7C040016 */  mulhwu    r0, r4, r0
/* 0A4294 800A7294 5419D97E */  srwi      r25, r0, 5
/* 0A4298 800A7298 48005195 */  bl        __GXFlushTextureState
/* 0A429C 800A729C 5720AAFE */  srwi      r0, r25, 11
/* 0A42A0 800A72A0 64006900 */  oris      r0, r0, 0x6900
/* 0A42A4 800A72A4 3B800061 */  li        r28, 0x61
/* 0A42A8 800A72A8 3FE0CC01 */  lis       r31, 0xcc01
/* 0A42AC 800A72AC 9B9F8000 */  stb       r28, -0x8000(r31)
/* 0A42B0 800A72B0 60000400 */  ori       r0, r0, 0x400
/* 0A42B4 800A72B4 901F8000 */  stw       r0, -0x8000(r31)
/* 0A42B8 800A72B8 48005175 */  bl        __GXFlushTextureState
/* 0A42BC 800A72BC 3C603E10 */  lis       r3, 0x3e10
/* 0A42C0 800A72C0 9B9F8000 */  stb       r28, -0x8000(r31)
/* 0A42C4 800A72C4 380383E1 */  subi      r0, r3, 0x7c1f
/* 0A42C8 800A72C8 7C00C816 */  mulhwu    r0, r0, r25
/* 0A42CC 800A72CC 5400B2BE */  srwi      r0, r0, 10
/* 0A42D0 800A72D0 64004600 */  oris      r0, r0, 0x4600
/* 0A42D4 800A72D4 60000200 */  ori       r0, r0, 0x200
/* 0A42D8 800A72D8 901F8000 */  stw       r0, -0x8000(r31)
/* 0A42DC 800A72DC 7FA7EB78 */  mr        r7, r29
/* 0A42E0 800A72E0 48000004 */  b         lbl_800A72E4
lbl_800A72E4:
/* 0A42E4 800A72E4 38000002 */  li        r0, 0x2
/* 0A42E8 800A72E8 7C0903A6 */  mtctr     r0
/* 0A42EC 800A72EC 38A00008 */  li        r5, 0x8
/* 0A42F0 800A72F0 48000004 */  b         lbl_800A72F4
lbl_800A72F4:
/* 0A42F4 800A72F4 48000004 */  b         lbl_800A72F8
lbl_800A72F8:
/* 0A42F8 800A72F8 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A42FC 800A72FC 3907001C */  addi      r8, r7, 0x1c
/* 0A4300 800A7300 3927003C */  addi      r9, r7, 0x3c
/* 0A4304 800A7304 7D064214 */  add       r8, r6, r8
/* 0A4308 800A7308 80080000 */  lwz       r0, 0x0(r8)
/* 0A430C 800A730C 63A40080 */  ori       r4, r29, 0x80
/* 0A4310 800A7310 3867003C */  addi      r3, r7, 0x3c
/* 0A4314 800A7314 54000080 */  rlwinm    r0, r0, 0, 2, 0
/* 0A4318 800A7318 64004000 */  oris      r0, r0, 0x4000
/* 0A431C 800A731C 90080000 */  stw       r0, 0x0(r8)
/* 0A4320 800A7320 7D264A14 */  add       r9, r6, r9
/* 0A4324 800A7324 38E70004 */  addi      r7, r7, 0x4
/* 0A4328 800A7328 80090000 */  lwz       r0, 0x0(r9)
/* 0A432C 800A732C 3907001C */  addi      r8, r7, 0x1c
/* 0A4330 800A7330 7D064214 */  add       r8, r6, r8
/* 0A4334 800A7334 5400007E */  clrlwi    r0, r0, 1
/* 0A4338 800A7338 64008000 */  oris      r0, r0, 0x8000
/* 0A433C 800A733C 90090000 */  stw       r0, 0x0(r9)
/* 0A4340 800A7340 3927003C */  addi      r9, r7, 0x3c
/* 0A4344 800A7344 7D264A14 */  add       r9, r6, r9
/* 0A4348 800A7348 98BF8000 */  stb       r5, -0x8000(r31)
/* 0A434C 800A734C 3BBD0001 */  addi      r29, r29, 0x1
/* 0A4350 800A7350 989F8000 */  stb       r4, -0x8000(r31)
/* 0A4354 800A7354 63A40080 */  ori       r4, r29, 0x80
/* 0A4358 800A7358 3BBD0001 */  addi      r29, r29, 0x1
/* 0A435C 800A735C 7C06182E */  lwzx      r0, r6, r3
/* 0A4360 800A7360 3867003C */  addi      r3, r7, 0x3c
/* 0A4364 800A7364 38E70004 */  addi      r7, r7, 0x4
/* 0A4368 800A7368 901F8000 */  stw       r0, -0x8000(r31)
/* 0A436C 800A736C 80080000 */  lwz       r0, 0x0(r8)
/* 0A4370 800A7370 54000080 */  rlwinm    r0, r0, 0, 2, 0
/* 0A4374 800A7374 64004000 */  oris      r0, r0, 0x4000
/* 0A4378 800A7378 90080000 */  stw       r0, 0x0(r8)
/* 0A437C 800A737C 3907001C */  addi      r8, r7, 0x1c
/* 0A4380 800A7380 7D064214 */  add       r8, r6, r8
/* 0A4384 800A7384 80090000 */  lwz       r0, 0x0(r9)
/* 0A4388 800A7388 5400007E */  clrlwi    r0, r0, 1
/* 0A438C 800A738C 64008000 */  oris      r0, r0, 0x8000
/* 0A4390 800A7390 90090000 */  stw       r0, 0x0(r9)
/* 0A4394 800A7394 3927003C */  addi      r9, r7, 0x3c
/* 0A4398 800A7398 7D264A14 */  add       r9, r6, r9
/* 0A439C 800A739C 98BF8000 */  stb       r5, -0x8000(r31)
/* 0A43A0 800A73A0 989F8000 */  stb       r4, -0x8000(r31)
/* 0A43A4 800A73A4 63A40080 */  ori       r4, r29, 0x80
/* 0A43A8 800A73A8 3BBD0001 */  addi      r29, r29, 0x1
/* 0A43AC 800A73AC 7C06182E */  lwzx      r0, r6, r3
/* 0A43B0 800A73B0 3867003C */  addi      r3, r7, 0x3c
/* 0A43B4 800A73B4 38E70004 */  addi      r7, r7, 0x4
/* 0A43B8 800A73B8 901F8000 */  stw       r0, -0x8000(r31)
/* 0A43BC 800A73BC 80080000 */  lwz       r0, 0x0(r8)
/* 0A43C0 800A73C0 54000080 */  rlwinm    r0, r0, 0, 2, 0
/* 0A43C4 800A73C4 64004000 */  oris      r0, r0, 0x4000
/* 0A43C8 800A73C8 90080000 */  stw       r0, 0x0(r8)
/* 0A43CC 800A73CC 3907001C */  addi      r8, r7, 0x1c
/* 0A43D0 800A73D0 7D064214 */  add       r8, r6, r8
/* 0A43D4 800A73D4 80090000 */  lwz       r0, 0x0(r9)
/* 0A43D8 800A73D8 5400007E */  clrlwi    r0, r0, 1
/* 0A43DC 800A73DC 64008000 */  oris      r0, r0, 0x8000
/* 0A43E0 800A73E0 90090000 */  stw       r0, 0x0(r9)
/* 0A43E4 800A73E4 3927003C */  addi      r9, r7, 0x3c
/* 0A43E8 800A73E8 7D264A14 */  add       r9, r6, r9
/* 0A43EC 800A73EC 98BF8000 */  stb       r5, -0x8000(r31)
/* 0A43F0 800A73F0 989F8000 */  stb       r4, -0x8000(r31)
/* 0A43F4 800A73F4 63A40080 */  ori       r4, r29, 0x80
/* 0A43F8 800A73F8 3BBD0001 */  addi      r29, r29, 0x1
/* 0A43FC 800A73FC 7C06182E */  lwzx      r0, r6, r3
/* 0A4400 800A7400 3867003C */  addi      r3, r7, 0x3c
/* 0A4404 800A7404 38E70004 */  addi      r7, r7, 0x4
/* 0A4408 800A7408 901F8000 */  stw       r0, -0x8000(r31)
/* 0A440C 800A740C 80080000 */  lwz       r0, 0x0(r8)
/* 0A4410 800A7410 54000080 */  rlwinm    r0, r0, 0, 2, 0
/* 0A4414 800A7414 64004000 */  oris      r0, r0, 0x4000
/* 0A4418 800A7418 90080000 */  stw       r0, 0x0(r8)
/* 0A441C 800A741C 80090000 */  lwz       r0, 0x0(r9)
/* 0A4420 800A7420 5400007E */  clrlwi    r0, r0, 1
/* 0A4424 800A7424 64008000 */  oris      r0, r0, 0x8000
/* 0A4428 800A7428 90090000 */  stw       r0, 0x0(r9)
/* 0A442C 800A742C 98BF8000 */  stb       r5, -0x8000(r31)
/* 0A4430 800A7430 989F8000 */  stb       r4, -0x8000(r31)
/* 0A4434 800A7434 7C06182E */  lwzx      r0, r6, r3
/* 0A4438 800A7438 901F8000 */  stw       r0, -0x8000(r31)
/* 0A443C 800A743C 4200FEBC */  bdnz      lbl_800A72F8
/* 0A4440 800A7440 38800010 */  li        r4, 0x10
/* 0A4444 800A7444 3CC0CC01 */  lis       r6, 0xcc01
/* 0A4448 800A7448 98868000 */  stb       r4, -0x8000(r6)
/* 0A444C 800A744C 38001000 */  li        r0, 0x1000
/* 0A4450 800A7450 3B800000 */  li        r28, 0x0
/* 0A4454 800A7454 90068000 */  stw       r0, -0x8000(r6)
/* 0A4458 800A7458 3800003F */  li        r0, 0x3f
/* 0A445C 800A745C 57997820 */  slwi      r25, r28, 15
/* 0A4460 800A7460 90068000 */  stw       r0, -0x8000(r6)
/* 0A4464 800A7464 38001012 */  li        r0, 0x1012
/* 0A4468 800A7468 38A00001 */  li        r5, 0x1
/* 0A446C 800A746C 98868000 */  stb       r4, -0x8000(r6)
/* 0A4470 800A7470 38800061 */  li        r4, 0x61
/* 0A4474 800A7474 3C605800 */  lis       r3, 0x5800
/* 0A4478 800A7478 90068000 */  stw       r0, -0x8000(r6)
/* 0A447C 800A747C 3803000F */  addi      r0, r3, 0xf
/* 0A4480 800A7480 3F590008 */  addis     r26, r25, 0x8
/* 0A4484 800A7484 90A68000 */  stw       r5, -0x8000(r6)
/* 0A4488 800A7488 579B2036 */  slwi      r27, r28, 4
/* 0A448C 800A748C 98868000 */  stb       r4, -0x8000(r6)
/* 0A4490 800A7490 90068000 */  stw       r0, -0x8000(r6)
/* 0A4494 800A7494 48000004 */  b         lbl_800A7498
lbl_800A7498:
/* 0A4498 800A7498 48000004 */  b         lbl_800A749C
lbl_800A749C:
/* 0A449C 800A749C 48000004 */  b         lbl_800A74A0
lbl_800A74A0:
/* 0A44A0 800A74A0 80028400 */  lwz       r0, gx@sda21(r0)
/* 0A44A4 800A74A4 387B0208 */  addi      r3, r27, 0x208
/* 0A44A8 800A74A8 7F25CB78 */  mr        r5, r25
/* 0A44AC 800A74AC 7F47D378 */  mr        r7, r26
/* 0A44B0 800A74B0 7C601A14 */  add       r3, r0, r3
/* 0A44B4 800A74B4 38800000 */  li        r4, 0x0
/* 0A44B8 800A74B8 38C00000 */  li        r6, 0x0
/* 0A44BC 800A74BC 39000000 */  li        r8, 0x0
/* 0A44C0 800A74C0 480045CD */  bl        GXInitTexCacheRegion
/* 0A44C4 800A74C4 3F5A0001 */  addis     r26, r26, 0x1
/* 0A44C8 800A74C8 3F390001 */  addis     r25, r25, 0x1
/* 0A44CC 800A74CC 3B5A8000 */  addi      r26, r26, -0x8000
/* 0A44D0 800A74D0 3B398000 */  addi      r25, r25, -0x8000
/* 0A44D4 800A74D4 3B7B0010 */  addi      r27, r27, 0x10
/* 0A44D8 800A74D8 3B9C0001 */  addi      r28, r28, 0x1
/* 0A44DC 800A74DC 281C0008 */  cmplwi    r28, 0x8
/* 0A44E0 800A74E0 4180FFC0 */  blt       lbl_800A74A0
/* 0A44E4 800A74E4 3B200000 */  li        r25, 0x0
/* 0A44E8 800A74E8 5723083C */  slwi      r3, r25, 1
/* 0A44EC 800A74EC 3B430009 */  addi      r26, r3, 0x9
/* 0A44F0 800A74F0 3B630008 */  addi      r27, r3, 0x8
/* 0A44F4 800A74F4 573C2036 */  slwi      r28, r25, 4
/* 0A44F8 800A74F8 48000004 */  b         lbl_800A74FC
lbl_800A74FC:
/* 0A44FC 800A74FC 48000004 */  b         lbl_800A7500
lbl_800A7500:
/* 0A4500 800A7500 48000004 */  b         lbl_800A7504
lbl_800A7504:
/* 0A4504 800A7504 80028400 */  lwz       r0, gx@sda21(r0)
/* 0A4508 800A7508 387C0288 */  addi      r3, r28, 0x288
/* 0A450C 800A750C 57657820 */  slwi      r5, r27, 15
/* 0A4510 800A7510 7C601A14 */  add       r3, r0, r3
/* 0A4514 800A7514 57477820 */  slwi      r7, r26, 15
/* 0A4518 800A7518 38800000 */  li        r4, 0x0
/* 0A451C 800A751C 38C00000 */  li        r6, 0x0
/* 0A4520 800A7520 39000000 */  li        r8, 0x0
/* 0A4524 800A7524 48004569 */  bl        GXInitTexCacheRegion
/* 0A4528 800A7528 3B5A0002 */  addi      r26, r26, 0x2
/* 0A452C 800A752C 3B7B0002 */  addi      r27, r27, 0x2
/* 0A4530 800A7530 3B9C0010 */  addi      r28, r28, 0x10
/* 0A4534 800A7534 3B390001 */  addi      r25, r25, 0x1
/* 0A4538 800A7538 28190004 */  cmplwi    r25, 0x4
/* 0A453C 800A753C 4180FFC8 */  blt       lbl_800A7504
/* 0A4540 800A7540 3B200000 */  li        r25, 0x0
/* 0A4544 800A7544 57236824 */  slwi      r3, r25, 13
/* 0A4548 800A7548 3F43000C */  addis     r26, r3, 0xc
/* 0A454C 800A754C 573B2036 */  slwi      r27, r25, 4
/* 0A4550 800A7550 48000004 */  b         lbl_800A7554
lbl_800A7554:
/* 0A4554 800A7554 48000004 */  b         lbl_800A7558
lbl_800A7558:
/* 0A4558 800A7558 48000004 */  b         lbl_800A755C
lbl_800A755C:
/* 0A455C 800A755C 80028400 */  lwz       r0, gx@sda21(r0)
/* 0A4560 800A7560 387B02D0 */  addi      r3, r27, 0x2d0
/* 0A4564 800A7564 7F44D378 */  mr        r4, r26
/* 0A4568 800A7568 7C601A14 */  add       r3, r0, r3
/* 0A456C 800A756C 38A00010 */  li        r5, 0x10
/* 0A4570 800A7570 4800463D */  bl        GXInitTlutRegion
/* 0A4574 800A7574 3B5A2000 */  addi      r26, r26, 0x2000
/* 0A4578 800A7578 3B7B0010 */  addi      r27, r27, 0x10
/* 0A457C 800A757C 3B390001 */  addi      r25, r25, 0x1
/* 0A4580 800A7580 28190010 */  cmplwi    r25, 0x10
/* 0A4584 800A7584 4180FFD8 */  blt       lbl_800A755C
/* 0A4588 800A7588 3B200000 */  li        r25, 0x0
/* 0A458C 800A758C 57237820 */  slwi      r3, r25, 15
/* 0A4590 800A7590 3F43000E */  addis     r26, r3, 0xe
/* 0A4594 800A7594 48000004 */  b         lbl_800A7598
lbl_800A7598:
/* 0A4598 800A7598 48000004 */  b         lbl_800A759C
lbl_800A759C:
/* 0A459C 800A759C 48000004 */  b         lbl_800A75A0
lbl_800A75A0:
/* 0A45A0 800A75A0 38190010 */  addi      r0, r25, 0x10
/* 0A45A4 800A75A4 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A45A8 800A75A8 54032036 */  slwi      r3, r0, 4
/* 0A45AC 800A75AC 386302D0 */  addi      r3, r3, 0x2d0
/* 0A45B0 800A75B0 7F44D378 */  mr        r4, r26
/* 0A45B4 800A75B4 7C651A14 */  add       r3, r5, r3
/* 0A45B8 800A75B8 38A00040 */  li        r5, 0x40
/* 0A45BC 800A75BC 480045F1 */  bl        GXInitTlutRegion
/* 0A45C0 800A75C0 3F5A0001 */  addis     r26, r26, 0x1
/* 0A45C4 800A75C4 3B5A8000 */  addi      r26, r26, -0x8000
/* 0A45C8 800A75C8 3B390001 */  addi      r25, r25, 0x1
/* 0A45CC 800A75CC 28190004 */  cmplwi    r25, 0x4
/* 0A45D0 800A75D0 4180FFD0 */  blt       lbl_800A75A0
/* 0A45D4 800A75D4 808D8BFC */  lwz       r4, __cpReg@sda21(r0)
/* 0A45D8 800A75D8 39800000 */  li        r12, 0x0
/* 0A45DC 800A75DC 38600008 */  li        r3, 0x8
/* 0A45E0 800A75E0 B1840006 */  sth       r12, 0x6(r4)
/* 0A45E4 800A75E4 3D40CC01 */  lis       r10, 0xcc01
/* 0A45E8 800A75E8 39200020 */  li        r9, 0x20
/* 0A45EC 800A75EC 81628400 */  lwz       r11, gx@sda21(r0)
/* 0A45F0 800A75F0 39000010 */  li        r8, 0x10
/* 0A45F4 800A75F4 38E01006 */  li        r7, 0x1006
/* 0A45F8 800A75F8 388B04EC */  addi      r4, r11, 0x4ec
/* 0A45FC 800A75FC 80040000 */  lwz       r0, 0x0(r4)
/* 0A4600 800A7600 38C00061 */  li        r6, 0x61
/* 0A4604 800A7604 3CA02300 */  lis       r5, 0x2300
/* 0A4608 800A7608 5400072E */  rlwinm    r0, r0, 0, 28, 23
/* 0A460C 800A760C 90040000 */  stw       r0, 0x0(r4)
/* 0A4610 800A7610 3C802400 */  lis       r4, 0x2400
/* 0A4614 800A7614 3C006700 */  lis       r0, 0x6700
/* 0A4618 800A7618 986A8000 */  stb       r3, -0x8000(r10)
/* 0A461C 800A761C 38600000 */  li        r3, 0x0
/* 0A4620 800A7620 992A8000 */  stb       r9, -0x8000(r10)
/* 0A4624 800A7624 812B04EC */  lwz       r9, 0x4ec(r11)
/* 0A4628 800A7628 912A8000 */  stw       r9, -0x8000(r10)
/* 0A462C 800A762C 990A8000 */  stb       r8, -0x8000(r10)
/* 0A4630 800A7630 90EA8000 */  stw       r7, -0x8000(r10)
/* 0A4634 800A7634 918A8000 */  stw       r12, -0x8000(r10)
/* 0A4638 800A7638 98CA8000 */  stb       r6, -0x8000(r10)
/* 0A463C 800A763C 90AA8000 */  stw       r5, -0x8000(r10)
/* 0A4640 800A7640 98CA8000 */  stb       r6, -0x8000(r10)
/* 0A4644 800A7644 908A8000 */  stw       r4, -0x8000(r10)
/* 0A4648 800A7648 98CA8000 */  stb       r6, -0x8000(r10)
/* 0A464C 800A764C 900A8000 */  stw       r0, -0x8000(r10)
/* 0A4650 800A7650 48004849 */  bl        __GXSetTmemConfig
/* 0A4654 800A7654 4800001D */  bl        __GXInitGX
/* 0A4658 800A7658 387E04F8 */  addi      r3, r30, 0x4f8
/* 0A465C 800A765C BB210034 */  lmw       r25, 0x34(r1)
/* 0A4660 800A7660 80010054 */  lwz       r0, 0x54(r1)
/* 0A4664 800A7664 38210050 */  addi      r1, r1, 0x50
/* 0A4668 800A7668 7C0803A6 */  mtlr      r0
/* 0A466C 800A766C 4E800020 */  blr

glabel __GXInitGX
/* 0A4670 800A7670 7C0802A6 */  mflr      r0
/* 0A4674 800A7674 90010004 */  stw       r0, 0x4(r1)
/* 0A4678 800A7678 9421FF80 */  stwu      r1, -0x80(r1)
/* 0A467C 800A767C 93E1007C */  stw       r31, 0x7c(r1)
/* 0A4680 800A7680 93C10078 */  stw       r30, 0x78(r1)
/* 0A4684 800A7684 93A10074 */  stw       r29, 0x74(r1)
/* 0A4688 800A7688 80828404 */  lwz       r4, D_8018C344@sda21(r0)
/* 0A468C 800A768C 80628408 */  lwz       r3, D_8018C348@sda21(r0)
/* 0A4690 800A7690 8002840C */  lwz       r0, D_8018C34C@sda21(r0)
/* 0A4694 800A7694 90810028 */  stw       r4, 0x28(r1)
/* 0A4698 800A7698 90610024 */  stw       r3, 0x24(r1)
/* 0A469C 800A769C 90010020 */  stw       r0, 0x20(r1)
/* 0A46A0 800A76A0 4BFFF0B9 */  bl        VIGetTvFormat
/* 0A46A4 800A76A4 2C030002 */  cmpwi     r3, 0x2
/* 0A46A8 800A76A8 41820054 */  beq       lbl_800A76FC
/* 0A46AC 800A76AC 40800014 */  bge       lbl_800A76C0
/* 0A46B0 800A76B0 2C030000 */  cmpwi     r3, 0x0
/* 0A46B4 800A76B4 41820018 */  beq       lbl_800A76CC
/* 0A46B8 800A76B8 40800024 */  bge       lbl_800A76DC
/* 0A46BC 800A76BC 48000050 */  b         lbl_800A770C
lbl_800A76C0:
/* 0A46C0 800A76C0 2C030005 */  cmpwi     r3, 0x5
/* 0A46C4 800A76C4 41820028 */  beq       lbl_800A76EC
/* 0A46C8 800A76C8 48000044 */  b         lbl_800A770C
lbl_800A76CC:
/* 0A46CC 800A76CC 3C60800F */  lis       r3, GXNtsc480IntDf@ha
/* 0A46D0 800A76D0 380331C8 */  addi      r0, r3, GXNtsc480IntDf@l
/* 0A46D4 800A76D4 7C1F0378 */  mr        r31, r0
/* 0A46D8 800A76D8 48000040 */  b         lbl_800A7718
lbl_800A76DC:
/* 0A46DC 800A76DC 3C60800F */  lis       r3, GXPal528IntDf@ha
/* 0A46E0 800A76E0 3803327C */  addi      r0, r3, GXPal528IntDf@l
/* 0A46E4 800A76E4 7C1F0378 */  mr        r31, r0
/* 0A46E8 800A76E8 48000030 */  b         lbl_800A7718
lbl_800A76EC:
/* 0A46EC 800A76EC 3C60800F */  lis       r3, D_800F32B8@ha
/* 0A46F0 800A76F0 380332B8 */  addi      r0, r3, D_800F32B8@l
/* 0A46F4 800A76F4 7C1F0378 */  mr        r31, r0
/* 0A46F8 800A76F8 48000020 */  b         lbl_800A7718
lbl_800A76FC:
/* 0A46FC 800A76FC 3C60800F */  lis       r3, GXMpal480IntDf@ha
/* 0A4700 800A7700 38033240 */  addi      r0, r3, GXMpal480IntDf@l
/* 0A4704 800A7704 7C1F0378 */  mr        r31, r0
/* 0A4708 800A7708 48000010 */  b         lbl_800A7718
lbl_800A770C:
/* 0A470C 800A770C 3C60800F */  lis       r3, GXNtsc480IntDf@ha
/* 0A4710 800A7710 380331C8 */  addi      r0, r3, GXNtsc480IntDf@l
/* 0A4714 800A7714 7C1F0378 */  mr        r31, r0
lbl_800A7718:
/* 0A4718 800A7718 80010028 */  lwz       r0, 0x28(r1)
/* 0A471C 800A771C 3C800100 */  lis       r4, 0x100
/* 0A4720 800A7720 3861001C */  addi      r3, r1, 0x1c
/* 0A4724 800A7724 9001001C */  stw       r0, 0x1c(r1)
/* 0A4728 800A7728 3884FFFF */  subi      r4, r4, 0x1
/* 0A472C 800A772C 480032B1 */  bl        GXSetCopyClear
/* 0A4730 800A7730 38600000 */  li        r3, 0x0
/* 0A4734 800A7734 38800001 */  li        r4, 0x1
/* 0A4738 800A7738 38A00004 */  li        r5, 0x4
/* 0A473C 800A773C 38C0003C */  li        r6, 0x3c
/* 0A4740 800A7740 38E00000 */  li        r7, 0x0
/* 0A4744 800A7744 3900007D */  li        r8, 0x7d
/* 0A4748 800A7748 48001DA5 */  bl        fn_800A94EC
/* 0A474C 800A774C 38600001 */  li        r3, 0x1
/* 0A4750 800A7750 38800001 */  li        r4, 0x1
/* 0A4754 800A7754 38A00005 */  li        r5, 0x5
/* 0A4758 800A7758 38C0003C */  li        r6, 0x3c
/* 0A475C 800A775C 38E00000 */  li        r7, 0x0
/* 0A4760 800A7760 3900007D */  li        r8, 0x7d
/* 0A4764 800A7764 48001D89 */  bl        fn_800A94EC
/* 0A4768 800A7768 38600002 */  li        r3, 0x2
/* 0A476C 800A776C 38800001 */  li        r4, 0x1
/* 0A4770 800A7770 38A00006 */  li        r5, 0x6
/* 0A4774 800A7774 38C0003C */  li        r6, 0x3c
/* 0A4778 800A7778 38E00000 */  li        r7, 0x0
/* 0A477C 800A777C 3900007D */  li        r8, 0x7d
/* 0A4780 800A7780 48001D6D */  bl        fn_800A94EC
/* 0A4784 800A7784 38600003 */  li        r3, 0x3
/* 0A4788 800A7788 38800001 */  li        r4, 0x1
/* 0A478C 800A778C 38A00007 */  li        r5, 0x7
/* 0A4790 800A7790 38C0003C */  li        r6, 0x3c
/* 0A4794 800A7794 38E00000 */  li        r7, 0x0
/* 0A4798 800A7798 3900007D */  li        r8, 0x7d
/* 0A479C 800A779C 48001D51 */  bl        fn_800A94EC
/* 0A47A0 800A77A0 38600004 */  li        r3, 0x4
/* 0A47A4 800A77A4 38800001 */  li        r4, 0x1
/* 0A47A8 800A77A8 38A00008 */  li        r5, 0x8
/* 0A47AC 800A77AC 38C0003C */  li        r6, 0x3c
/* 0A47B0 800A77B0 38E00000 */  li        r7, 0x0
/* 0A47B4 800A77B4 3900007D */  li        r8, 0x7d
/* 0A47B8 800A77B8 48001D35 */  bl        fn_800A94EC
/* 0A47BC 800A77BC 38600005 */  li        r3, 0x5
/* 0A47C0 800A77C0 38800001 */  li        r4, 0x1
/* 0A47C4 800A77C4 38A00009 */  li        r5, 0x9
/* 0A47C8 800A77C8 38C0003C */  li        r6, 0x3c
/* 0A47CC 800A77CC 38E00000 */  li        r7, 0x0
/* 0A47D0 800A77D0 3900007D */  li        r8, 0x7d
/* 0A47D4 800A77D4 48001D19 */  bl        fn_800A94EC
/* 0A47D8 800A77D8 38600006 */  li        r3, 0x6
/* 0A47DC 800A77DC 38800001 */  li        r4, 0x1
/* 0A47E0 800A77E0 38A0000A */  li        r5, 0xa
/* 0A47E4 800A77E4 38C0003C */  li        r6, 0x3c
/* 0A47E8 800A77E8 38E00000 */  li        r7, 0x0
/* 0A47EC 800A77EC 3900007D */  li        r8, 0x7d
/* 0A47F0 800A77F0 48001CFD */  bl        fn_800A94EC
/* 0A47F4 800A77F4 38600007 */  li        r3, 0x7
/* 0A47F8 800A77F8 38800001 */  li        r4, 0x1
/* 0A47FC 800A77FC 38A0000B */  li        r5, 0xb
/* 0A4800 800A7800 38C0003C */  li        r6, 0x3c
/* 0A4804 800A7804 38E00000 */  li        r7, 0x0
/* 0A4808 800A7808 3900007D */  li        r8, 0x7d
/* 0A480C 800A780C 48001CE1 */  bl        fn_800A94EC
/* 0A4810 800A7810 38600001 */  li        r3, 0x1
/* 0A4814 800A7814 48001FA9 */  bl        GXSetNumTexGens
/* 0A4818 800A7818 48001495 */  bl        GXClearVtxDesc
/* 0A481C 800A781C 48001CC1 */  bl        GXInvalidateVtxCache
/* 0A4820 800A7820 3BA00009 */  li        r29, 0x9
/* 0A4824 800A7824 48000004 */  b         lbl_800A7828
lbl_800A7828:
/* 0A4828 800A7828 48000004 */  b         lbl_800A782C
lbl_800A782C:
/* 0A482C 800A782C 48000004 */  b         lbl_800A7830
lbl_800A7830:
/* 0A4830 800A7830 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A4834 800A7834 7FA3EB78 */  mr        r3, r29
/* 0A4838 800A7838 38A00000 */  li        r5, 0x0
/* 0A483C 800A783C 48001C15 */  bl        fn_800A9450
/* 0A4840 800A7840 3BBD0001 */  addi      r29, r29, 0x1
/* 0A4844 800A7844 281D0018 */  cmplwi    r29, 0x18
/* 0A4848 800A7848 4081FFE8 */  ble       lbl_800A7830
/* 0A484C 800A784C 3BA00000 */  li        r29, 0x0
/* 0A4850 800A7850 48000004 */  b         lbl_800A7854
lbl_800A7854:
/* 0A4854 800A7854 3C60800F */  lis       r3, D_800F2F7C@ha
/* 0A4858 800A7858 3BC32F7C */  addi      r30, r3, D_800F2F7C@l
/* 0A485C 800A785C 48000004 */  b         lbl_800A7860
lbl_800A7860:
/* 0A4860 800A7860 48000004 */  b         lbl_800A7864
lbl_800A7864:
/* 0A4864 800A7864 7FA3EB78 */  mr        r3, r29
/* 0A4868 800A7868 7FC4F378 */  mr        r4, r30
/* 0A486C 800A786C 480017D1 */  bl        fn_800A903C
/* 0A4870 800A7870 3BBD0001 */  addi      r29, r29, 0x1
/* 0A4874 800A7874 281D0008 */  cmplwi    r29, 0x8
/* 0A4878 800A7878 4180FFEC */  blt       lbl_800A7864
/* 0A487C 800A787C 38600006 */  li        r3, 0x6
/* 0A4880 800A7880 38800000 */  li        r4, 0x0
/* 0A4884 800A7884 48002861 */  bl        GXSetLineWidth
/* 0A4888 800A7888 38600006 */  li        r3, 0x6
/* 0A488C 800A788C 38800000 */  li        r4, 0x0
/* 0A4890 800A7890 4800289D */  bl        GXSetPointSize
/* 0A4894 800A7894 38600000 */  li        r3, 0x0
/* 0A4898 800A7898 38800000 */  li        r4, 0x0
/* 0A489C 800A789C 38A00000 */  li        r5, 0x0
/* 0A48A0 800A78A0 480028D5 */  bl        GXEnableTexOffsets
/* 0A48A4 800A78A4 38600001 */  li        r3, 0x1
/* 0A48A8 800A78A8 38800000 */  li        r4, 0x0
/* 0A48AC 800A78AC 38A00000 */  li        r5, 0x0
/* 0A48B0 800A78B0 480028C5 */  bl        GXEnableTexOffsets
/* 0A48B4 800A78B4 38600002 */  li        r3, 0x2
/* 0A48B8 800A78B8 38800000 */  li        r4, 0x0
/* 0A48BC 800A78BC 38A00000 */  li        r5, 0x0
/* 0A48C0 800A78C0 480028B5 */  bl        GXEnableTexOffsets
/* 0A48C4 800A78C4 38600003 */  li        r3, 0x3
/* 0A48C8 800A78C8 38800000 */  li        r4, 0x0
/* 0A48CC 800A78CC 38A00000 */  li        r5, 0x0
/* 0A48D0 800A78D0 480028A5 */  bl        GXEnableTexOffsets
/* 0A48D4 800A78D4 38600004 */  li        r3, 0x4
/* 0A48D8 800A78D8 38800000 */  li        r4, 0x0
/* 0A48DC 800A78DC 38A00000 */  li        r5, 0x0
/* 0A48E0 800A78E0 48002895 */  bl        GXEnableTexOffsets
/* 0A48E4 800A78E4 38600005 */  li        r3, 0x5
/* 0A48E8 800A78E8 38800000 */  li        r4, 0x0
/* 0A48EC 800A78EC 38A00000 */  li        r5, 0x0
/* 0A48F0 800A78F0 48002885 */  bl        GXEnableTexOffsets
/* 0A48F4 800A78F4 38600006 */  li        r3, 0x6
/* 0A48F8 800A78F8 38800000 */  li        r4, 0x0
/* 0A48FC 800A78FC 38A00000 */  li        r5, 0x0
/* 0A4900 800A7900 48002875 */  bl        GXEnableTexOffsets
/* 0A4904 800A7904 38600007 */  li        r3, 0x7
/* 0A4908 800A7908 38800000 */  li        r4, 0x0
/* 0A490C 800A790C 38A00000 */  li        r5, 0x0
/* 0A4910 800A7910 48002865 */  bl        GXEnableTexOffsets
/* 0A4914 800A7914 C0228410 */  lfs       f1, D_8018C350@sda21(r0)
/* 0A4918 800A7918 3861002C */  addi      r3, r1, 0x2c
/* 0A491C 800A791C C0028414 */  lfs       f0, D_8018C354@sda21(r0)
/* 0A4920 800A7920 38800000 */  li        r4, 0x0
/* 0A4924 800A7924 D021002C */  stfs      f1, 0x2c(r1)
/* 0A4928 800A7928 D0010030 */  stfs      f0, 0x30(r1)
/* 0A492C 800A792C D0010034 */  stfs      f0, 0x34(r1)
/* 0A4930 800A7930 D0010038 */  stfs      f0, 0x38(r1)
/* 0A4934 800A7934 D001003C */  stfs      f0, 0x3c(r1)
/* 0A4938 800A7938 D0210040 */  stfs      f1, 0x40(r1)
/* 0A493C 800A793C D0010044 */  stfs      f0, 0x44(r1)
/* 0A4940 800A7940 D0010048 */  stfs      f0, 0x48(r1)
/* 0A4944 800A7944 D001004C */  stfs      f0, 0x4c(r1)
/* 0A4948 800A7948 D0010050 */  stfs      f0, 0x50(r1)
/* 0A494C 800A794C D0210054 */  stfs      f1, 0x54(r1)
/* 0A4950 800A7950 D0010058 */  stfs      f0, 0x58(r1)
/* 0A4954 800A7954 48005BF5 */  bl        fn_800AD548
/* 0A4958 800A7958 3861002C */  addi      r3, r1, 0x2c
/* 0A495C 800A795C 38800000 */  li        r4, 0x0
/* 0A4960 800A7960 48005C39 */  bl        fn_800AD598
/* 0A4964 800A7964 38600000 */  li        r3, 0x0
/* 0A4968 800A7968 48005C81 */  bl        fn_800AD5E8
/* 0A496C 800A796C 3861002C */  addi      r3, r1, 0x2c
/* 0A4970 800A7970 3880003C */  li        r4, 0x3c
/* 0A4974 800A7974 38A00000 */  li        r5, 0x0
/* 0A4978 800A7978 48005CA9 */  bl        fn_800AD620
/* 0A497C 800A797C 3861002C */  addi      r3, r1, 0x2c
/* 0A4980 800A7980 3880007D */  li        r4, 0x7d
/* 0A4984 800A7984 38A00000 */  li        r5, 0x0
/* 0A4988 800A7988 48005C99 */  bl        fn_800AD620
/* 0A498C 800A798C A09F0004 */  lhz       r4, 0x4(r31)
/* 0A4990 800A7990 3C604330 */  lis       r3, 0x4330
/* 0A4994 800A7994 A01F0008 */  lhz       r0, 0x8(r31)
/* 0A4998 800A7998 9081006C */  stw       r4, 0x6c(r1)
/* 0A499C 800A799C C0228414 */  lfs       f1, D_8018C354@sda21(r0)
/* 0A49A0 800A79A0 90010064 */  stw       r0, 0x64(r1)
/* 0A49A4 800A79A4 C8828420 */  lfd       f4, D_8018C360@sda21(r0)
/* 0A49A8 800A79A8 FC400890 */  fmr       f2, f1
/* 0A49AC 800A79AC 90610068 */  stw       r3, 0x68(r1)
/* 0A49B0 800A79B0 FCA00890 */  fmr       f5, f1
/* 0A49B4 800A79B4 C0C28410 */  lfs       f6, D_8018C350@sda21(r0)
/* 0A49B8 800A79B8 90610060 */  stw       r3, 0x60(r1)
/* 0A49BC 800A79BC C8610068 */  lfd       f3, 0x68(r1)
/* 0A49C0 800A79C0 C8010060 */  lfd       f0, 0x60(r1)
/* 0A49C4 800A79C4 EC632028 */  fsubs     f3, f3, f4
/* 0A49C8 800A79C8 EC802028 */  fsubs     f4, f0, f4
/* 0A49CC 800A79CC 48005E0D */  bl        GXSetViewport
/* 0A49D0 800A79D0 3C60800F */  lis       r3, D_800F304C@ha
/* 0A49D4 800A79D4 3863304C */  addi      r3, r3, D_800F304C@l
/* 0A49D8 800A79D8 48005AB1 */  bl        fn_800AD488
/* 0A49DC 800A79DC 38600000 */  li        r3, 0x0
/* 0A49E0 800A79E0 4800283D */  bl        GXSetCoPlanar
/* 0A49E4 800A79E4 38600002 */  li        r3, 0x2
/* 0A49E8 800A79E8 480027E9 */  bl        GXSetCullMode
/* 0A49EC 800A79EC 38600000 */  li        r3, 0x0
/* 0A49F0 800A79F0 48005F25 */  bl        fn_800AD914
/* 0A49F4 800A79F4 A0BF0004 */  lhz       r5, 0x4(r31)
/* 0A49F8 800A79F8 38600000 */  li        r3, 0x0
/* 0A49FC 800A79FC A0DF0006 */  lhz       r6, 0x6(r31)
/* 0A4A00 800A7A00 38800000 */  li        r4, 0x0
/* 0A4A04 800A7A04 48005DF9 */  bl        GXSetScissor
/* 0A4A08 800A7A08 38600000 */  li        r3, 0x0
/* 0A4A0C 800A7A0C 38800000 */  li        r4, 0x0
/* 0A4A10 800A7A10 48005EC5 */  bl        fn_800AD8D4
/* 0A4A14 800A7A14 38600000 */  li        r3, 0x0
/* 0A4A18 800A7A18 48003769 */  bl        GXSetNumChans
/* 0A4A1C 800A7A1C 38600004 */  li        r3, 0x4
/* 0A4A20 800A7A20 38800000 */  li        r4, 0x0
/* 0A4A24 800A7A24 38A00000 */  li        r5, 0x0
/* 0A4A28 800A7A28 38C00001 */  li        r6, 0x1
/* 0A4A2C 800A7A2C 38E00000 */  li        r7, 0x0
/* 0A4A30 800A7A30 39000000 */  li        r8, 0x0
/* 0A4A34 800A7A34 39200002 */  li        r9, 0x2
/* 0A4A38 800A7A38 4800378D */  bl        GXSetChanCtrl
/* 0A4A3C 800A7A3C 80010024 */  lwz       r0, 0x24(r1)
/* 0A4A40 800A7A40 38810018 */  addi      r4, r1, 0x18
/* 0A4A44 800A7A44 38600004 */  li        r3, 0x4
/* 0A4A48 800A7A48 90010018 */  stw       r0, 0x18(r1)
/* 0A4A4C 800A7A4C 4800354D */  bl        GXSetChanAmbColor
/* 0A4A50 800A7A50 80010020 */  lwz       r0, 0x20(r1)
/* 0A4A54 800A7A54 38810014 */  addi      r4, r1, 0x14
/* 0A4A58 800A7A58 38600004 */  li        r3, 0x4
/* 0A4A5C 800A7A5C 90010014 */  stw       r0, 0x14(r1)
/* 0A4A60 800A7A60 4800362D */  bl        GXSetChanMatColor
/* 0A4A64 800A7A64 38600005 */  li        r3, 0x5
/* 0A4A68 800A7A68 38800000 */  li        r4, 0x0
/* 0A4A6C 800A7A6C 38A00000 */  li        r5, 0x0
/* 0A4A70 800A7A70 38C00001 */  li        r6, 0x1
/* 0A4A74 800A7A74 38E00000 */  li        r7, 0x0
/* 0A4A78 800A7A78 39000000 */  li        r8, 0x0
/* 0A4A7C 800A7A7C 39200002 */  li        r9, 0x2
/* 0A4A80 800A7A80 48003745 */  bl        GXSetChanCtrl
/* 0A4A84 800A7A84 80010024 */  lwz       r0, 0x24(r1)
/* 0A4A88 800A7A88 38810010 */  addi      r4, r1, 0x10
/* 0A4A8C 800A7A8C 38600005 */  li        r3, 0x5
/* 0A4A90 800A7A90 90010010 */  stw       r0, 0x10(r1)
/* 0A4A94 800A7A94 48003505 */  bl        GXSetChanAmbColor
/* 0A4A98 800A7A98 80010020 */  lwz       r0, 0x20(r1)
/* 0A4A9C 800A7A9C 3881000C */  addi      r4, r1, 0xc
/* 0A4AA0 800A7AA0 38600005 */  li        r3, 0x5
/* 0A4AA4 800A7AA4 9001000C */  stw       r0, 0xc(r1)
/* 0A4AA8 800A7AA8 480035E5 */  bl        GXSetChanMatColor
/* 0A4AAC 800A7AAC 48004149 */  bl        GXInvalidateTexAll
/* 0A4AB0 800A7AB0 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A4AB4 800A7AB4 3BC00000 */  li        r30, 0x0
/* 0A4AB8 800A7AB8 3C60800A */  lis       r3, fn_800A6D64@ha
/* 0A4ABC 800A7ABC 93C402C8 */  stw       r30, 0x2c8(r4)
/* 0A4AC0 800A7AC0 38636D64 */  addi      r3, r3, fn_800A6D64@l
/* 0A4AC4 800A7AC4 93C402CC */  stw       r30, 0x2cc(r4)
/* 0A4AC8 800A7AC8 48004175 */  bl        fn_800ABC3C
/* 0A4ACC 800A7ACC 3C60800A */  lis       r3, fn_800A6DE0@ha
/* 0A4AD0 800A7AD0 38636DE0 */  addi      r3, r3, fn_800A6DE0@l
/* 0A4AD4 800A7AD4 4800417D */  bl        fn_800ABC50
/* 0A4AD8 800A7AD8 38600000 */  li        r3, 0x0
/* 0A4ADC 800A7ADC 38800000 */  li        r4, 0x0
/* 0A4AE0 800A7AE0 38A00000 */  li        r5, 0x0
/* 0A4AE4 800A7AE4 38C00004 */  li        r6, 0x4
/* 0A4AE8 800A7AE8 48004F45 */  bl        GXSetTevOrder
/* 0A4AEC 800A7AEC 38600001 */  li        r3, 0x1
/* 0A4AF0 800A7AF0 38800001 */  li        r4, 0x1
/* 0A4AF4 800A7AF4 38A00001 */  li        r5, 0x1
/* 0A4AF8 800A7AF8 38C00004 */  li        r6, 0x4
/* 0A4AFC 800A7AFC 48004F31 */  bl        GXSetTevOrder
/* 0A4B00 800A7B00 38600002 */  li        r3, 0x2
/* 0A4B04 800A7B04 38800002 */  li        r4, 0x2
/* 0A4B08 800A7B08 38A00002 */  li        r5, 0x2
/* 0A4B0C 800A7B0C 38C00004 */  li        r6, 0x4
/* 0A4B10 800A7B10 48004F1D */  bl        GXSetTevOrder
/* 0A4B14 800A7B14 38600003 */  li        r3, 0x3
/* 0A4B18 800A7B18 38800003 */  li        r4, 0x3
/* 0A4B1C 800A7B1C 38A00003 */  li        r5, 0x3
/* 0A4B20 800A7B20 38C00004 */  li        r6, 0x4
/* 0A4B24 800A7B24 48004F09 */  bl        GXSetTevOrder
/* 0A4B28 800A7B28 38600004 */  li        r3, 0x4
/* 0A4B2C 800A7B2C 38800004 */  li        r4, 0x4
/* 0A4B30 800A7B30 38A00004 */  li        r5, 0x4
/* 0A4B34 800A7B34 38C00004 */  li        r6, 0x4
/* 0A4B38 800A7B38 48004EF5 */  bl        GXSetTevOrder
/* 0A4B3C 800A7B3C 38600005 */  li        r3, 0x5
/* 0A4B40 800A7B40 38800005 */  li        r4, 0x5
/* 0A4B44 800A7B44 38A00005 */  li        r5, 0x5
/* 0A4B48 800A7B48 38C00004 */  li        r6, 0x4
/* 0A4B4C 800A7B4C 48004EE1 */  bl        GXSetTevOrder
/* 0A4B50 800A7B50 38600006 */  li        r3, 0x6
/* 0A4B54 800A7B54 38800006 */  li        r4, 0x6
/* 0A4B58 800A7B58 38A00006 */  li        r5, 0x6
/* 0A4B5C 800A7B5C 38C00004 */  li        r6, 0x4
/* 0A4B60 800A7B60 48004ECD */  bl        GXSetTevOrder
/* 0A4B64 800A7B64 38600007 */  li        r3, 0x7
/* 0A4B68 800A7B68 38800007 */  li        r4, 0x7
/* 0A4B6C 800A7B6C 38A00007 */  li        r5, 0x7
/* 0A4B70 800A7B70 38C00004 */  li        r6, 0x4
/* 0A4B74 800A7B74 48004EB9 */  bl        GXSetTevOrder
/* 0A4B78 800A7B78 38600008 */  li        r3, 0x8
/* 0A4B7C 800A7B7C 388000FF */  li        r4, 0xff
/* 0A4B80 800A7B80 38A000FF */  li        r5, 0xff
/* 0A4B84 800A7B84 38C000FF */  li        r6, 0xff
/* 0A4B88 800A7B88 48004EA5 */  bl        GXSetTevOrder
/* 0A4B8C 800A7B8C 38600009 */  li        r3, 0x9
/* 0A4B90 800A7B90 388000FF */  li        r4, 0xff
/* 0A4B94 800A7B94 38A000FF */  li        r5, 0xff
/* 0A4B98 800A7B98 38C000FF */  li        r6, 0xff
/* 0A4B9C 800A7B9C 48004E91 */  bl        GXSetTevOrder
/* 0A4BA0 800A7BA0 3860000A */  li        r3, 0xa
/* 0A4BA4 800A7BA4 388000FF */  li        r4, 0xff
/* 0A4BA8 800A7BA8 38A000FF */  li        r5, 0xff
/* 0A4BAC 800A7BAC 38C000FF */  li        r6, 0xff
/* 0A4BB0 800A7BB0 48004E7D */  bl        GXSetTevOrder
/* 0A4BB4 800A7BB4 3860000B */  li        r3, 0xb
/* 0A4BB8 800A7BB8 388000FF */  li        r4, 0xff
/* 0A4BBC 800A7BBC 38A000FF */  li        r5, 0xff
/* 0A4BC0 800A7BC0 38C000FF */  li        r6, 0xff
/* 0A4BC4 800A7BC4 48004E69 */  bl        GXSetTevOrder
/* 0A4BC8 800A7BC8 3860000C */  li        r3, 0xc
/* 0A4BCC 800A7BCC 388000FF */  li        r4, 0xff
/* 0A4BD0 800A7BD0 38A000FF */  li        r5, 0xff
/* 0A4BD4 800A7BD4 38C000FF */  li        r6, 0xff
/* 0A4BD8 800A7BD8 48004E55 */  bl        GXSetTevOrder
/* 0A4BDC 800A7BDC 3860000D */  li        r3, 0xd
/* 0A4BE0 800A7BE0 388000FF */  li        r4, 0xff
/* 0A4BE4 800A7BE4 38A000FF */  li        r5, 0xff
/* 0A4BE8 800A7BE8 38C000FF */  li        r6, 0xff
/* 0A4BEC 800A7BEC 48004E41 */  bl        GXSetTevOrder
/* 0A4BF0 800A7BF0 3860000E */  li        r3, 0xe
/* 0A4BF4 800A7BF4 388000FF */  li        r4, 0xff
/* 0A4BF8 800A7BF8 38A000FF */  li        r5, 0xff
/* 0A4BFC 800A7BFC 38C000FF */  li        r6, 0xff
/* 0A4C00 800A7C00 48004E2D */  bl        GXSetTevOrder
/* 0A4C04 800A7C04 3860000F */  li        r3, 0xf
/* 0A4C08 800A7C08 388000FF */  li        r4, 0xff
/* 0A4C0C 800A7C0C 38A000FF */  li        r5, 0xff
/* 0A4C10 800A7C10 38C000FF */  li        r6, 0xff
/* 0A4C14 800A7C14 48004E19 */  bl        GXSetTevOrder
/* 0A4C18 800A7C18 38600001 */  li        r3, 0x1
/* 0A4C1C 800A7C1C 48004FE9 */  bl        GXSetNumTevStages
/* 0A4C20 800A7C20 38600000 */  li        r3, 0x0
/* 0A4C24 800A7C24 38800003 */  li        r4, 0x3
/* 0A4C28 800A7C28 48004829 */  bl        GXSetTevOp
/* 0A4C2C 800A7C2C 38600007 */  li        r3, 0x7
/* 0A4C30 800A7C30 38800000 */  li        r4, 0x0
/* 0A4C34 800A7C34 38A00000 */  li        r5, 0x0
/* 0A4C38 800A7C38 38C00007 */  li        r6, 0x7
/* 0A4C3C 800A7C3C 38E00000 */  li        r7, 0x0
/* 0A4C40 800A7C40 48004D15 */  bl        GXSetAlphaCompare
/* 0A4C44 800A7C44 38600000 */  li        r3, 0x0
/* 0A4C48 800A7C48 38800011 */  li        r4, 0x11
/* 0A4C4C 800A7C4C 38A00000 */  li        r5, 0x0
/* 0A4C50 800A7C50 48004D59 */  bl        GXSetZTexture
/* 0A4C54 800A7C54 48000004 */  b         lbl_800A7C58
lbl_800A7C58:
/* 0A4C58 800A7C58 48000004 */  b         lbl_800A7C5C
lbl_800A7C5C:
/* 0A4C5C 800A7C5C 48000004 */  b         lbl_800A7C60
lbl_800A7C60:
/* 0A4C60 800A7C60 7FC3F378 */  mr        r3, r30
/* 0A4C64 800A7C64 38800006 */  li        r4, 0x6
/* 0A4C68 800A7C68 48004B29 */  bl        GXSetTevKColorSel
/* 0A4C6C 800A7C6C 7FC3F378 */  mr        r3, r30
/* 0A4C70 800A7C70 38800000 */  li        r4, 0x0
/* 0A4C74 800A7C74 48004B89 */  bl        GXSetTevKAlphaSel
/* 0A4C78 800A7C78 7FC3F378 */  mr        r3, r30
/* 0A4C7C 800A7C7C 38800000 */  li        r4, 0x0
/* 0A4C80 800A7C80 38A00000 */  li        r5, 0x0
/* 0A4C84 800A7C84 48004BE5 */  bl        GXSetTevSwapMode
/* 0A4C88 800A7C88 3BDE0001 */  addi      r30, r30, 0x1
/* 0A4C8C 800A7C8C 281E0010 */  cmplwi    r30, 0x10
/* 0A4C90 800A7C90 4180FFD0 */  blt       lbl_800A7C60
/* 0A4C94 800A7C94 38600000 */  li        r3, 0x0
/* 0A4C98 800A7C98 38800000 */  li        r4, 0x0
/* 0A4C9C 800A7C9C 38A00001 */  li        r5, 0x1
/* 0A4CA0 800A7CA0 38C00002 */  li        r6, 0x2
/* 0A4CA4 800A7CA4 38E00003 */  li        r7, 0x3
/* 0A4CA8 800A7CA8 48004C15 */  bl        GXSetTevSwapModeTable
/* 0A4CAC 800A7CAC 38600001 */  li        r3, 0x1
/* 0A4CB0 800A7CB0 38800000 */  li        r4, 0x0
/* 0A4CB4 800A7CB4 38A00000 */  li        r5, 0x0
/* 0A4CB8 800A7CB8 38C00000 */  li        r6, 0x0
/* 0A4CBC 800A7CBC 38E00003 */  li        r7, 0x3
/* 0A4CC0 800A7CC0 48004BFD */  bl        GXSetTevSwapModeTable
/* 0A4CC4 800A7CC4 38600002 */  li        r3, 0x2
/* 0A4CC8 800A7CC8 38800001 */  li        r4, 0x1
/* 0A4CCC 800A7CCC 38A00001 */  li        r5, 0x1
/* 0A4CD0 800A7CD0 38C00001 */  li        r6, 0x1
/* 0A4CD4 800A7CD4 38E00003 */  li        r7, 0x3
/* 0A4CD8 800A7CD8 48004BE5 */  bl        GXSetTevSwapModeTable
/* 0A4CDC 800A7CDC 38600003 */  li        r3, 0x3
/* 0A4CE0 800A7CE0 38800002 */  li        r4, 0x2
/* 0A4CE4 800A7CE4 38A00002 */  li        r5, 0x2
/* 0A4CE8 800A7CE8 38C00002 */  li        r6, 0x2
/* 0A4CEC 800A7CEC 38E00003 */  li        r7, 0x3
/* 0A4CF0 800A7CF0 48004BCD */  bl        GXSetTevSwapModeTable
/* 0A4CF4 800A7CF4 3BC00000 */  li        r30, 0x0
/* 0A4CF8 800A7CF8 48000004 */  b         lbl_800A7CFC
lbl_800A7CFC:
/* 0A4CFC 800A7CFC 48000004 */  b         lbl_800A7D00
lbl_800A7D00:
/* 0A4D00 800A7D00 48000004 */  b         lbl_800A7D04
lbl_800A7D04:
/* 0A4D04 800A7D04 7FC3F378 */  mr        r3, r30
/* 0A4D08 800A7D08 48004611 */  bl        fn_800AC318
/* 0A4D0C 800A7D0C 3BDE0001 */  addi      r30, r30, 0x1
/* 0A4D10 800A7D10 281E0010 */  cmplwi    r30, 0x10
/* 0A4D14 800A7D14 4180FFF0 */  blt       lbl_800A7D04
/* 0A4D18 800A7D18 38600000 */  li        r3, 0x0
/* 0A4D1C 800A7D1C 480045D5 */  bl        fn_800AC2F0
/* 0A4D20 800A7D20 38600000 */  li        r3, 0x0
/* 0A4D24 800A7D24 38800000 */  li        r4, 0x0
/* 0A4D28 800A7D28 38A00000 */  li        r5, 0x0
/* 0A4D2C 800A7D2C 48004449 */  bl        fn_800AC174
/* 0A4D30 800A7D30 38600001 */  li        r3, 0x1
/* 0A4D34 800A7D34 38800000 */  li        r4, 0x0
/* 0A4D38 800A7D38 38A00000 */  li        r5, 0x0
/* 0A4D3C 800A7D3C 48004439 */  bl        fn_800AC174
/* 0A4D40 800A7D40 38600002 */  li        r3, 0x2
/* 0A4D44 800A7D44 38800000 */  li        r4, 0x0
/* 0A4D48 800A7D48 38A00000 */  li        r5, 0x0
/* 0A4D4C 800A7D4C 48004429 */  bl        fn_800AC174
/* 0A4D50 800A7D50 38600003 */  li        r3, 0x3
/* 0A4D54 800A7D54 38800000 */  li        r4, 0x0
/* 0A4D58 800A7D58 38A00000 */  li        r5, 0x0
/* 0A4D5C 800A7D5C 48004419 */  bl        fn_800AC174
/* 0A4D60 800A7D60 C0428410 */  lfs       f2, D_8018C350@sda21(r0)
/* 0A4D64 800A7D64 38810008 */  addi      r4, r1, 0x8
/* 0A4D68 800A7D68 80010024 */  lwz       r0, 0x24(r1)
/* 0A4D6C 800A7D6C 38600000 */  li        r3, 0x0
/* 0A4D70 800A7D70 FC801090 */  fmr       f4, f2
/* 0A4D74 800A7D74 90010008 */  stw       r0, 0x8(r1)
/* 0A4D78 800A7D78 C0228414 */  lfs       f1, D_8018C354@sda21(r0)
/* 0A4D7C 800A7D7C C0628418 */  lfs       f3, D_8018C358@sda21(r0)
/* 0A4D80 800A7D80 48004EB5 */  bl        fn_800ACC34
/* 0A4D84 800A7D84 38600000 */  li        r3, 0x0
/* 0A4D88 800A7D88 38800000 */  li        r4, 0x0
/* 0A4D8C 800A7D8C 38A00000 */  li        r5, 0x0
/* 0A4D90 800A7D90 4800521D */  bl        fn_800ACFAC
/* 0A4D94 800A7D94 38600000 */  li        r3, 0x0
/* 0A4D98 800A7D98 38800004 */  li        r4, 0x4
/* 0A4D9C 800A7D9C 38A00005 */  li        r5, 0x5
/* 0A4DA0 800A7DA0 38C00000 */  li        r6, 0x0
/* 0A4DA4 800A7DA4 48005309 */  bl        fn_800AD0AC
/* 0A4DA8 800A7DA8 38600001 */  li        r3, 0x1
/* 0A4DAC 800A7DAC 48005355 */  bl        fn_800AD100
/* 0A4DB0 800A7DB0 38600001 */  li        r3, 0x1
/* 0A4DB4 800A7DB4 48005379 */  bl        fn_800AD12C
/* 0A4DB8 800A7DB8 38600001 */  li        r3, 0x1
/* 0A4DBC 800A7DBC 38800003 */  li        r4, 0x3
/* 0A4DC0 800A7DC0 38A00001 */  li        r5, 0x1
/* 0A4DC4 800A7DC4 48005395 */  bl        GXSetZMode
/* 0A4DC8 800A7DC8 38600001 */  li        r3, 0x1
/* 0A4DCC 800A7DCC 480053C1 */  bl        fn_800AD18C
/* 0A4DD0 800A7DD0 38600001 */  li        r3, 0x1
/* 0A4DD4 800A7DD4 480054D9 */  bl        fn_800AD2AC
/* 0A4DD8 800A7DD8 38600000 */  li        r3, 0x0
/* 0A4DDC 800A7DDC 38800000 */  li        r4, 0x0
/* 0A4DE0 800A7DE0 48005501 */  bl        fn_800AD2E0
/* 0A4DE4 800A7DE4 38600000 */  li        r3, 0x0
/* 0A4DE8 800A7DE8 38800000 */  li        r4, 0x0
/* 0A4DEC 800A7DEC 480053D9 */  bl        GXSetPixelFmt
/* 0A4DF0 800A7DF0 38600001 */  li        r3, 0x1
/* 0A4DF4 800A7DF4 38800001 */  li        r4, 0x1
/* 0A4DF8 800A7DF8 48005525 */  bl        fn_800AD31C
/* 0A4DFC 800A7DFC A01F0008 */  lhz       r0, 0x8(r31)
/* 0A4E00 800A7E00 A07F0010 */  lhz       r3, 0x10(r31)
/* 0A4E04 800A7E04 5400083C */  slwi      r0, r0, 1
/* 0A4E08 800A7E08 7C030000 */  cmpw      r3, r0
/* 0A4E0C 800A7E0C 4082000C */  bne       lbl_800A7E18
/* 0A4E10 800A7E10 38800001 */  li        r4, 0x1
/* 0A4E14 800A7E14 48000008 */  b         lbl_800A7E1C
lbl_800A7E18:
/* 0A4E18 800A7E18 38800000 */  li        r4, 0x0
lbl_800A7E1C:
/* 0A4E1C 800A7E1C 887F0018 */  lbz       r3, 0x18(r31)
/* 0A4E20 800A7E20 48005535 */  bl        fn_800AD354
/* 0A4E24 800A7E24 A0BF0004 */  lhz       r5, 0x4(r31)
/* 0A4E28 800A7E28 38600000 */  li        r3, 0x0
/* 0A4E2C 800A7E2C A0DF0006 */  lhz       r6, 0x6(r31)
/* 0A4E30 800A7E30 38800000 */  li        r4, 0x0
/* 0A4E34 800A7E34 48002569 */  bl        GXSetDispCopySrc
/* 0A4E38 800A7E38 A07F0004 */  lhz       r3, 0x4(r31)
/* 0A4E3C 800A7E3C A09F0006 */  lhz       r4, 0x6(r31)
/* 0A4E40 800A7E40 4800267D */  bl        GXSetDispCopyDst
/* 0A4E44 800A7E44 A09F0008 */  lhz       r4, 0x8(r31)
/* 0A4E48 800A7E48 3C604330 */  lis       r3, 0x4330
/* 0A4E4C 800A7E4C A01F0006 */  lhz       r0, 0x6(r31)
/* 0A4E50 800A7E50 90810064 */  stw       r4, 0x64(r1)
/* 0A4E54 800A7E54 C8428420 */  lfd       f2, D_8018C360@sda21(r0)
/* 0A4E58 800A7E58 9001006C */  stw       r0, 0x6c(r1)
/* 0A4E5C 800A7E5C 90610060 */  stw       r3, 0x60(r1)
/* 0A4E60 800A7E60 90610068 */  stw       r3, 0x68(r1)
/* 0A4E64 800A7E64 C8210060 */  lfd       f1, 0x60(r1)
/* 0A4E68 800A7E68 C8010068 */  lfd       f0, 0x68(r1)
/* 0A4E6C 800A7E6C EC211028 */  fsubs     f1, f1, f2
/* 0A4E70 800A7E70 EC001028 */  fsubs     f0, f0, f2
/* 0A4E74 800A7E74 EC210024 */  fdivs     f1, f1, f0
/* 0A4E78 800A7E78 48002A9D */  bl        GXSetDispCopyYScale
/* 0A4E7C 800A7E7C 38600003 */  li        r3, 0x3
/* 0A4E80 800A7E80 480027F5 */  bl        GXSetCopyClamp
/* 0A4E84 800A7E84 887F0019 */  lbz       r3, 0x19(r31)
/* 0A4E88 800A7E88 389F001A */  addi      r4, r31, 0x1a
/* 0A4E8C 800A7E8C 38DF0032 */  addi      r6, r31, 0x32
/* 0A4E90 800A7E90 38A00001 */  li        r5, 0x1
/* 0A4E94 800A7E94 48002BB1 */  bl        GXSetCopyFilter
/* 0A4E98 800A7E98 38600000 */  li        r3, 0x0
/* 0A4E9C 800A7E9C 48002DD1 */  bl        GXSetDispCopyGamma
/* 0A4EA0 800A7EA0 38600000 */  li        r3, 0x0
/* 0A4EA4 800A7EA4 480027A9 */  bl        GXSetDispCopyFrame2Field
/* 0A4EA8 800A7EA8 480030B9 */  bl        GXClearBoundingBox
/* 0A4EAC 800A7EAC 38600001 */  li        r3, 0x1
/* 0A4EB0 800A7EB0 48001D95 */  bl        fn_800A9C44
/* 0A4EB4 800A7EB4 38600001 */  li        r3, 0x1
/* 0A4EB8 800A7EB8 48001CE9 */  bl        fn_800A9BA0
/* 0A4EBC 800A7EBC 38600000 */  li        r3, 0x0
/* 0A4EC0 800A7EC0 48001DB5 */  bl        fn_800A9C74
/* 0A4EC4 800A7EC4 38600000 */  li        r3, 0x0
/* 0A4EC8 800A7EC8 38800000 */  li        r4, 0x0
/* 0A4ECC 800A7ECC 38A00001 */  li        r5, 0x1
/* 0A4ED0 800A7ED0 38C0000F */  li        r6, 0xf
/* 0A4ED4 800A7ED4 48001CE9 */  bl        fn_800A9BBC
/* 0A4ED8 800A7ED8 38600007 */  li        r3, 0x7
/* 0A4EDC 800A7EDC 38800000 */  li        r4, 0x0
/* 0A4EE0 800A7EE0 48001C99 */  bl        fn_800A9B78
/* 0A4EE4 800A7EE4 38600001 */  li        r3, 0x1
/* 0A4EE8 800A7EE8 48001CA5 */  bl        fn_800A9B8C
/* 0A4EEC 800A7EEC 38600000 */  li        r3, 0x0
/* 0A4EF0 800A7EF0 38800000 */  li        r4, 0x0
/* 0A4EF4 800A7EF4 48001D6D */  bl        fn_800A9C60
/* 0A4EF8 800A7EF8 38600001 */  li        r3, 0x1
/* 0A4EFC 800A7EFC 38800007 */  li        r4, 0x7
/* 0A4F00 800A7F00 38A00001 */  li        r5, 0x1
/* 0A4F04 800A7F04 48001D8D */  bl        fn_800A9C90
/* 0A4F08 800A7F08 38600023 */  li        r3, 0x23
/* 0A4F0C 800A7F0C 38800016 */  li        r4, 0x16
/* 0A4F10 800A7F10 48005AB1 */  bl        GXSetGPMetric
/* 0A4F14 800A7F14 4800649D */  bl        GXClearGPMetric
/* 0A4F18 800A7F18 80010084 */  lwz       r0, 0x84(r1)
/* 0A4F1C 800A7F1C 83E1007C */  lwz       r31, 0x7c(r1)
/* 0A4F20 800A7F20 83C10078 */  lwz       r30, 0x78(r1)
/* 0A4F24 800A7F24 83A10074 */  lwz       r29, 0x74(r1)
/* 0A4F28 800A7F28 38210080 */  addi      r1, r1, 0x80
/* 0A4F2C 800A7F2C 7C0803A6 */  mtlr      r0
/* 0A4F30 800A7F30 4E800020 */  blr

# 0x800F2F38 - 0x800F3068
.section .data, "wa"

.balign 8

glabel D_800F2F38
	.string "<< Dolphin SDK - GX\trelease build: Sep  5 2002 05:33:28 (0x2301) >>"

glabel D_800F2F7C
	.long 0x00000009
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x0000000A
	.long 0x00000000
	.long 0x00000004
	.long 0x00000000
	.long 0x0000000B
	.long 0x00000001
	.long 0x00000005
	.long 0x00000000
	.long 0x0000000C
	.long 0x00000001
	.long 0x00000005
	.long 0x00000000
	.long 0x0000000D
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x0000000E
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x0000000F
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x00000010
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x00000011
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x00000012
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x00000013
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x00000014
	.long 0x00000001
	.long 0x00000004
	.long 0x00000000
	.long 0x000000FF
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000

glabel D_800F304C
	.long 0x3F800000
	.long 0x00000000
	.long 0x3F800000
	.long 0x00000000
	.long 0xBF800000
	.long 0xC0000000
	.long 0x00000000

# 0x80188198 - 0x80188710
.section .bss, "wa"

gxData:
	.skip 0x4F8

FifoObj:
	.skip 0x80

# 0x8018B6F8 - 0x8018B700
.section .sdata, "wa"

glabel __GXVersion
	.long D_800F2F38

glabel gap_07_8018B6FC_sdata
.hidden gap_07_8018B6FC_sdata
	.long 0x00000000

# 0x8018BB78 - 0x8018BB88
.section .sbss, "wa"

glabel __piReg
	.skip 0x4

glabel __cpReg
	.skip 0x4

glabel __peReg
	.skip 0x4

glabel __memReg
	.skip 0x4

# 0x8018C340 - 0x8018C368
.section .sdata2, "a"

glabel gx
	.long gxData

glabel D_8018C344
	.long 0x404040FF

glabel D_8018C348
	.long 0x00000000

glabel D_8018C34C
	.long 0xFFFFFFFF

glabel D_8018C350
	.float 1

glabel D_8018C354
	.float 0

glabel D_8018C358
	.float 0.1

glabel gap_09_8018C35C_sdata2
.hidden gap_09_8018C35C_sdata2
	.long 0x00000000

glabel D_8018C360
	.double 4503599627370496
