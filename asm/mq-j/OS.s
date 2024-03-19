# OS.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009B368 - 0x8009BCB0

glabel OSGetConsoleType
/* 098368 8009B368 806D8AC0 */  lwz       r3, BootInfo@sda21(r0)
/* 09836C 8009B36C 28030000 */  cmplwi    r3, 0x0
/* 098370 8009B370 41820010 */  beq       lbl_8009B380
/* 098374 8009B374 8063002C */  lwz       r3, 0x2c(r3)
/* 098378 8009B378 28030000 */  cmplwi    r3, 0x0
/* 09837C 8009B37C 40820010 */  bne       lbl_8009B38C
lbl_8009B380:
/* 098380 8009B380 3C601000 */  lis       r3, 0x1000
/* 098384 8009B384 38630002 */  addi      r3, r3, 0x2
/* 098388 8009B388 48000004 */  b         lbl_8009B38C
lbl_8009B38C:
/* 09838C 8009B38C 4E800020 */  blr

ClearArena:
/* 098390 8009B390 7C0802A6 */  mflr      r0
/* 098394 8009B394 90010004 */  stw       r0, 0x4(r1)
/* 098398 8009B398 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09839C 8009B39C 93E1000C */  stw       r31, 0xc(r1)
/* 0983A0 8009B3A0 48004219 */  bl        OSGetResetCode
/* 0983A4 8009B3A4 3C038000 */  addis     r0, r3, 0x8000
/* 0983A8 8009B3A8 28000000 */  cmplwi    r0, 0x0
/* 0983AC 8009B3AC 41820034 */  beq       lbl_8009B3E0
/* 0983B0 8009B3B0 38000000 */  li        r0, 0x0
/* 0983B4 8009B3B4 900D8ADC */  stw       r0, __OSSavedRegionStart@sda21(r0)
/* 0983B8 8009B3B8 900D8AD8 */  stw       r0, __OSSavedRegionEnd@sda21(r0)
/* 0983BC 8009B3BC 48001615 */  bl        OSGetArenaHi
/* 0983C0 8009B3C0 7C7F1B78 */  mr        r31, r3
/* 0983C4 8009B3C4 48001615 */  bl        OSGetArenaLo
/* 0983C8 8009B3C8 7FE3F850 */  subf      r31, r3, r31
/* 0983CC 8009B3CC 4800160D */  bl        OSGetArenaLo
/* 0983D0 8009B3D0 7FE5FB78 */  mr        r5, r31
/* 0983D4 8009B3D4 38800000 */  li        r4, 0x0
/* 0983D8 8009B3D8 4BF69F49 */  bl        memset
/* 0983DC 8009B3DC 480000C8 */  b         lbl_8009B4A4
lbl_8009B3E0:
/* 0983E0 8009B3E0 3C808130 */  lis       r4, 0x8130
/* 0983E4 8009B3E4 8064DFF0 */  lwz       r3, -0x2010(r4)
/* 0983E8 8009B3E8 8004DFEC */  lwz       r0, -0x2014(r4)
/* 0983EC 8009B3EC 28030000 */  cmplwi    r3, 0x0
/* 0983F0 8009B3F0 906D8ADC */  stw       r3, __OSSavedRegionStart@sda21(r0)
/* 0983F4 8009B3F4 900D8AD8 */  stw       r0, __OSSavedRegionEnd@sda21(r0)
/* 0983F8 8009B3F8 40820028 */  bne       lbl_8009B420
/* 0983FC 8009B3FC 480015D5 */  bl        OSGetArenaHi
/* 098400 8009B400 7C7F1B78 */  mr        r31, r3
/* 098404 8009B404 480015D5 */  bl        OSGetArenaLo
/* 098408 8009B408 7FE3F850 */  subf      r31, r3, r31
/* 09840C 8009B40C 480015CD */  bl        OSGetArenaLo
/* 098410 8009B410 7FE5FB78 */  mr        r5, r31
/* 098414 8009B414 38800000 */  li        r4, 0x0
/* 098418 8009B418 4BF69F09 */  bl        memset
/* 09841C 8009B41C 48000088 */  b         lbl_8009B4A4
lbl_8009B420:
/* 098420 8009B420 480015B9 */  bl        OSGetArenaLo
/* 098424 8009B424 800D8ADC */  lwz       r0, __OSSavedRegionStart@sda21(r0)
/* 098428 8009B428 7C030040 */  cmplw     r3, r0
/* 09842C 8009B42C 40800078 */  bge       lbl_8009B4A4
/* 098430 8009B430 480015A1 */  bl        OSGetArenaHi
/* 098434 8009B434 800D8ADC */  lwz       r0, __OSSavedRegionStart@sda21(r0)
/* 098438 8009B438 7C030040 */  cmplw     r3, r0
/* 09843C 8009B43C 41810028 */  bgt       lbl_8009B464
/* 098440 8009B440 48001591 */  bl        OSGetArenaHi
/* 098444 8009B444 7C7F1B78 */  mr        r31, r3
/* 098448 8009B448 48001591 */  bl        OSGetArenaLo
/* 09844C 8009B44C 7FE3F850 */  subf      r31, r3, r31
/* 098450 8009B450 48001589 */  bl        OSGetArenaLo
/* 098454 8009B454 7FE5FB78 */  mr        r5, r31
/* 098458 8009B458 38800000 */  li        r4, 0x0
/* 09845C 8009B45C 4BF69EC5 */  bl        memset
/* 098460 8009B460 48000044 */  b         lbl_8009B4A4
lbl_8009B464:
/* 098464 8009B464 48001575 */  bl        OSGetArenaLo
/* 098468 8009B468 800D8ADC */  lwz       r0, __OSSavedRegionStart@sda21(r0)
/* 09846C 8009B46C 7FE30050 */  subf      r31, r3, r0
/* 098470 8009B470 48001569 */  bl        OSGetArenaLo
/* 098474 8009B474 7FE5FB78 */  mr        r5, r31
/* 098478 8009B478 38800000 */  li        r4, 0x0
/* 09847C 8009B47C 4BF69EA5 */  bl        memset
/* 098480 8009B480 48001551 */  bl        OSGetArenaHi
/* 098484 8009B484 83ED8AD8 */  lwz       r31, __OSSavedRegionEnd@sda21(r0)
/* 098488 8009B488 7C03F840 */  cmplw     r3, r31
/* 09848C 8009B48C 40810018 */  ble       lbl_8009B4A4
/* 098490 8009B490 48001541 */  bl        OSGetArenaHi
/* 098494 8009B494 7CBF1850 */  subf      r5, r31, r3
/* 098498 8009B498 7FE3FB78 */  mr        r3, r31
/* 09849C 8009B49C 38800000 */  li        r4, 0x0
/* 0984A0 8009B4A0 4BF69E81 */  bl        memset
lbl_8009B4A4:
/* 0984A4 8009B4A4 80010014 */  lwz       r0, 0x14(r1)
/* 0984A8 8009B4A8 83E1000C */  lwz       r31, 0xc(r1)
/* 0984AC 8009B4AC 38210010 */  addi      r1, r1, 0x10
/* 0984B0 8009B4B0 7C0803A6 */  mtlr      r0
/* 0984B4 8009B4B4 4E800020 */  blr

