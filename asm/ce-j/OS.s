# OS.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel __OSFPRInit
/* 096630 8009BBD0 7C6000A6 */  mfmsr   r3
/* 096634 8009BBD4 60632000 */  ori     r3, r3, 0x2000
/* 096638 8009BBD8 7C600124 */  mtmsr   r3
/* 09663C 8009BBDC 7C78E2A6 */  mfspr   r3, 0x398
/* 096640 8009BBE0 54631FFF */  rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 096644 8009BBE4 4182008C */  beq     lbl_8009BC70
/* 096648 8009BBE8 3C608013 */  lis     r3, ZeroPS@ha
/* 09664C 8009BBEC 386357C8 */  addi    r3, r3, ZeroPS@l
/* 096650 8009BBF0 E0030000 */  psq_l   f0, 0(r3), 0, qr0
/* 096654 8009BBF4 10200090 */  ps_mr   f1, f0
/* 096658 8009BBF8 10400090 */  ps_mr   f2, f0
/* 09665C 8009BBFC 10600090 */  ps_mr   f3, f0
/* 096660 8009BC00 10800090 */  ps_mr   f4, f0
/* 096664 8009BC04 10A00090 */  ps_mr   f5, f0
/* 096668 8009BC08 10C00090 */  ps_mr   f6, f0
/* 09666C 8009BC0C 10E00090 */  ps_mr   f7, f0
/* 096670 8009BC10 11000090 */  ps_mr   f8, f0
/* 096674 8009BC14 11200090 */  ps_mr   f9, f0
/* 096678 8009BC18 11400090 */  ps_mr   f10, f0
/* 09667C 8009BC1C 11600090 */  ps_mr   f11, f0
/* 096680 8009BC20 11800090 */  ps_mr   f12, f0
/* 096684 8009BC24 11A00090 */  ps_mr   f13, f0
/* 096688 8009BC28 11C00090 */  ps_mr   f14, f0
/* 09668C 8009BC2C 11E00090 */  ps_mr   f15, f0
/* 096690 8009BC30 12000090 */  ps_mr   f16, f0
/* 096694 8009BC34 12200090 */  ps_mr   f17, f0
/* 096698 8009BC38 12400090 */  ps_mr   f18, f0
/* 09669C 8009BC3C 12600090 */  ps_mr   f19, f0
/* 0966A0 8009BC40 12800090 */  ps_mr   f20, f0
/* 0966A4 8009BC44 12A00090 */  ps_mr   f21, f0
/* 0966A8 8009BC48 12C00090 */  ps_mr   f22, f0
/* 0966AC 8009BC4C 12E00090 */  ps_mr   f23, f0
/* 0966B0 8009BC50 13000090 */  ps_mr   f24, f0
/* 0966B4 8009BC54 13200090 */  ps_mr   f25, f0
/* 0966B8 8009BC58 13400090 */  ps_mr   f26, f0
/* 0966BC 8009BC5C 13600090 */  ps_mr   f27, f0
/* 0966C0 8009BC60 13800090 */  ps_mr   f28, f0
/* 0966C4 8009BC64 13A00090 */  ps_mr   f29, f0
/* 0966C8 8009BC68 13C00090 */  ps_mr   f30, f0
/* 0966CC 8009BC6C 13E00090 */  ps_mr   f31, f0
lbl_8009BC70:
/* 0966D0 8009BC70 C80D8AE0 */  lfd     f0, ZeroF@sda21(r13)
/* 0966D4 8009BC74 FC200090 */  fmr     f1, f0
/* 0966D8 8009BC78 FC400090 */  fmr     f2, f0
/* 0966DC 8009BC7C FC600090 */  fmr     f3, f0
/* 0966E0 8009BC80 FC800090 */  fmr     f4, f0
/* 0966E4 8009BC84 FCA00090 */  fmr     f5, f0
/* 0966E8 8009BC88 FCC00090 */  fmr     f6, f0
/* 0966EC 8009BC8C FCE00090 */  fmr     f7, f0
/* 0966F0 8009BC90 FD000090 */  fmr     f8, f0
/* 0966F4 8009BC94 FD200090 */  fmr     f9, f0
/* 0966F8 8009BC98 FD400090 */  fmr     f10, f0
/* 0966FC 8009BC9C FD600090 */  fmr     f11, f0
/* 096700 8009BCA0 FD800090 */  fmr     f12, f0
/* 096704 8009BCA4 FDA00090 */  fmr     f13, f0
/* 096708 8009BCA8 FDC00090 */  fmr     f14, f0
/* 09670C 8009BCAC FDE00090 */  fmr     f15, f0
/* 096710 8009BCB0 FE000090 */  fmr     f16, f0
/* 096714 8009BCB4 FE200090 */  fmr     f17, f0
/* 096718 8009BCB8 FE400090 */  fmr     f18, f0
/* 09671C 8009BCBC FE600090 */  fmr     f19, f0
/* 096720 8009BCC0 FE800090 */  fmr     f20, f0
/* 096724 8009BCC4 FEA00090 */  fmr     f21, f0
/* 096728 8009BCC8 FEC00090 */  fmr     f22, f0
/* 09672C 8009BCCC FEE00090 */  fmr     f23, f0
/* 096730 8009BCD0 FF000090 */  fmr     f24, f0
/* 096734 8009BCD4 FF200090 */  fmr     f25, f0
/* 096738 8009BCD8 FF400090 */  fmr     f26, f0
/* 09673C 8009BCDC FF600090 */  fmr     f27, f0
/* 096740 8009BCE0 FF800090 */  fmr     f28, f0
/* 096744 8009BCE4 FFA00090 */  fmr     f29, f0
/* 096748 8009BCE8 FFC00090 */  fmr     f30, f0
/* 09674C 8009BCEC FFE00090 */  fmr     f31, f0
/* 096750 8009BCF0 FDFE058E */  mtfsf   0xff, f0
/* 096754 8009BCF4 4E800020 */  blr     

glabel OSGetConsoleType
/* 096758 8009BCF8 806D8AD0 */  lwz     r3, BootInfo@sda21(r13)
/* 09675C 8009BCFC 28030000 */  cmplwi  r3, 0
/* 096760 8009BD00 41820010 */  beq     lbl_8009BD10
/* 096764 8009BD04 8063002C */  lwz     r3, 0x2c(r3)
/* 096768 8009BD08 28030000 */  cmplwi  r3, 0
/* 09676C 8009BD0C 40820010 */  bne     lbl_8009BD1C
lbl_8009BD10:
/* 096770 8009BD10 3C601000 */  lis     r3, 0x1000
/* 096774 8009BD14 38630002 */  addi    r3, r3, 2
/* 096778 8009BD18 48000004 */  b       lbl_8009BD1C
lbl_8009BD1C:
/* 09677C 8009BD1C 4E800020 */  blr     

