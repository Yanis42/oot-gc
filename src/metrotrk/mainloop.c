#include "macros.h"
#include "metrotrk/dispatch.h"
#include "metrotrk/msgbuf.h"
#include "metrotrk/nubevent.h"

extern s32* gTRKInputPendingPtr;

void TRKHandleRequestEvent(NubEvent* event) {
    // MessageBuffer* buffer = ;

    TRKDispatchMessage(TRKGetBuffer(event->fMessageBufferId));
    NO_INLINE();
}

void TRKHandleSupportEvent(NubEvent* event) {
    TRKTargetSupportRequest();
    NO_INLINE();
}

void TRKIdle(void) {
    if (!TRKTargetStopped()) {
        TRKTargetContinue();
    }

    NO_INLINE();
}

void TRKNubMainLoop(void) {
    NubEvent event;
    bool stopRequested = false;
    bool isIdle = false;

    while (!stopRequested) {
        if (TRKGetNextEvent(&event)) {

            isIdle = false;

            switch (event.fType) {
                case kNullEvent:
                    break;

                case kRequestEvent:
                    TRKHandleRequestEvent(&event);
                    break;

                case kShutdownEvent:
                    stopRequested = true;
                    break;

                case kBreakpointEvent:
                case kExceptionEvent:
                    TRKTargetInterrupt(&event);
                    break;

                case kSupportEvent:
                    TRKHandleSupportEvent(&event);
                    break;

                default:
                    break;
            }

            TRKDestructEvent(&event);
        } else {
            if (!isIdle) {
                isIdle = true;
                TRKGetInput();
            } else {
                TRK_Idle();
                isIdle = false;
            }
        }
    }

    return;
}