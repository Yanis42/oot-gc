# dvdlow.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800B070C - 0x800B154C

glabel __DVDInitWA
/* 0AD70C 800B070C 7C0802A6 */  mflr      r0
/* 0AD710 800B0710 3C608019 */  lis       r3, CommandList@ha
/* 0AD714 800B0714 90010004 */  stw       r0, 0x4(r1)
/* 0AD718 800B0718 38000000 */  li        r0, 0x0
/* 0AD71C 800B071C 38800000 */  li        r4, 0x0
/* 0AD720 800B0720 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AD724 800B0724 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0AD728 800B0728 3800FFFF */  li        r0, -0x1
/* 0AD72C 800B072C 90038760 */  stw       r0, CommandList@l(r3)
/* 0AD730 800B0730 38600000 */  li        r3, 0x0
/* 0AD734 800B0734 48000DD5 */  bl        __DVDLowSetWAType
/* 0AD738 800B0738 4BFEB579 */  bl        OSInitAlarm
/* 0AD73C 800B073C 8001000C */  lwz       r0, 0xc(r1)
/* 0AD740 800B0740 38210008 */  addi      r1, r1, 0x8
/* 0AD744 800B0744 7C0803A6 */  mtlr      r0
/* 0AD748 800B0748 4E800020 */  blr

glabel __DVDInterruptHandler
/* 0AD74C 800B074C 7C0802A6 */  mflr      r0
/* 0AD750 800B0750 3C608019 */  lis       r3, CommandList@ha
/* 0AD754 800B0754 90010004 */  stw       r0, 0x4(r1)
/* 0AD758 800B0758 9421FD10 */  stwu      r1, -0x2f0(r1)
/* 0AD75C 800B075C BF6102DC */  stmw      r27, 0x2dc(r1)
/* 0AD760 800B0760 3B840000 */  addi      r28, r4, 0x0
/* 0AD764 800B0764 3BC38760 */  addi      r30, r3, CommandList@l
/* 0AD768 800B0768 3BA00000 */  li        r29, 0x0
/* 0AD76C 800B076C 800D8CA8 */  lwz       r0, D_8018BC28@sda21(r0)
/* 0AD770 800B0770 2C000000 */  cmpwi     r0, 0x0
/* 0AD774 800B0774 41820040 */  beq       lbl_800B07B4
/* 0AD778 800B0778 4BFF0D89 */  bl        __OSGetSystemTime
/* 0AD77C 800B077C 908D8C9C */  stw       r4, D_8018BC1C@sda21(r0)
/* 0AD780 800B0780 38000000 */  li        r0, 0x0
/* 0AD784 800B0784 906D8C98 */  stw       r3, D_8018BC18@sda21(r0)
/* 0AD788 800B0788 900D87F0 */  stw       r0, D_8018B770@sda21(r0)
/* 0AD78C 800B078C 801E00C4 */  lwz       r0, 0xc4(r30)
/* 0AD790 800B0790 901E00B8 */  stw       r0, 0xb8(r30)
/* 0AD794 800B0794 801E00C8 */  lwz       r0, 0xc8(r30)
/* 0AD798 800B0798 901E00BC */  stw       r0, 0xbc(r30)
/* 0AD79C 800B079C 801E00CC */  lwz       r0, 0xcc(r30)
/* 0AD7A0 800B07A0 901E00C0 */  stw       r0, 0xc0(r30)
/* 0AD7A4 800B07A4 800D8C68 */  lwz       r0, StopAtNextInt@sda21(r0)
/* 0AD7A8 800B07A8 2C000001 */  cmpwi     r0, 0x1
/* 0AD7AC 800B07AC 40820008 */  bne       lbl_800B07B4
/* 0AD7B0 800B07B0 63BD0008 */  ori       r29, r29, 0x8
lbl_800B07B4:
/* 0AD7B4 800B07B4 38000000 */  li        r0, 0x0
/* 0AD7B8 800B07B8 900D8CA8 */  stw       r0, D_8018BC28@sda21(r0)
/* 0AD7BC 800B07BC 3C60CC00 */  lis       r3, 0xcc00
/* 0AD7C0 800B07C0 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AD7C4 800B07C4 80036000 */  lwz       r0, 0x6000(r3)
/* 0AD7C8 800B07C8 701F002A */  andi.     r31, r0, 0x2a
/* 0AD7CC 800B07CC 70030054 */  andi.     r3, r0, 0x54
/* 0AD7D0 800B07D0 57E0083C */  slwi      r0, r31, 1
/* 0AD7D4 800B07D4 7C7B0038 */  and       r27, r3, r0
/* 0AD7D8 800B07D8 57600673 */  rlwinm.   r0, r27, 0, 25, 25
/* 0AD7DC 800B07DC 41820008 */  beq       lbl_800B07E4
/* 0AD7E0 800B07E0 63BD0008 */  ori       r29, r29, 0x8
lbl_800B07E4:
/* 0AD7E4 800B07E4 576006F7 */  rlwinm.   r0, r27, 0, 27, 27
/* 0AD7E8 800B07E8 41820008 */  beq       lbl_800B07F0
/* 0AD7EC 800B07EC 63BD0001 */  ori       r29, r29, 0x1
lbl_800B07F0:
/* 0AD7F0 800B07F0 5760077B */  rlwinm.   r0, r27, 0, 29, 29
/* 0AD7F4 800B07F4 41820008 */  beq       lbl_800B07FC
/* 0AD7F8 800B07F8 63BD0002 */  ori       r29, r29, 0x2
lbl_800B07FC:
/* 0AD7FC 800B07FC 281D0000 */  cmplwi    r29, 0x0
/* 0AD800 800B0800 41820014 */  beq       lbl_800B0814
/* 0AD804 800B0804 38000000 */  li        r0, 0x0
/* 0AD808 800B0808 900D8C80 */  stw       r0, ResetOccurred@sda21(r0)
/* 0AD80C 800B080C 387E0068 */  addi      r3, r30, 0x68
/* 0AD810 800B0810 4BFEB7B5 */  bl        OSCancelAlarm
lbl_800B0814:
/* 0AD814 800B0814 7F60FB78 */  or        r0, r27, r31
/* 0AD818 800B0818 3FE0CC00 */  lis       r31, 0xcc00
/* 0AD81C 800B081C 901F6000 */  stw       r0, 0x6000(r31)
/* 0AD820 800B0820 800D8C80 */  lwz       r0, ResetOccurred@sda21(r0)
/* 0AD824 800B0824 28000000 */  cmplwi    r0, 0x0
/* 0AD828 800B0828 418200A0 */  beq       lbl_800B08C8
/* 0AD82C 800B082C 4BFF0CD5 */  bl        __OSGetSystemTime
/* 0AD830 800B0830 3CA08000 */  lis       r5, 0x8000
/* 0AD834 800B0834 80ED8C78 */  lwz       r7, LastResetEnd@sda21(r0)
/* 0AD838 800B0838 80C500F8 */  lwz       r6, 0xf8(r5)
/* 0AD83C 800B083C 3CA01062 */  lis       r5, 0x1062
/* 0AD840 800B0840 38A54DD3 */  addi      r5, r5, 0x4dd3
/* 0AD844 800B0844 810D8C7C */  lwz       r8, LastResetEnd+0x4@sda21(r0)
/* 0AD848 800B0848 54C6F0BE */  srwi      r6, r6, 2
/* 0AD84C 800B084C 7CA53016 */  mulhwu    r5, r5, r6
/* 0AD850 800B0850 54A5D1BE */  srwi      r5, r5, 6
/* 0AD854 800B0854 1CA500C8 */  mulli     r5, r5, 0xc8
/* 0AD858 800B0858 7CC82010 */  subfc     r6, r8, r4
/* 0AD85C 800B085C 7C671910 */  subfe     r3, r7, r3
/* 0AD860 800B0860 38000000 */  li        r0, 0x0
/* 0AD864 800B0864 6C648000 */  xoris     r4, r3, 0x8000
/* 0AD868 800B0868 6C038000 */  xoris     r3, r0, 0x8000
/* 0AD86C 800B086C 7C053010 */  subfc     r0, r5, r6
/* 0AD870 800B0870 7C632110 */  subfe     r3, r3, r4
/* 0AD874 800B0874 7C642110 */  subfe     r3, r4, r4
/* 0AD878 800B0878 7C6300D1 */  neg.      r3, r3
/* 0AD87C 800B087C 4182004C */  beq       lbl_800B08C8
/* 0AD880 800B0880 3B7F6000 */  addi      r27, r31, 0x6000
/* 0AD884 800B0884 841B0004 */  lwzu      r0, 0x4(r27)
/* 0AD888 800B0888 5403077A */  rlwinm    r3, r0, 0, 29, 29
/* 0AD88C 800B088C 54000F7A */  rlwinm    r0, r0, 1, 29, 29
/* 0AD890 800B0890 7C600038 */  and       r0, r3, r0
/* 0AD894 800B0894 5400077B */  rlwinm.   r0, r0, 0, 29, 29
/* 0AD898 800B0898 41820024 */  beq       lbl_800B08BC
/* 0AD89C 800B089C 818D8C74 */  lwz       r12, D_8018BBF4@sda21(r0)
/* 0AD8A0 800B08A0 280C0000 */  cmplwi    r12, 0x0
/* 0AD8A4 800B08A4 41820010 */  beq       lbl_800B08B4
/* 0AD8A8 800B08A8 7D8803A6 */  mtlr      r12
/* 0AD8AC 800B08AC 38600004 */  li        r3, 0x4
/* 0AD8B0 800B08B0 4E800021 */  blrl
lbl_800B08B4:
/* 0AD8B4 800B08B4 38000000 */  li        r0, 0x0
/* 0AD8B8 800B08B8 900D8C74 */  stw       r0, D_8018BBF4@sda21(r0)
lbl_800B08BC:
/* 0AD8BC 800B08BC 801B0000 */  lwz       r0, 0x0(r27)
/* 0AD8C0 800B08C0 901B0000 */  stw       r0, 0x0(r27)
/* 0AD8C4 800B08C4 48000058 */  b         lbl_800B091C
lbl_800B08C8:
/* 0AD8C8 800B08C8 800D8C84 */  lwz       r0, WaitingCoverClose@sda21(r0)
/* 0AD8CC 800B08CC 2C000000 */  cmpwi     r0, 0x0
/* 0AD8D0 800B08D0 41820040 */  beq       lbl_800B0910
/* 0AD8D4 800B08D4 3C60CC00 */  lis       r3, 0xcc00
/* 0AD8D8 800B08D8 38A36000 */  addi      r5, r3, 0x6000
/* 0AD8DC 800B08DC 84050004 */  lwzu      r0, 0x4(r5)
/* 0AD8E0 800B08E0 540407BC */  rlwinm    r4, r0, 0, 30, 30
/* 0AD8E4 800B08E4 5403077A */  rlwinm    r3, r0, 0, 29, 29
/* 0AD8E8 800B08E8 54000F7A */  rlwinm    r0, r0, 1, 29, 29
/* 0AD8EC 800B08EC 7C630038 */  and       r3, r3, r0
/* 0AD8F0 800B08F0 5460077B */  rlwinm.   r0, r3, 0, 29, 29
/* 0AD8F4 800B08F4 41820008 */  beq       lbl_800B08FC
/* 0AD8F8 800B08F8 63BD0004 */  ori       r29, r29, 0x4
lbl_800B08FC:
/* 0AD8FC 800B08FC 7C602378 */  or        r0, r3, r4
/* 0AD900 800B0900 90050000 */  stw       r0, 0x0(r5)
/* 0AD904 800B0904 38000000 */  li        r0, 0x0
/* 0AD908 800B0908 900D8C84 */  stw       r0, WaitingCoverClose@sda21(r0)
/* 0AD90C 800B090C 48000010 */  b         lbl_800B091C
lbl_800B0910:
/* 0AD910 800B0910 3C60CC00 */  lis       r3, 0xcc00
/* 0AD914 800B0914 38000000 */  li        r0, 0x0
/* 0AD918 800B0918 90036004 */  stw       r0, 0x6004(r3)
lbl_800B091C:
/* 0AD91C 800B091C 57A00739 */  rlwinm.   r0, r29, 0, 28, 28
/* 0AD920 800B0920 41820014 */  beq       lbl_800B0934
/* 0AD924 800B0924 800D8C88 */  lwz       r0, D_8018BC08@sda21(r0)
/* 0AD928 800B0928 2C000000 */  cmpwi     r0, 0x0
/* 0AD92C 800B092C 40820008 */  bne       lbl_800B0934
/* 0AD930 800B0930 57BD0776 */  rlwinm    r29, r29, 0, 29, 27
lbl_800B0934:
/* 0AD934 800B0934 57A007FF */  clrlwi.   r0, r29, 31
/* 0AD938 800B0938 41820080 */  beq       lbl_800B09B8
/* 0AD93C 800B093C 800D8CAC */  lwz       r0, NextCommandNumber@sda21(r0)
/* 0AD940 800B0940 1C000014 */  mulli     r0, r0, 0x14
/* 0AD944 800B0944 7C7E002E */  lwzx      r3, r30, r0
/* 0AD948 800B0948 2C030001 */  cmpwi     r3, 0x1
/* 0AD94C 800B094C 40820030 */  bne       lbl_800B097C
/* 0AD950 800B0950 806D8CAC */  lwz       r3, NextCommandNumber@sda21(r0)
/* 0AD954 800B0954 7CDE0214 */  add       r6, r30, r0
/* 0AD958 800B0958 38030001 */  addi      r0, r3, 0x1
/* 0AD95C 800B095C 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0AD960 800B0960 80660004 */  lwz       r3, 0x4(r6)
/* 0AD964 800B0964 80860008 */  lwz       r4, 0x8(r6)
/* 0AD968 800B0968 80A6000C */  lwz       r5, 0xc(r6)
/* 0AD96C 800B096C 80C60010 */  lwz       r6, 0x10(r6)
/* 0AD970 800B0970 480001B1 */  bl        fn_800B0B20
/* 0AD974 800B0974 38000001 */  li        r0, 0x1
/* 0AD978 800B0978 48000034 */  b         lbl_800B09AC
lbl_800B097C:
/* 0AD97C 800B097C 2C030002 */  cmpwi     r3, 0x2
/* 0AD980 800B0980 40820028 */  bne       lbl_800B09A8
/* 0AD984 800B0984 806D8CAC */  lwz       r3, NextCommandNumber@sda21(r0)
/* 0AD988 800B0988 7C9E0214 */  add       r4, r30, r0
/* 0AD98C 800B098C 38030001 */  addi      r0, r3, 0x1
/* 0AD990 800B0990 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0AD994 800B0994 8064000C */  lwz       r3, 0xc(r4)
/* 0AD998 800B0998 80840010 */  lwz       r4, 0x10(r4)
/* 0AD99C 800B099C 480005AD */  bl        fn_800B0F48
/* 0AD9A0 800B09A0 38000001 */  li        r0, 0x1
/* 0AD9A4 800B09A4 48000008 */  b         lbl_800B09AC
lbl_800B09A8:
/* 0AD9A8 800B09A8 38000000 */  li        r0, 0x0
lbl_800B09AC:
/* 0AD9AC 800B09AC 2C000000 */  cmpwi     r0, 0x0
/* 0AD9B0 800B09B0 41820018 */  beq       lbl_800B09C8
/* 0AD9B4 800B09B4 48000064 */  b         lbl_800B0A18
lbl_800B09B8:
/* 0AD9B8 800B09B8 3800FFFF */  li        r0, -0x1
/* 0AD9BC 800B09BC 901E0000 */  stw       r0, 0x0(r30)
/* 0AD9C0 800B09C0 38000000 */  li        r0, 0x0
/* 0AD9C4 800B09C4 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
lbl_800B09C8:
/* 0AD9C8 800B09C8 38610010 */  addi      r3, r1, 0x10
/* 0AD9CC 800B09CC 4BFECD25 */  bl        OSClearContext
/* 0AD9D0 800B09D0 38610010 */  addi      r3, r1, 0x10
/* 0AD9D4 800B09D4 4BFECB55 */  bl        OSSetCurrentContext
/* 0AD9D8 800B09D8 281D0000 */  cmplwi    r29, 0x0
/* 0AD9DC 800B09DC 4182002C */  beq       lbl_800B0A08
/* 0AD9E0 800B09E0 818D8C70 */  lwz       r12, Callback@sda21(r0)
/* 0AD9E4 800B09E4 38000000 */  li        r0, 0x0
/* 0AD9E8 800B09E8 280C0000 */  cmplwi    r12, 0x0
/* 0AD9EC 800B09EC 900D8C70 */  stw       r0, Callback@sda21(r0)
/* 0AD9F0 800B09F0 41820010 */  beq       lbl_800B0A00
/* 0AD9F4 800B09F4 7D8803A6 */  mtlr      r12
/* 0AD9F8 800B09F8 387D0000 */  addi      r3, r29, 0x0
/* 0AD9FC 800B09FC 4E800021 */  blrl
lbl_800B0A00:
/* 0ADA00 800B0A00 38000000 */  li        r0, 0x0
/* 0ADA04 800B0A04 900D8C88 */  stw       r0, D_8018BC08@sda21(r0)
lbl_800B0A08:
/* 0ADA08 800B0A08 38610010 */  addi      r3, r1, 0x10
/* 0ADA0C 800B0A0C 4BFECCE5 */  bl        OSClearContext
/* 0ADA10 800B0A10 7F83E378 */  mr        r3, r28
/* 0ADA14 800B0A14 4BFECB15 */  bl        OSSetCurrentContext
lbl_800B0A18:
/* 0ADA18 800B0A18 BB6102DC */  lmw       r27, 0x2dc(r1)
/* 0ADA1C 800B0A1C 800102F4 */  lwz       r0, 0x2f4(r1)
/* 0ADA20 800B0A20 382102F0 */  addi      r1, r1, 0x2f0
/* 0ADA24 800B0A24 7C0803A6 */  mtlr      r0
/* 0ADA28 800B0A28 4E800020 */  blr

