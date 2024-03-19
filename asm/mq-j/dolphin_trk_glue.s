# dolphin_trk_glue.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CBFE4 - 0x800CC33C

glabel TRKLoadContext
/* 0C8FE4 800CBFE4 80030000 */  lwz       r0, 0x0(r3)
/* 0C8FE8 800CBFE8 80230004 */  lwz       r1, 0x4(r3)
/* 0C8FEC 800CBFEC 80430008 */  lwz       r2, 0x8(r3)
/* 0C8FF0 800CBFF0 A0A301A2 */  lhz       r5, 0x1a2(r3)
/* 0C8FF4 800CBFF4 54A607BD */  rlwinm.   r6, r5, 0, 30, 30
/* 0C8FF8 800CBFF8 41820014 */  beq       lbl_800CC00C
/* 0C8FFC 800CBFFC 54A507FA */  rlwinm    r5, r5, 0, 31, 29
/* 0C9000 800CC000 B0A301A2 */  sth       r5, 0x1a2(r3)
/* 0C9004 800CC004 B8A30014 */  lmw       r5, 0x14(r3)
/* 0C9008 800CC008 48000008 */  b         lbl_800CC010
lbl_800CC00C:
/* 0C900C 800CC00C B9A30034 */  lmw       r13, 0x34(r3)
lbl_800CC010:
/* 0C9010 800CC010 7C7F1B78 */  mr        r31, r3
/* 0C9014 800CC014 7C832378 */  mr        r3, r4
/* 0C9018 800CC018 809F0080 */  lwz       r4, 0x80(r31)
/* 0C901C 800CC01C 7C8FF120 */  mtcrf     255, r4
/* 0C9020 800CC020 809F0084 */  lwz       r4, 0x84(r31)
/* 0C9024 800CC024 7C8803A6 */  mtlr      r4
/* 0C9028 800CC028 809F0088 */  lwz       r4, 0x88(r31)
/* 0C902C 800CC02C 7C8903A6 */  mtctr     r4
/* 0C9030 800CC030 809F008C */  lwz       r4, 0x8c(r31)
/* 0C9034 800CC034 7C8103A6 */  mtxer     r4
/* 0C9038 800CC038 7C8000A6 */  mfmsr     r4
/* 0C903C 800CC03C 5484045E */  rlwinm    r4, r4, 0, 17, 15
/* 0C9040 800CC040 548407FA */  rlwinm    r4, r4, 0, 31, 29
/* 0C9044 800CC044 7C800124 */  mtmsr     r4
/* 0C9048 800CC048 7C5143A6 */  mtsprg    1, r2
/* 0C904C 800CC04C 809F000C */  lwz       r4, 0xc(r31)
/* 0C9050 800CC050 7C9243A6 */  mtsprg    2, r4
/* 0C9054 800CC054 809F0010 */  lwz       r4, 0x10(r31)
/* 0C9058 800CC058 7C9343A6 */  mtsprg    3, r4
/* 0C905C 800CC05C 805F0198 */  lwz       r2, 0x198(r31)
/* 0C9060 800CC060 809F019C */  lwz       r4, 0x19c(r31)
/* 0C9064 800CC064 83FF007C */  lwz       r31, 0x7c(r31)
/* 0C9068 800CC068 4BFFED8C */  b         TRKInterruptHandler

glabel TRKEXICallBack
/* 0C906C 800CC06C 7C0802A6 */  mflr      r0
/* 0C9070 800CC070 90010004 */  stw       r0, 0x4(r1)
/* 0C9074 800CC074 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C9078 800CC078 93E1000C */  stw       r31, 0xc(r1)
/* 0C907C 800CC07C 7C9F2378 */  mr        r31, r4
/* 0C9080 800CC080 4BFD4449 */  bl        OSEnableScheduler
/* 0C9084 800CC084 7FE3FB78 */  mr        r3, r31
/* 0C9088 800CC088 38800500 */  li        r4, 0x500
/* 0C908C 800CC08C 4BFFFF59 */  bl        TRKLoadContext
/* 0C9090 800CC090 83E1000C */  lwz       r31, 0xc(r1)
/* 0C9094 800CC094 38210010 */  addi      r1, r1, 0x10
/* 0C9098 800CC098 80010004 */  lwz       r0, 0x4(r1)
/* 0C909C 800CC09C 7C0803A6 */  mtlr      r0
/* 0C90A0 800CC0A0 4E800020 */  blr