InquiryCallback:
/* 0984B8 8009B4B8 8004000C */  lwz       r0, 0xc(r4)
/* 0984BC 8009B4BC 2C000000 */  cmpwi     r0, 0x0
/* 0984C0 8009B4C0 41820008 */  beq       lbl_8009B4C8
/* 0984C4 8009B4C4 48000020 */  b         lbl_8009B4E4
lbl_8009B4C8:
/* 0984C8 8009B4C8 3C608018 */  lis       r3, DriveInfo@ha
/* 0984CC 8009B4CC 38637280 */  addi      r3, r3, DriveInfo@l
/* 0984D0 8009B4D0 A0030002 */  lhz       r0, 0x2(r3)
/* 0984D4 8009B4D4 3C608000 */  lis       r3, 0x8000
/* 0984D8 8009B4D8 60008000 */  ori       r0, r0, 0x8000
/* 0984DC 8009B4DC B00330E6 */  sth       r0, 0x30e6(r3)
/* 0984E0 8009B4E0 48000010 */  b         lbl_8009B4F0
lbl_8009B4E4:
/* 0984E4 8009B4E4 38000001 */  li        r0, 0x1
/* 0984E8 8009B4E8 3C608000 */  lis       r3, 0x8000
/* 0984EC 8009B4EC B00330E6 */  sth       r0, 0x30e6(r3)
lbl_8009B4F0:
/* 0984F0 8009B4F0 4E800020 */  blr