ClearArena:
/* 096780 8009BD20 7C0802A6 */  mflr    r0
/* 096784 8009BD24 90010004 */  stw     r0, 4(r1)
/* 096788 8009BD28 9421FFF0 */  stwu    r1, -0x10(r1)
/* 09678C 8009BD2C 93E1000C */  stw     r31, 0xc(r1)
/* 096790 8009BD30 480044ED */  bl      OSGetResetCode
/* 096794 8009BD34 3C038000 */  addis   r0, r3, 0x8000
/* 096798 8009BD38 28000000 */  cmplwi  r0, 0
/* 09679C 8009BD3C 41820034 */  beq     lbl_8009BD70
/* 0967A0 8009BD40 38000000 */  li      r0, 0
/* 0967A4 8009BD44 900D8AFC */  stw     r0, __OSSavedRegionStart@sda21(r13)
/* 0967A8 8009BD48 900D8AF8 */  stw     r0, __OSSavedRegionEnd@sda21(r13)
/* 0967AC 8009BD4C 4800173D */  bl      OSGetArenaHi
/* 0967B0 8009BD50 7C7F1B78 */  mr      r31, r3
/* 0967B4 8009BD54 4800173D */  bl      OSGetArenaLo
/* 0967B8 8009BD58 7FE3F850 */  subf    r31, r3, r31
/* 0967BC 8009BD5C 48001735 */  bl      OSGetArenaLo
/* 0967C0 8009BD60 7FE5FB78 */  mr      r5, r31
/* 0967C4 8009BD64 38800000 */  li      r4, 0
/* 0967C8 8009BD68 4BF69669 */  bl      memset
/* 0967CC 8009BD6C 480000C8 */  b       lbl_8009BE34
lbl_8009BD70:
/* 0967D0 8009BD70 3C808130 */  lis     r4, 0x8130
/* 0967D4 8009BD74 8064DFF0 */  lwz     r3, -0x2010(r4)
/* 0967D8 8009BD78 8004DFEC */  lwz     r0, -0x2014(r4)
/* 0967DC 8009BD7C 28030000 */  cmplwi  r3, 0
/* 0967E0 8009BD80 906D8AFC */  stw     r3, __OSSavedRegionStart@sda21(r13)
/* 0967E4 8009BD84 900D8AF8 */  stw     r0, __OSSavedRegionEnd@sda21(r13)
/* 0967E8 8009BD88 40820028 */  bne     lbl_8009BDB0
/* 0967EC 8009BD8C 480016FD */  bl      OSGetArenaHi
/* 0967F0 8009BD90 7C7F1B78 */  mr      r31, r3
/* 0967F4 8009BD94 480016FD */  bl      OSGetArenaLo
/* 0967F8 8009BD98 7FE3F850 */  subf    r31, r3, r31
/* 0967FC 8009BD9C 480016F5 */  bl      OSGetArenaLo
/* 096800 8009BDA0 7FE5FB78 */  mr      r5, r31
/* 096804 8009BDA4 38800000 */  li      r4, 0
/* 096808 8009BDA8 4BF69629 */  bl      memset
/* 09680C 8009BDAC 48000088 */  b       lbl_8009BE34
lbl_8009BDB0:
/* 096810 8009BDB0 480016E1 */  bl      OSGetArenaLo
/* 096814 8009BDB4 800D8AFC */  lwz     r0, __OSSavedRegionStart@sda21(r13)
/* 096818 8009BDB8 7C030040 */  cmplw   r3, r0
/* 09681C 8009BDBC 40800078 */  bge     lbl_8009BE34
/* 096820 8009BDC0 480016C9 */  bl      OSGetArenaHi
/* 096824 8009BDC4 800D8AFC */  lwz     r0, __OSSavedRegionStart@sda21(r13)
/* 096828 8009BDC8 7C030040 */  cmplw   r3, r0
/* 09682C 8009BDCC 41810028 */  bgt     lbl_8009BDF4
/* 096830 8009BDD0 480016B9 */  bl      OSGetArenaHi
/* 096834 8009BDD4 7C7F1B78 */  mr      r31, r3
/* 096838 8009BDD8 480016B9 */  bl      OSGetArenaLo
/* 09683C 8009BDDC 7FE3F850 */  subf    r31, r3, r31
/* 096840 8009BDE0 480016B1 */  bl      OSGetArenaLo
/* 096844 8009BDE4 7FE5FB78 */  mr      r5, r31
/* 096848 8009BDE8 38800000 */  li      r4, 0
/* 09684C 8009BDEC 4BF695E5 */  bl      memset
/* 096850 8009BDF0 48000044 */  b       lbl_8009BE34
lbl_8009BDF4:
/* 096854 8009BDF4 4800169D */  bl      OSGetArenaLo
/* 096858 8009BDF8 800D8AFC */  lwz     r0, __OSSavedRegionStart@sda21(r13)
/* 09685C 8009BDFC 7FE30050 */  subf    r31, r3, r0
/* 096860 8009BE00 48001691 */  bl      OSGetArenaLo
/* 096864 8009BE04 7FE5FB78 */  mr      r5, r31
/* 096868 8009BE08 38800000 */  li      r4, 0
/* 09686C 8009BE0C 4BF695C5 */  bl      memset
/* 096870 8009BE10 48001679 */  bl      OSGetArenaHi
/* 096874 8009BE14 83ED8AF8 */  lwz     r31, __OSSavedRegionEnd@sda21(r13)
/* 096878 8009BE18 7C03F840 */  cmplw   r3, r31
/* 09687C 8009BE1C 40810018 */  ble     lbl_8009BE34
/* 096880 8009BE20 48001669 */  bl      OSGetArenaHi
/* 096884 8009BE24 7CBF1850 */  subf    r5, r31, r3
/* 096888 8009BE28 7FE3FB78 */  mr      r3, r31
/* 09688C 8009BE2C 38800000 */  li      r4, 0
/* 096890 8009BE30 4BF695A1 */  bl      memset
lbl_8009BE34:
/* 096894 8009BE34 80010014 */  lwz     r0, 0x14(r1)
/* 096898 8009BE38 83E1000C */  lwz     r31, 0xc(r1)
/* 09689C 8009BE3C 38210010 */  addi    r1, r1, 0x10
/* 0968A0 8009BE40 7C0803A6 */  mtlr    r0
/* 0968A4 8009BE44 4E800020 */  blr     

InquiryCallback:
/* 0968A8 8009BE48 8004000C */  lwz     r0, 0xc(r4)
/* 0968AC 8009BE4C 2C000000 */  cmpwi   r0, 0
/* 0968B0 8009BE50 41820008 */  beq     lbl_8009BE58
/* 0968B4 8009BE54 48000020 */  b       lbl_8009BE74
lbl_8009BE58:
/* 0968B8 8009BE58 3C608013 */  lis     r3, DriveInfo@ha
/* 0968BC 8009BE5C 38630F20 */  addi    r3, r3, DriveInfo@l
/* 0968C0 8009BE60 A0030002 */  lhz     r0, 2(r3)
/* 0968C4 8009BE64 3C608000 */  lis     r3, 0x8000
/* 0968C8 8009BE68 60008000 */  ori     r0, r0, 0x8000
/* 0968CC 8009BE6C B00330E6 */  sth     r0, 0x30e6(r3)
/* 0968D0 8009BE70 48000010 */  b       lbl_8009BE80
lbl_8009BE74:
/* 0968D4 8009BE74 38000001 */  li      r0, 1
/* 0968D8 8009BE78 3C608000 */  lis     r3, 0x8000
/* 0968DC 8009BE7C B00330E6 */  sth     r0, 0x30e6(r3)
lbl_8009BE80:
/* 0968E0 8009BE80 4E800020 */  blr     

