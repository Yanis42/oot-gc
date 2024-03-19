# CARDBios.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B9AB0 - 0x800BAD94

glabel __CARDDefaultApiCallback
/* 0B6AB0 800B9AB0 4E800020 */  blr

glabel __CARDSyncCallback
/* 0B6AB4 800B9AB4 7C0802A6 */  mflr      r0
/* 0B6AB8 800B9AB8 1C830110 */  mulli     r4, r3, 0x110
/* 0B6ABC 800B9ABC 90010004 */  stw       r0, 0x4(r1)
/* 0B6AC0 800B9AC0 3C608019 */  lis       r3, D_80188A70@ha
/* 0B6AC4 800B9AC4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B6AC8 800B9AC8 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B6ACC 800B9ACC 7C602214 */  add       r3, r0, r4
/* 0B6AD0 800B9AD0 3863008C */  addi      r3, r3, 0x8c
/* 0B6AD4 800B9AD4 4BFE785D */  bl        OSWakeupThread
/* 0B6AD8 800B9AD8 8001000C */  lwz       r0, 0xc(r1)
/* 0B6ADC 800B9ADC 38210008 */  addi      r1, r1, 0x8
/* 0B6AE0 800B9AE0 7C0803A6 */  mtlr      r0
/* 0B6AE4 800B9AE4 4E800020 */  blr

glabel __CARDExtHandler
/* 0B6AE8 800B9AE8 7C0802A6 */  mflr      r0
/* 0B6AEC 800B9AEC 90010004 */  stw       r0, 0x4(r1)
/* 0B6AF0 800B9AF0 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B6AF4 800B9AF4 93E1001C */  stw       r31, 0x1c(r1)
/* 0B6AF8 800B9AF8 93C10018 */  stw       r30, 0x18(r1)
/* 0B6AFC 800B9AFC 93A10014 */  stw       r29, 0x14(r1)
/* 0B6B00 800B9B00 3BA30000 */  addi      r29, r3, 0x0
/* 0B6B04 800B9B04 1C9D0110 */  mulli     r4, r29, 0x110
/* 0B6B08 800B9B08 3C608019 */  lis       r3, D_80188A70@ha
/* 0B6B0C 800B9B0C 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B6B10 800B9B10 7FC02214 */  add       r30, r0, r4
/* 0B6B14 800B9B14 801E0000 */  lwz       r0, 0x0(r30)
/* 0B6B18 800B9B18 2C000000 */  cmpwi     r0, 0x0
/* 0B6B1C 800B9B1C 41820088 */  beq       lbl_800B9BA4
/* 0B6B20 800B9B20 3BE00000 */  li        r31, 0x0
/* 0B6B24 800B9B24 93FE0000 */  stw       r31, 0x0(r30)
/* 0B6B28 800B9B28 387D0000 */  addi      r3, r29, 0x0
/* 0B6B2C 800B9B2C 38800000 */  li        r4, 0x0
/* 0B6B30 800B9B30 4BFE85C5 */  bl        EXISetExiCallback
/* 0B6B34 800B9B34 387E00E0 */  addi      r3, r30, 0xe0
/* 0B6B38 800B9B38 4BFE248D */  bl        OSCancelAlarm
/* 0B6B3C 800B9B3C 801E00CC */  lwz       r0, 0xcc(r30)
/* 0B6B40 800B9B40 28000000 */  cmplwi    r0, 0x0
/* 0B6B44 800B9B44 7C0C0378 */  mr        r12, r0
/* 0B6B48 800B9B48 41820018 */  beq       lbl_800B9B60
/* 0B6B4C 800B9B4C 93FE00CC */  stw       r31, 0xcc(r30)
/* 0B6B50 800B9B50 7D8803A6 */  mtlr      r12
/* 0B6B54 800B9B54 387D0000 */  addi      r3, r29, 0x0
/* 0B6B58 800B9B58 3880FFFD */  li        r4, -0x3
/* 0B6B5C 800B9B5C 4E800021 */  blrl
lbl_800B9B60:
/* 0B6B60 800B9B60 801E0004 */  lwz       r0, 0x4(r30)
/* 0B6B64 800B9B64 2C00FFFF */  cmpwi     r0, -0x1
/* 0B6B68 800B9B68 4182000C */  beq       lbl_800B9B74
/* 0B6B6C 800B9B6C 3800FFFD */  li        r0, -0x3
/* 0B6B70 800B9B70 901E0004 */  stw       r0, 0x4(r30)
lbl_800B9B74:
/* 0B6B74 800B9B74 819E00C4 */  lwz       r12, 0xc4(r30)
/* 0B6B78 800B9B78 280C0000 */  cmplwi    r12, 0x0
/* 0B6B7C 800B9B7C 41820028 */  beq       lbl_800B9BA4
/* 0B6B80 800B9B80 801E0024 */  lwz       r0, 0x24(r30)
/* 0B6B84 800B9B84 2C000007 */  cmpwi     r0, 0x7
/* 0B6B88 800B9B88 4180001C */  blt       lbl_800B9BA4
/* 0B6B8C 800B9B8C 38000000 */  li        r0, 0x0
/* 0B6B90 800B9B90 7D8803A6 */  mtlr      r12
/* 0B6B94 800B9B94 901E00C4 */  stw       r0, 0xc4(r30)
/* 0B6B98 800B9B98 387D0000 */  addi      r3, r29, 0x0
/* 0B6B9C 800B9B9C 3880FFFD */  li        r4, -0x3
/* 0B6BA0 800B9BA0 4E800021 */  blrl
lbl_800B9BA4:
/* 0B6BA4 800B9BA4 80010024 */  lwz       r0, 0x24(r1)
/* 0B6BA8 800B9BA8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B6BAC 800B9BAC 83C10018 */  lwz       r30, 0x18(r1)
/* 0B6BB0 800B9BB0 83A10014 */  lwz       r29, 0x14(r1)
/* 0B6BB4 800B9BB4 38210020 */  addi      r1, r1, 0x20
/* 0B6BB8 800B9BB8 7C0803A6 */  mtlr      r0
/* 0B6BBC 800B9BBC 4E800020 */  blr

glabel __CARDExiHandler
/* 0B6BC0 800B9BC0 7C0802A6 */  mflr      r0
/* 0B6BC4 800B9BC4 90010004 */  stw       r0, 0x4(r1)
/* 0B6BC8 800B9BC8 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B6BCC 800B9BCC 93E10024 */  stw       r31, 0x24(r1)
/* 0B6BD0 800B9BD0 3BE30000 */  addi      r31, r3, 0x0
/* 0B6BD4 800B9BD4 1C9F0110 */  mulli     r4, r31, 0x110
/* 0B6BD8 800B9BD8 93C10020 */  stw       r30, 0x20(r1)
/* 0B6BDC 800B9BDC 3C608019 */  lis       r3, D_80188A70@ha
/* 0B6BE0 800B9BE0 93A1001C */  stw       r29, 0x1c(r1)
/* 0B6BE4 800B9BE4 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B6BE8 800B9BE8 7FC02214 */  add       r30, r0, r4
/* 0B6BEC 800B9BEC 387E00E0 */  addi      r3, r30, 0xe0
/* 0B6BF0 800B9BF0 4BFE23D5 */  bl        OSCancelAlarm
/* 0B6BF4 800B9BF4 801E0000 */  lwz       r0, 0x0(r30)
/* 0B6BF8 800B9BF8 2C000000 */  cmpwi     r0, 0x0
/* 0B6BFC 800B9BFC 418200C0 */  beq       lbl_800B9CBC
/* 0B6C00 800B9C00 387F0000 */  addi      r3, r31, 0x0
/* 0B6C04 800B9C04 38800000 */  li        r4, 0x0
/* 0B6C08 800B9C08 38A00000 */  li        r5, 0x0
/* 0B6C0C 800B9C0C 4BFE90DD */  bl        EXILock
/* 0B6C10 800B9C10 2C030000 */  cmpwi     r3, 0x0
/* 0B6C14 800B9C14 4082000C */  bne       lbl_800B9C20
/* 0B6C18 800B9C18 3BA0FF80 */  li        r29, -0x80
/* 0B6C1C 800B9C1C 48000078 */  b         lbl_800B9C94
lbl_800B9C20:
/* 0B6C20 800B9C20 387F0000 */  addi      r3, r31, 0x0
/* 0B6C24 800B9C24 38810010 */  addi      r4, r1, 0x10
/* 0B6C28 800B9C28 4800029D */  bl        __CARDReadStatus
/* 0B6C2C 800B9C2C 7C7D1B79 */  mr.       r29, r3
/* 0B6C30 800B9C30 4180005C */  blt       lbl_800B9C8C
/* 0B6C34 800B9C34 7FE3FB78 */  mr        r3, r31
/* 0B6C38 800B9C38 4800037D */  bl        __CARDClearStatus
/* 0B6C3C 800B9C3C 7C7D1B79 */  mr.       r29, r3
/* 0B6C40 800B9C40 4180004C */  blt       lbl_800B9C8C
/* 0B6C44 800B9C44 88010010 */  lbz       r0, 0x10(r1)
/* 0B6C48 800B9C48 540006F9 */  rlwinm.   r0, r0, 0, 27, 28
/* 0B6C4C 800B9C4C 4182000C */  beq       lbl_800B9C58
/* 0B6C50 800B9C50 3800FFFB */  li        r0, -0x5
/* 0B6C54 800B9C54 48000008 */  b         lbl_800B9C5C
lbl_800B9C58:
/* 0B6C58 800B9C58 38000000 */  li        r0, 0x0
lbl_800B9C5C:
/* 0B6C5C 800B9C5C 7C1D0378 */  mr        r29, r0
/* 0B6C60 800B9C60 2C1DFFFB */  cmpwi     r29, -0x5
/* 0B6C64 800B9C64 40820028 */  bne       lbl_800B9C8C
/* 0B6C68 800B9C68 807E00A8 */  lwz       r3, 0xa8(r30)
/* 0B6C6C 800B9C6C 3403FFFF */  subic.    r0, r3, 0x1
/* 0B6C70 800B9C70 901E00A8 */  stw       r0, 0xa8(r30)
/* 0B6C74 800B9C74 40810018 */  ble       lbl_800B9C8C
/* 0B6C78 800B9C78 7FE3FB78 */  mr        r3, r31
/* 0B6C7C 800B9C7C 48000489 */  bl        Retry
/* 0B6C80 800B9C80 7C7D1B79 */  mr.       r29, r3
/* 0B6C84 800B9C84 41800010 */  blt       lbl_800B9C94
/* 0B6C88 800B9C88 48000034 */  b         lbl_800B9CBC
lbl_800B9C8C:
/* 0B6C8C 800B9C8C 7FE3FB78 */  mr        r3, r31
/* 0B6C90 800B9C90 4BFE914D */  bl        EXIUnlock
lbl_800B9C94:
/* 0B6C94 800B9C94 801E00CC */  lwz       r0, 0xcc(r30)
/* 0B6C98 800B9C98 28000000 */  cmplwi    r0, 0x0
/* 0B6C9C 800B9C9C 7C0C0378 */  mr        r12, r0
/* 0B6CA0 800B9CA0 4182001C */  beq       lbl_800B9CBC
/* 0B6CA4 800B9CA4 38000000 */  li        r0, 0x0
/* 0B6CA8 800B9CA8 7D8803A6 */  mtlr      r12
/* 0B6CAC 800B9CAC 901E00CC */  stw       r0, 0xcc(r30)
/* 0B6CB0 800B9CB0 387F0000 */  addi      r3, r31, 0x0
/* 0B6CB4 800B9CB4 389D0000 */  addi      r4, r29, 0x0
/* 0B6CB8 800B9CB8 4E800021 */  blrl
lbl_800B9CBC:
/* 0B6CBC 800B9CBC 8001002C */  lwz       r0, 0x2c(r1)
/* 0B6CC0 800B9CC0 83E10024 */  lwz       r31, 0x24(r1)
/* 0B6CC4 800B9CC4 83C10020 */  lwz       r30, 0x20(r1)
/* 0B6CC8 800B9CC8 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B6CCC 800B9CCC 38210028 */  addi      r1, r1, 0x28
/* 0B6CD0 800B9CD0 7C0803A6 */  mtlr      r0
/* 0B6CD4 800B9CD4 4E800020 */  blr

