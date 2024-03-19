# buffer_io.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CD07C - 0x800CD17C

glabel __flush_buffer
/* 0CA07C 800CD07C 7C0802A6 */  mflr      r0
/* 0CA080 800CD080 90010004 */  stw       r0, 0x4(r1)
/* 0CA084 800CD084 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0CA088 800CD088 93E10014 */  stw       r31, 0x14(r1)
/* 0CA08C 800CD08C 7C7F1B78 */  mr        r31, r3
/* 0CA090 800CD090 93C10010 */  stw       r30, 0x10(r1)
/* 0CA094 800CD094 7C9E2378 */  mr        r30, r4
/* 0CA098 800CD098 80630018 */  lwz       r3, 0x18(r3)
/* 0CA09C 800CD09C 801F0020 */  lwz       r0, 0x20(r31)
/* 0CA0A0 800CD0A0 7C030051 */  subf.     r0, r3, r0
/* 0CA0A4 800CD0A4 41820058 */  beq       lbl_800CD0FC
/* 0CA0A8 800CD0A8 901F0024 */  stw       r0, 0x24(r31)
/* 0CA0AC 800CD0AC 881F0005 */  lbz       r0, 0x5(r31)
/* 0CA0B0 800CD0B0 5400EFFF */  extrwi.   r0, r0, 1, 28
/* 0CA0B4 800CD0B4 819F003C */  lwz       r12, 0x3c(r31)
/* 0CA0B8 800CD0B8 38BF0024 */  addi      r5, r31, 0x24
/* 0CA0BC 800CD0BC 807F0000 */  lwz       r3, 0x0(r31)
/* 0CA0C0 800CD0C0 7D8803A6 */  mtlr      r12
/* 0CA0C4 800CD0C4 809F0018 */  lwz       r4, 0x18(r31)
/* 0CA0C8 800CD0C8 80DF0044 */  lwz       r6, 0x44(r31)
/* 0CA0CC 800CD0CC 4E800021 */  blrl
/* 0CA0D0 800CD0D0 281E0000 */  cmplwi    r30, 0x0
/* 0CA0D4 800CD0D4 4182000C */  beq       lbl_800CD0E0
/* 0CA0D8 800CD0D8 801F0024 */  lwz       r0, 0x24(r31)
/* 0CA0DC 800CD0DC 901E0000 */  stw       r0, 0x0(r30)
lbl_800CD0E0:
/* 0CA0E0 800CD0E0 2C030000 */  cmpwi     r3, 0x0
/* 0CA0E4 800CD0E4 41820008 */  beq       lbl_800CD0EC
/* 0CA0E8 800CD0E8 48000048 */  b         lbl_800CD130
lbl_800CD0EC:
/* 0CA0EC 800CD0EC 807F0014 */  lwz       r3, 0x14(r31)
/* 0CA0F0 800CD0F0 801F0024 */  lwz       r0, 0x24(r31)
/* 0CA0F4 800CD0F4 7C030214 */  add       r0, r3, r0
/* 0CA0F8 800CD0F8 901F0014 */  stw       r0, 0x14(r31)
lbl_800CD0FC:
/* 0CA0FC 800CD0FC 801F0018 */  lwz       r0, 0x18(r31)
/* 0CA100 800CD100 38600000 */  li        r3, 0x0
/* 0CA104 800CD104 901F0020 */  stw       r0, 0x20(r31)
/* 0CA108 800CD108 801F001C */  lwz       r0, 0x1c(r31)
/* 0CA10C 800CD10C 901F0024 */  stw       r0, 0x24(r31)
/* 0CA110 800CD110 80BF0014 */  lwz       r5, 0x14(r31)
/* 0CA114 800CD114 809F0028 */  lwz       r4, 0x28(r31)
/* 0CA118 800CD118 801F0024 */  lwz       r0, 0x24(r31)
/* 0CA11C 800CD11C 7CA42038 */  and       r4, r5, r4
/* 0CA120 800CD120 7C040050 */  subf      r0, r4, r0
/* 0CA124 800CD124 901F0024 */  stw       r0, 0x24(r31)
/* 0CA128 800CD128 801F0014 */  lwz       r0, 0x14(r31)
/* 0CA12C 800CD12C 901F0030 */  stw       r0, 0x30(r31)
lbl_800CD130:
/* 0CA130 800CD130 8001001C */  lwz       r0, 0x1c(r1)
/* 0CA134 800CD134 83E10014 */  lwz       r31, 0x14(r1)
/* 0CA138 800CD138 83C10010 */  lwz       r30, 0x10(r1)
/* 0CA13C 800CD13C 7C0803A6 */  mtlr      r0
/* 0CA140 800CD140 38210018 */  addi      r1, r1, 0x18
/* 0CA144 800CD144 4E800020 */  blr

glabel __prep_buffer
/* 0CA148 800CD148 80030018 */  lwz       r0, 0x18(r3)
/* 0CA14C 800CD14C 90030020 */  stw       r0, 0x20(r3)
/* 0CA150 800CD150 8003001C */  lwz       r0, 0x1c(r3)
/* 0CA154 800CD154 90030024 */  stw       r0, 0x24(r3)
/* 0CA158 800CD158 80A30014 */  lwz       r5, 0x14(r3)
/* 0CA15C 800CD15C 80830028 */  lwz       r4, 0x28(r3)
/* 0CA160 800CD160 80030024 */  lwz       r0, 0x24(r3)
/* 0CA164 800CD164 7CA42038 */  and       r4, r5, r4
/* 0CA168 800CD168 7C040050 */  subf      r0, r4, r0
/* 0CA16C 800CD16C 90030024 */  stw       r0, 0x24(r3)
/* 0CA170 800CD170 80030014 */  lwz       r0, 0x14(r3)
/* 0CA174 800CD174 90030030 */  stw       r0, 0x30(r3)
/* 0CA178 800CD178 4E800020 */  blr
