# GXGeometry.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel __GXSetDirtyState
/* 0A5E40 800AB3E0 7C0802A6 */  mflr    r0
/* 0A5E44 800AB3E4 90010004 */  stw     r0, 4(r1)
/* 0A5E48 800AB3E8 9421FFF0 */  stwu    r1, -0x10(r1)
/* 0A5E4C 800AB3EC 93E1000C */  stw     r31, 0xc(r1)
/* 0A5E50 800AB3F0 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A5E54 800AB3F4 83E305AC */  lwz     r31, 0x5ac(r3)
/* 0A5E58 800AB3F8 57E007FF */  clrlwi. r0, r31, 0x1f
/* 0A5E5C 800AB3FC 41820008 */  beq     lbl_800AB404
/* 0A5E60 800AB400 48001C99 */  bl      __GXSetSUTexRegs
lbl_800AB404:
/* 0A5E64 800AB404 57E007BD */  rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 0A5E68 800AB408 41820008 */  beq     lbl_800AB410
/* 0A5E6C 800AB40C 48002379 */  bl      __GXUpdateBPMask
lbl_800AB410:
/* 0A5E70 800AB410 57E0077B */  rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 0A5E74 800AB414 41820008 */  beq     lbl_800AB41C
/* 0A5E78 800AB418 480002E1 */  bl      __GXSetGenMode
lbl_800AB41C:
/* 0A5E7C 800AB41C 57E00739 */  rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 0A5E80 800AB420 41820008 */  beq     lbl_800AB428
/* 0A5E84 800AB424 4BFFEBE5 */  bl      __GXSetVCD
lbl_800AB428:
/* 0A5E88 800AB428 57E006F7 */  rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 0A5E8C 800AB42C 41820008 */  beq     lbl_800AB434
/* 0A5E90 800AB430 4BFFF2CD */  bl      __GXSetVAT
lbl_800AB434:
/* 0A5E94 800AB434 57E006F9 */  rlwinm. r0, r31, 0, 0x1b, 0x1c
/* 0A5E98 800AB438 41820008 */  beq     lbl_800AB440
/* 0A5E9C 800AB43C 4BFFEC89 */  bl      __GXCalculateVLim
lbl_800AB440:
/* 0A5EA0 800AB440 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A5EA4 800AB444 38000000 */  li      r0, 0
/* 0A5EA8 800AB448 900305AC */  stw     r0, 0x5ac(r3)
/* 0A5EAC 800AB44C 80010014 */  lwz     r0, 0x14(r1)
/* 0A5EB0 800AB450 83E1000C */  lwz     r31, 0xc(r1)
/* 0A5EB4 800AB454 38210010 */  addi    r1, r1, 0x10
/* 0A5EB8 800AB458 7C0803A6 */  mtlr    r0
/* 0A5EBC 800AB45C 4E800020 */  blr     

