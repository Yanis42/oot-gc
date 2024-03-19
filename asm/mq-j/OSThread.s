# OSThread.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A0310 - 0x800A14E0

glabel DefaultSwitchThreadCallback
/* 09D310 800A0310 4E800020 */  blr

glabel __OSThreadInit
/* 09D314 800A0314 7C0802A6 */  mflr      r0
/* 09D318 800A0318 3C608018 */  lis       r3, RunQueue@ha
/* 09D31C 800A031C 90010004 */  stw       r0, 0x4(r1)
/* 09D320 800A0320 38000002 */  li        r0, 0x2
/* 09D324 800A0324 38800010 */  li        r4, 0x10
/* 09D328 800A0328 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09D32C 800A032C 93E10014 */  stw       r31, 0x14(r1)
/* 09D330 800A0330 93C10010 */  stw       r30, 0x10(r1)
/* 09D334 800A0334 93A1000C */  stw       r29, 0xc(r1)
/* 09D338 800A0338 3BA00000 */  li        r29, 0x0
/* 09D33C 800A033C 93810008 */  stw       r28, 0x8(r1)
/* 09D340 800A0340 3B837398 */  addi      r28, r3, RunQueue@l
/* 09D344 800A0344 3BFC0418 */  addi      r31, r28, 0x418
/* 09D348 800A0348 B01C06E0 */  sth       r0, 0x6e0(r28)
/* 09D34C 800A034C 38000001 */  li        r0, 0x1
/* 09D350 800A0350 387F02E8 */  addi      r3, r31, 0x2e8
/* 09D354 800A0354 B01C06E2 */  sth       r0, 0x6e2(r28)
/* 09D358 800A0358 3800FFFF */  li        r0, -0x1
/* 09D35C 800A035C 909C06EC */  stw       r4, 0x6ec(r28)
/* 09D360 800A0360 909C06E8 */  stw       r4, 0x6e8(r28)
/* 09D364 800A0364 93BC06E4 */  stw       r29, 0x6e4(r28)
/* 09D368 800A0368 901C06F0 */  stw       r0, 0x6f0(r28)
/* 09D36C 800A036C 93BC0708 */  stw       r29, 0x708(r28)
/* 09D370 800A0370 480000FD */  bl        OSInitThreadQueue
/* 09D374 800A0374 93BC0710 */  stw       r29, 0x710(r28)
/* 09D378 800A0378 3FC08000 */  lis       r30, 0x8000
/* 09D37C 800A037C 387F0000 */  addi      r3, r31, 0x0
/* 09D380 800A0380 93BC070C */  stw       r29, 0x70c(r28)
/* 09D384 800A0384 93FE00D8 */  stw       r31, 0xd8(r30)
/* 09D388 800A0388 4BFFD369 */  bl        OSClearContext
/* 09D38C 800A038C 7FE3FB78 */  mr        r3, r31
/* 09D390 800A0390 4BFFD199 */  bl        OSSetCurrentContext
/* 09D394 800A0394 3C60801A */  lis       r3, _stack_addr@ha
/* 09D398 800A0398 3803C650 */  addi      r0, r3, _stack_addr@l
/* 09D39C 800A039C 3C608019 */  lis       r3, _stack_end@ha
/* 09D3A0 800A03A0 901C071C */  stw       r0, 0x71c(r28)
/* 09D3A4 800A03A4 3803C650 */  addi      r0, r3, _stack_end@l
/* 09D3A8 800A03A8 901C0720 */  stw       r0, 0x720(r28)
/* 09D3AC 800A03AC 3C60DEAE */  lis       r3, 0xdeae
/* 09D3B0 800A03B0 3803BABE */  subi      r0, r3, 0x4542
/* 09D3B4 800A03B4 807C0720 */  lwz       r3, 0x720(r28)
/* 09D3B8 800A03B8 7FE4FB78 */  mr        r4, r31
/* 09D3BC 800A03BC 90030000 */  stw       r0, 0x0(r3)
/* 09D3C0 800A03C0 818D8748 */  lwz       r12, SwitchThreadCallback@sda21(r0)
/* 09D3C4 800A03C4 807E00E4 */  lwz       r3, 0xe4(r30)
/* 09D3C8 800A03C8 7D8803A6 */  mtlr      r12
/* 09D3CC 800A03CC 4E800021 */  blrl
/* 09D3D0 800A03D0 93FE00E4 */  stw       r31, 0xe4(r30)
/* 09D3D4 800A03D4 38600000 */  li        r3, 0x0
/* 09D3D8 800A03D8 4800105D */  bl        OSClearStack
/* 09D3DC 800A03DC 93AD8B60 */  stw       r29, RunQueueBits@sda21(r0)
/* 09D3E0 800A03E0 3BC00000 */  li        r30, 0x0
/* 09D3E4 800A03E4 57C01838 */  slwi      r0, r30, 3
/* 09D3E8 800A03E8 93AD8B64 */  stw       r29, RunQueueHint@sda21(r0)
/* 09D3EC 800A03EC 7FBC0214 */  add       r29, r28, r0
lbl_800A03F0:
/* 09D3F0 800A03F0 7FA3EB78 */  mr        r3, r29
/* 09D3F4 800A03F4 48000079 */  bl        OSInitThreadQueue
/* 09D3F8 800A03F8 3BDE0001 */  addi      r30, r30, 0x1
/* 09D3FC 800A03FC 2C1E001F */  cmpwi     r30, 0x1f
/* 09D400 800A0400 3BBD0008 */  addi      r29, r29, 0x8
/* 09D404 800A0404 4081FFEC */  ble       lbl_800A03F0
/* 09D408 800A0408 3FC08000 */  lis       r30, 0x8000
/* 09D40C 800A040C 387E00DC */  addi      r3, r30, 0xdc
/* 09D410 800A0410 4800005D */  bl        OSInitThreadQueue
/* 09D414 800A0414 389E00DC */  addi      r4, r30, 0xdc
/* 09D418 800A0418 84640004 */  lwzu      r3, 0x4(r4)
/* 09D41C 800A041C 28030000 */  cmplwi    r3, 0x0
/* 09D420 800A0420 4082000C */  bne       lbl_800A042C
/* 09D424 800A0424 93FE00DC */  stw       r31, 0xdc(r30)
/* 09D428 800A0428 48000008 */  b         lbl_800A0430
lbl_800A042C:
/* 09D42C 800A042C 93E302FC */  stw       r31, 0x2fc(r3)
lbl_800A0430:
/* 09D430 800A0430 907F0300 */  stw       r3, 0x300(r31)
/* 09D434 800A0434 3BC00000 */  li        r30, 0x0
/* 09D438 800A0438 387C0730 */  addi      r3, r28, 0x730
/* 09D43C 800A043C 93DF02FC */  stw       r30, 0x2fc(r31)
/* 09D440 800A0440 93E40000 */  stw       r31, 0x0(r4)
/* 09D444 800A0444 4BFFD2AD */  bl        OSClearContext
/* 09D448 800A0448 93CD8B68 */  stw       r30, Reschedule@sda21(r0)
/* 09D44C 800A044C 8001001C */  lwz       r0, 0x1c(r1)
/* 09D450 800A0450 83E10014 */  lwz       r31, 0x14(r1)
/* 09D454 800A0454 83C10010 */  lwz       r30, 0x10(r1)
/* 09D458 800A0458 83A1000C */  lwz       r29, 0xc(r1)
/* 09D45C 800A045C 83810008 */  lwz       r28, 0x8(r1)
/* 09D460 800A0460 38210018 */  addi      r1, r1, 0x18
/* 09D464 800A0464 7C0803A6 */  mtlr      r0
/* 09D468 800A0468 4E800020 */  blr

glabel OSInitThreadQueue
/* 09D46C 800A046C 38000000 */  li        r0, 0x0
/* 09D470 800A0470 90030004 */  stw       r0, 0x4(r3)
/* 09D474 800A0474 90030000 */  stw       r0, 0x0(r3)
/* 09D478 800A0478 4E800020 */  blr

glabel OSGetCurrentThread
/* 09D47C 800A047C 3C608000 */  lis       r3, 0x8000
/* 09D480 800A0480 806300E4 */  lwz       r3, 0xe4(r3)
/* 09D484 800A0484 4E800020 */  blr

glabel OSDisableScheduler
/* 09D488 800A0488 7C0802A6 */  mflr      r0
/* 09D48C 800A048C 90010004 */  stw       r0, 0x4(r1)
/* 09D490 800A0490 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09D494 800A0494 93E1000C */  stw       r31, 0xc(r1)
/* 09D498 800A0498 4BFFDDB1 */  bl        OSDisableInterrupts
/* 09D49C 800A049C 808D8B68 */  lwz       r4, Reschedule@sda21(r0)
/* 09D4A0 800A04A0 38040001 */  addi      r0, r4, 0x1
/* 09D4A4 800A04A4 900D8B68 */  stw       r0, Reschedule@sda21(r0)
/* 09D4A8 800A04A8 7C9F2378 */  mr        r31, r4
/* 09D4AC 800A04AC 4BFFDDC5 */  bl        OSRestoreInterrupts
/* 09D4B0 800A04B0 7FE3FB78 */  mr        r3, r31
/* 09D4B4 800A04B4 80010014 */  lwz       r0, 0x14(r1)
/* 09D4B8 800A04B8 83E1000C */  lwz       r31, 0xc(r1)
/* 09D4BC 800A04BC 38210010 */  addi      r1, r1, 0x10
/* 09D4C0 800A04C0 7C0803A6 */  mtlr      r0
/* 09D4C4 800A04C4 4E800020 */  blr

glabel OSEnableScheduler
/* 09D4C8 800A04C8 7C0802A6 */  mflr      r0
/* 09D4CC 800A04CC 90010004 */  stw       r0, 0x4(r1)
/* 09D4D0 800A04D0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09D4D4 800A04D4 93E1000C */  stw       r31, 0xc(r1)
/* 09D4D8 800A04D8 4BFFDD71 */  bl        OSDisableInterrupts
/* 09D4DC 800A04DC 808D8B68 */  lwz       r4, Reschedule@sda21(r0)
/* 09D4E0 800A04E0 3804FFFF */  subi      r0, r4, 0x1
/* 09D4E4 800A04E4 900D8B68 */  stw       r0, Reschedule@sda21(r0)
/* 09D4E8 800A04E8 7C9F2378 */  mr        r31, r4
/* 09D4EC 800A04EC 4BFFDD85 */  bl        OSRestoreInterrupts
/* 09D4F0 800A04F0 7FE3FB78 */  mr        r3, r31
/* 09D4F4 800A04F4 80010014 */  lwz       r0, 0x14(r1)
/* 09D4F8 800A04F8 83E1000C */  lwz       r31, 0xc(r1)
/* 09D4FC 800A04FC 38210010 */  addi      r1, r1, 0x10
/* 09D500 800A0500 7C0803A6 */  mtlr      r0
/* 09D504 800A0504 4E800020 */  blr

glabel UnsetRun
/* 09D508 800A0508 808302E0 */  lwz       r4, 0x2e0(r3)
/* 09D50C 800A050C 80A302DC */  lwz       r5, 0x2dc(r3)
/* 09D510 800A0510 28040000 */  cmplwi    r4, 0x0
/* 09D514 800A0514 80C302E4 */  lwz       r6, 0x2e4(r3)
/* 09D518 800A0518 4082000C */  bne       lbl_800A0524
/* 09D51C 800A051C 90C50004 */  stw       r6, 0x4(r5)
/* 09D520 800A0520 48000008 */  b         lbl_800A0528
lbl_800A0524:
/* 09D524 800A0524 90C402E4 */  stw       r6, 0x2e4(r4)
lbl_800A0528:
/* 09D528 800A0528 28060000 */  cmplwi    r6, 0x0
/* 09D52C 800A052C 4082000C */  bne       lbl_800A0538
/* 09D530 800A0530 90850000 */  stw       r4, 0x0(r5)
/* 09D534 800A0534 48000008 */  b         lbl_800A053C
lbl_800A0538:
/* 09D538 800A0538 908602E0 */  stw       r4, 0x2e0(r6)
lbl_800A053C:
/* 09D53C 800A053C 80050000 */  lwz       r0, 0x0(r5)
/* 09D540 800A0540 28000000 */  cmplwi    r0, 0x0
/* 09D544 800A0544 40820020 */  bne       lbl_800A0564
/* 09D548 800A0548 800302D0 */  lwz       r0, 0x2d0(r3)
/* 09D54C 800A054C 38800001 */  li        r4, 0x1
/* 09D550 800A0550 80AD8B60 */  lwz       r5, RunQueueBits@sda21(r0)
/* 09D554 800A0554 2000001F */  subfic    r0, r0, 0x1f
/* 09D558 800A0558 7C800030 */  slw       r0, r4, r0
/* 09D55C 800A055C 7CA00078 */  andc      r0, r5, r0
/* 09D560 800A0560 900D8B60 */  stw       r0, RunQueueBits@sda21(r0)
lbl_800A0564:
/* 09D564 800A0564 38000000 */  li        r0, 0x0
/* 09D568 800A0568 900302DC */  stw       r0, 0x2dc(r3)
/* 09D56C 800A056C 4E800020 */  blr