glabel __CARDTxHandler
/* 0B6CD8 800B9CD8 7C0802A6 */  mflr      r0
/* 0B6CDC 800B9CDC 90010004 */  stw       r0, 0x4(r1)
/* 0B6CE0 800B9CE0 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B6CE4 800B9CE4 BF610014 */  stmw      r27, 0x14(r1)
/* 0B6CE8 800B9CE8 3B630000 */  addi      r27, r3, 0x0
/* 0B6CEC 800B9CEC 3C608019 */  lis       r3, D_80188A70@ha
/* 0B6CF0 800B9CF0 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B6CF4 800B9CF4 1C9B0110 */  mulli     r4, r27, 0x110
/* 0B6CF8 800B9CF8 387B0000 */  addi      r3, r27, 0x0
/* 0B6CFC 800B9CFC 7FA02214 */  add       r29, r0, r4
/* 0B6D00 800B9D00 4BFE8A0D */  bl        EXIDeselect
/* 0B6D04 800B9D04 7C600034 */  cntlzw    r0, r3
/* 0B6D08 800B9D08 387B0000 */  addi      r3, r27, 0x0
/* 0B6D0C 800B9D0C 541FD97E */  srwi      r31, r0, 5
/* 0B6D10 800B9D10 4BFE90CD */  bl        EXIUnlock
/* 0B6D14 800B9D14 801D00C8 */  lwz       r0, 0xc8(r29)
/* 0B6D18 800B9D18 28000000 */  cmplwi    r0, 0x0
/* 0B6D1C 800B9D1C 7C1C0378 */  mr        r28, r0
/* 0B6D20 800B9D20 4182004C */  beq       lbl_800B9D6C
/* 0B6D24 800B9D24 3BC00000 */  li        r30, 0x0
/* 0B6D28 800B9D28 2C1F0000 */  cmpwi     r31, 0x0
/* 0B6D2C 800B9D2C 93DD00C8 */  stw       r30, 0xc8(r29)
/* 0B6D30 800B9D30 40820018 */  bne       lbl_800B9D48
/* 0B6D34 800B9D34 7F63DB78 */  mr        r3, r27
/* 0B6D38 800B9D38 4BFE85AD */  bl        EXIProbe
/* 0B6D3C 800B9D3C 2C030000 */  cmpwi     r3, 0x0
/* 0B6D40 800B9D40 41820008 */  beq       lbl_800B9D48
/* 0B6D44 800B9D44 3BC00001 */  li        r30, 0x1
lbl_800B9D48:
/* 0B6D48 800B9D48 2C1E0000 */  cmpwi     r30, 0x0
/* 0B6D4C 800B9D4C 4182000C */  beq       lbl_800B9D58
/* 0B6D50 800B9D50 38800000 */  li        r4, 0x0
/* 0B6D54 800B9D54 48000008 */  b         lbl_800B9D5C
lbl_800B9D58:
/* 0B6D58 800B9D58 3880FFFD */  li        r4, -0x3
lbl_800B9D5C:
/* 0B6D5C 800B9D5C 399C0000 */  addi      r12, r28, 0x0
/* 0B6D60 800B9D60 7D8803A6 */  mtlr      r12
/* 0B6D64 800B9D64 387B0000 */  addi      r3, r27, 0x0
/* 0B6D68 800B9D68 4E800021 */  blrl
lbl_800B9D6C:
/* 0B6D6C 800B9D6C BB610014 */  lmw       r27, 0x14(r1)
/* 0B6D70 800B9D70 8001002C */  lwz       r0, 0x2c(r1)
/* 0B6D74 800B9D74 38210028 */  addi      r1, r1, 0x28
/* 0B6D78 800B9D78 7C0803A6 */  mtlr      r0
/* 0B6D7C 800B9D7C 4E800020 */  blr

glabel __CARDUnlockedHandler
/* 0B6D80 800B9D80 7C0802A6 */  mflr      r0
/* 0B6D84 800B9D84 90010004 */  stw       r0, 0x4(r1)
/* 0B6D88 800B9D88 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B6D8C 800B9D8C 93E10014 */  stw       r31, 0x14(r1)
/* 0B6D90 800B9D90 93C10010 */  stw       r30, 0x10(r1)
/* 0B6D94 800B9D94 3BC30000 */  addi      r30, r3, 0x0
/* 0B6D98 800B9D98 1C9E0110 */  mulli     r4, r30, 0x110
/* 0B6D9C 800B9D9C 3C608019 */  lis       r3, D_80188A70@ha
/* 0B6DA0 800B9DA0 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B6DA4 800B9DA4 7C602214 */  add       r3, r0, r4
/* 0B6DA8 800B9DA8 800300DC */  lwz       r0, 0xdc(r3)
/* 0B6DAC 800B9DAC 28000000 */  cmplwi    r0, 0x0
/* 0B6DB0 800B9DB0 7C1F0378 */  mr        r31, r0
/* 0B6DB4 800B9DB4 41820038 */  beq       lbl_800B9DEC
/* 0B6DB8 800B9DB8 38000000 */  li        r0, 0x0
/* 0B6DBC 800B9DBC 900300DC */  stw       r0, 0xdc(r3)
/* 0B6DC0 800B9DC0 7FC3F378 */  mr        r3, r30
/* 0B6DC4 800B9DC4 4BFE8521 */  bl        EXIProbe
/* 0B6DC8 800B9DC8 2C030000 */  cmpwi     r3, 0x0
/* 0B6DCC 800B9DCC 4182000C */  beq       lbl_800B9DD8
/* 0B6DD0 800B9DD0 38800001 */  li        r4, 0x1
/* 0B6DD4 800B9DD4 48000008 */  b         lbl_800B9DDC
lbl_800B9DD8:
/* 0B6DD8 800B9DD8 3880FFFD */  li        r4, -0x3
lbl_800B9DDC:
/* 0B6DDC 800B9DDC 399F0000 */  addi      r12, r31, 0x0
/* 0B6DE0 800B9DE0 7D8803A6 */  mtlr      r12
/* 0B6DE4 800B9DE4 387E0000 */  addi      r3, r30, 0x0
/* 0B6DE8 800B9DE8 4E800021 */  blrl
lbl_800B9DEC:
/* 0B6DEC 800B9DEC 8001001C */  lwz       r0, 0x1c(r1)
/* 0B6DF0 800B9DF0 83E10014 */  lwz       r31, 0x14(r1)
/* 0B6DF4 800B9DF4 83C10010 */  lwz       r30, 0x10(r1)
/* 0B6DF8 800B9DF8 38210018 */  addi      r1, r1, 0x18
/* 0B6DFC 800B9DFC 7C0803A6 */  mtlr      r0
/* 0B6E00 800B9E00 4E800020 */  blr

glabel __CARDEnableInterrupt
/* 0B6E04 800B9E04 7C0802A6 */  mflr      r0
/* 0B6E08 800B9E08 38A00004 */  li        r5, 0x4
/* 0B6E0C 800B9E0C 90010004 */  stw       r0, 0x4(r1)
/* 0B6E10 800B9E10 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B6E14 800B9E14 93E1001C */  stw       r31, 0x1c(r1)
/* 0B6E18 800B9E18 3BE40000 */  addi      r31, r4, 0x0
/* 0B6E1C 800B9E1C 38800000 */  li        r4, 0x0
/* 0B6E20 800B9E20 93C10018 */  stw       r30, 0x18(r1)
/* 0B6E24 800B9E24 3BC30000 */  addi      r30, r3, 0x0
/* 0B6E28 800B9E28 4BFE87B9 */  bl        EXISelect
/* 0B6E2C 800B9E2C 2C030000 */  cmpwi     r3, 0x0
/* 0B6E30 800B9E30 4082000C */  bne       lbl_800B9E3C
/* 0B6E34 800B9E34 3860FFFD */  li        r3, -0x3
/* 0B6E38 800B9E38 48000074 */  b         lbl_800B9EAC
lbl_800B9E3C:
/* 0B6E3C 800B9E3C 2C1F0000 */  cmpwi     r31, 0x0
/* 0B6E40 800B9E40 4182000C */  beq       lbl_800B9E4C
/* 0B6E44 800B9E44 3C008101 */  lis       r0, 0x8101
/* 0B6E48 800B9E48 48000008 */  b         lbl_800B9E50
lbl_800B9E4C:
/* 0B6E4C 800B9E4C 3C008100 */  lis       r0, 0x8100
lbl_800B9E50:
/* 0B6E50 800B9E50 90010010 */  stw       r0, 0x10(r1)
/* 0B6E54 800B9E54 387E0000 */  addi      r3, r30, 0x0
/* 0B6E58 800B9E58 38810010 */  addi      r4, r1, 0x10
/* 0B6E5C 800B9E5C 38A00002 */  li        r5, 0x2
/* 0B6E60 800B9E60 38C00001 */  li        r6, 0x1
/* 0B6E64 800B9E64 38E00000 */  li        r7, 0x0
/* 0B6E68 800B9E68 4BFE7C25 */  bl        EXIImm
/* 0B6E6C 800B9E6C 7C600034 */  cntlzw    r0, r3
/* 0B6E70 800B9E70 387E0000 */  addi      r3, r30, 0x0
/* 0B6E74 800B9E74 541FD97E */  srwi      r31, r0, 5
/* 0B6E78 800B9E78 4BFE7FFD */  bl        EXISync
/* 0B6E7C 800B9E7C 7C600034 */  cntlzw    r0, r3
/* 0B6E80 800B9E80 5400D97E */  srwi      r0, r0, 5
/* 0B6E84 800B9E84 387E0000 */  addi      r3, r30, 0x0
/* 0B6E88 800B9E88 7FFF0378 */  or        r31, r31, r0
/* 0B6E8C 800B9E8C 4BFE8881 */  bl        EXIDeselect
/* 0B6E90 800B9E90 7C600034 */  cntlzw    r0, r3
/* 0B6E94 800B9E94 5400D97E */  srwi      r0, r0, 5
/* 0B6E98 800B9E98 7FFF0379 */  or.       r31, r31, r0
/* 0B6E9C 800B9E9C 4182000C */  beq       lbl_800B9EA8
/* 0B6EA0 800B9EA0 3860FFFD */  li        r3, -0x3
/* 0B6EA4 800B9EA4 48000008 */  b         lbl_800B9EAC
lbl_800B9EA8:
/* 0B6EA8 800B9EA8 38600000 */  li        r3, 0x0
lbl_800B9EAC:
/* 0B6EAC 800B9EAC 80010024 */  lwz       r0, 0x24(r1)
/* 0B6EB0 800B9EB0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B6EB4 800B9EB4 83C10018 */  lwz       r30, 0x18(r1)
/* 0B6EB8 800B9EB8 38210020 */  addi      r1, r1, 0x20
/* 0B6EBC 800B9EBC 7C0803A6 */  mtlr      r0
/* 0B6EC0 800B9EC0 4E800020 */  blr

glabel __CARDReadStatus
/* 0B6EC4 800B9EC4 7C0802A6 */  mflr      r0
/* 0B6EC8 800B9EC8 38A00004 */  li        r5, 0x4
/* 0B6ECC 800B9ECC 90010004 */  stw       r0, 0x4(r1)
/* 0B6ED0 800B9ED0 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B6ED4 800B9ED4 93E10024 */  stw       r31, 0x24(r1)
/* 0B6ED8 800B9ED8 93C10020 */  stw       r30, 0x20(r1)
/* 0B6EDC 800B9EDC 3BC40000 */  addi      r30, r4, 0x0
/* 0B6EE0 800B9EE0 38800000 */  li        r4, 0x0
/* 0B6EE4 800B9EE4 93A1001C */  stw       r29, 0x1c(r1)
/* 0B6EE8 800B9EE8 3BA30000 */  addi      r29, r3, 0x0
/* 0B6EEC 800B9EEC 4BFE86F5 */  bl        EXISelect
/* 0B6EF0 800B9EF0 2C030000 */  cmpwi     r3, 0x0
/* 0B6EF4 800B9EF4 4082000C */  bne       lbl_800B9F00
/* 0B6EF8 800B9EF8 3860FFFD */  li        r3, -0x3
/* 0B6EFC 800B9EFC 4800009C */  b         lbl_800B9F98
lbl_800B9F00:
/* 0B6F00 800B9F00 3C008300 */  lis       r0, 0x8300
/* 0B6F04 800B9F04 90010010 */  stw       r0, 0x10(r1)
/* 0B6F08 800B9F08 387D0000 */  addi      r3, r29, 0x0
/* 0B6F0C 800B9F0C 38810010 */  addi      r4, r1, 0x10
/* 0B6F10 800B9F10 38A00002 */  li        r5, 0x2
/* 0B6F14 800B9F14 38C00001 */  li        r6, 0x1
/* 0B6F18 800B9F18 38E00000 */  li        r7, 0x0
/* 0B6F1C 800B9F1C 4BFE7B71 */  bl        EXIImm
/* 0B6F20 800B9F20 7C600034 */  cntlzw    r0, r3
/* 0B6F24 800B9F24 387D0000 */  addi      r3, r29, 0x0
/* 0B6F28 800B9F28 541FD97E */  srwi      r31, r0, 5
/* 0B6F2C 800B9F2C 4BFE7F49 */  bl        EXISync
/* 0B6F30 800B9F30 7C600034 */  cntlzw    r0, r3
/* 0B6F34 800B9F34 5400D97E */  srwi      r0, r0, 5
/* 0B6F38 800B9F38 387D0000 */  addi      r3, r29, 0x0
/* 0B6F3C 800B9F3C 389E0000 */  addi      r4, r30, 0x0
/* 0B6F40 800B9F40 7FFF0378 */  or        r31, r31, r0
/* 0B6F44 800B9F44 38A00001 */  li        r5, 0x1
/* 0B6F48 800B9F48 38C00000 */  li        r6, 0x0
/* 0B6F4C 800B9F4C 38E00000 */  li        r7, 0x0
/* 0B6F50 800B9F50 4BFE7B3D */  bl        EXIImm
/* 0B6F54 800B9F54 7C600034 */  cntlzw    r0, r3
/* 0B6F58 800B9F58 5400D97E */  srwi      r0, r0, 5
/* 0B6F5C 800B9F5C 387D0000 */  addi      r3, r29, 0x0
/* 0B6F60 800B9F60 7FFF0378 */  or        r31, r31, r0
/* 0B6F64 800B9F64 4BFE7F11 */  bl        EXISync
/* 0B6F68 800B9F68 7C600034 */  cntlzw    r0, r3
/* 0B6F6C 800B9F6C 5400D97E */  srwi      r0, r0, 5
/* 0B6F70 800B9F70 387D0000 */  addi      r3, r29, 0x0
/* 0B6F74 800B9F74 7FFF0378 */  or        r31, r31, r0
/* 0B6F78 800B9F78 4BFE8795 */  bl        EXIDeselect
/* 0B6F7C 800B9F7C 7C600034 */  cntlzw    r0, r3
/* 0B6F80 800B9F80 5400D97E */  srwi      r0, r0, 5
/* 0B6F84 800B9F84 7FFF0379 */  or.       r31, r31, r0
/* 0B6F88 800B9F88 4182000C */  beq       lbl_800B9F94
/* 0B6F8C 800B9F8C 3860FFFD */  li        r3, -0x3
/* 0B6F90 800B9F90 48000008 */  b         lbl_800B9F98
lbl_800B9F94:
/* 0B6F94 800B9F94 38600000 */  li        r3, 0x0
lbl_800B9F98:
/* 0B6F98 800B9F98 8001002C */  lwz       r0, 0x2c(r1)
/* 0B6F9C 800B9F9C 83E10024 */  lwz       r31, 0x24(r1)
/* 0B6FA0 800B9FA0 83C10020 */  lwz       r30, 0x20(r1)
/* 0B6FA4 800B9FA4 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B6FA8 800B9FA8 38210028 */  addi      r1, r1, 0x28
/* 0B6FAC 800B9FAC 7C0803A6 */  mtlr      r0
/* 0B6FB0 800B9FB0 4E800020 */  blr