glabel OSInit
/* 0984F4 8009B4F4 7C0802A6 */  mflr      r0
/* 0984F8 8009B4F8 90010004 */  stw       r0, 0x4(r1)
/* 0984FC 8009B4FC 9421FFE8 */  stwu      r1, -0x18(r1)
/* 098500 8009B500 93E10014 */  stw       r31, 0x14(r1)
/* 098504 8009B504 93C10010 */  stw       r30, 0x10(r1)
/* 098508 8009B508 93A1000C */  stw       r29, 0xc(r1)
/* 09850C 8009B50C 800D8AD0 */  lwz       r0, AreWeInitialized@sda21(r0)
/* 098510 8009B510 3C608018 */  lis       r3, DriveInfo@ha
/* 098514 8009B514 3BC37280 */  addi      r30, r3, DriveInfo@l
/* 098518 8009B518 2C000000 */  cmpwi     r0, 0x0
/* 09851C 8009B51C 3C60800F */  lis       r3, "@1"@ha
/* 098520 8009B520 3BE31AE8 */  addi      r31, r3, "@1"@l
/* 098524 8009B524 4082032C */  bne       lbl_8009B850
/* 098528 8009B528 38000001 */  li        r0, 0x1
/* 09852C 8009B52C 900D8AD0 */  stw       r0, AreWeInitialized@sda21(r0)
/* 098530 8009B530 48005FD1 */  bl        __OSGetSystemTime
/* 098534 8009B534 908D8AEC */  stw       r4, __OSStartTime+0x4@sda21(r0)
/* 098538 8009B538 906D8AE8 */  stw       r3, __OSStartTime@sda21(r0)
/* 09853C 8009B53C 48002D0D */  bl        OSDisableInterrupts
/* 098540 8009B540 4BFFFDF9 */  bl        PPCDisableSpeculation
/* 098544 8009B544 4BFFFE1D */  bl        PPCSetFpNonIEEEMode
/* 098548 8009B548 38000000 */  li        r0, 0x0
/* 09854C 8009B54C 3C808000 */  lis       r4, 0x8000
/* 098550 8009B550 900D8AC4 */  stw       r0, BI2DebugFlag@sda21(r0)
/* 098554 8009B554 908D8AC0 */  stw       r4, BootInfo@sda21(r0)
/* 098558 8009B558 900D8CC4 */  stw       r0, __DVDLongFileNameFlag@sda21(r0)
/* 09855C 8009B55C 806400F4 */  lwz       r3, 0xf4(r4)
/* 098560 8009B560 28030000 */  cmplwi    r3, 0x0
/* 098564 8009B564 41820034 */  beq       lbl_8009B598
/* 098568 8009B568 3803000C */  addi      r0, r3, 0xc
/* 09856C 8009B56C 900D8AC4 */  stw       r0, BI2DebugFlag@sda21(r0)
/* 098570 8009B570 80030024 */  lwz       r0, 0x24(r3)
/* 098574 8009B574 806D8AC4 */  lwz       r3, BI2DebugFlag@sda21(r0)
/* 098578 8009B578 900D8C64 */  stw       r0, __PADSpec@sda21(r0)
/* 09857C 8009B57C 80030000 */  lwz       r0, 0x0(r3)
/* 098580 8009B580 5400063E */  clrlwi    r0, r0, 24
/* 098584 8009B584 980430E8 */  stb       r0, 0x30e8(r4)
/* 098588 8009B588 800D8C64 */  lwz       r0, __PADSpec@sda21(r0)
/* 09858C 8009B58C 5400063E */  clrlwi    r0, r0, 24
/* 098590 8009B590 980430E9 */  stb       r0, 0x30e9(r4)
/* 098594 8009B594 48000028 */  b         lbl_8009B5BC
lbl_8009B598:
/* 098598 8009B598 80040034 */  lwz       r0, 0x34(r4)
/* 09859C 8009B59C 28000000 */  cmplwi    r0, 0x0
/* 0985A0 8009B5A0 4182001C */  beq       lbl_8009B5BC
/* 0985A4 8009B5A4 886430E8 */  lbz       r3, 0x30e8(r4)
/* 0985A8 8009B5A8 380D8AC8 */  li        r0, BI2DebugFlagHolder@sda21
/* 0985AC 8009B5AC 906D8AC8 */  stw       r3, BI2DebugFlagHolder@sda21(r0)
/* 0985B0 8009B5B0 900D8AC4 */  stw       r0, BI2DebugFlag@sda21(r0)
/* 0985B4 8009B5B4 880430E9 */  lbz       r0, 0x30e9(r4)
/* 0985B8 8009B5B8 900D8C64 */  stw       r0, __PADSpec@sda21(r0)
lbl_8009B5BC:
/* 0985BC 8009B5BC 38000001 */  li        r0, 0x1
/* 0985C0 8009B5C0 806D8AC0 */  lwz       r3, BootInfo@sda21(r0)
/* 0985C4 8009B5C4 900D8CC4 */  stw       r0, __DVDLongFileNameFlag@sda21(r0)
/* 0985C8 8009B5C8 80630030 */  lwz       r3, 0x30(r3)
/* 0985CC 8009B5CC 28030000 */  cmplwi    r3, 0x0
/* 0985D0 8009B5D0 40820010 */  bne       lbl_8009B5E0
/* 0985D4 8009B5D4 3C60801A */  lis       r3, __ArenaLo@ha
/* 0985D8 8009B5D8 3863E660 */  addi      r3, r3, __ArenaLo@l
/* 0985DC 8009B5DC 48000004 */  b         lbl_8009B5E0
lbl_8009B5E0:
/* 0985E0 8009B5E0 48001409 */  bl        OSSetArenaLo
/* 0985E4 8009B5E4 806D8AC0 */  lwz       r3, BootInfo@sda21(r0)
/* 0985E8 8009B5E8 80030030 */  lwz       r0, 0x30(r3)
/* 0985EC 8009B5EC 28000000 */  cmplwi    r0, 0x0
/* 0985F0 8009B5F0 40820030 */  bne       lbl_8009B620
/* 0985F4 8009B5F4 806D8AC4 */  lwz       r3, BI2DebugFlag@sda21(r0)
/* 0985F8 8009B5F8 28030000 */  cmplwi    r3, 0x0
/* 0985FC 8009B5FC 41820024 */  beq       lbl_8009B620
/* 098600 8009B600 80030000 */  lwz       r0, 0x0(r3)
/* 098604 8009B604 28000002 */  cmplwi    r0, 0x2
/* 098608 8009B608 40800018 */  bge       lbl_8009B620
/* 09860C 8009B60C 3C60801A */  lis       r3, _stack_addr@ha
/* 098610 8009B610 3863C650 */  addi      r3, r3, _stack_addr@l
/* 098614 8009B614 3803001F */  addi      r0, r3, 0x1f
/* 098618 8009B618 54030034 */  clrrwi    r3, r0, 5
/* 09861C 8009B61C 480013CD */  bl        OSSetArenaLo
lbl_8009B620:
/* 098620 8009B620 806D8AC0 */  lwz       r3, BootInfo@sda21(r0)
/* 098624 8009B624 80630034 */  lwz       r3, 0x34(r3)
/* 098628 8009B628 28030000 */  cmplwi    r3, 0x0
/* 09862C 8009B62C 40820010 */  bne       lbl_8009B63C
/* 098630 8009B630 3C608170 */  lis       r3, __ArenaHi@ha
/* 098634 8009B634 38630000 */  addi      r3, r3, __ArenaHi@l
/* 098638 8009B638 48000004 */  b         lbl_8009B63C
lbl_8009B63C:
/* 09863C 8009B63C 480013A5 */  bl        OSSetArenaHi
/* 098640 8009B640 4800022D */  bl        OSExceptionInit
/* 098644 8009B644 48004C69 */  bl        __OSInitSystemCall
/* 098648 8009B648 48000669 */  bl        OSInitAlarm
/* 09864C 8009B64C 48003469 */  bl        __OSModuleInit
/* 098650 8009B650 48002C75 */  bl        __OSInterruptInit
/* 098654 8009B654 3C60800A */  lis       r3, __OSResetSWInterruptHandler@ha
/* 098658 8009B658 3883F5E8 */  addi      r4, r3, __OSResetSWInterruptHandler@l
/* 09865C 8009B65C 38600016 */  li        r3, 0x16
/* 098660 8009B660 48002C35 */  bl        __OSSetInterruptHandler
/* 098664 8009B664 48002499 */  bl        __OSContextInit
/* 098668 8009B668 48001B79 */  bl        __OSCacheInit
/* 09866C 8009B66C 48007561 */  bl        EXIInit
/* 098670 8009B670 48008771 */  bl        SIInit
/* 098674 8009B674 48004479 */  bl        __OSInitSram
/* 098678 8009B678 48004C9D */  bl        __OSThreadInit
/* 09867C 8009B67C 48001375 */  bl        __OSInitAudioSystem
/* 098680 8009B680 4BFFFCA1 */  bl        PPCMfhid2
/* 098684 8009B684 54630080 */  rlwinm    r3, r3, 0, 2, 0
/* 098688 8009B688 4BFFFCA1 */  bl        PPCMthid2
/* 09868C 8009B68C 800D8AE0 */  lwz       r0, __OSInIPL@sda21(r0)
/* 098690 8009B690 2C000000 */  cmpwi     r0, 0x0
/* 098694 8009B694 40820008 */  bne       lbl_8009B69C
/* 098698 8009B698 480037F9 */  bl        __OSInitMemoryProtection
lbl_8009B69C:
/* 09869C 8009B69C 387F0044 */  addi      r3, r31, 0x44
/* 0986A0 8009B6A0 4CC63182 */  crclr     cr1eq
/* 0986A4 8009B6A4 480024A1 */  bl        OSReport
/* 0986A8 8009B6A8 387F0064 */  addi      r3, r31, 0x64
/* 0986AC 8009B6AC 4CC63182 */  crclr     cr1eq
/* 0986B0 8009B6B0 389F007C */  addi      r4, r31, 0x7c
/* 0986B4 8009B6B4 38BF0088 */  addi      r5, r31, 0x88
/* 0986B8 8009B6B8 4800248D */  bl        OSReport
/* 0986BC 8009B6BC 387F0094 */  addi      r3, r31, 0x94
/* 0986C0 8009B6C0 4CC63182 */  crclr     cr1eq
/* 0986C4 8009B6C4 48002481 */  bl        OSReport
/* 0986C8 8009B6C8 806D8AC0 */  lwz       r3, BootInfo@sda21(r0)
/* 0986CC 8009B6CC 28030000 */  cmplwi    r3, 0x0
/* 0986D0 8009B6D0 41820010 */  beq       lbl_8009B6E0
/* 0986D4 8009B6D4 8083002C */  lwz       r4, 0x2c(r3)
/* 0986D8 8009B6D8 28040000 */  cmplwi    r4, 0x0
/* 0986DC 8009B6DC 40820010 */  bne       lbl_8009B6EC
lbl_8009B6E0:
/* 0986E0 8009B6E0 3C601000 */  lis       r3, 0x1000
/* 0986E4 8009B6E4 38830002 */  addi      r4, r3, 0x2
/* 0986E8 8009B6E8 48000004 */  b         lbl_8009B6EC
lbl_8009B6EC:
/* 0986EC 8009B6EC 5480001E */  clrrwi    r0, r4, 16
/* 0986F0 8009B6F0 2C000000 */  cmpwi     r0, 0x0
/* 0986F4 8009B6F4 41820008 */  beq       lbl_8009B6FC
/* 0986F8 8009B6F8 48000014 */  b         lbl_8009B70C
lbl_8009B6FC:
/* 0986FC 8009B6FC 4CC63182 */  crclr     cr1eq
/* 098700 8009B700 387F00A4 */  addi      r3, r31, 0xa4
/* 098704 8009B704 48002441 */  bl        OSReport
/* 098708 8009B708 48000094 */  b         lbl_8009B79C
lbl_8009B70C:
/* 09870C 8009B70C 3C601000 */  lis       r3, 0x1000
/* 098710 8009B710 5485043E */  clrlwi    r5, r4, 16
/* 098714 8009B714 38030002 */  addi      r0, r3, 0x2
/* 098718 8009B718 7C050000 */  cmpw      r5, r0
/* 09871C 8009B71C 41820048 */  beq       lbl_8009B764
/* 098720 8009B720 40800014 */  bge       lbl_8009B734
/* 098724 8009B724 7C051800 */  cmpw      r5, r3
/* 098728 8009B728 4182001C */  beq       lbl_8009B744
/* 09872C 8009B72C 40800028 */  bge       lbl_8009B754
/* 098730 8009B730 48000054 */  b         lbl_8009B784
lbl_8009B734:
/* 098734 8009B734 38030004 */  addi      r0, r3, 0x4
/* 098738 8009B738 7C050000 */  cmpw      r5, r0
/* 09873C 8009B73C 40800048 */  bge       lbl_8009B784
/* 098740 8009B740 48000034 */  b         lbl_8009B774
lbl_8009B744:
/* 098744 8009B744 387F00B0 */  addi      r3, r31, 0xb0
/* 098748 8009B748 4CC63182 */  crclr     cr1eq
/* 09874C 8009B74C 480023F9 */  bl        OSReport
/* 098750 8009B750 4800004C */  b         lbl_8009B79C
lbl_8009B754:
/* 098754 8009B754 387F00C0 */  addi      r3, r31, 0xc0
/* 098758 8009B758 4CC63182 */  crclr     cr1eq
/* 09875C 8009B75C 480023E9 */  bl        OSReport
/* 098760 8009B760 4800003C */  b         lbl_8009B79C
lbl_8009B764:
/* 098764 8009B764 387F00D0 */  addi      r3, r31, 0xd0
/* 098768 8009B768 4CC63182 */  crclr     cr1eq
/* 09876C 8009B76C 480023D9 */  bl        OSReport
/* 098770 8009B770 4800002C */  b         lbl_8009B79C
lbl_8009B774:
/* 098774 8009B774 387F00E0 */  addi      r3, r31, 0xe0
/* 098778 8009B778 4CC63182 */  crclr     cr1eq
/* 09877C 8009B77C 480023C9 */  bl        OSReport
/* 098780 8009B780 4800001C */  b         lbl_8009B79C
lbl_8009B784:
/* 098784 8009B784 5486043E */  clrlwi    r6, r4, 16
/* 098788 8009B788 4CC63182 */  crclr     cr1eq
/* 09878C 8009B78C 7C852378 */  mr        r5, r4
/* 098790 8009B790 387F00F0 */  addi      r3, r31, 0xf0
/* 098794 8009B794 3886FFFD */  subi      r4, r6, 0x3
/* 098798 8009B798 480023AD */  bl        OSReport
lbl_8009B79C:
/* 09879C 8009B79C 808D8AC0 */  lwz       r4, BootInfo@sda21(r0)
/* 0987A0 8009B7A0 387F010C */  addi      r3, r31, 0x10c
/* 0987A4 8009B7A4 4CC63182 */  crclr     cr1eq
/* 0987A8 8009B7A8 80040028 */  lwz       r0, 0x28(r4)
/* 0987AC 8009B7AC 5404653E */  srwi      r4, r0, 20
/* 0987B0 8009B7B0 48002395 */  bl        OSReport
/* 0987B4 8009B7B4 4800121D */  bl        OSGetArenaHi
/* 0987B8 8009B7B8 7C7D1B78 */  mr        r29, r3
/* 0987BC 8009B7BC 4800121D */  bl        OSGetArenaLo
/* 0987C0 8009B7C0 7C641B78 */  mr        r4, r3
/* 0987C4 8009B7C4 4CC63182 */  crclr     cr1eq
/* 0987C8 8009B7C8 7FA5EB78 */  mr        r5, r29
/* 0987CC 8009B7CC 387F011C */  addi      r3, r31, 0x11c
/* 0987D0 8009B7D0 48002375 */  bl        OSReport
/* 0987D4 8009B7D4 806D8720 */  lwz       r3, __OSVersion@sda21(r0)
/* 0987D8 8009B7D8 480004AD */  bl        OSRegisterVersion
/* 0987DC 8009B7DC 806D8AC4 */  lwz       r3, BI2DebugFlag@sda21(r0)
/* 0987E0 8009B7E0 28030000 */  cmplwi    r3, 0x0
/* 0987E4 8009B7E4 41820014 */  beq       lbl_8009B7F8
/* 0987E8 8009B7E8 80030000 */  lwz       r0, 0x0(r3)
/* 0987EC 8009B7EC 28000002 */  cmplwi    r0, 0x2
/* 0987F0 8009B7F0 41800008 */  blt       lbl_8009B7F8
/* 0987F4 8009B7F4 480302D1 */  bl        EnableMetroTRKInterrupts
lbl_8009B7F8:
/* 0987F8 8009B7F8 4BFFFB99 */  bl        ClearArena
/* 0987FC 8009B7FC 48002A61 */  bl        OSEnableInterrupts
/* 098800 8009B800 800D8AE0 */  lwz       r0, __OSInIPL@sda21(r0)
/* 098804 8009B804 2C000000 */  cmpwi     r0, 0x0
/* 098808 8009B808 40820048 */  bne       lbl_8009B850
/* 09880C 8009B80C 480165AD */  bl        DVDInit
/* 098810 8009B810 800D8ACC */  lwz       r0, __OSIsGcam@sda21(r0)
/* 098814 8009B814 2C000000 */  cmpwi     r0, 0x0
/* 098818 8009B818 41820018 */  beq       lbl_8009B830
/* 09881C 8009B81C 3C600001 */  lis       r3, 0x1
/* 098820 8009B820 38039000 */  subi      r0, r3, 0x7000
/* 098824 8009B824 3C608000 */  lis       r3, 0x8000
/* 098828 8009B828 B00330E6 */  sth       r0, 0x30e6(r3)
/* 09882C 8009B82C 48000024 */  b         lbl_8009B850
lbl_8009B830:
/* 098830 8009B830 7FC3F378 */  mr        r3, r30
/* 098834 8009B834 38800020 */  li        r4, 0x20
/* 098838 8009B838 48001461 */  bl        DCInvalidateRange
/* 09883C 8009B83C 3C60800A */  lis       r3, InquiryCallback@ha
/* 098840 8009B840 38A3B4B8 */  addi      r5, r3, InquiryCallback@l
/* 098844 8009B844 7FC4F378 */  mr        r4, r30
/* 098848 8009B848 387E0020 */  addi      r3, r30, 0x20
/* 09884C 8009B84C 48018481 */  bl        DVDInquiryAsync
lbl_8009B850:
/* 098850 8009B850 8001001C */  lwz       r0, 0x1c(r1)
/* 098854 8009B854 83E10014 */  lwz       r31, 0x14(r1)
/* 098858 8009B858 83C10010 */  lwz       r30, 0x10(r1)
/* 09885C 8009B85C 83A1000C */  lwz       r29, 0xc(r1)
/* 098860 8009B860 38210018 */  addi      r1, r1, 0x18
/* 098864 8009B864 7C0803A6 */  mtlr      r0
/* 098868 8009B868 4E800020 */  blr

