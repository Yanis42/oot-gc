glabel frameDrawTriangle_Setup
/* 022360 80027900 7C0802A6 */  mflr    r0
/* 022364 80027904 90010004 */  stw     r0, 4(r1)
/* 022368 80027908 9421FFE0 */  stwu    r1, -0x20(r1)
/* 02236C 8002790C 93E1001C */  stw     r31, 0x1c(r1)
/* 022370 80027910 93C10018 */  stw     r30, 0x18(r1)
/* 022374 80027914 7C7E1B78 */  mr      r30, r3
/* 022378 80027918 7C9F2378 */  mr      r31, r4
/* 02237C 8002791C 7FC3F378 */  mr      r3, r30
/* 022380 80027920 38810010 */  addi    r4, r1, 0x10
/* 022384 80027924 38A10014 */  addi    r5, r1, 0x14
/* 022388 80027928 38C00003 */  li      r6, 3
/* 02238C 8002792C 4800201D */  bl      frameDrawSetupSP
/* 022390 80027930 2C030000 */  cmpwi   r3, 0
/* 022394 80027934 4082000C */  bne     lbl_80027940
/* 022398 80027938 38600000 */  li      r3, 0
/* 02239C 8002793C 48000088 */  b       lbl_800279C4
lbl_80027940:
/* 0223A0 80027940 7FC3F378 */  mr      r3, r30
/* 0223A4 80027944 38810010 */  addi    r4, r1, 0x10
/* 0223A8 80027948 38A10014 */  addi    r5, r1, 0x14
/* 0223AC 8002794C 38C00000 */  li      r6, 0
/* 0223B0 80027950 48001901 */  bl      frameDrawSetupDP
/* 0223B4 80027954 2C030000 */  cmpwi   r3, 0
/* 0223B8 80027958 4082000C */  bne     lbl_80027964
/* 0223BC 8002795C 38600000 */  li      r3, 0
/* 0223C0 80027960 48000064 */  b       lbl_800279C4
lbl_80027964:
/* 0223C4 80027964 80010014 */  lwz     r0, 0x14(r1)
/* 0223C8 80027968 2C000000 */  cmpwi   r0, 0
/* 0223CC 8002796C 4182000C */  beq     lbl_80027978
/* 0223D0 80027970 38A00004 */  li      r5, 4
/* 0223D4 80027974 48000008 */  b       lbl_8002797C
lbl_80027978:
/* 0223D8 80027978 38A00000 */  li      r5, 0
lbl_8002797C:
/* 0223DC 8002797C 80810010 */  lwz     r4, 0x10(r1)
/* 0223E0 80027980 3C60800F */  lis     r3, gapfDrawTriangle@ha
/* 0223E4 80027984 3803A994 */  addi    r0, r3, gapfDrawTriangle@l
/* 0223E8 80027988 7C642A14 */  add     r3, r4, r5
/* 0223EC 8002798C 5463103A */  slwi    r3, r3, 2
/* 0223F0 80027990 7C601A14 */  add     r3, r0, r3
/* 0223F4 80027994 80030000 */  lwz     r0, 0(r3)
/* 0223F8 80027998 7FC3F378 */  mr      r3, r30
/* 0223FC 8002799C 7FE4FB78 */  mr      r4, r31
/* 022400 800279A0 901E0130 */  stw     r0, 0x130(r30)
/* 022404 800279A4 819E0130 */  lwz     r12, 0x130(r30)
/* 022408 800279A8 7D8803A6 */  mtlr    r12
/* 02240C 800279AC 4E800021 */  blrl    
/* 022410 800279B0 2C030000 */  cmpwi   r3, 0
/* 022414 800279B4 4082000C */  bne     lbl_800279C0
/* 022418 800279B8 38600000 */  li      r3, 0
/* 02241C 800279BC 48000008 */  b       lbl_800279C4
lbl_800279C0:
/* 022420 800279C0 38600001 */  li      r3, 1
lbl_800279C4:
/* 022424 800279C4 80010024 */  lwz     r0, 0x24(r1)
/* 022428 800279C8 83E1001C */  lwz     r31, 0x1c(r1)
/* 02242C 800279CC 83C10018 */  lwz     r30, 0x18(r1)
/* 022430 800279D0 7C0803A6 */  mtlr    r0
/* 022434 800279D4 38210020 */  addi    r1, r1, 0x20
/* 022438 800279D8 4E800020 */  blr     