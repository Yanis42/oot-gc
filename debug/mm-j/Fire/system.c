/*
    Compile unit: c:\HOMEBOY\STEPHEN\Emulator\Fire\system.c
    Producer: MW EABI PPC C-Compiler
    Language: C++
    Code range: 0x8002C108 -> 0x80030C84
*/

#include "types.h"

// size = 0x4, address = 0x80144B70
u32 nTickMultiplier;

// size = 0x4, address = 0x80144B74
f32 fTickScale;

typedef struct _XL_OBJECTTYPE {
    /* 0x0 */ char* szName;
    /* 0x4 */ s32 nSizeObject;
    /* 0x8 */ struct _XL_OBJECTTYPE* pClassBase;
    /* 0xC */ s32 (* pfEvent)(void*, s32, void*);
} __anon_0x3896A; // size = 0x10

// size = 0x10, address = 0x800F73D8
struct _XL_OBJECTTYPE gClassSystem;

// size = 0x190, address = 0x800F73E8
static u32 contMap[5][20];

// size = 0x4, address = 0x801459A8
u32 gnFlagZelda;

typedef struct __anon_0x38B4E {
    /* 0x000 */ char rom[36];
    /* 0x024 */ s32 controllerConfiguration[4][20];
    /* 0x164 */ s32 rumbleConfiguration;
    /* 0x168 */ s32 storageDevice;
    /* 0x16C */ s32 normalControllerConfig;
    /* 0x170 */ s32 currentControllerConfig;
} __anon_0x38B4E; // size = 0x174

// size = 0x174, address = 0x8013FB50
struct __anon_0x38B4E gSystemRomConfigurationList[1];

typedef struct __anon_0x38D18 {
    /* 0x0 */ f32 rX;
    /* 0x4 */ f32 rY;
    /* 0x8 */ f32 rSizeX;
    /* 0xC */ f32 rSizeY;
} __anon_0x38D18; // size = 0x10

typedef struct __anon_0x38DB2 {
    /* 0x00 */ s32 nSize;
    /* 0x04 */ s32 nWidth;
    /* 0x08 */ s32 nFormat;
    /* 0x0C */ void* pData;
    /* 0x10 */ s32 nAddress;
} __anon_0x38DB2; // size = 0x14

typedef struct __anon_0x38EF3 {
    /* 0x0 */ f32 x;
    /* 0x4 */ f32 y;
    /* 0x8 */ f32 z;
} __anon_0x38EF3; // size = 0xC

typedef struct __anon_0x38F63 {
    /* 0x00 */ s32 bTransformed;
    /* 0x04 */ struct __anon_0x38EF3 rVecOrigTowards;
    /* 0x10 */ f32 rColorR;
    /* 0x14 */ f32 rColorG;
    /* 0x18 */ f32 rColorB;
    /* 0x1C */ f32 rVectorX;
    /* 0x20 */ f32 rVectorY;
    /* 0x24 */ f32 rVectorZ;
    /* 0x28 */ f32 kc;
    /* 0x2C */ f32 kl;
    /* 0x30 */ f32 kq;
    /* 0x34 */ s16 coordX;
    /* 0x36 */ s16 coordY;
    /* 0x38 */ s16 coordZ;
} __anon_0x38F63; // size = 0x3C

typedef struct __anon_0x39193 {
    /* 0x00 */ s32 bTransformed;
    /* 0x04 */ struct __anon_0x38EF3 rS;
    /* 0x10 */ struct __anon_0x38EF3 rT;
    /* 0x1C */ struct __anon_0x38EF3 rSRaw;
    /* 0x28 */ struct __anon_0x38EF3 rTRaw;
} __anon_0x39193; // size = 0x34

typedef struct __anon_0x3927C {
    /* 0x00 */ f32 rSum;
    /* 0x04 */ f32 rS;
    /* 0x08 */ f32 rT;
    /* 0x0C */ struct __anon_0x38EF3 vec;
    /* 0x18 */ u8 anColor[4];
} __anon_0x3927C; // size = 0x1C

typedef union __anon_0x393DB {
    /* 0x0 */ u8 u8[4096];
    /* 0x0 */ u16 u16[2048];
    /* 0x0 */ u32 u32[1024];
    /* 0x0 */ u64 u64[512];
} __anon_0x393DB;

typedef struct __anon_0x39478 {
    /* 0x0 */ union __anon_0x393DB data;
} __anon_0x39478; // size = 0x1000

typedef enum _GXTexFmt {
    GX_TF_I4 = 0,
    GX_TF_I8 = 1,
    GX_TF_IA4 = 2,
    GX_TF_IA8 = 3,
    GX_TF_RGB565 = 4,
    GX_TF_RGB5A3 = 5,
    GX_TF_RGBA8 = 6,
    GX_TF_CMPR = 14,
    GX_CTF_R4 = 32,
    GX_CTF_RA4 = 34,
    GX_CTF_RA8 = 35,
    GX_CTF_YUVA8 = 38,
    GX_CTF_A8 = 39,
    GX_CTF_R8 = 40,
    GX_CTF_G8 = 41,
    GX_CTF_B8 = 42,
    GX_CTF_RG8 = 43,
    GX_CTF_GB8 = 44,
    GX_TF_Z8 = 17,
    GX_TF_Z16 = 19,
    GX_TF_Z24X8 = 22,
    GX_CTF_Z4 = 48,
    GX_CTF_Z8M = 57,
    GX_CTF_Z8L = 58,
    GX_CTF_Z16L = 60,
    GX_TF_A8 = 39,
} __anon_0x39511;

typedef struct _GXTlutObj {
    /* 0x0 */ u32 dummy[3];
} __anon_0x396D3; // size = 0xC

typedef struct _GXTexObj {
    /* 0x0 */ u32 dummy[8];
} __anon_0x3973A; // size = 0x20

typedef enum _GXTexWrapMode {
    GX_CLAMP = 0,
    GX_REPEAT = 1,
    GX_MIRROR = 2,
    GX_MAX_TEXWRAPMODE = 3,
} __anon_0x39780;