glabel GXBegin
/* 0A5EC0 800AB460 7C0802A6 */  mflr    r0
/* 0A5EC4 800AB464 90010004 */  stw     r0, 4(r1)
/* 0A5EC8 800AB468 9421FFD8 */  stwu    r1, -0x28(r1)
/* 0A5ECC 800AB46C 93E10024 */  stw     r31, 0x24(r1)
/* 0A5ED0 800AB470 93C10020 */  stw     r30, 0x20(r1)
/* 0A5ED4 800AB474 3BC50000 */  addi    r30, r5, 0
/* 0A5ED8 800AB478 93A1001C */  stw     r29, 0x1c(r1)
/* 0A5EDC 800AB47C 3BA40000 */  addi    r29, r4, 0
/* 0A5EE0 800AB480 93810018 */  stw     r28, 0x18(r1)
/* 0A5EE4 800AB484 3B830000 */  addi    r28, r3, 0
/* 0A5EE8 800AB488 80C28400 */  lwz     r6, __GXData@sda21(r2)
/* 0A5EEC 800AB48C 83E605AC */  lwz     r31, 0x5ac(r6)
/* 0A5EF0 800AB490 281F0000 */  cmplwi  r31, 0
/* 0A5EF4 800AB494 41820058 */  beq     lbl_800AB4EC
/* 0A5EF8 800AB498 57E007FF */  clrlwi. r0, r31, 0x1f
/* 0A5EFC 800AB49C 41820008 */  beq     lbl_800AB4A4
/* 0A5F00 800AB4A0 48001BF9 */  bl      __GXSetSUTexRegs
lbl_800AB4A4:
/* 0A5F04 800AB4A4 57E007BD */  rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 0A5F08 800AB4A8 41820008 */  beq     lbl_800AB4B0
/* 0A5F0C 800AB4AC 480022D9 */  bl      __GXUpdateBPMask
lbl_800AB4B0:
/* 0A5F10 800AB4B0 57E0077B */  rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 0A5F14 800AB4B4 41820008 */  beq     lbl_800AB4BC
/* 0A5F18 800AB4B8 48000241 */  bl      __GXSetGenMode
lbl_800AB4BC:
/* 0A5F1C 800AB4BC 57E00739 */  rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 0A5F20 800AB4C0 41820008 */  beq     lbl_800AB4C8
/* 0A5F24 800AB4C4 4BFFEB45 */  bl      __GXSetVCD
lbl_800AB4C8:
/* 0A5F28 800AB4C8 57E006F7 */  rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 0A5F2C 800AB4CC 41820008 */  beq     lbl_800AB4D4
/* 0A5F30 800AB4D0 4BFFF22D */  bl      __GXSetVAT
lbl_800AB4D4:
/* 0A5F34 800AB4D4 57E006F9 */  rlwinm. r0, r31, 0, 0x1b, 0x1c
/* 0A5F38 800AB4D8 41820008 */  beq     lbl_800AB4E0
/* 0A5F3C 800AB4DC 4BFFEBE9 */  bl      __GXCalculateVLim
lbl_800AB4E0:
/* 0A5F40 800AB4E0 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A5F44 800AB4E4 38000000 */  li      r0, 0
/* 0A5F48 800AB4E8 900305AC */  stw     r0, 0x5ac(r3)
lbl_800AB4EC:
/* 0A5F4C 800AB4EC 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A5F50 800AB4F0 80030000 */  lwz     r0, 0(r3)
/* 0A5F54 800AB4F4 28000000 */  cmplwi  r0, 0
/* 0A5F58 800AB4F8 40820008 */  bne     lbl_800AB500
/* 0A5F5C 800AB4FC 48000035 */  bl      __GXSendFlushPrim
lbl_800AB500:
/* 0A5F60 800AB500 7FA0E378 */  or      r0, r29, r28
/* 0A5F64 800AB504 3C60CC01 */  lis     r3, 0xcc01
/* 0A5F68 800AB508 98038000 */  stb     r0, -0x8000(r3)
/* 0A5F6C 800AB50C B3C38000 */  sth     r30, -0x8000(r3)
/* 0A5F70 800AB510 8001002C */  lwz     r0, 0x2c(r1)
/* 0A5F74 800AB514 83E10024 */  lwz     r31, 0x24(r1)
/* 0A5F78 800AB518 83C10020 */  lwz     r30, 0x20(r1)
/* 0A5F7C 800AB51C 83A1001C */  lwz     r29, 0x1c(r1)
/* 0A5F80 800AB520 83810018 */  lwz     r28, 0x18(r1)
/* 0A5F84 800AB524 38210028 */  addi    r1, r1, 0x28
/* 0A5F88 800AB528 7C0803A6 */  mtlr    r0
/* 0A5F8C 800AB52C 4E800020 */  blr     

glabel __GXSendFlushPrim
/* 0A5F90 800AB530 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A5F94 800AB534 38000098 */  li      r0, 0x98
/* 0A5F98 800AB538 3CA0CC01 */  lis     r5, 0xcc01
/* 0A5F9C 800AB53C A0C30004 */  lhz     r6, 4(r3)
/* 0A5FA0 800AB540 38800000 */  li      r4, 0
/* 0A5FA4 800AB544 A0630006 */  lhz     r3, 6(r3)
/* 0A5FA8 800AB548 7CE619D6 */  mullw   r7, r6, r3
/* 0A5FAC 800AB54C 98058000 */  stb     r0, -0x8000(r5)
/* 0A5FB0 800AB550 B0C58000 */  sth     r6, -0x8000(r5)
/* 0A5FB4 800AB554 38670003 */  addi    r3, r7, 3
/* 0A5FB8 800AB558 28070000 */  cmplwi  r7, 0
/* 0A5FBC 800AB55C 5463F0BE */  srwi    r3, r3, 2
/* 0A5FC0 800AB560 40810048 */  ble     lbl_800AB5A8
/* 0A5FC4 800AB564 5460E8FF */  rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 0A5FC8 800AB568 7C0903A6 */  mtctr   r0
/* 0A5FCC 800AB56C 41820030 */  beq     lbl_800AB59C
lbl_800AB570:
/* 0A5FD0 800AB570 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FD4 800AB574 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FD8 800AB578 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FDC 800AB57C 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FE0 800AB580 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FE4 800AB584 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FE8 800AB588 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FEC 800AB58C 90858000 */  stw     r4, -0x8000(r5)
/* 0A5FF0 800AB590 4200FFE0 */  bdnz    lbl_800AB570
/* 0A5FF4 800AB594 70630007 */  andi.   r3, r3, 7
/* 0A5FF8 800AB598 41820010 */  beq     lbl_800AB5A8
lbl_800AB59C:
/* 0A5FFC 800AB59C 7C6903A6 */  mtctr   r3
lbl_800AB5A0:
/* 0A6000 800AB5A0 90858000 */  stw     r4, -0x8000(r5)
/* 0A6004 800AB5A4 4200FFFC */  bdnz    lbl_800AB5A0
lbl_800AB5A8:
/* 0A6008 800AB5A8 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A600C 800AB5AC 38000001 */  li      r0, 1
/* 0A6010 800AB5B0 B0030002 */  sth     r0, 2(r3)
/* 0A6014 800AB5B4 4E800020 */  blr     

