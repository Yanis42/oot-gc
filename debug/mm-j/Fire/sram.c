/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\sram.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x800986E0 -> 0x80098A50
*/

#include "types.h"

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x7CAE3; // size = 0x10

// size = 0x10, address = 0x800FC060
struct _XL_OBJECTTYPE gClassSram;

typedef struct __anon_0x7CBD5 {
    /* 0x0 */ void* pHost;
} __anon_0x7CBD5; // size = 0x4

// Range: 0x800989D8 -> 0x80098A50
s32 sramCopySRAM(struct __anon_0x7CBD5* pSRAM, s32 nOffsetRAM, s32 nOffsetSRAM, s32 nSize) {
    // Parameters
    // struct __anon_0x7CBD5* pSRAM; // r1+0x8
    // s32 nOffsetRAM; // r4
    // s32 nOffsetSRAM; // r31
    // s32 nSize; // r1+0x14

    // Local variables
    void* pTarget; // r1+0x18
}

// Range: 0x80098960 -> 0x800989D8
s32 sramTransferSRAM(struct __anon_0x7CBD5* pSRAM, s32 nOffsetRAM, s32 nOffsetSRAM, s32 nSize) {
    // Parameters
    // struct __anon_0x7CBD5* pSRAM; // r1+0x8
    // s32 nOffsetRAM; // r4
    // s32 nOffsetSRAM; // r31
    // s32 nSize; // r1+0x14

    // Local variables
    void* pTarget; // r1+0x18
}

// Range: 0x80098930 -> 0x80098960
static s32 sramPut8(u32 nAddress, char* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // char* pData; // r5
}

// Range: 0x80098900 -> 0x80098930
static s32 sramPut16(u32 nAddress, s16* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // s16* pData; // r5
}

// Range: 0x800988D0 -> 0x80098900
static s32 sramPut32(u32 nAddress, s32* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // s32* pData; // r5
}

// Range: 0x800988A0 -> 0x800988D0
static s32 sramPut64(u32 nAddress, s64* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // s64* pData; // r5
}

// Range: 0x80098870 -> 0x800988A0
static s32 sramGet8(u32 nAddress, char* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // char* pData; // r5
}

// Range: 0x80098840 -> 0x80098870
static s32 sramGet16(u32 nAddress, s16* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // s16* pData; // r5
}

// Range: 0x80098810 -> 0x80098840
static s32 sramGet32(u32 nAddress, s32* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // s32* pData; // r5
}

// Range: 0x800987E0 -> 0x80098810
static s32 sramGet64(u32 nAddress, s64* pData) {
    // Parameters
    // u32 nAddress; // r1+0xC
    // s64* pData; // r5
}

// Range: 0x800986E0 -> 0x800987E0
s32 sramEvent(struct __anon_0x7CBD5* pSram, s32 nEvent, void* pArgument) {
    // Parameters
    // struct __anon_0x7CBD5* pSram; // r30
    // s32 nEvent; // r1+0xC
    // void* pArgument; // r31
}