glabel InitMetroTRKCommTable
/* 0C90A4 800CC0A4 7C0802A6 */  mflr      r0
/* 0C90A8 800CC0A8 90010004 */  stw       r0, 0x4(r1)
/* 0C90AC 800CC0AC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C90B0 800CC0B0 2C030001 */  cmpwi     r3, 0x1
/* 0C90B4 800CC0B4 40820068 */  bne       lbl_800CC11C
/* 0C90B8 800CC0B8 48005AA5 */  bl        Hu_IsStub
/* 0C90BC 800CC0BC 3CA0800D */  lis       r5, DBInitComm@ha
/* 0C90C0 800CC0C0 3C80800F */  lis       r4, gDBCommTable@ha
/* 0C90C4 800CC0C4 380514C0 */  addi      r0, r5, DBInitComm@l
/* 0C90C8 800CC0C8 38A44E78 */  addi      r5, r4, gDBCommTable@l
/* 0C90CC 800CC0CC 3C80800D */  lis       r4, DBInitInterrupts@ha
/* 0C90D0 800CC0D0 90050000 */  stw       r0, 0x0(r5)
/* 0C90D4 800CC0D4 3804146C */  addi      r0, r4, DBInitInterrupts@l
/* 0C90D8 800CC0D8 3C80800D */  lis       r4, DBQueryData@ha
/* 0C90DC 800CC0DC 90050004 */  stw       r0, 0x4(r5)
/* 0C90E0 800CC0E0 380413D0 */  addi      r0, r4, DBQueryData@l
/* 0C90E4 800CC0E4 3C80800D */  lis       r4, DBRead@ha
/* 0C90E8 800CC0E8 90050008 */  stw       r0, 0x8(r5)
/* 0C90EC 800CC0EC 38041344 */  addi      r0, r4, DBRead@l
/* 0C90F0 800CC0F0 3C80800D */  lis       r4, DBWrite@ha
/* 0C90F4 800CC0F4 9005000C */  stw       r0, 0xc(r5)
/* 0C90F8 800CC0F8 380410E4 */  addi      r0, r4, DBWrite@l
/* 0C90FC 800CC0FC 3C80800D */  lis       r4, DBOpen@ha
/* 0C9100 800CC100 90050010 */  stw       r0, 0x10(r5)
/* 0C9104 800CC104 380410E0 */  addi      r0, r4, DBOpen@l
/* 0C9108 800CC108 3C80800D */  lis       r4, DBClose@ha
/* 0C910C 800CC10C 90050014 */  stw       r0, 0x14(r5)
/* 0C9110 800CC110 380410DC */  addi      r0, r4, DBClose@l
/* 0C9114 800CC114 90050018 */  stw       r0, 0x18(r5)
/* 0C9118 800CC118 48000064 */  b         lbl_800CC17C
lbl_800CC11C:
/* 0C911C 800CC11C 48004FB9 */  bl        AMC_IsStub
/* 0C9120 800CC120 3CA0800D */  lis       r5, EXI2_Init@ha
/* 0C9124 800CC124 3C80800F */  lis       r4, gDBCommTable@ha
/* 0C9128 800CC128 380510AC */  addi      r0, r5, EXI2_Init@l
/* 0C912C 800CC12C 38A44E78 */  addi      r5, r4, gDBCommTable@l
/* 0C9130 800CC130 3C80800D */  lis       r4, EXI2_EnableInterrupts@ha
/* 0C9134 800CC134 90050000 */  stw       r0, 0x0(r5)
/* 0C9138 800CC138 380410B0 */  addi      r0, r4, EXI2_EnableInterrupts@l
/* 0C913C 800CC13C 3C80800D */  lis       r4, EXI2_Poll@ha
/* 0C9140 800CC140 90050004 */  stw       r0, 0x4(r5)
/* 0C9144 800CC144 380410B4 */  addi      r0, r4, EXI2_Poll@l
/* 0C9148 800CC148 3C80800D */  lis       r4, EXI2_ReadN@ha
/* 0C914C 800CC14C 90050008 */  stw       r0, 0x8(r5)
/* 0C9150 800CC150 380410BC */  addi      r0, r4, EXI2_ReadN@l
/* 0C9154 800CC154 3C80800D */  lis       r4, EXI2_WriteN@ha
/* 0C9158 800CC158 9005000C */  stw       r0, 0xc(r5)
/* 0C915C 800CC15C 380410C4 */  addi      r0, r4, EXI2_WriteN@l
/* 0C9160 800CC160 3C80800D */  lis       r4, EXI2_Reserve@ha
/* 0C9164 800CC164 90050010 */  stw       r0, 0x10(r5)
/* 0C9168 800CC168 380410CC */  addi      r0, r4, EXI2_Reserve@l
/* 0C916C 800CC16C 3C80800D */  lis       r4, EXI2_Unreserve@ha
/* 0C9170 800CC170 90050014 */  stw       r0, 0x14(r5)
/* 0C9174 800CC174 380410D0 */  addi      r0, r4, EXI2_Unreserve@l
/* 0C9178 800CC178 90050018 */  stw       r0, 0x18(r5)
lbl_800CC17C:
/* 0C917C 800CC17C 38210008 */  addi      r1, r1, 0x8
/* 0C9180 800CC180 80010004 */  lwz       r0, 0x4(r1)
/* 0C9184 800CC184 7C0803A6 */  mtlr      r0
/* 0C9188 800CC188 4E800020 */  blr

