glabel BgJyaBombiwa_Update
/* 00490 80895630 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00494 80895634 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00498 80895638 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0049C 8089563C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 004A0 80895640 908E0179 */  lbu     $t6, 0x0179($a0)           ## 00000179
/* 004A4 80895644 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 004A8 80895648 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 004AC 8089564C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 004B0 80895650 11E00010 */  beq     $t7, $zero, .L80895694     
/* 004B4 80895654 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004B8 80895658 0C2254E7 */  jal     func_8089539C              
/* 004BC 8089565C 00000000 */  nop
/* 004C0 80895660 8625001C */  lh      $a1, 0x001C($s1)           ## 0000001C
/* 004C4 80895664 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004C8 80895668 0C00B2DD */  jal     Flags_SetSwitch
              
/* 004CC 8089566C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 004D0 80895670 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D4 80895674 26250024 */  addiu   $a1, $s1, 0x0024           ## $a1 = 00000024
/* 004D8 80895678 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 004DC 8089567C 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 004E0 80895680 24072810 */  addiu   $a3, $zero, 0x2810         ## $a3 = 00002810
/* 004E4 80895684 0C00B55C */  jal     Actor_Kill
              
/* 004E8 80895688 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004EC 8089568C 10000007 */  beq     $zero, $zero, .L808956AC   
/* 004F0 80895690 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80895694:
/* 004F4 80895694 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00001E60
/* 004F8 80895698 02012821 */  addu    $a1, $s0, $at              
/* 004FC 8089569C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00500 808956A0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00504 808956A4 26260168 */  addiu   $a2, $s1, 0x0168           ## $a2 = 00000168
/* 00508 808956A8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808956AC:
/* 0050C 808956AC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00510 808956B0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00514 808956B4 03E00008 */  jr      $ra                        
/* 00518 808956B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
