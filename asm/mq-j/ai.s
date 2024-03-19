# ai.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B6CD8 - 0x800B75F8

glabel AIRegisterDMACallback
/* 0B3CD8 800B6CD8 7C0802A6 */  mflr      r0
/* 0B3CDC 800B6CDC 90010004 */  stw       r0, 0x4(r1)
/* 0B3CE0 800B6CE0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B3CE4 800B6CE4 93E10014 */  stw       r31, 0x14(r1)
/* 0B3CE8 800B6CE8 93C10010 */  stw       r30, 0x10(r1)
/* 0B3CEC 800B6CEC 7C7E1B78 */  mr        r30, r3
/* 0B3CF0 800B6CF0 83ED8DD4 */  lwz       r31, D_8018BD54@sda21(r0)
/* 0B3CF4 800B6CF4 4BFE7555 */  bl        OSDisableInterrupts
/* 0B3CF8 800B6CF8 93CD8DD4 */  stw       r30, D_8018BD54@sda21(r0)
/* 0B3CFC 800B6CFC 4BFE7575 */  bl        OSRestoreInterrupts
/* 0B3D00 800B6D00 7FE3FB78 */  mr        r3, r31
/* 0B3D04 800B6D04 8001001C */  lwz       r0, 0x1c(r1)
/* 0B3D08 800B6D08 83E10014 */  lwz       r31, 0x14(r1)
/* 0B3D0C 800B6D0C 83C10010 */  lwz       r30, 0x10(r1)
/* 0B3D10 800B6D10 38210018 */  addi      r1, r1, 0x18
/* 0B3D14 800B6D14 7C0803A6 */  mtlr      r0
/* 0B3D18 800B6D18 4E800020 */  blr

glabel AIInitDMA
/* 0B3D1C 800B6D1C 7C0802A6 */  mflr      r0
/* 0B3D20 800B6D20 90010004 */  stw       r0, 0x4(r1)
/* 0B3D24 800B6D24 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B3D28 800B6D28 93E10014 */  stw       r31, 0x14(r1)
/* 0B3D2C 800B6D2C 3BE40000 */  addi      r31, r4, 0x0
/* 0B3D30 800B6D30 93C10010 */  stw       r30, 0x10(r1)
/* 0B3D34 800B6D34 3BC30000 */  addi      r30, r3, 0x0
/* 0B3D38 800B6D38 4BFE7511 */  bl        OSDisableInterrupts
/* 0B3D3C 800B6D3C 3C80CC00 */  lis       r4, 0xcc00
/* 0B3D40 800B6D40 A0045030 */  lhz       r0, 0x5030(r4)
/* 0B3D44 800B6D44 38A45000 */  addi      r5, r4, 0x5000
/* 0B3D48 800B6D48 38C45000 */  addi      r6, r4, 0x5000
/* 0B3D4C 800B6D4C 38E45000 */  addi      r7, r4, 0x5000
/* 0B3D50 800B6D50 5404002A */  clrrwi    r4, r0, 10
/* 0B3D54 800B6D54 57C0843E */  srwi      r0, r30, 16
/* 0B3D58 800B6D58 7C800378 */  or        r0, r4, r0
/* 0B3D5C 800B6D5C B0050030 */  sth       r0, 0x30(r5)
/* 0B3D60 800B6D60 57C0043E */  clrlwi    r0, r30, 16
/* 0B3D64 800B6D64 A0860032 */  lhz       r4, 0x32(r6)
/* 0B3D68 800B6D68 548406DE */  rlwinm    r4, r4, 0, 27, 15
/* 0B3D6C 800B6D6C 7C800378 */  or        r0, r4, r0
/* 0B3D70 800B6D70 B0060032 */  sth       r0, 0x32(r6)
/* 0B3D74 800B6D74 57E0DC3E */  extrwi    r0, r31, 16, 11
/* 0B3D78 800B6D78 A0870036 */  lhz       r4, 0x36(r7)
/* 0B3D7C 800B6D7C 54840020 */  clrrwi    r4, r4, 15
/* 0B3D80 800B6D80 7C800378 */  or        r0, r4, r0
/* 0B3D84 800B6D84 B0070036 */  sth       r0, 0x36(r7)
/* 0B3D88 800B6D88 4BFE74E9 */  bl        OSRestoreInterrupts
/* 0B3D8C 800B6D8C 8001001C */  lwz       r0, 0x1c(r1)
/* 0B3D90 800B6D90 83E10014 */  lwz       r31, 0x14(r1)
/* 0B3D94 800B6D94 83C10010 */  lwz       r30, 0x10(r1)
/* 0B3D98 800B6D98 38210018 */  addi      r1, r1, 0x18
/* 0B3D9C 800B6D9C 7C0803A6 */  mtlr      r0
/* 0B3DA0 800B6DA0 4E800020 */  blr

glabel AIGetDMAEnableFlag
/* 0B3DA4 800B6DA4 3C60CC00 */  lis       r3, 0xcc00
/* 0B3DA8 800B6DA8 A0035036 */  lhz       r0, 0x5036(r3)
/* 0B3DAC 800B6DAC 54038FFE */  extrwi    r3, r0, 1, 16
/* 0B3DB0 800B6DB0 4E800020 */  blr

glabel AIStartDMA
/* 0B3DB4 800B6DB4 3C60CC00 */  lis       r3, 0xcc00
/* 0B3DB8 800B6DB8 38635000 */  addi      r3, r3, 0x5000
/* 0B3DBC 800B6DBC A0030036 */  lhz       r0, 0x36(r3)
/* 0B3DC0 800B6DC0 60008000 */  ori       r0, r0, 0x8000
/* 0B3DC4 800B6DC4 B0030036 */  sth       r0, 0x36(r3)
/* 0B3DC8 800B6DC8 4E800020 */  blr

glabel AIStopDMA
/* 0B3DCC 800B6DCC 3C60CC00 */  lis       r3, 0xcc00
/* 0B3DD0 800B6DD0 38635000 */  addi      r3, r3, 0x5000
/* 0B3DD4 800B6DD4 A0030036 */  lhz       r0, 0x36(r3)
/* 0B3DD8 800B6DD8 5400045E */  rlwinm    r0, r0, 0, 17, 15
/* 0B3DDC 800B6DDC B0030036 */  sth       r0, 0x36(r3)
/* 0B3DE0 800B6DE0 4E800020 */  blr

glabel AIGetDMABytesLeft
/* 0B3DE4 800B6DE4 3C60CC00 */  lis       r3, 0xcc00
/* 0B3DE8 800B6DE8 A003503A */  lhz       r0, 0x503a(r3)
/* 0B3DEC 800B6DEC 54032B34 */  clrlslwi  r3, r0, 17, 5
/* 0B3DF0 800B6DF0 4E800020 */  blr

