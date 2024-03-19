# GXTransform.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AD3D4 - 0x800AD9C0

glabel GXSetProjection
/* 0AA3D4 800AD3D4 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0AA3D8 800AD3D8 2C040001 */  cmpwi     r4, 0x1
/* 0AA3DC 800AD3DC 90850420 */  stw       r4, 0x420(r5)
/* 0AA3E0 800AD3E0 C0030000 */  lfs       f0, 0x0(r3)
/* 0AA3E4 800AD3E4 D0050424 */  stfs      f0, 0x424(r5)
/* 0AA3E8 800AD3E8 C0030014 */  lfs       f0, 0x14(r3)
/* 0AA3EC 800AD3EC D005042C */  stfs      f0, 0x42c(r5)
/* 0AA3F0 800AD3F0 C0030028 */  lfs       f0, 0x28(r3)
/* 0AA3F4 800AD3F4 D0050434 */  stfs      f0, 0x434(r5)
/* 0AA3F8 800AD3F8 C003002C */  lfs       f0, 0x2c(r3)
/* 0AA3FC 800AD3FC D0050438 */  stfs      f0, 0x438(r5)
/* 0AA400 800AD400 40820018 */  bne       lbl_800AD418
/* 0AA404 800AD404 C003000C */  lfs       f0, 0xc(r3)
/* 0AA408 800AD408 D0050428 */  stfs      f0, 0x428(r5)
/* 0AA40C 800AD40C C003001C */  lfs       f0, 0x1c(r3)
/* 0AA410 800AD410 D0050430 */  stfs      f0, 0x430(r5)
/* 0AA414 800AD414 48000014 */  b         lbl_800AD428
lbl_800AD418:
/* 0AA418 800AD418 C0030008 */  lfs       f0, 0x8(r3)
/* 0AA41C 800AD41C D0050428 */  stfs      f0, 0x428(r5)
/* 0AA420 800AD420 C0030018 */  lfs       f0, 0x18(r3)
/* 0AA424 800AD424 D0050430 */  stfs      f0, 0x430(r5)
lbl_800AD428:
/* 0AA428 800AD428 38000010 */  li        r0, 0x10
/* 0AA42C 800AD42C 80828400 */  lwz       r4, gx@sda21(r0)
/* 0AA430 800AD430 3CA0CC01 */  lis       r5, 0xcc01
/* 0AA434 800AD434 3C600006 */  lis       r3, 0x6
/* 0AA438 800AD438 98058000 */  stb       r0, -0x8000(r5)
/* 0AA43C 800AD43C 38031020 */  addi      r0, r3, 0x1020
/* 0AA440 800AD440 90058000 */  stw       r0, -0x8000(r5)
/* 0AA444 800AD444 38000001 */  li        r0, 0x1
/* 0AA448 800AD448 C0040424 */  lfs       f0, 0x424(r4)
/* 0AA44C 800AD44C D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA450 800AD450 C0040428 */  lfs       f0, 0x428(r4)
/* 0AA454 800AD454 D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA458 800AD458 C004042C */  lfs       f0, 0x42c(r4)
/* 0AA45C 800AD45C D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA460 800AD460 C0040430 */  lfs       f0, 0x430(r4)
/* 0AA464 800AD464 D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA468 800AD468 C0040434 */  lfs       f0, 0x434(r4)
/* 0AA46C 800AD46C D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA470 800AD470 C0040438 */  lfs       f0, 0x438(r4)
/* 0AA474 800AD474 D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA478 800AD478 80640420 */  lwz       r3, 0x420(r4)
/* 0AA47C 800AD47C 90658000 */  stw       r3, -0x8000(r5)
/* 0AA480 800AD480 B0040002 */  sth       r0, 0x2(r4)
/* 0AA484 800AD484 4E800020 */  blr