typedef struct _FRAME_TEXTURE {
    /* 0x00 */ s32 nMode;
    /* 0x04 */ s32 iPackPixel;
    /* 0x08 */ s32 iPackColor;
    /* 0x0C */ s32 nFrameLast;
    /* 0x10 */ s16 nSizeX;
    /* 0x12 */ s16 nSizeY;
    /* 0x14 */ u32 nAddress;
    /* 0x18 */ u32 nCodePixel;
    /* 0x1C */ u32 nCodeColor;
    /* 0x20 */ struct _FRAME_TEXTURE* pTextureNext;
    /* 0x24 */ u32 nData0;
    /* 0x28 */ u32 nData1;
    /* 0x2C */ u32 nData2;
    /* 0x30 */ u32 nData3;
    /* 0x34 */ enum _GXTexFmt eFormat;
    /* 0x38 */ struct _GXTlutObj objectTLUT;
    /* 0x44 */ struct _GXTexObj objectTexture;
    /* 0x64 */ enum _GXTexWrapMode eWrapS;
    /* 0x68 */ enum _GXTexWrapMode eWrapT;
} __anon_0x397E9; // size = 0x6C

typedef struct __anon_0x39B46 {
    /* 0x00 */ s32 nSize;
    /* 0x04 */ s32 nTMEM;
    /* 0x08 */ s32 iTLUT;
    /* 0x0C */ s32 nSizeX;
    /* 0x10 */ s32 nFormat;
    /* 0x14 */ s16 nMaskS;
    /* 0x16 */ s16 nMaskT;
    /* 0x18 */ s16 nModeS;
    /* 0x1A */ s16 nModeT;
    /* 0x1C */ s16 nShiftS;
    /* 0x1E */ s16 nShiftT;
    /* 0x20 */ s16 nX0;
    /* 0x22 */ s16 nY0;
    /* 0x24 */ s16 nX1;
    /* 0x26 */ s16 nY1;
    /* 0x28 */ u32 nCodePixel;
} __anon_0x39B46; // size = 0x2C

typedef enum __anon_0x39E28 {
    FMP_NONE = -1,
    FMP_PERSPECTIVE = 0,
    FMP_ORTHOGRAPHIC = 1,
} __anon_0x39E28;

typedef struct __anon_0x39EAC {
    /* 0x00 */ s32 nCount;
    /* 0x04 */ f32 rScale;
    /* 0x08 */ f32 rAspect;
    /* 0x0C */ f32 rFieldOfViewY;
    /* 0x10 */ f32 rClipNear;
    /* 0x14 */ f32 rClipFar;
    /* 0x18 */ u32 nAddressFloat;
    /* 0x1C */ u32 nAddressFixed;
    /* 0x20 */ enum __anon_0x39E28 eProjection;
} __anon_0x39EAC; // size = 0x24

typedef struct _GXColor {
    /* 0x0 */ u8 r;
    /* 0x1 */ u8 g;
    /* 0x2 */ u8 b;
    /* 0x3 */ u8 a;
} __anon_0x3A041; // size = 0x4

typedef struct __anon_0x3A0FC {
    /* 0x00000 */ u32 anCIMGAddresses[8];
    /* 0x00020 */ u16 nNumCIMGAddresses;
    /* 0x00024 */ s32 bBlurOn;
    /* 0x00028 */ s32 bHackPause;
    /* 0x0002C */ s32 nHackCount;
    /* 0x00030 */ s32 nFrameCounter;
    /* 0x00034 */ s32 bPauseThisFrame;
    /* 0x00038 */ s32 bCameFromBomberNotes;
    /* 0x0003C */ s32 bInBomberNotes;
    /* 0x00040 */ s32 bShrinking;
    /* 0x00044 */ s32 bSnapShot;
    /* 0x00048 */ s32 bUsingLens;
    /* 0x0004C */ u8 cBlurAlpha;
    /* 0x00050 */ s32 bBlurredThisFrame;
    /* 0x00054 */ s32 nFrameCIMGCalls;
    /* 0x00058 */ s32 bModifyZBuffer;
    /* 0x0005C */ s32 nZBufferSets;
    /* 0x00060 */ s32 nLastFrameZSets;
    /* 0x00064 */ s32 bPauseBGDrawn;
    /* 0x00068 */ u64* pnGBI;
    /* 0x0006C */ u32 nFlag;
    /* 0x00070 */ f32 rScaleX;
    /* 0x00074 */ f32 rScaleY;
    /* 0x00078 */ u32 nCountFrames;
    /* 0x0007C */ u32 nMode;
    /* 0x00080 */ u32 aMode[10];
    /* 0x000A8 */ struct __anon_0x38D18 viewport;
    /* 0x000B8 */ struct __anon_0x38DB2 aBuffer[4];
    /* 0x00108 */ u32 nOffsetDepth0;
    /* 0x0010C */ u32 nOffsetDepth1;
    /* 0x00110 */ s32 nWidthLine;
    /* 0x00114 */ f32 rDepth;
    /* 0x00118 */ f32 rDelta;
    /* 0x0011C */ s32 (* aDraw[4])(void*, void*);
    /* 0x0012C */ s32 nCountLight;
    /* 0x00130 */ struct __anon_0x38F63 aLight[8];
    /* 0x00310 */ struct __anon_0x39193 lookAt;
    /* 0x00344 */ s32 nCountVertex;
    /* 0x00348 */ struct __anon_0x3927C aVertex[80];
    /* 0x00C08 */ struct __anon_0x39478 TMEM;
    /* 0x01C08 */ void* aPixelData;
    /* 0x01C0C */ void* aColorData;
    /* 0x01C10 */ s32 nBlocksPixel;
    /* 0x01C14 */ s32 nBlocksMaxPixel;
    /* 0x01C18 */ s32 nBlocksColor;
    /* 0x01C1C */ s32 nBlocksMaxColor;
    /* 0x01C20 */ s32 nBlocksTexture;
    /* 0x01C24 */ s32 nBlocksMaxTexture;
    /* 0x01C28 */ u32 anPackPixel[48];
    /* 0x01CE8 */ u32 anPackColor[320];
    /* 0x021E8 */ u32 nAddressLoad;
    /* 0x021EC */ u32 nCodePixel;
    /* 0x021F0 */ u32 nTlutCode[16];
    /* 0x02230 */ struct _FRAME_TEXTURE aTexture[2048];
    /* 0x38230 */ u32 anTextureUsed[64];
    /* 0x38330 */ struct _FRAME_TEXTURE* apTextureCached[4096];
    /* 0x3C330 */ s32 iTileLoad;
    /* 0x3C334 */ u32 n2dLoadTexType;
    /* 0x3C338 */ s32 nLastX0;
    /* 0x3C33C */ s32 nLastY0;
    /* 0x3C340 */ s32 nLastX1;
    /* 0x3C344 */ s32 nLastY1;
    /* 0x3C348 */ struct __anon_0x39B46 aTile[8];
    /* 0x3C4A8 */ s32 anSizeX[2];
    /* 0x3C4B0 */ s32 anSizeY[2];
    /* 0x3C4B8 */ s32 iHintMatrix;
    /* 0x3C4BC */ s32 iMatrixModel;
    /* 0x3C4C0 */ s32 iHintProjection;
    /* 0x3C4C4 */ f32 matrixView[4][4];
    /* 0x3C504 */ s32 iHintLast;
    /* 0x3C508 */ s32 iHintHack;
    /* 0x3C50C */ enum __anon_0x39E28 eTypeProjection;
    /* 0x3C510 */ f32 aMatrixModel[10][4][4];
    /* 0x3C790 */ f32 matrixProjection[4][4];
    /* 0x3C7D0 */ f32 matrixProjectionExtra[4][4];
    /* 0x3C810 */ struct __anon_0x39EAC aMatrixHint[64];
    /* 0x3D110 */ u8 primLODmin;
    /* 0x3D111 */ u8 primLODfrac;
    /* 0x3D112 */ u8 lastTile;
    /* 0x3D113 */ u8 iTileDrawn;
    /* 0x3D114 */ struct _GXColor aColor[5];
    /* 0x3D128 */ u32 nModeVtx;
    /* 0x3D12C */ u16* nTempBuffer;
    /* 0x3D130 */ u16* nCopyBuffer;
    /* 0x3D134 */ u8* nCameraBuffer;
} __anon_0x3A0FC; // size = 0x3D138

