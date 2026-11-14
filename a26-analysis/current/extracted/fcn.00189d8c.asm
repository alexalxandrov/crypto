┌ fcn.00189d8c();
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00189d8c      pacibsp
│           0x00189d90      stp   x29, x30, [var_30h]!
│           0x00189d94      str   x21, [var_20h]
│           0x00189d98      stp   x20, x19, [var_10h]
│           0x00189d9c      mov   x29, sp
│           0x00189da0      bl    fcn.0017d674
│           0x00189da4      adrp  x8, 0x5a6000
│           0x00189da8      str   w0, [x8, 0xa88]
│           0x00189dac      bl    fcn.0010a9a8
│           0x00189db0      cmp   w0, 1
│       ┌─< 0x00189db4      b.ne  0x189dd8
│       │   0x00189db8      bl    fcn.000f2f28
│      ┌──< 0x00189dbc      cbz   w0, 0x189e10
│      ││   0x00189dc0      adrp  x0, 0x246000
│      ││   0x00189dc4      adrp  x1, 0x24a000
│      ││   0x00189dc8      add   x0, x0, 0x561
│      ││   0x00189dcc      add   x1, x1, 0xd0b
│      ││   0x00189dd0      mov   w2, 0x23b
│     ┌───< 0x00189dd4      b     0x189dec
│     ││└─> 0x00189dd8      adrp  x0, 0x270000
│     ││    0x00189ddc      adrp  x1, 0x24a000
│     ││    0x00189de0      add   x0, x0, 0x7e
│     ││    0x00189de4      add   x1, x1, 0xd0b
│     ││    0x00189de8      mov   w2, 0x236
│     ││    ; CODE XREF from fcn.00189d8c @ 0x189dd4
│     └───> 0x00189dec      mov   x3, x1                               ; int64_t arg4
│      │    0x00189df0      bl    fcn.0014c9f8
│      │    0x00189df4      mov   w19, -1
│      │    ; CODE XREF from fcn.00189d8c @ 0x189f8c
│      │┌─> 0x00189df8      mov   w0, w19
│      │╎   0x00189dfc      ldp   x20, x19, [var_10h]
│      │╎   0x00189e00      ldr   x21, [var_20h]                       ; aav.0x00000010
│      │╎                                                              ; [0x10:4]=0x14000004
│      │╎   0x00189e04      ldp   x29, x30, [sp], 0x30
│      │╎   0x00189e08      autibsp
│      │╎   0x00189e0c      ret
│      └──> 0x00189e10      mov   w0, 0x19
│       ╎   0x00189e14      bl    fcn.0018996c
│      ┌──< 0x00189e18      cbz   w0, 0x189e3c
│      │╎   0x00189e1c      adrp  x0, 0x241000
│      │╎   0x00189e20      adrp  x1, 0x24a000
│      │╎   0x00189e24      add   x0, x0, 0x91c
│      │╎   0x00189e28      add   x1, x1, 0xd0b
│      │╎   0x00189e2c      mov   w2, 0x241
│      │╎   ; CODE XREF from fcn.00189d8c @ 0x189f24
│     ┌───> 0x00189e30      mov   w3, -1
│     ╎│╎   0x00189e34      mov   w19, -1
│    ┌────< 0x00189e38      b     0x189f84
│    │╎└──> 0x00189e3c      adrp  x21, 0x5a6000
│    │╎ ╎   0x00189e40      ldr   x20, [x21, 0xac0]                    ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│    │╎ ╎   0x00189e44      adrp  x0, 0x26f000
│    │╎ ╎   0x00189e48      add   x0, x0, 0xe25                        ; int64_t arg1
│    │╎ ╎   0x00189e4c      bl    fcn.001758fc
│    │╎┌──< 0x00189e50      cbz   x0, 0x189efc
│    │╎│╎   0x00189e54      mov   x19, x0
│    │╎│╎   0x00189e58      mov   w8, 0xf094
│    │╎│╎   0x00189e5c      adrp  x0, 0x279000
│    │╎│╎   0x00189e60      adrp  x1, 0x26e000
│    │╎│╎   0x00189e64      movk  w8, 1, lsl 16
│    │╎│╎   0x00189e68      add   x0, x0, 0xe99                        ; int64_t arg1
│    │╎│╎   0x00189e6c      add   x1, x1, 0x10b                        ; int64_t arg2
│    │╎│╎   0x00189e70      add   x20, x20, x8
│    │╎│╎   0x00189e74      bl    fcn.0014c9f8
│    │╎│╎   0x00189e78      ldrb  w8, [x19, 0x14]!                     ; aav.0x00000014
│    │╎│╎                                                              ; [0x14:4]=0
│    │╎│╎   0x00189e7c      mov   w3, 0x2c00
│    │╎│╎   0x00189e80      mov   x0, x20                              ; int64_t arg1
│    │╎│╎   0x00189e84      ldrb  w1, [x19, 8]!                        ; aav.0x00000008
│    │╎│╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│    │╎│╎   0x00189e88      ldurb w12, [x19, -5]                       ; [0x5:4]=0x64214877
│    │╎│╎   0x00189e8c      ldurb w13, [x19, -6]                       ; [0x6:4]=0x61642148
│    │╎│╎   0x00189e90      ldurb w14, [x19, -7]                       ; [0x7:4]=0x65616421
│    │╎│╎   0x00189e94      ldrb  w9, [x19, 3]                         ; [0x3:4]=0x48776b00
│    │╎│╎   0x00189e98      ldrb  w10, [x19, 2]                        ; [0x2:4]=0x776b0000
│    │╎│╎   0x00189e9c      ldrb  w11, [x19, 1]                        ; [0x1:4]=0x6b000000
│    │╎│╎   0x00189ea0      bfi   w13, w12, 8, 8
│    │╎│╎   0x00189ea4      bfi   w8, w14, 8, 8
│    │╎│╎   0x00189ea8      bfi   w10, w9, 8, 8
│    │╎│╎   0x00189eac      bfi   w1, w11, 8, 8
│    │╎│╎   0x00189eb0      bfi   w8, w13, 0x10, 0x10
│    │╎│╎   0x00189eb4      bfi   w1, w10, 0x10, 0x10
│    │╎│╎   0x00189eb8      add   w2, w8, 0x12
│    │╎│╎   0x00189ebc      bl    fcn.001390c0
│    │╎│╎   0x00189ec0      ldr   x0, [x21, 0xac0]                     ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n" ; int64_t arg1
│    │╎│╎   0x00189ec4      adrp  x20, 0x5a6000
│    │╎│╎   0x00189ec8      ldr   x1, [x20, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n" ; int64_t arg2
│    │╎│╎   0x00189ecc      ldr   x8, [x0, 0x608]                      ; [0x608:4]=0x910163e9
│    │╎│╎   0x00189ed0      orr   x8, x8, 0x20
│    │╎│╎   0x00189ed4      str   x8, [x0, 0x608]
│    │╎│╎   0x00189ed8      bl    fcn.001690d8
│   ┌─────< 0x00189edc      cbz   w0, 0x189f28
│   ││╎│╎   0x00189ee0      mov   w19, w0
│   ││╎│╎   0x00189ee4      adrp  x0, 0x24f000
│   ││╎│╎   0x00189ee8      adrp  x1, 0x24a000
│   ││╎│╎   0x00189eec      add   x0, x0, 0xa60
│   ││╎│╎   0x00189ef0      add   x1, x1, 0xd0b
│   ││╎│╎   0x00189ef4      mov   w2, 0x24e
│  ┌──────< 0x00189ef8      b     0x189f80
│  │││╎└──> 0x00189efc      adrp  x0, 0x265000
│  │││╎ ╎   0x00189f00      adrp  x1, 0x26e000
│  │││╎ ╎   0x00189f04      add   x0, x0, 0x5d3                        ; int64_t arg1
│  │││╎ ╎   0x00189f08      add   x1, x1, 0x10b                        ; int64_t arg2
│  │││╎ ╎   0x00189f0c      bl    fcn.0014c9f8
│  │││╎ ╎   0x00189f10      adrp  x0, 0x241000
│  │││╎ ╎   0x00189f14      adrp  x1, 0x24a000
│  │││╎ ╎   0x00189f18      add   x0, x0, 0x949
│  │││╎ ╎   0x00189f1c      add   x1, x1, 0xd0b
│  │││╎ ╎   0x00189f20      mov   w2, 0x247
│  │││└───< 0x00189f24      b     0x189e30
│  │└─────> 0x00189f28      ldr   x0, [x20, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n" ; int64_t arg1
│  │ │  ╎   0x00189f2c      bl    fcn.001584cc
│  │ │ ┌──< 0x00189f30      cbz   w0, 0x189f50
│  │ │ │╎   0x00189f34      mov   w19, w0
│  │ │ │╎   0x00189f38      adrp  x0, 0x23f000
│  │ │ │╎   0x00189f3c      adrp  x1, 0x24a000
│  │ │ │╎   0x00189f40      add   x0, x0, 0x2da
│  │ │ │╎   0x00189f44      add   x1, x1, 0xd0b
│  │ │ │╎   0x00189f48      mov   w2, 0x254
│  │ │┌───< 0x00189f4c      b     0x189f80
│  │ ││└──> 0x00189f50      adrp  x21, 0x5a6000
│  │ ││ ╎   0x00189f54      ldr   x0, [x21, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n" ; int64_t arg1
│  │ ││ ╎   0x00189f58      ldr   x1, [x20, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n" ; int64_t arg2
│  │ ││ ╎   0x00189f5c      mov   w2, wzr
│  │ ││ ╎   0x00189f60      bl    fcn.00169738
│  │ ││┌──< 0x00189f64      cbz   w0, 0x189f90
│  │ │││╎   0x00189f68      mov   w19, w0
│  │ │││╎   0x00189f6c      adrp  x0, 0x24a000
│  │ │││╎   0x00189f70      adrp  x1, 0x24a000
│  │ │││╎   0x00189f74      add   x0, x0, 0xcda
│  │ │││╎   0x00189f78      add   x1, x1, 0xd0b
│  │ │││╎   0x00189f7c      mov   w2, 0x25a
│  │ │││╎   ; CODE XREFS from fcn.00189d8c @ 0x189ef8, 0x189f4c, 0x189fc0
│  └┌─└───> 0x00189f80      mov   w3, w19
│   ╎│ │╎   ; CODE XREF from fcn.00189d8c @ 0x189e38
│   ╎└────> 0x00189f84      bl    fcn.0014c9f8
│   ╎  │╎   ; CODE XREF from fcn.00189d8c @ 0x189fcc
│   ╎ ┌───> 0x00189f88      bl    fcn.00189b50
│   ╎ ╎│└─< 0x00189f8c      b     0x189df8
│   ╎ ╎└──> 0x00189f90      ldr   x8, [x21, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n"
│   ╎ ╎     0x00189f94      ldrb  w9, [x8, aav.0x00000520]             ; [0x520:4]=0xb900011f
│   ╎ ╎ ┌─< 0x00189f98      tbz   w9, 2, 0x189fc4
│   ╎ ╎ │   0x00189f9c      add   x0, x8, 0x538                        ; int64_t arg1
│   ╎ ╎ │   0x00189fa0      bl    fcn.00188738
│   ╎ ╎┌──< 0x00189fa4      cbz   w0, 0x189fc4
│   ╎ ╎││   0x00189fa8      mov   w19, w0
│   ╎ ╎││   0x00189fac      adrp  x0, 0x256000
│   ╎ ╎││   0x00189fb0      adrp  x1, 0x24a000
│   ╎ ╎││   0x00189fb4      add   x0, x0, 0x3fa
│   ╎ ╎││   0x00189fb8      add   x1, x1, 0xd0b
│   ╎ ╎││   0x00189fbc      mov   w2, 0x261
│   └─────< 0x00189fc0      b     0x189f80
│     ╎└└─> 0x00189fc4      bl    fcn.0018962c
│     ╎     0x00189fc8      mov   w19, wzr
└     └───< 0x00189fcc      b     0x189f88
            ; CALL XREF from fcn.00175f44 @ 0x177724