glabel fn_800AD488
/* 0AA488 800AD488 7C0802A6 */  mflr      r0
/* 0AA48C 800AD48C 90010004 */  stw       r0, 0x4(r1)
/* 0AA490 800AD490 9421FFE8 */  stwu      r1, -0x18(r1)
/* 0AA494 800AD494 93E10014 */  stw       r31, 0x14(r1)
/* 0AA498 800AD498 7C7F1B78 */  mr        r31, r3
/* 0AA49C 800AD49C C0230000 */  lfs       f1, 0x0(r3)
/* 0AA4A0 800AD4A0 4801F00D */  bl        __cvt_fp2unsigned
/* 0AA4A4 800AD4A4 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0AA4A8 800AD4A8 3C800006 */  lis       r4, 0x6
/* 0AA4AC 800AD4AC 38C00010 */  li        r6, 0x10
/* 0AA4B0 800AD4B0 90670420 */  stw       r3, 0x420(r7)
/* 0AA4B4 800AD4B4 3CA0CC01 */  lis       r5, 0xcc01
/* 0AA4B8 800AD4B8 38641020 */  addi      r3, r4, 0x1020
/* 0AA4BC 800AD4BC C01F0004 */  lfs       f0, 0x4(r31)
/* 0AA4C0 800AD4C0 38000001 */  li        r0, 0x1
/* 0AA4C4 800AD4C4 D0070424 */  stfs      f0, 0x424(r7)
/* 0AA4C8 800AD4C8 C01F0008 */  lfs       f0, 0x8(r31)
/* 0AA4CC 800AD4CC D0070428 */  stfs      f0, 0x428(r7)
/* 0AA4D0 800AD4D0 C01F000C */  lfs       f0, 0xc(r31)
/* 0AA4D4 800AD4D4 D007042C */  stfs      f0, 0x42c(r7)
/* 0AA4D8 800AD4D8 C01F0010 */  lfs       f0, 0x10(r31)
/* 0AA4DC 800AD4DC D0070430 */  stfs      f0, 0x430(r7)
/* 0AA4E0 800AD4E0 C01F0014 */  lfs       f0, 0x14(r31)
/* 0AA4E4 800AD4E4 D0070434 */  stfs      f0, 0x434(r7)
/* 0AA4E8 800AD4E8 C01F0018 */  lfs       f0, 0x18(r31)
/* 0AA4EC 800AD4EC D0070438 */  stfs      f0, 0x438(r7)
/* 0AA4F0 800AD4F0 98C58000 */  stb       r6, -0x8000(r5)
/* 0AA4F4 800AD4F4 90658000 */  stw       r3, -0x8000(r5)
/* 0AA4F8 800AD4F8 C0070424 */  lfs       f0, 0x424(r7)
/* 0AA4FC 800AD4FC D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA500 800AD500 C0070428 */  lfs       f0, 0x428(r7)
/* 0AA504 800AD504 D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA508 800AD508 C007042C */  lfs       f0, 0x42c(r7)
/* 0AA50C 800AD50C D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA510 800AD510 C0070430 */  lfs       f0, 0x430(r7)
/* 0AA514 800AD514 D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA518 800AD518 C0070434 */  lfs       f0, 0x434(r7)
/* 0AA51C 800AD51C D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA520 800AD520 C0070438 */  lfs       f0, 0x438(r7)
/* 0AA524 800AD524 D0058000 */  stfs      f0, -0x8000(r5)
/* 0AA528 800AD528 80670420 */  lwz       r3, 0x420(r7)
/* 0AA52C 800AD52C 90658000 */  stw       r3, -0x8000(r5)
/* 0AA530 800AD530 B0070002 */  sth       r0, 0x2(r7)
/* 0AA534 800AD534 8001001C */  lwz       r0, 0x1c(r1)
/* 0AA538 800AD538 83E10014 */  lwz       r31, 0x14(r1)
/* 0AA53C 800AD53C 38210018 */  addi      r1, r1, 0x18
/* 0AA540 800AD540 7C0803A6 */  mtlr      r0
/* 0AA544 800AD544 4E800020 */  blr

