# OSContext.c
.include "macros.inc"

.section .text, "ax"

.balign 4

__OSLoadFPUContext:
/* 0987E8 8009DD88 A0A401A2 */  lhz     r5, 0x1a2(r4)
/* 0987EC 8009DD8C 54A507FF */  clrlwi. r5, r5, 0x1f
/* 0987F0 8009DD90 41820118 */  beq     lbl_8009DEA8
/* 0987F4 8009DD94 C8040190 */  lfd     f0, 0x190(r4)
/* 0987F8 8009DD98 FDFE058E */  mtfsf   0xff, f0
/* 0987FC 8009DD9C 7CB8E2A6 */  mfspr   r5, 0x398
/* 098800 8009DDA0 54A51FFF */  rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 098804 8009DDA4 41820084 */  beq     lbl_8009DE28
/* 098808 8009DDA8 E00401C8 */  psq_l   f0, 456(r4), 0, qr0
/* 09880C 8009DDAC E02401D0 */  psq_l   f1, 464(r4), 0, qr0
/* 098810 8009DDB0 E04401D8 */  psq_l   f2, 472(r4), 0, qr0
/* 098814 8009DDB4 E06401E0 */  psq_l   f3, 480(r4), 0, qr0
/* 098818 8009DDB8 E08401E8 */  psq_l   f4, 488(r4), 0, qr0
/* 09881C 8009DDBC E0A401F0 */  psq_l   f5, 496(r4), 0, qr0
/* 098820 8009DDC0 E0C401F8 */  psq_l   f6, 504(r4), 0, qr0
/* 098824 8009DDC4 E0E40200 */  psq_l   f7, 512(r4), 0, qr0
/* 098828 8009DDC8 E1040208 */  psq_l   f8, 520(r4), 0, qr0
/* 09882C 8009DDCC E1240210 */  psq_l   f9, 528(r4), 0, qr0
/* 098830 8009DDD0 E1440218 */  psq_l   f10, 536(r4), 0, qr0
/* 098834 8009DDD4 E1640220 */  psq_l   f11, 544(r4), 0, qr0
/* 098838 8009DDD8 E1840228 */  psq_l   f12, 552(r4), 0, qr0
/* 09883C 8009DDDC E1A40230 */  psq_l   f13, 560(r4), 0, qr0
/* 098840 8009DDE0 E1C40238 */  psq_l   f14, 568(r4), 0, qr0
/* 098844 8009DDE4 E1E40240 */  psq_l   f15, 576(r4), 0, qr0
/* 098848 8009DDE8 E2040248 */  psq_l   f16, 584(r4), 0, qr0
/* 09884C 8009DDEC E2240250 */  psq_l   f17, 592(r4), 0, qr0
/* 098850 8009DDF0 E2440258 */  psq_l   f18, 600(r4), 0, qr0
/* 098854 8009DDF4 E2640260 */  psq_l   f19, 608(r4), 0, qr0
/* 098858 8009DDF8 E2840268 */  psq_l   f20, 616(r4), 0, qr0
/* 09885C 8009DDFC E2A40270 */  psq_l   f21, 624(r4), 0, qr0
/* 098860 8009DE00 E2C40278 */  psq_l   f22, 632(r4), 0, qr0
/* 098864 8009DE04 E2E40280 */  psq_l   f23, 640(r4), 0, qr0
/* 098868 8009DE08 E3040288 */  psq_l   f24, 648(r4), 0, qr0
/* 09886C 8009DE0C E3240290 */  psq_l   f25, 656(r4), 0, qr0
/* 098870 8009DE10 E3440298 */  psq_l   f26, 664(r4), 0, qr0
/* 098874 8009DE14 E36402A0 */  psq_l   f27, 672(r4), 0, qr0
/* 098878 8009DE18 E38402A8 */  psq_l   f28, 680(r4), 0, qr0
/* 09887C 8009DE1C E3A402B0 */  psq_l   f29, 688(r4), 0, qr0
/* 098880 8009DE20 E3C402B8 */  psq_l   f30, 696(r4), 0, qr0
/* 098884 8009DE24 E3E402C0 */  psq_l   f31, 704(r4), 0, qr0
lbl_8009DE28:
/* 098888 8009DE28 C8040090 */  lfd     f0, 0x90(r4)
/* 09888C 8009DE2C C8240098 */  lfd     f1, 0x98(r4)
/* 098890 8009DE30 C84400A0 */  lfd     f2, 0xa0(r4)
/* 098894 8009DE34 C86400A8 */  lfd     f3, 0xa8(r4)
/* 098898 8009DE38 C88400B0 */  lfd     f4, 0xb0(r4)
/* 09889C 8009DE3C C8A400B8 */  lfd     f5, 0xb8(r4)
/* 0988A0 8009DE40 C8C400C0 */  lfd     f6, 0xc0(r4)
/* 0988A4 8009DE44 C8E400C8 */  lfd     f7, 0xc8(r4)
/* 0988A8 8009DE48 C90400D0 */  lfd     f8, 0xd0(r4)
/* 0988AC 8009DE4C C92400D8 */  lfd     f9, 0xd8(r4)
/* 0988B0 8009DE50 C94400E0 */  lfd     f10, 0xe0(r4)
/* 0988B4 8009DE54 C96400E8 */  lfd     f11, 0xe8(r4)
/* 0988B8 8009DE58 C98400F0 */  lfd     f12, 0xf0(r4)
/* 0988BC 8009DE5C C9A400F8 */  lfd     f13, 0xf8(r4)
/* 0988C0 8009DE60 C9C40100 */  lfd     f14, 0x100(r4)
/* 0988C4 8009DE64 C9E40108 */  lfd     f15, 0x108(r4)
/* 0988C8 8009DE68 CA040110 */  lfd     f16, 0x110(r4)
/* 0988CC 8009DE6C CA240118 */  lfd     f17, 0x118(r4)
/* 0988D0 8009DE70 CA440120 */  lfd     f18, 0x120(r4)
/* 0988D4 8009DE74 CA640128 */  lfd     f19, 0x128(r4)
/* 0988D8 8009DE78 CA840130 */  lfd     f20, 0x130(r4)
/* 0988DC 8009DE7C CAA40138 */  lfd     f21, 0x138(r4)
/* 0988E0 8009DE80 CAC40140 */  lfd     f22, 0x140(r4)
/* 0988E4 8009DE84 CAE40148 */  lfd     f23, 0x148(r4)
/* 0988E8 8009DE88 CB040150 */  lfd     f24, 0x150(r4)
/* 0988EC 8009DE8C CB240158 */  lfd     f25, 0x158(r4)
/* 0988F0 8009DE90 CB440160 */  lfd     f26, 0x160(r4)
/* 0988F4 8009DE94 CB640168 */  lfd     f27, 0x168(r4)
/* 0988F8 8009DE98 CB840170 */  lfd     f28, 0x170(r4)
/* 0988FC 8009DE9C CBA40178 */  lfd     f29, 0x178(r4)
/* 098900 8009DEA0 CBC40180 */  lfd     f30, 0x180(r4)
/* 098904 8009DEA4 CBE40188 */  lfd     f31, 0x188(r4)
lbl_8009DEA8:
/* 098908 8009DEA8 4E800020 */  blr     

