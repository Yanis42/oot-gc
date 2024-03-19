# GXAttr.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800A868C - 0x800A97FC

glabel fn_800A868C
/* 0A568C 800A868C 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A5690 800A8690 80850014 */  lwz       r4, 0x14(r5)
/* 0A5694 800A8694 54809FBF */  extrwi.   r0, r4, 2, 17
/* 0A5698 800A8698 4182000C */  beq       lbl_800A86A4
/* 0A569C 800A869C 38600001 */  li        r3, 0x1
/* 0A56A0 800A86A0 48000008 */  b         lbl_800A86A8
lbl_800A86A4:
/* 0A56A4 800A86A4 38600000 */  li        r3, 0x0
lbl_800A86A8:
/* 0A56A8 800A86A8 54808FBF */  extrwi.   r0, r4, 2, 15
/* 0A56AC 800A86AC 4182000C */  beq       lbl_800A86B8
/* 0A56B0 800A86B0 38800001 */  li        r4, 0x1
/* 0A56B4 800A86B4 48000008 */  b         lbl_800A86BC
lbl_800A86B8:
/* 0A56B8 800A86B8 38800000 */  li        r4, 0x0
lbl_800A86BC:
/* 0A56BC 800A86BC 8805041D */  lbz       r0, 0x41d(r5)
/* 0A56C0 800A86C0 7CE32214 */  add       r7, r3, r4
/* 0A56C4 800A86C4 28000000 */  cmplwi    r0, 0x0
/* 0A56C8 800A86C8 4182000C */  beq       lbl_800A86D4
/* 0A56CC 800A86CC 38800002 */  li        r4, 0x2
/* 0A56D0 800A86D0 4800001C */  b         lbl_800A86EC
lbl_800A86D4:
/* 0A56D4 800A86D4 8805041C */  lbz       r0, 0x41c(r5)
/* 0A56D8 800A86D8 28000000 */  cmplwi    r0, 0x0
/* 0A56DC 800A86DC 4182000C */  beq       lbl_800A86E8
/* 0A56E0 800A86E0 38800001 */  li        r4, 0x1
/* 0A56E4 800A86E4 48000008 */  b         lbl_800A86EC
lbl_800A86E8:
/* 0A56E8 800A86E8 38800000 */  li        r4, 0x0
lbl_800A86EC:
/* 0A56EC 800A86EC 80C50018 */  lwz       r6, 0x18(r5)
/* 0A56F0 800A86F0 54C007BF */  clrlwi.   r0, r6, 30
/* 0A56F4 800A86F4 4182000C */  beq       lbl_800A8700
/* 0A56F8 800A86F8 38600001 */  li        r3, 0x1
/* 0A56FC 800A86FC 48000008 */  b         lbl_800A8704
lbl_800A8700:
/* 0A5700 800A8700 38600000 */  li        r3, 0x0
lbl_800A8704:
/* 0A5704 800A8704 54C0F7BF */  extrwi.   r0, r6, 2, 28
/* 0A5708 800A8708 4182000C */  beq       lbl_800A8714
/* 0A570C 800A870C 38A00001 */  li        r5, 0x1
/* 0A5710 800A8710 48000008 */  b         lbl_800A8718
lbl_800A8714:
/* 0A5714 800A8714 38A00000 */  li        r5, 0x0
lbl_800A8718:
/* 0A5718 800A8718 54C0E7BF */  extrwi.   r0, r6, 2, 26
/* 0A571C 800A871C 7D032A14 */  add       r8, r3, r5
/* 0A5720 800A8720 4182000C */  beq       lbl_800A872C
/* 0A5724 800A8724 38600001 */  li        r3, 0x1
/* 0A5728 800A8728 48000008 */  b         lbl_800A8730
lbl_800A872C:
/* 0A572C 800A872C 38600000 */  li        r3, 0x0
lbl_800A8730:
/* 0A5730 800A8730 54C0D7BF */  extrwi.   r0, r6, 2, 24
/* 0A5734 800A8734 7D081A14 */  add       r8, r8, r3
/* 0A5738 800A8738 4182000C */  beq       lbl_800A8744
/* 0A573C 800A873C 38600001 */  li        r3, 0x1
/* 0A5740 800A8740 48000008 */  b         lbl_800A8748
lbl_800A8744:
/* 0A5744 800A8744 38600000 */  li        r3, 0x0
lbl_800A8748:
/* 0A5748 800A8748 54C0C7BF */  extrwi.   r0, r6, 2, 22
/* 0A574C 800A874C 7D081A14 */  add       r8, r8, r3
/* 0A5750 800A8750 4182000C */  beq       lbl_800A875C
/* 0A5754 800A8754 38600001 */  li        r3, 0x1
/* 0A5758 800A8758 48000008 */  b         lbl_800A8760
lbl_800A875C:
/* 0A575C 800A875C 38600000 */  li        r3, 0x0
lbl_800A8760:
/* 0A5760 800A8760 54C0B7BF */  extrwi.   r0, r6, 2, 20
/* 0A5764 800A8764 7D081A14 */  add       r8, r8, r3
/* 0A5768 800A8768 4182000C */  beq       lbl_800A8774
/* 0A576C 800A876C 38600001 */  li        r3, 0x1
/* 0A5770 800A8770 48000008 */  b         lbl_800A8778
lbl_800A8774:
/* 0A5774 800A8774 38600000 */  li        r3, 0x0
lbl_800A8778:
/* 0A5778 800A8778 54C0A7BF */  extrwi.   r0, r6, 2, 18
/* 0A577C 800A877C 7D081A14 */  add       r8, r8, r3
/* 0A5780 800A8780 4182000C */  beq       lbl_800A878C
/* 0A5784 800A8784 38600001 */  li        r3, 0x1
/* 0A5788 800A8788 48000008 */  b         lbl_800A8790
lbl_800A878C:
/* 0A578C 800A878C 38600000 */  li        r3, 0x0
lbl_800A8790:
/* 0A5790 800A8790 54C097BF */  extrwi.   r0, r6, 2, 16
/* 0A5794 800A8794 7D081A14 */  add       r8, r8, r3
/* 0A5798 800A8798 4182000C */  beq       lbl_800A87A4
/* 0A579C 800A879C 38C00001 */  li        r6, 0x1
/* 0A57A0 800A87A0 48000008 */  b         lbl_800A87A8
lbl_800A87A4:
/* 0A57A4 800A87A4 38C00000 */  li        r6, 0x0
lbl_800A87A8:
/* 0A57A8 800A87A8 38000010 */  li        r0, 0x10
/* 0A57AC 800A87AC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A57B0 800A87B0 3CA0CC01 */  lis       r5, 0xcc01
/* 0A57B4 800A87B4 7D083214 */  add       r8, r8, r6
/* 0A57B8 800A87B8 98058000 */  stb       r0, -0x8000(r5)
/* 0A57BC 800A87BC 5480103A */  slwi      r0, r4, 2
/* 0A57C0 800A87C0 38801008 */  li        r4, 0x1008
/* 0A57C4 800A87C4 90858000 */  stw       r4, -0x8000(r5)
/* 0A57C8 800A87C8 55042036 */  slwi      r4, r8, 4
/* 0A57CC 800A87CC 7CE00378 */  or        r0, r7, r0
/* 0A57D0 800A87D0 7C800378 */  or        r0, r4, r0
/* 0A57D4 800A87D4 90058000 */  stw       r0, -0x8000(r5)
/* 0A57D8 800A87D8 38000001 */  li        r0, 0x1
/* 0A57DC 800A87DC B0030002 */  sth       r0, 0x2(r3)
/* 0A57E0 800A87E0 4E800020 */  blr

