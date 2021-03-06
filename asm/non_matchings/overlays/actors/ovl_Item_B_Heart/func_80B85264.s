glabel func_80B85264
/* 00114 80B85264 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00118 80B85268 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0011C 80B8526C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00120 80B85270 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00124 80B85274 848E0164 */  lh      $t6, 0x0164($a0)           ## 00000164
/* 00128 80B85278 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0012C 80B8527C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00130 80B85280 A48F0164 */  sh      $t7, 0x0164($a0)           ## 00000164
/* 00134 80B85284 84840164 */  lh      $a0, 0x0164($a0)           ## 00000164
/* 00138 80B85288 00800821 */  addu    $at, $a0, $zero            
/* 0013C 80B8528C 00042080 */  sll     $a0, $a0,  2               
/* 00140 80B85290 00812023 */  subu    $a0, $a0, $at              
/* 00144 80B85294 00042140 */  sll     $a0, $a0,  5               
/* 00148 80B85298 00812021 */  addu    $a0, $a0, $at              
/* 0014C 80B8529C 00042080 */  sll     $a0, $a0,  2               
/* 00150 80B852A0 00812023 */  subu    $a0, $a0, $at              
/* 00154 80B852A4 00042080 */  sll     $a0, $a0,  2               
/* 00158 80B852A8 00042400 */  sll     $a0, $a0, 16               
/* 0015C 80B852AC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00160 80B852B0 00042403 */  sra     $a0, $a0, 16               
/* 00164 80B852B4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00168 80B852B8 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 0016C 80B852BC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00170 80B852C0 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00174 80B852C4 46040182 */  mul.s   $f6, $f0, $f4              
/* 00178 80B852C8 C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 0017C 80B852CC 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00180 80B852D0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00184 80B852D4 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00188 80B852D8 8E070158 */  lw      $a3, 0x0158($s0)           ## 00000158
/* 0018C 80B852DC 46083280 */  add.s   $f10, $f6, $f8             
/* 00190 80B852E0 460A8480 */  add.s   $f18, $f16, $f10           
/* 00194 80B852E4 44059000 */  mfc1    $a1, $f18                  
/* 00198 80B852E8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0019C 80B852EC 00000000 */  nop
/* 001A0 80B852F0 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 001A4 80B852F4 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 001A8 80B852F8 26040158 */  addiu   $a0, $s0, 0x0158           ## $a0 = 00000158
/* 001AC 80B852FC 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 001B0 80B85300 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 001B4 80B85304 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 001B8 80B85308 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 001BC 80B8530C 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 001C0 80B85310 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 001C4 80B85314 3C073C23 */  lui     $a3, 0x3C23                ## $a3 = 3C230000
/* 001C8 80B85318 27190400 */  addiu   $t9, $t8, 0x0400           ## $t9 = 00000400
/* 001CC 80B8531C A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 001D0 80B85320 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3C23D70A
/* 001D4 80B85324 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 001D8 80B85328 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 001DC 80B8532C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 001E0 80B85330 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 001E4 80B85334 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 001E8 80B85338 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 001EC 80B8533C E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 001F0 80B85340 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001F4 80B85344 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001F8 80B85348 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001FC 80B8534C 03E00008 */  jr      $ra                        
/* 00200 80B85350 00000000 */  nop
