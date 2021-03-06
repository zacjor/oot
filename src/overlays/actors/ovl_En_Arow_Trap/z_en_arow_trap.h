#ifndef _Z_EN_AROW_TRAP_H_
#define _Z_EN_AROW_TRAP_H_

#include <ultra64.h>
#include <global.h>
#include <z64.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 unk_14C;
    /* 0x0150 */ u32 attackTimer;
} EnArowTrap; // size = 0x0154

extern const ActorInit En_Arow_Trap_InitVars;

#endif
