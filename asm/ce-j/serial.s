# serial.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel serialEvent
/* 089880 8008EE20 7C0802A6 */  mflr    r0
/* 089884 8008EE24 2C040003 */  cmpwi   r4, 3
/* 089888 8008EE28 90010004 */  stw     r0, 4(r1)
/* 08988C 8008EE2C 9421FFE0 */  stwu    r1, -0x20(r1)
/* 089890 8008EE30 93E1001C */  stw     r31, 0x1c(r1)
/* 089894 8008EE34 3BE50000 */  addi    r31, r5, 0
/* 089898 8008EE38 93C10018 */  stw     r30, 0x18(r1)
/* 08989C 8008EE3C 3BC30000 */  addi    r30, r3, 0
/* 0898A0 8008EE40 418200C4 */  beq     lbl_8008EF04
/* 0898A4 8008EE44 40800018 */  bge     lbl_8008EE5C
/* 0898A8 8008EE48 2C040002 */  cmpwi   r4, 2
/* 0898AC 8008EE4C 40800028 */  bge     lbl_8008EE74
/* 0898B0 8008EE50 2C040000 */  cmpwi   r4, 0
/* 0898B4 8008EE54 408000B0 */  bge     lbl_8008EF04
/* 0898B8 8008EE58 480000A4 */  b       lbl_8008EEFC
lbl_8008EE5C:
/* 0898BC 8008EE5C 2C041003 */  cmpwi   r4, 0x1003
/* 0898C0 8008EE60 418200A4 */  beq     lbl_8008EF04
/* 0898C4 8008EE64 40800098 */  bge     lbl_8008EEFC
/* 0898C8 8008EE68 2C041002 */  cmpwi   r4, 0x1002
/* 0898CC 8008EE6C 40800010 */  bge     lbl_8008EE7C
/* 0898D0 8008EE70 4800008C */  b       lbl_8008EEFC
lbl_8008EE74:
/* 0898D4 8008EE74 93FE0000 */  stw     r31, 0(r30)
/* 0898D8 8008EE78 4800008C */  b       lbl_8008EF04
lbl_8008EE7C:
/* 0898DC 8008EE7C 807E0000 */  lwz     r3, 0(r30)
/* 0898E0 8008EE80 3CA08009 */  lis     r5, serialPut8@ha
/* 0898E4 8008EE84 3CC08009 */  lis     r6, serialPut16@ha
/* 0898E8 8008EE88 3CE08009 */  lis     r7, serialPut32@ha
/* 0898EC 8008EE8C 80630024 */  lwz     r3, 0x24(r3)
/* 0898F0 8008EE90 3C808009 */  lis     r4, serialPut64@ha
/* 0898F4 8008EE94 3904EF9C */  addi    r8, r4, serialPut64@l
/* 0898F8 8008EE98 38A5F0EC */  addi    r5, r5, serialPut8@l
/* 0898FC 8008EE9C 38C6F0E4 */  addi    r6, r6, serialPut16@l
/* 089900 8008EEA0 38E7EFA4 */  addi    r7, r7, serialPut32@l
/* 089904 8008EEA4 389F0000 */  addi    r4, r31, 0
/* 089908 8008EEA8 4BFA6191 */  bl      cpuSetDevicePut
/* 08990C 8008EEAC 2C030000 */  cmpwi   r3, 0
/* 089910 8008EEB0 4082000C */  bne     lbl_8008EEBC
/* 089914 8008EEB4 38600000 */  li      r3, 0
/* 089918 8008EEB8 48000050 */  b       lbl_8008EF08
lbl_8008EEBC:
/* 08991C 8008EEBC 807E0000 */  lwz     r3, 0(r30)
/* 089920 8008EEC0 3CA08009 */  lis     r5, serialGet8@ha
/* 089924 8008EEC4 3CC08009 */  lis     r6, serialGet16@ha
/* 089928 8008EEC8 3CE08009 */  lis     r7, serialGet32@ha
/* 08992C 8008EECC 80630024 */  lwz     r3, 0x24(r3)
/* 089930 8008EED0 3C808009 */  lis     r4, serialGet64@ha
/* 089934 8008EED4 3904EF20 */  addi    r8, r4, serialGet64@l
/* 089938 8008EED8 38A5EF94 */  addi    r5, r5, serialGet8@l
/* 08993C 8008EEDC 38C6EF8C */  addi    r6, r6, serialGet16@l
/* 089940 8008EEE0 38E7EF28 */  addi    r7, r7, serialGet32@l
/* 089944 8008EEE4 389F0000 */  addi    r4, r31, 0
/* 089948 8008EEE8 4BFA6169 */  bl      cpuSetDeviceGet
/* 08994C 8008EEEC 2C030000 */  cmpwi   r3, 0
/* 089950 8008EEF0 40820014 */  bne     lbl_8008EF04
/* 089954 8008EEF4 38600000 */  li      r3, 0
/* 089958 8008EEF8 48000010 */  b       lbl_8008EF08
lbl_8008EEFC:
/* 08995C 8008EEFC 38600000 */  li      r3, 0
/* 089960 8008EF00 48000008 */  b       lbl_8008EF08
lbl_8008EF04:
/* 089964 8008EF04 38600001 */  li      r3, 1
lbl_8008EF08:
/* 089968 8008EF08 80010024 */  lwz     r0, 0x24(r1)
/* 08996C 8008EF0C 83E1001C */  lwz     r31, 0x1c(r1)
/* 089970 8008EF10 83C10018 */  lwz     r30, 0x18(r1)
/* 089974 8008EF14 7C0803A6 */  mtlr    r0
/* 089978 8008EF18 38210020 */  addi    r1, r1, 0x20
/* 08997C 8008EF1C 4E800020 */  blr     