glabel GXSetVtxDesc
/* 0A57E4 800A87E4 28030019 */  cmplwi    r3, 0x19
/* 0A57E8 800A87E8 418102F0 */  bgt       lbl_800A8AD8
/* 0A57EC 800A87EC 3CA0800F */  lis       r5, jtbl_800F3068@ha
/* 0A57F0 800A87F0 38A53068 */  addi      r5, r5, jtbl_800F3068@l
/* 0A57F4 800A87F4 5460103A */  slwi      r0, r3, 2
/* 0A57F8 800A87F8 7C05002E */  lwzx      r0, r5, r0
/* 0A57FC 800A87FC 7C0903A6 */  mtctr     r0
/* 0A5800 800A8800 4E800420 */  bctr
lbl_800A8804:
/* 0A5804 800A8804 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5808 800A8808 84030014 */  lwzu      r0, 0x14(r3)
/* 0A580C 800A880C 5400003C */  clrrwi    r0, r0, 1
/* 0A5810 800A8810 7C002378 */  or        r0, r0, r4
/* 0A5814 800A8814 90030000 */  stw       r0, 0x0(r3)
/* 0A5818 800A8818 480002C0 */  b         lbl_800A8AD8
lbl_800A881C:
/* 0A581C 800A881C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5820 800A8820 5480083C */  slwi      r0, r4, 1
/* 0A5824 800A8824 38830014 */  addi      r4, r3, 0x14
/* 0A5828 800A8828 80630014 */  lwz       r3, 0x14(r3)
/* 0A582C 800A882C 546307FA */  rlwinm    r3, r3, 0, 31, 29
/* 0A5830 800A8830 7C600378 */  or        r0, r3, r0
/* 0A5834 800A8834 90040000 */  stw       r0, 0x0(r4)
/* 0A5838 800A8838 480002A0 */  b         lbl_800A8AD8
lbl_800A883C:
/* 0A583C 800A883C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5840 800A8840 5480103A */  slwi      r0, r4, 2
/* 0A5844 800A8844 38830014 */  addi      r4, r3, 0x14
/* 0A5848 800A8848 80630014 */  lwz       r3, 0x14(r3)
/* 0A584C 800A884C 546307B8 */  rlwinm    r3, r3, 0, 30, 28
/* 0A5850 800A8850 7C600378 */  or        r0, r3, r0
/* 0A5854 800A8854 90040000 */  stw       r0, 0x0(r4)
/* 0A5858 800A8858 48000280 */  b         lbl_800A8AD8
lbl_800A885C:
/* 0A585C 800A885C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5860 800A8860 54801838 */  slwi      r0, r4, 3
/* 0A5864 800A8864 38830014 */  addi      r4, r3, 0x14
/* 0A5868 800A8868 80630014 */  lwz       r3, 0x14(r3)
/* 0A586C 800A886C 54630776 */  rlwinm    r3, r3, 0, 29, 27
/* 0A5870 800A8870 7C600378 */  or        r0, r3, r0
/* 0A5874 800A8874 90040000 */  stw       r0, 0x0(r4)
/* 0A5878 800A8878 48000260 */  b         lbl_800A8AD8
lbl_800A887C:
/* 0A587C 800A887C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5880 800A8880 54802036 */  slwi      r0, r4, 4
/* 0A5884 800A8884 38830014 */  addi      r4, r3, 0x14
/* 0A5888 800A8888 80630014 */  lwz       r3, 0x14(r3)
/* 0A588C 800A888C 54630734 */  rlwinm    r3, r3, 0, 28, 26
/* 0A5890 800A8890 7C600378 */  or        r0, r3, r0
/* 0A5894 800A8894 90040000 */  stw       r0, 0x0(r4)
/* 0A5898 800A8898 48000240 */  b         lbl_800A8AD8
lbl_800A889C:
/* 0A589C 800A889C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A58A0 800A88A0 54802834 */  slwi      r0, r4, 5
/* 0A58A4 800A88A4 38830014 */  addi      r4, r3, 0x14
/* 0A58A8 800A88A8 80630014 */  lwz       r3, 0x14(r3)
/* 0A58AC 800A88AC 546306F2 */  rlwinm    r3, r3, 0, 27, 25
/* 0A58B0 800A88B0 7C600378 */  or        r0, r3, r0
/* 0A58B4 800A88B4 90040000 */  stw       r0, 0x0(r4)
/* 0A58B8 800A88B8 48000220 */  b         lbl_800A8AD8
lbl_800A88BC:
/* 0A58BC 800A88BC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A58C0 800A88C0 54803032 */  slwi      r0, r4, 6
/* 0A58C4 800A88C4 38830014 */  addi      r4, r3, 0x14
/* 0A58C8 800A88C8 80630014 */  lwz       r3, 0x14(r3)
/* 0A58CC 800A88CC 546306B0 */  rlwinm    r3, r3, 0, 26, 24
/* 0A58D0 800A88D0 7C600378 */  or        r0, r3, r0
/* 0A58D4 800A88D4 90040000 */  stw       r0, 0x0(r4)
/* 0A58D8 800A88D8 48000200 */  b         lbl_800A8AD8
lbl_800A88DC:
/* 0A58DC 800A88DC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A58E0 800A88E0 54803830 */  slwi      r0, r4, 7
/* 0A58E4 800A88E4 38830014 */  addi      r4, r3, 0x14
/* 0A58E8 800A88E8 80630014 */  lwz       r3, 0x14(r3)
/* 0A58EC 800A88EC 5463066E */  rlwinm    r3, r3, 0, 25, 23
/* 0A58F0 800A88F0 7C600378 */  or        r0, r3, r0
/* 0A58F4 800A88F4 90040000 */  stw       r0, 0x0(r4)
/* 0A58F8 800A88F8 480001E0 */  b         lbl_800A8AD8
lbl_800A88FC:
/* 0A58FC 800A88FC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5900 800A8900 5480402E */  slwi      r0, r4, 8
/* 0A5904 800A8904 38830014 */  addi      r4, r3, 0x14
/* 0A5908 800A8908 80630014 */  lwz       r3, 0x14(r3)
/* 0A590C 800A890C 5463062C */  rlwinm    r3, r3, 0, 24, 22
/* 0A5910 800A8910 7C600378 */  or        r0, r3, r0
/* 0A5914 800A8914 90040000 */  stw       r0, 0x0(r4)
/* 0A5918 800A8918 480001C0 */  b         lbl_800A8AD8
lbl_800A891C:
/* 0A591C 800A891C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5920 800A8920 5480482C */  slwi      r0, r4, 9
/* 0A5924 800A8924 38830014 */  addi      r4, r3, 0x14
/* 0A5928 800A8928 80630014 */  lwz       r3, 0x14(r3)
/* 0A592C 800A892C 546305E8 */  rlwinm    r3, r3, 0, 23, 20
/* 0A5930 800A8930 7C600378 */  or        r0, r3, r0
/* 0A5934 800A8934 90040000 */  stw       r0, 0x0(r4)
/* 0A5938 800A8938 480001A0 */  b         lbl_800A8AD8
lbl_800A893C:
/* 0A593C 800A893C 2C040000 */  cmpwi     r4, 0x0
/* 0A5940 800A8940 41820020 */  beq       lbl_800A8960
/* 0A5944 800A8944 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5948 800A8948 38A00001 */  li        r5, 0x1
/* 0A594C 800A894C 38000000 */  li        r0, 0x0
/* 0A5950 800A8950 98A3041C */  stb       r5, 0x41c(r3)
/* 0A5954 800A8954 9803041D */  stb       r0, 0x41d(r3)
/* 0A5958 800A8958 90830418 */  stw       r4, 0x418(r3)
/* 0A595C 800A895C 4800017C */  b         lbl_800A8AD8
lbl_800A8960:
/* 0A5960 800A8960 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5964 800A8964 38000000 */  li        r0, 0x0
/* 0A5968 800A8968 9803041C */  stb       r0, 0x41c(r3)
/* 0A596C 800A896C 4800016C */  b         lbl_800A8AD8
lbl_800A8970:
/* 0A5970 800A8970 2C040000 */  cmpwi     r4, 0x0
/* 0A5974 800A8974 41820020 */  beq       lbl_800A8994
/* 0A5978 800A8978 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A597C 800A897C 38A00001 */  li        r5, 0x1
/* 0A5980 800A8980 38000000 */  li        r0, 0x0
/* 0A5984 800A8984 98A3041D */  stb       r5, 0x41d(r3)
/* 0A5988 800A8988 9803041C */  stb       r0, 0x41c(r3)
/* 0A598C 800A898C 90830418 */  stw       r4, 0x418(r3)
/* 0A5990 800A8990 48000148 */  b         lbl_800A8AD8
lbl_800A8994:
/* 0A5994 800A8994 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5998 800A8998 38000000 */  li        r0, 0x0
/* 0A599C 800A899C 9803041D */  stb       r0, 0x41d(r3)
/* 0A59A0 800A89A0 48000138 */  b         lbl_800A8AD8
lbl_800A89A4:
/* 0A59A4 800A89A4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A59A8 800A89A8 54806824 */  slwi      r0, r4, 13
/* 0A59AC 800A89AC 38830014 */  addi      r4, r3, 0x14
/* 0A59B0 800A89B0 80630014 */  lwz       r3, 0x14(r3)
/* 0A59B4 800A89B4 546304E0 */  rlwinm    r3, r3, 0, 19, 16
/* 0A59B8 800A89B8 7C600378 */  or        r0, r3, r0
/* 0A59BC 800A89BC 90040000 */  stw       r0, 0x0(r4)
/* 0A59C0 800A89C0 48000118 */  b         lbl_800A8AD8
lbl_800A89C4:
/* 0A59C4 800A89C4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A59C8 800A89C8 54807820 */  slwi      r0, r4, 15
/* 0A59CC 800A89CC 38830014 */  addi      r4, r3, 0x14
/* 0A59D0 800A89D0 80630014 */  lwz       r3, 0x14(r3)
/* 0A59D4 800A89D4 5463045C */  rlwinm    r3, r3, 0, 17, 14
/* 0A59D8 800A89D8 7C600378 */  or        r0, r3, r0
/* 0A59DC 800A89DC 90040000 */  stw       r0, 0x0(r4)
/* 0A59E0 800A89E0 480000F8 */  b         lbl_800A8AD8
lbl_800A89E4:
/* 0A59E4 800A89E4 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A59E8 800A89E8 84030018 */  lwzu      r0, 0x18(r3)
/* 0A59EC 800A89EC 5400003A */  clrrwi    r0, r0, 2
/* 0A59F0 800A89F0 7C002378 */  or        r0, r0, r4
/* 0A59F4 800A89F4 90030000 */  stw       r0, 0x0(r3)
/* 0A59F8 800A89F8 480000E0 */  b         lbl_800A8AD8
lbl_800A89FC:
/* 0A59FC 800A89FC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5A00 800A8A00 5480103A */  slwi      r0, r4, 2
/* 0A5A04 800A8A04 38830018 */  addi      r4, r3, 0x18
/* 0A5A08 800A8A08 80630018 */  lwz       r3, 0x18(r3)
/* 0A5A0C 800A8A0C 546307B6 */  rlwinm    r3, r3, 0, 30, 27
/* 0A5A10 800A8A10 7C600378 */  or        r0, r3, r0
/* 0A5A14 800A8A14 90040000 */  stw       r0, 0x0(r4)
/* 0A5A18 800A8A18 480000C0 */  b         lbl_800A8AD8
lbl_800A8A1C:
/* 0A5A1C 800A8A1C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5A20 800A8A20 54802036 */  slwi      r0, r4, 4
/* 0A5A24 800A8A24 38830018 */  addi      r4, r3, 0x18
/* 0A5A28 800A8A28 80630018 */  lwz       r3, 0x18(r3)
/* 0A5A2C 800A8A2C 54630732 */  rlwinm    r3, r3, 0, 28, 25
/* 0A5A30 800A8A30 7C600378 */  or        r0, r3, r0
/* 0A5A34 800A8A34 90040000 */  stw       r0, 0x0(r4)
/* 0A5A38 800A8A38 480000A0 */  b         lbl_800A8AD8
lbl_800A8A3C:
/* 0A5A3C 800A8A3C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5A40 800A8A40 54803032 */  slwi      r0, r4, 6
/* 0A5A44 800A8A44 38830018 */  addi      r4, r3, 0x18
/* 0A5A48 800A8A48 80630018 */  lwz       r3, 0x18(r3)
/* 0A5A4C 800A8A4C 546306AE */  rlwinm    r3, r3, 0, 26, 23
/* 0A5A50 800A8A50 7C600378 */  or        r0, r3, r0
/* 0A5A54 800A8A54 90040000 */  stw       r0, 0x0(r4)
/* 0A5A58 800A8A58 48000080 */  b         lbl_800A8AD8
lbl_800A8A5C:
/* 0A5A5C 800A8A5C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5A60 800A8A60 5480402E */  slwi      r0, r4, 8
/* 0A5A64 800A8A64 38830018 */  addi      r4, r3, 0x18
/* 0A5A68 800A8A68 80630018 */  lwz       r3, 0x18(r3)
/* 0A5A6C 800A8A6C 5463062A */  rlwinm    r3, r3, 0, 24, 21
/* 0A5A70 800A8A70 7C600378 */  or        r0, r3, r0
/* 0A5A74 800A8A74 90040000 */  stw       r0, 0x0(r4)
/* 0A5A78 800A8A78 48000060 */  b         lbl_800A8AD8
lbl_800A8A7C:
/* 0A5A7C 800A8A7C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5A80 800A8A80 5480502A */  slwi      r0, r4, 10
/* 0A5A84 800A8A84 38830018 */  addi      r4, r3, 0x18
/* 0A5A88 800A8A88 80630018 */  lwz       r3, 0x18(r3)
/* 0A5A8C 800A8A8C 546305A6 */  rlwinm    r3, r3, 0, 22, 19
/* 0A5A90 800A8A90 7C600378 */  or        r0, r3, r0
/* 0A5A94 800A8A94 90040000 */  stw       r0, 0x0(r4)
/* 0A5A98 800A8A98 48000040 */  b         lbl_800A8AD8
lbl_800A8A9C:
/* 0A5A9C 800A8A9C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5AA0 800A8AA0 54806026 */  slwi      r0, r4, 12
/* 0A5AA4 800A8AA4 38830018 */  addi      r4, r3, 0x18
/* 0A5AA8 800A8AA8 80630018 */  lwz       r3, 0x18(r3)
/* 0A5AAC 800A8AAC 54630522 */  rlwinm    r3, r3, 0, 20, 17
/* 0A5AB0 800A8AB0 7C600378 */  or        r0, r3, r0
/* 0A5AB4 800A8AB4 90040000 */  stw       r0, 0x0(r4)
/* 0A5AB8 800A8AB8 48000020 */  b         lbl_800A8AD8
lbl_800A8ABC:
/* 0A5ABC 800A8ABC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5AC0 800A8AC0 54807022 */  slwi      r0, r4, 14
/* 0A5AC4 800A8AC4 38830018 */  addi      r4, r3, 0x18
/* 0A5AC8 800A8AC8 80630018 */  lwz       r3, 0x18(r3)
/* 0A5ACC 800A8ACC 5463049E */  rlwinm    r3, r3, 0, 18, 15
/* 0A5AD0 800A8AD0 7C600378 */  or        r0, r3, r0
/* 0A5AD4 800A8AD4 90040000 */  stw       r0, 0x0(r4)
lbl_800A8AD8:
/* 0A5AD8 800A8AD8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5ADC 800A8ADC 8803041C */  lbz       r0, 0x41c(r3)
/* 0A5AE0 800A8AE0 28000000 */  cmplwi    r0, 0x0
/* 0A5AE4 800A8AE4 40820010 */  bne       lbl_800A8AF4
/* 0A5AE8 800A8AE8 8803041D */  lbz       r0, 0x41d(r3)
/* 0A5AEC 800A8AEC 28000000 */  cmplwi    r0, 0x0
/* 0A5AF0 800A8AF0 41820024 */  beq       lbl_800A8B14
lbl_800A8AF4:
/* 0A5AF4 800A8AF4 38830014 */  addi      r4, r3, 0x14
/* 0A5AF8 800A8AF8 80030418 */  lwz       r0, 0x418(r3)
/* 0A5AFC 800A8AFC 80630014 */  lwz       r3, 0x14(r3)
/* 0A5B00 800A8B00 54005828 */  slwi      r0, r0, 11
/* 0A5B04 800A8B04 54630564 */  rlwinm    r3, r3, 0, 21, 18
/* 0A5B08 800A8B08 7C600378 */  or        r0, r3, r0
/* 0A5B0C 800A8B0C 90040000 */  stw       r0, 0x0(r4)
/* 0A5B10 800A8B10 48000010 */  b         lbl_800A8B20
lbl_800A8B14:
/* 0A5B14 800A8B14 84030014 */  lwzu      r0, 0x14(r3)
/* 0A5B18 800A8B18 54000564 */  rlwinm    r0, r0, 0, 21, 18
/* 0A5B1C 800A8B1C 90030000 */  stw       r0, 0x0(r3)
lbl_800A8B20:
/* 0A5B20 800A8B20 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5B24 800A8B24 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A5B28 800A8B28 60000008 */  ori       r0, r0, 0x8
/* 0A5B2C 800A8B2C 900304F4 */  stw       r0, 0x4f4(r3)
/* 0A5B30 800A8B30 4E800020 */  blr

