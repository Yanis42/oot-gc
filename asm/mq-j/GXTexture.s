# GXTexture.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AB290 - 0x800AC0D8

glabel fn_800AB290
/* 0A8290 800AB290 2803003C */  cmplwi    r3, 0x3c
/* 0A8294 800AB294 41810040 */  bgt       lbl_800AB2D4
/* 0A8298 800AB298 3D20800F */  lis       r9, jtbl_800F32F8@ha
/* 0A829C 800AB29C 392932F8 */  addi      r9, r9, jtbl_800F32F8@l
/* 0A82A0 800AB2A0 5460103A */  slwi      r0, r3, 2
/* 0A82A4 800AB2A4 7C09002E */  lwzx      r0, r9, r0
/* 0A82A8 800AB2A8 7C0903A6 */  mtctr     r0
/* 0A82AC 800AB2AC 4E800420 */  bctr
lbl_800AB2B0:
/* 0A82B0 800AB2B0 39600003 */  li        r11, 0x3
/* 0A82B4 800AB2B4 39800003 */  li        r12, 0x3
/* 0A82B8 800AB2B8 48000024 */  b         lbl_800AB2DC
lbl_800AB2BC:
/* 0A82BC 800AB2BC 39600003 */  li        r11, 0x3
/* 0A82C0 800AB2C0 39800002 */  li        r12, 0x2
/* 0A82C4 800AB2C4 48000018 */  b         lbl_800AB2DC
lbl_800AB2C8:
/* 0A82C8 800AB2C8 39600002 */  li        r11, 0x2
/* 0A82CC 800AB2CC 39800002 */  li        r12, 0x2
/* 0A82D0 800AB2D0 4800000C */  b         lbl_800AB2DC
lbl_800AB2D4:
/* 0A82D4 800AB2D4 39800000 */  li        r12, 0x0
/* 0A82D8 800AB2D8 39600000 */  li        r11, 0x0
lbl_800AB2DC:
/* 0A82DC 800AB2DC 5480043F */  clrlwi.   r0, r4, 16
/* 0A82E0 800AB2E0 40820008 */  bne       lbl_800AB2E8
/* 0A82E4 800AB2E4 38800001 */  li        r4, 0x1
lbl_800AB2E8:
/* 0A82E8 800AB2E8 54A0043F */  clrlwi.   r0, r5, 16
/* 0A82EC 800AB2EC 40820008 */  bne       lbl_800AB2F4
/* 0A82F0 800AB2F0 38A00001 */  li        r5, 0x1
lbl_800AB2F4:
/* 0A82F4 800AB2F4 39400001 */  li        r10, 0x1
/* 0A82F8 800AB2F8 7D495830 */  slw       r9, r10, r11
/* 0A82FC 800AB2FC 5484043E */  clrlwi    r4, r4, 16
/* 0A8300 800AB300 3809FFFF */  subi      r0, r9, 0x1
/* 0A8304 800AB304 7C040214 */  add       r0, r4, r0
/* 0A8308 800AB308 7C005E30 */  sraw      r0, r0, r11
/* 0A830C 800AB30C 7D446030 */  slw       r4, r10, r12
/* 0A8310 800AB310 90060000 */  stw       r0, 0x0(r6)
/* 0A8314 800AB314 54A5043E */  clrlwi    r5, r5, 16
/* 0A8318 800AB318 3804FFFF */  subi      r0, r4, 0x1
/* 0A831C 800AB31C 7C050214 */  add       r0, r5, r0
/* 0A8320 800AB320 7C006630 */  sraw      r0, r0, r12
/* 0A8324 800AB324 2C030006 */  cmpwi     r3, 0x6
/* 0A8328 800AB328 90070000 */  stw       r0, 0x0(r7)
/* 0A832C 800AB32C 41820010 */  beq       lbl_800AB33C
/* 0A8330 800AB330 2C030016 */  cmpwi     r3, 0x16
/* 0A8334 800AB334 41820008 */  beq       lbl_800AB33C
/* 0A8338 800AB338 39400000 */  li        r10, 0x0
lbl_800AB33C:
/* 0A833C 800AB33C 2C0A0000 */  cmpwi     r10, 0x0
/* 0A8340 800AB340 4182000C */  beq       lbl_800AB34C
/* 0A8344 800AB344 38000002 */  li        r0, 0x2
/* 0A8348 800AB348 48000008 */  b         lbl_800AB350
lbl_800AB34C:
/* 0A834C 800AB34C 38000001 */  li        r0, 0x1
lbl_800AB350:
/* 0A8350 800AB350 90080000 */  stw       r0, 0x0(r8)
/* 0A8354 800AB354 4E800020 */  blr

