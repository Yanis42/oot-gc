# CARDCreate.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800BEF54 - 0x800BF2A4

glabel CreateCallbackFat
/* 0BBF54 800BEF54 7C0802A6 */  mflr      r0
/* 0BBF58 800BEF58 90010004 */  stw       r0, 0x4(r1)
/* 0BBF5C 800BEF5C 9421FFD8 */  stwu      r1, -0x28(r1)
/* 0BBF60 800BEF60 BF610014 */  stmw      r27, 0x14(r1)
/* 0BBF64 800BEF64 3B830000 */  addi      r28, r3, 0x0
/* 0BBF68 800BEF68 3C608019 */  lis       r3, D_80188A70@ha
/* 0BBF6C 800BEF6C 1CBC0110 */  mulli     r5, r28, 0x110
/* 0BBF70 800BEF70 38038A70 */  addi      r0, r3, D_80188A70@l
/* 0BBF74 800BEF74 7FE02A14 */  add       r31, r0, r5
/* 0BBF78 800BEF78 83BF00D0 */  lwz       r29, 0xd0(r31)
/* 0BBF7C 800BEF7C 3B600000 */  li        r27, 0x0
/* 0BBF80 800BEF80 7C9E2379 */  mr.       r30, r4
/* 0BBF84 800BEF84 937F00D0 */  stw       r27, 0xd0(r31)
/* 0BBF88 800BEF88 418000C0 */  blt       lbl_800BF048
/* 0BBF8C 800BEF8C 7FE3FB78 */  mr        r3, r31
/* 0BBF90 800BEF90 4BFFD701 */  bl        __CARDGetDirBlock
/* 0BBF94 800BEF94 A01F00BC */  lhz       r0, 0xbc(r31)
/* 0BBF98 800BEF98 38A00004 */  li        r5, 0x4
/* 0BBF9C 800BEF9C 809F010C */  lwz       r4, 0x10c(r31)
/* 0BBFA0 800BEFA0 54003032 */  slwi      r0, r0, 6
/* 0BBFA4 800BEFA4 7FC30214 */  add       r30, r3, r0
/* 0BBFA8 800BEFA8 387E0000 */  addi      r3, r30, 0x0
/* 0BBFAC 800BEFAC 4BF46469 */  bl        memcpy
/* 0BBFB0 800BEFB0 809F010C */  lwz       r4, 0x10c(r31)
/* 0BBFB4 800BEFB4 387E0004 */  addi      r3, r30, 0x4
/* 0BBFB8 800BEFB8 38A00002 */  li        r5, 0x2
/* 0BBFBC 800BEFBC 38840004 */  addi      r4, r4, 0x4
/* 0BBFC0 800BEFC0 4BF46455 */  bl        memcpy
/* 0BBFC4 800BEFC4 38000004 */  li        r0, 0x4
/* 0BBFC8 800BEFC8 981E0034 */  stb       r0, 0x34(r30)
/* 0BBFCC 800BEFCC 3800FFFF */  li        r0, -0x1
/* 0BBFD0 800BEFD0 3C608000 */  lis       r3, 0x8000
/* 0BBFD4 800BEFD4 9B7E0035 */  stb       r27, 0x35(r30)
/* 0BBFD8 800BEFD8 A09F00BE */  lhz       r4, 0xbe(r31)
/* 0BBFDC 800BEFDC B09E0036 */  sth       r4, 0x36(r30)
/* 0BBFE0 800BEFE0 9B7E0007 */  stb       r27, 0x7(r30)
/* 0BBFE4 800BEFE4 901E002C */  stw       r0, 0x2c(r30)
/* 0BBFE8 800BEFE8 B37E0030 */  sth       r27, 0x30(r30)
/* 0BBFEC 800BEFEC B37E0032 */  sth       r27, 0x32(r30)
/* 0BBFF0 800BEFF0 901E003C */  stw       r0, 0x3c(r30)
/* 0BBFF4 800BEFF4 A01E0032 */  lhz       r0, 0x32(r30)
/* 0BBFF8 800BEFF8 5400003A */  clrrwi    r0, r0, 2
/* 0BBFFC 800BEFFC 60000001 */  ori       r0, r0, 0x1
/* 0BC000 800BF000 B01E0032 */  sth       r0, 0x32(r30)
/* 0BC004 800BF004 809F00C0 */  lwz       r4, 0xc0(r31)
/* 0BC008 800BF008 93640008 */  stw       r27, 0x8(r4)
/* 0BC00C 800BF00C A01E0036 */  lhz       r0, 0x36(r30)
/* 0BC010 800BF010 809F00C0 */  lwz       r4, 0xc0(r31)
/* 0BC014 800BF014 B0040010 */  sth       r0, 0x10(r4)
/* 0BC018 800BF018 800300F8 */  lwz       r0, 0xf8(r3)
/* 0BC01C 800BF01C 541BF0BE */  srwi      r27, r0, 2
/* 0BC020 800BF020 4BFE24C1 */  bl        OSGetTime
/* 0BC024 800BF024 38DB0000 */  addi      r6, r27, 0x0
/* 0BC028 800BF028 38A00000 */  li        r5, 0x0
/* 0BC02C 800BF02C 4800D5C9 */  bl        __div2i
/* 0BC030 800BF030 909E0028 */  stw       r4, 0x28(r30)
/* 0BC034 800BF034 387C0000 */  addi      r3, r28, 0x0
/* 0BC038 800BF038 389D0000 */  addi      r4, r29, 0x0
/* 0BC03C 800BF03C 4BFFD7F5 */  bl        __CARDUpdateDir
/* 0BC040 800BF040 7C7E1B79 */  mr.       r30, r3
/* 0BC044 800BF044 4080002C */  bge       lbl_800BF070
lbl_800BF048:
/* 0BC048 800BF048 387F0000 */  addi      r3, r31, 0x0
/* 0BC04C 800BF04C 389E0000 */  addi      r4, r30, 0x0
/* 0BC050 800BF050 4BFFBA79 */  bl        __CARDPutControlBlock
/* 0BC054 800BF054 281D0000 */  cmplwi    r29, 0x0
/* 0BC058 800BF058 41820018 */  beq       lbl_800BF070
/* 0BC05C 800BF05C 399D0000 */  addi      r12, r29, 0x0
/* 0BC060 800BF060 7D8803A6 */  mtlr      r12
/* 0BC064 800BF064 387C0000 */  addi      r3, r28, 0x0
/* 0BC068 800BF068 389E0000 */  addi      r4, r30, 0x0
/* 0BC06C 800BF06C 4E800021 */  blrl
lbl_800BF070:
/* 0BC070 800BF070 BB610014 */  lmw       r27, 0x14(r1)
/* 0BC074 800BF074 8001002C */  lwz       r0, 0x2c(r1)
/* 0BC078 800BF078 38210028 */  addi      r1, r1, 0x28
/* 0BC07C 800BF07C 7C0803A6 */  mtlr      r0
/* 0BC080 800BF080 4E800020 */  blr

