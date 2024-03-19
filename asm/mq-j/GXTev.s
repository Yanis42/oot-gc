# GXTev.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800AC450 - 0x800ACC34

glabel GXSetTevOp
/* 0A9450 800AC450 2C030000 */  cmpwi     r3, 0x0
/* 0A9454 800AC454 3CA0800F */  lis       r5, D_800F3428@ha
/* 0A9458 800AC458 38053428 */  addi      r0, r5, D_800F3428@l
/* 0A945C 800AC45C 40820014 */  bne       lbl_800AC470
/* 0A9460 800AC460 5484103A */  slwi      r4, r4, 2
/* 0A9464 800AC464 7CA02214 */  add       r5, r0, r4
/* 0A9468 800AC468 39250028 */  addi      r9, r5, 0x28
/* 0A946C 800AC46C 48000018 */  b         lbl_800AC484
lbl_800AC470:
/* 0A9470 800AC470 5484103A */  slwi      r4, r4, 2
/* 0A9474 800AC474 7CA02214 */  add       r5, r0, r4
/* 0A9478 800AC478 7D202214 */  add       r9, r0, r4
/* 0A947C 800AC47C 38A50014 */  addi      r5, r5, 0x14
/* 0A9480 800AC480 3929003C */  addi      r9, r9, 0x3c
lbl_800AC484:
/* 0A9484 800AC484 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A9488 800AC488 5463103A */  slwi      r3, r3, 2
/* 0A948C 800AC48C 80050000 */  lwz       r0, 0x0(r5)
/* 0A9490 800AC490 38A00061 */  li        r5, 0x61
/* 0A9494 800AC494 7CC71A14 */  add       r6, r7, r3
/* 0A9498 800AC498 80660130 */  lwz       r3, 0x130(r6)
/* 0A949C 800AC49C 3C80CC01 */  lis       r4, 0xcc01
/* 0A94A0 800AC4A0 98A48000 */  stb       r5, -0x8000(r4)
/* 0A94A4 800AC4A4 5463000E */  clrrwi    r3, r3, 24
/* 0A94A8 800AC4A8 5003023E */  rlwimi    r3, r0, 0, 8, 31
/* 0A94AC 800AC4AC 90648000 */  stw       r3, -0x8000(r4)
/* 0A94B0 800AC4B0 38000000 */  li        r0, 0x0
/* 0A94B4 800AC4B4 90660130 */  stw       r3, 0x130(r6)
/* 0A94B8 800AC4B8 81060170 */  lwz       r8, 0x170(r6)
/* 0A94BC 800AC4BC 80690000 */  lwz       r3, 0x0(r9)
/* 0A94C0 800AC4C0 5508070E */  rlwinm    r8, r8, 0, 28, 7
/* 0A94C4 800AC4C4 98A48000 */  stb       r5, -0x8000(r4)
/* 0A94C8 800AC4C8 50680236 */  rlwimi    r8, r3, 0, 8, 27
/* 0A94CC 800AC4CC 91048000 */  stw       r8, -0x8000(r4)
/* 0A94D0 800AC4D0 91060170 */  stw       r8, 0x170(r6)
/* 0A94D4 800AC4D4 B0070002 */  sth       r0, 0x2(r7)
/* 0A94D8 800AC4D8 4E800020 */  blr

glabel GXSetTevColorIn
/* 0A94DC 800AC4DC 81228400 */  lwz       r9, gx@sda21(r0)
/* 0A94E0 800AC4E0 5463103A */  slwi      r3, r3, 2
/* 0A94E4 800AC4E4 38000061 */  li        r0, 0x61
/* 0A94E8 800AC4E8 7D091A14 */  add       r8, r9, r3
/* 0A94EC 800AC4EC 81480130 */  lwz       r10, 0x130(r8)
/* 0A94F0 800AC4F0 3C60CC01 */  lis       r3, 0xcc01
/* 0A94F4 800AC4F4 508A6426 */  rlwimi    r10, r4, 12, 16, 19
/* 0A94F8 800AC4F8 98038000 */  stb       r0, -0x8000(r3)
/* 0A94FC 800AC4FC 388A0000 */  addi      r4, r10, 0x0
/* 0A9500 800AC500 50A4452E */  rlwimi    r4, r5, 8, 20, 23
/* 0A9504 800AC504 50C42636 */  rlwimi    r4, r6, 4, 24, 27
/* 0A9508 800AC508 50E4073E */  rlwimi    r4, r7, 0, 28, 31
/* 0A950C 800AC50C 90838000 */  stw       r4, -0x8000(r3)
/* 0A9510 800AC510 38000000 */  li        r0, 0x0
/* 0A9514 800AC514 90880130 */  stw       r4, 0x130(r8)
/* 0A9518 800AC518 B0090002 */  sth       r0, 0x2(r9)
/* 0A951C 800AC51C 4E800020 */  blr

glabel GXSetTevAlphaIn
/* 0A9520 800AC520 81228400 */  lwz       r9, gx@sda21(r0)
/* 0A9524 800AC524 5463103A */  slwi      r3, r3, 2
/* 0A9528 800AC528 38000061 */  li        r0, 0x61
/* 0A952C 800AC52C 7D091A14 */  add       r8, r9, r3
/* 0A9530 800AC530 81480170 */  lwz       r10, 0x170(r8)
/* 0A9534 800AC534 3C60CC01 */  lis       r3, 0xcc01
/* 0A9538 800AC538 508A6C24 */  rlwimi    r10, r4, 13, 16, 18
/* 0A953C 800AC53C 98038000 */  stb       r0, -0x8000(r3)
/* 0A9540 800AC540 388A0000 */  addi      r4, r10, 0x0
/* 0A9544 800AC544 50A454EA */  rlwimi    r4, r5, 10, 19, 21
/* 0A9548 800AC548 50C43DB0 */  rlwimi    r4, r6, 7, 22, 24
/* 0A954C 800AC54C 50E42676 */  rlwimi    r4, r7, 4, 25, 27
/* 0A9550 800AC550 90838000 */  stw       r4, -0x8000(r3)
/* 0A9554 800AC554 38000000 */  li        r0, 0x0
/* 0A9558 800AC558 90880170 */  stw       r4, 0x170(r8)
/* 0A955C 800AC55C B0090002 */  sth       r0, 0x2(r9)
/* 0A9560 800AC560 4E800020 */  blr

