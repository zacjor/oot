glabel func_80A01CAC
/* 0007C 80A01CAC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00080 80A01CB0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00084 80A01CB4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00088 80A01CB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0008C 80A01CBC 3C0B80A0 */  lui     $t3, %hi(func_80A02A20)    ## $t3 = 80A00000
/* 00090 80A01CC0 24090400 */  addiu   $t1, $zero, 0x0400         ## $t1 = 00000400
/* 00094 80A01CC4 240A0200 */  addiu   $t2, $zero, 0x0200         ## $t2 = 00000200
/* 00098 80A01CC8 256B2A20 */  addiu   $t3, $t3, %lo(func_80A02A20) ## $t3 = 80A02A20
/* 0009C 80A01CCC 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 000A0 80A01CD0 A48902AE */  sh      $t1, 0x02AE($a0)           ## 000002AE
/* 000A4 80A01CD4 A48A02B0 */  sh      $t2, 0x02B0($a0)           ## 000002B0
/* 000A8 80A01CD8 AC8B02C8 */  sw      $t3, 0x02C8($a0)           ## 000002C8
/* 000AC 80A01CDC A48C02C0 */  sh      $t4, 0x02C0($a0)           ## 000002C0
/* 000B0 80A01CE0 E48002B4 */  swc1    $f0, 0x02B4($a0)           ## 000002B4
/* 000B4 80A01CE4 E4800168 */  swc1    $f0, 0x0168($a0)           ## 00000168
/* 000B8 80A01CE8 03E00008 */  jr      $ra                        
/* 000BC 80A01CEC E48802B8 */  swc1    $f8, 0x02B8($a0)           ## 000002B8
