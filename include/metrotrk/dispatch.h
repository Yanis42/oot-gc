#ifndef _METROTRK_DISPATCH_H
#define _METROTRK_DISPATCH_H

#include "metrotrk/dserror.h"
#include "metrotrk/msgbuf.h"
#include "metrotrk/msgcmd.h"
#include "metrotrk/target.h"

enum {
    kDispatchErr = 0x500
};

DSError TRKInitializeDispatcher(void);
DSError TRKDispatchMessage(MessageBuffer*);

#endif