glabel fn_800B0A2C
/* 0ADA2C 800B0A2C 7C0802A6 */  mflr      r0
/* 0ADA30 800B0A30 3C608019 */  lis       r3, CommandList@ha
/* 0ADA34 800B0A34 90010004 */  stw       r0, 0x4(r1)
/* 0ADA38 800B0A38 38838760 */  addi      r4, r3, CommandList@l
/* 0ADA3C 800B0A3C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0ADA40 800B0A40 800D8CAC */  lwz       r0, NextCommandNumber@sda21(r0)
/* 0ADA44 800B0A44 1C000014 */  mulli     r0, r0, 0x14
/* 0ADA48 800B0A48 7C64002E */  lwzx      r3, r4, r0
/* 0ADA4C 800B0A4C 2C030001 */  cmpwi     r3, 0x1
/* 0ADA50 800B0A50 4082002C */  bne       lbl_800B0A7C
/* 0ADA54 800B0A54 806D8CAC */  lwz       r3, NextCommandNumber@sda21(r0)
/* 0ADA58 800B0A58 7CC40214 */  add       r6, r4, r0
/* 0ADA5C 800B0A5C 38030001 */  addi      r0, r3, 0x1
/* 0ADA60 800B0A60 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0ADA64 800B0A64 80660004 */  lwz       r3, 0x4(r6)
/* 0ADA68 800B0A68 80860008 */  lwz       r4, 0x8(r6)
/* 0ADA6C 800B0A6C 80A6000C */  lwz       r5, 0xc(r6)
/* 0ADA70 800B0A70 80C60010 */  lwz       r6, 0x10(r6)
/* 0ADA74 800B0A74 480000AD */  bl        fn_800B0B20
/* 0ADA78 800B0A78 48000028 */  b         lbl_800B0AA0
lbl_800B0A7C:
/* 0ADA7C 800B0A7C 2C030002 */  cmpwi     r3, 0x2
/* 0ADA80 800B0A80 40820020 */  bne       lbl_800B0AA0
/* 0ADA84 800B0A84 806D8CAC */  lwz       r3, NextCommandNumber@sda21(r0)
/* 0ADA88 800B0A88 7C840214 */  add       r4, r4, r0
/* 0ADA8C 800B0A8C 38030001 */  addi      r0, r3, 0x1
/* 0ADA90 800B0A90 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0ADA94 800B0A94 8064000C */  lwz       r3, 0xc(r4)
/* 0ADA98 800B0A98 80840010 */  lwz       r4, 0x10(r4)
/* 0ADA9C 800B0A9C 480004AD */  bl        fn_800B0F48
lbl_800B0AA0:
/* 0ADAA0 800B0AA0 8001000C */  lwz       r0, 0xc(r1)
/* 0ADAA4 800B0AA4 38210008 */  addi      r1, r1, 0x8
/* 0ADAA8 800B0AA8 7C0803A6 */  mtlr      r0
/* 0ADAAC 800B0AAC 4E800020 */  blr

