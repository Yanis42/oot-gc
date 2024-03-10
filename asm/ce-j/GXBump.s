# GXBump.c
.include "macros.inc"

.section .text, "ax"

.balign 4

glabel GXSetTevIndirect
/* 0A7FC8 800AD568 9421FFD0 */  stwu    r1, -0x30(r1)
/* 0A7FCC 800AD56C 38000000 */  li      r0, 0
/* 0A7FD0 800AD570 508007BE */  rlwimi  r0, r4, 0, 0x1e, 0x1f
/* 0A7FD4 800AD574 93E1002C */  stw     r31, 0x2c(r1)
/* 0A7FD8 800AD578 7C0B0378 */  mr      r11, r0
/* 0A7FDC 800AD57C 50AB173A */  rlwimi  r11, r5, 2, 0x1c, 0x1d
/* 0A7FE0 800AD580 8181003C */  lwz     r12, 0x3c(r1)
/* 0A7FE4 800AD584 8BE1003B */  lbz     r31, 0x3b(r1)
/* 0A7FE8 800AD588 50CB2676 */  rlwimi  r11, r6, 4, 0x19, 0x1b
/* 0A7FEC 800AD58C 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A7FF0 800AD590 518B3DF0 */  rlwimi  r11, r12, 7, 0x17, 0x18
/* 0A7FF4 800AD594 50EB4CEC */  rlwimi  r11, r7, 9, 0x13, 0x16
/* 0A7FF8 800AD598 510B6C24 */  rlwimi  r11, r8, 0xd, 0x10, 0x12
/* 0A7FFC 800AD59C 512B835E */  rlwimi  r11, r9, 0x10, 0xd, 0xf
/* 0A8000 800AD5A0 53EB9B18 */  rlwimi  r11, r31, 0x13, 0xc, 0xc
/* 0A8004 800AD5A4 38000061 */  li      r0, 0x61
/* 0A8008 800AD5A8 3CA0CC01 */  lis     r5, 0xcc01
/* 0A800C 800AD5AC 98058000 */  stb     r0, -0x8000(r5)
/* 0A8010 800AD5B0 38030010 */  addi    r0, r3, 0x10
/* 0A8014 800AD5B4 514BA2D6 */  rlwimi  r11, r10, 0x14, 0xb, 0xb
/* 0A8018 800AD5B8 500BC00E */  rlwimi  r11, r0, 0x18, 0, 7
/* 0A801C 800AD5BC 91658000 */  stw     r11, -0x8000(r5)
/* 0A8020 800AD5C0 38000000 */  li      r0, 0
/* 0A8024 800AD5C4 B0040002 */  sth     r0, 2(r4)
/* 0A8028 800AD5C8 83E1002C */  lwz     r31, 0x2c(r1)
/* 0A802C 800AD5CC 38210030 */  addi    r1, r1, 0x30
/* 0A8030 800AD5D0 4E800020 */  blr     

