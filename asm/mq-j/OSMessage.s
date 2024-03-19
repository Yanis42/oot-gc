# OSMessage.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x8009EACC - 0x8009ECD0

glabel OSInitMessageQueue
/* 09BACC 8009EACC 7C0802A6 */  mflr      r0
/* 09BAD0 8009EAD0 90010004 */  stw       r0, 0x4(r1)
/* 09BAD4 8009EAD4 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09BAD8 8009EAD8 93E10024 */  stw       r31, 0x24(r1)
/* 09BADC 8009EADC 3BE50000 */  addi      r31, r5, 0x0
/* 09BAE0 8009EAE0 93C10020 */  stw       r30, 0x20(r1)
/* 09BAE4 8009EAE4 3BC40000 */  addi      r30, r4, 0x0
/* 09BAE8 8009EAE8 93A1001C */  stw       r29, 0x1c(r1)
/* 09BAEC 8009EAEC 3BA30000 */  addi      r29, r3, 0x0
/* 09BAF0 8009EAF0 4800197D */  bl        OSInitThreadQueue
/* 09BAF4 8009EAF4 387D0008 */  addi      r3, r29, 0x8
/* 09BAF8 8009EAF8 48001975 */  bl        OSInitThreadQueue
/* 09BAFC 8009EAFC 93DD0010 */  stw       r30, 0x10(r29)
/* 09BB00 8009EB00 38000000 */  li        r0, 0x0
/* 09BB04 8009EB04 93FD0014 */  stw       r31, 0x14(r29)
/* 09BB08 8009EB08 901D0018 */  stw       r0, 0x18(r29)
/* 09BB0C 8009EB0C 901D001C */  stw       r0, 0x1c(r29)
/* 09BB10 8009EB10 8001002C */  lwz       r0, 0x2c(r1)
/* 09BB14 8009EB14 83E10024 */  lwz       r31, 0x24(r1)
/* 09BB18 8009EB18 83C10020 */  lwz       r30, 0x20(r1)
/* 09BB1C 8009EB1C 83A1001C */  lwz       r29, 0x1c(r1)
/* 09BB20 8009EB20 38210028 */  addi      r1, r1, 0x28
/* 09BB24 8009EB24 7C0803A6 */  mtlr      r0
/* 09BB28 8009EB28 4E800020 */  blr

