/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\serial.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x800993E0 -> 0x800996B4
*/

#include "types.h"

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x806D5; // size = 0x10

// size = 0x10, address = 0x800FC320
struct _XL_OBJECTTYPE gClassSerial;

typedef struct __anon_0x807C9 {
    /* 0x0 */ void* pHost;
    /* 0x4 */ s32 nAddress;
} __anon_0x807C9; // size = 0x8

// Range: 0x800996AC -> 0x800996B4
s32 serialPut8() {}

// Range: 0x800996A4 -> 0x800996AC
s32 serialPut16() {}

// Range: 0x80099564 -> 0x800996A4
s32 serialPut32(struct __anon_0x807C9* pSerial, u32 nAddress, s32* pData) {
    // Parameters
    // struct __anon_0x807C9* pSerial; // r31
    // u32 nAddress; // r1+0xC
    // s32* pData; // r1+0x10

    // Local variables
    s32 nSize; // r1+0x18
    void* aData; // r1+0x14
}

// Range: 0x8009955C -> 0x80099564
s32 serialPut64() {}

// Range: 0x80099554 -> 0x8009955C
s32 serialGet8() {}

// Range: 0x8009954C -> 0x80099554
s32 serialGet16() {}

// Range: 0x800994E8 -> 0x8009954C
s32 serialGet32(struct __anon_0x807C9* pSerial, u32 nAddress, s32* pData) {
    // Parameters
    // struct __anon_0x807C9* pSerial; // r1+0x0
    // u32 nAddress; // r1+0x4
    // s32* pData; // r1+0x8
}

// Range: 0x800994E0 -> 0x800994E8
s32 serialGet64() {}

// Range: 0x800993E0 -> 0x800994E0
s32 serialEvent(struct __anon_0x807C9* pSerial, s32 nEvent, void* pArgument) {
    // Parameters
    // struct __anon_0x807C9* pSerial; // r30
    // s32 nEvent; // r1+0xC
    // void* pArgument; // r31
}