glabel GXSetIndTexCoordScale
/* 0A8034 800AD5D4 2C030002 */  cmpwi   r3, 2
/* 0A8038 800AD5D8 418200AC */  beq     lbl_800AD684
/* 0A803C 800AD5DC 40800014 */  bge     lbl_800AD5F0
/* 0A8040 800AD5E0 2C030000 */  cmpwi   r3, 0
/* 0A8044 800AD5E4 41820018 */  beq     lbl_800AD5FC
/* 0A8048 800AD5E8 40800058 */  bge     lbl_800AD640
/* 0A804C 800AD5EC 4800011C */  b       lbl_800AD708
lbl_800AD5F0:
/* 0A8050 800AD5F0 2C030004 */  cmpwi   r3, 4
/* 0A8054 800AD5F4 40800114 */  bge     lbl_800AD708
/* 0A8058 800AD5F8 480000D0 */  b       lbl_800AD6C8
lbl_800AD5FC:
/* 0A805C 800AD5FC 81028400 */  lwz     r8, __GXData@sda21(r2)
/* 0A8060 800AD600 38C00025 */  li      r6, 0x25
/* 0A8064 800AD604 38000061 */  li      r0, 0x61
/* 0A8068 800AD608 80E80128 */  lwz     r7, 0x128(r8)
/* 0A806C 800AD60C 5087073E */  rlwimi  r7, r4, 0, 0x1c, 0x1f
/* 0A8070 800AD610 3C60CC01 */  lis     r3, 0xcc01
/* 0A8074 800AD614 90E80128 */  stw     r7, 0x128(r8)
/* 0A8078 800AD618 80880128 */  lwz     r4, 0x128(r8)
/* 0A807C 800AD61C 50A42636 */  rlwimi  r4, r5, 4, 0x18, 0x1b
/* 0A8080 800AD620 90880128 */  stw     r4, 0x128(r8)
/* 0A8084 800AD624 80880128 */  lwz     r4, 0x128(r8)
/* 0A8088 800AD628 50C4C00E */  rlwimi  r4, r6, 0x18, 0, 7
/* 0A808C 800AD62C 90880128 */  stw     r4, 0x128(r8)
/* 0A8090 800AD630 98038000 */  stb     r0, -0x8000(r3)
/* 0A8094 800AD634 80080128 */  lwz     r0, 0x128(r8)
/* 0A8098 800AD638 90038000 */  stw     r0, -0x8000(r3)
/* 0A809C 800AD63C 480000CC */  b       lbl_800AD708
lbl_800AD640:
/* 0A80A0 800AD640 81028400 */  lwz     r8, __GXData@sda21(r2)
/* 0A80A4 800AD644 38C00025 */  li      r6, 0x25
/* 0A80A8 800AD648 38000061 */  li      r0, 0x61
/* 0A80AC 800AD64C 80E80128 */  lwz     r7, 0x128(r8)
/* 0A80B0 800AD650 5087452E */  rlwimi  r7, r4, 8, 0x14, 0x17
/* 0A80B4 800AD654 3C60CC01 */  lis     r3, 0xcc01
/* 0A80B8 800AD658 90E80128 */  stw     r7, 0x128(r8)
/* 0A80BC 800AD65C 80880128 */  lwz     r4, 0x128(r8)
/* 0A80C0 800AD660 50A46426 */  rlwimi  r4, r5, 0xc, 0x10, 0x13
/* 0A80C4 800AD664 90880128 */  stw     r4, 0x128(r8)
/* 0A80C8 800AD668 80880128 */  lwz     r4, 0x128(r8)
/* 0A80CC 800AD66C 50C4C00E */  rlwimi  r4, r6, 0x18, 0, 7
/* 0A80D0 800AD670 90880128 */  stw     r4, 0x128(r8)
/* 0A80D4 800AD674 98038000 */  stb     r0, -0x8000(r3)
/* 0A80D8 800AD678 80080128 */  lwz     r0, 0x128(r8)
/* 0A80DC 800AD67C 90038000 */  stw     r0, -0x8000(r3)
/* 0A80E0 800AD680 48000088 */  b       lbl_800AD708
lbl_800AD684:
/* 0A80E4 800AD684 81028400 */  lwz     r8, __GXData@sda21(r2)
/* 0A80E8 800AD688 38C00026 */  li      r6, 0x26
/* 0A80EC 800AD68C 38000061 */  li      r0, 0x61
/* 0A80F0 800AD690 80E8012C */  lwz     r7, 0x12c(r8)
/* 0A80F4 800AD694 5087073E */  rlwimi  r7, r4, 0, 0x1c, 0x1f
/* 0A80F8 800AD698 3C60CC01 */  lis     r3, 0xcc01
/* 0A80FC 800AD69C 90E8012C */  stw     r7, 0x12c(r8)
/* 0A8100 800AD6A0 8088012C */  lwz     r4, 0x12c(r8)
/* 0A8104 800AD6A4 50A42636 */  rlwimi  r4, r5, 4, 0x18, 0x1b
/* 0A8108 800AD6A8 9088012C */  stw     r4, 0x12c(r8)
/* 0A810C 800AD6AC 8088012C */  lwz     r4, 0x12c(r8)
/* 0A8110 800AD6B0 50C4C00E */  rlwimi  r4, r6, 0x18, 0, 7
/* 0A8114 800AD6B4 9088012C */  stw     r4, 0x12c(r8)
/* 0A8118 800AD6B8 98038000 */  stb     r0, -0x8000(r3)
/* 0A811C 800AD6BC 8008012C */  lwz     r0, 0x12c(r8)
/* 0A8120 800AD6C0 90038000 */  stw     r0, -0x8000(r3)
/* 0A8124 800AD6C4 48000044 */  b       lbl_800AD708
lbl_800AD6C8:
/* 0A8128 800AD6C8 81028400 */  lwz     r8, __GXData@sda21(r2)
/* 0A812C 800AD6CC 38C00026 */  li      r6, 0x26
/* 0A8130 800AD6D0 38000061 */  li      r0, 0x61
/* 0A8134 800AD6D4 80E8012C */  lwz     r7, 0x12c(r8)
/* 0A8138 800AD6D8 5087452E */  rlwimi  r7, r4, 8, 0x14, 0x17
/* 0A813C 800AD6DC 3C60CC01 */  lis     r3, 0xcc01
/* 0A8140 800AD6E0 90E8012C */  stw     r7, 0x12c(r8)
/* 0A8144 800AD6E4 8088012C */  lwz     r4, 0x12c(r8)
/* 0A8148 800AD6E8 50A46426 */  rlwimi  r4, r5, 0xc, 0x10, 0x13
/* 0A814C 800AD6EC 9088012C */  stw     r4, 0x12c(r8)
/* 0A8150 800AD6F0 8088012C */  lwz     r4, 0x12c(r8)
/* 0A8154 800AD6F4 50C4C00E */  rlwimi  r4, r6, 0x18, 0, 7
/* 0A8158 800AD6F8 9088012C */  stw     r4, 0x12c(r8)
/* 0A815C 800AD6FC 98038000 */  stb     r0, -0x8000(r3)
/* 0A8160 800AD700 8008012C */  lwz     r0, 0x12c(r8)
/* 0A8164 800AD704 90038000 */  stw     r0, -0x8000(r3)
lbl_800AD708:
/* 0A8168 800AD708 80628400 */  lwz     r3, __GXData@sda21(r2)
/* 0A816C 800AD70C 38000000 */  li      r0, 0
/* 0A8170 800AD710 B0030002 */  sth     r0, 2(r3)
/* 0A8174 800AD714 4E800020 */  blr     