glabel OSSendMessage
/* 09BB2C 8009EB2C 7C0802A6 */  mflr      r0
/* 09BB30 8009EB30 90010004 */  stw       r0, 0x4(r1)
/* 09BB34 8009EB34 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09BB38 8009EB38 93E10024 */  stw       r31, 0x24(r1)
/* 09BB3C 8009EB3C 3BE50000 */  addi      r31, r5, 0x0
/* 09BB40 8009EB40 93C10020 */  stw       r30, 0x20(r1)
/* 09BB44 8009EB44 93A1001C */  stw       r29, 0x1c(r1)
/* 09BB48 8009EB48 3BA40000 */  addi      r29, r4, 0x0
/* 09BB4C 8009EB4C 93810018 */  stw       r28, 0x18(r1)
/* 09BB50 8009EB50 3B830000 */  addi      r28, r3, 0x0
/* 09BB54 8009EB54 4BFFF6F5 */  bl        OSDisableInterrupts
/* 09BB58 8009EB58 3BC30000 */  addi      r30, r3, 0x0
/* 09BB5C 8009EB5C 57FF07FE */  clrlwi    r31, r31, 31
/* 09BB60 8009EB60 48000024 */  b         lbl_8009EB84
lbl_8009EB64:
/* 09BB64 8009EB64 2C1F0000 */  cmpwi     r31, 0x0
/* 09BB68 8009EB68 40820014 */  bne       lbl_8009EB7C
/* 09BB6C 8009EB6C 7FC3F378 */  mr        r3, r30
/* 09BB70 8009EB70 4BFFF701 */  bl        OSRestoreInterrupts
/* 09BB74 8009EB74 38600000 */  li        r3, 0x0
/* 09BB78 8009EB78 4800005C */  b         lbl_8009EBD4
lbl_8009EB7C:
/* 09BB7C 8009EB7C 7F83E378 */  mr        r3, r28
/* 09BB80 8009EB80 480026C5 */  bl        OSSleepThread
lbl_8009EB84:
/* 09BB84 8009EB84 80DC0014 */  lwz       r6, 0x14(r28)
/* 09BB88 8009EB88 809C001C */  lwz       r4, 0x1c(r28)
/* 09BB8C 8009EB8C 7C062000 */  cmpw      r6, r4
/* 09BB90 8009EB90 4081FFD4 */  ble       lbl_8009EB64
/* 09BB94 8009EB94 801C0018 */  lwz       r0, 0x18(r28)
/* 09BB98 8009EB98 387C0008 */  addi      r3, r28, 0x8
/* 09BB9C 8009EB9C 80BC0010 */  lwz       r5, 0x10(r28)
/* 09BBA0 8009EBA0 7C802214 */  add       r4, r0, r4
/* 09BBA4 8009EBA4 7C0433D6 */  divw      r0, r4, r6
/* 09BBA8 8009EBA8 7C0031D6 */  mullw     r0, r0, r6
/* 09BBAC 8009EBAC 7C002050 */  subf      r0, r0, r4
/* 09BBB0 8009EBB0 5400103A */  slwi      r0, r0, 2
/* 09BBB4 8009EBB4 7FA5012E */  stwx      r29, r5, r0
/* 09BBB8 8009EBB8 809C001C */  lwz       r4, 0x1c(r28)
/* 09BBBC 8009EBBC 38040001 */  addi      r0, r4, 0x1
/* 09BBC0 8009EBC0 901C001C */  stw       r0, 0x1c(r28)
/* 09BBC4 8009EBC4 4800276D */  bl        OSWakeupThread
/* 09BBC8 8009EBC8 7FC3F378 */  mr        r3, r30
/* 09BBCC 8009EBCC 4BFFF6A5 */  bl        OSRestoreInterrupts
/* 09BBD0 8009EBD0 38600001 */  li        r3, 0x1
lbl_8009EBD4:
/* 09BBD4 8009EBD4 8001002C */  lwz       r0, 0x2c(r1)
/* 09BBD8 8009EBD8 83E10024 */  lwz       r31, 0x24(r1)
/* 09BBDC 8009EBDC 83C10020 */  lwz       r30, 0x20(r1)
/* 09BBE0 8009EBE0 83A1001C */  lwz       r29, 0x1c(r1)
/* 09BBE4 8009EBE4 83810018 */  lwz       r28, 0x18(r1)
/* 09BBE8 8009EBE8 38210028 */  addi      r1, r1, 0x28
/* 09BBEC 8009EBEC 7C0803A6 */  mtlr      r0
/* 09BBF0 8009EBF0 4E800020 */  blr