// size = 0x4, address = 0x801458C8
struct __anon_0x3A0FC* gpFrame;

typedef enum __anon_0x3AF1C {
    SPM_NONE = -1,
    SPM_PLAY = 0,
    SPM_RAMPQUEUED = 1,
    SPM_RAMPPLAYED = 2,
} __anon_0x3AF1C;

typedef struct __anon_0x3AF88 {
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
    /* 0xB4 */ enum __anon_0x3AF1C eMode;
    /* 0xB8 */ void* pBufferZero;
    /* 0xBC */ void* pBufferHold;
    /* 0xC0 */ void* pBufferRampUp;
    /* 0xC4 */ void* pBufferRampDown;
    /* 0xC8 */ s32 nSizePlay;
    /* 0xCC */ s32 nSizeZero;
    /* 0xD0 */ s32 nSizeHold;
    /* 0xD4 */ s32 nSizeRamp;
} __anon_0x3AF88; // size = 0xD8

// size = 0x4, address = 0x801458C4
struct __anon_0x3AF88* gpSound;

// size = 0x10, address = 0x800F77A0
struct _XL_OBJECTTYPE gClassCPU;

// size = 0x10, address = 0x800F9F30
struct _XL_OBJECTTYPE gClassPIF;

// size = 0x10, address = 0x800F9F40
struct _XL_OBJECTTYPE gClassRAM;

// size = 0x10, address = 0x800FA160
struct _XL_OBJECTTYPE gClassROM;

// size = 0x10, address = 0x800FBB18
struct _XL_OBJECTTYPE gClassRSP;

// size = 0x10, address = 0x800FB838
struct _XL_OBJECTTYPE gClassRDP;

// size = 0x10, address = 0x800FBFC8
struct _XL_OBJECTTYPE gClassMips;

// size = 0x10, address = 0x800FC040
struct _XL_OBJECTTYPE gClassDisk;

// size = 0x10, address = 0x800FC070
struct _XL_OBJECTTYPE gClassAudio;

// size = 0x10, address = 0x800FC168
struct _XL_OBJECTTYPE gClassVideo;

// size = 0x10, address = 0x800FC320
struct _XL_OBJECTTYPE gClassSerial;

// size = 0x10, address = 0x800FC404
struct _XL_OBJECTTYPE gClassLibrary;

// size = 0x10, address = 0x800FD7EC
struct _XL_OBJECTTYPE gClassPeripheral;

// size = 0x10, address = 0x800FBAA8
struct _XL_OBJECTTYPE gClassRdb;

typedef struct __anon_0x3B51E {
    /* 0x0 */ s32 nSize;
    /* 0x4 */ s32 nOffsetRAM;
    /* 0x8 */ s32 nOffsetROM;
    /* 0xC */ s32 (* pCallback)();
} __anon_0x3B51E; // size = 0x10

typedef enum __anon_0x3B5CF {
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
} __anon_0x3B5CF;

typedef struct __anon_0x3B750 {
    /* 0x00 */ void* pFrame;
    /* 0x04 */ void* pSound;
    /* 0x08 */ s32 bException;
    /* 0x0C */ enum __anon_0x3E568 eMode;
    /* 0x10 */ struct __anon_0x3B51E romCopy;
    /* 0x20 */ enum __anon_0x3B5CF eTypeROM;
    /* 0x24 */ void* apObject[16];
    /* 0x68 */ u64 nAddressBreak;
    /* 0x70 */ enum __anon_0x3D9B0 storageDevice;
    /* 0x74 */ u8 anException[16];
} __anon_0x3B750; // size = 0x88

typedef struct __anon_0x3B8EB {
    /* 0x0 */ s32 nOffsetHost;
    /* 0x4 */ s32 nAddressN64;
} __anon_0x3B8EB; // size = 0x8

typedef struct cpu_callerID {
    /* 0x0 */ s32 N64address;
    /* 0x4 */ s32 GCNaddress;
} __anon_0x3B951; // size = 0x8

typedef struct cpu_function {
    /* 0x00 */ void* pnBase;
    /* 0x04 */ void* pfCode;
    /* 0x08 */ s32 nCountJump;
    /* 0x0C */ struct __anon_0x3B8EB* aJump;
    /* 0x10 */ s32 nAddress0;
    /* 0x14 */ s32 nAddress1;
    /* 0x18 */ struct cpu_callerID* block;
    /* 0x1C */ s32 callerID_total;
    /* 0x20 */ s32 callerID_flag;
    /* 0x24 */ u32 nChecksum;
    /* 0x28 */ s32 timeToLive;
    /* 0x2C */ s32 memory_size;
    /* 0x30 */ s32 heapID;
    /* 0x34 */ s32 heapWhere;
    /* 0x38 */ s32 treeheapWhere;
    /* 0x3C */ struct cpu_function* prev;
    /* 0x40 */ struct cpu_function* left;
    /* 0x44 */ struct cpu_function* right;
} __anon_0x3B9C4; // size = 0x48

