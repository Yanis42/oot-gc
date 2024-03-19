# runtime.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CC4AC - 0x800CCBBC

glabel __cvt_fp2unsigned
/* 0C94AC 800CC4AC 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C94B0 800CC4B0 3C80800D */  lis       r4, __constants@h
/* 0C94B4 800CC4B4 60841EF0 */  ori       r4, r4, __constants@l
/* 0C94B8 800CC4B8 38600000 */  li        r3, 0x0
/* 0C94BC 800CC4BC C8040000 */  lfd       f0, 0x0(r4)
/* 0C94C0 800CC4C0 C8640008 */  lfd       f3, 0x8(r4)
/* 0C94C4 800CC4C4 C8840010 */  lfd       f4, 0x10(r4)
/* 0C94C8 800CC4C8 FC010000 */  fcmpu     cr0, f1, f0
/* 0C94CC 800CC4CC FF011800 */  fcmpu     cr6, f1, f3
/* 0C94D0 800CC4D0 41800030 */  blt       lbl_800CC500
/* 0C94D4 800CC4D4 3863FFFF */  subi      r3, r3, 0x1
/* 0C94D8 800CC4D8 40980028 */  bge       cr6, lbl_800CC500
/* 0C94DC 800CC4DC FF812000 */  fcmpu     cr7, f1, f4
/* 0C94E0 800CC4E0 FC400890 */  fmr       f2, f1
/* 0C94E4 800CC4E4 419C0008 */  blt       cr7, lbl_800CC4EC
/* 0C94E8 800CC4E8 FC412028 */  fsub      f2, f1, f4
lbl_800CC4EC:
/* 0C94EC 800CC4EC FC40101E */  fctiwz    f2, f2
/* 0C94F0 800CC4F0 D8410008 */  stfd      f2, 0x8(r1)
/* 0C94F4 800CC4F4 8061000C */  lwz       r3, 0xc(r1)
/* 0C94F8 800CC4F8 419C0008 */  blt       cr7, lbl_800CC500
/* 0C94FC 800CC4FC 3C638000 */  addis     r3, r3, 0x8000
lbl_800CC500:
/* 0C9500 800CC500 38210010 */  addi      r1, r1, 0x10
/* 0C9504 800CC504 4E800020 */  blr

glabel __div2u
/* 0C9508 800CC508 2C030000 */  cmpwi     r3, 0x0
/* 0C950C 800CC50C 7C600034 */  cntlzw    r0, r3
/* 0C9510 800CC510 7C890034 */  cntlzw    r9, r4
/* 0C9514 800CC514 40820008 */  bne       lbl_800CC51C
/* 0C9518 800CC518 38090020 */  addi      r0, r9, 0x20
lbl_800CC51C:
/* 0C951C 800CC51C 2C050000 */  cmpwi     r5, 0x0
/* 0C9520 800CC520 7CA90034 */  cntlzw    r9, r5
/* 0C9524 800CC524 7CCA0034 */  cntlzw    r10, r6
/* 0C9528 800CC528 40820008 */  bne       lbl_800CC530
/* 0C952C 800CC52C 392A0020 */  addi      r9, r10, 0x20
lbl_800CC530:
/* 0C9530 800CC530 7C004800 */  cmpw      r0, r9
/* 0C9534 800CC534 21400040 */  subfic    r10, r0, 0x40
/* 0C9538 800CC538 418100B0 */  bgt       lbl_800CC5E8
/* 0C953C 800CC53C 39290001 */  addi      r9, r9, 0x1
/* 0C9540 800CC540 21290040 */  subfic    r9, r9, 0x40
/* 0C9544 800CC544 7C004A14 */  add       r0, r0, r9
/* 0C9548 800CC548 7D295050 */  subf      r9, r9, r10
/* 0C954C 800CC54C 7D2903A6 */  mtctr     r9
/* 0C9550 800CC550 2C090020 */  cmpwi     r9, 0x20
/* 0C9554 800CC554 38E9FFE0 */  subi      r7, r9, 0x20
/* 0C9558 800CC558 41800010 */  blt       lbl_800CC568
/* 0C955C 800CC55C 7C683C30 */  srw       r8, r3, r7
/* 0C9560 800CC560 38E00000 */  li        r7, 0x0
/* 0C9564 800CC564 48000018 */  b         lbl_800CC57C
lbl_800CC568:
/* 0C9568 800CC568 7C884C30 */  srw       r8, r4, r9
/* 0C956C 800CC56C 20E90020 */  subfic    r7, r9, 0x20
/* 0C9570 800CC570 7C673830 */  slw       r7, r3, r7
/* 0C9574 800CC574 7D083B78 */  or        r8, r8, r7
/* 0C9578 800CC578 7C674C30 */  srw       r7, r3, r9
lbl_800CC57C:
/* 0C957C 800CC57C 2C000020 */  cmpwi     r0, 0x20
/* 0C9580 800CC580 3120FFE0 */  subic     r9, r0, 0x20
/* 0C9584 800CC584 41800010 */  blt       lbl_800CC594
/* 0C9588 800CC588 7C834830 */  slw       r3, r4, r9
/* 0C958C 800CC58C 38800000 */  li        r4, 0x0
/* 0C9590 800CC590 48000018 */  b         lbl_800CC5A8
lbl_800CC594:
/* 0C9594 800CC594 7C630030 */  slw       r3, r3, r0
/* 0C9598 800CC598 21200020 */  subfic    r9, r0, 0x20
/* 0C959C 800CC59C 7C894C30 */  srw       r9, r4, r9
/* 0C95A0 800CC5A0 7C634B78 */  or        r3, r3, r9
/* 0C95A4 800CC5A4 7C840030 */  slw       r4, r4, r0
lbl_800CC5A8:
/* 0C95A8 800CC5A8 3940FFFF */  li        r10, -0x1
/* 0C95AC 800CC5AC 30E70000 */  addic     r7, r7, 0x0
lbl_800CC5B0:
/* 0C95B0 800CC5B0 7C842114 */  adde      r4, r4, r4
/* 0C95B4 800CC5B4 7C631914 */  adde      r3, r3, r3
/* 0C95B8 800CC5B8 7D084114 */  adde      r8, r8, r8
/* 0C95BC 800CC5BC 7CE73914 */  adde      r7, r7, r7
/* 0C95C0 800CC5C0 7C064010 */  subfc     r0, r6, r8
/* 0C95C4 800CC5C4 7D253911 */  subfe.    r9, r5, r7
/* 0C95C8 800CC5C8 41800010 */  blt       lbl_800CC5D8
/* 0C95CC 800CC5CC 7C080378 */  mr        r8, r0
/* 0C95D0 800CC5D0 7D274B78 */  mr        r7, r9
/* 0C95D4 800CC5D4 300A0001 */  addic     r0, r10, 0x1
lbl_800CC5D8:
/* 0C95D8 800CC5D8 4200FFD8 */  bdnz      lbl_800CC5B0
/* 0C95DC 800CC5DC 7C842114 */  adde      r4, r4, r4
/* 0C95E0 800CC5E0 7C631914 */  adde      r3, r3, r3
/* 0C95E4 800CC5E4 4E800020 */  blr
lbl_800CC5E8:
/* 0C95E8 800CC5E8 38800000 */  li        r4, 0x0
/* 0C95EC 800CC5EC 38600000 */  li        r3, 0x0
/* 0C95F0 800CC5F0 4E800020 */  blr