OSExceptionInit:
/* 09886C 8009B86C 7C0802A6 */  mflr      r0
/* 098870 8009B870 90010004 */  stw       r0, 0x4(r1)
/* 098874 8009B874 9421FFC8 */  stwu      r1, -0x38(r1)
/* 098878 8009B878 BE810008 */  stmw      r20, 0x8(r1)
/* 09887C 8009B87C 3C608000 */  lis       r3, 0x8000
/* 098880 8009B880 80030060 */  lwz       r0, 0x60(r3)
/* 098884 8009B884 3C80800A */  lis       r4, __OSEVSetNumber@ha
/* 098888 8009B888 3BC4BBAC */  addi      r30, r4, __OSEVSetNumber@l
/* 09888C 8009B88C 3CA0800A */  lis       r5, __OSEVStart@ha
/* 098890 8009B890 833E0000 */  lwz       r25, 0x0(r30)
/* 098894 8009B894 3C80800A */  lis       r4, __OSEVEnd@ha
/* 098898 8009B898 38A5BB44 */  addi      r5, r5, __OSEVStart@l
/* 09889C 8009B89C 3884BBDC */  addi      r4, r4, __OSEVEnd@l
/* 0988A0 8009B8A0 3CC0800F */  lis       r6, "@1"@ha
/* 0988A4 8009B8A4 28000000 */  cmplwi    r0, 0x0
/* 0988A8 8009B8A8 7CB82B78 */  mr        r24, r5
/* 0988AC 8009B8AC 3BA61AE8 */  addi      r29, r6, "@1"@l
/* 0988B0 8009B8B0 7EE52050 */  subf      r23, r5, r4
/* 0988B4 8009B8B4 3A830060 */  addi      r20, r3, 0x60
/* 0988B8 8009B8B8 4082004C */  bne       lbl_8009B904
/* 0988BC 8009B8BC 387D0170 */  addi      r3, r29, 0x170
/* 0988C0 8009B8C0 4CC63182 */  crclr     cr1eq
/* 0988C4 8009B8C4 4800AF99 */  bl        DBPrintf
/* 0988C8 8009B8C8 3C80800A */  lis       r4, __OSDBINTSTART@ha
/* 0988CC 8009B8CC 3C60800A */  lis       r3, __OSDBINTEND@ha
/* 0988D0 8009B8D0 3803BB10 */  addi      r0, r3, __OSDBINTEND@l
/* 0988D4 8009B8D4 3884BAEC */  addi      r4, r4, __OSDBINTSTART@l
/* 0988D8 8009B8D8 7EA40050 */  subf      r21, r4, r0
/* 0988DC 8009B8DC 7E83A378 */  mr        r3, r20
/* 0988E0 8009B8E0 7EA5AB78 */  mr        r5, r21
/* 0988E4 8009B8E4 4BF69B31 */  bl        memcpy
/* 0988E8 8009B8E8 7E83A378 */  mr        r3, r20
/* 0988EC 8009B8EC 7EA4AB78 */  mr        r4, r21
/* 0988F0 8009B8F0 48001435 */  bl        DCFlushRangeNoSync
/* 0988F4 8009B8F4 7C0004AC */  sync
/* 0988F8 8009B8F8 7E83A378 */  mr        r3, r20
/* 0988FC 8009B8FC 7EA4AB78 */  mr        r4, r21
/* 098900 8009B900 4800147D */  bl        ICInvalidateRange
lbl_8009B904:
/* 098904 8009B904 3C80800A */  lis       r4, __OSDBINTEND@ha
/* 098908 8009B908 3C60800A */  lis       r3, __OSDBJUMPEND@ha
/* 09890C 8009B90C 3BE4BB10 */  addi      r31, r4, __OSDBINTEND@l
/* 098910 8009B910 3803BB14 */  addi      r0, r3, __OSDBJUMPEND@l
/* 098914 8009B914 3B9D0134 */  addi      r28, r29, 0x134
/* 098918 8009B918 7F7F0050 */  subf      r27, r31, r0
/* 09891C 8009B91C 3B400000 */  li        r26, 0x0
/* 098920 8009B920 48000004 */  b         lbl_8009B924
lbl_8009B924:
/* 098924 8009B924 3C60800A */  lis       r3, __DBVECTOR@ha
/* 098928 8009B928 3AA3BB9C */  addi      r21, r3, __DBVECTOR@l
/* 09892C 8009B92C 3EC06000 */  lis       r22, 0x6000
/* 098930 8009B930 48000004 */  b         lbl_8009B934
lbl_8009B934:
/* 098934 8009B934 48000148 */  b         lbl_8009BA7C
lbl_8009B938:
/* 098938 8009B938 806D8AC4 */  lwz       r3, BI2DebugFlag@sda21(r0)
/* 09893C 8009B93C 28030000 */  cmplwi    r3, 0x0
/* 098940 8009B940 41820034 */  beq       lbl_8009B974
/* 098944 8009B944 80030000 */  lwz       r0, 0x0(r3)
/* 098948 8009B948 28000002 */  cmplwi    r0, 0x2
/* 09894C 8009B94C 41800028 */  blt       lbl_8009B974
/* 098950 8009B950 7F43D378 */  mr        r3, r26
/* 098954 8009B954 4800AEED */  bl        __DBIsExceptionMarked
/* 098958 8009B958 2C030000 */  cmpwi     r3, 0x0
/* 09895C 8009B95C 41820018 */  beq       lbl_8009B974
/* 098960 8009B960 387D018C */  addi      r3, r29, 0x18c
/* 098964 8009B964 4CC63182 */  crclr     cr1eq
/* 098968 8009B968 5744063E */  clrlwi    r4, r26, 24
/* 09896C 8009B96C 4800AEF1 */  bl        DBPrintf
/* 098970 8009B970 48000104 */  b         lbl_8009BA74
lbl_8009B974:
/* 098974 8009B974 5754063E */  clrlwi    r20, r26, 24
/* 098978 8009B978 7F20A378 */  or        r0, r25, r20
/* 09897C 8009B97C 901E0000 */  stw       r0, 0x0(r30)
/* 098980 8009B980 7F43D378 */  mr        r3, r26
/* 098984 8009B984 4800AEBD */  bl        __DBIsExceptionMarked
/* 098988 8009B988 2C030000 */  cmpwi     r3, 0x0
/* 09898C 8009B98C 41820028 */  beq       lbl_8009B9B4
/* 098990 8009B990 7E84A378 */  mr        r4, r20
/* 098994 8009B994 4CC63182 */  crclr     cr1eq
/* 098998 8009B998 387D01BC */  addi      r3, r29, 0x1bc
/* 09899C 8009B99C 4800AEC1 */  bl        DBPrintf
/* 0989A0 8009B9A0 7EA3AB78 */  mr        r3, r21
/* 0989A4 8009B9A4 7FE4FB78 */  mr        r4, r31
/* 0989A8 8009B9A8 7F65DB78 */  mr        r5, r27
/* 0989AC 8009B9AC 4BF69A69 */  bl        memcpy
/* 0989B0 8009B9B0 48000090 */  b         lbl_8009BA40
lbl_8009B9B4:
/* 0989B4 8009B9B4 7EA4AB78 */  mr        r4, r21
/* 0989B8 8009B9B8 48000004 */  b         lbl_8009B9BC
lbl_8009B9BC:
/* 0989BC 8009B9BC 281B0000 */  cmplwi    r27, 0x0
/* 0989C0 8009B9C0 387B0003 */  addi      r3, r27, 0x3
/* 0989C4 8009B9C4 5463F0BE */  srwi      r3, r3, 2
/* 0989C8 8009B9C8 40810078 */  ble       lbl_8009BA40
/* 0989CC 8009B9CC 5460E8FE */  srwi      r0, r3, 3
/* 0989D0 8009B9D0 28000000 */  cmplwi    r0, 0x0
/* 0989D4 8009B9D4 7C0903A6 */  mtctr     r0
/* 0989D8 8009B9D8 41820054 */  beq       lbl_8009BA2C
/* 0989DC 8009B9DC 48000004 */  b         lbl_8009B9E0
lbl_8009B9E0:
/* 0989E0 8009B9E0 92C40000 */  stw       r22, 0x0(r4)
/* 0989E4 8009B9E4 38840004 */  addi      r4, r4, 0x4
/* 0989E8 8009B9E8 92C40000 */  stw       r22, 0x0(r4)
/* 0989EC 8009B9EC 38840004 */  addi      r4, r4, 0x4
/* 0989F0 8009B9F0 92C40000 */  stw       r22, 0x0(r4)
/* 0989F4 8009B9F4 38840004 */  addi      r4, r4, 0x4
/* 0989F8 8009B9F8 92C40000 */  stw       r22, 0x0(r4)
/* 0989FC 8009B9FC 38840004 */  addi      r4, r4, 0x4
/* 098A00 8009BA00 92C40000 */  stw       r22, 0x0(r4)
/* 098A04 8009BA04 38840004 */  addi      r4, r4, 0x4
/* 098A08 8009BA08 92C40000 */  stw       r22, 0x0(r4)
/* 098A0C 8009BA0C 38840004 */  addi      r4, r4, 0x4
/* 098A10 8009BA10 92C40000 */  stw       r22, 0x0(r4)
/* 098A14 8009BA14 38840004 */  addi      r4, r4, 0x4
/* 098A18 8009BA18 92C40000 */  stw       r22, 0x0(r4)
/* 098A1C 8009BA1C 38840004 */  addi      r4, r4, 0x4
/* 098A20 8009BA20 4200FFC0 */  bdnz      lbl_8009B9E0
/* 098A24 8009BA24 70630007 */  andi.     r3, r3, 0x7
/* 098A28 8009BA28 41820018 */  beq       lbl_8009BA40
lbl_8009BA2C:
/* 098A2C 8009BA2C 7C6903A6 */  mtctr     r3
/* 098A30 8009BA30 48000004 */  b         lbl_8009BA34
lbl_8009BA34:
/* 098A34 8009BA34 92C40000 */  stw       r22, 0x0(r4)
/* 098A38 8009BA38 38840004 */  addi      r4, r4, 0x4
/* 098A3C 8009BA3C 4200FFF8 */  bdnz      lbl_8009BA34
lbl_8009BA40:
/* 098A40 8009BA40 807C0000 */  lwz       r3, 0x0(r28)
/* 098A44 8009BA44 7F04C378 */  mr        r4, r24
/* 098A48 8009BA48 7EE5BB78 */  mr        r5, r23
/* 098A4C 8009BA4C 3E838000 */  addis     r20, r3, 0x8000
/* 098A50 8009BA50 7E83A378 */  mr        r3, r20
/* 098A54 8009BA54 4BF699C1 */  bl        memcpy
/* 098A58 8009BA58 7E83A378 */  mr        r3, r20
/* 098A5C 8009BA5C 7EE4BB78 */  mr        r4, r23
/* 098A60 8009BA60 480012C5 */  bl        DCFlushRangeNoSync
/* 098A64 8009BA64 7C0004AC */  sync
/* 098A68 8009BA68 7E83A378 */  mr        r3, r20
/* 098A6C 8009BA6C 7EE4BB78 */  mr        r4, r23
/* 098A70 8009BA70 4800130D */  bl        ICInvalidateRange
lbl_8009BA74:
/* 098A74 8009BA74 3B9C0004 */  addi      r28, r28, 0x4
/* 098A78 8009BA78 3B5A0001 */  addi      r26, r26, 0x1
lbl_8009BA7C:
/* 098A7C 8009BA7C 5740063E */  clrlwi    r0, r26, 24
/* 098A80 8009BA80 2800000F */  cmplwi    r0, 0xf
/* 098A84 8009BA84 4180FEB4 */  blt       lbl_8009B938
/* 098A88 8009BA88 3C608000 */  lis       r3, 0x8000
/* 098A8C 8009BA8C 38033000 */  addi      r0, r3, 0x3000
/* 098A90 8009BA90 900D8AD4 */  stw       r0, OSExceptionTable@sda21(r0)
/* 098A94 8009BA94 3A800000 */  li        r20, 0x0
/* 098A98 8009BA98 48000004 */  b         lbl_8009BA9C
lbl_8009BA9C:
/* 098A9C 8009BA9C 3C60800A */  lis       r3, OSDefaultExceptionHandler@ha
/* 098AA0 8009BAA0 3AE3BBE0 */  addi      r23, r3, OSDefaultExceptionHandler@l
/* 098AA4 8009BAA4 48000004 */  b         lbl_8009BAA8
lbl_8009BAA8:
/* 098AA8 8009BAA8 48000014 */  b         lbl_8009BABC
lbl_8009BAAC:
/* 098AAC 8009BAAC 7E83A378 */  mr        r3, r20
/* 098AB0 8009BAB0 7EE4BB78 */  mr        r4, r23
/* 098AB4 8009BAB4 48000061 */  bl        __OSSetExceptionHandler
/* 098AB8 8009BAB8 3A940001 */  addi      r20, r20, 0x1
lbl_8009BABC:
/* 098ABC 8009BABC 5680063E */  clrlwi    r0, r20, 24
/* 098AC0 8009BAC0 2800000F */  cmplwi    r0, 0xf
/* 098AC4 8009BAC4 4180FFE8 */  blt       lbl_8009BAAC
/* 098AC8 8009BAC8 933E0000 */  stw       r25, 0x0(r30)
/* 098ACC 8009BACC 387D01EC */  addi      r3, r29, 0x1ec
/* 098AD0 8009BAD0 4CC63182 */  crclr     cr1eq
/* 098AD4 8009BAD4 4800AD89 */  bl        DBPrintf
/* 098AD8 8009BAD8 BA810008 */  lmw       r20, 0x8(r1)
/* 098ADC 8009BADC 8001003C */  lwz       r0, 0x3c(r1)
/* 098AE0 8009BAE0 38210038 */  addi      r1, r1, 0x38
/* 098AE4 8009BAE4 7C0803A6 */  mtlr      r0
/* 098AE8 8009BAE8 4E800020 */  blr
.sym __OSDBINTSTART, global

