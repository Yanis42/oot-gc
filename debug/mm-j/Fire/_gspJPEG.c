/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\_gspJPEG.c
    Producer: MW EABI PPC C-Compiler
    Language: C89
    Code range: 0x80084F80 -> 0x8008ADB8
*/

#include "types.h"

// Range: 0x8008A4D4 -> 0x8008ADB8
static s32 rspCreateJPEGArrays(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
}

// Erased
static s32 rspDestroyJPEGArrays() {}

// Erased
static void rspConvertBufferToRGBA(u8* buf, struct __anon_0x604AC* rgba) {
    // Parameters
    // u8* buf; // r1+0x4
    // struct __anon_0x604AC* rgba; // r1+0x8
}

// Range: 0x8008A33C -> 0x8008A4D4
static void rspConvertRGBAtoYUV(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8

    // Local variables
    s32 i; // r30
    s32 j; // r1+0x8
    s32 Y; // r20
    s32 U; // r20
    s32 V; // r12
}

// Range: 0x80089C4C -> 0x8008A33C
static void rspYUVtoDCTBuf(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x0

    // Local variables
    s32 i; // r1+0x0
}

// Range: 0x8008997C -> 0x80089C4C
static void rspDCT(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8

    // Local variables
    s32 c; // r1+0xA4
    s32 i; // r1+0xA0
    s32 j; // r1+0x8
    s32 dd; // r6
    s16 t[8][8]; // r1+0x1C
}

// Range: 0x80089800 -> 0x8008997C
static void rspQuantize(struct __anon_0x605AA* pRSP, s32 scale) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // s32 scale; // r1+0xC

    // Local variables
    s32 c; // r29
    s32 i; // r28
    s32 j; // r27
    s16 q; // r6
    s16 s; // r1+0x8
}

// Erased
static void rspZigzagData(struct __anon_0x605AA* pRSP, u8** databuf, s32 n, s32* preDc) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // u8** databuf; // r1+0xC
    // s32 n; // r1+0x10
    // s32* preDc; // r1+0x14

    // Local variables
    s16 Ac; // r30
    s32 i; // r6
    s32 z; // r7
}

// Erased
static void rspUndoZigzagData(struct __anon_0x605AA* pRSP, u8** databuf, s32 n, s32* preDc) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // u8** databuf; // r1+0xC
    // s32 n; // r1+0x10
    // s32* preDc; // r1+0x14

    // Local variables
    s16 Dc; // r12
    s16 Ac; // r12
    s32 i; // r7
    s32 z; // r31
}

// Range: 0x8008967C -> 0x80089800
void rspUndoQuantize(struct __anon_0x605AA* pRSP, s32 scale) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // s32 scale; // r1+0xC

    // Local variables
    s32 c; // r29
    s32 i; // r28
    s32 j; // r27
    s16 q; // r6
    s16 s; // r1+0x8
}

// Range: 0x80089390 -> 0x8008967C
void rspUndoDCT(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8

    // Local variables
    s32 c; // r1+0xA4
    s32 i; // r1+0xA0
    s32 j; // r5
    s32 dd; // r6
    s16 t[8][8]; // r1+0x1C
}

// Range: 0x80088C08 -> 0x80089390
void rspUndoYUVtoDCTBuf(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8

    // Local variables
    s32 i; // r1+0x8
    s32 j; // r1+0x8
}

// Range: 0x80088A58 -> 0x80088C08
void rspFormatYUV(struct __anon_0x605AA* pRSP, char* imgBuf) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // char* imgBuf; // r4

    // Local variables
    s32 i; // r10
    s32 j; // r11
}

// Range: 0x80088020 -> 0x80088A58
static s32 rspParseJPEG_Encode(struct __anon_0x605AA* pRSP, struct __anon_0x5F709* pTask) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r19
    // struct __anon_0x5F709* pTask; // r16

    // Local variables
    u8* temp; // r24
    u8* temp2; // r23
    s32 i; // r10
    s32 j; // r11
    s32 x; // r22
    s32 y; // r21
    u8* system_imb; // r1+0x30
    u8* system_cfb; // r1+0x2C
    s32 scale; // r20
}

// Range: 0x800877D4 -> 0x80088020
static s32 rspParseJPEG_Decode(struct __anon_0x605AA* pRSP, struct __anon_0x5F709* pTask) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r30
    // struct __anon_0x5F709* pTask; // r20

    // Local variables
    s32 i; // r3
    s32 y; // r25
    u8* temp; // r31
    u8* temp2; // r26
    u64* system_imb; // r1+0x1C
    s32 size; // r21
    s32 scale; // r22
}

