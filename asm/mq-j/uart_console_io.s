# uart_console_io.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CFA60 - 0x800CFBE0

glabel __close_console
/* 0CCA60 800CFA60 38600000 */  li        r3, 0x0
/* 0CCA64 800CFA64 4E800020 */  blr

glabel __write_console
/* 0CCA68 800CFA68 7C0802A6 */  mflr      r0
/* 0CCA6C 800CFA6C 38600000 */  li        r3, 0x0
/* 0CCA70 800CFA70 90010004 */  stw       r0, 0x4(r1)
/* 0CCA74 800CFA74 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0CCA78 800CFA78 93E10024 */  stw       r31, 0x24(r1)
/* 0CCA7C 800CFA7C 3BE50000 */  addi      r31, r5, 0x0
/* 0CCA80 800CFA80 93C10020 */  stw       r30, 0x20(r1)
/* 0CCA84 800CFA84 3BC40000 */  addi      r30, r4, 0x0
/* 0CCA88 800CFA88 800D8FA0 */  lwz       r0, D_8018BF20@sda21(r0)
/* 0CCA8C 800CFA8C 2C000000 */  cmpwi     r0, 0x0
/* 0CCA90 800CFA90 40820020 */  bne       lbl_800CFAB0
/* 0CCA94 800CFA94 3C600001 */  lis       r3, 0x1
/* 0CCA98 800CFA98 3863E100 */  subi      r3, r3, 0x1f00
/* 0CCA9C 800CFA9C 4BFD37D9 */  bl        fn_800A3274
/* 0CCAA0 800CFAA0 2C030000 */  cmpwi     r3, 0x0
/* 0CCAA4 800CFAA4 4082000C */  bne       lbl_800CFAB0
/* 0CCAA8 800CFAA8 38000001 */  li        r0, 0x1
/* 0CCAAC 800CFAAC 900D8FA0 */  stw       r0, D_8018BF20@sda21(r0)
lbl_800CFAB0:
/* 0CCAB0 800CFAB0 2C030000 */  cmpwi     r3, 0x0
/* 0CCAB4 800CFAB4 4182000C */  beq       lbl_800CFAC0
/* 0CCAB8 800CFAB8 38600001 */  li        r3, 0x1
/* 0CCABC 800CFABC 4800002C */  b         lbl_800CFAE8
lbl_800CFAC0:
/* 0CCAC0 800CFAC0 7FC3F378 */  mr        r3, r30
/* 0CCAC4 800CFAC4 809F0000 */  lwz       r4, 0x0(r31)
/* 0CCAC8 800CFAC8 4BFD3825 */  bl        fn_800A32EC
/* 0CCACC 800CFACC 2C030000 */  cmpwi     r3, 0x0
/* 0CCAD0 800CFAD0 41820014 */  beq       lbl_800CFAE4
/* 0CCAD4 800CFAD4 38000000 */  li        r0, 0x0
/* 0CCAD8 800CFAD8 901F0000 */  stw       r0, 0x0(r31)
/* 0CCADC 800CFADC 38600001 */  li        r3, 0x1
/* 0CCAE0 800CFAE0 48000008 */  b         lbl_800CFAE8
lbl_800CFAE4:
/* 0CCAE4 800CFAE4 38600000 */  li        r3, 0x0
lbl_800CFAE8:
/* 0CCAE8 800CFAE8 8001002C */  lwz       r0, 0x2c(r1)
/* 0CCAEC 800CFAEC 83E10024 */  lwz       r31, 0x24(r1)
/* 0CCAF0 800CFAF0 83C10020 */  lwz       r30, 0x20(r1)
/* 0CCAF4 800CFAF4 7C0803A6 */  mtlr      r0
/* 0CCAF8 800CFAF8 38210028 */  addi      r1, r1, 0x28
/* 0CCAFC 800CFAFC 4E800020 */  blr