glabel TRKUARTInterruptHandler
/* 0C918C 800CC18C 4E800020 */  blr

glabel TRKInitializeIntDrivenUART
/* 0C9190 800CC190 7C0802A6 */  mflr      r0
/* 0C9194 800CC194 90010004 */  stw       r0, 0x4(r1)
/* 0C9198 800CC198 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C919C 800CC19C 3C60800F */  lis       r3, gDBCommTable@ha
/* 0C91A0 800CC1A0 38634E78 */  addi      r3, r3, gDBCommTable@l
/* 0C91A4 800CC1A4 3C80800D */  lis       r4, TRKEXICallBack@ha
/* 0C91A8 800CC1A8 81830000 */  lwz       r12, 0x0(r3)
/* 0C91AC 800CC1AC 3884C06C */  addi      r4, r4, TRKEXICallBack@l
/* 0C91B0 800CC1B0 7CC33378 */  mr        r3, r6
/* 0C91B4 800CC1B4 7D8803A6 */  mtlr      r12
/* 0C91B8 800CC1B8 4E800021 */  blrl
/* 0C91BC 800CC1BC 38600000 */  li        r3, 0x0
/* 0C91C0 800CC1C0 38210008 */  addi      r1, r1, 0x8
/* 0C91C4 800CC1C4 80010004 */  lwz       r0, 0x4(r1)
/* 0C91C8 800CC1C8 7C0803A6 */  mtlr      r0
/* 0C91CC 800CC1CC 4E800020 */  blr

glabel EnableEXI2Interrupts
/* 0C91D0 800CC1D0 7C0802A6 */  mflr      r0
/* 0C91D4 800CC1D4 90010004 */  stw       r0, 0x4(r1)
/* 0C91D8 800CC1D8 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C91DC 800CC1DC 3C60800F */  lis       r3, gDBCommTable@ha
/* 0C91E0 800CC1E0 38634E78 */  addi      r3, r3, gDBCommTable@l
/* 0C91E4 800CC1E4 81830004 */  lwz       r12, 0x4(r3)
/* 0C91E8 800CC1E8 7D8803A6 */  mtlr      r12
/* 0C91EC 800CC1EC 4E800021 */  blrl
/* 0C91F0 800CC1F0 38210008 */  addi      r1, r1, 0x8
/* 0C91F4 800CC1F4 80010004 */  lwz       r0, 0x4(r1)
/* 0C91F8 800CC1F8 7C0803A6 */  mtlr      r0
/* 0C91FC 800CC1FC 4E800020 */  blr

glabel fn_800CC200
/* 0C9200 800CC200 7C0802A6 */  mflr      r0
/* 0C9204 800CC204 90010004 */  stw       r0, 0x4(r1)
/* 0C9208 800CC208 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C920C 800CC20C 3C60800F */  lis       r3, gDBCommTable@ha
/* 0C9210 800CC210 38634E78 */  addi      r3, r3, gDBCommTable@l
/* 0C9214 800CC214 81830008 */  lwz       r12, 0x8(r3)
/* 0C9218 800CC218 7D8803A6 */  mtlr      r12
/* 0C921C 800CC21C 4E800021 */  blrl
/* 0C9220 800CC220 38210008 */  addi      r1, r1, 0x8
/* 0C9224 800CC224 80010004 */  lwz       r0, 0x4(r1)
/* 0C9228 800CC228 7C0803A6 */  mtlr      r0
/* 0C922C 800CC22C 4E800020 */  blr

glabel fn_800CC230
/* 0C9230 800CC230 7C0802A6 */  mflr      r0
/* 0C9234 800CC234 90010004 */  stw       r0, 0x4(r1)
/* 0C9238 800CC238 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C923C 800CC23C 3CA0800F */  lis       r5, gDBCommTable@ha
/* 0C9240 800CC240 38A54E78 */  addi      r5, r5, gDBCommTable@l
/* 0C9244 800CC244 8185000C */  lwz       r12, 0xc(r5)
/* 0C9248 800CC248 7D8803A6 */  mtlr      r12
/* 0C924C 800CC24C 4E800021 */  blrl
/* 0C9250 800CC250 2C030000 */  cmpwi     r3, 0x0
/* 0C9254 800CC254 4082000C */  bne       lbl_800CC260
/* 0C9258 800CC258 38600000 */  li        r3, 0x0
/* 0C925C 800CC25C 48000008 */  b         lbl_800CC264
lbl_800CC260:
/* 0C9260 800CC260 3860FFFF */  li        r3, -0x1
lbl_800CC264:
/* 0C9264 800CC264 38210008 */  addi      r1, r1, 0x8
/* 0C9268 800CC268 80010004 */  lwz       r0, 0x4(r1)
/* 0C926C 800CC26C 7C0803A6 */  mtlr      r0
/* 0C9270 800CC270 4E800020 */  blr