glabel AIGetDMAStartAddr
/* 0B3DF4 800B6DF4 3C60CC00 */  lis       r3, 0xcc00
/* 0B3DF8 800B6DF8 38635000 */  addi      r3, r3, 0x5000
/* 0B3DFC 800B6DFC A0830030 */  lhz       r4, 0x30(r3)
/* 0B3E00 800B6E00 A0030032 */  lhz       r0, 0x32(r3)
/* 0B3E04 800B6E04 54030434 */  rlwinm    r3, r0, 0, 16, 26
/* 0B3E08 800B6E08 5083819E */  rlwimi    r3, r4, 16, 6, 15
/* 0B3E0C 800B6E0C 4E800020 */  blr

glabel AISetStreamPlayState
/* 0B3E10 800B6E10 7C0802A6 */  mflr      r0
/* 0B3E14 800B6E14 90010004 */  stw       r0, 0x4(r1)
/* 0B3E18 800B6E18 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B3E1C 800B6E1C 93E1001C */  stw       r31, 0x1c(r1)
/* 0B3E20 800B6E20 93C10018 */  stw       r30, 0x18(r1)
/* 0B3E24 800B6E24 93A10014 */  stw       r29, 0x14(r1)
/* 0B3E28 800B6E28 7C7D1B78 */  mr        r29, r3
/* 0B3E2C 800B6E2C 480000BD */  bl        AIGetStreamPlayState
/* 0B3E30 800B6E30 7C1D1840 */  cmplw     r29, r3
/* 0B3E34 800B6E34 41820098 */  beq       lbl_800B6ECC
/* 0B3E38 800B6E38 48000289 */  bl        AIGetStreamSampleRate
/* 0B3E3C 800B6E3C 28030000 */  cmplwi    r3, 0x0
/* 0B3E40 800B6E40 40820078 */  bne       lbl_800B6EB8
/* 0B3E44 800B6E44 281D0001 */  cmplwi    r29, 0x1
/* 0B3E48 800B6E48 40820070 */  bne       lbl_800B6EB8
/* 0B3E4C 800B6E4C 480002CD */  bl        AIGetStreamVolRight
/* 0B3E50 800B6E50 7C7E1B78 */  mr        r30, r3
/* 0B3E54 800B6E54 48000299 */  bl        AIGetStreamVolLeft
/* 0B3E58 800B6E58 3BA30000 */  addi      r29, r3, 0x0
/* 0B3E5C 800B6E5C 38600000 */  li        r3, 0x0
/* 0B3E60 800B6E60 4800029D */  bl        AISetStreamVolRight
/* 0B3E64 800B6E64 38600000 */  li        r3, 0x0
/* 0B3E68 800B6E68 48000269 */  bl        AISetStreamVolLeft
/* 0B3E6C 800B6E6C 4BFE73DD */  bl        OSDisableInterrupts
/* 0B3E70 800B6E70 7C7F1B78 */  mr        r31, r3
/* 0B3E74 800B6E74 480005A1 */  bl        __AI_SRC_INIT
/* 0B3E78 800B6E78 3C80CC00 */  lis       r4, 0xcc00
/* 0B3E7C 800B6E7C 80046C00 */  lwz       r0, 0x6c00(r4)
/* 0B3E80 800B6E80 387F0000 */  addi      r3, r31, 0x0
/* 0B3E84 800B6E84 540006F2 */  rlwinm    r0, r0, 0, 27, 25
/* 0B3E88 800B6E88 60000020 */  ori       r0, r0, 0x20
/* 0B3E8C 800B6E8C 90046C00 */  stw       r0, 0x6c00(r4)
/* 0B3E90 800B6E90 80046C00 */  lwz       r0, 0x6c00(r4)
/* 0B3E94 800B6E94 5400003C */  clrrwi    r0, r0, 1
/* 0B3E98 800B6E98 60000001 */  ori       r0, r0, 0x1
/* 0B3E9C 800B6E9C 90046C00 */  stw       r0, 0x6c00(r4)
/* 0B3EA0 800B6EA0 4BFE73D1 */  bl        OSRestoreInterrupts
/* 0B3EA4 800B6EA4 7FC3F378 */  mr        r3, r30
/* 0B3EA8 800B6EA8 48000229 */  bl        AISetStreamVolLeft
/* 0B3EAC 800B6EAC 7FA3EB78 */  mr        r3, r29
/* 0B3EB0 800B6EB0 4800024D */  bl        AISetStreamVolRight
/* 0B3EB4 800B6EB4 48000018 */  b         lbl_800B6ECC
lbl_800B6EB8:
/* 0B3EB8 800B6EB8 3C60CC00 */  lis       r3, 0xcc00
/* 0B3EBC 800B6EBC 80036C00 */  lwz       r0, 0x6c00(r3)
/* 0B3EC0 800B6EC0 5400003C */  clrrwi    r0, r0, 1
/* 0B3EC4 800B6EC4 7C00EB78 */  or        r0, r0, r29
/* 0B3EC8 800B6EC8 90036C00 */  stw       r0, 0x6c00(r3)
lbl_800B6ECC:
/* 0B3ECC 800B6ECC 80010024 */  lwz       r0, 0x24(r1)
/* 0B3ED0 800B6ED0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B3ED4 800B6ED4 83C10018 */  lwz       r30, 0x18(r1)
/* 0B3ED8 800B6ED8 83A10014 */  lwz       r29, 0x14(r1)
/* 0B3EDC 800B6EDC 38210020 */  addi      r1, r1, 0x20
/* 0B3EE0 800B6EE0 7C0803A6 */  mtlr      r0
/* 0B3EE4 800B6EE4 4E800020 */  blr

glabel AIGetStreamPlayState
/* 0B3EE8 800B6EE8 3C60CC00 */  lis       r3, 0xcc00
/* 0B3EEC 800B6EEC 80036C00 */  lwz       r0, 0x6c00(r3)
/* 0B3EF0 800B6EF0 540307FE */  clrlwi    r3, r0, 31
/* 0B3EF4 800B6EF4 4E800020 */  blr