glabel GXSetTevColorOp
/* 0A9564 800AC564 80028400 */  lwz       r0, gx@sda21(r0)
/* 0A9568 800AC568 5469103A */  slwi      r9, r3, 2
/* 0A956C 800AC56C 2C040001 */  cmpwi     r4, 0x1
/* 0A9570 800AC570 7C604A14 */  add       r3, r0, r9
/* 0A9574 800AC574 80630130 */  lwz       r3, 0x130(r3)
/* 0A9578 800AC578 5083935A */  rlwimi    r3, r4, 18, 13, 13
/* 0A957C 800AC57C 39430000 */  addi      r10, r3, 0x0
/* 0A9580 800AC580 41810010 */  bgt       lbl_800AC590
/* 0A9584 800AC584 50CAA296 */  rlwimi    r10, r6, 20, 10, 11
/* 0A9588 800AC588 50AA839E */  rlwimi    r10, r5, 16, 14, 15
/* 0A958C 800AC58C 48000010 */  b         lbl_800AC59C
lbl_800AC590:
/* 0A9590 800AC590 38000003 */  li        r0, 0x3
/* 0A9594 800AC594 508A9A96 */  rlwimi    r10, r4, 19, 10, 11
/* 0A9598 800AC598 500A839E */  rlwimi    r10, r0, 16, 14, 15
lbl_800AC59C:
/* 0A959C 800AC59C 38000061 */  li        r0, 0x61
/* 0A95A0 800AC5A0 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A95A4 800AC5A4 3CA0CC01 */  lis       r5, 0xcc01
/* 0A95A8 800AC5A8 98058000 */  stb       r0, -0x8000(r5)
/* 0A95AC 800AC5AC 50EA9B18 */  rlwimi    r10, r7, 19, 12, 12
/* 0A95B0 800AC5B0 510AB212 */  rlwimi    r10, r8, 22, 8, 9
/* 0A95B4 800AC5B4 91458000 */  stw       r10, -0x8000(r5)
/* 0A95B8 800AC5B8 7C644A14 */  add       r3, r4, r9
/* 0A95BC 800AC5BC 38000000 */  li        r0, 0x0
/* 0A95C0 800AC5C0 91430130 */  stw       r10, 0x130(r3)
/* 0A95C4 800AC5C4 B0040002 */  sth       r0, 0x2(r4)
/* 0A95C8 800AC5C8 4E800020 */  blr

glabel GXSetTevAlphaOp
/* 0A95CC 800AC5CC 80028400 */  lwz       r0, gx@sda21(r0)
/* 0A95D0 800AC5D0 5469103A */  slwi      r9, r3, 2
/* 0A95D4 800AC5D4 2C040001 */  cmpwi     r4, 0x1
/* 0A95D8 800AC5D8 7C604A14 */  add       r3, r0, r9
/* 0A95DC 800AC5DC 80630170 */  lwz       r3, 0x170(r3)
/* 0A95E0 800AC5E0 5083935A */  rlwimi    r3, r4, 18, 13, 13
/* 0A95E4 800AC5E4 39430000 */  addi      r10, r3, 0x0
/* 0A95E8 800AC5E8 41810010 */  bgt       lbl_800AC5F8
/* 0A95EC 800AC5EC 50CAA296 */  rlwimi    r10, r6, 20, 10, 11
/* 0A95F0 800AC5F0 50AA839E */  rlwimi    r10, r5, 16, 14, 15
/* 0A95F4 800AC5F4 48000010 */  b         lbl_800AC604
lbl_800AC5F8:
/* 0A95F8 800AC5F8 38000003 */  li        r0, 0x3
/* 0A95FC 800AC5FC 508A9A96 */  rlwimi    r10, r4, 19, 10, 11
/* 0A9600 800AC600 500A839E */  rlwimi    r10, r0, 16, 14, 15
lbl_800AC604:
/* 0A9604 800AC604 38000061 */  li        r0, 0x61
/* 0A9608 800AC608 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A960C 800AC60C 3CA0CC01 */  lis       r5, 0xcc01
/* 0A9610 800AC610 98058000 */  stb       r0, -0x8000(r5)
/* 0A9614 800AC614 50EA9B18 */  rlwimi    r10, r7, 19, 12, 12
/* 0A9618 800AC618 510AB212 */  rlwimi    r10, r8, 22, 8, 9
/* 0A961C 800AC61C 91458000 */  stw       r10, -0x8000(r5)
/* 0A9620 800AC620 7C644A14 */  add       r3, r4, r9
/* 0A9624 800AC624 38000000 */  li        r0, 0x0
/* 0A9628 800AC628 91430170 */  stw       r10, 0x170(r3)
/* 0A962C 800AC62C B0040002 */  sth       r0, 0x2(r4)
/* 0A9630 800AC630 4E800020 */  blr