glabel fn_800A8B34
/* 0A5B34 800A8B34 7C0802A6 */  mflr      r0
/* 0A5B38 800A8B38 38C00008 */  li        r6, 0x8
/* 0A5B3C 800A8B3C 90010004 */  stw       r0, 0x4(r1)
/* 0A5B40 800A8B40 3CA0CC01 */  lis       r5, 0xcc01
/* 0A5B44 800A8B44 38600050 */  li        r3, 0x50
/* 0A5B48 800A8B48 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A5B4C 800A8B4C 38000060 */  li        r0, 0x60
/* 0A5B50 800A8B50 98C58000 */  stb       r6, -0x8000(r5)
/* 0A5B54 800A8B54 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A5B58 800A8B58 98658000 */  stb       r3, -0x8000(r5)
/* 0A5B5C 800A8B5C 80640014 */  lwz       r3, 0x14(r4)
/* 0A5B60 800A8B60 90658000 */  stw       r3, -0x8000(r5)
/* 0A5B64 800A8B64 98C58000 */  stb       r6, -0x8000(r5)
/* 0A5B68 800A8B68 98058000 */  stb       r0, -0x8000(r5)
/* 0A5B6C 800A8B6C 80040018 */  lwz       r0, 0x18(r4)
/* 0A5B70 800A8B70 90058000 */  stw       r0, -0x8000(r5)
/* 0A5B74 800A8B74 4BFFFB19 */  bl        fn_800A868C
/* 0A5B78 800A8B78 8001000C */  lwz       r0, 0xc(r1)
/* 0A5B7C 800A8B7C 38210008 */  addi      r1, r1, 0x8
/* 0A5B80 800A8B80 7C0803A6 */  mtlr      r0
/* 0A5B84 800A8B84 4E800020 */  blr

glabel fn_800A8B88
/* 0A5B88 800A8B88 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5B8C 800A8B8C A0030004 */  lhz       r0, 0x4(r3)
/* 0A5B90 800A8B90 28000000 */  cmplwi    r0, 0x0
/* 0A5B94 800A8B94 4D820020 */  beqlr
/* 0A5B98 800A8B98 81230014 */  lwz       r9, 0x14(r3)
/* 0A5B9C 800A8B9C 38AD8788 */  li        r5, D_8018B708@sda21
/* 0A5BA0 800A8BA0 8103001C */  lwz       r8, 0x1c(r3)
/* 0A5BA4 800A8BA4 552007FE */  clrlwi    r0, r9, 31
/* 0A5BA8 800A8BA8 80830018 */  lwz       r4, 0x18(r3)
/* 0A5BAC 800A8BAC 5526FFFE */  extrwi    r6, r9, 1, 30
/* 0A5BB0 800A8BB0 7C003214 */  add       r0, r0, r6
/* 0A5BB4 800A8BB4 5526F7FE */  extrwi    r6, r9, 1, 29
/* 0A5BB8 800A8BB8 7C003214 */  add       r0, r0, r6
/* 0A5BBC 800A8BBC 5527EFFE */  extrwi    r7, r9, 1, 28
/* 0A5BC0 800A8BC0 5526BFBE */  extrwi    r6, r9, 2, 21
/* 0A5BC4 800A8BC4 7CA530AE */  lbzx      r5, r5, r6
/* 0A5BC8 800A8BC8 5508BFFE */  extrwi    r8, r8, 1, 22
/* 0A5BCC 800A8BCC 7C003A14 */  add       r0, r0, r7
/* 0A5BD0 800A8BD0 5526E7FE */  extrwi    r6, r9, 1, 27
/* 0A5BD4 800A8BD4 7C003214 */  add       r0, r0, r6
/* 0A5BD8 800A8BD8 5526DFFE */  extrwi    r6, r9, 1, 26
/* 0A5BDC 800A8BDC 7C003214 */  add       r0, r0, r6
/* 0A5BE0 800A8BE0 5526D7FE */  extrwi    r6, r9, 1, 25
/* 0A5BE4 800A8BE4 7C003214 */  add       r0, r0, r6
/* 0A5BE8 800A8BE8 5526CFFE */  extrwi    r6, r9, 1, 24
/* 0A5BEC 800A8BEC 7C003214 */  add       r0, r0, r6
/* 0A5BF0 800A8BF0 5526C7FE */  extrwi    r6, r9, 1, 23
/* 0A5BF4 800A8BF4 7C003214 */  add       r0, r0, r6
/* 0A5BF8 800A8BF8 2C080001 */  cmpwi     r8, 0x1
/* 0A5BFC 800A8BFC 7C002A14 */  add       r0, r0, r5
/* 0A5C00 800A8C00 4082000C */  bne       lbl_800A8C0C
/* 0A5C04 800A8C04 39000003 */  li        r8, 0x3
/* 0A5C08 800A8C08 48000008 */  b         lbl_800A8C10
lbl_800A8C0C:
/* 0A5C0C 800A8C0C 39000001 */  li        r8, 0x1
lbl_800A8C10:
/* 0A5C10 800A8C10 5526AFBE */  extrwi    r6, r9, 2, 19
/* 0A5C14 800A8C14 38AD8788 */  li        r5, D_8018B708@sda21
/* 0A5C18 800A8C18 7CC530AE */  lbzx      r6, r5, r6
/* 0A5C1C 800A8C1C 55259FBE */  extrwi    r5, r9, 2, 17
/* 0A5C20 800A8C20 38ED8780 */  li        r7, D_8018B700@sda21
/* 0A5C24 800A8C24 7D0641D6 */  mullw     r8, r6, r8
/* 0A5C28 800A8C28 7CC728AE */  lbzx      r6, r7, r5
/* 0A5C2C 800A8C2C 7C004214 */  add       r0, r0, r8
/* 0A5C30 800A8C30 55258FBE */  extrwi    r5, r9, 2, 15
/* 0A5C34 800A8C34 7D2728AE */  lbzx      r9, r7, r5
/* 0A5C38 800A8C38 7C003214 */  add       r0, r0, r6
/* 0A5C3C 800A8C3C 548607BE */  clrlwi    r6, r4, 30
/* 0A5C40 800A8C40 390D8784 */  li        r8, D_8018B704@sda21
/* 0A5C44 800A8C44 5485F7BE */  extrwi    r5, r4, 2, 28
/* 0A5C48 800A8C48 7CE830AE */  lbzx      r7, r8, r6
/* 0A5C4C 800A8C4C 7C004A14 */  add       r0, r0, r9
/* 0A5C50 800A8C50 7CC828AE */  lbzx      r6, r8, r5
/* 0A5C54 800A8C54 7C003A14 */  add       r0, r0, r7
/* 0A5C58 800A8C58 5485E7BE */  extrwi    r5, r4, 2, 26
/* 0A5C5C 800A8C5C 7CE828AE */  lbzx      r7, r8, r5
/* 0A5C60 800A8C60 7C003214 */  add       r0, r0, r6
/* 0A5C64 800A8C64 5485D7BE */  extrwi    r5, r4, 2, 24
/* 0A5C68 800A8C68 7CC828AE */  lbzx      r6, r8, r5
/* 0A5C6C 800A8C6C 7C003A14 */  add       r0, r0, r7
/* 0A5C70 800A8C70 5485C7BE */  extrwi    r5, r4, 2, 22
/* 0A5C74 800A8C74 7CE828AE */  lbzx      r7, r8, r5
/* 0A5C78 800A8C78 7C003214 */  add       r0, r0, r6
/* 0A5C7C 800A8C7C 5485B7BE */  extrwi    r5, r4, 2, 20
/* 0A5C80 800A8C80 7CC828AE */  lbzx      r6, r8, r5
/* 0A5C84 800A8C84 5485A7BE */  extrwi    r5, r4, 2, 18
/* 0A5C88 800A8C88 7C003A14 */  add       r0, r0, r7
/* 0A5C8C 800A8C8C 7CA828AE */  lbzx      r5, r8, r5
/* 0A5C90 800A8C90 548497BE */  extrwi    r4, r4, 2, 16
/* 0A5C94 800A8C94 7C003214 */  add       r0, r0, r6
/* 0A5C98 800A8C98 7C8820AE */  lbzx      r4, r8, r4
/* 0A5C9C 800A8C9C 7C002A14 */  add       r0, r0, r5
/* 0A5CA0 800A8CA0 7C002214 */  add       r0, r0, r4
/* 0A5CA4 800A8CA4 B0030006 */  sth       r0, 0x6(r3)
/* 0A5CA8 800A8CA8 4E800020 */  blr

glabel GXClearVtxDesc
/* 0A5CAC 800A8CAC 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A5CB0 800A8CB0 38800000 */  li        r4, 0x0
/* 0A5CB4 800A8CB4 90830014 */  stw       r4, 0x14(r3)
/* 0A5CB8 800A8CB8 80030014 */  lwz       r0, 0x14(r3)
/* 0A5CBC 800A8CBC 540005E8 */  rlwinm    r0, r0, 0, 23, 20
/* 0A5CC0 800A8CC0 60000200 */  ori       r0, r0, 0x200
/* 0A5CC4 800A8CC4 90030014 */  stw       r0, 0x14(r3)
/* 0A5CC8 800A8CC8 90830018 */  stw       r4, 0x18(r3)
/* 0A5CCC 800A8CCC 9883041C */  stb       r4, 0x41c(r3)
/* 0A5CD0 800A8CD0 9883041D */  stb       r4, 0x41d(r3)
/* 0A5CD4 800A8CD4 800304F4 */  lwz       r0, 0x4f4(r3)
/* 0A5CD8 800A8CD8 60000008 */  ori       r0, r0, 0x8
/* 0A5CDC 800A8CDC 900304F4 */  stw       r0, 0x4f4(r3)
/* 0A5CE0 800A8CE0 4E800020 */  blr

