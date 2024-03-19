# GXFrameBuf.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AA27C - 0x800AAF98

glabel GXAdjustForOverscan
/* 0A727C 800AA27C 7C032040 */  cmplw     r3, r4
/* 0A7280 800AA280 54A7043E */  clrlwi    r7, r5, 16
/* 0A7284 800AA284 54C0043E */  clrlwi    r0, r6, 16
/* 0A7288 800AA288 54A50C3C */  clrlslwi  r5, r5, 17, 1
/* 0A728C 800AA28C 54C60C3C */  clrlslwi  r6, r6, 17, 1
/* 0A7290 800AA290 4182007C */  beq       lbl_800AA30C
/* 0A7294 800AA294 81230000 */  lwz       r9, 0x0(r3)
/* 0A7298 800AA298 81030004 */  lwz       r8, 0x4(r3)
/* 0A729C 800AA29C 91240000 */  stw       r9, 0x0(r4)
/* 0A72A0 800AA2A0 91040004 */  stw       r8, 0x4(r4)
/* 0A72A4 800AA2A4 81230008 */  lwz       r9, 0x8(r3)
/* 0A72A8 800AA2A8 8103000C */  lwz       r8, 0xc(r3)
/* 0A72AC 800AA2AC 91240008 */  stw       r9, 0x8(r4)
/* 0A72B0 800AA2B0 9104000C */  stw       r8, 0xc(r4)
/* 0A72B4 800AA2B4 81230010 */  lwz       r9, 0x10(r3)
/* 0A72B8 800AA2B8 81030014 */  lwz       r8, 0x14(r3)
/* 0A72BC 800AA2BC 91240010 */  stw       r9, 0x10(r4)
/* 0A72C0 800AA2C0 91040014 */  stw       r8, 0x14(r4)
/* 0A72C4 800AA2C4 81230018 */  lwz       r9, 0x18(r3)
/* 0A72C8 800AA2C8 8103001C */  lwz       r8, 0x1c(r3)
/* 0A72CC 800AA2CC 91240018 */  stw       r9, 0x18(r4)
/* 0A72D0 800AA2D0 9104001C */  stw       r8, 0x1c(r4)
/* 0A72D4 800AA2D4 81230020 */  lwz       r9, 0x20(r3)
/* 0A72D8 800AA2D8 81030024 */  lwz       r8, 0x24(r3)
/* 0A72DC 800AA2DC 91240020 */  stw       r9, 0x20(r4)
/* 0A72E0 800AA2E0 91040024 */  stw       r8, 0x24(r4)
/* 0A72E4 800AA2E4 81230028 */  lwz       r9, 0x28(r3)
/* 0A72E8 800AA2E8 8103002C */  lwz       r8, 0x2c(r3)
/* 0A72EC 800AA2EC 91240028 */  stw       r9, 0x28(r4)
/* 0A72F0 800AA2F0 9104002C */  stw       r8, 0x2c(r4)
/* 0A72F4 800AA2F4 81230030 */  lwz       r9, 0x30(r3)
/* 0A72F8 800AA2F8 81030034 */  lwz       r8, 0x34(r3)
/* 0A72FC 800AA2FC 91240030 */  stw       r9, 0x30(r4)
/* 0A7300 800AA300 91040034 */  stw       r8, 0x34(r4)
/* 0A7304 800AA304 81030038 */  lwz       r8, 0x38(r3)
/* 0A7308 800AA308 91040038 */  stw       r8, 0x38(r4)
lbl_800AA30C:
/* 0A730C 800AA30C A1030004 */  lhz       r8, 0x4(r3)
/* 0A7310 800AA310 7D054050 */  subf      r8, r5, r8
/* 0A7314 800AA314 B1040004 */  sth       r8, 0x4(r4)
/* 0A7318 800AA318 A1430006 */  lhz       r10, 0x6(r3)
/* 0A731C 800AA31C A1030008 */  lhz       r8, 0x8(r3)
/* 0A7320 800AA320 7D2651D6 */  mullw     r9, r6, r10
/* 0A7324 800AA324 7D094396 */  divwu     r8, r9, r8
/* 0A7328 800AA328 7D085050 */  subf      r8, r8, r10
/* 0A732C 800AA32C B1040006 */  sth       r8, 0x6(r4)
/* 0A7330 800AA330 81030014 */  lwz       r8, 0x14(r3)
/* 0A7334 800AA334 2C080000 */  cmpwi     r8, 0x0
/* 0A7338 800AA338 40820024 */  bne       lbl_800AA35C
/* 0A733C 800AA33C 81030000 */  lwz       r8, 0x0(r3)
/* 0A7340 800AA340 550807BC */  rlwinm    r8, r8, 0, 30, 30
/* 0A7344 800AA344 2C080002 */  cmpwi     r8, 0x2
/* 0A7348 800AA348 41820014 */  beq       lbl_800AA35C
/* 0A734C 800AA34C A1030008 */  lhz       r8, 0x8(r3)
/* 0A7350 800AA350 7D004050 */  subf      r8, r0, r8
/* 0A7354 800AA354 B1040008 */  sth       r8, 0x8(r4)
/* 0A7358 800AA358 48000010 */  b         lbl_800AA368
lbl_800AA35C:
/* 0A735C 800AA35C A1030008 */  lhz       r8, 0x8(r3)
/* 0A7360 800AA360 7D064050 */  subf      r8, r6, r8
/* 0A7364 800AA364 B1040008 */  sth       r8, 0x8(r4)
lbl_800AA368:
/* 0A7368 800AA368 A103000E */  lhz       r8, 0xe(r3)
/* 0A736C 800AA36C 7CA54050 */  subf      r5, r5, r8
/* 0A7370 800AA370 B0A4000E */  sth       r5, 0xe(r4)
/* 0A7374 800AA374 A0A30010 */  lhz       r5, 0x10(r3)
/* 0A7378 800AA378 7CA62850 */  subf      r5, r6, r5
/* 0A737C 800AA37C B0A40010 */  sth       r5, 0x10(r4)
/* 0A7380 800AA380 A0A3000A */  lhz       r5, 0xa(r3)
/* 0A7384 800AA384 7CA53A14 */  add       r5, r5, r7
/* 0A7388 800AA388 B0A4000A */  sth       r5, 0xa(r4)
/* 0A738C 800AA38C A063000C */  lhz       r3, 0xc(r3)
/* 0A7390 800AA390 7C030214 */  add       r0, r3, r0
/* 0A7394 800AA394 B004000C */  sth       r0, 0xc(r4)
/* 0A7398 800AA398 4E800020 */  blr

glabel GXSetDispCopySrc
/* 0A739C 800AA39C 81228400 */  lwz       r9, gx@sda21(r0)
/* 0A73A0 800AA3A0 39400000 */  li        r10, 0x0
/* 0A73A4 800AA3A4 54A7043E */  clrlwi    r7, r5, 16
/* 0A73A8 800AA3A8 914901E0 */  stw       r10, 0x1e0(r9)
/* 0A73AC 800AA3AC 54C5043E */  clrlwi    r5, r6, 16
/* 0A73B0 800AA3B0 3805FFFF */  subi      r0, r5, 0x1
/* 0A73B4 800AA3B4 810901E0 */  lwz       r8, 0x1e0(r9)
/* 0A73B8 800AA3B8 5463043E */  clrlwi    r3, r3, 16
/* 0A73BC 800AA3BC 548451AA */  clrlslwi  r4, r4, 16, 10
/* 0A73C0 800AA3C0 5505002A */  clrrwi    r5, r8, 10
/* 0A73C4 800AA3C4 7CA31B78 */  or        r3, r5, r3
/* 0A73C8 800AA3C8 906901E0 */  stw       r3, 0x1e0(r9)
/* 0A73CC 800AA3CC 3867FFFF */  subi      r3, r7, 0x1
/* 0A73D0 800AA3D0 5400502A */  slwi      r0, r0, 10
/* 0A73D4 800AA3D4 80A901E0 */  lwz       r5, 0x1e0(r9)
/* 0A73D8 800AA3D8 54A50596 */  rlwinm    r5, r5, 0, 22, 11
/* 0A73DC 800AA3DC 7CA42378 */  or        r4, r5, r4
/* 0A73E0 800AA3E0 908901E0 */  stw       r4, 0x1e0(r9)
/* 0A73E4 800AA3E4 808901E0 */  lwz       r4, 0x1e0(r9)
/* 0A73E8 800AA3E8 5484023E */  clrlwi    r4, r4, 8
/* 0A73EC 800AA3EC 64844900 */  oris      r4, r4, 0x4900
/* 0A73F0 800AA3F0 908901E0 */  stw       r4, 0x1e0(r9)
/* 0A73F4 800AA3F4 914901E4 */  stw       r10, 0x1e4(r9)
/* 0A73F8 800AA3F8 808901E4 */  lwz       r4, 0x1e4(r9)
/* 0A73FC 800AA3FC 5484002A */  clrrwi    r4, r4, 10
/* 0A7400 800AA400 7C831B78 */  or        r3, r4, r3
/* 0A7404 800AA404 906901E4 */  stw       r3, 0x1e4(r9)
/* 0A7408 800AA408 806901E4 */  lwz       r3, 0x1e4(r9)
/* 0A740C 800AA40C 54630596 */  rlwinm    r3, r3, 0, 22, 11
/* 0A7410 800AA410 7C600378 */  or        r0, r3, r0
/* 0A7414 800AA414 900901E4 */  stw       r0, 0x1e4(r9)
/* 0A7418 800AA418 800901E4 */  lwz       r0, 0x1e4(r9)
/* 0A741C 800AA41C 5400023E */  clrlwi    r0, r0, 8
/* 0A7420 800AA420 64004A00 */  oris      r0, r0, 0x4a00
/* 0A7424 800AA424 900901E4 */  stw       r0, 0x1e4(r9)
/* 0A7428 800AA428 4E800020 */  blr