glabel GXInitTexObj
/* 0A8358 800AB358 7C0802A6 */  mflr      r0
/* 0A835C 800AB35C 90010004 */  stw       r0, 0x4(r1)
/* 0A8360 800AB360 9421FFA0 */  stwu      r1, -0x60(r1)
/* 0A8364 800AB364 BF010040 */  stmw      r24, 0x40(r1)
/* 0A8368 800AB368 3B640000 */  addi      r27, r4, 0x0
/* 0A836C 800AB36C 3B850000 */  addi      r28, r5, 0x0
/* 0A8370 800AB370 3BE30000 */  addi      r31, r3, 0x0
/* 0A8374 800AB374 3BA60000 */  addi      r29, r6, 0x0
/* 0A8378 800AB378 3BC70000 */  addi      r30, r7, 0x0
/* 0A837C 800AB37C 3B080000 */  addi      r24, r8, 0x0
/* 0A8380 800AB380 3B290000 */  addi      r25, r9, 0x0
/* 0A8384 800AB384 3B4A0000 */  addi      r26, r10, 0x0
/* 0A8388 800AB388 38800000 */  li        r4, 0x0
/* 0A838C 800AB38C 38A00020 */  li        r5, 0x20
/* 0A8390 800AB390 4BF59F91 */  bl        memset
/* 0A8394 800AB394 809F0000 */  lwz       r4, 0x0(r31)
/* 0A8398 800AB398 5740063F */  clrlwi.   r0, r26, 24
/* 0A839C 800AB39C 5723103A */  slwi      r3, r25, 2
/* 0A83A0 800AB3A0 5484003A */  clrrwi    r4, r4, 2
/* 0A83A4 800AB3A4 7C84C378 */  or        r4, r4, r24
/* 0A83A8 800AB3A8 909F0000 */  stw       r4, 0x0(r31)
/* 0A83AC 800AB3AC 801F0000 */  lwz       r0, 0x0(r31)
/* 0A83B0 800AB3B0 540007B6 */  rlwinm    r0, r0, 0, 30, 27
/* 0A83B4 800AB3B4 7C001B78 */  or        r0, r0, r3
/* 0A83B8 800AB3B8 901F0000 */  stw       r0, 0x0(r31)
/* 0A83BC 800AB3BC 801F0000 */  lwz       r0, 0x0(r31)
/* 0A83C0 800AB3C0 54000734 */  rlwinm    r0, r0, 0, 28, 26
/* 0A83C4 800AB3C4 60000010 */  ori       r0, r0, 0x10
/* 0A83C8 800AB3C8 901F0000 */  stw       r0, 0x0(r31)
/* 0A83CC 800AB3CC 418200A4 */  beq       lbl_800AB470
/* 0A83D0 800AB3D0 887F001F */  lbz       r3, 0x1f(r31)
/* 0A83D4 800AB3D4 381EFFF8 */  subi      r0, r30, 0x8
/* 0A83D8 800AB3D8 28000002 */  cmplwi    r0, 0x2
/* 0A83DC 800AB3DC 60600001 */  ori       r0, r3, 0x1
/* 0A83E0 800AB3E0 981F001F */  stb       r0, 0x1f(r31)
/* 0A83E4 800AB3E4 41810018 */  bgt       lbl_800AB3FC
/* 0A83E8 800AB3E8 801F0000 */  lwz       r0, 0x0(r31)
/* 0A83EC 800AB3EC 540006EE */  rlwinm    r0, r0, 0, 27, 23
/* 0A83F0 800AB3F0 600000A0 */  ori       r0, r0, 0xa0
/* 0A83F4 800AB3F4 901F0000 */  stw       r0, 0x0(r31)
/* 0A83F8 800AB3F8 48000014 */  b         lbl_800AB40C
lbl_800AB3FC:
/* 0A83FC 800AB3FC 801F0000 */  lwz       r0, 0x0(r31)
/* 0A8400 800AB400 540006EE */  rlwinm    r0, r0, 0, 27, 23
/* 0A8404 800AB404 600000C0 */  ori       r0, r0, 0xc0
/* 0A8408 800AB408 901F0000 */  stw       r0, 0x0(r31)
lbl_800AB40C:
/* 0A840C 800AB40C 5783043E */  clrlwi    r3, r28, 16
/* 0A8410 800AB410 57A0043E */  clrlwi    r0, r29, 16
/* 0A8414 800AB414 7C030040 */  cmplw     r3, r0
/* 0A8418 800AB418 40810010 */  ble       lbl_800AB428
/* 0A841C 800AB41C 7C600034 */  cntlzw    r0, r3
/* 0A8420 800AB420 2000001F */  subfic    r0, r0, 0x1f
/* 0A8424 800AB424 4800000C */  b         lbl_800AB430
lbl_800AB428:
/* 0A8428 800AB428 7C000034 */  cntlzw    r0, r0
/* 0A842C 800AB42C 2000001F */  subfic    r0, r0, 0x1f
lbl_800AB430:
/* 0A8430 800AB430 9001003C */  stw       r0, 0x3c(r1)
/* 0A8434 800AB434 3C004330 */  lis       r0, 0x4330
/* 0A8438 800AB438 807F0004 */  lwz       r3, 0x4(r31)
/* 0A843C 800AB43C 90010038 */  stw       r0, 0x38(r1)
/* 0A8440 800AB440 C8228440 */  lfd       f1, D_8018C380@sda21(r0)
/* 0A8444 800AB444 5463061E */  rlwinm    r3, r3, 0, 24, 15
/* 0A8448 800AB448 C8010038 */  lfd       f0, 0x38(r1)
/* 0A844C 800AB44C C0428438 */  lfs       f2, D_8018C378@sda21(r0)
/* 0A8450 800AB450 EC000828 */  fsubs     f0, f0, f1
/* 0A8454 800AB454 EC020032 */  fmuls     f0, f2, f0
/* 0A8458 800AB458 FC00001E */  fctiwz    f0, f0
/* 0A845C 800AB45C D8010030 */  stfd      f0, 0x30(r1)
/* 0A8460 800AB460 80010034 */  lwz       r0, 0x34(r1)
/* 0A8464 800AB464 5003442E */  rlwimi    r3, r0, 8, 16, 23
/* 0A8468 800AB468 907F0004 */  stw       r3, 0x4(r31)
/* 0A846C 800AB46C 48000014 */  b         lbl_800AB480
lbl_800AB470:
/* 0A8470 800AB470 801F0000 */  lwz       r0, 0x0(r31)
/* 0A8474 800AB474 540006EE */  rlwinm    r0, r0, 0, 27, 23
/* 0A8478 800AB478 60000080 */  ori       r0, r0, 0x80
/* 0A847C 800AB47C 901F0000 */  stw       r0, 0x0(r31)
lbl_800AB480:
/* 0A8480 800AB480 93DF0014 */  stw       r30, 0x14(r31)
/* 0A8484 800AB484 57A3043E */  clrlwi    r3, r29, 16
/* 0A8488 800AB488 57C7073E */  clrlwi    r7, r30, 28
/* 0A848C 800AB48C 80BF0008 */  lwz       r5, 0x8(r31)
/* 0A8490 800AB490 5784043E */  clrlwi    r4, r28, 16
/* 0A8494 800AB494 3803FFFF */  subi      r0, r3, 0x1
/* 0A8498 800AB498 54A6002A */  clrrwi    r6, r5, 10
/* 0A849C 800AB49C 38A4FFFF */  subi      r5, r4, 0x1
/* 0A84A0 800AB4A0 7CC52B78 */  or        r5, r6, r5
/* 0A84A4 800AB4A4 90BF0008 */  stw       r5, 0x8(r31)
/* 0A84A8 800AB4A8 5405502A */  slwi      r5, r0, 10
/* 0A84AC 800AB4AC 5760D9FE */  extrwi    r0, r27, 25, 2
/* 0A84B0 800AB4B0 80DF0008 */  lwz       r6, 0x8(r31)
/* 0A84B4 800AB4B4 2807000E */  cmplwi    r7, 0xe
/* 0A84B8 800AB4B8 54C60596 */  rlwinm    r6, r6, 0, 22, 11
/* 0A84BC 800AB4BC 7CC52B78 */  or        r5, r6, r5
/* 0A84C0 800AB4C0 90BF0008 */  stw       r5, 0x8(r31)
/* 0A84C4 800AB4C4 80BF0008 */  lwz       r5, 0x8(r31)
/* 0A84C8 800AB4C8 54A5030E */  rlwinm    r5, r5, 0, 12, 7
/* 0A84CC 800AB4CC 53C5A216 */  rlwimi    r5, r30, 20, 8, 11
/* 0A84D0 800AB4D0 90BF0008 */  stw       r5, 0x8(r31)
/* 0A84D4 800AB4D4 80BF000C */  lwz       r5, 0xc(r31)
/* 0A84D8 800AB4D8 54A50014 */  clrrwi    r5, r5, 21
/* 0A84DC 800AB4DC 7CA00378 */  or        r0, r5, r0
/* 0A84E0 800AB4E0 901F000C */  stw       r0, 0xc(r31)
/* 0A84E4 800AB4E4 41810080 */  bgt       lbl_800AB564
/* 0A84E8 800AB4E8 3CA0800F */  lis       r5, jtbl_800F33EC@ha
/* 0A84EC 800AB4EC 38A533EC */  addi      r5, r5, jtbl_800F33EC@l
/* 0A84F0 800AB4F0 54E0103A */  slwi      r0, r7, 2
/* 0A84F4 800AB4F4 7C05002E */  lwzx      r0, r5, r0
/* 0A84F8 800AB4F8 7C0903A6 */  mtctr     r0
/* 0A84FC 800AB4FC 4E800420 */  bctr
lbl_800AB500:
/* 0A8500 800AB500 38000001 */  li        r0, 0x1
/* 0A8504 800AB504 981F001E */  stb       r0, 0x1e(r31)
/* 0A8508 800AB508 38000003 */  li        r0, 0x3
/* 0A850C 800AB50C 38E00003 */  li        r7, 0x3
/* 0A8510 800AB510 48000064 */  b         lbl_800AB574
lbl_800AB514:
/* 0A8514 800AB514 38000002 */  li        r0, 0x2
/* 0A8518 800AB518 981F001E */  stb       r0, 0x1e(r31)
/* 0A851C 800AB51C 38000003 */  li        r0, 0x3
/* 0A8520 800AB520 38E00002 */  li        r7, 0x2
/* 0A8524 800AB524 48000050 */  b         lbl_800AB574
lbl_800AB528:
/* 0A8528 800AB528 38000002 */  li        r0, 0x2
/* 0A852C 800AB52C 981F001E */  stb       r0, 0x1e(r31)
/* 0A8530 800AB530 38000002 */  li        r0, 0x2
/* 0A8534 800AB534 38E00002 */  li        r7, 0x2
/* 0A8538 800AB538 4800003C */  b         lbl_800AB574
lbl_800AB53C:
/* 0A853C 800AB53C 38000003 */  li        r0, 0x3
/* 0A8540 800AB540 981F001E */  stb       r0, 0x1e(r31)
/* 0A8544 800AB544 38000002 */  li        r0, 0x2
/* 0A8548 800AB548 38E00002 */  li        r7, 0x2
/* 0A854C 800AB54C 48000028 */  b         lbl_800AB574
lbl_800AB550:
/* 0A8550 800AB550 38000000 */  li        r0, 0x0
/* 0A8554 800AB554 981F001E */  stb       r0, 0x1e(r31)
/* 0A8558 800AB558 38000003 */  li        r0, 0x3
/* 0A855C 800AB55C 38E00003 */  li        r7, 0x3
/* 0A8560 800AB560 48000014 */  b         lbl_800AB574
lbl_800AB564:
/* 0A8564 800AB564 38000002 */  li        r0, 0x2
/* 0A8568 800AB568 981F001E */  stb       r0, 0x1e(r31)
/* 0A856C 800AB56C 38000002 */  li        r0, 0x2
/* 0A8570 800AB570 38E00002 */  li        r7, 0x2
lbl_800AB574:
/* 0A8574 800AB574 5408043E */  clrlwi    r8, r0, 16
/* 0A8578 800AB578 38C00001 */  li        r6, 0x1
/* 0A857C 800AB57C 7CC54030 */  slw       r5, r6, r8
/* 0A8580 800AB580 54E7043E */  clrlwi    r7, r7, 16
/* 0A8584 800AB584 3805FFFF */  subi      r0, r5, 0x1
/* 0A8588 800AB588 7CC53830 */  slw       r5, r6, r7
/* 0A858C 800AB58C 7C840214 */  add       r4, r4, r0
/* 0A8590 800AB590 3805FFFF */  subi      r0, r5, 0x1
/* 0A8594 800AB594 7C844630 */  sraw      r4, r4, r8
/* 0A8598 800AB598 7C030214 */  add       r0, r3, r0
/* 0A859C 800AB59C 7C003E30 */  sraw      r0, r0, r7
/* 0A85A0 800AB5A0 7C0401D6 */  mullw     r0, r4, r0
/* 0A85A4 800AB5A4 5400047E */  clrlwi    r0, r0, 17
/* 0A85A8 800AB5A8 B01F001C */  sth       r0, 0x1c(r31)
/* 0A85AC 800AB5AC 881F001F */  lbz       r0, 0x1f(r31)
/* 0A85B0 800AB5B0 60000002 */  ori       r0, r0, 0x2
/* 0A85B4 800AB5B4 981F001F */  stb       r0, 0x1f(r31)
/* 0A85B8 800AB5B8 80010064 */  lwz       r0, 0x64(r1)
/* 0A85BC 800AB5BC BB010040 */  lmw       r24, 0x40(r1)
/* 0A85C0 800AB5C0 38210060 */  addi      r1, r1, 0x60
/* 0A85C4 800AB5C4 7C0803A6 */  mtlr      r0
/* 0A85C8 800AB5C8 4E800020 */  blr

glabel fn_800AB5CC
/* 0A85CC 800AB5CC 7C0802A6 */  mflr      r0
/* 0A85D0 800AB5D0 90010004 */  stw       r0, 0x4(r1)
/* 0A85D4 800AB5D4 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0A85D8 800AB5D8 93E1002C */  stw       r31, 0x2c(r1)
/* 0A85DC 800AB5DC 83E10038 */  lwz       r31, 0x38(r1)
/* 0A85E0 800AB5E0 93C10028 */  stw       r30, 0x28(r1)
/* 0A85E4 800AB5E4 7C7E1B78 */  mr        r30, r3
/* 0A85E8 800AB5E8 4BFFFD71 */  bl        GXInitTexObj
/* 0A85EC 800AB5EC 881E001F */  lbz       r0, 0x1f(r30)
/* 0A85F0 800AB5F0 540007FA */  rlwinm    r0, r0, 0, 31, 29
/* 0A85F4 800AB5F4 981E001F */  stb       r0, 0x1f(r30)
/* 0A85F8 800AB5F8 93FE0018 */  stw       r31, 0x18(r30)
/* 0A85FC 800AB5FC 80010034 */  lwz       r0, 0x34(r1)
/* 0A8600 800AB600 83E1002C */  lwz       r31, 0x2c(r1)
/* 0A8604 800AB604 83C10028 */  lwz       r30, 0x28(r1)
/* 0A8608 800AB608 38210030 */  addi      r1, r1, 0x30
/* 0A860C 800AB60C 7C0803A6 */  mtlr      r0
/* 0A8610 800AB610 4E800020 */  blr

