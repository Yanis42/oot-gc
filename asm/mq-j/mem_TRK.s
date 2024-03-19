# mem_TRK.c
.include "macros.inc"

.section .init, "ax"

.balign 4

# 0x800033A8 - 0x800033CC

glabel TRK_memcpy
/* 0003A8 800033A8 3884FFFF */  subi      r4, r4, 0x1
/* 0003AC 800033AC 38C3FFFF */  subi      r6, r3, 0x1
/* 0003B0 800033B0 38A50001 */  addi      r5, r5, 0x1
/* 0003B4 800033B4 4800000C */  b         lbl_800033C0
lbl_800033B8:
/* 0003B8 800033B8 8C040001 */  lbzu      r0, 0x1(r4)
/* 0003BC 800033BC 9C060001 */  stbu      r0, 0x1(r6)
lbl_800033C0:
/* 0003C0 800033C0 34A5FFFF */  subic.    r5, r5, 0x1
/* 0003C4 800033C4 4082FFF4 */  bne       lbl_800033B8
/* 0003C8 800033C8 4E800020 */  blr