glabel __div2i
/* 0C95F4 800CC5F4 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C95F8 800CC5F8 54690001 */  clrrwi.   r9, r3, 31
/* 0C95FC 800CC5FC 4182000C */  beq       lbl_800CC608
/* 0C9600 800CC600 20840000 */  subfic    r4, r4, 0x0
/* 0C9604 800CC604 7C630190 */  subfze    r3, r3
lbl_800CC608:
/* 0C9608 800CC608 91210008 */  stw       r9, 0x8(r1)
/* 0C960C 800CC60C 54A90001 */  clrrwi.   r9, r5, 31
/* 0C9610 800CC610 4182000C */  beq       lbl_800CC61C
/* 0C9614 800CC614 20C60000 */  subfic    r6, r6, 0x0
/* 0C9618 800CC618 7CA50190 */  subfze    r5, r5
lbl_800CC61C:
/* 0C961C 800CC61C 9121000C */  stw       r9, 0xc(r1)
/* 0C9620 800CC620 2C030000 */  cmpwi     r3, 0x0
/* 0C9624 800CC624 7C600034 */  cntlzw    r0, r3
/* 0C9628 800CC628 7C890034 */  cntlzw    r9, r4
/* 0C962C 800CC62C 40820008 */  bne       lbl_800CC634
/* 0C9630 800CC630 38090020 */  addi      r0, r9, 0x20
lbl_800CC634:
/* 0C9634 800CC634 2C050000 */  cmpwi     r5, 0x0
/* 0C9638 800CC638 7CA90034 */  cntlzw    r9, r5
/* 0C963C 800CC63C 7CCA0034 */  cntlzw    r10, r6
/* 0C9640 800CC640 40820008 */  bne       lbl_800CC648
/* 0C9644 800CC644 392A0020 */  addi      r9, r10, 0x20
lbl_800CC648:
/* 0C9648 800CC648 7C004800 */  cmpw      r0, r9
/* 0C964C 800CC64C 21400040 */  subfic    r10, r0, 0x40
/* 0C9650 800CC650 418100CC */  bgt       lbl_800CC71C
/* 0C9654 800CC654 39290001 */  addi      r9, r9, 0x1
/* 0C9658 800CC658 21290040 */  subfic    r9, r9, 0x40
/* 0C965C 800CC65C 7C004A14 */  add       r0, r0, r9
/* 0C9660 800CC660 7D295050 */  subf      r9, r9, r10
/* 0C9664 800CC664 7D2903A6 */  mtctr     r9
/* 0C9668 800CC668 2C090020 */  cmpwi     r9, 0x20
/* 0C966C 800CC66C 38E9FFE0 */  subi      r7, r9, 0x20
/* 0C9670 800CC670 41800010 */  blt       lbl_800CC680
/* 0C9674 800CC674 7C683C30 */  srw       r8, r3, r7
/* 0C9678 800CC678 38E00000 */  li        r7, 0x0
/* 0C967C 800CC67C 48000018 */  b         lbl_800CC694
lbl_800CC680:
/* 0C9680 800CC680 7C884C30 */  srw       r8, r4, r9
/* 0C9684 800CC684 20E90020 */  subfic    r7, r9, 0x20
/* 0C9688 800CC688 7C673830 */  slw       r7, r3, r7
/* 0C968C 800CC68C 7D083B78 */  or        r8, r8, r7
/* 0C9690 800CC690 7C674C30 */  srw       r7, r3, r9
lbl_800CC694:
/* 0C9694 800CC694 2C000020 */  cmpwi     r0, 0x20
/* 0C9698 800CC698 3120FFE0 */  subic     r9, r0, 0x20
/* 0C969C 800CC69C 41800010 */  blt       lbl_800CC6AC
/* 0C96A0 800CC6A0 7C834830 */  slw       r3, r4, r9
/* 0C96A4 800CC6A4 38800000 */  li        r4, 0x0
/* 0C96A8 800CC6A8 48000018 */  b         lbl_800CC6C0
lbl_800CC6AC:
/* 0C96AC 800CC6AC 7C630030 */  slw       r3, r3, r0
/* 0C96B0 800CC6B0 21200020 */  subfic    r9, r0, 0x20
/* 0C96B4 800CC6B4 7C894C30 */  srw       r9, r4, r9
/* 0C96B8 800CC6B8 7C634B78 */  or        r3, r3, r9
/* 0C96BC 800CC6BC 7C840030 */  slw       r4, r4, r0
lbl_800CC6C0:
/* 0C96C0 800CC6C0 3940FFFF */  li        r10, -0x1
/* 0C96C4 800CC6C4 30E70000 */  addic     r7, r7, 0x0
lbl_800CC6C8:
/* 0C96C8 800CC6C8 7C842114 */  adde      r4, r4, r4
/* 0C96CC 800CC6CC 7C631914 */  adde      r3, r3, r3
/* 0C96D0 800CC6D0 7D084114 */  adde      r8, r8, r8
/* 0C96D4 800CC6D4 7CE73914 */  adde      r7, r7, r7
/* 0C96D8 800CC6D8 7C064010 */  subfc     r0, r6, r8
/* 0C96DC 800CC6DC 7D253911 */  subfe.    r9, r5, r7
/* 0C96E0 800CC6E0 41800010 */  blt       lbl_800CC6F0
/* 0C96E4 800CC6E4 7C080378 */  mr        r8, r0
/* 0C96E8 800CC6E8 7D274B78 */  mr        r7, r9
/* 0C96EC 800CC6EC 300A0001 */  addic     r0, r10, 0x1
lbl_800CC6F0:
/* 0C96F0 800CC6F0 4200FFD8 */  bdnz      lbl_800CC6C8
/* 0C96F4 800CC6F4 7C842114 */  adde      r4, r4, r4
/* 0C96F8 800CC6F8 7C631914 */  adde      r3, r3, r3
/* 0C96FC 800CC6FC 81210008 */  lwz       r9, 0x8(r1)
/* 0C9700 800CC700 8141000C */  lwz       r10, 0xc(r1)
/* 0C9704 800CC704 7D275279 */  xor.      r7, r9, r10
/* 0C9708 800CC708 41820010 */  beq       lbl_800CC718
/* 0C970C 800CC70C 2C090000 */  cmpwi     r9, 0x0
/* 0C9710 800CC710 20840000 */  subfic    r4, r4, 0x0
/* 0C9714 800CC714 7C630190 */  subfze    r3, r3
lbl_800CC718:
/* 0C9718 800CC718 4800000C */  b         lbl_800CC724
lbl_800CC71C:
/* 0C971C 800CC71C 38800000 */  li        r4, 0x0
/* 0C9720 800CC720 38600000 */  li        r3, 0x0
lbl_800CC724:
/* 0C9724 800CC724 38210010 */  addi      r1, r1, 0x10
/* 0C9728 800CC728 4E800020 */  blr