glabel fn_800AB614
/* 0A8614 800AB614 9421FFC8 */  stwu      r1, -0x38(r1)
/* 0A8618 800AB618 C0028448 */  lfs       f0, D_8018C388@sda21(r0)
/* 0A861C 800AB61C FC030040 */  fcmpo     cr0, f3, f0
/* 0A8620 800AB620 4080000C */  bge       lbl_800AB62C
/* 0A8624 800AB624 FC600090 */  fmr       f3, f0
/* 0A8628 800AB628 48000018 */  b         lbl_800AB640
lbl_800AB62C:
/* 0A862C 800AB62C C002844C */  lfs       f0, D_8018C38C@sda21(r0)
/* 0A8630 800AB630 FC030040 */  fcmpo     cr0, f3, f0
/* 0A8634 800AB634 4C411382 */  cror      eq, gt, eq
/* 0A8638 800AB638 40820008 */  bne       lbl_800AB640
/* 0A863C 800AB63C C0628450 */  lfs       f3, D_8018C390@sda21(r0)
lbl_800AB640:
/* 0A8640 800AB640 C0028454 */  lfs       f0, D_8018C394@sda21(r0)
/* 0A8644 800AB644 2C050001 */  cmpwi     r5, 0x1
/* 0A8648 800AB648 80030000 */  lwz       r0, 0x0(r3)
/* 0A864C 800AB64C EC0000F2 */  fmuls     f0, f0, f3
/* 0A8650 800AB650 540505DC */  rlwinm    r5, r0, 0, 23, 14
/* 0A8654 800AB654 FC00001E */  fctiwz    f0, f0
/* 0A8658 800AB658 D8010030 */  stfd      f0, 0x30(r1)
/* 0A865C 800AB65C 80010034 */  lwz       r0, 0x34(r1)
/* 0A8660 800AB660 50054BEC */  rlwimi    r5, r0, 9, 15, 22
/* 0A8664 800AB664 90A30000 */  stw       r5, 0x0(r3)
/* 0A8668 800AB668 4082000C */  bne       lbl_800AB674
/* 0A866C 800AB66C 38A00001 */  li        r5, 0x1
/* 0A8670 800AB670 48000008 */  b         lbl_800AB678
lbl_800AB674:
/* 0A8674 800AB674 38A00000 */  li        r5, 0x0
lbl_800AB678:
/* 0A8678 800AB678 81230000 */  lwz       r9, 0x0(r3)
/* 0A867C 800AB67C 54E0063F */  clrlwi.   r0, r7, 24
/* 0A8680 800AB680 54A52036 */  slwi      r5, r5, 4
/* 0A8684 800AB684 55270734 */  rlwinm    r7, r9, 0, 28, 26
/* 0A8688 800AB688 7CE52B78 */  or        r5, r7, r5
/* 0A868C 800AB68C 90A30000 */  stw       r5, 0x0(r3)
/* 0A8690 800AB690 38AD87C8 */  li        r5, D_8018B748@sda21
/* 0A8694 800AB694 7C0520AE */  lbzx      r0, r5, r4
/* 0A8698 800AB698 80E30000 */  lwz       r7, 0x0(r3)
/* 0A869C 800AB69C 54002834 */  slwi      r0, r0, 5
/* 0A86A0 800AB6A0 54E406EE */  rlwinm    r4, r7, 0, 27, 23
/* 0A86A4 800AB6A4 7C800378 */  or        r0, r4, r0
/* 0A86A8 800AB6A8 90030000 */  stw       r0, 0x0(r3)
/* 0A86AC 800AB6AC 4182000C */  beq       lbl_800AB6B8
/* 0A86B0 800AB6B0 38000000 */  li        r0, 0x0
/* 0A86B4 800AB6B4 48000008 */  b         lbl_800AB6BC
lbl_800AB6B8:
/* 0A86B8 800AB6B8 38000001 */  li        r0, 0x1
lbl_800AB6BC:
/* 0A86BC 800AB6BC 80830000 */  lwz       r4, 0x0(r3)
/* 0A86C0 800AB6C0 5400402E */  slwi      r0, r0, 8
/* 0A86C4 800AB6C4 5484062C */  rlwinm    r4, r4, 0, 24, 22
/* 0A86C8 800AB6C8 7C800378 */  or        r0, r4, r0
/* 0A86CC 800AB6CC 90030000 */  stw       r0, 0x0(r3)
/* 0A86D0 800AB6D0 55049818 */  slwi      r4, r8, 19
/* 0A86D4 800AB6D4 54C0A8D4 */  clrlslwi  r0, r6, 24, 21
/* 0A86D8 800AB6D8 80A30000 */  lwz       r5, 0x0(r3)
/* 0A86DC 800AB6DC 54A503DA */  rlwinm    r5, r5, 0, 15, 13
/* 0A86E0 800AB6E0 90A30000 */  stw       r5, 0x0(r3)
/* 0A86E4 800AB6E4 80A30000 */  lwz       r5, 0x0(r3)
/* 0A86E8 800AB6E8 54A50398 */  rlwinm    r5, r5, 0, 14, 12
/* 0A86EC 800AB6EC 90A30000 */  stw       r5, 0x0(r3)
/* 0A86F0 800AB6F0 80A30000 */  lwz       r5, 0x0(r3)
/* 0A86F4 800AB6F4 54A50354 */  rlwinm    r5, r5, 0, 13, 10
/* 0A86F8 800AB6F8 7CA42378 */  or        r4, r5, r4
/* 0A86FC 800AB6FC 90830000 */  stw       r4, 0x0(r3)
/* 0A8700 800AB700 80830000 */  lwz       r4, 0x0(r3)
/* 0A8704 800AB704 548402D2 */  rlwinm    r4, r4, 0, 11, 9
/* 0A8708 800AB708 7C800378 */  or        r0, r4, r0
/* 0A870C 800AB70C 90030000 */  stw       r0, 0x0(r3)
/* 0A8710 800AB710 C0028458 */  lfs       f0, D_8018C398@sda21(r0)
/* 0A8714 800AB714 FC010040 */  fcmpo     cr0, f1, f0
/* 0A8718 800AB718 4080000C */  bge       lbl_800AB724
/* 0A871C 800AB71C FC200090 */  fmr       f1, f0
/* 0A8720 800AB720 48000014 */  b         lbl_800AB734
lbl_800AB724:
/* 0A8724 800AB724 C002845C */  lfs       f0, D_8018C39C@sda21(r0)
/* 0A8728 800AB728 FC010040 */  fcmpo     cr0, f1, f0
/* 0A872C 800AB72C 40810008 */  ble       lbl_800AB734
/* 0A8730 800AB730 FC200090 */  fmr       f1, f0
lbl_800AB734:
/* 0A8734 800AB734 C0628438 */  lfs       f3, D_8018C378@sda21(r0)
/* 0A8738 800AB738 C0028458 */  lfs       f0, D_8018C398@sda21(r0)
/* 0A873C 800AB73C EC230072 */  fmuls     f1, f3, f1
/* 0A8740 800AB740 FC020040 */  fcmpo     cr0, f2, f0
/* 0A8744 800AB744 FC20081E */  fctiwz    f1, f1
/* 0A8748 800AB748 D8210030 */  stfd      f1, 0x30(r1)
/* 0A874C 800AB74C 80810034 */  lwz       r4, 0x34(r1)
/* 0A8750 800AB750 4080000C */  bge       lbl_800AB75C
/* 0A8754 800AB754 FC400090 */  fmr       f2, f0
/* 0A8758 800AB758 48000014 */  b         lbl_800AB76C
lbl_800AB75C:
/* 0A875C 800AB75C C002845C */  lfs       f0, D_8018C39C@sda21(r0)
/* 0A8760 800AB760 FC020040 */  fcmpo     cr0, f2, f0
/* 0A8764 800AB764 40810008 */  ble       lbl_800AB76C
/* 0A8768 800AB768 FC400090 */  fmr       f2, f0
lbl_800AB76C:
/* 0A876C 800AB76C 80030004 */  lwz       r0, 0x4(r3)
/* 0A8770 800AB770 5400002E */  clrrwi    r0, r0, 8
/* 0A8774 800AB774 5080063E */  rlwimi    r0, r4, 0, 24, 31
/* 0A8778 800AB778 90030004 */  stw       r0, 0x4(r3)
/* 0A877C 800AB77C C0028438 */  lfs       f0, D_8018C378@sda21(r0)
/* 0A8780 800AB780 80030004 */  lwz       r0, 0x4(r3)
/* 0A8784 800AB784 EC0000B2 */  fmuls     f0, f0, f2
/* 0A8788 800AB788 5404061E */  rlwinm    r4, r0, 0, 24, 15
/* 0A878C 800AB78C FC00001E */  fctiwz    f0, f0
/* 0A8790 800AB790 D8010030 */  stfd      f0, 0x30(r1)
/* 0A8794 800AB794 80010034 */  lwz       r0, 0x34(r1)
/* 0A8798 800AB798 5004442E */  rlwimi    r4, r0, 8, 16, 23
/* 0A879C 800AB79C 90830004 */  stw       r4, 0x4(r3)
/* 0A87A0 800AB7A0 38210038 */  addi      r1, r1, 0x38
/* 0A87A4 800AB7A4 4E800020 */  blr

glabel fn_800AB7A8
/* 0A87A8 800AB7A8 8003000C */  lwz       r0, 0xc(r3)
/* 0A87AC 800AB7AC 540329B4 */  clrlslwi  r3, r0, 11, 5
/* 0A87B0 800AB7B0 4E800020 */  blr

glabel fn_800AB7B4
/* 0A87B4 800AB7B4 80630014 */  lwz       r3, 0x14(r3)
/* 0A87B8 800AB7B8 4E800020 */  blr