glabel GXSetVtxAttrFmt
/* 0A5CE4 800A8CE4 3804FFF7 */  subi      r0, r4, 0x9
/* 0A5CE8 800A8CE8 81028400 */  lwz       r8, gx@sda21(r0)
/* 0A5CEC 800A8CEC 5464103A */  slwi      r4, r3, 2
/* 0A5CF0 800A8CF0 7D282214 */  add       r9, r8, r4
/* 0A5CF4 800A8CF4 28000010 */  cmplwi    r0, 0x10
/* 0A5CF8 800A8CF8 3889001C */  addi      r4, r9, 0x1c
/* 0A5CFC 800A8CFC 3909003C */  addi      r8, r9, 0x3c
/* 0A5D00 800A8D00 3929005C */  addi      r9, r9, 0x5c
/* 0A5D04 800A8D04 41810308 */  bgt       lbl_800A900C
/* 0A5D08 800A8D08 3D40800F */  lis       r10, jtbl_800F30D0@ha
/* 0A5D0C 800A8D0C 394A30D0 */  addi      r10, r10, jtbl_800F30D0@l
/* 0A5D10 800A8D10 5400103A */  slwi      r0, r0, 2
/* 0A5D14 800A8D14 7C0A002E */  lwzx      r0, r10, r0
/* 0A5D18 800A8D18 7C0903A6 */  mtctr     r0
/* 0A5D1C 800A8D1C 4E800420 */  bctr
lbl_800A8D20:
/* 0A5D20 800A8D20 80040000 */  lwz       r0, 0x0(r4)
/* 0A5D24 800A8D24 54C6083C */  slwi      r6, r6, 1
/* 0A5D28 800A8D28 5400003C */  clrrwi    r0, r0, 1
/* 0A5D2C 800A8D2C 7C002B78 */  or        r0, r0, r5
/* 0A5D30 800A8D30 90040000 */  stw       r0, 0x0(r4)
/* 0A5D34 800A8D34 54E02536 */  clrlslwi  r0, r7, 24, 4
/* 0A5D38 800A8D38 80A40000 */  lwz       r5, 0x0(r4)
/* 0A5D3C 800A8D3C 54A507F6 */  rlwinm    r5, r5, 0, 31, 27
/* 0A5D40 800A8D40 7CA53378 */  or        r5, r5, r6
/* 0A5D44 800A8D44 90A40000 */  stw       r5, 0x0(r4)
/* 0A5D48 800A8D48 80A40000 */  lwz       r5, 0x0(r4)
/* 0A5D4C 800A8D4C 54A5072C */  rlwinm    r5, r5, 0, 28, 22
/* 0A5D50 800A8D50 7CA00378 */  or        r0, r5, r0
/* 0A5D54 800A8D54 90040000 */  stw       r0, 0x0(r4)
/* 0A5D58 800A8D58 480002B4 */  b         lbl_800A900C
lbl_800A8D5C:
/* 0A5D5C 800A8D5C 80E40000 */  lwz       r7, 0x0(r4)
/* 0A5D60 800A8D60 54C0502A */  slwi      r0, r6, 10
/* 0A5D64 800A8D64 2C050002 */  cmpwi     r5, 0x2
/* 0A5D68 800A8D68 54E605A4 */  rlwinm    r6, r7, 0, 22, 18
/* 0A5D6C 800A8D6C 7CC00378 */  or        r0, r6, r0
/* 0A5D70 800A8D70 90040000 */  stw       r0, 0x0(r4)
/* 0A5D74 800A8D74 40820028 */  bne       lbl_800A8D9C
/* 0A5D78 800A8D78 80040000 */  lwz       r0, 0x0(r4)
/* 0A5D7C 800A8D7C 540005EA */  rlwinm    r0, r0, 0, 23, 21
/* 0A5D80 800A8D80 60000200 */  ori       r0, r0, 0x200
/* 0A5D84 800A8D84 90040000 */  stw       r0, 0x0(r4)
/* 0A5D88 800A8D88 80040000 */  lwz       r0, 0x0(r4)
/* 0A5D8C 800A8D8C 5400007E */  clrlwi    r0, r0, 1
/* 0A5D90 800A8D90 64008000 */  oris      r0, r0, 0x8000
/* 0A5D94 800A8D94 90040000 */  stw       r0, 0x0(r4)
/* 0A5D98 800A8D98 48000274 */  b         lbl_800A900C
lbl_800A8D9C:
/* 0A5D9C 800A8D9C 80C40000 */  lwz       r6, 0x0(r4)
/* 0A5DA0 800A8DA0 54A0482C */  slwi      r0, r5, 9
/* 0A5DA4 800A8DA4 54C505EA */  rlwinm    r5, r6, 0, 23, 21
/* 0A5DA8 800A8DA8 7CA00378 */  or        r0, r5, r0
/* 0A5DAC 800A8DAC 90040000 */  stw       r0, 0x0(r4)
/* 0A5DB0 800A8DB0 80040000 */  lwz       r0, 0x0(r4)
/* 0A5DB4 800A8DB4 5400007E */  clrlwi    r0, r0, 1
/* 0A5DB8 800A8DB8 90040000 */  stw       r0, 0x0(r4)
/* 0A5DBC 800A8DBC 48000250 */  b         lbl_800A900C
lbl_800A8DC0:
/* 0A5DC0 800A8DC0 80E40000 */  lwz       r7, 0x0(r4)
/* 0A5DC4 800A8DC4 54A56824 */  slwi      r5, r5, 13
/* 0A5DC8 800A8DC8 54C07022 */  slwi      r0, r6, 14
/* 0A5DCC 800A8DCC 54E604E2 */  rlwinm    r6, r7, 0, 19, 17
/* 0A5DD0 800A8DD0 7CC52B78 */  or        r5, r6, r5
/* 0A5DD4 800A8DD4 90A40000 */  stw       r5, 0x0(r4)
/* 0A5DD8 800A8DD8 80A40000 */  lwz       r5, 0x0(r4)
/* 0A5DDC 800A8DDC 54A5049C */  rlwinm    r5, r5, 0, 18, 14
/* 0A5DE0 800A8DE0 7CA00378 */  or        r0, r5, r0
/* 0A5DE4 800A8DE4 90040000 */  stw       r0, 0x0(r4)
/* 0A5DE8 800A8DE8 48000224 */  b         lbl_800A900C
lbl_800A8DEC:
/* 0A5DEC 800A8DEC 80E40000 */  lwz       r7, 0x0(r4)
/* 0A5DF0 800A8DF0 54A5881C */  slwi      r5, r5, 17
/* 0A5DF4 800A8DF4 54C0901A */  slwi      r0, r6, 18
/* 0A5DF8 800A8DF8 54E603DA */  rlwinm    r6, r7, 0, 15, 13
/* 0A5DFC 800A8DFC 7CC52B78 */  or        r5, r6, r5
/* 0A5E00 800A8E00 90A40000 */  stw       r5, 0x0(r4)
/* 0A5E04 800A8E04 80A40000 */  lwz       r5, 0x0(r4)
/* 0A5E08 800A8E08 54A50394 */  rlwinm    r5, r5, 0, 14, 10
/* 0A5E0C 800A8E0C 7CA00378 */  or        r0, r5, r0
/* 0A5E10 800A8E10 90040000 */  stw       r0, 0x0(r4)
/* 0A5E14 800A8E14 480001F8 */  b         lbl_800A900C
lbl_800A8E18:
/* 0A5E18 800A8E18 81040000 */  lwz       r8, 0x0(r4)
/* 0A5E1C 800A8E1C 54A0A814 */  slwi      r0, r5, 21
/* 0A5E20 800A8E20 550502D2 */  rlwinm    r5, r8, 0, 11, 9
/* 0A5E24 800A8E24 7CA00378 */  or        r0, r5, r0
/* 0A5E28 800A8E28 90040000 */  stw       r0, 0x0(r4)
/* 0A5E2C 800A8E2C 54C5B012 */  slwi      r5, r6, 22
/* 0A5E30 800A8E30 54E0C80C */  slwi      r0, r7, 25
/* 0A5E34 800A8E34 80C40000 */  lwz       r6, 0x0(r4)
/* 0A5E38 800A8E38 54C6028C */  rlwinm    r6, r6, 0, 10, 6
/* 0A5E3C 800A8E3C 7CC52B78 */  or        r5, r6, r5
/* 0A5E40 800A8E40 90A40000 */  stw       r5, 0x0(r4)
/* 0A5E44 800A8E44 80A40000 */  lwz       r5, 0x0(r4)
/* 0A5E48 800A8E48 54A501C2 */  rlwinm    r5, r5, 0, 7, 1
/* 0A5E4C 800A8E4C 7CA00378 */  or        r0, r5, r0
/* 0A5E50 800A8E50 90040000 */  stw       r0, 0x0(r4)
/* 0A5E54 800A8E54 480001B8 */  b         lbl_800A900C
lbl_800A8E58:
/* 0A5E58 800A8E58 80080000 */  lwz       r0, 0x0(r8)
/* 0A5E5C 800A8E5C 54C4083C */  slwi      r4, r6, 1
/* 0A5E60 800A8E60 5400003C */  clrrwi    r0, r0, 1
/* 0A5E64 800A8E64 7C002B78 */  or        r0, r0, r5
/* 0A5E68 800A8E68 90080000 */  stw       r0, 0x0(r8)
/* 0A5E6C 800A8E6C 54E02536 */  clrlslwi  r0, r7, 24, 4
/* 0A5E70 800A8E70 80A80000 */  lwz       r5, 0x0(r8)
/* 0A5E74 800A8E74 54A507F6 */  rlwinm    r5, r5, 0, 31, 27
/* 0A5E78 800A8E78 7CA42378 */  or        r4, r5, r4
/* 0A5E7C 800A8E7C 90880000 */  stw       r4, 0x0(r8)
/* 0A5E80 800A8E80 80880000 */  lwz       r4, 0x0(r8)
/* 0A5E84 800A8E84 5484072C */  rlwinm    r4, r4, 0, 28, 22
/* 0A5E88 800A8E88 7C800378 */  or        r0, r4, r0
/* 0A5E8C 800A8E8C 90080000 */  stw       r0, 0x0(r8)
/* 0A5E90 800A8E90 4800017C */  b         lbl_800A900C
lbl_800A8E94:
/* 0A5E94 800A8E94 80880000 */  lwz       r4, 0x0(r8)
/* 0A5E98 800A8E98 54A0482C */  slwi      r0, r5, 9
/* 0A5E9C 800A8E9C 548405EA */  rlwinm    r4, r4, 0, 23, 21
/* 0A5EA0 800A8EA0 7C800378 */  or        r0, r4, r0
/* 0A5EA4 800A8EA4 90080000 */  stw       r0, 0x0(r8)
/* 0A5EA8 800A8EA8 54C4502A */  slwi      r4, r6, 10
/* 0A5EAC 800A8EAC 54E06AE4 */  clrlslwi  r0, r7, 24, 13
/* 0A5EB0 800A8EB0 80A80000 */  lwz       r5, 0x0(r8)
/* 0A5EB4 800A8EB4 54A505A4 */  rlwinm    r5, r5, 0, 22, 18
/* 0A5EB8 800A8EB8 7CA42378 */  or        r4, r5, r4
/* 0A5EBC 800A8EBC 90880000 */  stw       r4, 0x0(r8)
/* 0A5EC0 800A8EC0 80880000 */  lwz       r4, 0x0(r8)
/* 0A5EC4 800A8EC4 548404DA */  rlwinm    r4, r4, 0, 19, 13
/* 0A5EC8 800A8EC8 7C800378 */  or        r0, r4, r0
/* 0A5ECC 800A8ECC 90080000 */  stw       r0, 0x0(r8)
/* 0A5ED0 800A8ED0 4800013C */  b         lbl_800A900C
lbl_800A8ED4:
/* 0A5ED4 800A8ED4 80880000 */  lwz       r4, 0x0(r8)
/* 0A5ED8 800A8ED8 54A0901A */  slwi      r0, r5, 18
/* 0A5EDC 800A8EDC 54840398 */  rlwinm    r4, r4, 0, 14, 12
/* 0A5EE0 800A8EE0 7C800378 */  or        r0, r4, r0
/* 0A5EE4 800A8EE4 90080000 */  stw       r0, 0x0(r8)
/* 0A5EE8 800A8EE8 54C49818 */  slwi      r4, r6, 19
/* 0A5EEC 800A8EEC 54E0B092 */  clrlslwi  r0, r7, 24, 22
/* 0A5EF0 800A8EF0 80A80000 */  lwz       r5, 0x0(r8)
/* 0A5EF4 800A8EF4 54A50352 */  rlwinm    r5, r5, 0, 13, 9
/* 0A5EF8 800A8EF8 7CA42378 */  or        r4, r5, r4
/* 0A5EFC 800A8EFC 90880000 */  stw       r4, 0x0(r8)
/* 0A5F00 800A8F00 80880000 */  lwz       r4, 0x0(r8)
/* 0A5F04 800A8F04 54840288 */  rlwinm    r4, r4, 0, 10, 4
/* 0A5F08 800A8F08 7C800378 */  or        r0, r4, r0
/* 0A5F0C 800A8F0C 90080000 */  stw       r0, 0x0(r8)
/* 0A5F10 800A8F10 480000FC */  b         lbl_800A900C
lbl_800A8F14:
/* 0A5F14 800A8F14 81480000 */  lwz       r10, 0x0(r8)
/* 0A5F18 800A8F18 54A0D808 */  slwi      r0, r5, 27
/* 0A5F1C 800A8F1C 54C4E006 */  slwi      r4, r6, 28
/* 0A5F20 800A8F20 55450146 */  rlwinm    r5, r10, 0, 5, 3
/* 0A5F24 800A8F24 7CA00378 */  or        r0, r5, r0
/* 0A5F28 800A8F28 90080000 */  stw       r0, 0x0(r8)
/* 0A5F2C 800A8F2C 54E0063E */  clrlwi    r0, r7, 24
/* 0A5F30 800A8F30 80A80000 */  lwz       r5, 0x0(r8)
/* 0A5F34 800A8F34 54A50100 */  rlwinm    r5, r5, 0, 4, 0
/* 0A5F38 800A8F38 7CA42378 */  or        r4, r5, r4
/* 0A5F3C 800A8F3C 90880000 */  stw       r4, 0x0(r8)
/* 0A5F40 800A8F40 80890000 */  lwz       r4, 0x0(r9)
/* 0A5F44 800A8F44 54840034 */  clrrwi    r4, r4, 5
/* 0A5F48 800A8F48 7C800378 */  or        r0, r4, r0
/* 0A5F4C 800A8F4C 90090000 */  stw       r0, 0x0(r9)
/* 0A5F50 800A8F50 480000BC */  b         lbl_800A900C
lbl_800A8F54:
/* 0A5F54 800A8F54 80890000 */  lwz       r4, 0x0(r9)
/* 0A5F58 800A8F58 54A02834 */  slwi      r0, r5, 5
/* 0A5F5C 800A8F5C 548406F2 */  rlwinm    r4, r4, 0, 27, 25
/* 0A5F60 800A8F60 7C800378 */  or        r0, r4, r0
/* 0A5F64 800A8F64 90090000 */  stw       r0, 0x0(r9)
/* 0A5F68 800A8F68 54C43032 */  slwi      r4, r6, 6
/* 0A5F6C 800A8F6C 54E04BEC */  clrlslwi  r0, r7, 24, 9
/* 0A5F70 800A8F70 80A90000 */  lwz       r5, 0x0(r9)
/* 0A5F74 800A8F74 54A506AC */  rlwinm    r5, r5, 0, 26, 22
/* 0A5F78 800A8F78 7CA42378 */  or        r4, r5, r4
/* 0A5F7C 800A8F7C 90890000 */  stw       r4, 0x0(r9)
/* 0A5F80 800A8F80 80890000 */  lwz       r4, 0x0(r9)
/* 0A5F84 800A8F84 548405E2 */  rlwinm    r4, r4, 0, 23, 17
/* 0A5F88 800A8F88 7C800378 */  or        r0, r4, r0
/* 0A5F8C 800A8F8C 90090000 */  stw       r0, 0x0(r9)
/* 0A5F90 800A8F90 4800007C */  b         lbl_800A900C
lbl_800A8F94:
/* 0A5F94 800A8F94 80890000 */  lwz       r4, 0x0(r9)
/* 0A5F98 800A8F98 54A07022 */  slwi      r0, r5, 14
/* 0A5F9C 800A8F9C 548404A0 */  rlwinm    r4, r4, 0, 18, 16
/* 0A5FA0 800A8FA0 7C800378 */  or        r0, r4, r0
/* 0A5FA4 800A8FA4 90090000 */  stw       r0, 0x0(r9)
/* 0A5FA8 800A8FA8 54C47820 */  slwi      r4, r6, 15
/* 0A5FAC 800A8FAC 54E0919A */  clrlslwi  r0, r7, 24, 18
/* 0A5FB0 800A8FB0 80A90000 */  lwz       r5, 0x0(r9)
/* 0A5FB4 800A8FB4 54A5045A */  rlwinm    r5, r5, 0, 17, 13
/* 0A5FB8 800A8FB8 7CA42378 */  or        r4, r5, r4
/* 0A5FBC 800A8FBC 90890000 */  stw       r4, 0x0(r9)
/* 0A5FC0 800A8FC0 80890000 */  lwz       r4, 0x0(r9)
/* 0A5FC4 800A8FC4 54840390 */  rlwinm    r4, r4, 0, 14, 8
/* 0A5FC8 800A8FC8 7C800378 */  or        r0, r4, r0
/* 0A5FCC 800A8FCC 90090000 */  stw       r0, 0x0(r9)
/* 0A5FD0 800A8FD0 4800003C */  b         lbl_800A900C
lbl_800A8FD4:
/* 0A5FD4 800A8FD4 80890000 */  lwz       r4, 0x0(r9)
/* 0A5FD8 800A8FD8 54A0B810 */  slwi      r0, r5, 23
/* 0A5FDC 800A8FDC 5484024E */  rlwinm    r4, r4, 0, 9, 7
/* 0A5FE0 800A8FE0 7C800378 */  or        r0, r4, r0
/* 0A5FE4 800A8FE4 90090000 */  stw       r0, 0x0(r9)
/* 0A5FE8 800A8FE8 54C0C00E */  slwi      r0, r6, 24
/* 0A5FEC 800A8FEC 80890000 */  lwz       r4, 0x0(r9)
/* 0A5FF0 800A8FF0 54840208 */  rlwinm    r4, r4, 0, 8, 4
/* 0A5FF4 800A8FF4 7C800378 */  or        r0, r4, r0
/* 0A5FF8 800A8FF8 90090000 */  stw       r0, 0x0(r9)
/* 0A5FFC 800A8FFC 80090000 */  lwz       r0, 0x0(r9)
/* 0A6000 800A9000 5400017E */  clrlwi    r0, r0, 5
/* 0A6004 800A9004 50E0D808 */  rlwimi    r0, r7, 27, 0, 4
/* 0A6008 800A9008 90090000 */  stw       r0, 0x0(r9)
lbl_800A900C:
/* 0A600C 800A900C 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A6010 800A9010 5460063E */  clrlwi    r0, r3, 24
/* 0A6014 800A9014 38600001 */  li        r3, 0x1
/* 0A6018 800A9018 808504F4 */  lwz       r4, 0x4f4(r5)
/* 0A601C 800A901C 7C600030 */  slw       r0, r3, r0
/* 0A6020 800A9020 5400063E */  clrlwi    r0, r0, 24
/* 0A6024 800A9024 60830010 */  ori       r3, r4, 0x10
/* 0A6028 800A9028 906504F4 */  stw       r3, 0x4f4(r5)
/* 0A602C 800A902C 886504F2 */  lbz       r3, 0x4f2(r5)
/* 0A6030 800A9030 7C600378 */  or        r0, r3, r0
/* 0A6034 800A9034 980504F2 */  stb       r0, 0x4f2(r5)
/* 0A6038 800A9038 4E800020 */  blr