AlarmHandlerForTimeout:
/* 0ADAB0 800B0AB0 7C0802A6 */  mflr      r0
/* 0ADAB4 800B0AB4 38600400 */  li        r3, 0x400
/* 0ADAB8 800B0AB8 90010004 */  stw       r0, 0x4(r1)
/* 0ADABC 800B0ABC 9421FD20 */  stwu      r1, -0x2e0(r1)
/* 0ADAC0 800B0AC0 93E102DC */  stw       r31, 0x2dc(r1)
/* 0ADAC4 800B0AC4 3BE40000 */  addi      r31, r4, 0x0
/* 0ADAC8 800B0AC8 4BFEDB49 */  bl        __OSMaskInterrupts
/* 0ADACC 800B0ACC 38610010 */  addi      r3, r1, 0x10
/* 0ADAD0 800B0AD0 4BFECC21 */  bl        OSClearContext
/* 0ADAD4 800B0AD4 38610010 */  addi      r3, r1, 0x10
/* 0ADAD8 800B0AD8 4BFECA51 */  bl        OSSetCurrentContext
/* 0ADADC 800B0ADC 818D8C70 */  lwz       r12, Callback@sda21(r0)
/* 0ADAE0 800B0AE0 38000000 */  li        r0, 0x0
/* 0ADAE4 800B0AE4 280C0000 */  cmplwi    r12, 0x0
/* 0ADAE8 800B0AE8 900D8C70 */  stw       r0, Callback@sda21(r0)
/* 0ADAEC 800B0AEC 41820010 */  beq       lbl_800B0AFC
/* 0ADAF0 800B0AF0 7D8803A6 */  mtlr      r12
/* 0ADAF4 800B0AF4 38600010 */  li        r3, 0x10
/* 0ADAF8 800B0AF8 4E800021 */  blrl
lbl_800B0AFC:
/* 0ADAFC 800B0AFC 38610010 */  addi      r3, r1, 0x10
/* 0ADB00 800B0B00 4BFECBF1 */  bl        OSClearContext
/* 0ADB04 800B0B04 7FE3FB78 */  mr        r3, r31
/* 0ADB08 800B0B08 4BFECA21 */  bl        OSSetCurrentContext
/* 0ADB0C 800B0B0C 800102E4 */  lwz       r0, 0x2e4(r1)
/* 0ADB10 800B0B10 83E102DC */  lwz       r31, 0x2dc(r1)
/* 0ADB14 800B0B14 382102E0 */  addi      r1, r1, 0x2e0
/* 0ADB18 800B0B18 7C0803A6 */  mtlr      r0
/* 0ADB1C 800B0B1C 4E800020 */  blr

glabel fn_800B0B20
/* 0ADB20 800B0B20 7C0802A6 */  mflr      r0
/* 0ADB24 800B0B24 90010004 */  stw       r0, 0x4(r1)
/* 0ADB28 800B0B28 38000000 */  li        r0, 0x0
/* 0ADB2C 800B0B2C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0ADB30 800B0B30 93E10024 */  stw       r31, 0x24(r1)
/* 0ADB34 800B0B34 93C10020 */  stw       r30, 0x20(r1)
/* 0ADB38 800B0B38 3BC50000 */  addi      r30, r5, 0x0
/* 0ADB3C 800B0B3C 93A1001C */  stw       r29, 0x1c(r1)
/* 0ADB40 800B0B40 3BA40000 */  addi      r29, r4, 0x0
/* 0ADB44 800B0B44 93810018 */  stw       r28, 0x18(r1)
/* 0ADB48 800B0B48 3B830000 */  addi      r28, r3, 0x0
/* 0ADB4C 800B0B4C 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0ADB50 800B0B50 38000001 */  li        r0, 0x1
/* 0ADB54 800B0B54 90CD8C70 */  stw       r6, Callback@sda21(r0)
/* 0ADB58 800B0B58 3CC08019 */  lis       r6, CommandList@ha
/* 0ADB5C 800B0B5C 3BE68760 */  addi      r31, r6, CommandList@l
/* 0ADB60 800B0B60 900D8CA8 */  stw       r0, D_8018BC28@sda21(r0)
/* 0ADB64 800B0B64 4BFF099D */  bl        __OSGetSystemTime
/* 0ADB68 800B0B68 908D8CA4 */  stw       r4, D_8018BC24@sda21(r0)
/* 0ADB6C 800B0B6C 3C80CC00 */  lis       r4, 0xcc00
/* 0ADB70 800B0B70 3C0000A0 */  lis       r0, 0xa0
/* 0ADB74 800B0B74 906D8CA0 */  stw       r3, D_8018BC20@sda21(r0)
/* 0ADB78 800B0B78 38846000 */  addi      r4, r4, 0x6000
/* 0ADB7C 800B0B7C 3C60A800 */  lis       r3, 0xa800
/* 0ADB80 800B0B80 90640008 */  stw       r3, 0x8(r4)
/* 0ADB84 800B0B84 57C3F0BE */  srwi      r3, r30, 2
/* 0ADB88 800B0B88 7C1D0040 */  cmplw     r29, r0
/* 0ADB8C 800B0B8C 9064000C */  stw       r3, 0xc(r4)
/* 0ADB90 800B0B90 38000003 */  li        r0, 0x3
/* 0ADB94 800B0B94 93A40010 */  stw       r29, 0x10(r4)
/* 0ADB98 800B0B98 93840014 */  stw       r28, 0x14(r4)
/* 0ADB9C 800B0B9C 93A40018 */  stw       r29, 0x18(r4)
/* 0ADBA0 800B0BA0 93AD8C6C */  stw       r29, D_8018BBEC@sda21(r0)
/* 0ADBA4 800B0BA4 9004001C */  stw       r0, 0x1c(r4)
/* 0ADBA8 800B0BA8 40810038 */  ble       lbl_800B0BE0
/* 0ADBAC 800B0BAC 3C608000 */  lis       r3, 0x8000
/* 0ADBB0 800B0BB0 800300F8 */  lwz       r0, 0xf8(r3)
/* 0ADBB4 800B0BB4 387F0068 */  addi      r3, r31, 0x68
/* 0ADBB8 800B0BB8 5400F0BE */  srwi      r0, r0, 2
/* 0ADBBC 800B0BBC 1FC00014 */  mulli     r30, r0, 0x14
/* 0ADBC0 800B0BC0 4BFEB13D */  bl        OSCreateAlarm
/* 0ADBC4 800B0BC4 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0ADBC8 800B0BC8 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0ADBCC 800B0BCC 38DE0000 */  addi      r6, r30, 0x0
/* 0ADBD0 800B0BD0 387F0068 */  addi      r3, r31, 0x68
/* 0ADBD4 800B0BD4 38A00000 */  li        r5, 0x0
/* 0ADBD8 800B0BD8 4BFEB385 */  bl        OSSetAlarm
/* 0ADBDC 800B0BDC 48000034 */  b         lbl_800B0C10
lbl_800B0BE0:
/* 0ADBE0 800B0BE0 3C608000 */  lis       r3, 0x8000
/* 0ADBE4 800B0BE4 800300F8 */  lwz       r0, 0xf8(r3)
/* 0ADBE8 800B0BE8 387F0068 */  addi      r3, r31, 0x68
/* 0ADBEC 800B0BEC 5400F0BE */  srwi      r0, r0, 2
/* 0ADBF0 800B0BF0 1FC0000A */  mulli     r30, r0, 0xa
/* 0ADBF4 800B0BF4 4BFEB109 */  bl        OSCreateAlarm
/* 0ADBF8 800B0BF8 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0ADBFC 800B0BFC 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0ADC00 800B0C00 38DE0000 */  addi      r6, r30, 0x0
/* 0ADC04 800B0C04 387F0068 */  addi      r3, r31, 0x68
/* 0ADC08 800B0C08 38A00000 */  li        r5, 0x0
/* 0ADC0C 800B0C0C 4BFEB351 */  bl        OSSetAlarm
lbl_800B0C10:
/* 0ADC10 800B0C10 8001002C */  lwz       r0, 0x2c(r1)
/* 0ADC14 800B0C14 83E10024 */  lwz       r31, 0x24(r1)
/* 0ADC18 800B0C18 83C10020 */  lwz       r30, 0x20(r1)
/* 0ADC1C 800B0C1C 83A1001C */  lwz       r29, 0x1c(r1)
/* 0ADC20 800B0C20 83810018 */  lwz       r28, 0x18(r1)
/* 0ADC24 800B0C24 38210028 */  addi      r1, r1, 0x28
/* 0ADC28 800B0C28 7C0803A6 */  mtlr      r0
/* 0ADC2C 800B0C2C 4E800020 */  blr