__OSSaveFPUContext:
/* 09890C 8009DEAC A06501A2 */  lhz     r3, 0x1a2(r5)
/* 098910 8009DEB0 60630001 */  ori     r3, r3, 1
/* 098914 8009DEB4 B06501A2 */  sth     r3, 0x1a2(r5)
/* 098918 8009DEB8 D8050090 */  stfd    f0, 0x90(r5)
/* 09891C 8009DEBC D8250098 */  stfd    f1, 0x98(r5)
/* 098920 8009DEC0 D84500A0 */  stfd    f2, 0xa0(r5)
/* 098924 8009DEC4 D86500A8 */  stfd    f3, 0xa8(r5)
/* 098928 8009DEC8 D88500B0 */  stfd    f4, 0xb0(r5)
/* 09892C 8009DECC D8A500B8 */  stfd    f5, 0xb8(r5)
/* 098930 8009DED0 D8C500C0 */  stfd    f6, 0xc0(r5)
/* 098934 8009DED4 D8E500C8 */  stfd    f7, 0xc8(r5)
/* 098938 8009DED8 D90500D0 */  stfd    f8, 0xd0(r5)
/* 09893C 8009DEDC D92500D8 */  stfd    f9, 0xd8(r5)
/* 098940 8009DEE0 D94500E0 */  stfd    f10, 0xe0(r5)
/* 098944 8009DEE4 D96500E8 */  stfd    f11, 0xe8(r5)
/* 098948 8009DEE8 D98500F0 */  stfd    f12, 0xf0(r5)
/* 09894C 8009DEEC D9A500F8 */  stfd    f13, 0xf8(r5)
/* 098950 8009DEF0 D9C50100 */  stfd    f14, 0x100(r5)
/* 098954 8009DEF4 D9E50108 */  stfd    f15, 0x108(r5)
/* 098958 8009DEF8 DA050110 */  stfd    f16, 0x110(r5)
/* 09895C 8009DEFC DA250118 */  stfd    f17, 0x118(r5)
/* 098960 8009DF00 DA450120 */  stfd    f18, 0x120(r5)
/* 098964 8009DF04 DA650128 */  stfd    f19, 0x128(r5)
/* 098968 8009DF08 DA850130 */  stfd    f20, 0x130(r5)
/* 09896C 8009DF0C DAA50138 */  stfd    f21, 0x138(r5)
/* 098970 8009DF10 DAC50140 */  stfd    f22, 0x140(r5)
/* 098974 8009DF14 DAE50148 */  stfd    f23, 0x148(r5)
/* 098978 8009DF18 DB050150 */  stfd    f24, 0x150(r5)
/* 09897C 8009DF1C DB250158 */  stfd    f25, 0x158(r5)
/* 098980 8009DF20 DB450160 */  stfd    f26, 0x160(r5)
/* 098984 8009DF24 DB650168 */  stfd    f27, 0x168(r5)
/* 098988 8009DF28 DB850170 */  stfd    f28, 0x170(r5)
/* 09898C 8009DF2C DBA50178 */  stfd    f29, 0x178(r5)
/* 098990 8009DF30 DBC50180 */  stfd    f30, 0x180(r5)
/* 098994 8009DF34 DBE50188 */  stfd    f31, 0x188(r5)
/* 098998 8009DF38 FC00048E */  mffs    f0
/* 09899C 8009DF3C D8050190 */  stfd    f0, 0x190(r5)
/* 0989A0 8009DF40 C8050090 */  lfd     f0, 0x90(r5)
/* 0989A4 8009DF44 7C78E2A6 */  mfspr   r3, 0x398
/* 0989A8 8009DF48 54631FFF */  rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 0989AC 8009DF4C 41820084 */  beq     lbl_8009DFD0
/* 0989B0 8009DF50 F00501C8 */  psq_st  f0, 456(r5), 0, qr0
/* 0989B4 8009DF54 F02501D0 */  psq_st  f1, 464(r5), 0, qr0
/* 0989B8 8009DF58 F04501D8 */  psq_st  f2, 472(r5), 0, qr0
/* 0989BC 8009DF5C F06501E0 */  psq_st  f3, 480(r5), 0, qr0
/* 0989C0 8009DF60 F08501E8 */  psq_st  f4, 488(r5), 0, qr0
/* 0989C4 8009DF64 F0A501F0 */  psq_st  f5, 496(r5), 0, qr0
/* 0989C8 8009DF68 F0C501F8 */  psq_st  f6, 504(r5), 0, qr0
/* 0989CC 8009DF6C F0E50200 */  psq_st  f7, 512(r5), 0, qr0
/* 0989D0 8009DF70 F1050208 */  psq_st  f8, 520(r5), 0, qr0
/* 0989D4 8009DF74 F1250210 */  psq_st  f9, 528(r5), 0, qr0
/* 0989D8 8009DF78 F1450218 */  psq_st  f10, 536(r5), 0, qr0
/* 0989DC 8009DF7C F1650220 */  psq_st  f11, 544(r5), 0, qr0
/* 0989E0 8009DF80 F1850228 */  psq_st  f12, 552(r5), 0, qr0
/* 0989E4 8009DF84 F1A50230 */  psq_st  f13, 560(r5), 0, qr0
/* 0989E8 8009DF88 F1C50238 */  psq_st  f14, 568(r5), 0, qr0
/* 0989EC 8009DF8C F1E50240 */  psq_st  f15, 576(r5), 0, qr0
/* 0989F0 8009DF90 F2050248 */  psq_st  f16, 584(r5), 0, qr0
/* 0989F4 8009DF94 F2250250 */  psq_st  f17, 592(r5), 0, qr0
/* 0989F8 8009DF98 F2450258 */  psq_st  f18, 600(r5), 0, qr0
/* 0989FC 8009DF9C F2650260 */  psq_st  f19, 608(r5), 0, qr0
/* 098A00 8009DFA0 F2850268 */  psq_st  f20, 616(r5), 0, qr0
/* 098A04 8009DFA4 F2A50270 */  psq_st  f21, 624(r5), 0, qr0
/* 098A08 8009DFA8 F2C50278 */  psq_st  f22, 632(r5), 0, qr0
/* 098A0C 8009DFAC F2E50280 */  psq_st  f23, 640(r5), 0, qr0
/* 098A10 8009DFB0 F3050288 */  psq_st  f24, 648(r5), 0, qr0
/* 098A14 8009DFB4 F3250290 */  psq_st  f25, 656(r5), 0, qr0
/* 098A18 8009DFB8 F3450298 */  psq_st  f26, 664(r5), 0, qr0
/* 098A1C 8009DFBC F36502A0 */  psq_st  f27, 672(r5), 0, qr0
/* 098A20 8009DFC0 F38502A8 */  psq_st  f28, 680(r5), 0, qr0
/* 098A24 8009DFC4 F3A502B0 */  psq_st  f29, 688(r5), 0, qr0
/* 098A28 8009DFC8 F3C502B8 */  psq_st  f30, 696(r5), 0, qr0
/* 098A2C 8009DFCC F3E502C0 */  psq_st  f31, 704(r5), 0, qr0
lbl_8009DFD0:
/* 098A30 8009DFD0 4E800020 */  blr     

