.late_rodata
glabel D_8013E900
    .float 10430.378

glabel D_8013E904
    .float 3.1415927 # M_PI

glabel D_8013E908
    .float 1.5707964 # M_PI / 2

.text
glabel func_8008F87C
/* B06A1C 8008F87C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* B06A20 8008F880 AFBF0024 */  sw    $ra, 0x24($sp)
/* B06A24 8008F884 F7B40018 */  sdc1  $f20, 0x18($sp)
/* B06A28 8008F888 AFA400B0 */  sw    $a0, 0xb0($sp)
/* B06A2C 8008F88C AFA500B4 */  sw    $a1, 0xb4($sp)
/* B06A30 8008F890 AFA600B8 */  sw    $a2, 0xb8($sp)
/* B06A34 8008F894 AFA700BC */  sw    $a3, 0xbc($sp)
/* B06A38 8008F898 C4A40054 */  lwc1  $f4, 0x54($a1)
/* B06A3C 8008F89C 44803000 */  mtc1  $zero, $f6
/* B06A40 8008F8A0 00000000 */  nop
/* B06A44 8008F8A4 4604303E */  c.le.s $f6, $f4
/* B06A48 8008F8A8 00000000 */  nop
/* B06A4C 8008F8AC 45020102 */  bc1fl .L8008FCB8
/* B06A50 8008F8B0 8FBF0024 */   lw    $ra, 0x24($sp)
/* B06A54 8008F8B4 8CAF067C */  lw    $t7, 0x67c($a1)
/* B06A58 8008F8B8 00A02025 */  move  $a0, $a1
/* B06A5C 8008F8BC 31F80080 */  andi  $t8, $t7, 0x80
/* B06A60 8008F8C0 570000FD */  bnezl $t8, .L8008FCB8
/* B06A64 8008F8C4 8FBF0024 */   lw    $ra, 0x24($sp)
/* B06A68 8008F8C8 0C023C36 */  jal   func_8008F0D8
/* B06A6C 8008F8CC 80A50154 */   lb    $a1, 0x154($a1)
/* B06A70 8008F8D0 044100F8 */  bgez  $v0, .L8008FCB4
/* B06A74 8008F8D4 3C038016 */   lui   $v1, %hi(gSaveContext+4) # $v1, 0x8016
/* B06A78 8008F8D8 8C63E664 */  lw    $v1, %lo(gSaveContext+4)($v1)
/* B06A7C 8008F8DC 3C018012 */  lui   $at, %hi(D_80126058)
/* B06A80 8008F8E0 8FB900B4 */  lw    $t9, 0xb4($sp)
/* B06A84 8008F8E4 00031080 */  sll   $v0, $v1, 2
/* B06A88 8008F8E8 00220821 */  addu  $at, $at, $v0
/* B06A8C 8008F8EC C4286058 */  lwc1  $f8, %lo(D_80126058)($at)
/* B06A90 8008F8F0 3C018012 */  lui   $at, %hi(D_80126060)
/* B06A94 8008F8F4 00220821 */  addu  $at, $at, $v0
/* B06A98 8008F8F8 C42A6060 */  lwc1  $f10, %lo(D_80126060)($at)
/* B06A9C 8008F8FC 3C018012 */  lui   $at, %hi(D_80126068)
/* B06AA0 8008F900 00220821 */  addu  $at, $at, $v0
/* B06AA4 8008F904 E7A8007C */  swc1  $f8, 0x7c($sp)
/* B06AA8 8008F908 E7AA0078 */  swc1  $f10, 0x78($sp)
/* B06AAC 8008F90C C4246068 */  lwc1  $f4, %lo(D_80126068)($at)
/* B06AB0 8008F910 C72606C4 */  lwc1  $f6, 0x6c4($t9)
/* B06AB4 8008F914 0C034213 */  jal   Matrix_Push
/* B06AB8 8008F918 46062501 */   sub.s $f20, $f4, $f6
/* B06ABC 8008F91C 8FA400BC */  lw    $a0, 0xbc($sp)
/* B06AC0 8008F920 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B06AC4 8008F924 8FA500C0 */   lw    $a1, 0xc0($sp)
/* B06AC8 8008F928 3C048012 */  lui   $a0, %hi(D_8012602C) # $a0, 0x8012
/* B06ACC 8008F92C 2484602C */  addiu $a0, %lo(D_8012602C) # addiu $a0, $a0, 0x602c
/* B06AD0 8008F930 0C0346BD */  jal   Matrix_MultVec3f
/* B06AD4 8008F934 27A500A4 */   addiu $a1, $sp, 0xa4
/* B06AD8 8008F938 8FA200C8 */  lw    $v0, 0xc8($sp)
/* B06ADC 8008F93C 3C038016 */  lui   $v1, %hi(gSaveContext+4) # $v1, 0x8016
/* B06AE0 8008F940 8C63E664 */  lw    $v1, %lo(gSaveContext+4)($v1)
/* B06AE4 8008F944 8FAE00B8 */  lw    $t6, 0xb8($sp)
/* B06AE8 8008F948 00400821 */  addu  $at, $v0, $zero
/* B06AEC 8008F94C 00021080 */  sll   $v0, $v0, 2
/* B06AF0 8008F950 00037880 */  sll   $t7, $v1, 2
/* B06AF4 8008F954 8DD90020 */  lw    $t9, 0x20($t6)
/* B06AF8 8008F958 00411023 */  subu  $v0, $v0, $at
/* B06AFC 8008F95C 3C188012 */  lui   $t8, %hi(D_80126038) # $t8, 0x8012
/* B06B00 8008F960 01E37823 */  subu  $t7, $t7, $v1
/* B06B04 8008F964 000F7880 */  sll   $t7, $t7, 2
/* B06B08 8008F968 27186038 */  addiu $t8, %lo(D_80126038) # addiu $t8, $t8, 0x6038
/* B06B0C 8008F96C 00021040 */  sll   $v0, $v0, 1
/* B06B10 8008F970 AFA20038 */  sw    $v0, 0x38($sp)
/* B06B14 8008F974 01F82021 */  addu  $a0, $t7, $t8
/* B06B18 8008F978 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B06B1C 8008F97C 03222821 */   addu  $a1, $t9, $v0
/* B06B20 8008F980 3C038016 */  lui   $v1, %hi(gSaveContext+4)
/* B06B24 8008F984 8C63E664 */  lw    $v1, %lo(gSaveContext+4)($v1)
/* B06B28 8008F988 44807000 */  mtc1  $zero, $f14
/* B06B2C 8008F98C 3C018012 */  lui   $at, %hi(D_80126050)
/* B06B30 8008F990 00037880 */  sll   $t7, $v1, 2
/* B06B34 8008F994 002F0821 */  addu  $at, $at, $t7
/* B06B38 8008F998 44067000 */  mfc1  $a2, $f14
/* B06B3C 8008F99C C42C6050 */  lwc1  $f12, %lo(D_80126050)($at)
/* B06B40 8008F9A0 0C034261 */  jal   Matrix_Translate
/* B06B44 8008F9A4 24070001 */   li    $a3, 1
/* B06B48 8008F9A8 3C048012 */  lui   $a0, %hi(D_8012602C)
/* B06B4C 8008F9AC 2484602C */  addiu $a0, %lo(D_8012602C) # addiu $a0, $a0, 0x602c
/* B06B50 8008F9B0 0C0346BD */  jal   Matrix_MultVec3f
/* B06B54 8008F9B4 27A50098 */   addiu $a1, $sp, 0x98
/* B06B58 8008F9B8 3C048012 */  lui   $a0, %hi(D_80126070)
/* B06B5C 8008F9BC 24846070 */  addiu $a0, %lo(D_80126070) # addiu $a0, $a0, 0x6070
/* B06B60 8008F9C0 0C0346BD */  jal   Matrix_MultVec3f
/* B06B64 8008F9C4 27A5008C */   addiu $a1, $sp, 0x8c
/* B06B68 8008F9C8 0C034221 */  jal   Matrix_Pull
/* B06B6C 8008F9CC 00000000 */   nop
/* B06B70 8008F9D0 3C014170 */  li    $at, 0x41700000 # 0.000000
/* B06B74 8008F9D4 44815000 */  mtc1  $at, $f10
/* B06B78 8008F9D8 C7A80090 */  lwc1  $f8, 0x90($sp)
/* B06B7C 8008F9DC 8FA400B0 */  lw    $a0, 0xb0($sp)
/* B06B80 8008F9E0 27B8008C */  addiu $t8, $sp, 0x8c
/* B06B84 8008F9E4 460A4100 */  add.s $f4, $f8, $f10
/* B06B88 8008F9E8 248407C0 */  addiu $a0, $a0, 0x7c0
/* B06B8C 8008F9EC AFA40034 */  sw    $a0, 0x34($sp)
/* B06B90 8008F9F0 AFB80010 */  sw    $t8, 0x10($sp)
/* B06B94 8008F9F4 E7A40090 */  swc1  $f4, 0x90($sp)
/* B06B98 8008F9F8 27A50088 */  addiu $a1, $sp, 0x88
/* B06B9C 8008F9FC 27A60084 */  addiu $a2, $sp, 0x84
/* B06BA0 8008FA00 0C00F269 */  jal   func_8003C9A4
/* B06BA4 8008FA04 8FA700B4 */   lw    $a3, 0xb4($sp)
/* B06BA8 8008FA08 46140080 */  add.s $f2, $f0, $f20
/* B06BAC 8008FA0C C7A6009C */  lwc1  $f6, 0x9c($sp)
/* B06BB0 8008FA10 C7A80098 */  lwc1  $f8, 0x98($sp)
/* B06BB4 8008FA14 C7AA00A4 */  lwc1  $f10, 0xa4($sp)
/* B06BB8 8008FA18 4602303C */  c.lt.s $f6, $f2
/* B06BBC 8008FA1C E7A20080 */  swc1  $f2, 0x80($sp)
/* B06BC0 8008FA20 450200A5 */  bc1fl .L8008FCB8
/* B06BC4 8008FA24 8FBF0024 */   lw    $ra, 0x24($sp)
/* B06BC8 8008FA28 460A4301 */  sub.s $f12, $f8, $f10
/* B06BCC 8008FA2C C7A800AC */  lwc1  $f8, 0xac($sp)
/* B06BD0 8008FA30 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* B06BD4 8008FA34 C7AA00A8 */  lwc1  $f10, 0xa8($sp)
/* B06BD8 8008FA38 E7AC0070 */  swc1  $f12, 0x70($sp)
/* B06BDC 8008FA3C 46082381 */  sub.s $f14, $f4, $f8
/* B06BE0 8008FA40 460C6102 */  mul.s $f4, $f12, $f12
/* B06BE4 8008FA44 460A3401 */  sub.s $f16, $f6, $f10
/* B06BE8 8008FA48 E7AE0068 */  swc1  $f14, 0x68($sp)
/* B06BEC 8008FA4C 46108202 */  mul.s $f8, $f16, $f16
/* B06BF0 8008FA50 46082180 */  add.s $f6, $f4, $f8
/* B06BF4 8008FA54 460E7282 */  mul.s $f10, $f14, $f14
/* B06BF8 8008FA58 C7A80078 */  lwc1  $f8, 0x78($sp)
/* B06BFC 8008FA5C 460A3000 */  add.s $f0, $f6, $f10
/* B06C00 8008FA60 46000004 */  sqrt.s $f0, $f0
/* B06C04 8008FA64 46000102 */  mul.s $f4, $f0, $f0
/* B06C08 8008FA68 46000280 */  add.s $f10, $f0, $f0
/* B06C0C 8008FA6C 46082180 */  add.s $f6, $f4, $f8
/* B06C10 8008FA70 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* B06C14 8008FA74 460A3083 */  div.s $f2, $f6, $f10
/* B06C18 8008FA78 46021482 */  mul.s $f18, $f2, $f2
/* B06C1C 8008FA7C E7A20060 */  swc1  $f2, 0x60($sp)
/* B06C20 8008FA80 C7AE0060 */  lwc1  $f14, 0x60($sp)
/* B06C24 8008FA84 4612203C */  c.lt.s $f4, $f18
/* B06C28 8008FA88 46122501 */  sub.s $f20, $f4, $f18
/* B06C2C 8008FA8C 45020005 */  bc1fl .L8008FAA4
/* B06C30 8008FA90 4600A004 */   sqrt.s $f0, $f20
/* B06C34 8008FA94 4480A000 */  mtc1  $zero, $f20
/* B06C38 8008FA98 10000003 */  b     .L8008FAA8
/* B06C3C 8008FA9C 00000000 */   nop
/* B06C40 8008FAA0 4600A004 */  sqrt.s $f0, $f20
.L8008FAA4:
/* B06C44 8008FAA4 46000506 */  mov.s $f20, $f0
.L8008FAA8:
/* B06C48 8008FAA8 0C03F494 */  jal   Math_atan2f
/* B06C4C 8008FAAC 4600A306 */   mov.s $f12, $f20
/* B06C50 8008FAB0 C7A80080 */  lwc1  $f8, 0x80($sp)
/* B06C54 8008FAB4 C7A600A8 */  lwc1  $f6, 0xa8($sp)
/* B06C58 8008FAB8 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* B06C5C 8008FABC E7A00054 */  swc1  $f0, 0x54($sp)
/* B06C60 8008FAC0 46064301 */  sub.s $f12, $f8, $f6
/* B06C64 8008FAC4 460A5102 */  mul.s $f4, $f10, $f10
/* B06C68 8008FAC8 C7AA0068 */  lwc1  $f10, 0x68($sp)
/* B06C6C 8008FACC 460C6202 */  mul.s $f8, $f12, $f12
/* B06C70 8008FAD0 46082180 */  add.s $f6, $f4, $f8
/* B06C74 8008FAD4 460A5102 */  mul.s $f4, $f10, $f10
/* B06C78 8008FAD8 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* B06C7C 8008FADC 46043000 */  add.s $f0, $f6, $f4
/* B06C80 8008FAE0 46000004 */  sqrt.s $f0, $f0
/* B06C84 8008FAE4 46000202 */  mul.s $f8, $f0, $f0
/* B06C88 8008FAE8 46000100 */  add.s $f4, $f0, $f0
/* B06C8C 8008FAEC 460A4180 */  add.s $f6, $f8, $f10
/* B06C90 8008FAF0 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* B06C94 8008FAF4 46043383 */  div.s $f14, $f6, $f4
/* B06C98 8008FAF8 460E7482 */  mul.s $f18, $f14, $f14
/* B06C9C 8008FAFC 460E0201 */  sub.s $f8, $f0, $f14
/* B06CA0 8008FB00 E7A8005C */  swc1  $f8, 0x5c($sp)
/* B06CA4 8008FB04 4612503C */  c.lt.s $f10, $f18
/* B06CA8 8008FB08 46125501 */  sub.s $f20, $f10, $f18
/* B06CAC 8008FB0C 45020005 */  bc1fl .L8008FB24
/* B06CB0 8008FB10 4600A004 */   sqrt.s $f0, $f20
/* B06CB4 8008FB14 4480A000 */  mtc1  $zero, $f20
/* B06CB8 8008FB18 10000003 */  b     .L8008FB28
/* B06CBC 8008FB1C 00000000 */   nop
/* B06CC0 8008FB20 4600A004 */  sqrt.s $f0, $f20
.L8008FB24:
/* B06CC4 8008FB24 46000506 */  mov.s $f20, $f0
.L8008FB28:
/* B06CC8 8008FB28 0C03F494 */  jal   Math_atan2f
/* B06CCC 8008FB2C 4600A306 */   mov.s $f12, $f20
/* B06CD0 8008FB30 C7AC005C */  lwc1  $f12, 0x5c($sp)
/* B06CD4 8008FB34 4600A386 */  mov.s $f14, $f20
/* B06CD8 8008FB38 0C03F494 */  jal   Math_atan2f
/* B06CDC 8008FB3C E7A00050 */   swc1  $f0, 0x50($sp)
/* B06CE0 8008FB40 3C018014 */  lui   $at, %hi(D_8013E900)
/* B06CE4 8008FB44 C42CE900 */  lwc1  $f12, %lo(D_8013E900)($at)
/* B06CE8 8008FB48 3C018014 */  lui   $at, %hi(D_8013E904)
/* B06CEC 8008FB4C C426E904 */  lwc1  $f6, %lo(D_8013E904)($at)
/* B06CF0 8008FB50 3C018014 */  lui   $at, %hi(D_8013E908)
/* B06CF4 8008FB54 C7A20050 */  lwc1  $f2, 0x50($sp)
/* B06CF8 8008FB58 C424E908 */  lwc1  $f4, %lo(D_8013E908)($at)
/* B06CFC 8008FB5C 8FAA00B8 */  lw    $t2, 0xb8($sp)
/* B06D00 8008FB60 8FAB0038 */  lw    $t3, 0x38($sp)
/* B06D04 8008FB64 46022201 */  sub.s $f8, $f4, $f2
/* B06D08 8008FB68 8D4E0020 */  lw    $t6, 0x20($t2)
/* B06D0C 8008FB6C 34018000 */  li    $at, 32768
/* B06D10 8008FB70 46080280 */  add.s $f10, $f0, $f8
/* B06D14 8008FB74 01CB1821 */  addu  $v1, $t6, $t3
/* B06D18 8008FB78 84790004 */  lh    $t9, 4($v1)
/* B06D1C 8008FB7C 84620000 */  lh    $v0, ($v1)
/* B06D20 8008FB80 460A3101 */  sub.s $f4, $f6, $f10
/* B06D24 8008FB84 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* B06D28 8008FB88 00022023 */  negu  $a0, $v0
/* B06D2C 8008FB8C 460C2202 */  mul.s $f8, $f4, $f12
/* B06D30 8008FB90 460A1101 */  sub.s $f4, $f2, $f10
/* B06D34 8008FB94 4600418D */  trunc.w.s $f6, $f8
/* B06D38 8008FB98 460C2202 */  mul.s $f8, $f4, $f12
/* B06D3C 8008FB9C 440E3000 */  mfc1  $t6, $f6
/* B06D40 8008FBA0 00000000 */  nop
/* B06D44 8008FBA4 01D94823 */  subu  $t1, $t6, $t9
/* B06D48 8008FBA8 00094C00 */  sll   $t1, $t1, 0x10
/* B06D4C 8008FBAC 00094C03 */  sra   $t1, $t1, 0x10
/* B06D50 8008FBB0 04400003 */  bltz  $v0, .L8008FBC0
/* B06D54 8008FBB4 4600418D */   trunc.w.s $f6, $f8
/* B06D58 8008FBB8 10000001 */  b     .L8008FBC0
/* B06D5C 8008FBBC 00402025 */   move  $a0, $v0
.L8008FBC0:
/* B06D60 8008FBC0 84620002 */  lh    $v0, 2($v1)
/* B06D64 8008FBC4 8FAD00C0 */  lw    $t5, 0xc0($sp)
/* B06D68 8008FBC8 04400003 */  bltz  $v0, .L8008FBD8
/* B06D6C 8008FBCC 00021823 */   negu  $v1, $v0
/* B06D70 8008FBD0 10000001 */  b     .L8008FBD8
/* B06D74 8008FBD4 00401825 */   move  $v1, $v0
.L8008FBD8:
/* B06D78 8008FBD8 00647821 */  addu  $t7, $v1, $a0
/* B06D7C 8008FBDC 000FC400 */  sll   $t8, $t7, 0x10
/* B06D80 8008FBE0 00187403 */  sra   $t6, $t8, 0x10
/* B06D84 8008FBE4 44023000 */  mfc1  $v0, $f6
/* B06D88 8008FBE8 05C30005 */  bgezl $t6, .L8008FC00
/* B06D8C 8008FBEC 85AF0004 */   lh    $t7, 4($t5)
/* B06D90 8008FBF0 01214821 */  addu  $t1, $t1, $at
/* B06D94 8008FBF4 00094C00 */  sll   $t1, $t1, 0x10
/* B06D98 8008FBF8 00094C03 */  sra   $t1, $t1, 0x10
/* B06D9C 8008FBFC 85AF0004 */  lh    $t7, 4($t5)
.L8008FC00:
/* B06DA0 8008FC00 00021400 */  sll   $v0, $v0, 0x10
/* B06DA4 8008FC04 00021403 */  sra   $v0, $v0, 0x10
/* B06DA8 8008FC08 01E2C023 */  subu  $t8, $t7, $v0
/* B06DAC 8008FC0C A5B80004 */  sh    $t8, 4($t5)
/* B06DB0 8008FC10 8FB900C4 */  lw    $t9, 0xc4($sp)
/* B06DB4 8008FC14 240C0006 */  li    $t4, 6
/* B06DB8 8008FC18 8D4E0020 */  lw    $t6, 0x20($t2)
/* B06DBC 8008FC1C 032C0019 */  multu $t9, $t4
/* B06DC0 8008FC20 00007812 */  mflo  $t7
/* B06DC4 8008FC24 01CF3821 */  addu  $a3, $t6, $t7
/* B06DC8 8008FC28 84F80004 */  lh    $t8, 4($a3)
/* B06DCC 8008FC2C 0302C823 */  subu  $t9, $t8, $v0
/* B06DD0 8008FC30 A4F90004 */  sh    $t9, 4($a3)
/* B06DD4 8008FC34 8D4E0020 */  lw    $t6, 0x20($t2)
/* B06DD8 8008FC38 01CB1821 */  addu  $v1, $t6, $t3
/* B06DDC 8008FC3C 846F0004 */  lh    $t7, 4($v1)
/* B06DE0 8008FC40 01E9C021 */  addu  $t8, $t7, $t1
/* B06DE4 8008FC44 A4780004 */  sh    $t8, 4($v1)
/* B06DE8 8008FC48 8FAE00CC */  lw    $t6, 0xcc($sp)
/* B06DEC 8008FC4C 8D590020 */  lw    $t9, 0x20($t2)
/* B06DF0 8008FC50 01CC0019 */  multu $t6, $t4
/* B06DF4 8008FC54 00007812 */  mflo  $t7
/* B06DF8 8008FC58 032F4021 */  addu  $t0, $t9, $t7
/* B06DFC 8008FC5C 85180004 */  lh    $t8, 4($t0)
/* B06E00 8008FC60 03027021 */  addu  $t6, $t8, $v0
/* B06E04 8008FC64 01C9C823 */  subu  $t9, $t6, $t1
/* B06E08 8008FC68 A5190004 */  sh    $t9, 4($t0)
/* B06E0C 8008FC6C 8FA60084 */  lw    $a2, 0x84($sp)
/* B06E10 8008FC70 8FA50088 */  lw    $a1, 0x88($sp)
/* B06E14 8008FC74 0C010753 */  jal   func_80041D4C
/* B06E18 8008FC78 8FA40034 */   lw    $a0, 0x34($sp)
/* B06E1C 8008FC7C 28410002 */  slti  $at, $v0, 2
/* B06E20 8008FC80 1420000C */  bnez  $at, .L8008FCB4
/* B06E24 8008FC84 28410004 */   slti  $at, $v0, 4
/* B06E28 8008FC88 1020000A */  beqz  $at, .L8008FCB4
/* B06E2C 8008FC8C 8FA40034 */   lw    $a0, 0x34($sp)
/* B06E30 8008FC90 8FA50088 */  lw    $a1, 0x88($sp)
/* B06E34 8008FC94 0C010842 */  jal   func_80042108
/* B06E38 8008FC98 8FA60084 */   lw    $a2, 0x84($sp)
/* B06E3C 8008FC9C 14400005 */  bnez  $v0, .L8008FCB4
/* B06E40 8008FCA0 C7AA0080 */   lwc1  $f10, 0x80($sp)
/* B06E44 8008FCA4 E7AA0090 */  swc1  $f10, 0x90($sp)
/* B06E48 8008FCA8 8FA400B0 */  lw    $a0, 0xb0($sp)
/* B06E4C 8008FCAC 0C00A55A */  jal   func_80029568
/* B06E50 8008FCB0 27A5008C */   addiu $a1, $sp, 0x8c
.L8008FCB4:
/* B06E54 8008FCB4 8FBF0024 */  lw    $ra, 0x24($sp)
.L8008FCB8:
/* B06E58 8008FCB8 D7B40018 */  ldc1  $f20, 0x18($sp)
/* B06E5C 8008FCBC 27BD00B0 */  addiu $sp, $sp, 0xb0
/* B06E60 8008FCC0 03E00008 */  jr    $ra
/* B06E64 8008FCC4 00000000 */   nop

