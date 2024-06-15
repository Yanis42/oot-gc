#ifndef _SD_H
#define _SD_H

#include "dolphin/types.h"

typedef struct SD {
    /* 0x00 */ void* pHost;
    s32 nHackCount;
    char szString[256];
    s32 nIndexString;
    s32 nAddress;
} SD;

extern _XL_OBJECTTYPE gClassSD;

bool sdEvent(SD* pSD, s32 nEvent, void* pArgument);

#endif
