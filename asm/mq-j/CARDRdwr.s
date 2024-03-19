# CARDRdwr.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BBFF4 - 0x800BC28C

glabel BlockReadCallback
/* 0B8FF4 800BBFF4 7C0802A6 */  mflr      r0
/* 0B8FF8 800BBFF8 90010004 */  stw       r0, 0x4(r1)
/* 0B8FFC 800BBFFC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B9000 800BC000 93E1001C */  stw       r31, 0x1c(r1)
/* 0B9004 800BC004 3BE30000 */  addi      r31, r3, 0x0
/* 0B9008 800BC008 3C608019 */  lis       r3, D_80188A70@ha
/* 0B900C 800BC00C 93C10018 */  stw       r30, 0x18(r1)
/* 0B9010 800BC010 1CBF0110 */  mulli     r5, r31, 0x110
/* 0B9014 800BC014 93A10014 */  stw       r29, 0x14(r1)
/* 0B9018 800BC018 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B901C 800BC01C 7C9D2379 */  mr.       r29, r4
/* 0B9020 800BC020 7FC02A14 */  add       r30, r0, r5
/* 0B9024 800BC024 41800050 */  blt       lbl_800BC074
/* 0B9028 800BC028 807E00B8 */  lwz       r3, 0xb8(r30)
/* 0B902C 800BC02C 38030200 */  addi      r0, r3, 0x200
/* 0B9030 800BC030 901E00B8 */  stw       r0, 0xb8(r30)
/* 0B9034 800BC034 807E00B0 */  lwz       r3, 0xb0(r30)
/* 0B9038 800BC038 38030200 */  addi      r0, r3, 0x200
/* 0B903C 800BC03C 901E00B0 */  stw       r0, 0xb0(r30)
/* 0B9040 800BC040 807E00B4 */  lwz       r3, 0xb4(r30)
/* 0B9044 800BC044 38030200 */  addi      r0, r3, 0x200
/* 0B9048 800BC048 901E00B4 */  stw       r0, 0xb4(r30)
/* 0B904C 800BC04C 807E00AC */  lwz       r3, 0xac(r30)
/* 0B9050 800BC050 3403FFFF */  subic.    r0, r3, 0x1
/* 0B9054 800BC054 901E00AC */  stw       r0, 0xac(r30)
/* 0B9058 800BC058 4081001C */  ble       lbl_800BC074
/* 0B905C 800BC05C 3C60800C */  lis       r3, BlockReadCallback@ha
/* 0B9060 800BC060 3883BFF4 */  addi      r4, r3, BlockReadCallback@l
/* 0B9064 800BC064 387F0000 */  addi      r3, r31, 0x0
/* 0B9068 800BC068 4BFFE58D */  bl        __CARDReadSegment
/* 0B906C 800BC06C 7C7D1B79 */  mr.       r29, r3
/* 0B9070 800BC070 40800044 */  bge       lbl_800BC0B4
lbl_800BC074:
/* 0B9074 800BC074 801E00D0 */  lwz       r0, 0xd0(r30)
/* 0B9078 800BC078 28000000 */  cmplwi    r0, 0x0
/* 0B907C 800BC07C 40820010 */  bne       lbl_800BC08C
/* 0B9080 800BC080 387E0000 */  addi      r3, r30, 0x0
/* 0B9084 800BC084 389D0000 */  addi      r4, r29, 0x0
/* 0B9088 800BC088 4BFFEA41 */  bl        __CARDPutControlBlock
lbl_800BC08C:
/* 0B908C 800BC08C 801E00D4 */  lwz       r0, 0xd4(r30)
/* 0B9090 800BC090 28000000 */  cmplwi    r0, 0x0
/* 0B9094 800BC094 7C0C0378 */  mr        r12, r0
/* 0B9098 800BC098 4182001C */  beq       lbl_800BC0B4
/* 0B909C 800BC09C 38000000 */  li        r0, 0x0
/* 0B90A0 800BC0A0 7D8803A6 */  mtlr      r12
/* 0B90A4 800BC0A4 901E00D4 */  stw       r0, 0xd4(r30)
/* 0B90A8 800BC0A8 387F0000 */  addi      r3, r31, 0x0
/* 0B90AC 800BC0AC 389D0000 */  addi      r4, r29, 0x0
/* 0B90B0 800BC0B0 4E800021 */  blrl
lbl_800BC0B4:
/* 0B90B4 800BC0B4 80010024 */  lwz       r0, 0x24(r1)
/* 0B90B8 800BC0B8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B90BC 800BC0BC 83C10018 */  lwz       r30, 0x18(r1)
/* 0B90C0 800BC0C0 83A10014 */  lwz       r29, 0x14(r1)
/* 0B90C4 800BC0C4 38210020 */  addi      r1, r1, 0x20
/* 0B90C8 800BC0C8 7C0803A6 */  mtlr      r0
/* 0B90CC 800BC0CC 4E800020 */  blr

