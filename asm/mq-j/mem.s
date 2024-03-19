# mem.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD4E8 - 0x800CD634

glabel memcmp
/* 0CA4E8 800CD4E8 38C3FFFF */  subi      r6, r3, 0x1
/* 0CA4EC 800CD4EC 3884FFFF */  subi      r4, r4, 0x1
/* 0CA4F0 800CD4F0 38A50001 */  addi      r5, r5, 0x1
/* 0CA4F4 800CD4F4 48000028 */  b         lbl_800CD51C
lbl_800CD4F8:
/* 0CA4F8 800CD4F8 8C660001 */  lbzu      r3, 0x1(r6)
/* 0CA4FC 800CD4FC 8C040001 */  lbzu      r0, 0x1(r4)
/* 0CA500 800CD500 7C030040 */  cmplw     r3, r0
/* 0CA504 800CD504 41820018 */  beq       lbl_800CD51C
/* 0CA508 800CD508 4080000C */  bge       lbl_800CD514
/* 0CA50C 800CD50C 3860FFFF */  li        r3, -0x1
/* 0CA510 800CD510 4E800020 */  blr
lbl_800CD514:
/* 0CA514 800CD514 38600001 */  li        r3, 0x1
/* 0CA518 800CD518 4E800020 */  blr
lbl_800CD51C:
/* 0CA51C 800CD51C 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA520 800CD520 4082FFD8 */  bne       lbl_800CD4F8
/* 0CA524 800CD524 38600000 */  li        r3, 0x0
/* 0CA528 800CD528 4E800020 */  blr

glabel memchr
/* 0CA52C 800CD52C 5484063E */  clrlwi    r4, r4, 24
/* 0CA530 800CD530 3863FFFF */  subi      r3, r3, 0x1
/* 0CA534 800CD534 38A50001 */  addi      r5, r5, 0x1
/* 0CA538 800CD538 48000010 */  b         lbl_800CD548
lbl_800CD53C:
/* 0CA53C 800CD53C 8C030001 */  lbzu      r0, 0x1(r3)
/* 0CA540 800CD540 7C002040 */  cmplw     r0, r4
/* 0CA544 800CD544 4D820020 */  beqlr
lbl_800CD548:
/* 0CA548 800CD548 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA54C 800CD54C 4082FFF0 */  bne       lbl_800CD53C
/* 0CA550 800CD550 38600000 */  li        r3, 0x0
/* 0CA554 800CD554 4E800020 */  blr

glabel memmove
/* 0CA558 800CD558 7C0802A6 */  mflr      r0
/* 0CA55C 800CD55C 28050020 */  cmplwi    r5, 0x20
/* 0CA560 800CD560 90010004 */  stw       r0, 0x4(r1)
/* 0CA564 800CD564 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0CA568 800CD568 93E1001C */  stw       r31, 0x1c(r1)
/* 0CA56C 800CD56C 3BE30000 */  addi      r31, r3, 0x0
/* 0CA570 800CD570 7C7F2010 */  subfc     r3, r31, r4
/* 0CA574 800CD574 7C000110 */  subfe     r0, r0, r0
/* 0CA578 800CD578 7C6000D0 */  neg       r3, r0
/* 0CA57C 800CD57C 41800054 */  blt       lbl_800CD5D0
/* 0CA580 800CD580 7FE02278 */  xor       r0, r31, r4
/* 0CA584 800CD584 540007BF */  clrlwi.   r0, r0, 30
/* 0CA588 800CD588 41820024 */  beq       lbl_800CD5AC
/* 0CA58C 800CD58C 2C030000 */  cmpwi     r3, 0x0
/* 0CA590 800CD590 40820010 */  bne       lbl_800CD5A0
/* 0CA594 800CD594 7FE3FB78 */  mr        r3, r31
/* 0CA598 800CD598 4800014D */  bl        __copy_longs_unaligned
/* 0CA59C 800CD59C 4800002C */  b         lbl_800CD5C8
lbl_800CD5A0:
/* 0CA5A0 800CD5A0 7FE3FB78 */  mr        r3, r31
/* 0CA5A4 800CD5A4 48000091 */  bl        __copy_longs_rev_unaligned
/* 0CA5A8 800CD5A8 48000020 */  b         lbl_800CD5C8
lbl_800CD5AC:
/* 0CA5AC 800CD5AC 2C030000 */  cmpwi     r3, 0x0
/* 0CA5B0 800CD5B0 40820010 */  bne       lbl_800CD5C0
/* 0CA5B4 800CD5B4 7FE3FB78 */  mr        r3, r31
/* 0CA5B8 800CD5B8 4800029D */  bl        __copy_longs_aligned
/* 0CA5BC 800CD5BC 4800000C */  b         lbl_800CD5C8
lbl_800CD5C0:
/* 0CA5C0 800CD5C0 7FE3FB78 */  mr        r3, r31
/* 0CA5C4 800CD5C4 480001E5 */  bl        __copy_longs_rev_aligned
lbl_800CD5C8:
/* 0CA5C8 800CD5C8 7FE3FB78 */  mr        r3, r31
/* 0CA5CC 800CD5CC 48000054 */  b         lbl_800CD620
lbl_800CD5D0:
/* 0CA5D0 800CD5D0 2C030000 */  cmpwi     r3, 0x0
/* 0CA5D4 800CD5D4 40820028 */  bne       lbl_800CD5FC
/* 0CA5D8 800CD5D8 3864FFFF */  subi      r3, r4, 0x1
/* 0CA5DC 800CD5DC 389FFFFF */  subi      r4, r31, 0x1
/* 0CA5E0 800CD5E0 38A50001 */  addi      r5, r5, 0x1
/* 0CA5E4 800CD5E4 4800000C */  b         lbl_800CD5F0
lbl_800CD5E8:
/* 0CA5E8 800CD5E8 8C030001 */  lbzu      r0, 0x1(r3)
/* 0CA5EC 800CD5EC 9C040001 */  stbu      r0, 0x1(r4)
lbl_800CD5F0:
/* 0CA5F0 800CD5F0 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA5F4 800CD5F4 4082FFF4 */  bne       lbl_800CD5E8
/* 0CA5F8 800CD5F8 48000024 */  b         lbl_800CD61C
lbl_800CD5FC:
/* 0CA5FC 800CD5FC 7C642A14 */  add       r3, r4, r5
/* 0CA600 800CD600 7C9F2A14 */  add       r4, r31, r5
/* 0CA604 800CD604 38A50001 */  addi      r5, r5, 0x1
/* 0CA608 800CD608 4800000C */  b         lbl_800CD614
lbl_800CD60C:
/* 0CA60C 800CD60C 8C03FFFF */  lbzu      r0, -0x1(r3)
/* 0CA610 800CD610 9C04FFFF */  stbu      r0, -0x1(r4)
lbl_800CD614:
/* 0CA614 800CD614 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA618 800CD618 4082FFF4 */  bne       lbl_800CD60C
lbl_800CD61C:
/* 0CA61C 800CD61C 7FE3FB78 */  mr        r3, r31
lbl_800CD620:
/* 0CA620 800CD620 80010024 */  lwz       r0, 0x24(r1)
/* 0CA624 800CD624 83E1001C */  lwz       r31, 0x1c(r1)
/* 0CA628 800CD628 38210020 */  addi      r1, r1, 0x20
/* 0CA62C 800CD62C 7C0803A6 */  mtlr      r0
/* 0CA630 800CD630 4E800020 */  blr
