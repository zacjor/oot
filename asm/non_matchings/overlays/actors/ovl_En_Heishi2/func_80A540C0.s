glabel func_80A540C0
/* 01220 80A540C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01224 80A540C4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01228 80A540C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0122C 80A540CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01230 80A540D0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01234 80A540D4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01238 80A540D8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0123C 80A540DC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01240 80A540E0 0C042F6F */  jal     func_8010BDBC              
/* 01244 80A540E4 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01248 80A540E8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0124C 80A540EC 5441003F */  bnel    $v0, $at, .L80A541EC       
/* 01250 80A540F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01254 80A540F4 0C041AF2 */  jal     func_80106BC8              
/* 01258 80A540F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0125C 80A540FC 1040003A */  beq     $v0, $zero, .L80A541E8     
/* 01260 80A54100 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 01264 80A54104 00511021 */  addu    $v0, $v0, $s1              
/* 01268 80A54108 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0126C 80A5410C 240E2020 */  addiu   $t6, $zero, 0x2020         ## $t6 = 00002020
/* 01270 80A54110 31C5FFFF */  andi    $a1, $t6, 0xFFFF           ## $a1 = 00002020
/* 01274 80A54114 10400006 */  beq     $v0, $zero, .L80A54130     
/* 01278 80A54118 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0127C 80A5411C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 01280 80A54120 10430021 */  beq     $v0, $v1, .L80A541A8       
/* 01284 80A54124 240D200C */  addiu   $t5, $zero, 0x200C         ## $t5 = 0000200C
/* 01288 80A54128 10000030 */  beq     $zero, $zero, .L80A541EC   
/* 0128C 80A5412C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A54130:
/* 01290 80A54130 0C042DC8 */  jal     func_8010B720              
/* 01294 80A54134 A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
/* 01298 80A54138 0C023C23 */  jal     func_8008F08C              
/* 0129C 80A5413C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 012A0 80A54140 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 012A4 80A54144 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 012A8 80A54148 946F0F06 */  lhu     $t7, 0x0F06($v1)           ## 8015F566
/* 012AC 80A5414C 94790EF6 */  lhu     $t9, 0x0EF6($v1)           ## 8015F556
/* 012B0 80A54150 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 012B4 80A54154 35F80080 */  ori     $t8, $t7, 0x0080           ## $t8 = 00000080
/* 012B8 80A54158 37280100 */  ori     $t0, $t9, 0x0100           ## $t0 = 00000100
/* 012BC 80A5415C A4780F06 */  sh      $t8, 0x0F06($v1)           ## 8015F566
/* 012C0 80A54160 A4680EF6 */  sh      $t0, 0x0EF6($v1)           ## 8015F556
/* 012C4 80A54164 0C021344 */  jal     Item_Give              
/* 012C8 80A54168 2405002C */  addiu   $a1, $zero, 0x002C         ## $a1 = 0000002C
/* 012CC 80A5416C 9209030A */  lbu     $t1, 0x030A($s0)           ## 0000030A
/* 012D0 80A54170 3C0C80A5 */  lui     $t4, %hi(func_80A541FC)    ## $t4 = 80A50000
/* 012D4 80A54174 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 012D8 80A54178 11200008 */  beq     $t1, $zero, .L80A5419C     
/* 012DC 80A5417C 258C41FC */  addiu   $t4, $t4, %lo(func_80A541FC) ## $t4 = 80A541FC
/* 012E0 80A54180 3C0B80A5 */  lui     $t3, %hi(func_80A5427C)    ## $t3 = 80A50000
/* 012E4 80A54184 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 012E8 80A54188 256B427C */  addiu   $t3, $t3, %lo(func_80A5427C) ## $t3 = 80A5427C
/* 012EC 80A5418C A20A030A */  sb      $t2, 0x030A($s0)           ## 0000030A
/* 012F0 80A54190 A603030E */  sh      $v1, 0x030E($s0)           ## 0000030E
/* 012F4 80A54194 10000014 */  beq     $zero, $zero, .L80A541E8   
/* 012F8 80A54198 AE0B025C */  sw      $t3, 0x025C($s0)           ## 0000025C
.L80A5419C:
/* 012FC 80A5419C A600030E */  sh      $zero, 0x030E($s0)         ## 0000030E
/* 01300 80A541A0 10000011 */  beq     $zero, $zero, .L80A541E8   
/* 01304 80A541A4 AE0C025C */  sw      $t4, 0x025C($s0)           ## 0000025C
.L80A541A8:
/* 01308 80A541A8 A603030E */  sh      $v1, 0x030E($s0)           ## 0000030E
/* 0130C 80A541AC A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
/* 01310 80A541B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01314 80A541B4 0C042DC8 */  jal     func_8010B720              
/* 01318 80A541B8 31A5FFFF */  andi    $a1, $t5, 0xFFFF           ## $a1 = 00000000
/* 0131C 80A541BC 920F030A */  lbu     $t7, 0x030A($s0)           ## 0000030A
/* 01320 80A541C0 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 01324 80A541C4 A60E0300 */  sh      $t6, 0x0300($s0)           ## 00000300
/* 01328 80A541C8 15E00005 */  bne     $t7, $zero, .L80A541E0     
/* 0132C 80A541CC 3C1980A5 */  lui     $t9, %hi(func_80A54954)    ## $t9 = 80A50000
/* 01330 80A541D0 3C1880A5 */  lui     $t8, %hi(func_80A5427C)    ## $t8 = 80A50000
/* 01334 80A541D4 2718427C */  addiu   $t8, $t8, %lo(func_80A5427C) ## $t8 = 80A5427C
/* 01338 80A541D8 10000003 */  beq     $zero, $zero, .L80A541E8   
/* 0133C 80A541DC AE18025C */  sw      $t8, 0x025C($s0)           ## 0000025C
.L80A541E0:
/* 01340 80A541E0 27394954 */  addiu   $t9, $t9, %lo(func_80A54954) ## $t9 = 80A54954
/* 01344 80A541E4 AE19025C */  sw      $t9, 0x025C($s0)           ## 0000025C
.L80A541E8:
/* 01348 80A541E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A541EC:
/* 0134C 80A541EC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01350 80A541F0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01354 80A541F4 03E00008 */  jr      $ra                        
/* 01358 80A541F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