glabel __mod2u
/* 0C972C 800CC72C 2C030000 */  cmpwi     r3, 0x0
/* 0C9730 800CC730 7C600034 */  cntlzw    r0, r3
/* 0C9734 800CC734 7C890034 */  cntlzw    r9, r4
/* 0C9738 800CC738 40820008 */  bne       lbl_800CC740
/* 0C973C 800CC73C 38090020 */  addi      r0, r9, 0x20
lbl_800CC740:
/* 0C9740 800CC740 2C050000 */  cmpwi     r5, 0x0
/* 0C9744 800CC744 7CA90034 */  cntlzw    r9, r5
/* 0C9748 800CC748 7CCA0034 */  cntlzw    r10, r6
/* 0C974C 800CC74C 40820008 */  bne       lbl_800CC754
/* 0C9750 800CC750 392A0020 */  addi      r9, r10, 0x20
lbl_800CC754:
/* 0C9754 800CC754 7C004800 */  cmpw      r0, r9
/* 0C9758 800CC758 21400040 */  subfic    r10, r0, 0x40
/* 0C975C 800CC75C 418100B0 */  bgt       lbl_800CC80C
/* 0C9760 800CC760 39290001 */  addi      r9, r9, 0x1
/* 0C9764 800CC764 21290040 */  subfic    r9, r9, 0x40
/* 0C9768 800CC768 7C004A14 */  add       r0, r0, r9
/* 0C976C 800CC76C 7D295050 */  subf      r9, r9, r10
/* 0C9770 800CC770 7D2903A6 */  mtctr     r9
/* 0C9774 800CC774 2C090020 */  cmpwi     r9, 0x20
/* 0C9778 800CC778 38E9FFE0 */  subi      r7, r9, 0x20
/* 0C977C 800CC77C 41800010 */  blt       lbl_800CC78C
/* 0C9780 800CC780 7C683C30 */  srw       r8, r3, r7
/* 0C9784 800CC784 38E00000 */  li        r7, 0x0
/* 0C9788 800CC788 48000018 */  b         lbl_800CC7A0
lbl_800CC78C:
/* 0C978C 800CC78C 7C884C30 */  srw       r8, r4, r9
/* 0C9790 800CC790 20E90020 */  subfic    r7, r9, 0x20
/* 0C9794 800CC794 7C673830 */  slw       r7, r3, r7
/* 0C9798 800CC798 7D083B78 */  or        r8, r8, r7
/* 0C979C 800CC79C 7C674C30 */  srw       r7, r3, r9
lbl_800CC7A0:
/* 0C97A0 800CC7A0 2C000020 */  cmpwi     r0, 0x20
/* 0C97A4 800CC7A4 3120FFE0 */  subic     r9, r0, 0x20
/* 0C97A8 800CC7A8 41800010 */  blt       lbl_800CC7B8
/* 0C97AC 800CC7AC 7C834830 */  slw       r3, r4, r9
/* 0C97B0 800CC7B0 38800000 */  li        r4, 0x0
/* 0C97B4 800CC7B4 48000018 */  b         lbl_800CC7CC
lbl_800CC7B8:
/* 0C97B8 800CC7B8 7C630030 */  slw       r3, r3, r0
/* 0C97BC 800CC7BC 21200020 */  subfic    r9, r0, 0x20
/* 0C97C0 800CC7C0 7C894C30 */  srw       r9, r4, r9
/* 0C97C4 800CC7C4 7C634B78 */  or        r3, r3, r9
/* 0C97C8 800CC7C8 7C840030 */  slw       r4, r4, r0
lbl_800CC7CC:
/* 0C97CC 800CC7CC 3940FFFF */  li        r10, -0x1
/* 0C97D0 800CC7D0 30E70000 */  addic     r7, r7, 0x0
lbl_800CC7D4:
/* 0C97D4 800CC7D4 7C842114 */  adde      r4, r4, r4
/* 0C97D8 800CC7D8 7C631914 */  adde      r3, r3, r3
/* 0C97DC 800CC7DC 7D084114 */  adde      r8, r8, r8
/* 0C97E0 800CC7E0 7CE73914 */  adde      r7, r7, r7
/* 0C97E4 800CC7E4 7C064010 */  subfc     r0, r6, r8
/* 0C97E8 800CC7E8 7D253911 */  subfe.    r9, r5, r7
/* 0C97EC 800CC7EC 41800010 */  blt       lbl_800CC7FC
/* 0C97F0 800CC7F0 7C080378 */  mr        r8, r0
/* 0C97F4 800CC7F4 7D274B78 */  mr        r7, r9
/* 0C97F8 800CC7F8 300A0001 */  addic     r0, r10, 0x1
lbl_800CC7FC:
/* 0C97FC 800CC7FC 4200FFD8 */  bdnz      lbl_800CC7D4
/* 0C9800 800CC800 7D044378 */  mr        r4, r8
/* 0C9804 800CC804 7CE33B78 */  mr        r3, r7
/* 0C9808 800CC808 4E800020 */  blr
lbl_800CC80C:
/* 0C980C 800CC80C 4E800020 */  blr

