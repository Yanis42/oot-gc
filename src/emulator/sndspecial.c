#include "dolphin/demo.h"
#include "dolphin/gx.h"
#include "dolphin/pad.h"
#include "dolphin/types.h"

//! TODO: function static
static GXTexObj texObj_145;
static GXTexObj texObj2_146;

static u16 sButtonOrder[18] = {
    PAD_BUTTON_UP,   PAD_BUTTON_UP,    PAD_BUTTON_DOWN, PAD_BUTTON_DOWN,  PAD_BUTTON_LEFT, PAD_BUTTON_RIGHT,
    PAD_BUTTON_LEFT, PAD_BUTTON_RIGHT, PAD_BUTTON_X,    PAD_BUTTON_Y,     PAD_BUTTON_B,    PAD_BUTTON_A,
    PAD_BUTTON_UP,   PAD_BUTTON_LEFT,  PAD_BUTTON_DOWN, PAD_BUTTON_RIGHT, PAD_BUTTON_A,    PAD_BUTTON_START,
};

// clang-format off
static u8 ImportantData[112] = {
    0x07, 
    'C', 'R', 'E', 'D', 'I', 'T', 'S',
    0x01, 0x40, 0x01, 0x40, 0x01, 0x40, 0x0B,
    'E', 'N', 'G', 'I', 'N', 'E', 'E', 'R', 'I', 'N', 'G', 
    0x01, 0x40, 0x01, 0x40, 0x10,
    'R', 'o', 'b', 'e', 'r', 't', ' ', 'C', 'h', 'a', 'm', 'p', 'a', 'g', 'n', 'e', ('\n' + 0x02),
    'D', 'a', 'v', 'i', 'd', ' ', 'D', 'e', 'v', 'a', 't', 'y', ('\n' + 0x03),
    'R', 'o', 'r', 'y', ' ', 'J', 'o', 'h', 'n', 's', 't', 'o', 'n', ('\n' + 0x01),
    'S', 't', 'e', 'p', 'h', 'e', 'n', ' ', 'L', 'e', 'e', ('\n' + 0x02),
    'Y', 'o', 'o', 'n', 'J', 'o', 'o', 'n', ' ', 'L', 'e', 'e', ('\n' + 0x01),
    'M', 'a', 'x', ' ', 'S', 'z', 'l', 'a', 'g', 'o', 'r', '\0',
};
// clang-format on

static u16 sCurrButton;
static u16 lastButtons_156;

#define BUTTON_COMBO_HOLD (PAD_TRIGGER_Z | PAD_TRIGGER_R | PAD_TRIGGER_L)

void UpdateSpecial(void) {
    // static u16 lastButtons;

    // Local variables
    u16 buttons; // r30
    u16 pressed; // r5

    // References
    // -> static u16 lastButtons_156;
    // -> struct __anon_0x94E61 DemoPad[4];
    // -> static u16 sCurrButton;
    // -> static u16 sButtonOrder[18];

    u16 temp_r3;

    temp_r3 = DemoPad->pst.button & (lastButtons_156 ^ DemoPad->pst.button);
    buttons = DemoPad->pst.button;

    if ((DemoPad->pst.button & BUTTON_COMBO_HOLD) == BUTTON_COMBO_HOLD) {
        if (temp_r3 == sButtonOrder[sCurrButton]) {
            sCurrButton += 1;
        } else if (temp_r3 != 0) {
            sCurrButton = 0;
        }
    } else {
        sCurrButton = 0;
    }

    if (sCurrButton == ARRAY_COUNT(sButtonOrder)) {
        do {
            DEMOPadRead();
            pressed = DemoPad->pst.button & (lastButtons_156 ^ DemoPad->pst.button);
            DrawSpecialScreen();
            lastButtons_156 = pressed;
        } while (!(pressed & 0x200));
    }

    lastButtons_156 = buttons;
}