glabel OSReceiveMessage
/* 09BBF4 8009EBF4 7C0802A6 */  mflr      r0
/* 09BBF8 8009EBF8 90010004 */  stw       r0, 0x4(r1)
/* 09BBFC 8009EBFC 9421FFD8 */  stwu      r1, -0x28(r1)
/* 09BC00 8009EC00 93E10024 */  stw       r31, 0x24(r1)
/* 09BC04 8009EC04 3BE30000 */  addi      r31, r3, 0x0
/* 09BC08 8009EC08 93C10020 */  stw       r30, 0x20(r1)
/* 09BC0C 8009EC0C 3BC50000 */  addi      r30, r5, 0x0
/* 09BC10 8009EC10 93A1001C */  stw       r29, 0x1c(r1)
/* 09BC14 8009EC14 93810018 */  stw       r28, 0x18(r1)
/* 09BC18 8009EC18 3B840000 */  addi      r28, r4, 0x0
/* 09BC1C 8009EC1C 4BFFF62D */  bl        OSDisableInterrupts
/* 09BC20 8009EC20 3BA30000 */  addi      r29, r3, 0x0
/* 09BC24 8009EC24 57DE07FE */  clrlwi    r30, r30, 31
/* 09BC28 8009EC28 48000024 */  b         lbl_8009EC4C
lbl_8009EC2C:
/* 09BC2C 8009EC2C 2C1E0000 */  cmpwi     r30, 0x0
/* 09BC30 8009EC30 40820014 */  bne       lbl_8009EC44
/* 09BC34 8009EC34 7FA3EB78 */  mr        r3, r29
/* 09BC38 8009EC38 4BFFF639 */  bl        OSRestoreInterrupts
/* 09BC3C 8009EC3C 38600000 */  li        r3, 0x0
/* 09BC40 8009EC40 48000070 */  b         lbl_8009ECB0
lbl_8009EC44:
/* 09BC44 8009EC44 387F0008 */  addi      r3, r31, 0x8
/* 09BC48 8009EC48 480025FD */  bl        OSSleepThread
lbl_8009EC4C:
/* 09BC4C 8009EC4C 801F001C */  lwz       r0, 0x1c(r31)
/* 09BC50 8009EC50 2C000000 */  cmpwi     r0, 0x0
/* 09BC54 8009EC54 4182FFD8 */  beq       lbl_8009EC2C
/* 09BC58 8009EC58 281C0000 */  cmplwi    r28, 0x0
/* 09BC5C 8009EC5C 41820018 */  beq       lbl_8009EC74
/* 09BC60 8009EC60 801F0018 */  lwz       r0, 0x18(r31)
/* 09BC64 8009EC64 807F0010 */  lwz       r3, 0x10(r31)
/* 09BC68 8009EC68 5400103A */  slwi      r0, r0, 2
/* 09BC6C 8009EC6C 7C03002E */  lwzx      r0, r3, r0
/* 09BC70 8009EC70 901C0000 */  stw       r0, 0x0(r28)
lbl_8009EC74:
/* 09BC74 8009EC74 80BF0018 */  lwz       r5, 0x18(r31)
/* 09BC78 8009EC78 7FE3FB78 */  mr        r3, r31
/* 09BC7C 8009EC7C 809F0014 */  lwz       r4, 0x14(r31)
/* 09BC80 8009EC80 38A50001 */  addi      r5, r5, 0x1
/* 09BC84 8009EC84 7C0523D6 */  divw      r0, r5, r4
/* 09BC88 8009EC88 7C0021D6 */  mullw     r0, r0, r4
/* 09BC8C 8009EC8C 7C002850 */  subf      r0, r0, r5
/* 09BC90 8009EC90 901F0018 */  stw       r0, 0x18(r31)
/* 09BC94 8009EC94 809F001C */  lwz       r4, 0x1c(r31)
/* 09BC98 8009EC98 3804FFFF */  subi      r0, r4, 0x1
/* 09BC9C 8009EC9C 901F001C */  stw       r0, 0x1c(r31)
/* 09BCA0 8009ECA0 48002691 */  bl        OSWakeupThread
/* 09BCA4 8009ECA4 7FA3EB78 */  mr        r3, r29
/* 09BCA8 8009ECA8 4BFFF5C9 */  bl        OSRestoreInterrupts
/* 09BCAC 8009ECAC 38600001 */  li        r3, 0x1
lbl_8009ECB0:
/* 09BCB0 8009ECB0 8001002C */  lwz       r0, 0x2c(r1)
/* 09BCB4 8009ECB4 83E10024 */  lwz       r31, 0x24(r1)
/* 09BCB8 8009ECB8 83C10020 */  lwz       r30, 0x20(r1)
/* 09BCBC 8009ECBC 83A1001C */  lwz       r29, 0x1c(r1)
/* 09BCC0 8009ECC0 83810018 */  lwz       r28, 0x18(r1)
/* 09BCC4 8009ECC4 38210028 */  addi      r1, r1, 0x28
/* 09BCC8 8009ECC8 7C0803A6 */  mtlr      r0
/* 09BCCC 8009ECCC 4E800020 */  blr