glabel fn_800AD548
/* 0AA548 800AD548 3CA0CC01 */  lis       r5, 0xcc01
/* 0AA54C 800AD54C 38000010 */  li        r0, 0x10
/* 0AA550 800AD550 5484103A */  slwi      r4, r4, 2
/* 0AA554 800AD554 98058000 */  stb       r0, -0x8000(r5)
/* 0AA558 800AD558 6480000B */  oris      r0, r4, 0xb
/* 0AA55C 800AD55C 90058000 */  stw       r0, -0x8000(r5)
/* 0AA560 800AD560 38858000 */  addi      r4, r5, -0x8000
/* 0AA564 800AD564 E0A30000 */  psq_l     f5, 0x0(r3), 0, qr0
/* 0AA568 800AD568 E0830008 */  psq_l     f4, 0x8(r3), 0, qr0
/* 0AA56C 800AD56C E0630010 */  psq_l     f3, 0x10(r3), 0, qr0
/* 0AA570 800AD570 E0430018 */  psq_l     f2, 0x18(r3), 0, qr0
/* 0AA574 800AD574 E0230020 */  psq_l     f1, 0x20(r3), 0, qr0
/* 0AA578 800AD578 E0030028 */  psq_l     f0, 0x28(r3), 0, qr0
/* 0AA57C 800AD57C F0A40000 */  psq_st    f5, 0x0(r4), 0, qr0
/* 0AA580 800AD580 F0840000 */  psq_st    f4, 0x0(r4), 0, qr0
/* 0AA584 800AD584 F0640000 */  psq_st    f3, 0x0(r4), 0, qr0
/* 0AA588 800AD588 F0440000 */  psq_st    f2, 0x0(r4), 0, qr0
/* 0AA58C 800AD58C F0240000 */  psq_st    f1, 0x0(r4), 0, qr0
/* 0AA590 800AD590 F0040000 */  psq_st    f0, 0x0(r4), 0, qr0
/* 0AA594 800AD594 4E800020 */  blr

glabel fn_800AD598
/* 0AA598 800AD598 1CA40003 */  mulli     r5, r4, 0x3
/* 0AA59C 800AD59C 3C80CC01 */  lis       r4, 0xcc01
/* 0AA5A0 800AD5A0 38000010 */  li        r0, 0x10
/* 0AA5A4 800AD5A4 38A50400 */  addi      r5, r5, 0x400
/* 0AA5A8 800AD5A8 98048000 */  stb       r0, -0x8000(r4)
/* 0AA5AC 800AD5AC 64A00008 */  oris      r0, r5, 0x8
/* 0AA5B0 800AD5B0 94048000 */  stwu      r0, -0x8000(r4)
/* 0AA5B4 800AD5B4 E0A30000 */  psq_l     f5, 0x0(r3), 0, qr0
/* 0AA5B8 800AD5B8 C0830008 */  lfs       f4, 0x8(r3)
/* 0AA5BC 800AD5BC E0630010 */  psq_l     f3, 0x10(r3), 0, qr0
/* 0AA5C0 800AD5C0 C0430018 */  lfs       f2, 0x18(r3)
/* 0AA5C4 800AD5C4 E0230020 */  psq_l     f1, 0x20(r3), 0, qr0
/* 0AA5C8 800AD5C8 C0030028 */  lfs       f0, 0x28(r3)
/* 0AA5CC 800AD5CC F0A40000 */  psq_st    f5, 0x0(r4), 0, qr0
/* 0AA5D0 800AD5D0 D0840000 */  stfs      f4, 0x0(r4)
/* 0AA5D4 800AD5D4 F0640000 */  psq_st    f3, 0x0(r4), 0, qr0
/* 0AA5D8 800AD5D8 D0440000 */  stfs      f2, 0x0(r4)
/* 0AA5DC 800AD5DC F0240000 */  psq_st    f1, 0x0(r4), 0, qr0
/* 0AA5E0 800AD5E0 D0040000 */  stfs      f0, 0x0(r4)
/* 0AA5E4 800AD5E4 4E800020 */  blr

glabel fn_800AD5E8
/* 0AA5E8 800AD5E8 7C0802A6 */  mflr      r0
/* 0AA5EC 800AD5EC 90010004 */  stw       r0, 0x4(r1)
/* 0AA5F0 800AD5F0 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AA5F4 800AD5F4 80828400 */  lwz       r4, gx@sda21(r0)
/* 0AA5F8 800AD5F8 84040080 */  lwzu      r0, 0x80(r4)
/* 0AA5FC 800AD5FC 54000032 */  clrrwi    r0, r0, 6
/* 0AA600 800AD600 7C001B78 */  or        r0, r0, r3
/* 0AA604 800AD604 90040000 */  stw       r0, 0x0(r4)
/* 0AA608 800AD608 38600000 */  li        r3, 0x0
/* 0AA60C 800AD60C 48000331 */  bl        fn_800AD93C
/* 0AA610 800AD610 8001000C */  lwz       r0, 0xc(r1)
/* 0AA614 800AD614 38210008 */  addi      r1, r1, 0x8
/* 0AA618 800AD618 7C0803A6 */  mtlr      r0
/* 0AA61C 800AD61C 4E800020 */  blr

