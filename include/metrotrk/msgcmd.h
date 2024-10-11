#ifndef __MSGCMD_H__
#define __MSGCMD_H__

#include "dolphin/types.h"

/****************************************************************************/
/*
 *    Commands
 *
 *    constant definitions of commands sent from host to target
 *
 *    L1 = Level 1 CWDS (required)
 *    L2 = Level 2 CWDS (extended board-level debugger)
 *    L3 = Level 3 CWDS (Hypervisor-level debugger)
 *    L4 = Level 3 CWDS (OS-level debugger)
 */
/****************************************************************************/

#define DS_PROTOCOL_MIN 1 /* L1 */
#define DS_PROTOCOL_BOARD 2 /* L2 */
#define DS_PROTOCOL_HYPER 3 /* L3 */
#define DS_PROTOCOL_RTOS 4 /* L4 */

#if (!defined(DS_PROTOCOL)) || (DS_PROTOCOL == 0)
#pragma error "Protocol level must be defined"
#endif

#define DS_PROTOCOL_MAJOR_VERSION_1 1
#define DS_PROTOCOL_MINOR_VERSION_10 10

#define DS_PROTOCOL_MAJOR_VERSION DS_PROTOCOL_MAJOR_VERSION_1
#define DS_PROTOCOL_MINOR_VERSION DS_PROTOCOL_MINOR_VERSION_10

#define DS_PROTOCOL_VERSION_STRING version_str(DS_PROTOCOL_MAJOR_VERSION, DS_PROTOCOL_MINOR_VERSION)

typedef enum MessageCommandID {

    kDSPing = 0x00,
    kDSConnect = 0x01,
    kDSDisconnect = 0x02,
    kDSReset = 0x03,
    kDSVersions = 0x04,
    kDSSupportMask = 0x05,
    kDSCPUType = 0x06,
    kDSConfigTransport = 0x07,
    kDSConfigAutoDownload = 0x08,
    kDSReadMemory = 0x10,
    kDSWriteMemory = 0x11,
    kDSReadRegisters = 0x12,
    kDSWriteRegisters = 0x13,
    kDSFillMemory = 0x14,
    kDSCopyMemory = 0x15,
    kDSFlushCache = 0x16,
    kDSCheckTargetState = 0x17,
    kDSContinue = 0x18,
    kDSStep = 0x19,
    kDSStop = 0x1a,
    kDSSetBreak = 0x1b,
    kDSClearBreak = 0x1c,
    kDSDownload = 0x1d,
    kDSModifyBreakThread = 0x1e,
    kDSNotifyFileInput = 0x20,
    kDSBlockFileIo = 0x21,
    kDSOSCreateItem = 0x40,
    kDSOSDeleteItem = 0x41,
    kDSOSReadInfo = 0x42,
    kDSOSWriteInfo = 0x43,
    kDSOSWriteFile = 0x48,
    kDSOSReadFile = 0x49,
    kDSOSOpenFile = 0x4a,
    kDSOSCloseFile = 0x4b,
    kDSOSPositionFile = 0x4c,
    kDSOSInstallFile = 0x4d,
    kDSOSInstallFile2 = 0x4e,
    kDSOSSendSignal = 0x4f,
    kDSWatchpoints = 0x50,
    kDSExtendedSpace = 0x60,
    kDSReplyACK = 0x80,
    kDSReplyNAK = 0xFF,
    kDSNotifyStopped = 0x90,
    kDSNotifyException = 0x91,
    kDSNotifyInternalError = 0x92,
    kDSNotifyCoreReleased = 0x94,
    kDSNotifyAttachedToAllThreads = 0x98,
    kDSOSNotifyCreated = 0xa0,
    kDSOSNotifyDeleted = 0xa1,
    kDSOSNotifyProcessorStarted = 0xa2,
    kDSOSNotifyProcessorStandby = 0xa6,
    kDSOSNotifyProcessorReset = 0xa7,
    kDSWriteFile = 0xD0,
    kDSReadFile = 0xD1,
    kDSOpenFile = 0xD2,
    kDSCloseFile = 0xD3,
    kDSPositionFile = 0xD4

} MessageCommandID;

#define DS_MIN_MSG_LENGTH 1
#define DS_MIN_REPLY_LENGTH 2

