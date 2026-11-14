┌ fcn.0017dfdc();
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017dfdc      pacibsp
│           0x0017dfe0      stp   x29, x30, [var_40h]!
│           0x0017dfe4      str   x28, [var_30h]
│           0x0017dfe8      stp   x22, x21, [var_20h]
│           0x0017dfec      stp   x20, x19, [var_10h]
│           0x0017dff0      mov   x29, sp
│           0x0017dff4      sub   sp, sp, aav.0x00000440               ; "\t\b\x80RɆ\U0000000e\xb9\n\xc1@\xb9\t\xc5@\xb9\xf3\U00000003\U0000001f*7"
│           0x0017dff8      bl    fcn.0012467c
│       ┌─< 0x0017dffc      cbz   w0, 0x17e01c
│       │   0x0017e000      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│       │   0x0017e004      adrp  x1, 0x26d000
│       │   0x0017e008      add   x0, x0, 0xda0                        ; int64_t arg1
│       │   0x0017e00c      add   x1, x1, 0x660                        ; int64_t arg2
│       │   0x0017e010      bl    fcn.0014c9f8
│       │   0x0017e014      mov   w19, -1
│      ┌──< 0x0017e018      b     0x17e254
│      │└─> 0x0017e01c      adrp  x8, 0x56f000
│      │    0x0017e020      ldr   w8, [x8, 0x4dc]                      ; [0x4dc:4]=0xb900451f
│      │    0x0017e024      cmp   w8, 1
│      │┌─< 0x0017e028      b.ne  0x17e05c
│      ││   0x0017e02c      add   x0, var_10h + 0x2c                   ; int64_t arg1
│      ││   0x0017e030      bl    fcn.0012577c
│      ││   0x0017e034      ldr   w8, [var_10h + 0x2c]                 ; aav.0x0000001c
│      ││                                                              ; [0x1c:4]=0
│      ││   0x0017e038      adrp  x9, 0x240000
│      ││   0x0017e03c      adrp  x10, 0x23e000
│      ││   0x0017e040      add   x9, x9, 0xc92
│      ││   0x0017e044      add   x10, x10, 0x7fd
│      ││   0x0017e048      cmp   w8, 1
│      ││   0x0017e04c      adrp  x0, 0x25a000
│      ││   0x0017e050      csel  x1, x10, x9, eq
│      ││   0x0017e054      add   x0, x0, 0x8ca
│     ┌───< 0x0017e058      b     0x17e074
│     ││└─> 0x0017e05c      adrp  x0, 0x262000
│     ││    0x0017e060      adrp  x1, 0x26d000
│     ││    0x0017e064      mov   w8, 0xf
│     ││    0x0017e068      add   x0, x0, 0x794
│     ││    0x0017e06c      add   x1, x1, 0x660
│     ││    0x0017e070      str   w8, [var_10h + 0x2c]
│     ││    ; CODE XREF from fcn.0017dfdc @ 0x17e058
│     └───> 0x0017e074      bl    fcn.0014c9f8
│      │    0x0017e078      mov   w0, 3
│      │    0x0017e07c      bl    fcn.001895dc
│      │┌─< 0x0017e080      cbz   w0, 0x17e098
│      ││   0x0017e084      ldr   w8, [var_10h + 0x2c]                 ; aav.0x0000001c
│      ││                                                              ; [0x1c:4]=0
│      ││   0x0017e088      cmp   w8, 1
│     ┌───< 0x0017e08c      b.ne  0x17e098
│     │││   0x0017e090      mov   w19, wzr
│    ┌────< 0x0017e094      b     0x17e0b0
│    │└─└─> 0x0017e098      mov   w0, 3
│    │ │    0x0017e09c      bl    fcn.001895dc
│    │ │    0x0017e0a0      ldr   w8, [var_10h + 0x2c]                 ; aav.0x0000001c
│    │ │                                                               ; [0x1c:4]=0
│    │ │    0x0017e0a4      orr   w8, w0, w8
│    │ │┌─< 0x0017e0a8      cbnz  w8, 0x17e238
│    │ ││   0x0017e0ac      mov   w19, 1
│    │ ││   ; CODE XREF from fcn.0017dfdc @ 0x17e094
│    └────> 0x0017e0b0      adrp  x0, 0x250000
│      ││   0x0017e0b4      add   x0, x0, 0xd3d                        ; int64_t arg1
│      ││   0x0017e0b8      bl    fcn.001758fc
│     ┌───< 0x0017e0bc      cbz   x0, 0x17e240
│     │││   0x0017e0c0      mov   x20, x0
│     │││   0x0017e0c4      add   x0, var_10h + 0x28                   ; int64_t arg1
│     │││   0x0017e0c8      bl    fcn.00177854
│     │││   0x0017e0cc      mov   w0, 0x4240                           ; '@B'
│     │││   0x0017e0d0      movk  w0, 0xf, lsl 16
│     │││   0x0017e0d4      bl    fcn.001b3f80
│     │││   0x0017e0d8      mov   x8, sp
│     │││   0x0017e0dc      adrp  x2, 0x269000
│     │││   0x0017e0e0      add   x2, x2, 0x1ec                        ; int64_t arg4
│     │││   0x0017e0e4      add   x0, x8, 0x40                         ; int64_t arg1
│     │││   0x0017e0e8      mov   w1, 0x3f                             ; '?'
│     │││   0x0017e0ec      bl    fcn.0014b120
│     │││   0x0017e0f0      ldrb  w2, [x20, 0x14]!                     ; aav.0x00000014
│     │││                                                              ; [0x14:4]=0
│     │││   0x0017e0f4      mov   x0, sp                               ; int64_t arg1
│     │││   0x0017e0f8      mov   w3, aav.0x00000440                   ; "\t\b\x80RɆ\U0000000e\xb9\n\xc1@\xb9\t\xc5@\xb9\xf3\U00000003\U0000001f*7"
│     │││   0x0017e0fc      ldrb  w1, [x20, 8]!                        ; aav.0x00000008
│     │││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│     │││   0x0017e100      ldrb  w8, [x20, 3]                         ; [0x3:4]=0x48776b00
│     │││   0x0017e104      ldrb  w9, [x20, 2]                         ; [0x2:4]=0x776b0000
│     │││   0x0017e108      ldrb  w10, [x20, 1]                        ; [0x1:4]=0x6b000000
│     │││   0x0017e10c      ldurb w11, [x20, -5]                       ; [0x5:4]=0x64214877
│     │││   0x0017e110      ldurb w12, [x20, -6]                       ; [0x6:4]=0x61642148
│     │││   0x0017e114      ldurb w13, [x20, -7]                       ; [0x7:4]=0x65616421
│     │││   0x0017e118      bfi   w9, w8, 8, 8
│     │││   0x0017e11c      bfi   w1, w10, 8, 8
│     │││   0x0017e120      bfi   w12, w11, 8, 8
│     │││   0x0017e124      bfi   w2, w13, 8, 8
│     │││   0x0017e128      bfi   w1, w9, 0x10, 0x10
│     │││   0x0017e12c      bfi   w2, w12, 0x10, 0x10
│     │││   0x0017e130      bl    fcn.001392bc
│     │││   0x0017e134      mov   w0, aav.0x00080000
│     │││   0x0017e138      mov   w1, 1
│     │││   0x0017e13c      bl    fcn.0016e57c
│     │││   0x0017e140      mov   w1, 4
│     │││   0x0017e144      mov   w3, 1
│     │││   0x0017e148      mov   w0, wzr
│     │││   0x0017e14c      mov   x2, xzr                              ; int64_t arg3
│     │││   0x0017e150      bl    fcn.001503d0
│     │││   0x0017e154      mov   w0, wzr
│     │││   0x0017e158      bl    fcn.00150b58
│     │││   0x0017e15c      mov   w1, w0
│     │││   0x0017e160      adrp  x0, 0x25a000
│     │││   0x0017e164      add   x0, x0, 0x8da                        ; int64_t arg1
│     │││   0x0017e168      bl    fcn.0014c9f8
│     │││   0x0017e16c      mov   w0, w19
│     │││   0x0017e170      bl    fcn.001257bc
│    ┌────< 0x0017e174      cbz   w0, 0x17e1d8
│    ││││   0x0017e178      mov   w0, 2
│    ││││   0x0017e17c      bl    fcn.0013d500
│    ││││   0x0017e180      mov   w20, w0
│    ││││   0x0017e184      bl    fcn.0013df98
│    ││││   0x0017e188      adrp  x21, 0x251000
│    ││││   0x0017e18c      add   x21, x21, 0x971
│    ││││   0x0017e190      mov   w3, w0
│    ││││   0x0017e194      mov   w0, 0xa
│    ││││   0x0017e198      mov   w2, 0xff0000
│    ││││   0x0017e19c      mov   w1, w20
│    ││││   0x0017e1a0      mov   x4, x21                              ; int64_t arg5
│    ││││   0x0017e1a4      bl    fcn.0013deb8
│    ││││   0x0017e1a8      mov   x0, x21                              ; int64_t arg1
│    ││││   0x0017e1ac      bl    fcn.0014c9f8
│    ││││   0x0017e1b0      bl    fcn.000f9608
│    ││││   0x0017e1b4      mov   w0, 0x4240                           ; '@B'
│    ││││   0x0017e1b8      movk  w0, 0xf, lsl 16
│    ││││   0x0017e1bc      bl    fcn.001b3f80
│    ││││   0x0017e1c0      adrp  x1, 0x24a000
│    ││││   0x0017e1c4      adrp  x2, 0x23e000
│    ││││   0x0017e1c8      add   x1, x1, 0xabd                        ; int64_t arg2
│    ││││   0x0017e1cc      add   x2, x2, 0x409                        ; int64_t arg3
│    ││││   0x0017e1d0      mov   w0, 0x4e                             ; 'N'
│    ││││   0x0017e1d4      bl    fcn.0016d638
│    └────> 0x0017e1d8      mov   w0, 1
│     │││   0x0017e1dc      bl    fcn.0017b7c8
│     │││   0x0017e1e0      mov   w20, w0
│     │││   0x0017e1e4      mov   w0, 2
│     │││   0x0017e1e8      bl    fcn.0013d500
│     │││   0x0017e1ec      mov   w21, w0
│     │││   0x0017e1f0      bl    fcn.0013df98
│     │││   0x0017e1f4      adrp  x22, 0x276000
│     │││   0x0017e1f8      add   x22, x22, 0xa7f
│     │││   0x0017e1fc      mov   w3, w0
│     │││   0x0017e200      mov   w0, 0xa
│     │││   0x0017e204      mov   w2, 0xff0000
│     │││   0x0017e208      mov   w1, w21
│     │││   0x0017e20c      mov   x4, x22                              ; int64_t arg5
│     │││   0x0017e210      mov   w5, w20
│     │││   0x0017e214      bl    fcn.0013deb8
│     │││   0x0017e218      mov   x0, x22                              ; int64_t arg1
│     │││   0x0017e21c      mov   w1, w20
│     │││   0x0017e220      bl    fcn.0014c9f8
│     │││   0x0017e224      bl    fcn.000f9608
│     │││   0x0017e228      mov   w0, 0x4240                           ; '@B'
│     │││   0x0017e22c      movk  w0, 0xf, lsl 16
│     │││   0x0017e230      bl    fcn.001b3f80
│    ┌────< 0x0017e234      b     0x17e254
│    │││└─> 0x0017e238      mov   w19, -1
│    │││┌─< 0x0017e23c      b     0x17e254
│    │└───> 0x0017e240      adrp  x0, 0x246000
│    │ ││   0x0017e244      adrp  x1, 0x26d000
│    │ ││   0x0017e248      add   x0, x0, 0x3b3                        ; int64_t arg1
│    │ ││   0x0017e24c      add   x1, x1, 0x660                        ; int64_t arg2
│    │ ││   0x0017e250      bl    fcn.0014c9f8
│    │ ││   ; CODE XREFS from fcn.0017dfdc @ 0x17e018, 0x17e234, 0x17e23c
│    └─└└─> 0x0017e254      mov   w0, w19
│           0x0017e258      add   sp, sp, aav.0x00000440
│           0x0017e25c      ldp   x20, x19, [var_10h]
│           0x0017e260      ldp   x22, x21, [var_20h]
│           0x0017e264      ldr   x28, [var_30h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0017e268      ldp   x29, x30, [sp], 0x40
│           0x0017e26c      autibsp
└           0x0017e270      ret
            ; CALL XREF from fcn.00153180 @ 0x1534e8
            ; CALL XREF from fcn.00153998 @ 0x153d00