glabel __OSGetEffectivePriority
/* 09D570 800A0570 808302D4 */  lwz       r4, 0x2d4(r3)
/* 09D574 800A0574 80A302F4 */  lwz       r5, 0x2f4(r3)
/* 09D578 800A0578 48000024 */  b         lbl_800A059C
lbl_800A057C:
/* 09D57C 800A057C 80650000 */  lwz       r3, 0x0(r5)
/* 09D580 800A0580 28030000 */  cmplwi    r3, 0x0
/* 09D584 800A0584 41820014 */  beq       lbl_800A0598
/* 09D588 800A0588 800302D0 */  lwz       r0, 0x2d0(r3)
/* 09D58C 800A058C 7C002000 */  cmpw      r0, r4
/* 09D590 800A0590 40800008 */  bge       lbl_800A0598
/* 09D594 800A0594 7C040378 */  mr        r4, r0
lbl_800A0598:
/* 09D598 800A0598 80A50010 */  lwz       r5, 0x10(r5)
lbl_800A059C:
/* 09D59C 800A059C 28050000 */  cmplwi    r5, 0x0
/* 09D5A0 800A05A0 4082FFDC */  bne       lbl_800A057C
/* 09D5A4 800A05A4 7C832378 */  mr        r3, r4
/* 09D5A8 800A05A8 4E800020 */  blr

glabel SetEffectivePriority
/* 09D5AC 800A05AC 7C0802A6 */  mflr      r0
/* 09D5B0 800A05B0 90010004 */  stw       r0, 0x4(r1)
/* 09D5B4 800A05B4 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09D5B8 800A05B8 93E10014 */  stw       r31, 0x14(r1)
/* 09D5BC 800A05BC 7C7F1B78 */  mr        r31, r3
/* 09D5C0 800A05C0 93C10010 */  stw       r30, 0x10(r1)
/* 09D5C4 800A05C4 3BC40000 */  addi      r30, r4, 0x0
/* 09D5C8 800A05C8 A00302C8 */  lhz       r0, 0x2c8(r3)
/* 09D5CC 800A05CC 2C000003 */  cmpwi     r0, 0x3
/* 09D5D0 800A05D0 41820180 */  beq       lbl_800A0750
/* 09D5D4 800A05D4 40800014 */  bge       lbl_800A05E8
/* 09D5D8 800A05D8 2C000001 */  cmpwi     r0, 0x1
/* 09D5DC 800A05DC 41820018 */  beq       lbl_800A05F4
/* 09D5E0 800A05E0 40800164 */  bge       lbl_800A0744
/* 09D5E4 800A05E4 4800016C */  b         lbl_800A0750
lbl_800A05E8:
/* 09D5E8 800A05E8 2C000005 */  cmpwi     r0, 0x5
/* 09D5EC 800A05EC 40800164 */  bge       lbl_800A0750
/* 09D5F0 800A05F0 4800007C */  b         lbl_800A066C
lbl_800A05F4:
/* 09D5F4 800A05F4 7FE3FB78 */  mr        r3, r31
/* 09D5F8 800A05F8 4BFFFF11 */  bl        UnsetRun
/* 09D5FC 800A05FC 93DF02D0 */  stw       r30, 0x2d0(r31)
/* 09D600 800A0600 3C608018 */  lis       r3, RunQueue@ha
/* 09D604 800A0604 38037398 */  addi      r0, r3, RunQueue@l
/* 09D608 800A0608 807F02D0 */  lwz       r3, 0x2d0(r31)
/* 09D60C 800A060C 54631838 */  slwi      r3, r3, 3
/* 09D610 800A0610 7C001A14 */  add       r0, r0, r3
/* 09D614 800A0614 901F02DC */  stw       r0, 0x2dc(r31)
/* 09D618 800A0618 809F02DC */  lwz       r4, 0x2dc(r31)
/* 09D61C 800A061C 80640004 */  lwz       r3, 0x4(r4)
/* 09D620 800A0620 28030000 */  cmplwi    r3, 0x0
/* 09D624 800A0624 4082000C */  bne       lbl_800A0630
/* 09D628 800A0628 93E40000 */  stw       r31, 0x0(r4)
/* 09D62C 800A062C 48000008 */  b         lbl_800A0634
lbl_800A0630:
/* 09D630 800A0630 93E302E0 */  stw       r31, 0x2e0(r3)
lbl_800A0634:
/* 09D634 800A0634 907F02E4 */  stw       r3, 0x2e4(r31)
/* 09D638 800A0638 38000000 */  li        r0, 0x0
/* 09D63C 800A063C 38600001 */  li        r3, 0x1
/* 09D640 800A0640 901F02E0 */  stw       r0, 0x2e0(r31)
/* 09D644 800A0644 809F02DC */  lwz       r4, 0x2dc(r31)
/* 09D648 800A0648 93E40004 */  stw       r31, 0x4(r4)
/* 09D64C 800A064C 801F02D0 */  lwz       r0, 0x2d0(r31)
/* 09D650 800A0650 808D8B60 */  lwz       r4, RunQueueBits@sda21(r0)
/* 09D654 800A0654 2000001F */  subfic    r0, r0, 0x1f
/* 09D658 800A0658 7C600030 */  slw       r0, r3, r0
/* 09D65C 800A065C 7C800378 */  or        r0, r4, r0
/* 09D660 800A0660 900D8B60 */  stw       r0, RunQueueBits@sda21(r0)
/* 09D664 800A0664 906D8B64 */  stw       r3, RunQueueHint@sda21(r0)
/* 09D668 800A0668 480000E8 */  b         lbl_800A0750
lbl_800A066C:
/* 09D66C 800A066C 809F02E0 */  lwz       r4, 0x2e0(r31)
/* 09D670 800A0670 80BF02E4 */  lwz       r5, 0x2e4(r31)
/* 09D674 800A0674 28040000 */  cmplwi    r4, 0x0
/* 09D678 800A0678 40820010 */  bne       lbl_800A0688
/* 09D67C 800A067C 807F02DC */  lwz       r3, 0x2dc(r31)
/* 09D680 800A0680 90A30004 */  stw       r5, 0x4(r3)
/* 09D684 800A0684 48000008 */  b         lbl_800A068C
lbl_800A0688:
/* 09D688 800A0688 90A402E4 */  stw       r5, 0x2e4(r4)
lbl_800A068C:
/* 09D68C 800A068C 28050000 */  cmplwi    r5, 0x0
/* 09D690 800A0690 40820010 */  bne       lbl_800A06A0
/* 09D694 800A0694 807F02DC */  lwz       r3, 0x2dc(r31)
/* 09D698 800A0698 90830000 */  stw       r4, 0x0(r3)
/* 09D69C 800A069C 48000008 */  b         lbl_800A06A4
lbl_800A06A0:
/* 09D6A0 800A06A0 908502E0 */  stw       r4, 0x2e0(r5)
lbl_800A06A4:
/* 09D6A4 800A06A4 93DF02D0 */  stw       r30, 0x2d0(r31)
/* 09D6A8 800A06A8 809F02DC */  lwz       r4, 0x2dc(r31)
/* 09D6AC 800A06AC 80A40000 */  lwz       r5, 0x0(r4)
/* 09D6B0 800A06B0 48000008 */  b         lbl_800A06B8
lbl_800A06B4:
/* 09D6B4 800A06B4 80A502E0 */  lwz       r5, 0x2e0(r5)
lbl_800A06B8:
/* 09D6B8 800A06B8 28050000 */  cmplwi    r5, 0x0
/* 09D6BC 800A06BC 41820014 */  beq       lbl_800A06D0
/* 09D6C0 800A06C0 806502D0 */  lwz       r3, 0x2d0(r5)
/* 09D6C4 800A06C4 801F02D0 */  lwz       r0, 0x2d0(r31)
/* 09D6C8 800A06C8 7C030000 */  cmpw      r3, r0
/* 09D6CC 800A06CC 4081FFE8 */  ble       lbl_800A06B4
lbl_800A06D0:
/* 09D6D0 800A06D0 28050000 */  cmplwi    r5, 0x0
/* 09D6D4 800A06D4 40820034 */  bne       lbl_800A0708
/* 09D6D8 800A06D8 80640004 */  lwz       r3, 0x4(r4)
/* 09D6DC 800A06DC 28030000 */  cmplwi    r3, 0x0
/* 09D6E0 800A06E0 4082000C */  bne       lbl_800A06EC
/* 09D6E4 800A06E4 93E40000 */  stw       r31, 0x0(r4)
/* 09D6E8 800A06E8 48000008 */  b         lbl_800A06F0
lbl_800A06EC:
/* 09D6EC 800A06EC 93E302E0 */  stw       r31, 0x2e0(r3)
lbl_800A06F0:
/* 09D6F0 800A06F0 907F02E4 */  stw       r3, 0x2e4(r31)
/* 09D6F4 800A06F4 38000000 */  li        r0, 0x0
/* 09D6F8 800A06F8 901F02E0 */  stw       r0, 0x2e0(r31)
/* 09D6FC 800A06FC 807F02DC */  lwz       r3, 0x2dc(r31)
/* 09D700 800A0700 93E30004 */  stw       r31, 0x4(r3)
/* 09D704 800A0704 4800002C */  b         lbl_800A0730
lbl_800A0708:
/* 09D708 800A0708 90BF02E0 */  stw       r5, 0x2e0(r31)
/* 09D70C 800A070C 806502E4 */  lwz       r3, 0x2e4(r5)
/* 09D710 800A0710 93E502E4 */  stw       r31, 0x2e4(r5)
/* 09D714 800A0714 28030000 */  cmplwi    r3, 0x0
/* 09D718 800A0718 907F02E4 */  stw       r3, 0x2e4(r31)
/* 09D71C 800A071C 40820010 */  bne       lbl_800A072C
/* 09D720 800A0720 807F02DC */  lwz       r3, 0x2dc(r31)
/* 09D724 800A0724 93E30000 */  stw       r31, 0x0(r3)
/* 09D728 800A0728 48000008 */  b         lbl_800A0730
lbl_800A072C:
/* 09D72C 800A072C 93E302E0 */  stw       r31, 0x2e0(r3)
lbl_800A0730:
/* 09D730 800A0730 807F02F0 */  lwz       r3, 0x2f0(r31)
/* 09D734 800A0734 28030000 */  cmplwi    r3, 0x0
/* 09D738 800A0738 41820018 */  beq       lbl_800A0750
/* 09D73C 800A073C 80630008 */  lwz       r3, 0x8(r3)
/* 09D740 800A0740 48000014 */  b         lbl_800A0754
lbl_800A0744:
/* 09D744 800A0744 38000001 */  li        r0, 0x1
/* 09D748 800A0748 900D8B64 */  stw       r0, RunQueueHint@sda21(r0)
/* 09D74C 800A074C 93DF02D0 */  stw       r30, 0x2d0(r31)
lbl_800A0750:
/* 09D750 800A0750 38600000 */  li        r3, 0x0
lbl_800A0754:
/* 09D754 800A0754 8001001C */  lwz       r0, 0x1c(r1)
/* 09D758 800A0758 83E10014 */  lwz       r31, 0x14(r1)
/* 09D75C 800A075C 83C10010 */  lwz       r30, 0x10(r1)
/* 09D760 800A0760 38210018 */  addi      r1, r1, 0x18
/* 09D764 800A0764 7C0803A6 */  mtlr      r0
/* 09D768 800A0768 4E800020 */  blr