glabel OSInit
/* 0968E4 8009BE84 7C0802A6 */  mflr    r0
/* 0968E8 8009BE88 90010004 */  stw     r0, 4(r1)
/* 0968EC 8009BE8C 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0968F0 8009BE90 93E10014 */  stw     r31, 0x14(r1)
/* 0968F4 8009BE94 93C10010 */  stw     r30, 0x10(r1)
/* 0968F8 8009BE98 93A1000C */  stw     r29, 0xc(r1)
/* 0968FC 8009BE9C 800D8AF0 */  lwz     r0, AreWeInitialized@sda21(r13)
/* 096900 8009BEA0 3C608013 */  lis     r3, DriveInfo@ha
/* 096904 8009BEA4 3BC30F20 */  addi    r30, r3, DriveInfo@l
/* 096908 8009BEA8 2C000000 */  cmpwi   r0, 0
/* 09690C 8009BEAC 3C60800F */  lis     r3, D_800F0628@ha
/* 096910 8009BEB0 3BE30628 */  addi    r31, r3, D_800F0628@l
/* 096914 8009BEB4 4082038C */  bne     lbl_8009C240
/* 096918 8009BEB8 38000001 */  li      r0, 1
/* 09691C 8009BEBC 900D8AF0 */  stw     r0, AreWeInitialized@sda21(r13)
/* 096920 8009BEC0 48006409 */  bl      __OSGetSystemTime
/* 096924 8009BEC4 908D8B0C */  stw     r4, (__OSStartTime + 4)@sda21(r13)
/* 096928 8009BEC8 906D8B08 */  stw     r3, __OSStartTime@sda21(r13)
/* 09692C 8009BECC 48002E31 */  bl      OSDisableInterrupts
/* 096930 8009BED0 38600000 */  li      r3, 0
/* 096934 8009BED4 4BFFFC3D */  bl      PPCMtmmcr0
/* 096938 8009BED8 38600000 */  li      r3, 0
/* 09693C 8009BEDC 4BFFFC3D */  bl      PPCMtmmcr1
/* 096940 8009BEE0 38600000 */  li      r3, 0
/* 096944 8009BEE4 4BFFFC3D */  bl      PPCMtpmc1
/* 096948 8009BEE8 38600000 */  li      r3, 0
/* 09694C 8009BEEC 4BFFFC3D */  bl      PPCMtpmc2
/* 096950 8009BEF0 38600000 */  li      r3, 0
/* 096954 8009BEF4 4BFFFC3D */  bl      PPCMtpmc3
/* 096958 8009BEF8 38600000 */  li      r3, 0
/* 09695C 8009BEFC 4BFFFC3D */  bl      PPCMtpmc4
/* 096960 8009BF00 4BFFFCA1 */  bl      PPCDisableSpeculation
/* 096964 8009BF04 4BFFFCC5 */  bl      PPCSetFpNonIEEEMode
/* 096968 8009BF08 38000000 */  li      r0, 0
/* 09696C 8009BF0C 3C808000 */  lis     r4, 0x8000
/* 096970 8009BF10 900D8AD4 */  stw     r0, BI2DebugFlag@sda21(r13)
/* 096974 8009BF14 908D8AD0 */  stw     r4, BootInfo@sda21(r13)
/* 096978 8009BF18 900D8D24 */  stw     r0, __DVDLongFileNameFlag@sda21(r13)
/* 09697C 8009BF1C 806400F4 */  lwz     r3, 0xf4(r4)
/* 096980 8009BF20 28030000 */  cmplwi  r3, 0
/* 096984 8009BF24 41820034 */  beq     lbl_8009BF58
/* 096988 8009BF28 3803000C */  addi    r0, r3, 0xc
/* 09698C 8009BF2C 900D8AD4 */  stw     r0, BI2DebugFlag@sda21(r13)
/* 096990 8009BF30 80030024 */  lwz     r0, 0x24(r3)
/* 096994 8009BF34 806D8AD4 */  lwz     r3, BI2DebugFlag@sda21(r13)
/* 096998 8009BF38 900D8CC0 */  stw     r0, __PADSpec@sda21(r13)
/* 09699C 8009BF3C 80030000 */  lwz     r0, 0(r3)
/* 0969A0 8009BF40 5400063E */  clrlwi  r0, r0, 0x18
/* 0969A4 8009BF44 980430E8 */  stb     r0, 0x30e8(r4)
/* 0969A8 8009BF48 800D8CC0 */  lwz     r0, __PADSpec@sda21(r13)
/* 0969AC 8009BF4C 5400063E */  clrlwi  r0, r0, 0x18
/* 0969B0 8009BF50 980430E9 */  stb     r0, 0x30e9(r4)
/* 0969B4 8009BF54 48000028 */  b       lbl_8009BF7C
lbl_8009BF58:
/* 0969B8 8009BF58 80040034 */  lwz     r0, 0x34(r4)
/* 0969BC 8009BF5C 28000000 */  cmplwi  r0, 0
/* 0969C0 8009BF60 4182001C */  beq     lbl_8009BF7C
/* 0969C4 8009BF64 886430E8 */  lbz     r3, 0x30e8(r4)
/* 0969C8 8009BF68 380D8AD8 */  addi    r0, r13, BI2DebugFlagHolder@sda21
/* 0969CC 8009BF6C 906D8AD8 */  stw     r3, BI2DebugFlagHolder@sda21(r13)
/* 0969D0 8009BF70 900D8AD4 */  stw     r0, BI2DebugFlag@sda21(r13)
/* 0969D4 8009BF74 880430E9 */  lbz     r0, 0x30e9(r4)
/* 0969D8 8009BF78 900D8CC0 */  stw     r0, __PADSpec@sda21(r13)
lbl_8009BF7C:
/* 0969DC 8009BF7C 38000001 */  li      r0, 1
/* 0969E0 8009BF80 806D8AD0 */  lwz     r3, BootInfo@sda21(r13)
/* 0969E4 8009BF84 900D8D24 */  stw     r0, __DVDLongFileNameFlag@sda21(r13)
/* 0969E8 8009BF88 80630030 */  lwz     r3, 0x30(r3)
/* 0969EC 8009BF8C 28030000 */  cmplwi  r3, 0
/* 0969F0 8009BF90 40820010 */  bne     lbl_8009BFA0
/* 0969F4 8009BF94 3C608015 */  lis     r3, _db_stack_addr@ha
/* 0969F8 8009BF98 38638420 */  addi    r3, r3, _db_stack_addr@l
/* 0969FC 8009BF9C 48000004 */  b       lbl_8009BFA0
lbl_8009BFA0:
/* 096A00 8009BFA0 48001501 */  bl      OSSetArenaLo
/* 096A04 8009BFA4 806D8AD0 */  lwz     r3, BootInfo@sda21(r13)
/* 096A08 8009BFA8 80030030 */  lwz     r0, 0x30(r3)
/* 096A0C 8009BFAC 28000000 */  cmplwi  r0, 0
/* 096A10 8009BFB0 40820030 */  bne     lbl_8009BFE0
/* 096A14 8009BFB4 806D8AD4 */  lwz     r3, BI2DebugFlag@sda21(r13)
/* 096A18 8009BFB8 28030000 */  cmplwi  r3, 0
/* 096A1C 8009BFBC 41820024 */  beq     lbl_8009BFE0
/* 096A20 8009BFC0 80030000 */  lwz     r0, 0(r3)
/* 096A24 8009BFC4 28000002 */  cmplwi  r0, 2
/* 096A28 8009BFC8 40800018 */  bge     lbl_8009BFE0
/* 096A2C 8009BFCC 3C608014 */  lis     r3, _stack_addr@ha
/* 096A30 8009BFD0 38636420 */  addi    r3, r3, _stack_addr@l
/* 096A34 8009BFD4 3803001F */  addi    r0, r3, 0x1f
/* 096A38 8009BFD8 54030034 */  rlwinm  r3, r0, 0, 0, 0x1a
/* 096A3C 8009BFDC 480014C5 */  bl      OSSetArenaLo
lbl_8009BFE0:
/* 096A40 8009BFE0 806D8AD0 */  lwz     r3, BootInfo@sda21(r13)
/* 096A44 8009BFE4 80630034 */  lwz     r3, 0x34(r3)
/* 096A48 8009BFE8 28030000 */  cmplwi  r3, 0
/* 096A4C 8009BFEC 40820010 */  bne     lbl_8009BFFC
/* 096A50 8009BFF0 3C608170 */  lis     r3, __ArenaHi@ha
/* 096A54 8009BFF4 38630000 */  addi    r3, r3, __ArenaHi@l
/* 096A58 8009BFF8 48000004 */  b       lbl_8009BFFC
lbl_8009BFFC:
/* 096A5C 8009BFFC 4800149D */  bl      OSSetArenaHi
/* 096A60 8009C000 4800025D */  bl      OSExceptionInit
/* 096A64 8009C004 48005071 */  bl      __OSInitSystemCall
/* 096A68 8009C008 480006B5 */  bl      OSInitAlarm
/* 096A6C 8009C00C 4800355D */  bl      __OSModuleInit
/* 096A70 8009C010 48002D69 */  bl      __OSInterruptInit
/* 096A74 8009C014 3C60800A */  lis     r3, __OSResetSWInterruptHandler@ha
/* 096A78 8009C018 3883024C */  addi    r4, r3, __OSResetSWInterruptHandler@l
/* 096A7C 8009C01C 38600016 */  li      r3, 0x16
/* 096A80 8009C020 48002D29 */  bl      __OSSetInterruptHandler
/* 096A84 8009C024 4800258D */  bl      __OSContextInit
/* 096A88 8009C028 48001C6D */  bl      __OSCacheInit
/* 096A8C 8009C02C 48007981 */  bl      EXIInit
/* 096A90 8009C030 48008FE1 */  bl      SIInit
/* 096A94 8009C034 4800471D */  bl      __OSInitSram
/* 096A98 8009C038 480050A5 */  bl      __OSThreadInit
/* 096A9C 8009C03C 4800146D */  bl      __OSInitAudioSystem
/* 096AA0 8009C040 4BFFFB49 */  bl      PPCMfhid2
/* 096AA4 8009C044 54630080 */  rlwinm  r3, r3, 0, 2, 0
/* 096AA8 8009C048 4BFFFB49 */  bl      PPCMthid2
/* 096AAC 8009C04C 800D8B00 */  lwz     r0, __OSInIPL@sda21(r13)
/* 096AB0 8009C050 2C000000 */  cmpwi   r0, 0
/* 096AB4 8009C054 40820008 */  bne     lbl_8009C05C
/* 096AB8 8009C058 480038ED */  bl      __OSInitMemoryProtection
lbl_8009C05C:
/* 096ABC 8009C05C 387F0044 */  addi    r3, r31, 0x44
/* 096AC0 8009C060 4CC63182 */  crclr   6
/* 096AC4 8009C064 48002595 */  bl      OSReport
/* 096AC8 8009C068 387F0054 */  addi    r3, r31, 0x54
/* 096ACC 8009C06C 4CC63182 */  crclr   6
/* 096AD0 8009C070 389F006C */  addi    r4, r31, 0x6c
/* 096AD4 8009C074 38BF0078 */  addi    r5, r31, 0x78
/* 096AD8 8009C078 48002581 */  bl      OSReport
/* 096ADC 8009C07C 387F0084 */  addi    r3, r31, 0x84
/* 096AE0 8009C080 4CC63182 */  crclr   6
/* 096AE4 8009C084 48002575 */  bl      OSReport
/* 096AE8 8009C088 806D8AD0 */  lwz     r3, BootInfo@sda21(r13)
/* 096AEC 8009C08C 28030000 */  cmplwi  r3, 0
/* 096AF0 8009C090 41820010 */  beq     lbl_8009C0A0
/* 096AF4 8009C094 8083002C */  lwz     r4, 0x2c(r3)
/* 096AF8 8009C098 28040000 */  cmplwi  r4, 0
/* 096AFC 8009C09C 40820010 */  bne     lbl_8009C0AC
lbl_8009C0A0:
/* 096B00 8009C0A0 3C601000 */  lis     r3, 0x1000
/* 096B04 8009C0A4 38830002 */  addi    r4, r3, 2
/* 096B08 8009C0A8 48000004 */  b       lbl_8009C0AC
lbl_8009C0AC:
/* 096B0C 8009C0AC 54830006 */  rlwinm  r3, r4, 0, 0, 3
/* 096B10 8009C0B0 3C001000 */  lis     r0, 0x1000
/* 096B14 8009C0B4 7C030000 */  cmpw    r3, r0
/* 096B18 8009C0B8 41820034 */  beq     lbl_8009C0EC
/* 096B1C 8009C0BC 40800010 */  bge     lbl_8009C0CC
/* 096B20 8009C0C0 2C030000 */  cmpwi   r3, 0
/* 096B24 8009C0C4 41820018 */  beq     lbl_8009C0DC
/* 096B28 8009C0C8 480000B8 */  b       lbl_8009C180
lbl_8009C0CC:
/* 096B2C 8009C0CC 3C002000 */  lis     r0, 0x2000
/* 096B30 8009C0D0 7C030000 */  cmpw    r3, r0
/* 096B34 8009C0D4 41820018 */  beq     lbl_8009C0EC
/* 096B38 8009C0D8 480000A8 */  b       lbl_8009C180
lbl_8009C0DC:
/* 096B3C 8009C0DC 4CC63182 */  crclr   6
/* 096B40 8009C0E0 387F0094 */  addi    r3, r31, 0x94
/* 096B44 8009C0E4 48002515 */  bl      OSReport
/* 096B48 8009C0E8 480000A4 */  b       lbl_8009C18C
lbl_8009C0EC:
/* 096B4C 8009C0EC 3C601000 */  lis     r3, 0x1000
/* 096B50 8009C0F0 5485013E */  clrlwi  r5, r4, 4
/* 096B54 8009C0F4 38030002 */  addi    r0, r3, 2
/* 096B58 8009C0F8 7C050000 */  cmpw    r5, r0
/* 096B5C 8009C0FC 41820048 */  beq     lbl_8009C144
/* 096B60 8009C100 40800014 */  bge     lbl_8009C114
/* 096B64 8009C104 7C051800 */  cmpw    r5, r3
/* 096B68 8009C108 4182001C */  beq     lbl_8009C124
/* 096B6C 8009C10C 40800028 */  bge     lbl_8009C134
/* 096B70 8009C110 48000054 */  b       lbl_8009C164
lbl_8009C114:
/* 096B74 8009C114 38030004 */  addi    r0, r3, 4
/* 096B78 8009C118 7C050000 */  cmpw    r5, r0
/* 096B7C 8009C11C 40800048 */  bge     lbl_8009C164
/* 096B80 8009C120 48000034 */  b       lbl_8009C154
lbl_8009C124:
/* 096B84 8009C124 387F00A0 */  addi    r3, r31, 0xa0
/* 096B88 8009C128 4CC63182 */  crclr   6
/* 096B8C 8009C12C 480024CD */  bl      OSReport
/* 096B90 8009C130 4800005C */  b       lbl_8009C18C
lbl_8009C134:
/* 096B94 8009C134 387F00B0 */  addi    r3, r31, 0xb0
/* 096B98 8009C138 4CC63182 */  crclr   6
/* 096B9C 8009C13C 480024BD */  bl      OSReport
/* 096BA0 8009C140 4800004C */  b       lbl_8009C18C
lbl_8009C144:
/* 096BA4 8009C144 387F00C0 */  addi    r3, r31, 0xc0
/* 096BA8 8009C148 4CC63182 */  crclr   6
/* 096BAC 8009C14C 480024AD */  bl      OSReport
/* 096BB0 8009C150 4800003C */  b       lbl_8009C18C
lbl_8009C154:
/* 096BB4 8009C154 387F00D0 */  addi    r3, r31, 0xd0
/* 096BB8 8009C158 4CC63182 */  crclr   6
/* 096BBC 8009C15C 4800249D */  bl      OSReport
/* 096BC0 8009C160 4800002C */  b       lbl_8009C18C
lbl_8009C164:
/* 096BC4 8009C164 5486013E */  clrlwi  r6, r4, 4
/* 096BC8 8009C168 4CC63182 */  crclr   6
/* 096BCC 8009C16C 7C852378 */  mr      r5, r4
/* 096BD0 8009C170 387F00E0 */  addi    r3, r31, 0xe0
/* 096BD4 8009C174 3886FFFD */  addi    r4, r6, -3
/* 096BD8 8009C178 48002481 */  bl      OSReport
/* 096BDC 8009C17C 48000010 */  b       lbl_8009C18C
lbl_8009C180:
/* 096BE0 8009C180 4CC63182 */  crclr   6
/* 096BE4 8009C184 386D8734 */  addi    r3, r13, D_80135414@sda21
/* 096BE8 8009C188 48002471 */  bl      OSReport
lbl_8009C18C:
/* 096BEC 8009C18C 808D8AD0 */  lwz     r4, BootInfo@sda21(r13)
/* 096BF0 8009C190 387F00FC */  addi    r3, r31, 0xfc
/* 096BF4 8009C194 4CC63182 */  crclr   6
/* 096BF8 8009C198 80040028 */  lwz     r0, 0x28(r4)
/* 096BFC 8009C19C 5404653E */  srwi    r4, r0, 0x14
/* 096C00 8009C1A0 48002459 */  bl      OSReport
/* 096C04 8009C1A4 480012E5 */  bl      OSGetArenaHi
/* 096C08 8009C1A8 7C7D1B78 */  mr      r29, r3
/* 096C0C 8009C1AC 480012E5 */  bl      OSGetArenaLo
/* 096C10 8009C1B0 7C641B78 */  mr      r4, r3
/* 096C14 8009C1B4 4CC63182 */  crclr   6
/* 096C18 8009C1B8 7FA5EB78 */  mr      r5, r29
/* 096C1C 8009C1BC 387F010C */  addi    r3, r31, 0x10c
/* 096C20 8009C1C0 48002439 */  bl      OSReport
/* 096C24 8009C1C4 806D8730 */  lwz     r3, __OSVersion@sda21(r13)
/* 096C28 8009C1C8 480004C9 */  bl      OSRegisterVersion
/* 096C2C 8009C1CC 806D8AD4 */  lwz     r3, BI2DebugFlag@sda21(r13)
/* 096C30 8009C1D0 28030000 */  cmplwi  r3, 0
/* 096C34 8009C1D4 41820014 */  beq     lbl_8009C1E8
/* 096C38 8009C1D8 80030000 */  lwz     r0, 0(r3)
/* 096C3C 8009C1DC 28000002 */  cmplwi  r0, 2
/* 096C40 8009C1E0 41800008 */  blt     lbl_8009C1E8
/* 096C44 8009C1E4 48030D09 */  bl      EnableMetroTRKInterrupts
lbl_8009C1E8:
/* 096C48 8009C1E8 4BFFFB39 */  bl      ClearArena
/* 096C4C 8009C1EC 48002B25 */  bl      OSEnableInterrupts
/* 096C50 8009C1F0 800D8B00 */  lwz     r0, __OSInIPL@sda21(r13)
/* 096C54 8009C1F4 2C000000 */  cmpwi   r0, 0
/* 096C58 8009C1F8 40820048 */  bne     lbl_8009C240
/* 096C5C 8009C1FC 48016D79 */  bl      DVDInit
/* 096C60 8009C200 800D8ADC */  lwz     r0, __OSIsGcam@sda21(r13)
/* 096C64 8009C204 2C000000 */  cmpwi   r0, 0
/* 096C68 8009C208 41820018 */  beq     lbl_8009C220
/* 096C6C 8009C20C 3C600001 */  lis     r3, 1
/* 096C70 8009C210 38039000 */  addi    r0, r3, -28672
/* 096C74 8009C214 3C608000 */  lis     r3, 0x8000
/* 096C78 8009C218 B00330E6 */  sth     r0, 0x30e6(r3)
/* 096C7C 8009C21C 48000024 */  b       lbl_8009C240
lbl_8009C220:
/* 096C80 8009C220 7FC3F378 */  mr      r3, r30
/* 096C84 8009C224 38800020 */  li      r4, 0x20
/* 096C88 8009C228 48001529 */  bl      DCInvalidateRange
/* 096C8C 8009C22C 3C60800A */  lis     r3, InquiryCallback@ha
/* 096C90 8009C230 38A3BE48 */  addi    r5, r3, InquiryCallback@l
/* 096C94 8009C234 7FC4F378 */  mr      r4, r30
/* 096C98 8009C238 387E0020 */  addi    r3, r30, 0x20
/* 096C9C 8009C23C 48018C5D */  bl      DVDInquiryAsync
lbl_8009C240:
/* 096CA0 8009C240 8001001C */  lwz     r0, 0x1c(r1)
/* 096CA4 8009C244 83E10014 */  lwz     r31, 0x14(r1)
/* 096CA8 8009C248 83C10010 */  lwz     r30, 0x10(r1)
/* 096CAC 8009C24C 83A1000C */  lwz     r29, 0xc(r1)
/* 096CB0 8009C250 38210018 */  addi    r1, r1, 0x18
/* 096CB4 8009C254 7C0803A6 */  mtlr    r0
/* 096CB8 8009C258 4E800020 */  blr     