glabel GXSetTexCopySrc
/* 0A742C 800AA42C 81228400 */  lwz       r9, gx@sda21(r0)
/* 0A7430 800AA430 39400000 */  li        r10, 0x0
/* 0A7434 800AA434 54A7043E */  clrlwi    r7, r5, 16
/* 0A7438 800AA438 914901F0 */  stw       r10, 0x1f0(r9)
/* 0A743C 800AA43C 54C5043E */  clrlwi    r5, r6, 16
/* 0A7440 800AA440 3805FFFF */  subi      r0, r5, 0x1
/* 0A7444 800AA444 810901F0 */  lwz       r8, 0x1f0(r9)
/* 0A7448 800AA448 5463043E */  clrlwi    r3, r3, 16
/* 0A744C 800AA44C 548451AA */  clrlslwi  r4, r4, 16, 10
/* 0A7450 800AA450 5505002A */  clrrwi    r5, r8, 10
/* 0A7454 800AA454 7CA31B78 */  or        r3, r5, r3
/* 0A7458 800AA458 906901F0 */  stw       r3, 0x1f0(r9)
/* 0A745C 800AA45C 3867FFFF */  subi      r3, r7, 0x1
/* 0A7460 800AA460 5400502A */  slwi      r0, r0, 10
/* 0A7464 800AA464 80A901F0 */  lwz       r5, 0x1f0(r9)
/* 0A7468 800AA468 54A50596 */  rlwinm    r5, r5, 0, 22, 11
/* 0A746C 800AA46C 7CA42378 */  or        r4, r5, r4
/* 0A7470 800AA470 908901F0 */  stw       r4, 0x1f0(r9)
/* 0A7474 800AA474 808901F0 */  lwz       r4, 0x1f0(r9)
/* 0A7478 800AA478 5484023E */  clrlwi    r4, r4, 8
/* 0A747C 800AA47C 64844900 */  oris      r4, r4, 0x4900
/* 0A7480 800AA480 908901F0 */  stw       r4, 0x1f0(r9)
/* 0A7484 800AA484 914901F4 */  stw       r10, 0x1f4(r9)
/* 0A7488 800AA488 808901F4 */  lwz       r4, 0x1f4(r9)
/* 0A748C 800AA48C 5484002A */  clrrwi    r4, r4, 10
/* 0A7490 800AA490 7C831B78 */  or        r3, r4, r3
/* 0A7494 800AA494 906901F4 */  stw       r3, 0x1f4(r9)
/* 0A7498 800AA498 806901F4 */  lwz       r3, 0x1f4(r9)
/* 0A749C 800AA49C 54630596 */  rlwinm    r3, r3, 0, 22, 11
/* 0A74A0 800AA4A0 7C600378 */  or        r0, r3, r0
/* 0A74A4 800AA4A4 900901F4 */  stw       r0, 0x1f4(r9)
/* 0A74A8 800AA4A8 800901F4 */  lwz       r0, 0x1f4(r9)
/* 0A74AC 800AA4AC 5400023E */  clrlwi    r0, r0, 8
/* 0A74B0 800AA4B0 64004A00 */  oris      r0, r0, 0x4a00
/* 0A74B4 800AA4B4 900901F4 */  stw       r0, 0x1f4(r9)
/* 0A74B8 800AA4B8 4E800020 */  blr

glabel GXSetDispCopyDst
/* 0A74BC 800AA4BC 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A74C0 800AA4C0 38000000 */  li        r0, 0x0
/* 0A74C4 800AA4C4 900401E8 */  stw       r0, 0x1e8(r4)
/* 0A74C8 800AA4C8 38A401E8 */  addi      r5, r4, 0x1e8
/* 0A74CC 800AA4CC 54600C3C */  clrlslwi  r0, r3, 17, 1
/* 0A74D0 800AA4D0 808401E8 */  lwz       r4, 0x1e8(r4)
/* 0A74D4 800AA4D4 7C002E70 */  srawi     r0, r0, 5
/* 0A74D8 800AA4D8 5483002A */  clrrwi    r3, r4, 10
/* 0A74DC 800AA4DC 7C600378 */  or        r0, r3, r0
/* 0A74E0 800AA4E0 90050000 */  stw       r0, 0x0(r5)
/* 0A74E4 800AA4E4 80050000 */  lwz       r0, 0x0(r5)
/* 0A74E8 800AA4E8 5400023E */  clrlwi    r0, r0, 8
/* 0A74EC 800AA4EC 64004D00 */  oris      r0, r0, 0x4d00
/* 0A74F0 800AA4F0 90050000 */  stw       r0, 0x0(r5)
/* 0A74F4 800AA4F4 4E800020 */  blr

glabel GXSetTexCopyDst
/* 0A74F8 800AA4F8 7C0802A6 */  mflr      r0
/* 0A74FC 800AA4FC 2C050013 */  cmpwi     r5, 0x13
/* 0A7500 800AA500 90010004 */  stw       r0, 0x4(r1)
/* 0A7504 800AA504 38000000 */  li        r0, 0x0
/* 0A7508 800AA508 39030000 */  addi      r8, r3, 0x0
/* 0A750C 800AA50C 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0A7510 800AA510 93E1002C */  stw       r31, 0x2c(r1)
/* 0A7514 800AA514 54BF073E */  clrlwi    r31, r5, 28
/* 0A7518 800AA518 93C10028 */  stw       r30, 0x28(r1)
/* 0A751C 800AA51C 3BC60000 */  addi      r30, r6, 0x0
/* 0A7520 800AA520 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A7524 800AA524 98070200 */  stb       r0, 0x200(r7)
/* 0A7528 800AA528 38E40000 */  addi      r7, r4, 0x0
/* 0A752C 800AA52C 40820008 */  bne       lbl_800AA534
/* 0A7530 800AA530 3BE0000B */  li        r31, 0xb
lbl_800AA534:
/* 0A7534 800AA534 2C050026 */  cmpwi     r5, 0x26
/* 0A7538 800AA538 4182001C */  beq       lbl_800AA554
/* 0A753C 800AA53C 40800034 */  bge       lbl_800AA570
/* 0A7540 800AA540 2C050004 */  cmpwi     r5, 0x4
/* 0A7544 800AA544 4080002C */  bge       lbl_800AA570
/* 0A7548 800AA548 2C050000 */  cmpwi     r5, 0x0
/* 0A754C 800AA54C 40800008 */  bge       lbl_800AA554
/* 0A7550 800AA550 48000020 */  b         lbl_800AA570
lbl_800AA554:
/* 0A7554 800AA554 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7558 800AA558 840301FC */  lwzu      r0, 0x1fc(r3)
/* 0A755C 800AA55C 5400045C */  rlwinm    r0, r0, 0, 17, 14
/* 0A7560 800AA560 64000001 */  oris      r0, r0, 0x1
/* 0A7564 800AA564 60008000 */  ori       r0, r0, 0x8000
/* 0A7568 800AA568 90030000 */  stw       r0, 0x0(r3)
/* 0A756C 800AA56C 48000018 */  b         lbl_800AA584
lbl_800AA570:
/* 0A7570 800AA570 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7574 800AA574 840301FC */  lwzu      r0, 0x1fc(r3)
/* 0A7578 800AA578 5400045C */  rlwinm    r0, r0, 0, 17, 14
/* 0A757C 800AA57C 64000001 */  oris      r0, r0, 0x1
/* 0A7580 800AA580 90030000 */  stw       r0, 0x0(r3)
lbl_800AA584:
/* 0A7584 800AA584 54A406F6 */  rlwinm    r4, r5, 0, 27, 27
/* 0A7588 800AA588 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A758C 800AA58C 3804FFF0 */  subi      r0, r4, 0x10
/* 0A7590 800AA590 7C000034 */  cntlzw    r0, r0
/* 0A7594 800AA594 5400DE3E */  extrwi    r0, r0, 8, 19
/* 0A7598 800AA598 98030200 */  stb       r0, 0x200(r3)
/* 0A759C 800AA59C 38880000 */  addi      r4, r8, 0x0
/* 0A75A0 800AA5A0 38C10020 */  addi      r6, r1, 0x20
/* 0A75A4 800AA5A4 840301FC */  lwzu      r0, 0x1fc(r3)
/* 0A75A8 800AA5A8 39010018 */  addi      r8, r1, 0x18
/* 0A75AC 800AA5AC 54000776 */  rlwinm    r0, r0, 0, 29, 27
/* 0A75B0 800AA5B0 53E00738 */  rlwimi    r0, r31, 0, 28, 28
/* 0A75B4 800AA5B4 90030000 */  stw       r0, 0x0(r3)
/* 0A75B8 800AA5B8 38650000 */  addi      r3, r5, 0x0
/* 0A75BC 800AA5BC 38A70000 */  addi      r5, r7, 0x0
/* 0A75C0 800AA5C0 57FF077E */  clrlwi    r31, r31, 29
/* 0A75C4 800AA5C4 38E1001C */  addi      r7, r1, 0x1c
/* 0A75C8 800AA5C8 48000CC9 */  bl        fn_800AB290
/* 0A75CC 800AA5CC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A75D0 800AA5D0 38000000 */  li        r0, 0x0
/* 0A75D4 800AA5D4 900301F8 */  stw       r0, 0x1f8(r3)
/* 0A75D8 800AA5D8 38E301F8 */  addi      r7, r3, 0x1f8
/* 0A75DC 800AA5DC 390301FC */  addi      r8, r3, 0x1fc
/* 0A75E0 800AA5E0 80A10020 */  lwz       r5, 0x20(r1)
/* 0A75E4 800AA5E4 57C34BEC */  clrlslwi  r3, r30, 24, 9
/* 0A75E8 800AA5E8 80810018 */  lwz       r4, 0x18(r1)
/* 0A75EC 800AA5EC 57E02036 */  slwi      r0, r31, 4
/* 0A75F0 800AA5F0 80C70000 */  lwz       r6, 0x0(r7)
/* 0A75F4 800AA5F4 7C8521D6 */  mullw     r4, r5, r4
/* 0A75F8 800AA5F8 54C5002A */  clrrwi    r5, r6, 10
/* 0A75FC 800AA5FC 7CA42378 */  or        r4, r5, r4
/* 0A7600 800AA600 90870000 */  stw       r4, 0x0(r7)
/* 0A7604 800AA604 80870000 */  lwz       r4, 0x0(r7)
/* 0A7608 800AA608 5484023E */  clrlwi    r4, r4, 8
/* 0A760C 800AA60C 64844D00 */  oris      r4, r4, 0x4d00
/* 0A7610 800AA610 90870000 */  stw       r4, 0x0(r7)
/* 0A7614 800AA614 80880000 */  lwz       r4, 0x0(r8)
/* 0A7618 800AA618 548405EA */  rlwinm    r4, r4, 0, 23, 21
/* 0A761C 800AA61C 7C831B78 */  or        r3, r4, r3
/* 0A7620 800AA620 90680000 */  stw       r3, 0x0(r8)
/* 0A7624 800AA624 80680000 */  lwz       r3, 0x0(r8)
/* 0A7628 800AA628 54630730 */  rlwinm    r3, r3, 0, 28, 24
/* 0A762C 800AA62C 7C600378 */  or        r0, r3, r0
/* 0A7630 800AA630 90080000 */  stw       r0, 0x0(r8)
/* 0A7634 800AA634 80010034 */  lwz       r0, 0x34(r1)
/* 0A7638 800AA638 83E1002C */  lwz       r31, 0x2c(r1)
/* 0A763C 800AA63C 83C10028 */  lwz       r30, 0x28(r1)
/* 0A7640 800AA640 38210030 */  addi      r1, r1, 0x30
/* 0A7644 800AA644 7C0803A6 */  mtlr      r0
/* 0A7648 800AA648 4E800020 */  blr