glabel OSSaveFPUContext
/* 098A34 8009DFD4 38A30000 */  addi    r5, r3, 0
/* 098A38 8009DFD8 4BFFFED4 */  b       __OSSaveFPUContext

glabel OSSetCurrentContext
/* 098A3C 8009DFDC 3C808000 */  lis     r4, 0x8000
/* 098A40 8009DFE0 906400D4 */  stw     r3, 0xd4(r4)
/* 098A44 8009DFE4 546500BE */  clrlwi  r5, r3, 2
/* 098A48 8009DFE8 90A400C0 */  stw     r5, 0xc0(r4)
/* 098A4C 8009DFEC 80A400D8 */  lwz     r5, 0xd8(r4)
/* 098A50 8009DFF0 7C051800 */  cmpw    r5, r3
/* 098A54 8009DFF4 40820020 */  bne     lbl_8009E014
/* 098A58 8009DFF8 80C3019C */  lwz     r6, 0x19c(r3)
/* 098A5C 8009DFFC 60C62000 */  ori     r6, r6, 0x2000
/* 098A60 8009E000 90C3019C */  stw     r6, 0x19c(r3)
/* 098A64 8009E004 7CC000A6 */  mfmsr   r6
/* 098A68 8009E008 60C60002 */  ori     r6, r6, 2
/* 098A6C 8009E00C 7CC00124 */  mtmsr   r6
/* 098A70 8009E010 4E800020 */  blr     
lbl_8009E014:
/* 098A74 8009E014 80C3019C */  lwz     r6, 0x19c(r3)
/* 098A78 8009E018 54C604E2 */  rlwinm  r6, r6, 0, 0x13, 0x11
/* 098A7C 8009E01C 90C3019C */  stw     r6, 0x19c(r3)
/* 098A80 8009E020 7CC000A6 */  mfmsr   r6
/* 098A84 8009E024 54C604E2 */  rlwinm  r6, r6, 0, 0x13, 0x11
/* 098A88 8009E028 60C60002 */  ori     r6, r6, 2
/* 098A8C 8009E02C 7CC00124 */  mtmsr   r6
/* 098A90 8009E030 4C00012C */  isync   
/* 098A94 8009E034 4E800020 */  blr     

glabel OSGetCurrentContext
/* 098A98 8009E038 3C608000 */  lis     r3, 0x8000
/* 098A9C 8009E03C 806300D4 */  lwz     r3, 0xd4(r3)
/* 098AA0 8009E040 4E800020 */  blr     

glabel OSSaveContext
/* 098AA4 8009E044 BDA30034 */  stmw    r13, 0x34(r3)
/* 098AA8 8009E048 7C11E2A6 */  mfspr   r0, 0x391
/* 098AAC 8009E04C 900301A8 */  stw     r0, 0x1a8(r3)
/* 098AB0 8009E050 7C12E2A6 */  mfspr   r0, 0x392
/* 098AB4 8009E054 900301AC */  stw     r0, 0x1ac(r3)
/* 098AB8 8009E058 7C13E2A6 */  mfspr   r0, 0x393
/* 098ABC 8009E05C 900301B0 */  stw     r0, 0x1b0(r3)
/* 098AC0 8009E060 7C14E2A6 */  mfspr   r0, 0x394
/* 098AC4 8009E064 900301B4 */  stw     r0, 0x1b4(r3)
/* 098AC8 8009E068 7C15E2A6 */  mfspr   r0, 0x395
/* 098ACC 8009E06C 900301B8 */  stw     r0, 0x1b8(r3)
/* 098AD0 8009E070 7C16E2A6 */  mfspr   r0, 0x396
/* 098AD4 8009E074 900301BC */  stw     r0, 0x1bc(r3)
/* 098AD8 8009E078 7C17E2A6 */  mfspr   r0, 0x397
/* 098ADC 8009E07C 900301C0 */  stw     r0, 0x1c0(r3)
/* 098AE0 8009E080 7C000026 */  mfcr    r0
/* 098AE4 8009E084 90030080 */  stw     r0, 0x80(r3)
/* 098AE8 8009E088 7C0802A6 */  mflr    r0
/* 098AEC 8009E08C 90030084 */  stw     r0, 0x84(r3)
/* 098AF0 8009E090 90030198 */  stw     r0, 0x198(r3)
/* 098AF4 8009E094 7C0000A6 */  mfmsr   r0
/* 098AF8 8009E098 9003019C */  stw     r0, 0x19c(r3)
/* 098AFC 8009E09C 7C0902A6 */  mfctr   r0
/* 098B00 8009E0A0 90030088 */  stw     r0, 0x88(r3)
/* 098B04 8009E0A4 7C0102A6 */  mfxer   r0
/* 098B08 8009E0A8 9003008C */  stw     r0, 0x8c(r3)
/* 098B0C 8009E0AC 90230004 */  stw     r1, 4(r3)
/* 098B10 8009E0B0 90430008 */  stw     r2, 8(r3)
/* 098B14 8009E0B4 38000001 */  li      r0, 1
/* 098B18 8009E0B8 9003000C */  stw     r0, 0xc(r3)
/* 098B1C 8009E0BC 38600000 */  li      r3, 0
/* 098B20 8009E0C0 4E800020 */  blr     

