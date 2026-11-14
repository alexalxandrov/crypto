┌ fcn.00153180(unsigned long arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg unsigned long arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00153180      pacibsp
│           0x00153184      stp   x29, x30, [var_60h]!
│           0x00153188      str   x27, [var_50h]
│           0x0015318c      stp   x26, x25, [var_40h]
│           0x00153190      stp   x24, x23, [var_30h]
│           0x00153194      stp   x22, x21, [var_20h]
│           0x00153198      stp   x20, x19, [var_10h]
│           0x0015319c      mov   x29, sp
│           0x001531a0      cmp   w0, 6                                ; arg1
│       ┌─< 0x001531a4      b.ne  0x153618
│       │   0x001531a8      ldr   x19, [x1, 0x30]                      ; aav.0x00000030
│       │                                                              ; [0x30:4]=0x58000911
│       │   0x001531ac      ldr   x21, [x1, 0x58]                      ; aav.0x00000058
│       │                                                              ; [0x58:4]=0xd51e1000
│       │   0x001531b0      ldr   x20, [x1, 0x80]                      ; aav.0x00000080
│       │                                                              ; [0x80:4]=0xd53e1000
│       │   0x001531b4      mov   x8, x19
│       │   0x001531b8      ldrb  w9, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001531bc      mov   x11, x19
│       │   0x001531c0      ldrb  w12, [x11, 0x10]!                    ; aav.0x00000010
│       │                                                              ; [0x10:4]=0x14000004
│       │   0x001531c4      ldrb  w10, [x19, 9]                        ; [0x9:4]=0x686561
│       │   0x001531c8      ldrb  w14, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x001531cc      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x001531d0      ldrb  w13, [x19, 0x11]                     ; [0x11:4]=0x140000
│       │   0x001531d4      ldrb  w15, [x11, 3]                        ; [0x3:4]=0x48776b00
│       │   0x001531d8      ldrb  w11, [x11, 2]                        ; [0x2:4]=0x776b0000
│       │   0x001531dc      bfi   w9, w10, 8, 8
│       │   0x001531e0      bfi   w8, w14, 8, 8
│       │   0x001531e4      bfi   w12, w13, 8, 8
│       │   0x001531e8      bfi   w11, w15, 8, 8
│       │   0x001531ec      bfi   w9, w8, 0x10, 0x10
│       │   0x001531f0      mov   w8, 0x1fff
│       │   0x001531f4      bfi   w12, w11, 0x10, 0x10
│       │   0x001531f8      add   w8, w9, w8
│       │   0x001531fc      mov   w10, aav.0x00001000
│       │   0x00153200      cmp   w9, 0
│       │   0x00153204      add   w9, w12, 0xfff
│       │   0x00153208      and   w8, w8, 0xfffff000
│       │   0x0015320c      and   w9, w9, 0xfffff000
│       │   0x00153210      csel  w8, w10, w8, eq
│       │   0x00153214      cmp   w12, 0
│       │   0x00153218      csel  w23, wzr, w9, eq
│       │   0x0015321c      cmp   w23, w12
│       │   0x00153220      add   w24, w23, w8                         ; 0x1000
│       │                                                              ; aav.0x00001000
│      ┌──< 0x00153224      b.hs  0x153270
│      ││   0x00153228      adrp  x22, 0x23c000
│      ││   0x0015322c      add   x22, x22, 0xb65
│      ││   0x00153230      mov   x0, x22                              ; int64_t arg1
│      ││   0x00153234      bl    fcn.0014c9f8
│      ││   0x00153238      mov   w0, 2
│      ││   0x0015323c      bl    fcn.0013d500
│      ││   0x00153240      mov   w1, w0
│      ││   0x00153244      mov   w0, 0xa
│      ││   0x00153248      mov   w2, 0xff0000
│      ││   0x0015324c      mov   w3, wzr
│      ││   0x00153250      mov   x4, x22                              ; int64_t arg5
│      ││   0x00153254      bl    fcn.0013deb8
│      ││   0x00153258      bl    fcn.000f9608
│      ││   0x0015325c      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153260      movk  w0, 0x4c, lsl 16
│      ││   0x00153264      bl    fcn.001b3f80
│      ││   0x00153268      mov   w0, 0x17
│      ││   0x0015326c      bl    fcn.0016e1a8
│      └──> 0x00153270      mov   x8, x19
│       │   0x00153274      ldrb  w1, [x8, 0x24]!                      ; aav.0x00000024
│       │                                                              ; [0x24:4]=0xb9400001
│       │   0x00153278      ldrb  w9, [x19, 0x25]                      ; [0x25:4]=0xc1b94000
│       │   0x0015327c      adrp  x0, 0x253000
│       │   0x00153280      mov   w22, 0xfe00
│       │   0x00153284      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153288      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x0015328c      bfi   w1, w9, 8, 8
│       │   0x00153290      add   x0, x0, 0xac9                        ; int64_t arg1
│       │   0x00153294      movk  w22, 0xf47f, lsl 16
│       │   0x00153298      bfi   w8, w10, 8, 8
│       │   0x0015329c      bfi   w1, w8, 0x10, 0x10
│       │   0x001532a0      bl    fcn.0014c9f8
│       │   0x001532a4      mov   x8, x19
│       │   0x001532a8      ldrb  w1, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001532ac      ldrb  w9, [x19, 9]                         ; [0x9:4]=0x686561
│       │   0x001532b0      adrp  x0, 0x24f000
│       │   0x001532b4      add   x0, x0, 0x2d1                        ; int64_t arg1
│       │   0x001532b8      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x001532bc      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x001532c0      bfi   w1, w9, 8, 8
│       │   0x001532c4      bfi   w8, w10, 8, 8
│       │   0x001532c8      bfi   w1, w8, 0x10, 0x10
│       │   0x001532cc      bl    fcn.0014c9f8
│       │   0x001532d0      mov   x25, x19
│       │   0x001532d4      ldrb  w1, [x25, 0x10]!                     ; aav.0x00000010
│       │                                                              ; [0x10:4]=0x14000004
│       │   0x001532d8      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│       │   0x001532dc      add   x0, x0, 0x989                        ; int64_t arg1
│       │   0x001532e0      ldrb  w8, [x25, 3]                         ; [0x3:4]=0x48776b00
│       │   0x001532e4      ldrb  w9, [x25, 2]                         ; [0x2:4]=0x776b0000
│       │   0x001532e8      ldrb  w10, [x25, 1]                        ; [0x1:4]=0x6b000000
│       │   0x001532ec      bfi   w9, w8, 8, 8
│       │   0x001532f0      bfi   w1, w10, 8, 8
│       │   0x001532f4      bfi   w1, w9, 0x10, 0x10
│       │   0x001532f8      bl    fcn.0014c9f8
│       │   0x001532fc      ldrb  w8, [x25, 0x653]                     ; [0x653:4]=0x1c6891
│       │   0x00153300      ldrb  w9, [x25, 0x652]                     ; [0x652:4]=0x1c689136 ; "6\x91h\U0000001c"
│       │   0x00153304      ldrb  w10, [x25, 0x651]                    ; [0x651:4]=0x68913604
│       │   0x00153308      ldrb  w1, [x25, 0x650]                     ; [0x650:4]=0x91360400
│       │   0x0015330c      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│       │   0x00153310      bfi   w9, w8, 8, 8
│       │   0x00153314      add   x0, x0, 0xeb1                        ; int64_t arg1
│       │   0x00153318      bfi   w1, w10, 8, 8
│       │   0x0015331c      bfi   w1, w9, 0x10, 0x10
│       │   0x00153320      bl    fcn.0014c9f8
│       │   0x00153324      ldrb  w8, [x25, 0x663]                     ; [0x663:4]=0x5088b
│       │   0x00153328      ldrb  w9, [x25, 0x662]                     ; [0x662:4]=0x5088b08
│       │   0x0015332c      ldrb  w10, [x25, 0x661]                    ; [0x661:4]=0x88b0802
│       │   0x00153330      ldrb  w1, [x25, 0x660]                     ; [0x660:4]=0x8b08028a
│       │   0x00153334      adrp  x0, 0x26d000
│       │   0x00153338      bfi   w9, w8, 8, 8
│       │   0x0015333c      add   x0, x0, 0xd9                         ; int64_t arg1
│       │   0x00153340      bfi   w1, w10, 8, 8
│       │   0x00153344      bfi   w1, w9, 0x10, 0x10
│       │   0x00153348      bl    fcn.0014c9f8
│       │   0x0015334c      ldrb  w8, [x25, 0x663]                     ; [0x663:4]=0x5088b
│       │   0x00153350      ldrb  w9, [x25, 0x662]                     ; [0x662:4]=0x5088b08
│       │   0x00153354      ldrb  w10, [x25, 0x661]                    ; [0x661:4]=0x88b0802
│       │   0x00153358      ldrb  w11, [x25, 0x660]                    ; [0x660:4]=0x8b08028a
│       │   0x0015335c      adrp  x25, 0x55c000
│       │   0x00153360      ldr   w12, [x25, aav.0x00000d00]           ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│       │   0x00153364      bfi   w9, w8, 8, 8
│       │   0x00153368      bfi   w11, w10, 8, 8
│       │   0x0015336c      bfi   w11, w9, 0x10, 0x10
│       │   0x00153370      add   w9, w11, 0xfff
│       │   0x00153374      cmp   w11, 0
│       │   0x00153378      and   w9, w9, 0xfffff000
│       │   0x0015337c      eor   x8, x12, 0x80000000
│       │   0x00153380      csel  w9, wzr, w9, eq
│       │   0x00153384      add   w24, w24, w9                         ; 0x1000
│       │                                                              ; aav.0x00001000
│       │   0x00153388      sub   x8, x22, x8
│       │   0x0015338c      cmp   x8, x24
│      ┌──< 0x00153390      b.hs  0x1533dc
│      ││   0x00153394      adrp  x0, 0x245000
│      ││   0x00153398      add   x0, x0, 0xc67                        ; int64_t arg1
│      ││   0x0015339c      bl    fcn.0014c9f8
│      ││   0x001533a0      mov   w0, 2
│      ││   0x001533a4      bl    fcn.0013d500
│      ││   0x001533a8      adrp  x4, 0x266000
│      ││   0x001533ac      mov   w1, w0
│      ││   0x001533b0      add   x4, x4, 0xcf3                        ; int64_t arg5
│      ││   0x001533b4      mov   w0, 0xa
│      ││   0x001533b8      mov   w2, 0xff0000
│      ││   0x001533bc      mov   w3, wzr
│      ││   0x001533c0      bl    fcn.0013deb8
│      ││   0x001533c4      bl    fcn.000f9608
│      ││   ; DATA XREF from fcn.00060124 @ +0x1704
│      ││   0x001533c8      mov   w0, 0x4b40                           ; '@K'
│      ││   0x001533cc      movk  w0, 0x4c, lsl 16
│      ││   0x001533d0      bl    fcn.001b3f80
│      ││   0x001533d4      mov   w0, 0xc
│      ││   0x001533d8      bl    fcn.0016e1a8
│      └──> 0x001533dc      mov   w8, 1
│       │   0x001533e0      movk  w8, 0x6f70, lsl 16
│       │   0x001533e4      cmp   w23, w8
│      ┌──< 0x001533e8      b.lo  0x153434
│      ││   0x001533ec      adrp  x0, 0x27c000
│      ││   0x001533f0      add   x0, x0, 0xd90                        ; int64_t arg1
│      ││   0x001533f4      bl    fcn.0014c9f8
│      ││   0x001533f8      mov   w0, 2
│      ││   0x001533fc      bl    fcn.0013d500
│      ││   0x00153400      adrp  x4, 0x24c000
│      ││   0x00153404      mov   w1, w0
│      ││   0x00153408      add   x4, x4, 0x70f                        ; int64_t arg5
│      ││   0x0015340c      mov   w0, 0xa
│      ││   0x00153410      mov   w2, 0xff0000
│      ││   0x00153414      mov   w3, wzr
│      ││   0x00153418      bl    fcn.0013deb8
│      ││   0x0015341c      bl    fcn.000f9608
│      ││   0x00153420      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153424      movk  w0, 0x4c, lsl 16
│      ││   0x00153428      bl    fcn.001b3f80
│      ││   0x0015342c      mov   w0, 0xd
│      ││   0x00153430      bl    fcn.0016e1a8
│      └──> 0x00153434      bl    fcn.0016e568
│      ┌──< 0x00153438      tbz   w0, 0x13, 0x153478
│      ││   0x0015343c      ldrb  w8, [x19, 0x663]                     ; [0x663:4]=0x5088b
│      ││   0x00153440      ldrb  w9, [x19, 0x662]                     ; [0x662:4]=0x5088b08
│      ││   0x00153444      ldrb  w10, [x19, 0x661]                    ; [0x661:4]=0x88b0802
│      ││   0x00153448      ldrb  w1, [x19, 0x660]                     ; [0x660:4]=0x8b08028a
│      ││   0x0015344c      adrp  x0, 0x245000
│      ││   0x00153450      bfi   w9, w8, 8, 8
│      ││   0x00153454      add   x0, x0, 0xc99                        ; int64_t arg1
│      ││   0x00153458      bfi   w1, w10, 8, 8
│      ││   0x0015345c      bfi   w1, w9, 0x10, 0x10
│      ││   0x00153460      add   w8, w1, 0xfff
│      ││   0x00153464      and   w8, w8, 0xfffff000
│      ││   0x00153468      cmp   w1, 0
│      ││   0x0015346c      csel  w2, wzr, w8, eq
│      ││   0x00153470      add   w24, w2, w24                         ; 0x1000
│      ││                                                              ; aav.0x00001000
│      ││   0x00153474      bl    fcn.0014c9f8
│      └──> 0x00153478      ldr   w8, [x25, aav.0x00000d00]            ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│       │   0x0015347c      eor   x8, x8, 0x80000000
│       │   0x00153480      sub   x8, x22, x8
│       │   0x00153484      cmp   x8, x24
│      ┌──< 0x00153488      b.hs  0x1534d4
│      ││   0x0015348c      adrp  x0, 0x262000
│      ││   0x00153490      add   x0, x0, 0xd76                        ; int64_t arg1
│      ││   0x00153494      bl    fcn.0014c9f8
│      ││   0x00153498      mov   w0, 2
│      ││   0x0015349c      bl    fcn.0013d500
│      ││   0x001534a0      adrp  x4, 0x25a000
│      ││   0x001534a4      mov   w1, w0
│      ││   0x001534a8      add   x4, x4, 0x343                        ; int64_t arg5
│      ││   0x001534ac      mov   w0, 0xa
│      ││   0x001534b0      mov   w2, 0xff0000
│      ││   0x001534b4      mov   w3, wzr
│      ││   0x001534b8      bl    fcn.0013deb8
│      ││   0x001534bc      bl    fcn.000f9608
│      ││   0x001534c0      mov   w0, 0x4b40                           ; '@K'
│      ││   0x001534c4      movk  w0, 0x4c, lsl 16
│      ││   0x001534c8      bl    fcn.001b3f80
│      ││   0x001534cc      mov   w0, 0xb
│      ││   0x001534d0      bl    fcn.0016e1a8
│      └──> 0x001534d4      add   w23, w24, 0x120
│       │   0x001534d8      add   w22, w24, 0x10                       ; 0x1010
│       │                                                              ; aav.0x00001010
│       │   0x001534dc      bfi   x23, x24, 0x20, 0x20
│       │   0x001534e0      mov   x0, x23                              ; int64_t arg1
│       │   0x001534e4      mov   x1, x22
│       │   0x001534e8      bl    fcn.0017e274
│       │   0x001534ec      mov   x10, x19
│       │   0x001534f0      ldrb  w8, [x10, 0x18]!                     ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x001534f4      ldrb  w9, [x10, -8]!                       ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001534f8      ldrb  w2, [x10, -8]!                       ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001534fc      ldrb  w24, [x10, 0x1c]!                    ; aav.0x0000001c
│       │                                                              ; [0x1c:4]=0
│       │   0x00153500      ldrsb x11, [x10, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153504      ldrb  w12, [x10, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153508      ldrb  w13, [x10, 1]                        ; [0x1:4]=0x6b000000
│       │   0x0015350c      ldurb w14, [x10, -0x19]                    ; [0x19:4]=0x76000 "........"
│       │   0x00153510      ldurb w15, [x10, -0x1a]                    ; [0x1a:4]=0x760 str.FAILEL3FSTARSUCC
│       │   0x00153514      ldurb w16, [x10, -0x1b]                    ; [0x1b:4]=7
│       │   0x00153518      ldurb w17, [x10, -0x11]                    ; [0x11:4]=0x140000
│       │   0x0015351c      ldurb w18, [x10, -0x12]                    ; [0x12:4]=0x1400
│       │   0x00153520      ldurb w0, [x10, -0x13]                     ; [0x13:4]=20
│       │   0x00153524      bfi   x12, x11, 8, 0x38
│       │   0x00153528      ldurb w11, [x10, -9]                       ; [0x9:4]=0x686561
│       │   0x0015352c      bfi   x24, x13, 8, 8
│       │   0x00153530      ldurb w13, [x10, -0xa]                     ; [0xa:4]=0x6865
│       │   0x00153534      bfi   x15, x14, 8, 8
│       │   0x00153538      ldurb w14, [x10, -0xb]                     ; [0xb:4]=104
│       │   0x0015353c      bfi   x2, x16, 8, 8
│       │   0x00153540      ldrb  w16, [x10, 0x63f]                    ; [0x63f:4]=0x111f91
│       │   0x00153544      bfi   w18, w17, 8, 8
│       │   0x00153548      ldrb  w17, [x10, 0x63e]                    ; [0x63e:4]=0x111f9100
│       │   0x0015354c      bfi   w9, w0, 8, 8
│       │   0x00153550      ldrb  w0, [x10, 0x63d]                     ; [0x63d:4]=0x1f910005
│       │   0x00153554      ldrb  w10, [x10, 0x63c]                    ; [0x63c:4]=0x91000508
│       │   0x00153558      bfi   x24, x12, 0x10, 0x30
│       │   0x0015355c      bfi   w13, w11, 8, 8
│       │   0x00153560      bfi   w8, w14, 8, 8
│       │   0x00153564      bfi   w17, w16, 8, 8
│       │   0x00153568      bfi   w10, w0, 8, 8
│       │   0x0015356c      bfi   x2, x15, 0x10, 0x10
│       │   0x00153570      sub   w11, w24, 1
│       │   0x00153574      bfi   w9, w18, 0x10, 0x10
│       │   0x00153578      bfi   w8, w13, 0x10, 0x10
│       │   0x0015357c      bfi   w10, w17, 0x10, 0x10
│       │   0x00153580      add   w12, w11, w2
│       │   0x00153584      add   w9, w11, w9
│       │   0x00153588      add   w8, w11, w8
│       │   0x0015358c      add   w10, w11, w10
│       │   0x00153590      udiv  w11, w12, w24
│       │   0x00153594      udiv  w9, w9, w24
│       │   0x00153598      madd  w26, w11, w24, w24
│       │   0x0015359c      udiv  w8, w8, w24
│       │   0x001535a0      madd  w9, w9, w24, w26
│       │   0x001535a4      madd  w25, w8, w24, w9
│       │   0x001535a8      udiv  w27, w10, w24
│      ┌──< 0x001535ac      cbz   x21, 0x1535bc
│      ││   0x001535b0      add   x1, x19, x24                         ; int64_t arg2
│      ││   0x001535b4      mov   x0, x21                              ; int64_t arg1
│      ││   0x001535b8      bl    fcn.0014d60c
│      └──> 0x001535bc      madd  w21, w27, w24, w25
│      ┌──< 0x001535c0      cbz   x20, 0x1535f0
│      ││   0x001535c4      mov   x8, x19
│      ││   0x001535c8      ldrb  w2, [x8, 0x10]!                      ; aav.0x00000010
│      ││                                                              ; [0x10:4]=0x14000004
│      ││   0x001535cc      ldrb  w9, [x19, 0x11]                      ; [0x11:4]=0x140000
│      ││   0x001535d0      add   x1, x19, w26, sxtw                   ; int64_t arg2
│      ││   0x001535d4      mov   x0, x20                              ; int64_t arg1
│      ││   0x001535d8      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│      ││   0x001535dc      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│      ││   0x001535e0      bfi   x2, x9, 8, 8
│      ││   0x001535e4      bfi   x8, x10, 8, 8
│      ││   0x001535e8      bfi   x2, x8, 0x10, 0x10                   ; int64_t arg3
│      ││   0x001535ec      bl    fcn.0014d60c
│      └──> 0x001535f0      add   x0, x19, w21, sxtw                   ; int64_t arg1
│       │   0x001535f4      bl    fcn.00170a18
│       │   0x001535f8      add   x0, x19, w25, sxtw                   ; int64_t arg1
│       │   0x001535fc      bl    fcn.00170a2c
│       │   0x00153600      mov   x0, x19                              ; int64_t arg1
│       │   0x00153604      mov   x1, x23
│       │   0x00153608      mov   x2, x22
│       │   0x0015360c      bl    fcn.0017e384
│       │   0x00153610      mov   w0, wzr
│      ┌──< 0x00153614      b     0x153628
│      │└─> 0x00153618      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│      │    0x0015361c      add   x0, x0, 0xecd                        ; int64_t arg1
│      │    0x00153620      bl    fcn.0014c9f8
│      │    0x00153624      mov   w0, -1
│      │    ; CODE XREF from fcn.00153180 @ 0x153614
│      └──> 0x00153628      ldp   x20, x19, [var_10h]
│           0x0015362c      ldp   x22, x21, [var_20h]
│           0x00153630      ldp   x24, x23, [var_30h]
│           0x00153634      ldp   x26, x25, [var_40h]
│           0x00153638      ldr   x27, [var_50h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0015363c      ldp   x29, x30, [sp], 0x60
│           0x00153640      autibsp
└           0x00153644      ret
            ; CALL XREF from fcn.00153080 @ 0x153090