glabel serialGet64
/* 089980 8008EF20 38600000 */  li      r3, 0
/* 089984 8008EF24 4E800020 */  blr     

glabel serialGet32
/* 089988 8008EF28 548006FE */  clrlwi  r0, r4, 0x1b
/* 08998C 8008EF2C 28000018 */  cmplwi  r0, 0x18
/* 089990 8008EF30 4181004C */  bgt     lbl_8008EF7C
/* 089994 8008EF34 3C80800F */  lis     r4, jtbl_800EEA38@ha
/* 089998 8008EF38 3884EA38 */  addi    r4, r4, jtbl_800EEA38@l
/* 08999C 8008EF3C 5400103A */  slwi    r0, r0, 2
/* 0899A0 8008EF40 7C04002E */  lwzx    r0, r4, r0
/* 0899A4 8008EF44 7C0903A6 */  mtctr   r0
/* 0899A8 8008EF48 4E800420 */  bctr    
glabel lbl_8008EF4C
/* 0899AC 8008EF4C 80030004 */  lwz     r0, 4(r3)
/* 0899B0 8008EF50 90050000 */  stw     r0, 0(r5)
/* 0899B4 8008EF54 48000030 */  b       lbl_8008EF84
glabel lbl_8008EF58
/* 0899B8 8008EF58 38000000 */  li      r0, 0
/* 0899BC 8008EF5C 90050000 */  stw     r0, 0(r5)
/* 0899C0 8008EF60 48000024 */  b       lbl_8008EF84
glabel lbl_8008EF64
/* 0899C4 8008EF64 38000000 */  li      r0, 0
/* 0899C8 8008EF68 90050000 */  stw     r0, 0(r5)
/* 0899CC 8008EF6C 48000018 */  b       lbl_8008EF84
glabel lbl_8008EF70
/* 0899D0 8008EF70 38000000 */  li      r0, 0
/* 0899D4 8008EF74 90050000 */  stw     r0, 0(r5)
/* 0899D8 8008EF78 4800000C */  b       lbl_8008EF84
glabel lbl_8008EF7C
/* 0899DC 8008EF7C 38600000 */  li      r3, 0
/* 0899E0 8008EF80 4E800020 */  blr     
lbl_8008EF84:
/* 0899E4 8008EF84 38600001 */  li      r3, 1
/* 0899E8 8008EF88 4E800020 */  blr     

glabel serialGet16
/* 0899EC 8008EF8C 38600000 */  li      r3, 0
/* 0899F0 8008EF90 4E800020 */  blr     

