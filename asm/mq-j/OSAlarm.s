# OSAlarm.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009BCB0 - 0x8009C360

glabel OSInitAlarm
/* 098CB0 8009BCB0 7C0802A6 */  mflr      r0
/* 098CB4 8009BCB4 38600008 */  li        r3, 0x8
/* 098CB8 8009BCB8 90010004 */  stw       r0, 0x4(r1)
/* 098CBC 8009BCBC 9421FFF8 */  stwu      r1, -0x8(r1)
/* 098CC0 8009BCC0 4BFFFE71 */  bl        __OSGetExceptionHandler
/* 098CC4 8009BCC4 3C80800A */  lis       r4, DecrementerExceptionHandler@ha
/* 098CC8 8009BCC8 3884C310 */  addi      r4, r4, DecrementerExceptionHandler@l
/* 098CCC 8009BCCC 7C032040 */  cmplw     r3, r4
/* 098CD0 8009BCD0 4182001C */  beq       lbl_8009BCEC
/* 098CD4 8009BCD4 38000000 */  li        r0, 0x0
/* 098CD8 8009BCD8 386D8AF0 */  li        r3, AlarmQueue@sda21
/* 098CDC 8009BCDC 90030004 */  stw       r0, 0x4(r3)
/* 098CE0 8009BCE0 38600008 */  li        r3, 0x8
/* 098CE4 8009BCE4 900D8AF0 */  stw       r0, AlarmQueue@sda21(r0)
/* 098CE8 8009BCE8 4BFFFE2D */  bl        __OSSetExceptionHandler
lbl_8009BCEC:
/* 098CEC 8009BCEC 8001000C */  lwz       r0, 0xc(r1)
/* 098CF0 8009BCF0 38210008 */  addi      r1, r1, 0x8
/* 098CF4 8009BCF4 7C0803A6 */  mtlr      r0
/* 098CF8 8009BCF8 4E800020 */  blr

glabel OSCreateAlarm
/* 098CFC 8009BCFC 38000000 */  li        r0, 0x0
/* 098D00 8009BD00 90030000 */  stw       r0, 0x0(r3)
/* 098D04 8009BD04 90030004 */  stw       r0, 0x4(r3)
/* 098D08 8009BD08 4E800020 */  blr