glabel __mod2i
/* 0C9810 800CC810 2F830000 */  cmpwi     cr7, r3, 0x0
/* 0C9814 800CC814 409C000C */  bge       cr7, lbl_800CC820
/* 0C9818 800CC818 20840000 */  subfic    r4, r4, 0x0
/* 0C981C 800CC81C 7C630190 */  subfze    r3, r3
lbl_800CC820:
/* 0C9820 800CC820 2C050000 */  cmpwi     r5, 0x0
/* 0C9824 800CC824 4080000C */  bge       lbl_800CC830
/* 0C9828 800CC828 20C60000 */  subfic    r6, r6, 0x0
/* 0C982C 800CC82C 7CA50190 */  subfze    r5, r5
lbl_800CC830:
/* 0C9830 800CC830 2C030000 */  cmpwi     r3, 0x0
/* 0C9834 800CC834 7C600034 */  cntlzw    r0, r3
/* 0C9838 800CC838 7C890034 */  cntlzw    r9, r4
/* 0C983C 800CC83C 40820008 */  bne       lbl_800CC844
/* 0C9840 800CC840 38090020 */  addi      r0, r9, 0x20
lbl_800CC844:
/* 0C9844 800CC844 2C050000 */  cmpwi     r5, 0x0
/* 0C9848 800CC848 7CA90034 */  cntlzw    r9, r5
/* 0C984C 800CC84C 7CCA0034 */  cntlzw    r10, r6
/* 0C9850 800CC850 40820008 */  bne       lbl_800CC858
/* 0C9854 800CC854 392A0020 */  addi      r9, r10, 0x20
lbl_800CC858:
/* 0C9858 800CC858 7C004800 */  cmpw      r0, r9
/* 0C985C 800CC85C 21400040 */  subfic    r10, r0, 0x40
/* 0C9860 800CC860 418100AC */  bgt       lbl_800CC90C
/* 0C9864 800CC864 39290001 */  addi      r9, r9, 0x1
/* 0C9868 800CC868 21290040 */  subfic    r9, r9, 0x40
/* 0C986C 800CC86C 7C004A14 */  add       r0, r0, r9
/* 0C9870 800CC870 7D295050 */  subf      r9, r9, r10
/* 0C9874 800CC874 7D2903A6 */  mtctr     r9
/* 0C9878 800CC878 2C090020 */  cmpwi     r9, 0x20
/* 0C987C 800CC87C 38E9FFE0 */  subi      r7, r9, 0x20
/* 0C9880 800CC880 41800010 */  blt       lbl_800CC890
/* 0C9884 800CC884 7C683C30 */  srw       r8, r3, r7
/* 0C9888 800CC888 38E00000 */  li        r7, 0x0
/* 0C988C 800CC88C 48000018 */  b         lbl_800CC8A4
lbl_800CC890:
/* 0C9890 800CC890 7C884C30 */  srw       r8, r4, r9
/* 0C9894 800CC894 20E90020 */  subfic    r7, r9, 0x20
/* 0C9898 800CC898 7C673830 */  slw       r7, r3, r7
/* 0C989C 800CC89C 7D083B78 */  or        r8, r8, r7
/* 0C98A0 800CC8A0 7C674C30 */  srw       r7, r3, r9
lbl_800CC8A4:
/* 0C98A4 800CC8A4 2C000020 */  cmpwi     r0, 0x20
/* 0C98A8 800CC8A8 3120FFE0 */  subic     r9, r0, 0x20
/* 0C98AC 800CC8AC 41800010 */  blt       lbl_800CC8BC
/* 0C98B0 800CC8B0 7C834830 */  slw       r3, r4, r9
/* 0C98B4 800CC8B4 38800000 */  li        r4, 0x0
/* 0C98B8 800CC8B8 48000018 */  b         lbl_800CC8D0
lbl_800CC8BC:
/* 0C98BC 800CC8BC 7C630030 */  slw       r3, r3, r0
/* 0C98C0 800CC8C0 21200020 */  subfic    r9, r0, 0x20
/* 0C98C4 800CC8C4 7C894C30 */  srw       r9, r4, r9
/* 0C98C8 800CC8C8 7C634B78 */  or        r3, r3, r9
/* 0C98CC 800CC8CC 7C840030 */  slw       r4, r4, r0
lbl_800CC8D0:
/* 0C98D0 800CC8D0 3940FFFF */  li        r10, -0x1
/* 0C98D4 800CC8D4 30E70000 */  addic     r7, r7, 0x0
lbl_800CC8D8:
/* 0C98D8 800CC8D8 7C842114 */  adde      r4, r4, r4
/* 0C98DC 800CC8DC 7C631914 */  adde      r3, r3, r3
/* 0C98E0 800CC8E0 7D084114 */  adde      r8, r8, r8
/* 0C98E4 800CC8E4 7CE73914 */  adde      r7, r7, r7
/* 0C98E8 800CC8E8 7C064010 */  subfc     r0, r6, r8
/* 0C98EC 800CC8EC 7D253911 */  subfe.    r9, r5, r7
/* 0C98F0 800CC8F0 41800010 */  blt       lbl_800CC900
/* 0C98F4 800CC8F4 7C080378 */  mr        r8, r0
/* 0C98F8 800CC8F8 7D274B78 */  mr        r7, r9
/* 0C98FC 800CC8FC 300A0001 */  addic     r0, r10, 0x1
lbl_800CC900:
/* 0C9900 800CC900 4200FFD8 */  bdnz      lbl_800CC8D8
/* 0C9904 800CC904 7D044378 */  mr        r4, r8
/* 0C9908 800CC908 7CE33B78 */  mr        r3, r7
lbl_800CC90C:
/* 0C990C 800CC90C 409C000C */  bge       cr7, lbl_800CC918
/* 0C9910 800CC910 20840000 */  subfic    r4, r4, 0x0
/* 0C9914 800CC914 7C630190 */  subfze    r3, r3
lbl_800CC918:
/* 0C9918 800CC918 4E800020 */  blr

