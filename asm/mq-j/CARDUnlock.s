# CARDUnlock.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BAD94 - 0x800BBFF4

glabel bitrev
/* 0B7D94 800BAD94 38000008 */  li        r0, 0x8
/* 0B7D98 800BAD98 7C0903A6 */  mtctr     r0
/* 0B7D9C 800BAD9C 54660FFE */  srwi      r6, r3, 31
/* 0B7DA0 800BADA0 39200000 */  li        r9, 0x0
/* 0B7DA4 800BADA4 39400001 */  li        r10, 0x1
/* 0B7DA8 800BADA8 38E00000 */  li        r7, 0x0
/* 0B7DAC 800BADAC 39000000 */  li        r8, 0x0
/* 0B7DB0 800BADB0 38A00001 */  li        r5, 0x1
lbl_800BADB4:
/* 0B7DB4 800BADB4 2808000F */  cmplwi    r8, 0xf
/* 0B7DB8 800BADB8 4081002C */  ble       lbl_800BADE4
/* 0B7DBC 800BADBC 2808001F */  cmplwi    r8, 0x1f
/* 0B7DC0 800BADC0 4082000C */  bne       lbl_800BADCC
/* 0B7DC4 800BADC4 7CE73378 */  or        r7, r7, r6
/* 0B7DC8 800BADC8 48000038 */  b         lbl_800BAE00
lbl_800BADCC:
/* 0B7DCC 800BADCC 7CA04030 */  slw       r0, r5, r8
/* 0B7DD0 800BADD0 7C600038 */  and       r0, r3, r0
/* 0B7DD4 800BADD4 7C005430 */  srw       r0, r0, r10
/* 0B7DD8 800BADD8 7CE70378 */  or        r7, r7, r0
/* 0B7DDC 800BADDC 394A0002 */  addi      r10, r10, 0x2
/* 0B7DE0 800BADE0 48000020 */  b         lbl_800BAE00
lbl_800BADE4:
/* 0B7DE4 800BADE4 7CA44030 */  slw       r4, r5, r8
/* 0B7DE8 800BADE8 2008001F */  subfic    r0, r8, 0x1f
/* 0B7DEC 800BADEC 7C090050 */  subf      r0, r9, r0
/* 0B7DF0 800BADF0 7C642038 */  and       r4, r3, r4
/* 0B7DF4 800BADF4 7C800030 */  slw       r0, r4, r0
/* 0B7DF8 800BADF8 7CE70378 */  or        r7, r7, r0
/* 0B7DFC 800BADFC 39290001 */  addi      r9, r9, 0x1
lbl_800BAE00:
/* 0B7E00 800BAE00 39080001 */  addi      r8, r8, 0x1
/* 0B7E04 800BAE04 2808000F */  cmplwi    r8, 0xf
/* 0B7E08 800BAE08 4081002C */  ble       lbl_800BAE34
/* 0B7E0C 800BAE0C 2808001F */  cmplwi    r8, 0x1f
/* 0B7E10 800BAE10 4082000C */  bne       lbl_800BAE1C
/* 0B7E14 800BAE14 7CE73378 */  or        r7, r7, r6
/* 0B7E18 800BAE18 48000038 */  b         lbl_800BAE50
lbl_800BAE1C:
/* 0B7E1C 800BAE1C 7CA04030 */  slw       r0, r5, r8
/* 0B7E20 800BAE20 7C600038 */  and       r0, r3, r0
/* 0B7E24 800BAE24 7C005430 */  srw       r0, r0, r10
/* 0B7E28 800BAE28 7CE70378 */  or        r7, r7, r0
/* 0B7E2C 800BAE2C 394A0002 */  addi      r10, r10, 0x2
/* 0B7E30 800BAE30 48000020 */  b         lbl_800BAE50
lbl_800BAE34:
/* 0B7E34 800BAE34 7CA44030 */  slw       r4, r5, r8
/* 0B7E38 800BAE38 2008001F */  subfic    r0, r8, 0x1f
/* 0B7E3C 800BAE3C 7C090050 */  subf      r0, r9, r0
/* 0B7E40 800BAE40 7C642038 */  and       r4, r3, r4
/* 0B7E44 800BAE44 7C800030 */  slw       r0, r4, r0
/* 0B7E48 800BAE48 7CE70378 */  or        r7, r7, r0
/* 0B7E4C 800BAE4C 39290001 */  addi      r9, r9, 0x1
lbl_800BAE50:
/* 0B7E50 800BAE50 39080001 */  addi      r8, r8, 0x1
/* 0B7E54 800BAE54 2808000F */  cmplwi    r8, 0xf
/* 0B7E58 800BAE58 4081002C */  ble       lbl_800BAE84
/* 0B7E5C 800BAE5C 2808001F */  cmplwi    r8, 0x1f
/* 0B7E60 800BAE60 4082000C */  bne       lbl_800BAE6C
/* 0B7E64 800BAE64 7CE73378 */  or        r7, r7, r6
/* 0B7E68 800BAE68 48000038 */  b         lbl_800BAEA0
lbl_800BAE6C:
/* 0B7E6C 800BAE6C 7CA04030 */  slw       r0, r5, r8
/* 0B7E70 800BAE70 7C600038 */  and       r0, r3, r0
/* 0B7E74 800BAE74 7C005430 */  srw       r0, r0, r10
/* 0B7E78 800BAE78 7CE70378 */  or        r7, r7, r0
/* 0B7E7C 800BAE7C 394A0002 */  addi      r10, r10, 0x2
/* 0B7E80 800BAE80 48000020 */  b         lbl_800BAEA0
lbl_800BAE84:
/* 0B7E84 800BAE84 7CA44030 */  slw       r4, r5, r8
/* 0B7E88 800BAE88 2008001F */  subfic    r0, r8, 0x1f
/* 0B7E8C 800BAE8C 7C090050 */  subf      r0, r9, r0
/* 0B7E90 800BAE90 7C642038 */  and       r4, r3, r4
/* 0B7E94 800BAE94 7C800030 */  slw       r0, r4, r0
/* 0B7E98 800BAE98 7CE70378 */  or        r7, r7, r0
/* 0B7E9C 800BAE9C 39290001 */  addi      r9, r9, 0x1
lbl_800BAEA0:
/* 0B7EA0 800BAEA0 39080001 */  addi      r8, r8, 0x1
/* 0B7EA4 800BAEA4 2808000F */  cmplwi    r8, 0xf
/* 0B7EA8 800BAEA8 4081002C */  ble       lbl_800BAED4
/* 0B7EAC 800BAEAC 2808001F */  cmplwi    r8, 0x1f
/* 0B7EB0 800BAEB0 4082000C */  bne       lbl_800BAEBC
/* 0B7EB4 800BAEB4 7CE73378 */  or        r7, r7, r6
/* 0B7EB8 800BAEB8 48000038 */  b         lbl_800BAEF0
lbl_800BAEBC:
/* 0B7EBC 800BAEBC 7CA04030 */  slw       r0, r5, r8
/* 0B7EC0 800BAEC0 7C600038 */  and       r0, r3, r0
/* 0B7EC4 800BAEC4 7C005430 */  srw       r0, r0, r10
/* 0B7EC8 800BAEC8 7CE70378 */  or        r7, r7, r0
/* 0B7ECC 800BAECC 394A0002 */  addi      r10, r10, 0x2
/* 0B7ED0 800BAED0 48000020 */  b         lbl_800BAEF0
lbl_800BAED4:
/* 0B7ED4 800BAED4 7CA44030 */  slw       r4, r5, r8
/* 0B7ED8 800BAED8 2008001F */  subfic    r0, r8, 0x1f
/* 0B7EDC 800BAEDC 7C090050 */  subf      r0, r9, r0
/* 0B7EE0 800BAEE0 7C642038 */  and       r4, r3, r4
/* 0B7EE4 800BAEE4 7C800030 */  slw       r0, r4, r0
/* 0B7EE8 800BAEE8 7CE70378 */  or        r7, r7, r0
/* 0B7EEC 800BAEEC 39290001 */  addi      r9, r9, 0x1
lbl_800BAEF0:
/* 0B7EF0 800BAEF0 39080001 */  addi      r8, r8, 0x1
/* 0B7EF4 800BAEF4 4200FEC0 */  bdnz      lbl_800BADB4
/* 0B7EF8 800BAEF8 7CE33B78 */  mr        r3, r7
/* 0B7EFC 800BAEFC 4E800020 */  blr

glabel ReadArrayUnlock
/* 0B7F00 800BAF00 7C0802A6 */  mflr      r0
/* 0B7F04 800BAF04 90010004 */  stw       r0, 0x4(r1)
/* 0B7F08 800BAF08 9421FFC0 */  stwu      r1, -0x40(r1)
/* 0B7F0C 800BAF0C BF410028 */  stmw      r26, 0x28(r1)
/* 0B7F10 800BAF10 3BA30000 */  addi      r29, r3, 0x0
/* 0B7F14 800BAF14 3C608019 */  lis       r3, D_80188A70@ha
/* 0B7F18 800BAF18 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B7F1C 800BAF1C 1D1D0110 */  mulli     r8, r29, 0x110
/* 0B7F20 800BAF20 3B440000 */  addi      r26, r4, 0x0
/* 0B7F24 800BAF24 3BC50000 */  addi      r30, r5, 0x0
/* 0B7F28 800BAF28 3BE60000 */  addi      r31, r6, 0x0
/* 0B7F2C 800BAF2C 3B670000 */  addi      r27, r7, 0x0
/* 0B7F30 800BAF30 387D0000 */  addi      r3, r29, 0x0
/* 0B7F34 800BAF34 7F804214 */  add       r28, r0, r8
/* 0B7F38 800BAF38 38800000 */  li        r4, 0x0
/* 0B7F3C 800BAF3C 38A00004 */  li        r5, 0x4
/* 0B7F40 800BAF40 4BFE76A1 */  bl        EXISelect
/* 0B7F44 800BAF44 2C030000 */  cmpwi     r3, 0x0
/* 0B7F48 800BAF48 4082000C */  bne       lbl_800BAF54
/* 0B7F4C 800BAF4C 3860FFFD */  li        r3, -0x3
/* 0B7F50 800BAF50 480000E0 */  b         lbl_800BB030
lbl_800BAF54:
/* 0B7F54 800BAF54 575A0026 */  clrrwi    r26, r26, 12
/* 0B7F58 800BAF58 3861001C */  addi      r3, r1, 0x1c
/* 0B7F5C 800BAF5C 38800000 */  li        r4, 0x0
/* 0B7F60 800BAF60 38A00005 */  li        r5, 0x5
/* 0B7F64 800BAF64 4BF4A3BD */  bl        memset
/* 0B7F68 800BAF68 38000052 */  li        r0, 0x52
/* 0B7F6C 800BAF6C 2C1B0000 */  cmpwi     r27, 0x0
/* 0B7F70 800BAF70 9801001C */  stb       r0, 0x1c(r1)
/* 0B7F74 800BAF74 40820028 */  bne       lbl_800BAF9C
/* 0B7F78 800BAF78 57401FBE */  extrwi    r0, r26, 2, 1
/* 0B7F7C 800BAF7C 9801001D */  stb       r0, 0x1d(r1)
/* 0B7F80 800BAF80 57405E3E */  extrwi    r0, r26, 8, 3
/* 0B7F84 800BAF84 57436FBE */  extrwi    r3, r26, 2, 11
/* 0B7F88 800BAF88 9801001E */  stb       r0, 0x1e(r1)
/* 0B7F8C 800BAF8C 5740A67E */  extrwi    r0, r26, 7, 13
/* 0B7F90 800BAF90 9861001F */  stb       r3, 0x1f(r1)
/* 0B7F94 800BAF94 98010020 */  stb       r0, 0x20(r1)
/* 0B7F98 800BAF98 48000014 */  b         lbl_800BAFAC
lbl_800BAF9C:
/* 0B7F9C 800BAF9C 5740463E */  srwi      r0, r26, 24
/* 0B7FA0 800BAFA0 9801001D */  stb       r0, 0x1d(r1)
/* 0B7FA4 800BAFA4 5740863E */  extrwi    r0, r26, 8, 8
/* 0B7FA8 800BAFA8 9801001E */  stb       r0, 0x1e(r1)
lbl_800BAFAC:
/* 0B7FAC 800BAFAC 387D0000 */  addi      r3, r29, 0x0
/* 0B7FB0 800BAFB0 3881001C */  addi      r4, r1, 0x1c
/* 0B7FB4 800BAFB4 38A00005 */  li        r5, 0x5
/* 0B7FB8 800BAFB8 38C00001 */  li        r6, 0x1
/* 0B7FBC 800BAFBC 4BFE6D2D */  bl        EXIImmEx
/* 0B7FC0 800BAFC0 809C0080 */  lwz       r4, 0x80(r28)
/* 0B7FC4 800BAFC4 7C600034 */  cntlzw    r0, r3
/* 0B7FC8 800BAFC8 80BC0014 */  lwz       r5, 0x14(r28)
/* 0B7FCC 800BAFCC 387D0000 */  addi      r3, r29, 0x0
/* 0B7FD0 800BAFD0 541CD97E */  srwi      r28, r0, 5
/* 0B7FD4 800BAFD4 38840200 */  addi      r4, r4, 0x200
/* 0B7FD8 800BAFD8 38C00001 */  li        r6, 0x1
/* 0B7FDC 800BAFDC 4BFE6D0D */  bl        EXIImmEx
/* 0B7FE0 800BAFE0 7C600034 */  cntlzw    r0, r3
/* 0B7FE4 800BAFE4 5400D97E */  srwi      r0, r0, 5
/* 0B7FE8 800BAFE8 387D0000 */  addi      r3, r29, 0x0
/* 0B7FEC 800BAFEC 389E0000 */  addi      r4, r30, 0x0
/* 0B7FF0 800BAFF0 38BF0000 */  addi      r5, r31, 0x0
/* 0B7FF4 800BAFF4 7F9C0378 */  or        r28, r28, r0
/* 0B7FF8 800BAFF8 38C00000 */  li        r6, 0x0
/* 0B7FFC 800BAFFC 4BFE6CED */  bl        EXIImmEx
/* 0B8000 800BB000 7C600034 */  cntlzw    r0, r3
/* 0B8004 800BB004 5400D97E */  srwi      r0, r0, 5
/* 0B8008 800BB008 387D0000 */  addi      r3, r29, 0x0
/* 0B800C 800BB00C 7F9C0378 */  or        r28, r28, r0
/* 0B8010 800BB010 4BFE76FD */  bl        EXIDeselect
/* 0B8014 800BB014 7C600034 */  cntlzw    r0, r3
/* 0B8018 800BB018 5400D97E */  srwi      r0, r0, 5
/* 0B801C 800BB01C 7F9C0379 */  or.       r28, r28, r0
/* 0B8020 800BB020 4182000C */  beq       lbl_800BB02C
/* 0B8024 800BB024 3860FFFD */  li        r3, -0x3
/* 0B8028 800BB028 48000008 */  b         lbl_800BB030
lbl_800BB02C:
/* 0B802C 800BB02C 38600000 */  li        r3, 0x0
lbl_800BB030:
/* 0B8030 800BB030 BB410028 */  lmw       r26, 0x28(r1)
/* 0B8034 800BB034 80010044 */  lwz       r0, 0x44(r1)
/* 0B8038 800BB038 38210040 */  addi      r1, r1, 0x40
/* 0B803C 800BB03C 7C0803A6 */  mtlr      r0
/* 0B8040 800BB040 4E800020 */  blr

