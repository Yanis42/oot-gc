# __ppc_eabi_init.c
.include "macros.inc"

.section .init, "ax"

.balign 4

# 0x80003354 - 0x800033A8

glabel __init_hardware
/* 000354 80003354 7C0000A6 */  mfmsr     r0
/* 000358 80003358 60002000 */  ori       r0, r0, 0x2000
/* 00035C 8000335C 7C000124 */  mtmsr     r0
/* 000360 80003360 7FE802A6 */  mflr      r31
/* 000364 80003364 480988D5 */  bl        __OSPSInit
/* 000368 80003368 48099E79 */  bl        __OSCacheInit
/* 00036C 8000336C 7FE803A6 */  mtlr      r31
/* 000370 80003370 4E800020 */  blr

glabel __flush_cache
/* 000374 80003374 3CA0FFFF */  lis       r5, 0xffff
/* 000378 80003378 60A5FFF1 */  ori       r5, r5, 0xfff1
/* 00037C 8000337C 7CA51838 */  and       r5, r5, r3
/* 000380 80003380 7C651850 */  subf      r3, r5, r3
/* 000384 80003384 7C841A14 */  add       r4, r4, r3
lbl_80003388:
/* 000388 80003388 7C00286C */  dcbst     r0, r5
/* 00038C 8000338C 7C0004AC */  sync
/* 000390 80003390 7C002FAC */  icbi      r0, r5
/* 000394 80003394 30A50008 */  addic     r5, r5, 0x8
/* 000398 80003398 3484FFF8 */  subic.    r4, r4, 0x8
/* 00039C 8000339C 4080FFEC */  bge       lbl_80003388
/* 0003A0 800033A0 4C00012C */  isync
/* 0003A4 800033A4 4E800020 */  blr

# 0x800A1904 - 0x800A1998

glabel __init_user
/* 09E904 800A1904 7C0802A6 */  mflr      r0
/* 09E908 800A1908 90010004 */  stw       r0, 0x4(r1)
/* 09E90C 800A190C 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09E910 800A1910 48000015 */  bl        __init_cpp
/* 09E914 800A1914 8001000C */  lwz       r0, 0xc(r1)
/* 09E918 800A1918 38210008 */  addi      r1, r1, 0x8
/* 09E91C 800A191C 7C0803A6 */  mtlr      r0
/* 09E920 800A1920 4E800020 */  blr

__init_cpp:
/* 09E924 800A1924 7C0802A6 */  mflr      r0
/* 09E928 800A1928 90010004 */  stw       r0, 0x4(r1)
/* 09E92C 800A192C 9421FFF0 */  stwu      r1, -0x10(r1)
/* 09E930 800A1930 93E1000C */  stw       r31, 0xc(r1)
/* 09E934 800A1934 3C60800D */  lis       r3, _ctors@ha
/* 09E938 800A1938 38031B80 */  addi      r0, r3, _ctors@l
/* 09E93C 800A193C 7C1F0378 */  mr        r31, r0
/* 09E940 800A1940 48000004 */  b         lbl_800A1944
lbl_800A1944:
/* 09E944 800A1944 48000004 */  b         lbl_800A1948
lbl_800A1948:
/* 09E948 800A1948 48000010 */  b         lbl_800A1958
lbl_800A194C:
/* 09E94C 800A194C 7D8803A6 */  mtlr      r12
/* 09E950 800A1950 4E800021 */  blrl
/* 09E954 800A1954 3BFF0004 */  addi      r31, r31, 0x4
lbl_800A1958:
/* 09E958 800A1958 819F0000 */  lwz       r12, 0x0(r31)
/* 09E95C 800A195C 280C0000 */  cmplwi    r12, 0x0
/* 09E960 800A1960 4082FFEC */  bne       lbl_800A194C
/* 09E964 800A1964 80010014 */  lwz       r0, 0x14(r1)
/* 09E968 800A1968 83E1000C */  lwz       r31, 0xc(r1)
/* 09E96C 800A196C 38210010 */  addi      r1, r1, 0x10
/* 09E970 800A1970 7C0803A6 */  mtlr      r0
/* 09E974 800A1974 4E800020 */  blr

glabel _ExitProcess
/* 09E978 800A1978 7C0802A6 */  mflr      r0
/* 09E97C 800A197C 90010004 */  stw       r0, 0x4(r1)
/* 09E980 800A1980 9421FFF8 */  stwu      r1, -0x8(r1)
/* 09E984 800A1984 4BFF9941 */  bl        PPCHalt
/* 09E988 800A1988 8001000C */  lwz       r0, 0xc(r1)
/* 09E98C 800A198C 38210008 */  addi      r1, r1, 0x8
/* 09E990 800A1990 7C0803A6 */  mtlr      r0
/* 09E994 800A1994 4E800020 */  blr
