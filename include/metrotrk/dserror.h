#ifndef _METROTRK_DSERROR_H
#define _METROTRK_DSERROR_H

#include "dolphin/types.h"

typedef s32 DSError;

enum {
    kNoError = 0,
    kInternalError,
    kUserError,
    kNotFoundError,
    kParameterError,
    kOutOfMemory
};

#endif