typedef union __anon_0x3BCA0 {
    /* 0x0 */ char _0s8;
    /* 0x1 */ char _1s8;
    /* 0x2 */ char _2s8;
    /* 0x3 */ char _3s8;
    /* 0x4 */ char _4s8;
    /* 0x5 */ char _5s8;
    /* 0x6 */ char _6s8;
    /* 0x7 */ char s8;
    /* 0x0 */ s16 _0s16;
    /* 0x2 */ s16 _1s16;
    /* 0x4 */ s16 _2s16;
    /* 0x6 */ s16 s16;
    /* 0x0 */ s32 _0s32;
    /* 0x4 */ s32 s32;
    /* 0x0 */ s64 s64;
    /* 0x0 */ u8 _0u8;
    /* 0x1 */ u8 _1u8;
    /* 0x2 */ u8 _2u8;
    /* 0x3 */ u8 _3u8;
    /* 0x4 */ u8 _4u8;
    /* 0x5 */ u8 _5u8;
    /* 0x6 */ u8 _6u8;
    /* 0x7 */ u8 u8;
    /* 0x0 */ u16 _0u16;
    /* 0x2 */ u16 _1u16;
    /* 0x4 */ u16 _2u16;
    /* 0x6 */ u16 u16;
    /* 0x0 */ u32 _0u32;
    /* 0x4 */ u32 u32;
    /* 0x0 */ u64 u64;
} __anon_0x3BCA0;

typedef union __anon_0x3C0B4 {
    /* 0x0 */ f32 _0f32;
    /* 0x4 */ f32 f32;
    /* 0x0 */ f64 f64;
    /* 0x0 */ s32 _0s32;
    /* 0x4 */ s32 s32;
    /* 0x0 */ s64 s64;
    /* 0x0 */ u32 _0u32;
    /* 0x4 */ u32 u32;
    /* 0x0 */ u64 u64;
} __anon_0x3C0B4;

typedef struct __anon_0x3C5C2 {
    /* 0x00 */ s32 nType;
    /* 0x04 */ void* pObject;
    /* 0x08 */ s32 nOffsetAddress;
    /* 0x0C */ s32 (* pfGet8)(void*, u32, char*);
    /* 0x10 */ s32 (* pfGet16)(void*, u32, s16*);
    /* 0x14 */ s32 (* pfGet32)(void*, u32, s32*);
    /* 0x18 */ s32 (* pfGet64)(void*, u32, s64*);
    /* 0x1C */ s32 (* pfPut8)(void*, u32, char*);
    /* 0x20 */ s32 (* pfPut16)(void*, u32, s16*);
    /* 0x24 */ s32 (* pfPut32)(void*, u32, s32*);
    /* 0x28 */ s32 (* pfPut64)(void*, u32, s64*);
    /* 0x2C */ u32 nAddressPhysical0;
    /* 0x30 */ u32 nAddressPhysical1;
} __anon_0x3C5C2; // size = 0x34

typedef struct cpu_treeRoot {
    /* 0x00 */ u16 total;
    /* 0x04 */ s32 total_memory;
    /* 0x08 */ s32 root_address;
    /* 0x0C */ s32 start_range;
    /* 0x10 */ s32 end_range;
    /* 0x14 */ s32 cache_miss;
    /* 0x18 */ s32 cache[20];
    /* 0x68 */ struct cpu_function* left;
    /* 0x6C */ struct cpu_function* right;
    /* 0x70 */ s32 kill_limit;
    /* 0x74 */ s32 kill_number;
    /* 0x78 */ s32 side;
    /* 0x7C */ struct cpu_function* restore;
    /* 0x80 */ s32 restore_side;
} __anon_0x3C890; // size = 0x84

typedef struct _CPU_ADDRESS {
    /* 0x0 */ s32 nN64;
    /* 0x4 */ s32 nHost;
    /* 0x8 */ struct cpu_function* pFunction;
} __anon_0x3CAD1; // size = 0xC

typedef struct __anon_0x3CB86 {
    /* 0x0 */ u32 nAddress;
    /* 0x4 */ u32 nOpcodeOld;
    /* 0x8 */ u32 nOpcodeNew;
} __anon_0x3CB86; // size = 0xC

typedef struct OSContext {
    /* 0x000 */ u32 gpr[32];
    /* 0x080 */ u32 cr;
    /* 0x084 */ u32 lr;
    /* 0x088 */ u32 ctr;
    /* 0x08C */ u32 xer;
    /* 0x090 */ f64 fpr[32];
    /* 0x190 */ u32 fpscr_pad;
    /* 0x194 */ u32 fpscr;
    /* 0x198 */ u32 srr0;
    /* 0x19C */ u32 srr1;
    /* 0x1A0 */ u16 mode;
    /* 0x1A2 */ u16 state;
    /* 0x1A4 */ u32 gqr[8];
    /* 0x1C4 */ u32 psf_pad;
    /* 0x1C8 */ f64 psf[32];
} __anon_0x3CCB1; // size = 0x2C8

typedef struct OSAlarm {
    /* 0x00 */ void (* handler)(struct OSAlarm*, struct OSContext*);
    /* 0x04 */ u32 tag;
    /* 0x08 */ s64 fire;
    /* 0x10 */ struct OSAlarm* prev;
    /* 0x14 */ struct OSAlarm* next;
    /* 0x18 */ s64 period;
    /* 0x20 */ s64 start;
} __anon_0x3CF08; // size = 0x28

typedef struct cpu_optimize {
    /* 0x00 */ u32 validCheck;
    /* 0x04 */ u32 destGPR_check;
    /* 0x08 */ s32 destGPR;
    /* 0x0C */ s32 destGPR_mapping;
    /* 0x10 */ u32 destFPR_check;
    /* 0x14 */ s32 destFPR;
    /* 0x18 */ u32 addr_check;
    /* 0x1C */ s32 addr_last;
    /* 0x20 */ u32 checkType;
    /* 0x24 */ u32 checkNext;
} __anon_0x3D023; // size = 0x28