glabel fn_800AB7BC
/* 0A87BC 800AB7BC 7C0802A6 */  mflr      r0
/* 0A87C0 800AB7C0 38ED87A0 */  li        r7, D_8018B720@sda21
/* 0A87C4 800AB7C4 90010004 */  stw       r0, 0x4(r1)
/* 0A87C8 800AB7C8 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A87CC 800AB7CC 93E10024 */  stw       r31, 0x24(r1)
/* 0A87D0 800AB7D0 3FE0CC01 */  lis       r31, 0xcc01
/* 0A87D4 800AB7D4 93C10020 */  stw       r30, 0x20(r1)
/* 0A87D8 800AB7D8 3BC00061 */  li        r30, 0x61
/* 0A87DC 800AB7DC 93A1001C */  stw       r29, 0x1c(r1)
/* 0A87E0 800AB7E0 3BA50000 */  addi      r29, r5, 0x0
/* 0A87E4 800AB7E4 38AD87B0 */  li        r5, D_8018B730@sda21
/* 0A87E8 800AB7E8 93810018 */  stw       r28, 0x18(r1)
/* 0A87EC 800AB7EC 7C7C1B78 */  mr        r28, r3
/* 0A87F0 800AB7F0 80C30000 */  lwz       r6, 0x0(r3)
/* 0A87F4 800AB7F4 386D8790 */  li        r3, D_8018B710@sda21
/* 0A87F8 800AB7F8 7C03E8AE */  lbzx      r0, r3, r29
/* 0A87FC 800AB7FC 386D8798 */  li        r3, D_8018B718@sda21
/* 0A8800 800AB800 5400C00E */  slwi      r0, r0, 24
/* 0A8804 800AB804 50C0023E */  rlwimi    r0, r6, 0, 8, 31
/* 0A8808 800AB808 901C0000 */  stw       r0, 0x0(r28)
/* 0A880C 800AB80C 38CD87A8 */  li        r6, D_8018B728@sda21
/* 0A8810 800AB810 7C03E8AE */  lbzx      r0, r3, r29
/* 0A8814 800AB814 386D87B8 */  li        r3, D_8018B738@sda21
/* 0A8818 800AB818 811C0004 */  lwz       r8, 0x4(r28)
/* 0A881C 800AB81C 5400C00E */  slwi      r0, r0, 24
/* 0A8820 800AB820 5100023E */  rlwimi    r0, r8, 0, 8, 31
/* 0A8824 800AB824 901C0004 */  stw       r0, 0x4(r28)
/* 0A8828 800AB828 7C07E8AE */  lbzx      r0, r7, r29
/* 0A882C 800AB82C 811C0008 */  lwz       r8, 0x8(r28)
/* 0A8830 800AB830 5400C00E */  slwi      r0, r0, 24
/* 0A8834 800AB834 5100023E */  rlwimi    r0, r8, 0, 8, 31
/* 0A8838 800AB838 901C0008 */  stw       r0, 0x8(r28)
/* 0A883C 800AB83C 7C06E8AE */  lbzx      r0, r6, r29
/* 0A8840 800AB840 80E40000 */  lwz       r7, 0x0(r4)
/* 0A8844 800AB844 5400C00E */  slwi      r0, r0, 24
/* 0A8848 800AB848 50E0023E */  rlwimi    r0, r7, 0, 8, 31
/* 0A884C 800AB84C 90040000 */  stw       r0, 0x0(r4)
/* 0A8850 800AB850 7C05E8AE */  lbzx      r0, r5, r29
/* 0A8854 800AB854 80C40004 */  lwz       r6, 0x4(r4)
/* 0A8858 800AB858 5400C00E */  slwi      r0, r0, 24
/* 0A885C 800AB85C 50C0023E */  rlwimi    r0, r6, 0, 8, 31
/* 0A8860 800AB860 90040004 */  stw       r0, 0x4(r4)
/* 0A8864 800AB864 7C03E8AE */  lbzx      r0, r3, r29
/* 0A8868 800AB868 80BC000C */  lwz       r5, 0xc(r28)
/* 0A886C 800AB86C 5400C00E */  slwi      r0, r0, 24
/* 0A8870 800AB870 50A0023E */  rlwimi    r0, r5, 0, 8, 31
/* 0A8874 800AB874 901C000C */  stw       r0, 0xc(r28)
/* 0A8878 800AB878 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0A887C 800AB87C 801C0000 */  lwz       r0, 0x0(r28)
/* 0A8880 800AB880 901F8000 */  stw       r0, -0x8000(r31)
/* 0A8884 800AB884 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0A8888 800AB888 801C0004 */  lwz       r0, 0x4(r28)
/* 0A888C 800AB88C 901F8000 */  stw       r0, -0x8000(r31)
/* 0A8890 800AB890 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0A8894 800AB894 801C0008 */  lwz       r0, 0x8(r28)
/* 0A8898 800AB898 901F8000 */  stw       r0, -0x8000(r31)
/* 0A889C 800AB89C 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0A88A0 800AB8A0 80040000 */  lwz       r0, 0x0(r4)
/* 0A88A4 800AB8A4 901F8000 */  stw       r0, -0x8000(r31)
/* 0A88A8 800AB8A8 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0A88AC 800AB8AC 80040004 */  lwz       r0, 0x4(r4)
/* 0A88B0 800AB8B0 901F8000 */  stw       r0, -0x8000(r31)
/* 0A88B4 800AB8B4 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0A88B8 800AB8B8 801C000C */  lwz       r0, 0xc(r28)
/* 0A88BC 800AB8BC 901F8000 */  stw       r0, -0x8000(r31)
/* 0A88C0 800AB8C0 881C001F */  lbz       r0, 0x1f(r28)
/* 0A88C4 800AB8C4 540007BD */  rlwinm.   r0, r0, 0, 30, 30
/* 0A88C8 800AB8C8 4082003C */  bne       lbl_800AB904
/* 0A88CC 800AB8CC 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A88D0 800AB8D0 807C0018 */  lwz       r3, 0x18(r28)
/* 0A88D4 800AB8D4 81840414 */  lwz       r12, 0x414(r4)
/* 0A88D8 800AB8D8 7D8803A6 */  mtlr      r12
/* 0A88DC 800AB8DC 4E800021 */  blrl
/* 0A88E0 800AB8E0 388D87C0 */  li        r4, D_8018B740@sda21
/* 0A88E4 800AB8E4 80A30004 */  lwz       r5, 0x4(r3)
/* 0A88E8 800AB8E8 7C04E8AE */  lbzx      r0, r4, r29
/* 0A88EC 800AB8EC 5400C00E */  slwi      r0, r0, 24
/* 0A88F0 800AB8F0 50A0023E */  rlwimi    r0, r5, 0, 8, 31
/* 0A88F4 800AB8F4 90030004 */  stw       r0, 0x4(r3)
/* 0A88F8 800AB8F8 9BDF8000 */  stb       r30, -0x8000(r31)
/* 0A88FC 800AB8FC 80030004 */  lwz       r0, 0x4(r3)
/* 0A8900 800AB900 901F8000 */  stw       r0, -0x8000(r31)
lbl_800AB904:
/* 0A8904 800AB904 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A8908 800AB908 57A4103A */  slwi      r4, r29, 2
/* 0A890C 800AB90C 807C0008 */  lwz       r3, 0x8(r28)
/* 0A8910 800AB910 38000000 */  li        r0, 0x0
/* 0A8914 800AB914 7C852214 */  add       r4, r5, r4
/* 0A8918 800AB918 9064045C */  stw       r3, 0x45c(r4)
/* 0A891C 800AB91C 807C0000 */  lwz       r3, 0x0(r28)
/* 0A8920 800AB920 9064047C */  stw       r3, 0x47c(r4)
/* 0A8924 800AB924 806504F4 */  lwz       r3, 0x4f4(r5)
/* 0A8928 800AB928 60630001 */  ori       r3, r3, 0x1
/* 0A892C 800AB92C 906504F4 */  stw       r3, 0x4f4(r5)
/* 0A8930 800AB930 B0050002 */  sth       r0, 0x2(r5)
/* 0A8934 800AB934 8001002C */  lwz       r0, 0x2c(r1)
/* 0A8938 800AB938 83E10024 */  lwz       r31, 0x24(r1)
/* 0A893C 800AB93C 83C10020 */  lwz       r30, 0x20(r1)
/* 0A8940 800AB940 83A1001C */  lwz       r29, 0x1c(r1)
/* 0A8944 800AB944 83810018 */  lwz       r28, 0x18(r1)
/* 0A8948 800AB948 38210028 */  addi      r1, r1, 0x28
/* 0A894C 800AB94C 7C0803A6 */  mtlr      r0
/* 0A8950 800AB950 4E800020 */  blr

glabel GXLoadTexObj
/* 0A8954 800AB954 7C0802A6 */  mflr      r0
/* 0A8958 800AB958 90010004 */  stw       r0, 0x4(r1)
/* 0A895C 800AB95C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A8960 800AB960 93E10014 */  stw       r31, 0x14(r1)
/* 0A8964 800AB964 3BE40000 */  addi      r31, r4, 0x0
/* 0A8968 800AB968 93C10010 */  stw       r30, 0x10(r1)
/* 0A896C 800AB96C 3BC30000 */  addi      r30, r3, 0x0
/* 0A8970 800AB970 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A8974 800AB974 81850410 */  lwz       r12, 0x410(r5)
/* 0A8978 800AB978 7D8803A6 */  mtlr      r12
/* 0A897C 800AB97C 4E800021 */  blrl
/* 0A8980 800AB980 38830000 */  addi      r4, r3, 0x0
/* 0A8984 800AB984 387E0000 */  addi      r3, r30, 0x0
/* 0A8988 800AB988 38BF0000 */  addi      r5, r31, 0x0
/* 0A898C 800AB98C 4BFFFE31 */  bl        fn_800AB7BC
/* 0A8990 800AB990 8001001C */  lwz       r0, 0x1c(r1)
/* 0A8994 800AB994 83E10014 */  lwz       r31, 0x14(r1)
/* 0A8998 800AB998 83C10010 */  lwz       r30, 0x10(r1)
/* 0A899C 800AB99C 38210018 */  addi      r1, r1, 0x18
/* 0A89A0 800AB9A0 7C0803A6 */  mtlr      r0
/* 0A89A4 800AB9A4 4E800020 */  blr

glabel fn_800AB9A8
/* 0A89A8 800AB9A8 38000000 */  li        r0, 0x0
/* 0A89AC 800AB9AC 90030000 */  stw       r0, 0x0(r3)
/* 0A89B0 800AB9B0 54A5502A */  slwi      r5, r5, 10
/* 0A89B4 800AB9B4 5480D9FE */  extrwi    r0, r4, 25, 2
/* 0A89B8 800AB9B8 80E30000 */  lwz       r7, 0x0(r3)
/* 0A89BC 800AB9BC 54E405A6 */  rlwinm    r4, r7, 0, 22, 19
/* 0A89C0 800AB9C0 7C842B78 */  or        r4, r4, r5
/* 0A89C4 800AB9C4 90830000 */  stw       r4, 0x0(r3)
/* 0A89C8 800AB9C8 80830004 */  lwz       r4, 0x4(r3)
/* 0A89CC 800AB9CC 54840014 */  clrrwi    r4, r4, 21
/* 0A89D0 800AB9D0 7C800378 */  or        r0, r4, r0
/* 0A89D4 800AB9D4 90030004 */  stw       r0, 0x4(r3)
/* 0A89D8 800AB9D8 80030004 */  lwz       r0, 0x4(r3)
/* 0A89DC 800AB9DC 5400023E */  clrlwi    r0, r0, 8
/* 0A89E0 800AB9E0 64006400 */  oris      r0, r0, 0x6400
/* 0A89E4 800AB9E4 90030004 */  stw       r0, 0x4(r3)
/* 0A89E8 800AB9E8 B0C30008 */  sth       r6, 0x8(r3)
/* 0A89EC 800AB9EC 4E800020 */  blr

