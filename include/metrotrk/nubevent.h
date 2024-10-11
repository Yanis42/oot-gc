#ifndef _METROTRK_NUBEVENT_H
#define _METROTRK_NUBEVENT_H

#include "metrotrk/msgbuf.h"
#include "dolphin/types.h"

enum {
    kEventQueueFull = 0x0100
};

typedef u32 NubEventId;

enum {
    kInvalidEventId = 0
};

typedef enum NubEventType {
    kNullEvent,
    kShutdownEvent,
    kRequestEvent,
    kBreakpointEvent,
    kExceptionEvent,
    kSupportEvent,
    kContinueEvent
} NubEventType;

typedef struct NubEvent {
    /* 0x00 */ NubEventType fType;
    /* 0x04 */ NubEventId fId;
    /* 0x08 */ MessageBufferId fMessageBufferId;
} NubEvent; // size = 0xC

DSError TRKInitializeEventQueue(void);

bool TRKGetNextEvent(NubEvent* copiedEvent);
DSError TRKPostEvent(const NubEvent* copiedEvent);
void TRKCopyEvent(NubEvent* dstEvent, const NubEvent* srcEvent);

void TRKConstructEvent(NubEvent* newEvent, NubEventType type);
void TRKDestructEvent(NubEvent* oldEvent);

#endif
