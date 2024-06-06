/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\soundGCN.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x8001CDE8 -> 0x8001DCBC
*/

#include "types.h"

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x249D7; // size = 0x10

// size = 0x10, address = 0x800F6928
struct _XL_OBJECTTYPE gClassSound;

// size = 0x404, address = 0x80116560
s32 gVolumeCurve[257];

typedef enum __anon_0x24BBC {
    SPM_NONE = -1,
    SPM_PLAY = 0,
    SPM_RAMPQUEUED = 1,
    SPM_RAMPPLAYED = 2,
} __anon_0x24BBC;

typedef struct __anon_0x24C2A {
    /* 0x00 */ void* pSrcData;
    /* 0x04 */ s32 nFrequency;
    /* 0x08 */ s32 nDacrate;
    /* 0x0C */ s32 nSndLen;
    /* 0x10 */ void* apBuffer[16];
    /* 0x50 */ s32 anSizeBuffer[16];
    /* 0x90 */ s32 nCountBeep;
    /* 0x94 */ s32 anSizeBeep[3];
    /* 0xA0 */ void* apDataBeep[3];
    /* 0xAC */ s32 iBufferPlay;
    /* 0xB0 */ s32 iBufferMake;
    /* 0xB4 */ enum __anon_0x24BBC eMode;
    /* 0xB8 */ void* pBufferZero;
    /* 0xBC */ void* pBufferHold;
    /* 0xC0 */ void* pBufferRampUp;
    /* 0xC4 */ void* pBufferRampDown;
    /* 0xC8 */ s32 nSizePlay;
    /* 0xCC */ s32 nSizeZero;
    /* 0xD0 */ s32 nSizeHold;
    /* 0xD4 */ s32 nSizeRamp;
} __anon_0x24C2A; // size = 0xD8

typedef enum __anon_0x25030 {
    SOUND_BEEP_ACCEPT = 0,
    SOUND_BEEP_DECLINE = 1,
    SOUND_BEEP_SELECT = 2,
    SOUND_BEEP_COUNT = 3,
} __anon_0x25030;

typedef enum __anon_0x251B6 {
    XLFT_NONE = -1,
    XLFT_TEXT = 0,
    XLFT_BINARY = 1,
} __anon_0x251B6;

typedef struct DVDDiskID {
    /* 0x0 */ char gameName[4];
    /* 0x4 */ char company[2];
    /* 0x6 */ u8 diskNumber;
    /* 0x7 */ u8 gameVersion;
    /* 0x8 */ u8 streaming;
    /* 0x9 */ u8 streamingBufSize;
    /* 0xA */ u8 padding[22];
} __anon_0x2526F; // size = 0x20

typedef struct DVDCommandBlock {
    /* 0x00 */ struct DVDCommandBlock* next;
    /* 0x04 */ struct DVDCommandBlock* prev;
    /* 0x08 */ u32 command;
    /* 0x0C */ s32 state;
    /* 0x10 */ u32 offset;
    /* 0x14 */ u32 length;
    /* 0x18 */ void* addr;
    /* 0x1C */ u32 currTransferSize;
    /* 0x20 */ u32 transferredSize;
    /* 0x24 */ struct DVDDiskID* id;
    /* 0x28 */ void (* callback)(s32, struct DVDCommandBlock*);
    /* 0x2C */ void* userData;
} __anon_0x253DF; // size = 0x30

typedef struct DVDFileInfo {
    /* 0x00 */ struct DVDCommandBlock cb;
    /* 0x30 */ u32 startAddr;
    /* 0x34 */ u32 length;
    /* 0x38 */ void (* callback)(s32, struct DVDFileInfo*);
} __anon_0x25605; // size = 0x3C

typedef struct tXL_FILE {
    /* 0x00 */ void* pData;
    /* 0x04 */ char* acLine;
    /* 0x08 */ void* pBuffer;
    /* 0x0C */ s32 nAttributes;
    /* 0x10 */ s32 nSize;
    /* 0x14 */ s32 nOffset;
    /* 0x18 */ enum __anon_0x251B6 eType;
    /* 0x1C */ s32 iLine;
    /* 0x20 */ s32 nLineNumber;
    /* 0x24 */ struct DVDFileInfo info;
} __anon_0x256BD; // size = 0x60