glabel GXSetDispCopyFrame2Field
/* 0A764C 800AA64C 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A7650 800AA650 54606026 */  slwi      r0, r3, 12
/* 0A7654 800AA654 806401EC */  lwz       r3, 0x1ec(r4)
/* 0A7658 800AA658 54630522 */  rlwinm    r3, r3, 0, 20, 17
/* 0A765C 800AA65C 7C600378 */  or        r0, r3, r0
/* 0A7660 800AA660 900401EC */  stw       r0, 0x1ec(r4)
/* 0A7664 800AA664 840401FC */  lwzu      r0, 0x1fc(r4)
/* 0A7668 800AA668 54000522 */  rlwinm    r0, r0, 0, 20, 17
/* 0A766C 800AA66C 90040000 */  stw       r0, 0x0(r4)
/* 0A7670 800AA670 4E800020 */  blr

glabel GXSetCopyClamp
/* 0A7674 800AA674 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A7678 800AA678 546407FE */  clrlwi    r4, r3, 31
/* 0A767C 800AA67C 3804FFFF */  subi      r0, r4, 0x1
/* 0A7680 800AA680 808601EC */  lwz       r4, 0x1ec(r6)
/* 0A7684 800AA684 7C000034 */  cntlzw    r0, r0
/* 0A7688 800AA688 546307BC */  rlwinm    r3, r3, 0, 30, 30
/* 0A768C 800AA68C 5485003C */  clrrwi    r5, r4, 1
/* 0A7690 800AA690 5404DE3E */  extrwi    r4, r0, 8, 19
/* 0A7694 800AA694 7CA02378 */  or        r0, r5, r4
/* 0A7698 800AA698 900601EC */  stw       r0, 0x1ec(r6)
/* 0A769C 800AA69C 3803FFFE */  subi      r0, r3, 0x2
/* 0A76A0 800AA6A0 7C000034 */  cntlzw    r0, r0
/* 0A76A4 800AA6A4 806601EC */  lwz       r3, 0x1ec(r6)
/* 0A76A8 800AA6A8 5405E5FC */  rlwinm    r5, r0, 28, 23, 30
/* 0A76AC 800AA6AC 546307FA */  rlwinm    r3, r3, 0, 31, 29
/* 0A76B0 800AA6B0 7C602B78 */  or        r0, r3, r5
/* 0A76B4 800AA6B4 900601EC */  stw       r0, 0x1ec(r6)
/* 0A76B8 800AA6B8 800601FC */  lwz       r0, 0x1fc(r6)
/* 0A76BC 800AA6BC 5400003C */  clrrwi    r0, r0, 1
/* 0A76C0 800AA6C0 7C002378 */  or        r0, r0, r4
/* 0A76C4 800AA6C4 900601FC */  stw       r0, 0x1fc(r6)
/* 0A76C8 800AA6C8 800601FC */  lwz       r0, 0x1fc(r6)
/* 0A76CC 800AA6CC 540007FA */  rlwinm    r0, r0, 0, 31, 29
/* 0A76D0 800AA6D0 7C002B78 */  or        r0, r0, r5
/* 0A76D4 800AA6D4 900601FC */  stw       r0, 0x1fc(r6)
/* 0A76D8 800AA6D8 4E800020 */  blr

