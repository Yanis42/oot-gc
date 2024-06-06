/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\_cpuDecodePPC2.c
    Producer: MW EABI PPC C-Compiler
    Language: C89
    Code range: 0x8006D59C -> 0x8007109C
*/

#include "types.h"

// Range: 0x80070EB4 -> 0x8007109C
static s32 cpuCompile_DSLLV(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r11
    s32 nSize; // r1+0x8
}

// Range: 0x80070CCC -> 0x80070EB4
static s32 cpuCompile_DSRLV(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r11
    s32 nSize; // r1+0x8
}

// Range: 0x80070AC8 -> 0x80070CCC
static s32 cpuCompile_DSRAV(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r1+0x8
    s32 nSize; // r1+0x8
}

// Range: 0x800705C4 -> 0x80070AC8
static s32 cpuCompile_DMULT(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r31
    // s32* addressGCN; // r27

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r5
    s32 nSize; // r1+0x8
}

// Range: 0x800702B0 -> 0x800705C4
static s32 cpuCompile_DMULTU(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r31
    // s32* addressGCN; // r30

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Range: 0x8006FCF4 -> 0x800702B0
static s32 cpuCompile_DDIV(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r16

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r23
    s32 nSize; // r1+0x8
}

// Range: 0x8006F8D8 -> 0x8006FCF4
static s32 cpuCompile_DDIVU(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r31
    // s32* addressGCN; // r24

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r9
    s32 nSize; // r1+0x8
}

// Erased
static s32 cpuCompile_DADD(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Erased
static s32 cpuCompile_DADDU(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Erased
static s32 cpuCompile_DSUB(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Erased
static s32 cpuCompile_DSUBU(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Range: 0x8006F598 -> 0x8006F8D8
static s32 cpuCompile_S_SQRT(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r19
    // s32* addressGCN; // r18

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r29
    s32 nSize; // r1+0x8
}

// Range: 0x8006F164 -> 0x8006F598
static s32 cpuCompile_D_SQRT(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r22
    // s32* addressGCN; // r21

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r21
    s32 nSize; // r1+0x8
}

// Range: 0x8006EFB4 -> 0x8006F164
static s32 cpuCompile_W_CVT_SD(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r31
    // s32* addressGCN; // r30

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r30
    s32 nSize; // r1+0x8
}

// Range: 0x8006EA34 -> 0x8006EFB4
static s32 cpuCompile_L_CVT_SD(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r5
    s32 nSize; // r1+0x8
}

// Range: 0x8006E878 -> 0x8006EA34
static s32 cpuCompile_CEIL_W(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Range: 0x8006E6BC -> 0x8006E878
static s32 cpuCompile_FLOOR_W(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Erased
static s32 cpuCompile_ROUND_W(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Erased
static s32 cpuCompile_TRUNC_W(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Range: 0x8006E550 -> 0x8006E6BC
static s32 cpuCompile_LB(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r9
    s32 nSize; // r1+0x8
}

// Range: 0x8006E3E4 -> 0x8006E550
static s32 cpuCompile_LH(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r9
    s32 nSize; // r1+0x8
}

// Range: 0x8006E28C -> 0x8006E3E4
static s32 cpuCompile_LW(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r5
    s32 nSize; // r1+0x8
}

// Range: 0x8006E134 -> 0x8006E28C
static s32 cpuCompile_LBU(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r5
    s32 nSize; // r1+0x8
}

// Range: 0x8006DFDC -> 0x8006E134
static s32 cpuCompile_LHU(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r5
    s32 nSize; // r1+0x8
}

// Range: 0x8006DE80 -> 0x8006DFDC
static s32 cpuCompile_SB(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Range: 0x8006DD24 -> 0x8006DE80
static s32 cpuCompile_SH(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Range: 0x8006DBC8 -> 0x8006DD24
static s32 cpuCompile_SW(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}

// Range: 0x8006DA40 -> 0x8006DBC8
static s32 cpuCompile_LDC(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r5
    s32 nSize; // r1+0x8
}

// Range: 0x8006D8B8 -> 0x8006DA40
static s32 cpuCompile_SDC(struct _CPU* pCPU, s32* addressGCN) {
    // Parameters
    // struct _CPU* pCPU; // r30
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r5
    s32 nSize; // r1+0x8
}

// Range: 0x8006D728 -> 0x8006D8B8
static s32 cpuCompile_LWL(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r9
    s32 nSize; // r1+0x8
}

// Range: 0x8006D59C -> 0x8006D728
static s32 cpuCompile_LWR(s32* addressGCN) {
    // Parameters
    // s32* addressGCN; // r31

    // Local variables
    s32* compile; // r1+0x10
    s32 count; // r7
    s32 nSize; // r1+0x8
}