OSExceptionInit:
/* 096CBC 8009C25C 7C0802A6 */  mflr    r0
/* 096CC0 8009C260 90010004 */  stw     r0, 4(r1)
/* 096CC4 8009C264 9421FFC8 */  stwu    r1, -0x38(r1)
/* 096CC8 8009C268 BE810008 */  stmw    r20, 8(r1)
/* 096CCC 8009C26C 3C608000 */  lis     r3, 0x8000
/* 096CD0 8009C270 80030060 */  lwz     r0, 0x60(r3)
/* 096CD4 8009C274 3C80800A */  lis     r4, __OSEVSetNumber@ha
/* 096CD8 8009C278 3BC4C59C */  addi    r30, r4, __OSEVSetNumber@l
/* 096CDC 8009C27C 3CA0800A */  lis     r5, OSExceptionVector@ha
/* 096CE0 8009C280 833E0000 */  lwz     r25, 0(r30)
/* 096CE4 8009C284 3C80800A */  lis     r4, __OSEVEnd@ha
/* 096CE8 8009C288 38A5C534 */  addi    r5, r5, OSExceptionVector@l
/* 096CEC 8009C28C 3884C5CC */  addi    r4, r4, __OSEVEnd@l
/* 096CF0 8009C290 3CC0800F */  lis     r6, D_800F0628@ha
/* 096CF4 8009C294 28000000 */  cmplwi  r0, 0
/* 096CF8 8009C298 7CB82B78 */  mr      r24, r5
/* 096CFC 8009C29C 3BA60628 */  addi    r29, r6, D_800F0628@l
/* 096D00 8009C2A0 7EE52050 */  subf    r23, r5, r4
/* 096D04 8009C2A4 3A830060 */  addi    r20, r3, 0x60
/* 096D08 8009C2A8 4082004C */  bne     lbl_8009C2F4
/* 096D0C 8009C2AC 387D0160 */  addi    r3, r29, 0x160
/* 096D10 8009C2B0 4CC63182 */  crclr   6
/* 096D14 8009C2B4 4800BAC9 */  bl      DBPrintf
/* 096D18 8009C2B8 3C80800A */  lis     r4, __OSDBIntegrator@ha
/* 096D1C 8009C2BC 3C60800A */  lis     r3, __OSDBJump@ha
/* 096D20 8009C2C0 3803C500 */  addi    r0, r3, __OSDBJump@l
/* 096D24 8009C2C4 3884C4DC */  addi    r4, r4, __OSDBIntegrator@l
/* 096D28 8009C2C8 7EA40050 */  subf    r21, r4, r0
/* 096D2C 8009C2CC 7E83A378 */  mr      r3, r20
/* 096D30 8009C2D0 7EA5AB78 */  mr      r5, r21
/* 096D34 8009C2D4 4BF691F1 */  bl      memcpy
/* 096D38 8009C2D8 7E83A378 */  mr      r3, r20
/* 096D3C 8009C2DC 7EA4AB78 */  mr      r4, r21
/* 096D40 8009C2E0 480014FD */  bl      DCFlushRangeNoSync
/* 096D44 8009C2E4 7C0004AC */  sync    0
/* 096D48 8009C2E8 7E83A378 */  mr      r3, r20
/* 096D4C 8009C2EC 7EA4AB78 */  mr      r4, r21
/* 096D50 8009C2F0 48001545 */  bl      ICInvalidateRange
lbl_8009C2F4:
/* 096D54 8009C2F4 3C80800A */  lis     r4, __OSDBJump@ha
/* 096D58 8009C2F8 3C60800A */  lis     r3, __OSSetExceptionHandler@ha
/* 096D5C 8009C2FC 3BE4C500 */  addi    r31, r4, __OSDBJump@l
/* 096D60 8009C300 3803C504 */  addi    r0, r3, __OSSetExceptionHandler@l
/* 096D64 8009C304 3B9D0124 */  addi    r28, r29, 0x124
/* 096D68 8009C308 7F7F0050 */  subf    r27, r31, r0
/* 096D6C 8009C30C 3B400000 */  li      r26, 0
/* 096D70 8009C310 48000004 */  b       lbl_8009C314
lbl_8009C314:
/* 096D74 8009C314 3C60800A */  lis     r3, __DBVECTOR@ha
/* 096D78 8009C318 3AA3C58C */  addi    r21, r3, __DBVECTOR@l
/* 096D7C 8009C31C 3EC06000 */  lis     r22, 0x6000
/* 096D80 8009C320 48000004 */  b       lbl_8009C324
lbl_8009C324:
/* 096D84 8009C324 48000148 */  b       lbl_8009C46C
lbl_8009C328:
/* 096D88 8009C328 806D8AD4 */  lwz     r3, BI2DebugFlag@sda21(r13)
/* 096D8C 8009C32C 28030000 */  cmplwi  r3, 0
/* 096D90 8009C330 41820034 */  beq     lbl_8009C364
/* 096D94 8009C334 80030000 */  lwz     r0, 0(r3)
/* 096D98 8009C338 28000002 */  cmplwi  r0, 2
/* 096D9C 8009C33C 41800028 */  blt     lbl_8009C364
/* 096DA0 8009C340 7F43D378 */  mr      r3, r26
/* 096DA4 8009C344 4800BA1D */  bl      __DBIsExceptionMarked
/* 096DA8 8009C348 2C030000 */  cmpwi   r3, 0
/* 096DAC 8009C34C 41820018 */  beq     lbl_8009C364
/* 096DB0 8009C350 387D017C */  addi    r3, r29, 0x17c
/* 096DB4 8009C354 4CC63182 */  crclr   6
/* 096DB8 8009C358 5744063E */  clrlwi  r4, r26, 0x18
/* 096DBC 8009C35C 4800BA21 */  bl      DBPrintf
/* 096DC0 8009C360 48000104 */  b       lbl_8009C464
lbl_8009C364:
/* 096DC4 8009C364 5754063E */  clrlwi  r20, r26, 0x18
/* 096DC8 8009C368 7F20A378 */  or      r0, r25, r20
/* 096DCC 8009C36C 901E0000 */  stw     r0, 0(r30)
/* 096DD0 8009C370 7F43D378 */  mr      r3, r26
/* 096DD4 8009C374 4800B9ED */  bl      __DBIsExceptionMarked
/* 096DD8 8009C378 2C030000 */  cmpwi   r3, 0
/* 096DDC 8009C37C 41820028 */  beq     lbl_8009C3A4
/* 096DE0 8009C380 7E84A378 */  mr      r4, r20
/* 096DE4 8009C384 4CC63182 */  crclr   6
/* 096DE8 8009C388 387D01AC */  addi    r3, r29, 0x1ac
/* 096DEC 8009C38C 4800B9F1 */  bl      DBPrintf
/* 096DF0 8009C390 7EA3AB78 */  mr      r3, r21
/* 096DF4 8009C394 7FE4FB78 */  mr      r4, r31
/* 096DF8 8009C398 7F65DB78 */  mr      r5, r27
/* 096DFC 8009C39C 4BF69129 */  bl      memcpy
/* 096E00 8009C3A0 48000090 */  b       lbl_8009C430
lbl_8009C3A4:
/* 096E04 8009C3A4 7EA4AB78 */  mr      r4, r21
/* 096E08 8009C3A8 48000004 */  b       lbl_8009C3AC
lbl_8009C3AC:
/* 096E0C 8009C3AC 281B0000 */  cmplwi  r27, 0
/* 096E10 8009C3B0 387B0003 */  addi    r3, r27, 3
/* 096E14 8009C3B4 5463F0BE */  srwi    r3, r3, 2
/* 096E18 8009C3B8 40810078 */  ble     lbl_8009C430
/* 096E1C 8009C3BC 5460E8FE */  srwi    r0, r3, 3
/* 096E20 8009C3C0 28000000 */  cmplwi  r0, 0
/* 096E24 8009C3C4 7C0903A6 */  mtctr   r0
/* 096E28 8009C3C8 41820054 */  beq     lbl_8009C41C
/* 096E2C 8009C3CC 48000004 */  b       lbl_8009C3D0
lbl_8009C3D0:
/* 096E30 8009C3D0 92C40000 */  stw     r22, 0(r4)
/* 096E34 8009C3D4 38840004 */  addi    r4, r4, 4
/* 096E38 8009C3D8 92C40000 */  stw     r22, 0(r4)
/* 096E3C 8009C3DC 38840004 */  addi    r4, r4, 4
/* 096E40 8009C3E0 92C40000 */  stw     r22, 0(r4)
/* 096E44 8009C3E4 38840004 */  addi    r4, r4, 4
/* 096E48 8009C3E8 92C40000 */  stw     r22, 0(r4)
/* 096E4C 8009C3EC 38840004 */  addi    r4, r4, 4
/* 096E50 8009C3F0 92C40000 */  stw     r22, 0(r4)
/* 096E54 8009C3F4 38840004 */  addi    r4, r4, 4
/* 096E58 8009C3F8 92C40000 */  stw     r22, 0(r4)
/* 096E5C 8009C3FC 38840004 */  addi    r4, r4, 4
/* 096E60 8009C400 92C40000 */  stw     r22, 0(r4)
/* 096E64 8009C404 38840004 */  addi    r4, r4, 4
/* 096E68 8009C408 92C40000 */  stw     r22, 0(r4)
/* 096E6C 8009C40C 38840004 */  addi    r4, r4, 4
/* 096E70 8009C410 4200FFC0 */  bdnz    lbl_8009C3D0
/* 096E74 8009C414 70630007 */  andi.   r3, r3, 7
/* 096E78 8009C418 41820018 */  beq     lbl_8009C430
lbl_8009C41C:
/* 096E7C 8009C41C 7C6903A6 */  mtctr   r3
/* 096E80 8009C420 48000004 */  b       lbl_8009C424
lbl_8009C424:
/* 096E84 8009C424 92C40000 */  stw     r22, 0(r4)
/* 096E88 8009C428 38840004 */  addi    r4, r4, 4
/* 096E8C 8009C42C 4200FFF8 */  bdnz    lbl_8009C424
lbl_8009C430:
/* 096E90 8009C430 807C0000 */  lwz     r3, 0(r28)
/* 096E94 8009C434 7F04C378 */  mr      r4, r24
/* 096E98 8009C438 7EE5BB78 */  mr      r5, r23
/* 096E9C 8009C43C 3E838000 */  addis   r20, r3, 0x8000
/* 096EA0 8009C440 7E83A378 */  mr      r3, r20
/* 096EA4 8009C444 4BF69081 */  bl      memcpy
/* 096EA8 8009C448 7E83A378 */  mr      r3, r20
/* 096EAC 8009C44C 7EE4BB78 */  mr      r4, r23
/* 096EB0 8009C450 4800138D */  bl      DCFlushRangeNoSync
/* 096EB4 8009C454 7C0004AC */  sync    0
/* 096EB8 8009C458 7E83A378 */  mr      r3, r20
/* 096EBC 8009C45C 7EE4BB78 */  mr      r4, r23
/* 096EC0 8009C460 480013D5 */  bl      ICInvalidateRange
lbl_8009C464:
/* 096EC4 8009C464 3B9C0004 */  addi    r28, r28, 4
/* 096EC8 8009C468 3B5A0001 */  addi    r26, r26, 1
lbl_8009C46C:
/* 096ECC 8009C46C 5740063E */  clrlwi  r0, r26, 0x18
/* 096ED0 8009C470 2800000F */  cmplwi  r0, 0xf
/* 096ED4 8009C474 4180FEB4 */  blt     lbl_8009C328
/* 096ED8 8009C478 3C608000 */  lis     r3, 0x8000
/* 096EDC 8009C47C 38033000 */  addi    r0, r3, 0x3000
/* 096EE0 8009C480 900D8AF4 */  stw     r0, OSExceptionTable@sda21(r13)
/* 096EE4 8009C484 3A800000 */  li      r20, 0
/* 096EE8 8009C488 48000004 */  b       lbl_8009C48C
lbl_8009C48C:
/* 096EEC 8009C48C 3C60800A */  lis     r3, OSDefaultExceptionHandler@ha
/* 096EF0 8009C490 3AE3C5D0 */  addi    r23, r3, OSDefaultExceptionHandler@l
/* 096EF4 8009C494 48000004 */  b       lbl_8009C498
lbl_8009C498:
/* 096EF8 8009C498 48000014 */  b       lbl_8009C4AC
lbl_8009C49C:
/* 096EFC 8009C49C 7E83A378 */  mr      r3, r20
/* 096F00 8009C4A0 7EE4BB78 */  mr      r4, r23
/* 096F04 8009C4A4 48000061 */  bl      __OSSetExceptionHandler
/* 096F08 8009C4A8 3A940001 */  addi    r20, r20, 1
lbl_8009C4AC:
/* 096F0C 8009C4AC 5680063E */  clrlwi  r0, r20, 0x18
/* 096F10 8009C4B0 2800000F */  cmplwi  r0, 0xf
/* 096F14 8009C4B4 4180FFE8 */  blt     lbl_8009C49C
/* 096F18 8009C4B8 933E0000 */  stw     r25, 0(r30)
/* 096F1C 8009C4BC 387D01DC */  addi    r3, r29, 0x1dc
/* 096F20 8009C4C0 4CC63182 */  crclr   6
/* 096F24 8009C4C4 4800B8B9 */  bl      DBPrintf
/* 096F28 8009C4C8 BA810008 */  lmw     r20, 8(r1)
/* 096F2C 8009C4CC 8001003C */  lwz     r0, 0x3c(r1)
/* 096F30 8009C4D0 38210038 */  addi    r1, r1, 0x38
/* 096F34 8009C4D4 7C0803A6 */  mtlr    r0
/* 096F38 8009C4D8 4E800020 */  blr     