SelectThread:
/* 09D76C 800A076C 7C0802A6 */  mflr      r0
/* 09D770 800A0770 3C808018 */  lis       r4, RunQueue@ha
/* 09D774 800A0774 90010004 */  stw       r0, 0x4(r1)
/* 09D778 800A0778 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09D77C 800A077C 93E10014 */  stw       r31, 0x14(r1)
/* 09D780 800A0780 3BE47398 */  addi      r31, r4, RunQueue@l
/* 09D784 800A0784 93C10010 */  stw       r30, 0x10(r1)
/* 09D788 800A0788 3BC30000 */  addi      r30, r3, 0x0
/* 09D78C 800A078C 800D8B68 */  lwz       r0, Reschedule@sda21(r0)
/* 09D790 800A0790 2C000000 */  cmpwi     r0, 0x0
/* 09D794 800A0794 4081000C */  ble       lbl_800A07A0
/* 09D798 800A0798 38600000 */  li        r3, 0x0
/* 09D79C 800A079C 480001E0 */  b         lbl_800A097C
lbl_800A07A0:
/* 09D7A0 800A07A0 4BFFCDE5 */  bl        OSGetCurrentContext
/* 09D7A4 800A07A4 3C808000 */  lis       r4, 0x8000
/* 09D7A8 800A07A8 80C400E4 */  lwz       r6, 0xe4(r4)
/* 09D7AC 800A07AC 7C033040 */  cmplw     r3, r6
/* 09D7B0 800A07B0 38660000 */  addi      r3, r6, 0x0
/* 09D7B4 800A07B4 4182000C */  beq       lbl_800A07C0
/* 09D7B8 800A07B8 38600000 */  li        r3, 0x0
/* 09D7BC 800A07BC 480001C0 */  b         lbl_800A097C
lbl_800A07C0:
/* 09D7C0 800A07C0 28060000 */  cmplwi    r6, 0x0
/* 09D7C4 800A07C4 418200BC */  beq       lbl_800A0880
/* 09D7C8 800A07C8 A00602C8 */  lhz       r0, 0x2c8(r6)
/* 09D7CC 800A07CC 28000002 */  cmplwi    r0, 0x2
/* 09D7D0 800A07D0 40820090 */  bne       lbl_800A0860
/* 09D7D4 800A07D4 2C1E0000 */  cmpwi     r30, 0x0
/* 09D7D8 800A07D8 40820020 */  bne       lbl_800A07F8
/* 09D7DC 800A07DC 808D8B60 */  lwz       r4, RunQueueBits@sda21(r0)
/* 09D7E0 800A07E0 800602D0 */  lwz       r0, 0x2d0(r6)
/* 09D7E4 800A07E4 7C840034 */  cntlzw    r4, r4
/* 09D7E8 800A07E8 7C002000 */  cmpw      r0, r4
/* 09D7EC 800A07EC 4181000C */  bgt       lbl_800A07F8
/* 09D7F0 800A07F0 38600000 */  li        r3, 0x0
/* 09D7F4 800A07F4 48000188 */  b         lbl_800A097C
lbl_800A07F8:
/* 09D7F8 800A07F8 38000001 */  li        r0, 0x1
/* 09D7FC 800A07FC B00602C8 */  sth       r0, 0x2c8(r6)
/* 09D800 800A0800 800602D0 */  lwz       r0, 0x2d0(r6)
/* 09D804 800A0804 54001838 */  slwi      r0, r0, 3
/* 09D808 800A0808 7C1F0214 */  add       r0, r31, r0
/* 09D80C 800A080C 900602DC */  stw       r0, 0x2dc(r6)
/* 09D810 800A0810 80A602DC */  lwz       r5, 0x2dc(r6)
/* 09D814 800A0814 80850004 */  lwz       r4, 0x4(r5)
/* 09D818 800A0818 28040000 */  cmplwi    r4, 0x0
/* 09D81C 800A081C 4082000C */  bne       lbl_800A0828
/* 09D820 800A0820 90C50000 */  stw       r6, 0x0(r5)
/* 09D824 800A0824 48000008 */  b         lbl_800A082C
lbl_800A0828:
/* 09D828 800A0828 90C402E0 */  stw       r6, 0x2e0(r4)
lbl_800A082C:
/* 09D82C 800A082C 908602E4 */  stw       r4, 0x2e4(r6)
/* 09D830 800A0830 38000000 */  li        r0, 0x0
/* 09D834 800A0834 38800001 */  li        r4, 0x1
/* 09D838 800A0838 900602E0 */  stw       r0, 0x2e0(r6)
/* 09D83C 800A083C 80A602DC */  lwz       r5, 0x2dc(r6)
/* 09D840 800A0840 90C50004 */  stw       r6, 0x4(r5)
/* 09D844 800A0844 800602D0 */  lwz       r0, 0x2d0(r6)
/* 09D848 800A0848 80AD8B60 */  lwz       r5, RunQueueBits@sda21(r0)
/* 09D84C 800A084C 2000001F */  subfic    r0, r0, 0x1f
/* 09D850 800A0850 7C800030 */  slw       r0, r4, r0
/* 09D854 800A0854 7CA00378 */  or        r0, r5, r0
/* 09D858 800A0858 900D8B60 */  stw       r0, RunQueueBits@sda21(r0)
/* 09D85C 800A085C 908D8B64 */  stw       r4, RunQueueHint@sda21(r0)
lbl_800A0860:
/* 09D860 800A0860 A00601A2 */  lhz       r0, 0x1a2(r6)
/* 09D864 800A0864 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 09D868 800A0868 40820018 */  bne       lbl_800A0880
/* 09D86C 800A086C 4BFFCD25 */  bl        OSSaveContext
/* 09D870 800A0870 28030000 */  cmplwi    r3, 0x0
/* 09D874 800A0874 4182000C */  beq       lbl_800A0880
/* 09D878 800A0878 38600000 */  li        r3, 0x0
/* 09D87C 800A087C 48000100 */  b         lbl_800A097C
lbl_800A0880:
/* 09D880 800A0880 818D8748 */  lwz       r12, SwitchThreadCallback@sda21(r0)
/* 09D884 800A0884 3FC08000 */  lis       r30, 0x8000
/* 09D888 800A0888 807E00E4 */  lwz       r3, 0xe4(r30)
/* 09D88C 800A088C 38800000 */  li        r4, 0x0
/* 09D890 800A0890 7D8803A6 */  mtlr      r12
/* 09D894 800A0894 4E800021 */  blrl
/* 09D898 800A0898 800D8B60 */  lwz       r0, RunQueueBits@sda21(r0)
/* 09D89C 800A089C 38600000 */  li        r3, 0x0
/* 09D8A0 800A08A0 907E00E4 */  stw       r3, 0xe4(r30)
/* 09D8A4 800A08A4 28000000 */  cmplwi    r0, 0x0
/* 09D8A8 800A08A8 40820034 */  bne       lbl_800A08DC
/* 09D8AC 800A08AC 387F0730 */  addi      r3, r31, 0x730
/* 09D8B0 800A08B0 4BFFCC79 */  bl        OSSetCurrentContext
lbl_800A08B4:
/* 09D8B4 800A08B4 4BFFD9A9 */  bl        OSEnableInterrupts
lbl_800A08B8:
/* 09D8B8 800A08B8 800D8B60 */  lwz       r0, RunQueueBits@sda21(r0)
/* 09D8BC 800A08BC 28000000 */  cmplwi    r0, 0x0
/* 09D8C0 800A08C0 4182FFF8 */  beq       lbl_800A08B8
/* 09D8C4 800A08C4 4BFFD985 */  bl        OSDisableInterrupts
/* 09D8C8 800A08C8 800D8B60 */  lwz       r0, RunQueueBits@sda21(r0)
/* 09D8CC 800A08CC 28000000 */  cmplwi    r0, 0x0
/* 09D8D0 800A08D0 4182FFE4 */  beq       lbl_800A08B4
/* 09D8D4 800A08D4 387F0730 */  addi      r3, r31, 0x730
/* 09D8D8 800A08D8 4BFFCE19 */  bl        OSClearContext
lbl_800A08DC:
/* 09D8DC 800A08DC 38600000 */  li        r3, 0x0
/* 09D8E0 800A08E0 906D8B64 */  stw       r3, RunQueueHint@sda21(r0)
/* 09D8E4 800A08E4 800D8B60 */  lwz       r0, RunQueueBits@sda21(r0)
/* 09D8E8 800A08E8 7C070034 */  cntlzw    r7, r0
/* 09D8EC 800A08EC 54E01838 */  slwi      r0, r7, 3
/* 09D8F0 800A08F0 7C9F0214 */  add       r4, r31, r0
/* 09D8F4 800A08F4 80A40000 */  lwz       r5, 0x0(r4)
/* 09D8F8 800A08F8 80C502E0 */  lwz       r6, 0x2e0(r5)
/* 09D8FC 800A08FC 3BC50000 */  addi      r30, r5, 0x0
/* 09D900 800A0900 28060000 */  cmplwi    r6, 0x0
/* 09D904 800A0904 4082000C */  bne       lbl_800A0910
/* 09D908 800A0908 90640004 */  stw       r3, 0x4(r4)
/* 09D90C 800A090C 48000008 */  b         lbl_800A0914
lbl_800A0910:
/* 09D910 800A0910 906602E4 */  stw       r3, 0x2e4(r6)
lbl_800A0914:
/* 09D914 800A0914 90C40000 */  stw       r6, 0x0(r4)
/* 09D918 800A0918 80040000 */  lwz       r0, 0x0(r4)
/* 09D91C 800A091C 28000000 */  cmplwi    r0, 0x0
/* 09D920 800A0920 4082001C */  bne       lbl_800A093C
/* 09D924 800A0924 2007001F */  subfic    r0, r7, 0x1f
/* 09D928 800A0928 808D8B60 */  lwz       r4, RunQueueBits@sda21(r0)
/* 09D92C 800A092C 38600001 */  li        r3, 0x1
/* 09D930 800A0930 7C600030 */  slw       r0, r3, r0
/* 09D934 800A0934 7C800078 */  andc      r0, r4, r0
/* 09D938 800A0938 900D8B60 */  stw       r0, RunQueueBits@sda21(r0)
lbl_800A093C:
/* 09D93C 800A093C 38000000 */  li        r0, 0x0
/* 09D940 800A0940 901E02DC */  stw       r0, 0x2dc(r30)
/* 09D944 800A0944 38000002 */  li        r0, 0x2
/* 09D948 800A0948 3FE08000 */  lis       r31, 0x8000
/* 09D94C 800A094C B01E02C8 */  sth       r0, 0x2c8(r30)
/* 09D950 800A0950 7FC4F378 */  mr        r4, r30
/* 09D954 800A0954 818D8748 */  lwz       r12, SwitchThreadCallback@sda21(r0)
/* 09D958 800A0958 807F00E4 */  lwz       r3, 0xe4(r31)
/* 09D95C 800A095C 7D8803A6 */  mtlr      r12
/* 09D960 800A0960 4E800021 */  blrl
/* 09D964 800A0964 93DF00E4 */  stw       r30, 0xe4(r31)
/* 09D968 800A0968 7FC3F378 */  mr        r3, r30
/* 09D96C 800A096C 4BFFCBBD */  bl        OSSetCurrentContext
/* 09D970 800A0970 7FC3F378 */  mr        r3, r30
/* 09D974 800A0974 4BFFCC9D */  bl        OSLoadContext
/* 09D978 800A0978 7FC3F378 */  mr        r3, r30
lbl_800A097C:
/* 09D97C 800A097C 8001001C */  lwz       r0, 0x1c(r1)
/* 09D980 800A0980 83E10014 */  lwz       r31, 0x14(r1)
/* 09D984 800A0984 83C10010 */  lwz       r30, 0x10(r1)
/* 09D988 800A0988 38210018 */  addi      r1, r1, 0x18
/* 09D98C 800A098C 7C0803A6 */  mtlr      r0
/* 09D990 800A0990 4E800020 */  blr

glabel __OSReschedule
/* 09D994 800A0994 7C0802A6 */  mflr      r0
/* 09D998 800A0998 90010004 */  stw       r0, 0x4(r1)
/* 09D99C 800A099C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09D9A0 800A09A0 800D8B64 */  lwz       r0, RunQueueHint@sda21(r0)
/* 09D9A4 800A09A4 2C000000 */  cmpwi     r0, 0x0
/* 09D9A8 800A09A8 4182000C */  beq       lbl_800A09B4
/* 09D9AC 800A09AC 38600000 */  li        r3, 0x0
/* 09D9B0 800A09B0 4BFFFDBD */  bl        SelectThread
lbl_800A09B4:
/* 09D9B4 800A09B4 8001000C */  lwz       r0, 0xc(r1)
/* 09D9B8 800A09B8 38210008 */  addi      r1, r1, 0x8
/* 09D9BC 800A09BC 7C0803A6 */  mtlr      r0
/* 09D9C0 800A09C0 4E800020 */  blr