InsertAlarm:
/* 098D0C 8009BD0C 7C0802A6 */  mflr      r0
/* 098D10 8009BD10 90010004 */  stw       r0, 0x4(r1)
/* 098D14 8009BD14 9421FFC0 */  stwu      r1, -0x40(r1)
/* 098D18 8009BD18 BF210024 */  stmw      r25, 0x24(r1)
/* 098D1C 8009BD1C 3B800000 */  li        r28, 0x0
/* 098D20 8009BD20 7C7D1B78 */  mr        r29, r3
/* 098D24 8009BD24 6F848000 */  xoris     r4, r28, 0x8000
/* 098D28 8009BD28 3B250000 */  addi      r25, r5, 0x0
/* 098D2C 8009BD2C 3BC60000 */  addi      r30, r6, 0x0
/* 098D30 8009BD30 3BE70000 */  addi      r31, r7, 0x0
/* 098D34 8009BD34 80030018 */  lwz       r0, 0x18(r3)
/* 098D38 8009BD38 8103001C */  lwz       r8, 0x1c(r3)
/* 098D3C 8009BD3C 6C038000 */  xoris     r3, r0, 0x8000
/* 098D40 8009BD40 7C08E010 */  subfc     r0, r8, r28
/* 098D44 8009BD44 7C632110 */  subfe     r3, r3, r4
/* 098D48 8009BD48 7C642110 */  subfe     r3, r4, r4
/* 098D4C 8009BD4C 7C6300D1 */  neg.      r3, r3
/* 098D50 8009BD50 4182007C */  beq       lbl_8009BDCC
/* 098D54 8009BD54 480057AD */  bl        __OSGetSystemTime
/* 098D58 8009BD58 80FD0020 */  lwz       r7, 0x20(r29)
/* 098D5C 8009BD5C 6C658000 */  xoris     r5, r3, 0x8000
/* 098D60 8009BD60 811D0024 */  lwz       r8, 0x24(r29)
/* 098D64 8009BD64 6CE68000 */  xoris     r6, r7, 0x8000
/* 098D68 8009BD68 7C044010 */  subfc     r0, r4, r8
/* 098D6C 8009BD6C 7CA53110 */  subfe     r5, r5, r6
/* 098D70 8009BD70 7CA63110 */  subfe     r5, r6, r6
/* 098D74 8009BD74 7CA500D1 */  neg.      r5, r5
/* 098D78 8009BD78 3BC80000 */  addi      r30, r8, 0x0
/* 098D7C 8009BD7C 3B270000 */  addi      r25, r7, 0x0
/* 098D80 8009BD80 4182004C */  beq       lbl_8009BDCC
/* 098D84 8009BD84 837D0018 */  lwz       r27, 0x18(r29)
/* 098D88 8009BD88 7C882010 */  subfc     r4, r8, r4
/* 098D8C 8009BD8C 835D001C */  lwz       r26, 0x1c(r29)
/* 098D90 8009BD90 7C671910 */  subfe     r3, r7, r3
/* 098D94 8009BD94 38BB0000 */  addi      r5, r27, 0x0
/* 098D98 8009BD98 38DA0000 */  addi      r6, r26, 0x0
/* 098D9C 8009BD9C 48030859 */  bl        __div2i
/* 098DA0 8009BDA0 38000001 */  li        r0, 0x1
/* 098DA4 8009BDA4 7CA40014 */  addc      r5, r4, r0
/* 098DA8 8009BDA8 7C9B29D6 */  mullw     r4, r27, r5
/* 098DAC 8009BDAC 7C1A2816 */  mulhwu    r0, r26, r5
/* 098DB0 8009BDB0 7C63E114 */  adde      r3, r3, r28
/* 098DB4 8009BDB4 7C840214 */  add       r4, r4, r0
/* 098DB8 8009BDB8 7C1A19D6 */  mullw     r0, r26, r3
/* 098DBC 8009BDBC 7C7A29D6 */  mullw     r3, r26, r5
/* 098DC0 8009BDC0 7C040214 */  add       r0, r4, r0
/* 098DC4 8009BDC4 7FDE1814 */  addc      r30, r30, r3
/* 098DC8 8009BDC8 7F390114 */  adde      r25, r25, r0
lbl_8009BDCC:
/* 098DCC 8009BDCC 93FD0000 */  stw       r31, 0x0(r29)
/* 098DD0 8009BDD0 6F248000 */  xoris     r4, r25, 0x8000
/* 098DD4 8009BDD4 93DD000C */  stw       r30, 0xc(r29)
/* 098DD8 8009BDD8 933D0008 */  stw       r25, 0x8(r29)
/* 098DDC 8009BDDC 80CD8AF0 */  lwz       r6, AlarmQueue@sda21(r0)
/* 098DE0 8009BDE0 480000C4 */  b         lbl_8009BEA4
lbl_8009BDE4:
/* 098DE4 8009BDE4 80060008 */  lwz       r0, 0x8(r6)
/* 098DE8 8009BDE8 80A6000C */  lwz       r5, 0xc(r6)
/* 098DEC 8009BDEC 6C038000 */  xoris     r3, r0, 0x8000
/* 098DF0 8009BDF0 7C05F010 */  subfc     r0, r5, r30
/* 098DF4 8009BDF4 7C632110 */  subfe     r3, r3, r4
/* 098DF8 8009BDF8 7C642110 */  subfe     r3, r4, r4
/* 098DFC 8009BDFC 7C6300D1 */  neg.      r3, r3
/* 098E00 8009BE00 418200A0 */  beq       lbl_8009BEA0
/* 098E04 8009BE04 80060010 */  lwz       r0, 0x10(r6)
/* 098E08 8009BE08 901D0010 */  stw       r0, 0x10(r29)
/* 098E0C 8009BE0C 93A60010 */  stw       r29, 0x10(r6)
/* 098E10 8009BE10 90DD0014 */  stw       r6, 0x14(r29)
/* 098E14 8009BE14 807D0010 */  lwz       r3, 0x10(r29)
/* 098E18 8009BE18 28030000 */  cmplwi    r3, 0x0
/* 098E1C 8009BE1C 4182000C */  beq       lbl_8009BE28
/* 098E20 8009BE20 93A30014 */  stw       r29, 0x14(r3)
/* 098E24 8009BE24 48000124 */  b         lbl_8009BF48
lbl_8009BE28:
/* 098E28 8009BE28 93AD8AF0 */  stw       r29, AlarmQueue@sda21(r0)
/* 098E2C 8009BE2C 480056D5 */  bl        __OSGetSystemTime
/* 098E30 8009BE30 80DD000C */  lwz       r6, 0xc(r29)
/* 098E34 8009BE34 38E00000 */  li        r7, 0x0
/* 098E38 8009BE38 801D0008 */  lwz       r0, 0x8(r29)
/* 098E3C 8009BE3C 6CE58000 */  xoris     r5, r7, 0x8000
/* 098E40 8009BE40 7D043010 */  subfc     r8, r4, r6
/* 098E44 8009BE44 7C030110 */  subfe     r0, r3, r0
/* 098E48 8009BE48 6C068000 */  xoris     r6, r0, 0x8000
/* 098E4C 8009BE4C 7C074010 */  subfc     r0, r7, r8
/* 098E50 8009BE50 7CA53110 */  subfe     r5, r5, r6
/* 098E54 8009BE54 7CA63110 */  subfe     r5, r6, r6
/* 098E58 8009BE58 7CA500D1 */  neg.      r5, r5
/* 098E5C 8009BE5C 41820010 */  beq       lbl_8009BE6C
/* 098E60 8009BE60 38600000 */  li        r3, 0x0
/* 098E64 8009BE64 4BFFF451 */  bl        PPCMtdec
/* 098E68 8009BE68 480000E0 */  b         lbl_8009BF48
lbl_8009BE6C:
/* 098E6C 8009BE6C 3C808000 */  lis       r4, 0x8000
/* 098E70 8009BE70 6CE38000 */  xoris     r3, r7, 0x8000
/* 098E74 8009BE74 7C044010 */  subfc     r0, r4, r8
/* 098E78 8009BE78 7C633110 */  subfe     r3, r3, r6
/* 098E7C 8009BE7C 7C663110 */  subfe     r3, r6, r6
/* 098E80 8009BE80 7C6300D1 */  neg.      r3, r3
/* 098E84 8009BE84 41820010 */  beq       lbl_8009BE94
/* 098E88 8009BE88 7D034378 */  mr        r3, r8
/* 098E8C 8009BE8C 4BFFF429 */  bl        PPCMtdec
/* 098E90 8009BE90 480000B8 */  b         lbl_8009BF48
lbl_8009BE94:
/* 098E94 8009BE94 3864FFFF */  subi      r3, r4, 0x1
/* 098E98 8009BE98 4BFFF41D */  bl        PPCMtdec
/* 098E9C 8009BE9C 480000AC */  b         lbl_8009BF48
lbl_8009BEA0:
/* 098EA0 8009BEA0 80C60014 */  lwz       r6, 0x14(r6)
lbl_8009BEA4:
/* 098EA4 8009BEA4 28060000 */  cmplwi    r6, 0x0
/* 098EA8 8009BEA8 4082FF3C */  bne       lbl_8009BDE4
/* 098EAC 8009BEAC 3BC00000 */  li        r30, 0x0
/* 098EB0 8009BEB0 93DD0014 */  stw       r30, 0x14(r29)
/* 098EB4 8009BEB4 386D8AF0 */  li        r3, AlarmQueue@sda21
/* 098EB8 8009BEB8 80830004 */  lwz       r4, 0x4(r3)
/* 098EBC 8009BEBC 97A30004 */  stwu      r29, 0x4(r3)
/* 098EC0 8009BEC0 28040000 */  cmplwi    r4, 0x0
/* 098EC4 8009BEC4 909D0010 */  stw       r4, 0x10(r29)
/* 098EC8 8009BEC8 4182000C */  beq       lbl_8009BED4
/* 098ECC 8009BECC 93A40014 */  stw       r29, 0x14(r4)
/* 098ED0 8009BED0 48000078 */  b         lbl_8009BF48
lbl_8009BED4:
/* 098ED4 8009BED4 93A30000 */  stw       r29, 0x0(r3)
/* 098ED8 8009BED8 93AD8AF0 */  stw       r29, AlarmQueue@sda21(r0)
/* 098EDC 8009BEDC 48005625 */  bl        __OSGetSystemTime
/* 098EE0 8009BEE0 80DD000C */  lwz       r6, 0xc(r29)
/* 098EE4 8009BEE4 6FC58000 */  xoris     r5, r30, 0x8000
/* 098EE8 8009BEE8 801D0008 */  lwz       r0, 0x8(r29)
/* 098EEC 8009BEEC 7CE43010 */  subfc     r7, r4, r6
/* 098EF0 8009BEF0 7C030110 */  subfe     r0, r3, r0
/* 098EF4 8009BEF4 6C068000 */  xoris     r6, r0, 0x8000
/* 098EF8 8009BEF8 7C1E3810 */  subfc     r0, r30, r7
/* 098EFC 8009BEFC 7CA53110 */  subfe     r5, r5, r6
/* 098F00 8009BF00 7CA63110 */  subfe     r5, r6, r6
/* 098F04 8009BF04 7CA500D1 */  neg.      r5, r5
/* 098F08 8009BF08 41820010 */  beq       lbl_8009BF18
/* 098F0C 8009BF0C 38600000 */  li        r3, 0x0
/* 098F10 8009BF10 4BFFF3A5 */  bl        PPCMtdec
/* 098F14 8009BF14 48000034 */  b         lbl_8009BF48
lbl_8009BF18:
/* 098F18 8009BF18 3C808000 */  lis       r4, 0x8000
/* 098F1C 8009BF1C 6FC38000 */  xoris     r3, r30, 0x8000
/* 098F20 8009BF20 7C043810 */  subfc     r0, r4, r7
/* 098F24 8009BF24 7C633110 */  subfe     r3, r3, r6
/* 098F28 8009BF28 7C663110 */  subfe     r3, r6, r6
/* 098F2C 8009BF2C 7C6300D1 */  neg.      r3, r3
/* 098F30 8009BF30 41820010 */  beq       lbl_8009BF40
/* 098F34 8009BF34 7CE33B78 */  mr        r3, r7
/* 098F38 8009BF38 4BFFF37D */  bl        PPCMtdec
/* 098F3C 8009BF3C 4800000C */  b         lbl_8009BF48
lbl_8009BF40:
/* 098F40 8009BF40 3864FFFF */  subi      r3, r4, 0x1
/* 098F44 8009BF44 4BFFF371 */  bl        PPCMtdec
lbl_8009BF48:
/* 098F48 8009BF48 BB210024 */  lmw       r25, 0x24(r1)
/* 098F4C 8009BF4C 80010044 */  lwz       r0, 0x44(r1)
/* 098F50 8009BF50 38210040 */  addi      r1, r1, 0x40
/* 098F54 8009BF54 7C0803A6 */  mtlr      r0
/* 098F58 8009BF58 4E800020 */  blr