__OSDBIntegrator:
/* 096F3C 8009C4DC 38A00040 */  li      r5, 0x40
/* 096F40 8009C4E0 7C6802A6 */  mflr    r3
/* 096F44 8009C4E4 9065000C */  stw     r3, 0xc(r5)
/* 096F48 8009C4E8 80650008 */  lwz     r3, 8(r5)
/* 096F4C 8009C4EC 64638000 */  oris    r3, r3, 0x8000
/* 096F50 8009C4F0 7C6803A6 */  mtlr    r3
/* 096F54 8009C4F4 38600030 */  li      r3, 0x30
/* 096F58 8009C4F8 7C600124 */  mtmsr   r3
/* 096F5C 8009C4FC 4E800020 */  blr     

__OSDBJump:
/* 096F60 8009C500 48000063 */  bla     0x60

glabel __OSSetExceptionHandler
/* 096F64 8009C504 5460063E */  clrlwi  r0, r3, 0x18
/* 096F68 8009C508 806D8AF4 */  lwz     r3, OSExceptionTable@sda21(r13)
/* 096F6C 8009C50C 5400103A */  slwi    r0, r0, 2
/* 096F70 8009C510 7CA30214 */  add     r5, r3, r0
/* 096F74 8009C514 80650000 */  lwz     r3, 0(r5)
/* 096F78 8009C518 90850000 */  stw     r4, 0(r5)
/* 096F7C 8009C51C 4E800020 */  blr     