glabel __shl2i
/* 0C991C 800CC91C 21050020 */  subfic    r8, r5, 0x20
/* 0C9920 800CC920 3125FFE0 */  subic     r9, r5, 0x20
/* 0C9924 800CC924 7C632830 */  slw       r3, r3, r5
/* 0C9928 800CC928 7C8A4430 */  srw       r10, r4, r8
/* 0C992C 800CC92C 7C635378 */  or        r3, r3, r10
/* 0C9930 800CC930 7C8A4830 */  slw       r10, r4, r9
/* 0C9934 800CC934 7C635378 */  or        r3, r3, r10
/* 0C9938 800CC938 7C842830 */  slw       r4, r4, r5
/* 0C993C 800CC93C 4E800020 */  blr

glabel __shr2u
/* 0C9940 800CC940 21050020 */  subfic    r8, r5, 0x20
/* 0C9944 800CC944 3125FFE0 */  subic     r9, r5, 0x20
/* 0C9948 800CC948 7C842C30 */  srw       r4, r4, r5
/* 0C994C 800CC94C 7C6A4030 */  slw       r10, r3, r8
/* 0C9950 800CC950 7C845378 */  or        r4, r4, r10
/* 0C9954 800CC954 7C6A4C30 */  srw       r10, r3, r9
/* 0C9958 800CC958 7C845378 */  or        r4, r4, r10
/* 0C995C 800CC95C 7C632C30 */  srw       r3, r3, r5
/* 0C9960 800CC960 4E800020 */  blr

