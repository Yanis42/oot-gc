# THPAudio.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800C7604 - 0x800C7B34

glabel THPAudioDecode
/* 0C4604 800C7604 7C0802A6 */  mflr      r0
/* 0C4608 800C7608 28030000 */  cmplwi    r3, 0x0
/* 0C460C 800C760C 90010004 */  stw       r0, 0x4(r1)
/* 0C4610 800C7610 9421FFA8 */  stwu      r1, -0x58(r1)
/* 0C4614 800C7614 BE810028 */  stmw      r20, 0x28(r1)
/* 0C4618 800C7618 3BE40000 */  addi      r31, r4, 0x0
/* 0C461C 800C761C 4182000C */  beq       lbl_800C7628
/* 0C4620 800C7620 281F0000 */  cmplwi    r31, 0x0
/* 0C4624 800C7624 4082000C */  bne       lbl_800C7630
lbl_800C7628:
/* 0C4628 800C7628 38600000 */  li        r3, 0x0
/* 0C462C 800C762C 48000428 */  b         lbl_800C7A54
lbl_800C7630:
/* 0C4630 800C7630 801F0000 */  lwz       r0, 0x0(r31)
/* 0C4634 800C7634 2C050001 */  cmpwi     r5, 0x1
/* 0C4638 800C7638 389F0050 */  addi      r4, r31, 0x50
/* 0C463C 800C763C 7F7F0214 */  add       r27, r31, r0
/* 0C4640 800C7640 3B7B0050 */  addi      r27, r27, 0x50
/* 0C4644 800C7644 4082001C */  bne       lbl_800C7660
/* 0C4648 800C7648 801F0004 */  lwz       r0, 0x4(r31)
/* 0C464C 800C764C 3BC30000 */  addi      r30, r3, 0x0
/* 0C4650 800C7650 3B400001 */  li        r26, 0x1
/* 0C4654 800C7654 5400083C */  slwi      r0, r0, 1
/* 0C4658 800C7658 7FA30214 */  add       r29, r3, r0
/* 0C465C 800C765C 48000010 */  b         lbl_800C766C
lbl_800C7660:
/* 0C4660 800C7660 3BC30000 */  addi      r30, r3, 0x0
/* 0C4664 800C7664 3BA30002 */  addi      r29, r3, 0x2
/* 0C4668 800C7668 3B400002 */  li        r26, 0x2
lbl_800C766C:
/* 0C466C 800C766C 801F0000 */  lwz       r0, 0x0(r31)
/* 0C4670 800C7670 28000000 */  cmplwi    r0, 0x0
/* 0C4674 800C7674 40820154 */  bne       lbl_800C77C8
/* 0C4678 800C7678 38610014 */  addi      r3, r1, 0x14
/* 0C467C 800C767C 4800047D */  bl        __THPAudioInitialize
/* 0C4680 800C7680 3F200001 */  lis       r25, 0x1
/* 0C4684 800C7684 AABF0048 */  lha       r21, 0x48(r31)
/* 0C4688 800C7688 3EE08000 */  lis       r23, 0x8000
/* 0C468C 800C768C AA9F004A */  lha       r20, 0x4a(r31)
/* 0C4690 800C7690 575B083C */  slwi      r27, r26, 1
/* 0C4694 800C7694 3B59FFFF */  subi      r26, r25, 0x1
/* 0C4698 800C7698 3B17FFFF */  subi      r24, r23, 0x1
/* 0C469C 800C769C 3AC00000 */  li        r22, 0x0
/* 0C46A0 800C76A0 48000118 */  b         lbl_800C77B8
lbl_800C76A4:
/* 0C46A4 800C76A4 38610014 */  addi      r3, r1, 0x14
/* 0C46A8 800C76A8 480003C1 */  bl        __THPAudioGetNewSample
/* 0C46AC 800C76AC 88A1001C */  lbz       r5, 0x1c(r1)
/* 0C46B0 800C76B0 7E860734 */  extsh     r6, r20
/* 0C46B4 800C76B4 8801001D */  lbz       r0, 0x1d(r1)
/* 0C46B8 800C76B8 7EA40734 */  extsh     r4, r21
/* 0C46BC 800C76BC 54A5103A */  slwi      r5, r5, 2
/* 0C46C0 800C76C0 7CBF2A14 */  add       r5, r31, r5
/* 0C46C4 800C76C4 A8E5000A */  lha       r7, 0xa(r5)
/* 0C46C8 800C76C8 7C600030 */  slw       r0, r3, r0
/* 0C46CC 800C76CC A8650008 */  lha       r3, 0x8(r5)
/* 0C46D0 800C76D0 54055828 */  slwi      r5, r0, 11
/* 0C46D4 800C76D4 7CC731D6 */  mullw     r6, r7, r6
/* 0C46D8 800C76D8 7C8321D6 */  mullw     r4, r3, r4
/* 0C46DC 800C76DC 7CC3FE70 */  srawi     r3, r6, 31
/* 0C46E0 800C76E0 7C80FE70 */  srawi     r0, r4, 31
/* 0C46E4 800C76E4 7C862014 */  addc      r4, r6, r4
/* 0C46E8 800C76E8 7C630114 */  adde      r3, r3, r0
/* 0C46EC 800C76EC 7CA0FE70 */  srawi     r0, r5, 31
/* 0C46F0 800C76F0 7C842814 */  addc      r4, r4, r5
/* 0C46F4 800C76F4 7C630114 */  adde      r3, r3, r0
/* 0C46F8 800C76F8 38A00005 */  li        r5, 0x5
/* 0C46FC 800C76FC 48005221 */  bl        __shl2i
/* 0C4700 800C7700 7C80D038 */  and       r0, r4, r26
/* 0C4704 800C7704 5400043E */  clrlwi    r0, r0, 16
/* 0C4708 800C7708 28008000 */  cmplwi    r0, 0x8000
/* 0C470C 800C770C 38C00000 */  li        r6, 0x0
/* 0C4710 800C7710 7C673038 */  and       r7, r3, r6
/* 0C4714 800C7714 40810010 */  ble       lbl_800C7724
/* 0C4718 800C7718 7C84C814 */  addc      r4, r4, r25
/* 0C471C 800C771C 7C633114 */  adde      r3, r3, r6
/* 0C4720 800C7720 48000024 */  b         lbl_800C7744
lbl_800C7724:
/* 0C4724 800C7724 40820020 */  bne       lbl_800C7744
/* 0C4728 800C7728 7C80C838 */  and       r0, r4, r25
/* 0C472C 800C772C 7C053278 */  xor       r5, r0, r6
/* 0C4730 800C7730 7CE03278 */  xor       r0, r7, r6
/* 0C4734 800C7734 7CA00379 */  or.       r0, r5, r0
/* 0C4738 800C7738 4182000C */  beq       lbl_800C7744
/* 0C473C 800C773C 7C84C814 */  addc      r4, r4, r25
/* 0C4740 800C7740 7C633114 */  adde      r3, r3, r6
lbl_800C7744:
/* 0C4744 800C7744 38000000 */  li        r0, 0x0
/* 0C4748 800C7748 6C068000 */  xoris     r6, r0, 0x8000
/* 0C474C 800C774C 6C658000 */  xoris     r5, r3, 0x8000
/* 0C4750 800C7750 7C04C010 */  subfc     r0, r4, r24
/* 0C4754 800C7754 7CA53110 */  subfe     r5, r5, r6
/* 0C4758 800C7758 7CA63110 */  subfe     r5, r6, r6
/* 0C475C 800C775C 7CA500D1 */  neg.      r5, r5
/* 0C4760 800C7760 4182000C */  beq       lbl_800C776C
/* 0C4764 800C7764 3897FFFF */  subi      r4, r23, 0x1
/* 0C4768 800C7768 38600000 */  li        r3, 0x0
lbl_800C776C:
/* 0C476C 800C776C 3800FFFF */  li        r0, -0x1
/* 0C4770 800C7770 6C058000 */  xoris     r5, r0, 0x8000
/* 0C4774 800C7774 6C668000 */  xoris     r6, r3, 0x8000
/* 0C4778 800C7778 7C172010 */  subfc     r0, r23, r4
/* 0C477C 800C777C 7CA53110 */  subfe     r5, r5, r6
/* 0C4780 800C7780 7CA63110 */  subfe     r5, r6, r6
/* 0C4784 800C7784 7CA500D1 */  neg.      r5, r5
/* 0C4788 800C7788 4182000C */  beq       lbl_800C7794
/* 0C478C 800C778C 3C808000 */  lis       r4, 0x8000
/* 0C4790 800C7790 3860FFFF */  li        r3, -0x1
lbl_800C7794:
/* 0C4794 800C7794 38A00010 */  li        r5, 0x10
/* 0C4798 800C7798 480051CD */  bl        __shr2i
/* 0C479C 800C779C B09D0000 */  sth       r4, 0x0(r29)
/* 0C47A0 800C77A0 7EB4AB78 */  mr        r20, r21
/* 0C47A4 800C77A4 3AA40000 */  addi      r21, r4, 0x0
/* 0C47A8 800C77A8 B09E0000 */  sth       r4, 0x0(r30)
/* 0C47AC 800C77AC 7FBDDA14 */  add       r29, r29, r27
/* 0C47B0 800C77B0 7FDEDA14 */  add       r30, r30, r27
/* 0C47B4 800C77B4 3AD60001 */  addi      r22, r22, 0x1
lbl_800C77B8:
/* 0C47B8 800C77B8 801F0004 */  lwz       r0, 0x4(r31)
/* 0C47BC 800C77BC 7C160040 */  cmplw     r22, r0
/* 0C47C0 800C77C0 4180FEE4 */  blt       lbl_800C76A4
/* 0C47C4 800C77C4 4800028C */  b         lbl_800C7A50
lbl_800C77C8:
/* 0C47C8 800C77C8 38610014 */  addi      r3, r1, 0x14
/* 0C47CC 800C77CC 4800032D */  bl        __THPAudioInitialize
/* 0C47D0 800C77D0 3F000001 */  lis       r24, 0x1
/* 0C47D4 800C77D4 AADF0048 */  lha       r22, 0x48(r31)
/* 0C47D8 800C77D8 3F208000 */  lis       r25, 0x8000
/* 0C47DC 800C77DC AA9F004A */  lha       r20, 0x4a(r31)
/* 0C47E0 800C77E0 575C083C */  slwi      r28, r26, 1
/* 0C47E4 800C77E4 3AF8FFFF */  subi      r23, r24, 0x1
/* 0C47E8 800C77E8 3B59FFFF */  subi      r26, r25, 0x1
/* 0C47EC 800C77EC 3AA00000 */  li        r21, 0x0
/* 0C47F0 800C77F0 48000110 */  b         lbl_800C7900
lbl_800C77F4:
/* 0C47F4 800C77F4 38610014 */  addi      r3, r1, 0x14
/* 0C47F8 800C77F8 48000271 */  bl        __THPAudioGetNewSample
/* 0C47FC 800C77FC 88A1001C */  lbz       r5, 0x1c(r1)
/* 0C4800 800C7800 7E860734 */  extsh     r6, r20
/* 0C4804 800C7804 8801001D */  lbz       r0, 0x1d(r1)
/* 0C4808 800C7808 7EC40734 */  extsh     r4, r22
/* 0C480C 800C780C 54A5103A */  slwi      r5, r5, 2
/* 0C4810 800C7810 7CBF2A14 */  add       r5, r31, r5
/* 0C4814 800C7814 A8E5000A */  lha       r7, 0xa(r5)
/* 0C4818 800C7818 7C600030 */  slw       r0, r3, r0
/* 0C481C 800C781C A8650008 */  lha       r3, 0x8(r5)
/* 0C4820 800C7820 54055828 */  slwi      r5, r0, 11
/* 0C4824 800C7824 7CC731D6 */  mullw     r6, r7, r6
/* 0C4828 800C7828 7C8321D6 */  mullw     r4, r3, r4
/* 0C482C 800C782C 7CC3FE70 */  srawi     r3, r6, 31
/* 0C4830 800C7830 7C80FE70 */  srawi     r0, r4, 31
/* 0C4834 800C7834 7C862014 */  addc      r4, r6, r4
/* 0C4838 800C7838 7C630114 */  adde      r3, r3, r0
/* 0C483C 800C783C 7CA0FE70 */  srawi     r0, r5, 31
/* 0C4840 800C7840 7C842814 */  addc      r4, r4, r5
/* 0C4844 800C7844 7C630114 */  adde      r3, r3, r0
/* 0C4848 800C7848 38A00005 */  li        r5, 0x5
/* 0C484C 800C784C 480050D1 */  bl        __shl2i
/* 0C4850 800C7850 7C80B838 */  and       r0, r4, r23
/* 0C4854 800C7854 5400043E */  clrlwi    r0, r0, 16
/* 0C4858 800C7858 28008000 */  cmplwi    r0, 0x8000
/* 0C485C 800C785C 38C00000 */  li        r6, 0x0
/* 0C4860 800C7860 7C673038 */  and       r7, r3, r6
/* 0C4864 800C7864 40810010 */  ble       lbl_800C7874
/* 0C4868 800C7868 7C84C014 */  addc      r4, r4, r24
/* 0C486C 800C786C 7C633114 */  adde      r3, r3, r6
/* 0C4870 800C7870 48000024 */  b         lbl_800C7894
lbl_800C7874:
/* 0C4874 800C7874 40820020 */  bne       lbl_800C7894
/* 0C4878 800C7878 7C80C038 */  and       r0, r4, r24
/* 0C487C 800C787C 7C053278 */  xor       r5, r0, r6
/* 0C4880 800C7880 7CE03278 */  xor       r0, r7, r6
/* 0C4884 800C7884 7CA00379 */  or.       r0, r5, r0
/* 0C4888 800C7888 4182000C */  beq       lbl_800C7894
/* 0C488C 800C788C 7C84C014 */  addc      r4, r4, r24
/* 0C4890 800C7890 7C633114 */  adde      r3, r3, r6
lbl_800C7894:
/* 0C4894 800C7894 38E00000 */  li        r7, 0x0
/* 0C4898 800C7898 6CE68000 */  xoris     r6, r7, 0x8000
/* 0C489C 800C789C 6C658000 */  xoris     r5, r3, 0x8000
/* 0C48A0 800C78A0 7C04D010 */  subfc     r0, r4, r26
/* 0C48A4 800C78A4 7CA53110 */  subfe     r5, r5, r6
/* 0C48A8 800C78A8 7CA63110 */  subfe     r5, r6, r6
/* 0C48AC 800C78AC 7CA500D1 */  neg.      r5, r5
/* 0C48B0 800C78B0 4182000C */  beq       lbl_800C78BC
/* 0C48B4 800C78B4 3899FFFF */  subi      r4, r25, 0x1
/* 0C48B8 800C78B8 38670000 */  addi      r3, r7, 0x0
lbl_800C78BC:
/* 0C48BC 800C78BC 38E0FFFF */  li        r7, -0x1
/* 0C48C0 800C78C0 6C668000 */  xoris     r6, r3, 0x8000
/* 0C48C4 800C78C4 6CE58000 */  xoris     r5, r7, 0x8000
/* 0C48C8 800C78C8 7C192010 */  subfc     r0, r25, r4
/* 0C48CC 800C78CC 7CA53110 */  subfe     r5, r5, r6
/* 0C48D0 800C78D0 7CA63110 */  subfe     r5, r6, r6
/* 0C48D4 800C78D4 7CA500D1 */  neg.      r5, r5
/* 0C48D8 800C78D8 4182000C */  beq       lbl_800C78E4
/* 0C48DC 800C78DC 3C808000 */  lis       r4, 0x8000
/* 0C48E0 800C78E0 38670000 */  addi      r3, r7, 0x0
lbl_800C78E4:
/* 0C48E4 800C78E4 38A00010 */  li        r5, 0x10
/* 0C48E8 800C78E8 4800507D */  bl        __shr2i
/* 0C48EC 800C78EC B09D0000 */  sth       r4, 0x0(r29)
/* 0C48F0 800C78F0 3A960000 */  addi      r20, r22, 0x0
/* 0C48F4 800C78F4 3AC40000 */  addi      r22, r4, 0x0
/* 0C48F8 800C78F8 7FBDE214 */  add       r29, r29, r28
/* 0C48FC 800C78FC 3AB50001 */  addi      r21, r21, 0x1
lbl_800C7900:
/* 0C4900 800C7900 801F0004 */  lwz       r0, 0x4(r31)
/* 0C4904 800C7904 7C150040 */  cmplw     r21, r0
/* 0C4908 800C7908 4180FEEC */  blt       lbl_800C77F4
/* 0C490C 800C790C 38610014 */  addi      r3, r1, 0x14
/* 0C4910 800C7910 389B0000 */  addi      r4, r27, 0x0
/* 0C4914 800C7914 480001E5 */  bl        __THPAudioInitialize
/* 0C4918 800C7918 3F400001 */  lis       r26, 0x1
/* 0C491C 800C791C AAFF004C */  lha       r23, 0x4c(r31)
/* 0C4920 800C7920 3F608000 */  lis       r27, 0x8000
/* 0C4924 800C7924 AABF004E */  lha       r21, 0x4e(r31)
/* 0C4928 800C7928 3B3AFFFF */  subi      r25, r26, 0x1
/* 0C492C 800C792C 3BBBFFFF */  subi      r29, r27, 0x1
/* 0C4930 800C7930 3AC00000 */  li        r22, 0x0
/* 0C4934 800C7934 48000110 */  b         lbl_800C7A44
lbl_800C7938:
/* 0C4938 800C7938 38610014 */  addi      r3, r1, 0x14
/* 0C493C 800C793C 4800012D */  bl        __THPAudioGetNewSample
/* 0C4940 800C7940 88A1001C */  lbz       r5, 0x1c(r1)
/* 0C4944 800C7944 7EA60734 */  extsh     r6, r21
/* 0C4948 800C7948 8801001D */  lbz       r0, 0x1d(r1)
/* 0C494C 800C794C 7EE40734 */  extsh     r4, r23
/* 0C4950 800C7950 54A5103A */  slwi      r5, r5, 2
/* 0C4954 800C7954 7CBF2A14 */  add       r5, r31, r5
/* 0C4958 800C7958 A8E5002A */  lha       r7, 0x2a(r5)
/* 0C495C 800C795C 7C600030 */  slw       r0, r3, r0
/* 0C4960 800C7960 A8650028 */  lha       r3, 0x28(r5)
/* 0C4964 800C7964 54055828 */  slwi      r5, r0, 11
/* 0C4968 800C7968 7CC731D6 */  mullw     r6, r7, r6
/* 0C496C 800C796C 7C8321D6 */  mullw     r4, r3, r4
/* 0C4970 800C7970 7CC3FE70 */  srawi     r3, r6, 31
/* 0C4974 800C7974 7C80FE70 */  srawi     r0, r4, 31
/* 0C4978 800C7978 7C862014 */  addc      r4, r6, r4
/* 0C497C 800C797C 7C630114 */  adde      r3, r3, r0
/* 0C4980 800C7980 7CA0FE70 */  srawi     r0, r5, 31
/* 0C4984 800C7984 7C842814 */  addc      r4, r4, r5
/* 0C4988 800C7988 7C630114 */  adde      r3, r3, r0
/* 0C498C 800C798C 38A00005 */  li        r5, 0x5
/* 0C4990 800C7990 48004F8D */  bl        __shl2i
/* 0C4994 800C7994 7C80C838 */  and       r0, r4, r25
/* 0C4998 800C7998 5400043E */  clrlwi    r0, r0, 16
/* 0C499C 800C799C 28008000 */  cmplwi    r0, 0x8000
/* 0C49A0 800C79A0 38C00000 */  li        r6, 0x0
/* 0C49A4 800C79A4 7C673038 */  and       r7, r3, r6
/* 0C49A8 800C79A8 40810010 */  ble       lbl_800C79B8
/* 0C49AC 800C79AC 7C84D014 */  addc      r4, r4, r26
/* 0C49B0 800C79B0 7C633114 */  adde      r3, r3, r6
/* 0C49B4 800C79B4 48000024 */  b         lbl_800C79D8
lbl_800C79B8:
/* 0C49B8 800C79B8 40820020 */  bne       lbl_800C79D8
/* 0C49BC 800C79BC 7C80D038 */  and       r0, r4, r26
/* 0C49C0 800C79C0 7C053278 */  xor       r5, r0, r6
/* 0C49C4 800C79C4 7CE03278 */  xor       r0, r7, r6
/* 0C49C8 800C79C8 7CA00379 */  or.       r0, r5, r0
/* 0C49CC 800C79CC 4182000C */  beq       lbl_800C79D8
/* 0C49D0 800C79D0 7C84D014 */  addc      r4, r4, r26
/* 0C49D4 800C79D4 7C633114 */  adde      r3, r3, r6
lbl_800C79D8:
/* 0C49D8 800C79D8 38E00000 */  li        r7, 0x0
/* 0C49DC 800C79DC 6CE68000 */  xoris     r6, r7, 0x8000
/* 0C49E0 800C79E0 6C658000 */  xoris     r5, r3, 0x8000
/* 0C49E4 800C79E4 7C04E810 */  subfc     r0, r4, r29
/* 0C49E8 800C79E8 7CA53110 */  subfe     r5, r5, r6
/* 0C49EC 800C79EC 7CA63110 */  subfe     r5, r6, r6
/* 0C49F0 800C79F0 7CA500D1 */  neg.      r5, r5
/* 0C49F4 800C79F4 4182000C */  beq       lbl_800C7A00
/* 0C49F8 800C79F8 389BFFFF */  subi      r4, r27, 0x1
/* 0C49FC 800C79FC 38670000 */  addi      r3, r7, 0x0
lbl_800C7A00:
/* 0C4A00 800C7A00 38E0FFFF */  li        r7, -0x1
/* 0C4A04 800C7A04 6C668000 */  xoris     r6, r3, 0x8000
/* 0C4A08 800C7A08 6CE58000 */  xoris     r5, r7, 0x8000
/* 0C4A0C 800C7A0C 7C1B2010 */  subfc     r0, r27, r4
/* 0C4A10 800C7A10 7CA53110 */  subfe     r5, r5, r6
/* 0C4A14 800C7A14 7CA63110 */  subfe     r5, r6, r6
/* 0C4A18 800C7A18 7CA500D1 */  neg.      r5, r5
/* 0C4A1C 800C7A1C 4182000C */  beq       lbl_800C7A28
/* 0C4A20 800C7A20 3C808000 */  lis       r4, 0x8000
/* 0C4A24 800C7A24 38670000 */  addi      r3, r7, 0x0
lbl_800C7A28:
/* 0C4A28 800C7A28 38A00010 */  li        r5, 0x10
/* 0C4A2C 800C7A2C 48004F39 */  bl        __shr2i
/* 0C4A30 800C7A30 B09E0000 */  sth       r4, 0x0(r30)
/* 0C4A34 800C7A34 3AB70000 */  addi      r21, r23, 0x0
/* 0C4A38 800C7A38 3AE40000 */  addi      r23, r4, 0x0
/* 0C4A3C 800C7A3C 7FDEE214 */  add       r30, r30, r28
/* 0C4A40 800C7A40 3AD60001 */  addi      r22, r22, 0x1
lbl_800C7A44:
/* 0C4A44 800C7A44 801F0004 */  lwz       r0, 0x4(r31)
/* 0C4A48 800C7A48 7C160040 */  cmplw     r22, r0
/* 0C4A4C 800C7A4C 4180FEEC */  blt       lbl_800C7938
lbl_800C7A50:
/* 0C4A50 800C7A50 807F0004 */  lwz       r3, 0x4(r31)
lbl_800C7A54:
/* 0C4A54 800C7A54 BA810028 */  lmw       r20, 0x28(r1)
/* 0C4A58 800C7A58 8001005C */  lwz       r0, 0x5c(r1)
/* 0C4A5C 800C7A5C 38210058 */  addi      r1, r1, 0x58
/* 0C4A60 800C7A60 7C0803A6 */  mtlr      r0
/* 0C4A64 800C7A64 4E800020 */  blr