glabel __OSGetExceptionHandler
/* 096F80 8009C520 5460063E */  clrlwi  r0, r3, 0x18
/* 096F84 8009C524 806D8AF4 */  lwz     r3, OSExceptionTable@sda21(r13)
/* 096F88 8009C528 5400103A */  slwi    r0, r0, 2
/* 096F8C 8009C52C 7C63002E */  lwzx    r3, r3, r0
/* 096F90 8009C530 4E800020 */  blr     

OSExceptionVector:
/* 096F94 8009C534 7C9043A6 */  mtspr   0x110, r4
/* 096F98 8009C538 808000C0 */  lwz     r4, 0xc0(0)
/* 096F9C 8009C53C 9064000C */  stw     r3, 0xc(r4)
/* 096FA0 8009C540 7C7042A6 */  mfspr   r3, 0x110
/* 096FA4 8009C544 90640010 */  stw     r3, 0x10(r4)
/* 096FA8 8009C548 90A40014 */  stw     r5, 0x14(r4)
/* 096FAC 8009C54C A06401A2 */  lhz     r3, 0x1a2(r4)
/* 096FB0 8009C550 60630002 */  ori     r3, r3, 2
/* 096FB4 8009C554 B06401A2 */  sth     r3, 0x1a2(r4)
/* 096FB8 8009C558 7C600026 */  mfcr    r3
/* 096FBC 8009C55C 90640080 */  stw     r3, 0x80(r4)
/* 096FC0 8009C560 7C6802A6 */  mflr    r3
/* 096FC4 8009C564 90640084 */  stw     r3, 0x84(r4)
/* 096FC8 8009C568 7C6902A6 */  mfctr   r3
/* 096FCC 8009C56C 90640088 */  stw     r3, 0x88(r4)
/* 096FD0 8009C570 7C6102A6 */  mfxer   r3
/* 096FD4 8009C574 9064008C */  stw     r3, 0x8c(r4)
/* 096FD8 8009C578 7C7A02A6 */  mfspr   r3, 0x1a
/* 096FDC 8009C57C 90640198 */  stw     r3, 0x198(r4)
/* 096FE0 8009C580 7C7B02A6 */  mfspr   r3, 0x1b
/* 096FE4 8009C584 9064019C */  stw     r3, 0x19c(r4)
/* 096FE8 8009C588 7C651B78 */  mr      r5, r3
glabel __DBVECTOR
/* 096FEC 8009C58C 60000000 */  nop     
/* 096FF0 8009C590 7C6000A6 */  mfmsr   r3
/* 096FF4 8009C594 60630030 */  ori     r3, r3, 0x30
/* 096FF8 8009C598 7C7B03A6 */  mtspr   0x1b, r3
glabel __OSEVSetNumber
/* 096FFC 8009C59C 38600000 */  li      r3, 0
/* 097000 8009C5A0 808000D4 */  lwz     r4, 0xd4(0)
/* 097004 8009C5A4 54A507BD */  rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 097008 8009C5A8 40820014 */  bne     lbl_8009C5BC
/* 09700C 8009C5AC 3CA0800A */  lis     r5, OSDefaultExceptionHandler@ha
/* 097010 8009C5B0 38A5C5D0 */  addi    r5, r5, OSDefaultExceptionHandler@l
/* 097014 8009C5B4 7CBA03A6 */  mtspr   0x1a, r5
/* 097018 8009C5B8 4C000064 */  rfi     
lbl_8009C5BC:
/* 09701C 8009C5BC 546515BA */  rlwinm  r5, r3, 2, 0x16, 0x1d
/* 097020 8009C5C0 80A53000 */  lwz     r5, 0x3000(r5)
/* 097024 8009C5C4 7CBA03A6 */  mtspr   0x1a, r5
/* 097028 8009C5C8 4C000064 */  rfi     
glabel __OSEVEnd
/* 09702C 8009C5CC 60000000 */  nop     