glabel __shr2i
/* 0C9964 800CC964 21050020 */  subfic    r8, r5, 0x20
/* 0C9968 800CC968 3525FFE0 */  subic.    r9, r5, 0x20
/* 0C996C 800CC96C 7C842C30 */  srw       r4, r4, r5
/* 0C9970 800CC970 7C6A4030 */  slw       r10, r3, r8
/* 0C9974 800CC974 7C845378 */  or        r4, r4, r10
/* 0C9978 800CC978 7C6A4E30 */  sraw      r10, r3, r9
/* 0C997C 800CC97C 40810008 */  ble       lbl_800CC984
/* 0C9980 800CC980 7C845378 */  or        r4, r4, r10
lbl_800CC984:
/* 0C9984 800CC984 7C632E30 */  sraw      r3, r3, r5
/* 0C9988 800CC988 4E800020 */  blr

glabel __cvt_sll_dbl
/* 0C998C 800CC98C 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C9990 800CC990 54650001 */  clrrwi.   r5, r3, 31
/* 0C9994 800CC994 4182000C */  beq       lbl_800CC9A0
/* 0C9998 800CC998 20840000 */  subfic    r4, r4, 0x0
/* 0C999C 800CC99C 7C630190 */  subfze    r3, r3
lbl_800CC9A0:
/* 0C99A0 800CC9A0 7C672379 */  or.       r7, r3, r4
/* 0C99A4 800CC9A4 38C00000 */  li        r6, 0x0
/* 0C99A8 800CC9A8 41820080 */  beq       lbl_800CCA28
/* 0C99AC 800CC9AC 7C670034 */  cntlzw    r7, r3
/* 0C99B0 800CC9B0 7C880034 */  cntlzw    r8, r4
/* 0C99B4 800CC9B4 54E9D008 */  extlwi    r9, r7, 5, 26
/* 0C99B8 800CC9B8 7D29FE70 */  srawi     r9, r9, 31
/* 0C99BC 800CC9BC 7D294038 */  and       r9, r9, r8
/* 0C99C0 800CC9C0 7CE74A14 */  add       r7, r7, r9
/* 0C99C4 800CC9C4 21070020 */  subfic    r8, r7, 0x20
/* 0C99C8 800CC9C8 3127FFE0 */  subic     r9, r7, 0x20
/* 0C99CC 800CC9CC 7C633830 */  slw       r3, r3, r7
/* 0C99D0 800CC9D0 7C8A4430 */  srw       r10, r4, r8
/* 0C99D4 800CC9D4 7C635378 */  or        r3, r3, r10
/* 0C99D8 800CC9D8 7C8A4830 */  slw       r10, r4, r9
/* 0C99DC 800CC9DC 7C635378 */  or        r3, r3, r10
/* 0C99E0 800CC9E0 7C843830 */  slw       r4, r4, r7
/* 0C99E4 800CC9E4 7CC73050 */  subf      r6, r7, r6
/* 0C99E8 800CC9E8 5487057E */  clrlwi    r7, r4, 21
/* 0C99EC 800CC9EC 2C070400 */  cmpwi     r7, 0x400
/* 0C99F0 800CC9F0 38C6043E */  addi      r6, r6, 0x43e
/* 0C99F4 800CC9F4 4180001C */  blt       lbl_800CCA10
/* 0C99F8 800CC9F8 4181000C */  bgt       lbl_800CCA04
/* 0C99FC 800CC9FC 54870529 */  rlwinm.   r7, r4, 0, 20, 20
/* 0C9A00 800CCA00 41820010 */  beq       lbl_800CCA10
lbl_800CCA04:
/* 0C9A04 800CCA04 30840800 */  addic     r4, r4, 0x800
/* 0C9A08 800CCA08 7C630194 */  addze     r3, r3
/* 0C9A0C 800CCA0C 7CC60194 */  addze     r6, r6
lbl_800CCA10:
/* 0C9A10 800CCA10 5484A83E */  rotrwi    r4, r4, 11
/* 0C9A14 800CCA14 5064A814 */  rlwimi    r4, r3, 21, 0, 10
/* 0C9A18 800CCA18 5463AB3E */  extrwi    r3, r3, 20, 1
/* 0C9A1C 800CCA1C 54C6A016 */  slwi      r6, r6, 20
/* 0C9A20 800CCA20 7CC31B78 */  or        r3, r6, r3
/* 0C9A24 800CCA24 7CA31B78 */  or        r3, r5, r3
lbl_800CCA28:
/* 0C9A28 800CCA28 90610008 */  stw       r3, 0x8(r1)
/* 0C9A2C 800CCA2C 9081000C */  stw       r4, 0xc(r1)
/* 0C9A30 800CCA30 C8210008 */  lfd       f1, 0x8(r1)
/* 0C9A34 800CCA34 38210010 */  addi      r1, r1, 0x10
/* 0C9A38 800CCA38 4E800020 */  blr