glabel CARDCreateAsync
/* 0BC084 800BF084 7C0802A6 */  mflr      r0
/* 0BC088 800BF088 90010004 */  stw       r0, 0x4(r1)
/* 0BC08C 800BF08C 9421FFB8 */  stwu      r1, -0x48(r1)
/* 0BC090 800BF090 BEE10024 */  stmw      r23, 0x24(r1)
/* 0BC094 800BF094 3B440000 */  addi      r26, r4, 0x0
/* 0BC098 800BF098 3B230000 */  addi      r25, r3, 0x0
/* 0BC09C 800BF09C 3B650000 */  addi      r27, r5, 0x0
/* 0BC0A0 800BF0A0 3B860000 */  addi      r28, r6, 0x0
/* 0BC0A4 800BF0A4 3BA70000 */  addi      r29, r7, 0x0
/* 0BC0A8 800BF0A8 387A0000 */  addi      r3, r26, 0x0
/* 0BC0AC 800BF0AC 48010589 */  bl        strlen
/* 0BC0B0 800BF0B0 28030020 */  cmplwi    r3, 0x20
/* 0BC0B4 800BF0B4 4081000C */  ble       lbl_800BF0C0
/* 0BC0B8 800BF0B8 3860FFF4 */  li        r3, -0xc
/* 0BC0BC 800BF0BC 480001D4 */  b         lbl_800BF290
lbl_800BF0C0:
/* 0BC0C0 800BF0C0 38790000 */  addi      r3, r25, 0x0
/* 0BC0C4 800BF0C4 3881001C */  addi      r4, r1, 0x1c
/* 0BC0C8 800BF0C8 4BFFB949 */  bl        __CARDGetControlBlock
/* 0BC0CC 800BF0CC 2C030000 */  cmpwi     r3, 0x0
/* 0BC0D0 800BF0D0 40800008 */  bge       lbl_800BF0D8
/* 0BC0D4 800BF0D4 480001BC */  b         lbl_800BF290
lbl_800BF0D8:
/* 0BC0D8 800BF0D8 281B0000 */  cmplwi    r27, 0x0
/* 0BC0DC 800BF0DC 4182001C */  beq       lbl_800BF0F8
/* 0BC0E0 800BF0E0 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC0E4 800BF0E4 8083000C */  lwz       r4, 0xc(r3)
/* 0BC0E8 800BF0E8 7C1B2396 */  divwu     r0, r27, r4
/* 0BC0EC 800BF0EC 7C0021D6 */  mullw     r0, r0, r4
/* 0BC0F0 800BF0F0 7C00D851 */  subf.     r0, r0, r27
/* 0BC0F4 800BF0F4 4182000C */  beq       lbl_800BF100
lbl_800BF0F8:
/* 0BC0F8 800BF0F8 3860FF80 */  li        r3, -0x80
/* 0BC0FC 800BF0FC 48000194 */  b         lbl_800BF290
lbl_800BF100:
/* 0BC100 800BF100 3C800001 */  lis       r4, 0x1
/* 0BC104 800BF104 3BC4FFFF */  subi      r30, r4, 0x1
/* 0BC108 800BF108 4BFFD589 */  bl        __CARDGetDirBlock
/* 0BC10C 800BF10C 3BE30000 */  addi      r31, r3, 0x0
/* 0BC110 800BF110 3B1F0000 */  addi      r24, r31, 0x0
/* 0BC114 800BF114 3AE00000 */  li        r23, 0x0
/* 0BC118 800BF118 4800008C */  b         lbl_800BF1A4
lbl_800BF11C:
/* 0BC11C 800BF11C 88180000 */  lbz       r0, 0x0(r24)
/* 0BC120 800BF120 280000FF */  cmplwi    r0, 0xff
/* 0BC124 800BF124 40820018 */  bne       lbl_800BF13C
/* 0BC128 800BF128 57C0043E */  clrlwi    r0, r30, 16
/* 0BC12C 800BF12C 2800FFFF */  cmplwi    r0, 0xffff
/* 0BC130 800BF130 4082006C */  bne       lbl_800BF19C
/* 0BC134 800BF134 7EFEBB78 */  mr        r30, r23
/* 0BC138 800BF138 48000064 */  b         lbl_800BF19C
lbl_800BF13C:
/* 0BC13C 800BF13C 8081001C */  lwz       r4, 0x1c(r1)
/* 0BC140 800BF140 38780000 */  addi      r3, r24, 0x0
/* 0BC144 800BF144 38A00004 */  li        r5, 0x4
/* 0BC148 800BF148 8084010C */  lwz       r4, 0x10c(r4)
/* 0BC14C 800BF14C 4800E39D */  bl        memcmp
/* 0BC150 800BF150 2C030000 */  cmpwi     r3, 0x0
/* 0BC154 800BF154 40820048 */  bne       lbl_800BF19C
/* 0BC158 800BF158 8081001C */  lwz       r4, 0x1c(r1)
/* 0BC15C 800BF15C 38780004 */  addi      r3, r24, 0x4
/* 0BC160 800BF160 38A00002 */  li        r5, 0x2
/* 0BC164 800BF164 8084010C */  lwz       r4, 0x10c(r4)
/* 0BC168 800BF168 38840004 */  addi      r4, r4, 0x4
/* 0BC16C 800BF16C 4800E37D */  bl        memcmp
/* 0BC170 800BF170 2C030000 */  cmpwi     r3, 0x0
/* 0BC174 800BF174 40820028 */  bne       lbl_800BF19C
/* 0BC178 800BF178 38780000 */  addi      r3, r24, 0x0
/* 0BC17C 800BF17C 389A0000 */  addi      r4, r26, 0x0
/* 0BC180 800BF180 4BFFF981 */  bl        fn_800BEB00
/* 0BC184 800BF184 2C030000 */  cmpwi     r3, 0x0
/* 0BC188 800BF188 41820014 */  beq       lbl_800BF19C
/* 0BC18C 800BF18C 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC190 800BF190 3880FFF9 */  li        r4, -0x7
/* 0BC194 800BF194 4BFFB935 */  bl        __CARDPutControlBlock
/* 0BC198 800BF198 480000F8 */  b         lbl_800BF290
lbl_800BF19C:
/* 0BC19C 800BF19C 3B180040 */  addi      r24, r24, 0x40
/* 0BC1A0 800BF1A0 3AF70001 */  addi      r23, r23, 0x1
lbl_800BF1A4:
/* 0BC1A4 800BF1A4 56E0043E */  clrlwi    r0, r23, 16
/* 0BC1A8 800BF1A8 2800007F */  cmplwi    r0, 0x7f
/* 0BC1AC 800BF1AC 4180FF70 */  blt       lbl_800BF11C
/* 0BC1B0 800BF1B0 57C0043E */  clrlwi    r0, r30, 16
/* 0BC1B4 800BF1B4 2800FFFF */  cmplwi    r0, 0xffff
/* 0BC1B8 800BF1B8 40820014 */  bne       lbl_800BF1CC
/* 0BC1BC 800BF1BC 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC1C0 800BF1C0 3880FFF8 */  li        r4, -0x8
/* 0BC1C4 800BF1C4 4BFFB905 */  bl        __CARDPutControlBlock
/* 0BC1C8 800BF1C8 480000C8 */  b         lbl_800BF290
lbl_800BF1CC:
/* 0BC1CC 800BF1CC 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC1D0 800BF1D0 4BFFD0BD */  bl        __CARDGetFatBlock
/* 0BC1D4 800BF1D4 8081001C */  lwz       r4, 0x1c(r1)
/* 0BC1D8 800BF1D8 A0030006 */  lhz       r0, 0x6(r3)
/* 0BC1DC 800BF1DC 8064000C */  lwz       r3, 0xc(r4)
/* 0BC1E0 800BF1E0 7C0301D6 */  mullw     r0, r3, r0
/* 0BC1E4 800BF1E4 7C00D840 */  cmplw     r0, r27
/* 0BC1E8 800BF1E8 40800014 */  bge       lbl_800BF1FC
/* 0BC1EC 800BF1EC 38640000 */  addi      r3, r4, 0x0
/* 0BC1F0 800BF1F0 3880FFF7 */  li        r4, -0x9
/* 0BC1F4 800BF1F4 4BFFB8D5 */  bl        __CARDPutControlBlock
/* 0BC1F8 800BF1F8 48000098 */  b         lbl_800BF290
lbl_800BF1FC:
/* 0BC1FC 800BF1FC 281D0000 */  cmplwi    r29, 0x0
/* 0BC200 800BF200 4182000C */  beq       lbl_800BF20C
/* 0BC204 800BF204 7FA0EB78 */  mr        r0, r29
/* 0BC208 800BF208 4800000C */  b         lbl_800BF214
lbl_800BF20C:
/* 0BC20C 800BF20C 3C60800C */  lis       r3, __CARDDefaultApiCallback@ha
/* 0BC210 800BF210 38039AB0 */  addi      r0, r3, __CARDDefaultApiCallback@l
lbl_800BF214:
/* 0BC214 800BF214 900400D0 */  stw       r0, 0xd0(r4)
/* 0BC218 800BF218 57C032B2 */  clrlslwi  r0, r30, 16, 6
/* 0BC21C 800BF21C 7CFF0214 */  add       r7, r31, r0
/* 0BC220 800BF220 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC224 800BF224 57DD043E */  clrlwi    r29, r30, 16
/* 0BC228 800BF228 389A0000 */  addi      r4, r26, 0x0
/* 0BC22C 800BF22C B3C300BC */  sth       r30, 0xbc(r3)
/* 0BC230 800BF230 38670008 */  addi      r3, r7, 0x8
/* 0BC234 800BF234 38A00020 */  li        r5, 0x20
/* 0BC238 800BF238 80C1001C */  lwz       r6, 0x1c(r1)
/* 0BC23C 800BF23C 8006000C */  lwz       r0, 0xc(r6)
/* 0BC240 800BF240 7C1B0396 */  divwu     r0, r27, r0
/* 0BC244 800BF244 B0070038 */  sth       r0, 0x38(r7)
/* 0BC248 800BF248 480102F5 */  bl        strncpy
/* 0BC24C 800BF24C 8081001C */  lwz       r4, 0x1c(r1)
/* 0BC250 800BF250 3C60800C */  lis       r3, CreateCallbackFat@ha
/* 0BC254 800BF254 38A3EF54 */  addi      r5, r3, CreateCallbackFat@l
/* 0BC258 800BF258 938400C0 */  stw       r28, 0xc0(r4)
/* 0BC25C 800BF25C 7F23CB78 */  mr        r3, r25
/* 0BC260 800BF260 933C0000 */  stw       r25, 0x0(r28)
/* 0BC264 800BF264 93BC0004 */  stw       r29, 0x4(r28)
/* 0BC268 800BF268 8081001C */  lwz       r4, 0x1c(r1)
/* 0BC26C 800BF26C 8004000C */  lwz       r0, 0xc(r4)
/* 0BC270 800BF270 7C9B0396 */  divwu     r4, r27, r0
/* 0BC274 800BF274 4BFFD1BD */  bl        __CARDAllocBlock
/* 0BC278 800BF278 7C641B79 */  mr.       r4, r3
/* 0BC27C 800BF27C 40800010 */  bge       lbl_800BF28C
/* 0BC280 800BF280 8061001C */  lwz       r3, 0x1c(r1)
/* 0BC284 800BF284 4BFFB845 */  bl        __CARDPutControlBlock
/* 0BC288 800BF288 48000008 */  b         lbl_800BF290
lbl_800BF28C:
/* 0BC28C 800BF28C 7C832378 */  mr        r3, r4
lbl_800BF290:
/* 0BC290 800BF290 BAE10024 */  lmw       r23, 0x24(r1)
/* 0BC294 800BF294 8001004C */  lwz       r0, 0x4c(r1)
/* 0BC298 800BF298 38210048 */  addi      r1, r1, 0x48
/* 0BC29C 800BF29C 7C0803A6 */  mtlr      r0
/* 0BC2A0 800BF2A0 4E800020 */  blr