glabel __CARDClearStatus
/* 0B6FB4 800B9FB4 7C0802A6 */  mflr      r0
/* 0B6FB8 800B9FB8 38800000 */  li        r4, 0x0
/* 0B6FBC 800B9FBC 90010004 */  stw       r0, 0x4(r1)
/* 0B6FC0 800B9FC0 38A00004 */  li        r5, 0x4
/* 0B6FC4 800B9FC4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B6FC8 800B9FC8 93E10014 */  stw       r31, 0x14(r1)
/* 0B6FCC 800B9FCC 93C10010 */  stw       r30, 0x10(r1)
/* 0B6FD0 800B9FD0 3BC30000 */  addi      r30, r3, 0x0
/* 0B6FD4 800B9FD4 4BFE860D */  bl        EXISelect
/* 0B6FD8 800B9FD8 2C030000 */  cmpwi     r3, 0x0
/* 0B6FDC 800B9FDC 4082000C */  bne       lbl_800B9FE8
/* 0B6FE0 800B9FE0 3860FFFD */  li        r3, -0x3
/* 0B6FE4 800B9FE4 48000064 */  b         lbl_800BA048
lbl_800B9FE8:
/* 0B6FE8 800B9FE8 3C008900 */  lis       r0, 0x8900
/* 0B6FEC 800B9FEC 9001000C */  stw       r0, 0xc(r1)
/* 0B6FF0 800B9FF0 387E0000 */  addi      r3, r30, 0x0
/* 0B6FF4 800B9FF4 3881000C */  addi      r4, r1, 0xc
/* 0B6FF8 800B9FF8 38A00001 */  li        r5, 0x1
/* 0B6FFC 800B9FFC 38C00001 */  li        r6, 0x1
/* 0B7000 800BA000 38E00000 */  li        r7, 0x0
/* 0B7004 800BA004 4BFE7A89 */  bl        EXIImm
/* 0B7008 800BA008 7C600034 */  cntlzw    r0, r3
/* 0B700C 800BA00C 387E0000 */  addi      r3, r30, 0x0
/* 0B7010 800BA010 541FD97E */  srwi      r31, r0, 5
/* 0B7014 800BA014 4BFE7E61 */  bl        EXISync
/* 0B7018 800BA018 7C600034 */  cntlzw    r0, r3
/* 0B701C 800BA01C 5400D97E */  srwi      r0, r0, 5
/* 0B7020 800BA020 387E0000 */  addi      r3, r30, 0x0
/* 0B7024 800BA024 7FFF0378 */  or        r31, r31, r0
/* 0B7028 800BA028 4BFE86E5 */  bl        EXIDeselect
/* 0B702C 800BA02C 7C600034 */  cntlzw    r0, r3
/* 0B7030 800BA030 5400D97E */  srwi      r0, r0, 5
/* 0B7034 800BA034 7FFF0379 */  or.       r31, r31, r0
/* 0B7038 800BA038 4182000C */  beq       lbl_800BA044
/* 0B703C 800BA03C 3860FFFD */  li        r3, -0x3
/* 0B7040 800BA040 48000008 */  b         lbl_800BA048
lbl_800BA044:
/* 0B7044 800BA044 38600000 */  li        r3, 0x0
lbl_800BA048:
/* 0B7048 800BA048 8001001C */  lwz       r0, 0x1c(r1)
/* 0B704C 800BA04C 83E10014 */  lwz       r31, 0x14(r1)
/* 0B7050 800BA050 83C10010 */  lwz       r30, 0x10(r1)
/* 0B7054 800BA054 38210018 */  addi      r1, r1, 0x18
/* 0B7058 800BA058 7C0803A6 */  mtlr      r0
/* 0B705C 800BA05C 4E800020 */  blr

glabel TimeoutHandler
/* 0B7060 800BA060 7C0802A6 */  mflr      r0
/* 0B7064 800BA064 3C808019 */  lis       r4, D_80188A70@ha
/* 0B7068 800BA068 90010004 */  stw       r0, 0x4(r1)
/* 0B706C 800BA06C 38848A70 */  addi      r4, r4, D_80188A70@l
/* 0B7070 800BA070 380400E0 */  addi      r0, r4, 0xe0
/* 0B7074 800BA074 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B7078 800BA078 7C030040 */  cmplw     r3, r0
/* 0B707C 800BA07C 93E10014 */  stw       r31, 0x14(r1)
/* 0B7080 800BA080 3BE00000 */  li        r31, 0x0
/* 0B7084 800BA084 93C10010 */  stw       r30, 0x10(r1)
/* 0B7088 800BA088 3BC40000 */  addi      r30, r4, 0x0
/* 0B708C 800BA08C 41820020 */  beq       lbl_800BA0AC
/* 0B7090 800BA090 380401F0 */  addi      r0, r4, 0x1f0
/* 0B7094 800BA094 7C030040 */  cmplw     r3, r0
/* 0B7098 800BA098 38840110 */  addi      r4, r4, 0x110
/* 0B709C 800BA09C 3BC40000 */  addi      r30, r4, 0x0
/* 0B70A0 800BA0A0 3BE00001 */  li        r31, 0x1
/* 0B70A4 800BA0A4 41820008 */  beq       lbl_800BA0AC
/* 0B70A8 800BA0A8 3BE00002 */  li        r31, 0x2
lbl_800BA0AC:
/* 0B70AC 800BA0AC 801E0000 */  lwz       r0, 0x0(r30)
/* 0B70B0 800BA0B0 2C000000 */  cmpwi     r0, 0x0
/* 0B70B4 800BA0B4 41820038 */  beq       lbl_800BA0EC
/* 0B70B8 800BA0B8 387F0000 */  addi      r3, r31, 0x0
/* 0B70BC 800BA0BC 38800000 */  li        r4, 0x0
/* 0B70C0 800BA0C0 4BFE8035 */  bl        EXISetExiCallback
/* 0B70C4 800BA0C4 801E00CC */  lwz       r0, 0xcc(r30)
/* 0B70C8 800BA0C8 28000000 */  cmplwi    r0, 0x0
/* 0B70CC 800BA0CC 7C0C0378 */  mr        r12, r0
/* 0B70D0 800BA0D0 4182001C */  beq       lbl_800BA0EC
/* 0B70D4 800BA0D4 38000000 */  li        r0, 0x0
/* 0B70D8 800BA0D8 7D8803A6 */  mtlr      r12
/* 0B70DC 800BA0DC 901E00CC */  stw       r0, 0xcc(r30)
/* 0B70E0 800BA0E0 387F0000 */  addi      r3, r31, 0x0
/* 0B70E4 800BA0E4 3880FFFB */  li        r4, -0x5
/* 0B70E8 800BA0E8 4E800021 */  blrl
lbl_800BA0EC:
/* 0B70EC 800BA0EC 8001001C */  lwz       r0, 0x1c(r1)
/* 0B70F0 800BA0F0 83E10014 */  lwz       r31, 0x14(r1)
/* 0B70F4 800BA0F4 83C10010 */  lwz       r30, 0x10(r1)
/* 0B70F8 800BA0F8 38210018 */  addi      r1, r1, 0x18
/* 0B70FC 800BA0FC 7C0803A6 */  mtlr      r0
/* 0B7100 800BA100 4E800020 */  blr

