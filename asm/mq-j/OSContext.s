# OSContext.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009D2D4 - 0x8009DBC4

__OSLoadFPUContext:
/* 09A2D4 8009D2D4 A0A401A2 */  lhz       r5, 0x1a2(r4)
/* 09A2D8 8009D2D8 54A507FF */  clrlwi.   r5, r5, 31
/* 09A2DC 8009D2DC 41820118 */  beq       lbl_8009D3F4
/* 09A2E0 8009D2E0 C8040190 */  lfd       f0, 0x190(r4)
/* 09A2E4 8009D2E4 FDFE058E */  mtfsf     255, f0
/* 09A2E8 8009D2E8 7CB8E2A6 */  mfspr     r5, HID2
/* 09A2EC 8009D2EC 54A51FFF */  extrwi.   r5, r5, 1, 2
/* 09A2F0 8009D2F0 41820084 */  beq       lbl_8009D374
/* 09A2F4 8009D2F4 E00401C8 */  psq_l     f0, 0x1c8(r4), 0, qr0
/* 09A2F8 8009D2F8 E02401D0 */  psq_l     f1, 0x1d0(r4), 0, qr0
/* 09A2FC 8009D2FC E04401D8 */  psq_l     f2, 0x1d8(r4), 0, qr0
/* 09A300 8009D300 E06401E0 */  psq_l     f3, 0x1e0(r4), 0, qr0
/* 09A304 8009D304 E08401E8 */  psq_l     f4, 0x1e8(r4), 0, qr0
/* 09A308 8009D308 E0A401F0 */  psq_l     f5, 0x1f0(r4), 0, qr0
/* 09A30C 8009D30C E0C401F8 */  psq_l     f6, 0x1f8(r4), 0, qr0
/* 09A310 8009D310 E0E40200 */  psq_l     f7, 0x200(r4), 0, qr0
/* 09A314 8009D314 E1040208 */  psq_l     f8, 0x208(r4), 0, qr0
/* 09A318 8009D318 E1240210 */  psq_l     f9, 0x210(r4), 0, qr0
/* 09A31C 8009D31C E1440218 */  psq_l     f10, 0x218(r4), 0, qr0
/* 09A320 8009D320 E1640220 */  psq_l     f11, 0x220(r4), 0, qr0
/* 09A324 8009D324 E1840228 */  psq_l     f12, 0x228(r4), 0, qr0
/* 09A328 8009D328 E1A40230 */  psq_l     f13, 0x230(r4), 0, qr0
/* 09A32C 8009D32C E1C40238 */  psq_l     f14, 0x238(r4), 0, qr0
/* 09A330 8009D330 E1E40240 */  psq_l     f15, 0x240(r4), 0, qr0
/* 09A334 8009D334 E2040248 */  psq_l     f16, 0x248(r4), 0, qr0
/* 09A338 8009D338 E2240250 */  psq_l     f17, 0x250(r4), 0, qr0
/* 09A33C 8009D33C E2440258 */  psq_l     f18, 0x258(r4), 0, qr0
/* 09A340 8009D340 E2640260 */  psq_l     f19, 0x260(r4), 0, qr0
/* 09A344 8009D344 E2840268 */  psq_l     f20, 0x268(r4), 0, qr0
/* 09A348 8009D348 E2A40270 */  psq_l     f21, 0x270(r4), 0, qr0
/* 09A34C 8009D34C E2C40278 */  psq_l     f22, 0x278(r4), 0, qr0
/* 09A350 8009D350 E2E40280 */  psq_l     f23, 0x280(r4), 0, qr0
/* 09A354 8009D354 E3040288 */  psq_l     f24, 0x288(r4), 0, qr0
/* 09A358 8009D358 E3240290 */  psq_l     f25, 0x290(r4), 0, qr0
/* 09A35C 8009D35C E3440298 */  psq_l     f26, 0x298(r4), 0, qr0
/* 09A360 8009D360 E36402A0 */  psq_l     f27, 0x2a0(r4), 0, qr0
/* 09A364 8009D364 E38402A8 */  psq_l     f28, 0x2a8(r4), 0, qr0
/* 09A368 8009D368 E3A402B0 */  psq_l     f29, 0x2b0(r4), 0, qr0
/* 09A36C 8009D36C E3C402B8 */  psq_l     f30, 0x2b8(r4), 0, qr0
/* 09A370 8009D370 E3E402C0 */  psq_l     f31, 0x2c0(r4), 0, qr0
lbl_8009D374:
/* 09A374 8009D374 C8040090 */  lfd       f0, 0x90(r4)
/* 09A378 8009D378 C8240098 */  lfd       f1, 0x98(r4)
/* 09A37C 8009D37C C84400A0 */  lfd       f2, 0xa0(r4)
/* 09A380 8009D380 C86400A8 */  lfd       f3, 0xa8(r4)
/* 09A384 8009D384 C88400B0 */  lfd       f4, 0xb0(r4)
/* 09A388 8009D388 C8A400B8 */  lfd       f5, 0xb8(r4)
/* 09A38C 8009D38C C8C400C0 */  lfd       f6, 0xc0(r4)
/* 09A390 8009D390 C8E400C8 */  lfd       f7, 0xc8(r4)
/* 09A394 8009D394 C90400D0 */  lfd       f8, 0xd0(r4)
/* 09A398 8009D398 C92400D8 */  lfd       f9, 0xd8(r4)
/* 09A39C 8009D39C C94400E0 */  lfd       f10, 0xe0(r4)
/* 09A3A0 8009D3A0 C96400E8 */  lfd       f11, 0xe8(r4)
/* 09A3A4 8009D3A4 C98400F0 */  lfd       f12, 0xf0(r4)
/* 09A3A8 8009D3A8 C9A400F8 */  lfd       f13, 0xf8(r4)
/* 09A3AC 8009D3AC C9C40100 */  lfd       f14, 0x100(r4)
/* 09A3B0 8009D3B0 C9E40108 */  lfd       f15, 0x108(r4)
/* 09A3B4 8009D3B4 CA040110 */  lfd       f16, 0x110(r4)
/* 09A3B8 8009D3B8 CA240118 */  lfd       f17, 0x118(r4)
/* 09A3BC 8009D3BC CA440120 */  lfd       f18, 0x120(r4)
/* 09A3C0 8009D3C0 CA640128 */  lfd       f19, 0x128(r4)
/* 09A3C4 8009D3C4 CA840130 */  lfd       f20, 0x130(r4)
/* 09A3C8 8009D3C8 CAA40138 */  lfd       f21, 0x138(r4)
/* 09A3CC 8009D3CC CAC40140 */  lfd       f22, 0x140(r4)
/* 09A3D0 8009D3D0 CAE40148 */  lfd       f23, 0x148(r4)
/* 09A3D4 8009D3D4 CB040150 */  lfd       f24, 0x150(r4)
/* 09A3D8 8009D3D8 CB240158 */  lfd       f25, 0x158(r4)
/* 09A3DC 8009D3DC CB440160 */  lfd       f26, 0x160(r4)
/* 09A3E0 8009D3E0 CB640168 */  lfd       f27, 0x168(r4)
/* 09A3E4 8009D3E4 CB840170 */  lfd       f28, 0x170(r4)
/* 09A3E8 8009D3E8 CBA40178 */  lfd       f29, 0x178(r4)
/* 09A3EC 8009D3EC CBC40180 */  lfd       f30, 0x180(r4)
/* 09A3F0 8009D3F0 CBE40188 */  lfd       f31, 0x188(r4)
lbl_8009D3F4:
/* 09A3F4 8009D3F4 4E800020 */  blr