glabel DummyLen
/* 0B8044 800BB044 7C0802A6 */  mflr      r0
/* 0B8048 800BB048 90010004 */  stw       r0, 0x4(r1)
/* 0B804C 800BB04C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0B8050 800BB050 93E10024 */  stw       r31, 0x24(r1)
/* 0B8054 800BB054 93C10020 */  stw       r30, 0x20(r1)
/* 0B8058 800BB058 3BC00001 */  li        r30, 0x1
/* 0B805C 800BB05C 93A1001C */  stw       r29, 0x1c(r1)
/* 0B8060 800BB060 3BA00000 */  li        r29, 0x0
/* 0B8064 800BB064 4BFE6495 */  bl        OSGetTick
/* 0B8068 800BB068 906D8858 */  stw       r3, D_8018B7D8@sda21(r0)
/* 0B806C 800BB06C 3C6041C6 */  lis       r3, 0x41c6
/* 0B8070 800BB070 3BE34E6D */  addi      r31, r3, 0x4e6d
/* 0B8074 800BB074 800D8858 */  lwz       r0, D_8018B7D8@sda21(r0)
/* 0B8078 800BB078 7C60F9D6 */  mullw     r3, r0, r31
/* 0B807C 800BB07C 38033039 */  addi      r0, r3, 0x3039
/* 0B8080 800BB080 900D8858 */  stw       r0, D_8018B7D8@sda21(r0)
/* 0B8084 800BB084 800D8858 */  lwz       r0, D_8018B7D8@sda21(r0)
/* 0B8088 800BB088 540386FE */  extrwi    r3, r0, 5, 11
/* 0B808C 800BB08C 38630001 */  addi      r3, r3, 0x1
/* 0B8090 800BB090 48000040 */  b         lbl_800BB0D0
lbl_800BB094:
/* 0B8094 800BB094 4BFE6465 */  bl        OSGetTick
/* 0B8098 800BB098 7C60F030 */  slw       r0, r3, r30
/* 0B809C 800BB09C 3BDE0001 */  addi      r30, r30, 0x1
/* 0B80A0 800BB0A0 281E0010 */  cmplwi    r30, 0x10
/* 0B80A4 800BB0A4 40810008 */  ble       lbl_800BB0AC
/* 0B80A8 800BB0A8 3BC00001 */  li        r30, 0x1
lbl_800BB0AC:
/* 0B80AC 800BB0AC 900D8858 */  stw       r0, D_8018B7D8@sda21(r0)
/* 0B80B0 800BB0B0 3BBD0001 */  addi      r29, r29, 0x1
/* 0B80B4 800BB0B4 800D8858 */  lwz       r0, D_8018B7D8@sda21(r0)
/* 0B80B8 800BB0B8 7C60F9D6 */  mullw     r3, r0, r31
/* 0B80BC 800BB0BC 38033039 */  addi      r0, r3, 0x3039
/* 0B80C0 800BB0C0 900D8858 */  stw       r0, D_8018B7D8@sda21(r0)
/* 0B80C4 800BB0C4 800D8858 */  lwz       r0, D_8018B7D8@sda21(r0)
/* 0B80C8 800BB0C8 540386FE */  extrwi    r3, r0, 5, 11
/* 0B80CC 800BB0CC 38630001 */  addi      r3, r3, 0x1
lbl_800BB0D0:
/* 0B80D0 800BB0D0 2C030004 */  cmpwi     r3, 0x4
/* 0B80D4 800BB0D4 4080000C */  bge       lbl_800BB0E0
/* 0B80D8 800BB0D8 281D000A */  cmplwi    r29, 0xa
/* 0B80DC 800BB0DC 4180FFB8 */  blt       lbl_800BB094
lbl_800BB0E0:
/* 0B80E0 800BB0E0 2C030004 */  cmpwi     r3, 0x4
/* 0B80E4 800BB0E4 40800008 */  bge       lbl_800BB0EC
/* 0B80E8 800BB0E8 38600004 */  li        r3, 0x4
lbl_800BB0EC:
/* 0B80EC 800BB0EC 8001002C */  lwz       r0, 0x2c(r1)
/* 0B80F0 800BB0F0 83E10024 */  lwz       r31, 0x24(r1)
/* 0B80F4 800BB0F4 83C10020 */  lwz       r30, 0x20(r1)
/* 0B80F8 800BB0F8 83A1001C */  lwz       r29, 0x1c(r1)
/* 0B80FC 800BB0FC 38210028 */  addi      r1, r1, 0x28
/* 0B8100 800BB100 7C0803A6 */  mtlr      r0
/* 0B8104 800BB104 4E800020 */  blr