glabel OSLoadContext
/* 098B24 8009E0C4 3C80800A */  lis     r4, OSDisableInterrupts@ha
/* 098B28 8009E0C8 80C30198 */  lwz     r6, 0x198(r3)
/* 098B2C 8009E0CC 38A4ECFC */  addi    r5, r4, OSDisableInterrupts@l
/* 098B30 8009E0D0 7C062840 */  cmplw   r6, r5
/* 098B34 8009E0D4 40810018 */  ble     lbl_8009E0EC
/* 098B38 8009E0D8 3C80800A */  lis     r4, __RAS_OSDisableInterrupts_end@ha
/* 098B3C 8009E0DC 3804ED08 */  addi    r0, r4, __RAS_OSDisableInterrupts_end@l
/* 098B40 8009E0E0 7C060040 */  cmplw   r6, r0
/* 098B44 8009E0E4 40800008 */  bge     lbl_8009E0EC
/* 098B48 8009E0E8 90A30198 */  stw     r5, 0x198(r3)
lbl_8009E0EC:
/* 098B4C 8009E0EC 80030000 */  lwz     r0, 0(r3)
/* 098B50 8009E0F0 80230004 */  lwz     r1, 4(r3)
/* 098B54 8009E0F4 80430008 */  lwz     r2, 8(r3)
/* 098B58 8009E0F8 A08301A2 */  lhz     r4, 0x1a2(r3)
/* 098B5C 8009E0FC 548507BD */  rlwinm. r5, r4, 0, 0x1e, 0x1e
/* 098B60 8009E100 41820014 */  beq     lbl_8009E114
/* 098B64 8009E104 548407FA */  rlwinm  r4, r4, 0, 0x1f, 0x1d
/* 098B68 8009E108 B08301A2 */  sth     r4, 0x1a2(r3)
/* 098B6C 8009E10C B8A30014 */  lmw     r5, 0x14(r3)
/* 098B70 8009E110 48000008 */  b       lbl_8009E118
lbl_8009E114:
/* 098B74 8009E114 B9A30034 */  lmw     r13, 0x34(r3)
lbl_8009E118:
/* 098B78 8009E118 808301A8 */  lwz     r4, 0x1a8(r3)
/* 098B7C 8009E11C 7C91E3A6 */  mtspr   0x391, r4
/* 098B80 8009E120 808301AC */  lwz     r4, 0x1ac(r3)
/* 098B84 8009E124 7C92E3A6 */  mtspr   0x392, r4
/* 098B88 8009E128 808301B0 */  lwz     r4, 0x1b0(r3)
/* 098B8C 8009E12C 7C93E3A6 */  mtspr   0x393, r4
/* 098B90 8009E130 808301B4 */  lwz     r4, 0x1b4(r3)
/* 098B94 8009E134 7C94E3A6 */  mtspr   0x394, r4
/* 098B98 8009E138 808301B8 */  lwz     r4, 0x1b8(r3)
/* 098B9C 8009E13C 7C95E3A6 */  mtspr   0x395, r4
/* 098BA0 8009E140 808301BC */  lwz     r4, 0x1bc(r3)
/* 098BA4 8009E144 7C96E3A6 */  mtspr   0x396, r4
/* 098BA8 8009E148 808301C0 */  lwz     r4, 0x1c0(r3)
/* 098BAC 8009E14C 7C97E3A6 */  mtspr   0x397, r4
/* 098BB0 8009E150 80830080 */  lwz     r4, 0x80(r3)
/* 098BB4 8009E154 7C8FF120 */  mtcrf   0xff, r4
/* 098BB8 8009E158 80830084 */  lwz     r4, 0x84(r3)
/* 098BBC 8009E15C 7C8803A6 */  mtlr    r4
/* 098BC0 8009E160 80830088 */  lwz     r4, 0x88(r3)
/* 098BC4 8009E164 7C8903A6 */  mtctr   r4
/* 098BC8 8009E168 8083008C */  lwz     r4, 0x8c(r3)
/* 098BCC 8009E16C 7C8103A6 */  mtxer   r4
/* 098BD0 8009E170 7C8000A6 */  mfmsr   r4
/* 098BD4 8009E174 5484045E */  rlwinm  r4, r4, 0, 0x11, 0xf
/* 098BD8 8009E178 548407FA */  rlwinm  r4, r4, 0, 0x1f, 0x1d
/* 098BDC 8009E17C 7C800124 */  mtmsr   r4
/* 098BE0 8009E180 80830198 */  lwz     r4, 0x198(r3)
/* 098BE4 8009E184 7C9A03A6 */  mtspr   0x1a, r4
/* 098BE8 8009E188 8083019C */  lwz     r4, 0x19c(r3)
/* 098BEC 8009E18C 7C9B03A6 */  mtspr   0x1b, r4
/* 098BF0 8009E190 80830010 */  lwz     r4, 0x10(r3)
/* 098BF4 8009E194 8063000C */  lwz     r3, 0xc(r3)
/* 098BF8 8009E198 4C000064 */  rfi     

glabel OSGetStackPointer
/* 098BFC 8009E19C 7C230B78 */  mr      r3, r1
/* 098C00 8009E1A0 4E800020 */  blr     

glabel OSClearContext
/* 098C04 8009E1A4 38A00000 */  li      r5, 0
/* 098C08 8009E1A8 B0A301A0 */  sth     r5, 0x1a0(r3)
/* 098C0C 8009E1AC 3C808000 */  lis     r4, 0x8000
/* 098C10 8009E1B0 B0A301A2 */  sth     r5, 0x1a2(r3)
/* 098C14 8009E1B4 800400D8 */  lwz     r0, 0xd8(r4)
/* 098C18 8009E1B8 7C030040 */  cmplw   r3, r0
/* 098C1C 8009E1BC 40820008 */  bne     lbl_8009E1C4
/* 098C20 8009E1C0 90A400D8 */  stw     r5, 0xd8(r4)
lbl_8009E1C4:
/* 098C24 8009E1C4 4E800020 */  blr     

