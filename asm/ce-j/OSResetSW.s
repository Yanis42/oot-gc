# OSResetSW.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel __OSResetSWInterruptHandler
/* 09ACAC 800A024C 7C0802A6 */  mflr    r0
/* 09ACB0 800A0250 90010004 */  stw     r0, 4(r1)
/* 09ACB4 800A0254 9421FFD8 */  stwu    r1, -0x28(r1)
/* 09ACB8 800A0258 93E10024 */  stw     r31, 0x24(r1)
/* 09ACBC 800A025C 93C10020 */  stw     r30, 0x20(r1)
/* 09ACC0 800A0260 93A1001C */  stw     r29, 0x1c(r1)
/* 09ACC4 800A0264 48002065 */  bl      __OSGetSystemTime
/* 09ACC8 800A0268 3CA08000 */  lis     r5, 0x8000
/* 09ACCC 800A026C 908D8B84 */  stw     r4, (HoldDown + 4)@sda21(r13)
/* 09ACD0 800A0270 800500F8 */  lwz     r0, 0xf8(r5)
/* 09ACD4 800A0274 3C80431C */  lis     r4, 0x431c
/* 09ACD8 800A0278 3884DE83 */  addi    r4, r4, -8573
/* 09ACDC 800A027C 906D8B80 */  stw     r3, HoldDown@sda21(r13)
/* 09ACE0 800A0280 5400F0BE */  srwi    r0, r0, 2
/* 09ACE4 800A0284 7C040016 */  mulhwu  r0, r4, r0
/* 09ACE8 800A0288 54008BFE */  srwi    r0, r0, 0xf
/* 09ACEC 800A028C 1C000064 */  mulli   r0, r0, 0x64
/* 09ACF0 800A0290 541DE8FE */  srwi    r29, r0, 3
/* 09ACF4 800A0294 3BC00000 */  li      r30, 0
/* 09ACF8 800A0298 3FE0CC00 */  lis     r31, PI_REGS_BASE@ha
lbl_800A029C:
/* 09ACFC 800A029C 4800202D */  bl      __OSGetSystemTime
/* 09AD00 800A02A0 80CD8B84 */  lwz     r6, (HoldDown + 4)@sda21(r13)
/* 09AD04 800A02A4 6FC58000 */  xoris   r5, r30, 0x8000
/* 09AD08 800A02A8 800D8B80 */  lwz     r0, HoldDown@sda21(r13)
/* 09AD0C 800A02AC 7C862010 */  subfc   r4, r6, r4
/* 09AD10 800A02B0 7C001910 */  subfe   r0, r0, r3
/* 09AD14 800A02B4 6C038000 */  xoris   r3, r0, 0x8000
/* 09AD18 800A02B8 7C1D2010 */  subfc   r0, r29, r4
/* 09AD1C 800A02BC 7CA51910 */  subfe   r5, r5, r3
/* 09AD20 800A02C0 7CA31910 */  subfe   r5, r3, r3
/* 09AD24 800A02C4 7CA500D1 */  neg.    r5, r5
/* 09AD28 800A02C8 41820010 */  beq     lbl_800A02D8
/* 09AD2C 800A02CC 801F3000 */  lwz     r0, (PI_REGS_BASE + PI_INTSR)@l(r31)
/* 09AD30 800A02D0 540003DF */  rlwinm. r0, r0, 0, 0xf, 0xf
/* 09AD34 800A02D4 4182FFC8 */  beq     lbl_800A029C
lbl_800A02D8:
/* 09AD38 800A02D8 3C60CC00 */  lis     r3, PI_REGS_BASE@ha
/* 09AD3C 800A02DC 80033000 */  lwz     r0, (PI_REGS_BASE + PI_INTSR)@l(r3)
/* 09AD40 800A02E0 540003DF */  rlwinm. r0, r0, 0, 0xf, 0xf
/* 09AD44 800A02E4 40820034 */  bne     lbl_800A0318
/* 09AD48 800A02E8 38000001 */  li      r0, 1
/* 09AD4C 800A02EC 900D8B6C */  stw     r0, Down@sda21(r13)
/* 09AD50 800A02F0 38600200 */  li      r3, 0x200
/* 09AD54 800A02F4 900D8B70 */  stw     r0, LastState@sda21(r13)
/* 09AD58 800A02F8 4BFFEDCD */  bl      __OSMaskInterrupts
/* 09AD5C 800A02FC 818D8B68 */  lwz     r12, ResetCallback@sda21(r13)
/* 09AD60 800A0300 280C0000 */  cmplwi  r12, 0
/* 09AD64 800A0304 41820014 */  beq     lbl_800A0318
/* 09AD68 800A0308 38000000 */  li      r0, 0
/* 09AD6C 800A030C 7D8803A6 */  mtlr    r12
/* 09AD70 800A0310 900D8B68 */  stw     r0, ResetCallback@sda21(r13)
/* 09AD74 800A0314 4E800021 */  blrl    
lbl_800A0318:
/* 09AD78 800A0318 38000002 */  li      r0, 2
/* 09AD7C 800A031C 3C60CC00 */  lis     r3, PI_REGS_BASE@ha
/* 09AD80 800A0320 90033000 */  stw     r0, (PI_REGS_BASE + PI_INTSR)@l(r3)
/* 09AD84 800A0324 8001002C */  lwz     r0, 0x2c(r1)
/* 09AD88 800A0328 83E10024 */  lwz     r31, 0x24(r1)
/* 09AD8C 800A032C 83C10020 */  lwz     r30, 0x20(r1)
/* 09AD90 800A0330 83A1001C */  lwz     r29, 0x1c(r1)
/* 09AD94 800A0334 38210028 */  addi    r1, r1, 0x28
/* 09AD98 800A0338 7C0803A6 */  mtlr    r0
/* 09AD9C 800A033C 4E800020 */  blr     