__OSDBIntegrator:
/* 098AEC 8009BAEC 38A00040 */  li        r5, 0x40
/* 098AF0 8009BAF0 7C6802A6 */  mflr      r3
/* 098AF4 8009BAF4 9065000C */  stw       r3, 0xc(r5)
/* 098AF8 8009BAF8 80650008 */  lwz       r3, 0x8(r5)
/* 098AFC 8009BAFC 64638000 */  oris      r3, r3, 0x8000
/* 098B00 8009BB00 7C6803A6 */  mtlr      r3
/* 098B04 8009BB04 38600030 */  li        r3, 0x30
/* 098B08 8009BB08 7C600124 */  mtmsr     r3
/* 098B0C 8009BB0C 4E800020 */  blr
.sym __OSDBINTEND, global

glabel fn_8009BB10
/* 098B10 8009BB10 48000063 */  bla       0x60
.sym __OSDBJUMPEND, global

glabel __OSSetExceptionHandler
/* 098B14 8009BB14 5460063E */  clrlwi    r0, r3, 24
/* 098B18 8009BB18 806D8AD4 */  lwz       r3, OSExceptionTable@sda21(r0)
/* 098B1C 8009BB1C 5400103A */  slwi      r0, r0, 2
/* 098B20 8009BB20 7CA30214 */  add       r5, r3, r0
/* 098B24 8009BB24 80650000 */  lwz       r3, 0x0(r5)
/* 098B28 8009BB28 90850000 */  stw       r4, 0x0(r5)
/* 098B2C 8009BB2C 4E800020 */  blr

