# direct_io.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel fwrite
/* 0C9058 800CE5F8 7C0802A6 */  mflr    r0
/* 0C905C 800CE5FC 90010004 */  stw     r0, 4(r1)
/* 0C9060 800CE600 9421FFB8 */  stwu    r1, -0x48(r1)
/* 0C9064 800CE604 BF21002C */  stmw    r25, 0x2c(r1)
/* 0C9068 800CE608 3B440000 */  addi    r26, r4, 0
/* 0C906C 800CE60C 3B660000 */  addi    r27, r6, 0
/* 0C9070 800CE610 3B830000 */  addi    r28, r3, 0
/* 0C9074 800CE614 3B250000 */  addi    r25, r5, 0
/* 0C9078 800CE618 387B0000 */  addi    r3, r27, 0
/* 0C907C 800CE61C 38800000 */  li      r4, 0
/* 0C9080 800CE620 480029E9 */  bl      fwide
/* 0C9084 800CE624 2C030000 */  cmpwi   r3, 0
/* 0C9088 800CE628 40820010 */  bne     lbl_800CE638
/* 0C908C 800CE62C 387B0000 */  addi    r3, r27, 0
/* 0C9090 800CE630 3880FFFF */  li      r4, -1
/* 0C9094 800CE634 480029D5 */  bl      fwide
lbl_800CE638:
/* 0C9098 800CE638 7C1AC9D7 */  mullw.  r0, r26, r25
/* 0C909C 800CE63C 7C1D0378 */  mr      r29, r0
/* 0C90A0 800CE640 4182001C */  beq     lbl_800CE65C
/* 0C90A4 800CE644 881B000A */  lbz     r0, 0xa(r27)
/* 0C90A8 800CE648 28000000 */  cmplwi  r0, 0
/* 0C90AC 800CE64C 40820010 */  bne     lbl_800CE65C
/* 0C90B0 800CE650 A01B0004 */  lhz     r0, 4(r27)
/* 0C90B4 800CE654 5400D77F */  rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 0C90B8 800CE658 4082000C */  bne     lbl_800CE664
lbl_800CE65C:
/* 0C90BC 800CE65C 38600000 */  li      r3, 0
/* 0C90C0 800CE660 48000260 */  b       lbl_800CE8C0
lbl_800CE664:
/* 0C90C4 800CE664 2C000002 */  cmpwi   r0, 2
/* 0C90C8 800CE668 40820008 */  bne     lbl_800CE670
/* 0C90CC 800CE66C 480006CD */  bl      __stdio_atexit
lbl_800CE670:
/* 0C90D0 800CE670 881B0005 */  lbz     r0, 5(r27)
/* 0C90D4 800CE674 3BE00001 */  li      r31, 1
/* 0C90D8 800CE678 387F0000 */  addi    r3, r31, 0
/* 0C90DC 800CE67C 5400EFFF */  rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 0C90E0 800CE680 389F0000 */  addi    r4, r31, 0
/* 0C90E4 800CE684 41820018 */  beq     lbl_800CE69C
/* 0C90E8 800CE688 A01B0004 */  lhz     r0, 4(r27)
/* 0C90EC 800CE68C 5400D77E */  rlwinm  r0, r0, 0x1a, 0x1d, 0x1f
/* 0C90F0 800CE690 2C000003 */  cmpwi   r0, 3
/* 0C90F4 800CE694 41820008 */  beq     lbl_800CE69C
/* 0C90F8 800CE698 38800000 */  li      r4, 0
lbl_800CE69C:
/* 0C90FC 800CE69C 2C040000 */  cmpwi   r4, 0
/* 0C9100 800CE6A0 40820018 */  bne     lbl_800CE6B8
/* 0C9104 800CE6A4 881B0004 */  lbz     r0, 4(r27)
/* 0C9108 800CE6A8 5400FFBE */  rlwinm  r0, r0, 0x1f, 0x1e, 0x1f
/* 0C910C 800CE6AC 28000002 */  cmplwi  r0, 2
/* 0C9110 800CE6B0 41820008 */  beq     lbl_800CE6B8
/* 0C9114 800CE6B4 38600000 */  li      r3, 0
lbl_800CE6B8:
/* 0C9118 800CE6B8 2C030000 */  cmpwi   r3, 0
/* 0C911C 800CE6BC 40820018 */  bne     lbl_800CE6D4
/* 0C9120 800CE6C0 881B0004 */  lbz     r0, 4(r27)
/* 0C9124 800CE6C4 5400FFBE */  rlwinm  r0, r0, 0x1f, 0x1e, 0x1f
/* 0C9128 800CE6C8 28000001 */  cmplwi  r0, 1
/* 0C912C 800CE6CC 41820008 */  beq     lbl_800CE6D4
/* 0C9130 800CE6D0 3BE00000 */  li      r31, 0
lbl_800CE6D4:
/* 0C9134 800CE6D4 887B0008 */  lbz     r3, 8(r27)
/* 0C9138 800CE6D8 5460DF7F */  rlwinm. r0, r3, 0x1b, 0x1d, 0x1f
/* 0C913C 800CE6DC 40820024 */  bne     lbl_800CE700
/* 0C9140 800CE6E0 881B0004 */  lbz     r0, 4(r27)
/* 0C9144 800CE6E4 5400EFBD */  rlwinm. r0, r0, 0x1d, 0x1e, 0x1e
/* 0C9148 800CE6E8 41820018 */  beq     lbl_800CE700
/* 0C914C 800CE6EC 38000001 */  li      r0, 1
/* 0C9150 800CE6F0 50032E34 */  rlwimi  r3, r0, 5, 0x18, 0x1a
/* 0C9154 800CE6F4 987B0008 */  stb     r3, 8(r27)
/* 0C9158 800CE6F8 7F63DB78 */  mr      r3, r27
/* 0C915C 800CE6FC 4BFFFE75 */  bl      __prep_buffer
lbl_800CE700:
/* 0C9160 800CE700 881B0008 */  lbz     r0, 8(r27)
/* 0C9164 800CE704 5400DF7E */  rlwinm  r0, r0, 0x1b, 0x1d, 0x1f
/* 0C9168 800CE708 28000001 */  cmplwi  r0, 1
/* 0C916C 800CE70C 4182001C */  beq     lbl_800CE728
/* 0C9170 800CE710 38000001 */  li      r0, 1
/* 0C9174 800CE714 981B000A */  stb     r0, 0xa(r27)
/* 0C9178 800CE718 38000000 */  li      r0, 0
/* 0C917C 800CE71C 38600000 */  li      r3, 0
/* 0C9180 800CE720 901B0024 */  stw     r0, 0x24(r27)
/* 0C9184 800CE724 4800019C */  b       lbl_800CE8C0
lbl_800CE728:
/* 0C9188 800CE728 281D0000 */  cmplwi  r29, 0
/* 0C918C 800CE72C 3BDC0000 */  addi    r30, r28, 0
/* 0C9190 800CE730 3B800000 */  li      r28, 0
/* 0C9194 800CE734 418200FC */  beq     lbl_800CE830
/* 0C9198 800CE738 809B0020 */  lwz     r4, 0x20(r27)
/* 0C919C 800CE73C 807B0018 */  lwz     r3, 0x18(r27)
/* 0C91A0 800CE740 7C041840 */  cmplw   r4, r3
/* 0C91A4 800CE744 4082000C */  bne     lbl_800CE750
/* 0C91A8 800CE748 2C1F0000 */  cmpwi   r31, 0
/* 0C91AC 800CE74C 418200E4 */  beq     lbl_800CE830
lbl_800CE750:
/* 0C91B0 800CE750 801B001C */  lwz     r0, 0x1c(r27)
/* 0C91B4 800CE754 7C632050 */  subf    r3, r3, r4
/* 0C91B8 800CE758 7C030050 */  subf    r0, r3, r0
/* 0C91BC 800CE75C 901B0024 */  stw     r0, 0x24(r27)
lbl_800CE760:
/* 0C91C0 800CE760 801B0024 */  lwz     r0, 0x24(r27)
/* 0C91C4 800CE764 90010020 */  stw     r0, 0x20(r1)
/* 0C91C8 800CE768 80010020 */  lwz     r0, 0x20(r1)
/* 0C91CC 800CE76C 7C00E840 */  cmplw   r0, r29
/* 0C91D0 800CE770 40810008 */  ble     lbl_800CE778
/* 0C91D4 800CE774 93A10020 */  stw     r29, 0x20(r1)
lbl_800CE778:
/* 0C91D8 800CE778 80A10020 */  lwz     r5, 0x20(r1)
/* 0C91DC 800CE77C 28050000 */  cmplwi  r5, 0
/* 0C91E0 800CE780 4182003C */  beq     lbl_800CE7BC
/* 0C91E4 800CE784 807B0020 */  lwz     r3, 0x20(r27)
/* 0C91E8 800CE788 7FC4F378 */  mr      r4, r30
/* 0C91EC 800CE78C 4BF36D39 */  bl      memcpy
/* 0C91F0 800CE790 80610020 */  lwz     r3, 0x20(r1)
/* 0C91F4 800CE794 801B0020 */  lwz     r0, 0x20(r27)
/* 0C91F8 800CE798 7FDE1A14 */  add     r30, r30, r3
/* 0C91FC 800CE79C 7C001A14 */  add     r0, r0, r3
/* 0C9200 800CE7A0 901B0020 */  stw     r0, 0x20(r27)
/* 0C9204 800CE7A4 7F9C1A14 */  add     r28, r28, r3
/* 0C9208 800CE7A8 7FA3E850 */  subf    r29, r3, r29
/* 0C920C 800CE7AC 80610020 */  lwz     r3, 0x20(r1)
/* 0C9210 800CE7B0 801B0024 */  lwz     r0, 0x24(r27)
/* 0C9214 800CE7B4 7C030050 */  subf    r0, r3, r0
/* 0C9218 800CE7B8 901B0024 */  stw     r0, 0x24(r27)
lbl_800CE7BC:
/* 0C921C 800CE7BC 807B0024 */  lwz     r3, 0x24(r27)
/* 0C9220 800CE7C0 28030000 */  cmplwi  r3, 0
/* 0C9224 800CE7C4 4082001C */  bne     lbl_800CE7E0
/* 0C9228 800CE7C8 A01B0004 */  lhz     r0, 4(r27)
/* 0C922C 800CE7CC 5400D77E */  rlwinm  r0, r0, 0x1a, 0x1d, 0x1f
/* 0C9230 800CE7D0 2C000003 */  cmpwi   r0, 3
/* 0C9234 800CE7D4 4082000C */  bne     lbl_800CE7E0
/* 0C9238 800CE7D8 7F9CEA14 */  add     r28, r28, r29
/* 0C923C 800CE7DC 48000054 */  b       lbl_800CE830
lbl_800CE7E0:
/* 0C9240 800CE7E0 28030000 */  cmplwi  r3, 0
/* 0C9244 800CE7E4 41820010 */  beq     lbl_800CE7F4
/* 0C9248 800CE7E8 881B0004 */  lbz     r0, 4(r27)
/* 0C924C 800CE7EC 5400FFBF */  rlwinm. r0, r0, 0x1f, 0x1e, 0x1f
/* 0C9250 800CE7F0 40820030 */  bne     lbl_800CE820
lbl_800CE7F4:
/* 0C9254 800CE7F4 387B0000 */  addi    r3, r27, 0
/* 0C9258 800CE7F8 38800000 */  li      r4, 0
/* 0C925C 800CE7FC 4BFFFCA9 */  bl      __flush_buffer
/* 0C9260 800CE800 2C030000 */  cmpwi   r3, 0
/* 0C9264 800CE804 4182001C */  beq     lbl_800CE820
/* 0C9268 800CE808 38000001 */  li      r0, 1
/* 0C926C 800CE80C 981B000A */  stb     r0, 0xa(r27)
/* 0C9270 800CE810 38000000 */  li      r0, 0
/* 0C9274 800CE814 3BA00000 */  li      r29, 0
/* 0C9278 800CE818 901B0024 */  stw     r0, 0x24(r27)
/* 0C927C 800CE81C 48000014 */  b       lbl_800CE830
lbl_800CE820:
/* 0C9280 800CE820 281D0000 */  cmplwi  r29, 0
/* 0C9284 800CE824 4182000C */  beq     lbl_800CE830
/* 0C9288 800CE828 2C1F0000 */  cmpwi   r31, 0
/* 0C928C 800CE82C 4082FF34 */  bne     lbl_800CE760
lbl_800CE830:
/* 0C9290 800CE830 281D0000 */  cmplwi  r29, 0
/* 0C9294 800CE834 41820068 */  beq     lbl_800CE89C
/* 0C9298 800CE838 2C1F0000 */  cmpwi   r31, 0
/* 0C929C 800CE83C 40820060 */  bne     lbl_800CE89C
/* 0C92A0 800CE840 83FB0018 */  lwz     r31, 0x18(r27)
/* 0C92A4 800CE844 7C1EEA14 */  add     r0, r30, r29
/* 0C92A8 800CE848 833B001C */  lwz     r25, 0x1c(r27)
/* 0C92AC 800CE84C 387B0000 */  addi    r3, r27, 0
/* 0C92B0 800CE850 38810020 */  addi    r4, r1, 0x20
/* 0C92B4 800CE854 93DB0018 */  stw     r30, 0x18(r27)
/* 0C92B8 800CE858 93BB001C */  stw     r29, 0x1c(r27)
/* 0C92BC 800CE85C 901B0020 */  stw     r0, 0x20(r27)
/* 0C92C0 800CE860 4BFFFC45 */  bl      __flush_buffer
/* 0C92C4 800CE864 2C030000 */  cmpwi   r3, 0
/* 0C92C8 800CE868 41820014 */  beq     lbl_800CE87C
/* 0C92CC 800CE86C 38000001 */  li      r0, 1
/* 0C92D0 800CE870 981B000A */  stb     r0, 0xa(r27)
/* 0C92D4 800CE874 38000000 */  li      r0, 0
/* 0C92D8 800CE878 901B0024 */  stw     r0, 0x24(r27)
lbl_800CE87C:
/* 0C92DC 800CE87C 80010020 */  lwz     r0, 0x20(r1)
/* 0C92E0 800CE880 7F63DB78 */  mr      r3, r27
/* 0C92E4 800CE884 93FB0018 */  stw     r31, 0x18(r27)
/* 0C92E8 800CE888 7F9C0214 */  add     r28, r28, r0
/* 0C92EC 800CE88C 933B001C */  stw     r25, 0x1c(r27)
/* 0C92F0 800CE890 4BFFFCE1 */  bl      __prep_buffer
/* 0C92F4 800CE894 38000000 */  li      r0, 0
/* 0C92F8 800CE898 901B0024 */  stw     r0, 0x24(r27)
lbl_800CE89C:
/* 0C92FC 800CE89C 881B0004 */  lbz     r0, 4(r27)
/* 0C9300 800CE8A0 5400FFBE */  rlwinm  r0, r0, 0x1f, 0x1e, 0x1f
/* 0C9304 800CE8A4 28000002 */  cmplwi  r0, 2
/* 0C9308 800CE8A8 4182000C */  beq     lbl_800CE8B4
/* 0C930C 800CE8AC 38000000 */  li      r0, 0
/* 0C9310 800CE8B0 901B0024 */  stw     r0, 0x24(r27)
lbl_800CE8B4:
/* 0C9314 800CE8B4 381AFFFF */  addi    r0, r26, -1
/* 0C9318 800CE8B8 7C1C0214 */  add     r0, r28, r0
/* 0C931C 800CE8BC 7C60D396 */  divwu   r3, r0, r26
lbl_800CE8C0:
/* 0C9320 800CE8C0 BB21002C */  lmw     r25, 0x2c(r1)
/* 0C9324 800CE8C4 8001004C */  lwz     r0, 0x4c(r1)
/* 0C9328 800CE8C8 38210048 */  addi    r1, r1, 0x48
/* 0C932C 800CE8CC 7C0803A6 */  mtlr    r0
/* 0C9330 800CE8D0 4E800020 */  blr     