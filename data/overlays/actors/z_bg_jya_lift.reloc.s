.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8089A090

.incbin "baserom/ovl_Bg_Jya_Lift", 0x4F0, 0x000000A0