#define DS_MIN_MSG_PING_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_PING_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_CONNECT_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_CONNECT_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_DISCONNECT_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_DISCONNECT_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_RESET_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_RESET_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_VERSIONS_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_VERSIONS_LENGTH (DS_MIN_REPLY_LENGTH + 4)

#define DS_MIN_MSG_CPUTYPE_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_CPUTYPE_LENGTH (DS_MIN_REPLY_LENGTH + 7)

#define DS_CPU_MAJOR_PPC 0x00
#define DS_CPU_MAJOR_MIPS 0x01
#define DS_CPU_MAJOR_NEC_V8XX 0x02
#define DS_CPU_MAJOR_MOT_DSP 0x03
#define DS_CPU_MAJOR_ARM 0x04
#define DS_CPU_MAJOR_X86 0x05
#define DS_CPU_MAJOR_MCORE 0x06
#define DS_CPU_MAJOR_M68K 0x07
#define DS_CPU_MAJOR_SUPERH 0x08

#define DS_CPU_MIPS_R3000 0x00
#define DS_CPU_MIPS_R3081E 0x01

#define DS_CPU_MIPS_VR4100 0x20
#define DS_CPU_MIPS_VR4300 0x21
#define DS_CPU_MIPS_VR4500 0x22
#define DS_CPU_MIPS_VR4111 0x23
#define DS_CPU_MIPS_TR4101 0x24

#define DS_CPU_MIPS_VR5000 0x40

#define DS_CPU_PPC_403 0x00

#define DS_CPU_PPC_5XX 0x20
#define DS_CPU_PPC_505 0x21
#define DS_CPU_PPC_509 0x22
#define DS_CPU_PPC_50X 0x27
#define DS_CPU_PPC_555 0x28

#define DS_CPU_PPC_603E 0x40

#define DS_CPU_PPC_7XX 0x50
#define DS_CPU_PPC_740 0x51
#define DS_CPU_PPC_750 0x52
#define DS_CPU_PPC_7400 0x53
#define DS_CPU_PPC_7410 0x54

#define DS_CPU_PPC_8260 0x61

#define DS_CPU_PPC_8XX 0x80
#define DS_CPU_PPC_821 0x81
#define DS_CPU_PPC_823 0x82
#define DS_CPU_PPC_860 0x83

#define DS_CPU_NEC_V8XX_V810 0x00
#define DS_CPU_NEC_V8XX_V821 0x01

#define DS_CPU_NEC_V8XX_V830 0x10
#define DS_CPU_NEC_V8XX_V831 0x11
#define DS_CPU_NEC_V8XX_V832 0x12

#define DS_CPU_NEC_V8XX_V850 0x20
#define DS_CPU_NEC_V8XX_V853 0x21
#define DS_CPU_NEC_V8XX_V850E 0x22
#define DS_CPU_NEC_V8XX_V850_SA1 0x23

#define DS_CPU_M68K_68000 0x00
#define DS_CPU_M68K_68020 0x02
#define DS_CPU_M68K_68030 0x04
#define DS_CPU_M68K_68040 0x06
#define DS_CPU_M68K_68060 0x08

#define DS_CPU_M68K_68302 0x20
#define DS_CPU_M68K_68306 0x22
#define DS_CPU_M68K_68307 0x24
#define DS_CPU_M68K_68328 0x26
#define DS_CPU_M68K_68EZ328 0x28
#define DS_CPU_M68K_68VZ328 0x29
#define DS_CPU_M68K_68340 0x2a
#define DS_CPU_M68K_68360 0x2c

#define DS_CPU_M68K_CF5102 0x80
#define DS_CPU_M68K_CF5202 0x82
#define DS_CPU_M68K_CF5204 0x84
#define DS_CPU_M68K_CF5206 0x86
#define DS_CPU_M68K_CF5206E 0x88
#define DS_CPU_M68K_CF5307 0x8a

#define DS_CPU_MCORE_200 0x00
#define DS_CPU_MCORE_340 0x20

typedef u8 DSSupportMask[32]; /* 256 bits total */