glabel AISetDSPSampleRate
/* 0B3EF8 800B6EF8 7C0802A6 */  mflr      r0
/* 0B3EFC 800B6EFC 90010004 */  stw       r0, 0x4(r1)
/* 0B3F00 800B6F00 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B3F04 800B6F04 BF410010 */  stmw      r26, 0x10(r1)
/* 0B3F08 800B6F08 7C7A1B78 */  mr        r26, r3
/* 0B3F0C 800B6F0C 480000CD */  bl        AIGetDSPSampleRate
/* 0B3F10 800B6F10 7C1A1840 */  cmplw     r26, r3
/* 0B3F14 800B6F14 418200B0 */  beq       lbl_800B6FC4
/* 0B3F18 800B6F18 3FE0CC00 */  lis       r31, 0xcc00
/* 0B3F1C 800B6F1C 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B3F20 800B6F20 281A0000 */  cmplwi    r26, 0x0
/* 0B3F24 800B6F24 540006B0 */  rlwinm    r0, r0, 0, 26, 24
/* 0B3F28 800B6F28 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B3F2C 800B6F2C 40820098 */  bne       lbl_800B6FC4
/* 0B3F30 800B6F30 480001BD */  bl        AIGetStreamVolLeft
/* 0B3F34 800B6F34 7C7E1B78 */  mr        r30, r3
/* 0B3F38 800B6F38 480001E1 */  bl        AIGetStreamVolRight
/* 0B3F3C 800B6F3C 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B3F40 800B6F40 3BA30000 */  addi      r29, r3, 0x0
/* 0B3F44 800B6F44 541B07FE */  clrlwi    r27, r0, 31
/* 0B3F48 800B6F48 48000179 */  bl        AIGetStreamSampleRate
/* 0B3F4C 800B6F4C 3B830000 */  addi      r28, r3, 0x0
/* 0B3F50 800B6F50 38600000 */  li        r3, 0x0
/* 0B3F54 800B6F54 4800017D */  bl        AISetStreamVolLeft
/* 0B3F58 800B6F58 38600000 */  li        r3, 0x0
/* 0B3F5C 800B6F5C 480001A1 */  bl        AISetStreamVolRight
/* 0B3F60 800B6F60 4BFE72E9 */  bl        OSDisableInterrupts
/* 0B3F64 800B6F64 7C7A1B78 */  mr        r26, r3
/* 0B3F68 800B6F68 480004AD */  bl        __AI_SRC_INIT
/* 0B3F6C 800B6F6C 809F6C00 */  lwz       r4, 0x6c00(r31)
/* 0B3F70 800B6F70 5780083C */  slwi      r0, r28, 1
/* 0B3F74 800B6F74 387A0000 */  addi      r3, r26, 0x0
/* 0B3F78 800B6F78 548406F2 */  rlwinm    r4, r4, 0, 27, 25
/* 0B3F7C 800B6F7C 60840020 */  ori       r4, r4, 0x20
/* 0B3F80 800B6F80 909F6C00 */  stw       r4, 0x6c00(r31)
/* 0B3F84 800B6F84 809F6C00 */  lwz       r4, 0x6c00(r31)
/* 0B3F88 800B6F88 548407FA */  rlwinm    r4, r4, 0, 31, 29
/* 0B3F8C 800B6F8C 7C800378 */  or        r0, r4, r0
/* 0B3F90 800B6F90 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B3F94 800B6F94 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B3F98 800B6F98 5400003C */  clrrwi    r0, r0, 1
/* 0B3F9C 800B6F9C 7C00DB78 */  or        r0, r0, r27
/* 0B3FA0 800B6FA0 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B3FA4 800B6FA4 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B3FA8 800B6FA8 60000040 */  ori       r0, r0, 0x40
/* 0B3FAC 800B6FAC 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B3FB0 800B6FB0 4BFE72C1 */  bl        OSRestoreInterrupts
/* 0B3FB4 800B6FB4 7FC3F378 */  mr        r3, r30
/* 0B3FB8 800B6FB8 48000119 */  bl        AISetStreamVolLeft
/* 0B3FBC 800B6FBC 7FA3EB78 */  mr        r3, r29
/* 0B3FC0 800B6FC0 4800013D */  bl        AISetStreamVolRight
lbl_800B6FC4:
/* 0B3FC4 800B6FC4 BB410010 */  lmw       r26, 0x10(r1)
/* 0B3FC8 800B6FC8 8001002C */  lwz       r0, 0x2c(r1)
/* 0B3FCC 800B6FCC 38210028 */  addi      r1, r1, 0x28
/* 0B3FD0 800B6FD0 7C0803A6 */  mtlr      r0
/* 0B3FD4 800B6FD4 4E800020 */  blr

glabel AIGetDSPSampleRate
/* 0B3FD8 800B6FD8 3C60CC00 */  lis       r3, 0xcc00
/* 0B3FDC 800B6FDC 80036C00 */  lwz       r0, 0x6c00(r3)
/* 0B3FE0 800B6FE0 5400D7FE */  extrwi    r0, r0, 1, 25
/* 0B3FE4 800B6FE4 68030001 */  xori      r3, r0, 0x1
/* 0B3FE8 800B6FE8 4E800020 */  blr

