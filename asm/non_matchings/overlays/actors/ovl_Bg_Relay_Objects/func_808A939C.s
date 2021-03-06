.late_rodata
glabel D_808A9510
    .float 0.0011160715

.text
glabel func_808A939C
/* 0054C 808A939C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00550 808A93A0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00554 808A93A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00558 808A93A8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0055C 808A93AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00560 808A93B0 0C01B129 */  jal     func_8006C4A4              
/* 00564 808A93B4 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 00568 808A93B8 10400006 */  beq     $v0, $zero, .L808A93D4     
/* 0056C 808A93BC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00570 808A93C0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00574 808A93C4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00578 808A93C8 944E0EE0 */  lhu     $t6, 0x0EE0($v0)           ## 8015F540
/* 0057C 808A93CC 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 00580 808A93D0 A44F0EE0 */  sh      $t7, 0x0EE0($v0)           ## 8015F540
.L808A93D4:
/* 00584 808A93D4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00588 808A93D8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0058C 808A93DC 94580EE0 */  lhu     $t8, 0x0EE0($v0)           ## 8015F540
/* 00590 808A93E0 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00594 808A93E4 24050080 */  addiu   $a1, $zero, 0x0080         ## $a1 = 00000080
/* 00598 808A93E8 33190020 */  andi    $t9, $t8, 0x0020           ## $t9 = 00000000
/* 0059C 808A93EC 13200006 */  beq     $t9, $zero, .L808A9408     
/* 005A0 808A93F0 00000000 */  nop
/* 005A4 808A93F4 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 005A8 808A93F8 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 005AC 808A93FC 24050400 */  addiu   $a1, $zero, 0x0400         ## $a1 = 00000400
/* 005B0 808A9400 10000004 */  beq     $zero, $zero, .L808A9414   
/* 005B4 808A9404 86020032 */  lh      $v0, 0x0032($s0)           ## 00000032
.L808A9408:
/* 005B8 808A9408 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 005BC 808A940C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 005C0 808A9410 86020032 */  lh      $v0, 0x0032($s0)           ## 00000032
.L808A9414:
/* 005C4 808A9414 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 005C8 808A9418 3C01808B */  lui     $at, %hi(D_808A9510)       ## $at = 808B0000
/* 005CC 808A941C 244AFF80 */  addiu   $t2, $v0, 0xFF80           ## $t2 = FFFFFF80
/* 005D0 808A9420 448A2000 */  mtc1    $t2, $f4                   ## $f4 = NaN
/* 005D4 808A9424 01024821 */  addu    $t1, $t0, $v0              
/* 005D8 808A9428 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 005DC 808A942C 468021A0 */  cvt.s.w $f6, $f4                   
/* 005E0 808A9430 C4289510 */  lwc1    $f8, %lo(D_808A9510)($at)  
/* 005E4 808A9434 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 005E8 808A9438 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 005EC 808A943C 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 005F0 808A9440 24052076 */  addiu   $a1, $zero, 0x2076         ## $a1 = 00002076
/* 005F4 808A9444 46083282 */  mul.s   $f10, $f6, $f8             
/* 005F8 808A9448 46105480 */  add.s   $f18, $f10, $f16           
/* 005FC 808A944C 44069000 */  mfc1    $a2, $f18                  
/* 00600 808A9450 0C03D0DB */  jal     func_800F436C              
/* 00604 808A9454 00000000 */  nop
/* 00608 808A9458 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0060C 808A945C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00610 808A9460 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00614 808A9464 03E00008 */  jr      $ra                        
/* 00618 808A9468 00000000 */  nop
