# CARDFormat.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BE31C - 0x800BEB00

glabel FormatCallback
/* 0BB31C 800BE31C 7C0802A6 */  mflr      r0
/* 0BB320 800BE320 90010004 */  stw       r0, 0x4(r1)
/* 0BB324 800BE324 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0BB328 800BE328 93E1001C */  stw       r31, 0x1c(r1)
/* 0BB32C 800BE32C 93C10018 */  stw       r30, 0x18(r1)
/* 0BB330 800BE330 3BC30000 */  addi      r30, r3, 0x0
/* 0BB334 800BE334 3C608019 */  lis       r3, D_80188A70@ha
/* 0BB338 800BE338 93A10014 */  stw       r29, 0x14(r1)
/* 0BB33C 800BE33C 1CBE0110 */  mulli     r5, r30, 0x110
/* 0BB340 800BE340 93810010 */  stw       r28, 0x10(r1)
/* 0BB344 800BE344 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BB348 800BE348 7C9C2379 */  mr.       r28, r4
/* 0BB34C 800BE34C 7FE02A14 */  add       r31, r0, r5
/* 0BB350 800BE350 418000C4 */  blt       lbl_800BE414
/* 0BB354 800BE354 807F0028 */  lwz       r3, 0x28(r31)
/* 0BB358 800BE358 38030001 */  addi      r0, r3, 0x1
/* 0BB35C 800BE35C 901F0028 */  stw       r0, 0x28(r31)
/* 0BB360 800BE360 809F0028 */  lwz       r4, 0x28(r31)
/* 0BB364 800BE364 2C040005 */  cmpwi     r4, 0x5
/* 0BB368 800BE368 40800028 */  bge       lbl_800BE390
/* 0BB36C 800BE36C 801F000C */  lwz       r0, 0xc(r31)
/* 0BB370 800BE370 3C60800C */  lis       r3, FormatCallback@ha
/* 0BB374 800BE374 38A3E31C */  addi      r5, r3, FormatCallback@l
/* 0BB378 800BE378 7C8021D6 */  mullw     r4, r0, r4
/* 0BB37C 800BE37C 387E0000 */  addi      r3, r30, 0x0
/* 0BB380 800BE380 4BFFC4C5 */  bl        __CARDEraseSector
/* 0BB384 800BE384 7C7C1B79 */  mr.       r28, r3
/* 0BB388 800BE388 4180008C */  blt       lbl_800BE414
/* 0BB38C 800BE38C 480000B4 */  b         lbl_800BE440
lbl_800BE390:
/* 0BB390 800BE390 2C04000A */  cmpwi     r4, 0xa
/* 0BB394 800BE394 4080003C */  bge       lbl_800BE3D0
/* 0BB398 800BE398 801F000C */  lwz       r0, 0xc(r31)
/* 0BB39C 800BE39C 38C4FFFB */  subi      r6, r4, 0x5
/* 0BB3A0 800BE3A0 3C60800C */  lis       r3, FormatCallback@ha
/* 0BB3A4 800BE3A4 80BF0080 */  lwz       r5, 0x80(r31)
/* 0BB3A8 800BE3A8 7C8031D6 */  mullw     r4, r0, r6
/* 0BB3AC 800BE3AC 54C06824 */  slwi      r0, r6, 13
/* 0BB3B0 800BE3B0 38E3E31C */  addi      r7, r3, FormatCallback@l
/* 0BB3B4 800BE3B4 7CC50214 */  add       r6, r5, r0
/* 0BB3B8 800BE3B8 387E0000 */  addi      r3, r30, 0x0
/* 0BB3BC 800BE3BC 38A02000 */  li        r5, 0x2000
/* 0BB3C0 800BE3C0 4BFFDE51 */  bl        __CARDWrite
/* 0BB3C4 800BE3C4 7C7C1B79 */  mr.       r28, r3
/* 0BB3C8 800BE3C8 4180004C */  blt       lbl_800BE414
/* 0BB3CC 800BE3CC 48000074 */  b         lbl_800BE440
lbl_800BE3D0:
/* 0BB3D0 800BE3D0 807F0080 */  lwz       r3, 0x80(r31)
/* 0BB3D4 800BE3D4 38A02000 */  li        r5, 0x2000
/* 0BB3D8 800BE3D8 38032000 */  addi      r0, r3, 0x2000
/* 0BB3DC 800BE3DC 901F0084 */  stw       r0, 0x84(r31)
/* 0BB3E0 800BE3E0 809F0080 */  lwz       r4, 0x80(r31)
/* 0BB3E4 800BE3E4 807F0084 */  lwz       r3, 0x84(r31)
/* 0BB3E8 800BE3E8 38844000 */  addi      r4, r4, 0x4000
/* 0BB3EC 800BE3EC 4BF47029 */  bl        memcpy
/* 0BB3F0 800BE3F0 807F0080 */  lwz       r3, 0x80(r31)
/* 0BB3F4 800BE3F4 38A02000 */  li        r5, 0x2000
/* 0BB3F8 800BE3F8 38036000 */  addi      r0, r3, 0x6000
/* 0BB3FC 800BE3FC 901F0088 */  stw       r0, 0x88(r31)
/* 0BB400 800BE400 809F0080 */  lwz       r4, 0x80(r31)
/* 0BB404 800BE404 807F0088 */  lwz       r3, 0x88(r31)
/* 0BB408 800BE408 3C840001 */  addis     r4, r4, 0x1
/* 0BB40C 800BE40C 38848000 */  addi      r4, r4, -0x8000
/* 0BB410 800BE410 4BF47005 */  bl        memcpy
lbl_800BE414:
/* 0BB414 800BE414 83BF00D0 */  lwz       r29, 0xd0(r31)
/* 0BB418 800BE418 38000000 */  li        r0, 0x0
/* 0BB41C 800BE41C 387F0000 */  addi      r3, r31, 0x0
/* 0BB420 800BE420 901F00D0 */  stw       r0, 0xd0(r31)
/* 0BB424 800BE424 7F84E378 */  mr        r4, r28
/* 0BB428 800BE428 4BFFC6A1 */  bl        __CARDPutControlBlock
/* 0BB42C 800BE42C 399D0000 */  addi      r12, r29, 0x0
/* 0BB430 800BE430 7D8803A6 */  mtlr      r12
/* 0BB434 800BE434 387E0000 */  addi      r3, r30, 0x0
/* 0BB438 800BE438 389C0000 */  addi      r4, r28, 0x0
/* 0BB43C 800BE43C 4E800021 */  blrl
lbl_800BE440:
/* 0BB440 800BE440 80010024 */  lwz       r0, 0x24(r1)
/* 0BB444 800BE444 83E1001C */  lwz       r31, 0x1c(r1)
/* 0BB448 800BE448 83C10018 */  lwz       r30, 0x18(r1)
/* 0BB44C 800BE44C 83A10014 */  lwz       r29, 0x14(r1)
/* 0BB450 800BE450 83810010 */  lwz       r28, 0x10(r1)
/* 0BB454 800BE454 38210020 */  addi      r1, r1, 0x20
/* 0BB458 800BE458 7C0803A6 */  mtlr      r0
/* 0BB45C 800BE45C 4E800020 */  blr