glabel __OSGetExceptionHandler
/* 098B30 8009BB30 5460063E */  clrlwi    r0, r3, 24
/* 098B34 8009BB34 806D8AD4 */  lwz       r3, OSExceptionTable@sda21(r0)
/* 098B38 8009BB38 5400103A */  slwi      r0, r0, 2
/* 098B3C 8009BB3C 7C63002E */  lwzx      r3, r3, r0
/* 098B40 8009BB40 4E800020 */  blr
.sym __OSEVStart, global

OSExceptionVector:
/* 098B44 8009BB44 7C9043A6 */  mtsprg    0, r4
/* 098B48 8009BB48 808000C0 */  lwz       r4, 0xc0(r0)
/* 098B4C 8009BB4C 9064000C */  stw       r3, 0xc(r4)
/* 098B50 8009BB50 7C7042A6 */  mfsprg    r3, 0
/* 098B54 8009BB54 90640010 */  stw       r3, 0x10(r4)
/* 098B58 8009BB58 90A40014 */  stw       r5, 0x14(r4)
/* 098B5C 8009BB5C A06401A2 */  lhz       r3, 0x1a2(r4)
/* 098B60 8009BB60 60630002 */  ori       r3, r3, 0x2
/* 098B64 8009BB64 B06401A2 */  sth       r3, 0x1a2(r4)
/* 098B68 8009BB68 7C600026 */  mfcr      r3
/* 098B6C 8009BB6C 90640080 */  stw       r3, 0x80(r4)
/* 098B70 8009BB70 7C6802A6 */  mflr      r3
/* 098B74 8009BB74 90640084 */  stw       r3, 0x84(r4)
/* 098B78 8009BB78 7C6902A6 */  mfctr     r3
/* 098B7C 8009BB7C 90640088 */  stw       r3, 0x88(r4)
/* 098B80 8009BB80 7C6102A6 */  mfxer     r3
/* 098B84 8009BB84 9064008C */  stw       r3, 0x8c(r4)
/* 098B88 8009BB88 7C7A02A6 */  mfsrr0    r3
/* 098B8C 8009BB8C 90640198 */  stw       r3, 0x198(r4)
/* 098B90 8009BB90 7C7B02A6 */  mfsrr1    r3
/* 098B94 8009BB94 9064019C */  stw       r3, 0x19c(r4)
/* 098B98 8009BB98 7C651B78 */  mr        r5, r3
.sym __DBVECTOR, global
/* 098B9C 8009BB9C 60000000 */  nop
/* 098BA0 8009BBA0 7C6000A6 */  mfmsr     r3
/* 098BA4 8009BBA4 60630030 */  ori       r3, r3, 0x30
/* 098BA8 8009BBA8 7C7B03A6 */  mtsrr1    r3
.sym __OSEVSetNumber, global
/* 098BAC 8009BBAC 38600000 */  li        r3, 0x0
/* 098BB0 8009BBB0 808000D4 */  lwz       r4, 0xd4(r0)
/* 098BB4 8009BBB4 54A507BD */  rlwinm.   r5, r5, 0, 30, 30
/* 098BB8 8009BBB8 40820014 */  bne       lbl_8009BBCC
/* 098BBC 8009BBBC 3CA0800A */  lis       r5, OSDefaultExceptionHandler@ha
/* 098BC0 8009BBC0 38A5BBE0 */  addi      r5, r5, OSDefaultExceptionHandler@l
/* 098BC4 8009BBC4 7CBA03A6 */  mtsrr0    r5
/* 098BC8 8009BBC8 4C000064 */  rfi
lbl_8009BBCC:
/* 098BCC 8009BBCC 546515BA */  clrlslwi  r5, r3, 24, 2
/* 098BD0 8009BBD0 80A53000 */  lwz       r5, 0x3000(r5)
/* 098BD4 8009BBD4 7CBA03A6 */  mtsrr0    r5
/* 098BD8 8009BBD8 4C000064 */  rfi
.sym __OSEVEnd, global
/* 098BDC 8009BBDC 60000000 */  nop