glabel __CARDUnlock
/* 0B8108 800BB108 7C0802A6 */  mflr      r0
/* 0B810C 800BB10C 90010004 */  stw       r0, 0x4(r1)
/* 0B8110 800BB110 9421FEE0 */  stwu      r1, -0x120(r1)
/* 0B8114 800BB114 BEC100F8 */  stmw      r22, 0xf8(r1)
/* 0B8118 800BB118 3B030000 */  addi      r24, r3, 0x0
/* 0B811C 800BB11C 3C608019 */  lis       r3, D_80188A70@ha
/* 0B8120 800BB120 1CB80110 */  mulli     r5, r24, 0x110
/* 0B8124 800BB124 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0B8128 800BB128 7FE02A14 */  add       r31, r0, r5
/* 0B812C 800BB12C 3AE40000 */  addi      r23, r4, 0x0
/* 0B8130 800BB130 3BDF0030 */  addi      r30, r31, 0x30
/* 0B8134 800BB134 807F0080 */  lwz       r3, 0x80(r31)
/* 0B8138 800BB138 3803002F */  addi      r0, r3, 0x2f
/* 0B813C 800BB13C 541C0034 */  clrrwi    r28, r0, 5
/* 0B8140 800BB140 3BA30000 */  addi      r29, r3, 0x0
/* 0B8144 800BB144 3ADC0020 */  addi      r22, r28, 0x20
/* 0B8148 800BB148 4BFE63B1 */  bl        OSGetTick
/* 0B814C 800BB14C 906D8858 */  stw       r3, D_8018B7D8@sda21(r0)
/* 0B8150 800BB150 3C6041C6 */  lis       r3, 0x41c6
/* 0B8154 800BB154 3CA07FED */  lis       r5, 0x7fed
/* 0B8158 800BB158 808D8858 */  lwz       r4, D_8018B7D8@sda21(r0)
/* 0B815C 800BB15C 38034E6D */  addi      r0, r3, 0x4e6d
/* 0B8160 800BB160 3B258000 */  addi      r25, r5, -0x8000
/* 0B8164 800BB164 7C6401D6 */  mullw     r3, r4, r0
/* 0B8168 800BB168 38033039 */  addi      r0, r3, 0x3039
/* 0B816C 800BB16C 900D8858 */  stw       r0, D_8018B7D8@sda21(r0)
/* 0B8170 800BB170 800D8858 */  lwz       r0, D_8018B7D8@sda21(r0)
/* 0B8174 800BB174 5400847E */  extrwi    r0, r0, 15, 1
/* 0B8178 800BB178 7F390378 */  or        r25, r25, r0
/* 0B817C 800BB17C 57390026 */  clrrwi    r25, r25, 12
/* 0B8180 800BB180 4BFFFEC5 */  bl        DummyLen
/* 0B8184 800BB184 3B430000 */  addi      r26, r3, 0x0
/* 0B8188 800BB188 38DA0000 */  addi      r6, r26, 0x0
/* 0B818C 800BB18C 38780000 */  addi      r3, r24, 0x0
/* 0B8190 800BB190 38990000 */  addi      r4, r25, 0x0
/* 0B8194 800BB194 38A100A4 */  addi      r5, r1, 0xa4
/* 0B8198 800BB198 38E00000 */  li        r7, 0x0
/* 0B819C 800BB19C 4BFFFD65 */  bl        ReadArrayUnlock
/* 0B81A0 800BB1A0 2C030000 */  cmpwi     r3, 0x0
/* 0B81A4 800BB1A4 4080000C */  bge       lbl_800BB1B0
/* 0B81A8 800BB1A8 3860FFFD */  li        r3, -0x3
/* 0B81AC 800BB1AC 48000AA0 */  b         lbl_800BBC4C
lbl_800BB1B0:
/* 0B81B0 800BB1B0 57431838 */  slwi      r3, r26, 3
/* 0B81B4 800BB1B4 38830001 */  addi      r4, r3, 0x1
/* 0B81B8 800BB1B8 28040000 */  cmplwi    r4, 0x0
/* 0B81BC 800BB1BC 38600000 */  li        r3, 0x0
/* 0B81C0 800BB1C0 40810168 */  ble       lbl_800BB328
/* 0B81C4 800BB1C4 28040008 */  cmplwi    r4, 0x8
/* 0B81C8 800BB1C8 38A4FFF8 */  subi      r5, r4, 0x8
/* 0B81CC 800BB1CC 40810124 */  ble       lbl_800BB2F0
/* 0B81D0 800BB1D0 38050007 */  addi      r0, r5, 0x7
/* 0B81D4 800BB1D4 5400E8FE */  srwi      r0, r0, 3
/* 0B81D8 800BB1D8 28050000 */  cmplwi    r5, 0x0
/* 0B81DC 800BB1DC 7C0903A6 */  mtctr     r0
/* 0B81E0 800BB1E0 40810110 */  ble       lbl_800BB2F0
lbl_800BB1E4:
/* 0B81E4 800BB1E4 5720C9FE */  srwi      r0, r25, 7
/* 0B81E8 800BB1E8 57258BFE */  srwi      r5, r25, 15
/* 0B81EC 800BB1EC 7F200278 */  xor       r0, r25, r0
/* 0B81F0 800BB1F0 7CA00278 */  xor       r0, r5, r0
/* 0B81F4 800BB1F4 57264DFE */  srwi      r6, r25, 23
/* 0B81F8 800BB1F8 7CC00238 */  eqv       r0, r6, r0
/* 0B81FC 800BB1FC 5725F87E */  srwi      r5, r25, 1
/* 0B8200 800BB200 5400F042 */  clrlslwi  r0, r0, 31, 30
/* 0B8204 800BB204 7CA70378 */  or        r7, r5, r0
/* 0B8208 800BB208 54E0C9FE */  srwi      r0, r7, 7
/* 0B820C 800BB20C 54E58BFE */  srwi      r5, r7, 15
/* 0B8210 800BB210 7CE00278 */  xor       r0, r7, r0
/* 0B8214 800BB214 54E64DFE */  srwi      r6, r7, 23
/* 0B8218 800BB218 7CA00278 */  xor       r0, r5, r0
/* 0B821C 800BB21C 7CC00238 */  eqv       r0, r6, r0
/* 0B8220 800BB220 5408F042 */  clrlslwi  r8, r0, 31, 30
/* 0B8224 800BB224 50E8F8BE */  rlwimi    r8, r7, 31, 2, 31
/* 0B8228 800BB228 5500C9FE */  srwi      r0, r8, 7
/* 0B822C 800BB22C 55058BFE */  srwi      r5, r8, 15
/* 0B8230 800BB230 7D000278 */  xor       r0, r8, r0
/* 0B8234 800BB234 55064DFE */  srwi      r6, r8, 23
/* 0B8238 800BB238 7CA00278 */  xor       r0, r5, r0
/* 0B823C 800BB23C 7CC00238 */  eqv       r0, r6, r0
/* 0B8240 800BB240 5407F042 */  clrlslwi  r7, r0, 31, 30
/* 0B8244 800BB244 5107F8BE */  rlwimi    r7, r8, 31, 2, 31
/* 0B8248 800BB248 54E0C9FE */  srwi      r0, r7, 7
/* 0B824C 800BB24C 54E58BFE */  srwi      r5, r7, 15
/* 0B8250 800BB250 7CE00278 */  xor       r0, r7, r0
/* 0B8254 800BB254 54E64DFE */  srwi      r6, r7, 23
/* 0B8258 800BB258 7CA00278 */  xor       r0, r5, r0
/* 0B825C 800BB25C 7CC00238 */  eqv       r0, r6, r0
/* 0B8260 800BB260 5408F042 */  clrlslwi  r8, r0, 31, 30
/* 0B8264 800BB264 50E8F8BE */  rlwimi    r8, r7, 31, 2, 31
/* 0B8268 800BB268 5500C9FE */  srwi      r0, r8, 7
/* 0B826C 800BB26C 55058BFE */  srwi      r5, r8, 15
/* 0B8270 800BB270 7D000278 */  xor       r0, r8, r0
/* 0B8274 800BB274 55064DFE */  srwi      r6, r8, 23
/* 0B8278 800BB278 7CA00278 */  xor       r0, r5, r0
/* 0B827C 800BB27C 7CC00238 */  eqv       r0, r6, r0
/* 0B8280 800BB280 5407F042 */  clrlslwi  r7, r0, 31, 30
/* 0B8284 800BB284 5107F8BE */  rlwimi    r7, r8, 31, 2, 31
/* 0B8288 800BB288 54E0C9FE */  srwi      r0, r7, 7
/* 0B828C 800BB28C 54E58BFE */  srwi      r5, r7, 15
/* 0B8290 800BB290 7CE00278 */  xor       r0, r7, r0
/* 0B8294 800BB294 54E64DFE */  srwi      r6, r7, 23
/* 0B8298 800BB298 7CA00278 */  xor       r0, r5, r0
/* 0B829C 800BB29C 7CC00238 */  eqv       r0, r6, r0
/* 0B82A0 800BB2A0 5408F042 */  clrlslwi  r8, r0, 31, 30
/* 0B82A4 800BB2A4 50E8F8BE */  rlwimi    r8, r7, 31, 2, 31
/* 0B82A8 800BB2A8 5500C9FE */  srwi      r0, r8, 7
/* 0B82AC 800BB2AC 55058BFE */  srwi      r5, r8, 15
/* 0B82B0 800BB2B0 7D000278 */  xor       r0, r8, r0
/* 0B82B4 800BB2B4 55064DFE */  srwi      r6, r8, 23
/* 0B82B8 800BB2B8 7CA00278 */  xor       r0, r5, r0
/* 0B82BC 800BB2BC 7CC00238 */  eqv       r0, r6, r0
/* 0B82C0 800BB2C0 5407F042 */  clrlslwi  r7, r0, 31, 30
/* 0B82C4 800BB2C4 5107F8BE */  rlwimi    r7, r8, 31, 2, 31
/* 0B82C8 800BB2C8 54E0C9FE */  srwi      r0, r7, 7
/* 0B82CC 800BB2CC 54E58BFE */  srwi      r5, r7, 15
/* 0B82D0 800BB2D0 7CE00278 */  xor       r0, r7, r0
/* 0B82D4 800BB2D4 54E64DFE */  srwi      r6, r7, 23
/* 0B82D8 800BB2D8 7CA00278 */  xor       r0, r5, r0
/* 0B82DC 800BB2DC 7CC00238 */  eqv       r0, r6, r0
/* 0B82E0 800BB2E0 5419F042 */  clrlslwi  r25, r0, 31, 30
/* 0B82E4 800BB2E4 50F9F8BE */  rlwimi    r25, r7, 31, 2, 31
/* 0B82E8 800BB2E8 38630008 */  addi      r3, r3, 0x8
/* 0B82EC 800BB2EC 4200FEF8 */  bdnz      lbl_800BB1E4
lbl_800BB2F0:
/* 0B82F0 800BB2F0 7C032050 */  subf      r0, r3, r4
/* 0B82F4 800BB2F4 7C032040 */  cmplw     r3, r4
/* 0B82F8 800BB2F8 7C0903A6 */  mtctr     r0
/* 0B82FC 800BB2FC 4080002C */  bge       lbl_800BB328
lbl_800BB300:
/* 0B8300 800BB300 5720C9FE */  srwi      r0, r25, 7
/* 0B8304 800BB304 57238BFE */  srwi      r3, r25, 15
/* 0B8308 800BB308 7F200278 */  xor       r0, r25, r0
/* 0B830C 800BB30C 57244DFE */  srwi      r4, r25, 23
/* 0B8310 800BB310 7C600278 */  xor       r0, r3, r0
/* 0B8314 800BB314 7C800238 */  eqv       r0, r4, r0
/* 0B8318 800BB318 5723F87E */  srwi      r3, r25, 1
/* 0B831C 800BB31C 5400F042 */  clrlslwi  r0, r0, 31, 30
/* 0B8320 800BB320 7C790378 */  or        r25, r3, r0
/* 0B8324 800BB324 4200FFDC */  bdnz      lbl_800BB300
lbl_800BB328:
/* 0B8328 800BB328 5720C9FE */  srwi      r0, r25, 7
/* 0B832C 800BB32C 57238BFE */  srwi      r3, r25, 15
/* 0B8330 800BB330 7F200278 */  xor       r0, r25, r0
/* 0B8334 800BB334 57244DFE */  srwi      r4, r25, 23
/* 0B8338 800BB338 7C600278 */  xor       r0, r3, r0
/* 0B833C 800BB33C 7C800238 */  eqv       r0, r4, r0
/* 0B8340 800BB340 5400F800 */  slwi      r0, r0, 31
/* 0B8344 800BB344 7F200378 */  or        r0, r25, r0
/* 0B8348 800BB348 901F002C */  stw       r0, 0x2c(r31)
/* 0B834C 800BB34C 807F002C */  lwz       r3, 0x2c(r31)
/* 0B8350 800BB350 4BFFFA45 */  bl        bitrev
/* 0B8354 800BB354 907F002C */  stw       r3, 0x2c(r31)
/* 0B8358 800BB358 4BFFFCED */  bl        DummyLen
/* 0B835C 800BB35C 3B630000 */  addi      r27, r3, 0x0
/* 0B8360 800BB360 38DB0014 */  addi      r6, r27, 0x14
/* 0B8364 800BB364 38780000 */  addi      r3, r24, 0x0
/* 0B8368 800BB368 38A100A4 */  addi      r5, r1, 0xa4
/* 0B836C 800BB36C 38800000 */  li        r4, 0x0
/* 0B8370 800BB370 38E00001 */  li        r7, 0x1
/* 0B8374 800BB374 4BFFFB8D */  bl        ReadArrayUnlock
/* 0B8378 800BB378 2C030000 */  cmpwi     r3, 0x0
/* 0B837C 800BB37C 4080000C */  bge       lbl_800BB388
/* 0B8380 800BB380 3860FFFD */  li        r3, -0x3
/* 0B8384 800BB384 480008C8 */  b         lbl_800BBC4C
lbl_800BB388:
/* 0B8388 800BB388 38600004 */  li        r3, 0x4
/* 0B838C 800BB38C 80FF002C */  lwz       r7, 0x2c(r31)
/* 0B8390 800BB390 832100A4 */  lwz       r25, 0xa4(r1)
/* 0B8394 800BB394 7C6903A6 */  mtctr     r3
/* 0B8398 800BB398 834100A8 */  lwz       r26, 0xa8(r1)
/* 0B839C 800BB39C 830100AC */  lwz       r24, 0xac(r1)
/* 0B83A0 800BB3A0 7F393A78 */  xor       r25, r25, r7
/* 0B83A4 800BB3A4 800100B0 */  lwz       r0, 0xb0(r1)
/* 0B83A8 800BB3A8 80A100B4 */  lwz       r5, 0xb4(r1)
lbl_800BB3AC:
/* 0B83AC 800BB3AC 54E33830 */  slwi      r3, r7, 7
/* 0B83B0 800BB3B0 54E47820 */  slwi      r4, r7, 15
/* 0B83B4 800BB3B4 7CE31A78 */  xor       r3, r7, r3
/* 0B83B8 800BB3B8 7C831A78 */  xor       r3, r4, r3
/* 0B83BC 800BB3BC 54E6B810 */  slwi      r6, r7, 23
/* 0B83C0 800BB3C0 7CC31A38 */  eqv       r3, r6, r3
/* 0B83C4 800BB3C4 54E4083C */  slwi      r4, r7, 1
/* 0B83C8 800BB3C8 546317BC */  rlwinm    r3, r3, 2, 30, 30
/* 0B83CC 800BB3CC 7C871B78 */  or        r7, r4, r3
/* 0B83D0 800BB3D0 54E33830 */  slwi      r3, r7, 7
/* 0B83D4 800BB3D4 54E47820 */  slwi      r4, r7, 15
/* 0B83D8 800BB3D8 7CE31A78 */  xor       r3, r7, r3
/* 0B83DC 800BB3DC 54E6B810 */  slwi      r6, r7, 23
/* 0B83E0 800BB3E0 7C831A78 */  xor       r3, r4, r3
/* 0B83E4 800BB3E4 7CC31A38 */  eqv       r3, r6, r3
/* 0B83E8 800BB3E8 546917BC */  rlwinm    r9, r3, 2, 30, 30
/* 0B83EC 800BB3EC 50E9083A */  rlwimi    r9, r7, 1, 0, 29
/* 0B83F0 800BB3F0 55233830 */  slwi      r3, r9, 7
/* 0B83F4 800BB3F4 55247820 */  slwi      r4, r9, 15
/* 0B83F8 800BB3F8 7D231A78 */  xor       r3, r9, r3
/* 0B83FC 800BB3FC 5526B810 */  slwi      r6, r9, 23
/* 0B8400 800BB400 7C831A78 */  xor       r3, r4, r3
/* 0B8404 800BB404 7CC31A38 */  eqv       r3, r6, r3
/* 0B8408 800BB408 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B840C 800BB40C 5128083A */  rlwimi    r8, r9, 1, 0, 29
/* 0B8410 800BB410 55033830 */  slwi      r3, r8, 7
/* 0B8414 800BB414 55047820 */  slwi      r4, r8, 15
/* 0B8418 800BB418 7D031A78 */  xor       r3, r8, r3
/* 0B841C 800BB41C 5506B810 */  slwi      r6, r8, 23
/* 0B8420 800BB420 7C831A78 */  xor       r3, r4, r3
/* 0B8424 800BB424 7CC31A38 */  eqv       r3, r6, r3
/* 0B8428 800BB428 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B842C 800BB42C 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8430 800BB430 54E33830 */  slwi      r3, r7, 7
/* 0B8434 800BB434 54E47820 */  slwi      r4, r7, 15
/* 0B8438 800BB438 7CE31A78 */  xor       r3, r7, r3
/* 0B843C 800BB43C 54E6B810 */  slwi      r6, r7, 23
/* 0B8440 800BB440 7C831A78 */  xor       r3, r4, r3
/* 0B8444 800BB444 7CC31A38 */  eqv       r3, r6, r3
/* 0B8448 800BB448 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B844C 800BB44C 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8450 800BB450 55033830 */  slwi      r3, r8, 7
/* 0B8454 800BB454 55047820 */  slwi      r4, r8, 15
/* 0B8458 800BB458 7D031A78 */  xor       r3, r8, r3
/* 0B845C 800BB45C 5506B810 */  slwi      r6, r8, 23
/* 0B8460 800BB460 7C831A78 */  xor       r3, r4, r3
/* 0B8464 800BB464 7CC31A38 */  eqv       r3, r6, r3
/* 0B8468 800BB468 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B846C 800BB46C 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8470 800BB470 54E33830 */  slwi      r3, r7, 7
/* 0B8474 800BB474 54E47820 */  slwi      r4, r7, 15
/* 0B8478 800BB478 7CE31A78 */  xor       r3, r7, r3
/* 0B847C 800BB47C 54E6B810 */  slwi      r6, r7, 23
/* 0B8480 800BB480 7C831A78 */  xor       r3, r4, r3
/* 0B8484 800BB484 7CC31A38 */  eqv       r3, r6, r3
/* 0B8488 800BB488 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B848C 800BB48C 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8490 800BB490 55033830 */  slwi      r3, r8, 7
/* 0B8494 800BB494 55047820 */  slwi      r4, r8, 15
/* 0B8498 800BB498 7D031A78 */  xor       r3, r8, r3
/* 0B849C 800BB49C 5506B810 */  slwi      r6, r8, 23
/* 0B84A0 800BB4A0 7C831A78 */  xor       r3, r4, r3
/* 0B84A4 800BB4A4 7CC31A38 */  eqv       r3, r6, r3
/* 0B84A8 800BB4A8 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B84AC 800BB4AC 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B84B0 800BB4B0 4200FEFC */  bdnz      lbl_800BB3AC
/* 0B84B4 800BB4B4 54E33830 */  slwi      r3, r7, 7
/* 0B84B8 800BB4B8 54E47820 */  slwi      r4, r7, 15
/* 0B84BC 800BB4BC 7CE31A78 */  xor       r3, r7, r3
/* 0B84C0 800BB4C0 54E6B810 */  slwi      r6, r7, 23
/* 0B84C4 800BB4C4 7C831A78 */  xor       r3, r4, r3
/* 0B84C8 800BB4C8 7CC31A38 */  eqv       r3, r6, r3
/* 0B84CC 800BB4CC 54630FFE */  srwi      r3, r3, 31
/* 0B84D0 800BB4D0 7CE31B78 */  or        r3, r7, r3
/* 0B84D4 800BB4D4 907F002C */  stw       r3, 0x2c(r31)
/* 0B84D8 800BB4D8 38600004 */  li        r3, 0x4
/* 0B84DC 800BB4DC 7C6903A6 */  mtctr     r3
/* 0B84E0 800BB4E0 80FF002C */  lwz       r7, 0x2c(r31)
/* 0B84E4 800BB4E4 7F5A3A78 */  xor       r26, r26, r7
lbl_800BB4E8:
/* 0B84E8 800BB4E8 54E33830 */  slwi      r3, r7, 7
/* 0B84EC 800BB4EC 54E47820 */  slwi      r4, r7, 15
/* 0B84F0 800BB4F0 7CE31A78 */  xor       r3, r7, r3
/* 0B84F4 800BB4F4 7C831A78 */  xor       r3, r4, r3
/* 0B84F8 800BB4F8 54E6B810 */  slwi      r6, r7, 23
/* 0B84FC 800BB4FC 7CC31A38 */  eqv       r3, r6, r3
/* 0B8500 800BB500 54E4083C */  slwi      r4, r7, 1
/* 0B8504 800BB504 546317BC */  rlwinm    r3, r3, 2, 30, 30
/* 0B8508 800BB508 7C871B78 */  or        r7, r4, r3
/* 0B850C 800BB50C 54E33830 */  slwi      r3, r7, 7
/* 0B8510 800BB510 54E47820 */  slwi      r4, r7, 15
/* 0B8514 800BB514 7CE31A78 */  xor       r3, r7, r3
/* 0B8518 800BB518 54E6B810 */  slwi      r6, r7, 23
/* 0B851C 800BB51C 7C831A78 */  xor       r3, r4, r3
/* 0B8520 800BB520 7CC31A38 */  eqv       r3, r6, r3
/* 0B8524 800BB524 546917BC */  rlwinm    r9, r3, 2, 30, 30
/* 0B8528 800BB528 50E9083A */  rlwimi    r9, r7, 1, 0, 29
/* 0B852C 800BB52C 55233830 */  slwi      r3, r9, 7
/* 0B8530 800BB530 55247820 */  slwi      r4, r9, 15
/* 0B8534 800BB534 7D231A78 */  xor       r3, r9, r3
/* 0B8538 800BB538 5526B810 */  slwi      r6, r9, 23
/* 0B853C 800BB53C 7C831A78 */  xor       r3, r4, r3
/* 0B8540 800BB540 7CC31A38 */  eqv       r3, r6, r3
/* 0B8544 800BB544 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B8548 800BB548 5128083A */  rlwimi    r8, r9, 1, 0, 29
/* 0B854C 800BB54C 55033830 */  slwi      r3, r8, 7
/* 0B8550 800BB550 55047820 */  slwi      r4, r8, 15
/* 0B8554 800BB554 7D031A78 */  xor       r3, r8, r3
/* 0B8558 800BB558 5506B810 */  slwi      r6, r8, 23
/* 0B855C 800BB55C 7C831A78 */  xor       r3, r4, r3
/* 0B8560 800BB560 7CC31A38 */  eqv       r3, r6, r3
/* 0B8564 800BB564 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B8568 800BB568 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B856C 800BB56C 54E33830 */  slwi      r3, r7, 7
/* 0B8570 800BB570 54E47820 */  slwi      r4, r7, 15
/* 0B8574 800BB574 7CE31A78 */  xor       r3, r7, r3
/* 0B8578 800BB578 54E6B810 */  slwi      r6, r7, 23
/* 0B857C 800BB57C 7C831A78 */  xor       r3, r4, r3
/* 0B8580 800BB580 7CC31A38 */  eqv       r3, r6, r3
/* 0B8584 800BB584 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B8588 800BB588 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B858C 800BB58C 55033830 */  slwi      r3, r8, 7
/* 0B8590 800BB590 55047820 */  slwi      r4, r8, 15
/* 0B8594 800BB594 7D031A78 */  xor       r3, r8, r3
/* 0B8598 800BB598 5506B810 */  slwi      r6, r8, 23
/* 0B859C 800BB59C 7C831A78 */  xor       r3, r4, r3
/* 0B85A0 800BB5A0 7CC31A38 */  eqv       r3, r6, r3
/* 0B85A4 800BB5A4 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B85A8 800BB5A8 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B85AC 800BB5AC 54E33830 */  slwi      r3, r7, 7
/* 0B85B0 800BB5B0 54E47820 */  slwi      r4, r7, 15
/* 0B85B4 800BB5B4 7CE31A78 */  xor       r3, r7, r3
/* 0B85B8 800BB5B8 54E6B810 */  slwi      r6, r7, 23
/* 0B85BC 800BB5BC 7C831A78 */  xor       r3, r4, r3
/* 0B85C0 800BB5C0 7CC31A38 */  eqv       r3, r6, r3
/* 0B85C4 800BB5C4 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B85C8 800BB5C8 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B85CC 800BB5CC 55033830 */  slwi      r3, r8, 7
/* 0B85D0 800BB5D0 55047820 */  slwi      r4, r8, 15
/* 0B85D4 800BB5D4 7D031A78 */  xor       r3, r8, r3
/* 0B85D8 800BB5D8 5506B810 */  slwi      r6, r8, 23
/* 0B85DC 800BB5DC 7C831A78 */  xor       r3, r4, r3
/* 0B85E0 800BB5E0 7CC31A38 */  eqv       r3, r6, r3
/* 0B85E4 800BB5E4 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B85E8 800BB5E8 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B85EC 800BB5EC 4200FEFC */  bdnz      lbl_800BB4E8
/* 0B85F0 800BB5F0 54E33830 */  slwi      r3, r7, 7
/* 0B85F4 800BB5F4 54E47820 */  slwi      r4, r7, 15
/* 0B85F8 800BB5F8 7CE31A78 */  xor       r3, r7, r3
/* 0B85FC 800BB5FC 54E6B810 */  slwi      r6, r7, 23
/* 0B8600 800BB600 7C831A78 */  xor       r3, r4, r3
/* 0B8604 800BB604 7CC31A38 */  eqv       r3, r6, r3
/* 0B8608 800BB608 54630FFE */  srwi      r3, r3, 31
/* 0B860C 800BB60C 7CE31B78 */  or        r3, r7, r3
/* 0B8610 800BB610 907F002C */  stw       r3, 0x2c(r31)
/* 0B8614 800BB614 38600004 */  li        r3, 0x4
/* 0B8618 800BB618 7C6903A6 */  mtctr     r3
/* 0B861C 800BB61C 80FF002C */  lwz       r7, 0x2c(r31)
/* 0B8620 800BB620 7F183A78 */  xor       r24, r24, r7
lbl_800BB624:
/* 0B8624 800BB624 54E33830 */  slwi      r3, r7, 7
/* 0B8628 800BB628 54E47820 */  slwi      r4, r7, 15
/* 0B862C 800BB62C 7CE31A78 */  xor       r3, r7, r3
/* 0B8630 800BB630 7C831A78 */  xor       r3, r4, r3
/* 0B8634 800BB634 54E6B810 */  slwi      r6, r7, 23
/* 0B8638 800BB638 7CC31A38 */  eqv       r3, r6, r3
/* 0B863C 800BB63C 54E4083C */  slwi      r4, r7, 1
/* 0B8640 800BB640 546317BC */  rlwinm    r3, r3, 2, 30, 30
/* 0B8644 800BB644 7C871B78 */  or        r7, r4, r3
/* 0B8648 800BB648 54E33830 */  slwi      r3, r7, 7
/* 0B864C 800BB64C 54E47820 */  slwi      r4, r7, 15
/* 0B8650 800BB650 7CE31A78 */  xor       r3, r7, r3
/* 0B8654 800BB654 54E6B810 */  slwi      r6, r7, 23
/* 0B8658 800BB658 7C831A78 */  xor       r3, r4, r3
/* 0B865C 800BB65C 7CC31A38 */  eqv       r3, r6, r3
/* 0B8660 800BB660 546917BC */  rlwinm    r9, r3, 2, 30, 30
/* 0B8664 800BB664 50E9083A */  rlwimi    r9, r7, 1, 0, 29
/* 0B8668 800BB668 55233830 */  slwi      r3, r9, 7
/* 0B866C 800BB66C 55247820 */  slwi      r4, r9, 15
/* 0B8670 800BB670 7D231A78 */  xor       r3, r9, r3
/* 0B8674 800BB674 5526B810 */  slwi      r6, r9, 23
/* 0B8678 800BB678 7C831A78 */  xor       r3, r4, r3
/* 0B867C 800BB67C 7CC31A38 */  eqv       r3, r6, r3
/* 0B8680 800BB680 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B8684 800BB684 5128083A */  rlwimi    r8, r9, 1, 0, 29
/* 0B8688 800BB688 55033830 */  slwi      r3, r8, 7
/* 0B868C 800BB68C 55047820 */  slwi      r4, r8, 15
/* 0B8690 800BB690 7D031A78 */  xor       r3, r8, r3
/* 0B8694 800BB694 5506B810 */  slwi      r6, r8, 23
/* 0B8698 800BB698 7C831A78 */  xor       r3, r4, r3
/* 0B869C 800BB69C 7CC31A38 */  eqv       r3, r6, r3
/* 0B86A0 800BB6A0 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B86A4 800BB6A4 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B86A8 800BB6A8 54E33830 */  slwi      r3, r7, 7
/* 0B86AC 800BB6AC 54E47820 */  slwi      r4, r7, 15
/* 0B86B0 800BB6B0 7CE31A78 */  xor       r3, r7, r3
/* 0B86B4 800BB6B4 54E6B810 */  slwi      r6, r7, 23
/* 0B86B8 800BB6B8 7C831A78 */  xor       r3, r4, r3
/* 0B86BC 800BB6BC 7CC31A38 */  eqv       r3, r6, r3
/* 0B86C0 800BB6C0 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B86C4 800BB6C4 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B86C8 800BB6C8 55033830 */  slwi      r3, r8, 7
/* 0B86CC 800BB6CC 55047820 */  slwi      r4, r8, 15
/* 0B86D0 800BB6D0 7D031A78 */  xor       r3, r8, r3
/* 0B86D4 800BB6D4 5506B810 */  slwi      r6, r8, 23
/* 0B86D8 800BB6D8 7C831A78 */  xor       r3, r4, r3
/* 0B86DC 800BB6DC 7CC31A38 */  eqv       r3, r6, r3
/* 0B86E0 800BB6E0 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B86E4 800BB6E4 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B86E8 800BB6E8 54E33830 */  slwi      r3, r7, 7
/* 0B86EC 800BB6EC 54E47820 */  slwi      r4, r7, 15
/* 0B86F0 800BB6F0 7CE31A78 */  xor       r3, r7, r3
/* 0B86F4 800BB6F4 54E6B810 */  slwi      r6, r7, 23
/* 0B86F8 800BB6F8 7C831A78 */  xor       r3, r4, r3
/* 0B86FC 800BB6FC 7CC31A38 */  eqv       r3, r6, r3
/* 0B8700 800BB700 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B8704 800BB704 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8708 800BB708 55033830 */  slwi      r3, r8, 7
/* 0B870C 800BB70C 55047820 */  slwi      r4, r8, 15
/* 0B8710 800BB710 7D031A78 */  xor       r3, r8, r3
/* 0B8714 800BB714 5506B810 */  slwi      r6, r8, 23
/* 0B8718 800BB718 7C831A78 */  xor       r3, r4, r3
/* 0B871C 800BB71C 7CC31A38 */  eqv       r3, r6, r3
/* 0B8720 800BB720 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B8724 800BB724 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8728 800BB728 4200FEFC */  bdnz      lbl_800BB624
/* 0B872C 800BB72C 54E33830 */  slwi      r3, r7, 7
/* 0B8730 800BB730 54E47820 */  slwi      r4, r7, 15
/* 0B8734 800BB734 7CE31A78 */  xor       r3, r7, r3
/* 0B8738 800BB738 54E6B810 */  slwi      r6, r7, 23
/* 0B873C 800BB73C 7C831A78 */  xor       r3, r4, r3
/* 0B8740 800BB740 7CC31A38 */  eqv       r3, r6, r3
/* 0B8744 800BB744 54630FFE */  srwi      r3, r3, 31
/* 0B8748 800BB748 7CE31B78 */  or        r3, r7, r3
/* 0B874C 800BB74C 907F002C */  stw       r3, 0x2c(r31)
/* 0B8750 800BB750 38600004 */  li        r3, 0x4
/* 0B8754 800BB754 7C6903A6 */  mtctr     r3
/* 0B8758 800BB758 80FF002C */  lwz       r7, 0x2c(r31)
/* 0B875C 800BB75C 7C003A78 */  xor       r0, r0, r7
lbl_800BB760:
/* 0B8760 800BB760 54E33830 */  slwi      r3, r7, 7
/* 0B8764 800BB764 54E47820 */  slwi      r4, r7, 15
/* 0B8768 800BB768 7CE31A78 */  xor       r3, r7, r3
/* 0B876C 800BB76C 7C831A78 */  xor       r3, r4, r3
/* 0B8770 800BB770 54E6B810 */  slwi      r6, r7, 23
/* 0B8774 800BB774 7CC31A38 */  eqv       r3, r6, r3
/* 0B8778 800BB778 54E4083C */  slwi      r4, r7, 1
/* 0B877C 800BB77C 546317BC */  rlwinm    r3, r3, 2, 30, 30
/* 0B8780 800BB780 7C871B78 */  or        r7, r4, r3
/* 0B8784 800BB784 54E33830 */  slwi      r3, r7, 7
/* 0B8788 800BB788 54E47820 */  slwi      r4, r7, 15
/* 0B878C 800BB78C 7CE31A78 */  xor       r3, r7, r3
/* 0B8790 800BB790 54E6B810 */  slwi      r6, r7, 23
/* 0B8794 800BB794 7C831A78 */  xor       r3, r4, r3
/* 0B8798 800BB798 7CC31A38 */  eqv       r3, r6, r3
/* 0B879C 800BB79C 546917BC */  rlwinm    r9, r3, 2, 30, 30
/* 0B87A0 800BB7A0 50E9083A */  rlwimi    r9, r7, 1, 0, 29
/* 0B87A4 800BB7A4 55233830 */  slwi      r3, r9, 7
/* 0B87A8 800BB7A8 55247820 */  slwi      r4, r9, 15
/* 0B87AC 800BB7AC 7D231A78 */  xor       r3, r9, r3
/* 0B87B0 800BB7B0 5526B810 */  slwi      r6, r9, 23
/* 0B87B4 800BB7B4 7C831A78 */  xor       r3, r4, r3
/* 0B87B8 800BB7B8 7CC31A38 */  eqv       r3, r6, r3
/* 0B87BC 800BB7BC 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B87C0 800BB7C0 5128083A */  rlwimi    r8, r9, 1, 0, 29
/* 0B87C4 800BB7C4 55033830 */  slwi      r3, r8, 7
/* 0B87C8 800BB7C8 55047820 */  slwi      r4, r8, 15
/* 0B87CC 800BB7CC 7D031A78 */  xor       r3, r8, r3
/* 0B87D0 800BB7D0 5506B810 */  slwi      r6, r8, 23
/* 0B87D4 800BB7D4 7C831A78 */  xor       r3, r4, r3
/* 0B87D8 800BB7D8 7CC31A38 */  eqv       r3, r6, r3
/* 0B87DC 800BB7DC 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B87E0 800BB7E0 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B87E4 800BB7E4 54E33830 */  slwi      r3, r7, 7
/* 0B87E8 800BB7E8 54E47820 */  slwi      r4, r7, 15
/* 0B87EC 800BB7EC 7CE31A78 */  xor       r3, r7, r3
/* 0B87F0 800BB7F0 54E6B810 */  slwi      r6, r7, 23
/* 0B87F4 800BB7F4 7C831A78 */  xor       r3, r4, r3
/* 0B87F8 800BB7F8 7CC31A38 */  eqv       r3, r6, r3
/* 0B87FC 800BB7FC 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B8800 800BB800 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8804 800BB804 55033830 */  slwi      r3, r8, 7
/* 0B8808 800BB808 55047820 */  slwi      r4, r8, 15
/* 0B880C 800BB80C 7D031A78 */  xor       r3, r8, r3
/* 0B8810 800BB810 5506B810 */  slwi      r6, r8, 23
/* 0B8814 800BB814 7C831A78 */  xor       r3, r4, r3
/* 0B8818 800BB818 7CC31A38 */  eqv       r3, r6, r3
/* 0B881C 800BB81C 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B8820 800BB820 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8824 800BB824 54E33830 */  slwi      r3, r7, 7
/* 0B8828 800BB828 54E47820 */  slwi      r4, r7, 15
/* 0B882C 800BB82C 7CE31A78 */  xor       r3, r7, r3
/* 0B8830 800BB830 54E6B810 */  slwi      r6, r7, 23
/* 0B8834 800BB834 7C831A78 */  xor       r3, r4, r3
/* 0B8838 800BB838 7CC31A38 */  eqv       r3, r6, r3
/* 0B883C 800BB83C 546817BC */  rlwinm    r8, r3, 2, 30, 30
/* 0B8840 800BB840 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8844 800BB844 55033830 */  slwi      r3, r8, 7
/* 0B8848 800BB848 55047820 */  slwi      r4, r8, 15
/* 0B884C 800BB84C 7D031A78 */  xor       r3, r8, r3
/* 0B8850 800BB850 5506B810 */  slwi      r6, r8, 23
/* 0B8854 800BB854 7C831A78 */  xor       r3, r4, r3
/* 0B8858 800BB858 7CC31A38 */  eqv       r3, r6, r3
/* 0B885C 800BB85C 546717BC */  rlwinm    r7, r3, 2, 30, 30
/* 0B8860 800BB860 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8864 800BB864 4200FEFC */  bdnz      lbl_800BB760
/* 0B8868 800BB868 54E33830 */  slwi      r3, r7, 7
/* 0B886C 800BB86C 54E47820 */  slwi      r4, r7, 15
/* 0B8870 800BB870 7CE31A78 */  xor       r3, r7, r3
/* 0B8874 800BB874 7C831A78 */  xor       r3, r4, r3
/* 0B8878 800BB878 54E6B810 */  slwi      r6, r7, 23
/* 0B887C 800BB87C 7CC31A38 */  eqv       r3, r6, r3
/* 0B8880 800BB880 54630FFE */  srwi      r3, r3, 31
/* 0B8884 800BB884 7CE31B78 */  or        r3, r7, r3
/* 0B8888 800BB888 907F002C */  stw       r3, 0x2c(r31)
/* 0B888C 800BB88C 57641838 */  slwi      r4, r27, 3
/* 0B8890 800BB890 28040000 */  cmplwi    r4, 0x0
/* 0B8894 800BB894 80DF002C */  lwz       r6, 0x2c(r31)
/* 0B8898 800BB898 38600000 */  li        r3, 0x0
/* 0B889C 800BB89C 7CA53278 */  xor       r5, r5, r6
/* 0B88A0 800BB8A0 40810168 */  ble       lbl_800BBA08
/* 0B88A4 800BB8A4 28040008 */  cmplwi    r4, 0x8
/* 0B88A8 800BB8A8 3904FFF8 */  subi      r8, r4, 0x8
/* 0B88AC 800BB8AC 40810124 */  ble       lbl_800BB9D0
/* 0B88B0 800BB8B0 38E80007 */  addi      r7, r8, 0x7
/* 0B88B4 800BB8B4 54E7E8FE */  srwi      r7, r7, 3
/* 0B88B8 800BB8B8 28080000 */  cmplwi    r8, 0x0
/* 0B88BC 800BB8BC 7CE903A6 */  mtctr     r7
/* 0B88C0 800BB8C0 40810110 */  ble       lbl_800BB9D0
lbl_800BB8C4:
/* 0B88C4 800BB8C4 54C73830 */  slwi      r7, r6, 7
/* 0B88C8 800BB8C8 54C87820 */  slwi      r8, r6, 15
/* 0B88CC 800BB8CC 7CC73A78 */  xor       r7, r6, r7
/* 0B88D0 800BB8D0 7D073A78 */  xor       r7, r8, r7
/* 0B88D4 800BB8D4 54C9B810 */  slwi      r9, r6, 23
/* 0B88D8 800BB8D8 7D273A38 */  eqv       r7, r9, r7
/* 0B88DC 800BB8DC 54C8083C */  slwi      r8, r6, 1
/* 0B88E0 800BB8E0 54E617BC */  rlwinm    r6, r7, 2, 30, 30
/* 0B88E4 800BB8E4 7D093378 */  or        r9, r8, r6
/* 0B88E8 800BB8E8 55263830 */  slwi      r6, r9, 7
/* 0B88EC 800BB8EC 55277820 */  slwi      r7, r9, 15
/* 0B88F0 800BB8F0 7D263278 */  xor       r6, r9, r6
/* 0B88F4 800BB8F4 5528B810 */  slwi      r8, r9, 23
/* 0B88F8 800BB8F8 7CE63278 */  xor       r6, r7, r6
/* 0B88FC 800BB8FC 7D063238 */  eqv       r6, r8, r6
/* 0B8900 800BB900 54CA17BC */  rlwinm    r10, r6, 2, 30, 30
/* 0B8904 800BB904 512A083A */  rlwimi    r10, r9, 1, 0, 29
/* 0B8908 800BB908 55463830 */  slwi      r6, r10, 7
/* 0B890C 800BB90C 55477820 */  slwi      r7, r10, 15
/* 0B8910 800BB910 7D463278 */  xor       r6, r10, r6
/* 0B8914 800BB914 5548B810 */  slwi      r8, r10, 23
/* 0B8918 800BB918 7CE63278 */  xor       r6, r7, r6
/* 0B891C 800BB91C 7D063238 */  eqv       r6, r8, r6
/* 0B8920 800BB920 54C917BC */  rlwinm    r9, r6, 2, 30, 30
/* 0B8924 800BB924 5149083A */  rlwimi    r9, r10, 1, 0, 29
/* 0B8928 800BB928 55263830 */  slwi      r6, r9, 7
/* 0B892C 800BB92C 55277820 */  slwi      r7, r9, 15
/* 0B8930 800BB930 7D263278 */  xor       r6, r9, r6
/* 0B8934 800BB934 5528B810 */  slwi      r8, r9, 23
/* 0B8938 800BB938 7CE63278 */  xor       r6, r7, r6
/* 0B893C 800BB93C 7D063238 */  eqv       r6, r8, r6
/* 0B8940 800BB940 54CA17BC */  rlwinm    r10, r6, 2, 30, 30
/* 0B8944 800BB944 512A083A */  rlwimi    r10, r9, 1, 0, 29
/* 0B8948 800BB948 55463830 */  slwi      r6, r10, 7
/* 0B894C 800BB94C 55477820 */  slwi      r7, r10, 15
/* 0B8950 800BB950 7D463278 */  xor       r6, r10, r6
/* 0B8954 800BB954 5548B810 */  slwi      r8, r10, 23
/* 0B8958 800BB958 7CE63278 */  xor       r6, r7, r6
/* 0B895C 800BB95C 7D063238 */  eqv       r6, r8, r6
/* 0B8960 800BB960 54C917BC */  rlwinm    r9, r6, 2, 30, 30
/* 0B8964 800BB964 5149083A */  rlwimi    r9, r10, 1, 0, 29
/* 0B8968 800BB968 55263830 */  slwi      r6, r9, 7
/* 0B896C 800BB96C 55277820 */  slwi      r7, r9, 15
/* 0B8970 800BB970 7D263278 */  xor       r6, r9, r6
/* 0B8974 800BB974 5528B810 */  slwi      r8, r9, 23
/* 0B8978 800BB978 7CE63278 */  xor       r6, r7, r6
/* 0B897C 800BB97C 7D063238 */  eqv       r6, r8, r6
/* 0B8980 800BB980 54CA17BC */  rlwinm    r10, r6, 2, 30, 30
/* 0B8984 800BB984 512A083A */  rlwimi    r10, r9, 1, 0, 29
/* 0B8988 800BB988 55463830 */  slwi      r6, r10, 7
/* 0B898C 800BB98C 55477820 */  slwi      r7, r10, 15
/* 0B8990 800BB990 7D463278 */  xor       r6, r10, r6
/* 0B8994 800BB994 5548B810 */  slwi      r8, r10, 23
/* 0B8998 800BB998 7CE63278 */  xor       r6, r7, r6
/* 0B899C 800BB99C 7D063238 */  eqv       r6, r8, r6
/* 0B89A0 800BB9A0 54C917BC */  rlwinm    r9, r6, 2, 30, 30
/* 0B89A4 800BB9A4 5149083A */  rlwimi    r9, r10, 1, 0, 29
/* 0B89A8 800BB9A8 55263830 */  slwi      r6, r9, 7
/* 0B89AC 800BB9AC 55277820 */  slwi      r7, r9, 15
/* 0B89B0 800BB9B0 7D263278 */  xor       r6, r9, r6
/* 0B89B4 800BB9B4 5528B810 */  slwi      r8, r9, 23
/* 0B89B8 800BB9B8 7CE63278 */  xor       r6, r7, r6
/* 0B89BC 800BB9BC 7D063238 */  eqv       r6, r8, r6
/* 0B89C0 800BB9C0 54C617BC */  rlwinm    r6, r6, 2, 30, 30
/* 0B89C4 800BB9C4 5126083A */  rlwimi    r6, r9, 1, 0, 29
/* 0B89C8 800BB9C8 38630008 */  addi      r3, r3, 0x8
/* 0B89CC 800BB9CC 4200FEF8 */  bdnz      lbl_800BB8C4
lbl_800BB9D0:
/* 0B89D0 800BB9D0 7CE32050 */  subf      r7, r3, r4
/* 0B89D4 800BB9D4 7C032040 */  cmplw     r3, r4
/* 0B89D8 800BB9D8 7CE903A6 */  mtctr     r7
/* 0B89DC 800BB9DC 4080002C */  bge       lbl_800BBA08
lbl_800BB9E0:
/* 0B89E0 800BB9E0 54C33830 */  slwi      r3, r6, 7
/* 0B89E4 800BB9E4 54C47820 */  slwi      r4, r6, 15
/* 0B89E8 800BB9E8 7CC31A78 */  xor       r3, r6, r3
/* 0B89EC 800BB9EC 54C7B810 */  slwi      r7, r6, 23
/* 0B89F0 800BB9F0 7C831A78 */  xor       r3, r4, r3
/* 0B89F4 800BB9F4 7CE31A38 */  eqv       r3, r7, r3
/* 0B89F8 800BB9F8 54C4083C */  slwi      r4, r6, 1
/* 0B89FC 800BB9FC 546317BC */  rlwinm    r3, r3, 2, 30, 30
/* 0B8A00 800BBA00 7C861B78 */  or        r6, r4, r3
/* 0B8A04 800BBA04 4200FFDC */  bdnz      lbl_800BB9E0
lbl_800BBA08:
/* 0B8A08 800BBA08 54C33830 */  slwi      r3, r6, 7
/* 0B8A0C 800BBA0C 54C47820 */  slwi      r4, r6, 15
/* 0B8A10 800BBA10 7CC31A78 */  xor       r3, r6, r3
/* 0B8A14 800BBA14 54C7B810 */  slwi      r7, r6, 23
/* 0B8A18 800BBA18 7C831A78 */  xor       r3, r4, r3
/* 0B8A1C 800BBA1C 7CE31A38 */  eqv       r3, r7, r3
/* 0B8A20 800BBA20 54630FFE */  srwi      r3, r3, 31
/* 0B8A24 800BBA24 7CC31B78 */  or        r3, r6, r3
/* 0B8A28 800BBA28 907F002C */  stw       r3, 0x2c(r31)
/* 0B8A2C 800BBA2C 38600004 */  li        r3, 0x4
/* 0B8A30 800BBA30 7C6903A6 */  mtctr     r3
/* 0B8A34 800BBA34 38600000 */  li        r3, 0x0
/* 0B8A38 800BBA38 809F002C */  lwz       r4, 0x2c(r31)
lbl_800BBA3C:
/* 0B8A3C 800BBA3C 54863830 */  slwi      r6, r4, 7
/* 0B8A40 800BBA40 54877820 */  slwi      r7, r4, 15
/* 0B8A44 800BBA44 7C863278 */  xor       r6, r4, r6
/* 0B8A48 800BBA48 7CE63278 */  xor       r6, r7, r6
/* 0B8A4C 800BBA4C 5488B810 */  slwi      r8, r4, 23
/* 0B8A50 800BBA50 7D063238 */  eqv       r6, r8, r6
/* 0B8A54 800BBA54 5487083C */  slwi      r7, r4, 1
/* 0B8A58 800BBA58 54C417BC */  rlwinm    r4, r6, 2, 30, 30
/* 0B8A5C 800BBA5C 7CE82378 */  or        r8, r7, r4
/* 0B8A60 800BBA60 55043830 */  slwi      r4, r8, 7
/* 0B8A64 800BBA64 55067820 */  slwi      r6, r8, 15
/* 0B8A68 800BBA68 7D042278 */  xor       r4, r8, r4
/* 0B8A6C 800BBA6C 5507B810 */  slwi      r7, r8, 23
/* 0B8A70 800BBA70 7CC42278 */  xor       r4, r6, r4
/* 0B8A74 800BBA74 7CE42238 */  eqv       r4, r7, r4
/* 0B8A78 800BBA78 548917BC */  rlwinm    r9, r4, 2, 30, 30
/* 0B8A7C 800BBA7C 5109083A */  rlwimi    r9, r8, 1, 0, 29
/* 0B8A80 800BBA80 55243830 */  slwi      r4, r9, 7
/* 0B8A84 800BBA84 55267820 */  slwi      r6, r9, 15
/* 0B8A88 800BBA88 7D242278 */  xor       r4, r9, r4
/* 0B8A8C 800BBA8C 5527B810 */  slwi      r7, r9, 23
/* 0B8A90 800BBA90 7CC42278 */  xor       r4, r6, r4
/* 0B8A94 800BBA94 7CE42238 */  eqv       r4, r7, r4
/* 0B8A98 800BBA98 548817BC */  rlwinm    r8, r4, 2, 30, 30
/* 0B8A9C 800BBA9C 5128083A */  rlwimi    r8, r9, 1, 0, 29
/* 0B8AA0 800BBAA0 55043830 */  slwi      r4, r8, 7
/* 0B8AA4 800BBAA4 55067820 */  slwi      r6, r8, 15
/* 0B8AA8 800BBAA8 7D042278 */  xor       r4, r8, r4
/* 0B8AAC 800BBAAC 5507B810 */  slwi      r7, r8, 23
/* 0B8AB0 800BBAB0 7CC42278 */  xor       r4, r6, r4
/* 0B8AB4 800BBAB4 7CE42238 */  eqv       r4, r7, r4
/* 0B8AB8 800BBAB8 548917BC */  rlwinm    r9, r4, 2, 30, 30
/* 0B8ABC 800BBABC 5109083A */  rlwimi    r9, r8, 1, 0, 29
/* 0B8AC0 800BBAC0 55243830 */  slwi      r4, r9, 7
/* 0B8AC4 800BBAC4 55267820 */  slwi      r6, r9, 15
/* 0B8AC8 800BBAC8 7D242278 */  xor       r4, r9, r4
/* 0B8ACC 800BBACC 5527B810 */  slwi      r7, r9, 23
/* 0B8AD0 800BBAD0 7CC42278 */  xor       r4, r6, r4
/* 0B8AD4 800BBAD4 7CE42238 */  eqv       r4, r7, r4
/* 0B8AD8 800BBAD8 548817BC */  rlwinm    r8, r4, 2, 30, 30
/* 0B8ADC 800BBADC 5128083A */  rlwimi    r8, r9, 1, 0, 29
/* 0B8AE0 800BBAE0 55043830 */  slwi      r4, r8, 7
/* 0B8AE4 800BBAE4 55067820 */  slwi      r6, r8, 15
/* 0B8AE8 800BBAE8 7D042278 */  xor       r4, r8, r4
/* 0B8AEC 800BBAEC 5507B810 */  slwi      r7, r8, 23
/* 0B8AF0 800BBAF0 7CC42278 */  xor       r4, r6, r4
/* 0B8AF4 800BBAF4 7CE42238 */  eqv       r4, r7, r4
/* 0B8AF8 800BBAF8 548917BC */  rlwinm    r9, r4, 2, 30, 30
/* 0B8AFC 800BBAFC 5109083A */  rlwimi    r9, r8, 1, 0, 29
/* 0B8B00 800BBB00 55243830 */  slwi      r4, r9, 7
/* 0B8B04 800BBB04 55267820 */  slwi      r6, r9, 15
/* 0B8B08 800BBB08 7D242278 */  xor       r4, r9, r4
/* 0B8B0C 800BBB0C 5527B810 */  slwi      r7, r9, 23
/* 0B8B10 800BBB10 7CC42278 */  xor       r4, r6, r4
/* 0B8B14 800BBB14 7CE42238 */  eqv       r4, r7, r4
/* 0B8B18 800BBB18 548817BC */  rlwinm    r8, r4, 2, 30, 30
/* 0B8B1C 800BBB1C 5128083A */  rlwimi    r8, r9, 1, 0, 29
/* 0B8B20 800BBB20 55043830 */  slwi      r4, r8, 7
/* 0B8B24 800BBB24 55067820 */  slwi      r6, r8, 15
/* 0B8B28 800BBB28 7D042278 */  xor       r4, r8, r4
/* 0B8B2C 800BBB2C 5507B810 */  slwi      r7, r8, 23
/* 0B8B30 800BBB30 7CC42278 */  xor       r4, r6, r4
/* 0B8B34 800BBB34 7CE42238 */  eqv       r4, r7, r4
/* 0B8B38 800BBB38 548417BC */  rlwinm    r4, r4, 2, 30, 30
/* 0B8B3C 800BBB3C 5104083A */  rlwimi    r4, r8, 1, 0, 29
/* 0B8B40 800BBB40 38630008 */  addi      r3, r3, 0x8
/* 0B8B44 800BBB44 4200FEF8 */  bdnz      lbl_800BBA3C
/* 0B8B48 800BBB48 20C30021 */  subfic    r6, r3, 0x21
/* 0B8B4C 800BBB4C 28030021 */  cmplwi    r3, 0x21
/* 0B8B50 800BBB50 7CC903A6 */  mtctr     r6
/* 0B8B54 800BBB54 4080002C */  bge       lbl_800BBB80
lbl_800BBB58:
/* 0B8B58 800BBB58 54833830 */  slwi      r3, r4, 7
/* 0B8B5C 800BBB5C 54867820 */  slwi      r6, r4, 15
/* 0B8B60 800BBB60 7C831A78 */  xor       r3, r4, r3
/* 0B8B64 800BBB64 5487B810 */  slwi      r7, r4, 23
/* 0B8B68 800BBB68 7CC31A78 */  xor       r3, r6, r3
/* 0B8B6C 800BBB6C 7CE31A38 */  eqv       r3, r7, r3
/* 0B8B70 800BBB70 5484083C */  slwi      r4, r4, 1
/* 0B8B74 800BBB74 546317BC */  rlwinm    r3, r3, 2, 30, 30
/* 0B8B78 800BBB78 7C841B78 */  or        r4, r4, r3
/* 0B8B7C 800BBB7C 4200FFDC */  bdnz      lbl_800BBB58
lbl_800BBB80:
/* 0B8B80 800BBB80 54833830 */  slwi      r3, r4, 7
/* 0B8B84 800BBB84 54867820 */  slwi      r6, r4, 15
/* 0B8B88 800BBB88 7C831A78 */  xor       r3, r4, r3
/* 0B8B8C 800BBB8C 5487B810 */  slwi      r7, r4, 23
/* 0B8B90 800BBB90 7CC31A78 */  xor       r3, r6, r3
/* 0B8B94 800BBB94 7CE31A38 */  eqv       r3, r7, r3
/* 0B8B98 800BBB98 54630FFE */  srwi      r3, r3, 31
/* 0B8B9C 800BBB9C 7C831B78 */  or        r3, r4, r3
/* 0B8BA0 800BBBA0 907F002C */  stw       r3, 0x2c(r31)
/* 0B8BA4 800BBBA4 38C00008 */  li        r6, 0x8
/* 0B8BA8 800BBBA8 3B600000 */  li        r27, 0x0
/* 0B8BAC 800BBBAC 901C0000 */  stw       r0, 0x0(r28)
/* 0B8BB0 800BBBB0 387C0000 */  addi      r3, r28, 0x0
/* 0B8BB4 800BBBB4 38800008 */  li        r4, 0x8
/* 0B8BB8 800BBBB8 90BC0004 */  stw       r5, 0x4(r28)
/* 0B8BBC 800BBBBC 939D0000 */  stw       r28, 0x0(r29)
/* 0B8BC0 800BBBC0 90DD0004 */  stw       r6, 0x4(r29)
/* 0B8BC4 800BBBC4 92DD000C */  stw       r22, 0xc(r29)
/* 0B8BC8 800BBBC8 937D0008 */  stw       r27, 0x8(r29)
/* 0B8BCC 800BBBCC 4BFE10F9 */  bl        DCFlushRange
/* 0B8BD0 800BBBD0 38760000 */  addi      r3, r22, 0x0
/* 0B8BD4 800BBBD4 38800004 */  li        r4, 0x4
/* 0B8BD8 800BBBD8 4BFE10C1 */  bl        DCInvalidateRange
/* 0B8BDC 800BBBDC 387D0000 */  addi      r3, r29, 0x0
/* 0B8BE0 800BBBE0 38800010 */  li        r4, 0x10
/* 0B8BE4 800BBBE4 4BFE10E1 */  bl        DCFlushRange
/* 0B8BE8 800BBBE8 380000FF */  li        r0, 0xff
/* 0B8BEC 800BBBEC 3C60800F */  lis       r3, D_800F4BA0@ha
/* 0B8BF0 800BBBF0 901E0004 */  stw       r0, 0x4(r30)
/* 0B8BF4 800BBBF4 38634BA0 */  addi      r3, r3, D_800F4BA0@l
/* 0B8BF8 800BBBF8 3C038000 */  addis     r0, r3, 0x8000
/* 0B8BFC 800BBBFC 901E000C */  stw       r0, 0xc(r30)
/* 0B8C00 800BBC00 38000160 */  li        r0, 0x160
/* 0B8C04 800BBC04 3C80800C */  lis       r4, InitCallback@ha
/* 0B8C08 800BBC08 901E0010 */  stw       r0, 0x10(r30)
/* 0B8C0C 800BBC0C 3C60800C */  lis       r3, DoneCallback@ha
/* 0B8C10 800BBC10 38A00010 */  li        r5, 0x10
/* 0B8C14 800BBC14 937E0014 */  stw       r27, 0x14(r30)
/* 0B8C18 800BBC18 3884BC60 */  addi      r4, r4, InitCallback@l
/* 0B8C1C 800BBC1C 3803BCD0 */  addi      r0, r3, DoneCallback@l
/* 0B8C20 800BBC20 B0BE0024 */  sth       r5, 0x24(r30)
/* 0B8C24 800BBC24 7FC3F378 */  mr        r3, r30
/* 0B8C28 800BBC28 909E0028 */  stw       r4, 0x28(r30)
/* 0B8C2C 800BBC2C 937E002C */  stw       r27, 0x2c(r30)
/* 0B8C30 800BBC30 901E0030 */  stw       r0, 0x30(r30)
/* 0B8C34 800BBC34 937E0034 */  stw       r27, 0x34(r30)
/* 0B8C38 800BBC38 4BFFD535 */  bl        DSPAddTask
/* 0B8C3C 800BBC3C 93370000 */  stw       r25, 0x0(r23)
/* 0B8C40 800BBC40 38600000 */  li        r3, 0x0
/* 0B8C44 800BBC44 93570004 */  stw       r26, 0x4(r23)
/* 0B8C48 800BBC48 93170008 */  stw       r24, 0x8(r23)
lbl_800BBC4C:
/* 0B8C4C 800BBC4C BAC100F8 */  lmw       r22, 0xf8(r1)
/* 0B8C50 800BBC50 80010124 */  lwz       r0, 0x124(r1)
/* 0B8C54 800BBC54 38210120 */  addi      r1, r1, 0x120
/* 0B8C58 800BBC58 7C0803A6 */  mtlr      r0
/* 0B8C5C 800BBC5C 4E800020 */  blr