glabel OSCreateThread
/* 09D9C4 800A09C4 7C0802A6 */  mflr      r0
/* 09D9C8 800A09C8 2C080000 */  cmpwi     r8, 0x0
/* 09D9CC 800A09CC 90010004 */  stw       r0, 0x4(r1)
/* 09D9D0 800A09D0 9421FFB0 */  stwu      r1, -0x50(r1)
/* 09D9D4 800A09D4 BF61003C */  stmw      r27, 0x3c(r1)
/* 09D9D8 800A09D8 3BE30000 */  addi      r31, r3, 0x0
/* 09D9DC 800A09DC 3B650000 */  addi      r27, r5, 0x0
/* 09D9E0 800A09E0 3B860000 */  addi      r28, r6, 0x0
/* 09D9E4 800A09E4 3BA70000 */  addi      r29, r7, 0x0
/* 09D9E8 800A09E8 4180000C */  blt       lbl_800A09F4
/* 09D9EC 800A09EC 2C08001F */  cmpwi     r8, 0x1f
/* 09D9F0 800A09F0 4081000C */  ble       lbl_800A09FC
lbl_800A09F4:
/* 09D9F4 800A09F4 38600000 */  li        r3, 0x0
/* 09D9F8 800A09F8 480001A0 */  b         lbl_800A0B98
lbl_800A09FC:
/* 09D9FC 800A09FC 38C00001 */  li        r6, 0x1
/* 09DA00 800A0A00 B0DF02C8 */  sth       r6, 0x2c8(r31)
/* 09DA04 800A0A04 552007FE */  clrlwi    r0, r9, 31
/* 09DA08 800A0A08 57870038 */  clrrwi    r7, r28, 3
/* 09DA0C 800A0A0C B01F02CA */  sth       r0, 0x2ca(r31)
/* 09DA10 800A0A10 3800FFFF */  li        r0, -0x1
/* 09DA14 800A0A14 3BC00000 */  li        r30, 0x0
/* 09DA18 800A0A18 911F02D4 */  stw       r8, 0x2d4(r31)
/* 09DA1C 800A0A1C 387F0000 */  addi      r3, r31, 0x0
/* 09DA20 800A0A20 38A7FFF8 */  subi      r5, r7, 0x8
/* 09DA24 800A0A24 911F02D0 */  stw       r8, 0x2d0(r31)
/* 09DA28 800A0A28 90DF02CC */  stw       r6, 0x2cc(r31)
/* 09DA2C 800A0A2C 901F02D8 */  stw       r0, 0x2d8(r31)
/* 09DA30 800A0A30 93DF02F0 */  stw       r30, 0x2f0(r31)
/* 09DA34 800A0A34 93DF02EC */  stw       r30, 0x2ec(r31)
/* 09DA38 800A0A38 93DF02E8 */  stw       r30, 0x2e8(r31)
/* 09DA3C 800A0A3C 93DF02F8 */  stw       r30, 0x2f8(r31)
/* 09DA40 800A0A40 93DF02F4 */  stw       r30, 0x2f4(r31)
/* 09DA44 800A0A44 93C7FFF8 */  stw       r30, -0x8(r7)
/* 09DA48 800A0A48 93C7FFFC */  stw       r30, -0x4(r7)
/* 09DA4C 800A0A4C 4BFFCCC9 */  bl        OSInitContext
/* 09DA50 800A0A50 3C60800A */  lis       r3, OSExitThread@ha
/* 09DA54 800A0A54 38030BAC */  addi      r0, r3, OSExitThread@l
/* 09DA58 800A0A58 901F0084 */  stw       r0, 0x84(r31)
/* 09DA5C 800A0A5C 3C60DEAE */  lis       r3, 0xdeae
/* 09DA60 800A0A60 7C9DE050 */  subf      r4, r29, r28
/* 09DA64 800A0A64 937F000C */  stw       r27, 0xc(r31)
/* 09DA68 800A0A68 3803BABE */  subi      r0, r3, 0x4542
/* 09DA6C 800A0A6C 939F0304 */  stw       r28, 0x304(r31)
/* 09DA70 800A0A70 909F0308 */  stw       r4, 0x308(r31)
/* 09DA74 800A0A74 807F0308 */  lwz       r3, 0x308(r31)
/* 09DA78 800A0A78 90030000 */  stw       r0, 0x0(r3)
/* 09DA7C 800A0A7C 93DF030C */  stw       r30, 0x30c(r31)
/* 09DA80 800A0A80 93DF0310 */  stw       r30, 0x310(r31)
/* 09DA84 800A0A84 93DF0314 */  stw       r30, 0x314(r31)
/* 09DA88 800A0A88 4BFFD7C1 */  bl        OSDisableInterrupts
/* 09DA8C 800A0A8C 3C808018 */  lis       r4, __OSErrorTable@ha
/* 09DA90 800A0A90 388472D0 */  addi      r4, r4, __OSErrorTable@l
/* 09DA94 800A0A94 80040040 */  lwz       r0, 0x40(r4)
/* 09DA98 800A0A98 28000000 */  cmplwi    r0, 0x0
/* 09DA9C 800A0A9C 418200C4 */  beq       lbl_800A0B60
/* 09DAA0 800A0AA0 809F019C */  lwz       r4, 0x19c(r31)
/* 09DAA4 800A0AA4 38000004 */  li        r0, 0x4
/* 09DAA8 800A0AA8 7C0903A6 */  mtctr     r0
/* 09DAAC 800A0AAC 38BF0000 */  addi      r5, r31, 0x0
/* 09DAB0 800A0AB0 60800900 */  ori       r0, r4, 0x900
/* 09DAB4 800A0AB4 901F019C */  stw       r0, 0x19c(r31)
/* 09DAB8 800A0AB8 A01F01A2 */  lhz       r0, 0x1a2(r31)
/* 09DABC 800A0ABC 60000001 */  ori       r0, r0, 0x1
/* 09DAC0 800A0AC0 B01F01A2 */  sth       r0, 0x1a2(r31)
/* 09DAC4 800A0AC4 800D8738 */  lwz       r0, D_8018B6B8@sda21(r0)
/* 09DAC8 800A0AC8 54000638 */  rlwinm    r0, r0, 0, 24, 28
/* 09DACC 800A0ACC 60000004 */  ori       r0, r0, 0x4
/* 09DAD0 800A0AD0 901F0194 */  stw       r0, 0x194(r31)
lbl_800A0AD4:
/* 09DAD4 800A0AD4 3800FFFF */  li        r0, -0x1
/* 09DAD8 800A0AD8 90050094 */  stw       r0, 0x94(r5)
/* 09DADC 800A0ADC 90050090 */  stw       r0, 0x90(r5)
/* 09DAE0 800A0AE0 900501CC */  stw       r0, 0x1cc(r5)
/* 09DAE4 800A0AE4 900501C8 */  stw       r0, 0x1c8(r5)
/* 09DAE8 800A0AE8 9005009C */  stw       r0, 0x9c(r5)
/* 09DAEC 800A0AEC 90050098 */  stw       r0, 0x98(r5)
/* 09DAF0 800A0AF0 900501D4 */  stw       r0, 0x1d4(r5)
/* 09DAF4 800A0AF4 900501D0 */  stw       r0, 0x1d0(r5)
/* 09DAF8 800A0AF8 900500A4 */  stw       r0, 0xa4(r5)
/* 09DAFC 800A0AFC 900500A0 */  stw       r0, 0xa0(r5)
/* 09DB00 800A0B00 900501DC */  stw       r0, 0x1dc(r5)
/* 09DB04 800A0B04 900501D8 */  stw       r0, 0x1d8(r5)
/* 09DB08 800A0B08 900500AC */  stw       r0, 0xac(r5)
/* 09DB0C 800A0B0C 900500A8 */  stw       r0, 0xa8(r5)
/* 09DB10 800A0B10 900501E4 */  stw       r0, 0x1e4(r5)
/* 09DB14 800A0B14 900501E0 */  stw       r0, 0x1e0(r5)
/* 09DB18 800A0B18 900500B4 */  stw       r0, 0xb4(r5)
/* 09DB1C 800A0B1C 900500B0 */  stw       r0, 0xb0(r5)
/* 09DB20 800A0B20 900501EC */  stw       r0, 0x1ec(r5)
/* 09DB24 800A0B24 900501E8 */  stw       r0, 0x1e8(r5)
/* 09DB28 800A0B28 900500BC */  stw       r0, 0xbc(r5)
/* 09DB2C 800A0B2C 900500B8 */  stw       r0, 0xb8(r5)
/* 09DB30 800A0B30 900501F4 */  stw       r0, 0x1f4(r5)
/* 09DB34 800A0B34 900501F0 */  stw       r0, 0x1f0(r5)
/* 09DB38 800A0B38 900500C4 */  stw       r0, 0xc4(r5)
/* 09DB3C 800A0B3C 900500C0 */  stw       r0, 0xc0(r5)
/* 09DB40 800A0B40 900501FC */  stw       r0, 0x1fc(r5)
/* 09DB44 800A0B44 900501F8 */  stw       r0, 0x1f8(r5)
/* 09DB48 800A0B48 900500CC */  stw       r0, 0xcc(r5)
/* 09DB4C 800A0B4C 900500C8 */  stw       r0, 0xc8(r5)
/* 09DB50 800A0B50 90050204 */  stw       r0, 0x204(r5)
/* 09DB54 800A0B54 90050200 */  stw       r0, 0x200(r5)
/* 09DB58 800A0B58 38A50040 */  addi      r5, r5, 0x40
/* 09DB5C 800A0B5C 4200FF78 */  bdnz      lbl_800A0AD4
lbl_800A0B60:
/* 09DB60 800A0B60 3C808000 */  lis       r4, 0x8000
/* 09DB64 800A0B64 38A400DC */  addi      r5, r4, 0xdc
/* 09DB68 800A0B68 84C50004 */  lwzu      r6, 0x4(r5)
/* 09DB6C 800A0B6C 28060000 */  cmplwi    r6, 0x0
/* 09DB70 800A0B70 4082000C */  bne       lbl_800A0B7C
/* 09DB74 800A0B74 93E400DC */  stw       r31, 0xdc(r4)
/* 09DB78 800A0B78 48000008 */  b         lbl_800A0B80
lbl_800A0B7C:
/* 09DB7C 800A0B7C 93E602FC */  stw       r31, 0x2fc(r6)
lbl_800A0B80:
/* 09DB80 800A0B80 90DF0300 */  stw       r6, 0x300(r31)
/* 09DB84 800A0B84 38000000 */  li        r0, 0x0
/* 09DB88 800A0B88 901F02FC */  stw       r0, 0x2fc(r31)
/* 09DB8C 800A0B8C 93E50000 */  stw       r31, 0x0(r5)
/* 09DB90 800A0B90 4BFFD6E1 */  bl        OSRestoreInterrupts
/* 09DB94 800A0B94 38600001 */  li        r3, 0x1
lbl_800A0B98:
/* 09DB98 800A0B98 BB61003C */  lmw       r27, 0x3c(r1)
/* 09DB9C 800A0B9C 80010054 */  lwz       r0, 0x54(r1)
/* 09DBA0 800A0BA0 38210050 */  addi      r1, r1, 0x50
/* 09DBA4 800A0BA4 7C0803A6 */  mtlr      r0
/* 09DBA8 800A0BA8 4E800020 */  blr

glabel OSExitThread
/* 09DBAC 800A0BAC 7C0802A6 */  mflr      r0
/* 09DBB0 800A0BB0 90010004 */  stw       r0, 0x4(r1)
/* 09DBB4 800A0BB4 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09DBB8 800A0BB8 93E1001C */  stw       r31, 0x1c(r1)
/* 09DBBC 800A0BBC 93C10018 */  stw       r30, 0x18(r1)
/* 09DBC0 800A0BC0 93A10014 */  stw       r29, 0x14(r1)
/* 09DBC4 800A0BC4 93810010 */  stw       r28, 0x10(r1)
/* 09DBC8 800A0BC8 7C7C1B78 */  mr        r28, r3
/* 09DBCC 800A0BCC 4BFFD67D */  bl        OSDisableInterrupts
/* 09DBD0 800A0BD0 3FE08000 */  lis       r31, 0x8000
/* 09DBD4 800A0BD4 83DF00E4 */  lwz       r30, 0xe4(r31)
/* 09DBD8 800A0BD8 3BA30000 */  addi      r29, r3, 0x0
/* 09DBDC 800A0BDC 387E0000 */  addi      r3, r30, 0x0
/* 09DBE0 800A0BE0 4BFFCB11 */  bl        OSClearContext
/* 09DBE4 800A0BE4 A01E02CA */  lhz       r0, 0x2ca(r30)
/* 09DBE8 800A0BE8 540007FF */  clrlwi.   r0, r0, 31
/* 09DBEC 800A0BEC 41820044 */  beq       lbl_800A0C30
/* 09DBF0 800A0BF0 809E02FC */  lwz       r4, 0x2fc(r30)
/* 09DBF4 800A0BF4 80BE0300 */  lwz       r5, 0x300(r30)
/* 09DBF8 800A0BF8 28040000 */  cmplwi    r4, 0x0
/* 09DBFC 800A0BFC 4082000C */  bne       lbl_800A0C08
/* 09DC00 800A0C00 90BF00E0 */  stw       r5, 0xe0(r31)
/* 09DC04 800A0C04 48000008 */  b         lbl_800A0C0C
lbl_800A0C08:
/* 09DC08 800A0C08 90A40300 */  stw       r5, 0x300(r4)
lbl_800A0C0C:
/* 09DC0C 800A0C0C 28050000 */  cmplwi    r5, 0x0
/* 09DC10 800A0C10 40820010 */  bne       lbl_800A0C20
/* 09DC14 800A0C14 3C608000 */  lis       r3, 0x8000
/* 09DC18 800A0C18 908300DC */  stw       r4, 0xdc(r3)
/* 09DC1C 800A0C1C 48000008 */  b         lbl_800A0C24
lbl_800A0C20:
/* 09DC20 800A0C20 908502FC */  stw       r4, 0x2fc(r5)
lbl_800A0C24:
/* 09DC24 800A0C24 38000000 */  li        r0, 0x0
/* 09DC28 800A0C28 B01E02C8 */  sth       r0, 0x2c8(r30)
/* 09DC2C 800A0C2C 48000010 */  b         lbl_800A0C3C
lbl_800A0C30:
/* 09DC30 800A0C30 38000008 */  li        r0, 0x8
/* 09DC34 800A0C34 B01E02C8 */  sth       r0, 0x2c8(r30)
/* 09DC38 800A0C38 939E02D8 */  stw       r28, 0x2d8(r30)
lbl_800A0C3C:
/* 09DC3C 800A0C3C 7FC3F378 */  mr        r3, r30
/* 09DC40 800A0C40 4BFFE371 */  bl        __OSUnlockAllMutex
/* 09DC44 800A0C44 387E02E8 */  addi      r3, r30, 0x2e8
/* 09DC48 800A0C48 480006E9 */  bl        OSWakeupThread
/* 09DC4C 800A0C4C 38000001 */  li        r0, 0x1
/* 09DC50 800A0C50 900D8B64 */  stw       r0, RunQueueHint@sda21(r0)
/* 09DC54 800A0C54 800D8B64 */  lwz       r0, RunQueueHint@sda21(r0)
/* 09DC58 800A0C58 2C000000 */  cmpwi     r0, 0x0
/* 09DC5C 800A0C5C 4182000C */  beq       lbl_800A0C68
/* 09DC60 800A0C60 38600000 */  li        r3, 0x0
/* 09DC64 800A0C64 4BFFFB09 */  bl        SelectThread
lbl_800A0C68:
/* 09DC68 800A0C68 7FA3EB78 */  mr        r3, r29
/* 09DC6C 800A0C6C 4BFFD605 */  bl        OSRestoreInterrupts
/* 09DC70 800A0C70 80010024 */  lwz       r0, 0x24(r1)
/* 09DC74 800A0C74 83E1001C */  lwz       r31, 0x1c(r1)
/* 09DC78 800A0C78 83C10018 */  lwz       r30, 0x18(r1)
/* 09DC7C 800A0C7C 83A10014 */  lwz       r29, 0x14(r1)
/* 09DC80 800A0C80 83810010 */  lwz       r28, 0x10(r1)
/* 09DC84 800A0C84 38210020 */  addi      r1, r1, 0x20
/* 09DC88 800A0C88 7C0803A6 */  mtlr      r0
/* 09DC8C 800A0C8C 4E800020 */  blr

