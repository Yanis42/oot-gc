# mem_funcs.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD634 - 0x800CD910

glabel __copy_longs_rev_unaligned
/* 0CA634 800CD634 7D832A14 */  add       r12, r3, r5
/* 0CA638 800CD638 558007BF */  clrlwi.   r0, r12, 30
/* 0CA63C 800CD63C 7D642A14 */  add       r11, r4, r5
/* 0CA640 800CD640 7C030378 */  mr        r3, r0
/* 0CA644 800CD644 41820018 */  beq       lbl_800CD65C
/* 0CA648 800CD648 7CA32850 */  subf      r5, r3, r5
lbl_800CD64C:
/* 0CA64C 800CD64C 8C0BFFFF */  lbzu      r0, -0x1(r11)
/* 0CA650 800CD650 3463FFFF */  subic.    r3, r3, 0x1
/* 0CA654 800CD654 9C0CFFFF */  stbu      r0, -0x1(r12)
/* 0CA658 800CD658 4082FFF4 */  bne       lbl_800CD64C
lbl_800CD65C:
/* 0CA65C 800CD65C 55641EF8 */  clrlslwi  r4, r11, 30, 3
/* 0CA660 800CD660 556907BE */  clrlwi    r9, r11, 30
/* 0CA664 800CD664 21440020 */  subfic    r10, r4, 0x20
/* 0CA668 800CD668 20090004 */  subfic    r0, r9, 0x4
/* 0CA66C 800CD66C 7D6B0214 */  add       r11, r11, r0
/* 0CA670 800CD670 84EBFFFC */  lwzu      r7, -0x4(r11)
/* 0CA674 800CD674 54A6E8FE */  srwi      r6, r5, 3
lbl_800CD678:
/* 0CA678 800CD678 810BFFFC */  lwz       r8, -0x4(r11)
/* 0CA67C 800CD67C 7CE05430 */  srw       r0, r7, r10
/* 0CA680 800CD680 34C6FFFF */  subic.    r6, r6, 0x1
/* 0CA684 800CD684 7D032030 */  slw       r3, r8, r4
/* 0CA688 800CD688 7C600378 */  or        r0, r3, r0
/* 0CA68C 800CD68C 900CFFFC */  stw       r0, -0x4(r12)
/* 0CA690 800CD690 7D005430 */  srw       r0, r8, r10
/* 0CA694 800CD694 84EBFFF8 */  lwzu      r7, -0x8(r11)
/* 0CA698 800CD698 7CE32030 */  slw       r3, r7, r4
/* 0CA69C 800CD69C 7C600378 */  or        r0, r3, r0
/* 0CA6A0 800CD6A0 940CFFF8 */  stwu      r0, -0x8(r12)
/* 0CA6A4 800CD6A4 4082FFD4 */  bne       lbl_800CD678
/* 0CA6A8 800CD6A8 54A0077B */  rlwinm.   r0, r5, 0, 29, 29
/* 0CA6AC 800CD6AC 41820018 */  beq       lbl_800CD6C4
/* 0CA6B0 800CD6B0 846BFFFC */  lwzu      r3, -0x4(r11)
/* 0CA6B4 800CD6B4 7CE05430 */  srw       r0, r7, r10
/* 0CA6B8 800CD6B8 7C632030 */  slw       r3, r3, r4
/* 0CA6BC 800CD6BC 7C600378 */  or        r0, r3, r0
/* 0CA6C0 800CD6C0 940CFFFC */  stwu      r0, -0x4(r12)
lbl_800CD6C4:
/* 0CA6C4 800CD6C4 54A507BF */  clrlwi.   r5, r5, 30
/* 0CA6C8 800CD6C8 4D820020 */  beqlr
/* 0CA6CC 800CD6CC 7D6B4A14 */  add       r11, r11, r9
lbl_800CD6D0:
/* 0CA6D0 800CD6D0 8C0BFFFF */  lbzu      r0, -0x1(r11)
/* 0CA6D4 800CD6D4 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA6D8 800CD6D8 9C0CFFFF */  stbu      r0, -0x1(r12)
/* 0CA6DC 800CD6DC 4082FFF4 */  bne       lbl_800CD6D0
/* 0CA6E0 800CD6E0 4E800020 */  blr

