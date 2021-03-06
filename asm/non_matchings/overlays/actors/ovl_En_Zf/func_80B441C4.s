glabel func_80B441C4
/* 00174 80B441C4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00178 80B441C8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0017C 80B441CC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00180 80B441D0 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00184 80B441D4 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 00188 80B441D8 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 0018C 80B441DC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00190 80B441E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00194 80B441E4 46002032 */  c.eq.s  $f4, $f0                   
/* 00198 80B441E8 00000000 */  nop
/* 0019C 80B441EC 45030009 */  bc1tl   .L80B44214                 
/* 001A0 80B441F0 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 001A4 80B441F4 44060000 */  mfc1    $a2, $f0                   
/* 001A8 80B441F8 0C2D1016 */  jal     func_80B44058              
/* 001AC 80B441FC 00000000 */  nop
/* 001B0 80B44200 50400004 */  beql    $v0, $zero, .L80B44214     
/* 001B4 80B44204 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 001B8 80B44208 10000034 */  beq     $zero, $zero, .L80B442DC   
/* 001BC 80B4420C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 001C0 80B44210 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
.L80B44214:
/* 001C4 80B44214 8C580000 */  lw      $t8, 0x0000($v0)           ## 00000024
/* 001C8 80B44218 27AE0030 */  addiu   $t6, $sp, 0x0030           ## $t6 = FFFFFFE8
/* 001CC 80B4421C ADD80000 */  sw      $t8, 0x0000($t6)           ## FFFFFFE8
/* 001D0 80B44220 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 00000028
/* 001D4 80B44224 ADCF0004 */  sw      $t7, 0x0004($t6)           ## FFFFFFEC
/* 001D8 80B44228 8C580008 */  lw      $t8, 0x0008($v0)           ## 0000002C
/* 001DC 80B4422C ADD80008 */  sw      $t8, 0x0008($t6)           ## FFFFFFF0
/* 001E0 80B44230 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 001E4 80B44234 A7B90044 */  sh      $t9, 0x0044($sp)           
/* 001E8 80B44238 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001EC 80B4423C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 001F0 80B44240 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 001F4 80B44244 C7A60050 */  lwc1    $f6, 0x0050($sp)           
/* 001F8 80B44248 46060202 */  mul.s   $f8, $f0, $f6              
/* 001FC 80B4424C E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 00200 80B44250 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00204 80B44254 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00208 80B44258 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 0020C 80B4425C C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 00210 80B44260 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00214 80B44264 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00218 80B44268 46105480 */  add.s   $f18, $f10, $f16           
/* 0021C 80B4426C 2408001C */  addiu   $t0, $zero, 0x001C         ## $t0 = 0000001C
/* 00220 80B44270 44061000 */  mfc1    $a2, $f2                   
/* 00224 80B44274 44071000 */  mfc1    $a3, $f2                   
/* 00228 80B44278 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 0022C 80B4427C C7A60050 */  lwc1    $f6, 0x0050($sp)           
/* 00230 80B44280 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00234 80B44284 46060202 */  mul.s   $f8, $f0, $f6              
/* 00238 80B44288 46082280 */  add.s   $f10, $f4, $f8             
/* 0023C 80B4428C E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 00240 80B44290 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00244 80B44294 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00248 80B44298 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 0024C 80B4429C E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00250 80B442A0 27AA0030 */  addiu   $t2, $sp, 0x0030           ## $t2 = FFFFFFE8
/* 00254 80B442A4 8D4C0000 */  lw      $t4, 0x0000($t2)           ## FFFFFFE8
/* 00258 80B442A8 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 0025C 80B442AC AD2C0000 */  sw      $t4, 0x0000($t1)           ## 00000000
/* 00260 80B442B0 8D4B0004 */  lw      $t3, 0x0004($t2)           ## FFFFFFEC
/* 00264 80B442B4 AD2B0004 */  sw      $t3, 0x0004($t1)           ## 00000004
/* 00268 80B442B8 8D4C0008 */  lw      $t4, 0x0008($t2)           ## FFFFFFF0
/* 0026C 80B442BC AD2C0008 */  sw      $t4, 0x0008($t1)           ## 00000008
/* 00270 80B442C0 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
/* 00274 80B442C4 87AD0044 */  lh      $t5, 0x0044($sp)           
/* 00278 80B442C8 30630001 */  andi    $v1, $v1, 0x0001           ## $v1 = 00000000
/* 0027C 80B442CC 2C630001 */  sltiu   $v1, $v1, 0x0001           
/* 00280 80B442D0 00031400 */  sll     $v0, $v1, 16               
/* 00284 80B442D4 00021403 */  sra     $v0, $v0, 16               
/* 00288 80B442D8 A60D0088 */  sh      $t5, 0x0088($s0)           ## 00000088
.L80B442DC:
/* 0028C 80B442DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00290 80B442E0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00294 80B442E4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00298 80B442E8 03E00008 */  jr      $ra                        
/* 0029C 80B442EC 00000000 */  nop