glabel __cvt_sll_flt
/* 0C9A3C 800CCA3C 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C9A40 800CCA40 54650001 */  clrrwi.   r5, r3, 31
/* 0C9A44 800CCA44 4182000C */  beq       lbl_800CCA50
/* 0C9A48 800CCA48 20840000 */  subfic    r4, r4, 0x0
/* 0C9A4C 800CCA4C 7C630190 */  subfze    r3, r3
lbl_800CCA50:
/* 0C9A50 800CCA50 7C672379 */  or.       r7, r3, r4
/* 0C9A54 800CCA54 38C00000 */  li        r6, 0x0
/* 0C9A58 800CCA58 41820080 */  beq       lbl_800CCAD8
/* 0C9A5C 800CCA5C 7C670034 */  cntlzw    r7, r3
/* 0C9A60 800CCA60 7C880034 */  cntlzw    r8, r4
/* 0C9A64 800CCA64 54E9D008 */  extlwi    r9, r7, 5, 26
/* 0C9A68 800CCA68 7D29FE70 */  srawi     r9, r9, 31
/* 0C9A6C 800CCA6C 7D294038 */  and       r9, r9, r8
/* 0C9A70 800CCA70 7CE74A14 */  add       r7, r7, r9
/* 0C9A74 800CCA74 21070020 */  subfic    r8, r7, 0x20
/* 0C9A78 800CCA78 3127FFE0 */  subic     r9, r7, 0x20
/* 0C9A7C 800CCA7C 7C633830 */  slw       r3, r3, r7
/* 0C9A80 800CCA80 7C8A4430 */  srw       r10, r4, r8
/* 0C9A84 800CCA84 7C635378 */  or        r3, r3, r10
/* 0C9A88 800CCA88 7C8A4830 */  slw       r10, r4, r9
/* 0C9A8C 800CCA8C 7C635378 */  or        r3, r3, r10
/* 0C9A90 800CCA90 7C843830 */  slw       r4, r4, r7
/* 0C9A94 800CCA94 7CC73050 */  subf      r6, r7, r6
/* 0C9A98 800CCA98 5487057E */  clrlwi    r7, r4, 21
/* 0C9A9C 800CCA9C 2C070400 */  cmpwi     r7, 0x400
/* 0C9AA0 800CCAA0 38C6043E */  addi      r6, r6, 0x43e
/* 0C9AA4 800CCAA4 4180001C */  blt       lbl_800CCAC0
/* 0C9AA8 800CCAA8 4181000C */  bgt       lbl_800CCAB4
/* 0C9AAC 800CCAAC 54870529 */  rlwinm.   r7, r4, 0, 20, 20
/* 0C9AB0 800CCAB0 41820010 */  beq       lbl_800CCAC0
lbl_800CCAB4:
/* 0C9AB4 800CCAB4 30840800 */  addic     r4, r4, 0x800
/* 0C9AB8 800CCAB8 7C630194 */  addze     r3, r3
/* 0C9ABC 800CCABC 7CC60194 */  addze     r6, r6
lbl_800CCAC0:
/* 0C9AC0 800CCAC0 5484A83E */  rotrwi    r4, r4, 11
/* 0C9AC4 800CCAC4 5064A814 */  rlwimi    r4, r3, 21, 0, 10
/* 0C9AC8 800CCAC8 5463AB3E */  extrwi    r3, r3, 20, 1
/* 0C9ACC 800CCACC 54C6A016 */  slwi      r6, r6, 20
/* 0C9AD0 800CCAD0 7CC31B78 */  or        r3, r6, r3
/* 0C9AD4 800CCAD4 7CA31B78 */  or        r3, r5, r3
lbl_800CCAD8:
/* 0C9AD8 800CCAD8 90610008 */  stw       r3, 0x8(r1)
/* 0C9ADC 800CCADC 9081000C */  stw       r4, 0xc(r1)
/* 0C9AE0 800CCAE0 C8210008 */  lfd       f1, 0x8(r1)
/* 0C9AE4 800CCAE4 FC200818 */  frsp      f1, f1
/* 0C9AE8 800CCAE8 38210010 */  addi      r1, r1, 0x10
/* 0C9AEC 800CCAEC 4E800020 */  blr