glabel fn_800AB9F0
/* 0A89F0 800AB9F0 7C0802A6 */  mflr      r0
/* 0A89F4 800AB9F4 90010004 */  stw       r0, 0x4(r1)
/* 0A89F8 800AB9F8 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0A89FC 800AB9FC 93E1001C */  stw       r31, 0x1c(r1)
/* 0A8A00 800ABA00 93C10018 */  stw       r30, 0x18(r1)
/* 0A8A04 800ABA04 7C7E1B78 */  mr        r30, r3
/* 0A8A08 800ABA08 38640000 */  addi      r3, r4, 0x0
/* 0A8A0C 800ABA0C 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A8A10 800ABA10 81850414 */  lwz       r12, 0x414(r5)
/* 0A8A14 800ABA14 7D8803A6 */  mtlr      r12
/* 0A8A18 800ABA18 4E800021 */  blrl
/* 0A8A1C 800ABA1C 7C7F1B78 */  mr        r31, r3
/* 0A8A20 800ABA20 48000A0D */  bl        __GXFlushTextureState
/* 0A8A24 800ABA24 38800061 */  li        r4, 0x61
/* 0A8A28 800ABA28 3C60CC01 */  lis       r3, 0xcc01
/* 0A8A2C 800ABA2C 98838000 */  stb       r4, -0x8000(r3)
/* 0A8A30 800ABA30 801E0004 */  lwz       r0, 0x4(r30)
/* 0A8A34 800ABA34 90038000 */  stw       r0, -0x8000(r3)
/* 0A8A38 800ABA38 98838000 */  stb       r4, -0x8000(r3)
/* 0A8A3C 800ABA3C 801F0000 */  lwz       r0, 0x0(r31)
/* 0A8A40 800ABA40 90038000 */  stw       r0, -0x8000(r3)
/* 0A8A44 800ABA44 480009E9 */  bl        __GXFlushTextureState
/* 0A8A48 800ABA48 801F0000 */  lwz       r0, 0x0(r31)
/* 0A8A4C 800ABA4C 807E0000 */  lwz       r3, 0x0(r30)
/* 0A8A50 800ABA50 540005BE */  clrlwi    r0, r0, 22
/* 0A8A54 800ABA54 5060002A */  rlwimi    r0, r3, 0, 0, 21
/* 0A8A58 800ABA58 901E0000 */  stw       r0, 0x0(r30)
/* 0A8A5C 800ABA5C 807E0000 */  lwz       r3, 0x0(r30)
/* 0A8A60 800ABA60 801E0004 */  lwz       r0, 0x4(r30)
/* 0A8A64 800ABA64 907F0004 */  stw       r3, 0x4(r31)
/* 0A8A68 800ABA68 901F0008 */  stw       r0, 0x8(r31)
/* 0A8A6C 800ABA6C 801E0008 */  lwz       r0, 0x8(r30)
/* 0A8A70 800ABA70 901F000C */  stw       r0, 0xc(r31)
/* 0A8A74 800ABA74 80010024 */  lwz       r0, 0x24(r1)
/* 0A8A78 800ABA78 83E1001C */  lwz       r31, 0x1c(r1)
/* 0A8A7C 800ABA7C 83C10018 */  lwz       r30, 0x18(r1)
/* 0A8A80 800ABA80 38210020 */  addi      r1, r1, 0x20
/* 0A8A84 800ABA84 7C0803A6 */  mtlr      r0
/* 0A8A88 800ABA88 4E800020 */  blr

glabel GXInitTexCacheRegion
/* 0A8A8C 800ABA8C 2C060001 */  cmpwi     r6, 0x1
/* 0A8A90 800ABA90 41820028 */  beq       lbl_800ABAB8
/* 0A8A94 800ABA94 40800010 */  bge       lbl_800ABAA4
/* 0A8A98 800ABA98 2C060000 */  cmpwi     r6, 0x0
/* 0A8A9C 800ABA9C 40800014 */  bge       lbl_800ABAB0
/* 0A8AA0 800ABAA0 48000024 */  b         lbl_800ABAC4
lbl_800ABAA4:
/* 0A8AA4 800ABAA4 2C060003 */  cmpwi     r6, 0x3
/* 0A8AA8 800ABAA8 4080001C */  bge       lbl_800ABAC4
/* 0A8AAC 800ABAAC 48000014 */  b         lbl_800ABAC0
lbl_800ABAB0:
/* 0A8AB0 800ABAB0 39400003 */  li        r10, 0x3
/* 0A8AB4 800ABAB4 48000010 */  b         lbl_800ABAC4
lbl_800ABAB8:
/* 0A8AB8 800ABAB8 39400004 */  li        r10, 0x4
/* 0A8ABC 800ABABC 48000008 */  b         lbl_800ABAC4
lbl_800ABAC0:
/* 0A8AC0 800ABAC0 39400005 */  li        r10, 0x5
lbl_800ABAC4:
/* 0A8AC4 800ABAC4 38000000 */  li        r0, 0x0
/* 0A8AC8 800ABAC8 90030000 */  stw       r0, 0x0(r3)
/* 0A8ACC 800ABACC 54A6D97E */  srwi      r6, r5, 5
/* 0A8AD0 800ABAD0 55457820 */  slwi      r5, r10, 15
/* 0A8AD4 800ABAD4 81230000 */  lwz       r9, 0x0(r3)
/* 0A8AD8 800ABAD8 5540901A */  slwi      r0, r10, 18
/* 0A8ADC 800ABADC 2C080002 */  cmpwi     r8, 0x2
/* 0A8AE0 800ABAE0 55290020 */  clrrwi    r9, r9, 15
/* 0A8AE4 800ABAE4 7D263378 */  or        r6, r9, r6
/* 0A8AE8 800ABAE8 90C30000 */  stw       r6, 0x0(r3)
/* 0A8AEC 800ABAEC 80C30000 */  lwz       r6, 0x0(r3)
/* 0A8AF0 800ABAF0 54C6045A */  rlwinm    r6, r6, 0, 17, 13
/* 0A8AF4 800ABAF4 7CC52B78 */  or        r5, r6, r5
/* 0A8AF8 800ABAF8 90A30000 */  stw       r5, 0x0(r3)
/* 0A8AFC 800ABAFC 80A30000 */  lwz       r5, 0x0(r3)
/* 0A8B00 800ABB00 54A50394 */  rlwinm    r5, r5, 0, 14, 10
/* 0A8B04 800ABB04 7CA00378 */  or        r0, r5, r0
/* 0A8B08 800ABB08 90030000 */  stw       r0, 0x0(r3)
/* 0A8B0C 800ABB0C 80030000 */  lwz       r0, 0x0(r3)
/* 0A8B10 800ABB10 540002D2 */  rlwinm    r0, r0, 0, 11, 9
/* 0A8B14 800ABB14 90030000 */  stw       r0, 0x0(r3)
/* 0A8B18 800ABB18 41820034 */  beq       lbl_800ABB4C
/* 0A8B1C 800ABB1C 40800014 */  bge       lbl_800ABB30
/* 0A8B20 800ABB20 2C080000 */  cmpwi     r8, 0x0
/* 0A8B24 800ABB24 41820018 */  beq       lbl_800ABB3C
/* 0A8B28 800ABB28 4080001C */  bge       lbl_800ABB44
/* 0A8B2C 800ABB2C 4800002C */  b         lbl_800ABB58
lbl_800ABB30:
/* 0A8B30 800ABB30 2C080004 */  cmpwi     r8, 0x4
/* 0A8B34 800ABB34 40800024 */  bge       lbl_800ABB58
/* 0A8B38 800ABB38 4800001C */  b         lbl_800ABB54
lbl_800ABB3C:
/* 0A8B3C 800ABB3C 39400003 */  li        r10, 0x3
/* 0A8B40 800ABB40 48000018 */  b         lbl_800ABB58
lbl_800ABB44:
/* 0A8B44 800ABB44 39400004 */  li        r10, 0x4
/* 0A8B48 800ABB48 48000010 */  b         lbl_800ABB58
lbl_800ABB4C:
/* 0A8B4C 800ABB4C 39400005 */  li        r10, 0x5
/* 0A8B50 800ABB50 48000008 */  b         lbl_800ABB58
lbl_800ABB54:
/* 0A8B54 800ABB54 39400000 */  li        r10, 0x0
lbl_800ABB58:
/* 0A8B58 800ABB58 38000000 */  li        r0, 0x0
/* 0A8B5C 800ABB5C 90030004 */  stw       r0, 0x4(r3)
/* 0A8B60 800ABB60 54E7D97E */  srwi      r7, r7, 5
/* 0A8B64 800ABB64 55467820 */  slwi      r6, r10, 15
/* 0A8B68 800ABB68 81030004 */  lwz       r8, 0x4(r3)
/* 0A8B6C 800ABB6C 5545901A */  slwi      r5, r10, 18
/* 0A8B70 800ABB70 38000001 */  li        r0, 0x1
/* 0A8B74 800ABB74 55080020 */  clrrwi    r8, r8, 15
/* 0A8B78 800ABB78 7D073B78 */  or        r7, r8, r7
/* 0A8B7C 800ABB7C 90E30004 */  stw       r7, 0x4(r3)
/* 0A8B80 800ABB80 80E30004 */  lwz       r7, 0x4(r3)
/* 0A8B84 800ABB84 54E7045A */  rlwinm    r7, r7, 0, 17, 13
/* 0A8B88 800ABB88 7CE63378 */  or        r6, r7, r6
/* 0A8B8C 800ABB8C 90C30004 */  stw       r6, 0x4(r3)
/* 0A8B90 800ABB90 80C30004 */  lwz       r6, 0x4(r3)
/* 0A8B94 800ABB94 54C60394 */  rlwinm    r6, r6, 0, 14, 10
/* 0A8B98 800ABB98 7CC52B78 */  or        r5, r6, r5
/* 0A8B9C 800ABB9C 90A30004 */  stw       r5, 0x4(r3)
/* 0A8BA0 800ABBA0 9883000C */  stb       r4, 0xc(r3)
/* 0A8BA4 800ABBA4 9803000D */  stb       r0, 0xd(r3)
/* 0A8BA8 800ABBA8 4E800020 */  blr

glabel GXInitTlutRegion
/* 0A8BAC 800ABBAC 38000000 */  li        r0, 0x0
/* 0A8BB0 800ABBB0 90030000 */  stw       r0, 0x0(r3)
/* 0A8BB4 800ABBB4 3C04FFF8 */  subis     r0, r4, 0x8
/* 0A8BB8 800ABBB8 5404BA7E */  srwi      r4, r0, 9
/* 0A8BBC 800ABBBC 80C30000 */  lwz       r6, 0x0(r3)
/* 0A8BC0 800ABBC0 54A0502A */  slwi      r0, r5, 10
/* 0A8BC4 800ABBC4 54C5002A */  clrrwi    r5, r6, 10
/* 0A8BC8 800ABBC8 7CA42378 */  or        r4, r5, r4
/* 0A8BCC 800ABBCC 90830000 */  stw       r4, 0x0(r3)
/* 0A8BD0 800ABBD0 80830000 */  lwz       r4, 0x0(r3)
/* 0A8BD4 800ABBD4 54840594 */  rlwinm    r4, r4, 0, 22, 10
/* 0A8BD8 800ABBD8 7C800378 */  or        r0, r4, r0
/* 0A8BDC 800ABBDC 90030000 */  stw       r0, 0x0(r3)
/* 0A8BE0 800ABBE0 80030000 */  lwz       r0, 0x0(r3)
/* 0A8BE4 800ABBE4 5400023E */  clrlwi    r0, r0, 8
/* 0A8BE8 800ABBE8 64006500 */  oris      r0, r0, 0x6500
/* 0A8BEC 800ABBEC 90030000 */  stw       r0, 0x0(r3)
/* 0A8BF0 800ABBF0 4E800020 */  blr