glabel fn_800B0C30
/* 0ADC30 800B0C30 7C0802A6 */  mflr      r0
/* 0ADC34 800B0C34 3CE08019 */  lis       r7, CommandList@ha
/* 0ADC38 800B0C38 90010004 */  stw       r0, 0x4(r1)
/* 0ADC3C 800B0C3C 54A80021 */  clrrwi.   r8, r5, 15
/* 0ADC40 800B0C40 39278760 */  addi      r9, r7, CommandList@l
/* 0ADC44 800B0C44 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0ADC48 800B0C48 4082000C */  bne       lbl_800B0C54
/* 0ADC4C 800B0C4C 39400000 */  li        r10, 0x0
/* 0ADC50 800B0C50 4800000C */  b         lbl_800B0C5C
lbl_800B0C54:
/* 0ADC54 800B0C54 800D8C90 */  lwz       r0, WorkAroundSeekLocation@sda21(r0)
/* 0ADC58 800B0C58 7D480214 */  add       r10, r8, r0
lbl_800B0C5C:
/* 0ADC5C 800B0C5C 38000002 */  li        r0, 0x2
/* 0ADC60 800B0C60 90090000 */  stw       r0, 0x0(r9)
/* 0ADC64 800B0C64 39000001 */  li        r8, 0x1
/* 0ADC68 800B0C68 38E0FFFF */  li        r7, -0x1
/* 0ADC6C 800B0C6C 9149000C */  stw       r10, 0xc(r9)
/* 0ADC70 800B0C70 38000000 */  li        r0, 0x0
/* 0ADC74 800B0C74 90C90010 */  stw       r6, 0x10(r9)
/* 0ADC78 800B0C78 91090014 */  stw       r8, 0x14(r9)
/* 0ADC7C 800B0C7C 90690018 */  stw       r3, 0x18(r9)
/* 0ADC80 800B0C80 7D435378 */  mr        r3, r10
/* 0ADC84 800B0C84 9089001C */  stw       r4, 0x1c(r9)
/* 0ADC88 800B0C88 7CC43378 */  mr        r4, r6
/* 0ADC8C 800B0C8C 90A90020 */  stw       r5, 0x20(r9)
/* 0ADC90 800B0C90 90C90024 */  stw       r6, 0x24(r9)
/* 0ADC94 800B0C94 90E90028 */  stw       r7, 0x28(r9)
/* 0ADC98 800B0C98 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0ADC9C 800B0C9C 480002AD */  bl        fn_800B0F48
/* 0ADCA0 800B0CA0 8001000C */  lwz       r0, 0xc(r1)
/* 0ADCA4 800B0CA4 38210008 */  addi      r1, r1, 0x8
/* 0ADCA8 800B0CA8 7C0803A6 */  mtlr      r0
/* 0ADCAC 800B0CAC 4E800020 */  blr

glabel fn_800B0CB0
/* 0ADCB0 800B0CB0 7C0802A6 */  mflr      r0
/* 0ADCB4 800B0CB4 3CE0CC00 */  lis       r7, 0xcc00
/* 0ADCB8 800B0CB8 90010004 */  stw       r0, 0x4(r1)
/* 0ADCBC 800B0CBC 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0ADCC0 800B0CC0 BEC10018 */  stmw      r22, 0x18(r1)
/* 0ADCC4 800B0CC4 3B240000 */  addi      r25, r4, 0x0
/* 0ADCC8 800B0CC8 38876000 */  addi      r4, r7, 0x6000
/* 0ADCCC 800B0CCC 3CE08019 */  lis       r7, CommandList@ha
/* 0ADCD0 800B0CD0 3BE78760 */  addi      r31, r7, CommandList@l
/* 0ADCD4 800B0CD4 3B030000 */  addi      r24, r3, 0x0
/* 0ADCD8 800B0CD8 3B450000 */  addi      r26, r5, 0x0
/* 0ADCDC 800B0CDC 3BDF00CC */  addi      r30, r31, 0xcc
/* 0ADCE0 800B0CE0 7CDB3378 */  mr        r27, r6
/* 0ADCE4 800B0CE4 93240018 */  stw       r25, 0x18(r4)
/* 0ADCE8 800B0CE8 931F00C4 */  stw       r24, 0xc4(r31)
/* 0ADCEC 800B0CEC 933F00C8 */  stw       r25, 0xc8(r31)
/* 0ADCF0 800B0CF0 935F00CC */  stw       r26, 0xcc(r31)
/* 0ADCF4 800B0CF4 800D8C8C */  lwz       r0, WorkAroundType@sda21(r0)
/* 0ADCF8 800B0CF8 28000000 */  cmplwi    r0, 0x0
/* 0ADCFC 800B0CFC 4082002C */  bne       lbl_800B0D28
/* 0ADD00 800B0D00 3800FFFF */  li        r0, -0x1
/* 0ADD04 800B0D04 901F0000 */  stw       r0, 0x0(r31)
/* 0ADD08 800B0D08 38000000 */  li        r0, 0x0
/* 0ADD0C 800B0D0C 38780000 */  addi      r3, r24, 0x0
/* 0ADD10 800B0D10 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0ADD14 800B0D14 38990000 */  addi      r4, r25, 0x0
/* 0ADD18 800B0D18 38BA0000 */  addi      r5, r26, 0x0
/* 0ADD1C 800B0D1C 38DB0000 */  addi      r6, r27, 0x0
/* 0ADD20 800B0D20 4BFFFE01 */  bl        fn_800B0B20
/* 0ADD24 800B0D24 4800020C */  b         lbl_800B0F30
lbl_800B0D28:
/* 0ADD28 800B0D28 800D8C8C */  lwz       r0, WorkAroundType@sda21(r0)
/* 0ADD2C 800B0D2C 28000001 */  cmplwi    r0, 0x1
/* 0ADD30 800B0D30 40820200 */  bne       lbl_800B0F30
/* 0ADD34 800B0D34 800D87F0 */  lwz       r0, D_8018B770@sda21(r0)
/* 0ADD38 800B0D38 2C000000 */  cmpwi     r0, 0x0
/* 0ADD3C 800B0D3C 4182001C */  beq       lbl_800B0D58
/* 0ADD40 800B0D40 38780000 */  addi      r3, r24, 0x0
/* 0ADD44 800B0D44 38990000 */  addi      r4, r25, 0x0
/* 0ADD48 800B0D48 38BA0000 */  addi      r5, r26, 0x0
/* 0ADD4C 800B0D4C 38DB0000 */  addi      r6, r27, 0x0
/* 0ADD50 800B0D50 4BFFFEE1 */  bl        fn_800B0C30
/* 0ADD54 800B0D54 480001DC */  b         lbl_800B0F30
lbl_800B0D58:
/* 0ADD58 800B0D58 3BBF00BC */  addi      r29, r31, 0xbc
/* 0ADD5C 800B0D5C 801E0000 */  lwz       r0, 0x0(r30)
/* 0ADD60 800B0D60 3B9F00C0 */  addi      r28, r31, 0xc0
/* 0ADD64 800B0D64 807F00BC */  lwz       r3, 0xbc(r31)
/* 0ADD68 800B0D68 809F00C0 */  lwz       r4, 0xc0(r31)
/* 0ADD6C 800B0D6C 54178BFE */  srwi      r23, r0, 15
/* 0ADD70 800B0D70 3803FFFF */  subi      r0, r3, 0x1
/* 0ADD74 800B0D74 7C040214 */  add       r0, r4, r0
/* 0ADD78 800B0D78 54168BFE */  srwi      r22, r0, 15
/* 0ADD7C 800B0D7C 480034AD */  bl        fn_800B4228
/* 0ADD80 800B0D80 88030008 */  lbz       r0, 0x8(r3)
/* 0ADD84 800B0D84 28000000 */  cmplwi    r0, 0x0
/* 0ADD88 800B0D88 4182000C */  beq       lbl_800B0D94
/* 0ADD8C 800B0D8C 38000001 */  li        r0, 0x1
/* 0ADD90 800B0D90 48000008 */  b         lbl_800B0D98
lbl_800B0D94:
/* 0ADD94 800B0D94 38000000 */  li        r0, 0x0
lbl_800B0D98:
/* 0ADD98 800B0D98 2C000000 */  cmpwi     r0, 0x0
/* 0ADD9C 800B0D9C 4182000C */  beq       lbl_800B0DA8
/* 0ADDA0 800B0DA0 38600005 */  li        r3, 0x5
/* 0ADDA4 800B0DA4 48000008 */  b         lbl_800B0DAC
lbl_800B0DA8:
/* 0ADDA8 800B0DA8 3860000F */  li        r3, 0xf
lbl_800B0DAC:
/* 0ADDAC 800B0DAC 3816FFFE */  subi      r0, r22, 0x2
/* 0ADDB0 800B0DB0 7C170040 */  cmplw     r23, r0
/* 0ADDB4 800B0DB4 41810014 */  bgt       lbl_800B0DC8
/* 0ADDB8 800B0DB8 38030003 */  addi      r0, r3, 0x3
/* 0ADDBC 800B0DBC 7C160214 */  add       r0, r22, r0
/* 0ADDC0 800B0DC0 7C170040 */  cmplw     r23, r0
/* 0ADDC4 800B0DC4 4080000C */  bge       lbl_800B0DD0
lbl_800B0DC8:
/* 0ADDC8 800B0DC8 38000001 */  li        r0, 0x1
/* 0ADDCC 800B0DCC 48000008 */  b         lbl_800B0DD4
lbl_800B0DD0:
/* 0ADDD0 800B0DD0 38000000 */  li        r0, 0x0
lbl_800B0DD4:
/* 0ADDD4 800B0DD4 2C000000 */  cmpwi     r0, 0x0
/* 0ADDD8 800B0DD8 4082002C */  bne       lbl_800B0E04
/* 0ADDDC 800B0DDC 3800FFFF */  li        r0, -0x1
/* 0ADDE0 800B0DE0 901F0000 */  stw       r0, 0x0(r31)
/* 0ADDE4 800B0DE4 38000000 */  li        r0, 0x0
/* 0ADDE8 800B0DE8 38780000 */  addi      r3, r24, 0x0
/* 0ADDEC 800B0DEC 900D8CAC */  stw       r0, NextCommandNumber@sda21(r0)
/* 0ADDF0 800B0DF0 38990000 */  addi      r4, r25, 0x0
/* 0ADDF4 800B0DF4 38BA0000 */  addi      r5, r26, 0x0
/* 0ADDF8 800B0DF8 38DB0000 */  addi      r6, r27, 0x0
/* 0ADDFC 800B0DFC 4BFFFD25 */  bl        fn_800B0B20
/* 0ADE00 800B0E00 48000130 */  b         lbl_800B0F30
lbl_800B0E04:
/* 0ADE04 800B0E04 807D0000 */  lwz       r3, 0x0(r29)
/* 0ADE08 800B0E08 809C0000 */  lwz       r4, 0x0(r28)
/* 0ADE0C 800B0E0C 3863FFFF */  subi      r3, r3, 0x1
/* 0ADE10 800B0E10 801E0000 */  lwz       r0, 0x0(r30)
/* 0ADE14 800B0E14 7C641A14 */  add       r3, r4, r3
/* 0ADE18 800B0E18 54638BFE */  srwi      r3, r3, 15
/* 0ADE1C 800B0E1C 54048BFE */  srwi      r4, r0, 15
/* 0ADE20 800B0E20 7C032040 */  cmplw     r3, r4
/* 0ADE24 800B0E24 41820010 */  beq       lbl_800B0E34
/* 0ADE28 800B0E28 38030001 */  addi      r0, r3, 0x1
/* 0ADE2C 800B0E2C 7C002040 */  cmplw     r0, r4
/* 0ADE30 800B0E30 408200EC */  bne       lbl_800B0F1C
lbl_800B0E34:
/* 0ADE34 800B0E34 4BFF06CD */  bl        __OSGetSystemTime
/* 0ADE38 800B0E38 3CA08000 */  lis       r5, 0x8000
/* 0ADE3C 800B0E3C 810D8C98 */  lwz       r8, D_8018BC18@sda21(r0)
/* 0ADE40 800B0E40 800500F8 */  lwz       r0, 0xf8(r5)
/* 0ADE44 800B0E44 3CA01062 */  lis       r5, 0x1062
/* 0ADE48 800B0E48 812D8C9C */  lwz       r9, D_8018BC1C@sda21(r0)
/* 0ADE4C 800B0E4C 38C00000 */  li        r6, 0x0
/* 0ADE50 800B0E50 5407F0BE */  srwi      r7, r0, 2
/* 0ADE54 800B0E54 38054DD3 */  addi      r0, r5, 0x4dd3
/* 0ADE58 800B0E58 7C003816 */  mulhwu    r0, r0, r7
/* 0ADE5C 800B0E5C 5400D1BE */  srwi      r0, r0, 6
/* 0ADE60 800B0E60 7D292010 */  subfc     r9, r9, r4
/* 0ADE64 800B0E64 7D081910 */  subfe     r8, r8, r3
/* 0ADE68 800B0E68 1CA00005 */  mulli     r5, r0, 0x5
/* 0ADE6C 800B0E6C 6CC48000 */  xoris     r4, r6, 0x8000
/* 0ADE70 800B0E70 6D038000 */  xoris     r3, r8, 0x8000
/* 0ADE74 800B0E74 7C092810 */  subfc     r0, r9, r5
/* 0ADE78 800B0E78 7C632110 */  subfe     r3, r3, r4
/* 0ADE7C 800B0E7C 7C642110 */  subfe     r3, r4, r4
/* 0ADE80 800B0E80 7C6300D1 */  neg.      r3, r3
/* 0ADE84 800B0E84 41820028 */  beq       lbl_800B0EAC
/* 0ADE88 800B0E88 3800FFFF */  li        r0, -0x1
/* 0ADE8C 800B0E8C 901F0000 */  stw       r0, 0x0(r31)
/* 0ADE90 800B0E90 38780000 */  addi      r3, r24, 0x0
/* 0ADE94 800B0E94 38990000 */  addi      r4, r25, 0x0
/* 0ADE98 800B0E98 90CD8CAC */  stw       r6, NextCommandNumber@sda21(r0)
/* 0ADE9C 800B0E9C 38BA0000 */  addi      r5, r26, 0x0
/* 0ADEA0 800B0EA0 38DB0000 */  addi      r6, r27, 0x0
/* 0ADEA4 800B0EA4 4BFFFC7D */  bl        fn_800B0B20
/* 0ADEA8 800B0EA8 48000088 */  b         lbl_800B0F30
lbl_800B0EAC:
/* 0ADEAC 800B0EAC 38000001 */  li        r0, 0x1
/* 0ADEB0 800B0EB0 901F0000 */  stw       r0, 0x0(r31)
/* 0ADEB4 800B0EB4 3C60431C */  lis       r3, 0x431c
/* 0ADEB8 800B0EB8 3803DE83 */  subi      r0, r3, 0x217d
/* 0ADEBC 800B0EBC 931F0004 */  stw       r24, 0x4(r31)
/* 0ADEC0 800B0EC0 7C003816 */  mulhwu    r0, r0, r7
/* 0ADEC4 800B0EC4 933F0008 */  stw       r25, 0x8(r31)
/* 0ADEC8 800B0EC8 935F000C */  stw       r26, 0xc(r31)
/* 0ADECC 800B0ECC 54008BFE */  srwi      r0, r0, 15
/* 0ADED0 800B0ED0 1C6001F4 */  mulli     r3, r0, 0x1f4
/* 0ADED4 800B0ED4 937F0010 */  stw       r27, 0x10(r31)
/* 0ADED8 800B0ED8 3800FFFF */  li        r0, -0x1
/* 0ADEDC 800B0EDC 901F0014 */  stw       r0, 0x14(r31)
/* 0ADEE0 800B0EE0 7CA92810 */  subfc     r5, r9, r5
/* 0ADEE4 800B0EE4 7C883110 */  subfe     r4, r8, r6
/* 0ADEE8 800B0EE8 5460E8FE */  srwi      r0, r3, 3
/* 0ADEEC 800B0EEC 90CD8CAC */  stw       r6, NextCommandNumber@sda21(r0)
/* 0ADEF0 800B0EF0 7EE50014 */  addc      r23, r5, r0
/* 0ADEF4 800B0EF4 7EC43114 */  adde      r22, r4, r6
/* 0ADEF8 800B0EF8 387F0040 */  addi      r3, r31, 0x40
/* 0ADEFC 800B0EFC 4BFEAE01 */  bl        OSCreateAlarm
/* 0ADF00 800B0F00 3C60800B */  lis       r3, fn_800B0A2C@ha
/* 0ADF04 800B0F04 38E30A2C */  addi      r7, r3, fn_800B0A2C@l
/* 0ADF08 800B0F08 38D70000 */  addi      r6, r23, 0x0
/* 0ADF0C 800B0F0C 38B60000 */  addi      r5, r22, 0x0
/* 0ADF10 800B0F10 387F0040 */  addi      r3, r31, 0x40
/* 0ADF14 800B0F14 4BFEB049 */  bl        OSSetAlarm
/* 0ADF18 800B0F18 48000018 */  b         lbl_800B0F30
lbl_800B0F1C:
/* 0ADF1C 800B0F1C 38780000 */  addi      r3, r24, 0x0
/* 0ADF20 800B0F20 38990000 */  addi      r4, r25, 0x0
/* 0ADF24 800B0F24 38BA0000 */  addi      r5, r26, 0x0
/* 0ADF28 800B0F28 38DB0000 */  addi      r6, r27, 0x0
/* 0ADF2C 800B0F2C 4BFFFD05 */  bl        fn_800B0C30
lbl_800B0F30:
/* 0ADF30 800B0F30 BAC10018 */  lmw       r22, 0x18(r1)
/* 0ADF34 800B0F34 38600001 */  li        r3, 0x1
/* 0ADF38 800B0F38 80010044 */  lwz       r0, 0x44(r1)
/* 0ADF3C 800B0F3C 38210040 */  addi      r1, r1, 0x40
/* 0ADF40 800B0F40 7C0803A6 */  mtlr      r0
/* 0ADF44 800B0F44 4E800020 */  blr