__OSSaveFPUContext:
/* 09A3F8 8009D3F8 A06501A2 */  lhz       r3, 0x1a2(r5)
/* 09A3FC 8009D3FC 60630001 */  ori       r3, r3, 0x1
/* 09A400 8009D400 B06501A2 */  sth       r3, 0x1a2(r5)
/* 09A404 8009D404 D8050090 */  stfd      f0, 0x90(r5)
/* 09A408 8009D408 D8250098 */  stfd      f1, 0x98(r5)
/* 09A40C 8009D40C D84500A0 */  stfd      f2, 0xa0(r5)
/* 09A410 8009D410 D86500A8 */  stfd      f3, 0xa8(r5)
/* 09A414 8009D414 D88500B0 */  stfd      f4, 0xb0(r5)
/* 09A418 8009D418 D8A500B8 */  stfd      f5, 0xb8(r5)
/* 09A41C 8009D41C D8C500C0 */  stfd      f6, 0xc0(r5)
/* 09A420 8009D420 D8E500C8 */  stfd      f7, 0xc8(r5)
/* 09A424 8009D424 D90500D0 */  stfd      f8, 0xd0(r5)
/* 09A428 8009D428 D92500D8 */  stfd      f9, 0xd8(r5)
/* 09A42C 8009D42C D94500E0 */  stfd      f10, 0xe0(r5)
/* 09A430 8009D430 D96500E8 */  stfd      f11, 0xe8(r5)
/* 09A434 8009D434 D98500F0 */  stfd      f12, 0xf0(r5)
/* 09A438 8009D438 D9A500F8 */  stfd      f13, 0xf8(r5)
/* 09A43C 8009D43C D9C50100 */  stfd      f14, 0x100(r5)
/* 09A440 8009D440 D9E50108 */  stfd      f15, 0x108(r5)
/* 09A444 8009D444 DA050110 */  stfd      f16, 0x110(r5)
/* 09A448 8009D448 DA250118 */  stfd      f17, 0x118(r5)
/* 09A44C 8009D44C DA450120 */  stfd      f18, 0x120(r5)
/* 09A450 8009D450 DA650128 */  stfd      f19, 0x128(r5)
/* 09A454 8009D454 DA850130 */  stfd      f20, 0x130(r5)
/* 09A458 8009D458 DAA50138 */  stfd      f21, 0x138(r5)
/* 09A45C 8009D45C DAC50140 */  stfd      f22, 0x140(r5)
/* 09A460 8009D460 DAE50148 */  stfd      f23, 0x148(r5)
/* 09A464 8009D464 DB050150 */  stfd      f24, 0x150(r5)
/* 09A468 8009D468 DB250158 */  stfd      f25, 0x158(r5)
/* 09A46C 8009D46C DB450160 */  stfd      f26, 0x160(r5)
/* 09A470 8009D470 DB650168 */  stfd      f27, 0x168(r5)
/* 09A474 8009D474 DB850170 */  stfd      f28, 0x170(r5)
/* 09A478 8009D478 DBA50178 */  stfd      f29, 0x178(r5)
/* 09A47C 8009D47C DBC50180 */  stfd      f30, 0x180(r5)
/* 09A480 8009D480 DBE50188 */  stfd      f31, 0x188(r5)
/* 09A484 8009D484 FC00048E */  mffs      f0
/* 09A488 8009D488 D8050190 */  stfd      f0, 0x190(r5)
/* 09A48C 8009D48C C8050090 */  lfd       f0, 0x90(r5)
/* 09A490 8009D490 7C78E2A6 */  mfspr     r3, HID2
/* 09A494 8009D494 54631FFF */  extrwi.   r3, r3, 1, 2
/* 09A498 8009D498 41820084 */  beq       lbl_8009D51C
/* 09A49C 8009D49C F00501C8 */  psq_st    f0, 0x1c8(r5), 0, qr0
/* 09A4A0 8009D4A0 F02501D0 */  psq_st    f1, 0x1d0(r5), 0, qr0
/* 09A4A4 8009D4A4 F04501D8 */  psq_st    f2, 0x1d8(r5), 0, qr0
/* 09A4A8 8009D4A8 F06501E0 */  psq_st    f3, 0x1e0(r5), 0, qr0
/* 09A4AC 8009D4AC F08501E8 */  psq_st    f4, 0x1e8(r5), 0, qr0
/* 09A4B0 8009D4B0 F0A501F0 */  psq_st    f5, 0x1f0(r5), 0, qr0
/* 09A4B4 8009D4B4 F0C501F8 */  psq_st    f6, 0x1f8(r5), 0, qr0
/* 09A4B8 8009D4B8 F0E50200 */  psq_st    f7, 0x200(r5), 0, qr0
/* 09A4BC 8009D4BC F1050208 */  psq_st    f8, 0x208(r5), 0, qr0
/* 09A4C0 8009D4C0 F1250210 */  psq_st    f9, 0x210(r5), 0, qr0
/* 09A4C4 8009D4C4 F1450218 */  psq_st    f10, 0x218(r5), 0, qr0
/* 09A4C8 8009D4C8 F1650220 */  psq_st    f11, 0x220(r5), 0, qr0
/* 09A4CC 8009D4CC F1850228 */  psq_st    f12, 0x228(r5), 0, qr0
/* 09A4D0 8009D4D0 F1A50230 */  psq_st    f13, 0x230(r5), 0, qr0
/* 09A4D4 8009D4D4 F1C50238 */  psq_st    f14, 0x238(r5), 0, qr0
/* 09A4D8 8009D4D8 F1E50240 */  psq_st    f15, 0x240(r5), 0, qr0
/* 09A4DC 8009D4DC F2050248 */  psq_st    f16, 0x248(r5), 0, qr0
/* 09A4E0 8009D4E0 F2250250 */  psq_st    f17, 0x250(r5), 0, qr0
/* 09A4E4 8009D4E4 F2450258 */  psq_st    f18, 0x258(r5), 0, qr0
/* 09A4E8 8009D4E8 F2650260 */  psq_st    f19, 0x260(r5), 0, qr0
/* 09A4EC 8009D4EC F2850268 */  psq_st    f20, 0x268(r5), 0, qr0
/* 09A4F0 8009D4F0 F2A50270 */  psq_st    f21, 0x270(r5), 0, qr0
/* 09A4F4 8009D4F4 F2C50278 */  psq_st    f22, 0x278(r5), 0, qr0
/* 09A4F8 8009D4F8 F2E50280 */  psq_st    f23, 0x280(r5), 0, qr0
/* 09A4FC 8009D4FC F3050288 */  psq_st    f24, 0x288(r5), 0, qr0
/* 09A500 8009D500 F3250290 */  psq_st    f25, 0x290(r5), 0, qr0
/* 09A504 8009D504 F3450298 */  psq_st    f26, 0x298(r5), 0, qr0
/* 09A508 8009D508 F36502A0 */  psq_st    f27, 0x2a0(r5), 0, qr0
/* 09A50C 8009D50C F38502A8 */  psq_st    f28, 0x2a8(r5), 0, qr0
/* 09A510 8009D510 F3A502B0 */  psq_st    f29, 0x2b0(r5), 0, qr0
/* 09A514 8009D514 F3C502B8 */  psq_st    f30, 0x2b8(r5), 0, qr0
/* 09A518 8009D518 F3E502C0 */  psq_st    f31, 0x2c0(r5), 0, qr0
lbl_8009D51C:
/* 09A51C 8009D51C 4E800020 */  blr