glabel OSSetAlarm
/* 098F5C 8009BF5C 7C0802A6 */  mflr      r0
/* 098F60 8009BF60 90010004 */  stw       r0, 0x4(r1)
/* 098F64 8009BF64 9421FFC8 */  stwu      r1, -0x38(r1)
/* 098F68 8009BF68 BF610024 */  stmw      r27, 0x24(r1)
/* 098F6C 8009BF6C 3B630000 */  addi      r27, r3, 0x0
/* 098F70 8009BF70 3BA50000 */  addi      r29, r5, 0x0
/* 098F74 8009BF74 3B860000 */  addi      r28, r6, 0x0
/* 098F78 8009BF78 3BC70000 */  addi      r30, r7, 0x0
/* 098F7C 8009BF7C 480022CD */  bl        OSDisableInterrupts
/* 098F80 8009BF80 38000000 */  li        r0, 0x0
/* 098F84 8009BF84 901B001C */  stw       r0, 0x1c(r27)
/* 098F88 8009BF88 7C7F1B78 */  mr        r31, r3
/* 098F8C 8009BF8C 901B0018 */  stw       r0, 0x18(r27)
/* 098F90 8009BF90 48005571 */  bl        __OSGetSystemTime
/* 098F94 8009BF94 7CDC2014 */  addc      r6, r28, r4
/* 098F98 8009BF98 7CBD1914 */  adde      r5, r29, r3
/* 098F9C 8009BF9C 387B0000 */  addi      r3, r27, 0x0
/* 098FA0 8009BFA0 38FE0000 */  addi      r7, r30, 0x0
/* 098FA4 8009BFA4 4BFFFD69 */  bl        InsertAlarm
/* 098FA8 8009BFA8 7FE3FB78 */  mr        r3, r31
/* 098FAC 8009BFAC 480022C5 */  bl        OSRestoreInterrupts
/* 098FB0 8009BFB0 BB610024 */  lmw       r27, 0x24(r1)
/* 098FB4 8009BFB4 8001003C */  lwz       r0, 0x3c(r1)
/* 098FB8 8009BFB8 38210038 */  addi      r1, r1, 0x38
/* 098FBC 8009BFBC 7C0803A6 */  mtlr      r0
/* 098FC0 8009BFC0 4E800020 */  blr