glabel fn_800A903C
/* 0A603C 800A903C 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A6040 800A9040 5460103A */  slwi      r0, r3, 2
/* 0A6044 800A9044 3CA0800F */  lis       r5, jtbl_800F3114@ha
/* 0A6048 800A9048 7CC60214 */  add       r6, r6, r0
/* 0A604C 800A904C 3906001C */  addi      r8, r6, 0x1c
/* 0A6050 800A9050 3926003C */  addi      r9, r6, 0x3c
/* 0A6054 800A9054 3946005C */  addi      r10, r6, 0x5c
/* 0A6058 800A9058 38A53114 */  addi      r5, r5, jtbl_800F3114@l
/* 0A605C 800A905C 4800031C */  b         lbl_800A9378
lbl_800A9060:
/* 0A6060 800A9060 80C40000 */  lwz       r6, 0x0(r4)
/* 0A6064 800A9064 88E4000C */  lbz       r7, 0xc(r4)
/* 0A6068 800A9068 3966FFF7 */  subi      r11, r6, 0x9
/* 0A606C 800A906C 80C40008 */  lwz       r6, 0x8(r4)
/* 0A6070 800A9070 280B0010 */  cmplwi    r11, 0x10
/* 0A6074 800A9074 80040004 */  lwz       r0, 0x4(r4)
/* 0A6078 800A9078 418102FC */  bgt       lbl_800A9374
/* 0A607C 800A907C 556B103A */  slwi      r11, r11, 2
/* 0A6080 800A9080 7D65582E */  lwzx      r11, r5, r11
/* 0A6084 800A9084 7D6903A6 */  mtctr     r11
/* 0A6088 800A9088 4E800420 */  bctr
lbl_800A908C:
/* 0A608C 800A908C 81880000 */  lwz       r12, 0x0(r8)
/* 0A6090 800A9090 54CB083C */  slwi      r11, r6, 1
/* 0A6094 800A9094 54E62036 */  slwi      r6, r7, 4
/* 0A6098 800A9098 5587003C */  clrrwi    r7, r12, 1
/* 0A609C 800A909C 7CE00378 */  or        r0, r7, r0
/* 0A60A0 800A90A0 90080000 */  stw       r0, 0x0(r8)
/* 0A60A4 800A90A4 80080000 */  lwz       r0, 0x0(r8)
/* 0A60A8 800A90A8 540007F6 */  rlwinm    r0, r0, 0, 31, 27
/* 0A60AC 800A90AC 7C005B78 */  or        r0, r0, r11
/* 0A60B0 800A90B0 90080000 */  stw       r0, 0x0(r8)
/* 0A60B4 800A90B4 80080000 */  lwz       r0, 0x0(r8)
/* 0A60B8 800A90B8 5400072C */  rlwinm    r0, r0, 0, 28, 22
/* 0A60BC 800A90BC 7C003378 */  or        r0, r0, r6
/* 0A60C0 800A90C0 90080000 */  stw       r0, 0x0(r8)
/* 0A60C4 800A90C4 480002B0 */  b         lbl_800A9374
lbl_800A90C8:
/* 0A60C8 800A90C8 80E80000 */  lwz       r7, 0x0(r8)
/* 0A60CC 800A90CC 54C6502A */  slwi      r6, r6, 10
/* 0A60D0 800A90D0 2C000002 */  cmpwi     r0, 0x2
/* 0A60D4 800A90D4 54E705A4 */  rlwinm    r7, r7, 0, 22, 18
/* 0A60D8 800A90D8 7CE63378 */  or        r6, r7, r6
/* 0A60DC 800A90DC 90C80000 */  stw       r6, 0x0(r8)
/* 0A60E0 800A90E0 40820028 */  bne       lbl_800A9108
/* 0A60E4 800A90E4 80080000 */  lwz       r0, 0x0(r8)
/* 0A60E8 800A90E8 540005EA */  rlwinm    r0, r0, 0, 23, 21
/* 0A60EC 800A90EC 60000200 */  ori       r0, r0, 0x200
/* 0A60F0 800A90F0 90080000 */  stw       r0, 0x0(r8)
/* 0A60F4 800A90F4 80080000 */  lwz       r0, 0x0(r8)
/* 0A60F8 800A90F8 5400007E */  clrlwi    r0, r0, 1
/* 0A60FC 800A90FC 64008000 */  oris      r0, r0, 0x8000
/* 0A6100 800A9100 90080000 */  stw       r0, 0x0(r8)
/* 0A6104 800A9104 48000270 */  b         lbl_800A9374
lbl_800A9108:
/* 0A6108 800A9108 80C80000 */  lwz       r6, 0x0(r8)
/* 0A610C 800A910C 5400482C */  slwi      r0, r0, 9
/* 0A6110 800A9110 54C605EA */  rlwinm    r6, r6, 0, 23, 21
/* 0A6114 800A9114 7CC00378 */  or        r0, r6, r0
/* 0A6118 800A9118 90080000 */  stw       r0, 0x0(r8)
/* 0A611C 800A911C 80080000 */  lwz       r0, 0x0(r8)
/* 0A6120 800A9120 5400007E */  clrlwi    r0, r0, 1
/* 0A6124 800A9124 90080000 */  stw       r0, 0x0(r8)
/* 0A6128 800A9128 4800024C */  b         lbl_800A9374
lbl_800A912C:
/* 0A612C 800A912C 81680000 */  lwz       r11, 0x0(r8)
/* 0A6130 800A9130 54076824 */  slwi      r7, r0, 13
/* 0A6134 800A9134 54C07022 */  slwi      r0, r6, 14
/* 0A6138 800A9138 556604E2 */  rlwinm    r6, r11, 0, 19, 17
/* 0A613C 800A913C 7CC63B78 */  or        r6, r6, r7
/* 0A6140 800A9140 90C80000 */  stw       r6, 0x0(r8)
/* 0A6144 800A9144 80C80000 */  lwz       r6, 0x0(r8)
/* 0A6148 800A9148 54C6049C */  rlwinm    r6, r6, 0, 18, 14
/* 0A614C 800A914C 7CC00378 */  or        r0, r6, r0
/* 0A6150 800A9150 90080000 */  stw       r0, 0x0(r8)
/* 0A6154 800A9154 48000220 */  b         lbl_800A9374
lbl_800A9158:
/* 0A6158 800A9158 81680000 */  lwz       r11, 0x0(r8)
/* 0A615C 800A915C 5407881C */  slwi      r7, r0, 17
/* 0A6160 800A9160 54C0901A */  slwi      r0, r6, 18
/* 0A6164 800A9164 556603DA */  rlwinm    r6, r11, 0, 15, 13
/* 0A6168 800A9168 7CC63B78 */  or        r6, r6, r7
/* 0A616C 800A916C 90C80000 */  stw       r6, 0x0(r8)
/* 0A6170 800A9170 80C80000 */  lwz       r6, 0x0(r8)
/* 0A6174 800A9174 54C60394 */  rlwinm    r6, r6, 0, 14, 10
/* 0A6178 800A9178 7CC00378 */  or        r0, r6, r0
/* 0A617C 800A917C 90080000 */  stw       r0, 0x0(r8)
/* 0A6180 800A9180 480001F4 */  b         lbl_800A9374
lbl_800A9184:
/* 0A6184 800A9184 81680000 */  lwz       r11, 0x0(r8)
/* 0A6188 800A9188 5400A814 */  slwi      r0, r0, 21
/* 0A618C 800A918C 54C6B012 */  slwi      r6, r6, 22
/* 0A6190 800A9190 556B02D2 */  rlwinm    r11, r11, 0, 11, 9
/* 0A6194 800A9194 7D600378 */  or        r0, r11, r0
/* 0A6198 800A9198 90080000 */  stw       r0, 0x0(r8)
/* 0A619C 800A919C 54E0C80C */  slwi      r0, r7, 25
/* 0A61A0 800A91A0 80E80000 */  lwz       r7, 0x0(r8)
/* 0A61A4 800A91A4 54E7028C */  rlwinm    r7, r7, 0, 10, 6
/* 0A61A8 800A91A8 7CE63378 */  or        r6, r7, r6
/* 0A61AC 800A91AC 90C80000 */  stw       r6, 0x0(r8)
/* 0A61B0 800A91B0 80C80000 */  lwz       r6, 0x0(r8)
/* 0A61B4 800A91B4 54C601C2 */  rlwinm    r6, r6, 0, 7, 1
/* 0A61B8 800A91B8 7CC00378 */  or        r0, r6, r0
/* 0A61BC 800A91BC 90080000 */  stw       r0, 0x0(r8)
/* 0A61C0 800A91C0 480001B4 */  b         lbl_800A9374
lbl_800A91C4:
/* 0A61C4 800A91C4 81890000 */  lwz       r12, 0x0(r9)
/* 0A61C8 800A91C8 54CB083C */  slwi      r11, r6, 1
/* 0A61CC 800A91CC 54E62036 */  slwi      r6, r7, 4
/* 0A61D0 800A91D0 5587003C */  clrrwi    r7, r12, 1
/* 0A61D4 800A91D4 7CE00378 */  or        r0, r7, r0
/* 0A61D8 800A91D8 90090000 */  stw       r0, 0x0(r9)
/* 0A61DC 800A91DC 80090000 */  lwz       r0, 0x0(r9)
/* 0A61E0 800A91E0 540007F6 */  rlwinm    r0, r0, 0, 31, 27
/* 0A61E4 800A91E4 7C005B78 */  or        r0, r0, r11
/* 0A61E8 800A91E8 90090000 */  stw       r0, 0x0(r9)
/* 0A61EC 800A91EC 80090000 */  lwz       r0, 0x0(r9)
/* 0A61F0 800A91F0 5400072C */  rlwinm    r0, r0, 0, 28, 22
/* 0A61F4 800A91F4 7C003378 */  or        r0, r0, r6
/* 0A61F8 800A91F8 90090000 */  stw       r0, 0x0(r9)
/* 0A61FC 800A91FC 48000178 */  b         lbl_800A9374
lbl_800A9200:
/* 0A6200 800A9200 81690000 */  lwz       r11, 0x0(r9)
/* 0A6204 800A9204 5400482C */  slwi      r0, r0, 9
/* 0A6208 800A9208 54C6502A */  slwi      r6, r6, 10
/* 0A620C 800A920C 556B05EA */  rlwinm    r11, r11, 0, 23, 21
/* 0A6210 800A9210 7D600378 */  or        r0, r11, r0
/* 0A6214 800A9214 90090000 */  stw       r0, 0x0(r9)
/* 0A6218 800A9218 54E06824 */  slwi      r0, r7, 13
/* 0A621C 800A921C 80E90000 */  lwz       r7, 0x0(r9)
/* 0A6220 800A9220 54E705A4 */  rlwinm    r7, r7, 0, 22, 18
/* 0A6224 800A9224 7CE63378 */  or        r6, r7, r6
/* 0A6228 800A9228 90C90000 */  stw       r6, 0x0(r9)
/* 0A622C 800A922C 80C90000 */  lwz       r6, 0x0(r9)
/* 0A6230 800A9230 54C604DA */  rlwinm    r6, r6, 0, 19, 13
/* 0A6234 800A9234 7CC00378 */  or        r0, r6, r0
/* 0A6238 800A9238 90090000 */  stw       r0, 0x0(r9)
/* 0A623C 800A923C 48000138 */  b         lbl_800A9374
lbl_800A9240:
/* 0A6240 800A9240 81690000 */  lwz       r11, 0x0(r9)
/* 0A6244 800A9244 5400901A */  slwi      r0, r0, 18
/* 0A6248 800A9248 54C69818 */  slwi      r6, r6, 19
/* 0A624C 800A924C 556B0398 */  rlwinm    r11, r11, 0, 14, 12
/* 0A6250 800A9250 7D600378 */  or        r0, r11, r0
/* 0A6254 800A9254 90090000 */  stw       r0, 0x0(r9)
/* 0A6258 800A9258 54E0B012 */  slwi      r0, r7, 22
/* 0A625C 800A925C 80E90000 */  lwz       r7, 0x0(r9)
/* 0A6260 800A9260 54E70352 */  rlwinm    r7, r7, 0, 13, 9
/* 0A6264 800A9264 7CE63378 */  or        r6, r7, r6
/* 0A6268 800A9268 90C90000 */  stw       r6, 0x0(r9)
/* 0A626C 800A926C 80C90000 */  lwz       r6, 0x0(r9)
/* 0A6270 800A9270 54C60288 */  rlwinm    r6, r6, 0, 10, 4
/* 0A6274 800A9274 7CC00378 */  or        r0, r6, r0
/* 0A6278 800A9278 90090000 */  stw       r0, 0x0(r9)
/* 0A627C 800A927C 480000F8 */  b         lbl_800A9374
lbl_800A9280:
/* 0A6280 800A9280 81890000 */  lwz       r12, 0x0(r9)
/* 0A6284 800A9284 540BD808 */  slwi      r11, r0, 27
/* 0A6288 800A9288 54C0E006 */  slwi      r0, r6, 28
/* 0A628C 800A928C 55860146 */  rlwinm    r6, r12, 0, 5, 3
/* 0A6290 800A9290 7CC65B78 */  or        r6, r6, r11
/* 0A6294 800A9294 90C90000 */  stw       r6, 0x0(r9)
/* 0A6298 800A9298 80C90000 */  lwz       r6, 0x0(r9)
/* 0A629C 800A929C 54C60100 */  rlwinm    r6, r6, 0, 4, 0
/* 0A62A0 800A92A0 7CC00378 */  or        r0, r6, r0
/* 0A62A4 800A92A4 90090000 */  stw       r0, 0x0(r9)
/* 0A62A8 800A92A8 800A0000 */  lwz       r0, 0x0(r10)
/* 0A62AC 800A92AC 54000034 */  clrrwi    r0, r0, 5
/* 0A62B0 800A92B0 7C003B78 */  or        r0, r0, r7
/* 0A62B4 800A92B4 900A0000 */  stw       r0, 0x0(r10)
/* 0A62B8 800A92B8 480000BC */  b         lbl_800A9374
lbl_800A92BC:
/* 0A62BC 800A92BC 816A0000 */  lwz       r11, 0x0(r10)
/* 0A62C0 800A92C0 54002834 */  slwi      r0, r0, 5
/* 0A62C4 800A92C4 54C63032 */  slwi      r6, r6, 6
/* 0A62C8 800A92C8 556B06F2 */  rlwinm    r11, r11, 0, 27, 25
/* 0A62CC 800A92CC 7D600378 */  or        r0, r11, r0
/* 0A62D0 800A92D0 900A0000 */  stw       r0, 0x0(r10)
/* 0A62D4 800A92D4 54E0482C */  slwi      r0, r7, 9
/* 0A62D8 800A92D8 80EA0000 */  lwz       r7, 0x0(r10)
/* 0A62DC 800A92DC 54E706AC */  rlwinm    r7, r7, 0, 26, 22
/* 0A62E0 800A92E0 7CE63378 */  or        r6, r7, r6
/* 0A62E4 800A92E4 90CA0000 */  stw       r6, 0x0(r10)
/* 0A62E8 800A92E8 80CA0000 */  lwz       r6, 0x0(r10)
/* 0A62EC 800A92EC 54C605E2 */  rlwinm    r6, r6, 0, 23, 17
/* 0A62F0 800A92F0 7CC00378 */  or        r0, r6, r0
/* 0A62F4 800A92F4 900A0000 */  stw       r0, 0x0(r10)
/* 0A62F8 800A92F8 4800007C */  b         lbl_800A9374
lbl_800A92FC:
/* 0A62FC 800A92FC 816A0000 */  lwz       r11, 0x0(r10)
/* 0A6300 800A9300 54007022 */  slwi      r0, r0, 14
/* 0A6304 800A9304 54C67820 */  slwi      r6, r6, 15
/* 0A6308 800A9308 556B04A0 */  rlwinm    r11, r11, 0, 18, 16
/* 0A630C 800A930C 7D600378 */  or        r0, r11, r0
/* 0A6310 800A9310 900A0000 */  stw       r0, 0x0(r10)
/* 0A6314 800A9314 54E0901A */  slwi      r0, r7, 18
/* 0A6318 800A9318 80EA0000 */  lwz       r7, 0x0(r10)
/* 0A631C 800A931C 54E7045A */  rlwinm    r7, r7, 0, 17, 13
/* 0A6320 800A9320 7CE63378 */  or        r6, r7, r6
/* 0A6324 800A9324 90CA0000 */  stw       r6, 0x0(r10)
/* 0A6328 800A9328 80CA0000 */  lwz       r6, 0x0(r10)
/* 0A632C 800A932C 54C60390 */  rlwinm    r6, r6, 0, 14, 8
/* 0A6330 800A9330 7CC00378 */  or        r0, r6, r0
/* 0A6334 800A9334 900A0000 */  stw       r0, 0x0(r10)
/* 0A6338 800A9338 4800003C */  b         lbl_800A9374
lbl_800A933C:
/* 0A633C 800A933C 818A0000 */  lwz       r12, 0x0(r10)
/* 0A6340 800A9340 540BB810 */  slwi      r11, r0, 23
/* 0A6344 800A9344 54C0C00E */  slwi      r0, r6, 24
/* 0A6348 800A9348 5586024E */  rlwinm    r6, r12, 0, 9, 7
/* 0A634C 800A934C 7CC65B78 */  or        r6, r6, r11
/* 0A6350 800A9350 90CA0000 */  stw       r6, 0x0(r10)
/* 0A6354 800A9354 80CA0000 */  lwz       r6, 0x0(r10)
/* 0A6358 800A9358 54C60208 */  rlwinm    r6, r6, 0, 8, 4
/* 0A635C 800A935C 7CC00378 */  or        r0, r6, r0
/* 0A6360 800A9360 900A0000 */  stw       r0, 0x0(r10)
/* 0A6364 800A9364 800A0000 */  lwz       r0, 0x0(r10)
/* 0A6368 800A9368 5400017E */  clrlwi    r0, r0, 5
/* 0A636C 800A936C 50E0D808 */  rlwimi    r0, r7, 27, 0, 4
/* 0A6370 800A9370 900A0000 */  stw       r0, 0x0(r10)
lbl_800A9374:
/* 0A6374 800A9374 38840010 */  addi      r4, r4, 0x10
lbl_800A9378:
/* 0A6378 800A9378 80040000 */  lwz       r0, 0x0(r4)
/* 0A637C 800A937C 2C0000FF */  cmpwi     r0, 0xff
/* 0A6380 800A9380 4082FCE0 */  bne       lbl_800A9060
/* 0A6384 800A9384 80A28400 */  lwz       r5, gx@sda21(r0)
/* 0A6388 800A9388 5460063E */  clrlwi    r0, r3, 24
/* 0A638C 800A938C 38600001 */  li        r3, 0x1
/* 0A6390 800A9390 808504F4 */  lwz       r4, 0x4f4(r5)
/* 0A6394 800A9394 7C600030 */  slw       r0, r3, r0
/* 0A6398 800A9398 5400063E */  clrlwi    r0, r0, 24
/* 0A639C 800A939C 60830010 */  ori       r3, r4, 0x10
/* 0A63A0 800A93A0 906504F4 */  stw       r3, 0x4f4(r5)
/* 0A63A4 800A93A4 886504F2 */  lbz       r3, 0x4f2(r5)
/* 0A63A8 800A93A8 7C600378 */  or        r0, r3, r0
/* 0A63AC 800A93AC 980504F2 */  stb       r0, 0x4f2(r5)
/* 0A63B0 800A93B0 4E800020 */  blr