glabel GXSetTevColor
/* 0A9634 800AC634 88040003 */  lbz       r0, 0x3(r4)
/* 0A9638 800AC638 5468083C */  slwi      r8, r3, 1
/* 0A963C 800AC63C 88A40000 */  lbz       r5, 0x0(r4)
/* 0A9640 800AC640 38E800E0 */  addi      r7, r8, 0xe0
/* 0A9644 800AC644 54096026 */  slwi      r9, r0, 12
/* 0A9648 800AC648 50A9063E */  rlwimi    r9, r5, 0, 24, 31
/* 0A964C 800AC64C 89440002 */  lbz       r10, 0x2(r4)
/* 0A9650 800AC650 88C40001 */  lbz       r6, 0x1(r4)
/* 0A9654 800AC654 54E7C00E */  slwi      r7, r7, 24
/* 0A9658 800AC658 38A00061 */  li        r5, 0x61
/* 0A965C 800AC65C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A9660 800AC660 3C80CC01 */  lis       r4, 0xcc01
/* 0A9664 800AC664 98A48000 */  stb       r5, -0x8000(r4)
/* 0A9668 800AC668 5127033E */  rlwimi    r7, r9, 0, 12, 31
/* 0A966C 800AC66C 380800E1 */  addi      r0, r8, 0xe1
/* 0A9670 800AC670 90E48000 */  stw       r7, -0x8000(r4)
/* 0A9674 800AC674 54C76026 */  slwi      r7, r6, 12
/* 0A9678 800AC678 5406C00E */  slwi      r6, r0, 24
/* 0A967C 800AC67C 5147063E */  rlwimi    r7, r10, 0, 24, 31
/* 0A9680 800AC680 98A48000 */  stb       r5, -0x8000(r4)
/* 0A9684 800AC684 50E6033E */  rlwimi    r6, r7, 0, 12, 31
/* 0A9688 800AC688 90C48000 */  stw       r6, -0x8000(r4)
/* 0A968C 800AC68C 38000000 */  li        r0, 0x0
/* 0A9690 800AC690 98A48000 */  stb       r5, -0x8000(r4)
/* 0A9694 800AC694 90C48000 */  stw       r6, -0x8000(r4)
/* 0A9698 800AC698 98A48000 */  stb       r5, -0x8000(r4)
/* 0A969C 800AC69C 90C48000 */  stw       r6, -0x8000(r4)
/* 0A96A0 800AC6A0 B0030002 */  sth       r0, 0x2(r3)
/* 0A96A4 800AC6A4 4E800020 */  blr

glabel GXSetTevColorS10
/* 0A96A8 800AC6A8 A8040006 */  lha       r0, 0x6(r4)
/* 0A96AC 800AC6AC 5469083C */  slwi      r9, r3, 1
/* 0A96B0 800AC6B0 A8A40000 */  lha       r5, 0x0(r4)
/* 0A96B4 800AC6B4 390900E0 */  addi      r8, r9, 0xe0
/* 0A96B8 800AC6B8 540A6266 */  clrlslwi  r10, r0, 21, 12
/* 0A96BC 800AC6BC 50AA057E */  rlwimi    r10, r5, 0, 21, 31
/* 0A96C0 800AC6C0 A8E40004 */  lha       r7, 0x4(r4)
/* 0A96C4 800AC6C4 A8C40002 */  lha       r6, 0x2(r4)
/* 0A96C8 800AC6C8 5508C00E */  slwi      r8, r8, 24
/* 0A96CC 800AC6CC 38A00061 */  li        r5, 0x61
/* 0A96D0 800AC6D0 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A96D4 800AC6D4 3C80CC01 */  lis       r4, 0xcc01
/* 0A96D8 800AC6D8 98A48000 */  stb       r5, -0x8000(r4)
/* 0A96DC 800AC6DC 5148027E */  rlwimi    r8, r10, 0, 9, 31
/* 0A96E0 800AC6E0 380900E1 */  addi      r0, r9, 0xe1
/* 0A96E4 800AC6E4 91048000 */  stw       r8, -0x8000(r4)
/* 0A96E8 800AC6E8 54C86266 */  clrlslwi  r8, r6, 21, 12
/* 0A96EC 800AC6EC 5406C00E */  slwi      r6, r0, 24
/* 0A96F0 800AC6F0 50E8057E */  rlwimi    r8, r7, 0, 21, 31
/* 0A96F4 800AC6F4 98A48000 */  stb       r5, -0x8000(r4)
/* 0A96F8 800AC6F8 5106027E */  rlwimi    r6, r8, 0, 9, 31
/* 0A96FC 800AC6FC 90C48000 */  stw       r6, -0x8000(r4)
/* 0A9700 800AC700 38000000 */  li        r0, 0x0
/* 0A9704 800AC704 98A48000 */  stb       r5, -0x8000(r4)
/* 0A9708 800AC708 90C48000 */  stw       r6, -0x8000(r4)
/* 0A970C 800AC70C 98A48000 */  stb       r5, -0x8000(r4)
/* 0A9710 800AC710 90C48000 */  stw       r6, -0x8000(r4)
/* 0A9714 800AC714 B0030002 */  sth       r0, 0x2(r3)
/* 0A9718 800AC718 4E800020 */  blr