glabel OSSaveFPUContext
/* 09A520 8009D520 38A30000 */  addi      r5, r3, 0x0
/* 09A524 8009D524 4BFFFED4 */  b         __OSSaveFPUContext

glabel OSSetCurrentContext
/* 09A528 8009D528 3C808000 */  lis       r4, 0x8000
/* 09A52C 8009D52C 906400D4 */  stw       r3, 0xd4(r4)
/* 09A530 8009D530 546500BE */  clrlwi    r5, r3, 2
/* 09A534 8009D534 90A400C0 */  stw       r5, 0xc0(r4)
/* 09A538 8009D538 80A400D8 */  lwz       r5, 0xd8(r4)
/* 09A53C 8009D53C 7C051800 */  cmpw      r5, r3
/* 09A540 8009D540 40820020 */  bne       lbl_8009D560
/* 09A544 8009D544 80C3019C */  lwz       r6, 0x19c(r3)
/* 09A548 8009D548 60C62000 */  ori       r6, r6, 0x2000
/* 09A54C 8009D54C 90C3019C */  stw       r6, 0x19c(r3)
/* 09A550 8009D550 7CC000A6 */  mfmsr     r6
/* 09A554 8009D554 60C60002 */  ori       r6, r6, 0x2
/* 09A558 8009D558 7CC00124 */  mtmsr     r6
/* 09A55C 8009D55C 4E800020 */  blr
lbl_8009D560:
/* 09A560 8009D560 80C3019C */  lwz       r6, 0x19c(r3)
/* 09A564 8009D564 54C604E2 */  rlwinm    r6, r6, 0, 19, 17
/* 09A568 8009D568 90C3019C */  stw       r6, 0x19c(r3)
/* 09A56C 8009D56C 7CC000A6 */  mfmsr     r6
/* 09A570 8009D570 54C604E2 */  rlwinm    r6, r6, 0, 19, 17
/* 09A574 8009D574 60C60002 */  ori       r6, r6, 0x2
/* 09A578 8009D578 7CC00124 */  mtmsr     r6
/* 09A57C 8009D57C 4C00012C */  isync
/* 09A580 8009D580 4E800020 */  blr

glabel OSGetCurrentContext
/* 09A584 8009D584 3C608000 */  lis       r3, 0x8000
/* 09A588 8009D588 806300D4 */  lwz       r3, 0xd4(r3)
/* 09A58C 8009D58C 4E800020 */  blr

glabel OSSaveContext
/* 09A590 8009D590 BDA30034 */  stmw      r13, 0x34(r3)
/* 09A594 8009D594 7C11E2A6 */  mfspr     r0, GQR1
/* 09A598 8009D598 900301A8 */  stw       r0, 0x1a8(r3)
/* 09A59C 8009D59C 7C12E2A6 */  mfspr     r0, GQR2
/* 09A5A0 8009D5A0 900301AC */  stw       r0, 0x1ac(r3)
/* 09A5A4 8009D5A4 7C13E2A6 */  mfspr     r0, GQR3
/* 09A5A8 8009D5A8 900301B0 */  stw       r0, 0x1b0(r3)
/* 09A5AC 8009D5AC 7C14E2A6 */  mfspr     r0, GQR4
/* 09A5B0 8009D5B0 900301B4 */  stw       r0, 0x1b4(r3)
/* 09A5B4 8009D5B4 7C15E2A6 */  mfspr     r0, GQR5
/* 09A5B8 8009D5B8 900301B8 */  stw       r0, 0x1b8(r3)
/* 09A5BC 8009D5BC 7C16E2A6 */  mfspr     r0, GQR6
/* 09A5C0 8009D5C0 900301BC */  stw       r0, 0x1bc(r3)
/* 09A5C4 8009D5C4 7C17E2A6 */  mfspr     r0, GQR7
/* 09A5C8 8009D5C8 900301C0 */  stw       r0, 0x1c0(r3)
/* 09A5CC 8009D5CC 7C000026 */  mfcr      r0
/* 09A5D0 8009D5D0 90030080 */  stw       r0, 0x80(r3)
/* 09A5D4 8009D5D4 7C0802A6 */  mflr      r0
/* 09A5D8 8009D5D8 90030084 */  stw       r0, 0x84(r3)
/* 09A5DC 8009D5DC 90030198 */  stw       r0, 0x198(r3)
/* 09A5E0 8009D5E0 7C0000A6 */  mfmsr     r0
/* 09A5E4 8009D5E4 9003019C */  stw       r0, 0x19c(r3)
/* 09A5E8 8009D5E8 7C0902A6 */  mfctr     r0
/* 09A5EC 8009D5EC 90030088 */  stw       r0, 0x88(r3)
/* 09A5F0 8009D5F0 7C0102A6 */  mfxer     r0
/* 09A5F4 8009D5F4 9003008C */  stw       r0, 0x8c(r3)
/* 09A5F8 8009D5F8 90230004 */  stw       r1, 0x4(r3)
/* 09A5FC 8009D5FC 90430008 */  stw       r2, 0x8(r3)
/* 09A600 8009D600 38000001 */  li        r0, 0x1
/* 09A604 8009D604 9003000C */  stw       r0, 0xc(r3)
/* 09A608 8009D608 38600000 */  li        r3, 0x0
/* 09A60C 8009D60C 4E800020 */  blr