glabel fn_800AD620
/* 0AA620 800AD620 28040040 */  cmplwi    r4, 0x40
/* 0AA624 800AD624 41800014 */  blt       lbl_800AD638
/* 0AA628 800AD628 3804FFC0 */  subi      r0, r4, 0x40
/* 0AA62C 800AD62C 5404103A */  slwi      r4, r0, 2
/* 0AA630 800AD630 38E40500 */  addi      r7, r4, 0x500
/* 0AA634 800AD634 48000008 */  b         lbl_800AD63C
lbl_800AD638:
/* 0AA638 800AD638 5487103A */  slwi      r7, r4, 2
lbl_800AD63C:
/* 0AA63C 800AD63C 2C050001 */  cmpwi     r5, 0x1
/* 0AA640 800AD640 4082000C */  bne       lbl_800AD64C
/* 0AA644 800AD644 38800008 */  li        r4, 0x8
/* 0AA648 800AD648 48000008 */  b         lbl_800AD650
lbl_800AD64C:
/* 0AA64C 800AD64C 3880000C */  li        r4, 0xc
lbl_800AD650:
/* 0AA650 800AD650 3804FFFF */  subi      r0, r4, 0x1
/* 0AA654 800AD654 5406801E */  slwi      r6, r0, 16
/* 0AA658 800AD658 38000010 */  li        r0, 0x10
/* 0AA65C 800AD65C 3C80CC01 */  lis       r4, 0xcc01
/* 0AA660 800AD660 98048000 */  stb       r0, -0x8000(r4)
/* 0AA664 800AD664 7CE03378 */  or        r0, r7, r6
/* 0AA668 800AD668 2C050000 */  cmpwi     r5, 0x0
/* 0AA66C 800AD66C 90048000 */  stw       r0, -0x8000(r4)
/* 0AA670 800AD670 4082003C */  bne       lbl_800AD6AC
/* 0AA674 800AD674 38848000 */  addi      r4, r4, -0x8000
/* 0AA678 800AD678 E0A30000 */  psq_l     f5, 0x0(r3), 0, qr0
/* 0AA67C 800AD67C E0830008 */  psq_l     f4, 0x8(r3), 0, qr0
/* 0AA680 800AD680 E0630010 */  psq_l     f3, 0x10(r3), 0, qr0
/* 0AA684 800AD684 E0430018 */  psq_l     f2, 0x18(r3), 0, qr0
/* 0AA688 800AD688 E0230020 */  psq_l     f1, 0x20(r3), 0, qr0
/* 0AA68C 800AD68C E0030028 */  psq_l     f0, 0x28(r3), 0, qr0
/* 0AA690 800AD690 F0A40000 */  psq_st    f5, 0x0(r4), 0, qr0
/* 0AA694 800AD694 F0840000 */  psq_st    f4, 0x0(r4), 0, qr0
/* 0AA698 800AD698 F0640000 */  psq_st    f3, 0x0(r4), 0, qr0
/* 0AA69C 800AD69C F0440000 */  psq_st    f2, 0x0(r4), 0, qr0
/* 0AA6A0 800AD6A0 F0240000 */  psq_st    f1, 0x0(r4), 0, qr0
/* 0AA6A4 800AD6A4 F0040000 */  psq_st    f0, 0x0(r4), 0, qr0
/* 0AA6A8 800AD6A8 4E800020 */  blr
lbl_800AD6AC:
/* 0AA6AC 800AD6AC 38848000 */  addi      r4, r4, -0x8000
/* 0AA6B0 800AD6B0 E0630000 */  psq_l     f3, 0x0(r3), 0, qr0
/* 0AA6B4 800AD6B4 E0430008 */  psq_l     f2, 0x8(r3), 0, qr0
/* 0AA6B8 800AD6B8 E0230010 */  psq_l     f1, 0x10(r3), 0, qr0
/* 0AA6BC 800AD6BC E0030018 */  psq_l     f0, 0x18(r3), 0, qr0
/* 0AA6C0 800AD6C0 F0640000 */  psq_st    f3, 0x0(r4), 0, qr0
/* 0AA6C4 800AD6C4 F0440000 */  psq_st    f2, 0x0(r4), 0, qr0
/* 0AA6C8 800AD6C8 F0240000 */  psq_st    f1, 0x0(r4), 0, qr0
/* 0AA6CC 800AD6CC F0040000 */  psq_st    f0, 0x0(r4), 0, qr0
/* 0AA6D0 800AD6D0 4E800020 */  blr