glabel OSDefaultExceptionHandler
/* 097030 8009C5D0 90040000 */  stw     r0, 0(r4)
/* 097034 8009C5D4 90240004 */  stw     r1, 4(r4)
/* 097038 8009C5D8 90440008 */  stw     r2, 8(r4)
/* 09703C 8009C5DC BCC40018 */  stmw    r6, 0x18(r4)
/* 097040 8009C5E0 7C11E2A6 */  mfspr   r0, 0x391
/* 097044 8009C5E4 900401A8 */  stw     r0, 0x1a8(r4)
/* 097048 8009C5E8 7C12E2A6 */  mfspr   r0, 0x392
/* 09704C 8009C5EC 900401AC */  stw     r0, 0x1ac(r4)
/* 097050 8009C5F0 7C13E2A6 */  mfspr   r0, 0x393
/* 097054 8009C5F4 900401B0 */  stw     r0, 0x1b0(r4)
/* 097058 8009C5F8 7C14E2A6 */  mfspr   r0, 0x394
/* 09705C 8009C5FC 900401B4 */  stw     r0, 0x1b4(r4)
/* 097060 8009C600 7C15E2A6 */  mfspr   r0, 0x395
/* 097064 8009C604 900401B8 */  stw     r0, 0x1b8(r4)
/* 097068 8009C608 7C16E2A6 */  mfspr   r0, 0x396
/* 09706C 8009C60C 900401BC */  stw     r0, 0x1bc(r4)
/* 097070 8009C610 7C17E2A6 */  mfspr   r0, 0x397
/* 097074 8009C614 900401C0 */  stw     r0, 0x1c0(r4)
/* 097078 8009C618 7CB202A6 */  mfdsisr r5
/* 09707C 8009C61C 7CD302A6 */  mfdar   r6
/* 097080 8009C620 9421FFF8 */  stwu    r1, -8(r1)
/* 097084 8009C624 48002398 */  b       __OSUnhandledException