glabel InitCallback
/* 0B8C60 800BBC60 7C0802A6 */  mflr      r0
/* 0B8C64 800BBC64 3C808019 */  lis       r4, D_80188A70@ha
/* 0B8C68 800BBC68 90010004 */  stw       r0, 0x4(r1)
/* 0B8C6C 800BBC6C 38848A70 */  addi      r4, r4, D_80188A70@l
/* 0B8C70 800BBC70 38040030 */  addi      r0, r4, 0x30
/* 0B8C74 800BBC74 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0B8C78 800BBC78 7C001840 */  cmplw     r0, r3
/* 0B8C7C 800BBC7C 93E10014 */  stw       r31, 0x14(r1)
/* 0B8C80 800BBC80 41820010 */  beq       lbl_800BBC90
/* 0B8C84 800BBC84 38040140 */  addi      r0, r4, 0x140
/* 0B8C88 800BBC88 7C001840 */  cmplw     r0, r3
/* 0B8C8C 800BBC8C 38840110 */  addi      r4, r4, 0x110
lbl_800BBC90:
/* 0B8C90 800BBC90 83E40080 */  lwz       r31, 0x80(r4)
/* 0B8C94 800BBC94 3C60FF00 */  lis       r3, 0xff00
/* 0B8C98 800BBC98 4BFFD3FD */  bl        DSPSendMailToDSP
lbl_800BBC9C:
/* 0B8C9C 800BBC9C 4BFFD3C1 */  bl        DSPCheckMailToDSP
/* 0B8CA0 800BBCA0 28030000 */  cmplwi    r3, 0x0
/* 0B8CA4 800BBCA4 4082FFF8 */  bne       lbl_800BBC9C
/* 0B8CA8 800BBCA8 7FE3FB78 */  mr        r3, r31
/* 0B8CAC 800BBCAC 4BFFD3E9 */  bl        DSPSendMailToDSP
lbl_800BBCB0:
/* 0B8CB0 800BBCB0 4BFFD3AD */  bl        DSPCheckMailToDSP
/* 0B8CB4 800BBCB4 28030000 */  cmplwi    r3, 0x0
/* 0B8CB8 800BBCB8 4082FFF8 */  bne       lbl_800BBCB0
/* 0B8CBC 800BBCBC 8001001C */  lwz       r0, 0x1c(r1)
/* 0B8CC0 800BBCC0 83E10014 */  lwz       r31, 0x14(r1)
/* 0B8CC4 800BBCC4 38210018 */  addi      r1, r1, 0x18
/* 0B8CC8 800BBCC8 7C0803A6 */  mtlr      r0
/* 0B8CCC 800BBCCC 4E800020 */  blr