glabel OSCancelAlarm
/* 098FC4 8009BFC4 7C0802A6 */  mflr      r0
/* 098FC8 8009BFC8 90010004 */  stw       r0, 0x4(r1)
/* 098FCC 8009BFCC 9421FFE0 */  stwu      r1, -0x20(r1)
/* 098FD0 8009BFD0 93E1001C */  stw       r31, 0x1c(r1)
/* 098FD4 8009BFD4 93C10018 */  stw       r30, 0x18(r1)
/* 098FD8 8009BFD8 7C7E1B78 */  mr        r30, r3
/* 098FDC 8009BFDC 93A10014 */  stw       r29, 0x14(r1)
/* 098FE0 8009BFE0 48002269 */  bl        OSDisableInterrupts
/* 098FE4 8009BFE4 801E0000 */  lwz       r0, 0x0(r30)
/* 098FE8 8009BFE8 3BE30000 */  addi      r31, r3, 0x0
/* 098FEC 8009BFEC 28000000 */  cmplwi    r0, 0x0
/* 098FF0 8009BFF0 40820010 */  bne       lbl_8009C000
/* 098FF4 8009BFF4 7FE3FB78 */  mr        r3, r31
/* 098FF8 8009BFF8 48002279 */  bl        OSRestoreInterrupts
/* 098FFC 8009BFFC 480000C8 */  b         lbl_8009C0C4
lbl_8009C000:
/* 099000 8009C000 83BE0014 */  lwz       r29, 0x14(r30)
/* 099004 8009C004 281D0000 */  cmplwi    r29, 0x0
/* 099008 8009C008 40820014 */  bne       lbl_8009C01C
/* 09900C 8009C00C 801E0010 */  lwz       r0, 0x10(r30)
/* 099010 8009C010 386D8AF0 */  li        r3, AlarmQueue@sda21
/* 099014 8009C014 90030004 */  stw       r0, 0x4(r3)
/* 099018 8009C018 4800000C */  b         lbl_8009C024
lbl_8009C01C:
/* 09901C 8009C01C 801E0010 */  lwz       r0, 0x10(r30)
/* 099020 8009C020 901D0010 */  stw       r0, 0x10(r29)
lbl_8009C024:
/* 099024 8009C024 807E0010 */  lwz       r3, 0x10(r30)
/* 099028 8009C028 28030000 */  cmplwi    r3, 0x0
/* 09902C 8009C02C 4182000C */  beq       lbl_8009C038
/* 099030 8009C030 93A30014 */  stw       r29, 0x14(r3)
/* 099034 8009C034 48000080 */  b         lbl_8009C0B4
lbl_8009C038:
/* 099038 8009C038 281D0000 */  cmplwi    r29, 0x0
/* 09903C 8009C03C 93AD8AF0 */  stw       r29, AlarmQueue@sda21(r0)
/* 099040 8009C040 41820074 */  beq       lbl_8009C0B4
/* 099044 8009C044 480054BD */  bl        __OSGetSystemTime
/* 099048 8009C048 80DD000C */  lwz       r6, 0xc(r29)
/* 09904C 8009C04C 38E00000 */  li        r7, 0x0
/* 099050 8009C050 801D0008 */  lwz       r0, 0x8(r29)
/* 099054 8009C054 6CE58000 */  xoris     r5, r7, 0x8000
/* 099058 8009C058 7D043010 */  subfc     r8, r4, r6
/* 09905C 8009C05C 7C030110 */  subfe     r0, r3, r0
/* 099060 8009C060 6C068000 */  xoris     r6, r0, 0x8000
/* 099064 8009C064 7C074010 */  subfc     r0, r7, r8
/* 099068 8009C068 7CA53110 */  subfe     r5, r5, r6
/* 09906C 8009C06C 7CA63110 */  subfe     r5, r6, r6
/* 099070 8009C070 7CA500D1 */  neg.      r5, r5
/* 099074 8009C074 41820010 */  beq       lbl_8009C084
/* 099078 8009C078 38600000 */  li        r3, 0x0
/* 09907C 8009C07C 4BFFF239 */  bl        PPCMtdec
/* 099080 8009C080 48000034 */  b         lbl_8009C0B4
lbl_8009C084:
/* 099084 8009C084 3C808000 */  lis       r4, 0x8000
/* 099088 8009C088 6CE38000 */  xoris     r3, r7, 0x8000
/* 09908C 8009C08C 7C044010 */  subfc     r0, r4, r8
/* 099090 8009C090 7C633110 */  subfe     r3, r3, r6
/* 099094 8009C094 7C663110 */  subfe     r3, r6, r6
/* 099098 8009C098 7C6300D1 */  neg.      r3, r3
/* 09909C 8009C09C 41820010 */  beq       lbl_8009C0AC
/* 0990A0 8009C0A0 7D034378 */  mr        r3, r8
/* 0990A4 8009C0A4 4BFFF211 */  bl        PPCMtdec
/* 0990A8 8009C0A8 4800000C */  b         lbl_8009C0B4
lbl_8009C0AC:
/* 0990AC 8009C0AC 3864FFFF */  subi      r3, r4, 0x1
/* 0990B0 8009C0B0 4BFFF205 */  bl        PPCMtdec
lbl_8009C0B4:
/* 0990B4 8009C0B4 38000000 */  li        r0, 0x0
/* 0990B8 8009C0B8 901E0000 */  stw       r0, 0x0(r30)
/* 0990BC 8009C0BC 7FE3FB78 */  mr        r3, r31
/* 0990C0 8009C0C0 480021B1 */  bl        OSRestoreInterrupts
lbl_8009C0C4:
/* 0990C4 8009C0C4 80010024 */  lwz       r0, 0x24(r1)
/* 0990C8 8009C0C8 83E1001C */  lwz       r31, 0x1c(r1)
/* 0990CC 8009C0CC 83C10018 */  lwz       r30, 0x18(r1)
/* 0990D0 8009C0D0 83A10014 */  lwz       r29, 0x14(r1)
/* 0990D4 8009C0D4 38210020 */  addi      r1, r1, 0x20
/* 0990D8 8009C0D8 7C0803A6 */  mtlr      r0
/* 0990DC 8009C0DC 4E800020 */  blr