glabel __THPAudioGetNewSample
/* 0C4A68 800C7A68 80030004 */  lwz       r0, 0x4(r3)
/* 0C4A6C 800C7A6C 5400073F */  clrlwi.   r0, r0, 28
/* 0C4A70 800C7A70 4082003C */  bne       lbl_800C7AAC
/* 0C4A74 800C7A74 80830000 */  lwz       r4, 0x0(r3)
/* 0C4A78 800C7A78 88040000 */  lbz       r0, 0x0(r4)
/* 0C4A7C 800C7A7C 5400E77E */  extrwi    r0, r0, 3, 25
/* 0C4A80 800C7A80 98030008 */  stb       r0, 0x8(r3)
/* 0C4A84 800C7A84 80830000 */  lwz       r4, 0x0(r3)
/* 0C4A88 800C7A88 88040000 */  lbz       r0, 0x0(r4)
/* 0C4A8C 800C7A8C 5400073E */  clrlwi    r0, r0, 28
/* 0C4A90 800C7A90 98030009 */  stb       r0, 0x9(r3)
/* 0C4A94 800C7A94 80830000 */  lwz       r4, 0x0(r3)
/* 0C4A98 800C7A98 38040001 */  addi      r0, r4, 0x1
/* 0C4A9C 800C7A9C 90030000 */  stw       r0, 0x0(r3)
/* 0C4AA0 800C7AA0 80830004 */  lwz       r4, 0x4(r3)
/* 0C4AA4 800C7AA4 38040002 */  addi      r0, r4, 0x2
/* 0C4AA8 800C7AA8 90030004 */  stw       r0, 0x4(r3)
lbl_800C7AAC:
/* 0C4AAC 800C7AAC 80030004 */  lwz       r0, 0x4(r3)
/* 0C4AB0 800C7AB0 540007FF */  clrlwi.   r0, r0, 31
/* 0C4AB4 800C7AB4 41820020 */  beq       lbl_800C7AD4
/* 0C4AB8 800C7AB8 80A30000 */  lwz       r5, 0x0(r3)
/* 0C4ABC 800C7ABC 88850000 */  lbz       r4, 0x0(r5)
/* 0C4AC0 800C7AC0 38050001 */  addi      r0, r5, 0x1
/* 0C4AC4 800C7AC4 90030000 */  stw       r0, 0x0(r3)
/* 0C4AC8 800C7AC8 5480E006 */  slwi      r0, r4, 28
/* 0C4ACC 800C7ACC 7C05E670 */  srawi     r5, r0, 28
/* 0C4AD0 800C7AD0 48000014 */  b         lbl_800C7AE4
lbl_800C7AD4:
/* 0C4AD4 800C7AD4 80830000 */  lwz       r4, 0x0(r3)
/* 0C4AD8 800C7AD8 88040000 */  lbz       r0, 0x0(r4)
/* 0C4ADC 800C7ADC 5400C006 */  extlwi    r0, r0, 4, 24
/* 0C4AE0 800C7AE0 7C05E670 */  srawi     r5, r0, 28
lbl_800C7AE4:
/* 0C4AE4 800C7AE4 80830004 */  lwz       r4, 0x4(r3)
/* 0C4AE8 800C7AE8 38040001 */  addi      r0, r4, 0x1
/* 0C4AEC 800C7AEC 90030004 */  stw       r0, 0x4(r3)
/* 0C4AF0 800C7AF0 7CA32B78 */  mr        r3, r5
/* 0C4AF4 800C7AF4 4E800020 */  blr

