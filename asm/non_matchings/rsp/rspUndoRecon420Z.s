glabel rspUndoRecon420Z
/* 075CA4 8007B244 7C0802A6 */  mflr    r0
/* 075CA8 8007B248 38A00000 */  li      r5, 0
/* 075CAC 8007B24C 90010004 */  stw     r0, 4(r1)
/* 075CB0 8007B250 38000008 */  li      r0, 8
/* 075CB4 8007B254 7C0903A6 */  mtctr   r0
/* 075CB8 8007B258 39450000 */  addi    r10, r5, 0
/* 075CBC 8007B25C 9421FF78 */  stwu    r1, -0x88(r1)
/* 075CC0 8007B260 BDC10040 */  stmw    r14, 0x40(r1)
/* 075CC4 8007B264 3BC30000 */  addi    r30, r3, 0
/* 075CC8 8007B268 3BA40000 */  addi    r29, r4, 0
lbl_8007B26C:
/* 075CCC 8007B26C 7C9D5214 */  add     r4, r29, r10
/* 075CD0 8007B270 3B800000 */  li      r28, 0
/* 075CD4 8007B274 B3840000 */  sth     r28, 0(r4)
/* 075CD8 8007B278 38050001 */  addi    r0, r5, 1
/* 075CDC 8007B27C 38650002 */  addi    r3, r5, 2
/* 075CE0 8007B280 B3840010 */  sth     r28, 0x10(r4)
/* 075CE4 8007B284 5467083C */  slwi    r7, r3, 1
/* 075CE8 8007B288 38650003 */  addi    r3, r5, 3
/* 075CEC 8007B28C B3840020 */  sth     r28, 0x20(r4)
/* 075CF0 8007B290 5463083C */  slwi    r3, r3, 1
/* 075CF4 8007B294 5400083C */  slwi    r0, r0, 1
/* 075CF8 8007B298 B3840030 */  sth     r28, 0x30(r4)
/* 075CFC 8007B29C 7C9D0214 */  add     r4, r29, r0
/* 075D00 8007B2A0 38050004 */  addi    r0, r5, 4
/* 075D04 8007B2A4 B3840000 */  sth     r28, 0(r4)
/* 075D08 8007B2A8 5408083C */  slwi    r8, r0, 1
/* 075D0C 8007B2AC 38050005 */  addi    r0, r5, 5
/* 075D10 8007B2B0 B3840010 */  sth     r28, 0x10(r4)
/* 075D14 8007B2B4 540B083C */  slwi    r11, r0, 1
/* 075D18 8007B2B8 38C50006 */  addi    r6, r5, 6
/* 075D1C 8007B2BC B3840020 */  sth     r28, 0x20(r4)
/* 075D20 8007B2C0 38050007 */  addi    r0, r5, 7
/* 075D24 8007B2C4 54CC083C */  slwi    r12, r6, 1
/* 075D28 8007B2C8 B3840030 */  sth     r28, 0x30(r4)
/* 075D2C 8007B2CC 7D3D3A14 */  add     r9, r29, r7
/* 075D30 8007B2D0 7C7D1A14 */  add     r3, r29, r3
/* 075D34 8007B2D4 B3890000 */  sth     r28, 0(r9)
/* 075D38 8007B2D8 7C9D4214 */  add     r4, r29, r8
/* 075D3C 8007B2DC 5400083C */  slwi    r0, r0, 1
/* 075D40 8007B2E0 B3890010 */  sth     r28, 0x10(r9)
/* 075D44 8007B2E4 7CDD5A14 */  add     r6, r29, r11
/* 075D48 8007B2E8 7CFD6214 */  add     r7, r29, r12
/* 075D4C 8007B2EC B3890020 */  sth     r28, 0x20(r9)
/* 075D50 8007B2F0 7D1D0214 */  add     r8, r29, r0
/* 075D54 8007B2F4 38A50020 */  addi    r5, r5, 0x20
/* 075D58 8007B2F8 B3890030 */  sth     r28, 0x30(r9)
/* 075D5C 8007B2FC 394A0040 */  addi    r10, r10, 0x40
/* 075D60 8007B300 B3830000 */  sth     r28, 0(r3)
/* 075D64 8007B304 B3830010 */  sth     r28, 0x10(r3)
/* 075D68 8007B308 B3830020 */  sth     r28, 0x20(r3)
/* 075D6C 8007B30C B3830030 */  sth     r28, 0x30(r3)
/* 075D70 8007B310 B3840000 */  sth     r28, 0(r4)
/* 075D74 8007B314 B3840010 */  sth     r28, 0x10(r4)
/* 075D78 8007B318 B3840020 */  sth     r28, 0x20(r4)
/* 075D7C 8007B31C B3840030 */  sth     r28, 0x30(r4)
/* 075D80 8007B320 B3860000 */  sth     r28, 0(r6)
/* 075D84 8007B324 B3860010 */  sth     r28, 0x10(r6)
/* 075D88 8007B328 B3860020 */  sth     r28, 0x20(r6)
/* 075D8C 8007B32C B3860030 */  sth     r28, 0x30(r6)
/* 075D90 8007B330 B3870000 */  sth     r28, 0(r7)
/* 075D94 8007B334 B3870010 */  sth     r28, 0x10(r7)
/* 075D98 8007B338 B3870020 */  sth     r28, 0x20(r7)
/* 075D9C 8007B33C B3870030 */  sth     r28, 0x30(r7)
/* 075DA0 8007B340 B3880000 */  sth     r28, 0(r8)
/* 075DA4 8007B344 B3880010 */  sth     r28, 0x10(r8)
/* 075DA8 8007B348 B3880020 */  sth     r28, 0x20(r8)
/* 075DAC 8007B34C B3880030 */  sth     r28, 0x30(r8)
/* 075DB0 8007B350 4200FF1C */  bdnz    lbl_8007B26C
/* 075DB4 8007B354 57802036 */  slwi    r0, r28, 4
/* 075DB8 8007B358 9381002C */  stw     r28, 0x2c(r1)
/* 075DBC 8007B35C 3C800001 */  lis     r4, 1
/* 075DC0 8007B360 90010018 */  stw     r0, 0x18(r1)
/* 075DC4 8007B364 3B44B6E3 */  addi    r26, r4, -18717
/* 075DC8 8007B368 3B24C5E3 */  addi    r25, r4, -14877
/* 075DCC 8007B36C 80610018 */  lwz     r3, 0x18(r1)
/* 075DD0 8007B370 38030008 */  addi    r0, r3, 8
/* 075DD4 8007B374 90010020 */  stw     r0, 0x20(r1)
/* 075DD8 8007B378 38000080 */  li      r0, 0x80
/* 075DDC 8007B37C 90010028 */  stw     r0, 0x28(r1)
/* 075DE0 8007B380 38000040 */  li      r0, 0x40
/* 075DE4 8007B384 90010024 */  stw     r0, 0x24(r1)
/* 075DE8 8007B388 380000C0 */  li      r0, 0xc0
/* 075DEC 8007B38C 9001001C */  stw     r0, 0x1c(r1)
lbl_8007B390:
/* 075DF0 8007B390 7F830E70 */  srawi   r3, r28, 1
/* 075DF4 8007B394 83610018 */  lwz     r27, 0x18(r1)
/* 075DF8 8007B398 54641838 */  slwi    r4, r3, 3
/* 075DFC 8007B39C 82E10020 */  lwz     r23, 0x20(r1)
/* 075E00 8007B3A0 381C0008 */  addi    r0, r28, 8
/* 075E04 8007B3A4 7C000E70 */  srawi   r0, r0, 1
/* 075E08 8007B3A8 54031838 */  slwi    r3, r0, 3
/* 075E0C 8007B3AC 38040100 */  addi    r0, r4, 0x100
/* 075E10 8007B3B0 90010038 */  stw     r0, 0x38(r1)
/* 075E14 8007B3B4 38040140 */  addi    r0, r4, 0x140
/* 075E18 8007B3B8 39C30140 */  addi    r14, r3, 0x140
/* 075E1C 8007B3BC 90010034 */  stw     r0, 0x34(r1)
/* 075E20 8007B3C0 38030100 */  addi    r0, r3, 0x100
/* 075E24 8007B3C4 39E40104 */  addi    r15, r4, 0x104
/* 075E28 8007B3C8 90010030 */  stw     r0, 0x30(r1)
/* 075E2C 8007B3CC 3A040144 */  addi    r16, r4, 0x144
/* 075E30 8007B3D0 8001001C */  lwz     r0, 0x1c(r1)
/* 075E34 8007B3D4 3A230104 */  addi    r17, r3, 0x104
/* 075E38 8007B3D8 3A430144 */  addi    r18, r3, 0x144
/* 075E3C 8007B3DC 5416103A */  slwi    r22, r0, 2
/* 075E40 8007B3E0 80010024 */  lwz     r0, 0x24(r1)
/* 075E44 8007B3E4 3B000000 */  li      r24, 0
/* 075E48 8007B3E8 5415103A */  slwi    r21, r0, 2
/* 075E4C 8007B3EC 80010028 */  lwz     r0, 0x28(r1)
/* 075E50 8007B3F0 5413103A */  slwi    r19, r0, 2
/* 075E54 8007B3F4 8001002C */  lwz     r0, 0x2c(r1)
/* 075E58 8007B3F8 5414103A */  slwi    r20, r0, 2
lbl_8007B3FC:
/* 075E5C 8007B3FC 80010034 */  lwz     r0, 0x34(r1)
/* 075E60 8007B400 7F1F0E70 */  srawi   r31, r24, 1
/* 075E64 8007B404 80610038 */  lwz     r3, 0x38(r1)
/* 075E68 8007B408 391B0000 */  addi    r8, r27, 0
/* 075E6C 8007B40C 7C1F0214 */  add     r0, r31, r0
/* 075E70 8007B410 809E39C8 */  lwz     r4, 0x39c8(r30)
/* 075E74 8007B414 5400103A */  slwi    r0, r0, 2
/* 075E78 8007B418 7CBF1A14 */  add     r5, r31, r3
/* 075E7C 8007B41C 7C64A02E */  lwzx    r3, r4, r20
/* 075E80 8007B420 54A5103A */  slwi    r5, r5, 2
/* 075E84 8007B424 7C04002E */  lwzx    r0, r4, r0
/* 075E88 8007B428 38E30800 */  addi    r7, r3, 0x800
/* 075E8C 8007B42C 7CA4282E */  lwzx    r5, r4, r5
/* 075E90 8007B430 1C60670A */  mulli   r3, r0, 0x670a
/* 075E94 8007B434 7C648670 */  srawi   r4, r3, 0x10
/* 075E98 8007B438 7C840214 */  add     r4, r4, r0
/* 075E9C 8007B43C 1C655824 */  mulli   r3, r5, 0x5824
/* 075EA0 8007B440 7C00D1D6 */  mullw   r0, r0, r26
/* 075EA4 8007B444 7C638670 */  srawi   r3, r3, 0x10
/* 075EA8 8007B448 7C008670 */  srawi   r0, r0, 0x10
/* 075EAC 8007B44C 7CC5C9D6 */  mullw   r6, r5, r25
/* 075EB0 8007B450 7CC68670 */  srawi   r6, r6, 0x10
/* 075EB4 8007B454 7C030214 */  add     r0, r3, r0
/* 075EB8 8007B458 7CC62A14 */  add     r6, r6, r5
/* 075EBC 8007B45C 7C872214 */  add     r4, r7, r4
/* 075EC0 8007B460 7CA03850 */  subf    r5, r0, r7
/* 075EC4 8007B464 7CC73214 */  add     r6, r7, r6
/* 075EC8 8007B468 387E0000 */  addi    r3, r30, 0
/* 075ECC 8007B46C 38FD0000 */  addi    r7, r29, 0
/* 075ED0 8007B470 480001DD */  bl      rspUndoLoadColorBufferZ
/* 075ED4 8007B474 7C1F7214 */  add     r0, r31, r14
/* 075ED8 8007B478 80610030 */  lwz     r3, 0x30(r1)
/* 075EDC 8007B47C 809E39C8 */  lwz     r4, 0x39c8(r30)
/* 075EE0 8007B480 5400103A */  slwi    r0, r0, 2
/* 075EE4 8007B484 7CBF1A14 */  add     r5, r31, r3
/* 075EE8 8007B488 7C64982E */  lwzx    r3, r4, r19
/* 075EEC 8007B48C 54A5103A */  slwi    r5, r5, 2
/* 075EF0 8007B490 7C04002E */  lwzx    r0, r4, r0
/* 075EF4 8007B494 391B0080 */  addi    r8, r27, 0x80
/* 075EF8 8007B498 38E30800 */  addi    r7, r3, 0x800
/* 075EFC 8007B49C 1C60670A */  mulli   r3, r0, 0x670a
/* 075F00 8007B4A0 7CA4282E */  lwzx    r5, r4, r5
/* 075F04 8007B4A4 7C648670 */  srawi   r4, r3, 0x10
/* 075F08 8007B4A8 7C840214 */  add     r4, r4, r0
/* 075F0C 8007B4AC 1C655824 */  mulli   r3, r5, 0x5824
/* 075F10 8007B4B0 7C00D1D6 */  mullw   r0, r0, r26
/* 075F14 8007B4B4 7C638670 */  srawi   r3, r3, 0x10
/* 075F18 8007B4B8 7C008670 */  srawi   r0, r0, 0x10
/* 075F1C 8007B4BC 7CC5C9D6 */  mullw   r6, r5, r25
/* 075F20 8007B4C0 7CC68670 */  srawi   r6, r6, 0x10
/* 075F24 8007B4C4 7C030214 */  add     r0, r3, r0
/* 075F28 8007B4C8 7CC62A14 */  add     r6, r6, r5
/* 075F2C 8007B4CC 7C872214 */  add     r4, r7, r4
/* 075F30 8007B4D0 7CA03850 */  subf    r5, r0, r7
/* 075F34 8007B4D4 7CC73214 */  add     r6, r7, r6
/* 075F38 8007B4D8 387E0000 */  addi    r3, r30, 0
/* 075F3C 8007B4DC 38FD0000 */  addi    r7, r29, 0
/* 075F40 8007B4E0 4800016D */  bl      rspUndoLoadColorBufferZ
/* 075F44 8007B4E4 7C1F8214 */  add     r0, r31, r16
/* 075F48 8007B4E8 809E39C8 */  lwz     r4, 0x39c8(r30)
/* 075F4C 8007B4EC 5400103A */  slwi    r0, r0, 2
/* 075F50 8007B4F0 7C64A82E */  lwzx    r3, r4, r21
/* 075F54 8007B4F4 7CBF7A14 */  add     r5, r31, r15
/* 075F58 8007B4F8 7C04002E */  lwzx    r0, r4, r0
/* 075F5C 8007B4FC 54A5103A */  slwi    r5, r5, 2
/* 075F60 8007B500 38E30800 */  addi    r7, r3, 0x800
/* 075F64 8007B504 1C60670A */  mulli   r3, r0, 0x670a
/* 075F68 8007B508 7CA4282E */  lwzx    r5, r4, r5
/* 075F6C 8007B50C 7C648670 */  srawi   r4, r3, 0x10
/* 075F70 8007B510 7C840214 */  add     r4, r4, r0
/* 075F74 8007B514 1C655824 */  mulli   r3, r5, 0x5824
/* 075F78 8007B518 7C00D1D6 */  mullw   r0, r0, r26
/* 075F7C 8007B51C 7C638670 */  srawi   r3, r3, 0x10
/* 075F80 8007B520 7C008670 */  srawi   r0, r0, 0x10
/* 075F84 8007B524 7CC5C9D6 */  mullw   r6, r5, r25
/* 075F88 8007B528 7CC68670 */  srawi   r6, r6, 0x10
/* 075F8C 8007B52C 7C030214 */  add     r0, r3, r0
/* 075F90 8007B530 7CC62A14 */  add     r6, r6, r5
/* 075F94 8007B534 7C872214 */  add     r4, r7, r4
/* 075F98 8007B538 7CA03850 */  subf    r5, r0, r7
/* 075F9C 8007B53C 7CC73214 */  add     r6, r7, r6
/* 075FA0 8007B540 387E0000 */  addi    r3, r30, 0
/* 075FA4 8007B544 38FD0000 */  addi    r7, r29, 0
/* 075FA8 8007B548 39170000 */  addi    r8, r23, 0
/* 075FAC 8007B54C 48000101 */  bl      rspUndoLoadColorBufferZ
/* 075FB0 8007B550 7C1F9214 */  add     r0, r31, r18
/* 075FB4 8007B554 809E39C8 */  lwz     r4, 0x39c8(r30)
/* 075FB8 8007B558 5400103A */  slwi    r0, r0, 2
/* 075FBC 8007B55C 7C64B02E */  lwzx    r3, r4, r22
/* 075FC0 8007B560 7CBF8A14 */  add     r5, r31, r17
/* 075FC4 8007B564 7C04002E */  lwzx    r0, r4, r0
/* 075FC8 8007B568 54A5103A */  slwi    r5, r5, 2
/* 075FCC 8007B56C 38E30800 */  addi    r7, r3, 0x800
/* 075FD0 8007B570 1C60670A */  mulli   r3, r0, 0x670a
/* 075FD4 8007B574 7CA4282E */  lwzx    r5, r4, r5
/* 075FD8 8007B578 7C648670 */  srawi   r4, r3, 0x10
/* 075FDC 8007B57C 7C840214 */  add     r4, r4, r0
/* 075FE0 8007B580 1C655824 */  mulli   r3, r5, 0x5824
/* 075FE4 8007B584 7C00D1D6 */  mullw   r0, r0, r26
/* 075FE8 8007B588 7C638670 */  srawi   r3, r3, 0x10
/* 075FEC 8007B58C 7C008670 */  srawi   r0, r0, 0x10
/* 075FF0 8007B590 7CC5C9D6 */  mullw   r6, r5, r25
/* 075FF4 8007B594 7CC68670 */  srawi   r6, r6, 0x10
/* 075FF8 8007B598 7C030214 */  add     r0, r3, r0
/* 075FFC 8007B59C 7CC62A14 */  add     r6, r6, r5
/* 076000 8007B5A0 7C872214 */  add     r4, r7, r4
/* 076004 8007B5A4 7CA03850 */  subf    r5, r0, r7
/* 076008 8007B5A8 7CC73214 */  add     r6, r7, r6
/* 07600C 8007B5AC 387E0000 */  addi    r3, r30, 0
/* 076010 8007B5B0 38FD0000 */  addi    r7, r29, 0
/* 076014 8007B5B4 391B0088 */  addi    r8, r27, 0x88
/* 076018 8007B5B8 48000095 */  bl      rspUndoLoadColorBufferZ
/* 07601C 8007B5BC 3B180001 */  addi    r24, r24, 1
/* 076020 8007B5C0 2C180008 */  cmpwi   r24, 8
/* 076024 8007B5C4 3A940004 */  addi    r20, r20, 4
/* 076028 8007B5C8 3B7B0001 */  addi    r27, r27, 1
/* 07602C 8007B5CC 3A730004 */  addi    r19, r19, 4
/* 076030 8007B5D0 3AB50004 */  addi    r21, r21, 4
/* 076034 8007B5D4 3AF70001 */  addi    r23, r23, 1
/* 076038 8007B5D8 3AD60004 */  addi    r22, r22, 4
/* 07603C 8007B5DC 4180FE20 */  blt     lbl_8007B3FC
/* 076040 8007B5E0 8061002C */  lwz     r3, 0x2c(r1)
/* 076044 8007B5E4 3B9C0001 */  addi    r28, r28, 1
/* 076048 8007B5E8 2C1C0008 */  cmpwi   r28, 8
/* 07604C 8007B5EC 38630008 */  addi    r3, r3, 8
/* 076050 8007B5F0 9061002C */  stw     r3, 0x2c(r1)
/* 076054 8007B5F4 80610018 */  lwz     r3, 0x18(r1)
/* 076058 8007B5F8 38630010 */  addi    r3, r3, 0x10
/* 07605C 8007B5FC 90610018 */  stw     r3, 0x18(r1)
/* 076060 8007B600 80610028 */  lwz     r3, 0x28(r1)
/* 076064 8007B604 38630008 */  addi    r3, r3, 8
/* 076068 8007B608 90610028 */  stw     r3, 0x28(r1)
/* 07606C 8007B60C 80610024 */  lwz     r3, 0x24(r1)
/* 076070 8007B610 38630008 */  addi    r3, r3, 8
/* 076074 8007B614 90610024 */  stw     r3, 0x24(r1)
/* 076078 8007B618 80610020 */  lwz     r3, 0x20(r1)
/* 07607C 8007B61C 38630010 */  addi    r3, r3, 0x10
/* 076080 8007B620 90610020 */  stw     r3, 0x20(r1)
/* 076084 8007B624 8061001C */  lwz     r3, 0x1c(r1)
/* 076088 8007B628 38630008 */  addi    r3, r3, 8
/* 07608C 8007B62C 9061001C */  stw     r3, 0x1c(r1)
/* 076090 8007B630 4180FD60 */  blt     lbl_8007B390
/* 076094 8007B634 B9C10040 */  lmw     r14, 0x40(r1)
/* 076098 8007B638 38600001 */  li      r3, 1
/* 07609C 8007B63C 8001008C */  lwz     r0, 0x8c(r1)
/* 0760A0 8007B640 38210088 */  addi    r1, r1, 0x88
/* 0760A4 8007B644 7C0803A6 */  mtlr    r0
/* 0760A8 8007B648 4E800020 */  blr     