glabel GXSetLineWidth
/* 0A6018 800AB5B8 80E28400 */  lwz     r7, __GXData@sda21(r2)
/* 0A601C 800AB5BC 5460063E */  clrlwi  r0, r3, 0x18
/* 0A6020 800AB5C0 38600061 */  li      r3, 0x61
/* 0A6024 800AB5C4 80C7007C */  lwz     r6, 0x7c(r7)
/* 0A6028 800AB5C8 5006063E */  rlwimi  r6, r0, 0, 0x18, 0x1f
/* 0A602C 800AB5CC 3CA0CC01 */  lis     r5, 0xcc01
/* 0A6030 800AB5D0 90C7007C */  stw     r6, 0x7c(r7)
/* 0A6034 800AB5D4 38000000 */  li      r0, 0
/* 0A6038 800AB5D8 80C7007C */  lwz     r6, 0x7c(r7)
/* 0A603C 800AB5DC 5086835E */  rlwimi  r6, r4, 0x10, 0xd, 0xf
/* 0A6040 800AB5E0 90C7007C */  stw     r6, 0x7c(r7)
/* 0A6044 800AB5E4 98658000 */  stb     r3, -0x8000(r5)
/* 0A6048 800AB5E8 8067007C */  lwz     r3, 0x7c(r7)
/* 0A604C 800AB5EC 90658000 */  stw     r3, -0x8000(r5)
/* 0A6050 800AB5F0 B0070002 */  sth     r0, 2(r7)
/* 0A6054 800AB5F4 4E800020 */  blr     

glabel GXSetPointSize
/* 0A6058 800AB5F8 80E28400 */  lwz     r7, __GXData@sda21(r2)
/* 0A605C 800AB5FC 5460063E */  clrlwi  r0, r3, 0x18
/* 0A6060 800AB600 38600061 */  li      r3, 0x61
/* 0A6064 800AB604 80C7007C */  lwz     r6, 0x7c(r7)
/* 0A6068 800AB608 5006442E */  rlwimi  r6, r0, 8, 0x10, 0x17
/* 0A606C 800AB60C 3CA0CC01 */  lis     r5, 0xcc01
/* 0A6070 800AB610 90C7007C */  stw     r6, 0x7c(r7)
/* 0A6074 800AB614 38000000 */  li      r0, 0
/* 0A6078 800AB618 80C7007C */  lwz     r6, 0x7c(r7)
/* 0A607C 800AB61C 50869A98 */  rlwimi  r6, r4, 0x13, 0xa, 0xc
/* 0A6080 800AB620 90C7007C */  stw     r6, 0x7c(r7)
/* 0A6084 800AB624 98658000 */  stb     r3, -0x8000(r5)
/* 0A6088 800AB628 8067007C */  lwz     r3, 0x7c(r7)
/* 0A608C 800AB62C 90658000 */  stw     r3, -0x8000(r5)
/* 0A6090 800AB630 B0070002 */  sth     r0, 2(r7)
/* 0A6094 800AB634 4E800020 */  blr     