glabel fn_800B0F48
/* 0ADF48 800B0F48 7C0802A6 */  mflr      r0
/* 0ADF4C 800B0F4C 90010004 */  stw       r0, 0x4(r1)
/* 0ADF50 800B0F50 38000000 */  li        r0, 0x0
/* 0ADF54 800B0F54 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0ADF58 800B0F58 93E10014 */  stw       r31, 0x14(r1)
/* 0ADF5C 800B0F5C 93C10010 */  stw       r30, 0x10(r1)
/* 0ADF60 800B0F60 908D8C70 */  stw       r4, Callback@sda21(r0)
/* 0ADF64 800B0F64 3C80CC00 */  lis       r4, 0xcc00
/* 0ADF68 800B0F68 38846000 */  addi      r4, r4, 0x6000
/* 0ADF6C 800B0F6C 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0ADF70 800B0F70 3C00AB00 */  lis       r0, 0xab00
/* 0ADF74 800B0F74 90040008 */  stw       r0, 0x8(r4)
/* 0ADF78 800B0F78 5460F0BE */  srwi      r0, r3, 2
/* 0ADF7C 800B0F7C 3C608019 */  lis       r3, AlarmForTimeout@ha
/* 0ADF80 800B0F80 9004000C */  stw       r0, 0xc(r4)
/* 0ADF84 800B0F84 38000001 */  li        r0, 0x1
/* 0ADF88 800B0F88 3BE387C8 */  addi      r31, r3, AlarmForTimeout@l
/* 0ADF8C 800B0F8C 9004001C */  stw       r0, 0x1c(r4)
/* 0ADF90 800B0F90 3C808000 */  lis       r4, 0x8000
/* 0ADF94 800B0F94 387F0000 */  addi      r3, r31, 0x0
/* 0ADF98 800B0F98 800400F8 */  lwz       r0, 0xf8(r4)
/* 0ADF9C 800B0F9C 5400F0BE */  srwi      r0, r0, 2
/* 0ADFA0 800B0FA0 1FC0000A */  mulli     r30, r0, 0xa
/* 0ADFA4 800B0FA4 4BFEAD59 */  bl        OSCreateAlarm
/* 0ADFA8 800B0FA8 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0ADFAC 800B0FAC 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0ADFB0 800B0FB0 387F0000 */  addi      r3, r31, 0x0
/* 0ADFB4 800B0FB4 38DE0000 */  addi      r6, r30, 0x0
/* 0ADFB8 800B0FB8 38A00000 */  li        r5, 0x0
/* 0ADFBC 800B0FBC 4BFEAFA1 */  bl        OSSetAlarm
/* 0ADFC0 800B0FC0 8001001C */  lwz       r0, 0x1c(r1)
/* 0ADFC4 800B0FC4 38600001 */  li        r3, 0x1
/* 0ADFC8 800B0FC8 83E10014 */  lwz       r31, 0x14(r1)
/* 0ADFCC 800B0FCC 83C10010 */  lwz       r30, 0x10(r1)
/* 0ADFD0 800B0FD0 38210018 */  addi      r1, r1, 0x18
/* 0ADFD4 800B0FD4 7C0803A6 */  mtlr      r0
/* 0ADFD8 800B0FD8 4E800020 */  blr