glabel OSInitContext
/* 098C28 8009E1C8 90830198 */  stw     r4, 0x198(r3)
/* 098C2C 8009E1CC 90A30004 */  stw     r5, 4(r3)
/* 098C30 8009E1D0 39600000 */  li      r11, 0
/* 098C34 8009E1D4 616B9032 */  ori     r11, r11, 0x9032
/* 098C38 8009E1D8 9163019C */  stw     r11, 0x19c(r3)
/* 098C3C 8009E1DC 38000000 */  li      r0, 0
/* 098C40 8009E1E0 90030080 */  stw     r0, 0x80(r3)
/* 098C44 8009E1E4 9003008C */  stw     r0, 0x8c(r3)
/* 098C48 8009E1E8 90430008 */  stw     r2, 8(r3)
/* 098C4C 8009E1EC 91A30034 */  stw     r13, 0x34(r3)
/* 098C50 8009E1F0 9003000C */  stw     r0, 0xc(r3)
/* 098C54 8009E1F4 90030010 */  stw     r0, 0x10(r3)
/* 098C58 8009E1F8 90030014 */  stw     r0, 0x14(r3)
/* 098C5C 8009E1FC 90030018 */  stw     r0, 0x18(r3)
/* 098C60 8009E200 9003001C */  stw     r0, 0x1c(r3)
/* 098C64 8009E204 90030020 */  stw     r0, 0x20(r3)
/* 098C68 8009E208 90030024 */  stw     r0, 0x24(r3)
/* 098C6C 8009E20C 90030028 */  stw     r0, 0x28(r3)
/* 098C70 8009E210 9003002C */  stw     r0, 0x2c(r3)
/* 098C74 8009E214 90030030 */  stw     r0, 0x30(r3)
/* 098C78 8009E218 90030038 */  stw     r0, 0x38(r3)
/* 098C7C 8009E21C 9003003C */  stw     r0, 0x3c(r3)
/* 098C80 8009E220 90030040 */  stw     r0, 0x40(r3)
/* 098C84 8009E224 90030044 */  stw     r0, 0x44(r3)
/* 098C88 8009E228 90030048 */  stw     r0, 0x48(r3)
/* 098C8C 8009E22C 9003004C */  stw     r0, 0x4c(r3)
/* 098C90 8009E230 90030050 */  stw     r0, 0x50(r3)
/* 098C94 8009E234 90030054 */  stw     r0, 0x54(r3)
/* 098C98 8009E238 90030058 */  stw     r0, 0x58(r3)
/* 098C9C 8009E23C 9003005C */  stw     r0, 0x5c(r3)
/* 098CA0 8009E240 90030060 */  stw     r0, 0x60(r3)
/* 098CA4 8009E244 90030064 */  stw     r0, 0x64(r3)
/* 098CA8 8009E248 90030068 */  stw     r0, 0x68(r3)
/* 098CAC 8009E24C 9003006C */  stw     r0, 0x6c(r3)
/* 098CB0 8009E250 90030070 */  stw     r0, 0x70(r3)
/* 098CB4 8009E254 90030074 */  stw     r0, 0x74(r3)
/* 098CB8 8009E258 90030078 */  stw     r0, 0x78(r3)
/* 098CBC 8009E25C 9003007C */  stw     r0, 0x7c(r3)
/* 098CC0 8009E260 900301A4 */  stw     r0, 0x1a4(r3)
/* 098CC4 8009E264 900301A8 */  stw     r0, 0x1a8(r3)
/* 098CC8 8009E268 900301AC */  stw     r0, 0x1ac(r3)
/* 098CCC 8009E26C 900301B0 */  stw     r0, 0x1b0(r3)
/* 098CD0 8009E270 900301B4 */  stw     r0, 0x1b4(r3)
/* 098CD4 8009E274 900301B8 */  stw     r0, 0x1b8(r3)
/* 098CD8 8009E278 900301BC */  stw     r0, 0x1bc(r3)
/* 098CDC 8009E27C 900301C0 */  stw     r0, 0x1c0(r3)
/* 098CE0 8009E280 4BFFFF24 */  b       OSClearContext