glabel GXSetViewportJitter
/* 0AA6D4 800AD6D4 7C0802A6 */  mflr      r0
/* 0AA6D8 800AD6D8 28030000 */  cmplwi    r3, 0x0
/* 0AA6DC 800AD6DC 90010004 */  stw       r0, 0x4(r1)
/* 0AA6E0 800AD6E0 9421FFA0 */  stwu      r1, -0x60(r1)
/* 0AA6E4 800AD6E4 DBE10058 */  stfd      f31, 0x58(r1)
/* 0AA6E8 800AD6E8 DBC10050 */  stfd      f30, 0x50(r1)
/* 0AA6EC 800AD6EC DBA10048 */  stfd      f29, 0x48(r1)
/* 0AA6F0 800AD6F0 DB810040 */  stfd      f28, 0x40(r1)
/* 0AA6F4 800AD6F4 DB610038 */  stfd      f27, 0x38(r1)
/* 0AA6F8 800AD6F8 DB410030 */  stfd      f26, 0x30(r1)
/* 0AA6FC 800AD6FC 4082000C */  bne       lbl_800AD708
/* 0AA700 800AD700 C00284B8 */  lfs       f0, D_8018C3F8@sda21(r0)
/* 0AA704 800AD704 EC420028 */  fsubs     f2, f2, f0
lbl_800AD708:
/* 0AA708 800AD708 C16284B8 */  lfs       f11, D_8018C3F8@sda21(r0)
/* 0AA70C 800AD70C FD402050 */  fneg      f10, f4
/* 0AA710 800AD710 C00284C0 */  lfs       f0, D_8018C400@sda21(r0)
/* 0AA714 800AD714 C12284BC */  lfs       f9, D_8018C3FC@sda21(r0)
/* 0AA718 800AD718 EFE302F2 */  fmuls     f31, f3, f11
/* 0AA71C 800AD71C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0AA720 800AD720 ECE402F2 */  fmuls     f7, f4, f11
/* 0AA724 800AD724 D023043C */  stfs      f1, 0x43c(r3)
/* 0AA728 800AD728 ED01F82A */  fadds     f8, f1, f31
/* 0AA72C 800AD72C EFC001B2 */  fmuls     f30, f0, f6
/* 0AA730 800AD730 D0430440 */  stfs      f2, 0x440(r3)
/* 0AA734 800AD734 EC22382A */  fadds     f1, f2, f7
/* 0AA738 800AD738 D0630444 */  stfs      f3, 0x444(r3)
/* 0AA73C 800AD73C EC000172 */  fmuls     f0, f0, f5
/* 0AA740 800AD740 EFAA02F2 */  fmuls     f29, f10, f11
/* 0AA744 800AD744 D0830448 */  stfs      f4, 0x448(r3)
/* 0AA748 800AD748 EF69402A */  fadds     f27, f9, f8
/* 0AA74C 800AD74C D0A3044C */  stfs      f5, 0x44c(r3)
/* 0AA750 800AD750 EF49082A */  fadds     f26, f9, f1
/* 0AA754 800AD754 EF9E0028 */  fsubs     f28, f30, f0
/* 0AA758 800AD758 D0C30450 */  stfs      f6, 0x450(r3)
/* 0AA75C 800AD75C 88030454 */  lbz       r0, 0x454(r3)
/* 0AA760 800AD760 28000000 */  cmplwi    r0, 0x0
/* 0AA764 800AD764 41820010 */  beq       lbl_800AD774
/* 0AA768 800AD768 FC202890 */  fmr       f1, f5
/* 0AA76C 800AD76C C0430458 */  lfs       f2, 0x458(r3)
/* 0AA770 800AD770 4BFFFC61 */  bl        fn_800AD3D0
lbl_800AD774:
/* 0AA774 800AD774 38000010 */  li        r0, 0x10
/* 0AA778 800AD778 80628400 */  lwz       r3, gx@sda21(r0)
/* 0AA77C 800AD77C 3CA0CC01 */  lis       r5, 0xcc01
/* 0AA780 800AD780 3C800005 */  lis       r4, 0x5
/* 0AA784 800AD784 98058000 */  stb       r0, -0x8000(r5)
/* 0AA788 800AD788 3804101A */  addi      r0, r4, 0x101a
/* 0AA78C 800AD78C 90058000 */  stw       r0, -0x8000(r5)
/* 0AA790 800AD790 38000001 */  li        r0, 0x1
/* 0AA794 800AD794 D3E58000 */  stfs      f31, -0x8000(r5)
/* 0AA798 800AD798 D3A58000 */  stfs      f29, -0x8000(r5)
/* 0AA79C 800AD79C D3858000 */  stfs      f28, -0x8000(r5)
/* 0AA7A0 800AD7A0 D3658000 */  stfs      f27, -0x8000(r5)
/* 0AA7A4 800AD7A4 D3458000 */  stfs      f26, -0x8000(r5)
/* 0AA7A8 800AD7A8 D3C58000 */  stfs      f30, -0x8000(r5)
/* 0AA7AC 800AD7AC B0030002 */  sth       r0, 0x2(r3)
/* 0AA7B0 800AD7B0 80010064 */  lwz       r0, 0x64(r1)
/* 0AA7B4 800AD7B4 CBE10058 */  lfd       f31, 0x58(r1)
/* 0AA7B8 800AD7B8 CBC10050 */  lfd       f30, 0x50(r1)
/* 0AA7BC 800AD7BC CBA10048 */  lfd       f29, 0x48(r1)
/* 0AA7C0 800AD7C0 CB810040 */  lfd       f28, 0x40(r1)
/* 0AA7C4 800AD7C4 CB610038 */  lfd       f27, 0x38(r1)
/* 0AA7C8 800AD7C8 CB410030 */  lfd       f26, 0x30(r1)
/* 0AA7CC 800AD7CC 38210060 */  addi      r1, r1, 0x60
/* 0AA7D0 800AD7D0 7C0803A6 */  mtlr      r0
/* 0AA7D4 800AD7D4 4E800020 */  blr

