.late_rodata
glabel D_809CCEF8
    .float 0.1

glabel D_809CCEFC
 .word 0x38000100
glabel D_809CCF00
 .word 0x40666667
glabel D_809CCF04
 .word 0x3EF5C28F
glabel D_809CCF08
 .word 0x40666667
glabel D_809CCF0C
 .word 0x3EF5C28F

.text
glabel func_809CC16C
/* 0056C 809CC16C 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00570 809CC170 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00574 809CC174 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00578 809CC178 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 0057C 809CC17C AFA5009C */  sw      $a1, 0x009C($sp)           
/* 00580 809CC180 8C8E016C */  lw      $t6, 0x016C($a0)           ## 0000016C
/* 00584 809CC184 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00588 809CC188 91CF0056 */  lbu     $t7, 0x0056($t6)           ## 00000056
/* 0058C 809CC18C 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 00590 809CC190 1300001B */  beq     $t8, $zero, .L809CC200     
/* 00594 809CC194 00000000 */  nop
/* 00598 809CC198 8C820158 */  lw      $v0, 0x0158($a0)           ## 00000158
/* 0059C 809CC19C 24840244 */  addiu   $a0, $a0, 0x0244           ## $a0 = 00000244
/* 005A0 809CC1A0 8C48005C */  lw      $t0, 0x005C($v0)           ## 0000005C
/* 005A4 809CC1A4 AC880000 */  sw      $t0, 0x0000($a0)           ## 00000244
/* 005A8 809CC1A8 8C590060 */  lw      $t9, 0x0060($v0)           ## 00000060
/* 005AC 809CC1AC AC990004 */  sw      $t9, 0x0004($a0)           ## 00000248
/* 005B0 809CC1B0 8C480064 */  lw      $t0, 0x0064($v0)           ## 00000064
/* 005B4 809CC1B4 0C27303F */  jal     func_809CC0FC              
/* 005B8 809CC1B8 AC880008 */  sw      $t0, 0x0008($a0)           ## 0000024C
/* 005BC 809CC1BC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 005C0 809CC1C0 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 005C4 809CC1C4 C6060244 */  lwc1    $f6, 0x0244($s0)           ## 00000244
/* 005C8 809CC1C8 C6040250 */  lwc1    $f4, 0x0250($s0)           ## 00000250
/* 005CC 809CC1CC C6120248 */  lwc1    $f18, 0x0248($s0)          ## 00000248
/* 005D0 809CC1D0 46023202 */  mul.s   $f8, $f6, $f2              
/* 005D4 809CC1D4 C6100254 */  lwc1    $f16, 0x0254($s0)          ## 00000254
/* 005D8 809CC1D8 46029182 */  mul.s   $f6, $f18, $f2             
/* 005DC 809CC1DC 46082280 */  add.s   $f10, $f4, $f8             
/* 005E0 809CC1E0 C6080258 */  lwc1    $f8, 0x0258($s0)           ## 00000258
/* 005E4 809CC1E4 46068100 */  add.s   $f4, $f16, $f6             
/* 005E8 809CC1E8 E60A0250 */  swc1    $f10, 0x0250($s0)          ## 00000250
/* 005EC 809CC1EC C60A024C */  lwc1    $f10, 0x024C($s0)          ## 0000024C
/* 005F0 809CC1F0 E6040254 */  swc1    $f4, 0x0254($s0)           ## 00000254
/* 005F4 809CC1F4 46025482 */  mul.s   $f18, $f10, $f2            
/* 005F8 809CC1F8 46124400 */  add.s   $f16, $f8, $f18            
/* 005FC 809CC1FC E6100258 */  swc1    $f16, 0x0258($s0)          ## 00000258
.L809CC200:
/* 00600 809CC200 3C01809D */  lui     $at, %hi(D_809CCEF8)       ## $at = 809D0000
/* 00604 809CC204 C424CEF8 */  lwc1    $f4, %lo(D_809CCEF8)($at)  
/* 00608 809CC208 C606025C */  lwc1    $f6, 0x025C($s0)           ## 0000025C
/* 0060C 809CC20C C6000070 */  lwc1    $f0, 0x0070($s0)           ## 00000070
/* 00610 809CC210 46043281 */  sub.s   $f10, $f6, $f4             
/* 00614 809CC214 E60A025C */  swc1    $f10, 0x025C($s0)          ## 0000025C
/* 00618 809CC218 C608025C */  lwc1    $f8, 0x025C($s0)           ## 0000025C
/* 0061C 809CC21C 4600403C */  c.lt.s  $f8, $f0                   
/* 00620 809CC220 00000000 */  nop
/* 00624 809CC224 45020003 */  bc1fl   .L809CC234                 
/* 00628 809CC228 C6120238 */  lwc1    $f18, 0x0238($s0)          ## 00000238
/* 0062C 809CC22C E600025C */  swc1    $f0, 0x025C($s0)           ## 0000025C
/* 00630 809CC230 C6120238 */  lwc1    $f18, 0x0238($s0)          ## 00000238
.L809CC234:
/* 00634 809CC234 C6100250 */  lwc1    $f16, 0x0250($s0)          ## 00000250
/* 00638 809CC238 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFBC
/* 0063C 809CC23C 46109180 */  add.s   $f6, $f18, $f16            
/* 00640 809CC240 E7A60054 */  swc1    $f6, 0x0054($sp)           
/* 00644 809CC244 C60A0254 */  lwc1    $f10, 0x0254($s0)          ## 00000254
/* 00648 809CC248 C604023C */  lwc1    $f4, 0x023C($s0)           ## 0000023C
/* 0064C 809CC24C C612025C */  lwc1    $f18, 0x025C($s0)          ## 0000025C
/* 00650 809CC250 460A2200 */  add.s   $f8, $f4, $f10             
/* 00654 809CC254 46124400 */  add.s   $f16, $f8, $f18            
/* 00658 809CC258 E7B00058 */  swc1    $f16, 0x0058($sp)          
/* 0065C 809CC25C C6040258 */  lwc1    $f4, 0x0258($s0)           ## 00000258
/* 00660 809CC260 C6060240 */  lwc1    $f6, 0x0240($s0)           ## 00000240
/* 00664 809CC264 46043280 */  add.s   $f10, $f6, $f4             
/* 00668 809CC268 0C27303F */  jal     func_809CC0FC              
/* 0066C 809CC26C E7AA005C */  swc1    $f10, 0x005C($sp)          
/* 00670 809CC270 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00674 809CC274 27A50078 */  addiu   $a1, $sp, 0x0078           ## $a1 = FFFFFFE0
/* 00678 809CC278 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFD4
/* 0067C 809CC27C E7A80078 */  swc1    $f8, 0x0078($sp)           
/* 00680 809CC280 C61000BC */  lwc1    $f16, 0x00BC($s0)          ## 000000BC
/* 00684 809CC284 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00688 809CC288 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 0068C 809CC28C 44810000 */  mtc1    $at, $f0                   ## $f0 = 24.00
/* 00690 809CC290 46109180 */  add.s   $f6, $f18, $f16            
/* 00694 809CC294 27AB0094 */  addiu   $t3, $sp, 0x0094           ## $t3 = FFFFFFFC
/* 00698 809CC298 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0069C 809CC29C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 006A0 809CC2A0 E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 006A4 809CC2A4 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 006A8 809CC2A8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 006AC 809CC2AC 27AF004C */  addiu   $t7, $sp, 0x004C           ## $t7 = FFFFFFB4
/* 006B0 809CC2B0 E7A40080 */  swc1    $f4, 0x0080($sp)           
/* 006B4 809CC2B4 8CAA0000 */  lw      $t2, 0x0000($a1)           ## FFFFFFE0
/* 006B8 809CC2B8 8CA90004 */  lw      $t1, 0x0004($a1)           ## FFFFFFE4
/* 006BC 809CC2BC 27A70084 */  addiu   $a3, $sp, 0x0084           ## $a3 = FFFFFFEC
/* 006C0 809CC2C0 ACCA0000 */  sw      $t2, 0x0000($a2)           ## FFFFFFD4
/* 006C4 809CC2C4 8CAA0008 */  lw      $t2, 0x0008($a1)           ## FFFFFFE8
/* 006C8 809CC2C8 ACC90004 */  sw      $t1, 0x0004($a2)           ## FFFFFFD8
/* 006CC 809CC2CC ACCA0008 */  sw      $t2, 0x0008($a2)           ## FFFFFFDC
/* 006D0 809CC2D0 C7A80054 */  lwc1    $f8, 0x0054($sp)           
/* 006D4 809CC2D4 C7AA006C */  lwc1    $f10, 0x006C($sp)          
/* 006D8 809CC2D8 C7A40058 */  lwc1    $f4, 0x0058($sp)           
/* 006DC 809CC2DC 46004482 */  mul.s   $f18, $f8, $f0             
/* 006E0 809CC2E0 C7A60070 */  lwc1    $f6, 0x0070($sp)           
/* 006E4 809CC2E4 8FA4009C */  lw      $a0, 0x009C($sp)           
/* 006E8 809CC2E8 46002202 */  mul.s   $f8, $f4, $f0              
/* 006EC 809CC2EC AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 006F0 809CC2F0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 006F4 809CC2F4 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 006F8 809CC2F8 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 006FC 809CC2FC 46125400 */  add.s   $f16, $f10, $f18           
/* 00700 809CC300 C7B20074 */  lwc1    $f18, 0x0074($sp)          
/* 00704 809CC304 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00708 809CC308 46083280 */  add.s   $f10, $f6, $f8             
/* 0070C 809CC30C E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 00710 809CC310 C7B0005C */  lwc1    $f16, 0x005C($sp)          
/* 00714 809CC314 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00718 809CC318 E7AA0070 */  swc1    $f10, 0x0070($sp)          
/* 0071C 809CC31C 46008102 */  mul.s   $f4, $f16, $f0             
/* 00720 809CC320 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00724 809CC324 46049180 */  add.s   $f6, $f18, $f4             
/* 00728 809CC328 0C00F7A1 */  jal     func_8003DE84              
/* 0072C 809CC32C E7A60074 */  swc1    $f6, 0x0074($sp)           
/* 00730 809CC330 10400052 */  beq     $v0, $zero, .L809CC47C     
/* 00734 809CC334 8FB80094 */  lw      $t8, 0x0094($sp)           
/* 00738 809CC338 87190008 */  lh      $t9, 0x0008($t8)           ## 00000008
/* 0073C 809CC33C 3C01809D */  lui     $at, %hi(D_809CCEFC)       ## $at = 809D0000
/* 00740 809CC340 C420CEFC */  lwc1    $f0, %lo(D_809CCEFC)($at)  
/* 00744 809CC344 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 00748 809CC348 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFBC
/* 0074C 809CC34C 00803025 */  or      $a2, $a0, $zero            ## $a2 = FFFFFFBC
/* 00750 809CC350 468042A0 */  cvt.s.w $f10, $f8                  
/* 00754 809CC354 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFFC8
/* 00758 809CC358 46005402 */  mul.s   $f16, $f10, $f0            
/* 0075C 809CC35C E7B00060 */  swc1    $f16, 0x0060($sp)          
/* 00760 809CC360 8708000A */  lh      $t0, 0x000A($t8)           ## 0000000A
/* 00764 809CC364 44889000 */  mtc1    $t0, $f18                  ## $f18 = 0.00
/* 00768 809CC368 00000000 */  nop
/* 0076C 809CC36C 46809120 */  cvt.s.w $f4, $f18                  
/* 00770 809CC370 46002182 */  mul.s   $f6, $f4, $f0              
/* 00774 809CC374 E7A60064 */  swc1    $f6, 0x0064($sp)           
/* 00778 809CC378 8709000C */  lh      $t1, 0x000C($t8)           ## 0000000C
/* 0077C 809CC37C 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 00780 809CC380 00000000 */  nop
/* 00784 809CC384 468042A0 */  cvt.s.w $f10, $f8                  
/* 00788 809CC388 46005402 */  mul.s   $f16, $f10, $f0            
/* 0078C 809CC38C 0C27301D */  jal     func_809CC074              
/* 00790 809CC390 E7B00068 */  swc1    $f16, 0x0068($sp)          
/* 00794 809CC394 27AA0054 */  addiu   $t2, $sp, 0x0054           ## $t2 = FFFFFFBC
/* 00798 809CC398 8D4C0000 */  lw      $t4, 0x0000($t2)           ## FFFFFFBC
/* 0079C 809CC39C 92020228 */  lbu     $v0, 0x0228($s0)           ## 00000228
/* 007A0 809CC3A0 AE0C022C */  sw      $t4, 0x022C($s0)           ## 0000022C
/* 007A4 809CC3A4 8D4B0004 */  lw      $t3, 0x0004($t2)           ## FFFFFFC0
/* 007A8 809CC3A8 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 007AC 809CC3AC AE0B0230 */  sw      $t3, 0x0230($s0)           ## 00000230
/* 007B0 809CC3B0 8D4C0008 */  lw      $t4, 0x0008($t2)           ## FFFFFFC4
/* 007B4 809CC3B4 A2020228 */  sb      $v0, 0x0228($s0)           ## 00000228
/* 007B8 809CC3B8 AE0C0234 */  sw      $t4, 0x0234($s0)           ## 00000234
/* 007BC 809CC3BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007C0 809CC3C0 A3A2004B */  sb      $v0, 0x004B($sp)           
/* 007C4 809CC3C4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 007C8 809CC3C8 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 007CC 809CC3CC 93A2004B */  lbu     $v0, 0x004B($sp)           
/* 007D0 809CC3D0 46120102 */  mul.s   $f4, $f0, $f18             
/* 007D4 809CC3D4 4600218D */  trunc.w.s $f6, $f4                   
/* 007D8 809CC3D8 440E3000 */  mfc1    $t6, $f6                   
/* 007DC 809CC3DC 00000000 */  nop
/* 007E0 809CC3E0 000E7C00 */  sll     $t7, $t6, 16               
/* 007E4 809CC3E4 000FCC03 */  sra     $t9, $t7, 16               
/* 007E8 809CC3E8 0322082A */  slt     $at, $t9, $v0              
/* 007EC 809CC3EC 50200003 */  beql    $at, $zero, .L809CC3FC     
/* 007F0 809CC3F0 92080228 */  lbu     $t0, 0x0228($s0)           ## 00000228
/* 007F4 809CC3F4 A2000228 */  sb      $zero, 0x0228($s0)         ## 00000228
/* 007F8 809CC3F8 92080228 */  lbu     $t0, 0x0228($s0)           ## 00000228
.L809CC3FC:
/* 007FC 809CC3FC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00800 809CC400 55000005 */  bnel    $t0, $zero, .L809CC418     
/* 00804 809CC404 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.00
/* 00808 809CC408 3C01809D */  lui     $at, %hi(D_809CCF00)       ## $at = 809D0000
/* 0080C 809CC40C 10000003 */  beq     $zero, $zero, .L809CC41C   
/* 00810 809CC410 C420CF00 */  lwc1    $f0, %lo(D_809CCF00)($at)  
/* 00814 809CC414 44810000 */  mtc1    $at, $f0                   ## $f0 = -0.00
.L809CC418:
/* 00818 809CC418 00000000 */  nop
.L809CC41C:
/* 0081C 809CC41C C608022C */  lwc1    $f8, 0x022C($s0)           ## 0000022C
/* 00820 809CC420 C6100230 */  lwc1    $f16, 0x0230($s0)          ## 00000230
/* 00824 809CC424 C6040234 */  lwc1    $f4, 0x0234($s0)           ## 00000234
/* 00828 809CC428 46004282 */  mul.s   $f10, $f8, $f0             
/* 0082C 809CC42C 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00830 809CC430 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00834 809CC434 46008482 */  mul.s   $f18, $f16, $f0            
/* 00838 809CC438 24053948 */  addiu   $a1, $zero, 0x3948         ## $a1 = 00003948
/* 0083C 809CC43C E6140258 */  swc1    $f20, 0x0258($s0)          ## 00000258
/* 00840 809CC440 46002182 */  mul.s   $f6, $f4, $f0              
/* 00844 809CC444 E60A0238 */  swc1    $f10, 0x0238($s0)          ## 00000238
/* 00848 809CC448 E6140254 */  swc1    $f20, 0x0254($s0)          ## 00000254
/* 0084C 809CC44C E6140250 */  swc1    $f20, 0x0250($s0)          ## 00000250
/* 00850 809CC450 E612023C */  swc1    $f18, 0x023C($s0)          ## 0000023C
/* 00854 809CC454 E614025C */  swc1    $f20, 0x025C($s0)          ## 0000025C
/* 00858 809CC458 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0085C 809CC45C E6060240 */  swc1    $f6, 0x0240($s0)           ## 00000240
/* 00860 809CC460 3C014300 */  lui     $at, 0x4300                ## $at = 43000000
/* 00864 809CC464 44814000 */  mtc1    $at, $f8                   ## $f8 = 128.00
/* 00868 809CC468 3C01809D */  lui     $at, %hi(D_809CCF04)       ## $at = 809D0000
/* 0086C 809CC46C E6080210 */  swc1    $f8, 0x0210($s0)           ## 00000210
/* 00870 809CC470 C42ACF04 */  lwc1    $f10, %lo(D_809CCF04)($at) 
/* 00874 809CC474 1000004B */  beq     $zero, $zero, .L809CC5A4   
/* 00878 809CC478 E60A0214 */  swc1    $f10, 0x0214($s0)          ## 00000214
.L809CC47C:
/* 0087C 809CC47C 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 00880 809CC480 C7B00058 */  lwc1    $f16, 0x0058($sp)          
/* 00884 809CC484 33090020 */  andi    $t1, $t8, 0x0020           ## $t1 = 00000000
/* 00888 809CC488 51200047 */  beql    $t1, $zero, .L809CC5A8     
/* 0088C 809CC48C C6120238 */  lwc1    $f18, 0x0238($s0)          ## 00000238
/* 00890 809CC490 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00894 809CC494 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFBC
/* 00898 809CC498 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0089C 809CC49C 4614803C */  c.lt.s  $f16, $f20                 
/* 008A0 809CC4A0 00803025 */  or      $a2, $a0, $zero            ## $a2 = FFFFFFBC
/* 008A4 809CC4A4 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFFC8
/* 008A8 809CC4A8 4502003F */  bc1fl   .L809CC5A8                 
/* 008AC 809CC4AC C6120238 */  lwc1    $f18, 0x0238($s0)          ## 00000238
/* 008B0 809CC4B0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 008B4 809CC4B4 E7B40068 */  swc1    $f20, 0x0068($sp)          
/* 008B8 809CC4B8 E7B40060 */  swc1    $f20, 0x0060($sp)          
/* 008BC 809CC4BC 0C27301D */  jal     func_809CC074              
/* 008C0 809CC4C0 E7B20064 */  swc1    $f18, 0x0064($sp)          
/* 008C4 809CC4C4 27AA0054 */  addiu   $t2, $sp, 0x0054           ## $t2 = FFFFFFBC
/* 008C8 809CC4C8 8D4C0000 */  lw      $t4, 0x0000($t2)           ## FFFFFFBC
/* 008CC 809CC4CC 92020228 */  lbu     $v0, 0x0228($s0)           ## 00000228
/* 008D0 809CC4D0 AE0C022C */  sw      $t4, 0x022C($s0)           ## 0000022C
/* 008D4 809CC4D4 8D4B0004 */  lw      $t3, 0x0004($t2)           ## FFFFFFC0
/* 008D8 809CC4D8 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 008DC 809CC4DC AE0B0230 */  sw      $t3, 0x0230($s0)           ## 00000230
/* 008E0 809CC4E0 8D4C0008 */  lw      $t4, 0x0008($t2)           ## FFFFFFC4
/* 008E4 809CC4E4 A2020228 */  sb      $v0, 0x0228($s0)           ## 00000228
/* 008E8 809CC4E8 AE0C0234 */  sw      $t4, 0x0234($s0)           ## 00000234
/* 008EC 809CC4EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008F0 809CC4F0 A3A2004B */  sb      $v0, 0x004B($sp)           
/* 008F4 809CC4F4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 008F8 809CC4F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 008FC 809CC4FC 93A2004B */  lbu     $v0, 0x004B($sp)           
/* 00900 809CC500 46040182 */  mul.s   $f6, $f0, $f4              
/* 00904 809CC504 4600320D */  trunc.w.s $f8, $f6                   
/* 00908 809CC508 440E4000 */  mfc1    $t6, $f8                   
/* 0090C 809CC50C 00000000 */  nop
/* 00910 809CC510 000E7C00 */  sll     $t7, $t6, 16               
/* 00914 809CC514 000FCC03 */  sra     $t9, $t7, 16               
/* 00918 809CC518 0322082A */  slt     $at, $t9, $v0              
/* 0091C 809CC51C 50200003 */  beql    $at, $zero, .L809CC52C     
/* 00920 809CC520 92080228 */  lbu     $t0, 0x0228($s0)           ## 00000228
/* 00924 809CC524 A2000228 */  sb      $zero, 0x0228($s0)         ## 00000228
/* 00928 809CC528 92080228 */  lbu     $t0, 0x0228($s0)           ## 00000228
.L809CC52C:
/* 0092C 809CC52C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00930 809CC530 55000005 */  bnel    $t0, $zero, .L809CC548     
/* 00934 809CC534 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.00
/* 00938 809CC538 3C01809D */  lui     $at, %hi(D_809CCF08)       ## $at = 809D0000
/* 0093C 809CC53C 10000003 */  beq     $zero, $zero, .L809CC54C   
/* 00940 809CC540 C420CF08 */  lwc1    $f0, %lo(D_809CCF08)($at)  
/* 00944 809CC544 44810000 */  mtc1    $at, $f0                   ## $f0 = -0.00
.L809CC548:
/* 00948 809CC548 00000000 */  nop
.L809CC54C:
/* 0094C 809CC54C C60A022C */  lwc1    $f10, 0x022C($s0)          ## 0000022C
/* 00950 809CC550 C6120230 */  lwc1    $f18, 0x0230($s0)          ## 00000230
/* 00954 809CC554 C6060234 */  lwc1    $f6, 0x0234($s0)           ## 00000234
/* 00958 809CC558 46005402 */  mul.s   $f16, $f10, $f0            
/* 0095C 809CC55C E6140258 */  swc1    $f20, 0x0258($s0)          ## 00000258
/* 00960 809CC560 E6140254 */  swc1    $f20, 0x0254($s0)          ## 00000254
/* 00964 809CC564 46009102 */  mul.s   $f4, $f18, $f0             
/* 00968 809CC568 E6140250 */  swc1    $f20, 0x0250($s0)          ## 00000250
/* 0096C 809CC56C E614025C */  swc1    $f20, 0x025C($s0)          ## 0000025C
/* 00970 809CC570 46003202 */  mul.s   $f8, $f6, $f0              
/* 00974 809CC574 E6100238 */  swc1    $f16, 0x0238($s0)          ## 00000238
/* 00978 809CC578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0097C 809CC57C 24053948 */  addiu   $a1, $zero, 0x3948         ## $a1 = 00003948
/* 00980 809CC580 E604023C */  swc1    $f4, 0x023C($s0)           ## 0000023C
/* 00984 809CC584 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00988 809CC588 E6080240 */  swc1    $f8, 0x0240($s0)           ## 00000240
/* 0098C 809CC58C 3C014300 */  lui     $at, 0x4300                ## $at = 43000000
/* 00990 809CC590 44815000 */  mtc1    $at, $f10                  ## $f10 = 128.00
/* 00994 809CC594 3C01809D */  lui     $at, %hi(D_809CCF0C)       ## $at = 809D0000
/* 00998 809CC598 E60A0210 */  swc1    $f10, 0x0210($s0)          ## 00000210
/* 0099C 809CC59C C430CF0C */  lwc1    $f16, %lo(D_809CCF0C)($at) 
/* 009A0 809CC5A0 E6100214 */  swc1    $f16, 0x0214($s0)          ## 00000214
.L809CC5A4:
/* 009A4 809CC5A4 C6120238 */  lwc1    $f18, 0x0238($s0)          ## 00000238
.L809CC5A8:
/* 009A8 809CC5A8 C6040250 */  lwc1    $f4, 0x0250($s0)           ## 00000250
/* 009AC 809CC5AC C608023C */  lwc1    $f8, 0x023C($s0)           ## 0000023C
/* 009B0 809CC5B0 C60A0254 */  lwc1    $f10, 0x0254($s0)          ## 00000254
/* 009B4 809CC5B4 46049180 */  add.s   $f6, $f18, $f4             
/* 009B8 809CC5B8 C612025C */  lwc1    $f18, 0x025C($s0)          ## 0000025C
/* 009BC 809CC5BC 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 009C0 809CC5C0 460A4400 */  add.s   $f16, $f8, $f10            
/* 009C4 809CC5C4 E606005C */  swc1    $f6, 0x005C($s0)           ## 0000005C
/* 009C8 809CC5C8 C6060240 */  lwc1    $f6, 0x0240($s0)           ## 00000240
/* 009CC 809CC5CC C6080258 */  lwc1    $f8, 0x0258($s0)           ## 00000258
/* 009D0 809CC5D0 46128100 */  add.s   $f4, $f16, $f18            
/* 009D4 809CC5D4 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 009D8 809CC5D8 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 009DC 809CC5DC 46083280 */  add.s   $f10, $f6, $f8             
/* 009E0 809CC5E0 4405A000 */  mfc1    $a1, $f20                  
/* 009E4 809CC5E4 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 009E8 809CC5E8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 009EC 809CC5EC E60A0064 */  swc1    $f10, 0x0064($s0)          ## 00000064
/* 009F0 809CC5F0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 009F4 809CC5F4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 009F8 809CC5F8 26040250 */  addiu   $a0, $s0, 0x0250           ## $a0 = 00000250
/* 009FC 809CC5FC 4405A000 */  mfc1    $a1, $f20                  
/* 00A00 809CC600 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00A04 809CC604 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00A08 809CC608 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 00A0C 809CC60C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00A10 809CC610 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00A14 809CC614 26040254 */  addiu   $a0, $s0, 0x0254           ## $a0 = 00000254
/* 00A18 809CC618 4405A000 */  mfc1    $a1, $f20                  
/* 00A1C 809CC61C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00A20 809CC620 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00A24 809CC624 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 00A28 809CC628 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00A2C 809CC62C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00A30 809CC630 26040258 */  addiu   $a0, $s0, 0x0258           ## $a0 = 00000258
/* 00A34 809CC634 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00A38 809CC638 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 00A3C 809CC63C 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00A40 809CC640 03E00008 */  jr      $ra                        
/* 00A44 809CC644 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