glabel GXSetTevKColor
/* 0A971C 800AC71C 88040003 */  lbz       r0, 0x3(r4)
/* 0A9720 800AC720 5465083C */  slwi      r5, r3, 1
/* 0A9724 800AC724 88C40000 */  lbz       r6, 0x0(r4)
/* 0A9728 800AC728 38E500E0 */  addi      r7, r5, 0xe0
/* 0A972C 800AC72C 54006026 */  slwi      r0, r0, 12
/* 0A9730 800AC730 50C0063E */  rlwimi    r0, r6, 0, 24, 31
/* 0A9734 800AC734 88C40001 */  lbz       r6, 0x1(r4)
/* 0A9738 800AC738 89240002 */  lbz       r9, 0x2(r4)
/* 0A973C 800AC73C 5400030E */  rlwinm    r0, r0, 0, 12, 7
/* 0A9740 800AC740 64080080 */  oris      r8, r0, 0x80
/* 0A9744 800AC744 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A9748 800AC748 54E7C00E */  slwi      r7, r7, 24
/* 0A974C 800AC74C 38000061 */  li        r0, 0x61
/* 0A9750 800AC750 3C80CC01 */  lis       r4, 0xcc01
/* 0A9754 800AC754 54C66026 */  slwi      r6, r6, 12
/* 0A9758 800AC758 98048000 */  stb       r0, -0x8000(r4)
/* 0A975C 800AC75C 5107023E */  rlwimi    r7, r8, 0, 8, 31
/* 0A9760 800AC760 90E48000 */  stw       r7, -0x8000(r4)
/* 0A9764 800AC764 5126063E */  rlwimi    r6, r9, 0, 24, 31
/* 0A9768 800AC768 38A500E1 */  addi      r5, r5, 0xe1
/* 0A976C 800AC76C 98048000 */  stb       r0, -0x8000(r4)
/* 0A9770 800AC770 54C0030E */  rlwinm    r0, r6, 0, 12, 7
/* 0A9774 800AC774 64060080 */  oris      r6, r0, 0x80
/* 0A9778 800AC778 54A0C00E */  slwi      r0, r5, 24
/* 0A977C 800AC77C 50C0023E */  rlwimi    r0, r6, 0, 8, 31
/* 0A9780 800AC780 90048000 */  stw       r0, -0x8000(r4)
/* 0A9784 800AC784 38000000 */  li        r0, 0x0
/* 0A9788 800AC788 B0030002 */  sth       r0, 0x2(r3)
/* 0A978C 800AC78C 4E800020 */  blr

glabel GXSetTevKColorSel
/* 0A9790 800AC790 7C650E70 */  srawi     r5, r3, 1
/* 0A9794 800AC794 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A9798 800AC798 546007FF */  clrlwi.   r0, r3, 31
/* 0A979C 800AC79C 54A3103A */  slwi      r3, r5, 2
/* 0A97A0 800AC7A0 38E301B0 */  addi      r7, r3, 0x1b0
/* 0A97A4 800AC7A4 7CE63A14 */  add       r7, r6, r7
/* 0A97A8 800AC7A8 4182001C */  beq       lbl_800AC7C4
/* 0A97AC 800AC7AC 80670000 */  lwz       r3, 0x0(r7)
/* 0A97B0 800AC7B0 54807022 */  slwi      r0, r4, 14
/* 0A97B4 800AC7B4 54630498 */  rlwinm    r3, r3, 0, 18, 12
/* 0A97B8 800AC7B8 7C600378 */  or        r0, r3, r0
/* 0A97BC 800AC7BC 90070000 */  stw       r0, 0x0(r7)
/* 0A97C0 800AC7C0 48000018 */  b         lbl_800AC7D8
lbl_800AC7C4:
/* 0A97C4 800AC7C4 80670000 */  lwz       r3, 0x0(r7)
/* 0A97C8 800AC7C8 54802036 */  slwi      r0, r4, 4
/* 0A97CC 800AC7CC 5463072C */  rlwinm    r3, r3, 0, 28, 22
/* 0A97D0 800AC7D0 7C600378 */  or        r0, r3, r0
/* 0A97D4 800AC7D4 90070000 */  stw       r0, 0x0(r7)
lbl_800AC7D8:
/* 0A97D8 800AC7D8 38000061 */  li        r0, 0x61
/* 0A97DC 800AC7DC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A97E0 800AC7E0 3CA0CC01 */  lis       r5, 0xcc01
/* 0A97E4 800AC7E4 98058000 */  stb       r0, -0x8000(r5)
/* 0A97E8 800AC7E8 38000000 */  li        r0, 0x0
/* 0A97EC 800AC7EC 80870000 */  lwz       r4, 0x0(r7)
/* 0A97F0 800AC7F0 90858000 */  stw       r4, -0x8000(r5)
/* 0A97F4 800AC7F4 B0030002 */  sth       r0, 0x2(r3)
/* 0A97F8 800AC7F8 4E800020 */  blr

glabel GXSetTevKAlphaSel
/* 0A97FC 800AC7FC 7C650E70 */  srawi     r5, r3, 1
/* 0A9800 800AC800 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A9804 800AC804 546007FF */  clrlwi.   r0, r3, 31
/* 0A9808 800AC808 54A3103A */  slwi      r3, r5, 2
/* 0A980C 800AC80C 38E301B0 */  addi      r7, r3, 0x1b0
/* 0A9810 800AC810 7CE63A14 */  add       r7, r6, r7
/* 0A9814 800AC814 4182001C */  beq       lbl_800AC830
/* 0A9818 800AC818 80670000 */  lwz       r3, 0x0(r7)
/* 0A981C 800AC81C 54809818 */  slwi      r0, r4, 19
/* 0A9820 800AC820 5463034E */  rlwinm    r3, r3, 0, 13, 7
/* 0A9824 800AC824 7C600378 */  or        r0, r3, r0
/* 0A9828 800AC828 90070000 */  stw       r0, 0x0(r7)
/* 0A982C 800AC82C 48000018 */  b         lbl_800AC844
lbl_800AC830:
/* 0A9830 800AC830 80670000 */  lwz       r3, 0x0(r7)
/* 0A9834 800AC834 5480482C */  slwi      r0, r4, 9
/* 0A9838 800AC838 546305E2 */  rlwinm    r3, r3, 0, 23, 17
/* 0A983C 800AC83C 7C600378 */  or        r0, r3, r0
/* 0A9840 800AC840 90070000 */  stw       r0, 0x0(r7)
lbl_800AC844:
/* 0A9844 800AC844 38000061 */  li        r0, 0x61
/* 0A9848 800AC848 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A984C 800AC84C 3CA0CC01 */  lis       r5, 0xcc01
/* 0A9850 800AC850 98058000 */  stb       r0, -0x8000(r5)
/* 0A9854 800AC854 38000000 */  li        r0, 0x0
/* 0A9858 800AC858 80870000 */  lwz       r4, 0x0(r7)
/* 0A985C 800AC85C 90858000 */  stw       r4, -0x8000(r5)
/* 0A9860 800AC860 B0030002 */  sth       r0, 0x2(r3)
/* 0A9864 800AC864 4E800020 */  blr

