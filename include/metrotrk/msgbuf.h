#ifndef _METROTRK_MSGBUF_H
#define _METROTRK_MSGBUF_H

#include "metrotrk/dserror.h"
#include "metrotrk/msgcmd.h"
#include "metrotrk/target.h"
#include "dolphin/types.h"
#include "stddef.h"

#define GetFreeBuffer(id, b) TRK_GetFreeBuffer(id, b)
#define ReleaseBuffer(id) TRK_ReleaseBuffer(id)

enum {
    kMessageBuffersFull = 0x0300,
    kMessageBufferOverflow,
    kMessageBufferUnderflow
};

typedef s32 MessageBufferId;

enum {
    kInvalidMessageBufferId = -1
};

#ifndef TRK_EXTRA_BUFFER_COUNT
#define TRK_EXTRA_BUFFER_COUNT 0
#endif

#if defined(DEBUGIO_RAM) && defined(DB_RAM_CONSOLE_DUMP)
#define DB_RAM_BUFFERS 1
#else
#define DB_RAM_BUFFERS 0
#endif

#define kMessageBufferCount (3 + DB_RAM_BUFFERS + TRK_EXTRA_BUFFER_COUNT)

#define DS_MAXREADWRITELENGTH 0x0800
#define DS_MAXMESSAGESIZE (DS_MAXREADWRITELENGTH + 0x80)
#define kMessageBufferSize (DS_MAXMESSAGESIZE)

typedef struct MessageBuffer {
    bool fInUse;
    u32 fLength;
    u32 fPosition;
    u8 fData[kMessageBufferSize];
} MessageBuffer;

typedef enum ResetBufferOption {
    kZero,
    kDontZero
} ResetBufferOption;

typedef u8 ui128[16];

DSError TRK_InitializeMessageBuffers(void);
MessageBuffer* TRKGetBuffer(MessageBufferId bufferID);
DSError TRK_GetFreeBuffer(MessageBufferId* returnedBufferID, MessageBuffer** buffer);
void TRK_ReleaseBuffer(MessageBufferId id);
void TRKResetBuffer(MessageBuffer* buffer, ResetBufferOption option);
DSError TRK_SetBufferPosition(MessageBuffer* buffer, u32 bufferPosition);
DSError TRK_AppendBuffer(MessageBuffer* buffer, const void* data, size_t length);
DSError TRK_ReadBuffer(MessageBuffer* buffer, void* data, size_t length);
DSError TRKAppendBuffer1_ui8(MessageBuffer* buffer, const u8 data);
DSError TRKAppendBuffer1_ui16(MessageBuffer* buffer, const u16 data);
DSError TRKAppendBuffer1_ui32(MessageBuffer* buffer, const u32 data);
DSError TRKAppendBuffer1_ui64(MessageBuffer* buffer, const u64 data);
DSError TRKAppendBuffer1_ui128(MessageBuffer* buffer, const ui128 data);
DSError TRKAppendBuffer_ui8(MessageBuffer* buffer, const u8* data, s32 count);
DSError TRKAppendBuffer_ui16(MessageBuffer* buffer, const u16* data, s32 count);
DSError TRKAppendBuffer_ui32(MessageBuffer* buffer, const u32* data, s32 count);
DSError TRKAppendBuffer_ui64(MessageBuffer* buffer, const u64* data, s32 count);
DSError TRKAppendBuffer_ui128(MessageBuffer* buffer, const ui128* data, s32 count);
DSError TRKReadBuffer1_ui8(MessageBuffer* buffer, u8* data);
DSError TRKReadBuffer1_ui16(MessageBuffer* buffer, u16* data);
DSError TRKReadBuffer1_ui32(MessageBuffer* buffer, u32* data);
DSError TRKReadBuffer1_ui64(MessageBuffer* buffer, u64* data);
DSError TRKReadBuffer1_ui128(MessageBuffer* buffer, ui128* data);
DSError TRKReadBuffer_ui8(MessageBuffer* buffer, u8* data, s32 count);
DSError TRKReadBuffer_ui16(MessageBuffer* buffer, u16* data, s32 count);
DSError TRKReadBuffer_ui32(MessageBuffer* buffer, u32* data, s32 count);
DSError TRKReadBuffer_ui64(MessageBuffer* buffer, u64* data, s32 count);
DSError TRKReadBuffer_ui128(MessageBuffer* buffer, ui128* data, s32 count);

#endif
