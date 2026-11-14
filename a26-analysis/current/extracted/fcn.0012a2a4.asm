┌ fcn.0012a2a4(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012a2a4      pacibsp
│           0x0012a2a8      sub   sp, sp, 0xb0
│           0x0012a2ac      stp   x29, x30, [var_60h]
│           0x0012a2b0      stp   x28, x27, [var_50h]
│           0x0012a2b4      stp   x26, x25, [var_40h]
│           0x0012a2b8      stp   x24, x23, [var_30h]
│           0x0012a2bc      stp   x22, x21, [var_20h]
│           0x0012a2c0      stp   x20, x19, [var_10h]
│           0x0012a2c4      add   x29, sp, 0x50
│       ┌─< 0x0012a2c8      cbz   x0, 0x12a2f0
│       │   0x0012a2cc      mov   w1, 8
│       │   0x0012a2d0      mov   w2, 1
│       │   0x0012a2d4      mov   x19, x0                              ; arg1
│       │   0x0012a2d8      bl    fcn.001283b8
│      ┌──< 0x0012a2dc      cbz   w0, 0x12a314
│      ││   0x0012a2e0      mov   w1, w0
│      ││   0x0012a2e4      adrp  x0, 0x23c000
│      ││   0x0012a2e8      add   x0, x0, 0x8ee
│     ┌───< 0x0012a2ec      b     0x12a358
│     ││└─> 0x0012a2f0      ldp   x20, x19, [var_10h]
│     ││    0x0012a2f4      ldp   x22, x21, [var_20h]
│     ││    0x0012a2f8      ldp   x24, x23, [var_30h]
│     ││    0x0012a2fc      ldp   x26, x25, [var_40h]
│     ││    0x0012a300      ldp   x28, x27, [var_50h]
│     ││    0x0012a304      ldp   x29, x30, [var_60h]
│     ││    0x0012a308      add   sp, sp, 0xb0
│     ││    0x0012a30c      autibsp
│     ││    0x0012a310      ret
│     │└──> 0x0012a314      mov   w1, 3
│     │     0x0012a318      mov   w2, 1
│     │     0x0012a31c      mov   x0, x19                              ; int64_t arg1
│     │     0x0012a320      bl    fcn.001283b8
│     │ ┌─< 0x0012a324      cbz   w0, 0x12a338
│     │ │   0x0012a328      mov   w1, w0
│     │ │   0x0012a32c      adrp  x0, 0x255000
│     │ │   0x0012a330      add   x0, x0, 0x964
│     │┌──< 0x0012a334      b     0x12a358
│     ││└─> 0x0012a338      mov   w1, 5
│     ││    0x0012a33c      mov   w2, 1
│     ││    0x0012a340      mov   x0, x19                              ; int64_t arg1
│     ││    0x0012a344      bl    fcn.001283b8
│     ││┌─< 0x0012a348      cbz   w0, 0x12a37c
│     │││   0x0012a34c      mov   w1, w0
│     │││   0x0012a350      adrp  x0, 0x273000
│     │││   0x0012a354      add   x0, x0, 0xa94
│     │││   ; CODE XREFS from fcn.0012a2a4 @ 0x12a2ec, 0x12a334
│     └└──> 0x0012a358      ldp   x20, x19, [var_10h]
│       │   0x0012a35c      ldp   x22, x21, [var_20h]
│       │   0x0012a360      ldp   x24, x23, [var_30h]
│       │   0x0012a364      ldp   x26, x25, [var_40h]
│       │   0x0012a368      ldp   x28, x27, [var_50h]
│       │   0x0012a36c      ldp   x29, x30, [var_60h]
│       │   0x0012a370      add   sp, sp, 0xb0
│       │   0x0012a374      autibsp
│      ┌──< 0x0012a378      b     fcn.0014c9f8
│      │└─> 0x0012a37c      adrp  x20, 0x25c000
│      │    0x0012a380      add   x20, x20, 0x285
│      │    0x0012a384      mov   x0, x20                              ; int64_t arg1
│      │    0x0012a388      add   x27, x19, 0x3c2
│      │    0x0012a38c      add   x21, x19, 0x265
│      │    0x0012a390      bl    fcn.0014c9f8
│      │    0x0012a394      adrp  x0, 0x24a000
│      │    0x0012a398      add   x0, x0, 0x8f                         ; int64_t arg1
│      │    0x0012a39c      bl    fcn.0014c9f8
│      │    0x0012a3a0      mov   x0, x20                              ; int64_t arg1
│      │    0x0012a3a4      bl    fcn.0014c9f8
│      │    0x0012a3a8      ldrb  w8, [x21, 0x157]                     ; [0x157:4]=0x483ff00
│      │    0x0012a3ac      ldrb  w9, [x21, 0x156]                     ; [0x156:4]=0x83ff0000
│      │    0x0012a3b0      ldrb  w10, [x21, 0x15b]                    ; [0x3c0:4]=0xd10532c9 ; aav.0x000003c0
│      │    0x0012a3b4      ldrb  w11, [x21, 0x15a]                    ; [0x15a:4]=0x57f6d104
│      │    0x0012a3b8      ldrb  w12, [x21, 0x159]                    ; [0x159:4]=0xf6d10483
│      │    0x0012a3bc      ldrb  w13, [x21, fcn.00000158]             ; [0x158:4]=0xd10483ff
│      │    0x0012a3c0      bfi   w9, w8, 8, 8
│      │    0x0012a3c4      bfi   w11, w10, 8, 8
│      │    0x0012a3c8      lsl   w8, w9, 0x10
│      │    0x0012a3cc      bfi   w13, w12, 8, 8
│      │    0x0012a3d0      bfi   w13, w11, 0x10, 0x10
│      │    0x0012a3d4      rev   w8, w8
│      │    0x0012a3d8      rev   w9, w13
│      │    0x0012a3dc      extr  w2, w8, w9, 0xb
│      │    0x0012a3e0      adrp  x0, 0x253000
│      │    0x0012a3e4      lsr   w1, w2, 0xa
│      │    0x0012a3e8      add   x0, x0, 0x7e6                        ; int64_t arg1
│      │    0x0012a3ec      bl    fcn.0014c9f8
│      │    0x0012a3f0      ldrb  w8, [x27, 3]                         ; [0x3:4]=0x48776b00
│      │    0x0012a3f4      ldrb  w9, [x27, 2]                         ; [0x2:4]=0x776b0000
│      │    0x0012a3f8      ldrb  w10, [x27, 1]                        ; [0x1:4]=0x6b000000
│      │    0x0012a3fc      ldrb  w11, [x27]
│      │    0x0012a400      adrp  x0, 0x251000
│      │    0x0012a404      bfi   w9, w8, 8, 8
│      │    0x0012a408      add   x0, x0, 0xa0                         ; int64_t arg1
│      │    0x0012a40c      bfi   w11, w10, 8, 8
│      │    0x0012a410      bfi   w11, w9, 0x10, 0x10
│      │    0x0012a414      rev   w8, w11
│      │    0x0012a418      lsr   w1, w8, 1
│      │    0x0012a41c      bl    fcn.0014c9f8
│      │    0x0012a420      ldrb  w8, [x27, 3]                         ; [0x3:4]=0x48776b00
│      │    0x0012a424      ldrb  w9, [x27, 2]                         ; [0x2:4]=0x776b0000
│      │    0x0012a428      ldrb  w10, [x27, 1]                        ; [0x1:4]=0x6b000000
│      │    0x0012a42c      ldrb  w11, [x27]
│      │    0x0012a430      ldrb  w12, [x19, 0x3c6]                    ; [0x3c6:4]=0x13fd105
│      │    0x0012a434      bfi   w9, w8, 8, 8
│      │    0x0012a438      adrp  x0, 0x266000
│      │    0x0012a43c      bfi   w11, w10, 8, 8
│      │    0x0012a440      bfi   w11, w9, 0x10, 0x10
│      │    0x0012a444      rev   w8, w11
│      │    0x0012a448      mul   w8, w8, w12
│      │    0x0012a44c      lsr   w20, w8, 1
│      │    0x0012a450      add   x0, x0, 0xae3                        ; int64_t arg1
│      │    0x0012a454      mov   w1, w20
│      │    0x0012a458      bl    fcn.0014c9f8
│      │    0x0012a45c      ldrb  w8, [x19, 0x3c7]                     ; [0x3c7:4]=0x13fd1
│      │    0x0012a460      adrp  x0, 0x24f000
│      │    0x0012a464      add   x0, x0, 0x96                         ; int64_t arg1
│      │    0x0012a468      lsr   w1, w8, 1
│      │    0x0012a46c      bl    fcn.0014c9f8
│      │    0x0012a470      ldrb  w8, [x19, 0x3c8]                     ; [0x3c8:4]=0xb900013f
│      │    0x0012a474      adrp  x0, 0x273000
│      │    0x0012a478      add   x0, x0, 0xab8                        ; int64_t arg1
│      │    0x0012a47c      lsr   w1, w8, 1
│      │    0x0012a480      bl    fcn.0014c9f8
│      │    0x0012a484      ldrb  w8, [x19, 0x3c8]                     ; [0x3c8:4]=0xb900013f
│      │    0x0012a488      adrp  x0, 0x240000
│      │    0x0012a48c      add   x0, x0, str.EPBL_Self_Decryption_success ; 0xbaa ; "EPBL Self Decryption success\r\n" ; int64_t arg1
│      │    0x0012a490      lsr   w1, w8, 1
│      │    0x0012a494      bl    fcn.0014c9f8
│      │    0x0012a498      adrp  x0, 0x278000
│      │    0x0012a49c      add   x0, x0, 0x5da                        ; int64_t arg1
│      │    0x0012a4a0      bl    fcn.0014c9f8
│      │    0x0012a4a4      ldrb  w8, [x27, 0x12]                      ; [0x12:4]=0x1400
│      │    0x0012a4a8      ldrb  w9, [x27, 0x11]                      ; [0x11:4]=0x140000
│      │    0x0012a4ac      bfi   w9, w8, 8, 0x18
│      │    0x0012a4b0      rev   w8, w9
│      │    0x0012a4b4      lsr   w21, w8, 0x10
│      │┌─< 0x0012a4b8      tbnz  w21, 0, 0x12a570
│     ┌───< 0x0012a4bc      tbnz  w21, 1, 0x12a580
│   ┌┌────> 0x0012a4c0      tbnz  w21, 2, 0x12a590
│ ┌┌──────> 0x0012a4c4      tbnz  w21, 3, 0x12a5a0
│ ────────> 0x0012a4c8      tbnz  w21, 4, 0x12a5b0
│ ────────> 0x0012a4cc      tbnz  w21, 5, 0x12a5c0
│ ────────> 0x0012a4d0      tbnz  w21, 6, 0x12a5d0
│ ────────> 0x0012a4d4      tbz   w21, 0xf, 0x12a4e4
│ ────────> 0x0012a4d8      adrp  x0, 0x25a000
│ │╎│╎│││   0x0012a4dc      add   x0, x0, 0x67                         ; int64_t arg1
│ │╎│╎│││   0x0012a4e0      bl    fcn.0014c9f8
│ │╎│╎│││   ; CODE XREF from fcn.0012a2a4 @ 0x12a5e0
│ ────────> 0x0012a4e4      ldrb  w1, [x19, 0x25e]                     ; [0x25e:4]=0x1e8b90e
│ │╎│╎│││   0x0012a4e8      adrp  x0, 0x24c000
│ │╎│╎│││   0x0012a4ec      add   x0, x0, 0x38b                        ; int64_t arg1
│ │╎│╎│││   0x0012a4f0      bl    fcn.0014c9f8
│ │╎│╎│││   0x0012a4f4      ldrb  w8, [x19, 0x25f]                     ; [0x25f:4]=0x8001e8b9
│ │╎│╎│││   0x0012a4f8      adrp  x9, 0x253000
│ │╎│╎│││   0x0012a4fc      adrp  x10, 0x255000
│ │╎│╎│││   0x0012a500      add   x9, x9, 0x827
│ │╎│╎│││   0x0012a504      add   x10, x10, 0x9a0
│ │╎│╎│││   0x0012a508      cmp   w8, 1
│ │╎│╎│││   0x0012a50c      csel  x0, x10, x9, eq                      ; int64_t arg1
│ │╎│╎│││   0x0012a510      bl    fcn.0014c9f8
│ │╎│╎│││   0x0012a514      ldrb  w8, [x19, aav.0x00000260]            ; [0x260:4]=0x528001e8
│ │╎│╎│││   0x0012a518      adrp  x9, 0x23c000
│ │╎│╎│││   0x0012a51c      adrp  x10, 0x276000
│ │╎│╎│││   0x0012a520      add   x9, x9, 0x914
│ │╎│╎│││   0x0012a524      add   x10, x10, 0x212
│ │╎│╎│││   0x0012a528      cmp   w8, 1
│ │╎│╎│││   0x0012a52c      csel  x0, x10, x9, eq                      ; int64_t arg1
│ │╎│╎│││   0x0012a530      bl    fcn.0014c9f8
│ │╎│╎│││   0x0012a534      ldrb  w8, [x19, 0x261]                     ; [0x261:4]=0xc9528001
│ │╎│╎│││   0x0012a538      adrp  x9, 0x257000
│ │╎│╎│││   0x0012a53c      adrp  x10, 0x24c000
│ │╎│╎│││   0x0012a540      add   x9, x9, 0x6b5
│ │╎│╎│││   0x0012a544      add   x10, x10, 0x3a3
│ │╎│╎│││   0x0012a548      cmp   w8, 1
│ │╎│╎│││   0x0012a54c      csel  x0, x10, x9, eq                      ; int64_t arg1
│ │╎│╎│││   0x0012a550      bl    fcn.0014c9f8
│ │╎│╎│││   0x0012a554      ldrb  w1, [x19, 0x262]                     ; [0x262:4]=0xe2c95280
│ │╎│╎│││   0x0012a558      cmp   w1, 0x7f
│ ────────< 0x0012a55c      b.ne  0x12a5e4
│ │╎│╎│││   0x0012a560      adrp  x0, 0x23e000
│ │╎│╎│││   0x0012a564      add   x0, x0, 0x731                        ; int64_t arg1
│ │╎│╎│││   0x0012a568      bl    fcn.0014c9f8
│ ────────< 0x0012a56c      b     0x12a5f0
│ │╎│╎││└─> 0x0012a570      adrp  x0, 0x27a000
│ │╎│╎││    0x0012a574      add   x0, x0, 0x7b6                        ; int64_t arg1
│ │╎│╎││    0x0012a578      bl    fcn.0014c9f8
│ │╎│└────< 0x0012a57c      tbz   w21, 1, 0x12a4c0
│ │╎│ └───> 0x0012a580      adrp  x0, 0x240000
│ │╎│  │    0x0012a584      add   x0, x0, 0xbce                        ; int64_t arg1
│ │╎│  │    0x0012a588      bl    fcn.0014c9f8
│ │└──────< 0x0012a58c      tbz   w21, 2, 0x12a4c4
│ │ └─────> 0x0012a590      adrp  x0, 0x255000
│ │    │    0x0012a594      add   x0, x0, 0x988                        ; int64_t arg1
│ │    │    0x0012a598      bl    fcn.0014c9f8
│ ────────< 0x0012a59c      tbz   w21, 3, 0x12a4c8
│ └───────> 0x0012a5a0      adrp  x0, 0x266000
│      │    0x0012a5a4      add   x0, x0, 0xb04                        ; int64_t arg1
│      │    0x0012a5a8      bl    fcn.0014c9f8
│ ────────< 0x0012a5ac      tbz   w21, 4, 0x12a4cc
│ ────────> 0x0012a5b0      adrp  x0, 0x253000
│      │    0x0012a5b4      add   x0, x0, 0x807                        ; int64_t arg1
│      │    0x0012a5b8      bl    fcn.0014c9f8
│ ────────< 0x0012a5bc      tbz   w21, 5, 0x12a4d0
│ ────────> 0x0012a5c0      adrp  x0, 0x25e000
│      │    0x0012a5c4      add   x0, x0, 0x122                        ; int64_t arg1
│      │    0x0012a5c8      bl    fcn.0014c9f8
│ ────────< 0x0012a5cc      tbz   w21, 6, 0x12a4d4
│ ────────> 0x0012a5d0      adrp  x0, 0x26c000
│      │    0x0012a5d4      add   x0, x0, 0xd9d                        ; int64_t arg1
│      │    0x0012a5d8      bl    fcn.0014c9f8
│ ────────< 0x0012a5dc      tbnz  w21, 0xf, 0x12a4d8
│ ────────< 0x0012a5e0      b     0x12a4e4
│ ────────> 0x0012a5e4      adrp  x0, 0x276000
│      │    0x0012a5e8      add   x0, x0, 0x22e                        ; int64_t arg1
│      │    0x0012a5ec      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.0012a2a4 @ 0x12a56c
│ ────────> 0x0012a5f0      adrp  x0, 0x25c000
│      │    0x0012a5f4      add   x0, x0, 0x285                        ; int64_t arg1
│      │    0x0012a5f8      bl    fcn.0014c9f8
│      │    0x0012a5fc      adrp  x0, 0x27c000
│      │    0x0012a600      add   x0, x0, 0xa26                        ; int64_t arg1
│      │    0x0012a604      bl    fcn.0014c9f8
│      │    0x0012a608      adrp  x0, 0x271000
│      │    0x0012a60c      add   x0, x0, 0x77d                        ; int64_t arg1
│      │    0x0012a610      bl    fcn.0014c9f8
│      │    0x0012a614      adrp  x21, 0x27c000
│      │    0x0012a618      add   x21, x21, 0xa53
│      │    0x0012a61c      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a620      bl    fcn.0014c9f8
│      │    0x0012a624      ldrb  w8, [x19, 0x272]                     ; [0x272:4]=0x7f8b5280
│      │    0x0012a628      adrp  x23, 0x240000
│      │    0x0012a62c      adrp  x22, 0x264000
│      │    0x0012a630      add   x23, x23, 0xbe3
│      │    0x0012a634      add   x22, x22, 0xc06
│      │    0x0012a638      adrp  x24, 0x27c000
│      │    0x0012a63c      cmp   w8, 1
│      │    0x0012a640      add   x24, x24, 0xa55
│      │    0x0012a644      csel  x9, x22, x23, eq
│      │    0x0012a648      cmp   w8, 2
│      │    0x0012a64c      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a650      bl    fcn.0014c9f8
│      │    0x0012a654      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a658      bl    fcn.0014c9f8
│      │    0x0012a65c      ldrb  w8, [x19, aav.0x0000028c]            ; [0x28c:4]=0xb9000109 ; "\t\U00000001"
│      │    0x0012a660      cmp   w8, 1
│      │    0x0012a664      csel  x9, x22, x23, eq
│      │    0x0012a668      cmp   w8, 2
│      │    0x0012a66c      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a670      bl    fcn.0014c9f8
│      │    0x0012a674      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a678      bl    fcn.0014c9f8
│      │    0x0012a67c      ldrb  w8, [x19, 0x2a6]                     ; [0x2a6:4]=0x6be9b900
│      │    0x0012a680      cmp   w8, 1
│      │    0x0012a684      csel  x9, x22, x23, eq
│      │    0x0012a688      cmp   w8, 2
│      │    0x0012a68c      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a690      bl    fcn.0014c9f8
│      │    0x0012a694      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a698      bl    fcn.0014c9f8
│      │    0x0012a69c      ldrb  w8, [x19, aav.0x000002c0]            ; [0x2c0:4]=0xb94077e9
│      │    0x0012a6a0      cmp   w8, 1
│      │    0x0012a6a4      csel  x9, x22, x23, eq
│      │    0x0012a6a8      cmp   w8, 2
│      │    0x0012a6ac      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a6b0      bl    fcn.0014c9f8
│      │    0x0012a6b4      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a6b8      bl    fcn.0014c9f8
│      │    0x0012a6bc      ldrb  w8, [x19, 0x2da]                     ; [0x2da:4]=0x2909b940
│      │    0x0012a6c0      cmp   w8, 1
│      │    0x0012a6c4      csel  x9, x22, x23, eq
│      │    0x0012a6c8      cmp   w8, 2
│      │    0x0012a6cc      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a6d0      bl    fcn.0014c9f8
│      │    0x0012a6d4      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a6d8      bl    fcn.0014c9f8
│      │    0x0012a6dc      ldrb  w8, [x19, 0x2f4]                     ; [0x2f4:4]=0xb9003509
│      │    0x0012a6e0      cmp   w8, 1
│      │    0x0012a6e4      csel  x9, x22, x23, eq
│      │    0x0012a6e8      cmp   w8, 2
│      │    0x0012a6ec      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a6f0      bl    fcn.0014c9f8
│      │    0x0012a6f4      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a6f8      bl    fcn.0014c9f8
│      │    0x0012a6fc      ldrb  w8, [x19, 0x30e]                     ; [0x30e:4]=0x9fe9b900
│      │    0x0012a700      cmp   w8, 1
│      │    0x0012a704      csel  x9, x22, x23, eq
│      │    0x0012a708      cmp   w8, 2
│      │    0x0012a70c      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a710      bl    fcn.0014c9f8
│      │    0x0012a714      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a718      bl    fcn.0014c9f8
│      │    0x0012a71c      ldrb  w8, [x19, 0x328]                     ; [0x328:4]=0xb940abe9
│      │    0x0012a720      cmp   w8, 1
│      │    0x0012a724      csel  x9, x22, x23, eq
│      │    0x0012a728      cmp   w8, 2
│      │    0x0012a72c      csel  x0, x24, x9, eq                      ; int64_t arg1
│      │    0x0012a730      bl    fcn.0014c9f8
│      │    0x0012a734      adrp  x22, 0x268000
│      │    0x0012a738      add   x22, x22, 0x356
│      │    0x0012a73c      mov   x0, x22                              ; int64_t arg1
│      │    0x0012a740      bl    fcn.0014c9f8
│      │    0x0012a744      adrp  x0, 0x257000
│      │    0x0012a748      add   x0, x0, 0x6d9                        ; int64_t arg1
│      │    0x0012a74c      bl    fcn.0014c9f8
│      │    0x0012a750      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a754      bl    fcn.0014c9f8
│      │    0x0012a758      ldrb  w8, [x19, 0x273]                     ; [0x273:4]=0x807f8b52
│      │    0x0012a75c      adrp  x24, 0x25a000
│      │    0x0012a760      add   x24, x24, 0x75
│      │    0x0012a764      adrp  x25, 0x278000
│      │    0x0012a768      cmp   w8, 2
│      │    0x0012a76c      add   x25, x25, 0x5f1
│      │    0x0012a770      csel  x9, x24, x23, eq
│      │    0x0012a774      cmp   w8, 1
│      │    0x0012a778      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a77c      bl    fcn.0014c9f8
│      │    0x0012a780      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a784      bl    fcn.0014c9f8
│      │    0x0012a788      ldrb  w8, [x19, 0x28d]                     ; [0x28d:4]=0xe9b90001
│      │    0x0012a78c      cmp   w8, 2
│      │    0x0012a790      csel  x9, x24, x23, eq
│      │    0x0012a794      cmp   w8, 1
│      │    0x0012a798      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a79c      bl    fcn.0014c9f8
│      │    0x0012a7a0      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a7a4      bl    fcn.0014c9f8
│      │    0x0012a7a8      ldrb  w8, [x19, 0x2a7]                     ; [0x2a7:4]=0x406be9b9
│      │    0x0012a7ac      cmp   w8, 2
│      │    0x0012a7b0      csel  x9, x24, x23, eq
│      │    0x0012a7b4      cmp   w8, 1
│      │    0x0012a7b8      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a7bc      bl    fcn.0014c9f8
│      │    0x0012a7c0      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a7c4      bl    fcn.0014c9f8
│      │    0x0012a7c8      ldrb  w8, [x19, 0x2c1]                     ; [0x2c1:4]=0x9b94077
│      │    0x0012a7cc      cmp   w8, 2
│      │    0x0012a7d0      csel  x9, x24, x23, eq
│      │    0x0012a7d4      cmp   w8, 1
│      │    0x0012a7d8      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a7dc      bl    fcn.0014c9f8
│      │    0x0012a7e0      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a7e4      bl    fcn.0014c9f8
│      │    0x0012a7e8      ldrb  w8, [x19, 0x2db]                     ; [0x2db:4]=0x2909b9
│      │    0x0012a7ec      cmp   w8, 2
│      │    0x0012a7f0      csel  x9, x24, x23, eq
│      │    0x0012a7f4      cmp   w8, 1
│      │    0x0012a7f8      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a7fc      bl    fcn.0014c9f8
│      │    0x0012a800      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a804      bl    fcn.0014c9f8
│      │    0x0012a808      ldrb  w8, [x19, 0x2f5]                     ; [0x2f5:4]=0xe9b90035
│      │    0x0012a80c      cmp   w8, 2
│      │    0x0012a810      csel  x9, x24, x23, eq
│      │    0x0012a814      cmp   w8, 1
│      │    0x0012a818      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a81c      bl    fcn.0014c9f8
│      │    0x0012a820      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a824      bl    fcn.0014c9f8
│      │    0x0012a828      ldrb  w8, [x19, 0x30f]                     ; [0x30f:4]=0x409fe9b9
│      │    0x0012a82c      cmp   w8, 2
│      │    0x0012a830      csel  x9, x24, x23, eq
│      │    0x0012a834      cmp   w8, 1
│      │    ; DATA XREF from aav.0x000412f8 @ +0x7540
│      │    0x0012a838      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a83c      bl    fcn.0014c9f8
│      │    0x0012a840      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a844      bl    fcn.0014c9f8
│      │    0x0012a848      ldrb  w8, [x19, 0x329]                     ; [0x329:4]=0x9b940ab
│      │    0x0012a84c      cmp   w8, 2
│      │    0x0012a850      csel  x9, x24, x23, eq
│      │    0x0012a854      cmp   w8, 1
│      │    0x0012a858      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a85c      bl    fcn.0014c9f8
│      │    0x0012a860      mov   x0, x22                              ; int64_t arg1
│      │    0x0012a864      bl    fcn.0014c9f8
│      │    0x0012a868      adrp  x0, 0x253000
│      │    0x0012a86c      add   x0, x0, str.nature_success           ; 0x840 ; "nature success\r\n" ; int64_t arg1
│      │    0x0012a870      bl    fcn.0014c9f8
│      │    0x0012a874      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a878      bl    fcn.0014c9f8
│      │    0x0012a87c      ldrb  w8, [x19, 0x274]                     ; [0x274:4]=0x52807f8b
│      │    0x0012a880      adrp  x24, 0x24c000
│      │    0x0012a884      add   x24, x24, 0x3c4
│      │    0x0012a888      adrp  x25, 0x251000
│      │    0x0012a88c      cmp   w8, 2
│      │    0x0012a890      add   x25, x25, 0xbd
│      │    0x0012a894      csel  x9, x24, x23, eq
│      │    0x0012a898      cmp   w8, 1
│      │    0x0012a89c      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a8a0      bl    fcn.0014c9f8
│      │    0x0012a8a4      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a8a8      bl    fcn.0014c9f8
│      │    0x0012a8ac      ldrb  w8, [x19, 0x28e]                     ; [0x28e:4]=0x5fe9b900
│      │    0x0012a8b0      cmp   w8, 2
│      │    0x0012a8b4      csel  x9, x24, x23, eq
│      │    0x0012a8b8      cmp   w8, 1
│      │    0x0012a8bc      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a8c0      bl    fcn.0014c9f8
│      │    0x0012a8c4      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a8c8      bl    fcn.0014c9f8
│      │    0x0012a8cc      ldrb  w8, [x19, 0x2a8]                     ; [0x2a8:4]=0xb9406be9
│      │    0x0012a8d0      cmp   w8, 2
│      │    0x0012a8d4      csel  x9, x24, x23, eq
│      │    0x0012a8d8      cmp   w8, 1
│      │    0x0012a8dc      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a8e0      bl    fcn.0014c9f8
│      │    0x0012a8e4      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a8e8      bl    fcn.0014c9f8
│      │    0x0012a8ec      ldrb  w8, [x19, 0x2c2]                     ; [0x2c2:4]=0x1d09b940
│      │    0x0012a8f0      cmp   w8, 2
│      │    0x0012a8f4      csel  x9, x24, x23, eq
│      │    0x0012a8f8      cmp   w8, 1
│      │    0x0012a8fc      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a900      bl    fcn.0014c9f8
│      │    0x0012a904      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a908      bl    fcn.0014c9f8
│      │    0x0012a90c      ldrb  w8, [x19, aav.0x000002dc]            ; [0x2dc:4]=0xb9002909 ; "\t)"
│      │    0x0012a910      cmp   w8, 2
│      │    0x0012a914      csel  x9, x24, x23, eq
│      │    0x0012a918      cmp   w8, 1
│      │    0x0012a91c      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a920      bl    fcn.0014c9f8
│      │    0x0012a924      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a928      bl    fcn.0014c9f8
│      │    0x0012a92c      ldrb  w8, [x19, 0x2f6]                     ; [0x2f6:4]=0x93e9b900
│      │    0x0012a930      cmp   w8, 2
│      │    0x0012a934      csel  x9, x24, x23, eq
│      │    0x0012a938      cmp   w8, 1
│      │    0x0012a93c      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a940      bl    fcn.0014c9f8
│      │    0x0012a944      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a948      bl    fcn.0014c9f8
│      │    0x0012a94c      ldrb  w8, [x19, 0x310]                     ; [0x310:4]=0xb9409fe9
│      │    0x0012a950      cmp   w8, 2
│      │    0x0012a954      csel  x9, x24, x23, eq
│      │    0x0012a958      cmp   w8, 1
│      │    0x0012a95c      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a960      bl    fcn.0014c9f8
│      │    0x0012a964      mov   x0, x21                              ; int64_t arg1
│      │    0x0012a968      bl    fcn.0014c9f8
│      │    0x0012a96c      ldrb  w8, [x19, 0x32a]                     ; [0x32a:4]=0x5109b940
│      │    0x0012a970      cmp   w8, 2
│      │    0x0012a974      csel  x9, x24, x23, eq
│      │    0x0012a978      cmp   w8, 1
│      │    0x0012a97c      csel  x0, x25, x9, eq                      ; int64_t arg1
│      │    0x0012a980      bl    fcn.0014c9f8
│      │    0x0012a984      mov   x0, x22                              ; int64_t arg1
│      │    0x0012a988      bl    fcn.0014c9f8
│      │    0x0012a98c      adrp  x0, 0x253000
│      │    0x0012a990      add   x0, x0, 0x844                        ; int64_t arg1
│      │    0x0012a994      bl    fcn.0014c9f8
│      │    0x0012a998      adrp  x22, 0x287000
│      │    0x0012a99c      adrp  x23, 0x260000
│      │    0x0012a9a0      adrp  x24, 0x24a000
│      │    0x0012a9a4      adrp  x25, 0x25a000
│      │    0x0012a9a8      mov   x28, xzr
│      │    0x0012a9ac      add   x26, x19, 0x275
│      │    0x0012a9b0      add   x22, x22, 0xaf8
│      │    0x0012a9b4      add   x23, x23, 0x7dd
│      │    0x0012a9b8      add   x24, x24, 0xa7
│      │    0x0012a9bc      add   x25, x25, 0x7c
│      │┌─< 0x0012a9c0      b     0x12a9dc
       ││   ; CODE XREFS from fcn.0012a2a4 @ 0x12a9f0, 0x12a9f8, 0x12a9fc
..
│      ││   ; CODE XREFS from fcn.0012a9c4 @ +0x48, +0x54, +0x60
│  ┌┌┌┌───> 0x0012a9d0      add   x28, x28, 0x1a                       ; int64_t arg1
│  ╎╎╎╎││   0x0012a9d4      cmp   x28, 0xd0
│ ┌───────< 0x0012a9d8      b.eq  0x12aa28
│ │╎╎╎╎││   ; CODE XREF from fcn.0012a2a4 @ 0x12a9c0
│ │╎╎╎╎│└─> 0x0012a9dc      mov   x0, x21                              ; int64_t arg1
│ │╎╎╎╎│    0x0012a9e0      bl    fcn.0014c9f8
│ │╎╎╎╎│    0x0012a9e4      ldrb  w8, [x26, x28]
│ │╎╎╎╎│    0x0012a9e8      cmp   w8, 6
│ │└──────< 0x0012a9ec      b.hi  0x12a9d0
│ │ ╎╎╎│    0x0012a9f0      adr   x9, fcn.0012a9c4                     ; 0x12a9c4
│ │ ╎╎╎│    0x0012a9f4      ldrb  w10, [x22, x8]
│ │ ╎╎╎│    0x0012a9f8      add   x9, x9, x10, lsl 2                   ; 0x12a9c4
│ │ ╎╎╎│                                                               ; fcn.0012a9c4
│ │ ╎╎╎│    0x0012a9fc      br    x9
..
│ └───────> 0x0012aa28      adrp  x0, 0x268000
│      │    0x0012aa2c      add   x0, x0, 0x356                        ; int64_t arg1
│      │    0x0012aa30      bl    fcn.0014c9f8
│      │    0x0012aa34      adrp  x0, 0x271000
│      │    0x0012aa38      add   x0, x0, 0x783                        ; int64_t arg1
│      │    0x0012aa3c      bl    fcn.0014c9f8
│      │    0x0012aa40      adrp  x21, 0x27c000
│      │    0x0012aa44      adrp  x22, 0x25e000
│      │    0x0012aa48      adrp  x23, 0x271000
│      │    0x0012aa4c      adrp  x24, 0x276000
│      │    0x0012aa50      mov   w25, 0x273
│      │    0x0012aa54      add   x21, x21, 0xa53
│      │    0x0012aa58      add   x22, x22, 0x142
│      │    0x0012aa5c      add   x23, x23, 0x789
│      │    0x0012aa60      add   x24, x24, 0x24d
│      │┌─< 0x0012aa64      b     0x12aa7c
│     ┌───> 0x0012aa68      mov   x0, x22
│     ╎││   ; CODE XREFS from fcn.0012a2a4 @ 0x12aacc, 0x12aad8
│   ┌┌────> 0x0012aa6c      bl    fcn.0014c9f8
│   ╎╎╎││   0x0012aa70      add   x25, x25, 0x1a
│   ╎╎╎││   0x0012aa74      cmp   x25, 0x343
│  ┌──────< 0x0012aa78      b.eq  0x12aadc
│  │╎╎╎││   ; CODE XREF from fcn.0012a2a4 @ 0x12aa64
│  │╎╎╎│└─> 0x0012aa7c      mov   x0, x21                              ; int64_t arg1
│  │╎╎╎│    0x0012aa80      bl    fcn.0014c9f8
│  │╎╎╎│    0x0012aa84      add   x8, x19, x25
│  │╎╎╎│    0x0012aa88      ldurh w9, [x8, 5]
│  │╎╎╎│    0x0012aa8c      ldurh w10, [x8, 3]
│  │╎╎╎│    0x0012aa90      ldrb  w8, [x8]
│  │╎╎╎│    0x0012aa94      bfi   w10, w9, 0x10, 0x10
│  │╎╎╎│    0x0012aa98      rev   w9, w10
│  │╎╎╎│    0x0012aa9c      mul   w1, w9, w20
│  │╎╎╎│┌─< 0x0012aaa0      cbz   w8, 0x12aab4
│  │╎╎╎││   0x0012aaa4      ldrb  w8, [x27, 0x24]                      ; aav.0x00000024
│  │╎╎╎││                                                              ; [0x24:4]=0xb9400001
│  │╎╎╎││   0x0012aaa8      ldrb  w9, [x27, 0x23]                      ; [0x23:4]=0x40000158
│  │╎╎╎││   0x0012aaac      bfi   w9, w8, 8, 8
│  │╎╎╎││   0x0012aab0      udiv  w1, w1, w9
│  │╎╎╎│└─> 0x0012aab4      cmp   w1, 0x3ff
│  │╎╎└───< 0x0012aab8      b.ls  0x12aa68
│  │╎╎ │    0x0012aabc      lsr   w8, w1, 0x14
│  │╎╎ │┌─< 0x0012aac0      cbnz  w8, 0x12aad0
│  │╎╎ ││   0x0012aac4      lsr   w1, w1, 0xa
│  │╎╎ ││   0x0012aac8      mov   x0, x23
│  │└─────< 0x0012aacc      b     0x12aa6c
│  │ ╎ │└─> 0x0012aad0      mov   x0, x24
│  │ ╎ │    0x0012aad4      mov   w1, w8
│  │ └────< 0x0012aad8      b     0x12aa6c
│  └──────> 0x0012aadc      adrp  x0, 0x268000
│      │    0x0012aae0      add   x0, x0, 0x356                        ; int64_t arg1
│      │    0x0012aae4      bl    fcn.0014c9f8
│      │    0x0012aae8      adrp  x0, 0x253000
│      │    0x0012aaec      add   x0, x0, 0x84a                        ; int64_t arg1
│      │    0x0012aaf0      bl    fcn.0014c9f8
│      │    0x0012aaf4      adrp  x20, 0x27c000
│      │    0x0012aaf8      adrp  x21, 0x25e000
│      │    0x0012aafc      adrp  x22, 0x271000
│      │    0x0012ab00      adrp  x23, 0x276000
│      │    0x0012ab04      mov   x24, xzr
│      │    0x0012ab08      add   x25, x19, 0x27b
│      │    0x0012ab0c      add   x20, x20, 0xa53
│      │    0x0012ab10      mov   w26, 1
│      │    0x0012ab14      add   x21, x21, 0x142
│      │    0x0012ab18      add   x22, x22, 0x789
│      │    0x0012ab1c      add   x23, x23, 0x24d
│      │┌─< 0x0012ab20      b     0x12ab40
│     ┌───> 0x0012ab24      mov   x0, x21
│     ╎││   ; CODE XREFS from fcn.0012a2a4 @ 0x12ab68, 0x12ab74
│   ┌┌────> 0x0012ab28      bl    fcn.0014c9f8
│   ╎╎╎││   0x0012ab2c      mov   x0, x20                              ; int64_t arg1
│   ╎╎╎││   0x0012ab30      bl    fcn.0014c9f8
│   ╎╎╎││   0x0012ab34      add   x24, x24, 0x1a
│   ╎╎╎││   0x0012ab38      cmp   x24, 0xd0
│  ┌──────< 0x0012ab3c      b.eq  0x12ab78
│  │╎╎╎││   ; CODE XREF from fcn.0012a2a4 @ 0x12ab20
│  │╎╎╎│└─> 0x0012ab40      mov   x0, x20                              ; int64_t arg1
│  │╎╎╎│    0x0012ab44      bl    fcn.0014c9f8
│  │╎╎╎│    0x0012ab48      ldrb  w8, [x25, x24]
│  │╎╎╎│    0x0012ab4c      cmp   x8, 9
│  │╎╎╎│    0x0012ab50      lsl   w1, w26, w8
│  │╎╎└───< 0x0012ab54      b.ls  0x12ab24
│  │╎╎ │    0x0012ab58      cmp   w8, 0x13
│  │╎╎ │┌─< 0x0012ab5c      b.hi  0x12ab6c
│  │╎╎ ││   0x0012ab60      lsr   w1, w1, 0xa
│  │╎╎ ││   0x0012ab64      mov   x0, x22
│  │└─────< 0x0012ab68      b     0x12ab28
│  │ ╎ │└─> 0x0012ab6c      lsr   w1, w1, 0x14
│  │ ╎ │    0x0012ab70      mov   x0, x23
│  │ └────< 0x0012ab74      b     0x12ab28
│  └──────> 0x0012ab78      adrp  x0, 0x268000
│      │    0x0012ab7c      add   x0, x0, 0x356                        ; int64_t arg1
│      │    0x0012ab80      bl    fcn.0014c9f8
│      │    0x0012ab84      adrp  x0, 0x23a000
│      │    0x0012ab88      add   x0, x0, 0x6b1                        ; int64_t arg1
│      │    0x0012ab8c      bl    fcn.0014c9f8
│      │    0x0012ab90      add   x18, x19, 0x265
│      │    0x0012ab94      ldrb  w0, [x19, 0x26d]                     ; [0x26d:4]=0x2ab94001
│      │    0x0012ab98      ldrb  w10, [x18, 1]                        ; [0x1:4]=0x6b000000
│      │    0x0012ab9c      ldrb  w11, [x18]
│      │    0x0012aba0      ldurh w17, [x18, 0xb]
│      │    0x0012aba4      ldurh w18, [x18, 9]                        ; [0xb940:4]=0x492a4a50 ; "PJ*IX\x9f\xa9\xaf3\xe9\xf1\xb4\xbb\xb33E\x8a\U0000001a\U0000001d\xb6H\xa2:\xb3\U00000006s\xa4\x96\U0000001c\v\xde\U0000007f\xfd\"
│      │    0x0012aba8      ldrb  w1, [x19, 0x25c]                     ; [0x25c:4]=0xb90e86c8
│      │    0x0012abac      ldrb  w2, [x19, 0x25d]                     ; [0x25d:4]=0xe8b90e86
│      │    0x0012abb0      ldrb  w3, [x19, 0x25e]                     ; [0x25e:4]=0x1e8b90e
│      │    0x0012abb4      ldrb  w4, [x19, 0x25f]                     ; [0x25f:4]=0x8001e8b9
│      │    0x0012abb8      ldrb  w5, [x19, aav.0x00000260]            ; [0x260:4]=0x528001e8
│      │    0x0012abbc      ldrb  w6, [x19, 0x261]                     ; [0x261:4]=0xc9528001
│      │    0x0012abc0      ldrb  w7, [x19, 0x262]                     ; [0x262:4]=0xe2c95280
│      │    0x0012abc4      ldrb  w8, [x19, 0x263]                     ; [0x263:4]=0x5e2c952
│      │    0x0012abc8      ldrb  w9, [x19, 0x264]                     ; [0x264:4]=0xd105e2c9
│      │    0x0012abcc      ldrb  w12, [x19, aav.0x00000268]           ; [0x268:4]=0xb90e82c8
│      │    0x0012abd0      ldrb  w13, [x19, 0x269]                    ; [0x269:4]=0x28b90e82
│      │    0x0012abd4      ldrb  w14, [x19, 0x26a]                    ; [0x26a:4]=0x128b90e
│      │    0x0012abd8      ldrb  w15, [x19, 0x26b]                    ; [0x26b:4]=0x400128b9
│      │    0x0012abdc      ldrb  w16, [x19, 0x26c]                    ; [0x26c:4]=0xb9400128
│      │    0x0012abe0      str   w0, [sp, 0x40]
│      │    0x0012abe4      adrp  x0, 0x23e000
│      │    0x0012abe8      bfi   w11, w10, 8, 8
│      │    0x0012abec      bfi   w18, w17, 0x10, 0x10
│      │    0x0012abf0      add   x0, x0, 0x75a                        ; int64_t arg1
│      │    0x0012abf4      str   w18, [sp, 0x48]
│      │    0x0012abf8      str   w16, [sp, 0x38]
│      │    0x0012abfc      str   w15, [sp, 0x30]
│      │    0x0012ac00      str   w14, [sp, 0x28]
│      │    0x0012ac04      str   w13, [sp, 0x20]
│      │    0x0012ac08      str   w12, [sp, 0x18]
│      │    0x0012ac0c      str   w11, [sp, 0x10]
│      │    0x0012ac10      str   w9, [sp, 8]
│      │    0x0012ac14      str   w8, [sp]
│      │    0x0012ac18      bl    fcn.0014c9f8
│      │    0x0012ac1c      add   x22, x19, 0x272
│      │    0x0012ac20      adrp  x19, 0x276000
│      │    0x0012ac24      adrp  x21, 0x264000
│      │    0x0012ac28      mov   x20, xzr
│      │    0x0012ac2c      add   x19, x19, 0x252
│      │    0x0012ac30      add   x21, x21, 0xc0c
│      │┌─> 0x0012ac34      mov   x0, x19                              ; int64_t arg1
│      │╎   0x0012ac38      mov   w1, w20
│      │╎   0x0012ac3c      bl    fcn.0014c9f8
│      │╎   0x0012ac40      ldrh  w8, [x22, 6]                         ; [0x6:4]=0x61642148
│      │╎   0x0012ac44      ldrh  w6, [x22, 4]                         ; str.kwH_daeh
│      │╎                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│      │╎   0x0012ac48      ldrb  w10, [x22, 0xc]                      ; aav.0x0000000c
│      │╎                                                              ; [0xc:4]=0
│      │╎   0x0012ac4c      ldrb  w11, [x22, 0xb]                      ; [0xb:4]=104
│      │╎   0x0012ac50      ldrh  w12, [x22, 0x18]                     ; aav.0x00000018
│      │╎                                                              ; [0x18:4]=0x7600000
│      │╎   0x0012ac54      ldrh  w13, [x22, 0x16]                     ; [0x16:4]=0
│      │╎   0x0012ac58      ldrb  w2, [x22]
│      │╎   0x0012ac5c      ldrb  w3, [x22, 1]                         ; [0x1:4]=0x6b000000
│      │╎   0x0012ac60      ldrb  w4, [x22, 2]                         ; [0x2:4]=0x776b0000
│      │╎   0x0012ac64      ldrb  w5, [x22, 3]                         ; [0x3:4]=0x48776b00
│      │╎   0x0012ac68      ldrb  w7, [x22, 8]                         ; aav.0x00000008
│      │╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      │╎   0x0012ac6c      ldrb  w9, [x22, 9]                         ; [0x9:4]=0x686561
│      │╎   0x0012ac70      ldrb  w14, [x22, 0xa]                      ; [0xa:4]=0x6865
│      │╎   0x0012ac74      bfi   w6, w8, 0x10, 0x10
│      │╎   0x0012ac78      bfi   w11, w10, 8, 8
│      │╎   0x0012ac7c      bfi   w13, w12, 0x10, 0x10
│      │╎   0x0012ac80      mov   x0, x21                              ; int64_t arg1
│      │╎   0x0012ac84      mov   w1, w20
│      │╎   0x0012ac88      str   w13, [sp, 0x18]
│      │╎   0x0012ac8c      str   w11, [sp, 0x10]
│      │╎   0x0012ac90      str   w14, [sp, 8]
│      │╎   0x0012ac94      str   w9, [sp]
│      │╎   0x0012ac98      bl    fcn.0014c9f8
│      │╎   0x0012ac9c      add   x20, x20, 1
│      │╎   0x0012aca0      cmp   x20, 8
│      │╎   0x0012aca4      add   x22, x22, 0x1a                       ; 0x28c ; "\t\U00000001"
│      │└─< 0x0012aca8      b.ne  0x12ac34
│      │    0x0012acac      ldp   x20, x19, [var_10h]
│      │    0x0012acb0      ldp   x22, x21, [var_20h]
│      │    0x0012acb4      ldp   x24, x23, [var_30h]
│      │    0x0012acb8      ldp   x26, x25, [var_40h]
│      │    0x0012acbc      ldp   x28, x27, [var_50h]
│      │    0x0012acc0      ldp   x29, x30, [var_60h]
│      │    0x0012acc4      adrp  x0, 0x25c000
│      │    0x0012acc8      add   x0, x0, 0x285
│      │    0x0012accc      add   sp, sp, 0xb0
│      │    0x0012acd0      autibsp
└      │┌─< 0x0012acd4      b     fcn.0014c9f8
            ; CODE XREFS from fcn.0012a2a4 @ 0x12a9f0, 0x12a9f8, 0x12a9fc