glabel DoneCallback
/* 0B8CD0 800BBCD0 7C0802A6 */  mflr      r0
/* 0B8CD4 800BBCD4 3C808019 */  lis       r4, D_80188A70@ha
/* 0B8CD8 800BBCD8 90010004 */  stw       r0, 0x4(r1)
/* 0B8CDC 800BBCDC 38848A70 */  addi      r4, r4, D_80188A70@l
/* 0B8CE0 800BBCE0 38040030 */  addi      r0, r4, 0x30
/* 0B8CE4 800BBCE4 9421FF78 */  stwu      r1, -0x88(r1)
/* 0B8CE8 800BBCE8 7C001840 */  cmplw     r0, r3
/* 0B8CEC 800BBCEC 93E10084 */  stw       r31, 0x84(r1)
/* 0B8CF0 800BBCF0 3BE00000 */  li        r31, 0x0
/* 0B8CF4 800BBCF4 93C10080 */  stw       r30, 0x80(r1)
/* 0B8CF8 800BBCF8 93A1007C */  stw       r29, 0x7c(r1)
/* 0B8CFC 800BBCFC 3BA40000 */  addi      r29, r4, 0x0
/* 0B8D00 800BBD00 93810078 */  stw       r28, 0x78(r1)
/* 0B8D04 800BBD04 41820020 */  beq       lbl_800BBD24
/* 0B8D08 800BBD08 38040140 */  addi      r0, r4, 0x140
/* 0B8D0C 800BBD0C 7C001840 */  cmplw     r0, r3
/* 0B8D10 800BBD10 38840110 */  addi      r4, r4, 0x110
/* 0B8D14 800BBD14 3BA40000 */  addi      r29, r4, 0x0
/* 0B8D18 800BBD18 3BE00001 */  li        r31, 0x1
/* 0B8D1C 800BBD1C 41820008 */  beq       lbl_800BBD24
/* 0B8D20 800BBD20 3BE00002 */  li        r31, 0x2
lbl_800BBD24:
/* 0B8D24 800BBD24 807D0080 */  lwz       r3, 0x80(r29)
/* 0B8D28 800BBD28 3803002F */  addi      r0, r3, 0x2f
/* 0B8D2C 800BBD2C 54030034 */  clrrwi    r3, r0, 5
/* 0B8D30 800BBD30 83C30020 */  lwz       r30, 0x20(r3)
/* 0B8D34 800BBD34 4BFFF311 */  bl        DummyLen
/* 0B8D38 800BBD38 801D002C */  lwz       r0, 0x2c(r29)
/* 0B8D3C 800BBD3C 3B830000 */  addi      r28, r3, 0x0
/* 0B8D40 800BBD40 38DC0000 */  addi      r6, r28, 0x0
/* 0B8D44 800BBD44 7FC00278 */  xor       r0, r30, r0
/* 0B8D48 800BBD48 5404001E */  clrrwi    r4, r0, 16
/* 0B8D4C 800BBD4C 387F0000 */  addi      r3, r31, 0x0
/* 0B8D50 800BBD50 38A10034 */  addi      r5, r1, 0x34
/* 0B8D54 800BBD54 38E00001 */  li        r7, 0x1
/* 0B8D58 800BBD58 4BFFF1A9 */  bl        ReadArrayUnlock
/* 0B8D5C 800BBD5C 2C030000 */  cmpwi     r3, 0x0
/* 0B8D60 800BBD60 4080001C */  bge       lbl_800BBD7C
/* 0B8D64 800BBD64 7FE3FB78 */  mr        r3, r31
/* 0B8D68 800BBD68 4BFE7075 */  bl        EXIUnlock
/* 0B8D6C 800BBD6C 387F0000 */  addi      r3, r31, 0x0
/* 0B8D70 800BBD70 3880FFFD */  li        r4, -0x3
/* 0B8D74 800BBD74 48002141 */  bl        __CARDMountCallback
/* 0B8D78 800BBD78 4800025C */  b         lbl_800BBFD4
lbl_800BBD7C:
/* 0B8D7C 800BBD7C 809D0014 */  lwz       r4, 0x14(r29)
/* 0B8D80 800BBD80 38600000 */  li        r3, 0x0
/* 0B8D84 800BBD84 801D002C */  lwz       r0, 0x2c(r29)
/* 0B8D88 800BBD88 7C9C2214 */  add       r4, r28, r4
/* 0B8D8C 800BBD8C 38840004 */  addi      r4, r4, 0x4
/* 0B8D90 800BBD90 54841838 */  slwi      r4, r4, 3
/* 0B8D94 800BBD94 38840001 */  addi      r4, r4, 0x1
/* 0B8D98 800BBD98 28040000 */  cmplwi    r4, 0x0
/* 0B8D9C 800BBD9C 40810168 */  ble       lbl_800BBF04
/* 0B8DA0 800BBDA0 28040008 */  cmplwi    r4, 0x8
/* 0B8DA4 800BBDA4 38C4FFF8 */  subi      r6, r4, 0x8
/* 0B8DA8 800BBDA8 40810124 */  ble       lbl_800BBECC
/* 0B8DAC 800BBDAC 38A60007 */  addi      r5, r6, 0x7
/* 0B8DB0 800BBDB0 54A5E8FE */  srwi      r5, r5, 3
/* 0B8DB4 800BBDB4 28060000 */  cmplwi    r6, 0x0
/* 0B8DB8 800BBDB8 7CA903A6 */  mtctr     r5
/* 0B8DBC 800BBDBC 40810110 */  ble       lbl_800BBECC
lbl_800BBDC0:
/* 0B8DC0 800BBDC0 54053830 */  slwi      r5, r0, 7
/* 0B8DC4 800BBDC4 54067820 */  slwi      r6, r0, 15
/* 0B8DC8 800BBDC8 7C052A78 */  xor       r5, r0, r5
/* 0B8DCC 800BBDCC 7CC52A78 */  xor       r5, r6, r5
/* 0B8DD0 800BBDD0 5407B810 */  slwi      r7, r0, 23
/* 0B8DD4 800BBDD4 7CE52A38 */  eqv       r5, r7, r5
/* 0B8DD8 800BBDD8 5406083C */  slwi      r6, r0, 1
/* 0B8DDC 800BBDDC 54A017BC */  rlwinm    r0, r5, 2, 30, 30
/* 0B8DE0 800BBDE0 7CC70378 */  or        r7, r6, r0
/* 0B8DE4 800BBDE4 54E03830 */  slwi      r0, r7, 7
/* 0B8DE8 800BBDE8 54E57820 */  slwi      r5, r7, 15
/* 0B8DEC 800BBDEC 7CE00278 */  xor       r0, r7, r0
/* 0B8DF0 800BBDF0 54E6B810 */  slwi      r6, r7, 23
/* 0B8DF4 800BBDF4 7CA00278 */  xor       r0, r5, r0
/* 0B8DF8 800BBDF8 7CC00238 */  eqv       r0, r6, r0
/* 0B8DFC 800BBDFC 540817BC */  rlwinm    r8, r0, 2, 30, 30
/* 0B8E00 800BBE00 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8E04 800BBE04 55003830 */  slwi      r0, r8, 7
/* 0B8E08 800BBE08 55057820 */  slwi      r5, r8, 15
/* 0B8E0C 800BBE0C 7D000278 */  xor       r0, r8, r0
/* 0B8E10 800BBE10 5506B810 */  slwi      r6, r8, 23
/* 0B8E14 800BBE14 7CA00278 */  xor       r0, r5, r0
/* 0B8E18 800BBE18 7CC00238 */  eqv       r0, r6, r0
/* 0B8E1C 800BBE1C 540717BC */  rlwinm    r7, r0, 2, 30, 30
/* 0B8E20 800BBE20 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8E24 800BBE24 54E03830 */  slwi      r0, r7, 7
/* 0B8E28 800BBE28 54E57820 */  slwi      r5, r7, 15
/* 0B8E2C 800BBE2C 7CE00278 */  xor       r0, r7, r0
/* 0B8E30 800BBE30 54E6B810 */  slwi      r6, r7, 23
/* 0B8E34 800BBE34 7CA00278 */  xor       r0, r5, r0
/* 0B8E38 800BBE38 7CC00238 */  eqv       r0, r6, r0
/* 0B8E3C 800BBE3C 540817BC */  rlwinm    r8, r0, 2, 30, 30
/* 0B8E40 800BBE40 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8E44 800BBE44 55003830 */  slwi      r0, r8, 7
/* 0B8E48 800BBE48 55057820 */  slwi      r5, r8, 15
/* 0B8E4C 800BBE4C 7D000278 */  xor       r0, r8, r0
/* 0B8E50 800BBE50 5506B810 */  slwi      r6, r8, 23
/* 0B8E54 800BBE54 7CA00278 */  xor       r0, r5, r0
/* 0B8E58 800BBE58 7CC00238 */  eqv       r0, r6, r0
/* 0B8E5C 800BBE5C 540717BC */  rlwinm    r7, r0, 2, 30, 30
/* 0B8E60 800BBE60 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8E64 800BBE64 54E03830 */  slwi      r0, r7, 7
/* 0B8E68 800BBE68 54E57820 */  slwi      r5, r7, 15
/* 0B8E6C 800BBE6C 7CE00278 */  xor       r0, r7, r0
/* 0B8E70 800BBE70 54E6B810 */  slwi      r6, r7, 23
/* 0B8E74 800BBE74 7CA00278 */  xor       r0, r5, r0
/* 0B8E78 800BBE78 7CC00238 */  eqv       r0, r6, r0
/* 0B8E7C 800BBE7C 540817BC */  rlwinm    r8, r0, 2, 30, 30
/* 0B8E80 800BBE80 50E8083A */  rlwimi    r8, r7, 1, 0, 29
/* 0B8E84 800BBE84 55003830 */  slwi      r0, r8, 7
/* 0B8E88 800BBE88 55057820 */  slwi      r5, r8, 15
/* 0B8E8C 800BBE8C 7D000278 */  xor       r0, r8, r0
/* 0B8E90 800BBE90 5506B810 */  slwi      r6, r8, 23
/* 0B8E94 800BBE94 7CA00278 */  xor       r0, r5, r0
/* 0B8E98 800BBE98 7CC00238 */  eqv       r0, r6, r0
/* 0B8E9C 800BBE9C 540717BC */  rlwinm    r7, r0, 2, 30, 30
/* 0B8EA0 800BBEA0 5107083A */  rlwimi    r7, r8, 1, 0, 29
/* 0B8EA4 800BBEA4 54E03830 */  slwi      r0, r7, 7
/* 0B8EA8 800BBEA8 54E57820 */  slwi      r5, r7, 15
/* 0B8EAC 800BBEAC 7CE00278 */  xor       r0, r7, r0
/* 0B8EB0 800BBEB0 54E6B810 */  slwi      r6, r7, 23
/* 0B8EB4 800BBEB4 7CA00278 */  xor       r0, r5, r0
/* 0B8EB8 800BBEB8 7CC00238 */  eqv       r0, r6, r0
/* 0B8EBC 800BBEBC 540017BC */  rlwinm    r0, r0, 2, 30, 30
/* 0B8EC0 800BBEC0 50E0083A */  rlwimi    r0, r7, 1, 0, 29
/* 0B8EC4 800BBEC4 38630008 */  addi      r3, r3, 0x8
/* 0B8EC8 800BBEC8 4200FEF8 */  bdnz      lbl_800BBDC0
lbl_800BBECC:
/* 0B8ECC 800BBECC 7CA32050 */  subf      r5, r3, r4
/* 0B8ED0 800BBED0 7C032040 */  cmplw     r3, r4
/* 0B8ED4 800BBED4 7CA903A6 */  mtctr     r5
/* 0B8ED8 800BBED8 4080002C */  bge       lbl_800BBF04
lbl_800BBEDC:
/* 0B8EDC 800BBEDC 54033830 */  slwi      r3, r0, 7
/* 0B8EE0 800BBEE0 54047820 */  slwi      r4, r0, 15
/* 0B8EE4 800BBEE4 7C031A78 */  xor       r3, r0, r3
/* 0B8EE8 800BBEE8 5405B810 */  slwi      r5, r0, 23
/* 0B8EEC 800BBEEC 7C831A78 */  xor       r3, r4, r3
/* 0B8EF0 800BBEF0 7CA31A38 */  eqv       r3, r5, r3
/* 0B8EF4 800BBEF4 5404083C */  slwi      r4, r0, 1
/* 0B8EF8 800BBEF8 546017BC */  rlwinm    r0, r3, 2, 30, 30
/* 0B8EFC 800BBEFC 7C800378 */  or        r0, r4, r0
/* 0B8F00 800BBF00 4200FFDC */  bdnz      lbl_800BBEDC
lbl_800BBF04:
/* 0B8F04 800BBF04 54033830 */  slwi      r3, r0, 7
/* 0B8F08 800BBF08 54047820 */  slwi      r4, r0, 15
/* 0B8F0C 800BBF0C 7C031A78 */  xor       r3, r0, r3
/* 0B8F10 800BBF10 5405B810 */  slwi      r5, r0, 23
/* 0B8F14 800BBF14 7C831A78 */  xor       r3, r4, r3
/* 0B8F18 800BBF18 7CA31A38 */  eqv       r3, r5, r3
/* 0B8F1C 800BBF1C 54630FFE */  srwi      r3, r3, 31
/* 0B8F20 800BBF20 7C001B78 */  or        r0, r0, r3
/* 0B8F24 800BBF24 901D002C */  stw       r0, 0x2c(r29)
/* 0B8F28 800BBF28 4BFFF11D */  bl        DummyLen
/* 0B8F2C 800BBF2C 801D002C */  lwz       r0, 0x2c(r29)
/* 0B8F30 800BBF30 57C4801E */  slwi      r4, r30, 16
/* 0B8F34 800BBF34 38C30000 */  addi      r6, r3, 0x0
/* 0B8F38 800BBF38 7C800278 */  xor       r0, r4, r0
/* 0B8F3C 800BBF3C 5404001E */  clrrwi    r4, r0, 16
/* 0B8F40 800BBF40 387F0000 */  addi      r3, r31, 0x0
/* 0B8F44 800BBF44 38A10034 */  addi      r5, r1, 0x34
/* 0B8F48 800BBF48 38E00001 */  li        r7, 0x1
/* 0B8F4C 800BBF4C 4BFFEFB5 */  bl        ReadArrayUnlock
/* 0B8F50 800BBF50 2C030000 */  cmpwi     r3, 0x0
/* 0B8F54 800BBF54 4080001C */  bge       lbl_800BBF70
/* 0B8F58 800BBF58 7FE3FB78 */  mr        r3, r31
/* 0B8F5C 800BBF5C 4BFE6E81 */  bl        EXIUnlock
/* 0B8F60 800BBF60 387F0000 */  addi      r3, r31, 0x0
/* 0B8F64 800BBF64 3880FFFD */  li        r4, -0x3
/* 0B8F68 800BBF68 48001F4D */  bl        __CARDMountCallback
/* 0B8F6C 800BBF6C 48000068 */  b         lbl_800BBFD4
lbl_800BBF70:
/* 0B8F70 800BBF70 387F0000 */  addi      r3, r31, 0x0
/* 0B8F74 800BBF74 38810030 */  addi      r4, r1, 0x30
/* 0B8F78 800BBF78 4BFFDF4D */  bl        __CARDReadStatus
/* 0B8F7C 800BBF7C 3B830000 */  addi      r28, r3, 0x0
/* 0B8F80 800BBF80 387F0000 */  addi      r3, r31, 0x0
/* 0B8F84 800BBF84 4BFE6361 */  bl        EXIProbe
/* 0B8F88 800BBF88 2C030000 */  cmpwi     r3, 0x0
/* 0B8F8C 800BBF8C 4082001C */  bne       lbl_800BBFA8
/* 0B8F90 800BBF90 7FE3FB78 */  mr        r3, r31
/* 0B8F94 800BBF94 4BFE6E49 */  bl        EXIUnlock
/* 0B8F98 800BBF98 387F0000 */  addi      r3, r31, 0x0
/* 0B8F9C 800BBF9C 3880FFFD */  li        r4, -0x3
/* 0B8FA0 800BBFA0 48001F15 */  bl        __CARDMountCallback
/* 0B8FA4 800BBFA4 48000030 */  b         lbl_800BBFD4
lbl_800BBFA8:
/* 0B8FA8 800BBFA8 2C1C0000 */  cmpwi     r28, 0x0
/* 0B8FAC 800BBFAC 4082001C */  bne       lbl_800BBFC8
/* 0B8FB0 800BBFB0 88010030 */  lbz       r0, 0x30(r1)
/* 0B8FB4 800BBFB4 54000673 */  rlwinm.   r0, r0, 0, 25, 25
/* 0B8FB8 800BBFB8 40820010 */  bne       lbl_800BBFC8
/* 0B8FBC 800BBFBC 7FE3FB78 */  mr        r3, r31
/* 0B8FC0 800BBFC0 4BFE6E1D */  bl        EXIUnlock
/* 0B8FC4 800BBFC4 3B80FFFB */  li        r28, -0x5
lbl_800BBFC8:
/* 0B8FC8 800BBFC8 387F0000 */  addi      r3, r31, 0x0
/* 0B8FCC 800BBFCC 389C0000 */  addi      r4, r28, 0x0
/* 0B8FD0 800BBFD0 48001EE5 */  bl        __CARDMountCallback
lbl_800BBFD4:
/* 0B8FD4 800BBFD4 8001008C */  lwz       r0, 0x8c(r1)
/* 0B8FD8 800BBFD8 83E10084 */  lwz       r31, 0x84(r1)
/* 0B8FDC 800BBFDC 83C10080 */  lwz       r30, 0x80(r1)
/* 0B8FE0 800BBFE0 83A1007C */  lwz       r29, 0x7c(r1)
/* 0B8FE4 800BBFE4 83810078 */  lwz       r28, 0x78(r1)
/* 0B8FE8 800BBFE8 38210088 */  addi      r1, r1, 0x88
/* 0B8FEC 800BBFEC 7C0803A6 */  mtlr      r0
/* 0B8FF0 800BBFF0 4E800020 */  blr