glabel __AI_set_stream_sample_rate
/* 0B3FEC 800B6FEC 7C0802A6 */  mflr      r0
/* 0B3FF0 800B6FF0 90010004 */  stw       r0, 0x4(r1)
/* 0B3FF4 800B6FF4 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0B3FF8 800B6FF8 BF210014 */  stmw      r25, 0x14(r1)
/* 0B3FFC 800B6FFC 7C791B78 */  mr        r25, r3
/* 0B4000 800B7000 480000C1 */  bl        AIGetStreamSampleRate
/* 0B4004 800B7004 7C191840 */  cmplw     r25, r3
/* 0B4008 800B7008 418200A4 */  beq       lbl_800B70AC
/* 0B400C 800B700C 3FE0CC00 */  lis       r31, 0xcc00
/* 0B4010 800B7010 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B4014 800B7014 540007FE */  clrlwi    r0, r0, 31
/* 0B4018 800B7018 7C1D0378 */  mr        r29, r0
/* 0B401C 800B701C 480000D1 */  bl        AIGetStreamVolLeft
/* 0B4020 800B7020 7C7C1B78 */  mr        r28, r3
/* 0B4024 800B7024 480000F5 */  bl        AIGetStreamVolRight
/* 0B4028 800B7028 3B630000 */  addi      r27, r3, 0x0
/* 0B402C 800B702C 38600000 */  li        r3, 0x0
/* 0B4030 800B7030 480000CD */  bl        AISetStreamVolRight
/* 0B4034 800B7034 38600000 */  li        r3, 0x0
/* 0B4038 800B7038 48000099 */  bl        AISetStreamVolLeft
/* 0B403C 800B703C 807F6C00 */  lwz       r3, 0x6c00(r31)
/* 0B4040 800B7040 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B4044 800B7044 547A0672 */  rlwinm    r26, r3, 0, 25, 25
/* 0B4048 800B7048 540006B0 */  rlwinm    r0, r0, 0, 26, 24
/* 0B404C 800B704C 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B4050 800B7050 4BFE71F9 */  bl        OSDisableInterrupts
/* 0B4054 800B7054 7C7E1B78 */  mr        r30, r3
/* 0B4058 800B7058 480003BD */  bl        __AI_SRC_INIT
/* 0B405C 800B705C 809F6C00 */  lwz       r4, 0x6c00(r31)
/* 0B4060 800B7060 5720083C */  slwi      r0, r25, 1
/* 0B4064 800B7064 387E0000 */  addi      r3, r30, 0x0
/* 0B4068 800B7068 7C84D378 */  or        r4, r4, r26
/* 0B406C 800B706C 909F6C00 */  stw       r4, 0x6c00(r31)
/* 0B4070 800B7070 809F6C00 */  lwz       r4, 0x6c00(r31)
/* 0B4074 800B7074 548406F2 */  rlwinm    r4, r4, 0, 27, 25
/* 0B4078 800B7078 60840020 */  ori       r4, r4, 0x20
/* 0B407C 800B707C 909F6C00 */  stw       r4, 0x6c00(r31)
/* 0B4080 800B7080 809F6C00 */  lwz       r4, 0x6c00(r31)
/* 0B4084 800B7084 548407FA */  rlwinm    r4, r4, 0, 31, 29
/* 0B4088 800B7088 7C800378 */  or        r0, r4, r0
/* 0B408C 800B708C 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B4090 800B7090 4BFE71E1 */  bl        OSRestoreInterrupts
/* 0B4094 800B7094 7FA3EB78 */  mr        r3, r29
/* 0B4098 800B7098 4BFFFD79 */  bl        AISetStreamPlayState
/* 0B409C 800B709C 7F83E378 */  mr        r3, r28
/* 0B40A0 800B70A0 48000031 */  bl        AISetStreamVolLeft
/* 0B40A4 800B70A4 7F63DB78 */  mr        r3, r27
/* 0B40A8 800B70A8 48000055 */  bl        AISetStreamVolRight
lbl_800B70AC:
/* 0B40AC 800B70AC BB210014 */  lmw       r25, 0x14(r1)
/* 0B40B0 800B70B0 80010034 */  lwz       r0, 0x34(r1)
/* 0B40B4 800B70B4 38210030 */  addi      r1, r1, 0x30
/* 0B40B8 800B70B8 7C0803A6 */  mtlr      r0
/* 0B40BC 800B70BC 4E800020 */  blr

glabel AIGetStreamSampleRate
/* 0B40C0 800B70C0 3C60CC00 */  lis       r3, 0xcc00
/* 0B40C4 800B70C4 80036C00 */  lwz       r0, 0x6c00(r3)
/* 0B40C8 800B70C8 5403FFFE */  extrwi    r3, r0, 1, 30
/* 0B40CC 800B70CC 4E800020 */  blr

glabel AISetStreamVolLeft
/* 0B40D0 800B70D0 3C80CC00 */  lis       r4, 0xcc00
/* 0B40D4 800B70D4 38846C00 */  addi      r4, r4, 0x6c00
/* 0B40D8 800B70D8 80040004 */  lwz       r0, 0x4(r4)
/* 0B40DC 800B70DC 5400002E */  clrrwi    r0, r0, 8
/* 0B40E0 800B70E0 5060063E */  rlwimi    r0, r3, 0, 24, 31
/* 0B40E4 800B70E4 90040004 */  stw       r0, 0x4(r4)
/* 0B40E8 800B70E8 4E800020 */  blr

glabel AIGetStreamVolLeft
/* 0B40EC 800B70EC 3C60CC00 */  lis       r3, 0xcc00
/* 0B40F0 800B70F0 80036C04 */  lwz       r0, 0x6c04(r3)
/* 0B40F4 800B70F4 5403063E */  clrlwi    r3, r0, 24
/* 0B40F8 800B70F8 4E800020 */  blr

glabel AISetStreamVolRight
/* 0B40FC 800B70FC 3C80CC00 */  lis       r4, 0xcc00
/* 0B4100 800B7100 38846C00 */  addi      r4, r4, 0x6c00
/* 0B4104 800B7104 80040004 */  lwz       r0, 0x4(r4)
/* 0B4108 800B7108 5400061E */  rlwinm    r0, r0, 0, 24, 15
/* 0B410C 800B710C 5060442E */  rlwimi    r0, r3, 8, 16, 23
/* 0B4110 800B7110 90040004 */  stw       r0, 0x4(r4)
/* 0B4114 800B7114 4E800020 */  blr

glabel AIGetStreamVolRight
/* 0B4118 800B7118 3C60CC00 */  lis       r3, 0xcc00
/* 0B411C 800B711C 80036C04 */  lwz       r0, 0x6c04(r3)
/* 0B4120 800B7120 5403C63E */  extrwi    r3, r0, 8, 16
/* 0B4124 800B7124 4E800020 */  blr

