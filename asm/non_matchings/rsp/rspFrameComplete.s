glabel rspFrameComplete
/* 06C9CC 80071F6C 7C0802A6 */  mflr    r0
/* 06C9D0 80071F70 90010004 */  stw     r0, 4(r1)
/* 06C9D4 80071F74 9421FFE8 */  stwu    r1, -0x18(r1)
/* 06C9D8 80071F78 93E10014 */  stw     r31, 0x14(r1)
/* 06C9DC 80071F7C 7C7F1B78 */  mr      r31, r3
/* 06C9E0 80071F80 80030008 */  lwz     r0, 8(r3)
/* 06C9E4 80071F84 2C000000 */  cmpwi   r0, 0
/* 06C9E8 80071F88 41820014 */  beq     lbl_80071F9C
/* 06C9EC 80071F8C 3C60800F */  lis     r3, D_800EE27C@ha
/* 06C9F0 80071F90 4CC63182 */  crclr   6
/* 06C9F4 80071F94 3863E27C */  addi    r3, r3, D_800EE27C@l
/* 06C9F8 80071F98 4802C661 */  bl      OSReport
lbl_80071F9C:
/* 06C9FC 80071F9C 801F0000 */  lwz     r0, 0(r31)
/* 06CA00 80071FA0 38600001 */  li      r3, 1
/* 06CA04 80071FA4 60000004 */  ori     r0, r0, 4
/* 06CA08 80071FA8 901F0000 */  stw     r0, 0(r31)
/* 06CA0C 80071FAC 8001001C */  lwz     r0, 0x1c(r1)
/* 06CA10 80071FB0 83E10014 */  lwz     r31, 0x14(r1)
/* 06CA14 80071FB4 38210018 */  addi    r1, r1, 0x18
/* 06CA18 80071FB8 7C0803A6 */  mtlr    r0
/* 06CA1C 80071FBC 4E800020 */  blr     