glabel __copy_longs_unaligned
/* 0CA6E4 800CD6E4 7C0300D0 */  neg       r0, r3
/* 0CA6E8 800CD6E8 540607BF */  clrlwi.   r6, r0, 30
/* 0CA6EC 800CD6EC 3884FFFF */  subi      r4, r4, 0x1
/* 0CA6F0 800CD6F0 3863FFFF */  subi      r3, r3, 0x1
/* 0CA6F4 800CD6F4 41820018 */  beq       lbl_800CD70C
/* 0CA6F8 800CD6F8 7CA62850 */  subf      r5, r6, r5
lbl_800CD6FC:
/* 0CA6FC 800CD6FC 8C040001 */  lbzu      r0, 0x1(r4)
/* 0CA700 800CD700 34C6FFFF */  subic.    r6, r6, 0x1
/* 0CA704 800CD704 9C030001 */  stbu      r0, 0x1(r3)
/* 0CA708 800CD708 4082FFF4 */  bne       lbl_800CD6FC
lbl_800CD70C:
/* 0CA70C 800CD70C 38040001 */  addi      r0, r4, 0x1
/* 0CA710 800CD710 540B07BE */  clrlwi    r11, r0, 30
/* 0CA714 800CD714 7C8B2050 */  subf      r4, r11, r4
/* 0CA718 800CD718 3904FFFD */  subi      r8, r4, 0x3
/* 0CA71C 800CD71C 85280004 */  lwzu      r9, 0x4(r8)
/* 0CA720 800CD720 54041EF8 */  clrlslwi  r4, r0, 30, 3
/* 0CA724 800CD724 21840020 */  subfic    r12, r4, 0x20
/* 0CA728 800CD728 38C3FFFD */  subi      r6, r3, 0x3
/* 0CA72C 800CD72C 54A7E8FE */  srwi      r7, r5, 3
lbl_800CD730:
/* 0CA730 800CD730 81480004 */  lwz       r10, 0x4(r8)
/* 0CA734 800CD734 7D232030 */  slw       r3, r9, r4
/* 0CA738 800CD738 34E7FFFF */  subic.    r7, r7, 0x1
/* 0CA73C 800CD73C 7D406430 */  srw       r0, r10, r12
/* 0CA740 800CD740 7C600378 */  or        r0, r3, r0
/* 0CA744 800CD744 90060004 */  stw       r0, 0x4(r6)
/* 0CA748 800CD748 7D432030 */  slw       r3, r10, r4
/* 0CA74C 800CD74C 85280008 */  lwzu      r9, 0x8(r8)
/* 0CA750 800CD750 7D206430 */  srw       r0, r9, r12
/* 0CA754 800CD754 7C600378 */  or        r0, r3, r0
/* 0CA758 800CD758 94060008 */  stwu      r0, 0x8(r6)
/* 0CA75C 800CD75C 4082FFD4 */  bne       lbl_800CD730
/* 0CA760 800CD760 54A0077B */  rlwinm.   r0, r5, 0, 29, 29
/* 0CA764 800CD764 41820018 */  beq       lbl_800CD77C
/* 0CA768 800CD768 84080004 */  lwzu      r0, 0x4(r8)
/* 0CA76C 800CD76C 7D232030 */  slw       r3, r9, r4
/* 0CA770 800CD770 7C006430 */  srw       r0, r0, r12
/* 0CA774 800CD774 7C600378 */  or        r0, r3, r0
/* 0CA778 800CD778 94060004 */  stwu      r0, 0x4(r6)
lbl_800CD77C:
/* 0CA77C 800CD77C 54A507BF */  clrlwi.   r5, r5, 30
/* 0CA780 800CD780 38880003 */  addi      r4, r8, 0x3
/* 0CA784 800CD784 38660003 */  addi      r3, r6, 0x3
/* 0CA788 800CD788 4D820020 */  beqlr
/* 0CA78C 800CD78C 200B0004 */  subfic    r0, r11, 0x4
/* 0CA790 800CD790 7C802050 */  subf      r4, r0, r4
lbl_800CD794:
/* 0CA794 800CD794 8C040001 */  lbzu      r0, 0x1(r4)
/* 0CA798 800CD798 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA79C 800CD79C 9C030001 */  stbu      r0, 0x1(r3)
/* 0CA7A0 800CD7A0 4082FFF4 */  bne       lbl_800CD794
/* 0CA7A4 800CD7A4 4E800020 */  blr