glabel Retry
/* 0B7104 800BA104 7C0802A6 */  mflr      r0
/* 0B7108 800BA108 38A00004 */  li        r5, 0x4
/* 0B710C 800BA10C 90010004 */  stw       r0, 0x4(r1)
/* 0B7110 800BA110 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B7114 800BA114 93E10014 */  stw       r31, 0x14(r1)
/* 0B7118 800BA118 93C10010 */  stw       r30, 0x10(r1)
/* 0B711C 800BA11C 3BC30000 */  addi      r30, r3, 0x0
/* 0B7120 800BA120 1C9E0110 */  mulli     r4, r30, 0x110
/* 0B7124 800BA124 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7128 800BA128 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B712C 800BA12C 7FE02214 */  add       r31, r0, r4
/* 0B7130 800BA130 387E0000 */  addi      r3, r30, 0x0
/* 0B7134 800BA134 38800000 */  li        r4, 0x0
/* 0B7138 800BA138 4BFE84A9 */  bl        EXISelect
/* 0B713C 800BA13C 2C030000 */  cmpwi     r3, 0x0
/* 0B7140 800BA140 40820014 */  bne       lbl_800BA154
/* 0B7144 800BA144 7FC3F378 */  mr        r3, r30
/* 0B7148 800BA148 4BFE8C95 */  bl        EXIUnlock
/* 0B714C 800BA14C 3860FFFD */  li        r3, -0x3
/* 0B7150 800BA150 480001C8 */  b         lbl_800BA318
lbl_800BA154:
/* 0B7154 800BA154 387F00E0 */  addi      r3, r31, 0xe0
/* 0B7158 800BA158 4BFE1E6D */  bl        OSCancelAlarm
/* 0B715C 800BA15C 881F0094 */  lbz       r0, 0x94(r31)
/* 0B7160 800BA160 2C0000F3 */  cmpwi     r0, 0xf3
/* 0B7164 800BA164 418200C0 */  beq       lbl_800BA224
/* 0B7168 800BA168 40800014 */  bge       lbl_800BA17C
/* 0B716C 800BA16C 2C0000F1 */  cmpwi     r0, 0xf1
/* 0B7170 800BA170 41820050 */  beq       lbl_800BA1C0
/* 0B7174 800BA174 40800014 */  bge       lbl_800BA188
/* 0B7178 800BA178 480000AC */  b         lbl_800BA224
lbl_800BA17C:
/* 0B717C 800BA17C 2C0000F5 */  cmpwi     r0, 0xf5
/* 0B7180 800BA180 408000A4 */  bge       lbl_800BA224
/* 0B7184 800BA184 4800003C */  b         lbl_800BA1C0
lbl_800BA188:
/* 0B7188 800BA188 3C608000 */  lis       r3, 0x8000
/* 0B718C 800BA18C 800300F8 */  lwz       r0, 0xf8(r3)
/* 0B7190 800BA190 3C801062 */  lis       r4, 0x1062
/* 0B7194 800BA194 3C60800C */  lis       r3, TimeoutHandler@ha
/* 0B7198 800BA198 5400F0BE */  srwi      r0, r0, 2
/* 0B719C 800BA19C 38844DD3 */  addi      r4, r4, 0x4dd3
/* 0B71A0 800BA1A0 7C040016 */  mulhwu    r0, r4, r0
/* 0B71A4 800BA1A4 5400D1BE */  srwi      r0, r0, 6
/* 0B71A8 800BA1A8 1CC00064 */  mulli     r6, r0, 0x64
/* 0B71AC 800BA1AC 38E3A060 */  addi      r7, r3, TimeoutHandler@l
/* 0B71B0 800BA1B0 387F00E0 */  addi      r3, r31, 0xe0
/* 0B71B4 800BA1B4 38A00000 */  li        r5, 0x0
/* 0B71B8 800BA1B8 4BFE1DA5 */  bl        OSSetAlarm
/* 0B71BC 800BA1BC 48000068 */  b         lbl_800BA224
lbl_800BA1C0:
/* 0B71C0 800BA1C0 3C608000 */  lis       r3, 0x8000
/* 0B71C4 800BA1C4 809F000C */  lwz       r4, 0xc(r31)
/* 0B71C8 800BA1C8 800300F8 */  lwz       r0, 0xf8(r3)
/* 0B71CC 800BA1CC 3C60800C */  lis       r3, TimeoutHandler@ha
/* 0B71D0 800BA1D0 7C896E70 */  srawi     r9, r4, 13
/* 0B71D4 800BA1D4 5407F0BE */  srwi      r7, r0, 2
/* 0B71D8 800BA1D8 38000002 */  li        r0, 0x2
/* 0B71DC 800BA1DC 38800000 */  li        r4, 0x0
/* 0B71E0 800BA1E0 7D0401D6 */  mullw     r8, r4, r0
/* 0B71E4 800BA1E4 7CC70016 */  mulhwu    r6, r7, r0
/* 0B71E8 800BA1E8 7D083214 */  add       r8, r8, r6
/* 0B71EC 800BA1EC 7CA701D6 */  mullw     r5, r7, r0
/* 0B71F0 800BA1F0 7D290194 */  addze     r9, r9
/* 0B71F4 800BA1F4 7CC721D6 */  mullw     r6, r7, r4
/* 0B71F8 800BA1F8 7D20FE70 */  srawi     r0, r9, 31
/* 0B71FC 800BA1FC 7C8029D6 */  mullw     r4, r0, r5
/* 0B7200 800BA200 7C092816 */  mulhwu    r0, r9, r5
/* 0B7204 800BA204 38E3A060 */  addi      r7, r3, TimeoutHandler@l
/* 0B7208 800BA208 7C683214 */  add       r3, r8, r6
/* 0B720C 800BA20C 7C840214 */  add       r4, r4, r0
/* 0B7210 800BA210 7C0919D6 */  mullw     r0, r9, r3
/* 0B7214 800BA214 7CC929D6 */  mullw     r6, r9, r5
/* 0B7218 800BA218 387F00E0 */  addi      r3, r31, 0xe0
/* 0B721C 800BA21C 7CA40214 */  add       r5, r4, r0
/* 0B7220 800BA220 4BFE1D3D */  bl        OSSetAlarm
lbl_800BA224:
/* 0B7224 800BA224 80BF00A0 */  lwz       r5, 0xa0(r31)
/* 0B7228 800BA228 387E0000 */  addi      r3, r30, 0x0
/* 0B722C 800BA22C 389F0094 */  addi      r4, r31, 0x94
/* 0B7230 800BA230 38C00001 */  li        r6, 0x1
/* 0B7234 800BA234 4BFE7AB5 */  bl        EXIImmEx
/* 0B7238 800BA238 2C030000 */  cmpwi     r3, 0x0
/* 0B723C 800BA23C 4082001C */  bne       lbl_800BA258
/* 0B7240 800BA240 7FC3F378 */  mr        r3, r30
/* 0B7244 800BA244 4BFE84C9 */  bl        EXIDeselect
/* 0B7248 800BA248 7FC3F378 */  mr        r3, r30
/* 0B724C 800BA24C 4BFE8B91 */  bl        EXIUnlock
/* 0B7250 800BA250 3860FFFD */  li        r3, -0x3
/* 0B7254 800BA254 480000C4 */  b         lbl_800BA318
lbl_800BA258:
/* 0B7258 800BA258 881F0094 */  lbz       r0, 0x94(r31)
/* 0B725C 800BA25C 28000052 */  cmplwi    r0, 0x52
/* 0B7260 800BA260 4082003C */  bne       lbl_800BA29C
/* 0B7264 800BA264 809F0080 */  lwz       r4, 0x80(r31)
/* 0B7268 800BA268 7FC3F378 */  mr        r3, r30
/* 0B726C 800BA26C 80BF0014 */  lwz       r5, 0x14(r31)
/* 0B7270 800BA270 38C00001 */  li        r6, 0x1
/* 0B7274 800BA274 38840200 */  addi      r4, r4, 0x200
/* 0B7278 800BA278 4BFE7A71 */  bl        EXIImmEx
/* 0B727C 800BA27C 2C030000 */  cmpwi     r3, 0x0
/* 0B7280 800BA280 4082001C */  bne       lbl_800BA29C
/* 0B7284 800BA284 7FC3F378 */  mr        r3, r30
/* 0B7288 800BA288 4BFE8485 */  bl        EXIDeselect
/* 0B728C 800BA28C 7FC3F378 */  mr        r3, r30
/* 0B7290 800BA290 4BFE8B4D */  bl        EXIUnlock
/* 0B7294 800BA294 3860FFFD */  li        r3, -0x3
/* 0B7298 800BA298 48000080 */  b         lbl_800BA318
lbl_800BA29C:
/* 0B729C 800BA29C 807F00A4 */  lwz       r3, 0xa4(r31)
/* 0B72A0 800BA2A0 3C030001 */  addis     r0, r3, 0x1
/* 0B72A4 800BA2A4 2800FFFF */  cmplwi    r0, 0xffff
/* 0B72A8 800BA2A8 4082001C */  bne       lbl_800BA2C4
/* 0B72AC 800BA2AC 7FC3F378 */  mr        r3, r30
/* 0B72B0 800BA2B0 4BFE845D */  bl        EXIDeselect
/* 0B72B4 800BA2B4 7FC3F378 */  mr        r3, r30
/* 0B72B8 800BA2B8 4BFE8B25 */  bl        EXIUnlock
/* 0B72BC 800BA2BC 38600000 */  li        r3, 0x0
/* 0B72C0 800BA2C0 48000058 */  b         lbl_800BA318
lbl_800BA2C4:
/* 0B72C4 800BA2C4 881F0094 */  lbz       r0, 0x94(r31)
/* 0B72C8 800BA2C8 28000052 */  cmplwi    r0, 0x52
/* 0B72CC 800BA2CC 4082000C */  bne       lbl_800BA2D8
/* 0B72D0 800BA2D0 38A00200 */  li        r5, 0x200
/* 0B72D4 800BA2D4 48000008 */  b         lbl_800BA2DC
lbl_800BA2D8:
/* 0B72D8 800BA2D8 38A00080 */  li        r5, 0x80
lbl_800BA2DC:
/* 0B72DC 800BA2DC 3C60800C */  lis       r3, __CARDTxHandler@ha
/* 0B72E0 800BA2E0 809F00B4 */  lwz       r4, 0xb4(r31)
/* 0B72E4 800BA2E4 38E39CD8 */  addi      r7, r3, __CARDTxHandler@l
/* 0B72E8 800BA2E8 80DF00A4 */  lwz       r6, 0xa4(r31)
/* 0B72EC 800BA2EC 7FC3F378 */  mr        r3, r30
/* 0B72F0 800BA2F0 4BFE7A99 */  bl        EXIDma
/* 0B72F4 800BA2F4 2C030000 */  cmpwi     r3, 0x0
/* 0B72F8 800BA2F8 4082001C */  bne       lbl_800BA314
/* 0B72FC 800BA2FC 7FC3F378 */  mr        r3, r30
/* 0B7300 800BA300 4BFE840D */  bl        EXIDeselect
/* 0B7304 800BA304 7FC3F378 */  mr        r3, r30
/* 0B7308 800BA308 4BFE8AD5 */  bl        EXIUnlock
/* 0B730C 800BA30C 3860FFFD */  li        r3, -0x3
/* 0B7310 800BA310 48000008 */  b         lbl_800BA318
lbl_800BA314:
/* 0B7314 800BA314 38600000 */  li        r3, 0x0
lbl_800BA318:
/* 0B7318 800BA318 8001001C */  lwz       r0, 0x1c(r1)
/* 0B731C 800BA31C 83E10014 */  lwz       r31, 0x14(r1)
/* 0B7320 800BA320 83C10010 */  lwz       r30, 0x10(r1)
/* 0B7324 800BA324 38210018 */  addi      r1, r1, 0x18
/* 0B7328 800BA328 7C0803A6 */  mtlr      r0
/* 0B732C 800BA32C 4E800020 */  blr

glabel UnlockedCallback
/* 0B7330 800BA330 7C0802A6 */  mflr      r0
/* 0B7334 800BA334 2C040000 */  cmpwi     r4, 0x0
/* 0B7338 800BA338 90010004 */  stw       r0, 0x4(r1)
/* 0B733C 800BA33C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B7340 800BA340 93E10014 */  stw       r31, 0x14(r1)
/* 0B7344 800BA344 3BE30000 */  addi      r31, r3, 0x0
/* 0B7348 800BA348 1CBF0110 */  mulli     r5, r31, 0x110
/* 0B734C 800BA34C 93C10010 */  stw       r30, 0x10(r1)
/* 0B7350 800BA350 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7354 800BA354 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B7358 800BA358 7FC02A14 */  add       r30, r0, r5
/* 0B735C 800BA35C 41800048 */  blt       lbl_800BA3A4
/* 0B7360 800BA360 3C60800C */  lis       r3, UnlockedCallback@ha
/* 0B7364 800BA364 3803A330 */  addi      r0, r3, UnlockedCallback@l
/* 0B7368 800BA368 3C60800C */  lis       r3, __CARDUnlockedHandler@ha
/* 0B736C 800BA36C 901E00DC */  stw       r0, 0xdc(r30)
/* 0B7370 800BA370 38A39D80 */  addi      r5, r3, __CARDUnlockedHandler@l
/* 0B7374 800BA374 387F0000 */  addi      r3, r31, 0x0
/* 0B7378 800BA378 38800000 */  li        r4, 0x0
/* 0B737C 800BA37C 4BFE896D */  bl        EXILock
/* 0B7380 800BA380 2C030000 */  cmpwi     r3, 0x0
/* 0B7384 800BA384 4082000C */  bne       lbl_800BA390
/* 0B7388 800BA388 38800000 */  li        r4, 0x0
/* 0B738C 800BA38C 48000018 */  b         lbl_800BA3A4
lbl_800BA390:
/* 0B7390 800BA390 38000000 */  li        r0, 0x0
/* 0B7394 800BA394 901E00DC */  stw       r0, 0xdc(r30)
/* 0B7398 800BA398 7FE3FB78 */  mr        r3, r31
/* 0B739C 800BA39C 4BFFFD69 */  bl        Retry
/* 0B73A0 800BA3A0 7C641B78 */  mr        r4, r3
lbl_800BA3A4:
/* 0B73A4 800BA3A4 2C040000 */  cmpwi     r4, 0x0
/* 0B73A8 800BA3A8 40800080 */  bge       lbl_800BA428
/* 0B73AC 800BA3AC 881E0094 */  lbz       r0, 0x94(r30)
/* 0B73B0 800BA3B0 2C0000F3 */  cmpwi     r0, 0xf3
/* 0B73B4 800BA3B4 41820074 */  beq       lbl_800BA428
/* 0B73B8 800BA3B8 4080001C */  bge       lbl_800BA3D4
/* 0B73BC 800BA3BC 2C000052 */  cmpwi     r0, 0x52
/* 0B73C0 800BA3C0 41820020 */  beq       lbl_800BA3E0
/* 0B73C4 800BA3C4 41800064 */  blt       lbl_800BA428
/* 0B73C8 800BA3C8 2C0000F1 */  cmpwi     r0, 0xf1
/* 0B73CC 800BA3CC 4080003C */  bge       lbl_800BA408
/* 0B73D0 800BA3D0 48000058 */  b         lbl_800BA428
lbl_800BA3D4:
/* 0B73D4 800BA3D4 2C0000F5 */  cmpwi     r0, 0xf5
/* 0B73D8 800BA3D8 40800050 */  bge       lbl_800BA428
/* 0B73DC 800BA3DC 4800002C */  b         lbl_800BA408
lbl_800BA3E0:
/* 0B73E0 800BA3E0 801E00C8 */  lwz       r0, 0xc8(r30)
/* 0B73E4 800BA3E4 28000000 */  cmplwi    r0, 0x0
/* 0B73E8 800BA3E8 7C0C0378 */  mr        r12, r0
/* 0B73EC 800BA3EC 4182003C */  beq       lbl_800BA428
/* 0B73F0 800BA3F0 38000000 */  li        r0, 0x0
/* 0B73F4 800BA3F4 7D8803A6 */  mtlr      r12
/* 0B73F8 800BA3F8 901E00C8 */  stw       r0, 0xc8(r30)
/* 0B73FC 800BA3FC 7FE3FB78 */  mr        r3, r31
/* 0B7400 800BA400 4E800021 */  blrl
/* 0B7404 800BA404 48000024 */  b         lbl_800BA428
lbl_800BA408:
/* 0B7408 800BA408 819E00CC */  lwz       r12, 0xcc(r30)
/* 0B740C 800BA40C 280C0000 */  cmplwi    r12, 0x0
/* 0B7410 800BA410 41820018 */  beq       lbl_800BA428
/* 0B7414 800BA414 38000000 */  li        r0, 0x0
/* 0B7418 800BA418 7D8803A6 */  mtlr      r12
/* 0B741C 800BA41C 901E00CC */  stw       r0, 0xcc(r30)
/* 0B7420 800BA420 7FE3FB78 */  mr        r3, r31
/* 0B7424 800BA424 4E800021 */  blrl
lbl_800BA428:
/* 0B7428 800BA428 8001001C */  lwz       r0, 0x1c(r1)
/* 0B742C 800BA42C 83E10014 */  lwz       r31, 0x14(r1)
/* 0B7430 800BA430 83C10010 */  lwz       r30, 0x10(r1)
/* 0B7434 800BA434 38210018 */  addi      r1, r1, 0x18
/* 0B7438 800BA438 7C0803A6 */  mtlr      r0
/* 0B743C 800BA43C 4E800020 */  blr