glabel fn_800A93B4
/* 0A63B4 800A93B4 81428400 */  lwz       r10, gx@sda21(r0)
/* 0A63B8 800A93B8 39800000 */  li        r12, 0x0
/* 0A63BC 800A93BC 39600000 */  li        r11, 0x0
/* 0A63C0 800A93C0 3CE0CC01 */  lis       r7, 0xcc01
/* 0A63C4 800A93C4 48000070 */  b         lbl_800A9434
lbl_800A93C8:
/* 0A63C8 800A93C8 5589063E */  clrlwi    r9, r12, 24
/* 0A63CC 800A93CC 886A04F2 */  lbz       r3, 0x4f2(r10)
/* 0A63D0 800A93D0 38000001 */  li        r0, 0x1
/* 0A63D4 800A93D4 7C004830 */  slw       r0, r0, r9
/* 0A63D8 800A93D8 7C600039 */  and.      r0, r3, r0
/* 0A63DC 800A93DC 41820050 */  beq       lbl_800A942C
/* 0A63E0 800A93E0 39000008 */  li        r8, 0x8
/* 0A63E4 800A93E4 99078000 */  stb       r8, -0x8000(r7)
/* 0A63E8 800A93E8 61230070 */  ori       r3, r9, 0x70
/* 0A63EC 800A93EC 380B001C */  addi      r0, r11, 0x1c
/* 0A63F0 800A93F0 98678000 */  stb       r3, -0x8000(r7)
/* 0A63F4 800A93F4 61250080 */  ori       r5, r9, 0x80
/* 0A63F8 800A93F8 388B003C */  addi      r4, r11, 0x3c
/* 0A63FC 800A93FC 7CCA002E */  lwzx      r6, r10, r0
/* 0A6400 800A9400 61230090 */  ori       r3, r9, 0x90
/* 0A6404 800A9404 380B005C */  addi      r0, r11, 0x5c
/* 0A6408 800A9408 90C78000 */  stw       r6, -0x8000(r7)
/* 0A640C 800A940C 99078000 */  stb       r8, -0x8000(r7)
/* 0A6410 800A9410 98A78000 */  stb       r5, -0x8000(r7)
/* 0A6414 800A9414 7C8A202E */  lwzx      r4, r10, r4
/* 0A6418 800A9418 90878000 */  stw       r4, -0x8000(r7)
/* 0A641C 800A941C 99078000 */  stb       r8, -0x8000(r7)
/* 0A6420 800A9420 98678000 */  stb       r3, -0x8000(r7)
/* 0A6424 800A9424 7C0A002E */  lwzx      r0, r10, r0
/* 0A6428 800A9428 90078000 */  stw       r0, -0x8000(r7)
lbl_800A942C:
/* 0A642C 800A942C 396B0004 */  addi      r11, r11, 0x4
/* 0A6430 800A9430 398C0001 */  addi      r12, r12, 0x1
lbl_800A9434:
/* 0A6434 800A9434 5580063E */  clrlwi    r0, r12, 24
/* 0A6438 800A9438 28000008 */  cmplwi    r0, 0x8
/* 0A643C 800A943C 4180FF8C */  blt       lbl_800A93C8
/* 0A6440 800A9440 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6444 800A9444 38000000 */  li        r0, 0x0
/* 0A6448 800A9448 980304F2 */  stb       r0, 0x4f2(r3)
/* 0A644C 800A944C 4E800020 */  blr