glabel fn_800CC274
/* 0C9274 800CC274 7C0802A6 */  mflr      r0
/* 0C9278 800CC278 90010004 */  stw       r0, 0x4(r1)
/* 0C927C 800CC27C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C9280 800CC280 3CA0800F */  lis       r5, gDBCommTable@ha
/* 0C9284 800CC284 38A54E78 */  addi      r5, r5, gDBCommTable@l
/* 0C9288 800CC288 81850010 */  lwz       r12, 0x10(r5)
/* 0C928C 800CC28C 7D8803A6 */  mtlr      r12
/* 0C9290 800CC290 4E800021 */  blrl
/* 0C9294 800CC294 2C030000 */  cmpwi     r3, 0x0
/* 0C9298 800CC298 4082000C */  bne       lbl_800CC2A4
/* 0C929C 800CC29C 38600000 */  li        r3, 0x0
/* 0C92A0 800CC2A0 48000008 */  b         lbl_800CC2A8
lbl_800CC2A4:
/* 0C92A4 800CC2A4 3860FFFF */  li        r3, -0x1
lbl_800CC2A8:
/* 0C92A8 800CC2A8 38210008 */  addi      r1, r1, 0x8
/* 0C92AC 800CC2AC 80010004 */  lwz       r0, 0x4(r1)
/* 0C92B0 800CC2B0 7C0803A6 */  mtlr      r0
/* 0C92B4 800CC2B4 4E800020 */  blr

glabel ReserveEXI2Port
/* 0C92B8 800CC2B8 7C0802A6 */  mflr      r0
/* 0C92BC 800CC2BC 90010004 */  stw       r0, 0x4(r1)
/* 0C92C0 800CC2C0 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C92C4 800CC2C4 3C60800F */  lis       r3, gDBCommTable@ha
/* 0C92C8 800CC2C8 38634E78 */  addi      r3, r3, gDBCommTable@l
/* 0C92CC 800CC2CC 81830014 */  lwz       r12, 0x14(r3)
/* 0C92D0 800CC2D0 7D8803A6 */  mtlr      r12
/* 0C92D4 800CC2D4 4E800021 */  blrl
/* 0C92D8 800CC2D8 38210008 */  addi      r1, r1, 0x8
/* 0C92DC 800CC2DC 80010004 */  lwz       r0, 0x4(r1)
/* 0C92E0 800CC2E0 7C0803A6 */  mtlr      r0
/* 0C92E4 800CC2E4 4E800020 */  blr

glabel UnreserveEXI2Port
/* 0C92E8 800CC2E8 7C0802A6 */  mflr      r0
/* 0C92EC 800CC2EC 90010004 */  stw       r0, 0x4(r1)
/* 0C92F0 800CC2F0 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C92F4 800CC2F4 3C60800F */  lis       r3, gDBCommTable@ha
/* 0C92F8 800CC2F8 38634E78 */  addi      r3, r3, gDBCommTable@l
/* 0C92FC 800CC2FC 81830018 */  lwz       r12, 0x18(r3)
/* 0C9300 800CC300 7D8803A6 */  mtlr      r12
/* 0C9304 800CC304 4E800021 */  blrl
/* 0C9308 800CC308 38210008 */  addi      r1, r1, 0x8
/* 0C930C 800CC30C 80010004 */  lwz       r0, 0x4(r1)
/* 0C9310 800CC310 7C0803A6 */  mtlr      r0
/* 0C9314 800CC314 4E800020 */  blr

glabel TRK_board_display
/* 0C9318 800CC318 7C0802A6 */  mflr      r0
/* 0C931C 800CC31C 90010004 */  stw       r0, 0x4(r1)
/* 0C9320 800CC320 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0C9324 800CC324 4CC63182 */  crclr     cr1eq
/* 0C9328 800CC328 4BFD181D */  bl        OSReport
/* 0C932C 800CC32C 38210008 */  addi      r1, r1, 0x8
/* 0C9330 800CC330 80010004 */  lwz       r0, 0x4(r1)
/* 0C9334 800CC334 7C0803A6 */  mtlr      r0
/* 0C9338 800CC338 4E800020 */  blr

# 0x800F4E78 - 0x800F4E94
.section .data, "wa"

.balign 8

glabel gDBCommTable
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
