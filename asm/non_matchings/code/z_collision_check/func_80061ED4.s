glabel func_80061ED4
/* AD9074 80061ED4 90CE0000 */  lbu   $t6, ($a2)
/* AD9078 80061ED8 AC850000 */  sw    $a1, ($a0)
/* AD907C 80061EDC A08E0017 */  sb    $t6, 0x17($a0)
/* AD9080 80061EE0 84CF0002 */  lh    $t7, 2($a2)
/* AD9084 80061EE4 A48F0010 */  sh    $t7, 0x10($a0)
/* AD9088 80061EE8 84D80004 */  lh    $t8, 4($a2)
/* AD908C 80061EEC A4980012 */  sh    $t8, 0x12($a0)
/* AD9090 80061EF0 90D90006 */  lbu   $t9, 6($a2)
/* AD9094 80061EF4 03E00008 */  jr    $ra
/* AD9098 80061EF8 A0990016 */   sb    $t9, 0x16($a0)