glabel GXSetViewport
/* 0AA7D8 800AD7D8 7C0802A6 */  mflr      r0
/* 0AA7DC 800AD7DC 38600001 */  li        r3, 0x1
/* 0AA7E0 800AD7E0 90010004 */  stw       r0, 0x4(r1)
/* 0AA7E4 800AD7E4 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0AA7E8 800AD7E8 4BFFFEED */  bl        GXSetViewportJitter
/* 0AA7EC 800AD7EC 8001000C */  lwz       r0, 0xc(r1)
/* 0AA7F0 800AD7F0 38210008 */  addi      r1, r1, 0x8
/* 0AA7F4 800AD7F4 7C0803A6 */  mtlr      r0
/* 0AA7F8 800AD7F8 4E800020 */  blr

glabel GXSetScissor
/* 0AA7FC 800AD7FC 81028400 */  lwz       r8, gx@sda21(r0)
/* 0AA800 800AD800 39230156 */  addi      r9, r3, 0x156
/* 0AA804 800AD804 39440156 */  addi      r10, r4, 0x156
/* 0AA808 800AD808 806800F8 */  lwz       r3, 0xf8(r8)
/* 0AA80C 800AD80C 3805FFFF */  subi      r0, r5, 0x1
/* 0AA810 800AD810 55246026 */  slwi      r4, r9, 12
/* 0AA814 800AD814 54630028 */  clrrwi    r3, r3, 11
/* 0AA818 800AD818 7C635378 */  or        r3, r3, r10
/* 0AA81C 800AD81C 906800F8 */  stw       r3, 0xf8(r8)
/* 0AA820 800AD820 3866FFFF */  subi      r3, r6, 0x1
/* 0AA824 800AD824 7CCA1A14 */  add       r6, r10, r3
/* 0AA828 800AD828 80A800F8 */  lwz       r5, 0xf8(r8)
/* 0AA82C 800AD82C 7C090214 */  add       r0, r9, r0
/* 0AA830 800AD830 54A30510 */  rlwinm    r3, r5, 0, 20, 8
/* 0AA834 800AD834 7C632378 */  or        r3, r3, r4
/* 0AA838 800AD838 906800F8 */  stw       r3, 0xf8(r8)
/* 0AA83C 800AD83C 54036026 */  slwi      r3, r0, 12
/* 0AA840 800AD840 38A00061 */  li        r5, 0x61
/* 0AA844 800AD844 80E800FC */  lwz       r7, 0xfc(r8)
/* 0AA848 800AD848 3C80CC01 */  lis       r4, 0xcc01
/* 0AA84C 800AD84C 38000000 */  li        r0, 0x0
/* 0AA850 800AD850 54E70028 */  clrrwi    r7, r7, 11
/* 0AA854 800AD854 7CE63378 */  or        r6, r7, r6
/* 0AA858 800AD858 90C800FC */  stw       r6, 0xfc(r8)
/* 0AA85C 800AD85C 80C800FC */  lwz       r6, 0xfc(r8)
/* 0AA860 800AD860 54C60510 */  rlwinm    r6, r6, 0, 20, 8
/* 0AA864 800AD864 7CC31B78 */  or        r3, r6, r3
/* 0AA868 800AD868 906800FC */  stw       r3, 0xfc(r8)
/* 0AA86C 800AD86C 98A48000 */  stb       r5, -0x8000(r4)
/* 0AA870 800AD870 806800F8 */  lwz       r3, 0xf8(r8)
/* 0AA874 800AD874 90648000 */  stw       r3, -0x8000(r4)
/* 0AA878 800AD878 98A48000 */  stb       r5, -0x8000(r4)
/* 0AA87C 800AD87C 806800FC */  lwz       r3, 0xfc(r8)
/* 0AA880 800AD880 90648000 */  stw       r3, -0x8000(r4)
/* 0AA884 800AD884 B0080002 */  sth       r0, 0x2(r8)
/* 0AA888 800AD888 4E800020 */  blr

