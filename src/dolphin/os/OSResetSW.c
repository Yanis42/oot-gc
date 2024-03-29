#include "dolphin/os.h"

extern OSTime __OSGetSystemTime();

u8 GameChoice AT_ADDRESS(OS_BASE_CACHED | 0x30E3);

vu32 __PIRegs[12] AT_ADDRESS(0xCC003000);

extern OSTime __OSStartTime;

#if DOLPHIN_REV == 2002
//! TODO: find what's wrong with sbss on mq
static BOOL bootThisDol;
#endif

static OSResetCallback ResetCallback;
static BOOL Down;
static BOOL LastState;
static OSTime HoldUp;
static OSTime HoldDown;

void __OSResetSWInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    OSResetCallback callback;

    HoldDown = __OSGetSystemTime();
    while (__OSGetSystemTime() - HoldDown < OSMicrosecondsToTicks(100) && !(__PIRegs[0] & 0x00010000)) {
        ;
    }
    if (!(__PIRegs[0] & 0x00010000)) {
        LastState = Down = TRUE;
        __OSMaskInterrupts(OS_INTERRUPTMASK_PI_RSW);
        if (ResetCallback) {
            callback = ResetCallback;
            ResetCallback = NULL;
            callback();
        }
    }
    __PIRegs[0] = 2;
}

#if DOLPHIN_REV == 2002
#define GAME_CHOICE_MASK 0x3F
#else
#define GAME_CHOICE_MASK 0x1F
#endif

BOOL OSGetResetButtonState(void) {
    BOOL enabled;
    BOOL state;
    u32 reg;
    OSTime now;

    enabled = OSDisableInterrupts();

    now = __OSGetSystemTime();

    reg = __PIRegs[0];
    if (!(reg & 0x00010000)) {
        if (!Down) {
            Down = TRUE;
            state = HoldUp ? TRUE : FALSE;
            HoldDown = now;
        } else {
            state = (HoldUp || (OSMicrosecondsToTicks(100) < now - HoldDown)) ? TRUE : FALSE;
        }
    } else if (Down) {
        Down = FALSE;
        state = LastState;
        if (state) {
            HoldUp = now;
        } else {
            HoldUp = 0;
        }
    } else if (HoldUp && (now - HoldUp < OSMillisecondsToTicks(40))) {
        state = TRUE;
    } else {
        state = FALSE;
        HoldUp = 0;
    }

    LastState = state;

    if (GameChoice & GAME_CHOICE_MASK) {
        OSTime fire = (GameChoice & GAME_CHOICE_MASK) * 60;
        fire = __OSStartTime + OSSecondsToTicks(fire);
        if (fire < now) {
            now -= fire;
            now = OSTicksToSeconds(now) / 2;
            if ((now & 1) == 0) {
                state = TRUE;
            } else {
                state = FALSE;
            }
        }
    }

    OSRestoreInterrupts(enabled);
    return state;
}