glabel AIInit
/* 0B4128 800B7128 7C0802A6 */  mflr      r0
/* 0B412C 800B712C 90010004 */  stw       r0, 0x4(r1)
/* 0B4130 800B7130 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B4134 800B7134 93E10014 */  stw       r31, 0x14(r1)
/* 0B4138 800B7138 93C10010 */  stw       r30, 0x10(r1)
/* 0B413C 800B713C 3BC30000 */  addi      r30, r3, 0x0
/* 0B4140 800B7140 800D8DE0 */  lwz       r0, D_8018BD60@sda21(r0)
/* 0B4144 800B7144 2C000001 */  cmpwi     r0, 0x1
/* 0B4148 800B7148 41820134 */  beq       lbl_800B727C
/* 0B414C 800B714C 806D8838 */  lwz       r3, D_8018B7B8@sda21(r0)
/* 0B4150 800B7150 4BFE4B35 */  bl        OSRegisterVersion
/* 0B4154 800B7154 3C608000 */  lis       r3, 0x8000
/* 0B4158 800B7158 800300F8 */  lwz       r0, 0xf8(r3)
/* 0B415C 800B715C 3C60431C */  lis       r3, 0x431c
/* 0B4160 800B7160 3C800001 */  lis       r4, 0x1
/* 0B4164 800B7164 5400F0BE */  srwi      r0, r0, 2
/* 0B4168 800B7168 3863DE83 */  subi      r3, r3, 0x217d
/* 0B416C 800B716C 7C030016 */  mulhwu    r0, r3, r0
/* 0B4170 800B7170 54098BFE */  srwi      r9, r0, 15
/* 0B4174 800B7174 38A4A428 */  subi      r5, r4, 0x5bd8
/* 0B4178 800B7178 3864A410 */  subi      r3, r4, 0x5bf0
/* 0B417C 800B717C 3804F618 */  subi      r0, r4, 0x9e8
/* 0B4180 800B7180 3C801062 */  lis       r4, 0x1062
/* 0B4184 800B7184 7CE929D6 */  mullw     r7, r9, r5
/* 0B4188 800B7188 39444DD3 */  addi      r10, r4, 0x4dd3
/* 0B418C 800B718C 7CA919D6 */  mullw     r5, r9, r3
/* 0B4190 800B7190 7C8901D6 */  mullw     r4, r9, r0
/* 0B4194 800B7194 1D097B24 */  mulli     r8, r9, 0x7b24
/* 0B4198 800B7198 1C690BB8 */  mulli     r3, r9, 0xbb8
/* 0B419C 800B719C 7D0A4016 */  mulhwu    r8, r10, r8
/* 0B41A0 800B71A0 7CEA3816 */  mulhwu    r7, r10, r7
/* 0B41A4 800B71A4 7CAA2816 */  mulhwu    r5, r10, r5
/* 0B41A8 800B71A8 7C8A2016 */  mulhwu    r4, r10, r4
/* 0B41AC 800B71AC 7C6A1816 */  mulhwu    r3, r10, r3
/* 0B41B0 800B71B0 5508BA7E */  srwi      r8, r8, 9
/* 0B41B4 800B71B4 54E7BA7E */  srwi      r7, r7, 9
/* 0B41B8 800B71B8 910D8DEC */  stw       r8, D_8018BD6C@sda21(r0)
/* 0B41BC 800B71BC 54A5BA7E */  srwi      r5, r5, 9
/* 0B41C0 800B71C0 5484BA7E */  srwi      r4, r4, 9
/* 0B41C4 800B71C4 90ED8DF4 */  stw       r7, D_8018BD74@sda21(r0)
/* 0B41C8 800B71C8 3BE00000 */  li        r31, 0x0
/* 0B41CC 800B71CC 5463BA7E */  srwi      r3, r3, 9
/* 0B41D0 800B71D0 90AD8DFC */  stw       r5, D_8018BD7C@sda21(r0)
/* 0B41D4 800B71D4 3CC0CC00 */  lis       r6, 0xcc00
/* 0B41D8 800B71D8 906D8E0C */  stw       r3, D_8018BD8C@sda21(r0)
/* 0B41DC 800B71DC 38600001 */  li        r3, 0x1
/* 0B41E0 800B71E0 80066C00 */  lwz       r0, 0x6c00(r6)
/* 0B41E4 800B71E4 908D8E04 */  stw       r4, D_8018BD84@sda21(r0)
/* 0B41E8 800B71E8 540006F2 */  rlwinm    r0, r0, 0, 27, 25
/* 0B41EC 800B71EC 60000020 */  ori       r0, r0, 0x20
/* 0B41F0 800B71F0 93ED8DE8 */  stw       r31, D_8018BD68@sda21(r0)
/* 0B41F4 800B71F4 93ED8DF0 */  stw       r31, D_8018BD70@sda21(r0)
/* 0B41F8 800B71F8 93ED8DF8 */  stw       r31, D_8018BD78@sda21(r0)
/* 0B41FC 800B71FC 93ED8E00 */  stw       r31, D_8018BD80@sda21(r0)
/* 0B4200 800B7200 93ED8E08 */  stw       r31, D_8018BD88@sda21(r0)
/* 0B4204 800B7204 80A66C04 */  lwz       r5, 0x6c04(r6)
/* 0B4208 800B7208 90066C00 */  stw       r0, 0x6c00(r6)
/* 0B420C 800B720C 54A0061E */  rlwinm    r0, r5, 0, 24, 15
/* 0B4210 800B7210 60000000 */  nop
/* 0B4214 800B7214 90066C04 */  stw       r0, 0x6c04(r6)
/* 0B4218 800B7218 80066C04 */  lwz       r0, 0x6c04(r6)
/* 0B421C 800B721C 5400002E */  clrrwi    r0, r0, 8
/* 0B4220 800B7220 60000000 */  nop
/* 0B4224 800B7224 90066C04 */  stw       r0, 0x6c04(r6)
/* 0B4228 800B7228 93E66C0C */  stw       r31, 0x6c0c(r6)
/* 0B422C 800B722C 4BFFFDC1 */  bl        __AI_set_stream_sample_rate
/* 0B4230 800B7230 38600000 */  li        r3, 0x0
/* 0B4234 800B7234 4BFFFCC5 */  bl        AISetDSPSampleRate
/* 0B4238 800B7238 3C60800B */  lis       r3, __AIDHandler@ha
/* 0B423C 800B723C 93ED8DD0 */  stw       r31, D_8018BD50@sda21(r0)
/* 0B4240 800B7240 38837310 */  addi      r4, r3, __AIDHandler@l
/* 0B4244 800B7244 93ED8DD4 */  stw       r31, D_8018BD54@sda21(r0)
/* 0B4248 800B7248 38600005 */  li        r3, 0x5
/* 0B424C 800B724C 93CD8DD8 */  stw       r30, D_8018BD58@sda21(r0)
/* 0B4250 800B7250 4BFE7045 */  bl        __OSSetInterruptHandler
/* 0B4254 800B7254 3C600400 */  lis       r3, 0x400
/* 0B4258 800B7258 4BFE7441 */  bl        __OSUnmaskInterrupts
/* 0B425C 800B725C 3C60800B */  lis       r3, __AISHandler@ha
/* 0B4260 800B7260 38837294 */  addi      r4, r3, __AISHandler@l
/* 0B4264 800B7264 38600008 */  li        r3, 0x8
/* 0B4268 800B7268 4BFE702D */  bl        __OSSetInterruptHandler
/* 0B426C 800B726C 3C600080 */  lis       r3, 0x80
/* 0B4270 800B7270 4BFE7429 */  bl        __OSUnmaskInterrupts
/* 0B4274 800B7274 38000001 */  li        r0, 0x1
/* 0B4278 800B7278 900D8DE0 */  stw       r0, D_8018BD60@sda21(r0)
lbl_800B727C:
/* 0B427C 800B727C 8001001C */  lwz       r0, 0x1c(r1)
/* 0B4280 800B7280 83E10014 */  lwz       r31, 0x14(r1)
/* 0B4284 800B7284 83C10010 */  lwz       r30, 0x10(r1)
/* 0B4288 800B7288 38210018 */  addi      r1, r1, 0x18
/* 0B428C 800B728C 7C0803A6 */  mtlr      r0
/* 0B4290 800B7290 4E800020 */  blr