glabel OSCancelThread
/* 09DC90 800A0C90 7C0802A6 */  mflr      r0
/* 09DC94 800A0C94 90010004 */  stw       r0, 0x4(r1)
/* 09DC98 800A0C98 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09DC9C 800A0C9C 93E1001C */  stw       r31, 0x1c(r1)
/* 09DCA0 800A0CA0 93C10018 */  stw       r30, 0x18(r1)
/* 09DCA4 800A0CA4 7C7E1B78 */  mr        r30, r3
/* 09DCA8 800A0CA8 93A10014 */  stw       r29, 0x14(r1)
/* 09DCAC 800A0CAC 4BFFD59D */  bl        OSDisableInterrupts
/* 09DCB0 800A0CB0 A01E02C8 */  lhz       r0, 0x2c8(r30)
/* 09DCB4 800A0CB4 3BE30000 */  addi      r31, r3, 0x0
/* 09DCB8 800A0CB8 2C000003 */  cmpwi     r0, 0x3
/* 09DCBC 800A0CBC 418200DC */  beq       lbl_800A0D98
/* 09DCC0 800A0CC0 40800014 */  bge       lbl_800A0CD4
/* 09DCC4 800A0CC4 2C000001 */  cmpwi     r0, 0x1
/* 09DCC8 800A0CC8 41820018 */  beq       lbl_800A0CE0
/* 09DCCC 800A0CCC 4080002C */  bge       lbl_800A0CF8
/* 09DCD0 800A0CD0 480000C8 */  b         lbl_800A0D98
lbl_800A0CD4:
/* 09DCD4 800A0CD4 2C000005 */  cmpwi     r0, 0x5
/* 09DCD8 800A0CD8 408000C0 */  bge       lbl_800A0D98
/* 09DCDC 800A0CDC 48000028 */  b         lbl_800A0D04
lbl_800A0CE0:
/* 09DCE0 800A0CE0 801E02CC */  lwz       r0, 0x2cc(r30)
/* 09DCE4 800A0CE4 2C000000 */  cmpwi     r0, 0x0
/* 09DCE8 800A0CE8 418100BC */  bgt       lbl_800A0DA4
/* 09DCEC 800A0CEC 7FC3F378 */  mr        r3, r30
/* 09DCF0 800A0CF0 4BFFF819 */  bl        UnsetRun
/* 09DCF4 800A0CF4 480000B0 */  b         lbl_800A0DA4
lbl_800A0CF8:
/* 09DCF8 800A0CF8 38000001 */  li        r0, 0x1
/* 09DCFC 800A0CFC 900D8B64 */  stw       r0, RunQueueHint@sda21(r0)
/* 09DD00 800A0D00 480000A4 */  b         lbl_800A0DA4
lbl_800A0D04:
/* 09DD04 800A0D04 809E02E0 */  lwz       r4, 0x2e0(r30)
/* 09DD08 800A0D08 80BE02E4 */  lwz       r5, 0x2e4(r30)
/* 09DD0C 800A0D0C 28040000 */  cmplwi    r4, 0x0
/* 09DD10 800A0D10 40820010 */  bne       lbl_800A0D20
/* 09DD14 800A0D14 807E02DC */  lwz       r3, 0x2dc(r30)
/* 09DD18 800A0D18 90A30004 */  stw       r5, 0x4(r3)
/* 09DD1C 800A0D1C 48000008 */  b         lbl_800A0D24
lbl_800A0D20:
/* 09DD20 800A0D20 90A402E4 */  stw       r5, 0x2e4(r4)
lbl_800A0D24:
/* 09DD24 800A0D24 28050000 */  cmplwi    r5, 0x0
/* 09DD28 800A0D28 40820010 */  bne       lbl_800A0D38
/* 09DD2C 800A0D2C 807E02DC */  lwz       r3, 0x2dc(r30)
/* 09DD30 800A0D30 90830000 */  stw       r4, 0x0(r3)
/* 09DD34 800A0D34 48000008 */  b         lbl_800A0D3C
lbl_800A0D38:
/* 09DD38 800A0D38 908502E0 */  stw       r4, 0x2e0(r5)
lbl_800A0D3C:
/* 09DD3C 800A0D3C 38000000 */  li        r0, 0x0
/* 09DD40 800A0D40 901E02DC */  stw       r0, 0x2dc(r30)
/* 09DD44 800A0D44 801E02CC */  lwz       r0, 0x2cc(r30)
/* 09DD48 800A0D48 2C000000 */  cmpwi     r0, 0x0
/* 09DD4C 800A0D4C 41810058 */  bgt       lbl_800A0DA4
/* 09DD50 800A0D50 807E02F0 */  lwz       r3, 0x2f0(r30)
/* 09DD54 800A0D54 28030000 */  cmplwi    r3, 0x0
/* 09DD58 800A0D58 4182004C */  beq       lbl_800A0DA4
/* 09DD5C 800A0D5C 83A30008 */  lwz       r29, 0x8(r3)
lbl_800A0D60:
/* 09DD60 800A0D60 801D02CC */  lwz       r0, 0x2cc(r29)
/* 09DD64 800A0D64 2C000000 */  cmpwi     r0, 0x0
/* 09DD68 800A0D68 4181003C */  bgt       lbl_800A0DA4
/* 09DD6C 800A0D6C 7FA3EB78 */  mr        r3, r29
/* 09DD70 800A0D70 4BFFF801 */  bl        __OSGetEffectivePriority
/* 09DD74 800A0D74 801D02D0 */  lwz       r0, 0x2d0(r29)
/* 09DD78 800A0D78 38830000 */  addi      r4, r3, 0x0
/* 09DD7C 800A0D7C 7C002000 */  cmpw      r0, r4
/* 09DD80 800A0D80 41820024 */  beq       lbl_800A0DA4
/* 09DD84 800A0D84 7FA3EB78 */  mr        r3, r29
/* 09DD88 800A0D88 4BFFF825 */  bl        SetEffectivePriority
/* 09DD8C 800A0D8C 7C7D1B79 */  mr.       r29, r3
/* 09DD90 800A0D90 4082FFD0 */  bne       lbl_800A0D60
/* 09DD94 800A0D94 48000010 */  b         lbl_800A0DA4
lbl_800A0D98:
/* 09DD98 800A0D98 7FE3FB78 */  mr        r3, r31
/* 09DD9C 800A0D9C 4BFFD4D5 */  bl        OSRestoreInterrupts
/* 09DDA0 800A0DA0 48000090 */  b         lbl_800A0E30
lbl_800A0DA4:
/* 09DDA4 800A0DA4 7FC3F378 */  mr        r3, r30
/* 09DDA8 800A0DA8 4BFFC949 */  bl        OSClearContext
/* 09DDAC 800A0DAC A01E02CA */  lhz       r0, 0x2ca(r30)
/* 09DDB0 800A0DB0 540007FF */  clrlwi.   r0, r0, 31
/* 09DDB4 800A0DB4 41820048 */  beq       lbl_800A0DFC
/* 09DDB8 800A0DB8 809E02FC */  lwz       r4, 0x2fc(r30)
/* 09DDBC 800A0DBC 80BE0300 */  lwz       r5, 0x300(r30)
/* 09DDC0 800A0DC0 28040000 */  cmplwi    r4, 0x0
/* 09DDC4 800A0DC4 40820010 */  bne       lbl_800A0DD4
/* 09DDC8 800A0DC8 3C608000 */  lis       r3, 0x8000
/* 09DDCC 800A0DCC 90A300E0 */  stw       r5, 0xe0(r3)
/* 09DDD0 800A0DD0 48000008 */  b         lbl_800A0DD8
lbl_800A0DD4:
/* 09DDD4 800A0DD4 90A40300 */  stw       r5, 0x300(r4)
lbl_800A0DD8:
/* 09DDD8 800A0DD8 28050000 */  cmplwi    r5, 0x0
/* 09DDDC 800A0DDC 40820010 */  bne       lbl_800A0DEC
/* 09DDE0 800A0DE0 3C608000 */  lis       r3, 0x8000
/* 09DDE4 800A0DE4 908300DC */  stw       r4, 0xdc(r3)
/* 09DDE8 800A0DE8 48000008 */  b         lbl_800A0DF0
lbl_800A0DEC:
/* 09DDEC 800A0DEC 908502FC */  stw       r4, 0x2fc(r5)
lbl_800A0DF0:
/* 09DDF0 800A0DF0 38000000 */  li        r0, 0x0
/* 09DDF4 800A0DF4 B01E02C8 */  sth       r0, 0x2c8(r30)
/* 09DDF8 800A0DF8 4800000C */  b         lbl_800A0E04
lbl_800A0DFC:
/* 09DDFC 800A0DFC 38000008 */  li        r0, 0x8
/* 09DE00 800A0E00 B01E02C8 */  sth       r0, 0x2c8(r30)
lbl_800A0E04:
/* 09DE04 800A0E04 7FC3F378 */  mr        r3, r30
/* 09DE08 800A0E08 4BFFE1A9 */  bl        __OSUnlockAllMutex
/* 09DE0C 800A0E0C 387E02E8 */  addi      r3, r30, 0x2e8
/* 09DE10 800A0E10 48000521 */  bl        OSWakeupThread
/* 09DE14 800A0E14 800D8B64 */  lwz       r0, RunQueueHint@sda21(r0)
/* 09DE18 800A0E18 2C000000 */  cmpwi     r0, 0x0
/* 09DE1C 800A0E1C 4182000C */  beq       lbl_800A0E28
/* 09DE20 800A0E20 38600000 */  li        r3, 0x0
/* 09DE24 800A0E24 4BFFF949 */  bl        SelectThread
lbl_800A0E28:
/* 09DE28 800A0E28 7FE3FB78 */  mr        r3, r31
/* 09DE2C 800A0E2C 4BFFD445 */  bl        OSRestoreInterrupts
lbl_800A0E30:
/* 09DE30 800A0E30 80010024 */  lwz       r0, 0x24(r1)
/* 09DE34 800A0E34 83E1001C */  lwz       r31, 0x1c(r1)
/* 09DE38 800A0E38 83C10018 */  lwz       r30, 0x18(r1)
/* 09DE3C 800A0E3C 83A10014 */  lwz       r29, 0x14(r1)
/* 09DE40 800A0E40 38210020 */  addi      r1, r1, 0x20
/* 09DE44 800A0E44 7C0803A6 */  mtlr      r0
/* 09DE48 800A0E48 4E800020 */  blr