glabel OSDefaultExceptionHandler
/* 098BE0 8009BBE0 90040000 */  stw       r0, 0x0(r4)
/* 098BE4 8009BBE4 90240004 */  stw       r1, 0x4(r4)
/* 098BE8 8009BBE8 90440008 */  stw       r2, 0x8(r4)
/* 098BEC 8009BBEC BCC40018 */  stmw      r6, 0x18(r4)
/* 098BF0 8009BBF0 7C11E2A6 */  mfspr     r0, GQR1
/* 098BF4 8009BBF4 900401A8 */  stw       r0, 0x1a8(r4)
/* 098BF8 8009BBF8 7C12E2A6 */  mfspr     r0, GQR2
/* 098BFC 8009BBFC 900401AC */  stw       r0, 0x1ac(r4)
/* 098C00 8009BC00 7C13E2A6 */  mfspr     r0, GQR3
/* 098C04 8009BC04 900401B0 */  stw       r0, 0x1b0(r4)
/* 098C08 8009BC08 7C14E2A6 */  mfspr     r0, GQR4
/* 098C0C 8009BC0C 900401B4 */  stw       r0, 0x1b4(r4)
/* 098C10 8009BC10 7C15E2A6 */  mfspr     r0, GQR5
/* 098C14 8009BC14 900401B8 */  stw       r0, 0x1b8(r4)
/* 098C18 8009BC18 7C16E2A6 */  mfspr     r0, GQR6
/* 098C1C 8009BC1C 900401BC */  stw       r0, 0x1bc(r4)
/* 098C20 8009BC20 7C17E2A6 */  mfspr     r0, GQR7
/* 098C24 8009BC24 900401C0 */  stw       r0, 0x1c0(r4)
/* 098C28 8009BC28 7CB202A6 */  mfdsisr   r5
/* 098C2C 8009BC2C 7CD302A6 */  mfdar     r6
/* 098C30 8009BC30 9421FFF8 */  stwu      r1, -0x8(r1)
/* 098C34 8009BC34 480022D4 */  b         __OSUnhandledException

glabel __OSPSInit
/* 098C38 8009BC38 7C0802A6 */  mflr      r0
/* 098C3C 8009BC3C 90010004 */  stw       r0, 0x4(r1)
/* 098C40 8009BC40 9421FFF8 */  stwu      r1, -0x8(r1)
/* 098C44 8009BC44 4BFFF6DD */  bl        PPCMfhid2
/* 098C48 8009BC48 6463A000 */  oris      r3, r3, 0xa000
/* 098C4C 8009BC4C 4BFFF6DD */  bl        PPCMthid2
/* 098C50 8009BC50 48001161 */  bl        ICFlashInvalidate
/* 098C54 8009BC54 7C0004AC */  sync
/* 098C58 8009BC58 38600000 */  li        r3, 0x0
/* 098C5C 8009BC5C 7C70E3A6 */  mtspr     GQR0, r3
/* 098C60 8009BC60 8001000C */  lwz       r0, 0xc(r1)
/* 098C64 8009BC64 38210008 */  addi      r1, r1, 0x8
/* 098C68 8009BC68 7C0803A6 */  mtlr      r0
/* 098C6C 8009BC6C 4E800020 */  blr

glabel fn_8009BC70
/* 098C70 8009BC70 3C60CC00 */  lis       r3, 0xcc00
/* 098C74 8009BC74 38636000 */  addi      r3, r3, 0x6000
/* 098C78 8009BC78 80030024 */  lwz       r0, 0x24(r3)
/* 098C7C 8009BC7C 5403063E */  clrlwi    r3, r0, 24
/* 098C80 8009BC80 4E800020 */  blr