glabel DVDLowWaitCoverClose
/* 0ADFDC 800B0FDC 38000001 */  li        r0, 0x1
/* 0ADFE0 800B0FE0 906D8C70 */  stw       r3, Callback@sda21(r0)
/* 0ADFE4 800B0FE4 3C60CC00 */  lis       r3, 0xcc00
/* 0ADFE8 800B0FE8 900D8C84 */  stw       r0, WaitingCoverClose@sda21(r0)
/* 0ADFEC 800B0FEC 38000000 */  li        r0, 0x0
/* 0ADFF0 800B0FF0 38836000 */  addi      r4, r3, 0x6000
/* 0ADFF4 800B0FF4 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0ADFF8 800B0FF8 38000002 */  li        r0, 0x2
/* 0ADFFC 800B0FFC 38600001 */  li        r3, 0x1
/* 0AE000 800B1000 90040004 */  stw       r0, 0x4(r4)
/* 0AE004 800B1004 4E800020 */  blr

glabel fn_800B1008
/* 0AE008 800B1008 7C0802A6 */  mflr      r0
/* 0AE00C 800B100C 39000000 */  li        r8, 0x0
/* 0AE010 800B1010 90010004 */  stw       r0, 0x4(r1)
/* 0AE014 800B1014 3CA0A800 */  lis       r5, 0xa800
/* 0AE018 800B1018 38050040 */  addi      r0, r5, 0x40
/* 0AE01C 800B101C 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AE020 800B1020 38C00020 */  li        r6, 0x20
/* 0AE024 800B1024 3CA08000 */  lis       r5, 0x8000
/* 0AE028 800B1028 93E10014 */  stw       r31, 0x14(r1)
/* 0AE02C 800B102C 93C10010 */  stw       r30, 0x10(r1)
/* 0AE030 800B1030 908D8C70 */  stw       r4, Callback@sda21(r0)
/* 0AE034 800B1034 3C80CC00 */  lis       r4, 0xcc00
/* 0AE038 800B1038 38E46000 */  addi      r7, r4, 0x6000
/* 0AE03C 800B103C 910D8C68 */  stw       r8, StopAtNextInt@sda21(r0)
/* 0AE040 800B1040 90046008 */  stw       r0, 0x6008(r4)
/* 0AE044 800B1044 3C808019 */  lis       r4, AlarmForTimeout@ha
/* 0AE048 800B1048 38000003 */  li        r0, 0x3
/* 0AE04C 800B104C 9107000C */  stw       r8, 0xc(r7)
/* 0AE050 800B1050 3BE487C8 */  addi      r31, r4, AlarmForTimeout@l
/* 0AE054 800B1054 90C70010 */  stw       r6, 0x10(r7)
/* 0AE058 800B1058 90670014 */  stw       r3, 0x14(r7)
/* 0AE05C 800B105C 7FE3FB78 */  mr        r3, r31
/* 0AE060 800B1060 90C70018 */  stw       r6, 0x18(r7)
/* 0AE064 800B1064 9007001C */  stw       r0, 0x1c(r7)
/* 0AE068 800B1068 800500F8 */  lwz       r0, 0xf8(r5)
/* 0AE06C 800B106C 5400F0BE */  srwi      r0, r0, 2
/* 0AE070 800B1070 1FC0000A */  mulli     r30, r0, 0xa
/* 0AE074 800B1074 4BFEAC89 */  bl        OSCreateAlarm
/* 0AE078 800B1078 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0AE07C 800B107C 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0AE080 800B1080 387F0000 */  addi      r3, r31, 0x0
/* 0AE084 800B1084 38DE0000 */  addi      r6, r30, 0x0
/* 0AE088 800B1088 38A00000 */  li        r5, 0x0
/* 0AE08C 800B108C 4BFEAED1 */  bl        OSSetAlarm
/* 0AE090 800B1090 8001001C */  lwz       r0, 0x1c(r1)
/* 0AE094 800B1094 38600001 */  li        r3, 0x1
/* 0AE098 800B1098 83E10014 */  lwz       r31, 0x14(r1)
/* 0AE09C 800B109C 83C10010 */  lwz       r30, 0x10(r1)
/* 0AE0A0 800B10A0 38210018 */  addi      r1, r1, 0x18
/* 0AE0A4 800B10A4 7C0803A6 */  mtlr      r0
/* 0AE0A8 800B10A8 4E800020 */  blr

glabel DVDLowStopMotor
/* 0AE0AC 800B10AC 7C0802A6 */  mflr      r0
/* 0AE0B0 800B10B0 90010004 */  stw       r0, 0x4(r1)
/* 0AE0B4 800B10B4 38000000 */  li        r0, 0x0
/* 0AE0B8 800B10B8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AE0BC 800B10BC 93E10014 */  stw       r31, 0x14(r1)
/* 0AE0C0 800B10C0 93C10010 */  stw       r30, 0x10(r1)
/* 0AE0C4 800B10C4 906D8C70 */  stw       r3, Callback@sda21(r0)
/* 0AE0C8 800B10C8 3C60CC00 */  lis       r3, 0xcc00
/* 0AE0CC 800B10CC 38836000 */  addi      r4, r3, 0x6000
/* 0AE0D0 800B10D0 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AE0D4 800B10D4 3C00E300 */  lis       r0, 0xe300
/* 0AE0D8 800B10D8 90036008 */  stw       r0, 0x6008(r3)
/* 0AE0DC 800B10DC 38000001 */  li        r0, 0x1
/* 0AE0E0 800B10E0 3C608019 */  lis       r3, AlarmForTimeout@ha
/* 0AE0E4 800B10E4 9004001C */  stw       r0, 0x1c(r4)
/* 0AE0E8 800B10E8 3C808000 */  lis       r4, 0x8000
/* 0AE0EC 800B10EC 3BE387C8 */  addi      r31, r3, AlarmForTimeout@l
/* 0AE0F0 800B10F0 800400F8 */  lwz       r0, 0xf8(r4)
/* 0AE0F4 800B10F4 387F0000 */  addi      r3, r31, 0x0
/* 0AE0F8 800B10F8 5400F0BE */  srwi      r0, r0, 2
/* 0AE0FC 800B10FC 1FC0000A */  mulli     r30, r0, 0xa
/* 0AE100 800B1100 4BFEABFD */  bl        OSCreateAlarm
/* 0AE104 800B1104 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0AE108 800B1108 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0AE10C 800B110C 387F0000 */  addi      r3, r31, 0x0
/* 0AE110 800B1110 38DE0000 */  addi      r6, r30, 0x0
/* 0AE114 800B1114 38A00000 */  li        r5, 0x0
/* 0AE118 800B1118 4BFEAE45 */  bl        OSSetAlarm
/* 0AE11C 800B111C 8001001C */  lwz       r0, 0x1c(r1)
/* 0AE120 800B1120 38600001 */  li        r3, 0x1
/* 0AE124 800B1124 83E10014 */  lwz       r31, 0x14(r1)
/* 0AE128 800B1128 83C10010 */  lwz       r30, 0x10(r1)
/* 0AE12C 800B112C 38210018 */  addi      r1, r1, 0x18
/* 0AE130 800B1130 7C0803A6 */  mtlr      r0
/* 0AE134 800B1134 4E800020 */  blr

glabel fn_800B1138
/* 0AE138 800B1138 7C0802A6 */  mflr      r0
/* 0AE13C 800B113C 90010004 */  stw       r0, 0x4(r1)
/* 0AE140 800B1140 38000000 */  li        r0, 0x0
/* 0AE144 800B1144 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AE148 800B1148 93E10014 */  stw       r31, 0x14(r1)
/* 0AE14C 800B114C 93C10010 */  stw       r30, 0x10(r1)
/* 0AE150 800B1150 906D8C70 */  stw       r3, Callback@sda21(r0)
/* 0AE154 800B1154 3C60CC00 */  lis       r3, 0xcc00
/* 0AE158 800B1158 38836000 */  addi      r4, r3, 0x6000
/* 0AE15C 800B115C 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AE160 800B1160 3C00E000 */  lis       r0, 0xe000
/* 0AE164 800B1164 90036008 */  stw       r0, 0x6008(r3)
/* 0AE168 800B1168 38000001 */  li        r0, 0x1
/* 0AE16C 800B116C 3C608019 */  lis       r3, AlarmForTimeout@ha
/* 0AE170 800B1170 9004001C */  stw       r0, 0x1c(r4)
/* 0AE174 800B1174 3C808000 */  lis       r4, 0x8000
/* 0AE178 800B1178 3BE387C8 */  addi      r31, r3, AlarmForTimeout@l
/* 0AE17C 800B117C 800400F8 */  lwz       r0, 0xf8(r4)
/* 0AE180 800B1180 387F0000 */  addi      r3, r31, 0x0
/* 0AE184 800B1184 5400F0BE */  srwi      r0, r0, 2
/* 0AE188 800B1188 1FC0000A */  mulli     r30, r0, 0xa
/* 0AE18C 800B118C 4BFEAB71 */  bl        OSCreateAlarm
/* 0AE190 800B1190 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0AE194 800B1194 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0AE198 800B1198 387F0000 */  addi      r3, r31, 0x0
/* 0AE19C 800B119C 38DE0000 */  addi      r6, r30, 0x0
/* 0AE1A0 800B11A0 38A00000 */  li        r5, 0x0
/* 0AE1A4 800B11A4 4BFEADB9 */  bl        OSSetAlarm
/* 0AE1A8 800B11A8 8001001C */  lwz       r0, 0x1c(r1)
/* 0AE1AC 800B11AC 38600001 */  li        r3, 0x1
/* 0AE1B0 800B11B0 83E10014 */  lwz       r31, 0x14(r1)
/* 0AE1B4 800B11B4 83C10010 */  lwz       r30, 0x10(r1)
/* 0AE1B8 800B11B8 38210018 */  addi      r1, r1, 0x18
/* 0AE1BC 800B11BC 7C0803A6 */  mtlr      r0
/* 0AE1C0 800B11C0 4E800020 */  blr