glabel __CARDFormatRegionAsync
/* 0BB460 800BE460 7C0802A6 */  mflr      r0
/* 0BB464 800BE464 90010004 */  stw       r0, 0x4(r1)
/* 0BB468 800BE468 9421FFA8 */  stwu      r1, -0x58(r1)
/* 0BB46C 800BE46C BE410020 */  stmw      r18, 0x20(r1)
/* 0BB470 800BE470 3A840000 */  addi      r20, r4, 0x0
/* 0BB474 800BE474 3AC30000 */  addi      r22, r3, 0x0
/* 0BB478 800BE478 3A650000 */  addi      r19, r5, 0x0
/* 0BB47C 800BE47C 38810018 */  addi      r4, r1, 0x18
/* 0BB480 800BE480 4BFFC591 */  bl        __CARDGetControlBlock
/* 0BB484 800BE484 2C030000 */  cmpwi     r3, 0x0
/* 0BB488 800BE488 40800008 */  bge       lbl_800BE490
/* 0BB48C 800BE48C 48000618 */  b         lbl_800BEAA4
lbl_800BE490:
/* 0BB490 800BE490 80610018 */  lwz       r3, 0x18(r1)
/* 0BB494 800BE494 388000FF */  li        r4, 0xff
/* 0BB498 800BE498 38A02000 */  li        r5, 0x2000
/* 0BB49C 800BE49C 83630080 */  lwz       r27, 0x80(r3)
/* 0BB4A0 800BE4A0 7F63DB78 */  mr        r3, r27
/* 0BB4A4 800BE4A4 4BF46E7D */  bl        memset
/* 0BB4A8 800BE4A8 3C60CC00 */  lis       r3, 0xcc00
/* 0BB4AC 800BE4AC A243206E */  lhz       r18, 0x206e(r3)
/* 0BB4B0 800BE4B0 B29B0024 */  sth       r20, 0x24(r27)
/* 0BB4B4 800BE4B4 4BFE176D */  bl        __OSLockSram
/* 0BB4B8 800BE4B8 8003000C */  lwz       r0, 0xc(r3)
/* 0BB4BC 800BE4BC 901B0014 */  stw       r0, 0x14(r27)
/* 0BB4C0 800BE4C0 88030012 */  lbz       r0, 0x12(r3)
/* 0BB4C4 800BE4C4 38600000 */  li        r3, 0x0
/* 0BB4C8 800BE4C8 901B0018 */  stw       r0, 0x18(r27)
/* 0BB4CC 800BE4CC 4BFE1B15 */  bl        __OSUnlockSram
/* 0BB4D0 800BE4D0 4BFE3011 */  bl        OSGetTime
/* 0BB4D4 800BE4D4 3AA40000 */  addi      r21, r4, 0x0
/* 0BB4D8 800BE4D8 3A830000 */  addi      r20, r3, 0x0
/* 0BB4DC 800BE4DC 3B550000 */  addi      r26, r21, 0x0
/* 0BB4E0 800BE4E0 3BD40000 */  addi      r30, r20, 0x0
/* 0BB4E4 800BE4E4 4BFE1799 */  bl        __OSLockSramEx
/* 0BB4E8 800BE4E8 1C16000C */  mulli     r0, r22, 0xc
/* 0BB4EC 800BE4EC 7F230214 */  add       r25, r3, r0
/* 0BB4F0 800BE4F0 3C6041C6 */  lis       r3, 0x41c6
/* 0BB4F4 800BE4F4 3B190000 */  addi      r24, r25, 0x0
/* 0BB4F8 800BE4F8 3BE34E6D */  addi      r31, r3, 0x4e6d
/* 0BB4FC 800BE4FC 3B800000 */  li        r28, 0x0
/* 0BB500 800BE500 3AE00004 */  li        r23, 0x4
/* 0BB504 800BE504 48000374 */  b         lbl_800BE878
lbl_800BE508:
/* 0BB508 800BE508 7CBEF9D6 */  mullw     r5, r30, r31
/* 0BB50C 800BE50C 7C7AF816 */  mulhwu    r3, r26, r31
/* 0BB510 800BE510 3BC00000 */  li        r30, 0x0
/* 0BB514 800BE514 7CA51A14 */  add       r5, r5, r3
/* 0BB518 800BE518 7C7AF1D6 */  mullw     r3, r26, r30
/* 0BB51C 800BE51C 7C1AF9D6 */  mullw     r0, r26, r31
/* 0BB520 800BE520 3BA03039 */  li        r29, 0x3039
/* 0BB524 800BE524 7C80E814 */  addc      r4, r0, r29
/* 0BB528 800BE528 7C051A14 */  add       r0, r5, r3
/* 0BB52C 800BE52C 7C60F114 */  adde      r3, r0, r30
/* 0BB530 800BE530 38A00010 */  li        r5, 0x10
/* 0BB534 800BE534 4800E431 */  bl        __shr2i
/* 0BB538 800BE538 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB53C 800BE53C 88180000 */  lbz       r0, 0x0(r24)
/* 0BB540 800BE540 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB544 800BE544 7CC62A14 */  add       r6, r6, r5
/* 0BB548 800BE548 7D040014 */  addc      r8, r4, r0
/* 0BB54C 800BE54C 7F870734 */  extsh     r7, r28
/* 0BB550 800BE550 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB554 800BE554 7D1B39AE */  stbx      r8, r27, r7
/* 0BB558 800BE558 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB55C 800BE55C 7C80E814 */  addc      r4, r0, r29
/* 0BB560 800BE560 7C062A14 */  add       r0, r6, r5
/* 0BB564 800BE564 7C60F114 */  adde      r3, r0, r30
/* 0BB568 800BE568 38A00010 */  li        r5, 0x10
/* 0BB56C 800BE56C 4800E3F9 */  bl        __shr2i
/* 0BB570 800BE570 3B407FFF */  li        r26, 0x7fff
/* 0BB574 800BE574 7C60F038 */  and       r0, r3, r30
/* 0BB578 800BE578 7C84D038 */  and       r4, r4, r26
/* 0BB57C 800BE57C 7CA0F9D6 */  mullw     r5, r0, r31
/* 0BB580 800BE580 7C64F816 */  mulhwu    r3, r4, r31
/* 0BB584 800BE584 7CA51A14 */  add       r5, r5, r3
/* 0BB588 800BE588 7C64F1D6 */  mullw     r3, r4, r30
/* 0BB58C 800BE58C 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB590 800BE590 7C80E814 */  addc      r4, r0, r29
/* 0BB594 800BE594 7C051A14 */  add       r0, r5, r3
/* 0BB598 800BE598 7C60F114 */  adde      r3, r0, r30
/* 0BB59C 800BE59C 38A00010 */  li        r5, 0x10
/* 0BB5A0 800BE5A0 4800E3C5 */  bl        __shr2i
/* 0BB5A4 800BE5A4 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB5A8 800BE5A8 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB5AC 800BE5AC 393C0001 */  addi      r9, r28, 0x1
/* 0BB5B0 800BE5B0 7D290734 */  extsh     r9, r9
/* 0BB5B4 800BE5B4 7C1948AE */  lbzx      r0, r25, r9
/* 0BB5B8 800BE5B8 7CC62A14 */  add       r6, r6, r5
/* 0BB5BC 800BE5BC 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB5C0 800BE5C0 7CE40014 */  addc      r7, r4, r0
/* 0BB5C4 800BE5C4 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB5C8 800BE5C8 7CFB49AE */  stbx      r7, r27, r9
/* 0BB5CC 800BE5CC 7C80E814 */  addc      r4, r0, r29
/* 0BB5D0 800BE5D0 7C062A14 */  add       r0, r6, r5
/* 0BB5D4 800BE5D4 7C60F114 */  adde      r3, r0, r30
/* 0BB5D8 800BE5D8 38A00010 */  li        r5, 0x10
/* 0BB5DC 800BE5DC 4800E389 */  bl        __shr2i
/* 0BB5E0 800BE5E0 7C60F038 */  and       r0, r3, r30
/* 0BB5E4 800BE5E4 7C84D038 */  and       r4, r4, r26
/* 0BB5E8 800BE5E8 7CA0F9D6 */  mullw     r5, r0, r31
/* 0BB5EC 800BE5EC 7C64F816 */  mulhwu    r3, r4, r31
/* 0BB5F0 800BE5F0 7CA51A14 */  add       r5, r5, r3
/* 0BB5F4 800BE5F4 7C64F1D6 */  mullw     r3, r4, r30
/* 0BB5F8 800BE5F8 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB5FC 800BE5FC 7C80E814 */  addc      r4, r0, r29
/* 0BB600 800BE600 7C051A14 */  add       r0, r5, r3
/* 0BB604 800BE604 7C60F114 */  adde      r3, r0, r30
/* 0BB608 800BE608 38A00010 */  li        r5, 0x10
/* 0BB60C 800BE60C 4800E359 */  bl        __shr2i
/* 0BB610 800BE610 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB614 800BE614 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB618 800BE618 393C0002 */  addi      r9, r28, 0x2
/* 0BB61C 800BE61C 7D290734 */  extsh     r9, r9
/* 0BB620 800BE620 7C1948AE */  lbzx      r0, r25, r9
/* 0BB624 800BE624 7CC62A14 */  add       r6, r6, r5
/* 0BB628 800BE628 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB62C 800BE62C 7CE40014 */  addc      r7, r4, r0
/* 0BB630 800BE630 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB634 800BE634 7CFB49AE */  stbx      r7, r27, r9
/* 0BB638 800BE638 7C80E814 */  addc      r4, r0, r29
/* 0BB63C 800BE63C 7C062A14 */  add       r0, r6, r5
/* 0BB640 800BE640 7C60F114 */  adde      r3, r0, r30
/* 0BB644 800BE644 38A00010 */  li        r5, 0x10
/* 0BB648 800BE648 4800E31D */  bl        __shr2i
/* 0BB64C 800BE64C 7C60F038 */  and       r0, r3, r30
/* 0BB650 800BE650 7C84D038 */  and       r4, r4, r26
/* 0BB654 800BE654 7CA0F9D6 */  mullw     r5, r0, r31
/* 0BB658 800BE658 7C64F816 */  mulhwu    r3, r4, r31
/* 0BB65C 800BE65C 7CA51A14 */  add       r5, r5, r3
/* 0BB660 800BE660 7C64F1D6 */  mullw     r3, r4, r30
/* 0BB664 800BE664 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB668 800BE668 7C80E814 */  addc      r4, r0, r29
/* 0BB66C 800BE66C 7C051A14 */  add       r0, r5, r3
/* 0BB670 800BE670 7C60F114 */  adde      r3, r0, r30
/* 0BB674 800BE674 38A00010 */  li        r5, 0x10
/* 0BB678 800BE678 4800E2ED */  bl        __shr2i
/* 0BB67C 800BE67C 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB680 800BE680 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB684 800BE684 393C0003 */  addi      r9, r28, 0x3
/* 0BB688 800BE688 7D290734 */  extsh     r9, r9
/* 0BB68C 800BE68C 7C1948AE */  lbzx      r0, r25, r9
/* 0BB690 800BE690 7CC62A14 */  add       r6, r6, r5
/* 0BB694 800BE694 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB698 800BE698 7CE40014 */  addc      r7, r4, r0
/* 0BB69C 800BE69C 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB6A0 800BE6A0 7CFB49AE */  stbx      r7, r27, r9
/* 0BB6A4 800BE6A4 7C80E814 */  addc      r4, r0, r29
/* 0BB6A8 800BE6A8 7C062A14 */  add       r0, r6, r5
/* 0BB6AC 800BE6AC 7C60F114 */  adde      r3, r0, r30
/* 0BB6B0 800BE6B0 38A00010 */  li        r5, 0x10
/* 0BB6B4 800BE6B4 4800E2B1 */  bl        __shr2i
/* 0BB6B8 800BE6B8 7C60F038 */  and       r0, r3, r30
/* 0BB6BC 800BE6BC 7C84D038 */  and       r4, r4, r26
/* 0BB6C0 800BE6C0 7CA0F9D6 */  mullw     r5, r0, r31
/* 0BB6C4 800BE6C4 7C64F816 */  mulhwu    r3, r4, r31
/* 0BB6C8 800BE6C8 7CA51A14 */  add       r5, r5, r3
/* 0BB6CC 800BE6CC 7C64F1D6 */  mullw     r3, r4, r30
/* 0BB6D0 800BE6D0 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB6D4 800BE6D4 7C80E814 */  addc      r4, r0, r29
/* 0BB6D8 800BE6D8 7C051A14 */  add       r0, r5, r3
/* 0BB6DC 800BE6DC 7C60F114 */  adde      r3, r0, r30
/* 0BB6E0 800BE6E0 38A00010 */  li        r5, 0x10
/* 0BB6E4 800BE6E4 4800E281 */  bl        __shr2i
/* 0BB6E8 800BE6E8 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB6EC 800BE6EC 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB6F0 800BE6F0 393C0004 */  addi      r9, r28, 0x4
/* 0BB6F4 800BE6F4 7D290734 */  extsh     r9, r9
/* 0BB6F8 800BE6F8 7C1948AE */  lbzx      r0, r25, r9
/* 0BB6FC 800BE6FC 7CC62A14 */  add       r6, r6, r5
/* 0BB700 800BE700 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB704 800BE704 7CE40014 */  addc      r7, r4, r0
/* 0BB708 800BE708 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB70C 800BE70C 7CFB49AE */  stbx      r7, r27, r9
/* 0BB710 800BE710 7C80E814 */  addc      r4, r0, r29
/* 0BB714 800BE714 7C062A14 */  add       r0, r6, r5
/* 0BB718 800BE718 7C60F114 */  adde      r3, r0, r30
/* 0BB71C 800BE71C 38A00010 */  li        r5, 0x10
/* 0BB720 800BE720 4800E245 */  bl        __shr2i
/* 0BB724 800BE724 7C60F038 */  and       r0, r3, r30
/* 0BB728 800BE728 7C84D038 */  and       r4, r4, r26
/* 0BB72C 800BE72C 7CA0F9D6 */  mullw     r5, r0, r31
/* 0BB730 800BE730 7C64F816 */  mulhwu    r3, r4, r31
/* 0BB734 800BE734 7CA51A14 */  add       r5, r5, r3
/* 0BB738 800BE738 7C64F1D6 */  mullw     r3, r4, r30
/* 0BB73C 800BE73C 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB740 800BE740 7C80E814 */  addc      r4, r0, r29
/* 0BB744 800BE744 7C051A14 */  add       r0, r5, r3
/* 0BB748 800BE748 7C60F114 */  adde      r3, r0, r30
/* 0BB74C 800BE74C 38A00010 */  li        r5, 0x10
/* 0BB750 800BE750 4800E215 */  bl        __shr2i
/* 0BB754 800BE754 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB758 800BE758 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB75C 800BE75C 393C0005 */  addi      r9, r28, 0x5
/* 0BB760 800BE760 7D290734 */  extsh     r9, r9
/* 0BB764 800BE764 7C1948AE */  lbzx      r0, r25, r9
/* 0BB768 800BE768 7CC62A14 */  add       r6, r6, r5
/* 0BB76C 800BE76C 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB770 800BE770 7CE40014 */  addc      r7, r4, r0
/* 0BB774 800BE774 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB778 800BE778 7CFB49AE */  stbx      r7, r27, r9
/* 0BB77C 800BE77C 7C80E814 */  addc      r4, r0, r29
/* 0BB780 800BE780 7C062A14 */  add       r0, r6, r5
/* 0BB784 800BE784 7C60F114 */  adde      r3, r0, r30
/* 0BB788 800BE788 38A00010 */  li        r5, 0x10
/* 0BB78C 800BE78C 4800E1D9 */  bl        __shr2i
/* 0BB790 800BE790 7C60F038 */  and       r0, r3, r30
/* 0BB794 800BE794 7C84D038 */  and       r4, r4, r26
/* 0BB798 800BE798 7CA0F9D6 */  mullw     r5, r0, r31
/* 0BB79C 800BE79C 7C64F816 */  mulhwu    r3, r4, r31
/* 0BB7A0 800BE7A0 7CA51A14 */  add       r5, r5, r3
/* 0BB7A4 800BE7A4 7C64F1D6 */  mullw     r3, r4, r30
/* 0BB7A8 800BE7A8 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB7AC 800BE7AC 7C80E814 */  addc      r4, r0, r29
/* 0BB7B0 800BE7B0 7C051A14 */  add       r0, r5, r3
/* 0BB7B4 800BE7B4 7C60F114 */  adde      r3, r0, r30
/* 0BB7B8 800BE7B8 38A00010 */  li        r5, 0x10
/* 0BB7BC 800BE7BC 4800E1A9 */  bl        __shr2i
/* 0BB7C0 800BE7C0 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB7C4 800BE7C4 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB7C8 800BE7C8 393C0006 */  addi      r9, r28, 0x6
/* 0BB7CC 800BE7CC 7D290734 */  extsh     r9, r9
/* 0BB7D0 800BE7D0 7C1948AE */  lbzx      r0, r25, r9
/* 0BB7D4 800BE7D4 7CC62A14 */  add       r6, r6, r5
/* 0BB7D8 800BE7D8 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB7DC 800BE7DC 7CE40014 */  addc      r7, r4, r0
/* 0BB7E0 800BE7E0 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB7E4 800BE7E4 7CFB49AE */  stbx      r7, r27, r9
/* 0BB7E8 800BE7E8 7C80E814 */  addc      r4, r0, r29
/* 0BB7EC 800BE7EC 7C062A14 */  add       r0, r6, r5
/* 0BB7F0 800BE7F0 7C60F114 */  adde      r3, r0, r30
/* 0BB7F4 800BE7F4 38A00010 */  li        r5, 0x10
/* 0BB7F8 800BE7F8 4800E16D */  bl        __shr2i
/* 0BB7FC 800BE7FC 7C60F038 */  and       r0, r3, r30
/* 0BB800 800BE800 7C84D038 */  and       r4, r4, r26
/* 0BB804 800BE804 7CA0F9D6 */  mullw     r5, r0, r31
/* 0BB808 800BE808 7C64F816 */  mulhwu    r3, r4, r31
/* 0BB80C 800BE80C 7CA51A14 */  add       r5, r5, r3
/* 0BB810 800BE810 7C64F1D6 */  mullw     r3, r4, r30
/* 0BB814 800BE814 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB818 800BE818 7C80E814 */  addc      r4, r0, r29
/* 0BB81C 800BE81C 7C051A14 */  add       r0, r5, r3
/* 0BB820 800BE820 7C60F114 */  adde      r3, r0, r30
/* 0BB824 800BE824 38A00010 */  li        r5, 0x10
/* 0BB828 800BE828 4800E13D */  bl        __shr2i
/* 0BB82C 800BE82C 7CC3F9D6 */  mullw     r6, r3, r31
/* 0BB830 800BE830 7CA4F816 */  mulhwu    r5, r4, r31
/* 0BB834 800BE834 393C0007 */  addi      r9, r28, 0x7
/* 0BB838 800BE838 7D290734 */  extsh     r9, r9
/* 0BB83C 800BE83C 7C1948AE */  lbzx      r0, r25, r9
/* 0BB840 800BE840 7CC62A14 */  add       r6, r6, r5
/* 0BB844 800BE844 7CA4F1D6 */  mullw     r5, r4, r30
/* 0BB848 800BE848 7CE40014 */  addc      r7, r4, r0
/* 0BB84C 800BE84C 7C04F9D6 */  mullw     r0, r4, r31
/* 0BB850 800BE850 7CFB49AE */  stbx      r7, r27, r9
/* 0BB854 800BE854 7C80E814 */  addc      r4, r0, r29
/* 0BB858 800BE858 7C062A14 */  add       r0, r6, r5
/* 0BB85C 800BE85C 7C60F114 */  adde      r3, r0, r30
/* 0BB860 800BE860 38A00010 */  li        r5, 0x10
/* 0BB864 800BE864 4800E101 */  bl        __shr2i
/* 0BB868 800BE868 7C9AD038 */  and       r26, r4, r26
/* 0BB86C 800BE86C 7C7EF038 */  and       r30, r3, r30
/* 0BB870 800BE870 3B180008 */  addi      r24, r24, 0x8
/* 0BB874 800BE874 3B9C0008 */  addi      r28, r28, 0x8
lbl_800BE878:
/* 0BB878 800BE878 7F800734 */  extsh     r0, r28
/* 0BB87C 800BE87C 7C00B800 */  cmpw      r0, r23
/* 0BB880 800BE880 4180FC88 */  blt       lbl_800BE508
/* 0BB884 800BE884 48000218 */  b         lbl_800BEA9C
lbl_800BE888:
/* 0BB888 800BE888 3C6041C6 */  lis       r3, 0x41c6
/* 0BB88C 800BE88C 3B234E6D */  addi      r25, r3, 0x4e6d
/* 0BB890 800BE890 48000080 */  b         lbl_800BE910
lbl_800BE894:
/* 0BB894 800BE894 7CBEC9D6 */  mullw     r5, r30, r25
/* 0BB898 800BE898 7C7AC816 */  mulhwu    r3, r26, r25
/* 0BB89C 800BE89C 3B000000 */  li        r24, 0x0
/* 0BB8A0 800BE8A0 7CA51A14 */  add       r5, r5, r3
/* 0BB8A4 800BE8A4 7C7AC1D6 */  mullw     r3, r26, r24
/* 0BB8A8 800BE8A8 7C1AC9D6 */  mullw     r0, r26, r25
/* 0BB8AC 800BE8AC 3AE03039 */  li        r23, 0x3039
/* 0BB8B0 800BE8B0 7C80B814 */  addc      r4, r0, r23
/* 0BB8B4 800BE8B4 7C051A14 */  add       r0, r5, r3
/* 0BB8B8 800BE8B8 7C60C114 */  adde      r3, r0, r24
/* 0BB8BC 800BE8BC 38A00010 */  li        r5, 0x10
/* 0BB8C0 800BE8C0 4800E0A5 */  bl        __shr2i
/* 0BB8C4 800BE8C4 7CC3C9D6 */  mullw     r6, r3, r25
/* 0BB8C8 800BE8C8 881D0000 */  lbz       r0, 0x0(r29)
/* 0BB8CC 800BE8CC 7CA4C816 */  mulhwu    r5, r4, r25
/* 0BB8D0 800BE8D0 7CC62A14 */  add       r6, r6, r5
/* 0BB8D4 800BE8D4 7D040014 */  addc      r8, r4, r0
/* 0BB8D8 800BE8D8 7F870734 */  extsh     r7, r28
/* 0BB8DC 800BE8DC 7CA4C1D6 */  mullw     r5, r4, r24
/* 0BB8E0 800BE8E0 7D1B39AE */  stbx      r8, r27, r7
/* 0BB8E4 800BE8E4 7C04C9D6 */  mullw     r0, r4, r25
/* 0BB8E8 800BE8E8 7C80B814 */  addc      r4, r0, r23
/* 0BB8EC 800BE8EC 7C062A14 */  add       r0, r6, r5
/* 0BB8F0 800BE8F0 7C60C114 */  adde      r3, r0, r24
/* 0BB8F4 800BE8F4 38A00010 */  li        r5, 0x10
/* 0BB8F8 800BE8F8 4800E06D */  bl        __shr2i
/* 0BB8FC 800BE8FC 38007FFF */  li        r0, 0x7fff
/* 0BB900 800BE900 7C9A0038 */  and       r26, r4, r0
/* 0BB904 800BE904 7C7EC038 */  and       r30, r3, r24
/* 0BB908 800BE908 3BBD0001 */  addi      r29, r29, 0x1
/* 0BB90C 800BE90C 3B9C0001 */  addi      r28, r28, 0x1
lbl_800BE910:
/* 0BB910 800BE910 7F800734 */  extsh     r0, r28
/* 0BB914 800BE914 2C00000C */  cmpwi     r0, 0xc
/* 0BB918 800BE918 4180FF7C */  blt       lbl_800BE894
/* 0BB91C 800BE91C 38600000 */  li        r3, 0x0
/* 0BB920 800BE920 4BFE16E5 */  bl        __OSUnlockSramEx
/* 0BB924 800BE924 925B001C */  stw       r18, 0x1c(r27)
/* 0BB928 800BE928 3A400000 */  li        r18, 0x0
/* 0BB92C 800BE92C 387B0000 */  addi      r3, r27, 0x0
/* 0BB930 800BE930 92BB0010 */  stw       r21, 0x10(r27)
/* 0BB934 800BE934 38BB01FC */  addi      r5, r27, 0x1fc
/* 0BB938 800BE938 38DB01FE */  addi      r6, r27, 0x1fe
/* 0BB93C 800BE93C 929B000C */  stw       r20, 0xc(r27)
/* 0BB940 800BE940 388001FC */  li        r4, 0x1fc
/* 0BB944 800BE944 B25B0020 */  sth       r18, 0x20(r27)
/* 0BB948 800BE948 80E10018 */  lwz       r7, 0x18(r1)
/* 0BB94C 800BE94C A0070008 */  lhz       r0, 0x8(r7)
/* 0BB950 800BE950 B01B0022 */  sth       r0, 0x22(r27)
/* 0BB954 800BE954 4BFFDFA1 */  bl        __CARDCheckSum
/* 0BB958 800BE958 4800004C */  b         lbl_800BE9A4
lbl_800BE95C:
/* 0BB95C 800BE95C 80810018 */  lwz       r4, 0x18(r1)
/* 0BB960 800BE960 7E430734 */  extsh     r3, r18
/* 0BB964 800BE964 38030001 */  addi      r0, r3, 0x1
/* 0BB968 800BE968 80640080 */  lwz       r3, 0x80(r4)
/* 0BB96C 800BE96C 54006824 */  slwi      r0, r0, 13
/* 0BB970 800BE970 388000FF */  li        r4, 0xff
/* 0BB974 800BE974 7E830214 */  add       r20, r3, r0
/* 0BB978 800BE978 38740000 */  addi      r3, r20, 0x0
/* 0BB97C 800BE97C 38A02000 */  li        r5, 0x2000
/* 0BB980 800BE980 4BF469A1 */  bl        memset
/* 0BB984 800BE984 38941FC0 */  addi      r4, r20, 0x1fc0
/* 0BB988 800BE988 B2541FFA */  sth       r18, 0x1ffa(r20)
/* 0BB98C 800BE98C 38740000 */  addi      r3, r20, 0x0
/* 0BB990 800BE990 38A4003C */  addi      r5, r4, 0x3c
/* 0BB994 800BE994 38C4003E */  addi      r6, r4, 0x3e
/* 0BB998 800BE998 38801FFC */  li        r4, 0x1ffc
/* 0BB99C 800BE99C 4BFFDF59 */  bl        __CARDCheckSum
/* 0BB9A0 800BE9A0 3A520001 */  addi      r18, r18, 0x1
lbl_800BE9A4:
/* 0BB9A4 800BE9A4 7E400734 */  extsh     r0, r18
/* 0BB9A8 800BE9A8 2C000002 */  cmpwi     r0, 0x2
/* 0BB9AC 800BE9AC 4180FFB0 */  blt       lbl_800BE95C
/* 0BB9B0 800BE9B0 3A400000 */  li        r18, 0x0
/* 0BB9B4 800BE9B4 48000060 */  b         lbl_800BEA14
lbl_800BE9B8:
/* 0BB9B8 800BE9B8 80810018 */  lwz       r4, 0x18(r1)
/* 0BB9BC 800BE9BC 7E430734 */  extsh     r3, r18
/* 0BB9C0 800BE9C0 38030003 */  addi      r0, r3, 0x3
/* 0BB9C4 800BE9C4 80640080 */  lwz       r3, 0x80(r4)
/* 0BB9C8 800BE9C8 54006824 */  slwi      r0, r0, 13
/* 0BB9CC 800BE9CC 38800000 */  li        r4, 0x0
/* 0BB9D0 800BE9D0 7E830214 */  add       r20, r3, r0
/* 0BB9D4 800BE9D4 38740000 */  addi      r3, r20, 0x0
/* 0BB9D8 800BE9D8 38A02000 */  li        r5, 0x2000
/* 0BB9DC 800BE9DC 4BF46945 */  bl        memset
/* 0BB9E0 800BE9E0 B2540004 */  sth       r18, 0x4(r20)
/* 0BB9E4 800BE9E4 38000004 */  li        r0, 0x4
/* 0BB9E8 800BE9E8 38B40000 */  addi      r5, r20, 0x0
/* 0BB9EC 800BE9EC 80810018 */  lwz       r4, 0x18(r1)
/* 0BB9F0 800BE9F0 38740004 */  addi      r3, r20, 0x4
/* 0BB9F4 800BE9F4 38D40002 */  addi      r6, r20, 0x2
/* 0BB9F8 800BE9F8 A0E40010 */  lhz       r7, 0x10(r4)
/* 0BB9FC 800BE9FC 38801FFC */  li        r4, 0x1ffc
/* 0BBA00 800BEA00 38E7FFFB */  subi      r7, r7, 0x5
/* 0BBA04 800BEA04 B0F40006 */  sth       r7, 0x6(r20)
/* 0BBA08 800BEA08 B0140008 */  sth       r0, 0x8(r20)
/* 0BBA0C 800BEA0C 4BFFDEE9 */  bl        __CARDCheckSum
/* 0BBA10 800BEA10 3A520001 */  addi      r18, r18, 0x1
lbl_800BEA14:
/* 0BBA14 800BEA14 7E400734 */  extsh     r0, r18
/* 0BBA18 800BEA18 2C000002 */  cmpwi     r0, 0x2
/* 0BBA1C 800BEA1C 4180FF9C */  blt       lbl_800BE9B8
/* 0BBA20 800BEA20 28130000 */  cmplwi    r19, 0x0
/* 0BBA24 800BEA24 4182000C */  beq       lbl_800BEA30
/* 0BBA28 800BEA28 7E609B78 */  mr        r0, r19
/* 0BBA2C 800BEA2C 4800000C */  b         lbl_800BEA38
lbl_800BEA30:
/* 0BBA30 800BEA30 3C60800C */  lis       r3, __CARDDefaultApiCallback@ha
/* 0BBA34 800BEA34 38039AB0 */  addi      r0, r3, __CARDDefaultApiCallback@l
lbl_800BEA38:
/* 0BBA38 800BEA38 80A10018 */  lwz       r5, 0x18(r1)
/* 0BBA3C 800BEA3C 3C600001 */  lis       r3, 0x1
/* 0BBA40 800BEA40 3883A000 */  subi      r4, r3, 0x6000
/* 0BBA44 800BEA44 900500D0 */  stw       r0, 0xd0(r5)
/* 0BBA48 800BEA48 80610018 */  lwz       r3, 0x18(r1)
/* 0BBA4C 800BEA4C 80630080 */  lwz       r3, 0x80(r3)
/* 0BBA50 800BEA50 4BFDE2A5 */  bl        DCStoreRange
/* 0BBA54 800BEA54 80810018 */  lwz       r4, 0x18(r1)
/* 0BBA58 800BEA58 38000000 */  li        r0, 0x0
/* 0BBA5C 800BEA5C 3C60800C */  lis       r3, FormatCallback@ha
/* 0BBA60 800BEA60 90040028 */  stw       r0, 0x28(r4)
/* 0BBA64 800BEA64 38A3E31C */  addi      r5, r3, FormatCallback@l
/* 0BBA68 800BEA68 38760000 */  addi      r3, r22, 0x0
/* 0BBA6C 800BEA6C 80C10018 */  lwz       r6, 0x18(r1)
/* 0BBA70 800BEA70 8086000C */  lwz       r4, 0xc(r6)
/* 0BBA74 800BEA74 80060028 */  lwz       r0, 0x28(r6)
/* 0BBA78 800BEA78 7C8401D6 */  mullw     r4, r4, r0
/* 0BBA7C 800BEA7C 4BFFBDC9 */  bl        __CARDEraseSector
/* 0BBA80 800BEA80 7C721B79 */  mr.       r18, r3
/* 0BBA84 800BEA84 40800010 */  bge       lbl_800BEA94
/* 0BBA88 800BEA88 80610018 */  lwz       r3, 0x18(r1)
/* 0BBA8C 800BEA8C 7E449378 */  mr        r4, r18
/* 0BBA90 800BEA90 4BFFC039 */  bl        __CARDPutControlBlock
lbl_800BEA94:
/* 0BBA94 800BEA94 7E439378 */  mr        r3, r18
/* 0BBA98 800BEA98 4800000C */  b         lbl_800BEAA4
lbl_800BEA9C:
/* 0BBA9C 800BEA9C 7FB90214 */  add       r29, r25, r0
/* 0BBAA0 800BEAA0 4BFFFDE8 */  b         lbl_800BE888
lbl_800BEAA4:
/* 0BBAA4 800BEAA4 BA410020 */  lmw       r18, 0x20(r1)
/* 0BBAA8 800BEAA8 8001005C */  lwz       r0, 0x5c(r1)
/* 0BBAAC 800BEAAC 38210058 */  addi      r1, r1, 0x58
/* 0BBAB0 800BEAB0 7C0803A6 */  mtlr      r0
/* 0BBAB4 800BEAB4 4E800020 */  blr

