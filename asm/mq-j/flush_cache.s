# flush_cache.c
.include "macros.inc"

.section .text, "ax"

.balign 4

# 0x800CA41C - 0x800CA454

glabel fn_800CA41C
/* 0C741C 800CA41C 3CA0FFFF */  lis       r5, 0xffff
/* 0C7420 800CA420 60A5FFF1 */  ori       r5, r5, 0xfff1
/* 0C7424 800CA424 7CA51838 */  and       r5, r5, r3
/* 0C7428 800CA428 7C651850 */  subf      r3, r5, r3
/* 0C742C 800CA42C 7C841A14 */  add       r4, r4, r3
lbl_800CA430:
/* 0C7430 800CA430 7C00286C */  dcbst     r0, r5
/* 0C7434 800CA434 7C0028AC */  dcbf      r0, r5
/* 0C7438 800CA438 7C0004AC */  sync
/* 0C743C 800CA43C 7C002FAC */  icbi      r0, r5
/* 0C7440 800CA440 30A50008 */  addic     r5, r5, 0x8
/* 0C7444 800CA444 3484FFF8 */  subic.    r4, r4, 0x8
/* 0C7448 800CA448 4080FFE8 */  bge       lbl_800CA430
/* 0C744C 800CA44C 4C00012C */  isync
/* 0C7450 800CA450 4E800020 */  blr