glabel OSDumpContext
/* 098CE4 8009E284 7C0802A6 */  mflr    r0
/* 098CE8 8009E288 90010004 */  stw     r0, 4(r1)
/* 098CEC 8009E28C 9421FD08 */  stwu    r1, -0x2f8(r1)
/* 098CF0 8009E290 BF2102DC */  stmw    r25, 0x2dc(r1)
/* 098CF4 8009E294 7C7C1B78 */  mr      r28, r3
/* 098CF8 8009E298 3C60800F */  lis     r3, D_800F0E78@ha
/* 098CFC 8009E29C 4CC63182 */  crclr   6
/* 098D00 8009E2A0 3BE30E78 */  addi    r31, r3, D_800F0E78@l
/* 098D04 8009E2A4 7FE3FB78 */  mr      r3, r31
/* 098D08 8009E2A8 7F84E378 */  mr      r4, r28
/* 098D0C 8009E2AC 4800034D */  bl      OSReport
/* 098D10 8009E2B0 3B200000 */  li      r25, 0
/* 098D14 8009E2B4 5720103A */  slwi    r0, r25, 2
/* 098D18 8009E2B8 7F7C0214 */  add     r27, r28, r0
/* 098D1C 8009E2BC 48000004 */  b       lbl_8009E2C0
lbl_8009E2C0:
/* 098D20 8009E2C0 48000004 */  b       lbl_8009E2C4
lbl_8009E2C4:
/* 098D24 8009E2C4 48000004 */  b       lbl_8009E2C8
lbl_8009E2C8:
/* 098D28 8009E2C8 811B0040 */  lwz     r8, 0x40(r27)
/* 098D2C 8009E2CC 7F24CB78 */  mr      r4, r25
/* 098D30 8009E2D0 80BB0000 */  lwz     r5, 0(r27)
/* 098D34 8009E2D4 387F0044 */  addi    r3, r31, 0x44
/* 098D38 8009E2D8 4CC63182 */  crclr   6
/* 098D3C 8009E2DC 7CA62B78 */  mr      r6, r5
/* 098D40 8009E2E0 7D094378 */  mr      r9, r8
/* 098D44 8009E2E4 38F90010 */  addi    r7, r25, 0x10
/* 098D48 8009E2E8 48000311 */  bl      OSReport
/* 098D4C 8009E2EC 3B7B0004 */  addi    r27, r27, 4
/* 098D50 8009E2F0 3B390001 */  addi    r25, r25, 1
/* 098D54 8009E2F4 28190010 */  cmplwi  r25, 0x10
/* 098D58 8009E2F8 4180FFD0 */  blt     lbl_8009E2C8
/* 098D5C 8009E2FC 809C0084 */  lwz     r4, 0x84(r28)
/* 098D60 8009E300 387F0074 */  addi    r3, r31, 0x74
/* 098D64 8009E304 80BC0080 */  lwz     r5, 0x80(r28)
/* 098D68 8009E308 4CC63182 */  crclr   6
/* 098D6C 8009E30C 480002ED */  bl      OSReport
/* 098D70 8009E310 809C0198 */  lwz     r4, 0x198(r28)
/* 098D74 8009E314 387F00A4 */  addi    r3, r31, 0xa4
/* 098D78 8009E318 80BC019C */  lwz     r5, 0x19c(r28)
/* 098D7C 8009E31C 4CC63182 */  crclr   6
/* 098D80 8009E320 480002D9 */  bl      OSReport
/* 098D84 8009E324 387F00D4 */  addi    r3, r31, 0xd4
/* 098D88 8009E328 4CC63182 */  crclr   6
/* 098D8C 8009E32C 480002CD */  bl      OSReport
/* 098D90 8009E330 3B200000 */  li      r25, 0
/* 098D94 8009E334 5720103A */  slwi    r0, r25, 2
/* 098D98 8009E338 7F7C0214 */  add     r27, r28, r0
/* 098D9C 8009E33C 48000004 */  b       lbl_8009E340
lbl_8009E340:
/* 098DA0 8009E340 48000004 */  b       lbl_8009E344
lbl_8009E344:
/* 098DA4 8009E344 48000004 */  b       lbl_8009E348
lbl_8009E348:
/* 098DA8 8009E348 80BB01A4 */  lwz     r5, 0x1a4(r27)
/* 098DAC 8009E34C 7F24CB78 */  mr      r4, r25
/* 098DB0 8009E350 80FB01B4 */  lwz     r7, 0x1b4(r27)
/* 098DB4 8009E354 387F00E8 */  addi    r3, r31, 0xe8
/* 098DB8 8009E358 38D90004 */  addi    r6, r25, 4
/* 098DBC 8009E35C 4CC63182 */  crclr   6
/* 098DC0 8009E360 48000299 */  bl      OSReport
/* 098DC4 8009E364 3B7B0004 */  addi    r27, r27, 4
/* 098DC8 8009E368 3B390001 */  addi    r25, r25, 1
/* 098DCC 8009E36C 28190004 */  cmplwi  r25, 4
/* 098DD0 8009E370 4180FFD8 */  blt     lbl_8009E348
/* 098DD4 8009E374 A01C01A2 */  lhz     r0, 0x1a2(r28)
/* 098DD8 8009E378 540007FE */  clrlwi  r0, r0, 0x1f
/* 098DDC 8009E37C 28000000 */  cmplwi  r0, 0
/* 098DE0 8009E380 4182013C */  beq     lbl_8009E4BC
/* 098DE4 8009E384 48000979 */  bl      OSDisableInterrupts
/* 098DE8 8009E388 3CC08000 */  lis     r6, 0x8000
/* 098DEC 8009E38C 800600D4 */  lwz     r0, 0xd4(r6)
/* 098DF0 8009E390 38A00000 */  li      r5, 0
/* 098DF4 8009E394 38810010 */  addi    r4, r1, 0x10
/* 098DF8 8009E398 B0A101B0 */  sth     r5, 0x1b0(r1)
/* 098DFC 8009E39C 7C1E0378 */  mr      r30, r0
/* 098E00 8009E3A0 7C7D1B78 */  mr      r29, r3
/* 098E04 8009E3A4 B0A101B2 */  sth     r5, 0x1b2(r1)
/* 098E08 8009E3A8 800600D8 */  lwz     r0, 0xd8(r6)
/* 098E0C 8009E3AC 7C040040 */  cmplw   r4, r0
/* 098E10 8009E3B0 40820008 */  bne     lbl_8009E3B8
/* 098E14 8009E3B4 90A600D8 */  stw     r5, 0xd8(r6)
lbl_8009E3B8:
/* 098E18 8009E3B8 38610010 */  addi    r3, r1, 0x10
/* 098E1C 8009E3BC 4BFFFC21 */  bl      OSSetCurrentContext
/* 098E20 8009E3C0 387F010C */  addi    r3, r31, 0x10c
/* 098E24 8009E3C4 4CC63182 */  crclr   6
/* 098E28 8009E3C8 48000231 */  bl      OSReport
/* 098E2C 8009E3CC 3B200000 */  li      r25, 0
/* 098E30 8009E3D0 57201838 */  slwi    r0, r25, 3
/* 098E34 8009E3D4 7F5C0214 */  add     r26, r28, r0
/* 098E38 8009E3D8 48000004 */  b       lbl_8009E3DC
lbl_8009E3DC:
/* 098E3C 8009E3DC 48000004 */  b       lbl_8009E3E0
lbl_8009E3E0:
/* 098E40 8009E3E0 48000004 */  b       lbl_8009E3E4
lbl_8009E3E4:
/* 098E44 8009E3E4 C83A0098 */  lfd     f1, 0x98(r26)
/* 098E48 8009E3E8 4802F4ED */  bl      __cvt_fp2unsigned
/* 098E4C 8009E3EC 7C7B1B78 */  mr      r27, r3
/* 098E50 8009E3F0 C83A0090 */  lfd     f1, 0x90(r26)
/* 098E54 8009E3F4 4802F4E1 */  bl      __cvt_fp2unsigned
/* 098E58 8009E3F8 7C651B78 */  mr      r5, r3
/* 098E5C 8009E3FC 4CC63182 */  crclr   6
/* 098E60 8009E400 7F24CB78 */  mr      r4, r25
/* 098E64 8009E404 7F67DB78 */  mr      r7, r27
/* 098E68 8009E408 387F0120 */  addi    r3, r31, 0x120
/* 098E6C 8009E40C 38D90001 */  addi    r6, r25, 1
/* 098E70 8009E410 480001E9 */  bl      OSReport
/* 098E74 8009E414 3B5A0010 */  addi    r26, r26, 0x10
/* 098E78 8009E418 3B390002 */  addi    r25, r25, 2
/* 098E7C 8009E41C 28190020 */  cmplwi  r25, 0x20
/* 098E80 8009E420 4180FFC4 */  blt     lbl_8009E3E4
/* 098E84 8009E424 387F013C */  addi    r3, r31, 0x13c
/* 098E88 8009E428 4CC63182 */  crclr   6
/* 098E8C 8009E42C 480001CD */  bl      OSReport
/* 098E90 8009E430 3B200000 */  li      r25, 0
/* 098E94 8009E434 57201838 */  slwi    r0, r25, 3
/* 098E98 8009E438 7F5C0214 */  add     r26, r28, r0
/* 098E9C 8009E43C 48000004 */  b       lbl_8009E440
lbl_8009E440:
/* 098EA0 8009E440 48000004 */  b       lbl_8009E444
lbl_8009E444:
/* 098EA4 8009E444 48000004 */  b       lbl_8009E448
lbl_8009E448:
/* 098EA8 8009E448 C83A01D0 */  lfd     f1, 0x1d0(r26)
/* 098EAC 8009E44C 4802F489 */  bl      __cvt_fp2unsigned
/* 098EB0 8009E450 7C7B1B78 */  mr      r27, r3
/* 098EB4 8009E454 C83A01C8 */  lfd     f1, 0x1c8(r26)
/* 098EB8 8009E458 4802F47D */  bl      __cvt_fp2unsigned
/* 098EBC 8009E45C 7C651B78 */  mr      r5, r3
/* 098EC0 8009E460 4CC63182 */  crclr   6
/* 098EC4 8009E464 7F24CB78 */  mr      r4, r25
/* 098EC8 8009E468 7F67DB78 */  mr      r7, r27
/* 098ECC 8009E46C 387F0150 */  addi    r3, r31, 0x150
/* 098ED0 8009E470 38D90001 */  addi    r6, r25, 1
/* 098ED4 8009E474 48000185 */  bl      OSReport
/* 098ED8 8009E478 3B5A0010 */  addi    r26, r26, 0x10
/* 098EDC 8009E47C 3B390002 */  addi    r25, r25, 2
/* 098EE0 8009E480 28190020 */  cmplwi  r25, 0x20
/* 098EE4 8009E484 4180FFC4 */  blt     lbl_8009E448
/* 098EE8 8009E488 38A00000 */  li      r5, 0
/* 098EEC 8009E48C B0A101B0 */  sth     r5, 0x1b0(r1)
/* 098EF0 8009E490 3C608000 */  lis     r3, 0x8000
/* 098EF4 8009E494 38810010 */  addi    r4, r1, 0x10
/* 098EF8 8009E498 B0A101B2 */  sth     r5, 0x1b2(r1)
/* 098EFC 8009E49C 800300D8 */  lwz     r0, 0xd8(r3)
/* 098F00 8009E4A0 7C040040 */  cmplw   r4, r0
/* 098F04 8009E4A4 40820008 */  bne     lbl_8009E4AC
/* 098F08 8009E4A8 90A300D8 */  stw     r5, 0xd8(r3)
lbl_8009E4AC:
/* 098F0C 8009E4AC 7FC3F378 */  mr      r3, r30
/* 098F10 8009E4B0 4BFFFB2D */  bl      OSSetCurrentContext
/* 098F14 8009E4B4 7FA3EB78 */  mr      r3, r29
/* 098F18 8009E4B8 4800086D */  bl      OSRestoreInterrupts
lbl_8009E4BC:
/* 098F1C 8009E4BC 387F0170 */  addi    r3, r31, 0x170
/* 098F20 8009E4C0 4CC63182 */  crclr   6
/* 098F24 8009E4C4 48000135 */  bl      OSReport
/* 098F28 8009E4C8 833C0004 */  lwz     r25, 4(r28)
/* 098F2C 8009E4CC 3B400000 */  li      r26, 0
/* 098F30 8009E4D0 48000004 */  b       lbl_8009E4D4
lbl_8009E4D4:
/* 098F34 8009E4D4 48000004 */  b       lbl_8009E4D8
lbl_8009E4D8:
/* 098F38 8009E4D8 48000020 */  b       lbl_8009E4F8
lbl_8009E4DC:
/* 098F3C 8009E4DC 80B90000 */  lwz     r5, 0(r25)
/* 098F40 8009E4E0 7F24CB78 */  mr      r4, r25
/* 098F44 8009E4E4 80D90004 */  lwz     r6, 4(r25)
/* 098F48 8009E4E8 387F0198 */  addi    r3, r31, 0x198
/* 098F4C 8009E4EC 4CC63182 */  crclr   6
/* 098F50 8009E4F0 48000109 */  bl      OSReport
/* 098F54 8009E4F4 83390000 */  lwz     r25, 0(r25)
lbl_8009E4F8:
/* 098F58 8009E4F8 28190000 */  cmplwi  r25, 0
/* 098F5C 8009E4FC 4182001C */  beq     lbl_8009E518
/* 098F60 8009E500 3C190001 */  addis   r0, r25, 1
/* 098F64 8009E504 2800FFFF */  cmplwi  r0, 0xffff
/* 098F68 8009E508 41820010 */  beq     lbl_8009E518
/* 098F6C 8009E50C 281A0010 */  cmplwi  r26, 0x10
/* 098F70 8009E510 3B5A0001 */  addi    r26, r26, 1
/* 098F74 8009E514 4180FFC8 */  blt     lbl_8009E4DC
lbl_8009E518:
/* 098F78 8009E518 BB2102DC */  lmw     r25, 0x2dc(r1)
/* 098F7C 8009E51C 800102FC */  lwz     r0, 0x2fc(r1)
/* 098F80 8009E520 382102F8 */  addi    r1, r1, 0x2f8
/* 098F84 8009E524 7C0803A6 */  mtlr    r0
/* 098F88 8009E528 4E800020 */  blr     