DecrementerExceptionCallback:
/* 0990E0 8009C0E0 7C0802A6 */  mflr      r0
/* 0990E4 8009C0E4 90010004 */  stw       r0, 0x4(r1)
/* 0990E8 8009C0E8 9421FD10 */  stwu      r1, -0x2f0(r1)
/* 0990EC 8009C0EC 93E102EC */  stw       r31, 0x2ec(r1)
/* 0990F0 8009C0F0 93C102E8 */  stw       r30, 0x2e8(r1)
/* 0990F4 8009C0F4 93A102E4 */  stw       r29, 0x2e4(r1)
/* 0990F8 8009C0F8 7C9D2378 */  mr        r29, r4
/* 0990FC 8009C0FC 938102E0 */  stw       r28, 0x2e0(r1)
/* 099100 8009C100 48005401 */  bl        __OSGetSystemTime
/* 099104 8009C104 800D8AF0 */  lwz       r0, AlarmQueue@sda21(r0)
/* 099108 8009C108 3B840000 */  addi      r28, r4, 0x0
/* 09910C 8009C10C 3BC30000 */  addi      r30, r3, 0x0
/* 099110 8009C110 28000000 */  cmplwi    r0, 0x0
/* 099114 8009C114 7C1F0378 */  mr        r31, r0
/* 099118 8009C118 4082000C */  bne       lbl_8009C124
/* 09911C 8009C11C 7FA3EB78 */  mr        r3, r29
/* 099120 8009C120 480014F1 */  bl        OSLoadContext
lbl_8009C124:
/* 099124 8009C124 801F0008 */  lwz       r0, 0x8(r31)
/* 099128 8009C128 6FC48000 */  xoris     r4, r30, 0x8000
/* 09912C 8009C12C 80BF000C */  lwz       r5, 0xc(r31)
/* 099130 8009C130 6C038000 */  xoris     r3, r0, 0x8000
/* 099134 8009C134 7C05E010 */  subfc     r0, r5, r28
/* 099138 8009C138 7C632110 */  subfe     r3, r3, r4
/* 09913C 8009C13C 7C642110 */  subfe     r3, r4, r4
/* 099140 8009C140 7C6300D1 */  neg.      r3, r3
/* 099144 8009C144 4182007C */  beq       lbl_8009C1C0
/* 099148 8009C148 480053B9 */  bl        __OSGetSystemTime
/* 09914C 8009C14C 80DF000C */  lwz       r6, 0xc(r31)
/* 099150 8009C150 38E00000 */  li        r7, 0x0
/* 099154 8009C154 801F0008 */  lwz       r0, 0x8(r31)
/* 099158 8009C158 6CE58000 */  xoris     r5, r7, 0x8000
/* 09915C 8009C15C 7D043010 */  subfc     r8, r4, r6
/* 099160 8009C160 7C030110 */  subfe     r0, r3, r0
/* 099164 8009C164 6C068000 */  xoris     r6, r0, 0x8000
/* 099168 8009C168 7C074010 */  subfc     r0, r7, r8
/* 09916C 8009C16C 7CA53110 */  subfe     r5, r5, r6
/* 099170 8009C170 7CA63110 */  subfe     r5, r6, r6
/* 099174 8009C174 7CA500D1 */  neg.      r5, r5
/* 099178 8009C178 41820010 */  beq       lbl_8009C188
/* 09917C 8009C17C 38600000 */  li        r3, 0x0
/* 099180 8009C180 4BFFF135 */  bl        PPCMtdec
/* 099184 8009C184 48000034 */  b         lbl_8009C1B8
lbl_8009C188:
/* 099188 8009C188 3C808000 */  lis       r4, 0x8000
/* 09918C 8009C18C 6CE38000 */  xoris     r3, r7, 0x8000
/* 099190 8009C190 7C044010 */  subfc     r0, r4, r8
/* 099194 8009C194 7C633110 */  subfe     r3, r3, r6
/* 099198 8009C198 7C663110 */  subfe     r3, r6, r6
/* 09919C 8009C19C 7C6300D1 */  neg.      r3, r3
/* 0991A0 8009C1A0 41820010 */  beq       lbl_8009C1B0
/* 0991A4 8009C1A4 7D034378 */  mr        r3, r8
/* 0991A8 8009C1A8 4BFFF10D */  bl        PPCMtdec
/* 0991AC 8009C1AC 4800000C */  b         lbl_8009C1B8
lbl_8009C1B0:
/* 0991B0 8009C1B0 3864FFFF */  subi      r3, r4, 0x1
/* 0991B4 8009C1B4 4BFFF101 */  bl        PPCMtdec
lbl_8009C1B8:
/* 0991B8 8009C1B8 7FA3EB78 */  mr        r3, r29
/* 0991BC 8009C1BC 48001455 */  bl        OSLoadContext
lbl_8009C1C0:
/* 0991C0 8009C1C0 807F0014 */  lwz       r3, 0x14(r31)
/* 0991C4 8009C1C4 28030000 */  cmplwi    r3, 0x0
/* 0991C8 8009C1C8 906D8AF0 */  stw       r3, AlarmQueue@sda21(r0)
/* 0991CC 8009C1CC 40820014 */  bne       lbl_8009C1E0
/* 0991D0 8009C1D0 38000000 */  li        r0, 0x0
/* 0991D4 8009C1D4 386D8AF0 */  li        r3, AlarmQueue@sda21
/* 0991D8 8009C1D8 90030004 */  stw       r0, 0x4(r3)
/* 0991DC 8009C1DC 4800000C */  b         lbl_8009C1E8
lbl_8009C1E0:
/* 0991E0 8009C1E0 38000000 */  li        r0, 0x0
/* 0991E4 8009C1E4 90030010 */  stw       r0, 0x10(r3)
lbl_8009C1E8:
/* 0991E8 8009C1E8 83DF0000 */  lwz       r30, 0x0(r31)
/* 0991EC 8009C1EC 38C00000 */  li        r6, 0x0
/* 0991F0 8009C1F0 6CC48000 */  xoris     r4, r6, 0x8000
/* 0991F4 8009C1F4 90DF0000 */  stw       r6, 0x0(r31)
/* 0991F8 8009C1F8 801F0018 */  lwz       r0, 0x18(r31)
/* 0991FC 8009C1FC 80BF001C */  lwz       r5, 0x1c(r31)
/* 099200 8009C200 6C038000 */  xoris     r3, r0, 0x8000
/* 099204 8009C204 7C053010 */  subfc     r0, r5, r6
/* 099208 8009C208 7C632110 */  subfe     r3, r3, r4
/* 09920C 8009C20C 7C642110 */  subfe     r3, r4, r4
/* 099210 8009C210 7C6300D1 */  neg.      r3, r3
/* 099214 8009C214 41820018 */  beq       lbl_8009C22C
/* 099218 8009C218 387F0000 */  addi      r3, r31, 0x0
/* 09921C 8009C21C 38FE0000 */  addi      r7, r30, 0x0
/* 099220 8009C220 38C00000 */  li        r6, 0x0
/* 099224 8009C224 38A00000 */  li        r5, 0x0
/* 099228 8009C228 4BFFFAE5 */  bl        InsertAlarm
lbl_8009C22C:
/* 09922C 8009C22C 838D8AF0 */  lwz       r28, AlarmQueue@sda21(r0)
/* 099230 8009C230 281C0000 */  cmplwi    r28, 0x0
/* 099234 8009C234 41820074 */  beq       lbl_8009C2A8
/* 099238 8009C238 480052C9 */  bl        __OSGetSystemTime
/* 09923C 8009C23C 80DC000C */  lwz       r6, 0xc(r28)
/* 099240 8009C240 38E00000 */  li        r7, 0x0
/* 099244 8009C244 801C0008 */  lwz       r0, 0x8(r28)
/* 099248 8009C248 6CE58000 */  xoris     r5, r7, 0x8000
/* 09924C 8009C24C 7D043010 */  subfc     r8, r4, r6
/* 099250 8009C250 7C030110 */  subfe     r0, r3, r0
/* 099254 8009C254 6C068000 */  xoris     r6, r0, 0x8000
/* 099258 8009C258 7C074010 */  subfc     r0, r7, r8
/* 09925C 8009C25C 7CA53110 */  subfe     r5, r5, r6
/* 099260 8009C260 7CA63110 */  subfe     r5, r6, r6
/* 099264 8009C264 7CA500D1 */  neg.      r5, r5
/* 099268 8009C268 41820010 */  beq       lbl_8009C278
/* 09926C 8009C26C 38600000 */  li        r3, 0x0
/* 099270 8009C270 4BFFF045 */  bl        PPCMtdec
/* 099274 8009C274 48000034 */  b         lbl_8009C2A8
lbl_8009C278:
/* 099278 8009C278 3C808000 */  lis       r4, 0x8000
/* 09927C 8009C27C 6CE38000 */  xoris     r3, r7, 0x8000
/* 099280 8009C280 7C044010 */  subfc     r0, r4, r8
/* 099284 8009C284 7C633110 */  subfe     r3, r3, r6
/* 099288 8009C288 7C663110 */  subfe     r3, r6, r6
/* 09928C 8009C28C 7C6300D1 */  neg.      r3, r3
/* 099290 8009C290 41820010 */  beq       lbl_8009C2A0
/* 099294 8009C294 7D034378 */  mr        r3, r8
/* 099298 8009C298 4BFFF01D */  bl        PPCMtdec
/* 09929C 8009C29C 4800000C */  b         lbl_8009C2A8
lbl_8009C2A0:
/* 0992A0 8009C2A0 3864FFFF */  subi      r3, r4, 0x1
/* 0992A4 8009C2A4 4BFFF011 */  bl        PPCMtdec
lbl_8009C2A8:
/* 0992A8 8009C2A8 480041E1 */  bl        OSDisableScheduler
/* 0992AC 8009C2AC 38610018 */  addi      r3, r1, 0x18
/* 0992B0 8009C2B0 48001441 */  bl        OSClearContext
/* 0992B4 8009C2B4 38610018 */  addi      r3, r1, 0x18
/* 0992B8 8009C2B8 48001271 */  bl        OSSetCurrentContext
/* 0992BC 8009C2BC 399E0000 */  addi      r12, r30, 0x0
/* 0992C0 8009C2C0 7D8803A6 */  mtlr      r12
/* 0992C4 8009C2C4 387F0000 */  addi      r3, r31, 0x0
/* 0992C8 8009C2C8 389D0000 */  addi      r4, r29, 0x0
/* 0992CC 8009C2CC 4E800021 */  blrl
/* 0992D0 8009C2D0 38610018 */  addi      r3, r1, 0x18
/* 0992D4 8009C2D4 4800141D */  bl        OSClearContext
/* 0992D8 8009C2D8 7FA3EB78 */  mr        r3, r29
/* 0992DC 8009C2DC 4800124D */  bl        OSSetCurrentContext
/* 0992E0 8009C2E0 480041E9 */  bl        OSEnableScheduler
/* 0992E4 8009C2E4 480046B1 */  bl        __OSReschedule
/* 0992E8 8009C2E8 7FA3EB78 */  mr        r3, r29
/* 0992EC 8009C2EC 48001325 */  bl        OSLoadContext
/* 0992F0 8009C2F0 800102F4 */  lwz       r0, 0x2f4(r1)
/* 0992F4 8009C2F4 83E102EC */  lwz       r31, 0x2ec(r1)
/* 0992F8 8009C2F8 83C102E8 */  lwz       r30, 0x2e8(r1)
/* 0992FC 8009C2FC 83A102E4 */  lwz       r29, 0x2e4(r1)
/* 099300 8009C300 838102E0 */  lwz       r28, 0x2e0(r1)
/* 099304 8009C304 382102F0 */  addi      r1, r1, 0x2f0
/* 099308 8009C308 7C0803A6 */  mtlr      r0
/* 09930C 8009C30C 4E800020 */  blr