glabel GXGetYScaleFactor
/* 0A76DC 800AA6DC 7C0802A6 */  mflr      r0
/* 0A76E0 800AA6E0 90010004 */  stw       r0, 0x4(r1)
/* 0A76E4 800AA6E4 3C004330 */  lis       r0, 0x4330
/* 0A76E8 800AA6E8 9421FF88 */  stwu      r1, -0x78(r1)
/* 0A76EC 800AA6EC DBE10070 */  stfd      f31, 0x70(r1)
/* 0A76F0 800AA6F0 DBC10068 */  stfd      f30, 0x68(r1)
/* 0A76F4 800AA6F4 DBA10060 */  stfd      f29, 0x60(r1)
/* 0A76F8 800AA6F8 DB810058 */  stfd      f28, 0x58(r1)
/* 0A76FC 800AA6FC BF21003C */  stmw      r25, 0x3c(r1)
/* 0A7700 800AA700 549C043E */  clrlwi    r28, r4, 16
/* 0A7704 800AA704 547F043E */  clrlwi    r31, r3, 16
/* 0A7708 800AA708 93810034 */  stw       r28, 0x34(r1)
/* 0A770C 800AA70C 7C7B1B78 */  mr        r27, r3
/* 0A7710 800AA710 7C992378 */  mr        r25, r4
/* 0A7714 800AA714 93E1002C */  stw       r31, 0x2c(r1)
/* 0A7718 800AA718 90010030 */  stw       r0, 0x30(r1)
/* 0A771C 800AA71C 90010028 */  stw       r0, 0x28(r1)
/* 0A7720 800AA720 C8628430 */  lfd       f3, D_8018C370@sda21(r0)
/* 0A7724 800AA724 C8410030 */  lfd       f2, 0x30(r1)
/* 0A7728 800AA728 C8210028 */  lfd       f1, 0x28(r1)
/* 0A772C 800AA72C EC421828 */  fsubs     f2, f2, f3
/* 0A7730 800AA730 C0028428 */  lfs       f0, D_8018C368@sda21(r0)
/* 0A7734 800AA734 EC211828 */  fsubs     f1, f1, f3
/* 0A7738 800AA738 EC420824 */  fdivs     f2, f2, f1
/* 0A773C 800AA73C EC201024 */  fdivs     f1, f0, f2
/* 0A7740 800AA740 FF801090 */  fmr       f28, f2
/* 0A7744 800AA744 48021D69 */  bl        __cvt_fp2unsigned
/* 0A7748 800AA748 381FFFFF */  subi      r0, r31, 0x1
/* 0A774C 800AA74C 546405FE */  clrlwi    r4, r3, 23
/* 0A7750 800AA750 541E402E */  slwi      r30, r0, 8
/* 0A7754 800AA754 7C7E2396 */  divwu     r3, r30, r4
/* 0A7758 800AA758 28040080 */  cmplwi    r4, 0x80
/* 0A775C 800AA75C 38630001 */  addi      r3, r3, 0x1
/* 0A7760 800AA760 40810030 */  ble       lbl_800AA790
/* 0A7764 800AA764 28040100 */  cmplwi    r4, 0x100
/* 0A7768 800AA768 40800028 */  bge       lbl_800AA790
/* 0A776C 800AA76C 48000008 */  b         lbl_800AA774
lbl_800AA770:
/* 0A7770 800AA770 5484F87E */  srwi      r4, r4, 1
lbl_800AA774:
/* 0A7774 800AA774 548007FF */  clrlwi.   r0, r4, 31
/* 0A7778 800AA778 4182FFF8 */  beq       lbl_800AA770
/* 0A777C 800AA77C 7C1F2396 */  divwu     r0, r31, r4
/* 0A7780 800AA780 7C0021D6 */  mullw     r0, r0, r4
/* 0A7784 800AA784 7C00F851 */  subf.     r0, r0, r31
/* 0A7788 800AA788 40820008 */  bne       lbl_800AA790
/* 0A778C 800AA78C 38630001 */  addi      r3, r3, 0x1
lbl_800AA790:
/* 0A7790 800AA790 28030400 */  cmplwi    r3, 0x400
/* 0A7794 800AA794 40810008 */  ble       lbl_800AA79C
/* 0A7798 800AA798 38600400 */  li        r3, 0x400
lbl_800AA79C:
/* 0A779C 800AA79C CBE28430 */  lfd       f31, D_8018C370@sda21(r0)
/* 0A77A0 800AA7A0 7C601B78 */  mr        r0, r3
/* 0A77A4 800AA7A4 C3C28428 */  lfs       f30, D_8018C368@sda21(r0)
/* 0A77A8 800AA7A8 573D043E */  clrlwi    r29, r25, 16
/* 0A77AC 800AA7AC 577A043E */  clrlwi    r26, r27, 16
/* 0A77B0 800AA7B0 3F204330 */  lis       r25, 0x4330
/* 0A77B4 800AA7B4 48000088 */  b         lbl_800AA83C
lbl_800AA7B8:
/* 0A77B8 800AA7B8 3B9CFFFF */  subi      r28, r28, 0x1
/* 0A77BC 800AA7BC 93410034 */  stw       r26, 0x34(r1)
/* 0A77C0 800AA7C0 9381002C */  stw       r28, 0x2c(r1)
/* 0A77C4 800AA7C4 93210028 */  stw       r25, 0x28(r1)
/* 0A77C8 800AA7C8 93210030 */  stw       r25, 0x30(r1)
/* 0A77CC 800AA7CC C8210028 */  lfd       f1, 0x28(r1)
/* 0A77D0 800AA7D0 C8010030 */  lfd       f0, 0x30(r1)
/* 0A77D4 800AA7D4 EC21F828 */  fsubs     f1, f1, f31
/* 0A77D8 800AA7D8 EC00F828 */  fsubs     f0, f0, f31
/* 0A77DC 800AA7DC EC010024 */  fdivs     f0, f1, f0
/* 0A77E0 800AA7E0 EC3E0024 */  fdivs     f1, f30, f0
/* 0A77E4 800AA7E4 FF800090 */  fmr       f28, f0
/* 0A77E8 800AA7E8 48021CC5 */  bl        __cvt_fp2unsigned
/* 0A77EC 800AA7EC 546405FE */  clrlwi    r4, r3, 23
/* 0A77F0 800AA7F0 7C7E2396 */  divwu     r3, r30, r4
/* 0A77F4 800AA7F4 28040080 */  cmplwi    r4, 0x80
/* 0A77F8 800AA7F8 38630001 */  addi      r3, r3, 0x1
/* 0A77FC 800AA7FC 40810030 */  ble       lbl_800AA82C
/* 0A7800 800AA800 28040100 */  cmplwi    r4, 0x100
/* 0A7804 800AA804 40800028 */  bge       lbl_800AA82C
/* 0A7808 800AA808 48000008 */  b         lbl_800AA810
lbl_800AA80C:
/* 0A780C 800AA80C 5484F87E */  srwi      r4, r4, 1
lbl_800AA810:
/* 0A7810 800AA810 548007FF */  clrlwi.   r0, r4, 31
/* 0A7814 800AA814 4182FFF8 */  beq       lbl_800AA80C
/* 0A7818 800AA818 7C1F2396 */  divwu     r0, r31, r4
/* 0A781C 800AA81C 7C0021D6 */  mullw     r0, r0, r4
/* 0A7820 800AA820 7C00F851 */  subf.     r0, r0, r31
/* 0A7824 800AA824 40820008 */  bne       lbl_800AA82C
/* 0A7828 800AA828 38630001 */  addi      r3, r3, 0x1
lbl_800AA82C:
/* 0A782C 800AA82C 28030400 */  cmplwi    r3, 0x400
/* 0A7830 800AA830 40810008 */  ble       lbl_800AA838
/* 0A7834 800AA834 38600400 */  li        r3, 0x400
lbl_800AA838:
/* 0A7838 800AA838 7C601B78 */  mr        r0, r3
lbl_800AA83C:
/* 0A783C 800AA83C 7C00E840 */  cmplw     r0, r29
/* 0A7840 800AA840 4181FF78 */  bgt       lbl_800AA7B8
/* 0A7844 800AA844 FFA0E090 */  fmr       f29, f28
/* 0A7848 800AA848 CBC28430 */  lfd       f30, D_8018C370@sda21(r0)
/* 0A784C 800AA84C C3E28428 */  lfs       f31, D_8018C368@sda21(r0)
/* 0A7850 800AA850 577B043E */  clrlwi    r27, r27, 16
/* 0A7854 800AA854 3F404330 */  lis       r26, 0x4330
/* 0A7858 800AA858 4800008C */  b         lbl_800AA8E4
lbl_800AA85C:
/* 0A785C 800AA85C 3B9C0001 */  addi      r28, r28, 0x1
/* 0A7860 800AA860 93610034 */  stw       r27, 0x34(r1)
/* 0A7864 800AA864 FFA0E090 */  fmr       f29, f28
/* 0A7868 800AA868 9381002C */  stw       r28, 0x2c(r1)
/* 0A786C 800AA86C 93410028 */  stw       r26, 0x28(r1)
/* 0A7870 800AA870 93410030 */  stw       r26, 0x30(r1)
/* 0A7874 800AA874 C8210028 */  lfd       f1, 0x28(r1)
/* 0A7878 800AA878 C8010030 */  lfd       f0, 0x30(r1)
/* 0A787C 800AA87C EC21F028 */  fsubs     f1, f1, f30
/* 0A7880 800AA880 EC00F028 */  fsubs     f0, f0, f30
/* 0A7884 800AA884 EC010024 */  fdivs     f0, f1, f0
/* 0A7888 800AA888 EC3F0024 */  fdivs     f1, f31, f0
/* 0A788C 800AA88C FF800090 */  fmr       f28, f0
/* 0A7890 800AA890 48021C1D */  bl        __cvt_fp2unsigned
/* 0A7894 800AA894 546405FE */  clrlwi    r4, r3, 23
/* 0A7898 800AA898 7C7E2396 */  divwu     r3, r30, r4
/* 0A789C 800AA89C 28040080 */  cmplwi    r4, 0x80
/* 0A78A0 800AA8A0 38630001 */  addi      r3, r3, 0x1
/* 0A78A4 800AA8A4 40810030 */  ble       lbl_800AA8D4
/* 0A78A8 800AA8A8 28040100 */  cmplwi    r4, 0x100
/* 0A78AC 800AA8AC 40800028 */  bge       lbl_800AA8D4
/* 0A78B0 800AA8B0 48000008 */  b         lbl_800AA8B8
lbl_800AA8B4:
/* 0A78B4 800AA8B4 5484F87E */  srwi      r4, r4, 1
lbl_800AA8B8:
/* 0A78B8 800AA8B8 548007FF */  clrlwi.   r0, r4, 31
/* 0A78BC 800AA8BC 4182FFF8 */  beq       lbl_800AA8B4
/* 0A78C0 800AA8C0 7C1F2396 */  divwu     r0, r31, r4
/* 0A78C4 800AA8C4 7C0021D6 */  mullw     r0, r0, r4
/* 0A78C8 800AA8C8 7C00F851 */  subf.     r0, r0, r31
/* 0A78CC 800AA8CC 40820008 */  bne       lbl_800AA8D4
/* 0A78D0 800AA8D0 38630001 */  addi      r3, r3, 0x1
lbl_800AA8D4:
/* 0A78D4 800AA8D4 28030400 */  cmplwi    r3, 0x400
/* 0A78D8 800AA8D8 40810008 */  ble       lbl_800AA8E0
/* 0A78DC 800AA8DC 38600400 */  li        r3, 0x400
lbl_800AA8E0:
/* 0A78E0 800AA8E0 7C601B78 */  mr        r0, r3
lbl_800AA8E4:
/* 0A78E4 800AA8E4 7C00E840 */  cmplw     r0, r29
/* 0A78E8 800AA8E8 4180FF74 */  blt       lbl_800AA85C
/* 0A78EC 800AA8EC BB21003C */  lmw       r25, 0x3c(r1)
/* 0A78F0 800AA8F0 FC20E890 */  fmr       f1, f29
/* 0A78F4 800AA8F4 8001007C */  lwz       r0, 0x7c(r1)
/* 0A78F8 800AA8F8 CBE10070 */  lfd       f31, 0x70(r1)
/* 0A78FC 800AA8FC CBC10068 */  lfd       f30, 0x68(r1)
/* 0A7900 800AA900 CBA10060 */  lfd       f29, 0x60(r1)
/* 0A7904 800AA904 CB810058 */  lfd       f28, 0x58(r1)
/* 0A7908 800AA908 38210078 */  addi      r1, r1, 0x78
/* 0A790C 800AA90C 7C0803A6 */  mtlr      r0
/* 0A7910 800AA910 4E800020 */  blr