glabel fn_800A9450
/* 0A6450 800A9450 2C030019 */  cmpwi     r3, 0x19
/* 0A6454 800A9454 40820008 */  bne       lbl_800A945C
/* 0A6458 800A9458 3860000A */  li        r3, 0xa
lbl_800A945C:
/* 0A645C 800A945C 38000008 */  li        r0, 0x8
/* 0A6460 800A9460 38C3FFF7 */  subi      r6, r3, 0x9
/* 0A6464 800A9464 3C60CC01 */  lis       r3, 0xcc01
/* 0A6468 800A9468 98038000 */  stb       r0, -0x8000(r3)
/* 0A646C 800A946C 60C000A0 */  ori       r0, r6, 0xa0
/* 0A6470 800A9470 548400BE */  clrlwi    r4, r4, 2
/* 0A6474 800A9474 98038000 */  stb       r0, -0x8000(r3)
/* 0A6478 800A9478 3406FFF4 */  subic.    r0, r6, 0xc
/* 0A647C 800A947C 90838000 */  stw       r4, -0x8000(r3)
/* 0A6480 800A9480 4180001C */  blt       lbl_800A949C
/* 0A6484 800A9484 2C000004 */  cmpwi     r0, 0x4
/* 0A6488 800A9488 40800014 */  bge       lbl_800A949C
/* 0A648C 800A948C 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A6490 800A9490 5400103A */  slwi      r0, r0, 2
/* 0A6494 800A9494 7C630214 */  add       r3, r3, r0
/* 0A6498 800A9498 90830088 */  stw       r4, 0x88(r3)
lbl_800A949C:
/* 0A649C 800A949C 38000008 */  li        r0, 0x8
/* 0A64A0 800A94A0 3C60CC01 */  lis       r3, 0xcc01
/* 0A64A4 800A94A4 98038000 */  stb       r0, -0x8000(r3)
/* 0A64A8 800A94A8 60C000B0 */  ori       r0, r6, 0xb0
/* 0A64AC 800A94AC 54A4063E */  clrlwi    r4, r5, 24
/* 0A64B0 800A94B0 98038000 */  stb       r0, -0x8000(r3)
/* 0A64B4 800A94B4 3406FFF4 */  subic.    r0, r6, 0xc
/* 0A64B8 800A94B8 90838000 */  stw       r4, -0x8000(r3)
/* 0A64BC 800A94BC 4D800020 */  bltlr
/* 0A64C0 800A94C0 2C000004 */  cmpwi     r0, 0x4
/* 0A64C4 800A94C4 4C800020 */  bgelr
/* 0A64C8 800A94C8 80628400 */  lwz       r3, gx@sda21(r0)
/* 0A64CC 800A94CC 5400103A */  slwi      r0, r0, 2
/* 0A64D0 800A94D0 7C630214 */  add       r3, r3, r0
/* 0A64D4 800A94D4 90830098 */  stw       r4, 0x98(r3)
/* 0A64D8 800A94D8 4E800020 */  blr

glabel GXInvalidateVtxCache
/* 0A64DC 800A94DC 38000048 */  li        r0, 0x48
/* 0A64E0 800A94E0 3C60CC01 */  lis       r3, 0xcc01
/* 0A64E4 800A94E4 98038000 */  stb       r0, -0x8000(r3)
/* 0A64E8 800A94E8 4E800020 */  blr

glabel fn_800A94EC
/* 0A64EC 800A94EC 7C0802A6 */  mflr      r0
/* 0A64F0 800A94F0 28050014 */  cmplwi    r5, 0x14
/* 0A64F4 800A94F4 90010004 */  stw       r0, 0x4(r1)
/* 0A64F8 800A94F8 39600000 */  li        r11, 0x0
/* 0A64FC 800A94FC 39800000 */  li        r12, 0x0
/* 0A6500 800A9500 9421FFF8 */  stwu      r1, -0x8(r1)
/* 0A6504 800A9504 39400005 */  li        r10, 0x5
/* 0A6508 800A9508 41810098 */  bgt       lbl_800A95A0
/* 0A650C 800A950C 3D20800F */  lis       r9, jtbl_800F3174@ha
/* 0A6510 800A9510 39293174 */  addi      r9, r9, jtbl_800F3174@l
/* 0A6514 800A9514 54A0103A */  slwi      r0, r5, 2
/* 0A6518 800A9518 7C09002E */  lwzx      r0, r9, r0
/* 0A651C 800A951C 7C0903A6 */  mtctr     r0
/* 0A6520 800A9520 4E800420 */  bctr
lbl_800A9524:
/* 0A6524 800A9524 39400000 */  li        r10, 0x0
/* 0A6528 800A9528 39800001 */  li        r12, 0x1
/* 0A652C 800A952C 48000074 */  b         lbl_800A95A0
lbl_800A9530:
/* 0A6530 800A9530 39400001 */  li        r10, 0x1
/* 0A6534 800A9534 39800001 */  li        r12, 0x1
/* 0A6538 800A9538 48000068 */  b         lbl_800A95A0
lbl_800A953C:
/* 0A653C 800A953C 39400003 */  li        r10, 0x3
/* 0A6540 800A9540 39800001 */  li        r12, 0x1
/* 0A6544 800A9544 4800005C */  b         lbl_800A95A0
lbl_800A9548:
/* 0A6548 800A9548 39400004 */  li        r10, 0x4
/* 0A654C 800A954C 39800001 */  li        r12, 0x1
/* 0A6550 800A9550 48000050 */  b         lbl_800A95A0
lbl_800A9554:
/* 0A6554 800A9554 39400002 */  li        r10, 0x2
/* 0A6558 800A9558 48000048 */  b         lbl_800A95A0
lbl_800A955C:
/* 0A655C 800A955C 39400002 */  li        r10, 0x2
/* 0A6560 800A9560 48000040 */  b         lbl_800A95A0
lbl_800A9564:
/* 0A6564 800A9564 39400005 */  li        r10, 0x5
/* 0A6568 800A9568 48000038 */  b         lbl_800A95A0
lbl_800A956C:
/* 0A656C 800A956C 39400006 */  li        r10, 0x6
/* 0A6570 800A9570 48000030 */  b         lbl_800A95A0
lbl_800A9574:
/* 0A6574 800A9574 39400007 */  li        r10, 0x7
/* 0A6578 800A9578 48000028 */  b         lbl_800A95A0
lbl_800A957C:
/* 0A657C 800A957C 39400008 */  li        r10, 0x8
/* 0A6580 800A9580 48000020 */  b         lbl_800A95A0
lbl_800A9584:
/* 0A6584 800A9584 39400009 */  li        r10, 0x9
/* 0A6588 800A9588 48000018 */  b         lbl_800A95A0
lbl_800A958C:
/* 0A658C 800A958C 3940000A */  li        r10, 0xa
/* 0A6590 800A9590 48000010 */  b         lbl_800A95A0
lbl_800A9594:
/* 0A6594 800A9594 3940000B */  li        r10, 0xb
/* 0A6598 800A9598 48000008 */  b         lbl_800A95A0
lbl_800A959C:
/* 0A659C 800A959C 3940000C */  li        r10, 0xc
lbl_800A95A0:
/* 0A65A0 800A95A0 2C040001 */  cmpwi     r4, 0x1
/* 0A65A4 800A95A4 41820024 */  beq       lbl_800A95C8
/* 0A65A8 800A95A8 40800010 */  bge       lbl_800A95B8
/* 0A65AC 800A95AC 2C040000 */  cmpwi     r4, 0x0
/* 0A65B0 800A95B0 4080002C */  bge       lbl_800A95DC
/* 0A65B4 800A95B4 480000A4 */  b         lbl_800A9658
lbl_800A95B8:
/* 0A65B8 800A95B8 2C04000A */  cmpwi     r4, 0xa
/* 0A65BC 800A95BC 41820074 */  beq       lbl_800A9630
/* 0A65C0 800A95C0 40800098 */  bge       lbl_800A9658
/* 0A65C4 800A95C4 48000030 */  b         lbl_800A95F4
lbl_800A95C8:
/* 0A65C8 800A95C8 5580103A */  slwi      r0, r12, 2
/* 0A65CC 800A95CC 54040726 */  rlwinm    r4, r0, 0, 28, 19
/* 0A65D0 800A95D0 55403830 */  slwi      r0, r10, 7
/* 0A65D4 800A95D4 7C8B0378 */  or        r11, r4, r0
/* 0A65D8 800A95D8 48000080 */  b         lbl_800A9658
lbl_800A95DC:
/* 0A65DC 800A95DC 5580103A */  slwi      r0, r12, 2
/* 0A65E0 800A95E0 60000002 */  ori       r0, r0, 0x2
/* 0A65E4 800A95E4 54040726 */  rlwinm    r4, r0, 0, 28, 19
/* 0A65E8 800A95E8 55403830 */  slwi      r0, r10, 7
/* 0A65EC 800A95EC 7C8B0378 */  or        r11, r4, r0
/* 0A65F0 800A95F0 48000068 */  b         lbl_800A9658
lbl_800A95F4:
/* 0A65F4 800A95F4 5580103A */  slwi      r0, r12, 2
/* 0A65F8 800A95F8 54000730 */  rlwinm    r0, r0, 0, 28, 24
/* 0A65FC 800A95FC 60000010 */  ori       r0, r0, 0x10
/* 0A6600 800A9600 54090666 */  rlwinm    r9, r0, 0, 25, 19
/* 0A6604 800A9604 55403830 */  slwi      r0, r10, 7
/* 0A6608 800A9608 7D290378 */  or        r9, r9, r0
/* 0A660C 800A960C 38A5FFF4 */  subi      r5, r5, 0xc
/* 0A6610 800A9610 3804FFFE */  subi      r0, r4, 0x2
/* 0A6614 800A9614 55290520 */  rlwinm    r9, r9, 0, 20, 16
/* 0A6618 800A9618 54A46026 */  slwi      r4, r5, 12
/* 0A661C 800A961C 7D242378 */  or        r4, r9, r4
/* 0A6620 800A9620 5484045A */  rlwinm    r4, r4, 0, 17, 13
/* 0A6624 800A9624 54007820 */  slwi      r0, r0, 15
/* 0A6628 800A9628 7C8B0378 */  or        r11, r4, r0
/* 0A662C 800A962C 4800002C */  b         lbl_800A9658
lbl_800A9630:
/* 0A6630 800A9630 2C050013 */  cmpwi     r5, 0x13
/* 0A6634 800A9634 5580103A */  slwi      r0, r12, 2
/* 0A6638 800A9638 40820010 */  bne       lbl_800A9648
/* 0A663C 800A963C 54000730 */  rlwinm    r0, r0, 0, 28, 24
/* 0A6640 800A9640 60000020 */  ori       r0, r0, 0x20
/* 0A6644 800A9644 4800000C */  b         lbl_800A9650
lbl_800A9648:
/* 0A6648 800A9648 54000730 */  rlwinm    r0, r0, 0, 28, 24
/* 0A664C 800A964C 60000030 */  ori       r0, r0, 0x30
lbl_800A9650:
/* 0A6650 800A9650 54000666 */  rlwinm    r0, r0, 0, 25, 19
/* 0A6654 800A9654 600B0100 */  ori       r11, r0, 0x100
lbl_800A9658:
/* 0A6658 800A9658 39400010 */  li        r10, 0x10
/* 0A665C 800A965C 3D20CC01 */  lis       r9, 0xcc01
/* 0A6660 800A9660 99498000 */  stb       r10, -0x8000(r9)
/* 0A6664 800A9664 38031040 */  addi      r0, r3, 0x1040
/* 0A6668 800A9668 3888FFC0 */  subi      r4, r8, 0x40
/* 0A666C 800A966C 90098000 */  stw       r0, -0x8000(r9)
/* 0A6670 800A9670 5485062C */  rlwinm    r5, r4, 0, 24, 22
/* 0A6674 800A9674 54E4442E */  clrlslwi  r4, r7, 24, 8
/* 0A6678 800A9678 91698000 */  stw       r11, -0x8000(r9)
/* 0A667C 800A967C 38031050 */  addi      r0, r3, 0x1050
/* 0A6680 800A9680 28030006 */  cmplwi    r3, 0x6
/* 0A6684 800A9684 99498000 */  stb       r10, -0x8000(r9)
/* 0A6688 800A9688 7CA42378 */  or        r4, r5, r4
/* 0A668C 800A968C 90098000 */  stw       r0, -0x8000(r9)
/* 0A6690 800A9690 90898000 */  stw       r4, -0x8000(r9)
/* 0A6694 800A9694 418100F4 */  bgt       lbl_800A9788
/* 0A6698 800A9698 3C80800F */  lis       r4, jtbl_800F3158@ha
/* 0A669C 800A969C 38843158 */  addi      r4, r4, jtbl_800F3158@l
/* 0A66A0 800A96A0 5460103A */  slwi      r0, r3, 2
/* 0A66A4 800A96A4 7C04002E */  lwzx      r0, r4, r0
/* 0A66A8 800A96A8 7C0903A6 */  mtctr     r0
/* 0A66AC 800A96AC 4E800420 */  bctr
lbl_800A96B0:
/* 0A66B0 800A96B0 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A66B4 800A96B4 54C03032 */  slwi      r0, r6, 6
/* 0A66B8 800A96B8 38A40080 */  addi      r5, r4, 0x80
/* 0A66BC 800A96BC 80840080 */  lwz       r4, 0x80(r4)
/* 0A66C0 800A96C0 548406A6 */  rlwinm    r4, r4, 0, 26, 19
/* 0A66C4 800A96C4 7C800378 */  or        r0, r4, r0
/* 0A66C8 800A96C8 90050000 */  stw       r0, 0x0(r5)
/* 0A66CC 800A96CC 480000D8 */  b         lbl_800A97A4
lbl_800A96D0:
/* 0A66D0 800A96D0 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A66D4 800A96D4 54C06026 */  slwi      r0, r6, 12
/* 0A66D8 800A96D8 38A40080 */  addi      r5, r4, 0x80
/* 0A66DC 800A96DC 80840080 */  lwz       r4, 0x80(r4)
/* 0A66E0 800A96E0 5484051A */  rlwinm    r4, r4, 0, 20, 13
/* 0A66E4 800A96E4 7C800378 */  or        r0, r4, r0
/* 0A66E8 800A96E8 90050000 */  stw       r0, 0x0(r5)
/* 0A66EC 800A96EC 480000B8 */  b         lbl_800A97A4
lbl_800A96F0:
/* 0A66F0 800A96F0 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A66F4 800A96F4 54C0901A */  slwi      r0, r6, 18
/* 0A66F8 800A96F8 38A40080 */  addi      r5, r4, 0x80
/* 0A66FC 800A96FC 80840080 */  lwz       r4, 0x80(r4)
/* 0A6700 800A9700 5484038E */  rlwinm    r4, r4, 0, 14, 7
/* 0A6704 800A9704 7C800378 */  or        r0, r4, r0
/* 0A6708 800A9708 90050000 */  stw       r0, 0x0(r5)
/* 0A670C 800A970C 48000098 */  b         lbl_800A97A4
lbl_800A9710:
/* 0A6710 800A9710 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A6714 800A9714 54C0C00E */  slwi      r0, r6, 24
/* 0A6718 800A9718 38A40080 */  addi      r5, r4, 0x80
/* 0A671C 800A971C 80840080 */  lwz       r4, 0x80(r4)
/* 0A6720 800A9720 54840202 */  rlwinm    r4, r4, 0, 8, 1
/* 0A6724 800A9724 7C800378 */  or        r0, r4, r0
/* 0A6728 800A9728 90050000 */  stw       r0, 0x0(r5)
/* 0A672C 800A972C 48000078 */  b         lbl_800A97A4
lbl_800A9730:
/* 0A6730 800A9730 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A6734 800A9734 84040084 */  lwzu      r0, 0x84(r4)
/* 0A6738 800A9738 54000032 */  clrrwi    r0, r0, 6
/* 0A673C 800A973C 7C003378 */  or        r0, r0, r6
/* 0A6740 800A9740 90040000 */  stw       r0, 0x0(r4)
/* 0A6744 800A9744 48000060 */  b         lbl_800A97A4
lbl_800A9748:
/* 0A6748 800A9748 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A674C 800A974C 54C03032 */  slwi      r0, r6, 6
/* 0A6750 800A9750 38A40084 */  addi      r5, r4, 0x84
/* 0A6754 800A9754 80840084 */  lwz       r4, 0x84(r4)
/* 0A6758 800A9758 548406A6 */  rlwinm    r4, r4, 0, 26, 19
/* 0A675C 800A975C 7C800378 */  or        r0, r4, r0
/* 0A6760 800A9760 90050000 */  stw       r0, 0x0(r5)
/* 0A6764 800A9764 48000040 */  b         lbl_800A97A4
lbl_800A9768:
/* 0A6768 800A9768 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A676C 800A976C 54C06026 */  slwi      r0, r6, 12
/* 0A6770 800A9770 38A40084 */  addi      r5, r4, 0x84
/* 0A6774 800A9774 80840084 */  lwz       r4, 0x84(r4)
/* 0A6778 800A9778 5484051A */  rlwinm    r4, r4, 0, 20, 13
/* 0A677C 800A977C 7C800378 */  or        r0, r4, r0
/* 0A6780 800A9780 90050000 */  stw       r0, 0x0(r5)
/* 0A6784 800A9784 48000020 */  b         lbl_800A97A4
lbl_800A9788:
/* 0A6788 800A9788 80828400 */  lwz       r4, gx@sda21(r0)
/* 0A678C 800A978C 54C0901A */  slwi      r0, r6, 18
/* 0A6790 800A9790 38A40084 */  addi      r5, r4, 0x84
/* 0A6794 800A9794 80840084 */  lwz       r4, 0x84(r4)
/* 0A6798 800A9798 5484038E */  rlwinm    r4, r4, 0, 14, 7
/* 0A679C 800A979C 7C800378 */  or        r0, r4, r0
/* 0A67A0 800A97A0 90050000 */  stw       r0, 0x0(r5)
lbl_800A97A4:
/* 0A67A4 800A97A4 38630001 */  addi      r3, r3, 0x1
/* 0A67A8 800A97A8 48004195 */  bl        fn_800AD93C
/* 0A67AC 800A97AC 8001000C */  lwz       r0, 0xc(r1)
/* 0A67B0 800A97B0 38210008 */  addi      r1, r1, 0x8
/* 0A67B4 800A97B4 7C0803A6 */  mtlr      r0
/* 0A67B8 800A97B8 4E800020 */  blr

