glabel rspGet32
/* 06CB84 80072124 5480A53E */  rlwinm  r0, r4, 0x14, 0x14, 0x1f
/* 06CB88 80072128 2C000040 */  cmpwi   r0, 0x40
/* 06CB8C 8007212C 41820054 */  beq     lbl_80072180
/* 06CB90 80072130 4080001C */  bge     lbl_8007214C
/* 06CB94 80072134 2C000001 */  cmpwi   r0, 1
/* 06CB98 80072138 41820034 */  beq     lbl_8007216C
/* 06CB9C 8007213C 40800124 */  bge     lbl_80072260
/* 06CBA0 80072140 2C000000 */  cmpwi   r0, 0
/* 06CBA4 80072144 40800014 */  bge     lbl_80072158
/* 06CBA8 80072148 48000118 */  b       lbl_80072260
lbl_8007214C:
/* 06CBAC 8007214C 2C000080 */  cmpwi   r0, 0x80
/* 06CBB0 80072150 418200D0 */  beq     lbl_80072220
/* 06CBB4 80072154 4800010C */  b       lbl_80072260
lbl_80072158:
/* 06CBB8 80072158 806338EC */  lwz     r3, 0x38ec(r3)
/* 06CBBC 8007215C 5480053A */  rlwinm  r0, r4, 0, 0x14, 0x1d
/* 06CBC0 80072160 7C03002E */  lwzx    r0, r3, r0
/* 06CBC4 80072164 90050000 */  stw     r0, 0(r5)
/* 06CBC8 80072168 48000100 */  b       lbl_80072268
lbl_8007216C:
/* 06CBCC 8007216C 806338F0 */  lwz     r3, 0x38f0(r3)
/* 06CBD0 80072170 5480053A */  rlwinm  r0, r4, 0, 0x14, 0x1d
/* 06CBD4 80072174 7C03002E */  lwzx    r0, r3, r0
/* 06CBD8 80072178 90050000 */  stw     r0, 0(r5)
/* 06CBDC 8007217C 480000EC */  b       lbl_80072268
lbl_80072180:
/* 06CBE0 80072180 548006FE */  clrlwi  r0, r4, 0x1b
/* 06CBE4 80072184 2800001C */  cmplwi  r0, 0x1c
/* 06CBE8 80072188 41810090 */  bgt     lbl_80072218
/* 06CBEC 8007218C 3C80800F */  lis     r4, jtbl_800EE2A4@ha
/* 06CBF0 80072190 3884E2A4 */  addi    r4, r4, jtbl_800EE2A4@l
/* 06CBF4 80072194 5400103A */  slwi    r0, r0, 2
/* 06CBF8 80072198 7C04002E */  lwzx    r0, r4, r0
/* 06CBFC 8007219C 7C0903A6 */  mtctr   r0
/* 06CC00 800721A0 4E800420 */  bctr    
.global lbl_800721A4
lbl_800721A4:
/* 06CC04 800721A4 8003390C */  lwz     r0, 0x390c(r3)
/* 06CC08 800721A8 90050000 */  stw     r0, 0(r5)
/* 06CC0C 800721AC 480000BC */  b       lbl_80072268
.global lbl_800721B0
lbl_800721B0:
/* 06CC10 800721B0 80033914 */  lwz     r0, 0x3914(r3)
/* 06CC14 800721B4 90050000 */  stw     r0, 0(r5)
/* 06CC18 800721B8 480000B0 */  b       lbl_80072268
.global lbl_800721BC
lbl_800721BC:
/* 06CC1C 800721BC 80033900 */  lwz     r0, 0x3900(r3)
/* 06CC20 800721C0 90050000 */  stw     r0, 0(r5)
/* 06CC24 800721C4 480000A4 */  b       lbl_80072268
.global lbl_800721C8
lbl_800721C8:
/* 06CC28 800721C8 80033904 */  lwz     r0, 0x3904(r3)
/* 06CC2C 800721CC 90050000 */  stw     r0, 0(r5)
/* 06CC30 800721D0 48000098 */  b       lbl_80072268
.global lbl_800721D4
lbl_800721D4:
/* 06CC34 800721D4 800338F4 */  lwz     r0, 0x38f4(r3)
/* 06CC38 800721D8 5400043E */  clrlwi  r0, r0, 0x10
/* 06CC3C 800721DC 90050000 */  stw     r0, 0(r5)
/* 06CC40 800721E0 48000088 */  b       lbl_80072268
.global lbl_800721E4
lbl_800721E4:
/* 06CC44 800721E4 800338F8 */  lwz     r0, 0x38f8(r3)
/* 06CC48 800721E8 540007FE */  clrlwi  r0, r0, 0x1f
/* 06CC4C 800721EC 90050000 */  stw     r0, 0(r5)
/* 06CC50 800721F0 48000078 */  b       lbl_80072268
.global lbl_800721F4
lbl_800721F4:
/* 06CC54 800721F4 800338FC */  lwz     r0, 0x38fc(r3)
/* 06CC58 800721F8 540007FE */  clrlwi  r0, r0, 0x1f
/* 06CC5C 800721FC 90050000 */  stw     r0, 0(r5)
/* 06CC60 80072200 48000068 */  b       lbl_80072268
.global lbl_80072204
lbl_80072204:
/* 06CC64 80072204 38000001 */  li      r0, 1
/* 06CC68 80072208 90033908 */  stw     r0, 0x3908(r3)
/* 06CC6C 8007220C 38000000 */  li      r0, 0
/* 06CC70 80072210 90050000 */  stw     r0, 0(r5)
/* 06CC74 80072214 48000054 */  b       lbl_80072268
.global lbl_80072218
lbl_80072218:
/* 06CC78 80072218 38600000 */  li      r3, 0
/* 06CC7C 8007221C 4E800020 */  blr     
lbl_80072220:
/* 06CC80 80072220 5480073E */  clrlwi  r0, r4, 0x1c
/* 06CC84 80072224 2C000004 */  cmpwi   r0, 4
/* 06CC88 80072228 41820020 */  beq     lbl_80072248
/* 06CC8C 8007222C 4080002C */  bge     lbl_80072258
/* 06CC90 80072230 2C000000 */  cmpwi   r0, 0
/* 06CC94 80072234 41820008 */  beq     lbl_8007223C
/* 06CC98 80072238 48000020 */  b       lbl_80072258
lbl_8007223C:
/* 06CC9C 8007223C 800338DC */  lwz     r0, 0x38dc(r3)
/* 06CCA0 80072240 90050000 */  stw     r0, 0(r5)
/* 06CCA4 80072244 48000024 */  b       lbl_80072268
lbl_80072248:
/* 06CCA8 80072248 800338E4 */  lwz     r0, 0x38e4(r3)
/* 06CCAC 8007224C 5400063E */  clrlwi  r0, r0, 0x18
/* 06CCB0 80072250 90050000 */  stw     r0, 0(r5)
/* 06CCB4 80072254 48000014 */  b       lbl_80072268
lbl_80072258:
/* 06CCB8 80072258 38600000 */  li      r3, 0
/* 06CCBC 8007225C 4E800020 */  blr     
lbl_80072260:
/* 06CCC0 80072260 38600000 */  li      r3, 0
/* 06CCC4 80072264 4E800020 */  blr     
lbl_80072268:
/* 06CCC8 80072268 38600001 */  li      r3, 1
/* 06CCCC 8007226C 4E800020 */  blr     

.section .data

jtbl_800EE2A4:
    .word lbl_800721A4
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_800721B0
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_800721BC
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_800721C8
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_800721D4
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_800721E4
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_800721F4
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072218
    .word lbl_80072204