glabel fn_800AD88C
/* 0AA88C 800AD88C 81028400 */  lwz       r8, gx@sda21(r0)
/* 0AA890 800AD890 80E800F8 */  lwz       r7, 0xf8(r8)
/* 0AA894 800AD894 810800FC */  lwz       r8, 0xfc(r8)
/* 0AA898 800AD898 54E9A57E */  extrwi    r9, r7, 11, 9
/* 0AA89C 800AD89C 3809FEAA */  subi      r0, r9, 0x156
/* 0AA8A0 800AD8A0 90030000 */  stw       r0, 0x0(r3)
/* 0AA8A4 800AD8A4 54E7057E */  clrlwi    r7, r7, 21
/* 0AA8A8 800AD8A8 3867FEAA */  subi      r3, r7, 0x156
/* 0AA8AC 800AD8AC 90640000 */  stw       r3, 0x0(r4)
/* 0AA8B0 800AD8B0 5500A57E */  extrwi    r0, r8, 11, 9
/* 0AA8B4 800AD8B4 7C690050 */  subf      r3, r9, r0
/* 0AA8B8 800AD8B8 38030001 */  addi      r0, r3, 0x1
/* 0AA8BC 800AD8BC 5504057E */  clrlwi    r4, r8, 21
/* 0AA8C0 800AD8C0 90050000 */  stw       r0, 0x0(r5)
/* 0AA8C4 800AD8C4 7C672050 */  subf      r3, r7, r4
/* 0AA8C8 800AD8C8 38030001 */  addi      r0, r3, 0x1
/* 0AA8CC 800AD8CC 90060000 */  stw       r0, 0x0(r6)
/* 0AA8D0 800AD8D0 4E800020 */  blr

glabel fn_800AD8D4
/* 0AA8D4 800AD8D4 38A30156 */  addi      r5, r3, 0x156
/* 0AA8D8 800AD8D8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0AA8DC 800AD8DC 38040156 */  addi      r0, r4, 0x156
/* 0AA8E0 800AD8E0 54A4F87E */  srwi      r4, r5, 1
/* 0AA8E4 800AD8E4 54840596 */  rlwinm    r4, r4, 0, 22, 11
/* 0AA8E8 800AD8E8 5400482A */  extlwi    r0, r0, 22, 9
/* 0AA8EC 800AD8EC 7C800378 */  or        r0, r4, r0
/* 0AA8F0 800AD8F0 5405023E */  clrlwi    r5, r0, 8
/* 0AA8F4 800AD8F4 38000061 */  li        r0, 0x61
/* 0AA8F8 800AD8F8 3C80CC01 */  lis       r4, 0xcc01
/* 0AA8FC 800AD8FC 98048000 */  stb       r0, -0x8000(r4)
/* 0AA900 800AD900 64A55900 */  oris      r5, r5, 0x5900
/* 0AA904 800AD904 38000000 */  li        r0, 0x0
/* 0AA908 800AD908 90A48000 */  stw       r5, -0x8000(r4)
/* 0AA90C 800AD90C B0030002 */  sth       r0, 0x2(r3)
/* 0AA910 800AD910 4E800020 */  blr