glabel GXSetTevSwapMode
/* 0A9868 800AC868 5463103A */  slwi      r3, r3, 2
/* 0A986C 800AC86C 80E28400 */  lwz       r7, gx@sda21(r0)
/* 0A9870 800AC870 39030170 */  addi      r8, r3, 0x170
/* 0A9874 800AC874 7D074214 */  add       r8, r7, r8
/* 0A9878 800AC878 80080000 */  lwz       r0, 0x0(r8)
/* 0A987C 800AC87C 54A5103A */  slwi      r5, r5, 2
/* 0A9880 800AC880 38600061 */  li        r3, 0x61
/* 0A9884 800AC884 5400003A */  clrrwi    r0, r0, 2
/* 0A9888 800AC888 7C002378 */  or        r0, r0, r4
/* 0A988C 800AC88C 90080000 */  stw       r0, 0x0(r8)
/* 0A9890 800AC890 3C80CC01 */  lis       r4, 0xcc01
/* 0A9894 800AC894 38000000 */  li        r0, 0x0
/* 0A9898 800AC898 80C80000 */  lwz       r6, 0x0(r8)
/* 0A989C 800AC89C 54C607B6 */  rlwinm    r6, r6, 0, 30, 27
/* 0A98A0 800AC8A0 7CC52B78 */  or        r5, r6, r5
/* 0A98A4 800AC8A4 90A80000 */  stw       r5, 0x0(r8)
/* 0A98A8 800AC8A8 98648000 */  stb       r3, -0x8000(r4)
/* 0A98AC 800AC8AC 80680000 */  lwz       r3, 0x0(r8)
/* 0A98B0 800AC8B0 90648000 */  stw       r3, -0x8000(r4)
/* 0A98B4 800AC8B4 B0070002 */  sth       r0, 0x2(r7)
/* 0A98B8 800AC8B8 4E800020 */  blr

glabel GXSetTevSwapModeTable
/* 0A98BC 800AC8BC 546A083C */  slwi      r10, r3, 1
/* 0A98C0 800AC8C0 81228400 */  lwz       r9, gx@sda21(r0)
/* 0A98C4 800AC8C4 54631838 */  slwi      r3, r3, 3
/* 0A98C8 800AC8C8 396301B0 */  addi      r11, r3, 0x1b0
/* 0A98CC 800AC8CC 7D695A14 */  add       r11, r9, r11
/* 0A98D0 800AC8D0 810B0000 */  lwz       r8, 0x0(r11)
/* 0A98D4 800AC8D4 380A0001 */  addi      r0, r10, 0x1
/* 0A98D8 800AC8D8 5403103A */  slwi      r3, r0, 2
/* 0A98DC 800AC8DC 5500003A */  clrrwi    r0, r8, 2
/* 0A98E0 800AC8E0 7C002378 */  or        r0, r0, r4
/* 0A98E4 800AC8E4 900B0000 */  stw       r0, 0x0(r11)
/* 0A98E8 800AC8E8 394301B0 */  addi      r10, r3, 0x1b0
/* 0A98EC 800AC8EC 54A0103A */  slwi      r0, r5, 2
/* 0A98F0 800AC8F0 806B0000 */  lwz       r3, 0x0(r11)
/* 0A98F4 800AC8F4 39000061 */  li        r8, 0x61
/* 0A98F8 800AC8F8 3CA0CC01 */  lis       r5, 0xcc01
/* 0A98FC 800AC8FC 546307B6 */  rlwinm    r3, r3, 0, 30, 27
/* 0A9900 800AC900 7C600378 */  or        r0, r3, r0
/* 0A9904 800AC904 900B0000 */  stw       r0, 0x0(r11)
/* 0A9908 800AC908 7D495214 */  add       r10, r9, r10
/* 0A990C 800AC90C 54E3103A */  slwi      r3, r7, 2
/* 0A9910 800AC910 99058000 */  stb       r8, -0x8000(r5)
/* 0A9914 800AC914 38000000 */  li        r0, 0x0
/* 0A9918 800AC918 808B0000 */  lwz       r4, 0x0(r11)
/* 0A991C 800AC91C 90858000 */  stw       r4, -0x8000(r5)
/* 0A9920 800AC920 808A0000 */  lwz       r4, 0x0(r10)
/* 0A9924 800AC924 5484003A */  clrrwi    r4, r4, 2
/* 0A9928 800AC928 7C843378 */  or        r4, r4, r6
/* 0A992C 800AC92C 908A0000 */  stw       r4, 0x0(r10)
/* 0A9930 800AC930 808A0000 */  lwz       r4, 0x0(r10)
/* 0A9934 800AC934 548407B6 */  rlwinm    r4, r4, 0, 30, 27
/* 0A9938 800AC938 7C831B78 */  or        r3, r4, r3
/* 0A993C 800AC93C 906A0000 */  stw       r3, 0x0(r10)
/* 0A9940 800AC940 99058000 */  stb       r8, -0x8000(r5)
/* 0A9944 800AC944 806A0000 */  lwz       r3, 0x0(r10)
/* 0A9948 800AC948 90658000 */  stw       r3, -0x8000(r5)
/* 0A994C 800AC94C B0090002 */  sth       r0, 0x2(r9)
/* 0A9950 800AC950 4E800020 */  blr