#define DS_MIN_MSG_SUPPORTMASK_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_SUPPORTMASK_LENGTH (DS_MIN_REPLY_LENGTH + sizeof(DSSupportMask) + 1)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_READMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 15)
#else
#define DS_MIN_MSG_READMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 7)
#endif
#define DS_MIN_REPLY_READMEMORY_LENGTH (DS_MIN_REPLY_LENGTH + 2)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_WRITEMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 15)
#else
#define DS_MIN_MSG_WRITEMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 7)
#endif
#define DS_MIN_REPLY_WRITEMEMORY_LENGTH (DS_MIN_REPLY_LENGTH + 2)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_FILLMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 18)
#else
#define DS_MIN_MSG_FILLMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 10)
#endif
#define DS_MIN_REPLY_FILLMEMORY_LENGTH (DS_MIN_REPLY_LENGTH)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_COPYMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 21)
#else
#define DS_MIN_MSG_COPYMEMORY_LENGTH (DS_MIN_MSG_LENGTH + 13)
#endif
#define DS_MIN_REPLY_COPYMEMORY_LENGTH (DS_MIN_REPLY_LENGTH)

#define DS_MSG_MEMORY_SEGMENTED 0x01
#define DS_MSG_MEMORY_EXTENDED 0x02
#define DS_MSG_MEMORY_PROTECTED 0x04
#define DS_MSG_MEMORY_USERVIEW 0x08

#define DS_MSG_MEMORY_SPACE_PROGRAM 0x00
#define DS_MSG_MEMORY_SPACE_DATA 0x40
#define DS_MSG_MEMORY_SPACE_IO 0x80

#define TRK_MSG_HEADER_LENGTH DS_MSG_MEMORY_SPACE_DATA
#define TRK_MSG_REPLY_HEADER_LENGTH (TRK_MSG_HEADER_LENGTH + DS_MIN_MSG_LENGTH)

#define DS_MSG_MEMORY_SPACE_MASK 0xC0

#define DS_MAXREADWRITELENGTH 0x0800
#define DS_MAXMESSAGESIZE (DS_MAXREADWRITELENGTH + 0x80)

#define DS_MIN_MSG_FLUSHCACHE_LENGTH (DS_MIN_MSG_LENGTH + 9)
#define DS_MIN_REPLY_FLUSHCACHE_LENGTH (DS_MIN_REPLY_LENGTH)

#define DS_MSG_CACHE_TYPE_INSTRUCTION 0x01
#define DS_MSG_CACHE_TYPE_DATA 0x02
#define DS_MSG_CACHE_TYPE_SECONDARY 0x04

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_READREGISTERS_LENGTH (DS_MIN_MSG_LENGTH + 13)
#else
#define DS_MIN_MSG_READREGISTERS_LENGTH (DS_MIN_MSG_LENGTH + 5)
#endif
#define DS_MIN_REPLY_READREGISTERS_LENGTH DS_MIN_REPLY_LENGTH

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_WRITEREGISTERS_LENGTH (DS_MIN_MSG_LENGTH + 13)
#else
#define DS_MIN_MSG_WRITEREGISTERS_LENGTH (DS_MIN_MSG_LENGTH + 5)
#endif
#define DS_MIN_REPLY_WRITEREGISTERS_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MSG_REGISTERS_TYPE_MASK 0x07
#define DS_MSG_REGISTERS_TYPE_SHIFT 0

typedef enum DSMessageRegisterOptions {
    kDSRegistersDefault = 0x0,
    kDSRegistersFP = 0x1,
    kDSRegistersExtended1 = 0x2,
    kDSRegistersExtended2 = 0x3
} DSMessageRegisterOptions;

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_CONTINUE_LENGTH (DS_MIN_MSG_LENGTH + 8)
#else
#define DS_MIN_MSG_CONTINUE_LENGTH DS_MIN_MSG_LENGTH
#endif
#define DS_MIN_REPLY_CONTINUE_LENGTH DS_MIN_REPLY_LENGTH

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_STEP_COUNT_LENGTH (DS_MIN_MSG_LENGTH + 10)
#define DS_MIN_MSG_STEP_RANGE_LENGTH (DS_MIN_MSG_LENGTH + 17)
#else
#define DS_MIN_MSG_STEP_COUNT_LENGTH (DS_MIN_MSG_LENGTH + 2)
#define DS_MIN_MSG_STEP_RANGE_LENGTH (DS_MIN_MSG_LENGTH + 9)
#endif
#define DS_MIN_MSG_STEP_LENGTH (DS_MIN_MSG_STEP_COUNT_LENGTH)
#define DS_MIN_REPLY_STEP_LENGTH DS_MIN_REPLY_LENGTH