glabel GXSetNumIndStages
/* 0A8178 800AD718 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A817C 800AD71C 5460063E */  clrlwi  r0, r3, 0x18
/* 0A8180 800AD720 80640204 */  lwz     r3, 0x204(r4)
/* 0A8184 800AD724 5003835E */  rlwimi  r3, r0, 0x10, 0xd, 0xf
/* 0A8188 800AD728 90640204 */  stw     r3, 0x204(r4)
/* 0A818C 800AD72C 800405AC */  lwz     r0, 0x5ac(r4)
/* 0A8190 800AD730 60000006 */  ori     r0, r0, 6
/* 0A8194 800AD734 900405AC */  stw     r0, 0x5ac(r4)
/* 0A8198 800AD738 4E800020 */  blr     

glabel GXSetTevDirect
/* 0A819C 800AD73C 7C0802A6 */  mflr    r0
/* 0A81A0 800AD740 38800000 */  li      r4, 0
/* 0A81A4 800AD744 90010004 */  stw     r0, 4(r1)
/* 0A81A8 800AD748 38000000 */  li      r0, 0
/* 0A81AC 800AD74C 38A00000 */  li      r5, 0
/* 0A81B0 800AD750 9421FFE8 */  stwu    r1, -0x18(r1)
/* 0A81B4 800AD754 38C00000 */  li      r6, 0
/* 0A81B8 800AD758 38E00000 */  li      r7, 0
/* 0A81BC 800AD75C 90010008 */  stw     r0, 8(r1)
/* 0A81C0 800AD760 39000000 */  li      r8, 0
/* 0A81C4 800AD764 39200000 */  li      r9, 0
/* 0A81C8 800AD768 9001000C */  stw     r0, 0xc(r1)
/* 0A81CC 800AD76C 39400000 */  li      r10, 0
/* 0A81D0 800AD770 4BFFFDF9 */  bl      GXSetTevIndirect
/* 0A81D4 800AD774 8001001C */  lwz     r0, 0x1c(r1)
/* 0A81D8 800AD778 38210018 */  addi    r1, r1, 0x18
/* 0A81DC 800AD77C 7C0803A6 */  mtlr    r0
/* 0A81E0 800AD780 4E800020 */  blr     

glabel __GXUpdateBPMask
/* 0A81E4 800AD784 4E800020 */  blr     

glabel __GXSetIndirectMask
/* 0A81E8 800AD788 80E28400 */  lwz     r7, __GXData@sda21(r2)
/* 0A81EC 800AD78C 38A00061 */  li      r5, 0x61
/* 0A81F0 800AD790 3C80CC01 */  lis     r4, 0xcc01
/* 0A81F4 800AD794 80C70124 */  lwz     r6, 0x124(r7)
/* 0A81F8 800AD798 5066063E */  rlwimi  r6, r3, 0, 0x18, 0x1f
/* 0A81FC 800AD79C 38000000 */  li      r0, 0
/* 0A8200 800AD7A0 90C70124 */  stw     r6, 0x124(r7)
/* 0A8204 800AD7A4 98A48000 */  stb     r5, -0x8000(r4)
/* 0A8208 800AD7A8 80670124 */  lwz     r3, 0x124(r7)
/* 0A820C 800AD7AC 90648000 */  stw     r3, -0x8000(r4)
/* 0A8210 800AD7B0 B0070002 */  sth     r0, 2(r7)
/* 0A8214 800AD7B4 4E800020 */  blr     

glabel __GXFlushTextureState
/* 0A8218 800AD7B8 38000061 */  li      r0, 0x61
/* 0A821C 800AD7BC 80828400 */  lwz     r4, __GXData@sda21(r2)
/* 0A8220 800AD7C0 3CA0CC01 */  lis     r5, 0xcc01
/* 0A8224 800AD7C4 98058000 */  stb     r0, -0x8000(r5)
/* 0A8228 800AD7C8 38000000 */  li      r0, 0
/* 0A822C 800AD7CC 80640124 */  lwz     r3, 0x124(r4)
/* 0A8230 800AD7D0 90658000 */  stw     r3, -0x8000(r5)
/* 0A8234 800AD7D4 B0040002 */  sth     r0, 2(r4)
/* 0A8238 800AD7D8 4E800020 */  blr     