glabel __cvt_dbl_usll
/* 0C9AF0 800CCAF0 9421FFF0 */  stwu      r1, -0x10(r1)
/* 0C9AF4 800CCAF4 D8210008 */  stfd      f1, 0x8(r1)
/* 0C9AF8 800CCAF8 80610008 */  lwz       r3, 0x8(r1)
/* 0C9AFC 800CCAFC 8081000C */  lwz       r4, 0xc(r1)
/* 0C9B00 800CCB00 5465657E */  extrwi    r5, r3, 11, 1
/* 0C9B04 800CCB04 280503FF */  cmplwi    r5, 0x3ff
/* 0C9B08 800CCB08 40800010 */  bge       lbl_800CCB18
/* 0C9B0C 800CCB0C 38600000 */  li        r3, 0x0
/* 0C9B10 800CCB10 38800000 */  li        r4, 0x0
/* 0C9B14 800CCB14 480000A0 */  b         lbl_800CCBB4
lbl_800CCB18:
/* 0C9B18 800CCB18 7C661B78 */  mr        r6, r3
/* 0C9B1C 800CCB1C 5463033E */  clrlwi    r3, r3, 12
/* 0C9B20 800CCB20 64630010 */  oris      r3, r3, 0x10
/* 0C9B24 800CCB24 38A5FBCD */  subi      r5, r5, 0x433
/* 0C9B28 800CCB28 2C050000 */  cmpwi     r5, 0x0
/* 0C9B2C 800CCB2C 4080002C */  bge       lbl_800CCB58
/* 0C9B30 800CCB30 7CA500D0 */  neg       r5, r5
/* 0C9B34 800CCB34 21050020 */  subfic    r8, r5, 0x20
/* 0C9B38 800CCB38 3125FFE0 */  subic     r9, r5, 0x20
/* 0C9B3C 800CCB3C 7C842C30 */  srw       r4, r4, r5
/* 0C9B40 800CCB40 7C6A4030 */  slw       r10, r3, r8
/* 0C9B44 800CCB44 7C845378 */  or        r4, r4, r10
/* 0C9B48 800CCB48 7C6A4C30 */  srw       r10, r3, r9
/* 0C9B4C 800CCB4C 7C845378 */  or        r4, r4, r10
/* 0C9B50 800CCB50 7C632C30 */  srw       r3, r3, r5
/* 0C9B54 800CCB54 48000050 */  b         lbl_800CCBA4
lbl_800CCB58:
/* 0C9B58 800CCB58 2C05000A */  cmpwi     r5, 0xa
/* 0C9B5C 800CCB5C 40A10028 */  ble+      lbl_800CCB84
/* 0C9B60 800CCB60 54C60001 */  clrrwi.   r6, r6, 31
/* 0C9B64 800CCB64 41820010 */  beq       lbl_800CCB74
/* 0C9B68 800CCB68 3C608000 */  lis       r3, 0x8000
/* 0C9B6C 800CCB6C 38800000 */  li        r4, 0x0
/* 0C9B70 800CCB70 48000044 */  b         lbl_800CCBB4
lbl_800CCB74:
/* 0C9B74 800CCB74 3C607FFF */  lis       r3, 0x7fff
/* 0C9B78 800CCB78 6063FFFF */  ori       r3, r3, 0xffff
/* 0C9B7C 800CCB7C 3880FFFF */  li        r4, -0x1
/* 0C9B80 800CCB80 48000034 */  b         lbl_800CCBB4
lbl_800CCB84:
/* 0C9B84 800CCB84 21050020 */  subfic    r8, r5, 0x20
/* 0C9B88 800CCB88 3125FFE0 */  subic     r9, r5, 0x20
/* 0C9B8C 800CCB8C 7C632830 */  slw       r3, r3, r5
/* 0C9B90 800CCB90 7C8A4430 */  srw       r10, r4, r8
/* 0C9B94 800CCB94 7C635378 */  or        r3, r3, r10
/* 0C9B98 800CCB98 7C8A4830 */  slw       r10, r4, r9
/* 0C9B9C 800CCB9C 7C635378 */  or        r3, r3, r10
/* 0C9BA0 800CCBA0 7C842830 */  slw       r4, r4, r5
lbl_800CCBA4:
/* 0C9BA4 800CCBA4 54C60001 */  clrrwi.   r6, r6, 31
/* 0C9BA8 800CCBA8 4182000C */  beq       lbl_800CCBB4
/* 0C9BAC 800CCBAC 20840000 */  subfic    r4, r4, 0x0
/* 0C9BB0 800CCBB0 7C630190 */  subfze    r3, r3
lbl_800CCBB4:
/* 0C9BB4 800CCBB4 38210010 */  addi      r1, r1, 0x10
/* 0C9BB8 800CCBB8 4E800020 */  blr

# 0x800D1EF0 - 0x800D1F08
.section .rodata, "a"

.balign 8

glabel __constants
	.long 0x00000000
	.long 0x00000000
	.long 0x41F00000
	.long 0x00000000
	.long 0x41E00000
	.long 0x00000000