glabel __CARDStart
/* 0B7440 800BA440 7C0802A6 */  mflr      r0
/* 0B7444 800BA444 90010004 */  stw       r0, 0x4(r1)
/* 0B7448 800BA448 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0B744C 800BA44C BF61001C */  stmw      r27, 0x1c(r1)
/* 0B7450 800BA450 3B630000 */  addi      r27, r3, 0x0
/* 0B7454 800BA454 3B840000 */  addi      r28, r4, 0x0
/* 0B7458 800BA458 3BA50000 */  addi      r29, r5, 0x0
/* 0B745C 800BA45C 4BFE3DED */  bl        OSDisableInterrupts
/* 0B7460 800BA460 1CBB0110 */  mulli     r5, r27, 0x110
/* 0B7464 800BA464 3C808019 */  lis       r4, D_80188A70@ha
/* 0B7468 800BA468 38048A70 */  addi      r0, r4, D_80188A70@l
/* 0B746C 800BA46C 7FE02A14 */  add       r31, r0, r5
/* 0B7470 800BA470 801F0000 */  lwz       r0, 0x0(r31)
/* 0B7474 800BA474 3BC30000 */  addi      r30, r3, 0x0
/* 0B7478 800BA478 2C000000 */  cmpwi     r0, 0x0
/* 0B747C 800BA47C 4082000C */  bne       lbl_800BA488
/* 0B7480 800BA480 3BE0FFFD */  li        r31, -0x3
/* 0B7484 800BA484 48000150 */  b         lbl_800BA5D4
lbl_800BA488:
/* 0B7488 800BA488 281C0000 */  cmplwi    r28, 0x0
/* 0B748C 800BA48C 41820008 */  beq       lbl_800BA494
/* 0B7490 800BA490 939F00C8 */  stw       r28, 0xc8(r31)
lbl_800BA494:
/* 0B7494 800BA494 281D0000 */  cmplwi    r29, 0x0
/* 0B7498 800BA498 41820008 */  beq       lbl_800BA4A0
/* 0B749C 800BA49C 93BF00CC */  stw       r29, 0xcc(r31)
lbl_800BA4A0:
/* 0B74A0 800BA4A0 3C60800C */  lis       r3, UnlockedCallback@ha
/* 0B74A4 800BA4A4 3803A330 */  addi      r0, r3, UnlockedCallback@l
/* 0B74A8 800BA4A8 3C60800C */  lis       r3, __CARDUnlockedHandler@ha
/* 0B74AC 800BA4AC 901F00DC */  stw       r0, 0xdc(r31)
/* 0B74B0 800BA4B0 38A39D80 */  addi      r5, r3, __CARDUnlockedHandler@l
/* 0B74B4 800BA4B4 387B0000 */  addi      r3, r27, 0x0
/* 0B74B8 800BA4B8 38800000 */  li        r4, 0x0
/* 0B74BC 800BA4BC 4BFE882D */  bl        EXILock
/* 0B74C0 800BA4C0 2C030000 */  cmpwi     r3, 0x0
/* 0B74C4 800BA4C4 4082000C */  bne       lbl_800BA4D0
/* 0B74C8 800BA4C8 3BE0FFFF */  li        r31, -0x1
/* 0B74CC 800BA4CC 48000108 */  b         lbl_800BA5D4
lbl_800BA4D0:
/* 0B74D0 800BA4D0 38000000 */  li        r0, 0x0
/* 0B74D4 800BA4D4 901F00DC */  stw       r0, 0xdc(r31)
/* 0B74D8 800BA4D8 387B0000 */  addi      r3, r27, 0x0
/* 0B74DC 800BA4DC 38800000 */  li        r4, 0x0
/* 0B74E0 800BA4E0 38A00004 */  li        r5, 0x4
/* 0B74E4 800BA4E4 4BFE80FD */  bl        EXISelect
/* 0B74E8 800BA4E8 2C030000 */  cmpwi     r3, 0x0
/* 0B74EC 800BA4EC 40820014 */  bne       lbl_800BA500
/* 0B74F0 800BA4F0 7F63DB78 */  mr        r3, r27
/* 0B74F4 800BA4F4 4BFE88E9 */  bl        EXIUnlock
/* 0B74F8 800BA4F8 3BE0FFFD */  li        r31, -0x3
/* 0B74FC 800BA4FC 480000D8 */  b         lbl_800BA5D4
lbl_800BA500:
/* 0B7500 800BA500 387F00E0 */  addi      r3, r31, 0xe0
/* 0B7504 800BA504 4BFE1AC1 */  bl        OSCancelAlarm
/* 0B7508 800BA508 881F0094 */  lbz       r0, 0x94(r31)
/* 0B750C 800BA50C 2C0000F3 */  cmpwi     r0, 0xf3
/* 0B7510 800BA510 418200C0 */  beq       lbl_800BA5D0
/* 0B7514 800BA514 40800014 */  bge       lbl_800BA528
/* 0B7518 800BA518 2C0000F1 */  cmpwi     r0, 0xf1
/* 0B751C 800BA51C 41820050 */  beq       lbl_800BA56C
/* 0B7520 800BA520 40800014 */  bge       lbl_800BA534
/* 0B7524 800BA524 480000AC */  b         lbl_800BA5D0
lbl_800BA528:
/* 0B7528 800BA528 2C0000F5 */  cmpwi     r0, 0xf5
/* 0B752C 800BA52C 408000A4 */  bge       lbl_800BA5D0
/* 0B7530 800BA530 4800003C */  b         lbl_800BA56C
lbl_800BA534:
/* 0B7534 800BA534 3C608000 */  lis       r3, 0x8000
/* 0B7538 800BA538 800300F8 */  lwz       r0, 0xf8(r3)
/* 0B753C 800BA53C 3C801062 */  lis       r4, 0x1062
/* 0B7540 800BA540 3C60800C */  lis       r3, TimeoutHandler@ha
/* 0B7544 800BA544 5400F0BE */  srwi      r0, r0, 2
/* 0B7548 800BA548 38844DD3 */  addi      r4, r4, 0x4dd3
/* 0B754C 800BA54C 7C040016 */  mulhwu    r0, r4, r0
/* 0B7550 800BA550 5400D1BE */  srwi      r0, r0, 6
/* 0B7554 800BA554 1CC00064 */  mulli     r6, r0, 0x64
/* 0B7558 800BA558 38E3A060 */  addi      r7, r3, TimeoutHandler@l
/* 0B755C 800BA55C 387F00E0 */  addi      r3, r31, 0xe0
/* 0B7560 800BA560 38A00000 */  li        r5, 0x0
/* 0B7564 800BA564 4BFE19F9 */  bl        OSSetAlarm
/* 0B7568 800BA568 48000068 */  b         lbl_800BA5D0
lbl_800BA56C:
/* 0B756C 800BA56C 3C608000 */  lis       r3, 0x8000
/* 0B7570 800BA570 809F000C */  lwz       r4, 0xc(r31)
/* 0B7574 800BA574 800300F8 */  lwz       r0, 0xf8(r3)
/* 0B7578 800BA578 3C60800C */  lis       r3, TimeoutHandler@ha
/* 0B757C 800BA57C 7C896E70 */  srawi     r9, r4, 13
/* 0B7580 800BA580 5407F0BE */  srwi      r7, r0, 2
/* 0B7584 800BA584 38000002 */  li        r0, 0x2
/* 0B7588 800BA588 38800000 */  li        r4, 0x0
/* 0B758C 800BA58C 7D0401D6 */  mullw     r8, r4, r0
/* 0B7590 800BA590 7CC70016 */  mulhwu    r6, r7, r0
/* 0B7594 800BA594 7D083214 */  add       r8, r8, r6
/* 0B7598 800BA598 7CA701D6 */  mullw     r5, r7, r0
/* 0B759C 800BA59C 7D290194 */  addze     r9, r9
/* 0B75A0 800BA5A0 7CC721D6 */  mullw     r6, r7, r4
/* 0B75A4 800BA5A4 7D20FE70 */  srawi     r0, r9, 31
/* 0B75A8 800BA5A8 7C8029D6 */  mullw     r4, r0, r5
/* 0B75AC 800BA5AC 7C092816 */  mulhwu    r0, r9, r5
/* 0B75B0 800BA5B0 38E3A060 */  addi      r7, r3, TimeoutHandler@l
/* 0B75B4 800BA5B4 7C683214 */  add       r3, r8, r6
/* 0B75B8 800BA5B8 7C840214 */  add       r4, r4, r0
/* 0B75BC 800BA5BC 7C0919D6 */  mullw     r0, r9, r3
/* 0B75C0 800BA5C0 7CC929D6 */  mullw     r6, r9, r5
/* 0B75C4 800BA5C4 387F00E0 */  addi      r3, r31, 0xe0
/* 0B75C8 800BA5C8 7CA40214 */  add       r5, r4, r0
/* 0B75CC 800BA5CC 4BFE1991 */  bl        OSSetAlarm
lbl_800BA5D0:
/* 0B75D0 800BA5D0 3BE00000 */  li        r31, 0x0
lbl_800BA5D4:
/* 0B75D4 800BA5D4 7FC3F378 */  mr        r3, r30
/* 0B75D8 800BA5D8 4BFE3C99 */  bl        OSRestoreInterrupts
/* 0B75DC 800BA5DC 7FE3FB78 */  mr        r3, r31
/* 0B75E0 800BA5E0 BB61001C */  lmw       r27, 0x1c(r1)
/* 0B75E4 800BA5E4 80010034 */  lwz       r0, 0x34(r1)
/* 0B75E8 800BA5E8 38210030 */  addi      r1, r1, 0x30
/* 0B75EC 800BA5EC 7C0803A6 */  mtlr      r0
/* 0B75F0 800BA5F0 4E800020 */  blr

glabel __CARDReadSegment
/* 0B75F4 800BA5F4 7C0802A6 */  mflr      r0
/* 0B75F8 800BA5F8 38C00005 */  li        r6, 0x5
/* 0B75FC 800BA5FC 90010004 */  stw       r0, 0x4(r1)
/* 0B7600 800BA600 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B7604 800BA604 93E10014 */  stw       r31, 0x14(r1)
/* 0B7608 800BA608 93C10010 */  stw       r30, 0x10(r1)
/* 0B760C 800BA60C 3BC30000 */  addi      r30, r3, 0x0
/* 0B7610 800BA610 1CBE0110 */  mulli     r5, r30, 0x110
/* 0B7614 800BA614 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7618 800BA618 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B761C 800BA61C 7FE02A14 */  add       r31, r0, r5
/* 0B7620 800BA620 38000052 */  li        r0, 0x52
/* 0B7624 800BA624 981F0094 */  stb       r0, 0x94(r31)
/* 0B7628 800BA628 38000000 */  li        r0, 0x0
/* 0B762C 800BA62C 387E0000 */  addi      r3, r30, 0x0
/* 0B7630 800BA630 80BF00B0 */  lwz       r5, 0xb0(r31)
/* 0B7634 800BA634 54A57E7E */  extrwi    r5, r5, 7, 8
/* 0B7638 800BA638 98BF0095 */  stb       r5, 0x95(r31)
/* 0B763C 800BA63C 38A00000 */  li        r5, 0x0
/* 0B7640 800BA640 80FF00B0 */  lwz       r7, 0xb0(r31)
/* 0B7644 800BA644 54E7BE3E */  extrwi    r7, r7, 8, 15
/* 0B7648 800BA648 98FF0096 */  stb       r7, 0x96(r31)
/* 0B764C 800BA64C 80FF00B0 */  lwz       r7, 0xb0(r31)
/* 0B7650 800BA650 54E7CFBE */  extrwi    r7, r7, 2, 23
/* 0B7654 800BA654 98FF0097 */  stb       r7, 0x97(r31)
/* 0B7658 800BA658 80FF00B0 */  lwz       r7, 0xb0(r31)
/* 0B765C 800BA65C 54E7067E */  clrlwi    r7, r7, 25
/* 0B7660 800BA660 98FF0098 */  stb       r7, 0x98(r31)
/* 0B7664 800BA664 90DF00A0 */  stw       r6, 0xa0(r31)
/* 0B7668 800BA668 901F00A4 */  stw       r0, 0xa4(r31)
/* 0B766C 800BA66C 901F00A8 */  stw       r0, 0xa8(r31)
/* 0B7670 800BA670 4BFFFDD1 */  bl        __CARDStart
/* 0B7674 800BA674 2C03FFFF */  cmpwi     r3, -0x1
/* 0B7678 800BA678 4082000C */  bne       lbl_800BA684
/* 0B767C 800BA67C 38600000 */  li        r3, 0x0
/* 0B7680 800BA680 48000090 */  b         lbl_800BA710
lbl_800BA684:
/* 0B7684 800BA684 2C030000 */  cmpwi     r3, 0x0
/* 0B7688 800BA688 41800088 */  blt       lbl_800BA710
/* 0B768C 800BA68C 80BF00A0 */  lwz       r5, 0xa0(r31)
/* 0B7690 800BA690 387E0000 */  addi      r3, r30, 0x0
/* 0B7694 800BA694 389F0094 */  addi      r4, r31, 0x94
/* 0B7698 800BA698 38C00001 */  li        r6, 0x1
/* 0B769C 800BA69C 4BFE764D */  bl        EXIImmEx
/* 0B76A0 800BA6A0 2C030000 */  cmpwi     r3, 0x0
/* 0B76A4 800BA6A4 41820048 */  beq       lbl_800BA6EC
/* 0B76A8 800BA6A8 809F0080 */  lwz       r4, 0x80(r31)
/* 0B76AC 800BA6AC 7FC3F378 */  mr        r3, r30
/* 0B76B0 800BA6B0 80BF0014 */  lwz       r5, 0x14(r31)
/* 0B76B4 800BA6B4 38C00001 */  li        r6, 0x1
/* 0B76B8 800BA6B8 38840200 */  addi      r4, r4, 0x200
/* 0B76BC 800BA6BC 4BFE762D */  bl        EXIImmEx
/* 0B76C0 800BA6C0 2C030000 */  cmpwi     r3, 0x0
/* 0B76C4 800BA6C4 41820028 */  beq       lbl_800BA6EC
/* 0B76C8 800BA6C8 3C60800C */  lis       r3, __CARDTxHandler@ha
/* 0B76CC 800BA6CC 809F00B4 */  lwz       r4, 0xb4(r31)
/* 0B76D0 800BA6D0 38E39CD8 */  addi      r7, r3, __CARDTxHandler@l
/* 0B76D4 800BA6D4 80DF00A4 */  lwz       r6, 0xa4(r31)
/* 0B76D8 800BA6D8 387E0000 */  addi      r3, r30, 0x0
/* 0B76DC 800BA6DC 38A00200 */  li        r5, 0x200
/* 0B76E0 800BA6E0 4BFE76A9 */  bl        EXIDma
/* 0B76E4 800BA6E4 2C030000 */  cmpwi     r3, 0x0
/* 0B76E8 800BA6E8 40820024 */  bne       lbl_800BA70C
lbl_800BA6EC:
/* 0B76EC 800BA6EC 38000000 */  li        r0, 0x0
/* 0B76F0 800BA6F0 901F00C8 */  stw       r0, 0xc8(r31)
/* 0B76F4 800BA6F4 7FC3F378 */  mr        r3, r30
/* 0B76F8 800BA6F8 4BFE8015 */  bl        EXIDeselect
/* 0B76FC 800BA6FC 7FC3F378 */  mr        r3, r30
/* 0B7700 800BA700 4BFE86DD */  bl        EXIUnlock
/* 0B7704 800BA704 3860FFFD */  li        r3, -0x3
/* 0B7708 800BA708 48000008 */  b         lbl_800BA710
lbl_800BA70C:
/* 0B770C 800BA70C 38600000 */  li        r3, 0x0
lbl_800BA710:
/* 0B7710 800BA710 8001001C */  lwz       r0, 0x1c(r1)
/* 0B7714 800BA714 83E10014 */  lwz       r31, 0x14(r1)
/* 0B7718 800BA718 83C10010 */  lwz       r30, 0x10(r1)
/* 0B771C 800BA71C 38210018 */  addi      r1, r1, 0x18
/* 0B7720 800BA720 7C0803A6 */  mtlr      r0
/* 0B7724 800BA724 4E800020 */  blr