OSSwitchFPUContext:
/* 098F8C 8009E52C 7CA000A6 */  mfmsr   r5
/* 098F90 8009E530 60A52000 */  ori     r5, r5, 0x2000
/* 098F94 8009E534 7CA00124 */  mtmsr   r5
/* 098F98 8009E538 4C00012C */  isync   
/* 098F9C 8009E53C 80A4019C */  lwz     r5, 0x19c(r4)
/* 098FA0 8009E540 60A52000 */  ori     r5, r5, 0x2000
/* 098FA4 8009E544 7CBB03A6 */  mtspr   0x1b, r5
/* 098FA8 8009E548 3C608000 */  lis     r3, 0x8000
/* 098FAC 8009E54C 80A300D8 */  lwz     r5, 0xd8(r3)
/* 098FB0 8009E550 908300D8 */  stw     r4, 0xd8(r3)
/* 098FB4 8009E554 7C052000 */  cmpw    r5, r4
/* 098FB8 8009E558 41820014 */  beq     lbl_8009E56C
/* 098FBC 8009E55C 2C050000 */  cmpwi   r5, 0
/* 098FC0 8009E560 41820008 */  beq     lbl_8009E568
/* 098FC4 8009E564 4BFFF949 */  bl      __OSSaveFPUContext
lbl_8009E568:
/* 098FC8 8009E568 4BFFF821 */  bl      __OSLoadFPUContext
lbl_8009E56C:
/* 098FCC 8009E56C 80640080 */  lwz     r3, 0x80(r4)
/* 098FD0 8009E570 7C6FF120 */  mtcrf   0xff, r3
/* 098FD4 8009E574 80640084 */  lwz     r3, 0x84(r4)
/* 098FD8 8009E578 7C6803A6 */  mtlr    r3
/* 098FDC 8009E57C 80640198 */  lwz     r3, 0x198(r4)
/* 098FE0 8009E580 7C7A03A6 */  mtspr   0x1a, r3
/* 098FE4 8009E584 80640088 */  lwz     r3, 0x88(r4)
/* 098FE8 8009E588 7C6903A6 */  mtctr   r3
/* 098FEC 8009E58C 8064008C */  lwz     r3, 0x8c(r4)
/* 098FF0 8009E590 7C6103A6 */  mtxer   r3
/* 098FF4 8009E594 A06401A2 */  lhz     r3, 0x1a2(r4)
/* 098FF8 8009E598 546307FA */  rlwinm  r3, r3, 0, 0x1f, 0x1d
/* 098FFC 8009E59C B06401A2 */  sth     r3, 0x1a2(r4)
/* 099000 8009E5A0 80A40014 */  lwz     r5, 0x14(r4)
/* 099004 8009E5A4 8064000C */  lwz     r3, 0xc(r4)
/* 099008 8009E5A8 80840010 */  lwz     r4, 0x10(r4)
/* 09900C 8009E5AC 4C000064 */  rfi     