glabel OSResumeThread
/* 09DE4C 800A0E4C 7C0802A6 */  mflr      r0
/* 09DE50 800A0E50 90010004 */  stw       r0, 0x4(r1)
/* 09DE54 800A0E54 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09DE58 800A0E58 93E10024 */  stw       r31, 0x24(r1)
/* 09DE5C 800A0E5C 93C10020 */  stw       r30, 0x20(r1)
/* 09DE60 800A0E60 93A1001C */  stw       r29, 0x1c(r1)
/* 09DE64 800A0E64 7C7D1B78 */  mr        r29, r3
/* 09DE68 800A0E68 4BFFD3E1 */  bl        OSDisableInterrupts
/* 09DE6C 800A0E6C 809D02CC */  lwz       r4, 0x2cc(r29)
/* 09DE70 800A0E70 3BE30000 */  addi      r31, r3, 0x0
/* 09DE74 800A0E74 3804FFFF */  subi      r0, r4, 0x1
/* 09DE78 800A0E78 901D02CC */  stw       r0, 0x2cc(r29)
/* 09DE7C 800A0E7C 7C9E2378 */  mr        r30, r4
/* 09DE80 800A0E80 801D02CC */  lwz       r0, 0x2cc(r29)
/* 09DE84 800A0E84 2C000000 */  cmpwi     r0, 0x0
/* 09DE88 800A0E88 40800010 */  bge       lbl_800A0E98
/* 09DE8C 800A0E8C 38000000 */  li        r0, 0x0
/* 09DE90 800A0E90 901D02CC */  stw       r0, 0x2cc(r29)
/* 09DE94 800A0E94 48000218 */  b         lbl_800A10AC
lbl_800A0E98:
/* 09DE98 800A0E98 40820214 */  bne       lbl_800A10AC
/* 09DE9C 800A0E9C A01D02C8 */  lhz       r0, 0x2c8(r29)
/* 09DEA0 800A0EA0 2C000004 */  cmpwi     r0, 0x4
/* 09DEA4 800A0EA4 418200B8 */  beq       lbl_800A0F5C
/* 09DEA8 800A0EA8 408001F0 */  bge       lbl_800A1098
/* 09DEAC 800A0EAC 2C000001 */  cmpwi     r0, 0x1
/* 09DEB0 800A0EB0 41820008 */  beq       lbl_800A0EB8
/* 09DEB4 800A0EB4 480001E4 */  b         lbl_800A1098
lbl_800A0EB8:
/* 09DEB8 800A0EB8 801D02D4 */  lwz       r0, 0x2d4(r29)
/* 09DEBC 800A0EBC 807D02F4 */  lwz       r3, 0x2f4(r29)
/* 09DEC0 800A0EC0 48000024 */  b         lbl_800A0EE4
lbl_800A0EC4:
/* 09DEC4 800A0EC4 80830000 */  lwz       r4, 0x0(r3)
/* 09DEC8 800A0EC8 28040000 */  cmplwi    r4, 0x0
/* 09DECC 800A0ECC 41820014 */  beq       lbl_800A0EE0
/* 09DED0 800A0ED0 808402D0 */  lwz       r4, 0x2d0(r4)
/* 09DED4 800A0ED4 7C040000 */  cmpw      r4, r0
/* 09DED8 800A0ED8 40800008 */  bge       lbl_800A0EE0
/* 09DEDC 800A0EDC 7C802378 */  mr        r0, r4
lbl_800A0EE0:
/* 09DEE0 800A0EE0 80630010 */  lwz       r3, 0x10(r3)
lbl_800A0EE4:
/* 09DEE4 800A0EE4 28030000 */  cmplwi    r3, 0x0
/* 09DEE8 800A0EE8 4082FFDC */  bne       lbl_800A0EC4
/* 09DEEC 800A0EEC 901D02D0 */  stw       r0, 0x2d0(r29)
/* 09DEF0 800A0EF0 3C608018 */  lis       r3, RunQueue@ha
/* 09DEF4 800A0EF4 38037398 */  addi      r0, r3, RunQueue@l
/* 09DEF8 800A0EF8 807D02D0 */  lwz       r3, 0x2d0(r29)
/* 09DEFC 800A0EFC 54631838 */  slwi      r3, r3, 3
/* 09DF00 800A0F00 7C001A14 */  add       r0, r0, r3
/* 09DF04 800A0F04 901D02DC */  stw       r0, 0x2dc(r29)
/* 09DF08 800A0F08 809D02DC */  lwz       r4, 0x2dc(r29)
/* 09DF0C 800A0F0C 80640004 */  lwz       r3, 0x4(r4)
/* 09DF10 800A0F10 28030000 */  cmplwi    r3, 0x0
/* 09DF14 800A0F14 4082000C */  bne       lbl_800A0F20
/* 09DF18 800A0F18 93A40000 */  stw       r29, 0x0(r4)
/* 09DF1C 800A0F1C 48000008 */  b         lbl_800A0F24
lbl_800A0F20:
/* 09DF20 800A0F20 93A302E0 */  stw       r29, 0x2e0(r3)
lbl_800A0F24:
/* 09DF24 800A0F24 907D02E4 */  stw       r3, 0x2e4(r29)
/* 09DF28 800A0F28 38000000 */  li        r0, 0x0
/* 09DF2C 800A0F2C 38600001 */  li        r3, 0x1
/* 09DF30 800A0F30 901D02E0 */  stw       r0, 0x2e0(r29)
/* 09DF34 800A0F34 809D02DC */  lwz       r4, 0x2dc(r29)
/* 09DF38 800A0F38 93A40004 */  stw       r29, 0x4(r4)
/* 09DF3C 800A0F3C 801D02D0 */  lwz       r0, 0x2d0(r29)
/* 09DF40 800A0F40 808D8B60 */  lwz       r4, RunQueueBits@sda21(r0)
/* 09DF44 800A0F44 2000001F */  subfic    r0, r0, 0x1f
/* 09DF48 800A0F48 7C600030 */  slw       r0, r3, r0
/* 09DF4C 800A0F4C 7C800378 */  or        r0, r4, r0
/* 09DF50 800A0F50 900D8B60 */  stw       r0, RunQueueBits@sda21(r0)
/* 09DF54 800A0F54 906D8B64 */  stw       r3, RunQueueHint@sda21(r0)
/* 09DF58 800A0F58 48000140 */  b         lbl_800A1098
lbl_800A0F5C:
/* 09DF5C 800A0F5C 809D02E0 */  lwz       r4, 0x2e0(r29)
/* 09DF60 800A0F60 80BD02E4 */  lwz       r5, 0x2e4(r29)
/* 09DF64 800A0F64 28040000 */  cmplwi    r4, 0x0
/* 09DF68 800A0F68 40820010 */  bne       lbl_800A0F78
/* 09DF6C 800A0F6C 807D02DC */  lwz       r3, 0x2dc(r29)
/* 09DF70 800A0F70 90A30004 */  stw       r5, 0x4(r3)
/* 09DF74 800A0F74 48000008 */  b         lbl_800A0F7C
lbl_800A0F78:
/* 09DF78 800A0F78 90A402E4 */  stw       r5, 0x2e4(r4)
lbl_800A0F7C:
/* 09DF7C 800A0F7C 28050000 */  cmplwi    r5, 0x0
/* 09DF80 800A0F80 40820010 */  bne       lbl_800A0F90
/* 09DF84 800A0F84 807D02DC */  lwz       r3, 0x2dc(r29)
/* 09DF88 800A0F88 90830000 */  stw       r4, 0x0(r3)
/* 09DF8C 800A0F8C 48000008 */  b         lbl_800A0F94
lbl_800A0F90:
/* 09DF90 800A0F90 908502E0 */  stw       r4, 0x2e0(r5)
lbl_800A0F94:
/* 09DF94 800A0F94 801D02D4 */  lwz       r0, 0x2d4(r29)
/* 09DF98 800A0F98 807D02F4 */  lwz       r3, 0x2f4(r29)
/* 09DF9C 800A0F9C 48000024 */  b         lbl_800A0FC0
lbl_800A0FA0:
/* 09DFA0 800A0FA0 80830000 */  lwz       r4, 0x0(r3)
/* 09DFA4 800A0FA4 28040000 */  cmplwi    r4, 0x0
/* 09DFA8 800A0FA8 41820014 */  beq       lbl_800A0FBC
/* 09DFAC 800A0FAC 808402D0 */  lwz       r4, 0x2d0(r4)
/* 09DFB0 800A0FB0 7C040000 */  cmpw      r4, r0
/* 09DFB4 800A0FB4 40800008 */  bge       lbl_800A0FBC
/* 09DFB8 800A0FB8 7C802378 */  mr        r0, r4
lbl_800A0FBC:
/* 09DFBC 800A0FBC 80630010 */  lwz       r3, 0x10(r3)
lbl_800A0FC0:
/* 09DFC0 800A0FC0 28030000 */  cmplwi    r3, 0x0
/* 09DFC4 800A0FC4 4082FFDC */  bne       lbl_800A0FA0
/* 09DFC8 800A0FC8 901D02D0 */  stw       r0, 0x2d0(r29)
/* 09DFCC 800A0FCC 809D02DC */  lwz       r4, 0x2dc(r29)
/* 09DFD0 800A0FD0 80A40000 */  lwz       r5, 0x0(r4)
/* 09DFD4 800A0FD4 48000008 */  b         lbl_800A0FDC
lbl_800A0FD8:
/* 09DFD8 800A0FD8 80A502E0 */  lwz       r5, 0x2e0(r5)
lbl_800A0FDC:
/* 09DFDC 800A0FDC 28050000 */  cmplwi    r5, 0x0
/* 09DFE0 800A0FE0 41820014 */  beq       lbl_800A0FF4
/* 09DFE4 800A0FE4 806502D0 */  lwz       r3, 0x2d0(r5)
/* 09DFE8 800A0FE8 801D02D0 */  lwz       r0, 0x2d0(r29)
/* 09DFEC 800A0FEC 7C030000 */  cmpw      r3, r0
/* 09DFF0 800A0FF0 4081FFE8 */  ble       lbl_800A0FD8
lbl_800A0FF4:
/* 09DFF4 800A0FF4 28050000 */  cmplwi    r5, 0x0
/* 09DFF8 800A0FF8 40820034 */  bne       lbl_800A102C
/* 09DFFC 800A0FFC 80640004 */  lwz       r3, 0x4(r4)
/* 09E000 800A1000 28030000 */  cmplwi    r3, 0x0
/* 09E004 800A1004 4082000C */  bne       lbl_800A1010
/* 09E008 800A1008 93A40000 */  stw       r29, 0x0(r4)
/* 09E00C 800A100C 48000008 */  b         lbl_800A1014
lbl_800A1010:
/* 09E010 800A1010 93A302E0 */  stw       r29, 0x2e0(r3)
lbl_800A1014:
/* 09E014 800A1014 907D02E4 */  stw       r3, 0x2e4(r29)
/* 09E018 800A1018 38000000 */  li        r0, 0x0
/* 09E01C 800A101C 901D02E0 */  stw       r0, 0x2e0(r29)
/* 09E020 800A1020 807D02DC */  lwz       r3, 0x2dc(r29)
/* 09E024 800A1024 93A30004 */  stw       r29, 0x4(r3)
/* 09E028 800A1028 4800002C */  b         lbl_800A1054
lbl_800A102C:
/* 09E02C 800A102C 90BD02E0 */  stw       r5, 0x2e0(r29)
/* 09E030 800A1030 806502E4 */  lwz       r3, 0x2e4(r5)
/* 09E034 800A1034 93A502E4 */  stw       r29, 0x2e4(r5)
/* 09E038 800A1038 28030000 */  cmplwi    r3, 0x0
/* 09E03C 800A103C 907D02E4 */  stw       r3, 0x2e4(r29)
/* 09E040 800A1040 40820010 */  bne       lbl_800A1050
/* 09E044 800A1044 807D02DC */  lwz       r3, 0x2dc(r29)
/* 09E048 800A1048 93A30000 */  stw       r29, 0x0(r3)
/* 09E04C 800A104C 48000008 */  b         lbl_800A1054
lbl_800A1050:
/* 09E050 800A1050 93A302E0 */  stw       r29, 0x2e0(r3)
lbl_800A1054:
/* 09E054 800A1054 807D02F0 */  lwz       r3, 0x2f0(r29)
/* 09E058 800A1058 28030000 */  cmplwi    r3, 0x0
/* 09E05C 800A105C 4182003C */  beq       lbl_800A1098
/* 09E060 800A1060 83A30008 */  lwz       r29, 0x8(r3)
lbl_800A1064:
/* 09E064 800A1064 801D02CC */  lwz       r0, 0x2cc(r29)
/* 09E068 800A1068 2C000000 */  cmpwi     r0, 0x0
/* 09E06C 800A106C 4181002C */  bgt       lbl_800A1098
/* 09E070 800A1070 7FA3EB78 */  mr        r3, r29
/* 09E074 800A1074 4BFFF4FD */  bl        __OSGetEffectivePriority
/* 09E078 800A1078 801D02D0 */  lwz       r0, 0x2d0(r29)
/* 09E07C 800A107C 38830000 */  addi      r4, r3, 0x0
/* 09E080 800A1080 7C002000 */  cmpw      r0, r4
/* 09E084 800A1084 41820014 */  beq       lbl_800A1098
/* 09E088 800A1088 7FA3EB78 */  mr        r3, r29
/* 09E08C 800A108C 4BFFF521 */  bl        SetEffectivePriority
/* 09E090 800A1090 7C7D1B79 */  mr.       r29, r3
/* 09E094 800A1094 4082FFD0 */  bne       lbl_800A1064
lbl_800A1098:
/* 09E098 800A1098 800D8B64 */  lwz       r0, RunQueueHint@sda21(r0)
/* 09E09C 800A109C 2C000000 */  cmpwi     r0, 0x0
/* 09E0A0 800A10A0 4182000C */  beq       lbl_800A10AC
/* 09E0A4 800A10A4 38600000 */  li        r3, 0x0
/* 09E0A8 800A10A8 4BFFF6C5 */  bl        SelectThread
lbl_800A10AC:
/* 09E0AC 800A10AC 7FE3FB78 */  mr        r3, r31
/* 09E0B0 800A10B0 4BFFD1C1 */  bl        OSRestoreInterrupts
/* 09E0B4 800A10B4 7FC3F378 */  mr        r3, r30
/* 09E0B8 800A10B8 8001002C */  lwz       r0, 0x2c(r1)
/* 09E0BC 800A10BC 83E10024 */  lwz       r31, 0x24(r1)
/* 09E0C0 800A10C0 83C10020 */  lwz       r30, 0x20(r1)
/* 09E0C4 800A10C4 83A1001C */  lwz       r29, 0x1c(r1)
/* 09E0C8 800A10C8 38210028 */  addi      r1, r1, 0x28
/* 09E0CC 800A10CC 7C0803A6 */  mtlr      r0
/* 09E0D0 800A10D0 4E800020 */  blr