glabel GXInvalidateTexAll
/* 0A8BF4 800ABBF4 7C0802A6 */  mflr      r0
/* 0A8BF8 800ABBF8 90010004 */  stw       r0, 0x4(r1)
/* 0A8BFC 800ABBFC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A8C00 800ABC00 4800082D */  bl        __GXFlushTextureState
/* 0A8C04 800ABC04 38C00061 */  li        r6, 0x61
/* 0A8C08 800ABC08 3C606600 */  lis       r3, 0x6600
/* 0A8C0C 800ABC0C 3CA0CC01 */  lis       r5, 0xcc01
/* 0A8C10 800ABC10 98C58000 */  stb       r6, -0x8000(r5)
/* 0A8C14 800ABC14 38831000 */  addi      r4, r3, 0x1000
/* 0A8C18 800ABC18 38031100 */  addi      r0, r3, 0x1100
/* 0A8C1C 800ABC1C 90858000 */  stw       r4, -0x8000(r5)
/* 0A8C20 800ABC20 98C58000 */  stb       r6, -0x8000(r5)
/* 0A8C24 800ABC24 90058000 */  stw       r0, -0x8000(r5)
/* 0A8C28 800ABC28 48000805 */  bl        __GXFlushTextureState
/* 0A8C2C 800ABC2C 8001000C */  lwz       r0, 0xc(r1)
/* 0A8C30 800ABC30 38210008 */  addi      r1, r1, 0x8
/* 0A8C34 800ABC34 7C0803A6 */  mtlr      r0
/* 0A8C38 800ABC38 4E800020 */  blr

glabel fn_800ABC3C
/* 0A8C3C 800ABC3C 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A8C40 800ABC40 84040410 */  lwzu      r0, 0x410(r4)
/* 0A8C44 800ABC44 90640000 */  stw       r3, 0x0(r4)
/* 0A8C48 800ABC48 7C030378 */  mr        r3, r0
/* 0A8C4C 800ABC4C 4E800020 */  blr

glabel fn_800ABC50
/* 0A8C50 800ABC50 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A8C54 800ABC54 84040414 */  lwzu      r0, 0x414(r4)
/* 0A8C58 800ABC58 90640000 */  stw       r3, 0x0(r4)
/* 0A8C5C 800ABC5C 7C030378 */  mr        r3, r0
/* 0A8C60 800ABC60 4E800020 */  blr

glabel fn_800ABC64
/* 0A8C64 800ABC64 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A8C68 800ABC68 5488103A */  slwi      r8, r4, 2
/* 0A8C6C 800ABC6C 5460103A */  slwi      r0, r3, 2
/* 0A8C70 800ABC70 7C650214 */  add       r3, r5, r0
/* 0A8C74 800ABC74 7CC54214 */  add       r6, r5, r8
/* 0A8C78 800ABC78 8083045C */  lwz       r4, 0x45c(r3)
/* 0A8C7C 800ABC7C 800600B8 */  lwz       r0, 0xb8(r6)
/* 0A8C80 800ABC80 7CE54214 */  add       r7, r5, r8
/* 0A8C84 800ABC84 7D254214 */  add       r9, r5, r8
/* 0A8C88 800ABC88 5400001E */  clrrwi    r0, r0, 16
/* 0A8C8C 800ABC8C 508005BE */  rlwimi    r0, r4, 0, 22, 31
/* 0A8C90 800ABC90 900600B8 */  stw       r0, 0xb8(r6)
/* 0A8C94 800ABC94 7D454214 */  add       r10, r5, r8
/* 0A8C98 800ABC98 800700D8 */  lwz       r0, 0xd8(r7)
/* 0A8C9C 800ABC9C 5400001E */  clrrwi    r0, r0, 16
/* 0A8CA0 800ABCA0 5080B5BE */  rlwimi    r0, r4, 22, 22, 31
/* 0A8CA4 800ABCA4 900700D8 */  stw       r0, 0xd8(r7)
/* 0A8CA8 800ABCA8 38E00061 */  li        r7, 0x61
/* 0A8CAC 800ABCAC 80C3047C */  lwz       r6, 0x47c(r3)
/* 0A8CB0 800ABCB0 806900B8 */  lwz       r3, 0xb8(r9)
/* 0A8CB4 800ABCB4 54C0F7BE */  extrwi    r0, r6, 2, 28
/* 0A8CB8 800ABCB8 20800001 */  subfic    r4, r0, 0x1
/* 0A8CBC 800ABCBC 54C007BE */  clrlwi    r0, r6, 30
/* 0A8CC0 800ABCC0 20000001 */  subfic    r0, r0, 0x1
/* 0A8CC4 800ABCC4 7C000034 */  cntlzw    r0, r0
/* 0A8CC8 800ABCC8 5463041C */  rlwinm    r3, r3, 0, 16, 14
/* 0A8CCC 800ABCCC 54005A1E */  rlwinm    r0, r0, 11, 8, 15
/* 0A8CD0 800ABCD0 7C600378 */  or        r0, r3, r0
/* 0A8CD4 800ABCD4 900900B8 */  stw       r0, 0xb8(r9)
/* 0A8CD8 800ABCD8 7C800034 */  cntlzw    r0, r4
/* 0A8CDC 800ABCDC 54005A1E */  rlwinm    r0, r0, 11, 8, 15
/* 0A8CE0 800ABCE0 806A00D8 */  lwz       r3, 0xd8(r10)
/* 0A8CE4 800ABCE4 3CC0CC01 */  lis       r6, 0xcc01
/* 0A8CE8 800ABCE8 7C854214 */  add       r4, r5, r8
/* 0A8CEC 800ABCEC 5463041C */  rlwinm    r3, r3, 0, 16, 14
/* 0A8CF0 800ABCF0 7C600378 */  or        r0, r3, r0
/* 0A8CF4 800ABCF4 900A00D8 */  stw       r0, 0xd8(r10)
/* 0A8CF8 800ABCF8 38000000 */  li        r0, 0x0
/* 0A8CFC 800ABCFC 98E68000 */  stb       r7, -0x8000(r6)
/* 0A8D00 800ABD00 806400B8 */  lwz       r3, 0xb8(r4)
/* 0A8D04 800ABD04 90668000 */  stw       r3, -0x8000(r6)
/* 0A8D08 800ABD08 98E68000 */  stb       r7, -0x8000(r6)
/* 0A8D0C 800ABD0C 806400D8 */  lwz       r3, 0xd8(r4)
/* 0A8D10 800ABD10 90668000 */  stw       r3, -0x8000(r6)
/* 0A8D14 800ABD14 B0050002 */  sth       r0, 0x2(r5)
/* 0A8D18 800ABD18 4E800020 */  blr