glabel OSLoadContext
/* 09A610 8009D610 3C80800A */  lis       r4, OSDisableInterrupts@ha
/* 09A614 8009D614 80C30198 */  lwz       r6, 0x198(r3)
/* 09A618 8009D618 38A4E248 */  addi      r5, r4, OSDisableInterrupts@l
/* 09A61C 8009D61C 7C062840 */  cmplw     r6, r5
/* 09A620 8009D620 40810018 */  ble       lbl_8009D638
/* 09A624 8009D624 3C80800A */  lis       r4, OSDisableInterrupts+0xC@ha
/* 09A628 8009D628 3804E254 */  addi      r0, r4, OSDisableInterrupts+0xC@l
/* 09A62C 8009D62C 7C060040 */  cmplw     r6, r0
/* 09A630 8009D630 40800008 */  bge       lbl_8009D638
/* 09A634 8009D634 90A30198 */  stw       r5, 0x198(r3)
lbl_8009D638:
/* 09A638 8009D638 80030000 */  lwz       r0, 0x0(r3)
/* 09A63C 8009D63C 80230004 */  lwz       r1, 0x4(r3)
/* 09A640 8009D640 80430008 */  lwz       r2, 0x8(r3)
/* 09A644 8009D644 A08301A2 */  lhz       r4, 0x1a2(r3)
/* 09A648 8009D648 548507BD */  rlwinm.   r5, r4, 0, 30, 30
/* 09A64C 8009D64C 41820014 */  beq       lbl_8009D660
/* 09A650 8009D650 548407FA */  rlwinm    r4, r4, 0, 31, 29
/* 09A654 8009D654 B08301A2 */  sth       r4, 0x1a2(r3)
/* 09A658 8009D658 B8A30014 */  lmw       r5, 0x14(r3)
/* 09A65C 8009D65C 48000008 */  b         lbl_8009D664
lbl_8009D660:
/* 09A660 8009D660 B9A30034 */  lmw       r13, 0x34(r3)
lbl_8009D664:
/* 09A664 8009D664 808301A8 */  lwz       r4, 0x1a8(r3)
/* 09A668 8009D668 7C91E3A6 */  mtspr     GQR1, r4
/* 09A66C 8009D66C 808301AC */  lwz       r4, 0x1ac(r3)
/* 09A670 8009D670 7C92E3A6 */  mtspr     GQR2, r4
/* 09A674 8009D674 808301B0 */  lwz       r4, 0x1b0(r3)
/* 09A678 8009D678 7C93E3A6 */  mtspr     GQR3, r4
/* 09A67C 8009D67C 808301B4 */  lwz       r4, 0x1b4(r3)
/* 09A680 8009D680 7C94E3A6 */  mtspr     GQR4, r4
/* 09A684 8009D684 808301B8 */  lwz       r4, 0x1b8(r3)
/* 09A688 8009D688 7C95E3A6 */  mtspr     GQR5, r4
/* 09A68C 8009D68C 808301BC */  lwz       r4, 0x1bc(r3)
/* 09A690 8009D690 7C96E3A6 */  mtspr     GQR6, r4
/* 09A694 8009D694 808301C0 */  lwz       r4, 0x1c0(r3)
/* 09A698 8009D698 7C97E3A6 */  mtspr     GQR7, r4
/* 09A69C 8009D69C 80830080 */  lwz       r4, 0x80(r3)
/* 09A6A0 8009D6A0 7C8FF120 */  mtcrf     255, r4
/* 09A6A4 8009D6A4 80830084 */  lwz       r4, 0x84(r3)
/* 09A6A8 8009D6A8 7C8803A6 */  mtlr      r4
/* 09A6AC 8009D6AC 80830088 */  lwz       r4, 0x88(r3)
/* 09A6B0 8009D6B0 7C8903A6 */  mtctr     r4
/* 09A6B4 8009D6B4 8083008C */  lwz       r4, 0x8c(r3)
/* 09A6B8 8009D6B8 7C8103A6 */  mtxer     r4
/* 09A6BC 8009D6BC 7C8000A6 */  mfmsr     r4
/* 09A6C0 8009D6C0 5484045E */  rlwinm    r4, r4, 0, 17, 15
/* 09A6C4 8009D6C4 548407FA */  rlwinm    r4, r4, 0, 31, 29
/* 09A6C8 8009D6C8 7C800124 */  mtmsr     r4
/* 09A6CC 8009D6CC 80830198 */  lwz       r4, 0x198(r3)
/* 09A6D0 8009D6D0 7C9A03A6 */  mtsrr0    r4
/* 09A6D4 8009D6D4 8083019C */  lwz       r4, 0x19c(r3)
/* 09A6D8 8009D6D8 7C9B03A6 */  mtsrr1    r4
/* 09A6DC 8009D6DC 80830010 */  lwz       r4, 0x10(r3)
/* 09A6E0 8009D6E0 8063000C */  lwz       r3, 0xc(r3)
/* 09A6E4 8009D6E4 4C000064 */  rfi

glabel OSGetStackPointer
/* 09A6E8 8009D6E8 7C230B78 */  mr        r3, r1
/* 09A6EC 8009D6EC 4E800020 */  blr

glabel OSClearContext
/* 09A6F0 8009D6F0 38A00000 */  li        r5, 0x0
/* 09A6F4 8009D6F4 B0A301A0 */  sth       r5, 0x1a0(r3)
/* 09A6F8 8009D6F8 3C808000 */  lis       r4, 0x8000
/* 09A6FC 8009D6FC B0A301A2 */  sth       r5, 0x1a2(r3)
/* 09A700 8009D700 800400D8 */  lwz       r0, 0xd8(r4)
/* 09A704 8009D704 7C030040 */  cmplw     r3, r0
/* 09A708 8009D708 40820008 */  bne       lbl_8009D710
/* 09A70C 8009D70C 90A400D8 */  stw       r5, 0xd8(r4)
lbl_8009D710:
/* 09A710 8009D710 4E800020 */  blr