typedef struct _CPU {
    /* 0x00000 */ s32 nMode;
    /* 0x00004 */ s32 nTick;
    /* 0x00008 */ void* pHost;
    /* 0x00010 */ s64 nLo;
    /* 0x00018 */ s64 nHi;
    /* 0x00020 */ s32 nCountAddress;
    /* 0x00024 */ s32 iDeviceDefault;
    /* 0x00028 */ u32 nPC;
    /* 0x0002C */ u32 nWaitPC;
    /* 0x00030 */ u32 nCallLast;
    /* 0x00034 */ struct cpu_function* pFunctionLast;
    /* 0x00038 */ s32 nReturnAddrLast;
    /* 0x0003C */ s32 survivalTimer;
    /* 0x00040 */ union __anon_0x3BCA0 aGPR[32];
    /* 0x00140 */ union __anon_0x3C0B4 aFPR[32];
    /* 0x00240 */ u64 aTLB[48][5];
    /* 0x009C0 */ s32 anFCR[32];
    /* 0x00A40 */ s64 anCP0[32];
    /* 0x00B40 */ s32 (* pfStep)(struct _CPU*);
    /* 0x00B44 */ s32 (* pfJump)(struct _CPU*);
    /* 0x00B48 */ s32 (* pfCall)(struct _CPU*);
    /* 0x00B4C */ s32 (* pfIdle)(struct _CPU*);
    /* 0x00B50 */ s32 (* pfRam)(struct _CPU*);
    /* 0x00B54 */ s32 (* pfRamF)(struct _CPU*);
    /* 0x00B58 */ u32 nTickLast;
    /* 0x00B5C */ u32 nRetrace;
    /* 0x00B60 */ u32 nRetraceUsed;
    /* 0x00B64 */ struct __anon_0x3C5C2* apDevice[256];
    /* 0x00F64 */ u8 aiDevice[65536];
    /* 0x10F64 */ void* gHeap1;
    /* 0x10F68 */ void* gHeap2;
    /* 0x10F6C */ u32 aHeap1Flag[192];
    /* 0x1126C */ u32 aHeap2Flag[13];
    /* 0x112A0 */ struct cpu_treeRoot* gTree;
    /* 0x112A4 */ struct _CPU_ADDRESS aAddressCache[256];
    /* 0x11EA4 */ s32 nCountCodeHack;
    /* 0x11EA8 */ struct __anon_0x3CB86 aCodeHack[32];
    /* 0x12028 */ s64 nTimeRetrace;
    /* 0x12030 */ struct OSAlarm alarmRetrace;
    /* 0x12058 */ u32 nFlagRAM;
    /* 0x1205C */ u32 nFlagCODE;
    /* 0x12060 */ u32 nCompileFlag;
    /* 0x12064 */ struct cpu_optimize nOptimize;
} __anon_0x3D1D0; // size = 0x12090

typedef enum __anon_0x3D867 {
    MIT_NONE = -1,
    MIT_SP = 0,
    MIT_SI = 1,
    MIT_AI = 2,
    MIT_VI = 3,
    MIT_PI = 4,
    MIT_DP = 5,
} __anon_0x3D867;

typedef struct __anon_0x3D8E2 {
    /* 0x00 */ char* szType;
    /* 0x04 */ u32 nMask;
    /* 0x08 */ enum __anon_0x3DE2E eCode;
    /* 0x0C */ enum __anon_0x3DC7F eType;
    /* 0x10 */ enum __anon_0x3D867 eTypeMips;
} __anon_0x3D8E2; // size = 0x14

typedef enum __anon_0x3D9B0 {
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
} __anon_0x3D9B0;

typedef enum __anon_0x3DC7F {
    SIT_NONE = -1,
    SIT_SW0 = 0,
    SIT_SW1 = 1,
    SIT_CART = 2,
    SIT_COUNTER = 3,
    SIT_RDB = 4,
    SIT_SP = 5,
    SIT_SI = 6,
    SIT_AI = 7,
    SIT_VI = 8,
    SIT_PI = 9,
    SIT_DP = 10,
    SIT_CPU_BREAK = 11,
    SIT_SP_BREAK = 12,
    SIT_FAULT = 13,
    SIT_THREADSTATUS = 14,
    SIT_PRENMI = 15,
    SIT_COUNT_ = 16,
} __anon_0x3DC7F;

typedef enum __anon_0x3DE2E {
    CEC_NONE = -1,
    CEC_INTERRUPT = 0,
    CEC_TLB_MODIFICATION = 1,
    CEC_TLB_LOAD = 2,
    CEC_TLB_STORE = 3,
    CEC_ADDRESS_LOAD = 4,
    CEC_ADDRESS_STORE = 5,
    CEC_BUS_INSTRUCTION = 6,
    CEC_BUS_DATA = 7,
    CEC_SYSCALL = 8,
    CEC_BREAK = 9,
    CEC_RESERVED = 10,
    CEC_COPROCESSOR = 11,
    CEC_OVERFLOW = 12,
    CEC_TRAP = 13,
    CEC_VCE_INSTRUCTION = 14,
    CEC_FLOAT = 15,
    CEC_RESERVED_16 = 16,
    CEC_RESERVED_17 = 17,
    CEC_RESERVED_18 = 18,
    CEC_RESERVED_19 = 19,
    CEC_RESERVED_20 = 20,
    CEC_RESERVED_21 = 21,
    CEC_RESERVED_22 = 22,
    CEC_WATCH = 23,
    CEC_RESERVED_24 = 24,
    CEC_RESERVED_25 = 25,
    CEC_RESERVED_26 = 26,
    CEC_RESERVED_27 = 27,
    CEC_RESERVED_28 = 28,
    CEC_RESERVED_29 = 29,
    CEC_RESERVED_30 = 30,
    CEC_VCE_DATA = 31,
    CEC_COUNT = 32,
} __anon_0x3DE2E;

// size = 0x10, address = 0x800FC050
struct _XL_OBJECTTYPE gClassFlash;

// size = 0x10, address = 0x800FC060
struct _XL_OBJECTTYPE gClassSram;

typedef enum __anon_0x3E568 {
    SM_NONE = -1,
    SM_RUNNING = 0,
    SM_STOPPED = 1,
} __anon_0x3E568;

// size = 0x4, address = 0x801458C0
struct __anon_0x3B750* gpSystem;

typedef struct __anon_0x3ECEB {
    /* 0x00 */ s32 configuration;
    /* 0x04 */ s32 size;
    /* 0x08 */ s32 offset;
    /* 0x0C */ char* buffer;
    /* 0x10 */ s32* writtenBlocks;
    /* 0x14 */ s32 writtenConfig;
} __anon_0x3ECEB; // size = 0x18

