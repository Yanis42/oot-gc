// main sd interface, will host the device and the main implementation

#include "emulator/system.h"
#include "gz/sd.h"
#include "dolphin.h"

#define DEBUG 1

#if DEBUG
#define OSREPORT OSReport
#else
#define OSREPORT(...) (void)0
#endif

_XL_OBJECTTYPE gClassSD = {
    "GZ-SD",
    sizeof(SD),
    NULL,
    (EventFunc)sdEvent,
};

const int SD_STRING_MAX_SIZE = 255;

// This function only clears the string buffer, but it may have output the
// string to the console in debug mode.
inline void sdPrintString(SD* pSD) {
    s32 iCounter;

    pSD->szString[pSD->nIndexString + 1] = '\0';
    OSREPORT("message from gz: '%s'", pSD->szString);

    for (iCounter = 0; iCounter < pSD->nIndexString; iCounter++) {
        pSD->szString[iCounter] = ' ';
    }
    pSD->nIndexString = 0;
}

static bool sdPut8(SD* pSD, u32 nAddress, s8* pData) { 
    OSREPORT("sdPut8: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);
    return false;
}

static bool sdPut16(SD* pSD, u32 nAddress, s16* pData) { 
    OSREPORT("sdPut16: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);
    return false;
}

static bool sdPut32(SD* pSD, u32 nAddress, s32* pData) { 
    s32 nLength;
    s32 iCounter;

    OSREPORT("sdPut32: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);

    switch (nAddress & 0xF) {
        case 0x0:
            nLength = (*pData >> 24) & 3;
            switch ((*pData >> 26) & 0x3F) {
                case 0:
                    return 0;
                case 1:
                    switch (nLength) {
                        case 0:
                            break;
                        case 1:
                            pSD->szString[pSD->nIndexString] = (s32)((*pData >> 16) & 0xFF);
                            sdPrintString(pSD);
                            break;
                        case 2:
                            pSD->szString[pSD->nIndexString] = (s32)((*pData >> 16) & 0xFF);
                            if (pSD->szString[pSD->nIndexString] == '\n') {
                                sdPrintString(pSD);
                            } else if (pSD->nIndexString >= SD_STRING_MAX_SIZE) {
                                sdPrintString(pSD);
                            } else {
                                pSD->nIndexString++;
                            }
                            pSD->szString[pSD->nIndexString] = (s32)((*pData >> 8) & 0xFF);
                            sdPrintString(pSD);
                            break;
                        case 3:
                            pSD->szString[pSD->nIndexString] = (s32)((*pData >> 16) & 0xFF);
                            if (pSD->szString[pSD->nIndexString] == '\n') {
                                sdPrintString(pSD);
                            } else if (pSD->nIndexString >= SD_STRING_MAX_SIZE) {
                                sdPrintString(pSD);
                            } else {
                                pSD->nIndexString++;
                            }
                            pSD->szString[pSD->nIndexString] = (s32)((*pData >> 8) & 0xFF);
                            if (pSD->szString[pSD->nIndexString] == '\n') {
                                sdPrintString(pSD);
                            } else if (pSD->nIndexString >= SD_STRING_MAX_SIZE) {
                                sdPrintString(pSD);
                            } else {
                                pSD->nIndexString++;
                            }
                            pSD->szString[pSD->nIndexString] = *pData & 0xFF;
                            if (pSD->szString[pSD->nIndexString] == '\n') {
                                sdPrintString(pSD);
                            } else if (pSD->nIndexString >= SD_STRING_MAX_SIZE) {
                                sdPrintString(pSD);
                            } else {
                                pSD->nIndexString++;
                            }
                            break;
                        default:
                            return 0;
                    }
                    xlObjectEvent(pSD->pHost, 0x1000, (void*)4);
                    break;
                case 2:
                    return 0;
                case 3:
                    return 0;
                case 4:
                    return 0;
                case 5:
                    return 0;
                case 6:
                    return 0;
                case 7:
                    return 0;
                case 8:
                    return 0;
                case 9:
                    return 0;
                case 10:
                    return 0;
                case 11:
                    return 0;
                case 12:
                    return 0;
                case 22: // bug?
                    return 0;
                case 13:
                    return 0;
                case 14:
                    return 0;
                case 15:
                    return 0;
                case 16:
                    return 0;
                case 17:
                    return 0;
                case 18:
                    return 0;
                case 19:
                    return 0;
                case 20:
                    return 0;
                case 21:
                    return 0;
                default:
                    return 0;
            }
            break;
        case 0x8:
            break;
        case 0xC:
            xlObjectEvent(pSD->pHost, 0x1001, (void*)4);
            break;
        default:
            return false;
    }

    return true;
}

static bool sdPut64(SD* pSD, u32 nAddress, s64* pData) { 
    OSREPORT("sdPut64: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);
    return false;
}

static bool sdGet8(SD* pSD, u32 nAddress, s8* pData) { 
    OSREPORT("sdGet8: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);
    return false;
}

static bool sdGet16(SD* pSD, u32 nAddress, s16* pData) { 
    OSREPORT("sdGet16: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);
    return false;
}

static bool sdGet32(SD* pSD, u32 nAddress, s32* pData) { 
    OSREPORT("sdGet32: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);
    return false;
}

static bool sdGet64(SD* pSD, u32 nAddress, s64* pData) { 
    OSREPORT("sdGet64: nAddress: 0x%08X, pData: 0x%08X\n", nAddress, pData);
    return false;
}

bool sdEvent(SD* pSD, s32 nEvent, void* pArgument) {
    OSREPORT("sdEvent: nEvent: 0x%08X, pArgument: 0x%08X\n", nEvent, pArgument);

    switch (nEvent) {
        case 2:
            pSD->pHost = pArgument;
            break;
        case 0x1002:
            if (!cpuSetDevicePut(SYSTEM_CPU(pSD->pHost), pArgument, (Put8Func)sdPut8, (Put16Func)sdPut16,
                                 (Put32Func)sdPut32, (Put64Func)sdPut64)) {
                return false;
            }
            if (!cpuSetDeviceGet(SYSTEM_CPU(pSD->pHost), pArgument, (Get8Func)sdGet8, (Get16Func)sdGet16,
                                 (Get32Func)sdGet32, (Get64Func)sdGet64)) {
                return false;
            }
        case 0:
        case 1:
        case 3:
            break;
#if VERSION != MQ_J
        case 0x1003:
            break;
#endif
        default:
            return false;
    }

    return true;
}