glabel serialGet8
/* 0899F4 8008EF94 38600000 */  li      r3, 0
/* 0899F8 8008EF98 4E800020 */  blr     

glabel serialPut64
/* 0899FC 8008EF9C 38600000 */  li      r3, 0
/* 089A00 8008EFA0 4E800020 */  blr     

glabel serialPut32
/* 089A04 8008EFA4 7C0802A6 */  mflr    r0
/* 089A08 8008EFA8 90010004 */  stw     r0, 4(r1)
/* 089A0C 8008EFAC 548006FE */  clrlwi  r0, r4, 0x1b
/* 089A10 8008EFB0 28000018 */  cmplwi  r0, 0x18
/* 089A14 8008EFB4 9421FFD8 */  stwu    r1, -0x28(r1)
/* 089A18 8008EFB8 93E10024 */  stw     r31, 0x24(r1)
/* 089A1C 8008EFBC 3BE30000 */  addi    r31, r3, 0
/* 089A20 8008EFC0 41810104 */  bgt     lbl_8008F0C4
/* 089A24 8008EFC4 3C60800F */  lis     r3, jtbl_800EEA9C@ha
/* 089A28 8008EFC8 3863EA9C */  addi    r3, r3, jtbl_800EEA9C@l
/* 089A2C 8008EFCC 5400103A */  slwi    r0, r0, 2
/* 089A30 8008EFD0 7C03002E */  lwzx    r0, r3, r0
/* 089A34 8008EFD4 7C0903A6 */  mtctr   r0
/* 089A38 8008EFD8 4E800420 */  bctr    
glabel lbl_8008EFDC
/* 089A3C 8008EFDC 80050000 */  lwz     r0, 0(r5)
/* 089A40 8008EFE0 901F0004 */  stw     r0, 4(r31)
/* 089A44 8008EFE4 480000E8 */  b       lbl_8008F0CC
glabel lbl_8008EFE8
/* 089A48 8008EFE8 38000040 */  li      r0, 0x40
/* 089A4C 8008EFEC 90010018 */  stw     r0, 0x18(r1)
/* 089A50 8008EFF0 38810014 */  addi    r4, r1, 0x14
/* 089A54 8008EFF4 38C10018 */  addi    r6, r1, 0x18
/* 089A58 8008EFF8 807F0000 */  lwz     r3, 0(r31)
/* 089A5C 8008EFFC 80BF0004 */  lwz     r5, 4(r31)
/* 089A60 8008F000 8063002C */  lwz     r3, 0x2c(r3)
/* 089A64 8008F004 4BFDE09D */  bl      ramGetBuffer
/* 089A68 8008F008 2C030000 */  cmpwi   r3, 0
/* 089A6C 8008F00C 4082000C */  bne     lbl_8008F018
/* 089A70 8008F010 38600000 */  li      r3, 0
/* 089A74 8008F014 480000BC */  b       lbl_8008F0D0
lbl_8008F018:
/* 089A78 8008F018 807F0000 */  lwz     r3, 0(r31)
/* 089A7C 8008F01C 80810014 */  lwz     r4, 0x14(r1)
/* 089A80 8008F020 80630028 */  lwz     r3, 0x28(r3)
/* 089A84 8008F024 4BFDD06D */  bl      pifGetData
/* 089A88 8008F028 2C030000 */  cmpwi   r3, 0
/* 089A8C 8008F02C 4082000C */  bne     lbl_8008F038
/* 089A90 8008F030 38600000 */  li      r3, 0
/* 089A94 8008F034 4800009C */  b       lbl_8008F0D0
lbl_8008F038:
/* 089A98 8008F038 807F0000 */  lwz     r3, 0(r31)
/* 089A9C 8008F03C 38801000 */  li      r4, 0x1000
/* 089AA0 8008F040 38A00006 */  li      r5, 6
/* 089AA4 8008F044 4BF78C29 */  bl      xlObjectEvent
/* 089AA8 8008F048 48000084 */  b       lbl_8008F0CC
glabel lbl_8008F04C
/* 089AAC 8008F04C 38000040 */  li      r0, 0x40
/* 089AB0 8008F050 90010018 */  stw     r0, 0x18(r1)
/* 089AB4 8008F054 38810014 */  addi    r4, r1, 0x14
/* 089AB8 8008F058 38C10018 */  addi    r6, r1, 0x18
/* 089ABC 8008F05C 807F0000 */  lwz     r3, 0(r31)
/* 089AC0 8008F060 80BF0004 */  lwz     r5, 4(r31)
/* 089AC4 8008F064 8063002C */  lwz     r3, 0x2c(r3)
/* 089AC8 8008F068 4BFDE039 */  bl      ramGetBuffer
/* 089ACC 8008F06C 2C030000 */  cmpwi   r3, 0
/* 089AD0 8008F070 4082000C */  bne     lbl_8008F07C
/* 089AD4 8008F074 38600000 */  li      r3, 0
/* 089AD8 8008F078 48000058 */  b       lbl_8008F0D0
lbl_8008F07C:
/* 089ADC 8008F07C 807F0000 */  lwz     r3, 0(r31)
/* 089AE0 8008F080 80810014 */  lwz     r4, 0x14(r1)
/* 089AE4 8008F084 80630028 */  lwz     r3, 0x28(r3)
/* 089AE8 8008F088 4BFDD075 */  bl      pifSetData
/* 089AEC 8008F08C 2C030000 */  cmpwi   r3, 0
/* 089AF0 8008F090 4082000C */  bne     lbl_8008F09C
/* 089AF4 8008F094 38600000 */  li      r3, 0
/* 089AF8 8008F098 48000038 */  b       lbl_8008F0D0
lbl_8008F09C:
/* 089AFC 8008F09C 807F0000 */  lwz     r3, 0(r31)
/* 089B00 8008F0A0 38801000 */  li      r4, 0x1000
/* 089B04 8008F0A4 38A00006 */  li      r5, 6
/* 089B08 8008F0A8 4BF78BC5 */  bl      xlObjectEvent
/* 089B0C 8008F0AC 48000020 */  b       lbl_8008F0CC
glabel lbl_8008F0B0
/* 089B10 8008F0B0 807F0000 */  lwz     r3, 0(r31)
/* 089B14 8008F0B4 38801001 */  li      r4, 0x1001
/* 089B18 8008F0B8 38A00006 */  li      r5, 6
/* 089B1C 8008F0BC 4BF78BB1 */  bl      xlObjectEvent
/* 089B20 8008F0C0 4800000C */  b       lbl_8008F0CC
glabel lbl_8008F0C4
/* 089B24 8008F0C4 38600000 */  li      r3, 0
/* 089B28 8008F0C8 48000008 */  b       lbl_8008F0D0
lbl_8008F0CC:
/* 089B2C 8008F0CC 38600001 */  li      r3, 1
lbl_8008F0D0:
/* 089B30 8008F0D0 8001002C */  lwz     r0, 0x2c(r1)
/* 089B34 8008F0D4 83E10024 */  lwz     r31, 0x24(r1)
/* 089B38 8008F0D8 38210028 */  addi    r1, r1, 0x28
/* 089B3C 8008F0DC 7C0803A6 */  mtlr    r0
/* 089B40 8008F0E0 4E800020 */  blr     

glabel serialPut16
/* 089B44 8008F0E4 38600000 */  li      r3, 0
/* 089B48 8008F0E8 4E800020 */  blr     

glabel serialPut8
/* 089B4C 8008F0EC 38600000 */  li      r3, 0
/* 089B50 8008F0F0 4E800020 */  blr     

.section .data, "wa"

.balign 8

/* 000EBAA8 800EEA28 0010 */
glabel gClassSerial
    .long D_80135320, 0x00000008, 0x00000000, serialEvent

/* 000EBAB8 800EEA38 0064 */
jtbl_800EEA38:
    .long lbl_8008EF4C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF58
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF64
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF7C
    .long lbl_8008EF70

/* 000EBB1C 800EEA9C 0064 */
jtbl_800EEA9C:
    .long lbl_8008EFDC
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008EFE8
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F04C
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0C4
    .long lbl_8008F0B0

.section .sdata, "wa"

.balign 8

/* 000F15A0 80135320 0007 */
D_80135320:
    .asciz "SERIAL"
    .balign 4