glabel GXSetAlphaCompare
/* 0A9954 800AC954 5480063E */  clrlwi    r0, r4, 24
/* 0A9958 800AC958 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A995C 800AC95C 6400F300 */  oris      r0, r0, 0xf300
/* 0A9960 800AC960 5400061E */  rlwinm    r0, r0, 0, 24, 15
/* 0A9964 800AC964 50E0442E */  rlwimi    r0, r7, 8, 16, 23
/* 0A9968 800AC968 54070418 */  rlwinm    r7, r0, 0, 16, 12
/* 0A996C 800AC96C 5460801E */  slwi      r0, r3, 16
/* 0A9970 800AC970 7CE00378 */  or        r0, r7, r0
/* 0A9974 800AC974 54030352 */  rlwinm    r3, r0, 0, 13, 9
/* 0A9978 800AC978 54C09818 */  slwi      r0, r6, 19
/* 0A997C 800AC97C 7C660378 */  or        r6, r3, r0
/* 0A9980 800AC980 38000061 */  li        r0, 0x61
/* 0A9984 800AC984 3C60CC01 */  lis       r3, 0xcc01
/* 0A9988 800AC988 98038000 */  stb       r0, -0x8000(r3)
/* 0A998C 800AC98C 54C6028E */  rlwinm    r6, r6, 0, 10, 7
/* 0A9990 800AC990 54A0B012 */  slwi      r0, r5, 22
/* 0A9994 800AC994 7CC00378 */  or        r0, r6, r0
/* 0A9998 800AC998 90038000 */  stw       r0, -0x8000(r3)
/* 0A999C 800AC99C 38000000 */  li        r0, 0x0
/* 0A99A0 800AC9A0 B0040002 */  sth       r0, 0x2(r4)
/* 0A99A4 800AC9A4 4E800020 */  blr

glabel GXSetZTexture
/* 0A99A8 800AC9A8 2C040013 */  cmpwi     r4, 0x13
/* 0A99AC 800AC9AC 54A0023E */  clrlwi    r0, r5, 8
/* 0A99B0 800AC9B0 6407F400 */  oris      r7, r0, 0xf400
/* 0A99B4 800AC9B4 41820028 */  beq       lbl_800AC9DC
/* 0A99B8 800AC9B8 40800010 */  bge       lbl_800AC9C8
/* 0A99BC 800AC9BC 2C040011 */  cmpwi     r4, 0x11
/* 0A99C0 800AC9C0 41820014 */  beq       lbl_800AC9D4
/* 0A99C4 800AC9C4 48000028 */  b         lbl_800AC9EC
lbl_800AC9C8:
/* 0A99C8 800AC9C8 2C040016 */  cmpwi     r4, 0x16
/* 0A99CC 800AC9CC 41820018 */  beq       lbl_800AC9E4
/* 0A99D0 800AC9D0 4800001C */  b         lbl_800AC9EC
lbl_800AC9D4:
/* 0A99D4 800AC9D4 38C00000 */  li        r6, 0x0
/* 0A99D8 800AC9D8 48000018 */  b         lbl_800AC9F0
lbl_800AC9DC:
/* 0A99DC 800AC9DC 38C00001 */  li        r6, 0x1
/* 0A99E0 800AC9E0 48000010 */  b         lbl_800AC9F0
lbl_800AC9E4:
/* 0A99E4 800AC9E4 38C00002 */  li        r6, 0x2
/* 0A99E8 800AC9E8 48000008 */  b         lbl_800AC9F0
lbl_800AC9EC:
/* 0A99EC 800AC9EC 38C00002 */  li        r6, 0x2
lbl_800AC9F0:
/* 0A99F0 800AC9F0 38000061 */  li        r0, 0x61
/* 0A99F4 800AC9F4 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A99F8 800AC9F8 3CA0CC01 */  lis       r5, 0xcc01
/* 0A99FC 800AC9FC 98058000 */  stb       r0, -0x8000(r5)
/* 0A9A00 800ACA00 54C607B6 */  rlwinm    r6, r6, 0, 30, 27
/* 0A9A04 800ACA04 5463103A */  slwi      r3, r3, 2
/* 0A9A08 800ACA08 90E58000 */  stw       r7, -0x8000(r5)
/* 0A9A0C 800ACA0C 7CC31B78 */  or        r3, r6, r3
/* 0A9A10 800ACA10 5463023E */  clrlwi    r3, r3, 8
/* 0A9A14 800ACA14 98058000 */  stb       r0, -0x8000(r5)
/* 0A9A18 800ACA18 6463F500 */  oris      r3, r3, 0xf500
/* 0A9A1C 800ACA1C 38000000 */  li        r0, 0x0
/* 0A9A20 800ACA20 90658000 */  stw       r3, -0x8000(r5)
/* 0A9A24 800ACA24 B0040002 */  sth       r0, 0x2(r4)
/* 0A9A28 800ACA28 4E800020 */  blr