glabel __AISHandler
/* 0B4294 800B7294 7C0802A6 */  mflr      r0
/* 0B4298 800B7298 90010004 */  stw       r0, 0x4(r1)
/* 0B429C 800B729C 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0B42A0 800B72A0 93E102DC */  stw       r31, 0x2dc(r1)
/* 0B42A4 800B72A4 3FE0CC00 */  lis       r31, 0xcc00
/* 0B42A8 800B72A8 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B42AC 800B72AC 38610010 */  addi      r3, r1, 0x10
/* 0B42B0 800B72B0 93C102D8 */  stw       r30, 0x2d8(r1)
/* 0B42B4 800B72B4 60000008 */  ori       r0, r0, 0x8
/* 0B42B8 800B72B8 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B42BC 800B72BC 3BC40000 */  addi      r30, r4, 0x0
/* 0B42C0 800B72C0 4BFE6431 */  bl        OSClearContext
/* 0B42C4 800B72C4 38610010 */  addi      r3, r1, 0x10
/* 0B42C8 800B72C8 4BFE6261 */  bl        OSSetCurrentContext
/* 0B42CC 800B72CC 818D8DD0 */  lwz       r12, D_8018BD50@sda21(r0)
/* 0B42D0 800B72D0 280C0000 */  cmplwi    r12, 0x0
/* 0B42D4 800B72D4 41820014 */  beq       lbl_800B72E8
/* 0B42D8 800B72D8 387F6C00 */  addi      r3, r31, 0x6c00
/* 0B42DC 800B72DC 7D8803A6 */  mtlr      r12
/* 0B42E0 800B72E0 80630008 */  lwz       r3, 0x8(r3)
/* 0B42E4 800B72E4 4E800021 */  blrl
lbl_800B72E8:
/* 0B42E8 800B72E8 38610010 */  addi      r3, r1, 0x10
/* 0B42EC 800B72EC 4BFE6405 */  bl        OSClearContext
/* 0B42F0 800B72F0 7FC3F378 */  mr        r3, r30
/* 0B42F4 800B72F4 4BFE6235 */  bl        OSSetCurrentContext
/* 0B42F8 800B72F8 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0B42FC 800B72FC 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0B4300 800B7300 83C102D8 */  lwz       r30, 0x2d8(r1)
/* 0B4304 800B7304 382102E0 */  addi      r1, r1, 0x2e0
/* 0B4308 800B7308 7C0803A6 */  mtlr      r0
/* 0B430C 800B730C 4E800020 */  blr

glabel __AIDHandler
/* 0B4310 800B7310 7C0802A6 */  mflr      r0
/* 0B4314 800B7314 3C60CC00 */  lis       r3, 0xcc00
/* 0B4318 800B7318 90010004 */  stw       r0, 0x4(r1)
/* 0B431C 800B731C 38635000 */  addi      r3, r3, 0x5000
/* 0B4320 800B7320 3800FF5F */  li        r0, -0xa1
/* 0B4324 800B7324 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0B4328 800B7328 93E102DC */  stw       r31, 0x2dc(r1)
/* 0B432C 800B732C 3BE40000 */  addi      r31, r4, 0x0
/* 0B4330 800B7330 A0A3000A */  lhz       r5, 0xa(r3)
/* 0B4334 800B7334 7CA00038 */  and       r0, r5, r0
/* 0B4338 800B7338 60000008 */  ori       r0, r0, 0x8
/* 0B433C 800B733C B003000A */  sth       r0, 0xa(r3)
/* 0B4340 800B7340 38610010 */  addi      r3, r1, 0x10
/* 0B4344 800B7344 4BFE63AD */  bl        OSClearContext
/* 0B4348 800B7348 38610010 */  addi      r3, r1, 0x10
/* 0B434C 800B734C 4BFE61DD */  bl        OSSetCurrentContext
/* 0B4350 800B7350 806D8DD4 */  lwz       r3, D_8018BD54@sda21(r0)
/* 0B4354 800B7354 28030000 */  cmplwi    r3, 0x0
/* 0B4358 800B7358 41820040 */  beq       lbl_800B7398
/* 0B435C 800B735C 800D8DE4 */  lwz       r0, D_8018BD64@sda21(r0)
/* 0B4360 800B7360 2C000000 */  cmpwi     r0, 0x0
/* 0B4364 800B7364 40820034 */  bne       lbl_800B7398
/* 0B4368 800B7368 800D8DD8 */  lwz       r0, D_8018BD58@sda21(r0)
/* 0B436C 800B736C 38800001 */  li        r4, 0x1
/* 0B4370 800B7370 908D8DE4 */  stw       r4, D_8018BD64@sda21(r0)
/* 0B4374 800B7374 28000000 */  cmplwi    r0, 0x0
/* 0B4378 800B7378 4182000C */  beq       lbl_800B7384
/* 0B437C 800B737C 48000041 */  bl        __AICallbackStackSwitch
/* 0B4380 800B7380 48000010 */  b         lbl_800B7390
lbl_800B7384:
/* 0B4384 800B7384 39830000 */  addi      r12, r3, 0x0
/* 0B4388 800B7388 7D8803A6 */  mtlr      r12
/* 0B438C 800B738C 4E800021 */  blrl
lbl_800B7390:
/* 0B4390 800B7390 38000000 */  li        r0, 0x0
/* 0B4394 800B7394 900D8DE4 */  stw       r0, D_8018BD64@sda21(r0)
lbl_800B7398:
/* 0B4398 800B7398 38610010 */  addi      r3, r1, 0x10
/* 0B439C 800B739C 4BFE6355 */  bl        OSClearContext
/* 0B43A0 800B73A0 7FE3FB78 */  mr        r3, r31
/* 0B43A4 800B73A4 4BFE6185 */  bl        OSSetCurrentContext
/* 0B43A8 800B73A8 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0B43AC 800B73AC 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0B43B0 800B73B0 382102E0 */  addi      r1, r1, 0x2e0
/* 0B43B4 800B73B4 7C0803A6 */  mtlr      r0
/* 0B43B8 800B73B8 4E800020 */  blr