glabel OSInitContext
/* 09A714 8009D714 90830198 */  stw       r4, 0x198(r3)
/* 09A718 8009D718 90A30004 */  stw       r5, 0x4(r3)
/* 09A71C 8009D71C 39600000 */  li        r11, 0x0
/* 09A720 8009D720 616B9032 */  ori       r11, r11, 0x9032
/* 09A724 8009D724 9163019C */  stw       r11, 0x19c(r3)
/* 09A728 8009D728 38000000 */  li        r0, 0x0
/* 09A72C 8009D72C 90030080 */  stw       r0, 0x80(r3)
/* 09A730 8009D730 9003008C */  stw       r0, 0x8c(r3)
/* 09A734 8009D734 90430008 */  stw       r2, 0x8(r3)
/* 09A738 8009D738 91A30034 */  stw       r13, 0x34(r3)
/* 09A73C 8009D73C 9003000C */  stw       r0, 0xc(r3)
/* 09A740 8009D740 90030010 */  stw       r0, 0x10(r3)
/* 09A744 8009D744 90030014 */  stw       r0, 0x14(r3)
/* 09A748 8009D748 90030018 */  stw       r0, 0x18(r3)
/* 09A74C 8009D74C 9003001C */  stw       r0, 0x1c(r3)
/* 09A750 8009D750 90030020 */  stw       r0, 0x20(r3)
/* 09A754 8009D754 90030024 */  stw       r0, 0x24(r3)
/* 09A758 8009D758 90030028 */  stw       r0, 0x28(r3)
/* 09A75C 8009D75C 9003002C */  stw       r0, 0x2c(r3)
/* 09A760 8009D760 90030030 */  stw       r0, 0x30(r3)
/* 09A764 8009D764 90030038 */  stw       r0, 0x38(r3)
/* 09A768 8009D768 9003003C */  stw       r0, 0x3c(r3)
/* 09A76C 8009D76C 90030040 */  stw       r0, 0x40(r3)
/* 09A770 8009D770 90030044 */  stw       r0, 0x44(r3)
/* 09A774 8009D774 90030048 */  stw       r0, 0x48(r3)
/* 09A778 8009D778 9003004C */  stw       r0, 0x4c(r3)
/* 09A77C 8009D77C 90030050 */  stw       r0, 0x50(r3)
/* 09A780 8009D780 90030054 */  stw       r0, 0x54(r3)
/* 09A784 8009D784 90030058 */  stw       r0, 0x58(r3)
/* 09A788 8009D788 9003005C */  stw       r0, 0x5c(r3)
/* 09A78C 8009D78C 90030060 */  stw       r0, 0x60(r3)
/* 09A790 8009D790 90030064 */  stw       r0, 0x64(r3)
/* 09A794 8009D794 90030068 */  stw       r0, 0x68(r3)
/* 09A798 8009D798 9003006C */  stw       r0, 0x6c(r3)
/* 09A79C 8009D79C 90030070 */  stw       r0, 0x70(r3)
/* 09A7A0 8009D7A0 90030074 */  stw       r0, 0x74(r3)
/* 09A7A4 8009D7A4 90030078 */  stw       r0, 0x78(r3)
/* 09A7A8 8009D7A8 9003007C */  stw       r0, 0x7c(r3)
/* 09A7AC 8009D7AC 900301A4 */  stw       r0, 0x1a4(r3)
/* 09A7B0 8009D7B0 900301A8 */  stw       r0, 0x1a8(r3)
/* 09A7B4 8009D7B4 900301AC */  stw       r0, 0x1ac(r3)
/* 09A7B8 8009D7B8 900301B0 */  stw       r0, 0x1b0(r3)
/* 09A7BC 8009D7BC 900301B4 */  stw       r0, 0x1b4(r3)
/* 09A7C0 8009D7C0 900301B8 */  stw       r0, 0x1b8(r3)
/* 09A7C4 8009D7C4 900301BC */  stw       r0, 0x1bc(r3)
/* 09A7C8 8009D7C8 900301C0 */  stw       r0, 0x1c0(r3)
/* 09A7CC 8009D7CC 4BFFFF24 */  b         OSClearContext