glabel GXSetDispCopyYScale
/* 0A7914 800AA914 7C0802A6 */  mflr      r0
/* 0A7918 800AA918 90010004 */  stw       r0, 0x4(r1)
/* 0A791C 800AA91C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A7920 800AA920 C0028428 */  lfs       f0, D_8018C368@sda21(r0)
/* 0A7924 800AA924 EC200824 */  fdivs     f1, f0, f1
/* 0A7928 800AA928 48021B85 */  bl        __cvt_fp2unsigned
/* 0A792C 800AA92C 546605FE */  clrlwi    r6, r3, 23
/* 0A7930 800AA930 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A7934 800AA934 38000061 */  li        r0, 0x61
/* 0A7938 800AA938 3C60CC01 */  lis       r3, 0xcc01
/* 0A793C 800AA93C 98038000 */  stb       r0, -0x8000(r3)
/* 0A7940 800AA940 64C04E00 */  oris      r0, r6, 0x4e00
/* 0A7944 800AA944 38A00000 */  li        r5, 0x0
/* 0A7948 800AA948 90038000 */  stw       r0, -0x8000(r3)
/* 0A794C 800AA94C 20660100 */  subfic    r3, r6, 0x100
/* 0A7950 800AA950 3003FFFF */  subic     r0, r3, 0x1
/* 0A7954 800AA954 B0A40002 */  sth       r5, 0x2(r4)
/* 0A7958 800AA958 7C001910 */  subfe     r0, r0, r3
/* 0A795C 800AA95C 540053AA */  clrlslwi  r0, r0, 24, 10
/* 0A7960 800AA960 806401EC */  lwz       r3, 0x1ec(r4)
/* 0A7964 800AA964 28060080 */  cmplwi    r6, 0x80
/* 0A7968 800AA968 38A60000 */  addi      r5, r6, 0x0
/* 0A796C 800AA96C 546305A8 */  rlwinm    r3, r3, 0, 22, 20
/* 0A7970 800AA970 7C600378 */  or        r0, r3, r0
/* 0A7974 800AA974 900401EC */  stw       r0, 0x1ec(r4)
/* 0A7978 800AA978 800401E4 */  lwz       r0, 0x1e4(r4)
/* 0A797C 800AA97C 5404B5BE */  extrwi    r4, r0, 10, 12
/* 0A7980 800AA980 5400F3AE */  rlwinm    r0, r0, 30, 14, 23
/* 0A7984 800AA984 7C603396 */  divwu     r3, r0, r6
/* 0A7988 800AA988 38840001 */  addi      r4, r4, 0x1
/* 0A798C 800AA98C 38630001 */  addi      r3, r3, 0x1
/* 0A7990 800AA990 40810030 */  ble       lbl_800AA9C0
/* 0A7994 800AA994 28060100 */  cmplwi    r6, 0x100
/* 0A7998 800AA998 40800028 */  bge       lbl_800AA9C0
/* 0A799C 800AA99C 48000008 */  b         lbl_800AA9A4
lbl_800AA9A0:
/* 0A79A0 800AA9A0 54A5F87E */  srwi      r5, r5, 1
lbl_800AA9A4:
/* 0A79A4 800AA9A4 54A007FF */  clrlwi.   r0, r5, 31
/* 0A79A8 800AA9A8 4182FFF8 */  beq       lbl_800AA9A0
/* 0A79AC 800AA9AC 7C042B96 */  divwu     r0, r4, r5
/* 0A79B0 800AA9B0 7C0029D6 */  mullw     r0, r0, r5
/* 0A79B4 800AA9B4 7C002051 */  subf.     r0, r0, r4
/* 0A79B8 800AA9B8 40820008 */  bne       lbl_800AA9C0
/* 0A79BC 800AA9BC 38630001 */  addi      r3, r3, 0x1
lbl_800AA9C0:
/* 0A79C0 800AA9C0 28030400 */  cmplwi    r3, 0x400
/* 0A79C4 800AA9C4 40810008 */  ble       lbl_800AA9CC
/* 0A79C8 800AA9C8 38600400 */  li        r3, 0x400
lbl_800AA9CC:
/* 0A79CC 800AA9CC 8001000C */  lwz       r0, 0xc(r1)
/* 0A79D0 800AA9D0 38210008 */  addi      r1, r1, 0x8
/* 0A79D4 800AA9D4 7C0803A6 */  mtlr      r0
/* 0A79D8 800AA9D8 4E800020 */  blr

glabel GXSetCopyClear
/* 0A79DC 800AA9DC 5480023E */  clrlwi    r0, r4, 8
/* 0A79E0 800AA9E0 88830003 */  lbz       r4, 0x3(r3)
/* 0A79E4 800AA9E4 88A30000 */  lbz       r5, 0x0(r3)
/* 0A79E8 800AA9E8 38C00061 */  li        r6, 0x61
/* 0A79EC 800AA9EC 5487402E */  slwi      r7, r4, 8
/* 0A79F0 800AA9F0 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A79F4 800AA9F4 50A7063E */  rlwimi    r7, r5, 0, 24, 31
/* 0A79F8 800AA9F8 3CA0CC01 */  lis       r5, 0xcc01
/* 0A79FC 800AA9FC 54E7023E */  clrlwi    r7, r7, 8
/* 0A7A00 800AAA00 98C58000 */  stb       r6, -0x8000(r5)
/* 0A7A04 800AAA04 64E74F00 */  oris      r7, r7, 0x4f00
/* 0A7A08 800AAA08 90E58000 */  stw       r7, -0x8000(r5)
/* 0A7A0C 800AAA0C 64075100 */  oris      r7, r0, 0x5100
/* 0A7A10 800AAA10 38000000 */  li        r0, 0x0
/* 0A7A14 800AAA14 89030002 */  lbz       r8, 0x2(r3)
/* 0A7A18 800AAA18 88630001 */  lbz       r3, 0x1(r3)
/* 0A7A1C 800AAA1C 5463402E */  slwi      r3, r3, 8
/* 0A7A20 800AAA20 98C58000 */  stb       r6, -0x8000(r5)
/* 0A7A24 800AAA24 5103063E */  rlwimi    r3, r8, 0, 24, 31
/* 0A7A28 800AAA28 5463023E */  clrlwi    r3, r3, 8
/* 0A7A2C 800AAA2C 64635000 */  oris      r3, r3, 0x5000
/* 0A7A30 800AAA30 90658000 */  stw       r3, -0x8000(r5)
/* 0A7A34 800AAA34 98C58000 */  stb       r6, -0x8000(r5)
/* 0A7A38 800AAA38 90E58000 */  stw       r7, -0x8000(r5)
/* 0A7A3C 800AAA3C B0040002 */  sth       r0, 0x2(r4)
/* 0A7A40 800AAA40 4E800020 */  blr

