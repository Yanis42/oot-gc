# direct_io.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD1D0 - 0x800CD4AC

glabel fwrite
/* 0CA1D0 800CD1D0 7C0802A6 */  mflr      r0
/* 0CA1D4 800CD1D4 90010004 */  stw       r0, 0x4(r1)
/* 0CA1D8 800CD1D8 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0CA1DC 800CD1DC BF21002C */  stmw      r25, 0x2c(r1)
/* 0CA1E0 800CD1E0 3B440000 */  addi      r26, r4, 0x0
/* 0CA1E4 800CD1E4 3B660000 */  addi      r27, r6, 0x0
/* 0CA1E8 800CD1E8 3B830000 */  addi      r28, r3, 0x0
/* 0CA1EC 800CD1EC 3B250000 */  addi      r25, r5, 0x0
/* 0CA1F0 800CD1F0 387B0000 */  addi      r3, r27, 0x0
/* 0CA1F4 800CD1F4 38800000 */  li        r4, 0x0
/* 0CA1F8 800CD1F8 480029E9 */  bl        fwide
/* 0CA1FC 800CD1FC 2C030000 */  cmpwi     r3, 0x0
/* 0CA200 800CD200 40820010 */  bne       lbl_800CD210
/* 0CA204 800CD204 387B0000 */  addi      r3, r27, 0x0
/* 0CA208 800CD208 3880FFFF */  li        r4, -0x1
/* 0CA20C 800CD20C 480029D5 */  bl        fwide
lbl_800CD210:
/* 0CA210 800CD210 7C1AC9D7 */  mullw.    r0, r26, r25
/* 0CA214 800CD214 7C1D0378 */  mr        r29, r0
/* 0CA218 800CD218 4182001C */  beq       lbl_800CD234
/* 0CA21C 800CD21C 881B000A */  lbz       r0, 0xa(r27)
/* 0CA220 800CD220 28000000 */  cmplwi    r0, 0x0
/* 0CA224 800CD224 40820010 */  bne       lbl_800CD234
/* 0CA228 800CD228 A01B0004 */  lhz       r0, 0x4(r27)
/* 0CA22C 800CD22C 5400D77F */  extrwi.   r0, r0, 3, 23
/* 0CA230 800CD230 4082000C */  bne       lbl_800CD23C
lbl_800CD234:
/* 0CA234 800CD234 38600000 */  li        r3, 0x0
/* 0CA238 800CD238 48000260 */  b         lbl_800CD498
lbl_800CD23C:
/* 0CA23C 800CD23C 2C000002 */  cmpwi     r0, 0x2
/* 0CA240 800CD240 40820008 */  bne       lbl_800CD248
/* 0CA244 800CD244 480006CD */  bl        __stdio_atexit
lbl_800CD248:
/* 0CA248 800CD248 881B0005 */  lbz       r0, 0x5(r27)
/* 0CA24C 800CD24C 3BE00001 */  li        r31, 0x1
/* 0CA250 800CD250 387F0000 */  addi      r3, r31, 0x0
/* 0CA254 800CD254 5400EFFF */  extrwi.   r0, r0, 1, 28
/* 0CA258 800CD258 389F0000 */  addi      r4, r31, 0x0
/* 0CA25C 800CD25C 41820018 */  beq       lbl_800CD274
/* 0CA260 800CD260 A01B0004 */  lhz       r0, 0x4(r27)
/* 0CA264 800CD264 5400D77E */  extrwi    r0, r0, 3, 23
/* 0CA268 800CD268 2C000003 */  cmpwi     r0, 0x3
/* 0CA26C 800CD26C 41820008 */  beq       lbl_800CD274
/* 0CA270 800CD270 38800000 */  li        r4, 0x0
lbl_800CD274:
/* 0CA274 800CD274 2C040000 */  cmpwi     r4, 0x0
/* 0CA278 800CD278 40820018 */  bne       lbl_800CD290
/* 0CA27C 800CD27C 881B0004 */  lbz       r0, 0x4(r27)
/* 0CA280 800CD280 5400FFBE */  extrwi    r0, r0, 2, 29
/* 0CA284 800CD284 28000002 */  cmplwi    r0, 0x2
/* 0CA288 800CD288 41820008 */  beq       lbl_800CD290
/* 0CA28C 800CD28C 38600000 */  li        r3, 0x0
lbl_800CD290:
/* 0CA290 800CD290 2C030000 */  cmpwi     r3, 0x0
/* 0CA294 800CD294 40820018 */  bne       lbl_800CD2AC
/* 0CA298 800CD298 881B0004 */  lbz       r0, 0x4(r27)
/* 0CA29C 800CD29C 5400FFBE */  extrwi    r0, r0, 2, 29
/* 0CA2A0 800CD2A0 28000001 */  cmplwi    r0, 0x1
/* 0CA2A4 800CD2A4 41820008 */  beq       lbl_800CD2AC
/* 0CA2A8 800CD2A8 3BE00000 */  li        r31, 0x0
lbl_800CD2AC:
/* 0CA2AC 800CD2AC 887B0008 */  lbz       r3, 0x8(r27)
/* 0CA2B0 800CD2B0 5460DF7F */  extrwi.   r0, r3, 3, 24
/* 0CA2B4 800CD2B4 40820024 */  bne       lbl_800CD2D8
/* 0CA2B8 800CD2B8 881B0004 */  lbz       r0, 0x4(r27)
/* 0CA2BC 800CD2BC 5400EFBD */  rlwinm.   r0, r0, 29, 30, 30
/* 0CA2C0 800CD2C0 41820018 */  beq       lbl_800CD2D8
/* 0CA2C4 800CD2C4 38000001 */  li        r0, 0x1
/* 0CA2C8 800CD2C8 50032E34 */  rlwimi    r3, r0, 5, 24, 26
/* 0CA2CC 800CD2CC 987B0008 */  stb       r3, 0x8(r27)
/* 0CA2D0 800CD2D0 7F63DB78 */  mr        r3, r27
/* 0CA2D4 800CD2D4 4BFFFE75 */  bl        __prep_buffer
lbl_800CD2D8:
/* 0CA2D8 800CD2D8 881B0008 */  lbz       r0, 0x8(r27)
/* 0CA2DC 800CD2DC 5400DF7E */  extrwi    r0, r0, 3, 24
/* 0CA2E0 800CD2E0 28000001 */  cmplwi    r0, 0x1
/* 0CA2E4 800CD2E4 4182001C */  beq       lbl_800CD300
/* 0CA2E8 800CD2E8 38000001 */  li        r0, 0x1
/* 0CA2EC 800CD2EC 981B000A */  stb       r0, 0xa(r27)
/* 0CA2F0 800CD2F0 38000000 */  li        r0, 0x0
/* 0CA2F4 800CD2F4 38600000 */  li        r3, 0x0
/* 0CA2F8 800CD2F8 901B0024 */  stw       r0, 0x24(r27)
/* 0CA2FC 800CD2FC 4800019C */  b         lbl_800CD498
lbl_800CD300:
/* 0CA300 800CD300 281D0000 */  cmplwi    r29, 0x0
/* 0CA304 800CD304 3BDC0000 */  addi      r30, r28, 0x0
/* 0CA308 800CD308 3B800000 */  li        r28, 0x0
/* 0CA30C 800CD30C 418200FC */  beq       lbl_800CD408
/* 0CA310 800CD310 809B0020 */  lwz       r4, 0x20(r27)
/* 0CA314 800CD314 807B0018 */  lwz       r3, 0x18(r27)
/* 0CA318 800CD318 7C041840 */  cmplw     r4, r3
/* 0CA31C 800CD31C 4082000C */  bne       lbl_800CD328
/* 0CA320 800CD320 2C1F0000 */  cmpwi     r31, 0x0
/* 0CA324 800CD324 418200E4 */  beq       lbl_800CD408
lbl_800CD328:
/* 0CA328 800CD328 801B001C */  lwz       r0, 0x1c(r27)
/* 0CA32C 800CD32C 7C632050 */  subf      r3, r3, r4
/* 0CA330 800CD330 7C030050 */  subf      r0, r3, r0
/* 0CA334 800CD334 901B0024 */  stw       r0, 0x24(r27)
lbl_800CD338:
/* 0CA338 800CD338 801B0024 */  lwz       r0, 0x24(r27)
/* 0CA33C 800CD33C 90010020 */  stw       r0, 0x20(r1)
/* 0CA340 800CD340 80010020 */  lwz       r0, 0x20(r1)
/* 0CA344 800CD344 7C00E840 */  cmplw     r0, r29
/* 0CA348 800CD348 40810008 */  ble       lbl_800CD350
/* 0CA34C 800CD34C 93A10020 */  stw       r29, 0x20(r1)
lbl_800CD350:
/* 0CA350 800CD350 80A10020 */  lwz       r5, 0x20(r1)
/* 0CA354 800CD354 28050000 */  cmplwi    r5, 0x0
/* 0CA358 800CD358 4182003C */  beq       lbl_800CD394
/* 0CA35C 800CD35C 807B0020 */  lwz       r3, 0x20(r27)
/* 0CA360 800CD360 7FC4F378 */  mr        r4, r30
/* 0CA364 800CD364 4BF380B1 */  bl        memcpy
/* 0CA368 800CD368 80610020 */  lwz       r3, 0x20(r1)
/* 0CA36C 800CD36C 801B0020 */  lwz       r0, 0x20(r27)
/* 0CA370 800CD370 7FDE1A14 */  add       r30, r30, r3
/* 0CA374 800CD374 7C001A14 */  add       r0, r0, r3
/* 0CA378 800CD378 901B0020 */  stw       r0, 0x20(r27)
/* 0CA37C 800CD37C 7F9C1A14 */  add       r28, r28, r3
/* 0CA380 800CD380 7FA3E850 */  subf      r29, r3, r29
/* 0CA384 800CD384 80610020 */  lwz       r3, 0x20(r1)
/* 0CA388 800CD388 801B0024 */  lwz       r0, 0x24(r27)
/* 0CA38C 800CD38C 7C030050 */  subf      r0, r3, r0
/* 0CA390 800CD390 901B0024 */  stw       r0, 0x24(r27)
lbl_800CD394:
/* 0CA394 800CD394 807B0024 */  lwz       r3, 0x24(r27)
/* 0CA398 800CD398 28030000 */  cmplwi    r3, 0x0
/* 0CA39C 800CD39C 4082001C */  bne       lbl_800CD3B8
/* 0CA3A0 800CD3A0 A01B0004 */  lhz       r0, 0x4(r27)
/* 0CA3A4 800CD3A4 5400D77E */  extrwi    r0, r0, 3, 23
/* 0CA3A8 800CD3A8 2C000003 */  cmpwi     r0, 0x3
/* 0CA3AC 800CD3AC 4082000C */  bne       lbl_800CD3B8
/* 0CA3B0 800CD3B0 7F9CEA14 */  add       r28, r28, r29
/* 0CA3B4 800CD3B4 48000054 */  b         lbl_800CD408
lbl_800CD3B8:
/* 0CA3B8 800CD3B8 28030000 */  cmplwi    r3, 0x0
/* 0CA3BC 800CD3BC 41820010 */  beq       lbl_800CD3CC
/* 0CA3C0 800CD3C0 881B0004 */  lbz       r0, 0x4(r27)
/* 0CA3C4 800CD3C4 5400FFBF */  extrwi.   r0, r0, 2, 29
/* 0CA3C8 800CD3C8 40820030 */  bne       lbl_800CD3F8
lbl_800CD3CC:
/* 0CA3CC 800CD3CC 387B0000 */  addi      r3, r27, 0x0
/* 0CA3D0 800CD3D0 38800000 */  li        r4, 0x0
/* 0CA3D4 800CD3D4 4BFFFCA9 */  bl        __flush_buffer
/* 0CA3D8 800CD3D8 2C030000 */  cmpwi     r3, 0x0
/* 0CA3DC 800CD3DC 4182001C */  beq       lbl_800CD3F8
/* 0CA3E0 800CD3E0 38000001 */  li        r0, 0x1
/* 0CA3E4 800CD3E4 981B000A */  stb       r0, 0xa(r27)
/* 0CA3E8 800CD3E8 38000000 */  li        r0, 0x0
/* 0CA3EC 800CD3EC 3BA00000 */  li        r29, 0x0
/* 0CA3F0 800CD3F0 901B0024 */  stw       r0, 0x24(r27)
/* 0CA3F4 800CD3F4 48000014 */  b         lbl_800CD408
lbl_800CD3F8:
/* 0CA3F8 800CD3F8 281D0000 */  cmplwi    r29, 0x0
/* 0CA3FC 800CD3FC 4182000C */  beq       lbl_800CD408
/* 0CA400 800CD400 2C1F0000 */  cmpwi     r31, 0x0
/* 0CA404 800CD404 4082FF34 */  bne       lbl_800CD338
lbl_800CD408:
/* 0CA408 800CD408 281D0000 */  cmplwi    r29, 0x0
/* 0CA40C 800CD40C 41820068 */  beq       lbl_800CD474
/* 0CA410 800CD410 2C1F0000 */  cmpwi     r31, 0x0
/* 0CA414 800CD414 40820060 */  bne       lbl_800CD474
/* 0CA418 800CD418 83FB0018 */  lwz       r31, 0x18(r27)
/* 0CA41C 800CD41C 7C1EEA14 */  add       r0, r30, r29
/* 0CA420 800CD420 833B001C */  lwz       r25, 0x1c(r27)
/* 0CA424 800CD424 387B0000 */  addi      r3, r27, 0x0
/* 0CA428 800CD428 38810020 */  addi      r4, r1, 0x20
/* 0CA42C 800CD42C 93DB0018 */  stw       r30, 0x18(r27)
/* 0CA430 800CD430 93BB001C */  stw       r29, 0x1c(r27)
/* 0CA434 800CD434 901B0020 */  stw       r0, 0x20(r27)
/* 0CA438 800CD438 4BFFFC45 */  bl        __flush_buffer
/* 0CA43C 800CD43C 2C030000 */  cmpwi     r3, 0x0
/* 0CA440 800CD440 41820014 */  beq       lbl_800CD454
/* 0CA444 800CD444 38000001 */  li        r0, 0x1
/* 0CA448 800CD448 981B000A */  stb       r0, 0xa(r27)
/* 0CA44C 800CD44C 38000000 */  li        r0, 0x0
/* 0CA450 800CD450 901B0024 */  stw       r0, 0x24(r27)
lbl_800CD454:
/* 0CA454 800CD454 80010020 */  lwz       r0, 0x20(r1)
/* 0CA458 800CD458 7F63DB78 */  mr        r3, r27
/* 0CA45C 800CD45C 93FB0018 */  stw       r31, 0x18(r27)
/* 0CA460 800CD460 7F9C0214 */  add       r28, r28, r0
/* 0CA464 800CD464 933B001C */  stw       r25, 0x1c(r27)
/* 0CA468 800CD468 4BFFFCE1 */  bl        __prep_buffer
/* 0CA46C 800CD46C 38000000 */  li        r0, 0x0
/* 0CA470 800CD470 901B0024 */  stw       r0, 0x24(r27)
lbl_800CD474:
/* 0CA474 800CD474 881B0004 */  lbz       r0, 0x4(r27)
/* 0CA478 800CD478 5400FFBE */  extrwi    r0, r0, 2, 29
/* 0CA47C 800CD47C 28000002 */  cmplwi    r0, 0x2
/* 0CA480 800CD480 4182000C */  beq       lbl_800CD48C
/* 0CA484 800CD484 38000000 */  li        r0, 0x0
/* 0CA488 800CD488 901B0024 */  stw       r0, 0x24(r27)
lbl_800CD48C:
/* 0CA48C 800CD48C 381AFFFF */  subi      r0, r26, 0x1
/* 0CA490 800CD490 7C1C0214 */  add       r0, r28, r0
/* 0CA494 800CD494 7C60D396 */  divwu     r3, r0, r26
lbl_800CD498:
/* 0CA498 800CD498 BB21002C */  lmw       r25, 0x2c(r1)
/* 0CA49C 800CD49C 8001004C */  lwz       r0, 0x4c(r1)
/* 0CA4A0 800CD4A0 38210048 */  addi      r1, r1, 0x48
/* 0CA4A4 800CD4A4 7C0803A6 */  mtlr      r0
/* 0CA4A8 800CD4A8 4E800020 */  blr