glabel OSDumpContext
/* 09A7D0 8009D7D0 7C0802A6 */  mflr      r0
/* 09A7D4 8009D7D4 90010004 */  stw       r0, 0x4(r1)
/* 09A7D8 8009D7D8 9421FD08 */  stwu      r1, -0x2f8(r1)
/* 09A7DC 8009D7DC BF2102DC */  stmw      r25, 0x2dc(r1)
/* 09A7E0 8009D7E0 7C7C1B78 */  mr        r28, r3
/* 09A7E4 8009D7E4 3C60800F */  lis       r3, D_800F2338@ha
/* 09A7E8 8009D7E8 4CC63182 */  crclr     cr1eq
/* 09A7EC 8009D7EC 3BE32338 */  addi      r31, r3, D_800F2338@l
/* 09A7F0 8009D7F0 7FE3FB78 */  mr        r3, r31
/* 09A7F4 8009D7F4 7F84E378 */  mr        r4, r28
/* 09A7F8 8009D7F8 4800034D */  bl        OSReport
/* 09A7FC 8009D7FC 3B200000 */  li        r25, 0x0
/* 09A800 8009D800 5720103A */  slwi      r0, r25, 2
/* 09A804 8009D804 7F7C0214 */  add       r27, r28, r0
/* 09A808 8009D808 48000004 */  b         lbl_8009D80C
lbl_8009D80C:
/* 09A80C 8009D80C 48000004 */  b         lbl_8009D810
lbl_8009D810:
/* 09A810 8009D810 48000004 */  b         lbl_8009D814
lbl_8009D814:
/* 09A814 8009D814 811B0040 */  lwz       r8, 0x40(r27)
/* 09A818 8009D818 7F24CB78 */  mr        r4, r25
/* 09A81C 8009D81C 80BB0000 */  lwz       r5, 0x0(r27)
/* 09A820 8009D820 387F0044 */  addi      r3, r31, 0x44
/* 09A824 8009D824 4CC63182 */  crclr     cr1eq
/* 09A828 8009D828 7CA62B78 */  mr        r6, r5
/* 09A82C 8009D82C 7D094378 */  mr        r9, r8
/* 09A830 8009D830 38F90010 */  addi      r7, r25, 0x10
/* 09A834 8009D834 48000311 */  bl        OSReport
/* 09A838 8009D838 3B7B0004 */  addi      r27, r27, 0x4
/* 09A83C 8009D83C 3B390001 */  addi      r25, r25, 0x1
/* 09A840 8009D840 28190010 */  cmplwi    r25, 0x10
/* 09A844 8009D844 4180FFD0 */  blt       lbl_8009D814
/* 09A848 8009D848 809C0084 */  lwz       r4, 0x84(r28)
/* 09A84C 8009D84C 387F0074 */  addi      r3, r31, 0x74
/* 09A850 8009D850 80BC0080 */  lwz       r5, 0x80(r28)
/* 09A854 8009D854 4CC63182 */  crclr     cr1eq
/* 09A858 8009D858 480002ED */  bl        OSReport
/* 09A85C 8009D85C 809C0198 */  lwz       r4, 0x198(r28)
/* 09A860 8009D860 387F00A4 */  addi      r3, r31, 0xa4
/* 09A864 8009D864 80BC019C */  lwz       r5, 0x19c(r28)
/* 09A868 8009D868 4CC63182 */  crclr     cr1eq
/* 09A86C 8009D86C 480002D9 */  bl        OSReport
/* 09A870 8009D870 387F00D4 */  addi      r3, r31, 0xd4
/* 09A874 8009D874 4CC63182 */  crclr     cr1eq
/* 09A878 8009D878 480002CD */  bl        OSReport
/* 09A87C 8009D87C 3B200000 */  li        r25, 0x0
/* 09A880 8009D880 5720103A */  slwi      r0, r25, 2
/* 09A884 8009D884 7F7C0214 */  add       r27, r28, r0
/* 09A888 8009D888 48000004 */  b         lbl_8009D88C
lbl_8009D88C:
/* 09A88C 8009D88C 48000004 */  b         lbl_8009D890
lbl_8009D890:
/* 09A890 8009D890 48000004 */  b         lbl_8009D894
lbl_8009D894:
/* 09A894 8009D894 80BB01A4 */  lwz       r5, 0x1a4(r27)
/* 09A898 8009D898 7F24CB78 */  mr        r4, r25
/* 09A89C 8009D89C 80FB01B4 */  lwz       r7, 0x1b4(r27)
/* 09A8A0 8009D8A0 387F00E8 */  addi      r3, r31, 0xe8
/* 09A8A4 8009D8A4 38D90004 */  addi      r6, r25, 0x4
/* 09A8A8 8009D8A8 4CC63182 */  crclr     cr1eq
/* 09A8AC 8009D8AC 48000299 */  bl        OSReport
/* 09A8B0 8009D8B0 3B7B0004 */  addi      r27, r27, 0x4
/* 09A8B4 8009D8B4 3B390001 */  addi      r25, r25, 0x1
/* 09A8B8 8009D8B8 28190004 */  cmplwi    r25, 0x4
/* 09A8BC 8009D8BC 4180FFD8 */  blt       lbl_8009D894
/* 09A8C0 8009D8C0 A01C01A2 */  lhz       r0, 0x1a2(r28)
/* 09A8C4 8009D8C4 540007FE */  clrlwi    r0, r0, 31
/* 09A8C8 8009D8C8 28000000 */  cmplwi    r0, 0x0
/* 09A8CC 8009D8CC 4182013C */  beq       lbl_8009DA08
/* 09A8D0 8009D8D0 48000979 */  bl        OSDisableInterrupts
/* 09A8D4 8009D8D4 3CC08000 */  lis       r6, 0x8000
/* 09A8D8 8009D8D8 800600D4 */  lwz       r0, 0xd4(r6)
/* 09A8DC 8009D8DC 38A00000 */  li        r5, 0x0
/* 09A8E0 8009D8E0 38810010 */  addi      r4, r1, 0x10
/* 09A8E4 8009D8E4 B0A101B0 */  sth       r5, 0x1b0(r1)
/* 09A8E8 8009D8E8 7C1E0378 */  mr        r30, r0
/* 09A8EC 8009D8EC 7C7D1B78 */  mr        r29, r3
/* 09A8F0 8009D8F0 B0A101B2 */  sth       r5, 0x1b2(r1)
/* 09A8F4 8009D8F4 800600D8 */  lwz       r0, 0xd8(r6)
/* 09A8F8 8009D8F8 7C040040 */  cmplw     r4, r0
/* 09A8FC 8009D8FC 40820008 */  bne       lbl_8009D904
/* 09A900 8009D900 90A600D8 */  stw       r5, 0xd8(r6)
lbl_8009D904:
/* 09A904 8009D904 38610010 */  addi      r3, r1, 0x10
/* 09A908 8009D908 4BFFFC21 */  bl        OSSetCurrentContext
/* 09A90C 8009D90C 387F010C */  addi      r3, r31, 0x10c
/* 09A910 8009D910 4CC63182 */  crclr     cr1eq
/* 09A914 8009D914 48000231 */  bl        OSReport
/* 09A918 8009D918 3B200000 */  li        r25, 0x0
/* 09A91C 8009D91C 57201838 */  slwi      r0, r25, 3
/* 09A920 8009D920 7F5C0214 */  add       r26, r28, r0
/* 09A924 8009D924 48000004 */  b         lbl_8009D928
lbl_8009D928:
/* 09A928 8009D928 48000004 */  b         lbl_8009D92C
lbl_8009D92C:
/* 09A92C 8009D92C 48000004 */  b         lbl_8009D930
lbl_8009D930:
/* 09A930 8009D930 C83A0098 */  lfd       f1, 0x98(r26)
/* 09A934 8009D934 4802EB79 */  bl        __cvt_fp2unsigned
/* 09A938 8009D938 7C7B1B78 */  mr        r27, r3
/* 09A93C 8009D93C C83A0090 */  lfd       f1, 0x90(r26)
/* 09A940 8009D940 4802EB6D */  bl        __cvt_fp2unsigned
/* 09A944 8009D944 7C651B78 */  mr        r5, r3
/* 09A948 8009D948 4CC63182 */  crclr     cr1eq
/* 09A94C 8009D94C 7F24CB78 */  mr        r4, r25
/* 09A950 8009D950 7F67DB78 */  mr        r7, r27
/* 09A954 8009D954 387F0120 */  addi      r3, r31, 0x120
/* 09A958 8009D958 38D90001 */  addi      r6, r25, 0x1
/* 09A95C 8009D95C 480001E9 */  bl        OSReport
/* 09A960 8009D960 3B5A0010 */  addi      r26, r26, 0x10
/* 09A964 8009D964 3B390002 */  addi      r25, r25, 0x2
/* 09A968 8009D968 28190020 */  cmplwi    r25, 0x20
/* 09A96C 8009D96C 4180FFC4 */  blt       lbl_8009D930
/* 09A970 8009D970 387F013C */  addi      r3, r31, 0x13c
/* 09A974 8009D974 4CC63182 */  crclr     cr1eq
/* 09A978 8009D978 480001CD */  bl        OSReport
/* 09A97C 8009D97C 3B200000 */  li        r25, 0x0
/* 09A980 8009D980 57201838 */  slwi      r0, r25, 3
/* 09A984 8009D984 7F5C0214 */  add       r26, r28, r0
/* 09A988 8009D988 48000004 */  b         lbl_8009D98C
lbl_8009D98C:
/* 09A98C 8009D98C 48000004 */  b         lbl_8009D990
lbl_8009D990:
/* 09A990 8009D990 48000004 */  b         lbl_8009D994
lbl_8009D994:
/* 09A994 8009D994 C83A01D0 */  lfd       f1, 0x1d0(r26)
/* 09A998 8009D998 4802EB15 */  bl        __cvt_fp2unsigned
/* 09A99C 8009D99C 7C7B1B78 */  mr        r27, r3
/* 09A9A0 8009D9A0 C83A01C8 */  lfd       f1, 0x1c8(r26)
/* 09A9A4 8009D9A4 4802EB09 */  bl        __cvt_fp2unsigned
/* 09A9A8 8009D9A8 7C651B78 */  mr        r5, r3
/* 09A9AC 8009D9AC 4CC63182 */  crclr     cr1eq
/* 09A9B0 8009D9B0 7F24CB78 */  mr        r4, r25
/* 09A9B4 8009D9B4 7F67DB78 */  mr        r7, r27
/* 09A9B8 8009D9B8 387F0150 */  addi      r3, r31, 0x150
/* 09A9BC 8009D9BC 38D90001 */  addi      r6, r25, 0x1
/* 09A9C0 8009D9C0 48000185 */  bl        OSReport
/* 09A9C4 8009D9C4 3B5A0010 */  addi      r26, r26, 0x10
/* 09A9C8 8009D9C8 3B390002 */  addi      r25, r25, 0x2
/* 09A9CC 8009D9CC 28190020 */  cmplwi    r25, 0x20
/* 09A9D0 8009D9D0 4180FFC4 */  blt       lbl_8009D994
/* 09A9D4 8009D9D4 38A00000 */  li        r5, 0x0
/* 09A9D8 8009D9D8 B0A101B0 */  sth       r5, 0x1b0(r1)
/* 09A9DC 8009D9DC 3C608000 */  lis       r3, 0x8000
/* 09A9E0 8009D9E0 38810010 */  addi      r4, r1, 0x10
/* 09A9E4 8009D9E4 B0A101B2 */  sth       r5, 0x1b2(r1)
/* 09A9E8 8009D9E8 800300D8 */  lwz       r0, 0xd8(r3)
/* 09A9EC 8009D9EC 7C040040 */  cmplw     r4, r0
/* 09A9F0 8009D9F0 40820008 */  bne       lbl_8009D9F8
/* 09A9F4 8009D9F4 90A300D8 */  stw       r5, 0xd8(r3)
lbl_8009D9F8:
/* 09A9F8 8009D9F8 7FC3F378 */  mr        r3, r30
/* 09A9FC 8009D9FC 4BFFFB2D */  bl        OSSetCurrentContext
/* 09AA00 8009DA00 7FA3EB78 */  mr        r3, r29
/* 09AA04 8009DA04 4800086D */  bl        OSRestoreInterrupts
lbl_8009DA08:
/* 09AA08 8009DA08 387F0170 */  addi      r3, r31, 0x170
/* 09AA0C 8009DA0C 4CC63182 */  crclr     cr1eq
/* 09AA10 8009DA10 48000135 */  bl        OSReport
/* 09AA14 8009DA14 833C0004 */  lwz       r25, 0x4(r28)
/* 09AA18 8009DA18 3B400000 */  li        r26, 0x0
/* 09AA1C 8009DA1C 48000004 */  b         lbl_8009DA20
lbl_8009DA20:
/* 09AA20 8009DA20 48000004 */  b         lbl_8009DA24
lbl_8009DA24:
/* 09AA24 8009DA24 48000020 */  b         lbl_8009DA44
lbl_8009DA28:
/* 09AA28 8009DA28 80B90000 */  lwz       r5, 0x0(r25)
/* 09AA2C 8009DA2C 7F24CB78 */  mr        r4, r25
/* 09AA30 8009DA30 80D90004 */  lwz       r6, 0x4(r25)
/* 09AA34 8009DA34 387F0198 */  addi      r3, r31, 0x198
/* 09AA38 8009DA38 4CC63182 */  crclr     cr1eq
/* 09AA3C 8009DA3C 48000109 */  bl        OSReport
/* 09AA40 8009DA40 83390000 */  lwz       r25, 0x0(r25)
lbl_8009DA44:
/* 09AA44 8009DA44 28190000 */  cmplwi    r25, 0x0
/* 09AA48 8009DA48 4182001C */  beq       lbl_8009DA64
/* 09AA4C 8009DA4C 3C190001 */  addis     r0, r25, 0x1
/* 09AA50 8009DA50 2800FFFF */  cmplwi    r0, 0xffff
/* 09AA54 8009DA54 41820010 */  beq       lbl_8009DA64
/* 09AA58 8009DA58 281A0010 */  cmplwi    r26, 0x10
/* 09AA5C 8009DA5C 3B5A0001 */  addi      r26, r26, 0x1
/* 09AA60 8009DA60 4180FFC8 */  blt       lbl_8009DA28
lbl_8009DA64:
/* 09AA64 8009DA64 BB2102DC */  lmw       r25, 0x2dc(r1)
/* 09AA68 8009DA68 800102FC */  lwz       r0, 0x2fc(r1)
/* 09AA6C 8009DA6C 382102F8 */  addi      r1, r1, 0x2f8
/* 09AA70 8009DA70 7C0803A6 */  mtlr      r0
/* 09AA74 8009DA74 4E800020 */  blr