typedef enum __anon_0x2591E {
    SM_NONE = -1,
    SM_RUNNING = 0,
    SM_STOPPED = 1,
} __anon_0x2591E;

typedef struct __anon_0x25986 {
    /* 0x0 */ s32 nSize;
    /* 0x4 */ s32 nOffsetRAM;
    /* 0x8 */ s32 nOffsetROM;
    /* 0xC */ s32 (* pCallback)();
} __anon_0x25986; // size = 0x10

typedef enum __anon_0x25A37 {
    SRT_NONE = -1,
    SRT_MARIO = 0,
    SRT_WAVERACE = 1,
    SRT_MARIOKART = 2,
    SRT_STARFOX = 3,
    SRT_ZELDA1 = 4,
    SRT_ZELDA2 = 5,
    SRT_1080 = 6,
    SRT_PANEL = 7,
    SRT_MARIOPARTY1 = 8,
    SRT_MARIOPARTY2 = 9,
    SRT_MARIOPARTY3 = 10,
    SRT_DRMARIO = 11,
    SRT_KIRBY = 12,
    SRT_PILOTWING = 13,
    SRT_SLICRADIC = 14,
    SRT_UNKNOWN = 15,
} __anon_0x25A37;

typedef enum __anon_0x25B9A {
    SOT_NONE = -1,
    SOT_CPU = 0,
    SOT_PIF = 1,
    SOT_RAM = 2,
    SOT_ROM = 3,
    SOT_RSP = 4,
    SOT_RDP = 5,
    SOT_MIPS = 6,
    SOT_DISK = 7,
    SOT_FLASH = 8,
    SOT_SRAM = 9,
    SOT_AUDIO = 10,
    SOT_VIDEO = 11,
    SOT_SERIAL = 12,
    SOT_LIBRARY = 13,
    SOT_PERIPHERAL = 14,
    SOT_RDB = 15,
    SOT_COUNT = 16,
} __anon_0x25B9A;

typedef struct __anon_0x25CDA {
    /* 0x00 */ void* pFrame;
    /* 0x04 */ void* pSound;
    /* 0x08 */ s32 bException;
    /* 0x0C */ enum __anon_0x2591E eMode;
    /* 0x10 */ struct __anon_0x25986 romCopy;
    /* 0x20 */ enum __anon_0x25A37 eTypeROM;
    /* 0x24 */ void* apObject[16];
    /* 0x68 */ u64 nAddressBreak;
    /* 0x70 */ enum __anon_0x25B9A storageDevice;
    /* 0x74 */ u8 anException[16];
} __anon_0x25CDA; // size = 0x88

// size = 0x4, address = 0x801458C0
struct __anon_0x25CDA* gpSystem;

typedef enum __anon_0x26598 {
    SR_NONE = -1,
    SR_DECREASE = 0,
    SR_INCREASE = 1,
} __anon_0x26598;

// Range: 0x8001DBC0 -> 0x8001DCBC
s32 soundWipeBuffers(struct __anon_0x24C2A* pSound) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r31

    // Local variables
    s32 iBuffer; // r30
}

// Range: 0x8001D6FC -> 0x8001DBC0
static s32 soundMakeRamp(struct __anon_0x24C2A* pSound, s32 iBuffer, enum __anon_0x26598 eRamp) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r1+0x8
    // s32 iBuffer; // r1+0xC
    // enum __anon_0x26598 eRamp; // r1+0x10

    // Local variables
    s32 bFlag; // r8
    s32 iData; // r1+0x8
    s16* anData; // r9
    s16 nData0; // r10
    s16 nData1; // r11
    s16 nGoal0; // r12
    s16 nGoal1; // r31
    s16 nStep0; // r5
    s16 nStep1; // r4
    s16 nLast0; // r27
    s16 nLast1; // r27
}