// Range: 0x800874DC -> 0x800877D4
static s32 rspCreateJPEGArraysZ(struct __anon_0x605AA* pRSP, s32 qYAddress, s32 qCbAddress, s32 qCrAddress) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r24
    // s32 qYAddress; // r4
    // s32 qCbAddress; // r25
    // s32 qCrAddress; // r26
}

// Erased
static s32 rspDestroyJPEGArraysZ() {}

// Range: 0x8008720C -> 0x800874DC
static void rspDCTZ(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8

    // Local variables
    s32 c; // r1+0xA4
    s32 i; // r1+0xA0
    s32 j; // r1+0x8
    s32 dd; // r6
    s16 t[8][8]; // r1+0x1C
}

// Range: 0x80086BE0 -> 0x8008720C
static void rspQuantizeZ(struct __anon_0x605AA* pRSP, s16* dataBuf) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // s16* dataBuf; // r1+0xC

    // Local variables
    s32 c; // r12
    s32 i; // r1+0x8
}

// Range: 0x800866B8 -> 0x80086BE0
void rspZigzagDataZ(struct __anon_0x605AA* pRSP, s16* dataBuf) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // s16* dataBuf; // r4

    // Local variables
    s32 c; // r1+0x8
}

// Range: 0x800860EC -> 0x800866B8
void rspUndoQuantizeZ(struct __anon_0x605AA* pRSP, s16* dataBuf) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // s16* dataBuf; // r1+0xC

    // Local variables
    s32 c; // r12
    s32 i; // r1+0x8
}

// Range: 0x80085CC4 -> 0x800860EC
void rspUndoZigzagDataZ(struct __anon_0x605AA* pRSP, s16* dataBuf) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // s16* dataBuf; // r4

    // Local variables
    s32 c; // r1+0x8
}

// Range: 0x800859F4 -> 0x80085CC4
void rspUndoDCTZ(struct __anon_0x605AA* pRSP) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8

    // Local variables
    s32 c; // r1+0xA4
    s32 i; // r1+0xA0
    s32 j; // r5
    s32 dd; // r6
    s16 t[8][8]; // r1+0x1C
}

// Range: 0x80085960 -> 0x800859F4
s32 rspUndoLoadColorBufferZ(s32 r, s32 g, s32 b, s16* imgBuf, s32 index) {
    // Parameters
    // s32 r; // r3
    // s32 g; // r1+0x8
    // s32 b; // r4
    // s16* imgBuf; // r1+0x10
    // s32 index; // r1+0x14
}

// Range: 0x80085558 -> 0x80085960
s32 rspUndoRecon420Z(struct __anon_0x605AA* pRSP, s16* imgBuf) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r30
    // s16* imgBuf; // r29

    // Local variables
    s32 i; // r1+0x8
    s32 j; // r24
    s32 r; // r1+0x8
    s32 g; // r1+0x8
    s32 b; // r1+0x8
    s32 y; // r7
    s32 u; // r5
    s32 v; // r1+0x8
}

// Erased
static s32 rspLoadColorBufferZ(s32* r, s32* g, s32* b, s16* imgBuf, s32 index) {
    // Parameters
    // s32* r; // r1+0x4
    // s32* g; // r1+0x8
    // s32* b; // r1+0xC
    // s16* imgBuf; // r1+0x10
    // s32 index; // r1+0x14
}

// Range: 0x80085178 -> 0x80085558
s32 rspRecon420Z(struct __anon_0x605AA* pRSP, s16* imgBuf) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r1+0x8
    // s16* imgBuf; // r1+0xC

    // Local variables
    s32 i; // r1+0x10
    s32 j; // r26
    s32 r; // r10
    s32 g; // r7
    s32 b; // r11
    s32 y; // r6
    s32 u; // r9
    s32 v; // r1+0x8
}

// Range: 0x8008507C -> 0x80085178
static s32 rspParseJPEG_EncodeZ(struct __anon_0x605AA* pRSP, struct __anon_0x5F709* pTask) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r28
    // struct __anon_0x5F709* pTask; // r4

    // Local variables
    s32 y; // r31
    s16* temp; // r1+0x8
    s16* temp2; // r30
    u64* system_imb; // r1+0x20
    u32* infoStruct; // r1+0x1C
    s32 size; // r29
}

// Range: 0x80084F80 -> 0x8008507C
static s32 rspParseJPEG_DecodeZ(struct __anon_0x605AA* pRSP, struct __anon_0x5F709* pTask) {
    // Parameters
    // struct __anon_0x605AA* pRSP; // r28
    // struct __anon_0x5F709* pTask; // r4

    // Local variables
    s32 y; // r31
    s16* temp; // r1+0x8
    s16* temp2; // r30
    u64* system_imb; // r1+0x20
    u32* infoStruct; // r1+0x1C
    s32 size; // r29
}