glabel GXSetTevOrder
/* 0A9A2C 800ACA2C 7C670E70 */  srawi     r7, r3, 1
/* 0A9A30 800ACA30 81228400 */  lwz       r9, gx@sda21(r0)
/* 0A9A34 800ACA34 54AA062C */  rlwinm    r10, r5, 0, 24, 22
/* 0A9A38 800ACA38 7CE70194 */  addze     r7, r7
/* 0A9A3C 800ACA3C 5460103A */  slwi      r0, r3, 2
/* 0A9A40 800ACA40 7D090214 */  add       r8, r9, r0
/* 0A9A44 800ACA44 54E7103A */  slwi      r7, r7, 2
/* 0A9A48 800ACA48 90A8049C */  stw       r5, 0x49c(r8)
/* 0A9A4C 800ACA4C 38E70100 */  addi      r7, r7, 0x100
/* 0A9A50 800ACA50 280A0008 */  cmplwi    r10, 0x8
/* 0A9A54 800ACA54 380A0000 */  addi      r0, r10, 0x0
/* 0A9A58 800ACA58 7CE93A14 */  add       r7, r9, r7
/* 0A9A5C 800ACA5C 4180000C */  blt       lbl_800ACA68
/* 0A9A60 800ACA60 39200000 */  li        r9, 0x0
/* 0A9A64 800ACA64 48000008 */  b         lbl_800ACA6C
lbl_800ACA68:
/* 0A9A68 800ACA68 7C090378 */  mr        r9, r0
lbl_800ACA6C:
/* 0A9A6C 800ACA6C 2C040008 */  cmpwi     r4, 0x8
/* 0A9A70 800ACA70 41800028 */  blt       lbl_800ACA98
/* 0A9A74 800ACA74 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A9A78 800ACA78 38000001 */  li        r0, 0x1
/* 0A9A7C 800ACA7C 7C001830 */  slw       r0, r0, r3
/* 0A9A80 800ACA80 810404E0 */  lwz       r8, 0x4e0(r4)
/* 0A9A84 800ACA84 394404E0 */  addi      r10, r4, 0x4e0
/* 0A9A88 800ACA88 38800000 */  li        r4, 0x0
/* 0A9A8C 800ACA8C 7D000078 */  andc      r0, r8, r0
/* 0A9A90 800ACA90 900A0000 */  stw       r0, 0x0(r10)
/* 0A9A94 800ACA94 48000020 */  b         lbl_800ACAB4
lbl_800ACA98:
/* 0A9A98 800ACA98 81028400 */  lwz       r8, gx@sda21(r0)
/* 0A9A9C 800ACA9C 38000001 */  li        r0, 0x1
/* 0A9AA0 800ACAA0 7C001830 */  slw       r0, r0, r3
/* 0A9AA4 800ACAA4 394804E0 */  addi      r10, r8, 0x4e0
/* 0A9AA8 800ACAA8 810804E0 */  lwz       r8, 0x4e0(r8)
/* 0A9AAC 800ACAAC 7D000378 */  or        r0, r8, r0
/* 0A9AB0 800ACAB0 900A0000 */  stw       r0, 0x0(r10)
lbl_800ACAB4:
/* 0A9AB4 800ACAB4 546007FF */  clrlwi.   r0, r3, 31
/* 0A9AB8 800ACAB8 41820094 */  beq       lbl_800ACB4C
/* 0A9ABC 800ACABC 81070000 */  lwz       r8, 0x0(r7)
/* 0A9AC0 800ACAC0 55236026 */  slwi      r3, r9, 12
/* 0A9AC4 800ACAC4 54807820 */  slwi      r0, r4, 15
/* 0A9AC8 800ACAC8 55040520 */  rlwinm    r4, r8, 0, 20, 16
/* 0A9ACC 800ACACC 7C831B78 */  or        r3, r4, r3
/* 0A9AD0 800ACAD0 90670000 */  stw       r3, 0x0(r7)
/* 0A9AD4 800ACAD4 2C0600FF */  cmpwi     r6, 0xff
/* 0A9AD8 800ACAD8 80670000 */  lwz       r3, 0x0(r7)
/* 0A9ADC 800ACADC 5463045A */  rlwinm    r3, r3, 0, 17, 13
/* 0A9AE0 800ACAE0 7C600378 */  or        r0, r3, r0
/* 0A9AE4 800ACAE4 90070000 */  stw       r0, 0x0(r7)
/* 0A9AE8 800ACAE8 4082000C */  bne       lbl_800ACAF4
/* 0A9AEC 800ACAEC 38000007 */  li        r0, 0x7
/* 0A9AF0 800ACAF0 48000018 */  b         lbl_800ACB08
lbl_800ACAF4:
/* 0A9AF4 800ACAF4 3C60800F */  lis       r3, D_800F3478@ha
/* 0A9AF8 800ACAF8 54C4103A */  slwi      r4, r6, 2
/* 0A9AFC 800ACAFC 38033478 */  addi      r0, r3, D_800F3478@l
/* 0A9B00 800ACB00 7C602214 */  add       r3, r0, r4
/* 0A9B04 800ACB04 80030000 */  lwz       r0, 0x0(r3)
lbl_800ACB08:
/* 0A9B08 800ACB08 80670000 */  lwz       r3, 0x0(r7)
/* 0A9B0C 800ACB0C 54009818 */  slwi      r0, r0, 19
/* 0A9B10 800ACB10 2C0500FF */  cmpwi     r5, 0xff
/* 0A9B14 800ACB14 54630352 */  rlwinm    r3, r3, 0, 13, 9
/* 0A9B18 800ACB18 7C600378 */  or        r0, r3, r0
/* 0A9B1C 800ACB1C 90070000 */  stw       r0, 0x0(r7)
/* 0A9B20 800ACB20 38800000 */  li        r4, 0x0
/* 0A9B24 800ACB24 41820010 */  beq       lbl_800ACB34
/* 0A9B28 800ACB28 54A005EF */  rlwinm.   r0, r5, 0, 23, 23
/* 0A9B2C 800ACB2C 40820008 */  bne       lbl_800ACB34
/* 0A9B30 800ACB30 38800001 */  li        r4, 0x1
lbl_800ACB34:
/* 0A9B34 800ACB34 80670000 */  lwz       r3, 0x0(r7)
/* 0A9B38 800ACB38 5480901A */  slwi      r0, r4, 18
/* 0A9B3C 800ACB3C 54630398 */  rlwinm    r3, r3, 0, 14, 12
/* 0A9B40 800ACB40 7C600378 */  or        r0, r3, r0
/* 0A9B44 800ACB44 90070000 */  stw       r0, 0x0(r7)
/* 0A9B48 800ACB48 4800008C */  b         lbl_800ACBD4
lbl_800ACB4C:
/* 0A9B4C 800ACB4C 80670000 */  lwz       r3, 0x0(r7)
/* 0A9B50 800ACB50 54801838 */  slwi      r0, r4, 3
/* 0A9B54 800ACB54 2C0600FF */  cmpwi     r6, 0xff
/* 0A9B58 800ACB58 54630038 */  clrrwi    r3, r3, 3
/* 0A9B5C 800ACB5C 7C634B78 */  or        r3, r3, r9
/* 0A9B60 800ACB60 90670000 */  stw       r3, 0x0(r7)
/* 0A9B64 800ACB64 80670000 */  lwz       r3, 0x0(r7)
/* 0A9B68 800ACB68 54630772 */  rlwinm    r3, r3, 0, 29, 25
/* 0A9B6C 800ACB6C 7C600378 */  or        r0, r3, r0
/* 0A9B70 800ACB70 90070000 */  stw       r0, 0x0(r7)
/* 0A9B74 800ACB74 4082000C */  bne       lbl_800ACB80
/* 0A9B78 800ACB78 38000007 */  li        r0, 0x7
/* 0A9B7C 800ACB7C 48000018 */  b         lbl_800ACB94
lbl_800ACB80:
/* 0A9B80 800ACB80 3C60800F */  lis       r3, D_800F3478@ha
/* 0A9B84 800ACB84 54C4103A */  slwi      r4, r6, 2
/* 0A9B88 800ACB88 38033478 */  addi      r0, r3, D_800F3478@l
/* 0A9B8C 800ACB8C 7C602214 */  add       r3, r0, r4
/* 0A9B90 800ACB90 80030000 */  lwz       r0, 0x0(r3)
lbl_800ACB94:
/* 0A9B94 800ACB94 80670000 */  lwz       r3, 0x0(r7)
/* 0A9B98 800ACB98 54003830 */  slwi      r0, r0, 7
/* 0A9B9C 800ACB9C 2C0500FF */  cmpwi     r5, 0xff
/* 0A9BA0 800ACBA0 5463066A */  rlwinm    r3, r3, 0, 25, 21
/* 0A9BA4 800ACBA4 7C600378 */  or        r0, r3, r0
/* 0A9BA8 800ACBA8 90070000 */  stw       r0, 0x0(r7)
/* 0A9BAC 800ACBAC 38800000 */  li        r4, 0x0
/* 0A9BB0 800ACBB0 41820010 */  beq       lbl_800ACBC0
/* 0A9BB4 800ACBB4 54A005EF */  rlwinm.   r0, r5, 0, 23, 23
/* 0A9BB8 800ACBB8 40820008 */  bne       lbl_800ACBC0
/* 0A9BBC 800ACBBC 38800001 */  li        r4, 0x1
lbl_800ACBC0:
/* 0A9BC0 800ACBC0 80670000 */  lwz       r3, 0x0(r7)
/* 0A9BC4 800ACBC4 54803032 */  slwi      r0, r4, 6
/* 0A9BC8 800ACBC8 546306B0 */  rlwinm    r3, r3, 0, 26, 24
/* 0A9BCC 800ACBCC 7C600378 */  or        r0, r3, r0
/* 0A9BD0 800ACBD0 90070000 */  stw       r0, 0x0(r7)
lbl_800ACBD4:
/* 0A9BD4 800ACBD4 38000061 */  li        r0, 0x61
/* 0A9BD8 800ACBD8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A9BDC 800ACBDC 3CA0CC01 */  lis       r5, 0xcc01
/* 0A9BE0 800ACBE0 98058000 */  stb       r0, -0x8000(r5)
/* 0A9BE4 800ACBE4 38000000 */  li        r0, 0x0
/* 0A9BE8 800ACBE8 80870000 */  lwz       r4, 0x0(r7)
/* 0A9BEC 800ACBEC 90858000 */  stw       r4, -0x8000(r5)
/* 0A9BF0 800ACBF0 B0030002 */  sth       r0, 0x2(r3)
/* 0A9BF4 800ACBF4 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A9BF8 800ACBF8 60000001 */  ori       r0, r0, 0x1
/* 0A9BFC 800ACBFC 900304F4 */  stw       r0, 0x4f4(r3)
/* 0A9C00 800ACC00 4E800020 */  blr

