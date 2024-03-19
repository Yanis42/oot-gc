# nubinit.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C7FDC - 0x800C8170

glabel TRKInitializeNub
/* 0C4FDC 800C7FDC 7C0802A6 */  mflr      r0
/* 0C4FE0 800C7FE0 90010004 */  stw       r0, 0x4(r1)
/* 0C4FE4 800C7FE4 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C4FE8 800C7FE8 93E1000C */  stw       r31, 0xc(r1)
/* 0C4FEC 800C7FEC 93C10008 */  stw       r30, 0x8(r1)
/* 0C4FF0 800C7FF0 4800010D */  bl        TRKInitializeEndian
/* 0C4FF4 800C7FF4 7C7E1B79 */  mr.       r30, r3
/* 0C4FF8 800C7FF8 40820008 */  bne       lbl_800C8000
/* 0C4FFC 800C7FFC 48000BAD */  bl        usr_put_initialize
lbl_800C8000:
/* 0C5000 800C8000 2C1E0000 */  cmpwi     r30, 0x0
/* 0C5004 800C8004 4082000C */  bne       lbl_800C8010
/* 0C5008 800C8008 4BFFFD79 */  bl        TRKInitializeEventQueue
/* 0C500C 800C800C 7C7E1B78 */  mr        r30, r3
lbl_800C8010:
/* 0C5010 800C8010 2C1E0000 */  cmpwi     r30, 0x0
/* 0C5014 800C8014 4082000C */  bne       lbl_800C8020
/* 0C5018 800C8018 48000189 */  bl        TRKInitializeMessageBuffers
/* 0C501C 800C801C 7C7E1B78 */  mr        r30, r3
lbl_800C8020:
/* 0C5020 800C8020 2C1E0000 */  cmpwi     r30, 0x0
/* 0C5024 800C8024 4082000C */  bne       lbl_800C8030
/* 0C5028 800C8028 48000B85 */  bl        TRKInitializeDispatcher
/* 0C502C 800C802C 7C7E1B78 */  mr        r30, r3
lbl_800C8030:
/* 0C5030 800C8030 2C1E0000 */  cmpwi     r30, 0x0
/* 0C5034 800C8034 40820040 */  bne       lbl_800C8074
/* 0C5038 800C8038 3C608019 */  lis       r3, gTRKInputPendingPtr@ha
/* 0C503C 800C803C 3BE3A7E4 */  addi      r31, r3, gTRKInputPendingPtr@l
/* 0C5040 800C8040 3C600001 */  lis       r3, 0x1
/* 0C5044 800C8044 38DF0000 */  addi      r6, r31, 0x0
/* 0C5048 800C8048 3863E100 */  subi      r3, r3, 0x1f00
/* 0C504C 800C804C 38800001 */  li        r4, 0x1
/* 0C5050 800C8050 38A00000 */  li        r5, 0x0
/* 0C5054 800C8054 4800413D */  bl        TRKInitializeIntDrivenUART
/* 0C5058 800C8058 7C601B78 */  mr        r0, r3
/* 0C505C 800C805C 807F0000 */  lwz       r3, 0x0(r31)
/* 0C5060 800C8060 7C1F0378 */  mr        r31, r0
/* 0C5064 800C8064 480039BD */  bl        TRKTargetSetInputPendingPtr
/* 0C5068 800C8068 2C1F0000 */  cmpwi     r31, 0x0
/* 0C506C 800C806C 41820008 */  beq       lbl_800C8074
/* 0C5070 800C8070 7FFEFB78 */  mr        r30, r31
lbl_800C8074:
/* 0C5074 800C8074 2C1E0000 */  cmpwi     r30, 0x0
/* 0C5078 800C8078 4082000C */  bne       lbl_800C8084
/* 0C507C 800C807C 48000B01 */  bl        TRKInitializeSerialHandler
/* 0C5080 800C8080 7C7E1B78 */  mr        r30, r3
lbl_800C8084:
/* 0C5084 800C8084 2C1E0000 */  cmpwi     r30, 0x0
/* 0C5088 800C8088 4082000C */  bne       lbl_800C8094
/* 0C508C 800C808C 48003B59 */  bl        TRKInitializeTarget
/* 0C5090 800C8090 7C7E1B78 */  mr        r30, r3
lbl_800C8094:
/* 0C5094 800C8094 7FC3F378 */  mr        r3, r30
/* 0C5098 800C8098 83E1000C */  lwz       r31, 0xc(r1)
/* 0C509C 800C809C 83C10008 */  lwz       r30, 0x8(r1)
/* 0C50A0 800C80A0 38210010 */  addi      r1, r1, 0x10
/* 0C50A4 800C80A4 80010004 */  lwz       r0, 0x4(r1)
/* 0C50A8 800C80A8 7C0803A6 */  mtlr      r0
/* 0C50AC 800C80AC 4E800020 */  blr