typedef struct OSCalendarTime {
    /* 0x00 */ s32 sec;
    /* 0x04 */ s32 min;
    /* 0x08 */ s32 hour;
    /* 0x0C */ s32 mday;
    /* 0x10 */ s32 mon;
    /* 0x14 */ s32 year;
    /* 0x18 */ s32 wday;
    /* 0x1C */ s32 yday;
    /* 0x20 */ s32 msec;
    /* 0x24 */ s32 usec;
} __anon_0x3EE8E; // size = 0x28

typedef struct CARDFileInfo {
    /* 0x00 */ s32 chan;
    /* 0x04 */ s32 fileNo;
    /* 0x08 */ s32 offset;
    /* 0x0C */ s32 length;
    /* 0x10 */ u16 iBlock;
    /* 0x12 */ u16 __padding;
} __anon_0x3EFFC; // size = 0x14

typedef struct __anon_0x3F0F4 {
    /* 0x000 */ s32 currentGame;
    /* 0x004 */ s32 fileSize;
    /* 0x008 */ char name[33];
    /* 0x02C */ s32 numberOfGames;
    /* 0x030 */ struct __anon_0x3ECEB game;
    /* 0x048 */ s32 changedDate;
    /* 0x04C */ s32 changedChecksum;
    /* 0x050 */ s32 gameSize[16];
    /* 0x090 */ s32 gameOffset[16];
    /* 0x0D0 */ s32 gameConfigIndex[16];
    /* 0x110 */ char gameName[16][33];
    /* 0x320 */ struct OSCalendarTime time;
    /* 0x348 */ struct CARDFileInfo fileInfo;
} __anon_0x3F0F4; // size = 0x35C

typedef enum __anon_0x3F30A {
    MC_E_NONE = 0,
    MC_E_BUSY = 1,
    MC_E_WRONGDEVICE = 2,
    MC_E_NOCARD = 3,
    MC_E_NOFILE = 4,
    MC_E_IOERROR = 5,
    MC_E_BROKEN = 6,
    MC_E_EXIST = 7,
    MC_E_NOENT = 8,
    MC_E_INSSPACE = 9,
    MC_E_NOPERM = 10,
    MC_E_LIMIT = 11,
    MC_E_NAMETOOLONG = 12,
    MC_E_ENCODING = 13,
    MC_E_CANCELED = 14,
    MC_E_FATAL = 15,
    MC_E_SECTOR_SIZE_INVALID = 16,
    MC_E_GAME_NOT_FOUND = 17,
    MC_E_CHECKSUM = 18,
    MC_E_NO_FREE_SPACE = 19,
    MC_E_NO_FREE_FILES = 20,
    MC_E_FILE_EXISTS = 21,
    MC_E_GAME_EXISTS = 22,
    MC_E_TIME_WRONG = 23,
    MC_E_WRITE_CORRUPTED = 24,
    MC_E_UNKNOWN = 25,
} __anon_0x3F30A;

typedef struct _MCARD {
    /* 0x000 */ struct __anon_0x3F0F4 file;
    /* 0x35C */ enum __anon_0x3F30A error;
    /* 0x360 */ s32 slot;
    /* 0x364 */ s32 (* pPollFunction)();
    /* 0x368 */ s32 pollPrevBytes;
    /* 0x36C */ s32 pollSize;
    /* 0x370 */ char pollMessage[256];
    /* 0x470 */ s32 saveToggle;
    /* 0x474 */ char* writeBuffer;
    /* 0x478 */ char* readBuffer;
    /* 0x47C */ s32 writeToggle;
    /* 0x480 */ s32 soundToggle;
    /* 0x484 */ s32 writeStatus;
    /* 0x488 */ s32 writeIndex;
    /* 0x48C */ s32 accessType;
    /* 0x490 */ s32 gameIsLoaded;
    /* 0x494 */ char saveFileName[256];
    /* 0x594 */ char saveComment[256];
    /* 0x694 */ char* saveIcon;
    /* 0x698 */ char* saveBanner;
    /* 0x69C */ char saveGameName[256];
    /* 0x79C */ s32 saveFileSize;
    /* 0x7A0 */ s32 saveGameSize;
    /* 0x7A4 */ s32 bufferCreated;
    /* 0x7A8 */ s32 cardSize;
    /* 0x7AC */ s32 wait;
    /* 0x7B0 */ s32 isBroken;
    /* 0x7B4 */ s32 saveConfiguration;
} __anon_0x3F5AC; // size = 0x7B8

// size = 0x7B8, address = 0x80115D90
struct _MCARD mCard;

// size = 0x4, address = 0x80144A9C
u32 gz_iconSize;

// size = 0x4, address = 0x80144A98
u32 gz_bnrSize;

typedef struct DVDDiskID {
    /* 0x0 */ char gameName[4];
    /* 0x4 */ char company[2];
    /* 0x6 */ u8 diskNumber;
    /* 0x7 */ u8 gameVersion;
    /* 0x8 */ u8 streaming;
    /* 0x9 */ u8 streamingBufSize;
    /* 0xA */ u8 padding[22];
} __anon_0x3FB5D; // size = 0x20

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
} __anon_0x3FCCD; // size = 0x30

typedef struct DVDFileInfo {
    /* 0x00 */ struct DVDCommandBlock cb;
    /* 0x30 */ u32 startAddr;
    /* 0x34 */ u32 length;
    /* 0x38 */ void (* callback)(s32, struct DVDFileInfo*);
} __anon_0x3FEF3; // size = 0x3C

typedef enum __anon_0x3FFCB {
    RLM_NONE = -1,
    RLM_PART = 0,
    RLM_FULL = 1,
    RLM_COUNT_ = 2,
} __anon_0x3FFCB;

typedef struct __anon_0x4002D {
    /* 0x0 */ s32 iCache;
    /* 0x4 */ u32 nSize;
    /* 0x8 */ u32 nTickUsed;
    /* 0xC */ char keep;
} __anon_0x4002D; // size = 0x10

typedef struct __anon_0x40141 {
    /* 0x00 */ s32 bWait;
    /* 0x04 */ s32 (* pCallback)();
    /* 0x08 */ u8* pTarget;
    /* 0x0C */ u32 nSize;
    /* 0x10 */ u32 nOffset;
} __anon_0x40141; // size = 0x14