glabel GXSetCopyFilter
/* 0A7A44 800AAA44 9421FFB0 */  stwu      r1, -0x50(r1)
/* 0A7A48 800AAA48 5460063F */  clrlwi.   r0, r3, 24
/* 0A7A4C 800AAA4C BEE1002C */  stmw      r23, 0x2c(r1)
/* 0A7A50 800AAA50 41820128 */  beq       lbl_800AAB78
/* 0A7A54 800AAA54 88040001 */  lbz       r0, 0x1(r4)
/* 0A7A58 800AAA58 88640007 */  lbz       r3, 0x7(r4)
/* 0A7A5C 800AAA5C 541E2036 */  slwi      r30, r0, 4
/* 0A7A60 800AAA60 89040000 */  lbz       r8, 0x0(r4)
/* 0A7A64 800AAA64 88040013 */  lbz       r0, 0x13(r4)
/* 0A7A68 800AAA68 54792036 */  slwi      r25, r3, 4
/* 0A7A6C 800AAA6C 89440006 */  lbz       r10, 0x6(r4)
/* 0A7A70 800AAA70 511E073E */  rlwimi    r30, r8, 0, 28, 31
/* 0A7A74 800AAA74 89640002 */  lbz       r11, 0x2(r4)
/* 0A7A78 800AAA78 88E4000D */  lbz       r7, 0xd(r4)
/* 0A7A7C 800AAA7C 5159073E */  rlwimi    r25, r10, 0, 28, 31
/* 0A7A80 800AAA80 557B402E */  slwi      r27, r11, 8
/* 0A7A84 800AAA84 89240008 */  lbz       r9, 0x8(r4)
/* 0A7A88 800AAA88 8864000E */  lbz       r3, 0xe(r4)
/* 0A7A8C 800AAA8C 553A402E */  slwi      r26, r9, 8
/* 0A7A90 800AAA90 8B840003 */  lbz       r28, 0x3(r4)
/* 0A7A94 800AAA94 53DB063E */  rlwimi    r27, r30, 0, 24, 31
/* 0A7A98 800AAA98 89240010 */  lbz       r9, 0x10(r4)
/* 0A7A9C 800AAA9C 54F72036 */  slwi      r23, r7, 4
/* 0A7AA0 800AAAA0 8984000C */  lbz       r12, 0xc(r4)
/* 0A7AA4 800AAAA4 88E40015 */  lbz       r7, 0x15(r4)
/* 0A7AA8 800AAAA8 5478402E */  slwi      r24, r3, 8
/* 0A7AAC 800AAAAC 5197073E */  rlwimi    r23, r12, 0, 28, 31
/* 0A7AB0 800AAAB0 8BA40012 */  lbz       r29, 0x12(r4)
/* 0A7AB4 800AAAB4 54002036 */  slwi      r0, r0, 4
/* 0A7AB8 800AAAB8 53A0073E */  rlwimi    r0, r29, 0, 28, 31
/* 0A7ABC 800AAABC 89040014 */  lbz       r8, 0x14(r4)
/* 0A7AC0 800AAAC0 579C6026 */  slwi      r28, r28, 12
/* 0A7AC4 800AAAC4 8BE40009 */  lbz       r31, 0x9(r4)
/* 0A7AC8 800AAAC8 537C053E */  rlwimi    r28, r27, 0, 20, 31
/* 0A7ACC 800AAACC 8BA40004 */  lbz       r29, 0x4(r4)
/* 0A7AD0 800AAAD0 52F8063E */  rlwimi    r24, r23, 0, 24, 31
/* 0A7AD4 800AAAD4 8944000F */  lbz       r10, 0xf(r4)
/* 0A7AD8 800AAAD8 5517402E */  slwi      r23, r8, 8
/* 0A7ADC 800AAADC 8984000A */  lbz       r12, 0xa(r4)
/* 0A7AE0 800AAAE0 533A063E */  rlwimi    r26, r25, 0, 24, 31
/* 0A7AE4 800AAAE4 88640016 */  lbz       r3, 0x16(r4)
/* 0A7AE8 800AAAE8 55596026 */  slwi      r25, r10, 12
/* 0A7AEC 800AAAEC 8BC40005 */  lbz       r30, 0x5(r4)
/* 0A7AF0 800AAAF0 5017063E */  rlwimi    r23, r0, 0, 24, 31
/* 0A7AF4 800AAAF4 88040017 */  lbz       r0, 0x17(r4)
/* 0A7AF8 800AAAF8 57FB6026 */  slwi      r27, r31, 12
/* 0A7AFC 800AAAFC 8964000B */  lbz       r11, 0xb(r4)
/* 0A7B00 800AAB00 89040011 */  lbz       r8, 0x11(r4)
/* 0A7B04 800AAB04 57A4801E */  slwi      r4, r29, 16
/* 0A7B08 800AAB08 54E76026 */  slwi      r7, r7, 12
/* 0A7B0C 800AAB0C 558A801E */  slwi      r10, r12, 16
/* 0A7B10 800AAB10 535B053E */  rlwimi    r27, r26, 0, 20, 31
/* 0A7B14 800AAB14 546C801E */  slwi      r12, r3, 16
/* 0A7B18 800AAB18 52E7053E */  rlwimi    r7, r23, 0, 20, 31
/* 0A7B1C 800AAB1C 5384043E */  rlwimi    r4, r28, 0, 16, 31
/* 0A7B20 800AAB20 57C3A016 */  slwi      r3, r30, 20
/* 0A7B24 800AAB24 5319053E */  rlwimi    r25, r24, 0, 20, 31
/* 0A7B28 800AAB28 5529801E */  slwi      r9, r9, 16
/* 0A7B2C 800AAB2C 536A043E */  rlwimi    r10, r27, 0, 16, 31
/* 0A7B30 800AAB30 5083033E */  rlwimi    r3, r4, 0, 12, 31
/* 0A7B34 800AAB34 50EC043E */  rlwimi    r12, r7, 0, 16, 31
/* 0A7B38 800AAB38 5467023E */  clrlwi    r7, r3, 8
/* 0A7B3C 800AAB3C 5563A016 */  slwi      r3, r11, 20
/* 0A7B40 800AAB40 5143033E */  rlwimi    r3, r10, 0, 12, 31
/* 0A7B44 800AAB44 5464023E */  clrlwi    r4, r3, 8
/* 0A7B48 800AAB48 5503A016 */  slwi      r3, r8, 20
/* 0A7B4C 800AAB4C 5329043E */  rlwimi    r9, r25, 0, 16, 31
/* 0A7B50 800AAB50 5123033E */  rlwimi    r3, r9, 0, 12, 31
/* 0A7B54 800AAB54 5400A016 */  slwi      r0, r0, 20
/* 0A7B58 800AAB58 5180033E */  rlwimi    r0, r12, 0, 12, 31
/* 0A7B5C 800AAB5C 5463023E */  clrlwi    r3, r3, 8
/* 0A7B60 800AAB60 5400023E */  clrlwi    r0, r0, 8
/* 0A7B64 800AAB64 64E80100 */  oris      r8, r7, 0x100
/* 0A7B68 800AAB68 64870200 */  oris      r7, r4, 0x200
/* 0A7B6C 800AAB6C 64690300 */  oris      r9, r3, 0x300
/* 0A7B70 800AAB70 640A0400 */  oris      r10, r0, 0x400
/* 0A7B74 800AAB74 48000024 */  b         lbl_800AAB98
lbl_800AAB78:
/* 0A7B78 800AAB78 3D000166 */  lis       r8, 0x166
/* 0A7B7C 800AAB7C 3CE00266 */  lis       r7, 0x266
/* 0A7B80 800AAB80 3C800366 */  lis       r4, 0x366
/* 0A7B84 800AAB84 3C600466 */  lis       r3, 0x466
/* 0A7B88 800AAB88 39086666 */  addi      r8, r8, 0x6666
/* 0A7B8C 800AAB8C 38E76666 */  addi      r7, r7, 0x6666
/* 0A7B90 800AAB90 39246666 */  addi      r9, r4, 0x6666
/* 0A7B94 800AAB94 39436666 */  addi      r10, r3, 0x6666
lbl_800AAB98:
/* 0A7B98 800AAB98 38800061 */  li        r4, 0x61
/* 0A7B9C 800AAB9C 3C60CC01 */  lis       r3, 0xcc01
/* 0A7BA0 800AABA0 98838000 */  stb       r4, -0x8000(r3)
/* 0A7BA4 800AABA4 54A0063F */  clrlwi.   r0, r5, 24
/* 0A7BA8 800AABA8 91038000 */  stw       r8, -0x8000(r3)
/* 0A7BAC 800AABAC 98838000 */  stb       r4, -0x8000(r3)
/* 0A7BB0 800AABB0 90E38000 */  stw       r7, -0x8000(r3)
/* 0A7BB4 800AABB4 98838000 */  stb       r4, -0x8000(r3)
/* 0A7BB8 800AABB8 91238000 */  stw       r9, -0x8000(r3)
/* 0A7BBC 800AABBC 98838000 */  stb       r4, -0x8000(r3)
/* 0A7BC0 800AABC0 91438000 */  stw       r10, -0x8000(r3)
/* 0A7BC4 800AABC4 41820068 */  beq       lbl_800AAC2C
/* 0A7BC8 800AABC8 88060000 */  lbz       r0, 0x0(r6)
/* 0A7BCC 800AABCC 88660001 */  lbz       r3, 0x1(r6)
/* 0A7BD0 800AABD0 64055300 */  oris      r5, r0, 0x5300
/* 0A7BD4 800AABD4 88060004 */  lbz       r0, 0x4(r6)
/* 0A7BD8 800AABD8 88860002 */  lbz       r4, 0x2(r6)
/* 0A7BDC 800AABDC 54A706A6 */  rlwinm    r7, r5, 0, 26, 19
/* 0A7BE0 800AABE0 54653032 */  slwi      r5, r3, 6
/* 0A7BE4 800AABE4 88660005 */  lbz       r3, 0x5(r6)
/* 0A7BE8 800AABE8 7CE72B78 */  or        r7, r7, r5
/* 0A7BEC 800AABEC 64085400 */  oris      r8, r0, 0x5400
/* 0A7BF0 800AABF0 88A60003 */  lbz       r5, 0x3(r6)
/* 0A7BF4 800AABF4 88060006 */  lbz       r0, 0x6(r6)
/* 0A7BF8 800AABF8 54E6051A */  rlwinm    r6, r7, 0, 20, 13
/* 0A7BFC 800AABFC 54846026 */  slwi      r4, r4, 12
/* 0A7C00 800AAC00 7CC62378 */  or        r6, r6, r4
/* 0A7C04 800AAC04 550406A6 */  rlwinm    r4, r8, 0, 26, 19
/* 0A7C08 800AAC08 54633032 */  slwi      r3, r3, 6
/* 0A7C0C 800AAC0C 7C831B78 */  or        r3, r4, r3
/* 0A7C10 800AAC10 54C6038E */  rlwinm    r6, r6, 0, 14, 7
/* 0A7C14 800AAC14 54A4901A */  slwi      r4, r5, 18
/* 0A7C18 800AAC18 5463051A */  rlwinm    r3, r3, 0, 20, 13
/* 0A7C1C 800AAC1C 54006026 */  slwi      r0, r0, 12
/* 0A7C20 800AAC20 7CC62378 */  or        r6, r6, r4
/* 0A7C24 800AAC24 7C670378 */  or        r7, r3, r0
/* 0A7C28 800AAC28 48000014 */  b         lbl_800AAC3C
lbl_800AAC2C:
/* 0A7C2C 800AAC2C 3C805359 */  lis       r4, 0x5359
/* 0A7C30 800AAC30 3C605400 */  lis       r3, 0x5400
/* 0A7C34 800AAC34 38C45000 */  addi      r6, r4, 0x5000
/* 0A7C38 800AAC38 38E30015 */  addi      r7, r3, 0x15
lbl_800AAC3C:
/* 0A7C3C 800AAC3C 38A00061 */  li        r5, 0x61
/* 0A7C40 800AAC40 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7C44 800AAC44 3C80CC01 */  lis       r4, 0xcc01
/* 0A7C48 800AAC48 98A48000 */  stb       r5, -0x8000(r4)
/* 0A7C4C 800AAC4C 38000000 */  li        r0, 0x0
/* 0A7C50 800AAC50 90C48000 */  stw       r6, -0x8000(r4)
/* 0A7C54 800AAC54 98A48000 */  stb       r5, -0x8000(r4)
/* 0A7C58 800AAC58 90E48000 */  stw       r7, -0x8000(r4)
/* 0A7C5C 800AAC5C B0030002 */  sth       r0, 0x2(r3)
/* 0A7C60 800AAC60 BAE1002C */  lmw       r23, 0x2c(r1)
/* 0A7C64 800AAC64 38210050 */  addi      r1, r1, 0x50
/* 0A7C68 800AAC68 4E800020 */  blr

glabel GXSetDispCopyGamma
/* 0A7C6C 800AAC6C 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A7C70 800AAC70 54603830 */  slwi      r0, r3, 7
/* 0A7C74 800AAC74 846401EC */  lwzu      r3, 0x1ec(r4)
/* 0A7C78 800AAC78 5463066C */  rlwinm    r3, r3, 0, 25, 22
/* 0A7C7C 800AAC7C 7C600378 */  or        r0, r3, r0
/* 0A7C80 800AAC80 90040000 */  stw       r0, 0x0(r4)
/* 0A7C84 800AAC84 4E800020 */  blr