glabel __OSPSInit
/* 097088 8009C628 7C0802A6 */  mflr    r0
/* 09708C 8009C62C 90010004 */  stw     r0, 4(r1)
/* 097090 8009C630 9421FFF8 */  stwu    r1, -8(r1)
/* 097094 8009C634 4BFFF555 */  bl      PPCMfhid2
/* 097098 8009C638 6463A000 */  oris    r3, r3, 0xa000
/* 09709C 8009C63C 4BFFF555 */  bl      PPCMthid2
/* 0970A0 8009C640 48001229 */  bl      ICFlashInvalidate
/* 0970A4 8009C644 7C0004AC */  sync    0
/* 0970A8 8009C648 38600000 */  li      r3, 0
/* 0970AC 8009C64C 7C70E3A6 */  mtspr   0x390, r3
/* 0970B0 8009C650 7C71E3A6 */  mtspr   0x391, r3
/* 0970B4 8009C654 7C72E3A6 */  mtspr   0x392, r3
/* 0970B8 8009C658 7C73E3A6 */  mtspr   0x393, r3
/* 0970BC 8009C65C 7C74E3A6 */  mtspr   0x394, r3
/* 0970C0 8009C660 7C75E3A6 */  mtspr   0x395, r3
/* 0970C4 8009C664 7C76E3A6 */  mtspr   0x396, r3
/* 0970C8 8009C668 7C77E3A6 */  mtspr   0x397, r3
/* 0970CC 8009C66C 8001000C */  lwz     r0, 0xc(r1)
/* 0970D0 8009C670 38210008 */  addi    r1, r1, 8
/* 0970D4 8009C674 7C0803A6 */  mtlr    r0
/* 0970D8 8009C678 4E800020 */  blr     

glabel __OSGetDIConfig
/* 0970DC 8009C67C 3C60CC00 */  lis     r3, DI_REGS_BASE@ha
/* 0970E0 8009C680 38636000 */  addi    r3, r3, DI_REGS_BASE@l
/* 0970E4 8009C684 80030024 */  lwz     r0, DI_DICFG(r3)
/* 0970E8 8009C688 5403063E */  clrlwi  r3, r0, 0x18
/* 0970EC 8009C68C 4E800020 */  blr     

glabel OSRegisterVersion
/* 0970F0 8009C690 7C0802A6 */  mflr    r0
/* 0970F4 8009C694 90010004 */  stw     r0, 4(r1)
/* 0970F8 8009C698 9421FFF8 */  stwu    r1, -8(r1)
/* 0970FC 8009C69C 7C641B78 */  mr      r4, r3
/* 097100 8009C6A0 4CC63182 */  crclr   6
/* 097104 8009C6A4 386D873C */  addi    r3, r13, D_8013541C@sda21
/* 097108 8009C6A8 48001F51 */  bl      OSReport
/* 09710C 8009C6AC 8001000C */  lwz     r0, 0xc(r1)
/* 097110 8009C6B0 38210008 */  addi    r1, r1, 8
/* 097114 8009C6B4 7C0803A6 */  mtlr    r0
/* 097118 8009C6B8 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000ED6A8 800F0628 0044 */
D_800F0628:
    .asciz "<< Dolphin SDK - OS\trelease build: Jul 23 2003 11:27:16 (0x2301) >>"
    .balign 4

/* 000ED6EC 800F066C 000D */
D_800F066C:
    .asciz "\nDolphin OS\n"
    .balign 4

/* 000ED6FC 800F067C 0016 */
D_800F067C:
    .asciz "Kernel built : %s %s\n"
    .balign 4

/* 000ED714 800F0694 000C */
D_800F0694:
    .asciz "Jul 23 2003"
    .balign 4

/* 000ED720 800F06A0 0009 */
D_800F06A0:
    .asciz "11:27:16"
    .balign 4

/* 000ED72C 800F06AC 0010 */
D_800F06AC:
    .asciz "Console Type : "
    .balign 4

/* 000ED73C 800F06BC 000B */
D_800F06BC:
    .asciz "Retail %d\n"
    .balign 4

/* 000ED748 800F06C8 000E */
D_800F06C8:
    .asciz "Mac Emulator\n"
    .balign 4

/* 000ED758 800F06D8 000D */
D_800F06D8:
    .asciz "PC Emulator\n"
    .balign 4

/* 000ED768 800F06E8 000D */
D_800F06E8:
    .asciz "EPPC Arthur\n"
    .balign 4

/* 000ED778 800F06F8 000D */
D_800F06F8:
    .asciz "EPPC Minnow\n"
    .balign 4

/* 000ED788 800F0708 0019 */
D_800F0708:
    .asciz "Development HW%d (%08x)\n"
    .balign 4

/* 000ED7A4 800F0724 000E */
D_800F0724:
    .asciz "Memory %d MB\n"
    .balign 4

/* 000ED7B4 800F0734 0015 */
D_800F0734:
    .asciz "Arena : 0x%x - 0x%x\n"
    .balign 4

/* 000ED7CC 800F074C 003C */
__OSExceptionLocations:
    .long 0x00000100, 0x00000200, 0x00000300, 0x00000400, 0x00000500, 0x00000600, 0x00000700, 0x00000800
    .long 0x00000900, 0x00000C00, 0x00000D00, 0x00000F00, 0x00001300, 0x00001400, 0x00001700

/* 000ED808 800F0788 001B */
D_800F0788:
    .asciz "Installing OSDBIntegrator\n"
    .balign 4

/* 000ED824 800F07A4 002E */
D_800F07A4:
    .asciz ">>> OSINIT: exception %d commandeered by TRK\n"
    .balign 4

/* 000ED854 800F07D4 002F */
D_800F07D4:
    .asciz ">>> OSINIT: exception %d vectored to debugger\n"
    .balign 4

/* 000ED884 800F0804 001B */
D_800F0804:
    .asciz "Exceptions initialized...\n"
    .balign 4

.section .bss, "wa"

.balign 32

/* 0012DFA0 80130F20 0020 */
DriveInfo:
    .skip 32

/* 0012DFC0 80130F40 0030 */
DriveBlock:
    .skip 48

.section .sdata, "wa"

.balign 8

/* 000F1690 80135410 0004 */
glabel __OSVersion
    .long D_800F0628

/* 000F1694 80135414 0006 */
D_80135414:
    .asciz "%08x\n"
    .balign 4

/* 000F169C 8013541C 0004 */
D_8013541C:
    .asciz "%s\n"
    .balign 4

.section .sbss, "wa"

.balign 8

/* 000F1A30 801357B0 0004 */
BootInfo:
    .skip 4

/* 000F1A34 801357B4 0004 */
BI2DebugFlag:
    .skip 4

/* 000F1A38 801357B8 0004 */
BI2DebugFlagHolder:
    .skip 4

/* 000F1A3C 801357BC 0004 */
glabel __OSIsGcam
    .skip 4

/* 000F1A40 801357C0 0008 */
ZeroF:
    .skip 8

/* 000F1A48 801357C8 0008 */
ZeroPS:
    .skip 8

/* 000F1A50 801357D0 0004 */
AreWeInitialized:
    .skip 4

/* 000F1A54 801357D4 0004 */
OSExceptionTable:
    .skip 4

/* 000F1A58 801357D8 0004 */
glabel __OSSavedRegionEnd
    .skip 4

/* 000F1A5C 801357DC 0004 */
glabel __OSSavedRegionStart
    .skip 4

/* 000F1A60 801357E0 0004 */
glabel __OSInIPL
    .skip 4

.balign 8

/* 000F1A68 801357E8 0008 */
glabel __OSStartTime
    .skip 8