glabel CARDFormatAsync
/* 0BBAB8 800BEAB8 7C0802A6 */  mflr      r0
/* 0BBABC 800BEABC 90010004 */  stw       r0, 0x4(r1)
/* 0BBAC0 800BEAC0 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0BBAC4 800BEAC4 93E10014 */  stw       r31, 0x14(r1)
/* 0BBAC8 800BEAC8 3BE40000 */  addi      r31, r4, 0x0
/* 0BBACC 800BEACC 93C10010 */  stw       r30, 0x10(r1)
/* 0BBAD0 800BEAD0 3BC30000 */  addi      r30, r3, 0x0
/* 0BBAD4 800BEAD4 4BFFBEFD */  bl        __CARDGetFontEncode
/* 0BBAD8 800BEAD8 38830000 */  addi      r4, r3, 0x0
/* 0BBADC 800BEADC 387E0000 */  addi      r3, r30, 0x0
/* 0BBAE0 800BEAE0 38BF0000 */  addi      r5, r31, 0x0
/* 0BBAE4 800BEAE4 4BFFF97D */  bl        __CARDFormatRegionAsync
/* 0BBAE8 800BEAE8 8001001C */  lwz       r0, 0x1c(r1)
/* 0BBAEC 800BEAEC 83E10014 */  lwz       r31, 0x14(r1)
/* 0BBAF0 800BEAF0 83C10010 */  lwz       r30, 0x10(r1)
/* 0BBAF4 800BEAF4 38210018 */  addi      r1, r1, 0x18
/* 0BBAF8 800BEAF8 7C0803A6 */  mtlr      r0
/* 0BBAFC 800BEAFC 4E800020 */  blr