glabel OSRegisterVersion
/* 098C84 8009BC84 7C0802A6 */  mflr      r0
/* 098C88 8009BC88 90010004 */  stw       r0, 0x4(r1)
/* 098C8C 8009BC8C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 098C90 8009BC90 7C641B78 */  mr        r4, r3
/* 098C94 8009BC94 4CC63182 */  crclr     cr1eq
/* 098C98 8009BC98 386D8724 */  li        r3, D_8018B6A4@sda21
/* 098C9C 8009BC9C 48001EA9 */  bl        OSReport
/* 098CA0 8009BCA0 8001000C */  lwz       r0, 0xc(r1)
/* 098CA4 8009BCA4 38210008 */  addi      r1, r1, 0x8
/* 098CA8 8009BCA8 7C0803A6 */  mtlr      r0
/* 098CAC 8009BCAC 4E800020 */  blr

# 0x800F1AE8 - 0x800F1CF0
.section .data, "wa"

.balign 8

"@1":
	.string "<< Dolphin SDK - OS\trelease build: Sep  5 2002 05:32:39 (0x2301) >>"

glabel D_800F1B2C
	.string "\nDolphin OS $Revision: 58 $.\n"

glabel gap_05_800F1B4A_data
.hidden gap_05_800F1B4A_data
	.2byte 0x0000

glabel D_800F1B4C
	.string "Kernel built : %s %s\n"

glabel gap_05_800F1B62_data
.hidden gap_05_800F1B62_data
	.2byte 0x0000

glabel D_800F1B64
	.string "Sep  5 2002"

glabel D_800F1B70
	.string "05:32:39"

glabel gap_05_800F1B79_data
.hidden gap_05_800F1B79_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1B7C
	.string "Console Type : "

glabel D_800F1B8C
	.string "Retail %d\n"

glabel gap_05_800F1B97_data
.hidden gap_05_800F1B97_data
	.byte 0x00

glabel D_800F1B98
	.string "Mac Emulator\n"

glabel gap_05_800F1BA6_data
.hidden gap_05_800F1BA6_data
	.2byte 0x0000

glabel D_800F1BA8
	.string "PC Emulator\n"

glabel gap_05_800F1BB5_data
.hidden gap_05_800F1BB5_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1BB8
	.string "EPPC Arthur\n"

glabel gap_05_800F1BC5_data
.hidden gap_05_800F1BC5_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1BC8
	.string "EPPC Minnow\n"

glabel gap_05_800F1BD5_data
.hidden gap_05_800F1BD5_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1BD8
	.string "Development HW%d (%08x)\n"

glabel gap_05_800F1BF1_data
.hidden gap_05_800F1BF1_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1BF4
	.string "Memory %d MB\n"

glabel gap_05_800F1C02_data
.hidden gap_05_800F1C02_data
	.2byte 0x0000

glabel D_800F1C04
	.string "Arena : 0x%x - 0x%x\n"

glabel gap_05_800F1C19_data
.hidden gap_05_800F1C19_data
	.byte 0x00, 0x00, 0x00

glabel D_800F1C1C
	.string "\000"

glabel gap_05_800F1C1E_data
.hidden gap_05_800F1C1E_data
	.2byte 0x0100

glabel D_800F1C20
	.string "\000"

glabel gap_05_800F1C22_data
.hidden gap_05_800F1C22_data
	.2byte 0x0200

glabel D_800F1C24
	.string "\000"

glabel gap_05_800F1C26_data
.hidden gap_05_800F1C26_data
	.2byte 0x0300

glabel D_800F1C28
	.string "\000"

glabel gap_05_800F1C2A_data
.hidden gap_05_800F1C2A_data
	.2byte 0x0400

glabel D_800F1C2C
	.string "\000"

glabel gap_05_800F1C2E_data
.hidden gap_05_800F1C2E_data
	.2byte 0x0500

glabel D_800F1C30
	.string "\000"

glabel gap_05_800F1C32_data
.hidden gap_05_800F1C32_data
	.2byte 0x0600

glabel D_800F1C34
	.string "\000"

glabel gap_05_800F1C36_data
.hidden gap_05_800F1C36_data
	.2byte 0x0700

glabel D_800F1C38
	.string "\000"

glabel gap_05_800F1C3A_data
.hidden gap_05_800F1C3A_data
	.2byte 0x0800

glabel D_800F1C3C
	.string "\000"

glabel gap_05_800F1C3E_data
.hidden gap_05_800F1C3E_data
	.2byte 0x0900

glabel D_800F1C40
	.string "\000"

glabel gap_05_800F1C42_data
.hidden gap_05_800F1C42_data
	.2byte 0x0C00

glabel D_800F1C44
	.string "\000"

glabel gap_05_800F1C46_data
.hidden gap_05_800F1C46_data
	.2byte 0x0D00

glabel D_800F1C48
	.string "\000"

glabel gap_05_800F1C4A_data
.hidden gap_05_800F1C4A_data
	.2byte 0x0F00

glabel D_800F1C4C
	.string "\000"

glabel gap_05_800F1C4E_data
.hidden gap_05_800F1C4E_data
	.2byte 0x1300

glabel D_800F1C50
	.string "\000"

glabel gap_05_800F1C52_data
.hidden gap_05_800F1C52_data
	.2byte 0x1400

glabel D_800F1C54
	.string "\000"

glabel gap_05_800F1C56_data
.hidden gap_05_800F1C56_data
	.2byte 0x1700

glabel D_800F1C58
	.string "Installing OSDBIntegrator\n"

glabel gap_05_800F1C73_data
.hidden gap_05_800F1C73_data
	.byte 0x00

glabel D_800F1C74
	.string ">>> OSINIT: exception %d commandeered by TRK\n"

glabel gap_05_800F1CA2_data
.hidden gap_05_800F1CA2_data
	.2byte 0x0000

glabel D_800F1CA4
	.string ">>> OSINIT: exception %d vectored to debugger\n"

glabel gap_05_800F1CD3_data
.hidden gap_05_800F1CD3_data
	.byte 0x00

glabel D_800F1CD4
	.string "Exceptions initialized...\n"

glabel gap_05_800F1CEF_data
.hidden gap_05_800F1CEF_data
	.byte 0x00

# 0x80187280 - 0x801872D0
.section .bss, "wa"

DriveInfo:
	.skip 0x20

DriveBlock:
	.skip 0x20

glabel gap_06_801872C0_bss
.hidden gap_06_801872C0_bss
	.skip 0x10

# 0x8018B6A0 - 0x8018B6A8
.section .sdata, "wa"

glabel __OSVersion
	.long "@1"

glabel D_8018B6A4
	.string "%s\n"

# 0x8018BA40 - 0x8018BA70
.section .sbss, "wa"

BootInfo:
	.skip 0x4

BI2DebugFlag:
	.skip 0x4

BI2DebugFlagHolder:
	.skip 0x4

__OSIsGcam:
	.skip 0x4

AreWeInitialized:
	.skip 0x4

OSExceptionTable:
	.skip 0x4

glabel __OSSavedRegionEnd
	.skip 0x4

glabel __OSSavedRegionStart
	.skip 0x4

glabel __OSInIPL
	.skip 0x4

glabel gap_08_8018BA64_sbss
.hidden gap_08_8018BA64_sbss
	.skip 0x4

glabel __OSStartTime
	.skip 0x8