glabel fn_800B11C4
/* 0AE1C4 800B11C4 7C0802A6 */  mflr      r0
/* 0AE1C8 800B11C8 38C00020 */  li        r6, 0x20
/* 0AE1CC 800B11CC 90010004 */  stw       r0, 0x4(r1)
/* 0AE1D0 800B11D0 38000000 */  li        r0, 0x0
/* 0AE1D4 800B11D4 3CA08000 */  lis       r5, 0x8000
/* 0AE1D8 800B11D8 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AE1DC 800B11DC 93E10014 */  stw       r31, 0x14(r1)
/* 0AE1E0 800B11E0 93C10010 */  stw       r30, 0x10(r1)
/* 0AE1E4 800B11E4 908D8C70 */  stw       r4, Callback@sda21(r0)
/* 0AE1E8 800B11E8 3C80CC00 */  lis       r4, 0xcc00
/* 0AE1EC 800B11EC 38E46000 */  addi      r7, r4, 0x6000
/* 0AE1F0 800B11F0 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AE1F4 800B11F4 3C001200 */  lis       r0, 0x1200
/* 0AE1F8 800B11F8 90046008 */  stw       r0, 0x6008(r4)
/* 0AE1FC 800B11FC 3C808019 */  lis       r4, AlarmForTimeout@ha
/* 0AE200 800B1200 38000003 */  li        r0, 0x3
/* 0AE204 800B1204 90C70010 */  stw       r6, 0x10(r7)
/* 0AE208 800B1208 3BE487C8 */  addi      r31, r4, AlarmForTimeout@l
/* 0AE20C 800B120C 90670014 */  stw       r3, 0x14(r7)
/* 0AE210 800B1210 387F0000 */  addi      r3, r31, 0x0
/* 0AE214 800B1214 90C70018 */  stw       r6, 0x18(r7)
/* 0AE218 800B1218 9007001C */  stw       r0, 0x1c(r7)
/* 0AE21C 800B121C 800500F8 */  lwz       r0, 0xf8(r5)
/* 0AE220 800B1220 5400F0BE */  srwi      r0, r0, 2
/* 0AE224 800B1224 1FC0000A */  mulli     r30, r0, 0xa
/* 0AE228 800B1228 4BFEAAD5 */  bl        OSCreateAlarm
/* 0AE22C 800B122C 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0AE230 800B1230 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0AE234 800B1234 387F0000 */  addi      r3, r31, 0x0
/* 0AE238 800B1238 38DE0000 */  addi      r6, r30, 0x0
/* 0AE23C 800B123C 38A00000 */  li        r5, 0x0
/* 0AE240 800B1240 4BFEAD1D */  bl        OSSetAlarm
/* 0AE244 800B1244 8001001C */  lwz       r0, 0x1c(r1)
/* 0AE248 800B1248 38600001 */  li        r3, 0x1
/* 0AE24C 800B124C 83E10014 */  lwz       r31, 0x14(r1)
/* 0AE250 800B1250 83C10010 */  lwz       r30, 0x10(r1)
/* 0AE254 800B1254 38210018 */  addi      r1, r1, 0x18
/* 0AE258 800B1258 7C0803A6 */  mtlr      r0
/* 0AE25C 800B125C 4E800020 */  blr

glabel fn_800B1260
/* 0AE260 800B1260 7C0802A6 */  mflr      r0
/* 0AE264 800B1264 90010004 */  stw       r0, 0x4(r1)
/* 0AE268 800B1268 38000000 */  li        r0, 0x0
/* 0AE26C 800B126C 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0AE270 800B1270 93E1001C */  stw       r31, 0x1c(r1)
/* 0AE274 800B1274 93C10018 */  stw       r30, 0x18(r1)
/* 0AE278 800B1278 90CD8C70 */  stw       r6, Callback@sda21(r0)
/* 0AE27C 800B127C 3CC0CC00 */  lis       r6, 0xcc00
/* 0AE280 800B1280 38C66000 */  addi      r6, r6, 0x6000
/* 0AE284 800B1284 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AE288 800B1288 6460E100 */  oris      r0, r3, 0xe100
/* 0AE28C 800B128C 3C608019 */  lis       r3, AlarmForTimeout@ha
/* 0AE290 800B1290 90060008 */  stw       r0, 0x8(r6)
/* 0AE294 800B1294 54A0F0BE */  srwi      r0, r5, 2
/* 0AE298 800B1298 3BE387C8 */  addi      r31, r3, AlarmForTimeout@l
/* 0AE29C 800B129C 9006000C */  stw       r0, 0xc(r6)
/* 0AE2A0 800B12A0 38000001 */  li        r0, 0x1
/* 0AE2A4 800B12A4 387F0000 */  addi      r3, r31, 0x0
/* 0AE2A8 800B12A8 90860010 */  stw       r4, 0x10(r6)
/* 0AE2AC 800B12AC 3C808000 */  lis       r4, 0x8000
/* 0AE2B0 800B12B0 9006001C */  stw       r0, 0x1c(r6)
/* 0AE2B4 800B12B4 800400F8 */  lwz       r0, 0xf8(r4)
/* 0AE2B8 800B12B8 5400F0BE */  srwi      r0, r0, 2
/* 0AE2BC 800B12BC 1FC0000A */  mulli     r30, r0, 0xa
/* 0AE2C0 800B12C0 4BFEAA3D */  bl        OSCreateAlarm
/* 0AE2C4 800B12C4 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0AE2C8 800B12C8 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0AE2CC 800B12CC 387F0000 */  addi      r3, r31, 0x0
/* 0AE2D0 800B12D0 38DE0000 */  addi      r6, r30, 0x0
/* 0AE2D4 800B12D4 38A00000 */  li        r5, 0x0
/* 0AE2D8 800B12D8 4BFEAC85 */  bl        OSSetAlarm
/* 0AE2DC 800B12DC 80010024 */  lwz       r0, 0x24(r1)
/* 0AE2E0 800B12E0 38600001 */  li        r3, 0x1
/* 0AE2E4 800B12E4 83E1001C */  lwz       r31, 0x1c(r1)
/* 0AE2E8 800B12E8 83C10018 */  lwz       r30, 0x18(r1)
/* 0AE2EC 800B12EC 38210020 */  addi      r1, r1, 0x20
/* 0AE2F0 800B12F0 7C0803A6 */  mtlr      r0
/* 0AE2F4 800B12F4 4E800020 */  blr

glabel fn_800B12F8
/* 0AE2F8 800B12F8 7C0802A6 */  mflr      r0
/* 0AE2FC 800B12FC 90010004 */  stw       r0, 0x4(r1)
/* 0AE300 800B1300 38000000 */  li        r0, 0x0
/* 0AE304 800B1304 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AE308 800B1308 93E10014 */  stw       r31, 0x14(r1)
/* 0AE30C 800B130C 93C10010 */  stw       r30, 0x10(r1)
/* 0AE310 800B1310 908D8C70 */  stw       r4, Callback@sda21(r0)
/* 0AE314 800B1314 3C80CC00 */  lis       r4, 0xcc00
/* 0AE318 800B1318 38846000 */  addi      r4, r4, 0x6000
/* 0AE31C 800B131C 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AE320 800B1320 6460E200 */  oris      r0, r3, 0xe200
/* 0AE324 800B1324 3C608019 */  lis       r3, AlarmForTimeout@ha
/* 0AE328 800B1328 90040008 */  stw       r0, 0x8(r4)
/* 0AE32C 800B132C 38000001 */  li        r0, 0x1
/* 0AE330 800B1330 3BE387C8 */  addi      r31, r3, AlarmForTimeout@l
/* 0AE334 800B1334 9004001C */  stw       r0, 0x1c(r4)
/* 0AE338 800B1338 3C808000 */  lis       r4, 0x8000
/* 0AE33C 800B133C 387F0000 */  addi      r3, r31, 0x0
/* 0AE340 800B1340 800400F8 */  lwz       r0, 0xf8(r4)
/* 0AE344 800B1344 5400F0BE */  srwi      r0, r0, 2
/* 0AE348 800B1348 1FC0000A */  mulli     r30, r0, 0xa
/* 0AE34C 800B134C 4BFEA9B1 */  bl        OSCreateAlarm
/* 0AE350 800B1350 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0AE354 800B1354 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0AE358 800B1358 387F0000 */  addi      r3, r31, 0x0
/* 0AE35C 800B135C 38DE0000 */  addi      r6, r30, 0x0
/* 0AE360 800B1360 38A00000 */  li        r5, 0x0
/* 0AE364 800B1364 4BFEABF9 */  bl        OSSetAlarm
/* 0AE368 800B1368 8001001C */  lwz       r0, 0x1c(r1)
/* 0AE36C 800B136C 38600001 */  li        r3, 0x1
/* 0AE370 800B1370 83E10014 */  lwz       r31, 0x14(r1)
/* 0AE374 800B1374 83C10010 */  lwz       r30, 0x10(r1)
/* 0AE378 800B1378 38210018 */  addi      r1, r1, 0x18
/* 0AE37C 800B137C 7C0803A6 */  mtlr      r0
/* 0AE380 800B1380 4E800020 */  blr