glabel GXCopyDisp
/* 0A7C88 800AAC88 5480063F */  clrlwi.   r0, r4, 24
/* 0A7C8C 800AAC8C 4182003C */  beq       lbl_800AACC8
/* 0A7C90 800AAC90 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A7C94 800AAC94 38000061 */  li        r0, 0x61
/* 0A7C98 800AAC98 3CA0CC01 */  lis       r5, 0xcc01
/* 0A7C9C 800AAC9C 80C701D8 */  lwz       r6, 0x1d8(r7)
/* 0A7CA0 800AACA0 54C6003C */  clrrwi    r6, r6, 1
/* 0A7CA4 800AACA4 98058000 */  stb       r0, -0x8000(r5)
/* 0A7CA8 800AACA8 60C60001 */  ori       r6, r6, 0x1
/* 0A7CAC 800AACAC 54C607F6 */  rlwinm    r6, r6, 0, 31, 27
/* 0A7CB0 800AACB0 60C6000E */  ori       r6, r6, 0xe
/* 0A7CB4 800AACB4 90C58000 */  stw       r6, -0x8000(r5)
/* 0A7CB8 800AACB8 80C701D0 */  lwz       r6, 0x1d0(r7)
/* 0A7CBC 800AACBC 98058000 */  stb       r0, -0x8000(r5)
/* 0A7CC0 800AACC0 54C0003A */  clrrwi    r0, r6, 2
/* 0A7CC4 800AACC4 90058000 */  stw       r0, -0x8000(r5)
lbl_800AACC8:
/* 0A7CC8 800AACC8 5480063F */  clrlwi.   r0, r4, 24
/* 0A7CCC 800AACCC 38000000 */  li        r0, 0x0
/* 0A7CD0 800AACD0 40820018 */  bne       lbl_800AACE8
/* 0A7CD4 800AACD4 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A7CD8 800AACD8 80A501DC */  lwz       r5, 0x1dc(r5)
/* 0A7CDC 800AACDC 54A5077E */  clrlwi    r5, r5, 29
/* 0A7CE0 800AACE0 28050003 */  cmplwi    r5, 0x3
/* 0A7CE4 800AACE4 40820030 */  bne       lbl_800AAD14
lbl_800AACE8:
/* 0A7CE8 800AACE8 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A7CEC 800AACEC 80E501DC */  lwz       r7, 0x1dc(r5)
/* 0A7CF0 800AACF0 54E5D7FE */  extrwi    r5, r7, 1, 25
/* 0A7CF4 800AACF4 28050001 */  cmplwi    r5, 0x1
/* 0A7CF8 800AACF8 4082001C */  bne       lbl_800AAD14
/* 0A7CFC 800AACFC 38000061 */  li        r0, 0x61
/* 0A7D00 800AAD00 3CC0CC01 */  lis       r6, 0xcc01
/* 0A7D04 800AAD04 98068000 */  stb       r0, -0x8000(r6)
/* 0A7D08 800AAD08 54E506B0 */  rlwinm    r5, r7, 0, 26, 24
/* 0A7D0C 800AAD0C 38000001 */  li        r0, 0x1
/* 0A7D10 800AAD10 90A68000 */  stw       r5, -0x8000(r6)
lbl_800AAD14:
/* 0A7D14 800AAD14 39200061 */  li        r9, 0x61
/* 0A7D18 800AAD18 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A7D1C 800AAD1C 3D00CC01 */  lis       r8, 0xcc01
/* 0A7D20 800AAD20 99288000 */  stb       r9, -0x8000(r8)
/* 0A7D24 800AAD24 5463DA3E */  extrwi    r3, r3, 24, 3
/* 0A7D28 800AAD28 646A4B00 */  oris      r10, r3, 0x4b00
/* 0A7D2C 800AAD2C 80C701E0 */  lwz       r6, 0x1e0(r7)
/* 0A7D30 800AAD30 5485063F */  clrlwi.   r5, r4, 24
/* 0A7D34 800AAD34 54835B68 */  clrlslwi  r3, r4, 24, 11
/* 0A7D38 800AAD38 90C88000 */  stw       r6, -0x8000(r8)
/* 0A7D3C 800AAD3C 99288000 */  stb       r9, -0x8000(r8)
/* 0A7D40 800AAD40 808701E4 */  lwz       r4, 0x1e4(r7)
/* 0A7D44 800AAD44 90888000 */  stw       r4, -0x8000(r8)
/* 0A7D48 800AAD48 99288000 */  stb       r9, -0x8000(r8)
/* 0A7D4C 800AAD4C 808701E8 */  lwz       r4, 0x1e8(r7)
/* 0A7D50 800AAD50 90888000 */  stw       r4, -0x8000(r8)
/* 0A7D54 800AAD54 99288000 */  stb       r9, -0x8000(r8)
/* 0A7D58 800AAD58 91488000 */  stw       r10, -0x8000(r8)
/* 0A7D5C 800AAD5C 808701EC */  lwz       r4, 0x1ec(r7)
/* 0A7D60 800AAD60 54840566 */  rlwinm    r4, r4, 0, 21, 19
/* 0A7D64 800AAD64 7C831B78 */  or        r3, r4, r3
/* 0A7D68 800AAD68 906701EC */  stw       r3, 0x1ec(r7)
/* 0A7D6C 800AAD6C 806701EC */  lwz       r3, 0x1ec(r7)
/* 0A7D70 800AAD70 546304A0 */  rlwinm    r3, r3, 0, 18, 16
/* 0A7D74 800AAD74 60634000 */  ori       r3, r3, 0x4000
/* 0A7D78 800AAD78 906701EC */  stw       r3, 0x1ec(r7)
/* 0A7D7C 800AAD7C 806701EC */  lwz       r3, 0x1ec(r7)
/* 0A7D80 800AAD80 5463023E */  clrlwi    r3, r3, 8
/* 0A7D84 800AAD84 64635200 */  oris      r3, r3, 0x5200
/* 0A7D88 800AAD88 906701EC */  stw       r3, 0x1ec(r7)
/* 0A7D8C 800AAD8C 99288000 */  stb       r9, -0x8000(r8)
/* 0A7D90 800AAD90 806701EC */  lwz       r3, 0x1ec(r7)
/* 0A7D94 800AAD94 90688000 */  stw       r3, -0x8000(r8)
/* 0A7D98 800AAD98 4182001C */  beq       lbl_800AADB4
/* 0A7D9C 800AAD9C 99288000 */  stb       r9, -0x8000(r8)
/* 0A7DA0 800AADA0 806701D8 */  lwz       r3, 0x1d8(r7)
/* 0A7DA4 800AADA4 90688000 */  stw       r3, -0x8000(r8)
/* 0A7DA8 800AADA8 99288000 */  stb       r9, -0x8000(r8)
/* 0A7DAC 800AADAC 806701D0 */  lwz       r3, 0x1d0(r7)
/* 0A7DB0 800AADB0 90688000 */  stw       r3, -0x8000(r8)
lbl_800AADB4:
/* 0A7DB4 800AADB4 5400063F */  clrlwi.   r0, r0, 24
/* 0A7DB8 800AADB8 4182001C */  beq       lbl_800AADD4
/* 0A7DBC 800AADBC 38000061 */  li        r0, 0x61
/* 0A7DC0 800AADC0 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7DC4 800AADC4 3C80CC01 */  lis       r4, 0xcc01
/* 0A7DC8 800AADC8 98048000 */  stb       r0, -0x8000(r4)
/* 0A7DCC 800AADCC 800301DC */  lwz       r0, 0x1dc(r3)
/* 0A7DD0 800AADD0 90048000 */  stw       r0, -0x8000(r4)
lbl_800AADD4:
/* 0A7DD4 800AADD4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7DD8 800AADD8 38000000 */  li        r0, 0x0
/* 0A7DDC 800AADDC B0030002 */  sth       r0, 0x2(r3)
/* 0A7DE0 800AADE0 4E800020 */  blr