glabel TRKTerminateNub
/* 0C50B0 800C80B0 7C0802A6 */  mflr      r0
/* 0C50B4 800C80B4 90010004 */  stw       r0, 0x4(r1)
/* 0C50B8 800C80B8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C50BC 800C80BC 48000AE5 */  bl        fn_800C8BA0
/* 0C50C0 800C80C0 38600000 */  li        r3, 0x0
/* 0C50C4 800C80C4 38210008 */  addi      r1, r1, 0x8
/* 0C50C8 800C80C8 80010004 */  lwz       r0, 0x4(r1)
/* 0C50CC 800C80CC 7C0803A6 */  mtlr      r0
/* 0C50D0 800C80D0 4E800020 */  blr

glabel TRKNubWelcome
/* 0C50D4 800C80D4 7C0802A6 */  mflr      r0
/* 0C50D8 800C80D8 3C60800D */  lis       r3, "@40"@ha
/* 0C50DC 800C80DC 90010004 */  stw       r0, 0x4(r1)
/* 0C50E0 800C80E0 38631E80 */  addi      r3, r3, "@40"@l
/* 0C50E4 800C80E4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C50E8 800C80E8 48004231 */  bl        TRK_board_display
/* 0C50EC 800C80EC 38210008 */  addi      r1, r1, 0x8
/* 0C50F0 800C80F0 80010004 */  lwz       r0, 0x4(r1)
/* 0C50F4 800C80F4 7C0803A6 */  mtlr      r0
/* 0C50F8 800C80F8 4E800020 */  blr

glabel TRKInitializeEndian
/* 0C50FC 800C80FC 3C608019 */  lis       r3, D_80188E18@ha
/* 0C5100 800C8100 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C5104 800C8104 38A38E18 */  addi      r5, r3, D_80188E18@l
/* 0C5108 800C8108 38C00001 */  li        r6, 0x1
/* 0C510C 800C810C 90C50000 */  stw       r6, 0x0(r5)
/* 0C5110 800C8110 38000012 */  li        r0, 0x12
/* 0C5114 800C8114 38600034 */  li        r3, 0x34
/* 0C5118 800C8118 98010008 */  stb       r0, 0x8(r1)
/* 0C511C 800C811C 38800056 */  li        r4, 0x56
/* 0C5120 800C8120 38000078 */  li        r0, 0x78
/* 0C5124 800C8124 98610009 */  stb       r3, 0x9(r1)
/* 0C5128 800C8128 38600000 */  li        r3, 0x0
/* 0C512C 800C812C 9881000A */  stb       r4, 0xa(r1)
/* 0C5130 800C8130 9801000B */  stb       r0, 0xb(r1)
/* 0C5134 800C8134 80810008 */  lwz       r4, 0x8(r1)
/* 0C5138 800C8138 3C04EDCC */  subis     r0, r4, 0x1234
/* 0C513C 800C813C 28005678 */  cmplwi    r0, 0x5678
/* 0C5140 800C8140 4082000C */  bne       lbl_800C814C
/* 0C5144 800C8144 90C50000 */  stw       r6, 0x0(r5)
/* 0C5148 800C8148 48000020 */  b         lbl_800C8168
lbl_800C814C:
/* 0C514C 800C814C 3C0487AA */  subis     r0, r4, 0x7856
/* 0C5150 800C8150 28003412 */  cmplwi    r0, 0x3412
/* 0C5154 800C8154 40820010 */  bne       lbl_800C8164
/* 0C5158 800C8158 38000000 */  li        r0, 0x0
/* 0C515C 800C815C 90050000 */  stw       r0, 0x0(r5)
/* 0C5160 800C8160 48000008 */  b         lbl_800C8168
lbl_800C8164:
/* 0C5164 800C8164 38600001 */  li        r3, 0x1
lbl_800C8168:
/* 0C5168 800C8168 38210010 */  addi      r1, r1, 0x10
/* 0C516C 800C816C 4E800020 */  blr

# 0x800D1E80 - 0x800D1EA0
.section .rodata, "a"

.balign 8

"@40":
	.string "MetroTRK for Dolphin v0.5"

glabel gap_04_800D1E9A_rodata
.hidden gap_04_800D1E9A_rodata
	.long 0x00000000
	.2byte 0x0000

# 0x80188E18 - 0x80188E1C
.section .bss, "wa"

glabel D_80188E18
	.skip 0x4