DecrementerExceptionHandler:
/* 099310 8009C310 90040000 */  stw       r0, 0x0(r4)
/* 099314 8009C314 90240004 */  stw       r1, 0x4(r4)
/* 099318 8009C318 90440008 */  stw       r2, 0x8(r4)
/* 09931C 8009C31C BCC40018 */  stmw      r6, 0x18(r4)
/* 099320 8009C320 7C11E2A6 */  mfspr     r0, GQR1
/* 099324 8009C324 900401A8 */  stw       r0, 0x1a8(r4)
/* 099328 8009C328 7C12E2A6 */  mfspr     r0, GQR2
/* 09932C 8009C32C 900401AC */  stw       r0, 0x1ac(r4)
/* 099330 8009C330 7C13E2A6 */  mfspr     r0, GQR3
/* 099334 8009C334 900401B0 */  stw       r0, 0x1b0(r4)
/* 099338 8009C338 7C14E2A6 */  mfspr     r0, GQR4
/* 09933C 8009C33C 900401B4 */  stw       r0, 0x1b4(r4)
/* 099340 8009C340 7C15E2A6 */  mfspr     r0, GQR5
/* 099344 8009C344 900401B8 */  stw       r0, 0x1b8(r4)
/* 099348 8009C348 7C16E2A6 */  mfspr     r0, GQR6
/* 09934C 8009C34C 900401BC */  stw       r0, 0x1bc(r4)
/* 099350 8009C350 7C17E2A6 */  mfspr     r0, GQR7
/* 099354 8009C354 900401C0 */  stw       r0, 0x1c0(r4)
/* 099358 8009C358 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09935C 8009C35C 4BFFFD84 */  b         DecrementerExceptionCallback

# 0x8018BA70 - 0x8018BA78
.section .sbss, "wa"

AlarmQueue:
	.skip 0x8