glabel __THPAudioInitialize
/* 0C4AF8 800C7AF8 90830000 */  stw       r4, 0x0(r3)
/* 0C4AFC 800C7AFC 38000002 */  li        r0, 0x2
/* 0C4B00 800C7B00 90030004 */  stw       r0, 0x4(r3)
/* 0C4B04 800C7B04 80830000 */  lwz       r4, 0x0(r3)
/* 0C4B08 800C7B08 88040000 */  lbz       r0, 0x0(r4)
/* 0C4B0C 800C7B0C 5400E77E */  extrwi    r0, r0, 3, 25
/* 0C4B10 800C7B10 98030008 */  stb       r0, 0x8(r3)
/* 0C4B14 800C7B14 80830000 */  lwz       r4, 0x0(r3)
/* 0C4B18 800C7B18 88040000 */  lbz       r0, 0x0(r4)
/* 0C4B1C 800C7B1C 5400073E */  clrlwi    r0, r0, 28
/* 0C4B20 800C7B20 98030009 */  stb       r0, 0x9(r3)
/* 0C4B24 800C7B24 80830000 */  lwz       r4, 0x0(r3)
/* 0C4B28 800C7B28 38040001 */  addi      r0, r4, 0x1
/* 0C4B2C 800C7B2C 90030000 */  stw       r0, 0x0(r3)
/* 0C4B30 800C7B30 4E800020 */  blr