typedef struct __anon_0x40221 {
    /* 0x00 */ s32 bWait;
    /* 0x04 */ s32 bDone;
    /* 0x08 */ s32 nResult;
    /* 0x0C */ u8* anData;
    /* 0x10 */ s32 (* pCallback)();
    /* 0x14 */ s32 iCache;
    /* 0x18 */ s32 iBlock;
    /* 0x1C */ s32 nOffset;
    /* 0x20 */ u32 nOffset0;
    /* 0x24 */ u32 nOffset1;
    /* 0x28 */ u32 nSize;
    /* 0x2C */ u32 nSizeRead;
} __anon_0x40221; // size = 0x30

typedef struct __anon_0x4040C {
    /* 0x0 */ s32 nPosition;
    /* 0x4 */ s32 nLineNumber;
} __anon_0x4040C; // size = 0x8

typedef struct __anon_0x40470 {
    /* 0x0 */ s32 nMode;
    /* 0x4 */ s32 nModeSave;
    /* 0x8 */ struct __anon_0x4040C save;
} __anon_0x40470; // size = 0x10

typedef struct __anon_0x404F1 {
    /* 0x00000 */ void* pHost;
    /* 0x00004 */ void* pBuffer;
    /* 0x00008 */ s32 bFlip;
    /* 0x0000C */ s32 bLoad;
    /* 0x00010 */ char acNameFile[513];
    /* 0x00214 */ u32 nSize;
    /* 0x00218 */ enum __anon_0x3FFCB eModeLoad;
    /* 0x0021C */ struct __anon_0x4002D aBlock[4096];
    /* 0x1021C */ u32 nTick;
    /* 0x10220 */ u8* pCacheRAM;
    /* 0x10224 */ u8 anBlockCachedRAM[1024];
    /* 0x10624 */ u8 anBlockCachedARAM[2046];
    /* 0x10E24 */ struct __anon_0x40141 copy;
    /* 0x10E38 */ struct __anon_0x40221 load;
    /* 0x10E68 */ s32 nCountBlockRAM;
    /* 0x10E6C */ s32 nSizeCacheRAM;
    /* 0x10E70 */ u8 acHeader[64];
    /* 0x10EB0 */ u32* anOffsetBlock;
    /* 0x10EB4 */ s32 nCountOffsetBlocks;
    /* 0x10EB8 */ struct __anon_0x40470 tagFile;
    /* 0x10EC8 */ u32 nChecksum;
    /* 0x10ECC */ struct DVDFileInfo fileInfo;
    /* 0x10F08 */ s32 offsetToRom;
} __anon_0x404F1; // size = 0x10F0C

typedef enum __anon_0x408CC {
    CT_NONE = 0,
    CT_CONTROLLER = 1,
    CT_CONTROLLER_W_PAK = 2,
    CT_CONTROLLER_W_RPAK = 3,
    CT_MOUSE = 4,
    CT_VOICE = 5,
    CT_4K = 6,
    CT_16K = 7,
    CT_COUNT = 8,
} __anon_0x408CC;

typedef struct __anon_0x409A5 {
    /* 0x00 */ void* pROM;
    /* 0x04 */ void* pRAM;
    /* 0x08 */ void* pHost;
    /* 0x0C */ u16 controllerType[5];
    /* 0x16 */ char controllerStatus[5];
    /* 0x1C */ enum __anon_0x408CC eControllerType[5];
} __anon_0x409A5; // size = 0x30

// Range: 0x80030848 -> 0x80030C84
static s32 systemSetupGameRAM(struct __anon_0x3B750* pSystem) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r27

    // Local variables
    char* szExtra; // r1+0x414
    s32 bExpansion; // r30
    s32 nSizeRAM; // r28
    s32 nSizeCacheROM; // r29
    s32 nSizeExtra; // r3
    struct __anon_0x404F1* pROM; // r29
    u32 nCode; // r28
    u32 iCode; // r1+0x8
    u32 anCode[256]; // r1+0x14

    // References
    // -> u32 gnFlagZelda;
}

// Erased
static s32 systemMapControllerIndex(s32 gameIndex, s32 configIndex) {
    // Parameters
    // s32 gameIndex; // r1+0xC
    // s32 configIndex; // r30

    // Local variables
    s32 i; // r31

    // References
    // -> static u32 contMap[5][20];
    // -> struct __anon_0x38B4E gSystemRomConfigurationList[1];
}

// Range: 0x8002FEC4 -> 0x80030848
s32 systemGetInitialConfiguration(struct __anon_0x404F1* pROM, s32 index) {
    // Parameters
    // struct __anon_0x404F1* pROM; // r23
    // s32 index; // r1+0x10

    // Local variables
    char* szText; // r1+0x14

    // References
    // -> struct __anon_0x38B4E gSystemRomConfigurationList[1];
    // -> static u32 contMap[5][20];
}

// Range: 0x8002D460 -> 0x8002FEC4
static s32 systemSetupGameALL(struct __anon_0x3B750* pSystem) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r18

    // Local variables
    s32 nSizeSound; // r23
    s32 iController; // r21
    s32 nSize; // r1+0xA0
    u32* anMode; // r1+0x9C
    s32 i; // r25
    u64 nTimeRetrace; // r1+0x10
    char acCode[5]; // r1+0x94
    char buf1[30]; // r1+0x74
    char buf2[30]; // r1+0x54
    struct DVDFileInfo fileInfo; // r1+0x18
    struct _CPU* pCPU; // r30
    struct __anon_0x404F1* pROM; // r19
    struct __anon_0x409A5* pPIF; // r27
    s32 defaultConfiguration; // r1+0x14

    // References
    // -> static u32 contMap[5][20];
    // -> struct __anon_0x38B4E gSystemRomConfigurationList[1];
    // -> struct _MCARD mCard;
    // -> struct __anon_0x3B750* gpSystem;
    // -> u32 gz_bnrSize;
    // -> u32 gz_iconSize;
    // -> u32 nTickMultiplier;
    // -> u32 gnFlagZelda;
}

// Erased
static s32 systemClearExceptions(struct __anon_0x3B750* pSystem) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r1+0x0

    // Local variables
    s32 iException; // r1+0x0
}

// Range: 0x8002D284 -> 0x8002D460
static s32 systemGetException(enum __anon_0x3DC7F eType, struct __anon_0x3D8E2* pException) {
    // Parameters
    // enum __anon_0x3DC7F eType; // r1+0x4
    // struct __anon_0x3D8E2* pException; // r1+0x8
}