typedef enum {
    kDSStepIntoCount = 0x00,
    kDSStepIntoRange = 0x01,
    kDSStepOverCount = 0x10,
    kDSStepOverRange = 0x11
} DSMessageStepOptions;

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_STOP_LENGTH (DS_MIN_MSG_LENGTH + 3)
#else
#define DS_MIN_MSG_STOP_LENGTH (DS_MIN_MSG_LENGTH + 2)
#endif
#define DS_MIN_REPLY_STOP_LENGTH DS_MIN_REPLY_LENGTH

#if DS_PROTOCOL == DS_PROTOCOL_RTOS

typedef enum {
    kDSStopSystem = 0x0,
    kDSStopProcess = 0x1,
    kDSStopThread = 0x2
} DSMessageStopOptions;

#endif

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_SETBREAK_LENGTH (DS_MIN_MSG_LENGTH + 13)
#else
#define DS_MIN_MSG_SETBREAK_LENGTH (DS_MIN_MSG_LENGTH + 5)
#endif
#define DS_MIN_REPLY_SETBREAK_LENGTH DS_MIN_REPLY_LENGTH

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_CLEARBREAK_LENGTH (DS_MIN_MSG_LENGTH + 13)
#else
#define DS_MIN_MSG_CLEARBREAK_LENGTH (DS_MIN_MSG_LENGTH + 5)
#endif
#define DS_MIN_REPLY_CLEARBREAK_LENGTH DS_MIN_REPLY_LENGTH

#if 0 // NOT IMPLEMENTED ON THE WII / NDEV
typedef enum
{
    kDSBreakSoftware    = 0x00,       
    kDSBreakHardware    = 0x01        
} DSMessageBreakOptions;
#endif

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_SETWATCH_LENGTH (DS_MIN_MSG_LENGTH + 17)
#else
#define DS_MIN_MSG_SETWATCH_LENGTH (DS_MIN_MSG_LENGTH + 9)
#endif
#define DS_MIN_REPLY_SETWATCH_LENGTH DS_MIN_REPLY_LENGTH

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_CLEARWATCH_LENGTH (DS_MIN_MSG_LENGTH + 13)
#else
#define DS_MIN_MSG_CLEARWATCH_LENGTH (DS_MIN_MSG_LENGTH + 5)
#endif
#define DS_MIN_REPLY_CLEARWATCH_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MSG_WATCH_CONDITION_READ 0x10
#define DS_MSG_WATCH_CONDITION_WRITE 0x20

#define DS_MSG_WATCH_CONDITION_MASK 0x30

typedef enum {
    kDSWatchSoftware = 0x00,
    kDSWatchHardware = 0x01
} DSMessageWatchOptions;

#define DS_MIN_MSG_DOWNLOAD_LENGTH (DS_MIN_MSG_LENGTH + 19)
#define DS_MIN_REPLY_CLEARBREAK_LENGTH DS_MIN_REPLY_LENGTH

typedef enum {
    kDSMessageDownloadTFTP = 0x0
} DSMessageDownloadOptions;

#define DS_MIN_MSG_NOTIFYSTOPPED_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_NOTIFYSTOPPED_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_NOTIFYEXCEPTION_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_NOTIFYEXCEPTION_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_NOTIFYINTERNALERROR_LENGTH (DS_MIN_MSG_LENGTH + 1)
#define DS_MIN_REPLY_NOTIFYINTERNALERROR_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_OSNOTIFYCREATED_LENGTH DS_MIN_MSG_LENGTH
#define DS_MIN_REPLY_OSNOTIFYCREATED_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_OSNOTIFYDELETED_LENGTH (DS_MIN_MSG_LENGTH + 2)
#define DS_MIN_REPLY_OSNOTIFYDELETED_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_OSCREATEITEM_LENGTH (DS_MIN_MSG_LENGTH + 2)
#define DS_MIN_REPLY_OSCREATEITEM_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_OSDELETEITEM_LENGTH (DS_MIN_MSG_LENGTH + 2)
#define DS_MIN_REPLY_OSDELETEITEM_LENGTH DS_MIN_REPLY_LENGTH

typedef enum {
    kDSOSProcessItem = 0x0000,
    kDSOSThreadItem = 0x0001,
    kDSOSDLLItem = 0x0002,
    kDSOSAppItem = 0x0003,
    kDSOSMemBlockItem = 0x0004
} DSOSItemTypes;

