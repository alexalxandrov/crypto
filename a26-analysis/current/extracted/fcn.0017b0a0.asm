┌ fcn.0017b0a0(int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg_40h);
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           ; arg int64_t arg_40h @ stack + 0x40
│           0x0017b0a0      pacibsp
│           0x0017b0a4      sub   sp, sp, 0xa0
│           0x0017b0a8      stp   x29, x30, [var_20h]
│           0x0017b0ac      str   x19, [var_10h]
│           0x0017b0b0      add   x29, sp, 0x80
│           0x0017b0b4      mov   w8, 0x6974                           ; 'ti'
│           0x0017b0b8      movk  w8, 0x676d, lsl 16
│           0x0017b0bc      str   w8, [var_10h + 0x2c]
│           0x0017b0c0      mov   w8, 0x4f4e                           ; 'NO'
│           0x0017b0c4      adrp  x0, 0x23a000
│           0x0017b0c8      movk  w8, 0x4343, lsl 16
│           0x0017b0cc      add   x0, x0, str.Error_initializing_runtime_service__s ; 0xa4a ; "\nError initializing runtime service %s\n" ; int64_t arg1
│           0x0017b0d0      stp   xzr, xzr, [var_60h + 0x30]
│           0x0017b0d4      stp   xzr, xzr, [var_60h + 0x20]
│           0x0017b0d8      stp   xzr, xzr, [var_60h + 0x10]
│           0x0017b0dc      stp   xzr, xzr, [var_60h]
│           0x0017b0e0      stp   xzr, xzr, [sp, 0x30]
│           0x0017b0e4      stp   xzr, xzr, [sp, 0x20]
│           0x0017b0e8      stp   xzr, xzr, [sp, 0x10]
│           0x0017b0ec      str   w8, [var_10h + 0x28]
│           0x0017b0f0      stp   xzr, xzr, [sp]
│           0x0017b0f4      bl    fcn.001758fc
│       ┌─< 0x0017b0f8      cbz   x0, 0x17b1ac
│       │   0x0017b0fc      mov   x19, x0
│       │   0x0017b100      mov   x0, sp                               ; int64_t arg1
│       │   0x0017b104      mov   w2, 0x40
│       │   0x0017b108      mov   w1, wzr
│       │   0x0017b10c      bl    fcn.0014d8fc
│       │   0x0017b110      ldrb  w8, [x19, 0x18]!                     ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x0017b114      mov   x0, sp                               ; int64_t arg1
│       │   0x0017b118      mov   w3, 0x40
│       │   0x0017b11c      ldrb  w9, [x19, -4]!                       ; str.kwH_daeh
│       │                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│       │   0x0017b120      ldrb  w1, [x19, 8]!                        ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x0017b124      ldrb  w10, [x19, 3]                        ; [0x3:4]=0x48776b00
│       │   0x0017b128      ldrb  w11, [x19, 2]                        ; [0x2:4]=0x776b0000
│       │   0x0017b12c      ldrb  w12, [x19, 1]                        ; [0x1:4]=0x6b000000
│       │   0x0017b130      ldurb w13, [x19, -5]                       ; [0x5:4]=0x64214877
│       │   0x0017b134      ldurb w14, [x19, -6]                       ; [0x6:4]=0x61642148
│       │   0x0017b138      ldurb w15, [x19, -7]                       ; [0x7:4]=0x65616421
│       │   0x0017b13c      bfi   w11, w10, 8, 8
│       │   0x0017b140      ldurb w10, [x19, -1]                       ; [0x1:4]=0x6b000000
│       │   0x0017b144      bfi   w1, w12, 8, 8
│       │   0x0017b148      ldurb w12, [x19, -2]                       ; [0x2:4]=0x776b0000
│       │   0x0017b14c      ldurb w16, [x19, -3]                       ; [0x3:4]=0x48776b00
│       │   0x0017b150      bfi   w14, w13, 8, 8
│       │   0x0017b154      bfi   w9, w15, 8, 8
│       │   0x0017b158      bfi   w12, w10, 8, 8
│       │   0x0017b15c      bfi   w8, w16, 8, 8
│       │   0x0017b160      bfi   w9, w14, 0x10, 0x10
│       │   0x0017b164      bfi   w8, w12, 0x10, 0x10
│       │   0x0017b168      add   w8, w9, w8
│       │   0x0017b16c      bfi   w1, w11, 0x10, 0x10
│       │   0x0017b170      sub   w2, w8, 4
│       │   0x0017b174      bl    fcn.001390c0
│       │   0x0017b178      mov   x0, sp                               ; int64_t arg1
│       │   0x0017b17c      add   x1, var_60h                          ; int64_t arg2
│       │   0x0017b180      bl    fcn.00177a94
│      ┌──< 0x0017b184      tbnz  w0, 0x1f, 0x17b1b8
│      ││   0x0017b188      add   x0, arg_40h                          ; int64_t arg1
│      ││   0x0017b18c      add   x1, var_10h + 0x2c                   ; int64_t arg2
│      ││   0x0017b190      mov   w2, 4
│      ││   0x0017b194      add   x19, var_60h
│      ││   0x0017b198      bl    fcn.0014d5c8
│     ┌───< 0x0017b19c      cbz   w0, 0x17b1dc
│     │││   0x0017b1a0      adrp  x0, 0x26b000
│     │││   0x0017b1a4      add   x0, x0, 0x4dd
│    ┌────< 0x0017b1a8      b     0x17b1c0
│    │││└─> 0x0017b1ac      adrp  x0, 0x243000
│    │││    0x0017b1b0      add   x0, x0, 0xafa
│    │││┌─< 0x0017b1b4      b     0x17b1c0
│    ││└──> 0x0017b1b8      adrp  x0, 0x246000
│    ││ │   0x0017b1bc      add   x0, x0, 0x2af
│    ││ │   ; CODE XREFS from fcn.0017b0a0 @ 0x17b1a8, 0x17b1b4
│    └──└─> 0x0017b1c0      bl    fcn.0014c9f8
│     │     0x0017b1c4      mov   w0, wzr
│     │     ; CODE XREF from fcn.0017b0a0 @ 0x17b1f4
│     │ ┌─> 0x0017b1c8      ldr   x19, [var_10h]                       ; aav.0x00000090
│     │ ╎                                                              ; [0x90:4]=0x940022c9
│     │ ╎   0x0017b1cc      ldp   x29, x30, [var_20h]
│     │ ╎   0x0017b1d0      add   sp, sp, 0xa0
│     │ ╎   0x0017b1d4      autibsp
│     │ ╎   0x0017b1d8      ret
│     └───> 0x0017b1dc      orr   x0, x19, 4                           ; int64_t arg1
│       ╎   0x0017b1e0      add   x1, var_10h + 0x28                   ; int64_t arg2
│       ╎   0x0017b1e4      mov   w2, 4
│       ╎   0x0017b1e8      bl    fcn.0014d5c8
│       ╎   0x0017b1ec      cmp   w0, 0
│       ╎   0x0017b1f0      cset  w0, eq
└       └─< 0x0017b1f4      b     0x17b1c8
            ; CALL XREF from fcn.00175f44 @ 0x176040
            ; CALL XREF from fcn.00177854 @ 0x17787c
            ; CALL XREF from fcn.0017ed08 @ 0x17ed44
            ; CALL XREF from fcn.001866ac @ 0x186734
            ; CALL XREF from fcn.00187cf0 @ 0x187e74
