┌ fcn.0017eb34(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017eb34      pacibsp
│           0x0017eb38      stp   x29, x30, [var_30h]!
│           0x0017eb3c      str   x21, [var_20h]
│           0x0017eb40      stp   x20, x19, [var_10h]
│           0x0017eb44      mov   x29, sp
│           0x0017eb48      mov   x20, x1                              ; arg2
│           0x0017eb4c      mov   x19, x0                              ; arg1
│           0x0017eb50      bl    fcn.0016e5f4
│       ┌─< 0x0017eb54      tbnz  w0, 0x11, 0x17eb60
│       │   ; CODE XREF from fcn.0017eb34 @ 0x17ec64
│      ┌──> 0x0017eb58      mov   w0, wzr
│     ┌───< 0x0017eb5c      b     0x17ecf4
│     │╎└─> 0x0017eb60      adrp  x1, 0x24a000
│     │╎    0x0017eb64      add   x1, x1, 0x972                        ; int64_t arg2
│     │╎    0x0017eb68      mov   x0, x19                              ; int64_t arg1
│     │╎    0x0017eb6c      bl    fcn.0014da4c
│     │╎┌─< 0x0017eb70      cbz   w0, 0x17ecf4
│     │╎│   0x0017eb74      adrp  x1, 0x23f000
│     │╎│   0x0017eb78      add   x1, x1, 0x11a                        ; int64_t arg2
│     │╎│   0x0017eb7c      mov   x0, x19                              ; int64_t arg1
│     │╎│   0x0017eb80      bl    fcn.0014da4c
│    ┌────< 0x0017eb84      cbz   w0, 0x17ecf4
│    ││╎│   0x0017eb88      adrp  x1, 0x245000
│    ││╎│   0x0017eb8c      add   x1, x1, 0xcf7                        ; int64_t arg2
│    ││╎│   0x0017eb90      mov   x0, x19                              ; int64_t arg1
│    ││╎│   0x0017eb94      bl    fcn.0014da4c
│   ┌─────< 0x0017eb98      cbz   w0, 0x17ecf4
│   │││╎│   0x0017eb9c      adrp  x1, 0x265000
│   │││╎│   0x0017eba0      add   x1, x1, aav.0x00000508               ; int64_t arg2
│   │││╎│   0x0017eba4      mov   x0, x19                              ; int64_t arg1
│   │││╎│   0x0017eba8      bl    fcn.0014da4c
│  ┌──────< 0x0017ebac      cbz   w0, 0x17ecf4
│  ││││╎│   0x0017ebb0      mov   x0, x20                              ; int64_t arg1
│  ││││╎│   0x0017ebb4      bl    fcn.0017cb74
│ ┌───────< 0x0017ebb8      cbz   w0, 0x17ec1c
│ │││││╎│   0x0017ebbc      mov   x0, x19                              ; int64_t arg1
│ │││││╎│   0x0017ebc0      bl    fcn.001758fc
│ ────────< 0x0017ebc4      cbz   x0, 0x17ec30
│ │││││╎│   0x0017ebc8      add   x21, x20, 0x9c                       ; aav.0x0000009c
│ │││││╎│   0x0017ebcc      add   x20, x0, 0x44                        ; aav.0x00000044
│ │││││╎│   0x0017ebd0      mov   x0, x21                              ; int64_t arg1
│ │││││╎│   0x0017ebd4      bl    fcn.0014db58
│ │││││╎│   0x0017ebd8      mov   x2, x0
│ │││││╎│   0x0017ebdc      mov   x0, x21                              ; int64_t arg1
│ │││││╎│   0x0017ebe0      mov   x1, x20                              ; int64_t arg2
│ │││││╎│   0x0017ebe4      bl    fcn.0014dbd8
│ ────────< 0x0017ebe8      cbz   w0, 0x17ec4c
│ │││││╎│   0x0017ebec      mov   w0, 0x1d
│ │││││╎│   0x0017ebf0      mov   x1, x19                              ; int64_t arg2
│ │││││╎│   0x0017ebf4      bl    fcn.00188654
│ │││││╎│   0x0017ebf8      mov   w0, wzr
│ │││││╎│   0x0017ebfc      bl    fcn.0017af7c
│ ────────< 0x0017ec00      cbz   w0, 0x17ec88
│ │││││╎│   0x0017ec04      adrp  x0, 0x274000
│ │││││╎│   0x0017ec08      add   x0, x0, 0x6cd                        ; int64_t arg1
│ │││││╎│   0x0017ec0c      mov   x1, x21                              ; int64_t arg2
│ │││││╎│   0x0017ec10      mov   x2, x20                              ; unsigned long arg3
│ │││││╎│   0x0017ec14      bl    fcn.0014c9f8
│ ────────< 0x0017ec18      b     0x17ecf0
│ └───────> 0x0017ec1c      bl    fcn.0017af7c
│ ┌───────< 0x0017ec20      cbz   w0, 0x17ec68
│ │││││╎│   0x0017ec24      adrp  x0, 0x26f000
│ │││││╎│   0x0017ec28      add   x0, x0, 0xf1c
│ ────────< 0x0017ec2c      b     0x17ec40
│ ────────> 0x0017ec30      bl    fcn.0017af7c
│ ────────< 0x0017ec34      cbz   w0, 0x17ecc0
│ │││││╎│   0x0017ec38      adrp  x0, 0x246000
│ │││││╎│   0x0017ec3c      add   x0, x0, 0x3d5
│ │││││╎│   ; CODE XREF from fcn.0017eb34 @ 0x17ec2c
│ ────────> 0x0017ec40      mov   x1, x19                              ; int64_t arg2
│ │││││╎│   0x0017ec44      bl    fcn.0014c9f8
│ ────────< 0x0017ec48      b     0x17ecf0
│ ────────> 0x0017ec4c      adrp  x0, 0x24f000
│ │││││╎│   0x0017ec50      adrp  x1, 0x269000
│ │││││╎│   0x0017ec54      add   x0, x0, 0x803                        ; int64_t arg1
│ │││││╎│   0x0017ec58      add   x1, x1, 0x22c                        ; int64_t arg2
│ │││││╎│   0x0017ec5c      mov   x2, x20                              ; unsigned long arg3
│ │││││╎│   0x0017ec60      bl    fcn.0014c9f8
│ │││││└──< 0x0017ec64      b     0x17eb58
│ └───────> 0x0017ec68      mov   w0, 2
│  ││││ │   0x0017ec6c      bl    fcn.0013d500
│  ││││ │   0x0017ec70      mov   w20, w0
│  ││││ │   0x0017ec74      bl    fcn.0013df98
│  ││││ │   0x0017ec78      adrp  x4, 0x26f000
│  ││││ │   0x0017ec7c      mov   w3, w0
│  ││││ │   0x0017ec80      add   x4, x4, 0xf1c
│  ││││┌──< 0x0017ec84      b     0x17ecdc
│ ────────> 0x0017ec88      mov   w0, 2
│  ││││││   0x0017ec8c      bl    fcn.0013d500
│  ││││││   0x0017ec90      mov   w19, w0
│  ││││││   0x0017ec94      bl    fcn.0013df98
│  ││││││   0x0017ec98      adrp  x4, 0x274000
│  ││││││   0x0017ec9c      mov   w3, w0
│  ││││││   0x0017eca0      add   x4, x4, 0x6cd                        ; int64_t arg5
│  ││││││   0x0017eca4      mov   w0, 0xa
│  ││││││   0x0017eca8      mov   w2, 0xff0000
│  ││││││   0x0017ecac      mov   w1, w19
│  ││││││   0x0017ecb0      mov   x5, x21                              ; int64_t arg6
│  ││││││   0x0017ecb4      mov   x6, x20                              ; int64_t arg7
│  ││││││   0x0017ecb8      bl    fcn.0013deb8
│ ┌───────< 0x0017ecbc      b     0x17ecf0
│ ────────> 0x0017ecc0      mov   w0, 2
│ │││││││   0x0017ecc4      bl    fcn.0013d500
│ │││││││   0x0017ecc8      mov   w20, w0
│ │││││││   0x0017eccc      bl    fcn.0013df98
│ │││││││   0x0017ecd0      adrp  x4, 0x246000
│ │││││││   0x0017ecd4      mov   w3, w0
│ │││││││   0x0017ecd8      add   x4, x4, 0x3d5
│ │││││││   ; CODE XREF from fcn.0017eb34 @ 0x17ec84
│ │││││└──> 0x0017ecdc      mov   w0, 0xa
│ │││││ │   0x0017ece0      mov   w2, 0xff0000
│ │││││ │   0x0017ece4      mov   w1, w20
│ │││││ │   0x0017ece8      mov   x5, x19                              ; int64_t arg6
│ │││││ │   0x0017ecec      bl    fcn.0013deb8
│ │││││ │   ; CODE XREFS from fcn.0017eb34 @ 0x17ec18, 0x17ec48, 0x17ecbc
│ └───────> 0x0017ecf0      mov   w0, -1
│  ││││ │   ; CODE XREF from fcn.0017eb34 @ 0x17eb5c
│  └└└└─└─> 0x0017ecf4      ldp   x20, x19, [var_10h]
│           0x0017ecf8      ldr   x21, [var_20h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0017ecfc      ldp   x29, x30, [sp], 0x30
│           0x0017ed00      autibsp
└           0x0017ed04      ret
            ; CALL XREF from fcn.001551fc @ 0x1554dc