#define DS_MIN_MSG_OSREADINFO_LENGTH (DS_MIN_MSG_LENGTH + 2)
#define DS_MIN_REPLY_OSREADINFO_LENGTH DS_MIN_REPLY_LENGTH

#define DS_MIN_MSG_OSWRITEINFO_LENGTH (DS_MIN_MSG_LENGTH + 2)
#define DS_MIN_REPLY_OSWRITEINFO_LENGTH DS_MIN_REPLY_LENGTH

typedef enum {
    kDSOSProcessList = 0x0000,
    kDSOSProcessState = 0x0001,
    kDSOSThreadList = 0x0002,
    kDSOSThreadState = 0x0003,
    kDSOSDLLList = 0x0004,
    kDSOSDLLState = 0x0005
} DSOSInfoTypes;

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_WRITEFILE_LENGTH (DS_MIN_MSG_LENGTH + 14)
#else
#define DS_MIN_MSG_WRITEFILE_LENGTH (DS_MIN_MSG_LENGTH + 6)
#endif
#define DS_MIN_REPLY_WRITEFILE_LENGTH (DS_MIN_REPLY_LENGTH + 3)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_READFILE_LENGTH (DS_MIN_MSG_LENGTH + 14)
#else
#define DS_MIN_MSG_READFILE_LENGTH (DS_MIN_MSG_LENGTH + 6)
#endif
#define DS_MIN_REPLY_READFILE_LENGTH (DS_MIN_REPLY_LENGTH + 3)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_OPENFILE_LENGTH (DS_MIN_MSG_LENGTH + 11)
#else
#define DS_MIN_MSG_OPENFILE_LENGTH (DS_MIN_MSG_LENGTH + 3)
#endif
#define DS_MIN_REPLY_OPENFILE_LENGTH (DS_MIN_REPLY_LENGTH + 5)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_CLOSEFILE_LENGTH (DS_MIN_MSG_LENGTH + 12)
#else
#define DS_MIN_MSG_CLOSEFILE_LENGTH (DS_MIN_MSG_LENGTH + 4)
#endif
#define DS_MIN_REPLY_CLOSEFILE_LENGTH (DS_MIN_REPLY_LENGTH + 1)

#if DS_PROTOCOL == DS_PROTOCOL_RTOS
#define DS_MIN_MSG_POSITIONFILE_LENGTH (DS_MIN_MSG_LENGTH + 13)
#else
#define DS_MIN_MSG_POSITIONFILE_LENGTH (DS_MIN_MSG_LENGTH + 5)
#endif
#define DS_MIN_REPLY_POSITIONFILE_LENGTH (DS_MIN_REPLY_LENGTH + 1)

typedef enum DSFileHandle {
    kDSStdin = 0x00,
    kDSStdout = 0x01,
    kDSStderr = 0x02
} DSFileHandle;

typedef enum DSIOResult {
    kDSIONoError = 0x00,
    kDSIOError = 0x01,
    kDSIOEOF = 0x02
} DSIOResult;

typedef enum DSFileOpenModes {
    kDSFileOpenRead = 0x01,
    kDSFileOpenWrite = 0x02,
    kDSFileOpenAppend = 0x04,
    kDSFileOpenBinary = 0x08
} DSFileOpenModes;

typedef enum DSFilePositionModes {
    kDSFileSeekSet = 0x00,
    kDSFileSeekCur = 0x01,
    kDSFileSeekEnd = 0x02
} DSFilePositionModes;

typedef enum {
    kDSReplyNoError = 0x00,
    kDSReplyError = 0x01,
    kDSReplyPacketSizeError = 0x02,
    kDSReplyCWDSError = 0x03,
    kDSReplyEscapeError = 0x04,
    kDSReplyBadFCS = 0x05,
    kDSReplyOverflow = 0x06,

    kDSReplyUnsupportedCommandError = 0x10,
    kDSReplyParameterError = 0x11,
    kDSReplyUnsupportedOptionError = 0x12,
    kDSReplyInvalidMemoryRange = 0x13,
    kDSReplyInvalidRegisterRange = 0x14,
    kDSReplyCWDSException = 0x15,
    kDSReplyNotStopped = 0x16,

    kDSReplyOsError = 0x20,
    kDSReplyInvalidProcessId = 0x21,
    kDSReplyInvalidThreadId = 0x22
} DSReplyError;

#endif