glabel __AICallbackStackSwitch
/* 0B43BC 800B73BC 7C0802A6 */  mflr      r0
/* 0B43C0 800B73C0 90010004 */  stw       r0, 0x4(r1)
/* 0B43C4 800B73C4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B43C8 800B73C8 93E10014 */  stw       r31, 0x14(r1)
/* 0B43CC 800B73CC 7C7F1B78 */  mr        r31, r3
/* 0B43D0 800B73D0 3CA08019 */  lis       r5, D_8018BD5C@ha
/* 0B43D4 800B73D4 38A5BD5C */  addi      r5, r5, D_8018BD5C@l
/* 0B43D8 800B73D8 90250000 */  stw       r1, 0x0(r5)
/* 0B43DC 800B73DC 3CA08019 */  lis       r5, D_8018BD58@ha
/* 0B43E0 800B73E0 38A5BD58 */  addi      r5, r5, D_8018BD58@l
/* 0B43E4 800B73E4 80250000 */  lwz       r1, 0x0(r5)
/* 0B43E8 800B73E8 3821FFF8 */  subi      r1, r1, 0x8
/* 0B43EC 800B73EC 7FE803A6 */  mtlr      r31
/* 0B43F0 800B73F0 4E800021 */  blrl
/* 0B43F4 800B73F4 3CA08019 */  lis       r5, D_8018BD5C@ha
/* 0B43F8 800B73F8 38A5BD5C */  addi      r5, r5, D_8018BD5C@l
/* 0B43FC 800B73FC 80250000 */  lwz       r1, 0x0(r5)
/* 0B4400 800B7400 8001001C */  lwz       r0, 0x1c(r1)
/* 0B4404 800B7404 83E10014 */  lwz       r31, 0x14(r1)
/* 0B4408 800B7408 38210018 */  addi      r1, r1, 0x18
/* 0B440C 800B740C 7C0803A6 */  mtlr      r0
/* 0B4410 800B7410 4E800020 */  blr

