glabel BgHidanCurtain_Update
/* 005B8 80885758 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 005BC 8088575C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005C0 80885760 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 005C4 80885764 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 005C8 80885768 8CB90790 */  lw      $t9, 0x0790($a1)           ## 00000790
/* 005CC 8088576C 908E0152 */  lbu     $t6, 0x0152($a0)           ## 00000152
/* 005D0 80885770 3C188088 */  lui     $t8, %hi(D_80885BA4)       ## $t8 = 80880000
/* 005D4 80885774 87220142 */  lh      $v0, 0x0142($t9)           ## 00000142
/* 005D8 80885778 27185BA4 */  addiu   $t8, $t8, %lo(D_80885BA4)  ## $t8 = 80885BA4
/* 005DC 8088577C 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 005E0 80885780 000E7900 */  sll     $t7, $t6,  4               
/* 005E4 80885784 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005E8 80885788 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 005EC 8088578C 10410004 */  beq     $v0, $at, .L808857A0       
/* 005F0 80885790 01F81821 */  addu    $v1, $t7, $t8              
/* 005F4 80885794 24010038 */  addiu   $at, $zero, 0x0038         ## $at = 00000038
/* 005F8 80885798 54410006 */  bnel    $v0, $at, .L808857B4       
/* 005FC 8088579C 92020168 */  lbu     $v0, 0x0168($s0)           ## 00000168
.L808857A0:
/* 00600 808857A0 92080168 */  lbu     $t0, 0x0168($s0)           ## 00000168
/* 00604 808857A4 3109FFFD */  andi    $t1, $t0, 0xFFFD           ## $t1 = 00000000
/* 00608 808857A8 1000008B */  beq     $zero, $zero, .L808859D8   
/* 0060C 808857AC A2090168 */  sb      $t1, 0x0168($s0)           ## 00000168
/* 00610 808857B0 92020168 */  lbu     $v0, 0x0168($s0)           ## 00000168
.L808857B4:
/* 00614 808857B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00618 808857B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0061C 808857BC 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 00620 808857C0 1140000A */  beq     $t2, $zero, .L808857EC     
/* 00624 808857C4 304BFFFD */  andi    $t3, $v0, 0xFFFD           ## $t3 = 00000000
/* 00628 808857C8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0062C 808857CC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00630 808857D0 A20B0168 */  sb      $t3, 0x0168($s0)           ## 00000168
/* 00634 808857D4 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00638 808857D8 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 0063C 808857DC 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00640 808857E0 0C00BDC7 */  jal     func_8002F71C              
/* 00644 808857E4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00648 808857E8 8FA30034 */  lw      $v1, 0x0034($sp)           
.L808857EC:
/* 0064C 808857EC 92020150 */  lbu     $v0, 0x0150($s0)           ## 00000150
/* 00650 808857F0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00654 808857F4 10410003 */  beq     $v0, $at, .L80885804       
/* 00658 808857F8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0065C 808857FC 54410009 */  bnel    $v0, $at, .L80885824       
/* 00660 80885800 AFA30034 */  sw      $v1, 0x0034($sp)           
.L80885804:
/* 00664 80885804 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
/* 00668 80885808 C4680008 */  lwc1    $f8, 0x0008($v1)           ## 00000008
/* 0066C 8088580C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00670 80885810 46000180 */  add.s   $f6, $f0, $f0              
/* 00674 80885814 46083281 */  sub.s   $f10, $f6, $f8             
/* 00678 80885818 46105481 */  sub.s   $f18, $f10, $f16           
/* 0067C 8088581C E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00680 80885820 AFA30034 */  sw      $v1, 0x0034($sp)           
.L80885824:
/* 00684 80885824 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00688 80885828 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0068C 8088582C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00690 80885830 0320F809 */  jalr    $ra, $t9                   
/* 00694 80885834 00000000 */  nop
/* 00698 80885838 92020150 */  lbu     $v0, 0x0150($s0)           ## 00000150
/* 0069C 8088583C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 006A0 80885840 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 006A4 80885844 10410003 */  beq     $v0, $at, .L80885854       
/* 006A8 80885848 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 006AC 8088584C 54410009 */  bnel    $v0, $at, .L80885874       
/* 006B0 80885850 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
.L80885854:
/* 006B4 80885854 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
/* 006B8 80885858 C4660008 */  lwc1    $f6, 0x0008($v1)           ## 00000008
/* 006BC 8088585C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 006C0 80885860 46000100 */  add.s   $f4, $f0, $f0              
/* 006C4 80885864 46062201 */  sub.s   $f8, $f4, $f6              
/* 006C8 80885868 460A4401 */  sub.s   $f16, $f8, $f10            
/* 006CC 8088586C E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 006D0 80885870 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
.L80885874:
/* 006D4 80885874 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 006D8 80885878 C4600008 */  lwc1    $f0, 0x0008($v1)           ## 00000008
/* 006DC 8088587C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 006E0 80885880 46049181 */  sub.s   $f6, $f18, $f4             
/* 006E4 80885884 44815000 */  mtc1    $at, $f10                  ## $f10 = 255.00
/* 006E8 80885888 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 006EC 8088588C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 006F0 80885890 46060201 */  sub.s   $f8, $f0, $f6              
/* 006F4 80885894 46004083 */  div.s   $f2, $f8, $f0              
/* 006F8 80885898 46025402 */  mul.s   $f16, $f10, $f2            
/* 006FC 8088589C 444CF800 */  cfc1    $t4, $31
/* 00700 808858A0 44CDF800 */  ctc1    $t5, $31
/* 00704 808858A4 00000000 */  nop
/* 00708 808858A8 460084A4 */  cvt.w.s $f18, $f16                 
/* 0070C 808858AC 444DF800 */  cfc1    $t5, $31
/* 00710 808858B0 00000000 */  nop
/* 00714 808858B4 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 00718 808858B8 51A00013 */  beql    $t5, $zero, .L80885908     
/* 0071C 808858BC 440D9000 */  mfc1    $t5, $f18                  
/* 00720 808858C0 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 00724 808858C4 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00728 808858C8 46128481 */  sub.s   $f18, $f16, $f18           
/* 0072C 808858CC 44CDF800 */  ctc1    $t5, $31
/* 00730 808858D0 00000000 */  nop
/* 00734 808858D4 460094A4 */  cvt.w.s $f18, $f18                 
/* 00738 808858D8 444DF800 */  cfc1    $t5, $31
/* 0073C 808858DC 00000000 */  nop
/* 00740 808858E0 31AD0078 */  andi    $t5, $t5, 0x0078           ## $t5 = 00000000
/* 00744 808858E4 15A00005 */  bne     $t5, $zero, .L808858FC     
/* 00748 808858E8 00000000 */  nop
/* 0074C 808858EC 440D9000 */  mfc1    $t5, $f18                  
/* 00750 808858F0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00754 808858F4 10000007 */  beq     $zero, $zero, .L80885914   
/* 00758 808858F8 01A16825 */  or      $t5, $t5, $at              ## $t5 = 80000000
.L808858FC:
/* 0075C 808858FC 10000005 */  beq     $zero, $zero, .L80885914   
/* 00760 80885900 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 00764 80885904 440D9000 */  mfc1    $t5, $f18                  
.L80885908:
/* 00768 80885908 00000000 */  nop
/* 0076C 8088590C 05A0FFFB */  bltz    $t5, .L808858FC            
/* 00770 80885910 00000000 */  nop
.L80885914:
/* 00774 80885914 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 000000FF
/* 00778 80885918 44CCF800 */  ctc1    $t4, $31
/* 0077C 8088591C 29C10033 */  slti    $at, $t6, 0x0033           
/* 00780 80885920 1420001F */  bne     $at, $zero, .L808859A0     
/* 00784 80885924 A20D0153 */  sb      $t5, 0x0153($s0)           ## 00000153
/* 00788 80885928 846F0002 */  lh      $t7, 0x0002($v1)           ## 00000002
/* 0078C 8088592C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00790 80885930 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00794 80885934 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00798 80885938 02212821 */  addu    $a1, $s1, $at              
/* 0079C 8088593C 26060158 */  addiu   $a2, $s0, 0x0158           ## $a2 = 00000158
/* 007A0 80885940 468021A0 */  cvt.s.w $f6, $f4                   
/* 007A4 80885944 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007A8 80885948 46023202 */  mul.s   $f8, $f6, $f2              
/* 007AC 8088594C 4600428D */  trunc.w.s $f10, $f8                  
/* 007B0 80885950 44085000 */  mfc1    $t0, $f10                  
/* 007B4 80885954 00000000 */  nop
/* 007B8 80885958 A608019A */  sh      $t0, 0x019A($s0)           ## 0000019A
/* 007BC 8088595C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 007C0 80885960 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 007C4 80885964 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 007C8 80885968 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 007CC 8088596C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 007D0 80885970 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 007D4 80885974 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007D8 80885978 3C098016 */  lui     $t1, %hi(gSaveContext+0x1360)
/* 007DC 8088597C 8D29F9C0 */  lw      $t1, %lo(gSaveContext+0x1360)($t1)
/* 007E0 80885980 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E4 80885984 29210004 */  slti    $at, $t1, 0x0004           
/* 007E8 80885988 50200011 */  beql    $at, $zero, .L808859D0     
/* 007EC 8088598C 860B0156 */  lh      $t3, 0x0156($s0)           ## 00000156
/* 007F0 80885990 0C00BE5D */  jal     func_8002F974              
/* 007F4 80885994 240520A3 */  addiu   $a1, $zero, 0x20A3         ## $a1 = 000020A3
/* 007F8 80885998 1000000D */  beq     $zero, $zero, .L808859D0   
/* 007FC 8088599C 860B0156 */  lh      $t3, 0x0156($s0)           ## 00000156
.L808859A0:
/* 00800 808859A0 920A0150 */  lbu     $t2, 0x0150($s0)           ## 00000150
/* 00804 808859A4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00808 808859A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0080C 808859AC 55410008 */  bnel    $t2, $at, .L808859D0       
/* 00810 808859B0 860B0156 */  lh      $t3, 0x0156($s0)           ## 00000156
/* 00814 808859B4 0C00B32C */  jal     Flags_GetTreasure
              
/* 00818 808859B8 92050151 */  lbu     $a1, 0x0151($s0)           ## 00000151
/* 0081C 808859BC 50400004 */  beql    $v0, $zero, .L808859D0     
/* 00820 808859C0 860B0156 */  lh      $t3, 0x0156($s0)           ## 00000156
/* 00824 808859C4 0C00B55C */  jal     Actor_Kill
              
/* 00828 808859C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0082C 808859CC 860B0156 */  lh      $t3, 0x0156($s0)           ## 00000156
.L808859D0:
/* 00830 808859D0 25790001 */  addiu   $t9, $t3, 0x0001           ## $t9 = 00000001
/* 00834 808859D4 A6190156 */  sh      $t9, 0x0156($s0)           ## 00000156
.L808859D8:
/* 00838 808859D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0083C 808859DC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00840 808859E0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00844 808859E4 03E00008 */  jr      $ra                        
/* 00848 808859E8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