OSSwitchFPUContext:
/* 09AA78 8009DA78 7CA000A6 */  mfmsr     r5
/* 09AA7C 8009DA7C 60A52000 */  ori       r5, r5, 0x2000
/* 09AA80 8009DA80 7CA00124 */  mtmsr     r5
/* 09AA84 8009DA84 4C00012C */  isync
/* 09AA88 8009DA88 80A4019C */  lwz       r5, 0x19c(r4)
/* 09AA8C 8009DA8C 60A52000 */  ori       r5, r5, 0x2000
/* 09AA90 8009DA90 7CBB03A6 */  mtsrr1    r5
/* 09AA94 8009DA94 3C608000 */  lis       r3, 0x8000
/* 09AA98 8009DA98 80A300D8 */  lwz       r5, 0xd8(r3)
/* 09AA9C 8009DA9C 908300D8 */  stw       r4, 0xd8(r3)
/* 09AAA0 8009DAA0 7C052000 */  cmpw      r5, r4
/* 09AAA4 8009DAA4 41820014 */  beq       lbl_8009DAB8
/* 09AAA8 8009DAA8 2C050000 */  cmpwi     r5, 0x0
/* 09AAAC 8009DAAC 41820008 */  beq       lbl_8009DAB4
/* 09AAB0 8009DAB0 4BFFF949 */  bl        __OSSaveFPUContext
lbl_8009DAB4:
/* 09AAB4 8009DAB4 4BFFF821 */  bl        __OSLoadFPUContext
lbl_8009DAB8:
/* 09AAB8 8009DAB8 80640080 */  lwz       r3, 0x80(r4)
/* 09AABC 8009DABC 7C6FF120 */  mtcrf     255, r3
/* 09AAC0 8009DAC0 80640084 */  lwz       r3, 0x84(r4)
/* 09AAC4 8009DAC4 7C6803A6 */  mtlr      r3
/* 09AAC8 8009DAC8 80640198 */  lwz       r3, 0x198(r4)
/* 09AACC 8009DACC 7C7A03A6 */  mtsrr0    r3
/* 09AAD0 8009DAD0 80640088 */  lwz       r3, 0x88(r4)
/* 09AAD4 8009DAD4 7C6903A6 */  mtctr     r3
/* 09AAD8 8009DAD8 8064008C */  lwz       r3, 0x8c(r4)
/* 09AADC 8009DADC 7C6103A6 */  mtxer     r3
/* 09AAE0 8009DAE0 A06401A2 */  lhz       r3, 0x1a2(r4)
/* 09AAE4 8009DAE4 546307FA */  rlwinm    r3, r3, 0, 31, 29
/* 09AAE8 8009DAE8 B06401A2 */  sth       r3, 0x1a2(r4)
/* 09AAEC 8009DAEC 80A40014 */  lwz       r5, 0x14(r4)
/* 09AAF0 8009DAF0 8064000C */  lwz       r3, 0xc(r4)
/* 09AAF4 8009DAF4 80840010 */  lwz       r4, 0x10(r4)
/* 09AAF8 8009DAF8 4C000064 */  rfi