glabel __copy_longs_rev_aligned
/* 0CA7A8 800CD7A8 7CC32A14 */  add       r6, r3, r5
/* 0CA7AC 800CD7AC 54C007BF */  clrlwi.   r0, r6, 30
/* 0CA7B0 800CD7B0 7C842A14 */  add       r4, r4, r5
/* 0CA7B4 800CD7B4 7C030378 */  mr        r3, r0
/* 0CA7B8 800CD7B8 41820018 */  beq       lbl_800CD7D0
/* 0CA7BC 800CD7BC 7CA32850 */  subf      r5, r3, r5
lbl_800CD7C0:
/* 0CA7C0 800CD7C0 8C04FFFF */  lbzu      r0, -0x1(r4)
/* 0CA7C4 800CD7C4 3463FFFF */  subic.    r3, r3, 0x1
/* 0CA7C8 800CD7C8 9C06FFFF */  stbu      r0, -0x1(r6)
/* 0CA7CC 800CD7CC 4082FFF4 */  bne       lbl_800CD7C0
lbl_800CD7D0:
/* 0CA7D0 800CD7D0 54A3D97F */  srwi.     r3, r5, 5
/* 0CA7D4 800CD7D4 4182004C */  beq       lbl_800CD820
lbl_800CD7D8:
/* 0CA7D8 800CD7D8 8004FFFC */  lwz       r0, -0x4(r4)
/* 0CA7DC 800CD7DC 3463FFFF */  subic.    r3, r3, 0x1
/* 0CA7E0 800CD7E0 9006FFFC */  stw       r0, -0x4(r6)
/* 0CA7E4 800CD7E4 8004FFF8 */  lwz       r0, -0x8(r4)
/* 0CA7E8 800CD7E8 9006FFF8 */  stw       r0, -0x8(r6)
/* 0CA7EC 800CD7EC 8004FFF4 */  lwz       r0, -0xc(r4)
/* 0CA7F0 800CD7F0 9006FFF4 */  stw       r0, -0xc(r6)
/* 0CA7F4 800CD7F4 8004FFF0 */  lwz       r0, -0x10(r4)
/* 0CA7F8 800CD7F8 9006FFF0 */  stw       r0, -0x10(r6)
/* 0CA7FC 800CD7FC 8004FFEC */  lwz       r0, -0x14(r4)
/* 0CA800 800CD800 9006FFEC */  stw       r0, -0x14(r6)
/* 0CA804 800CD804 8004FFE8 */  lwz       r0, -0x18(r4)
/* 0CA808 800CD808 9006FFE8 */  stw       r0, -0x18(r6)
/* 0CA80C 800CD80C 8004FFE4 */  lwz       r0, -0x1c(r4)
/* 0CA810 800CD810 9006FFE4 */  stw       r0, -0x1c(r6)
/* 0CA814 800CD814 8404FFE0 */  lwzu      r0, -0x20(r4)
/* 0CA818 800CD818 9406FFE0 */  stwu      r0, -0x20(r6)
/* 0CA81C 800CD81C 4082FFBC */  bne       lbl_800CD7D8
lbl_800CD820:
/* 0CA820 800CD820 54A3F77F */  extrwi.   r3, r5, 3, 27
/* 0CA824 800CD824 41820014 */  beq       lbl_800CD838
lbl_800CD828:
/* 0CA828 800CD828 8404FFFC */  lwzu      r0, -0x4(r4)
/* 0CA82C 800CD82C 3463FFFF */  subic.    r3, r3, 0x1
/* 0CA830 800CD830 9406FFFC */  stwu      r0, -0x4(r6)
/* 0CA834 800CD834 4082FFF4 */  bne       lbl_800CD828
lbl_800CD838:
/* 0CA838 800CD838 54A507BF */  clrlwi.   r5, r5, 30
/* 0CA83C 800CD83C 4D820020 */  beqlr
lbl_800CD840:
/* 0CA840 800CD840 8C04FFFF */  lbzu      r0, -0x1(r4)
/* 0CA844 800CD844 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA848 800CD848 9C06FFFF */  stbu      r0, -0x1(r6)
/* 0CA84C 800CD84C 4082FFF4 */  bne       lbl_800CD840
/* 0CA850 800CD850 4E800020 */  blr