glabel OSSuspendThread
/* 09E0D4 800A10D4 7C0802A6 */  mflr      r0
/* 09E0D8 800A10D8 90010004 */  stw       r0, 0x4(r1)
/* 09E0DC 800A10DC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 09E0E0 800A10E0 93E1001C */  stw       r31, 0x1c(r1)
/* 09E0E4 800A10E4 93C10018 */  stw       r30, 0x18(r1)
/* 09E0E8 800A10E8 93A10014 */  stw       r29, 0x14(r1)
/* 09E0EC 800A10EC 7C7D1B78 */  mr        r29, r3
/* 09E0F0 800A10F0 4BFFD159 */  bl        OSDisableInterrupts
/* 09E0F4 800A10F4 809D02CC */  lwz       r4, 0x2cc(r29)
/* 09E0F8 800A10F8 3BE30000 */  addi      r31, r3, 0x0
/* 09E0FC 800A10FC 38040001 */  addi      r0, r4, 0x1
/* 09E100 800A1100 7C9E2379 */  mr.       r30, r4
/* 09E104 800A1104 901D02CC */  stw       r0, 0x2cc(r29)
/* 09E108 800A1108 40820114 */  bne       lbl_800A121C
/* 09E10C 800A110C A01D02C8 */  lhz       r0, 0x2c8(r29)
/* 09E110 800A1110 2C000003 */  cmpwi     r0, 0x3
/* 09E114 800A1114 418200F4 */  beq       lbl_800A1208
/* 09E118 800A1118 40800014 */  bge       lbl_800A112C
/* 09E11C 800A111C 2C000001 */  cmpwi     r0, 0x1
/* 09E120 800A1120 41820028 */  beq       lbl_800A1148
/* 09E124 800A1124 40800014 */  bge       lbl_800A1138
/* 09E128 800A1128 480000E0 */  b         lbl_800A1208
lbl_800A112C:
/* 09E12C 800A112C 2C000005 */  cmpwi     r0, 0x5
/* 09E130 800A1130 408000D8 */  bge       lbl_800A1208
/* 09E134 800A1134 48000020 */  b         lbl_800A1154
lbl_800A1138:
/* 09E138 800A1138 38000001 */  li        r0, 0x1
/* 09E13C 800A113C 900D8B64 */  stw       r0, RunQueueHint@sda21(r0)
/* 09E140 800A1140 B01D02C8 */  sth       r0, 0x2c8(r29)
/* 09E144 800A1144 480000C4 */  b         lbl_800A1208
lbl_800A1148:
/* 09E148 800A1148 7FA3EB78 */  mr        r3, r29
/* 09E14C 800A114C 4BFFF3BD */  bl        UnsetRun
/* 09E150 800A1150 480000B8 */  b         lbl_800A1208
lbl_800A1154:
/* 09E154 800A1154 809D02E0 */  lwz       r4, 0x2e0(r29)
/* 09E158 800A1158 80BD02E4 */  lwz       r5, 0x2e4(r29)
/* 09E15C 800A115C 28040000 */  cmplwi    r4, 0x0
/* 09E160 800A1160 40820010 */  bne       lbl_800A1170
/* 09E164 800A1164 807D02DC */  lwz       r3, 0x2dc(r29)
/* 09E168 800A1168 90A30004 */  stw       r5, 0x4(r3)
/* 09E16C 800A116C 48000008 */  b         lbl_800A1174
lbl_800A1170:
/* 09E170 800A1170 90A402E4 */  stw       r5, 0x2e4(r4)
lbl_800A1174:
/* 09E174 800A1174 28050000 */  cmplwi    r5, 0x0
/* 09E178 800A1178 40820010 */  bne       lbl_800A1188
/* 09E17C 800A117C 807D02DC */  lwz       r3, 0x2dc(r29)
/* 09E180 800A1180 90830000 */  stw       r4, 0x0(r3)
/* 09E184 800A1184 48000008 */  b         lbl_800A118C
lbl_800A1188:
/* 09E188 800A1188 908502E0 */  stw       r4, 0x2e0(r5)
lbl_800A118C:
/* 09E18C 800A118C 38000020 */  li        r0, 0x20
/* 09E190 800A1190 901D02D0 */  stw       r0, 0x2d0(r29)
/* 09E194 800A1194 809D02DC */  lwz       r4, 0x2dc(r29)
/* 09E198 800A1198 80640004 */  lwz       r3, 0x4(r4)
/* 09E19C 800A119C 28030000 */  cmplwi    r3, 0x0
/* 09E1A0 800A11A0 4082000C */  bne       lbl_800A11AC
/* 09E1A4 800A11A4 93A40000 */  stw       r29, 0x0(r4)
/* 09E1A8 800A11A8 48000008 */  b         lbl_800A11B0
lbl_800A11AC:
/* 09E1AC 800A11AC 93A302E0 */  stw       r29, 0x2e0(r3)
lbl_800A11B0:
/* 09E1B0 800A11B0 907D02E4 */  stw       r3, 0x2e4(r29)
/* 09E1B4 800A11B4 38000000 */  li        r0, 0x0
/* 09E1B8 800A11B8 901D02E0 */  stw       r0, 0x2e0(r29)
/* 09E1BC 800A11BC 807D02DC */  lwz       r3, 0x2dc(r29)
/* 09E1C0 800A11C0 93A30004 */  stw       r29, 0x4(r3)
/* 09E1C4 800A11C4 807D02F0 */  lwz       r3, 0x2f0(r29)
/* 09E1C8 800A11C8 28030000 */  cmplwi    r3, 0x0
/* 09E1CC 800A11CC 4182003C */  beq       lbl_800A1208
/* 09E1D0 800A11D0 83A30008 */  lwz       r29, 0x8(r3)
lbl_800A11D4:
/* 09E1D4 800A11D4 801D02CC */  lwz       r0, 0x2cc(r29)
/* 09E1D8 800A11D8 2C000000 */  cmpwi     r0, 0x0
/* 09E1DC 800A11DC 4181002C */  bgt       lbl_800A1208
/* 09E1E0 800A11E0 7FA3EB78 */  mr        r3, r29
/* 09E1E4 800A11E4 4BFFF38D */  bl        __OSGetEffectivePriority
/* 09E1E8 800A11E8 801D02D0 */  lwz       r0, 0x2d0(r29)
/* 09E1EC 800A11EC 38830000 */  addi      r4, r3, 0x0
/* 09E1F0 800A11F0 7C002000 */  cmpw      r0, r4
/* 09E1F4 800A11F4 41820014 */  beq       lbl_800A1208
/* 09E1F8 800A11F8 7FA3EB78 */  mr        r3, r29
/* 09E1FC 800A11FC 4BFFF3B1 */  bl        SetEffectivePriority
/* 09E200 800A1200 7C7D1B79 */  mr.       r29, r3
/* 09E204 800A1204 4082FFD0 */  bne       lbl_800A11D4
lbl_800A1208:
/* 09E208 800A1208 800D8B64 */  lwz       r0, RunQueueHint@sda21(r0)
/* 09E20C 800A120C 2C000000 */  cmpwi     r0, 0x0
/* 09E210 800A1210 4182000C */  beq       lbl_800A121C
/* 09E214 800A1214 38600000 */  li        r3, 0x0
/* 09E218 800A1218 4BFFF555 */  bl        SelectThread
lbl_800A121C:
/* 09E21C 800A121C 7FE3FB78 */  mr        r3, r31
/* 09E220 800A1220 4BFFD051 */  bl        OSRestoreInterrupts
/* 09E224 800A1224 7FC3F378 */  mr        r3, r30
/* 09E228 800A1228 80010024 */  lwz       r0, 0x24(r1)
/* 09E22C 800A122C 83E1001C */  lwz       r31, 0x1c(r1)
/* 09E230 800A1230 83C10018 */  lwz       r30, 0x18(r1)
/* 09E234 800A1234 83A10014 */  lwz       r29, 0x14(r1)
/* 09E238 800A1238 38210020 */  addi      r1, r1, 0x20
/* 09E23C 800A123C 7C0803A6 */  mtlr      r0
/* 09E240 800A1240 4E800020 */  blr