glabel GXCopyTex
/* 0A7DE4 800AADE4 5480063F */  clrlwi.   r0, r4, 24
/* 0A7DE8 800AADE8 4182003C */  beq       lbl_800AAE24
/* 0A7DEC 800AADEC 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A7DF0 800AADF0 38000061 */  li        r0, 0x61
/* 0A7DF4 800AADF4 3CA0CC01 */  lis       r5, 0xcc01
/* 0A7DF8 800AADF8 80C701D8 */  lwz       r6, 0x1d8(r7)
/* 0A7DFC 800AADFC 54C6003C */  clrrwi    r6, r6, 1
/* 0A7E00 800AAE00 98058000 */  stb       r0, -0x8000(r5)
/* 0A7E04 800AAE04 60C60001 */  ori       r6, r6, 0x1
/* 0A7E08 800AAE08 54C607F6 */  rlwinm    r6, r6, 0, 31, 27
/* 0A7E0C 800AAE0C 60C6000E */  ori       r6, r6, 0xe
/* 0A7E10 800AAE10 90C58000 */  stw       r6, -0x8000(r5)
/* 0A7E14 800AAE14 80C701D0 */  lwz       r6, 0x1d0(r7)
/* 0A7E18 800AAE18 98058000 */  stb       r0, -0x8000(r5)
/* 0A7E1C 800AAE1C 54C0003A */  clrrwi    r0, r6, 2
/* 0A7E20 800AAE20 90058000 */  stw       r0, -0x8000(r5)
lbl_800AAE24:
/* 0A7E24 800AAE24 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A7E28 800AAE28 38000000 */  li        r0, 0x0
/* 0A7E2C 800AAE2C 88A60200 */  lbz       r5, 0x200(r6)
/* 0A7E30 800AAE30 80E601DC */  lwz       r7, 0x1dc(r6)
/* 0A7E34 800AAE34 28050000 */  cmplwi    r5, 0x0
/* 0A7E38 800AAE38 4182001C */  beq       lbl_800AAE54
/* 0A7E3C 800AAE3C 54E5077E */  clrlwi    r5, r7, 29
/* 0A7E40 800AAE40 28050003 */  cmplwi    r5, 0x3
/* 0A7E44 800AAE44 41820010 */  beq       lbl_800AAE54
/* 0A7E48 800AAE48 54E00038 */  clrrwi    r0, r7, 3
/* 0A7E4C 800AAE4C 60070003 */  ori       r7, r0, 0x3
/* 0A7E50 800AAE50 38000001 */  li        r0, 0x1
lbl_800AAE54:
/* 0A7E54 800AAE54 5485063F */  clrlwi.   r5, r4, 24
/* 0A7E58 800AAE58 40820010 */  bne       lbl_800AAE68
/* 0A7E5C 800AAE5C 54E5077E */  clrlwi    r5, r7, 29
/* 0A7E60 800AAE60 28050003 */  cmplwi    r5, 0x3
/* 0A7E64 800AAE64 40820018 */  bne       lbl_800AAE7C
lbl_800AAE68:
/* 0A7E68 800AAE68 54E5D7FE */  extrwi    r5, r7, 1, 25
/* 0A7E6C 800AAE6C 28050001 */  cmplwi    r5, 0x1
/* 0A7E70 800AAE70 4082000C */  bne       lbl_800AAE7C
/* 0A7E74 800AAE74 38000001 */  li        r0, 0x1
/* 0A7E78 800AAE78 54E706B0 */  rlwinm    r7, r7, 0, 26, 24
lbl_800AAE7C:
/* 0A7E7C 800AAE7C 5405063F */  clrlwi.   r5, r0, 24
/* 0A7E80 800AAE80 41820014 */  beq       lbl_800AAE94
/* 0A7E84 800AAE84 38C00061 */  li        r6, 0x61
/* 0A7E88 800AAE88 3CA0CC01 */  lis       r5, 0xcc01
/* 0A7E8C 800AAE8C 98C58000 */  stb       r6, -0x8000(r5)
/* 0A7E90 800AAE90 90E58000 */  stw       r7, -0x8000(r5)
lbl_800AAE94:
/* 0A7E94 800AAE94 39200061 */  li        r9, 0x61
/* 0A7E98 800AAE98 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A7E9C 800AAE9C 3D00CC01 */  lis       r8, 0xcc01
/* 0A7EA0 800AAEA0 99288000 */  stb       r9, -0x8000(r8)
/* 0A7EA4 800AAEA4 5463DA3E */  extrwi    r3, r3, 24, 3
/* 0A7EA8 800AAEA8 646A4B00 */  oris      r10, r3, 0x4b00
/* 0A7EAC 800AAEAC 80C701F0 */  lwz       r6, 0x1f0(r7)
/* 0A7EB0 800AAEB0 5485063F */  clrlwi.   r5, r4, 24
/* 0A7EB4 800AAEB4 54835B68 */  clrlslwi  r3, r4, 24, 11
/* 0A7EB8 800AAEB8 90C88000 */  stw       r6, -0x8000(r8)
/* 0A7EBC 800AAEBC 99288000 */  stb       r9, -0x8000(r8)
/* 0A7EC0 800AAEC0 808701F4 */  lwz       r4, 0x1f4(r7)
/* 0A7EC4 800AAEC4 90888000 */  stw       r4, -0x8000(r8)
/* 0A7EC8 800AAEC8 99288000 */  stb       r9, -0x8000(r8)
/* 0A7ECC 800AAECC 808701F8 */  lwz       r4, 0x1f8(r7)
/* 0A7ED0 800AAED0 90888000 */  stw       r4, -0x8000(r8)
/* 0A7ED4 800AAED4 99288000 */  stb       r9, -0x8000(r8)
/* 0A7ED8 800AAED8 91488000 */  stw       r10, -0x8000(r8)
/* 0A7EDC 800AAEDC 808701FC */  lwz       r4, 0x1fc(r7)
/* 0A7EE0 800AAEE0 54840566 */  rlwinm    r4, r4, 0, 21, 19
/* 0A7EE4 800AAEE4 7C831B78 */  or        r3, r4, r3
/* 0A7EE8 800AAEE8 906701FC */  stw       r3, 0x1fc(r7)
/* 0A7EEC 800AAEEC 806701FC */  lwz       r3, 0x1fc(r7)
/* 0A7EF0 800AAEF0 546304A0 */  rlwinm    r3, r3, 0, 18, 16
/* 0A7EF4 800AAEF4 906701FC */  stw       r3, 0x1fc(r7)
/* 0A7EF8 800AAEF8 806701FC */  lwz       r3, 0x1fc(r7)
/* 0A7EFC 800AAEFC 5463023E */  clrlwi    r3, r3, 8
/* 0A7F00 800AAF00 64635200 */  oris      r3, r3, 0x5200
/* 0A7F04 800AAF04 906701FC */  stw       r3, 0x1fc(r7)
/* 0A7F08 800AAF08 99288000 */  stb       r9, -0x8000(r8)
/* 0A7F0C 800AAF0C 806701FC */  lwz       r3, 0x1fc(r7)
/* 0A7F10 800AAF10 90688000 */  stw       r3, -0x8000(r8)
/* 0A7F14 800AAF14 4182001C */  beq       lbl_800AAF30
/* 0A7F18 800AAF18 99288000 */  stb       r9, -0x8000(r8)
/* 0A7F1C 800AAF1C 806701D8 */  lwz       r3, 0x1d8(r7)
/* 0A7F20 800AAF20 90688000 */  stw       r3, -0x8000(r8)
/* 0A7F24 800AAF24 99288000 */  stb       r9, -0x8000(r8)
/* 0A7F28 800AAF28 806701D0 */  lwz       r3, 0x1d0(r7)
/* 0A7F2C 800AAF2C 90688000 */  stw       r3, -0x8000(r8)
lbl_800AAF30:
/* 0A7F30 800AAF30 5400063F */  clrlwi.   r0, r0, 24
/* 0A7F34 800AAF34 4182001C */  beq       lbl_800AAF50
/* 0A7F38 800AAF38 38000061 */  li        r0, 0x61
/* 0A7F3C 800AAF3C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7F40 800AAF40 3C80CC01 */  lis       r4, 0xcc01
/* 0A7F44 800AAF44 98048000 */  stb       r0, -0x8000(r4)
/* 0A7F48 800AAF48 800301DC */  lwz       r0, 0x1dc(r3)
/* 0A7F4C 800AAF4C 90048000 */  stw       r0, -0x8000(r4)
lbl_800AAF50:
/* 0A7F50 800AAF50 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7F54 800AAF54 38000000 */  li        r0, 0x0
/* 0A7F58 800AAF58 B0030002 */  sth       r0, 0x2(r3)
/* 0A7F5C 800AAF5C 4E800020 */  blr

glabel GXClearBoundingBox
/* 0A7F60 800AAF60 38C00061 */  li        r6, 0x61
/* 0A7F64 800AAF64 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A7F68 800AAF68 3CA0CC01 */  lis       r5, 0xcc01
/* 0A7F6C 800AAF6C 3C805500 */  lis       r4, 0x5500
/* 0A7F70 800AAF70 98C58000 */  stb       r6, -0x8000(r5)
/* 0A7F74 800AAF74 380403FF */  addi      r0, r4, 0x3ff
/* 0A7F78 800AAF78 90058000 */  stw       r0, -0x8000(r5)
/* 0A7F7C 800AAF7C 3C805600 */  lis       r4, 0x5600
/* 0A7F80 800AAF80 388403FF */  addi      r4, r4, 0x3ff
/* 0A7F84 800AAF84 98C58000 */  stb       r6, -0x8000(r5)
/* 0A7F88 800AAF88 38000000 */  li        r0, 0x0
/* 0A7F8C 800AAF8C 90858000 */  stw       r4, -0x8000(r5)
/* 0A7F90 800AAF90 B0030002 */  sth       r0, 0x2(r3)
/* 0A7F94 800AAF94 4E800020 */  blr

# 0x800F31C8 - 0x800F32F8
.section .data, "wa"

.balign 8

glabel GXNtsc480IntDf
	.long 0x00000000
	.long 0x028001E0
	.long 0x01E00028
	.long 0x00000280
	.long 0x01E00000
	.long 0x00000001
	.long 0x00000606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060808
	.long 0x0A0C0A08
	.long 0x08000000

glabel GXNtsc480Prog
	.long 0x00000002
	.long 0x028001E0
	.long 0x01E00028
	.long 0x00000280
	.long 0x01E00000
	.long 0x00000000
	.long 0x00000606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060000
	.long 0x15161500
	.long 0x00000000

glabel GXMpal480IntDf
	.long 0x00000008
	.long 0x028001E0
	.long 0x01E00028
	.long 0x00000280
	.long 0x01E00000
	.long 0x00000001
	.long 0x00000606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060808
	.long 0x0A0C0A08
	.long 0x08000000

glabel GXPal528IntDf
	.long 0x00000004
	.long 0x02800210
	.long 0x02100028
	.long 0x00170280
	.long 0x02100000
	.long 0x00000001
	.long 0x00000606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060808
	.long 0x0A0C0A08
	.long 0x08000000

glabel D_800F32B8
	.long 0x00000014
	.long 0x028001E0
	.long 0x01E00028
	.long 0x00000280
	.long 0x01E00000
	.long 0x00000001
	.long 0x00000606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060606
	.long 0x06060808
	.long 0x0A0C0A08
	.long 0x08000000
	.long 0x00000000

# 0x8018C368 - 0x8018C378
.section .sdata2, "a"

glabel D_8018C368
	.float 256

glabel gap_09_8018C36C_sdata2
.hidden gap_09_8018C36C_sdata2
	.long 0x00000000

glabel D_8018C370
	.double 4503599627370496