glabel fn_800ABD1C
/* 0A8D1C 800ABD1C 7C0802A6 */  mflr      r0
/* 0A8D20 800ABD20 90010004 */  stw       r0, 0x4(r1)
/* 0A8D24 800ABD24 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0A8D28 800ABD28 BF610014 */  stmw      r27, 0x14(r1)
/* 0A8D2C 800ABD2C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8D30 800ABD30 800304DC */  lwz       r0, 0x4dc(r3)
/* 0A8D34 800ABD34 280000FF */  cmplwi    r0, 0xff
/* 0A8D38 800ABD38 4182014C */  beq       lbl_800ABE84
/* 0A8D3C 800ABD3C 80030204 */  lwz       r0, 0x204(r3)
/* 0A8D40 800ABD40 3BE00000 */  li        r31, 0x0
/* 0A8D44 800ABD44 5403B73E */  extrwi    r3, r0, 4, 18
/* 0A8D48 800ABD48 3BC30001 */  addi      r30, r3, 0x1
/* 0A8D4C 800ABD4C 541B877E */  extrwi    r27, r0, 3, 13
/* 0A8D50 800ABD50 480000A0 */  b         lbl_800ABDF0
lbl_800ABD54:
/* 0A8D54 800ABD54 2C1F0002 */  cmpwi     r31, 0x2
/* 0A8D58 800ABD58 4182004C */  beq       lbl_800ABDA4
/* 0A8D5C 800ABD5C 40800014 */  bge       lbl_800ABD70
/* 0A8D60 800ABD60 2C1F0000 */  cmpwi     r31, 0x0
/* 0A8D64 800ABD64 41820018 */  beq       lbl_800ABD7C
/* 0A8D68 800ABD68 40800028 */  bge       lbl_800ABD90
/* 0A8D6C 800ABD6C 4800005C */  b         lbl_800ABDC8
lbl_800ABD70:
/* 0A8D70 800ABD70 2C1F0004 */  cmpwi     r31, 0x4
/* 0A8D74 800ABD74 40800054 */  bge       lbl_800ABDC8
/* 0A8D78 800ABD78 48000040 */  b         lbl_800ABDB8
lbl_800ABD7C:
/* 0A8D7C 800ABD7C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8D80 800ABD80 80030120 */  lwz       r0, 0x120(r3)
/* 0A8D84 800ABD84 541D077E */  clrlwi    r29, r0, 29
/* 0A8D88 800ABD88 541CEF7E */  extrwi    r28, r0, 3, 26
/* 0A8D8C 800ABD8C 4800003C */  b         lbl_800ABDC8
lbl_800ABD90:
/* 0A8D90 800ABD90 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8D94 800ABD94 80030120 */  lwz       r0, 0x120(r3)
/* 0A8D98 800ABD98 541DD77E */  extrwi    r29, r0, 3, 23
/* 0A8D9C 800ABD9C 541CBF7E */  extrwi    r28, r0, 3, 20
/* 0A8DA0 800ABDA0 48000028 */  b         lbl_800ABDC8
lbl_800ABDA4:
/* 0A8DA4 800ABDA4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8DA8 800ABDA8 80030120 */  lwz       r0, 0x120(r3)
/* 0A8DAC 800ABDAC 541DA77E */  extrwi    r29, r0, 3, 17
/* 0A8DB0 800ABDB0 541C8F7E */  extrwi    r28, r0, 3, 14
/* 0A8DB4 800ABDB4 48000014 */  b         lbl_800ABDC8
lbl_800ABDB8:
/* 0A8DB8 800ABDB8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8DBC 800ABDBC 80030120 */  lwz       r0, 0x120(r3)
/* 0A8DC0 800ABDC0 541D777E */  extrwi    r29, r0, 3, 11
/* 0A8DC4 800ABDC4 541C5F7E */  extrwi    r28, r0, 3, 8
lbl_800ABDC8:
/* 0A8DC8 800ABDC8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A8DCC 800ABDCC 38000001 */  li        r0, 0x1
/* 0A8DD0 800ABDD0 7C00E030 */  slw       r0, r0, r28
/* 0A8DD4 800ABDD4 806304DC */  lwz       r3, 0x4dc(r3)
/* 0A8DD8 800ABDD8 7C600039 */  and.      r0, r3, r0
/* 0A8DDC 800ABDDC 40820010 */  bne       lbl_800ABDEC
/* 0A8DE0 800ABDE0 387D0000 */  addi      r3, r29, 0x0
/* 0A8DE4 800ABDE4 389C0000 */  addi      r4, r28, 0x0
/* 0A8DE8 800ABDE8 4BFFFE7D */  bl        fn_800ABC64
lbl_800ABDEC:
/* 0A8DEC 800ABDEC 3BFF0001 */  addi      r31, r31, 0x1
lbl_800ABDF0:
/* 0A8DF0 800ABDF0 7C1FD840 */  cmplw     r31, r27
/* 0A8DF4 800ABDF4 4180FF60 */  blt       lbl_800ABD54
/* 0A8DF8 800ABDF8 3BE00000 */  li        r31, 0x0
/* 0A8DFC 800ABDFC 3B7F0000 */  addi      r27, r31, 0x0
/* 0A8E00 800ABE00 4800007C */  b         lbl_800ABE7C
lbl_800ABE04:
/* 0A8E04 800ABE04 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A8E08 800ABE08 387B049C */  addi      r3, r27, 0x49c
/* 0A8E0C 800ABE0C 57E4083A */  extlwi    r4, r31, 30, 1
/* 0A8E10 800ABE10 7C65182E */  lwzx      r3, r5, r3
/* 0A8E14 800ABE14 57E007FF */  clrlwi.   r0, r31, 31
/* 0A8E18 800ABE18 38840100 */  addi      r4, r4, 0x100
/* 0A8E1C 800ABE1C 7C852214 */  add       r4, r5, r4
/* 0A8E20 800ABE20 547D062C */  rlwinm    r29, r3, 0, 24, 22
/* 0A8E24 800ABE24 41820010 */  beq       lbl_800ABE34
/* 0A8E28 800ABE28 80040000 */  lwz       r0, 0x0(r4)
/* 0A8E2C 800ABE2C 541C8F7E */  extrwi    r28, r0, 3, 14
/* 0A8E30 800ABE30 4800000C */  b         lbl_800ABE3C
lbl_800ABE34:
/* 0A8E34 800ABE34 80040000 */  lwz       r0, 0x0(r4)
/* 0A8E38 800ABE38 541CEF7E */  extrwi    r28, r0, 3, 26
lbl_800ABE3C:
/* 0A8E3C 800ABE3C 281D00FF */  cmplwi    r29, 0xff
/* 0A8E40 800ABE40 41820034 */  beq       lbl_800ABE74
/* 0A8E44 800ABE44 38800001 */  li        r4, 0x1
/* 0A8E48 800ABE48 806504DC */  lwz       r3, 0x4dc(r5)
/* 0A8E4C 800ABE4C 7C80E030 */  slw       r0, r4, r28
/* 0A8E50 800ABE50 7C600039 */  and.      r0, r3, r0
/* 0A8E54 800ABE54 40820020 */  bne       lbl_800ABE74
/* 0A8E58 800ABE58 806504E0 */  lwz       r3, 0x4e0(r5)
/* 0A8E5C 800ABE5C 7C80F830 */  slw       r0, r4, r31
/* 0A8E60 800ABE60 7C600039 */  and.      r0, r3, r0
/* 0A8E64 800ABE64 41820010 */  beq       lbl_800ABE74
/* 0A8E68 800ABE68 387D0000 */  addi      r3, r29, 0x0
/* 0A8E6C 800ABE6C 389C0000 */  addi      r4, r28, 0x0
/* 0A8E70 800ABE70 4BFFFDF5 */  bl        fn_800ABC64
lbl_800ABE74:
/* 0A8E74 800ABE74 3B7B0004 */  addi      r27, r27, 0x4
/* 0A8E78 800ABE78 3BFF0001 */  addi      r31, r31, 0x1
lbl_800ABE7C:
/* 0A8E7C 800ABE7C 7C1FF040 */  cmplw     r31, r30
/* 0A8E80 800ABE80 4180FF84 */  blt       lbl_800ABE04
lbl_800ABE84:
/* 0A8E84 800ABE84 BB610014 */  lmw       r27, 0x14(r1)
/* 0A8E88 800ABE88 8001002C */  lwz       r0, 0x2c(r1)
/* 0A8E8C 800ABE8C 38210028 */  addi      r1, r1, 0x28
/* 0A8E90 800ABE90 7C0803A6 */  mtlr      r0
/* 0A8E94 800ABE94 4E800020 */  blr