// Erased
static s32 soundMakeZero(struct __anon_0x24C2A* pSound) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r3

    // Local variables
    s32 iData; // r7
}

// Erased
static s32 soundMakeHold() {}

// Range: 0x8001D63C -> 0x8001D6FC
static s32 soundPlayBuffer(struct __anon_0x24C2A* pSound) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r1+0x8

    // Local variables
    void* pData; // r6
    s32 iBuffer; // r4
    s32 nSize; // r4
}

// Range: 0x8001D614 -> 0x8001D63C
static void soundCallbackDMA() {
    // References
    // -> struct __anon_0x25CDA* gpSystem;
}

// Range: 0x8001D428 -> 0x8001D614
static s32 soundMakeBuffer(struct __anon_0x24C2A* pSound) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r29

    // Local variables
    u32 nSamples; // r5
    s16* curBufP; // r3
    u32 sampleStep; // r1+0x8
    u32 sample; // r6
    s32 j; // r7
    s32 nSize; // r4
    s32 samp; // r11
    s32 iBuffer; // r31
    s32 vol; // r8
    s32 bFlag; // r28
    s32 bPlay; // r30
    s32 volAdjust; // r11

    // References
    // -> s32 gVolumeCurve[257];
}

// Range: 0x8001D3F0 -> 0x8001D428
s32 soundSetLength(struct __anon_0x24C2A* pSound, s32 nSize) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r3
    // s32 nSize; // r1+0xC
}

// Range: 0x8001D3D0 -> 0x8001D3F0
s32 soundSetDACRate(struct __anon_0x24C2A* pSound, s32 nDacRate) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r1+0x0
    // s32 nDacRate; // r1+0x4
}

// Erased
static s32 soundSetBitRate() {}

// Range: 0x8001D3C4 -> 0x8001D3D0
s32 soundSetAddress(struct __anon_0x24C2A* pSound, void* pData) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r1+0x0
    // void* pData; // r1+0x4
}

// Range: 0x8001D390 -> 0x8001D3C4
s32 soundGetDMABuffer(u32* pnSize) {
    // Parameters
    // u32* pnSize; // r31
}

// Range: 0x8001D214 -> 0x8001D390
s32 soundSetBufferSize(struct __anon_0x24C2A* pSound, s32 nSize) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r31
    // s32 nSize; // r4

    // Local variables
    s32 iBuffer; // r29
}

// Erased
static void InitVolumeCurve() {
    // Local variables
    s32 i; // r29

    // References
    // -> s32 gVolumeCurve[257];
}

// Range: 0x8001D1B8 -> 0x8001D214
static void soundCallbackBeep() {
    // Local variables
    struct __anon_0x24C2A* pSound; // r31

    // References
    // -> struct __anon_0x25CDA* gpSystem;
}

// Range: 0x8001D0A0 -> 0x8001D1B8
s32 soundLoadBeep(struct __anon_0x24C2A* pSound, enum __anon_0x25030 iBeep, char* szNameFile) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r28
    // enum __anon_0x25030 iBeep; // r1+0xC
    // char* szNameFile; // r5

    // Local variables
    struct tXL_FILE* pFile; // r1+0x14
}

// Range: 0x8001D024 -> 0x8001D0A0
s32 soundPlayBeep(struct __anon_0x24C2A* pSound, enum __anon_0x25030 iBeep) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r29
    // enum __anon_0x25030 iBeep; // r1+0xC
}

// Erased
static s32 soundFreeBeep(struct __anon_0x24C2A* pSound, enum __anon_0x25030 iBeep) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r5
    // enum __anon_0x25030 iBeep; // r1+0xC
}

// Range: 0x8001CFE0 -> 0x8001D024
s32 soundPlayOcarinaTune() {}

// Range: 0x8001CDE8 -> 0x8001CFE0
s32 soundEvent(struct __anon_0x24C2A* pSound, s32 nEvent) {
    // Parameters
    // struct __anon_0x24C2A* pSound; // r3
    // s32 nEvent; // r1+0xC

    // Local variables
    s32 iBuffer; // r1+0x8

    // References
    // -> s32 gVolumeCurve[257];
}
