# mainloop.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C7C18 - 0x800C7D80

glabel TRKHandleRequestEvent
/* 0C4C18 800C7C18 7C0802A6 */  mflr      r0
/* 0C4C1C 800C7C1C 90010004 */  stw       r0, 0x4(r1)
/* 0C4C20 800C7C20 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C4C24 800C7C24 80630008 */  lwz       r3, 0x8(r3)
/* 0C4C28 800C7C28 4800068D */  bl        fn_800C82B4
/* 0C4C2C 800C7C2C 48000F95 */  bl        fn_800C8BC0
/* 0C4C30 800C7C30 38210008 */  addi      r1, r1, 0x8
/* 0C4C34 800C7C34 80010004 */  lwz       r0, 0x4(r1)
/* 0C4C38 800C7C38 7C0803A6 */  mtlr      r0
/* 0C4C3C 800C7C3C 4E800020 */  blr

glabel TRKHandleSupportEvent
/* 0C4C40 800C7C40 7C0802A6 */  mflr      r0
/* 0C4C44 800C7C44 90010004 */  stw       r0, 0x4(r1)
/* 0C4C48 800C7C48 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C4C4C 800C7C4C 48003951 */  bl        fn_800CB59C
/* 0C4C50 800C7C50 38210008 */  addi      r1, r1, 0x8
/* 0C4C54 800C7C54 80010004 */  lwz       r0, 0x4(r1)
/* 0C4C58 800C7C58 7C0803A6 */  mtlr      r0
/* 0C4C5C 800C7C5C 4E800020 */  blr

glabel TRKIdle
/* 0C4C60 800C7C60 7C0802A6 */  mflr      r0
/* 0C4C64 800C7C64 90010004 */  stw       r0, 0x4(r1)
/* 0C4C68 800C7C68 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C4C6C 800C7C6C 48003A5D */  bl        fn_800CB6C8
/* 0C4C70 800C7C70 2C030000 */  cmpwi     r3, 0x0
/* 0C4C74 800C7C74 40820008 */  bne       lbl_800C7C7C
/* 0C4C78 800C7C78 480046C5 */  bl        fn_800CC33C
lbl_800C7C7C:
/* 0C4C7C 800C7C7C 38210008 */  addi      r1, r1, 0x8
/* 0C4C80 800C7C80 80010004 */  lwz       r0, 0x4(r1)
/* 0C4C84 800C7C84 7C0803A6 */  mtlr      r0
/* 0C4C88 800C7C88 4E800020 */  blr