// Range: 0x8002D274 -> 0x8002D284
static s32 systemGet8(char* pData) {
    // Parameters
    // char* pData; // r1+0x8
}

// Range: 0x8002D264 -> 0x8002D274
static s32 systemGet16(s16* pData) {
    // Parameters
    // s16* pData; // r1+0x8
}

// Range: 0x8002D254 -> 0x8002D264
static s32 systemGet32(s32* pData) {
    // Parameters
    // s32* pData; // r1+0x8
}

// Range: 0x8002D240 -> 0x8002D254
static s32 systemGet64(s64* pData) {
    // Parameters
    // s64* pData; // r1+0x8
}

// Range: 0x8002D238 -> 0x8002D240
static s32 systemPut8() {}

// Range: 0x8002D230 -> 0x8002D238
static s32 systemPut16() {}

// Range: 0x8002D228 -> 0x8002D230
static s32 systemPut32() {}

// Range: 0x8002D220 -> 0x8002D228
static s32 systemPut64() {}

// Range: 0x8002D0E8 -> 0x8002D220
static s32 __systemCopyROM_Complete() {
    // Local variables
    s32 iAddress; // r30
    s32 nCount; // r1+0x88
    u32 nAddress0; // r30
    u32 nAddress1; // r31
    u32 anAddress[32]; // r1+0x8

    // References
    // -> struct __anon_0x3B750* gpSystem;
}

// Range: 0x8002CFF4 -> 0x8002D0E8
s32 systemCopyROM(struct __anon_0x3B750* pSystem, s32 nOffsetRAM, s32 nOffsetROM, s32 nSize, s32 (* pCallback)()) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r29
    // s32 nOffsetRAM; // r4
    // s32 nOffsetROM; // r30
    // s32 nSize; // r1+0x14
    // s32 (* pCallback)(); // r31

    // Local variables
    void* pTarget; // r1+0x1C
}

// Erased
static s32 systemSetBreak(struct __anon_0x3B750* pSystem, s64 nAddress) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r1+0x0
    // s64 nAddress; // r1+0x8
}

// Erased
static s32 systemClearBreak(struct __anon_0x3B750* pSystem) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r1+0x0
}

// Range: 0x8002CF84 -> 0x8002CFF4
s32 systemSetMode(struct __anon_0x3B750* pSystem, enum __anon_0x3E568 eMode) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r30
    // enum __anon_0x3E568 eMode; // r31

    // References
    // -> struct _XL_OBJECTTYPE gClassSystem;
}

// Range: 0x8002CF1C -> 0x8002CF84
s32 systemGetMode(struct __anon_0x3B750* pSystem, enum __anon_0x3E568* peMode) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r30
    // enum __anon_0x3E568* peMode; // r31

    // References
    // -> struct _XL_OBJECTTYPE gClassSystem;
}

// Range: 0x8002CE30 -> 0x8002CF1C
s32 systemSetStorageDevice(struct __anon_0x3B750* pSystem, enum __anon_0x3D9B0 storageDevice) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r30
    // enum __anon_0x3D9B0 storageDevice; // r31

    // References
    // -> struct _XL_OBJECTTYPE gClassSram;
    // -> struct _XL_OBJECTTYPE gClassFlash;
}

// Range: 0x8002CE20 -> 0x8002CE30
s32 systemGetStorageDevice(struct __anon_0x3B750* pSystem, enum __anon_0x3D9B0* pStorageDevice) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r1+0x0
    // enum __anon_0x3D9B0* pStorageDevice; // r1+0x4
}

// Range: 0x8002CC68 -> 0x8002CE20
s32 systemReset(struct __anon_0x3B750* pSystem) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r29

    // Local variables
    s64 nPC; // r1+0x10
    s32 nOffsetRAM; // r4
    enum __anon_0x3D9B0 eObject; // r30
}

// Range: 0x8002CB6C -> 0x8002CC68
s32 systemExecute(struct __anon_0x3B750* pSystem, s32 nCount) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r31
    // s32 nCount; // r4

    // References
    // -> struct _XL_OBJECTTYPE gClassSystem;
}

// Range: 0x8002CA14 -> 0x8002CB6C
s32 systemCheckInterrupts(struct __anon_0x3B750* pSystem) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r25

    // Local variables
    s32 iException; // r30
    s32 nMaskFinal; // r29
    s32 bUsed; // r28
    s32 bDone; // r27
    struct __anon_0x3D8E2 exception; // r1+0xC
    enum __anon_0x3DE2E eCodeFinal; // r26
}

// Range: 0x8002C9DC -> 0x8002CA14
s32 systemExceptionPending(struct __anon_0x3B750* pSystem, enum __anon_0x3DC7F eType) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r1+0x0
    // enum __anon_0x3DC7F eType; // r1+0x4
}

// Range: 0x8002C108 -> 0x8002C9DC
s32 systemEvent(struct __anon_0x3B750* pSystem, s32 nEvent, void* pArgument) {
    // Parameters
    // struct __anon_0x3B750* pSystem; // r31
    // s32 nEvent; // r1+0xC
    // void* pArgument; // r26

    // Local variables
    struct _CPU* pCPU; // r30
    struct __anon_0x3D8E2 exception; // r1+0x1C
    enum __anon_0x3D9B0 eObject; // r1+0x8
    enum __anon_0x3D9B0 storageDevice; // r1+0x8

    // References
    // -> struct _XL_OBJECTTYPE gClassRdb;
    // -> struct _XL_OBJECTTYPE gClassPeripheral;
    // -> struct _XL_OBJECTTYPE gClassLibrary;
    // -> struct _XL_OBJECTTYPE gClassSerial;
    // -> struct _XL_OBJECTTYPE gClassVideo;
    // -> struct _XL_OBJECTTYPE gClassAudio;
    // -> struct _XL_OBJECTTYPE gClassDisk;
    // -> struct _XL_OBJECTTYPE gClassMips;
    // -> struct _XL_OBJECTTYPE gClassRDP;
    // -> struct _XL_OBJECTTYPE gClassRSP;
    // -> struct _XL_OBJECTTYPE gClassROM;
    // -> struct _XL_OBJECTTYPE gClassRAM;
    // -> struct _XL_OBJECTTYPE gClassPIF;
    // -> struct _XL_OBJECTTYPE gClassCPU;
    // -> struct __anon_0x3AF88* gpSound;
    // -> struct __anon_0x3A0FC* gpFrame;
}
