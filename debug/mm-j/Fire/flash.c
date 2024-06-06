/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\flash.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x80097FC4 -> 0x800986E0
*/

#include "types.h"

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x7C2C0; // size = 0x10

// size = 0x10, address = 0x800FC050
struct _XL_OBJECTTYPE gClassFlash;

typedef struct __anon_0x7C3B3 {
    /* 0x0 */ void* pHost;
    /* 0x4 */ s32 flashCommand;
    /* 0x8 */ char* flashBuffer;
    /* 0xC */ s32 flashStatus;
} __anon_0x7C3B3; // size = 0x10

// Range: 0x8009859C -> 0x800986E0
s32 flashCopyFLASH(struct __anon_0x7C3B3* pFLASH, s32 nOffsetRAM, s32 nOffsetFLASH, s32 nSize) {
    // Parameters
    // struct __anon_0x7C3B3* pFLASH; // r30
    // s32 nOffsetRAM; // r4
    // s32 nOffsetFLASH; // r31
    // s32 nSize; // r1+0x14

    // Local variables
    void* pTarget; // r1+0x18
}

// Range: 0x80098488 -> 0x8009859C
s32 flashTransferFLASH(struct __anon_0x7C3B3* pFLASH, s32 nOffsetRAM, s32 nSize) {
    // Parameters
    // struct __anon_0x7C3B3* pFLASH; // r31
    // s32 nOffsetRAM; // r4
    // s32 nSize; // r1+0x14

    // Local variables
    void* pTarget; // r1+0x18
    s32 i; // r4
}

// Range: 0x80098480 -> 0x80098488
static s32 flashPut8() {}

// Range: 0x80098478 -> 0x80098480
static s32 flashPut16() {}

// Range: 0x800981A8 -> 0x80098478
static s32 flashPut32(struct __anon_0x7C3B3* pFLASH, s32* pData) {
    // Parameters
    // struct __anon_0x7C3B3* pFLASH; // r30
    // s32* pData; // r31

    // Local variables
    s32 i; // r1+0x8
    char buffer[128]; // r1+0x1C
}

// Range: 0x800981A0 -> 0x800981A8
static s32 flashPut64() {}

// Range: 0x80098198 -> 0x800981A0
static s32 flashGet8() {}

// Range: 0x80098190 -> 0x80098198
static s32 flashGet16() {}

// Range: 0x800980EC -> 0x80098190
static s32 flashGet32(struct __anon_0x7C3B3* pFLASH, s32* pData) {
    // Parameters
    // struct __anon_0x7C3B3* pFLASH; // r1+0x0
    // s32* pData; // r1+0x8
}

// Range: 0x800980E4 -> 0x800980EC
static s32 flashGet64() {}

// Range: 0x80097FC4 -> 0x800980E4
s32 flashEvent(struct __anon_0x7C3B3* pFLASH, s32 nEvent, void* pArgument) {
    // Parameters
    // struct __anon_0x7C3B3* pFLASH; // r30
    // s32 nEvent; // r1+0xC
    // void* pArgument; // r31
}
