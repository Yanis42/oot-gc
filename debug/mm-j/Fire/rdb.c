/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\rdb.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x8007B9A4 -> 0x8007BF8C
*/

#include "types.h"

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x5EA52; // size = 0x10

// size = 0x10, address = 0x800FBAA8
struct _XL_OBJECTTYPE gClassRdb;

typedef struct __anon_0x5EB63 {
    /* 0x000 */ s32 nHackCount;
    /* 0x004 */ char szString[256];
    /* 0x104 */ s32 nIndexString;
    /* 0x108 */ s32 nAddress;
    /* 0x10C */ void* pHost;
} __anon_0x5EB63; // size = 0x110

// Range: 0x8007BF84 -> 0x8007BF8C
static s32 rdbPut8() {}

// Range: 0x8007BF7C -> 0x8007BF84
static s32 rdbPut16() {}

// Range: 0x8007BB00 -> 0x8007BF7C
static s32 rdbPut32(struct __anon_0x5EB63* pRDB, u32 nAddress, s32* pData) {
    // Parameters
    // struct __anon_0x5EB63* pRDB; // r3
    // u32 nAddress; // r1+0xC
    // s32* pData; // r1+0x10

    // Local variables
    s32 nLength; // r7
    s32 iCounter; // r5
}

// Range: 0x8007BAF8 -> 0x8007BB00
static s32 rdbPut64() {}

// Range: 0x8007BAF0 -> 0x8007BAF8
static s32 rdbGet8() {}

// Range: 0x8007BAE8 -> 0x8007BAF0
static s32 rdbGet16() {}

// Range: 0x8007BAB4 -> 0x8007BAE8
static s32 rdbGet32(u32 nAddress) {
    // Parameters
    // u32 nAddress; // r1+0x4
}

// Range: 0x8007BAAC -> 0x8007BAB4
static s32 rdbGet64() {}

// Range: 0x8007B9A4 -> 0x8007BAAC
s32 rdbEvent(struct __anon_0x5EB63* pRDB, s32 nEvent, void* pArgument) {
    // Parameters
    // struct __anon_0x5EB63* pRDB; // r30
    // s32 nEvent; // r1+0xC
    // void* pArgument; // r31
}