glabel GXEnableTexOffsets
/* 0A6098 800AB638 80E28400 */  lwz     r7, __GXData@sda21(r2)
/* 0A609C 800AB63C 5463103A */  slwi    r3, r3, 2
/* 0A60A0 800AB640 54A0063E */  clrlwi  r0, r5, 0x18
/* 0A60A4 800AB644 7CC71A14 */  add     r6, r7, r3
/* 0A60A8 800AB648 806600B8 */  lwz     r3, 0xb8(r6)
/* 0A60AC 800AB64C 5083935A */  rlwimi  r3, r4, 0x12, 0xd, 0xd
/* 0A60B0 800AB650 3C80CC01 */  lis     r4, 0xcc01
/* 0A60B4 800AB654 906600B8 */  stw     r3, 0xb8(r6)
/* 0A60B8 800AB658 38600061 */  li      r3, 0x61
/* 0A60BC 800AB65C 80A600B8 */  lwz     r5, 0xb8(r6)
/* 0A60C0 800AB660 50059B18 */  rlwimi  r5, r0, 0x13, 0xc, 0xc
/* 0A60C4 800AB664 38000000 */  li      r0, 0
/* 0A60C8 800AB668 90A600B8 */  stw     r5, 0xb8(r6)
/* 0A60CC 800AB66C 98648000 */  stb     r3, -0x8000(r4)
/* 0A60D0 800AB670 806600B8 */  lwz     r3, 0xb8(r6)
/* 0A60D4 800AB674 90648000 */  stw     r3, -0x8000(r4)
/* 0A60D8 800AB678 B0070002 */  sth     r0, 2(r7)
/* 0A60DC 800AB67C 4E800020 */  blr     

glabel GXSetCullMode
/* 0A60E0 800AB680 2C030002 */  cmpwi   r3, 2
/* 0A60E4 800AB684 4182001C */  beq     lbl_800AB6A0
/* 0A60E8 800AB688 4080001C */  bge     lbl_800AB6A4
/* 0A60EC 800AB68C 2C030001 */  cmpwi   r3, 1
/* 0A60F0 800AB690 40800008 */  bge     lbl_800AB698
/* 0A60F4 800AB694 48000010 */  b       lbl_800AB6A4
lbl_800AB698:
/* 0A60F8 800AB698 38600002 */  li      r3, 2
/* 0A60FC 800AB69C 48000008 */  b       lbl_800AB6A4
lbl_800AB6A0:
/* 0A6100 800AB6A0 38600001 */  li      r3, 1
lbl_800AB6A4:
/* 0A6104 800AB6A4 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A6108 800AB6A8 80040204 */  lwz     r0, 0x204(r4)
/* 0A610C 800AB6AC 50607422 */  rlwimi  r0, r3, 0xe, 0x10, 0x11
/* 0A6110 800AB6B0 90040204 */  stw     r0, 0x204(r4)
/* 0A6114 800AB6B4 800405AC */  lwz     r0, 0x5ac(r4)
/* 0A6118 800AB6B8 60000004 */  ori     r0, r0, 4
/* 0A611C 800AB6BC 900405AC */  stw     r0, 0x5ac(r4)
/* 0A6120 800AB6C0 4E800020 */  blr     

glabel GXSetCoPlanar
/* 0A6124 800AB6C4 80C28400 */  lwz     r6, __GXData@sda21(r2)
/* 0A6128 800AB6C8 38800061 */  li      r4, 0x61
/* 0A612C 800AB6CC 3C00FE08 */  lis     r0, 0xfe08
/* 0A6130 800AB6D0 80A60204 */  lwz     r5, 0x204(r6)
/* 0A6134 800AB6D4 50659B18 */  rlwimi  r5, r3, 0x13, 0xc, 0xc
/* 0A6138 800AB6D8 3C60CC01 */  lis     r3, 0xcc01
/* 0A613C 800AB6DC 90A60204 */  stw     r5, 0x204(r6)
/* 0A6140 800AB6E0 98838000 */  stb     r4, -0x8000(r3)
/* 0A6144 800AB6E4 90038000 */  stw     r0, -0x8000(r3)
/* 0A6148 800AB6E8 98838000 */  stb     r4, -0x8000(r3)
/* 0A614C 800AB6EC 80060204 */  lwz     r0, 0x204(r6)
/* 0A6150 800AB6F0 90038000 */  stw     r0, -0x8000(r3)
/* 0A6154 800AB6F4 4E800020 */  blr     

glabel __GXSetGenMode
/* 0A6158 800AB6F8 38000061 */  li      r0, 0x61
/* 0A615C 800AB6FC 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A6160 800AB700 3CA0CC01 */  lis     r5, 0xcc01
/* 0A6164 800AB704 98058000 */  stb     r0, -0x8000(r5)
/* 0A6168 800AB708 38000000 */  li      r0, 0
/* 0A616C 800AB70C 80640204 */  lwz     r3, 0x204(r4)
/* 0A6170 800AB710 90658000 */  stw     r3, -0x8000(r5)
/* 0A6174 800AB714 B0040002 */  sth     r0, 2(r4)
/* 0A6178 800AB718 4E800020 */  blr     