glabel OSSleepThread
/* 09E244 800A1244 7C0802A6 */  mflr      r0
/* 09E248 800A1248 90010004 */  stw       r0, 0x4(r1)
/* 09E24C 800A124C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09E250 800A1250 93E10014 */  stw       r31, 0x14(r1)
/* 09E254 800A1254 93C10010 */  stw       r30, 0x10(r1)
/* 09E258 800A1258 7C7E1B78 */  mr        r30, r3
/* 09E25C 800A125C 4BFFCFED */  bl        OSDisableInterrupts
/* 09E260 800A1260 3C808000 */  lis       r4, 0x8000
/* 09E264 800A1264 808400E4 */  lwz       r4, 0xe4(r4)
/* 09E268 800A1268 38000004 */  li        r0, 0x4
/* 09E26C 800A126C 7C7F1B78 */  mr        r31, r3
/* 09E270 800A1270 B00402C8 */  sth       r0, 0x2c8(r4)
/* 09E274 800A1274 93C402DC */  stw       r30, 0x2dc(r4)
/* 09E278 800A1278 80BE0000 */  lwz       r5, 0x0(r30)
/* 09E27C 800A127C 48000008 */  b         lbl_800A1284
lbl_800A1280:
/* 09E280 800A1280 80A502E0 */  lwz       r5, 0x2e0(r5)
lbl_800A1284:
/* 09E284 800A1284 28050000 */  cmplwi    r5, 0x0
/* 09E288 800A1288 41820014 */  beq       lbl_800A129C
/* 09E28C 800A128C 806502D0 */  lwz       r3, 0x2d0(r5)
/* 09E290 800A1290 800402D0 */  lwz       r0, 0x2d0(r4)
/* 09E294 800A1294 7C030000 */  cmpw      r3, r0
/* 09E298 800A1298 4081FFE8 */  ble       lbl_800A1280
lbl_800A129C:
/* 09E29C 800A129C 28050000 */  cmplwi    r5, 0x0
/* 09E2A0 800A12A0 40820030 */  bne       lbl_800A12D0
/* 09E2A4 800A12A4 807E0004 */  lwz       r3, 0x4(r30)
/* 09E2A8 800A12A8 28030000 */  cmplwi    r3, 0x0
/* 09E2AC 800A12AC 4082000C */  bne       lbl_800A12B8
/* 09E2B0 800A12B0 909E0000 */  stw       r4, 0x0(r30)
/* 09E2B4 800A12B4 48000008 */  b         lbl_800A12BC
lbl_800A12B8:
/* 09E2B8 800A12B8 908302E0 */  stw       r4, 0x2e0(r3)
lbl_800A12BC:
/* 09E2BC 800A12BC 906402E4 */  stw       r3, 0x2e4(r4)
/* 09E2C0 800A12C0 38000000 */  li        r0, 0x0
/* 09E2C4 800A12C4 900402E0 */  stw       r0, 0x2e0(r4)
/* 09E2C8 800A12C8 909E0004 */  stw       r4, 0x4(r30)
/* 09E2CC 800A12CC 48000028 */  b         lbl_800A12F4
lbl_800A12D0:
/* 09E2D0 800A12D0 90A402E0 */  stw       r5, 0x2e0(r4)
/* 09E2D4 800A12D4 806502E4 */  lwz       r3, 0x2e4(r5)
/* 09E2D8 800A12D8 908502E4 */  stw       r4, 0x2e4(r5)
/* 09E2DC 800A12DC 28030000 */  cmplwi    r3, 0x0
/* 09E2E0 800A12E0 906402E4 */  stw       r3, 0x2e4(r4)
/* 09E2E4 800A12E4 4082000C */  bne       lbl_800A12F0
/* 09E2E8 800A12E8 909E0000 */  stw       r4, 0x0(r30)
/* 09E2EC 800A12EC 48000008 */  b         lbl_800A12F4
lbl_800A12F0:
/* 09E2F0 800A12F0 908302E0 */  stw       r4, 0x2e0(r3)
lbl_800A12F4:
/* 09E2F4 800A12F4 38000001 */  li        r0, 0x1
/* 09E2F8 800A12F8 900D8B64 */  stw       r0, RunQueueHint@sda21(r0)
/* 09E2FC 800A12FC 800D8B64 */  lwz       r0, RunQueueHint@sda21(r0)
/* 09E300 800A1300 2C000000 */  cmpwi     r0, 0x0
/* 09E304 800A1304 4182000C */  beq       lbl_800A1310
/* 09E308 800A1308 38600000 */  li        r3, 0x0
/* 09E30C 800A130C 4BFFF461 */  bl        SelectThread
lbl_800A1310:
/* 09E310 800A1310 7FE3FB78 */  mr        r3, r31
/* 09E314 800A1314 4BFFCF5D */  bl        OSRestoreInterrupts
/* 09E318 800A1318 8001001C */  lwz       r0, 0x1c(r1)
/* 09E31C 800A131C 83E10014 */  lwz       r31, 0x14(r1)
/* 09E320 800A1320 83C10010 */  lwz       r30, 0x10(r1)
/* 09E324 800A1324 38210018 */  addi      r1, r1, 0x18
/* 09E328 800A1328 7C0803A6 */  mtlr      r0
/* 09E32C 800A132C 4E800020 */  blr

glabel OSWakeupThread
/* 09E330 800A1330 7C0802A6 */  mflr      r0
/* 09E334 800A1334 90010004 */  stw       r0, 0x4(r1)
/* 09E338 800A1338 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09E33C 800A133C 93E10014 */  stw       r31, 0x14(r1)
/* 09E340 800A1340 93C10010 */  stw       r30, 0x10(r1)
/* 09E344 800A1344 7C7E1B78 */  mr        r30, r3
/* 09E348 800A1348 4BFFCF01 */  bl        OSDisableInterrupts
/* 09E34C 800A134C 3C808018 */  lis       r4, RunQueue@ha
/* 09E350 800A1350 3BE30000 */  addi      r31, r3, 0x0
/* 09E354 800A1354 38A47398 */  addi      r5, r4, RunQueue@l
/* 09E358 800A1358 4800009C */  b         lbl_800A13F4
lbl_800A135C:
/* 09E35C 800A135C 806602E0 */  lwz       r3, 0x2e0(r6)
/* 09E360 800A1360 28030000 */  cmplwi    r3, 0x0
/* 09E364 800A1364 40820010 */  bne       lbl_800A1374
/* 09E368 800A1368 38000000 */  li        r0, 0x0
/* 09E36C 800A136C 901E0004 */  stw       r0, 0x4(r30)
/* 09E370 800A1370 4800000C */  b         lbl_800A137C
lbl_800A1374:
/* 09E374 800A1374 38000000 */  li        r0, 0x0
/* 09E378 800A1378 900302E4 */  stw       r0, 0x2e4(r3)
lbl_800A137C:
/* 09E37C 800A137C 907E0000 */  stw       r3, 0x0(r30)
/* 09E380 800A1380 38000001 */  li        r0, 0x1
/* 09E384 800A1384 B00602C8 */  sth       r0, 0x2c8(r6)
/* 09E388 800A1388 800602CC */  lwz       r0, 0x2cc(r6)
/* 09E38C 800A138C 2C000000 */  cmpwi     r0, 0x0
/* 09E390 800A1390 41810064 */  bgt       lbl_800A13F4
/* 09E394 800A1394 800602D0 */  lwz       r0, 0x2d0(r6)
/* 09E398 800A1398 54001838 */  slwi      r0, r0, 3
/* 09E39C 800A139C 7C050214 */  add       r0, r5, r0
/* 09E3A0 800A13A0 900602DC */  stw       r0, 0x2dc(r6)
/* 09E3A4 800A13A4 808602DC */  lwz       r4, 0x2dc(r6)
/* 09E3A8 800A13A8 80640004 */  lwz       r3, 0x4(r4)
/* 09E3AC 800A13AC 28030000 */  cmplwi    r3, 0x0
/* 09E3B0 800A13B0 4082000C */  bne       lbl_800A13BC
/* 09E3B4 800A13B4 90C40000 */  stw       r6, 0x0(r4)
/* 09E3B8 800A13B8 48000008 */  b         lbl_800A13C0
lbl_800A13BC:
/* 09E3BC 800A13BC 90C302E0 */  stw       r6, 0x2e0(r3)
lbl_800A13C0:
/* 09E3C0 800A13C0 906602E4 */  stw       r3, 0x2e4(r6)
/* 09E3C4 800A13C4 38000000 */  li        r0, 0x0
/* 09E3C8 800A13C8 38600001 */  li        r3, 0x1
/* 09E3CC 800A13CC 900602E0 */  stw       r0, 0x2e0(r6)
/* 09E3D0 800A13D0 808602DC */  lwz       r4, 0x2dc(r6)
/* 09E3D4 800A13D4 90C40004 */  stw       r6, 0x4(r4)
/* 09E3D8 800A13D8 800602D0 */  lwz       r0, 0x2d0(r6)
/* 09E3DC 800A13DC 808D8B60 */  lwz       r4, RunQueueBits@sda21(r0)
/* 09E3E0 800A13E0 2000001F */  subfic    r0, r0, 0x1f
/* 09E3E4 800A13E4 7C600030 */  slw       r0, r3, r0
/* 09E3E8 800A13E8 7C800378 */  or        r0, r4, r0
/* 09E3EC 800A13EC 900D8B60 */  stw       r0, RunQueueBits@sda21(r0)
/* 09E3F0 800A13F0 906D8B64 */  stw       r3, RunQueueHint@sda21(r0)
lbl_800A13F4:
/* 09E3F4 800A13F4 80DE0000 */  lwz       r6, 0x0(r30)
/* 09E3F8 800A13F8 28060000 */  cmplwi    r6, 0x0
/* 09E3FC 800A13FC 4082FF60 */  bne       lbl_800A135C
/* 09E400 800A1400 800D8B64 */  lwz       r0, RunQueueHint@sda21(r0)
/* 09E404 800A1404 2C000000 */  cmpwi     r0, 0x0
/* 09E408 800A1408 4182000C */  beq       lbl_800A1414
/* 09E40C 800A140C 38600000 */  li        r3, 0x0
/* 09E410 800A1410 4BFFF35D */  bl        SelectThread
lbl_800A1414:
/* 09E414 800A1414 7FE3FB78 */  mr        r3, r31
/* 09E418 800A1418 4BFFCE59 */  bl        OSRestoreInterrupts
/* 09E41C 800A141C 8001001C */  lwz       r0, 0x1c(r1)
/* 09E420 800A1420 83E10014 */  lwz       r31, 0x14(r1)
/* 09E424 800A1424 83C10010 */  lwz       r30, 0x10(r1)
/* 09E428 800A1428 38210018 */  addi      r1, r1, 0x18
/* 09E42C 800A142C 7C0803A6 */  mtlr      r0
/* 09E430 800A1430 4E800020 */  blr

glabel OSClearStack
/* 09E434 800A1434 7C0802A6 */  mflr      r0
/* 09E438 800A1438 90010004 */  stw       r0, 0x4(r1)
/* 09E43C 800A143C 5460821E */  clrlslwi  r0, r3, 24, 16
/* 09E440 800A1440 5060C00E */  rlwimi    r0, r3, 24, 0, 7
/* 09E444 800A1444 9421FFE8 */  stwu      r1, -0x18(r1)
/* 09E448 800A1448 5060442E */  rlwimi    r0, r3, 8, 16, 23
/* 09E44C 800A144C 93E10014 */  stw       r31, 0x14(r1)
/* 09E450 800A1450 7C1F0378 */  mr        r31, r0
/* 09E454 800A1454 507F063E */  rlwimi    r31, r3, 0, 24, 31
/* 09E458 800A1458 4BFFC291 */  bl        OSGetStackPointer
/* 09E45C 800A145C 3C808000 */  lis       r4, 0x8000
/* 09E460 800A1460 80A400E4 */  lwz       r5, 0xe4(r4)
/* 09E464 800A1464 38830003 */  addi      r4, r3, 0x3
/* 09E468 800A1468 80A50308 */  lwz       r5, 0x308(r5)
/* 09E46C 800A146C 38A50004 */  addi      r5, r5, 0x4
/* 09E470 800A1470 7C051840 */  cmplw     r5, r3
/* 09E474 800A1474 7C852050 */  subf      r4, r5, r4
/* 09E478 800A1478 5484F0BE */  srwi      r4, r4, 2
/* 09E47C 800A147C 40800050 */  bge       lbl_800A14CC
/* 09E480 800A1480 5480E8FF */  srwi.     r0, r4, 3
/* 09E484 800A1484 7C0903A6 */  mtctr     r0
/* 09E488 800A1488 41820034 */  beq       lbl_800A14BC
lbl_800A148C:
/* 09E48C 800A148C 93E50000 */  stw       r31, 0x0(r5)
/* 09E490 800A1490 93E50004 */  stw       r31, 0x4(r5)
/* 09E494 800A1494 93E50008 */  stw       r31, 0x8(r5)
/* 09E498 800A1498 93E5000C */  stw       r31, 0xc(r5)
/* 09E49C 800A149C 93E50010 */  stw       r31, 0x10(r5)
/* 09E4A0 800A14A0 93E50014 */  stw       r31, 0x14(r5)
/* 09E4A4 800A14A4 93E50018 */  stw       r31, 0x18(r5)
/* 09E4A8 800A14A8 93E5001C */  stw       r31, 0x1c(r5)
/* 09E4AC 800A14AC 38A50020 */  addi      r5, r5, 0x20
/* 09E4B0 800A14B0 4200FFDC */  bdnz      lbl_800A148C
/* 09E4B4 800A14B4 70840007 */  andi.     r4, r4, 0x7
/* 09E4B8 800A14B8 41820014 */  beq       lbl_800A14CC
lbl_800A14BC:
/* 09E4BC 800A14BC 7C8903A6 */  mtctr     r4
lbl_800A14C0:
/* 09E4C0 800A14C0 93E50000 */  stw       r31, 0x0(r5)
/* 09E4C4 800A14C4 38A50004 */  addi      r5, r5, 0x4
/* 09E4C8 800A14C8 4200FFF8 */  bdnz      lbl_800A14C0
lbl_800A14CC:
/* 09E4CC 800A14CC 8001001C */  lwz       r0, 0x1c(r1)
/* 09E4D0 800A14D0 83E10014 */  lwz       r31, 0x14(r1)
/* 09E4D4 800A14D4 38210018 */  addi      r1, r1, 0x18
/* 09E4D8 800A14D8 7C0803A6 */  mtlr      r0
/* 09E4DC 800A14DC 4E800020 */  blr

# 0x80187398 - 0x80187D90
.section .bss, "wa"

RunQueue:
	.skip 0x100

IdleThread:
	.skip 0x318

DefaultThread:
	.skip 0x318

IdleContext:
	.skip 0x2C8

# 0x8018B6C8 - 0x8018B6D0
.section .sdata, "wa"

SwitchThreadCallback:
	.long DefaultSwitchThreadCallback

glabel gap_07_8018B6CC_sdata
.hidden gap_07_8018B6CC_sdata
	.long 0x00000000

# 0x8018BAE0 - 0x8018BAF0
.section .sbss, "wa"

RunQueueBits:
	.skip 0x4

RunQueueHint:
	.skip 0x4

Reschedule:
	.skip 0x4

glabel gap_08_8018BAEC_sbss
.hidden gap_08_8018BAEC_sbss
	.skip 0x4