glabel GXSetNumTexGens
/* 0A67BC 800A97BC 80C28400 */  lwz       r6, gx@sda21(r0)
/* 0A67C0 800A97C0 5468063E */  clrlwi    r8, r3, 24
/* 0A67C4 800A97C4 38800010 */  li        r4, 0x10
/* 0A67C8 800A97C8 80A60204 */  lwz       r5, 0x204(r6)
/* 0A67CC 800A97CC 3C60CC01 */  lis       r3, 0xcc01
/* 0A67D0 800A97D0 3800103F */  li        r0, 0x103f
/* 0A67D4 800A97D4 54A50036 */  clrrwi    r5, r5, 4
/* 0A67D8 800A97D8 7CA54378 */  or        r5, r5, r8
/* 0A67DC 800A97DC 90A60204 */  stw       r5, 0x204(r6)
/* 0A67E0 800A97E0 98838000 */  stb       r4, -0x8000(r3)
/* 0A67E4 800A97E4 90038000 */  stw       r0, -0x8000(r3)
/* 0A67E8 800A97E8 91038000 */  stw       r8, -0x8000(r3)
/* 0A67EC 800A97EC 800604F4 */  lwz       r0, 0x4f4(r6)
/* 0A67F0 800A97F0 60000004 */  ori       r0, r0, 0x4
/* 0A67F4 800A97F4 900604F4 */  stw       r0, 0x4f4(r6)
/* 0A67F8 800A97F8 4E800020 */  blr

# 0x800F3068 - 0x800F31C8
.section .data, "wa"

.balign 8

jtbl_800F3068:
	.long GXSetVtxDesc, lbl_800A8804
	.long GXSetVtxDesc, lbl_800A881C
	.long GXSetVtxDesc, lbl_800A883C
	.long GXSetVtxDesc, lbl_800A885C
	.long GXSetVtxDesc, lbl_800A887C
	.long GXSetVtxDesc, lbl_800A889C
	.long GXSetVtxDesc, lbl_800A88BC
	.long GXSetVtxDesc, lbl_800A88DC
	.long GXSetVtxDesc, lbl_800A88FC
	.long GXSetVtxDesc, lbl_800A891C
	.long GXSetVtxDesc, lbl_800A893C
	.long GXSetVtxDesc, lbl_800A89A4
	.long GXSetVtxDesc, lbl_800A89C4
	.long GXSetVtxDesc, lbl_800A89E4
	.long GXSetVtxDesc, lbl_800A89FC
	.long GXSetVtxDesc, lbl_800A8A1C
	.long GXSetVtxDesc, lbl_800A8A3C
	.long GXSetVtxDesc, lbl_800A8A5C
	.long GXSetVtxDesc, lbl_800A8A7C
	.long GXSetVtxDesc, lbl_800A8A9C
	.long GXSetVtxDesc, lbl_800A8ABC
	.long GXSetVtxDesc, lbl_800A8AD8
	.long GXSetVtxDesc, lbl_800A8AD8
	.long GXSetVtxDesc, lbl_800A8AD8
	.long GXSetVtxDesc, lbl_800A8AD8
	.long GXSetVtxDesc, lbl_800A8970

jtbl_800F30D0:
	.long GXSetVtxAttrFmt, lbl_800A8D20
	.long GXSetVtxAttrFmt, lbl_800A8D5C
	.long GXSetVtxAttrFmt, lbl_800A8DC0
	.long GXSetVtxAttrFmt, lbl_800A8DEC
	.long GXSetVtxAttrFmt, lbl_800A8E18
	.long GXSetVtxAttrFmt, lbl_800A8E58
	.long GXSetVtxAttrFmt, lbl_800A8E94
	.long GXSetVtxAttrFmt, lbl_800A8ED4
	.long GXSetVtxAttrFmt, lbl_800A8F14
	.long GXSetVtxAttrFmt, lbl_800A8F54
	.long GXSetVtxAttrFmt, lbl_800A8F94
	.long GXSetVtxAttrFmt, lbl_800A8FD4
	.long GXSetVtxAttrFmt, lbl_800A900C
	.long GXSetVtxAttrFmt, lbl_800A900C
	.long GXSetVtxAttrFmt, lbl_800A900C
	.long GXSetVtxAttrFmt, lbl_800A900C
	.long GXSetVtxAttrFmt, lbl_800A8D5C

jtbl_800F3114:
	.long lbl_800A908C
	.long lbl_800A90C8
	.long lbl_800A912C
	.long lbl_800A9158
	.long lbl_800A9184
	.long lbl_800A91C4
	.long lbl_800A9200
	.long lbl_800A9240
	.long lbl_800A9280
	.long lbl_800A92BC
	.long lbl_800A92FC
	.long lbl_800A933C
	.long lbl_800A9374
	.long lbl_800A9374
	.long lbl_800A9374
	.long lbl_800A9374
	.long lbl_800A90C8

jtbl_800F3158:
	.long lbl_800A96B0
	.long lbl_800A96D0
	.long lbl_800A96F0
	.long lbl_800A9710
	.long lbl_800A9730
	.long lbl_800A9748
	.long lbl_800A9768

jtbl_800F3174:
	.long lbl_800A9524
	.long lbl_800A9530
	.long lbl_800A953C
	.long lbl_800A9548
	.long lbl_800A9564
	.long lbl_800A956C
	.long lbl_800A9574
	.long lbl_800A957C
	.long lbl_800A9584
	.long lbl_800A958C
	.long lbl_800A9594
	.long lbl_800A959C
	.long lbl_800A95A0
	.long lbl_800A95A0
	.long lbl_800A95A0
	.long lbl_800A95A0
	.long lbl_800A95A0
	.long lbl_800A95A0
	.long lbl_800A95A0
	.long lbl_800A9554
	.long lbl_800A955C

# 0x8018B700 - 0x8018B710
.section .sdata, "wa"

glabel D_8018B700
	.long 0x00040102

glabel D_8018B704
	.long 0x00080102

glabel D_8018B708
	.long 0x000C0102
	.long 0x00000000