glabel __CARDWritePage
/* 0B7728 800BA728 7C0802A6 */  mflr      r0
/* 0B772C 800BA72C 38E00005 */  li        r7, 0x5
/* 0B7730 800BA730 90010004 */  stw       r0, 0x4(r1)
/* 0B7734 800BA734 38C00001 */  li        r6, 0x1
/* 0B7738 800BA738 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B773C 800BA73C 93E10014 */  stw       r31, 0x14(r1)
/* 0B7740 800BA740 93C10010 */  stw       r30, 0x10(r1)
/* 0B7744 800BA744 3BC30000 */  addi      r30, r3, 0x0
/* 0B7748 800BA748 1CBE0110 */  mulli     r5, r30, 0x110
/* 0B774C 800BA74C 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7750 800BA750 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B7754 800BA754 7FE02A14 */  add       r31, r0, r5
/* 0B7758 800BA758 380000F2 */  li        r0, 0xf2
/* 0B775C 800BA75C 981F0094 */  stb       r0, 0x94(r31)
/* 0B7760 800BA760 38A40000 */  addi      r5, r4, 0x0
/* 0B7764 800BA764 38000003 */  li        r0, 0x3
/* 0B7768 800BA768 807F00B0 */  lwz       r3, 0xb0(r31)
/* 0B776C 800BA76C 38800000 */  li        r4, 0x0
/* 0B7770 800BA770 54637E7E */  extrwi    r3, r3, 7, 8
/* 0B7774 800BA774 987F0095 */  stb       r3, 0x95(r31)
/* 0B7778 800BA778 387E0000 */  addi      r3, r30, 0x0
/* 0B777C 800BA77C 811F00B0 */  lwz       r8, 0xb0(r31)
/* 0B7780 800BA780 5508BE3E */  extrwi    r8, r8, 8, 15
/* 0B7784 800BA784 991F0096 */  stb       r8, 0x96(r31)
/* 0B7788 800BA788 811F00B0 */  lwz       r8, 0xb0(r31)
/* 0B778C 800BA78C 5508CFBE */  extrwi    r8, r8, 2, 23
/* 0B7790 800BA790 991F0097 */  stb       r8, 0x97(r31)
/* 0B7794 800BA794 811F00B0 */  lwz       r8, 0xb0(r31)
/* 0B7798 800BA798 5508067E */  clrlwi    r8, r8, 25
/* 0B779C 800BA79C 991F0098 */  stb       r8, 0x98(r31)
/* 0B77A0 800BA7A0 90FF00A0 */  stw       r7, 0xa0(r31)
/* 0B77A4 800BA7A4 90DF00A4 */  stw       r6, 0xa4(r31)
/* 0B77A8 800BA7A8 901F00A8 */  stw       r0, 0xa8(r31)
/* 0B77AC 800BA7AC 4BFFFC95 */  bl        __CARDStart
/* 0B77B0 800BA7B0 2C03FFFF */  cmpwi     r3, -0x1
/* 0B77B4 800BA7B4 4082000C */  bne       lbl_800BA7C0
/* 0B77B8 800BA7B8 38600000 */  li        r3, 0x0
/* 0B77BC 800BA7BC 48000070 */  b         lbl_800BA82C
lbl_800BA7C0:
/* 0B77C0 800BA7C0 2C030000 */  cmpwi     r3, 0x0
/* 0B77C4 800BA7C4 41800068 */  blt       lbl_800BA82C
/* 0B77C8 800BA7C8 80BF00A0 */  lwz       r5, 0xa0(r31)
/* 0B77CC 800BA7CC 387E0000 */  addi      r3, r30, 0x0
/* 0B77D0 800BA7D0 389F0094 */  addi      r4, r31, 0x94
/* 0B77D4 800BA7D4 38C00001 */  li        r6, 0x1
/* 0B77D8 800BA7D8 4BFE7511 */  bl        EXIImmEx
/* 0B77DC 800BA7DC 2C030000 */  cmpwi     r3, 0x0
/* 0B77E0 800BA7E0 41820028 */  beq       lbl_800BA808
/* 0B77E4 800BA7E4 3C60800C */  lis       r3, __CARDTxHandler@ha
/* 0B77E8 800BA7E8 809F00B4 */  lwz       r4, 0xb4(r31)
/* 0B77EC 800BA7EC 38E39CD8 */  addi      r7, r3, __CARDTxHandler@l
/* 0B77F0 800BA7F0 80DF00A4 */  lwz       r6, 0xa4(r31)
/* 0B77F4 800BA7F4 387E0000 */  addi      r3, r30, 0x0
/* 0B77F8 800BA7F8 38A00080 */  li        r5, 0x80
/* 0B77FC 800BA7FC 4BFE758D */  bl        EXIDma
/* 0B7800 800BA800 2C030000 */  cmpwi     r3, 0x0
/* 0B7804 800BA804 40820024 */  bne       lbl_800BA828
lbl_800BA808:
/* 0B7808 800BA808 38000000 */  li        r0, 0x0
/* 0B780C 800BA80C 901F00CC */  stw       r0, 0xcc(r31)
/* 0B7810 800BA810 7FC3F378 */  mr        r3, r30
/* 0B7814 800BA814 4BFE7EF9 */  bl        EXIDeselect
/* 0B7818 800BA818 7FC3F378 */  mr        r3, r30
/* 0B781C 800BA81C 4BFE85C1 */  bl        EXIUnlock
/* 0B7820 800BA820 3860FFFD */  li        r3, -0x3
/* 0B7824 800BA824 48000008 */  b         lbl_800BA82C
lbl_800BA828:
/* 0B7828 800BA828 38600000 */  li        r3, 0x0
lbl_800BA82C:
/* 0B782C 800BA82C 8001001C */  lwz       r0, 0x1c(r1)
/* 0B7830 800BA830 83E10014 */  lwz       r31, 0x14(r1)
/* 0B7834 800BA834 83C10010 */  lwz       r30, 0x10(r1)
/* 0B7838 800BA838 38210018 */  addi      r1, r1, 0x18
/* 0B783C 800BA83C 7C0803A6 */  mtlr      r0
/* 0B7840 800BA840 4E800020 */  blr

glabel __CARDEraseSector
/* 0B7844 800BA844 7C0802A6 */  mflr      r0
/* 0B7848 800BA848 90010004 */  stw       r0, 0x4(r1)
/* 0B784C 800BA84C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B7850 800BA850 93E10024 */  stw       r31, 0x24(r1)
/* 0B7854 800BA854 93C10020 */  stw       r30, 0x20(r1)
/* 0B7858 800BA858 93A1001C */  stw       r29, 0x1c(r1)
/* 0B785C 800BA85C 3BA30000 */  addi      r29, r3, 0x0
/* 0B7860 800BA860 1CDD0110 */  mulli     r6, r29, 0x110
/* 0B7864 800BA864 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7868 800BA868 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B786C 800BA86C 7FE03214 */  add       r31, r0, r6
/* 0B7870 800BA870 380000F1 */  li        r0, 0xf1
/* 0B7874 800BA874 981F0094 */  stb       r0, 0x94(r31)
/* 0B7878 800BA878 54837E7E */  extrwi    r3, r4, 7, 8
/* 0B787C 800BA87C 5480BE3E */  extrwi    r0, r4, 8, 15
/* 0B7880 800BA880 987F0095 */  stb       r3, 0x95(r31)
/* 0B7884 800BA884 38C00003 */  li        r6, 0x3
/* 0B7888 800BA888 387D0000 */  addi      r3, r29, 0x0
/* 0B788C 800BA88C 981F0096 */  stb       r0, 0x96(r31)
/* 0B7890 800BA890 3800FFFF */  li        r0, -0x1
/* 0B7894 800BA894 38800000 */  li        r4, 0x0
/* 0B7898 800BA898 90DF00A0 */  stw       r6, 0xa0(r31)
/* 0B789C 800BA89C 901F00A4 */  stw       r0, 0xa4(r31)
/* 0B78A0 800BA8A0 90DF00A8 */  stw       r6, 0xa8(r31)
/* 0B78A4 800BA8A4 4BFFFB9D */  bl        __CARDStart
/* 0B78A8 800BA8A8 3BC30000 */  addi      r30, r3, 0x0
/* 0B78AC 800BA8AC 2C1EFFFF */  cmpwi     r30, -0x1
/* 0B78B0 800BA8B0 4082000C */  bne       lbl_800BA8BC
/* 0B78B4 800BA8B4 3BC00000 */  li        r30, 0x0
/* 0B78B8 800BA8B8 4800004C */  b         lbl_800BA904
lbl_800BA8BC:
/* 0B78BC 800BA8BC 2C1E0000 */  cmpwi     r30, 0x0
/* 0B78C0 800BA8C0 41800044 */  blt       lbl_800BA904
/* 0B78C4 800BA8C4 80BF00A0 */  lwz       r5, 0xa0(r31)
/* 0B78C8 800BA8C8 387D0000 */  addi      r3, r29, 0x0
/* 0B78CC 800BA8CC 389F0094 */  addi      r4, r31, 0x94
/* 0B78D0 800BA8D0 38C00001 */  li        r6, 0x1
/* 0B78D4 800BA8D4 4BFE7415 */  bl        EXIImmEx
/* 0B78D8 800BA8D8 2C030000 */  cmpwi     r3, 0x0
/* 0B78DC 800BA8DC 40820014 */  bne       lbl_800BA8F0
/* 0B78E0 800BA8E0 38000000 */  li        r0, 0x0
/* 0B78E4 800BA8E4 901F00CC */  stw       r0, 0xcc(r31)
/* 0B78E8 800BA8E8 3BC0FFFD */  li        r30, -0x3
/* 0B78EC 800BA8EC 48000008 */  b         lbl_800BA8F4
lbl_800BA8F0:
/* 0B78F0 800BA8F0 3BC00000 */  li        r30, 0x0
lbl_800BA8F4:
/* 0B78F4 800BA8F4 7FA3EB78 */  mr        r3, r29
/* 0B78F8 800BA8F8 4BFE7E15 */  bl        EXIDeselect
/* 0B78FC 800BA8FC 7FA3EB78 */  mr        r3, r29
/* 0B7900 800BA900 4BFE84DD */  bl        EXIUnlock
lbl_800BA904:
/* 0B7904 800BA904 7FC3F378 */  mr        r3, r30
/* 0B7908 800BA908 8001002C */  lwz       r0, 0x2c(r1)
/* 0B790C 800BA90C 83E10024 */  lwz       r31, 0x24(r1)
/* 0B7910 800BA910 83C10020 */  lwz       r30, 0x20(r1)
/* 0B7914 800BA914 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B7918 800BA918 38210028 */  addi      r1, r1, 0x28
/* 0B791C 800BA91C 7C0803A6 */  mtlr      r0
/* 0B7920 800BA920 4E800020 */  blr