glabel TRKNubMainLoop
/* 0C4C8C 800C7C8C 7C0802A6 */  mflr      r0
/* 0C4C90 800C7C90 3C608019 */  lis       r3, gTRKInputPendingPtr@ha
/* 0C4C94 800C7C94 90010004 */  stw       r0, 0x4(r1)
/* 0C4C98 800C7C98 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0C4C9C 800C7C9C 93E1001C */  stw       r31, 0x1c(r1)
/* 0C4CA0 800C7CA0 3BE3A7E4 */  addi      r31, r3, gTRKInputPendingPtr@l
/* 0C4CA4 800C7CA4 93C10018 */  stw       r30, 0x18(r1)
/* 0C4CA8 800C7CA8 3BC00000 */  li        r30, 0x0
/* 0C4CAC 800C7CAC 93A10014 */  stw       r29, 0x14(r1)
/* 0C4CB0 800C7CB0 3BA00000 */  li        r29, 0x0
/* 0C4CB4 800C7CB4 480000A8 */  b         lbl_800C7D5C
lbl_800C7CB8:
/* 0C4CB8 800C7CB8 38610008 */  addi      r3, r1, 0x8
/* 0C4CBC 800C7CBC 48000145 */  bl        TRKGetNextEvent
/* 0C4CC0 800C7CC0 2C030000 */  cmpwi     r3, 0x0
/* 0C4CC4 800C7CC4 4182006C */  beq       lbl_800C7D30
/* 0C4CC8 800C7CC8 88010008 */  lbz       r0, 0x8(r1)
/* 0C4CCC 800C7CCC 3BA00000 */  li        r29, 0x0
/* 0C4CD0 800C7CD0 2C000002 */  cmpwi     r0, 0x2
/* 0C4CD4 800C7CD4 41820028 */  beq       lbl_800C7CFC
/* 0C4CD8 800C7CD8 40800014 */  bge       lbl_800C7CEC
/* 0C4CDC 800C7CDC 2C000000 */  cmpwi     r0, 0x0
/* 0C4CE0 800C7CE0 41820044 */  beq       lbl_800C7D24
/* 0C4CE4 800C7CE4 40800024 */  bge       lbl_800C7D08
/* 0C4CE8 800C7CE8 4800003C */  b         lbl_800C7D24
lbl_800C7CEC:
/* 0C4CEC 800C7CEC 2C000005 */  cmpwi     r0, 0x5
/* 0C4CF0 800C7CF0 4182002C */  beq       lbl_800C7D1C
/* 0C4CF4 800C7CF4 40800030 */  bge       lbl_800C7D24
/* 0C4CF8 800C7CF8 48000018 */  b         lbl_800C7D10
lbl_800C7CFC:
/* 0C4CFC 800C7CFC 38610008 */  addi      r3, r1, 0x8
/* 0C4D00 800C7D00 4BFFFF19 */  bl        TRKHandleRequestEvent
/* 0C4D04 800C7D04 48000020 */  b         lbl_800C7D24
lbl_800C7D08:
/* 0C4D08 800C7D08 3BC00001 */  li        r30, 0x1
/* 0C4D0C 800C7D0C 48000018 */  b         lbl_800C7D24
lbl_800C7D10:
/* 0C4D10 800C7D10 38610008 */  addi      r3, r1, 0x8
/* 0C4D14 800C7D14 480034D9 */  bl        TRKTargetInterrupt
/* 0C4D18 800C7D18 4800000C */  b         lbl_800C7D24
lbl_800C7D1C:
/* 0C4D1C 800C7D1C 38610008 */  addi      r3, r1, 0x8
/* 0C4D20 800C7D20 4BFFFF21 */  bl        TRKHandleSupportEvent
lbl_800C7D24:
/* 0C4D24 800C7D24 38610008 */  addi      r3, r1, 0x8
/* 0C4D28 800C7D28 48000291 */  bl        TRKDestructEvent
/* 0C4D2C 800C7D2C 48000030 */  b         lbl_800C7D5C
lbl_800C7D30:
/* 0C4D30 800C7D30 2C1D0000 */  cmpwi     r29, 0x0
/* 0C4D34 800C7D34 41820014 */  beq       lbl_800C7D48
/* 0C4D38 800C7D38 807F0000 */  lwz       r3, 0x0(r31)
/* 0C4D3C 800C7D3C 88030000 */  lbz       r0, 0x0(r3)
/* 0C4D40 800C7D40 28000000 */  cmplwi    r0, 0x0
/* 0C4D44 800C7D44 41820010 */  beq       lbl_800C7D54
lbl_800C7D48:
/* 0C4D48 800C7D48 3BA00001 */  li        r29, 0x1
/* 0C4D4C 800C7D4C 48000D65 */  bl        TRKGetInput
/* 0C4D50 800C7D50 4800000C */  b         lbl_800C7D5C
lbl_800C7D54:
/* 0C4D54 800C7D54 4BFFFF0D */  bl        TRKIdle
/* 0C4D58 800C7D58 3BA00000 */  li        r29, 0x0
lbl_800C7D5C:
/* 0C4D5C 800C7D5C 2C1E0000 */  cmpwi     r30, 0x0
/* 0C4D60 800C7D60 4182FF58 */  beq       lbl_800C7CB8
/* 0C4D64 800C7D64 83E1001C */  lwz       r31, 0x1c(r1)
/* 0C4D68 800C7D68 83C10018 */  lwz       r30, 0x18(r1)
/* 0C4D6C 800C7D6C 83A10014 */  lwz       r29, 0x14(r1)
/* 0C4D70 800C7D70 38210020 */  addi      r1, r1, 0x20
/* 0C4D74 800C7D74 80010004 */  lwz       r0, 0x4(r1)
/* 0C4D78 800C7D78 7C0803A6 */  mtlr      r0
/* 0C4D7C 800C7D7C 4E800020 */  blr