# 0x800F4BA0 - 0x800F4D00
.section .data, "wa"

.balign 8

glabel D_800F4BA0
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000021
	.long 0x02FF0021
	.long 0x13061203
	.long 0x12041305
	.long 0x009200FF
	.long 0x0088FFFF
	.long 0x0089FFFF
	.long 0x008AFFFF
	.long 0x008BFFFF
	.long 0x8F0002BF
	.long 0x008816FC
	.long 0xDCD116FD
	.long 0x000016FB
	.long 0x000102BF
	.long 0x008E25FF
	.long 0x0380FF00
	.long 0x02940027
	.long 0x02BF008E
	.long 0x1FDF24FF
	.long 0x02400FFF
	.long 0x00980400
	.long 0x009A0010
	.long 0x00990000
	.long 0x8E0002BF
	.long 0x009402BF
	.long 0x864402BF
	.long 0x008816FC
	.long 0xDCD116FD
	.long 0x000316FB
	.long 0x00018F00
	.long 0x02BF008E
	.long 0x0380CDD1
	.long 0x02940048
	.long 0x27FF0380
	.long 0x00010295
	.long 0x005A0380
	.long 0x00020295
	.long 0x8000029F
	.long 0x00480021
	.long 0x8E0002BF
	.long 0x008E25FF
	.long 0x02BF008E
	.long 0x25FF02BF
	.long 0x008E25FF
	.long 0x02BF008E
	.long 0x00C5FFFF
	.long 0x03400FFF
	.long 0x1C9F02BF
	.long 0x008E00C7
	.long 0xFFFF02BF
	.long 0x008E00C6
	.long 0xFFFF02BF
	.long 0x008E00C0
	.long 0xFFFF02BF
	.long 0x008E20FF
	.long 0x03400FFF
	.long 0x1F5F02BF
	.long 0x008E21FF
	.long 0x02BF008E
	.long 0x23FF1205
	.long 0x1206029F
	.long 0x80B50021
	.long 0x27FC03C0
	.long 0x8000029D
	.long 0x008802DF
	.long 0x27FE03C0
	.long 0x8000029C
	.long 0x008E02DF
	.long 0x2ECE2CCF
	.long 0x00F8FFCD
	.long 0x00F9FFC9
	.long 0x00FAFFCB
	.long 0x26C902C0
	.long 0x0004029D
	.long 0x009C02DF
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000

# 0x8018B7D8 - 0x8018B7E0
.section .sdata, "wa"

glabel D_8018B7D8
	.long 0x00000001
	.long 0x00000000