glabel __AI_SRC_INIT
/* 0B4414 800B7414 7C0802A6 */  mflr      r0
/* 0B4418 800B7418 90010004 */  stw       r0, 0x4(r1)
/* 0B441C 800B741C 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0B4420 800B7420 BF410018 */  stmw      r26, 0x18(r1)
/* 0B4424 800B7424 38800000 */  li        r4, 0x0
/* 0B4428 800B7428 38600000 */  li        r3, 0x0
/* 0B442C 800B742C 38000000 */  li        r0, 0x0
/* 0B4430 800B7430 3B800000 */  li        r28, 0x0
/* 0B4434 800B7434 3BA00000 */  li        r29, 0x0
/* 0B4438 800B7438 48000004 */  b         lbl_800B743C
lbl_800B743C:
/* 0B443C 800B743C 3FE0CC00 */  lis       r31, 0xcc00
/* 0B4440 800B7440 48000004 */  b         lbl_800B7444
lbl_800B7444:
/* 0B4444 800B7444 48000164 */  b         lbl_800B75A8
lbl_800B7448:
/* 0B4448 800B7448 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B444C 800B744C 3BDF6C00 */  addi      r30, r31, 0x6c00
/* 0B4450 800B7450 3BDE0008 */  addi      r30, r30, 0x8
/* 0B4454 800B7454 540006F2 */  rlwinm    r0, r0, 0, 27, 25
/* 0B4458 800B7458 60000020 */  ori       r0, r0, 0x20
/* 0B445C 800B745C 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B4460 800B7460 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B4464 800B7464 540007FA */  rlwinm    r0, r0, 0, 31, 29
/* 0B4468 800B7468 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B446C 800B746C 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B4470 800B7470 5400003C */  clrrwi    r0, r0, 1
/* 0B4474 800B7474 60000001 */  ori       r0, r0, 0x1
/* 0B4478 800B7478 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B447C 800B747C 807E0000 */  lwz       r3, 0x0(r30)
/* 0B4480 800B7480 48000004 */  b         lbl_800B7484
lbl_800B7484:
/* 0B4484 800B7484 48000004 */  b         lbl_800B7488
lbl_800B7488:
/* 0B4488 800B7488 801E0000 */  lwz       r0, 0x0(r30)
/* 0B448C 800B748C 7C030040 */  cmplw     r3, r0
/* 0B4490 800B7490 4182FFF8 */  beq       lbl_800B7488
/* 0B4494 800B7494 4BFEA04D */  bl        OSGetTime
/* 0B4498 800B7498 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B449C 800B749C 7C9A2378 */  mr        r26, r4
/* 0B44A0 800B74A0 7C7B1B78 */  mr        r27, r3
/* 0B44A4 800B74A4 540007FA */  rlwinm    r0, r0, 0, 31, 29
/* 0B44A8 800B74A8 60000002 */  ori       r0, r0, 0x2
/* 0B44AC 800B74AC 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B44B0 800B74B0 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B44B4 800B74B4 5400003C */  clrrwi    r0, r0, 1
/* 0B44B8 800B74B8 60000001 */  ori       r0, r0, 0x1
/* 0B44BC 800B74BC 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B44C0 800B74C0 807E0000 */  lwz       r3, 0x0(r30)
/* 0B44C4 800B74C4 48000004 */  b         lbl_800B74C8
lbl_800B74C8:
/* 0B44C8 800B74C8 48000004 */  b         lbl_800B74CC
lbl_800B74CC:
/* 0B44CC 800B74CC 801E0000 */  lwz       r0, 0x0(r30)
/* 0B44D0 800B74D0 7C030040 */  cmplw     r3, r0
/* 0B44D4 800B74D4 4182FFF8 */  beq       lbl_800B74CC
/* 0B44D8 800B74D8 4BFEA009 */  bl        OSGetTime
/* 0B44DC 800B74DC 7D1A2010 */  subfc     r8, r26, r4
/* 0B44E0 800B74E0 818D8DEC */  lwz       r12, D_8018BD6C@sda21(r0)
/* 0B44E4 800B74E4 80BF6C00 */  lwz       r5, 0x6c00(r31)
/* 0B44E8 800B74E8 7CFB1910 */  subfe     r7, r27, r3
/* 0B44EC 800B74EC 814D8E0C */  lwz       r10, D_8018BD8C@sda21(r0)
/* 0B44F0 800B74F0 6CE78000 */  xoris     r7, r7, 0x8000
/* 0B44F4 800B74F4 54A507FA */  rlwinm    r5, r5, 0, 31, 29
/* 0B44F8 800B74F8 816D8DE8 */  lwz       r11, D_8018BD68@sda21(r0)
/* 0B44FC 800B74FC 7CCA6010 */  subfc     r6, r10, r12
/* 0B4500 800B7500 812D8E08 */  lwz       r9, D_8018BD88@sda21(r0)
/* 0B4504 800B7504 90BF6C00 */  stw       r5, 0x6c00(r31)
/* 0B4508 800B7508 7C095910 */  subfe     r0, r9, r11
/* 0B450C 800B750C 6C058000 */  xoris     r5, r0, 0x8000
/* 0B4510 800B7510 7C064010 */  subfc     r0, r6, r8
/* 0B4514 800B7514 801F6C00 */  lwz       r0, 0x6c00(r31)
/* 0B4518 800B7518 7CA53910 */  subfe     r5, r5, r7
/* 0B451C 800B751C 7CA73910 */  subfe     r5, r7, r7
/* 0B4520 800B7520 7CA500D0 */  neg       r5, r5
/* 0B4524 800B7524 5400003C */  clrrwi    r0, r0, 1
/* 0B4528 800B7528 2C050000 */  cmpwi     r5, 0x0
/* 0B452C 800B752C 901F6C00 */  stw       r0, 0x6c00(r31)
/* 0B4530 800B7530 41820014 */  beq       lbl_800B7544
/* 0B4534 800B7534 83AD8DF8 */  lwz       r29, D_8018BD78@sda21(r0)
/* 0B4538 800B7538 38000001 */  li        r0, 0x1
/* 0B453C 800B753C 838D8DFC */  lwz       r28, D_8018BD7C@sda21(r0)
/* 0B4540 800B7540 48000068 */  b         lbl_800B75A8
lbl_800B7544:
/* 0B4544 800B7544 7CCC5014 */  addc      r6, r12, r10
/* 0B4548 800B7548 7C0B4914 */  adde      r0, r11, r9
/* 0B454C 800B754C 6C058000 */  xoris     r5, r0, 0x8000
/* 0B4550 800B7550 7C064010 */  subfc     r0, r6, r8
/* 0B4554 800B7554 7CA53910 */  subfe     r5, r5, r7
/* 0B4558 800B7558 7CA73910 */  subfe     r5, r7, r7
/* 0B455C 800B755C 7CA500D0 */  neg       r5, r5
/* 0B4560 800B7560 2C050000 */  cmpwi     r5, 0x0
/* 0B4564 800B7564 40820040 */  bne       lbl_800B75A4
/* 0B4568 800B7568 80AD8DF4 */  lwz       r5, D_8018BD74@sda21(r0)
/* 0B456C 800B756C 800D8DF0 */  lwz       r0, D_8018BD70@sda21(r0)
/* 0B4570 800B7570 7CCA2810 */  subfc     r6, r10, r5
/* 0B4574 800B7574 7C090110 */  subfe     r0, r9, r0
/* 0B4578 800B7578 6C058000 */  xoris     r5, r0, 0x8000
/* 0B457C 800B757C 7C064010 */  subfc     r0, r6, r8
/* 0B4580 800B7580 7CA53910 */  subfe     r5, r5, r7
/* 0B4584 800B7584 7CA73910 */  subfe     r5, r7, r7
/* 0B4588 800B7588 7CA500D0 */  neg       r5, r5
/* 0B458C 800B758C 2C050000 */  cmpwi     r5, 0x0
/* 0B4590 800B7590 41820014 */  beq       lbl_800B75A4
/* 0B4594 800B7594 83AD8E00 */  lwz       r29, D_8018BD80@sda21(r0)
/* 0B4598 800B7598 38000001 */  li        r0, 0x1
/* 0B459C 800B759C 838D8E04 */  lwz       r28, D_8018BD84@sda21(r0)
/* 0B45A0 800B75A0 48000008 */  b         lbl_800B75A8
lbl_800B75A4:
/* 0B45A4 800B75A4 38000000 */  li        r0, 0x0
lbl_800B75A8:
/* 0B45A8 800B75A8 28000000 */  cmplwi    r0, 0x0
/* 0B45AC 800B75AC 4182FE9C */  beq       lbl_800B7448
/* 0B45B0 800B75B0 7F64E014 */  addc      r27, r4, r28
/* 0B45B4 800B75B4 7F43E914 */  adde      r26, r3, r29
/* 0B45B8 800B75B8 48000004 */  b         lbl_800B75BC
lbl_800B75BC:
/* 0B45BC 800B75BC 48000004 */  b         lbl_800B75C0
lbl_800B75C0:
/* 0B45C0 800B75C0 4BFE9F21 */  bl        OSGetTime
/* 0B45C4 800B75C4 6C658000 */  xoris     r5, r3, 0x8000
/* 0B45C8 800B75C8 6F438000 */  xoris     r3, r26, 0x8000
/* 0B45CC 800B75CC 7C1B2010 */  subfc     r0, r27, r4
/* 0B45D0 800B75D0 7C632910 */  subfe     r3, r3, r5
/* 0B45D4 800B75D4 7C652910 */  subfe     r3, r5, r5
/* 0B45D8 800B75D8 7C6300D0 */  neg       r3, r3
/* 0B45DC 800B75DC 2C030000 */  cmpwi     r3, 0x0
/* 0B45E0 800B75E0 4082FFE0 */  bne       lbl_800B75C0
/* 0B45E4 800B75E4 BB410018 */  lmw       r26, 0x18(r1)
/* 0B45E8 800B75E8 80010034 */  lwz       r0, 0x34(r1)
/* 0B45EC 800B75EC 38210030 */  addi      r1, r1, 0x30
/* 0B45F0 800B75F0 7C0803A6 */  mtlr      r0
/* 0B45F4 800B75F4 4E800020 */  blr

# 0x800F48E8 - 0x800F4930
.section .data, "wa"

.balign 8

glabel D_800F48E8
	.string "<< Dolphin SDK - AI\trelease build: Sep  5 2002 05:34:25 (0x2301) >>"

glabel gap_05_800F492C_data
.hidden gap_05_800F492C_data
	.long 0x00000000

# 0x8018B7B8 - 0x8018B7C0
.section .sdata, "wa"

glabel D_8018B7B8
	.long D_800F48E8
	.long 0x00000000

# 0x8018BD50 - 0x8018BD90
.section .sbss, "wa"

glabel D_8018BD50
	.skip 0x4

glabel D_8018BD54
	.skip 0x4

glabel D_8018BD58
	.skip 0x4

glabel D_8018BD5C
	.skip 0x4

glabel D_8018BD60
	.skip 0x4

glabel D_8018BD64
	.skip 0x4

glabel D_8018BD68
	.skip 0x4

glabel D_8018BD6C
	.skip 0x4

glabel D_8018BD70
	.skip 0x4

glabel D_8018BD74
	.skip 0x4

glabel D_8018BD78
	.skip 0x4

glabel D_8018BD7C
	.skip 0x4

glabel D_8018BD80
	.skip 0x4

glabel D_8018BD84
	.skip 0x4

glabel D_8018BD88
	.skip 0x4

glabel D_8018BD8C
	.skip 0x4
