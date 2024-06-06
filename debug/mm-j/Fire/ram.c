/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\ram.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x80071FCC -> 0x800725E0
*/

#include "types.h"

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x50AA6; // size = 0x10

// size = 0x10, address = 0x800F9F40
struct _XL_OBJECTTYPE gClassRAM;

typedef struct __anon_0x50B97 {
    /* 0x0 */ void* pHost;
    /* 0x4 */ void* pBuffer;
    /* 0x8 */ u32 nSize;
} __anon_0x50B97; // size = 0xC

// Range: 0x800725D8 -> 0x800725E0
static s32 ramPutControl8() {}

// Range: 0x800725D0 -> 0x800725D8
static s32 ramPutControl16() {}

// Range: 0x8007259C -> 0x800725D0
static s32 ramPutControl32(u32 nAddress) {
    // Parameters
    // u32 nAddress; // r1+0x4
}

// Range: 0x80072594 -> 0x8007259C
static s32 ramPutControl64() {}

// Range: 0x8007258C -> 0x80072594
static s32 ramGetControl8() {}

// Range: 0x80072584 -> 0x8007258C
static s32 ramGetControl16() {}

// Range: 0x80072550 -> 0x80072584
static s32 ramGetControl32(u32 nAddress) {
    // Parameters
    // u32 nAddress; // r1+0x4
}

// Range: 0x80072548 -> 0x80072550
static s32 ramGetControl64() {}

// Range: 0x80072540 -> 0x80072548
static s32 ramPutRI8() {}

// Range: 0x80072538 -> 0x80072540
static s32 ramPutRI16() {}

// Range: 0x80072504 -> 0x80072538
static s32 ramPutRI32(u32 nAddress) {
    // Parameters
    // u32 nAddress; // r1+0x4
}

// Range: 0x800724FC -> 0x80072504
static s32 ramPutRI64() {}

// Range: 0x800724F4 -> 0x800724FC
static s32 ramGetRI8() {}

// Range: 0x800724EC -> 0x800724F4
static s32 ramGetRI16() {}

// Range: 0x800724B8 -> 0x800724EC
static s32 ramGetRI32(u32 nAddress) {
    // Parameters
    // u32 nAddress; // r1+0x4
}

// Range: 0x800724B0 -> 0x800724B8
static s32 ramGetRI64() {}

// Range: 0x8007248C -> 0x800724B0
static s32 ramPut8(struct __anon_0x50B97* pRAM, u32 nAddress, char* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r6
    // char* pData; // r1+0x8
}

// Range: 0x80072464 -> 0x8007248C
static s32 ramPut16(struct __anon_0x50B97* pRAM, u32 nAddress, s16* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r6
    // s16* pData; // r1+0x8
}

// Range: 0x8007243C -> 0x80072464
static s32 ramPut32(struct __anon_0x50B97* pRAM, u32 nAddress, s32* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r6
    // s32* pData; // r1+0x8
}

// Range: 0x80072408 -> 0x8007243C
static s32 ramPut64(struct __anon_0x50B97* pRAM, u32 nAddress, s64* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r4
    // s64* pData; // r1+0x8
}

// Range: 0x800723D8 -> 0x80072408
static s32 ramGet8(struct __anon_0x50B97* pRAM, u32 nAddress, char* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r4
    // char* pData; // r1+0x8
}

// Range: 0x800723A4 -> 0x800723D8
static s32 ramGet16(struct __anon_0x50B97* pRAM, u32 nAddress, s16* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r4
    // s16* pData; // r1+0x8
}

// Range: 0x80072370 -> 0x800723A4
static s32 ramGet32(struct __anon_0x50B97* pRAM, u32 nAddress, s32* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r4
    // s32* pData; // r1+0x8
}

// Range: 0x8007232C -> 0x80072370
static s32 ramGet64(struct __anon_0x50B97* pRAM, u32 nAddress, s64* pData) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32 nAddress; // r4
    // s64* pData; // r1+0x8
}

// Range: 0x800722D4 -> 0x8007232C
s32 ramGetBuffer(struct __anon_0x50B97* pRAM, void* ppRAM, u32 nOffset, u32* pnSize) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // void* ppRAM; // r1+0x4
    // u32 nOffset; // r5
    // u32* pnSize; // r1+0xC
}

// Range: 0x8007228C -> 0x800722D4
s32 ramWipe(struct __anon_0x50B97* pRAM) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r3
}

// Range: 0x8007221C -> 0x8007228C
s32 ramSetSize(struct __anon_0x50B97* pRAM, u32 nSize) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r30
    // u32 nSize; // r31
}

// Range: 0x80072204 -> 0x8007221C
s32 ramGetSize(struct __anon_0x50B97* pRAM, u32* pnSize) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r1+0x0
    // u32* pnSize; // r1+0x4
}

// Range: 0x80071FCC -> 0x80072204
s32 ramEvent(struct __anon_0x50B97* pRAM, s32 nEvent, void* pArgument) {
    // Parameters
    // struct __anon_0x50B97* pRAM; // r30
    // s32 nEvent; // r1+0xC
    // void* pArgument; // r31
}