glabel CARDInit
/* 0B7924 800BA924 7C0802A6 */  mflr      r0
/* 0B7928 800BA928 3C608019 */  lis       r3, D_80188A70@ha
/* 0B792C 800BA92C 90010004 */  stw       r0, 0x4(r1)
/* 0B7930 800BA930 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B7934 800BA934 93E10014 */  stw       r31, 0x14(r1)
/* 0B7938 800BA938 93C10010 */  stw       r30, 0x10(r1)
/* 0B793C 800BA93C 3BC38A70 */  addi      r30, r3, D_80188A70@l
/* 0B7940 800BA940 93A1000C */  stw       r29, 0xc(r1)
/* 0B7944 800BA944 801E010C */  lwz       r0, 0x10c(r30)
/* 0B7948 800BA948 28000000 */  cmplwi    r0, 0x0
/* 0B794C 800BA94C 41820010 */  beq       lbl_800BA95C
/* 0B7950 800BA950 801E021C */  lwz       r0, 0x21c(r30)
/* 0B7954 800BA954 28000000 */  cmplwi    r0, 0x0
/* 0B7958 800BA958 4082005C */  bne       lbl_800BA9B4
lbl_800BA95C:
/* 0B795C 800BA95C 4BFE3895 */  bl        OSGetFontEncode
/* 0B7960 800BA960 B06D8E50 */  sth       r3, D_8018BDD0@sda21(r0)
/* 0B7964 800BA964 806D8850 */  lwz       r3, D_8018B7D0@sda21(r0)
/* 0B7968 800BA968 4BFE131D */  bl        OSRegisterVersion
/* 0B796C 800BA96C 4BFFE73D */  bl        DSPInit
/* 0B7970 800BA970 4BFE1341 */  bl        OSInitAlarm
/* 0B7974 800BA974 3BA00000 */  li        r29, 0x0
/* 0B7978 800BA978 3BE0FFFD */  li        r31, -0x3
lbl_800BA97C:
/* 0B797C 800BA97C 93FE0004 */  stw       r31, 0x4(r30)
/* 0B7980 800BA980 387E008C */  addi      r3, r30, 0x8c
/* 0B7984 800BA984 4BFE5AE9 */  bl        OSInitThreadQueue
/* 0B7988 800BA988 387E00E0 */  addi      r3, r30, 0xe0
/* 0B798C 800BA98C 4BFE1371 */  bl        OSCreateAlarm
/* 0B7990 800BA990 3BBD0001 */  addi      r29, r29, 0x1
/* 0B7994 800BA994 2C1D0002 */  cmpwi     r29, 0x2
/* 0B7998 800BA998 3BDE0110 */  addi      r30, r30, 0x110
/* 0B799C 800BA99C 4180FFE0 */  blt       lbl_800BA97C
/* 0B79A0 800BA9A0 3C608000 */  lis       r3, 0x8000
/* 0B79A4 800BA9A4 48000035 */  bl        __CARDSetDiskID
/* 0B79A8 800BA9A8 3C60800F */  lis       r3, D_800F4B80@ha
/* 0B79AC 800BA9AC 38634B80 */  addi      r3, r3, D_800F4B80@l
/* 0B79B0 800BA9B0 4BFE4855 */  bl        OSRegisterResetFunction
lbl_800BA9B4:
/* 0B79B4 800BA9B4 8001001C */  lwz       r0, 0x1c(r1)
/* 0B79B8 800BA9B8 83E10014 */  lwz       r31, 0x14(r1)
/* 0B79BC 800BA9BC 83C10010 */  lwz       r30, 0x10(r1)
/* 0B79C0 800BA9C0 83A1000C */  lwz       r29, 0xc(r1)
/* 0B79C4 800BA9C4 38210018 */  addi      r1, r1, 0x18
/* 0B79C8 800BA9C8 7C0803A6 */  mtlr      r0
/* 0B79CC 800BA9CC 4E800020 */  blr

glabel __CARDGetFontEncode
/* 0B79D0 800BA9D0 A06D8E50 */  lhz       r3, D_8018BDD0@sda21(r0)
/* 0B79D4 800BA9D4 4E800020 */  blr

glabel __CARDSetDiskID
/* 0B79D8 800BA9D8 28030000 */  cmplwi    r3, 0x0
/* 0B79DC 800BA9DC 3C808019 */  lis       r4, D_80188A70@ha
/* 0B79E0 800BA9E0 38848A70 */  addi      r4, r4, D_80188A70@l
/* 0B79E4 800BA9E4 4182000C */  beq       lbl_800BA9F0
/* 0B79E8 800BA9E8 7C601B78 */  mr        r0, r3
/* 0B79EC 800BA9EC 48000008 */  b         lbl_800BA9F4
lbl_800BA9F0:
/* 0B79F0 800BA9F0 38040220 */  addi      r0, r4, 0x220
lbl_800BA9F4:
/* 0B79F4 800BA9F4 28030000 */  cmplwi    r3, 0x0
/* 0B79F8 800BA9F8 9004010C */  stw       r0, 0x10c(r4)
/* 0B79FC 800BA9FC 41820008 */  beq       lbl_800BAA04
/* 0B7A00 800BAA00 48000008 */  b         lbl_800BAA08
lbl_800BAA04:
/* 0B7A04 800BAA04 38640220 */  addi      r3, r4, 0x220
lbl_800BAA08:
/* 0B7A08 800BAA08 9064021C */  stw       r3, 0x21c(r4)
/* 0B7A0C 800BAA0C 4E800020 */  blr

glabel __CARDGetControlBlock
/* 0B7A10 800BAA10 7C0802A6 */  mflr      r0
/* 0B7A14 800BAA14 1CC30110 */  mulli     r6, r3, 0x110
/* 0B7A18 800BAA18 90010004 */  stw       r0, 0x4(r1)
/* 0B7A1C 800BAA1C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B7A20 800BAA20 3CA08019 */  lis       r5, D_80188A70@ha
/* 0B7A24 800BAA24 2C030000 */  cmpwi     r3, 0x0
/* 0B7A28 800BAA28 93E1001C */  stw       r31, 0x1c(r1)
/* 0B7A2C 800BAA2C 38058A70 */  addi      r0, r5, D_80188A70@l
/* 0B7A30 800BAA30 93C10018 */  stw       r30, 0x18(r1)
/* 0B7A34 800BAA34 7FC03214 */  add       r30, r0, r6
/* 0B7A38 800BAA38 93A10014 */  stw       r29, 0x14(r1)
/* 0B7A3C 800BAA3C 3BA40000 */  addi      r29, r4, 0x0
/* 0B7A40 800BAA40 41800018 */  blt       lbl_800BAA58
/* 0B7A44 800BAA44 2C030002 */  cmpwi     r3, 0x2
/* 0B7A48 800BAA48 40800010 */  bge       lbl_800BAA58
/* 0B7A4C 800BAA4C 801E010C */  lwz       r0, 0x10c(r30)
/* 0B7A50 800BAA50 28000000 */  cmplwi    r0, 0x0
/* 0B7A54 800BAA54 4082000C */  bne       lbl_800BAA60
lbl_800BAA58:
/* 0B7A58 800BAA58 3860FF80 */  li        r3, -0x80
/* 0B7A5C 800BAA5C 48000050 */  b         lbl_800BAAAC
lbl_800BAA60:
/* 0B7A60 800BAA60 4BFE37E9 */  bl        OSDisableInterrupts
/* 0B7A64 800BAA64 801E0000 */  lwz       r0, 0x0(r30)
/* 0B7A68 800BAA68 2C000000 */  cmpwi     r0, 0x0
/* 0B7A6C 800BAA6C 4082000C */  bne       lbl_800BAA78
/* 0B7A70 800BAA70 3BE0FFFD */  li        r31, -0x3
/* 0B7A74 800BAA74 48000030 */  b         lbl_800BAAA4
lbl_800BAA78:
/* 0B7A78 800BAA78 801E0004 */  lwz       r0, 0x4(r30)
/* 0B7A7C 800BAA7C 2C00FFFF */  cmpwi     r0, -0x1
/* 0B7A80 800BAA80 4082000C */  bne       lbl_800BAA8C
/* 0B7A84 800BAA84 3BE0FFFF */  li        r31, -0x1
/* 0B7A88 800BAA88 4800001C */  b         lbl_800BAAA4
lbl_800BAA8C:
/* 0B7A8C 800BAA8C 3800FFFF */  li        r0, -0x1
/* 0B7A90 800BAA90 901E0004 */  stw       r0, 0x4(r30)
/* 0B7A94 800BAA94 38000000 */  li        r0, 0x0
/* 0B7A98 800BAA98 3BE00000 */  li        r31, 0x0
/* 0B7A9C 800BAA9C 901E00D0 */  stw       r0, 0xd0(r30)
/* 0B7AA0 800BAAA0 93DD0000 */  stw       r30, 0x0(r29)
lbl_800BAAA4:
/* 0B7AA4 800BAAA4 4BFE37CD */  bl        OSRestoreInterrupts
/* 0B7AA8 800BAAA8 7FE3FB78 */  mr        r3, r31
lbl_800BAAAC:
/* 0B7AAC 800BAAAC 80010024 */  lwz       r0, 0x24(r1)
/* 0B7AB0 800BAAB0 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B7AB4 800BAAB4 83C10018 */  lwz       r30, 0x18(r1)
/* 0B7AB8 800BAAB8 83A10014 */  lwz       r29, 0x14(r1)
/* 0B7ABC 800BAABC 38210020 */  addi      r1, r1, 0x20
/* 0B7AC0 800BAAC0 7C0803A6 */  mtlr      r0
/* 0B7AC4 800BAAC4 4E800020 */  blr

glabel __CARDPutControlBlock
/* 0B7AC8 800BAAC8 7C0802A6 */  mflr      r0
/* 0B7ACC 800BAACC 90010004 */  stw       r0, 0x4(r1)
/* 0B7AD0 800BAAD0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B7AD4 800BAAD4 93E10014 */  stw       r31, 0x14(r1)
/* 0B7AD8 800BAAD8 3BE40000 */  addi      r31, r4, 0x0
/* 0B7ADC 800BAADC 93C10010 */  stw       r30, 0x10(r1)
/* 0B7AE0 800BAAE0 3BC30000 */  addi      r30, r3, 0x0
/* 0B7AE4 800BAAE4 4BFE3765 */  bl        OSDisableInterrupts
/* 0B7AE8 800BAAE8 801E0000 */  lwz       r0, 0x0(r30)
/* 0B7AEC 800BAAEC 2C000000 */  cmpwi     r0, 0x0
/* 0B7AF0 800BAAF0 4182000C */  beq       lbl_800BAAFC
/* 0B7AF4 800BAAF4 93FE0004 */  stw       r31, 0x4(r30)
/* 0B7AF8 800BAAF8 48000014 */  b         lbl_800BAB0C
lbl_800BAAFC:
/* 0B7AFC 800BAAFC 801E0004 */  lwz       r0, 0x4(r30)
/* 0B7B00 800BAB00 2C00FFFF */  cmpwi     r0, -0x1
/* 0B7B04 800BAB04 40820008 */  bne       lbl_800BAB0C
/* 0B7B08 800BAB08 93FE0004 */  stw       r31, 0x4(r30)
lbl_800BAB0C:
/* 0B7B0C 800BAB0C 4BFE3765 */  bl        OSRestoreInterrupts
/* 0B7B10 800BAB10 7FE3FB78 */  mr        r3, r31
/* 0B7B14 800BAB14 8001001C */  lwz       r0, 0x1c(r1)
/* 0B7B18 800BAB18 83E10014 */  lwz       r31, 0x14(r1)
/* 0B7B1C 800BAB1C 83C10010 */  lwz       r30, 0x10(r1)
/* 0B7B20 800BAB20 38210018 */  addi      r1, r1, 0x18
/* 0B7B24 800BAB24 7C0803A6 */  mtlr      r0
/* 0B7B28 800BAB28 4E800020 */  blr

glabel CARDGetResultCode
/* 0B7B2C 800BAB2C 2C030000 */  cmpwi     r3, 0x0
/* 0B7B30 800BAB30 4180000C */  blt       lbl_800BAB3C
/* 0B7B34 800BAB34 2C030002 */  cmpwi     r3, 0x2
/* 0B7B38 800BAB38 4180000C */  blt       lbl_800BAB44
lbl_800BAB3C:
/* 0B7B3C 800BAB3C 3860FF80 */  li        r3, -0x80
/* 0B7B40 800BAB40 4E800020 */  blr
lbl_800BAB44:
/* 0B7B44 800BAB44 1C830110 */  mulli     r4, r3, 0x110
/* 0B7B48 800BAB48 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7B4C 800BAB4C 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B7B50 800BAB50 7C602214 */  add       r3, r0, r4
/* 0B7B54 800BAB54 80630004 */  lwz       r3, 0x4(r3)
/* 0B7B58 800BAB58 4E800020 */  blr