glabel __OSContextInit
/* 09AAFC 8009DAFC 7C0802A6 */  mflr      r0
/* 09AB00 8009DB00 90010004 */  stw       r0, 0x4(r1)
/* 09AB04 8009DB04 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09AB08 8009DB08 3C60800A */  lis       r3, OSSwitchFPUContext@ha
/* 09AB0C 8009DB0C 3883DA78 */  addi      r4, r3, OSSwitchFPUContext@l
/* 09AB10 8009DB10 38600007 */  li        r3, 0x7
/* 09AB14 8009DB14 4BFFE001 */  bl        __OSSetExceptionHandler
/* 09AB18 8009DB18 38000000 */  li        r0, 0x0
/* 09AB1C 8009DB1C 4CC63182 */  crclr     cr1eq
/* 09AB20 8009DB20 3C808000 */  lis       r4, 0x8000
/* 09AB24 8009DB24 3C60800F */  lis       r3, "@74"@ha
/* 09AB28 8009DB28 900400D8 */  stw       r0, 0xd8(r4)
/* 09AB2C 8009DB2C 386324EC */  addi      r3, r3, "@74"@l
/* 09AB30 8009DB30 48008D2D */  bl        DBPrintf
/* 09AB34 8009DB34 8001000C */  lwz       r0, 0xc(r1)
/* 09AB38 8009DB38 38210008 */  addi      r1, r1, 0x8
/* 09AB3C 8009DB3C 7C0803A6 */  mtlr      r0
/* 09AB40 8009DB40 4E800020 */  blr

glabel OSReport
/* 09AB44 8009DB44 7C0802A6 */  mflr      r0
/* 09AB48 8009DB48 90010004 */  stw       r0, 0x4(r1)
/* 09AB4C 8009DB4C 9421FF88 */  stwu      r1, -0x78(r1)
/* 09AB50 8009DB50 40860024 */  bne       cr1, lbl_8009DB74
/* 09AB54 8009DB54 D8210028 */  stfd      f1, 0x28(r1)
/* 09AB58 8009DB58 D8410030 */  stfd      f2, 0x30(r1)
/* 09AB5C 8009DB5C D8610038 */  stfd      f3, 0x38(r1)
/* 09AB60 8009DB60 D8810040 */  stfd      f4, 0x40(r1)
/* 09AB64 8009DB64 D8A10048 */  stfd      f5, 0x48(r1)
/* 09AB68 8009DB68 D8C10050 */  stfd      f6, 0x50(r1)
/* 09AB6C 8009DB6C D8E10058 */  stfd      f7, 0x58(r1)
/* 09AB70 8009DB70 D9010060 */  stfd      f8, 0x60(r1)
lbl_8009DB74:
/* 09AB74 8009DB74 90610008 */  stw       r3, 0x8(r1)
/* 09AB78 8009DB78 3C000100 */  lis       r0, 0x100
/* 09AB7C 8009DB7C 9081000C */  stw       r4, 0xc(r1)
/* 09AB80 8009DB80 3881006C */  addi      r4, r1, 0x6c
/* 09AB84 8009DB84 90A10010 */  stw       r5, 0x10(r1)
/* 09AB88 8009DB88 90C10014 */  stw       r6, 0x14(r1)
/* 09AB8C 8009DB8C 90E10018 */  stw       r7, 0x18(r1)
/* 09AB90 8009DB90 9101001C */  stw       r8, 0x1c(r1)
/* 09AB94 8009DB94 91210020 */  stw       r9, 0x20(r1)
/* 09AB98 8009DB98 91410024 */  stw       r10, 0x24(r1)
/* 09AB9C 8009DB9C 9001006C */  stw       r0, 0x6c(r1)
/* 09ABA0 8009DBA0 38010080 */  addi      r0, r1, 0x80
/* 09ABA4 8009DBA4 90010070 */  stw       r0, 0x70(r1)
/* 09ABA8 8009DBA8 38010008 */  addi      r0, r1, 0x8
/* 09ABAC 8009DBAC 90010074 */  stw       r0, 0x74(r1)
/* 09ABB0 8009DBB0 4802FEB1 */  bl        vprintf
/* 09ABB4 8009DBB4 8001007C */  lwz       r0, 0x7c(r1)
/* 09ABB8 8009DBB8 38210078 */  addi      r1, r1, 0x78
/* 09ABBC 8009DBBC 7C0803A6 */  mtlr      r0
/* 09ABC0 8009DBC0 4E800020 */  blr

# 0x800F2338 - 0x800F2510
.section .data, "wa"

.balign 8

glabel D_800F2338
	.string "------------------------- Context 0x%08x -------------------------\n"

glabel D_800F237C
	.string "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"

glabel D_800F23AC
	.string "LR   = 0x%08x                   CR   = 0x%08x\n"

glabel gap_05_800F23DB_data
.hidden gap_05_800F23DB_data
	.byte 0x00

glabel D_800F23DC
	.string "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"

glabel gap_05_800F240B_data
.hidden gap_05_800F240B_data
	.byte 0x00

glabel D_800F240C
	.string "\nGQRs----------\n"

glabel gap_05_800F241D_data
.hidden gap_05_800F241D_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2420
	.ascii "gqr%d = 0x%08x \t"

glabel D_800F2430
	.string " gqr%d = 0x%08x\n"

glabel gap_05_800F2441_data
.hidden gap_05_800F2441_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2444
	.string "\n\nFPRs----------\n"

glabel gap_05_800F2456_data
.hidden gap_05_800F2456_data
	.2byte 0x0000

glabel D_800F2458
	.ascii "fr%d \t= "

glabel D_800F2460
	.ascii "%d \t"

glabel D_800F2464
	.ascii " fr%d \t="

glabel D_800F246C
	.string " %d\n"

glabel gap_05_800F2471_data
.hidden gap_05_800F2471_data
	.byte 0x00, 0x00, 0x00

glabel D_800F2474
	.string "\n\nPSFs----------\n"

glabel gap_05_800F2486_data
.hidden gap_05_800F2486_data
	.2byte 0x0000

glabel D_800F2488
	.ascii "ps%d \t= "

glabel D_800F2490
	.ascii "0x%x \t p"

glabel D_800F2498
	.string "s%d \t= 0x%x\n"

glabel gap_05_800F24A5_data
.hidden gap_05_800F24A5_data
	.byte 0x00, 0x00, 0x00

glabel D_800F24A8
	.string "\nAddress:      Back Chain    LR Save\n"

glabel gap_05_800F24CE_data
.hidden gap_05_800F24CE_data
	.2byte 0x0000

glabel D_800F24D0
	.string "0x%08x:   0x%08x    0x%08x\n"

"@74":
	.string "FPU-unavailable handler installed\n"

glabel gap_05_800F250F_data
.hidden gap_05_800F250F_data
	.byte 0x00