glabel __CARDRead
/* 0B90D0 800BC0D0 7C0802A6 */  mflr      r0
/* 0B90D4 800BC0D4 1D230110 */  mulli     r9, r3, 0x110
/* 0B90D8 800BC0D8 90010004 */  stw       r0, 0x4(r1)
/* 0B90DC 800BC0DC 3D008019 */  lis       r8, D_80188A70@ha
/* 0B90E0 800BC0E0 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B90E4 800BC0E4 38088A70 */  addi      r0, r8, D_80188A70@l
/* 0B90E8 800BC0E8 7D004A14 */  add       r8, r0, r9
/* 0B90EC 800BC0EC 80080000 */  lwz       r0, 0x0(r8)
/* 0B90F0 800BC0F0 2C000000 */  cmpwi     r0, 0x0
/* 0B90F4 800BC0F4 4082000C */  bne       lbl_800BC100
/* 0B90F8 800BC0F8 3860FFFD */  li        r3, -0x3
/* 0B90FC 800BC0FC 48000028 */  b         lbl_800BC124
lbl_800BC100:
/* 0B9100 800BC100 90E800D4 */  stw       r7, 0xd4(r8)
/* 0B9104 800BC104 54A0BA7E */  srwi      r0, r5, 9
/* 0B9108 800BC108 3CA0800C */  lis       r5, BlockReadCallback@ha
/* 0B910C 800BC10C 900800AC */  stw       r0, 0xac(r8)
/* 0B9110 800BC110 3805BFF4 */  addi      r0, r5, BlockReadCallback@l
/* 0B9114 800BC114 908800B0 */  stw       r4, 0xb0(r8)
/* 0B9118 800BC118 7C040378 */  mr        r4, r0
/* 0B911C 800BC11C 90C800B4 */  stw       r6, 0xb4(r8)
/* 0B9120 800BC120 4BFFE4D5 */  bl        __CARDReadSegment
lbl_800BC124:
/* 0B9124 800BC124 8001000C */  lwz       r0, 0xc(r1)
/* 0B9128 800BC128 38210008 */  addi      r1, r1, 0x8
/* 0B912C 800BC12C 7C0803A6 */  mtlr      r0
/* 0B9130 800BC130 4E800020 */  blr

glabel BlockWriteCallback
/* 0B9134 800BC134 7C0802A6 */  mflr      r0
/* 0B9138 800BC138 90010004 */  stw       r0, 0x4(r1)
/* 0B913C 800BC13C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0B9140 800BC140 93E1001C */  stw       r31, 0x1c(r1)
/* 0B9144 800BC144 3BE30000 */  addi      r31, r3, 0x0
/* 0B9148 800BC148 3C608019 */  lis       r3, D_80188A70@ha
/* 0B914C 800BC14C 93C10018 */  stw       r30, 0x18(r1)
/* 0B9150 800BC150 1CBF0110 */  mulli     r5, r31, 0x110
/* 0B9154 800BC154 93A10014 */  stw       r29, 0x14(r1)
/* 0B9158 800BC158 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B915C 800BC15C 7C9D2379 */  mr.       r29, r4
/* 0B9160 800BC160 7FC02A14 */  add       r30, r0, r5
/* 0B9164 800BC164 41800050 */  blt       lbl_800BC1B4
/* 0B9168 800BC168 807E00B8 */  lwz       r3, 0xb8(r30)
/* 0B916C 800BC16C 38030080 */  addi      r0, r3, 0x80
/* 0B9170 800BC170 901E00B8 */  stw       r0, 0xb8(r30)
/* 0B9174 800BC174 807E00B0 */  lwz       r3, 0xb0(r30)
/* 0B9178 800BC178 38030080 */  addi      r0, r3, 0x80
/* 0B917C 800BC17C 901E00B0 */  stw       r0, 0xb0(r30)
/* 0B9180 800BC180 807E00B4 */  lwz       r3, 0xb4(r30)
/* 0B9184 800BC184 38030080 */  addi      r0, r3, 0x80
/* 0B9188 800BC188 901E00B4 */  stw       r0, 0xb4(r30)
/* 0B918C 800BC18C 807E00AC */  lwz       r3, 0xac(r30)
/* 0B9190 800BC190 3403FFFF */  subic.    r0, r3, 0x1
/* 0B9194 800BC194 901E00AC */  stw       r0, 0xac(r30)
/* 0B9198 800BC198 4081001C */  ble       lbl_800BC1B4
/* 0B919C 800BC19C 3C60800C */  lis       r3, BlockWriteCallback@ha
/* 0B91A0 800BC1A0 3883C134 */  addi      r4, r3, BlockWriteCallback@l
/* 0B91A4 800BC1A4 387F0000 */  addi      r3, r31, 0x0
/* 0B91A8 800BC1A8 4BFFE581 */  bl        __CARDWritePage
/* 0B91AC 800BC1AC 7C7D1B79 */  mr.       r29, r3
/* 0B91B0 800BC1B0 40800044 */  bge       lbl_800BC1F4
lbl_800BC1B4:
/* 0B91B4 800BC1B4 801E00D0 */  lwz       r0, 0xd0(r30)
/* 0B91B8 800BC1B8 28000000 */  cmplwi    r0, 0x0
/* 0B91BC 800BC1BC 40820010 */  bne       lbl_800BC1CC
/* 0B91C0 800BC1C0 387E0000 */  addi      r3, r30, 0x0
/* 0B91C4 800BC1C4 389D0000 */  addi      r4, r29, 0x0
/* 0B91C8 800BC1C8 4BFFE901 */  bl        __CARDPutControlBlock
lbl_800BC1CC:
/* 0B91CC 800BC1CC 801E00D4 */  lwz       r0, 0xd4(r30)
/* 0B91D0 800BC1D0 28000000 */  cmplwi    r0, 0x0
/* 0B91D4 800BC1D4 7C0C0378 */  mr        r12, r0
/* 0B91D8 800BC1D8 4182001C */  beq       lbl_800BC1F4
/* 0B91DC 800BC1DC 38000000 */  li        r0, 0x0
/* 0B91E0 800BC1E0 7D8803A6 */  mtlr      r12
/* 0B91E4 800BC1E4 901E00D4 */  stw       r0, 0xd4(r30)
/* 0B91E8 800BC1E8 387F0000 */  addi      r3, r31, 0x0
/* 0B91EC 800BC1EC 389D0000 */  addi      r4, r29, 0x0
/* 0B91F0 800BC1F0 4E800021 */  blrl
lbl_800BC1F4:
/* 0B91F4 800BC1F4 80010024 */  lwz       r0, 0x24(r1)
/* 0B91F8 800BC1F8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0B91FC 800BC1FC 83C10018 */  lwz       r30, 0x18(r1)
/* 0B9200 800BC200 83A10014 */  lwz       r29, 0x14(r1)
/* 0B9204 800BC204 38210020 */  addi      r1, r1, 0x20
/* 0B9208 800BC208 7C0803A6 */  mtlr      r0
/* 0B920C 800BC20C 4E800020 */  blr