glabel OSGetResetButtonState
/* 09ADA0 800A0340 7C0802A6 */  mflr    r0
/* 09ADA4 800A0344 90010004 */  stw     r0, 4(r1)
/* 09ADA8 800A0348 9421FFE8 */  stwu    r1, -0x18(r1)
/* 09ADAC 800A034C 93E10014 */  stw     r31, 0x14(r1)
/* 09ADB0 800A0350 93C10010 */  stw     r30, 0x10(r1)
/* 09ADB4 800A0354 93A1000C */  stw     r29, 0xc(r1)
/* 09ADB8 800A0358 4BFFE9A5 */  bl      OSDisableInterrupts
/* 09ADBC 800A035C 7C7E1B78 */  mr      r30, r3
/* 09ADC0 800A0360 48001F69 */  bl      __OSGetSystemTime
/* 09ADC4 800A0364 3CA0CC00 */  lis     r5, PI_REGS_BASE@ha
/* 09ADC8 800A0368 80053000 */  lwz     r0, (PI_REGS_BASE + PI_INTSR)@l(r5)
/* 09ADCC 800A036C 540003DF */  rlwinm. r0, r0, 0, 0xf, 0xf
/* 09ADD0 800A0370 408200DC */  bne     lbl_800A044C
/* 09ADD4 800A0374 800D8B6C */  lwz     r0, Down@sda21(r13)
/* 09ADD8 800A0378 2C000000 */  cmpwi   r0, 0
/* 09ADDC 800A037C 40820040 */  bne     lbl_800A03BC
/* 09ADE0 800A0380 800D8B78 */  lwz     r0, HoldUp@sda21(r13)
/* 09ADE4 800A0384 38C00000 */  li      r6, 0
/* 09ADE8 800A0388 80AD8B7C */  lwz     r5, (HoldUp + 4)@sda21(r13)
/* 09ADEC 800A038C 38E00001 */  li      r7, 1
/* 09ADF0 800A0390 7C003278 */  xor     r0, r0, r6
/* 09ADF4 800A0394 7CA53278 */  xor     r5, r5, r6
/* 09ADF8 800A0398 90ED8B6C */  stw     r7, Down@sda21(r13)
/* 09ADFC 800A039C 7CA00379 */  or.     r0, r5, r0
/* 09AE00 800A03A0 41820008 */  beq     lbl_800A03A8
/* 09AE04 800A03A4 48000008 */  b       lbl_800A03AC
lbl_800A03A8:
/* 09AE08 800A03A8 7CC73378 */  mr      r7, r6
lbl_800A03AC:
/* 09AE0C 800A03AC 908D8B84 */  stw     r4, (HoldDown + 4)@sda21(r13)
/* 09AE10 800A03B0 7CFD3B78 */  mr      r29, r7
/* 09AE14 800A03B4 906D8B80 */  stw     r3, HoldDown@sda21(r13)
/* 09AE18 800A03B8 48000148 */  b       lbl_800A0500
lbl_800A03BC:
/* 09AE1C 800A03BC 800D8B78 */  lwz     r0, HoldUp@sda21(r13)
/* 09AE20 800A03C0 39200000 */  li      r9, 0
/* 09AE24 800A03C4 80AD8B7C */  lwz     r5, (HoldUp + 4)@sda21(r13)
/* 09AE28 800A03C8 39400001 */  li      r10, 1
/* 09AE2C 800A03CC 7C004A78 */  xor     r0, r0, r9
/* 09AE30 800A03D0 7CA54A78 */  xor     r5, r5, r9
/* 09AE34 800A03D4 7CA00379 */  or.     r0, r5, r0
/* 09AE38 800A03D8 40820058 */  bne     lbl_800A0430
/* 09AE3C 800A03DC 3CC08000 */  lis     r6, 0x8000
/* 09AE40 800A03E0 80AD8B84 */  lwz     r5, (HoldDown + 4)@sda21(r13)
/* 09AE44 800A03E4 80E600F8 */  lwz     r7, 0xf8(r6)
/* 09AE48 800A03E8 3CC0431C */  lis     r6, 0x431c
/* 09AE4C 800A03EC 3906DE83 */  addi    r8, r6, -8573
/* 09AE50 800A03F0 800D8B80 */  lwz     r0, HoldDown@sda21(r13)
/* 09AE54 800A03F4 54E6F0BE */  srwi    r6, r7, 2
/* 09AE58 800A03F8 7CC83016 */  mulhwu  r6, r8, r6
/* 09AE5C 800A03FC 54C68BFE */  srwi    r6, r6, 0xf
/* 09AE60 800A0400 1CC60064 */  mulli   r6, r6, 0x64
/* 09AE64 800A0404 7CE52010 */  subfc   r7, r5, r4
/* 09AE68 800A0408 7C001910 */  subfe   r0, r0, r3
/* 09AE6C 800A040C 54C8E8FE */  srwi    r8, r6, 3
/* 09AE70 800A0410 6C058000 */  xoris   r5, r0, 0x8000
/* 09AE74 800A0414 6D268000 */  xoris   r6, r9, 0x8000
/* 09AE78 800A0418 7C074010 */  subfc   r0, r7, r8
/* 09AE7C 800A041C 7CA53110 */  subfe   r5, r5, r6
/* 09AE80 800A0420 7CA63110 */  subfe   r5, r6, r6
/* 09AE84 800A0424 7CA500D1 */  neg.    r5, r5
/* 09AE88 800A0428 40820008 */  bne     lbl_800A0430
/* 09AE8C 800A042C 7D2A4B78 */  mr      r10, r9
lbl_800A0430:
/* 09AE90 800A0430 2C0A0000 */  cmpwi   r10, 0
/* 09AE94 800A0434 4182000C */  beq     lbl_800A0440
/* 09AE98 800A0438 38000001 */  li      r0, 1
/* 09AE9C 800A043C 48000008 */  b       lbl_800A0444
lbl_800A0440:
/* 09AEA0 800A0440 38000000 */  li      r0, 0
lbl_800A0444:
/* 09AEA4 800A0444 7C1D0378 */  mr      r29, r0
/* 09AEA8 800A0448 480000B8 */  b       lbl_800A0500
lbl_800A044C:
/* 09AEAC 800A044C 800D8B6C */  lwz     r0, Down@sda21(r13)
/* 09AEB0 800A0450 2C000000 */  cmpwi   r0, 0
/* 09AEB4 800A0454 41820034 */  beq     lbl_800A0488
/* 09AEB8 800A0458 80AD8B70 */  lwz     r5, LastState@sda21(r13)
/* 09AEBC 800A045C 38000000 */  li      r0, 0
/* 09AEC0 800A0460 900D8B6C */  stw     r0, Down@sda21(r13)
/* 09AEC4 800A0464 2C050000 */  cmpwi   r5, 0
/* 09AEC8 800A0468 3BA50000 */  addi    r29, r5, 0
/* 09AECC 800A046C 41820010 */  beq     lbl_800A047C
/* 09AED0 800A0470 908D8B7C */  stw     r4, (HoldUp + 4)@sda21(r13)
/* 09AED4 800A0474 906D8B78 */  stw     r3, HoldUp@sda21(r13)
/* 09AED8 800A0478 48000088 */  b       lbl_800A0500
lbl_800A047C:
/* 09AEDC 800A047C 900D8B7C */  stw     r0, (HoldUp + 4)@sda21(r13)
/* 09AEE0 800A0480 900D8B78 */  stw     r0, HoldUp@sda21(r13)
/* 09AEE4 800A0484 4800007C */  b       lbl_800A0500
lbl_800A0488:
/* 09AEE8 800A0488 80CD8B78 */  lwz     r6, HoldUp@sda21(r13)
/* 09AEEC 800A048C 39000000 */  li      r8, 0
/* 09AEF0 800A0490 80ED8B7C */  lwz     r7, (HoldUp + 4)@sda21(r13)
/* 09AEF4 800A0494 7CC04278 */  xor     r0, r6, r8
/* 09AEF8 800A0498 7CE54278 */  xor     r5, r7, r8
/* 09AEFC 800A049C 7CA00379 */  or.     r0, r5, r0
/* 09AF00 800A04A0 41820050 */  beq     lbl_800A04F0
/* 09AF04 800A04A4 3CA08000 */  lis     r5, 0x8000
/* 09AF08 800A04A8 800500F8 */  lwz     r0, 0xf8(r5)
/* 09AF0C 800A04AC 3CA01062 */  lis     r5, 0x1062
/* 09AF10 800A04B0 38A54DD3 */  addi    r5, r5, 0x4dd3
/* 09AF14 800A04B4 5400F0BE */  srwi    r0, r0, 2
/* 09AF18 800A04B8 7C050016 */  mulhwu  r0, r5, r0
/* 09AF1C 800A04BC 5400D1BE */  srwi    r0, r0, 6
/* 09AF20 800A04C0 1C000028 */  mulli   r0, r0, 0x28
/* 09AF24 800A04C4 7CE72010 */  subfc   r7, r7, r4
/* 09AF28 800A04C8 7CA61910 */  subfe   r5, r6, r3
/* 09AF2C 800A04CC 6CA68000 */  xoris   r6, r5, 0x8000
/* 09AF30 800A04D0 6D058000 */  xoris   r5, r8, 0x8000
/* 09AF34 800A04D4 7C003810 */  subfc   r0, r0, r7
/* 09AF38 800A04D8 7CA53110 */  subfe   r5, r5, r6
/* 09AF3C 800A04DC 7CA63110 */  subfe   r5, r6, r6
/* 09AF40 800A04E0 7CA500D1 */  neg.    r5, r5
/* 09AF44 800A04E4 4182000C */  beq     lbl_800A04F0
/* 09AF48 800A04E8 3BA00001 */  li      r29, 1
/* 09AF4C 800A04EC 48000014 */  b       lbl_800A0500
lbl_800A04F0:
/* 09AF50 800A04F0 38000000 */  li      r0, 0
/* 09AF54 800A04F4 900D8B7C */  stw     r0, (HoldUp + 4)@sda21(r13)
/* 09AF58 800A04F8 3BA00000 */  li      r29, 0
/* 09AF5C 800A04FC 900D8B78 */  stw     r0, HoldUp@sda21(r13)
lbl_800A0500:
/* 09AF60 800A0500 3CA08000 */  lis     r5, 0x8000
/* 09AF64 800A0504 93AD8B70 */  stw     r29, LastState@sda21(r13)
/* 09AF68 800A0508 880530E3 */  lbz     r0, 0x30e3(r5)
/* 09AF6C 800A050C 540006FF */  clrlwi. r0, r0, 0x1b
/* 09AF70 800A0510 418200A0 */  beq     lbl_800A05B0
/* 09AF74 800A0514 1D40003C */  mulli   r10, r0, 0x3c
/* 09AF78 800A0518 800500F8 */  lwz     r0, 0xf8(r5)
/* 09AF7C 800A051C 812D8B0C */  lwz     r9, (__OSStartTime + 4)@sda21(r13)
/* 09AF80 800A0520 810D8B08 */  lwz     r8, __OSStartTime@sda21(r13)
/* 09AF84 800A0524 5406F0BE */  srwi    r6, r0, 2
/* 09AF88 800A0528 7D40FE70 */  srawi   r0, r10, 0x1f
/* 09AF8C 800A052C 7CE031D6 */  mullw   r7, r0, r6
/* 09AF90 800A0530 7C0A3016 */  mulhwu  r0, r10, r6
/* 09AF94 800A0534 7CAA31D6 */  mullw   r5, r10, r6
/* 09AF98 800A0538 7D292814 */  addc    r9, r9, r5
/* 09AF9C 800A053C 3BE00000 */  li      r31, 0
/* 09AFA0 800A0540 7CE70214 */  add     r7, r7, r0
/* 09AFA4 800A0544 7C0AF9D6 */  mullw   r0, r10, r31
/* 09AFA8 800A0548 7C070214 */  add     r0, r7, r0
/* 09AFAC 800A054C 7D080114 */  adde    r8, r8, r0
/* 09AFB0 800A0550 6D078000 */  xoris   r7, r8, 0x8000
/* 09AFB4 800A0554 6C658000 */  xoris   r5, r3, 0x8000
/* 09AFB8 800A0558 7C044810 */  subfc   r0, r4, r9
/* 09AFBC 800A055C 7CA53910 */  subfe   r5, r5, r7
/* 09AFC0 800A0560 7CA73910 */  subfe   r5, r7, r7
/* 09AFC4 800A0564 7CA500D1 */  neg.    r5, r5
/* 09AFC8 800A0568 41820048 */  beq     lbl_800A05B0
/* 09AFCC 800A056C 7C892010 */  subfc   r4, r9, r4
/* 09AFD0 800A0570 7C681910 */  subfe   r3, r8, r3
/* 09AFD4 800A0574 38A00000 */  li      r5, 0
/* 09AFD8 800A0578 4802D4A5 */  bl      __div2i
/* 09AFDC 800A057C 38A00000 */  li      r5, 0
/* 09AFE0 800A0580 38C00002 */  li      r6, 2
/* 09AFE4 800A0584 4802D499 */  bl      __div2i
/* 09AFE8 800A0588 38000001 */  li      r0, 1
/* 09AFEC 800A058C 7C840038 */  and     r4, r4, r0
/* 09AFF0 800A0590 7C60F838 */  and     r0, r3, r31
/* 09AFF4 800A0594 7C83FA78 */  xor     r3, r4, r31
/* 09AFF8 800A0598 7C00FA78 */  xor     r0, r0, r31
/* 09AFFC 800A059C 7C600379 */  or.     r0, r3, r0
/* 09B000 800A05A0 4082000C */  bne     lbl_800A05AC
/* 09B004 800A05A4 3BA00001 */  li      r29, 1
/* 09B008 800A05A8 48000008 */  b       lbl_800A05B0
lbl_800A05AC:
/* 09B00C 800A05AC 3BA00000 */  li      r29, 0
lbl_800A05B0:
/* 09B010 800A05B0 7FC3F378 */  mr      r3, r30
/* 09B014 800A05B4 4BFFE771 */  bl      OSRestoreInterrupts
/* 09B018 800A05B8 7FA3EB78 */  mr      r3, r29
/* 09B01C 800A05BC 8001001C */  lwz     r0, 0x1c(r1)
/* 09B020 800A05C0 83E10014 */  lwz     r31, 0x14(r1)
/* 09B024 800A05C4 83C10010 */  lwz     r30, 0x10(r1)
/* 09B028 800A05C8 83A1000C */  lwz     r29, 0xc(r1)
/* 09B02C 800A05CC 38210018 */  addi    r1, r1, 0x18
/* 09B030 800A05D0 7C0803A6 */  mtlr    r0
/* 09B034 800A05D4 4E800020 */  blr     

.section .sbss, "wa"

.balign 8

/* 000F1AC8 80135848 0004 */
ResetCallback:
    .skip 4

/* 000F1ACC 8013584C 0004 */
Down:
    .skip 4

/* 000F1AD0 80135850 0004 */
LastState:
    .skip 4

.balign 8

/* 000F1AD8 80135858 0008 */
HoldUp:
    .skip 8

/* 000F1AE0 80135860 0008 */
HoldDown:
    .skip 8