glabel __OSContextInit
/* 099010 8009E5B0 7C0802A6 */  mflr    r0
/* 099014 8009E5B4 90010004 */  stw     r0, 4(r1)
/* 099018 8009E5B8 9421FFF8 */  stwu    r1, -8(r1)
/* 09901C 8009E5BC 3C60800A */  lis     r3, OSSwitchFPUContext@ha
/* 099020 8009E5C0 3883E52C */  addi    r4, r3, OSSwitchFPUContext@l
/* 099024 8009E5C4 38600007 */  li      r3, 7
/* 099028 8009E5C8 4BFFDF3D */  bl      __OSSetExceptionHandler
/* 09902C 8009E5CC 38000000 */  li      r0, 0
/* 099030 8009E5D0 4CC63182 */  crclr   6
/* 099034 8009E5D4 3C808000 */  lis     r4, 0x8000
/* 099038 8009E5D8 3C60800F */  lis     r3, D_800F102C@ha
/* 09903C 8009E5DC 900400D8 */  stw     r0, 0xd8(r4)
/* 099040 8009E5E0 3863102C */  addi    r3, r3, D_800F102C@l
/* 099044 8009E5E4 48009799 */  bl      DBPrintf
/* 099048 8009E5E8 8001000C */  lwz     r0, 0xc(r1)
/* 09904C 8009E5EC 38210008 */  addi    r1, r1, 8
/* 099050 8009E5F0 7C0803A6 */  mtlr    r0
/* 099054 8009E5F4 4E800020 */  blr     

glabel OSReport
/* 099058 8009E5F8 7C0802A6 */  mflr    r0
/* 09905C 8009E5FC 90010004 */  stw     r0, 4(r1)
/* 099060 8009E600 9421FF88 */  stwu    r1, -0x78(r1)
/* 099064 8009E604 40860024 */  bne     cr1, lbl_8009E628
/* 099068 8009E608 D8210028 */  stfd    f1, 0x28(r1)
/* 09906C 8009E60C D8410030 */  stfd    f2, 0x30(r1)
/* 099070 8009E610 D8610038 */  stfd    f3, 0x38(r1)
/* 099074 8009E614 D8810040 */  stfd    f4, 0x40(r1)
/* 099078 8009E618 D8A10048 */  stfd    f5, 0x48(r1)
/* 09907C 8009E61C D8C10050 */  stfd    f6, 0x50(r1)
/* 099080 8009E620 D8E10058 */  stfd    f7, 0x58(r1)
/* 099084 8009E624 D9010060 */  stfd    f8, 0x60(r1)
lbl_8009E628:
/* 099088 8009E628 90610008 */  stw     r3, 8(r1)
/* 09908C 8009E62C 3C000100 */  lis     r0, 0x100
/* 099090 8009E630 9081000C */  stw     r4, 0xc(r1)
/* 099094 8009E634 3881006C */  addi    r4, r1, 0x6c
/* 099098 8009E638 90A10010 */  stw     r5, 0x10(r1)
/* 09909C 8009E63C 90C10014 */  stw     r6, 0x14(r1)
/* 0990A0 8009E640 90E10018 */  stw     r7, 0x18(r1)
/* 0990A4 8009E644 9101001C */  stw     r8, 0x1c(r1)
/* 0990A8 8009E648 91210020 */  stw     r9, 0x20(r1)
/* 0990AC 8009E64C 91410024 */  stw     r10, 0x24(r1)
/* 0990B0 8009E650 9001006C */  stw     r0, 0x6c(r1)
/* 0990B4 8009E654 38010080 */  addi    r0, r1, 0x80
/* 0990B8 8009E658 90010070 */  stw     r0, 0x70(r1)
/* 0990BC 8009E65C 38010008 */  addi    r0, r1, 8
/* 0990C0 8009E660 90010074 */  stw     r0, 0x74(r1)
/* 0990C4 8009E664 48030825 */  bl      vprintf
/* 0990C8 8009E668 8001007C */  lwz     r0, 0x7c(r1)
/* 0990CC 8009E66C 38210078 */  addi    r1, r1, 0x78
/* 0990D0 8009E670 7C0803A6 */  mtlr    r0
/* 0990D4 8009E674 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000EDEF8 800F0E78 0044 */
D_800F0E78:
    .asciz "------------------------- Context 0x%08x -------------------------\n"
    .balign 4

/* 000EDF3C 800F0EBC 0030 */
D_800F0EBC:
    .asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
    .balign 4

/* 000EDF6C 800F0EEC 002F */
D_800F0EEC:
    .asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
    .balign 4

/* 000EDF9C 800F0F1C 002F */
D_800F0F1C:
    .asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
    .balign 4

/* 000EDFCC 800F0F4C 0011 */
D_800F0F4C:
    .asciz "\nGQRs----------\n"
    .balign 4

/* 000EDFE0 800F0F60 0021 */
D_800F0F60:
    .asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
    .balign 4

/* 000EE004 800F0F84 0012 */
D_800F0F84:
    .asciz "\n\nFPRs----------\n"
    .balign 4

/* 000EE018 800F0F98 0019 */
D_800F0F98:
    .asciz "fr%d \t= %d \t fr%d \t= %d\n"
    .balign 4

/* 000EE034 800F0FB4 0012 */
D_800F0FB4:
    .asciz "\n\nPSFs----------\n"
    .balign 4

/* 000EE048 800F0FC8 001D */
D_800F0FC8:
    .asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
    .balign 4

/* 000EE068 800F0FE8 0026 */
D_800F0FE8:
    .asciz "\nAddress:      Back Chain    LR Save\n"
    .balign 4

/* 000EE090 800F1010 001C */
D_800F1010:
    .asciz "0x%08x:   0x%08x    0x%08x\n"
    .balign 4

/* 000EE0AC 800F102C 0023 */
D_800F102C:
    .asciz "FPU-unavailable handler installed\n"
    .balign 4
