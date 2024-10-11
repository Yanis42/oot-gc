#ifndef _METROTRK_TARGET_H
#define _METROTRK_TARGET_H

#include "metrotrk/ppc_version.h"

#define DS_TARGET_NAME               "Dolphin"
#define TRK_BAUD_RATE                kBaud38400

#ifndef DS_PROTOCOL
    #define DS_PROTOCOL                  DS_PROTOCOL_BOARD
#endif

#define DS_CPU_MAJOR_TYPE            DS_CPU_MAJOR_PPC
#define DS_CPU_MINOR_TYPE            TRKTargetCPUMinorType()
#define BOARD_WELCOME_STRING         "MetroTRK for Dolphin v0.5"

// #include "metrotrk/asm_regs.h"
// #include "metrotrk/target_asm.h"
// #include "metrotrk/m7xx_m603e_reg.h"
// #include "metrotrk/ppc_except.h"


#endif