glabel fn_800AD914
/* 0AA914 800AD914 38000010 */  li        r0, 0x10
/* 0AA918 800AD918 80828400 */  lwz       r4, gx@sda21(r0)
/* 0AA91C 800AD91C 3CC0CC01 */  lis       r6, 0xcc01
/* 0AA920 800AD920 98068000 */  stb       r0, -0x8000(r6)
/* 0AA924 800AD924 38A01005 */  li        r5, 0x1005
/* 0AA928 800AD928 38000001 */  li        r0, 0x1
/* 0AA92C 800AD92C 90A68000 */  stw       r5, -0x8000(r6)
/* 0AA930 800AD930 90668000 */  stw       r3, -0x8000(r6)
/* 0AA934 800AD934 B0040002 */  sth       r0, 0x2(r4)
/* 0AA938 800AD938 4E800020 */  blr

glabel fn_800AD93C
/* 0AA93C 800AD93C 2C030005 */  cmpwi     r3, 0x5
/* 0AA940 800AD940 4080003C */  bge       lbl_800AD97C
/* 0AA944 800AD944 38000008 */  li        r0, 0x8
/* 0AA948 800AD948 80828400 */  lwz       r4, gx@sda21(r0)
/* 0AA94C 800AD94C 3CA0CC01 */  lis       r5, 0xcc01
/* 0AA950 800AD950 98058000 */  stb       r0, -0x8000(r5)
/* 0AA954 800AD954 38000030 */  li        r0, 0x30
/* 0AA958 800AD958 38600010 */  li        r3, 0x10
/* 0AA95C 800AD95C 98058000 */  stb       r0, -0x8000(r5)
/* 0AA960 800AD960 38001018 */  li        r0, 0x1018
/* 0AA964 800AD964 80840080 */  lwz       r4, 0x80(r4)
/* 0AA968 800AD968 90858000 */  stw       r4, -0x8000(r5)
/* 0AA96C 800AD96C 98658000 */  stb       r3, -0x8000(r5)
/* 0AA970 800AD970 90058000 */  stw       r0, -0x8000(r5)
/* 0AA974 800AD974 90858000 */  stw       r4, -0x8000(r5)
/* 0AA978 800AD978 48000038 */  b         lbl_800AD9B0
lbl_800AD97C:
/* 0AA97C 800AD97C 38000008 */  li        r0, 0x8
/* 0AA980 800AD980 80828400 */  lwz       r4, gx@sda21(r0)
/* 0AA984 800AD984 3CA0CC01 */  lis       r5, 0xcc01
/* 0AA988 800AD988 98058000 */  stb       r0, -0x8000(r5)
/* 0AA98C 800AD98C 38000040 */  li        r0, 0x40
/* 0AA990 800AD990 38600010 */  li        r3, 0x10
/* 0AA994 800AD994 98058000 */  stb       r0, -0x8000(r5)
/* 0AA998 800AD998 38001019 */  li        r0, 0x1019
/* 0AA99C 800AD99C 80840084 */  lwz       r4, 0x84(r4)
/* 0AA9A0 800AD9A0 90858000 */  stw       r4, -0x8000(r5)
/* 0AA9A4 800AD9A4 98658000 */  stb       r3, -0x8000(r5)
/* 0AA9A8 800AD9A8 90058000 */  stw       r0, -0x8000(r5)
/* 0AA9AC 800AD9AC 90858000 */  stw       r4, -0x8000(r5)
lbl_800AD9B0:
/* 0AA9B0 800AD9B0 80628400 */  lwz       r3, gx@sda21(r0)
/* 0AA9B4 800AD9B4 38000001 */  li        r0, 0x1
/* 0AA9B8 800AD9B8 B0030002 */  sth       r0, 0x2(r3)
/* 0AA9BC 800AD9BC 4E800020 */  blr

# 0x8018C3F8 - 0x8018C408
.section .sdata2, "a"

glabel D_8018C3F8
	.float 0.5

glabel D_8018C3FC
	.float 342

glabel D_8018C400
	.float 16777215
	.float 0