glabel fn_800B1384
/* 0AE384 800B1384 7C0802A6 */  mflr      r0
/* 0AE388 800B1388 2C030000 */  cmpwi     r3, 0x0
/* 0AE38C 800B138C 90010004 */  stw       r0, 0x4(r1)
/* 0AE390 800B1390 38000000 */  li        r0, 0x0
/* 0AE394 800B1394 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0AE398 800B1398 93E1001C */  stw       r31, 0x1c(r1)
/* 0AE39C 800B139C 93C10018 */  stw       r30, 0x18(r1)
/* 0AE3A0 800B13A0 90AD8C70 */  stw       r5, Callback@sda21(r0)
/* 0AE3A4 800B13A4 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AE3A8 800B13A8 41820008 */  beq       lbl_800B13B0
/* 0AE3AC 800B13AC 3C000001 */  lis       r0, 0x1
lbl_800B13B0:
/* 0AE3B0 800B13B0 6400E400 */  oris      r0, r0, 0xe400
/* 0AE3B4 800B13B4 3C60CC00 */  lis       r3, 0xcc00
/* 0AE3B8 800B13B8 7C800378 */  or        r0, r4, r0
/* 0AE3BC 800B13BC 38636000 */  addi      r3, r3, 0x6000
/* 0AE3C0 800B13C0 90030008 */  stw       r0, 0x8(r3)
/* 0AE3C4 800B13C4 38000001 */  li        r0, 0x1
/* 0AE3C8 800B13C8 3C808000 */  lis       r4, 0x8000
/* 0AE3CC 800B13CC 9003001C */  stw       r0, 0x1c(r3)
/* 0AE3D0 800B13D0 3C608019 */  lis       r3, AlarmForTimeout@ha
/* 0AE3D4 800B13D4 3BE387C8 */  addi      r31, r3, AlarmForTimeout@l
/* 0AE3D8 800B13D8 800400F8 */  lwz       r0, 0xf8(r4)
/* 0AE3DC 800B13DC 387F0000 */  addi      r3, r31, 0x0
/* 0AE3E0 800B13E0 5400F0BE */  srwi      r0, r0, 2
/* 0AE3E4 800B13E4 1FC0000A */  mulli     r30, r0, 0xa
/* 0AE3E8 800B13E8 4BFEA915 */  bl        OSCreateAlarm
/* 0AE3EC 800B13EC 3C60800B */  lis       r3, AlarmHandlerForTimeout@ha
/* 0AE3F0 800B13F0 38E30AB0 */  addi      r7, r3, AlarmHandlerForTimeout@l
/* 0AE3F4 800B13F4 387F0000 */  addi      r3, r31, 0x0
/* 0AE3F8 800B13F8 38DE0000 */  addi      r6, r30, 0x0
/* 0AE3FC 800B13FC 38A00000 */  li        r5, 0x0
/* 0AE400 800B1400 4BFEAB5D */  bl        OSSetAlarm
/* 0AE404 800B1404 80010024 */  lwz       r0, 0x24(r1)
/* 0AE408 800B1408 38600001 */  li        r3, 0x1
/* 0AE40C 800B140C 83E1001C */  lwz       r31, 0x1c(r1)
/* 0AE410 800B1410 83C10018 */  lwz       r30, 0x18(r1)
/* 0AE414 800B1414 38210020 */  addi      r1, r1, 0x20
/* 0AE418 800B1418 7C0803A6 */  mtlr      r0
/* 0AE41C 800B141C 4E800020 */  blr

glabel DVDLowReset
/* 0AE420 800B1420 7C0802A6 */  mflr      r0
/* 0AE424 800B1424 3C80CC00 */  lis       r4, 0xcc00
/* 0AE428 800B1428 90010004 */  stw       r0, 0x4(r1)
/* 0AE42C 800B142C 38000002 */  li        r0, 0x2
/* 0AE430 800B1430 9421FFE0 */  stwu      r1, -0x20(r1)
/* 0AE434 800B1434 BF410008 */  stmw      r26, 0x8(r1)
/* 0AE438 800B1438 3BE43000 */  addi      r31, r4, 0x3000
/* 0AE43C 800B143C 90046004 */  stw       r0, 0x6004(r4)
/* 0AE440 800B1440 83C43024 */  lwz       r30, 0x3024(r4)
/* 0AE444 800B1444 57C007B8 */  rlwinm    r0, r30, 0, 30, 28
/* 0AE448 800B1448 60000001 */  ori       r0, r0, 0x1
/* 0AE44C 800B144C 941F0024 */  stwu      r0, 0x24(r31)
/* 0AE450 800B1450 4BFF00B1 */  bl        __OSGetSystemTime
/* 0AE454 800B1454 3CA08000 */  lis       r5, 0x8000
/* 0AE458 800B1458 800500F8 */  lwz       r0, 0xf8(r5)
/* 0AE45C 800B145C 3CA0431C */  lis       r5, 0x431c
/* 0AE460 800B1460 38A5DE83 */  subi      r5, r5, 0x217d
/* 0AE464 800B1464 5400F0BE */  srwi      r0, r0, 2
/* 0AE468 800B1468 7C050016 */  mulhwu    r0, r5, r0
/* 0AE46C 800B146C 54008BFE */  srwi      r0, r0, 15
/* 0AE470 800B1470 1C00000C */  mulli     r0, r0, 0xc
/* 0AE474 800B1474 3B440000 */  addi      r26, r4, 0x0
/* 0AE478 800B1478 3B630000 */  addi      r27, r3, 0x0
/* 0AE47C 800B147C 541CE8FE */  srwi      r28, r0, 3
/* 0AE480 800B1480 3BA00000 */  li        r29, 0x0
lbl_800B1484:
/* 0AE484 800B1484 4BFF007D */  bl        __OSGetSystemTime
/* 0AE488 800B1488 7CBA2010 */  subfc     r5, r26, r4
/* 0AE48C 800B148C 7C1B1910 */  subfe     r0, r27, r3
/* 0AE490 800B1490 6C048000 */  xoris     r4, r0, 0x8000
/* 0AE494 800B1494 6FA38000 */  xoris     r3, r29, 0x8000
/* 0AE498 800B1498 7C1C2810 */  subfc     r0, r28, r5
/* 0AE49C 800B149C 7C632110 */  subfe     r3, r3, r4
/* 0AE4A0 800B14A0 7C642110 */  subfe     r3, r4, r4
/* 0AE4A4 800B14A4 7C6300D1 */  neg.      r3, r3
/* 0AE4A8 800B14A8 4082FFDC */  bne       lbl_800B1484
/* 0AE4AC 800B14AC 63C00005 */  ori       r0, r30, 0x5
/* 0AE4B0 800B14B0 901F0000 */  stw       r0, 0x0(r31)
/* 0AE4B4 800B14B4 38000001 */  li        r0, 0x1
/* 0AE4B8 800B14B8 900D8C80 */  stw       r0, ResetOccurred@sda21(r0)
/* 0AE4BC 800B14BC 4BFF0045 */  bl        __OSGetSystemTime
/* 0AE4C0 800B14C0 908D8C7C */  stw       r4, LastResetEnd+0x4@sda21(r0)
/* 0AE4C4 800B14C4 906D8C78 */  stw       r3, LastResetEnd@sda21(r0)
/* 0AE4C8 800B14C8 BB410008 */  lmw       r26, 0x8(r1)
/* 0AE4CC 800B14CC 80010024 */  lwz       r0, 0x24(r1)
/* 0AE4D0 800B14D0 38210020 */  addi      r1, r1, 0x20
/* 0AE4D4 800B14D4 7C0803A6 */  mtlr      r0
/* 0AE4D8 800B14D8 4E800020 */  blr

glabel fn_800B14DC
/* 0AE4DC 800B14DC 38000001 */  li        r0, 0x1
/* 0AE4E0 800B14E0 900D8C68 */  stw       r0, StopAtNextInt@sda21(r0)
/* 0AE4E4 800B14E4 38600001 */  li        r3, 0x1
/* 0AE4E8 800B14E8 900D8C88 */  stw       r0, D_8018BC08@sda21(r0)
/* 0AE4EC 800B14EC 4E800020 */  blr

glabel fn_800B14F0
/* 0AE4F0 800B14F0 3C60CC00 */  lis       r3, 0xcc00
/* 0AE4F4 800B14F4 38000000 */  li        r0, 0x0
/* 0AE4F8 800B14F8 90036004 */  stw       r0, 0x6004(r3)
/* 0AE4FC 800B14FC 806D8C70 */  lwz       r3, Callback@sda21(r0)
/* 0AE500 800B1500 900D8C70 */  stw       r0, Callback@sda21(r0)
/* 0AE504 800B1504 4E800020 */  blr

glabel __DVDLowSetWAType
/* 0AE508 800B1508 7C0802A6 */  mflr      r0
/* 0AE50C 800B150C 90010004 */  stw       r0, 0x4(r1)
/* 0AE510 800B1510 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AE514 800B1514 93E10014 */  stw       r31, 0x14(r1)
/* 0AE518 800B1518 3BE40000 */  addi      r31, r4, 0x0
/* 0AE51C 800B151C 93C10010 */  stw       r30, 0x10(r1)
/* 0AE520 800B1520 3BC30000 */  addi      r30, r3, 0x0
/* 0AE524 800B1524 4BFECD25 */  bl        OSDisableInterrupts
/* 0AE528 800B1528 93CD8C8C */  stw       r30, WorkAroundType@sda21(r0)
/* 0AE52C 800B152C 93ED8C90 */  stw       r31, WorkAroundSeekLocation@sda21(r0)
/* 0AE530 800B1530 4BFECD41 */  bl        OSRestoreInterrupts
/* 0AE534 800B1534 8001001C */  lwz       r0, 0x1c(r1)
/* 0AE538 800B1538 83E10014 */  lwz       r31, 0x14(r1)
/* 0AE53C 800B153C 83C10010 */  lwz       r30, 0x10(r1)
/* 0AE540 800B1540 38210018 */  addi      r1, r1, 0x18
/* 0AE544 800B1544 7C0803A6 */  mtlr      r0
/* 0AE548 800B1548 4E800020 */  blr

# 0x80188760 - 0x80188840
.section .bss, "wa"

CommandList:
	.skip 0x3C

AlarmForWA:
	.skip 0x28

glabel gap_06_801887C4_bss
.hidden gap_06_801887C4_bss
	.skip 0x4

AlarmForTimeout:
	.skip 0x28

glabel gap_06_801887F0_bss
.hidden gap_06_801887F0_bss
	.skip 0x50

# 0x8018B770 - 0x8018B778
.section .sdata, "wa"

glabel D_8018B770
	.long 0x00000001
	.long 0x00000000

# 0x8018BBE8 - 0x8018BC30
.section .sbss, "wa"

StopAtNextInt:
	.skip 0x4

glabel D_8018BBEC
	.skip 0x4

Callback:
	.skip 0x4

glabel D_8018BBF4
	.skip 0x4

LastResetEnd:
	.skip 0x8

ResetOccurred:
	.skip 0x4

WaitingCoverClose:
	.skip 0x4

glabel D_8018BC08
	.skip 0x4

WorkAroundType:
	.skip 0x4

WorkAroundSeekLocation:
	.skip 0x4

glabel gap_08_8018BC14_sbss
.hidden gap_08_8018BC14_sbss
	.skip 0x4

glabel D_8018BC18
	.skip 0x4

glabel D_8018BC1C
	.skip 0x4

glabel D_8018BC20
	.skip 0x4

glabel D_8018BC24
	.skip 0x4

glabel D_8018BC28
	.skip 0x4

NextCommandNumber:
	.skip 0x4