glabel __copy_longs_aligned
/* 0CA854 800CD854 7C0300D0 */  neg       r0, r3
/* 0CA858 800CD858 540607BF */  clrlwi.   r6, r0, 30
/* 0CA85C 800CD85C 38E4FFFF */  subi      r7, r4, 0x1
/* 0CA860 800CD860 3863FFFF */  subi      r3, r3, 0x1
/* 0CA864 800CD864 41820018 */  beq       lbl_800CD87C
/* 0CA868 800CD868 7CA62850 */  subf      r5, r6, r5
lbl_800CD86C:
/* 0CA86C 800CD86C 8C070001 */  lbzu      r0, 0x1(r7)
/* 0CA870 800CD870 34C6FFFF */  subic.    r6, r6, 0x1
/* 0CA874 800CD874 9C030001 */  stbu      r0, 0x1(r3)
/* 0CA878 800CD878 4082FFF4 */  bne       lbl_800CD86C
lbl_800CD87C:
/* 0CA87C 800CD87C 54A4D97F */  srwi.     r4, r5, 5
/* 0CA880 800CD880 38C7FFFD */  subi      r6, r7, 0x3
/* 0CA884 800CD884 3863FFFD */  subi      r3, r3, 0x3
/* 0CA888 800CD888 4182004C */  beq       lbl_800CD8D4
lbl_800CD88C:
/* 0CA88C 800CD88C 80060004 */  lwz       r0, 0x4(r6)
/* 0CA890 800CD890 3484FFFF */  subic.    r4, r4, 0x1
/* 0CA894 800CD894 90030004 */  stw       r0, 0x4(r3)
/* 0CA898 800CD898 80060008 */  lwz       r0, 0x8(r6)
/* 0CA89C 800CD89C 90030008 */  stw       r0, 0x8(r3)
/* 0CA8A0 800CD8A0 8006000C */  lwz       r0, 0xc(r6)
/* 0CA8A4 800CD8A4 9003000C */  stw       r0, 0xc(r3)
/* 0CA8A8 800CD8A8 80060010 */  lwz       r0, 0x10(r6)
/* 0CA8AC 800CD8AC 90030010 */  stw       r0, 0x10(r3)
/* 0CA8B0 800CD8B0 80060014 */  lwz       r0, 0x14(r6)
/* 0CA8B4 800CD8B4 90030014 */  stw       r0, 0x14(r3)
/* 0CA8B8 800CD8B8 80060018 */  lwz       r0, 0x18(r6)
/* 0CA8BC 800CD8BC 90030018 */  stw       r0, 0x18(r3)
/* 0CA8C0 800CD8C0 8006001C */  lwz       r0, 0x1c(r6)
/* 0CA8C4 800CD8C4 9003001C */  stw       r0, 0x1c(r3)
/* 0CA8C8 800CD8C8 84060020 */  lwzu      r0, 0x20(r6)
/* 0CA8CC 800CD8CC 94030020 */  stwu      r0, 0x20(r3)
/* 0CA8D0 800CD8D0 4082FFBC */  bne       lbl_800CD88C
lbl_800CD8D4:
/* 0CA8D4 800CD8D4 54A4F77F */  extrwi.   r4, r5, 3, 27
/* 0CA8D8 800CD8D8 41820014 */  beq       lbl_800CD8EC
lbl_800CD8DC:
/* 0CA8DC 800CD8DC 84060004 */  lwzu      r0, 0x4(r6)
/* 0CA8E0 800CD8E0 3484FFFF */  subic.    r4, r4, 0x1
/* 0CA8E4 800CD8E4 94030004 */  stwu      r0, 0x4(r3)
/* 0CA8E8 800CD8E8 4082FFF4 */  bne       lbl_800CD8DC
lbl_800CD8EC:
/* 0CA8EC 800CD8EC 54A507BF */  clrlwi.   r5, r5, 30
/* 0CA8F0 800CD8F0 38860003 */  addi      r4, r6, 0x3
/* 0CA8F4 800CD8F4 38630003 */  addi      r3, r3, 0x3
/* 0CA8F8 800CD8F8 4D820020 */  beqlr
lbl_800CD8FC:
/* 0CA8FC 800CD8FC 8C040001 */  lbzu      r0, 0x1(r4)
/* 0CA900 800CD900 34A5FFFF */  subic.    r5, r5, 0x1
/* 0CA904 800CD904 9C030001 */  stbu      r0, 0x1(r3)
/* 0CA908 800CD908 4082FFF4 */  bne       lbl_800CD8FC
/* 0CA90C 800CD90C 4E800020 */  blr