glabel __CARDWrite
/* 0B9210 800BC210 7C0802A6 */  mflr      r0
/* 0B9214 800BC214 1D230110 */  mulli     r9, r3, 0x110
/* 0B9218 800BC218 90010004 */  stw       r0, 0x4(r1)
/* 0B921C 800BC21C 3D008019 */  lis       r8, D_80188A70@ha
/* 0B9220 800BC220 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0B9224 800BC224 38088A70 */  addi      r0, r8, D_80188A70@l
/* 0B9228 800BC228 7D004A14 */  add       r8, r0, r9
/* 0B922C 800BC22C 80080000 */  lwz       r0, 0x0(r8)
/* 0B9230 800BC230 2C000000 */  cmpwi     r0, 0x0
/* 0B9234 800BC234 4082000C */  bne       lbl_800BC240
/* 0B9238 800BC238 3860FFFD */  li        r3, -0x3
/* 0B923C 800BC23C 48000028 */  b         lbl_800BC264
lbl_800BC240:
/* 0B9240 800BC240 90E800D4 */  stw       r7, 0xd4(r8)
/* 0B9244 800BC244 54A0C9FE */  srwi      r0, r5, 7
/* 0B9248 800BC248 3CA0800C */  lis       r5, BlockWriteCallback@ha
/* 0B924C 800BC24C 900800AC */  stw       r0, 0xac(r8)
/* 0B9250 800BC250 3805C134 */  addi      r0, r5, BlockWriteCallback@l
/* 0B9254 800BC254 908800B0 */  stw       r4, 0xb0(r8)
/* 0B9258 800BC258 7C040378 */  mr        r4, r0
/* 0B925C 800BC25C 90C800B4 */  stw       r6, 0xb4(r8)
/* 0B9260 800BC260 4BFFE4C9 */  bl        __CARDWritePage
lbl_800BC264:
/* 0B9264 800BC264 8001000C */  lwz       r0, 0xc(r1)
/* 0B9268 800BC268 38210008 */  addi      r1, r1, 0x8
/* 0B926C 800BC26C 7C0803A6 */  mtlr      r0
/* 0B9270 800BC270 4E800020 */  blr

glabel CARDGetXferredBytes
/* 0B9274 800BC274 1C030110 */  mulli     r0, r3, 0x110
/* 0B9278 800BC278 3C608019 */  lis       r3, D_80188A70@ha
/* 0B927C 800BC27C 38638A70 */  addi      r3, r3, D_80188A70@l
/* 0B9280 800BC280 7C630214 */  add       r3, r3, r0
/* 0B9284 800BC284 806300B8 */  lwz       r3, 0xb8(r3)
/* 0B9288 800BC288 4E800020 */  blr