glabel GXSetNumTevStages
/* 0A9C04 800ACC04 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A9C08 800ACC08 5463063E */  clrlwi    r3, r3, 24
/* 0A9C0C 800ACC0C 3803FFFF */  subi      r0, r3, 0x1
/* 0A9C10 800ACC10 80640204 */  lwz       r3, 0x204(r4)
/* 0A9C14 800ACC14 5400502A */  slwi      r0, r0, 10
/* 0A9C18 800ACC18 546305A2 */  rlwinm    r3, r3, 0, 22, 17
/* 0A9C1C 800ACC1C 7C600378 */  or        r0, r3, r0
/* 0A9C20 800ACC20 90040204 */  stw       r0, 0x204(r4)
/* 0A9C24 800ACC24 800404F4 */  lwz       r0, 0x4f4(r4)
/* 0A9C28 800ACC28 60000004 */  ori       r0, r0, 0x4
/* 0A9C2C 800ACC2C 900404F4 */  stw       r0, 0x4f4(r4)
/* 0A9C30 800ACC30 4E800020 */  blr

# 0x800F3428 - 0x800F34A0
.section .data, "wa"

.balign 8

glabel D_800F3428
	.long 0xC008F8AF
	.long 0xC008A89F
	.long 0xC008AC8F
	.long 0xC008FFF8
	.long 0xC008FFFA
	.long 0xC008F80F
	.long 0xC008089F
	.long 0xC0080C8F
	.long 0xC008FFF8
	.long 0xC008FFF0
	.long 0xC108F2F0
	.long 0xC108FFD0
	.long 0xC108F2F0
	.long 0xC108FFC0
	.long 0xC108FFD0
	.long 0xC108F070
	.long 0xC108FF80
	.long 0xC108F070
	.long 0xC108FFC0
	.long 0xC108FF80

glabel D_800F3478
	.long 0x00000000
	.long 0x00000001
	.long 0x00000000
	.long 0x00000001
	.long 0x00000000
	.long 0x00000001
	.long 0x00000007
	.long 0x00000005
	.long 0x00000006
	.long 0x00000000
