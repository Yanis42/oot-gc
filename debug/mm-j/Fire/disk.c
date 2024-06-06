/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\disk.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x80097D30 -> 0x80097FC4
*/

#include "types.h"

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x7BB63; // size = 0x10

// size = 0x10, address = 0x800FC040
struct _XL_OBJECTTYPE gClassDisk;

typedef struct __anon_0x7BC55 {
    /* 0x0 */ void* pHost;
} __anon_0x7BC55; // size = 0x4

// Range: 0x80097FBC -> 0x80097FC4
static s32 diskPutROM8() {}

// Range: 0x80097FB4 -> 0x80097FBC
static s32 diskPutROM16() {}

// Range: 0x80097FAC -> 0x80097FB4
static s32 diskPutROM32() {}

// Range: 0x80097FA4 -> 0x80097FAC
static s32 diskPutROM64() {}

// Range: 0x80097F94 -> 0x80097FA4
static s32 diskGetROM8(char* pData) {
    // Parameters
    // char* pData; // r1+0x8
}

// Range: 0x80097F84 -> 0x80097F94
static s32 diskGetROM16(s16* pData) {
    // Parameters
    // s16* pData; // r1+0x8
}

// Range: 0x80097F74 -> 0x80097F84
static s32 diskGetROM32(s32* pData) {
    // Parameters
    // s32* pData; // r1+0x8
}

// Range: 0x80097F60 -> 0x80097F74
static s32 diskGetROM64(s64* pData) {
    // Parameters
    // s64* pData; // r1+0x8
}

// Range: 0x80097F58 -> 0x80097F60
static s32 diskPutDrive8() {}

// Range: 0x80097F50 -> 0x80097F58
static s32 diskPutDrive16() {}

// Range: 0x80097F24 -> 0x80097F50
static s32 diskPutDrive32(u32 nAddress) {
    // Parameters
    // u32 nAddress; // r1+0x4
}

// Range: 0x80097F1C -> 0x80097F24
static s32 diskPutDrive64() {}

// Range: 0x80097F14 -> 0x80097F1C
static s32 diskGetDrive8() {}

// Range: 0x80097F0C -> 0x80097F14
static s32 diskGetDrive16() {}

// Range: 0x80097ED4 -> 0x80097F0C
static s32 diskGetDrive32(u32 nAddress, s32* pData) {
    // Parameters
    // u32 nAddress; // r1+0x4
    // s32* pData; // r1+0x8
}

// Range: 0x80097ECC -> 0x80097ED4
static s32 diskGetDrive64() {}

// Range: 0x80097D30 -> 0x80097ECC
s32 diskEvent(struct __anon_0x7BC55* pDisk, s32 nEvent, void* pArgument) {
    // Parameters
    // struct __anon_0x7BC55* pDisk; // r30
    // s32 nEvent; // r1+0xC
    // void* pArgument; // r31
}