glabel __read_console
/* 0CCB00 800CFB00 7C0802A6 */  mflr      r0
/* 0CCB04 800CFB04 38600000 */  li        r3, 0x0
/* 0CCB08 800CFB08 90010004 */  stw       r0, 0x4(r1)
/* 0CCB0C 800CFB0C 9421FFD0 */  stwu      r1, -0x30(r1)
/* 0CCB10 800CFB10 93E1002C */  stw       r31, 0x2c(r1)
/* 0CCB14 800CFB14 93C10028 */  stw       r30, 0x28(r1)
/* 0CCB18 800CFB18 3BC50000 */  addi      r30, r5, 0x0
/* 0CCB1C 800CFB1C 93A10024 */  stw       r29, 0x24(r1)
/* 0CCB20 800CFB20 3BA40000 */  addi      r29, r4, 0x0
/* 0CCB24 800CFB24 800D8FA0 */  lwz       r0, D_8018BF20@sda21(r0)
/* 0CCB28 800CFB28 2C000000 */  cmpwi     r0, 0x0
/* 0CCB2C 800CFB2C 40820020 */  bne       lbl_800CFB4C
/* 0CCB30 800CFB30 3C600001 */  lis       r3, 0x1
/* 0CCB34 800CFB34 3863E100 */  subi      r3, r3, 0x1f00
/* 0CCB38 800CFB38 4BFD373D */  bl        fn_800A3274
/* 0CCB3C 800CFB3C 2C030000 */  cmpwi     r3, 0x0
/* 0CCB40 800CFB40 4082000C */  bne       lbl_800CFB4C
/* 0CCB44 800CFB44 38000001 */  li        r0, 0x1
/* 0CCB48 800CFB48 900D8FA0 */  stw       r0, D_8018BF20@sda21(r0)
lbl_800CFB4C:
/* 0CCB4C 800CFB4C 2C030000 */  cmpwi     r3, 0x0
/* 0CCB50 800CFB50 4182000C */  beq       lbl_800CFB5C
/* 0CCB54 800CFB54 38600001 */  li        r3, 0x1
/* 0CCB58 800CFB58 4800006C */  b         lbl_800CFBC4
lbl_800CFB5C:
/* 0CCB5C 800CFB5C 83FE0000 */  lwz       r31, 0x0(r30)
/* 0CCB60 800CFB60 38000000 */  li        r0, 0x0
/* 0CCB64 800CFB64 38600000 */  li        r3, 0x0
/* 0CCB68 800CFB68 901E0000 */  stw       r0, 0x0(r30)
/* 0CCB6C 800CFB6C 4800002C */  b         lbl_800CFB98
lbl_800CFB70:
/* 0CCB70 800CFB70 387D0000 */  addi      r3, r29, 0x0
/* 0CCB74 800CFB74 38800001 */  li        r4, 0x1
/* 0CCB78 800CFB78 4BFD376D */  bl        fn_800A32E4
/* 0CCB7C 800CFB7C 809E0000 */  lwz       r4, 0x0(r30)
/* 0CCB80 800CFB80 38040001 */  addi      r0, r4, 0x1
/* 0CCB84 800CFB84 901E0000 */  stw       r0, 0x0(r30)
/* 0CCB88 800CFB88 881D0000 */  lbz       r0, 0x0(r29)
/* 0CCB8C 800CFB8C 2800000D */  cmplwi    r0, 0xd
/* 0CCB90 800CFB90 4182001C */  beq       lbl_800CFBAC
/* 0CCB94 800CFB94 3BBD0001 */  addi      r29, r29, 0x1
lbl_800CFB98:
/* 0CCB98 800CFB98 801E0000 */  lwz       r0, 0x0(r30)
/* 0CCB9C 800CFB9C 7C00F840 */  cmplw     r0, r31
/* 0CCBA0 800CFBA0 4181000C */  bgt       lbl_800CFBAC
/* 0CCBA4 800CFBA4 2C030000 */  cmpwi     r3, 0x0
/* 0CCBA8 800CFBA8 4182FFC8 */  beq       lbl_800CFB70
lbl_800CFBAC:
/* 0CCBAC 800CFBAC 2C030000 */  cmpwi     r3, 0x0
/* 0CCBB0 800CFBB0 4082000C */  bne       lbl_800CFBBC
/* 0CCBB4 800CFBB4 38000000 */  li        r0, 0x0
/* 0CCBB8 800CFBB8 48000008 */  b         lbl_800CFBC0
lbl_800CFBBC:
/* 0CCBBC 800CFBBC 38000001 */  li        r0, 0x1
lbl_800CFBC0:
/* 0CCBC0 800CFBC0 5403063E */  clrlwi    r3, r0, 24
lbl_800CFBC4:
/* 0CCBC4 800CFBC4 80010034 */  lwz       r0, 0x34(r1)
/* 0CCBC8 800CFBC8 83E1002C */  lwz       r31, 0x2c(r1)
/* 0CCBCC 800CFBCC 83C10028 */  lwz       r30, 0x28(r1)
/* 0CCBD0 800CFBD0 7C0803A6 */  mtlr      r0
/* 0CCBD4 800CFBD4 83A10024 */  lwz       r29, 0x24(r1)
/* 0CCBD8 800CFBD8 38210030 */  addi      r1, r1, 0x30
/* 0CCBDC 800CFBDC 4E800020 */  blr

# 0x8018BF20 - 0x8018BF28
.section .sbss, "wa"

glabel D_8018BF20
	.skip 0x8