glabel __GXSetTmemConfig
/* 0A8E98 800ABE98 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0A8E9C 800ABE9C 2C030001 */  cmpwi     r3, 0x1
/* 0A8EA0 800ABEA0 93E10014 */  stw       r31, 0x14(r1)
/* 0A8EA4 800ABEA4 93C10010 */  stw       r30, 0x10(r1)
/* 0A8EA8 800ABEA8 4182000C */  beq       lbl_800ABEB4
/* 0A8EAC 800ABEAC 40800114 */  bge       lbl_800ABFC0
/* 0A8EB0 800ABEB0 48000110 */  b         lbl_800ABFC0
lbl_800ABEB4:
/* 0A8EB4 800ABEB4 38000061 */  li        r0, 0x61
/* 0A8EB8 800ABEB8 3C60CC01 */  lis       r3, 0xcc01
/* 0A8EBC 800ABEBC 3C808C0E */  lis       r4, 0x8c0e
/* 0A8EC0 800ABEC0 98038000 */  stb       r0, -0x8000(r3)
/* 0A8EC4 800ABEC4 38848000 */  addi      r4, r4, -0x8000
/* 0A8EC8 800ABEC8 90838000 */  stw       r4, -0x8000(r3)
/* 0A8ECC 800ABECC 3C80900E */  lis       r4, 0x900e
/* 0A8ED0 800ABED0 3CE08D0E */  lis       r7, 0x8d0e
/* 0A8ED4 800ABED4 98038000 */  stb       r0, -0x8000(r3)
/* 0A8ED8 800ABED8 3884C000 */  subi      r4, r4, 0x4000
/* 0A8EDC 800ABEDC 3CC0910E */  lis       r6, 0x910e
/* 0A8EE0 800ABEE0 90838000 */  stw       r4, -0x8000(r3)
/* 0A8EE4 800ABEE4 3CA08E0E */  lis       r5, 0x8e0e
/* 0A8EE8 800ABEE8 3C80920E */  lis       r4, 0x920e
/* 0A8EEC 800ABEEC 98038000 */  stb       r0, -0x8000(r3)
/* 0A8EF0 800ABEF0 38E78800 */  subi      r7, r7, 0x7800
/* 0A8EF4 800ABEF4 3FC08F0E */  lis       r30, 0x8f0e
/* 0A8EF8 800ABEF8 90E38000 */  stw       r7, -0x8000(r3)
/* 0A8EFC 800ABEFC 3D80930E */  lis       r12, 0x930e
/* 0A8F00 800ABF00 3D60AC0E */  lis       r11, 0xac0e
/* 0A8F04 800ABF04 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F08 800ABF08 38C6C800 */  subi      r6, r6, 0x3800
/* 0A8F0C 800ABF0C 3D40B00E */  lis       r10, 0xb00e
/* 0A8F10 800ABF10 90C38000 */  stw       r6, -0x8000(r3)
/* 0A8F14 800ABF14 3D20AD0E */  lis       r9, 0xad0e
/* 0A8F18 800ABF18 3D00B10E */  lis       r8, 0xb10e
/* 0A8F1C 800ABF1C 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F20 800ABF20 38A59000 */  subi      r5, r5, 0x7000
/* 0A8F24 800ABF24 3CE0AE0E */  lis       r7, 0xae0e
/* 0A8F28 800ABF28 90A38000 */  stw       r5, -0x8000(r3)
/* 0A8F2C 800ABF2C 3CC0B20E */  lis       r6, 0xb20e
/* 0A8F30 800ABF30 3CA0AF0E */  lis       r5, 0xaf0e
/* 0A8F34 800ABF34 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F38 800ABF38 3BE4D000 */  subi      r31, r4, 0x3000
/* 0A8F3C 800ABF3C 3C80B30E */  lis       r4, 0xb30e
/* 0A8F40 800ABF40 93E38000 */  stw       r31, -0x8000(r3)
/* 0A8F44 800ABF44 3BDE9800 */  subi      r30, r30, 0x6800
/* 0A8F48 800ABF48 398CD800 */  subi      r12, r12, 0x2800
/* 0A8F4C 800ABF4C 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F50 800ABF50 396BA000 */  subi      r11, r11, 0x6000
/* 0A8F54 800ABF54 394AE000 */  subi      r10, r10, 0x2000
/* 0A8F58 800ABF58 93C38000 */  stw       r30, -0x8000(r3)
/* 0A8F5C 800ABF5C 3929A800 */  subi      r9, r9, 0x5800
/* 0A8F60 800ABF60 3908E800 */  subi      r8, r8, 0x1800
/* 0A8F64 800ABF64 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F68 800ABF68 38E7B000 */  subi      r7, r7, 0x5000
/* 0A8F6C 800ABF6C 38C6F000 */  subi      r6, r6, 0x1000
/* 0A8F70 800ABF70 91838000 */  stw       r12, -0x8000(r3)
/* 0A8F74 800ABF74 38A5B800 */  subi      r5, r5, 0x4800
/* 0A8F78 800ABF78 3884F800 */  subi      r4, r4, 0x800
/* 0A8F7C 800ABF7C 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F80 800ABF80 91638000 */  stw       r11, -0x8000(r3)
/* 0A8F84 800ABF84 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F88 800ABF88 91438000 */  stw       r10, -0x8000(r3)
/* 0A8F8C 800ABF8C 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F90 800ABF90 91238000 */  stw       r9, -0x8000(r3)
/* 0A8F94 800ABF94 98038000 */  stb       r0, -0x8000(r3)
/* 0A8F98 800ABF98 91038000 */  stw       r8, -0x8000(r3)
/* 0A8F9C 800ABF9C 98038000 */  stb       r0, -0x8000(r3)
/* 0A8FA0 800ABFA0 90E38000 */  stw       r7, -0x8000(r3)
/* 0A8FA4 800ABFA4 98038000 */  stb       r0, -0x8000(r3)
/* 0A8FA8 800ABFA8 90C38000 */  stw       r6, -0x8000(r3)
/* 0A8FAC 800ABFAC 98038000 */  stb       r0, -0x8000(r3)
/* 0A8FB0 800ABFB0 90A38000 */  stw       r5, -0x8000(r3)
/* 0A8FB4 800ABFB4 98038000 */  stb       r0, -0x8000(r3)
/* 0A8FB8 800ABFB8 90838000 */  stw       r4, -0x8000(r3)
/* 0A8FBC 800ABFBC 4800010C */  b         lbl_800AC0C8
lbl_800ABFC0:
/* 0A8FC0 800ABFC0 38000061 */  li        r0, 0x61
/* 0A8FC4 800ABFC4 3C60CC01 */  lis       r3, 0xcc01
/* 0A8FC8 800ABFC8 3C808C0E */  lis       r4, 0x8c0e
/* 0A8FCC 800ABFCC 98038000 */  stb       r0, -0x8000(r3)
/* 0A8FD0 800ABFD0 38848000 */  addi      r4, r4, -0x8000
/* 0A8FD4 800ABFD4 90838000 */  stw       r4, -0x8000(r3)
/* 0A8FD8 800ABFD8 3C80900E */  lis       r4, 0x900e
/* 0A8FDC 800ABFDC 3CE08D0E */  lis       r7, 0x8d0e
/* 0A8FE0 800ABFE0 98038000 */  stb       r0, -0x8000(r3)
/* 0A8FE4 800ABFE4 3884C000 */  subi      r4, r4, 0x4000
/* 0A8FE8 800ABFE8 3CC0910E */  lis       r6, 0x910e
/* 0A8FEC 800ABFEC 90838000 */  stw       r4, -0x8000(r3)
/* 0A8FF0 800ABFF0 3CA08E0E */  lis       r5, 0x8e0e
/* 0A8FF4 800ABFF4 3C80920E */  lis       r4, 0x920e
/* 0A8FF8 800ABFF8 98038000 */  stb       r0, -0x8000(r3)
/* 0A8FFC 800ABFFC 38E78400 */  subi      r7, r7, 0x7c00
/* 0A9000 800AC000 3FE08F0E */  lis       r31, 0x8f0e
/* 0A9004 800AC004 90E38000 */  stw       r7, -0x8000(r3)
/* 0A9008 800AC008 3D80930E */  lis       r12, 0x930e
/* 0A900C 800AC00C 3D60AC0E */  lis       r11, 0xac0e
/* 0A9010 800AC010 98038000 */  stb       r0, -0x8000(r3)
/* 0A9014 800AC014 38C6C400 */  subi      r6, r6, 0x3c00
/* 0A9018 800AC018 3D40B00E */  lis       r10, 0xb00e
/* 0A901C 800AC01C 90C38000 */  stw       r6, -0x8000(r3)
/* 0A9020 800AC020 3D20AD0E */  lis       r9, 0xad0e
/* 0A9024 800AC024 3D00B10E */  lis       r8, 0xb10e
/* 0A9028 800AC028 98038000 */  stb       r0, -0x8000(r3)
/* 0A902C 800AC02C 38A58800 */  subi      r5, r5, 0x7800
/* 0A9030 800AC030 3CE0AE0E */  lis       r7, 0xae0e
/* 0A9034 800AC034 90A38000 */  stw       r5, -0x8000(r3)
/* 0A9038 800AC038 3CC0B20E */  lis       r6, 0xb20e
/* 0A903C 800AC03C 3CA0AF0E */  lis       r5, 0xaf0e
/* 0A9040 800AC040 98038000 */  stb       r0, -0x8000(r3)
/* 0A9044 800AC044 3BC4C800 */  subi      r30, r4, 0x3800
/* 0A9048 800AC048 3C80B30E */  lis       r4, 0xb30e
/* 0A904C 800AC04C 93C38000 */  stw       r30, -0x8000(r3)
/* 0A9050 800AC050 3BFF8C00 */  subi      r31, r31, 0x7400
/* 0A9054 800AC054 398CCC00 */  subi      r12, r12, 0x3400
/* 0A9058 800AC058 98038000 */  stb       r0, -0x8000(r3)
/* 0A905C 800AC05C 396B9000 */  subi      r11, r11, 0x7000
/* 0A9060 800AC060 394AD000 */  subi      r10, r10, 0x3000
/* 0A9064 800AC064 93E38000 */  stw       r31, -0x8000(r3)
/* 0A9068 800AC068 39299400 */  subi      r9, r9, 0x6c00
/* 0A906C 800AC06C 3908D400 */  subi      r8, r8, 0x2c00
/* 0A9070 800AC070 98038000 */  stb       r0, -0x8000(r3)
/* 0A9074 800AC074 38E79800 */  subi      r7, r7, 0x6800
/* 0A9078 800AC078 38C6D800 */  subi      r6, r6, 0x2800
/* 0A907C 800AC07C 91838000 */  stw       r12, -0x8000(r3)
/* 0A9080 800AC080 38A59C00 */  subi      r5, r5, 0x6400
/* 0A9084 800AC084 3884DC00 */  subi      r4, r4, 0x2400
/* 0A9088 800AC088 98038000 */  stb       r0, -0x8000(r3)
/* 0A908C 800AC08C 91638000 */  stw       r11, -0x8000(r3)
/* 0A9090 800AC090 98038000 */  stb       r0, -0x8000(r3)
/* 0A9094 800AC094 91438000 */  stw       r10, -0x8000(r3)
/* 0A9098 800AC098 98038000 */  stb       r0, -0x8000(r3)
/* 0A909C 800AC09C 91238000 */  stw       r9, -0x8000(r3)
/* 0A90A0 800AC0A0 98038000 */  stb       r0, -0x8000(r3)
/* 0A90A4 800AC0A4 91038000 */  stw       r8, -0x8000(r3)
/* 0A90A8 800AC0A8 98038000 */  stb       r0, -0x8000(r3)
/* 0A90AC 800AC0AC 90E38000 */  stw       r7, -0x8000(r3)
/* 0A90B0 800AC0B0 98038000 */  stb       r0, -0x8000(r3)
/* 0A90B4 800AC0B4 90C38000 */  stw       r6, -0x8000(r3)
/* 0A90B8 800AC0B8 98038000 */  stb       r0, -0x8000(r3)
/* 0A90BC 800AC0BC 90A38000 */  stw       r5, -0x8000(r3)
/* 0A90C0 800AC0C0 98038000 */  stb       r0, -0x8000(r3)
/* 0A90C4 800AC0C4 90838000 */  stw       r4, -0x8000(r3)
lbl_800AC0C8:
/* 0A90C8 800AC0C8 83E10014 */  lwz       r31, 0x14(r1)
/* 0A90CC 800AC0CC 83C10010 */  lwz       r30, 0x10(r1)
/* 0A90D0 800AC0D0 38210018 */  addi      r1, r1, 0x18
/* 0A90D4 800AC0D4 4E800020 */  blr

# 0x800F32F8 - 0x800F3428
.section .data, "wa"

.balign 8

jtbl_800F32F8:
	.long lbl_800AB2B0
	.long lbl_800AB2BC
	.long lbl_800AB2BC
	.long lbl_800AB2C8
	.long lbl_800AB2C8
	.long lbl_800AB2C8
	.long lbl_800AB2C8
	.long lbl_800AB2D4
	.long lbl_800AB2B0
	.long lbl_800AB2BC
	.long lbl_800AB2C8
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2B0
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2BC
	.long lbl_800AB2D4
	.long lbl_800AB2C8
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2C8
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2B0
	.long lbl_800AB2D4
	.long lbl_800AB2BC
	.long lbl_800AB2C8
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2BC
	.long lbl_800AB2BC
	.long lbl_800AB2BC
	.long lbl_800AB2BC
	.long lbl_800AB2C8
	.long lbl_800AB2C8
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2B0
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2D4
	.long lbl_800AB2BC
	.long lbl_800AB2BC
	.long lbl_800AB2D4
	.long lbl_800AB2C8

jtbl_800F33EC:
	.long GXInitTexObj, lbl_800AB500
	.long GXInitTexObj, lbl_800AB514
	.long GXInitTexObj, lbl_800AB514
	.long GXInitTexObj, lbl_800AB528
	.long GXInitTexObj, lbl_800AB528
	.long GXInitTexObj, lbl_800AB528
	.long GXInitTexObj, lbl_800AB53C
	.long GXInitTexObj, lbl_800AB564
	.long GXInitTexObj, lbl_800AB500
	.long GXInitTexObj, lbl_800AB514
	.long GXInitTexObj, lbl_800AB528
	.long GXInitTexObj, lbl_800AB564
	.long GXInitTexObj, lbl_800AB564
	.long GXInitTexObj, lbl_800AB564
	.long GXInitTexObj, lbl_800AB550

# 0x8018B710 - 0x8018B750
.section .sdata, "wa"

glabel D_8018B710
	.long 0x80818283
	.long 0xA0A1A2A3

glabel D_8018B718
	.long 0x84858687
	.long 0xA4A5A6A7

glabel D_8018B720
	.long 0x88898A8B
	.long 0xA8A9AAAB

glabel D_8018B728
	.long 0x8C8D8E8F
	.long 0xACADAEAF

glabel D_8018B730
	.long 0x90919293
	.long 0xB0B1B2B3

glabel D_8018B738
	.long 0x94959697
	.long 0xB4B5B6B7

glabel D_8018B740
	.long 0x98999A9B
	.long 0xB8B9BABB

glabel D_8018B748
	.long 0x00040105
	.long 0x02060000

# 0x8018C378 - 0x8018C3A0
.section .sdata2, "a"

glabel D_8018C378
	.float 16

glabel gap_09_8018C37C_sdata2
.hidden gap_09_8018C37C_sdata2
	.long 0x00000000

glabel D_8018C380
	.double 4503599627370496

glabel D_8018C388
	.float -4

glabel D_8018C38C
	.float 4

glabel D_8018C390
	.float 3.99

glabel D_8018C394
	.float 32

glabel D_8018C398
	.float 0

glabel D_8018C39C
	.float 10