glabel CARDFreeBlocks
/* 0B7B5C 800BAB5C 7C0802A6 */  mflr      r0
/* 0B7B60 800BAB60 90010004 */  stw       r0, 0x4(r1)
/* 0B7B64 800BAB64 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0B7B68 800BAB68 93E1002C */  stw       r31, 0x2c(r1)
/* 0B7B6C 800BAB6C 3BE50000 */  addi      r31, r5, 0x0
/* 0B7B70 800BAB70 93C10028 */  stw       r30, 0x28(r1)
/* 0B7B74 800BAB74 93A10024 */  stw       r29, 0x24(r1)
/* 0B7B78 800BAB78 3BA40000 */  addi      r29, r4, 0x0
/* 0B7B7C 800BAB7C 38810018 */  addi      r4, r1, 0x18
/* 0B7B80 800BAB80 4BFFFE91 */  bl        __CARDGetControlBlock
/* 0B7B84 800BAB84 2C030000 */  cmpwi     r3, 0x0
/* 0B7B88 800BAB88 40800008 */  bge       lbl_800BAB90
/* 0B7B8C 800BAB8C 48000104 */  b         lbl_800BAC90
lbl_800BAB90:
/* 0B7B90 800BAB90 80610018 */  lwz       r3, 0x18(r1)
/* 0B7B94 800BAB94 480016F9 */  bl        __CARDGetFatBlock
/* 0B7B98 800BAB98 7C7E1B78 */  mr        r30, r3
/* 0B7B9C 800BAB9C 80610018 */  lwz       r3, 0x18(r1)
/* 0B7BA0 800BABA0 48001AF1 */  bl        __CARDGetDirBlock
/* 0B7BA4 800BABA4 281E0000 */  cmplwi    r30, 0x0
/* 0B7BA8 800BABA8 4182000C */  beq       lbl_800BABB4
/* 0B7BAC 800BABAC 28030000 */  cmplwi    r3, 0x0
/* 0B7BB0 800BABB0 40820044 */  bne       lbl_800BABF4
lbl_800BABB4:
/* 0B7BB4 800BABB4 83C10018 */  lwz       r30, 0x18(r1)
/* 0B7BB8 800BABB8 4BFE3691 */  bl        OSDisableInterrupts
/* 0B7BBC 800BABBC 801E0000 */  lwz       r0, 0x0(r30)
/* 0B7BC0 800BABC0 2C000000 */  cmpwi     r0, 0x0
/* 0B7BC4 800BABC4 41820010 */  beq       lbl_800BABD4
/* 0B7BC8 800BABC8 3800FFFA */  li        r0, -0x6
/* 0B7BCC 800BABCC 901E0004 */  stw       r0, 0x4(r30)
/* 0B7BD0 800BABD0 48000018 */  b         lbl_800BABE8
lbl_800BABD4:
/* 0B7BD4 800BABD4 801E0004 */  lwz       r0, 0x4(r30)
/* 0B7BD8 800BABD8 2C00FFFF */  cmpwi     r0, -0x1
/* 0B7BDC 800BABDC 4082000C */  bne       lbl_800BABE8
/* 0B7BE0 800BABE0 3800FFFA */  li        r0, -0x6
/* 0B7BE4 800BABE4 901E0004 */  stw       r0, 0x4(r30)
lbl_800BABE8:
/* 0B7BE8 800BABE8 4BFE3689 */  bl        OSRestoreInterrupts
/* 0B7BEC 800BABEC 3860FFFA */  li        r3, -0x6
/* 0B7BF0 800BABF0 480000A0 */  b         lbl_800BAC90
lbl_800BABF4:
/* 0B7BF4 800BABF4 281D0000 */  cmplwi    r29, 0x0
/* 0B7BF8 800BABF8 41820018 */  beq       lbl_800BAC10
/* 0B7BFC 800BABFC 80810018 */  lwz       r4, 0x18(r1)
/* 0B7C00 800BAC00 A01E0006 */  lhz       r0, 0x6(r30)
/* 0B7C04 800BAC04 8084000C */  lwz       r4, 0xc(r4)
/* 0B7C08 800BAC08 7C0401D6 */  mullw     r0, r4, r0
/* 0B7C0C 800BAC0C 901D0000 */  stw       r0, 0x0(r29)
lbl_800BAC10:
/* 0B7C10 800BAC10 281F0000 */  cmplwi    r31, 0x0
/* 0B7C14 800BAC14 41820040 */  beq       lbl_800BAC54
/* 0B7C18 800BAC18 38000000 */  li        r0, 0x0
/* 0B7C1C 800BAC1C 901F0000 */  stw       r0, 0x0(r31)
/* 0B7C20 800BAC20 38A00000 */  li        r5, 0x0
/* 0B7C24 800BAC24 48000024 */  b         lbl_800BAC48
lbl_800BAC28:
/* 0B7C28 800BAC28 88030008 */  lbz       r0, 0x8(r3)
/* 0B7C2C 800BAC2C 280000FF */  cmplwi    r0, 0xff
/* 0B7C30 800BAC30 40820010 */  bne       lbl_800BAC40
/* 0B7C34 800BAC34 809F0000 */  lwz       r4, 0x0(r31)
/* 0B7C38 800BAC38 38040001 */  addi      r0, r4, 0x1
/* 0B7C3C 800BAC3C 901F0000 */  stw       r0, 0x0(r31)
lbl_800BAC40:
/* 0B7C40 800BAC40 38630040 */  addi      r3, r3, 0x40
/* 0B7C44 800BAC44 38A50001 */  addi      r5, r5, 0x1
lbl_800BAC48:
/* 0B7C48 800BAC48 54A0043E */  clrlwi    r0, r5, 16
/* 0B7C4C 800BAC4C 2800007F */  cmplwi    r0, 0x7f
/* 0B7C50 800BAC50 4180FFD8 */  blt       lbl_800BAC28
lbl_800BAC54:
/* 0B7C54 800BAC54 83C10018 */  lwz       r30, 0x18(r1)
/* 0B7C58 800BAC58 4BFE35F1 */  bl        OSDisableInterrupts
/* 0B7C5C 800BAC5C 801E0000 */  lwz       r0, 0x0(r30)
/* 0B7C60 800BAC60 2C000000 */  cmpwi     r0, 0x0
/* 0B7C64 800BAC64 41820010 */  beq       lbl_800BAC74
/* 0B7C68 800BAC68 38000000 */  li        r0, 0x0
/* 0B7C6C 800BAC6C 901E0004 */  stw       r0, 0x4(r30)
/* 0B7C70 800BAC70 48000018 */  b         lbl_800BAC88
lbl_800BAC74:
/* 0B7C74 800BAC74 801E0004 */  lwz       r0, 0x4(r30)
/* 0B7C78 800BAC78 2C00FFFF */  cmpwi     r0, -0x1
/* 0B7C7C 800BAC7C 4082000C */  bne       lbl_800BAC88
/* 0B7C80 800BAC80 38000000 */  li        r0, 0x0
/* 0B7C84 800BAC84 901E0004 */  stw       r0, 0x4(r30)
lbl_800BAC88:
/* 0B7C88 800BAC88 4BFE35E9 */  bl        OSRestoreInterrupts
/* 0B7C8C 800BAC8C 38600000 */  li        r3, 0x0
lbl_800BAC90:
/* 0B7C90 800BAC90 80010034 */  lwz       r0, 0x34(r1)
/* 0B7C94 800BAC94 83E1002C */  lwz       r31, 0x2c(r1)
/* 0B7C98 800BAC98 83C10028 */  lwz       r30, 0x28(r1)
/* 0B7C9C 800BAC9C 83A10024 */  lwz       r29, 0x24(r1)
/* 0B7CA0 800BACA0 38210030 */  addi      r1, r1, 0x30
/* 0B7CA4 800BACA4 7C0803A6 */  mtlr      r0
/* 0B7CA8 800BACA8 4E800020 */  blr

glabel __CARDSync
/* 0B7CAC 800BACAC 7C0802A6 */  mflr      r0
/* 0B7CB0 800BACB0 90010004 */  stw       r0, 0x4(r1)
/* 0B7CB4 800BACB4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B7CB8 800BACB8 93E1001C */  stw       r31, 0x1c(r1)
/* 0B7CBC 800BACBC 93C10018 */  stw       r30, 0x18(r1)
/* 0B7CC0 800BACC0 93A10014 */  stw       r29, 0x14(r1)
/* 0B7CC4 800BACC4 93810010 */  stw       r28, 0x10(r1)
/* 0B7CC8 800BACC8 3B830000 */  addi      r28, r3, 0x0
/* 0B7CCC 800BACCC 1C9C0110 */  mulli     r4, r28, 0x110
/* 0B7CD0 800BACD0 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7CD4 800BACD4 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B7CD8 800BACD8 7FE02214 */  add       r31, r0, r4
/* 0B7CDC 800BACDC 4BFE356D */  bl        OSDisableInterrupts
/* 0B7CE0 800BACE0 7C7D1B78 */  mr        r29, r3
/* 0B7CE4 800BACE4 4800000C */  b         lbl_800BACF0
lbl_800BACE8:
/* 0B7CE8 800BACE8 387F008C */  addi      r3, r31, 0x8c
/* 0B7CEC 800BACEC 4BFE6559 */  bl        OSSleepThread
lbl_800BACF0:
/* 0B7CF0 800BACF0 2C1C0000 */  cmpwi     r28, 0x0
/* 0B7CF4 800BACF4 4180000C */  blt       lbl_800BAD00
/* 0B7CF8 800BACF8 2C1C0002 */  cmpwi     r28, 0x2
/* 0B7CFC 800BACFC 4180000C */  blt       lbl_800BAD08
lbl_800BAD00:
/* 0B7D00 800BAD00 3800FF80 */  li        r0, -0x80
/* 0B7D04 800BAD04 48000008 */  b         lbl_800BAD0C
lbl_800BAD08:
/* 0B7D08 800BAD08 801F0004 */  lwz       r0, 0x4(r31)
lbl_800BAD0C:
/* 0B7D0C 800BAD0C 7C1E0378 */  mr        r30, r0
/* 0B7D10 800BAD10 2C1EFFFF */  cmpwi     r30, -0x1
/* 0B7D14 800BAD14 4182FFD4 */  beq       lbl_800BACE8
/* 0B7D18 800BAD18 7FA3EB78 */  mr        r3, r29
/* 0B7D1C 800BAD1C 4BFE3555 */  bl        OSRestoreInterrupts
/* 0B7D20 800BAD20 7FC3F378 */  mr        r3, r30
/* 0B7D24 800BAD24 80010024 */  lwz       r0, 0x24(r1)
/* 0B7D28 800BAD28 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B7D2C 800BAD2C 83C10018 */  lwz       r30, 0x18(r1)
/* 0B7D30 800BAD30 83A10014 */  lwz       r29, 0x14(r1)
/* 0B7D34 800BAD34 83810010 */  lwz       r28, 0x10(r1)
/* 0B7D38 800BAD38 38210020 */  addi      r1, r1, 0x20
/* 0B7D3C 800BAD3C 7C0803A6 */  mtlr      r0
/* 0B7D40 800BAD40 4E800020 */  blr

OnReset:
/* 0B7D44 800BAD44 7C0802A6 */  mflr      r0
/* 0B7D48 800BAD48 2C030000 */  cmpwi     r3, 0x0
/* 0B7D4C 800BAD4C 90010004 */  stw       r0, 0x4(r1)
/* 0B7D50 800BAD50 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B7D54 800BAD54 4082002C */  bne       lbl_800BAD80
/* 0B7D58 800BAD58 38600000 */  li        r3, 0x0
/* 0B7D5C 800BAD5C 48003515 */  bl        CARDUnmount
/* 0B7D60 800BAD60 2C03FFFF */  cmpwi     r3, -0x1
/* 0B7D64 800BAD64 41820014 */  beq       lbl_800BAD78
/* 0B7D68 800BAD68 38600001 */  li        r3, 0x1
/* 0B7D6C 800BAD6C 48003505 */  bl        CARDUnmount
/* 0B7D70 800BAD70 2C03FFFF */  cmpwi     r3, -0x1
/* 0B7D74 800BAD74 4082000C */  bne       lbl_800BAD80
lbl_800BAD78:
/* 0B7D78 800BAD78 38600000 */  li        r3, 0x0
/* 0B7D7C 800BAD7C 48000008 */  b         lbl_800BAD84
lbl_800BAD80:
/* 0B7D80 800BAD80 38600001 */  li        r3, 0x1
lbl_800BAD84:
/* 0B7D84 800BAD84 8001000C */  lwz       r0, 0xc(r1)
/* 0B7D88 800BAD88 38210008 */  addi      r1, r1, 0x8
/* 0B7D8C 800BAD8C 7C0803A6 */  mtlr      r0
/* 0B7D90 800BAD90 4E800020 */  blr

# 0x800F4B38 - 0x800F4BA0
.section .data, "wa"

.balign 8

glabel D_800F4B38
	.ascii "<< Dolphin SDK - CARD\trelease build: Sep  5 2002 05:35:20 (0x2301) >"

glabel gap_05_800F4B7C_data
.hidden gap_05_800F4B7C_data
	.long 0x3E000000

glabel D_800F4B80
	.long OnReset
	.long 0x0000007F
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000

# 0x80188A70 - 0x80188CC0
.section .bss, "wa"

glabel D_80188A70
	.skip 0x220

glabel D_80188C90
	.skip 0x30

# 0x8018B7D0 - 0x8018B7D8
.section .sdata, "wa"

glabel D_8018B7D0
	.long D_800F4B38
	.long 0x00000000

# 0x8018BDD0 - 0x8018BDE0
.section .sbss, "wa"

glabel D_8018BDD0
	.skip 0x10
