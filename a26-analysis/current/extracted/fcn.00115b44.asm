┌ fcn.00115b44(int64_t arg_f6eh, int64_t arg_f9ah);
│           ; var int64_t var_8ah @ stack - 0x8a
│           ; var int64_t var_82h @ stack - 0x82
│           ; var int64_t var_7ah @ stack - 0x7a
│           ; var int64_t var_72h @ stack - 0x72
│           ; var int64_t var_6ah @ stack - 0x6a
│           ; var int64_t var_66h @ stack - 0x66
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           ; arg int64_t arg_f6eh @ stack + 0xf6e
│           ; arg int64_t arg_f9ah @ stack + 0xf9a
│           0x00115b44      pacibsp
│           0x00115b48      stp   x29, x30, [var_60h]!
│           0x00115b4c      stp   x28, x27, [var_50h]
│           0x00115b50      stp   x26, x25, [var_40h]
│           0x00115b54      stp   x24, x23, [var_30h]
│           0x00115b58      stp   x22, x21, [var_20h]
│           0x00115b5c      stp   x20, x19, [var_10h]
│           0x00115b60      mov   x29, sp
│           0x00115b64      sub   sp, sp, 2, lsl 12
│           0x00115b68      sub   sp, sp, 0x30
│           0x00115b6c      mov   w0, -0x76000000
│           0x00115b70      bl    fcn.00141764
│           0x00115b74      bl    fcn.00115610
│           0x00115b78      bl    fcn.0016e568
│           0x00115b7c      ubfx  w19, w0, 0x13, 1
│           0x00115b80      adrp  x0, 0x275000
│           0x00115b84      add   x0, x0, 0xd64                        ; int64_t arg1
│           0x00115b88      bl    fcn.0014c9f8
│           0x00115b8c      adrp  x20, 0x55c000
│           0x00115b90      adrp  x21, 0x2c1000
│           0x00115b94      adrp  x0, 0x273000
│           0x00115b98      add   x20, x20, 0xd04
│           0x00115b9c      add   x21, x21, 0x786
│           0x00115ba0      add   x0, x0, 0x281                        ; int64_t arg1
│           0x00115ba4      mov   x1, x20                              ; int64_t arg2
│           0x00115ba8      mov   x2, x21                              ; int64_t arg3
│           0x00115bac      mov   w3, w19
│           0x00115bb0      bl    fcn.001127f8
│           0x00115bb4      adrp  x0, 0x26f000
│           0x00115bb8      add   x0, x0, aav.0x00000550               ; int64_t arg1
│           0x00115bbc      mov   x1, x20                              ; int64_t arg2
│           0x00115bc0      mov   x2, x21                              ; int64_t arg3
│           0x00115bc4      mov   w3, w19
│           0x00115bc8      bl    fcn.0014c9f8
│           0x00115bcc      bl    fcn.0017a100
│           0x00115bd0      cmp   w0, 0
│           0x00115bd4      adrp  x0, 0x5a6000
│           0x00115bd8      cset  w1, ne
│           0x00115bdc      add   x0, x0, 0xe9                         ; int64_t arg1
│           0x00115be0      bl    fcn.00184500
│           0x00115be4      bl    fcn.0017d738
│           0x00115be8      bl    fcn.0017da14
│           0x00115bec      adrp  x0, 0x27a000
│           0x00115bf0      add   x0, x0, 0x47d                        ; int64_t arg1
│           0x00115bf4      bl    fcn.00206870
│           0x00115bf8      bl    fcn.0010d154
│           0x00115bfc      mov   w0, aav.0x00001000
│           0x00115c00      stp   xzr, xzr, [var_7ah]
│           0x00115c04      stp   xzr, xzr, [var_8ah]
│           0x00115c08      bl    fcn.001417a0
│           0x00115c0c      mov   x0, -0x12e
│           0x00115c10      mov   x1, xzr
│           0x00115c14      mov   x2, xzr
│           0x00115c18      mov   x3, xzr
│           0x00115c1c      bl    fcn.0010a01c
│           0x00115c20      mov   w8, aav.0x00001000
│           0x00115c24      mov   x1, x0
│           0x00115c28      movk  w8, aav.0x00006600, lsl 16
│           0x00115c2c      cmp   w1, w8
│       ┌─< 0x00115c30      b.ne  0x115ca0
│       │   0x00115c34      mov   x0, -0x12e
│       │   0x00115c38      mov   w1, 2
│       │   0x00115c3c      mov   x2, xzr
│       │   0x00115c40      mov   x3, xzr
│       │   0x00115c44      bl    fcn.0010a01c
│       │   0x00115c48      mov   x19, x0
│       │   0x00115c4c      cmn   x0, 1
│      ┌──< 0x00115c50      b.ne  0x115c68
│      ││   0x00115c54      adrp  x0, 0x268000
│      ││   0x00115c58      add   x0, x0, aav.0x000006f8               ; ")" ; int64_t arg1
│      ││   0x00115c5c      bl    fcn.0014c9f8
│      ││   0x00115c60      mov   w0, 0x13
│      ││   0x00115c64      bl    fcn.00154834
│      └──> 0x00115c68      mov   x0, -0x12e
│       │   0x00115c6c      mov   w1, 1
│       │   0x00115c70      mov   x2, xzr
│       │   0x00115c74      mov   x3, xzr
│       │   0x00115c78      bl    fcn.0010a01c
│       │   0x00115c7c      mov   x20, x0
│       │   0x00115c80      cmn   w20, 1
│      ┌──< 0x00115c84      b.ne  0x115cbc
│      ││   0x00115c88      adrp  x0, 0x273000
│      ││   0x00115c8c      add   x0, x0, 0x66c                        ; int64_t arg1
│      ││   0x00115c90      bl    fcn.0014c9f8
│      ││   0x00115c94      mov   w0, 0x14
│      ││   0x00115c98      mov   w20, -1
│     ┌───< 0x00115c9c      b     0x115cb8
│     ││└─> 0x00115ca0      adrp  x0, 0x255000
│     ││    0x00115ca4      add   x0, x0, 0x5d1                        ; int64_t arg1
│     ││    0x00115ca8      bl    fcn.0014c9f8
│     ││    0x00115cac      mov   x19, xzr
│     ││    0x00115cb0      mov   w20, wzr
│     ││    0x00115cb4      mov   w0, 0x15
│     ││    ; CODE XREF from fcn.00115b44 @ 0x115c9c
│     └───> 0x00115cb8      bl    fcn.00154834
│      └──> 0x00115cbc      adrp  x0, 0x23c000
│           0x00115cc0      add   x0, x0, aav.0x00000590               ; "c\xff\xffT\xe9#" ; int64_t arg1
│           0x00115cc4      mov   x1, x19                              ; int64_t arg2
│           0x00115cc8      bl    fcn.0014c9f8
│           0x00115ccc      adrp  x0, 0x260000
│           0x00115cd0      add   x0, x0, 0x532                        ; int64_t arg1
│           0x00115cd4      mov   w1, w20
│           0x00115cd8      bl    fcn.0014c9f8
│           0x00115cdc      mov   w0, 0x2060                           ; '` '
│           0x00115ce0      movk  w0, 0x8200, lsl 16
│           0x00115ce4      mov   w1, 1
│           0x00115ce8      mov   x2, xzr
│           0x00115cec      mov   x3, xzr
│           0x00115cf0      bl    fcn.0010a01c
│           0x00115cf4      cmn   x0, 1
│       ┌─< 0x00115cf8      b.eq  0x115d18
│       │   0x00115cfc      mov   x21, x0
│      ┌──< 0x00115d00      cbz   x0, 0x115d24
│      ││   0x00115d04      cmp   x21, 3
│     ┌───< 0x00115d08      b.ne  0x115d30
│     │││   0x00115d0c      adrp  x0, 0x247000
│     │││   0x00115d10      add   x0, x0, 0x977
│    ┌────< 0x00115d14      b     0x115d40
│    │││└─> 0x00115d18      adrp  x0, 0x27a000
│    │││    0x00115d1c      add   x0, x0, 0x48c
│    │││┌─< 0x00115d20      b     0x115d40
│    ││└──> 0x00115d24      adrp  x0, 0x268000
│    ││ │   0x00115d28      add   x0, x0, 0x6ba
│    ││┌──< 0x00115d2c      b     0x115d40
│    │└───> 0x00115d30      tst   x21, 0xfffff
│    │┌───< 0x00115d34      b.eq  0x115d48
│    ││││   0x00115d38      adrp  x0, 0x249000
│    ││││   0x00115d3c      add   x0, x0, 0xc59
│    ││││   ; CODE XREFS from fcn.00115b44 @ 0x115d14, 0x115d20, 0x115d2c
│    └─└└─> 0x00115d40      bl    fcn.0014c9f8
│     │     0x00115d44      mov   x21, xzr
│     └───> 0x00115d48      mov   w0, 0x2060                           ; '` '
│           0x00115d4c      movk  w0, 0x8200, lsl 16
│           0x00115d50      mov   w1, 2
│           0x00115d54      mov   x2, xzr
│           0x00115d58      mov   x3, xzr
│           0x00115d5c      bl    fcn.0010a01c
│           0x00115d60      mov   x22, x0
│           0x00115d64      cmn   w22, 1
│       ┌─< 0x00115d68      b.eq  0x115d84
│      ┌──< 0x00115d6c      cbz   w22, 0x115d90
│      ││   0x00115d70      cmp   w22, 3
│     ┌───< 0x00115d74      b.ne  0x115d9c
│     │││   0x00115d78      adrp  x0, 0x260000
│     │││   0x00115d7c      add   x0, x0, 0x4f4
│    ┌────< 0x00115d80      b     0x115dac
│    │││└─> 0x00115d84      adrp  x0, 0x26f000
│    │││    0x00115d88      add   x0, x0, 0x568
│    │││┌─< 0x00115d8c      b     0x115dac
│    ││└──> 0x00115d90      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│    ││ │   0x00115d94      add   x0, x0, 0x9b8
│    ││┌──< 0x00115d98      b     0x115dac
│    │└───> 0x00115d9c      tst   x21, 0xfffff
│    │┌───< 0x00115da0      b.eq  0x115db4
│    ││││   0x00115da4      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│    ││││   0x00115da8      add   x0, x0, 0x464
│    ││││   ; CODE XREFS from fcn.00115b44 @ 0x115d80, 0x115d8c, 0x115d98
│    └─└└─> 0x00115dac      bl    fcn.0014c9f8
│     │     0x00115db0      mov   w22, wzr
│     └───> 0x00115db4      adrp  x0, 0x24c000
│           0x00115db8      add   x0, x0, 0xf7                         ; int64_t arg1
│           0x00115dbc      mov   x1, x21                              ; int64_t arg2
│           0x00115dc0      bl    fcn.0014c9f8
│           0x00115dc4      adrp  x0, 0x240000
│           0x00115dc8      add   x0, x0, 0x8f2                        ; int64_t arg1
│           0x00115dcc      mov   w1, w22
│           0x00115dd0      bl    fcn.0014c9f8
│           0x00115dd4      add   x0, var_72h                          ; int64_t arg1
│           0x00115dd8      add   x1, var_7ah                          ; int64_t arg2
│           0x00115ddc      bl    fcn.0010d2e4
│       ┌─< 0x00115de0      cbz   w0, 0x115dec
│       │   0x00115de4      stp   xzr, xzr, [var_7ah]
│      ┌──< 0x00115de8      b     0x115e48
│      │└─> 0x00115dec      ldr   x1, [var_72h]                        ; aav.0x00000020
│      │                                                               ; [0x20:4]=0x58000940 ; "@\t" ; int64_t arg2
│      │    0x00115df0      adrp  x0, 0x249000
│      │    0x00115df4      add   x0, x0, 0xc80                        ; int64_t arg1
│      │    0x00115df8      bl    fcn.0014c9f8
│      │    0x00115dfc      ldr   x1, [var_7ah]                        ; aav.0x00000018
│      │                                                               ; [0x18:4]=0x7600000 ; int64_t arg2
│      │    0x00115e00      adrp  x0, 0x245000
│      │    0x00115e04      add   x0, x0, 0x58f                        ; int64_t arg1
│      │    0x00115e08      bl    fcn.0014c9f8
│      │    0x00115e0c      add   x0, var_82h                          ; int64_t arg1
│      │    0x00115e10      add   x1, var_8ah                          ; int64_t arg2
│      │    0x00115e14      bl    fcn.0010d40c
│      │┌─< 0x00115e18      cbz   w0, 0x115e28
│      ││   0x00115e1c      mov   x1, xzr
│      ││   0x00115e20      stp   xzr, xzr, [var_8ah]
│     ┌───< 0x00115e24      b     0x115e2c
│     ││└─> 0x00115e28      ldr   x1, [var_82h]                        ; aav.0x00000010
│     ││                                                               ; [0x10:4]=0x14000004
│     ││    ; CODE XREF from fcn.00115b44 @ 0x115e24
│     └───> 0x00115e2c      adrp  x0, 0x273000
│      │    0x00115e30      add   x0, x0, 0x655                        ; int64_t arg1
│      │    0x00115e34      bl    fcn.0014c9f8
│      │    0x00115e38      ldr   x1, [var_8ah]                        ; aav.0x00000008
│      │                                                               ; [0x8:4]=0x68656164 ; "daeh" ; int64_t arg2
│      │    0x00115e3c      adrp  x0, 0x268000
│      │    0x00115e40      add   x0, x0, 0x6d9                        ; int64_t arg1
│      │    0x00115e44      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.00115b44 @ 0x115de8
│      └──> 0x00115e48      mov   w0, wzr
│           0x00115e4c      bl    fcn.00113004
│           0x00115e50      adrp  x2, 0x23a000
│           0x00115e54      mov   w1, w20
│           0x00115e58      add   x2, x2, 0x319                        ; int64_t arg3
│           0x00115e5c      mov   x0, x19                              ; int64_t arg1
│           0x00115e60      bl    fcn.0022e03c
│           0x00115e64      adrp  x2, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x00115e68      mov   w1, w22
│           0x00115e6c      add   x2, x2, 0x48b                        ; int64_t arg3
│           0x00115e70      mov   x0, x21                              ; int64_t arg1
│           0x00115e74      bl    fcn.0022e03c
│           0x00115e78      ldp   x1, x0, [var_7ah]                    ; int64_t arg2
│           0x00115e7c      adrp  x2, 0x27c000
│           0x00115e80      add   x2, x2, 0x797                        ; int64_t arg3
│           0x00115e84      bl    fcn.0022e03c
│           0x00115e88      ldp   x1, x0, [var_8ah]                    ; int64_t arg1
│           0x00115e8c      adrp  x2, 0x249000
│           0x00115e90      add   x2, x2, 0xc91                        ; int64_t arg4
│           0x00115e94      bl    fcn.0022e03c
│           0x00115e98      bl    fcn.001b43c0
│           0x00115e9c      bl    fcn.0022dcc8
│           0x00115ea0      bl    fcn.0022e244
│           0x00115ea4      bl    fcn.00141750
│           0x00115ea8      bl    fcn.0013f004
│       ┌─< 0x00115eac      cbz   w0, 0x115f68
│       │   0x00115eb0      mov   w19, w0
│       │   0x00115eb4      bl    fcn.00141018
│       │   0x00115eb8      mov   x1, x0
│       │   0x00115ebc      adrp  x0, 0x253000
│       │   0x00115ec0      add   x0, x0, 0x403
│       │   ; CODE XREF from fcn.00115b44 @ 0x11667c
│      ┌──> 0x00115ec4      bl    fcn.0014c9f8
│      ╎│   ; CODE XREF from fcn.00115b44 @ 0x116698
│   ┌┌┌───> 0x00115ec8      tbz   w19, 0x1f, 0x115efc
│   │╎╎╎│   0x00115ecc      adrp  x0, 0x262000
│   │╎╎╎│   0x00115ed0      adrp  x1, 0x262000
│   │╎╎╎│   0x00115ed4      add   x0, x0, 0x857                        ; int64_t arg1
│   │╎╎╎│   0x00115ed8      add   x1, x1, 0x874                        ; int64_t arg2
│   │╎╎╎│   0x00115edc      bl    fcn.0014c9f8
│   │╎╎╎│   0x00115ee0      adrp  x0, 0x271000
│   │╎╎╎│   0x00115ee4      adrp  x1, 0x24e000
│   │╎╎╎│   0x00115ee8      add   x0, x0, 0x509                        ; int64_t arg1
│   │╎╎╎│   0x00115eec      add   x1, x1, 0xe19                        ; int64_t arg2
│   │╎╎╎│   0x00115ef0      bl    fcn.0014c9f8
│   │╎╎╎│   0x00115ef4      mov   w0, 0x11
│   │╎╎╎│   0x00115ef8      bl    fcn.00154834
│   └─────> 0x00115efc      bl    fcn.0016f3e0
│    ╎╎╎│   0x00115f00      bl    fcn.00171830
│   ┌─────< 0x00115f04      cbz   w0, 0x115f38
│   │╎╎╎│   0x00115f08      adrp  x0, 0x255000
│   │╎╎╎│   0x00115f0c      adrp  x1, 0x262000
│   │╎╎╎│   0x00115f10      add   x0, x0, 0x5f9                        ; int64_t arg1
│   │╎╎╎│   0x00115f14      add   x1, x1, 0x874                        ; int64_t arg2
│   │╎╎╎│   0x00115f18      bl    fcn.0014c9f8
│   │╎╎╎│   0x00115f1c      adrp  x0, 0x271000
│   │╎╎╎│   0x00115f20      adrp  x1, 0x24e000
│   │╎╎╎│   0x00115f24      add   x0, x0, 0x509                        ; int64_t arg1
│   │╎╎╎│   0x00115f28      add   x1, x1, 0xe19                        ; int64_t arg2
│   │╎╎╎│   0x00115f2c      bl    fcn.0014c9f8
│   │╎╎╎│   0x00115f30      mov   w0, 0x11
│   │╎╎╎│   0x00115f34      bl    fcn.00154834
│   └─────> 0x00115f38      bl    fcn.00171e34
│    ╎╎╎│   0x00115f3c      bl    fcn.00115488
│   ┌─────< 0x00115f40      tbnz  w0, 0x1f, 0x116068
│   │╎╎╎│   0x00115f44      bl    fcn.001530ec
│   │╎╎╎│   0x00115f48      cmp   w0, 3
│  ┌──────< 0x00115f4c      b.hi  0x1160ac
│  ││╎╎╎│   0x00115f50      bl    fcn.00171e74
│  ││╎╎╎│   0x00115f54      bl    fcn.00115488
│ ┌───────< 0x00115f58      tbz   w0, 0x1f, 0x1160ac
│ │││╎╎╎│   0x00115f5c      adrp  x0, 0x24c000
│ │││╎╎╎│   0x00115f60      add   x0, x0, 0x77
│ ────────< 0x00115f64      b     0x116070
│ │││╎╎╎└─> 0x00115f68      add   x0, sp, 1, lsl 12
│ │││╎╎╎    0x00115f6c      add   x0, x0, 0x30                         ; int64_t arg1
│ │││╎╎╎    0x00115f70      mov   w2, aav.0x00001000
│ │││╎╎╎    0x00115f74      mov   w1, wzr
│ │││╎╎╎    0x00115f78      bl    fcn.0014d8fc
│ │││╎╎╎    0x00115f7c      add   x0, var_66h                          ; int64_t arg1
│ │││╎╎╎    0x00115f80      mov   w2, aav.0x00001000
│ │││╎╎╎    0x00115f84      mov   w1, wzr
│ │││╎╎╎    0x00115f88      bl    fcn.0014d8fc
│ │││╎╎╎    0x00115f8c      bl    fcn.00141750
│ │││╎╎╎    0x00115f90      adrp  x1, 0x268000
│ │││╎╎╎    0x00115f94      add   x1, x1, aav.0x000006f0               ; int64_t arg2
│ │││╎╎╎    0x00115f98      bl    fcn.0013fde4
│ │││╎╎╎┌─< 0x00115f9c      tbnz  w0, 0x1f, 0x116004
│ │││╎╎╎│   0x00115fa0      mov   w19, w0
│ │││╎╎╎│   0x00115fa4      bl    fcn.00141750
│ │││╎╎╎│   0x00115fa8      adrp  x2, 0x23a000
│ │││╎╎╎│   0x00115fac      add   x3, sp, 1, lsl 12
│ │││╎╎╎│   0x00115fb0      add   x2, x2, 0x325                        ; int64_t arg3
│ │││╎╎╎│   0x00115fb4      add   x3, x3, 0x2c                         ; int64_t arg4
│ │││╎╎╎│   0x00115fb8      mov   w1, w19
│ │││╎╎╎│   0x00115fbc      bl    fcn.001401c0
│ │││╎╎╎│   0x00115fc0      ldr   w2, [arg_f9ah]                       ; [0x102c:4]=0xb94006ad
│ ────────< 0x00115fc4      tbnz  w2, 0x1f, 0x115fd8
│ │││╎╎╎│   0x00115fc8      mov   x1, x0                               ; int64_t arg2
│ │││╎╎╎│   0x00115fcc      add   x0, sp, 1, lsl 12
│ │││╎╎╎│   0x00115fd0      add   x0, x0, 0x30                         ; int64_t arg1
│ │││╎╎╎│   0x00115fd4      bl    fcn.0014d60c
│ ────────> 0x00115fd8      bl    fcn.00141750
│ │││╎╎╎│   0x00115fdc      adrp  x2, 0x245000
│ │││╎╎╎│   0x00115fe0      add   x2, x2, aav.0x000005a0               ; int64_t arg3
│ │││╎╎╎│   0x00115fe4      add   x3, var_6ah                          ; int64_t arg4
│ │││╎╎╎│   0x00115fe8      mov   w1, w19
│ │││╎╎╎│   0x00115fec      bl    fcn.001401c0
│ │││╎╎╎│   0x00115ff0      ldr   w2, [var_6ah]                        ; aav.0x00000028
│ │││╎╎╎│                                                              ; [0x28:4]=0x350000c1
│ ────────< 0x00115ff4      tbnz  w2, 0x1f, 0x116004
│ │││╎╎╎│   0x00115ff8      mov   x1, x0                               ; int64_t arg2
│ │││╎╎╎│   0x00115ffc      add   x0, var_66h                          ; int64_t arg1
│ │││╎╎╎│   0x00116000      bl    fcn.0014d60c
│ ──────└─> 0x00116004      add   x0, sp, 1, lsl 12
│ │││╎╎╎    0x00116008      add   x0, x0, 0x30                         ; int64_t arg1
│ │││╎╎╎    0x0011600c      bl    fcn.00115488
│ │││╎╎╎┌─< 0x00116010      tbnz  w0, 0x1f, 0x116668
│ │││╎╎╎│   0x00116014      add   x0, var_66h                          ; int64_t arg1
│ │││╎╎╎│   0x00116018      bl    fcn.00115488
│ ────────< 0x0011601c      tbnz  w0, 0x1f, 0x116680
│ │││╎╎╎│   0x00116020      add   x0, sp, 1, lsl 12
│ │││╎╎╎│   0x00116024      add   x0, x0, 0x30                         ; int64_t arg1
│ │││╎╎╎│   0x00116028      mov   w1, aav.0x00001000
│ │││╎╎╎│   0x0011602c      add   x19, sp, 1, lsl 12
│ │││╎╎╎│   0x00116030      add   x19, x19, 0x30
│ │││╎╎╎│   0x00116034      bl    fcn.000f37fc
│ │││╎╎╎│   0x00116038      cmp   x0, 0xfff
│ │││╎╎╎│   0x0011603c      mov   w8, 0xfff
│ │││╎╎╎│   0x00116040      csel  x8, x0, x8, lo
│ │││╎╎╎│   0x00116044      add   x0, sp, 1, lsl 12
│ │││╎╎╎│   0x00116048      add   x0, x0, 0x30                         ; int64_t arg1
│ │││╎╎╎│   0x0011604c      strb  wzr, [x19, x8]
│ │││╎╎╎│   0x00116050      bl    fcn.00115488
│ │││╎╎╎│   0x00116054      mov   w19, wzr
│ │││└────< 0x00116058      tbz   w0, 0x1f, 0x115ec8
│ │││ ╎╎│   0x0011605c      adrp  x0, 0x27c000
│ │││ ╎╎│   0x00116060      add   x0, x0, 0x79d
│ │││┌────< 0x00116064      b     0x116688
│ ││└─────> 0x00116068      adrp  x0, 0x23e000
│ ││ │╎╎│   0x0011606c      add   x0, x0, 0x49c
│ ││ │╎╎│   ; CODE XREF from fcn.00115b44 @ 0x115f64
│ ────────> 0x00116070      adrp  x1, 0x242000
│ ││ │╎╎│   0x00116074      add   x1, x1, 0xec6                        ; int64_t arg2
│ ││ │╎╎│   0x00116078      bl    fcn.0014c9f8
│ ││ │╎╎│   0x0011607c      adrp  x0, 0x275000
│ ││ │╎╎│   0x00116080      adrp  x1, 0x262000
│ ││ │╎╎│   0x00116084      add   x0, x0, 0xe03                        ; int64_t arg1
│ ││ │╎╎│   0x00116088      add   x1, x1, 0x874                        ; int64_t arg2
│ ││ │╎╎│   0x0011608c      bl    fcn.0014c9f8
│ ││ │╎╎│   0x00116090      adrp  x0, 0x271000
│ ││ │╎╎│   0x00116094      adrp  x1, 0x24e000
│ ││ │╎╎│   0x00116098      add   x0, x0, 0x509                        ; int64_t arg1
│ ││ │╎╎│   0x0011609c      add   x1, x1, 0xe19                        ; int64_t arg2
│ ││ │╎╎│   0x001160a0      bl    fcn.0014c9f8
│ ││ │╎╎│   0x001160a4      mov   w0, 0x11
│ ││ │╎╎│   0x001160a8      bl    fcn.00154834
│ └└──────> 0x001160ac      add   x0, sp, 1, lsl 12
│    │╎╎│   0x001160b0      add   x0, x0, 0x30                         ; int64_t arg1
│    │╎╎│   0x001160b4      mov   w2, aav.0x00001000
│    │╎╎│   0x001160b8      add   x24, sp, 1, lsl 12
│    │╎╎│   0x001160bc      mov   w1, wzr
│    │╎╎│   0x001160c0      add   x24, x24, 0x30
│    │╎╎│   0x001160c4      bl    fcn.0014d8fc
│    │╎╎│   0x001160c8      adrp  x25, 0x55d000
│    │╎╎│   0x001160cc      ldr   w23, [x25, aav.0x00000104]           ; [0x104:4]=0x940022ef
│    │╎╎│   0x001160d0      cmp   w23, 1
│   ┌─────< 0x001160d4      b.lt  0x1161a4
│   ││╎╎│   0x001160d8      adrp  x19, 0x55d000
│   ││╎╎│   0x001160dc      adrp  x20, 0x242000
│   ││╎╎│   0x001160e0      adrp  x21, 0x242000
│   ││╎╎│   0x001160e4      adrp  x22, 0x23c000
│   ││╎╎│   0x001160e8      mov   x26, xzr
│   ││╎╎│   0x001160ec      mov   w27, wzr
│   ││╎╎│   0x001160f0      add   x19, x19, aav.0x00000108
│   ││╎╎│   0x001160f4      add   x20, x20, 0xac1
│   ││╎╎│   0x001160f8      add   x21, x21, 0xf12
│   ││╎╎│   0x001160fc      add   x22, x22, 0x5a5
│  ┌──────< 0x00116100      b     0x116158
│ ┌───────> 0x00116104      mov   x1, x22                              ; int64_t arg2
│ ╎│││╎╎│   0x00116108      mov   x3, x19                              ; int64_t arg4
│ ╎│││╎╎│   0x0011610c      bl    fcn.0014aff0
│ ╎│││╎╎│   0x00116110      add   x0, x19, 0x81                        ; int64_t arg1
│ ╎│││╎╎│   0x00116114      bl    fcn.0014db58
│ ╎│││╎╎│   0x00116118      mov   x23, x0
│ ╎│││╎╎│   0x0011611c      mov   x0, x19                              ; int64_t arg1
│ ╎│││╎╎│   0x00116120      bl    fcn.0014db58
│ ╎│││╎╎│   0x00116124      add   w8, w0, w23
│ ╎│││╎╎│   0x00116128      add   w8, w27, w8
│ ╎│││╎╎│   0x0011612c      add   w27, w8, 1
│ ╎│││╎╎│   ; CODE XREF from fcn.00115b44 @ 0x1161a0
│ ────────> 0x00116130      add   x0, x24, w27, sxtw                   ; int64_t arg1
│ ╎│││╎╎│   0x00116134      mov   w1, 2
│ ╎│││╎╎│   0x00116138      mov   x2, x21                              ; int64_t arg4
│ ╎│││╎╎│   0x0011613c      bl    fcn.0014b120
│ ╎│││╎╎│   0x00116140      ldr   w23, [x25, aav.0x00000104]           ; [0x104:4]=0x940022ef
│ ╎│││╎╎│   0x00116144      add   w27, w27, 1
│ ────────> 0x00116148      add   x26, x26, 1
│ ╎│││╎╎│   0x0011614c      cmp   x26, w23, sxtw
│ ╎│││╎╎│   0x00116150      add   x19, x19, 0x102
│ ────────< 0x00116154      b.ge  0x1161a8
│ ╎│││╎╎│   ; CODE XREF from fcn.00115b44 @ 0x116100
│ ╎└──────> 0x00116158      cmp   x26, 0xff
│ ╎┌──────< 0x0011615c      b.hi  0x1161cc
│ ╎│││╎╎│   0x00116160      cmp   w27, 0xfff
│ ────────< 0x00116164      b.gt  0x1161cc
│ ╎│││╎╎│   0x00116168      add   x0, x19, 0x81                        ; int64_t arg1
│ ╎│││╎╎│   0x0011616c      bl    fcn.0014db58
│ ────────< 0x00116170      cbz   x0, 0x116148
│ ╎│││╎╎│   0x00116174      mov   x0, x19                              ; int64_t arg1
│ ╎│││╎╎│   0x00116178      bl    fcn.0014db58
│ ╎│││╎╎│   0x0011617c      mov   x8, x0
│ ╎│││╎╎│   0x00116180      add   x0, x24, w27, sxtw
│ ╎│││╎╎│   0x00116184      add   x2, x19, 0x81
│ └───────< 0x00116188      cbnz  x8, 0x116104
│  │││╎╎│   0x0011618c      mov   x1, x20                              ; int64_t arg2
│  │││╎╎│   0x00116190      bl    fcn.0014aff0
│  │││╎╎│   0x00116194      add   x0, x19, 0x81                        ; int64_t arg1
│  │││╎╎│   0x00116198      bl    fcn.0014db58
│  │││╎╎│   0x0011619c      add   w27, w27, w0
│ ────────< 0x001161a0      b     0x116130
│  │└─────> 0x001161a4      mov   w27, wzr
│ ────────> 0x001161a8      adrp  x0, 0x268000
│  │ │╎╎│   0x001161ac      adrp  x1, 0x23a000
│  │ │╎╎│   0x001161b0      add   x2, sp, 1, lsl 12
│  │ │╎╎│   0x001161b4      add   x0, x0, aav.0x000006f0               ; int64_t arg1
│  │ │╎╎│   0x001161b8      add   x1, x1, 0x325                        ; int64_t arg2
│  │ │╎╎│   0x001161bc      add   x2, x2, 0x30                         ; int64_t arg3
│  │ │╎╎│   0x001161c0      strb  wzr, [x24, w27, sxtw]
│  │ │╎╎│   0x001161c4      bl    fcn.001418f4
│  │┌─────< 0x001161c8      b     0x1161fc
│ ─└──────> 0x001161cc      adrp  x0, 0x275000
│   ││╎╎│   0x001161d0      adrp  x1, 0x262000
│   ││╎╎│   0x001161d4      add   x0, x0, 0xe23                        ; int64_t arg1
│   ││╎╎│   0x001161d8      add   x1, x1, 0x874                        ; int64_t arg2
│   ││╎╎│   0x001161dc      bl    fcn.0014c9f8
│   ││╎╎│   0x001161e0      adrp  x0, 0x271000
│   ││╎╎│   0x001161e4      adrp  x1, 0x24e000
│   ││╎╎│   0x001161e8      add   x0, x0, 0x509                        ; int64_t arg1
│   ││╎╎│   0x001161ec      add   x1, x1, 0xe19                        ; int64_t arg2
│   ││╎╎│   0x001161f0      bl    fcn.0014c9f8
│   ││╎╎│   0x001161f4      mov   w0, 0x11
│   ││╎╎│   0x001161f8      bl    fcn.00154834
│   ││╎╎│   ; CODE XREF from fcn.00115b44 @ 0x1161c8
│   └─────> 0x001161fc      bl    fcn.001530ec
│    │╎╎│   0x00116200      cmp   w0, 4
│   ┌─────< 0x00116204      b.ne  0x11620c
│   ││╎╎│   0x00116208      bl    fcn.001537ec
│   └─────> 0x0011620c      adrp  x2, 0x26f000
│    │╎╎│   0x00116210      add   x0, sp, 1, lsl 12
│    │╎╎│   0x00116214      add   x2, x2, 0x596                        ; int64_t arg4
│    │╎╎│   0x00116218      add   x0, x0, 0x30                         ; int64_t arg1
│    │╎╎│   0x0011621c      mov   w1, aav.0x00001000
│    │╎╎│   0x00116220      mov   w3, -0x7af00000
│    │╎╎│   0x00116224      mov   w19, -0x7af00000
│    │╎╎│   0x00116228      bl    fcn.0014b120
│    │╎╎│   0x0011622c      adrp  x0, 0x268000
│    │╎╎│   0x00116230      adrp  x1, 0x24c000
│    │╎╎│   0x00116234      add   x2, sp, 1, lsl 12
│    │╎╎│   0x00116238      add   x0, x0, aav.0x000006f0               ; int64_t arg1
│    │╎╎│   0x0011623c      add   x1, x1, 0x10d                        ; int64_t arg2
│    │╎╎│   0x00116240      add   x2, x2, 0x30                         ; int64_t arg3
│    │╎╎│   0x00116244      bl    fcn.001418f4
│    │╎╎│   0x00116248      bl    fcn.001530ec
│    │╎╎│   0x0011624c      cmp   w0, 2
│   ┌─────< 0x00116250      b.eq  0x116260
│   ││╎╎│   0x00116254      bl    fcn.001530ec
│   ││╎╎│   0x00116258      cmp   w0, 4
│  ┌──────< 0x0011625c      b.ne  0x116284
│  │└─────> 0x00116260      bl    fcn.00153104
│  │ │╎╎│   0x00116264      add   w3, w0, w19
│  │ │╎╎│   0x00116268      adrp  x2, 0x26f000
│  │ │╎╎│   0x0011626c      add   x0, sp, 1, lsl 12
│  │ │╎╎│   0x00116270      add   x2, x2, 0x596                        ; int64_t arg4
│  │ │╎╎│   0x00116274      add   x0, x0, 0x30                         ; int64_t arg1
│  │ │╎╎│   0x00116278      mov   w1, aav.0x00001000
│  │ │╎╎│   0x0011627c      bl    fcn.0014b120
│  │┌─────< 0x00116280      b     0x1162dc
│  └──────> 0x00116284      bl    fcn.001530ec
│   ││╎╎│   0x00116288      mov   w2, w0
│   ││╎╎│   0x0011628c      adrp  x0, 0x26c000
│   ││╎╎│   0x00116290      adrp  x1, 0x242000
│   ││╎╎│   0x00116294      add   x0, x0, 0xa91                        ; int64_t arg1
│   ││╎╎│   0x00116298      add   x1, x1, 0xf04                        ; int64_t arg2
│   ││╎╎│   0x0011629c      bl    fcn.0014c9f8
│   ││╎╎│   0x001162a0      mov   w0, 2
│   ││╎╎│   0x001162a4      bl    fcn.0013d500
│   ││╎╎│   0x001162a8      mov   w19, w0
│   ││╎╎│   0x001162ac      bl    fcn.001530ec
│   ││╎╎│   0x001162b0      adrp  x4, 0x262000
│   ││╎╎│   0x001162b4      mov   w3, 0xc7c5
│   ││╎╎│   0x001162b8      mov   w5, w0
│   ││╎╎│   0x001162bc      add   x4, x4, 0x81f                        ; int64_t arg5
│   ││╎╎│   0x001162c0      mov   w0, 0xa
│   ││╎╎│   0x001162c4      mov   w2, 0xff0000
│   ││╎╎│   0x001162c8      movk  w3, 0x21, lsl 16
│   ││╎╎│   0x001162cc      mov   w1, w19
│   ││╎╎│   0x001162d0      bl    fcn.0013deb8
│   ││╎╎│   0x001162d4      mov   w0, 0x16
│   ││╎╎│   0x001162d8      bl    fcn.00154834
│   ││╎╎│   ; CODE XREF from fcn.00115b44 @ 0x116280
│   └─────> 0x001162dc      adrp  x19, 0x268000
│    │╎╎│   0x001162e0      add   x19, x19, aav.0x000006f0
│    │╎╎│   0x001162e4      adrp  x1, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│    │╎╎│   0x001162e8      add   x2, sp, 1, lsl 12
│    │╎╎│   0x001162ec      add   x1, x1, 0x498                        ; int64_t arg2
│    │╎╎│   0x001162f0      add   x2, x2, 0x30                         ; int64_t arg3
│    │╎╎│   0x001162f4      mov   x0, x19                              ; int64_t arg1
│    │╎╎│   0x001162f8      bl    fcn.001418f4
│    │╎╎│   0x001162fc      bl    fcn.00141750
│    │╎╎│   0x00116300      adrp  x1, 0x247000
│    │╎╎│   0x00116304      adrp  x2, 0x237000
│    │╎╎│   0x00116308      add   x1, x1, 0x9b5                        ; int64_t arg4
│    │╎╎│   0x0011630c      add   x2, x2, 0xb38                        ; 0x237b38
│    │╎╎│                                                              ; fcn.00237b38 ; int64_t arg5
│    │╎╎│   0x00116310      bl    fcn.00171728
│    │╎╎│   0x00116314      bl    fcn.00141750
│    │╎╎│   0x00116318      bl    fcn.00171314
│    │╎╎│   0x0011631c      bl    fcn.00141750
│    │╎╎│   0x00116320      mov   x1, x19                              ; int64_t arg2
│    │╎╎│   0x00116324      bl    fcn.0013fde4
│    │╎╎│   0x00116328      mov   w19, w0
│    │╎╎│   0x0011632c      bl    fcn.00141750
│    │╎╎│   0x00116330      adrp  x2, 0x23a000
│    │╎╎│   0x00116334      add   x3, sp, 1, lsl 12
│    │╎╎│   0x00116338      add   x2, x2, 0x325                        ; int64_t arg3
│    │╎╎│   0x0011633c      add   x3, x3, 0x2c                         ; int64_t arg4
│    │╎╎│   0x00116340      mov   w1, w19
│    │╎╎│   0x00116344      bl    fcn.001401c0
│    │╎╎│   0x00116348      bl    fcn.00141750
│    │╎╎│   0x0011634c      bl    fcn.0010da64
│   ┌─────< 0x00116350      cbz   w0, 0x116360
│   ││╎╎│   0x00116354      adrp  x0, 0x255000
│   ││╎╎│   0x00116358      add   x0, x0, 0x5b6                        ; int64_t arg1
│   ││╎╎│   0x0011635c      bl    fcn.0014c9f8
│   └─────> 0x00116360      mov   w0, 0x11
│    │╎╎│   0x00116364      bl    fcn.00150b58
│    │╎╎│   0x00116368      mov   w19, w0
│    │╎╎│   0x0011636c      cmp   w0, 5
│    │╎╎│   0x00116370      adrp  x0, 0x259000
│    │╎╎│   0x00116374      cset  w1, eq
│    │╎╎│   0x00116378      add   x0, x0, 0xcbc                        ; int64_t arg1
│    │╎╎│   0x0011637c      mov   w2, w19
│    │╎╎│   0x00116380      cset  w20, ne
│    │╎╎│   0x00116384      bl    fcn.0011669c
│    │╎╎│   0x00116388      mov   w0, 2
│    │╎╎│   0x0011638c      bl    fcn.00150b58
│    │╎╎│   0x00116390      mov   w2, w0
│    │╎╎│   0x00116394      adrp  x0, 0x25d000
│    │╎╎│   0x00116398      add   x0, x0, 0xda8                        ; int64_t arg1
│    │╎╎│   0x0011639c      mov   w1, 1
│    │╎╎│   0x001163a0      bl    fcn.0011669c
│    │╎╎│   0x001163a4      adrp  x0, 0x264000
│    │╎╎│   0x001163a8      adrp  x1, 0x27a000
│    │╎╎│   0x001163ac      add   x0, x0, 0xa48                        ; int64_t arg1
│    │╎╎│   0x001163b0      add   x1, x1, 0x4ba                        ; int64_t arg2
│    │╎╎│   0x001163b4      mov   w2, w20
│    │╎╎│   0x001163b8      bl    fcn.0014c9f8
│    │╎╎│   0x001163bc      bl    fcn.00141750
│    │╎╎│   0x001163c0      adrp  x1, 0x260000
│    │╎╎│   0x001163c4      add   x1, x1, 0x546                        ; int64_t arg2
│    │╎╎│   0x001163c8      bl    fcn.0013fde4
│   ┌─────< 0x001163cc      tbnz  w0, 0x1f, 0x1164ec
│   ││╎╎│   0x001163d0      mov   w21, w0
│   ││╎╎│   0x001163d4      bl    fcn.00141750
│   ││╎╎│   0x001163d8      adrp  x2, 0x26f000
│   ││╎╎│   0x001163dc      rev   w8, w20
│   ││╎╎│   0x001163e0      add   x2, x2, 0x5ab
│   ││╎╎│   0x001163e4      add   x3, var_66h
│   ││╎╎│   0x001163e8      mov   w4, 4
│   ││╎╎│   0x001163ec      mov   w1, w21
│   ││╎╎│   0x001163f0      str   w8, [var_66h]
│   ││╎╎│   0x001163f4      bl    fcn.00140860
│  ┌──────< 0x001163f8      cbz   w0, 0x11640c
│  │││╎╎│   0x001163fc      adrp  x0, 0x273000
│  │││╎╎│   0x00116400      add   x0, x0, 0x68c                        ; int64_t arg1
│  │││╎╎│   0x00116404      mov   w1, w20
│  │││╎╎│   0x00116408      bl    fcn.0014c9f8
│  └──────> 0x0011640c      cmp   w19, 5
│  ┌──────< 0x00116410      b.ne  0x116500
│ ┌───────> 0x00116414      bl    fcn.000f2dc0
│ ╎│││╎╎│   0x00116418      bl    fcn.00104df4
│ ────────< 0x0011641c      tbnz  w0, 0, 0x116508
│ ────────> 0x00116420      cmp   w19, 5
│ ────────< 0x00116424      b.ne  0x116430
│ ────────> 0x00116428      bl    fcn.000f2bcc
│ ╎│││╎╎│   0x0011642c      bl    fcn.001b40fc
│ ╎│││╎╎│   ; CODE XREF from fcn.00115b44 @ 0x116514
│ ────────> 0x00116430      mov   w0, wzr
│ ╎│││╎╎│   0x00116434      bl    fcn.001417a0
│ ╎│││╎╎│   0x00116438      adrp  x0, 0x2c1000
│ ╎│││╎╎│   0x0011643c      add   x0, x0, 0x786                        ; int64_t arg1
│ ╎│││╎╎│   0x00116440      bl    fcn.00237af0
│ ╎│││╎╎│   0x00116444      bl    fcn.00186e90
│ ╎│││╎╎│   0x00116448      adrp  x8, 0x549000
│ ╎│││╎╎│   0x0011644c      ldr   w0, [x8, aav.0x00000700]             ; [0x700:4]=0xb9404be8
│ ╎│││╎╎│   0x00116450      bl    fcn.00186ebc
│ ╎│││╎╎│   0x00116454      bl    fcn.00186f68
│ ╎│││╎╎│   0x00116458      bl    fcn.00116808
│ ╎│││╎╎│   0x0011645c      bl    fcn.0018066c
│ ╎│││╎╎│   0x00116460      mov   w1, w0
│ ╎│││╎╎│   0x00116464      adrp  x0, 0x250000
│ ╎│││╎╎│   0x00116468      add   x0, x0, 0xd8e                        ; int64_t arg1
│ ╎│││╎╎│   0x0011646c      bl    fcn.0014c9f8
│ ╎│││╎╎│   0x00116470      adrp  x0, 0x275000
│ ╎│││╎╎│   0x00116474      add   x0, x0, 0xd8c                        ; int64_t arg_20h
│ ╎│││╎╎│   0x00116478      bl    fcn.0014c9f8
│ ╎│││╎╎│   0x0011647c      bl    fcn.00187cf0
│ ╎│││╎╎│   0x00116480      bl    fcn.001879d4
│ ╎│││╎╎│   0x00116484      adrp  x0, 0x278000
│ ╎│││╎╎│   0x00116488      add   x0, x0, 0x333                        ; int64_t arg1
│ ╎│││╎╎│   0x0011648c      bl    fcn.0014c9f8
│ ╎│││╎╎│   0x00116490      mov   w0, 0x105
│ ╎│││╎╎│   0x00116494      movk  w0, 0xb200, lsl 16
│ ╎│││╎╎│   0x00116498      mov   x1, xzr
│ ╎│││╎╎│   0x0011649c      mov   x2, xzr
│ ╎│││╎╎│   0x001164a0      mov   x3, xzr
│ ╎│││╎╎│   0x001164a4      bl    fcn.0010a01c
│ ╎│││╎╎│   0x001164a8      mov   x1, x0                               ; int64_t arg2
│ ╎│││╎╎│   0x001164ac      adrp  x0, 0x260000
│ ╎│││╎╎│   0x001164b0      add   x0, x0, 0x4b2                        ; int64_t arg1
│ ╎│││╎╎│   0x001164b4      bl    fcn.0014c9f8
│ ╎│││╎╎│   0x001164b8      bl    fcn.00123b14
│ ────────< 0x001164bc      cbz   w0, 0x116518
│ ╎│││╎╎│   0x001164c0      mov   w1, w0
│ ╎│││╎╎│   0x001164c4      adrp  x0, 0x273000
│ ╎│││╎╎│   0x001164c8      add   x0, x0, 0x635                        ; int64_t arg1
│ ╎│││╎╎│   0x001164cc      bl    fcn.0014c9f8
│ ╎│││╎╎│   0x001164d0      bl    fcn.00123c4c
│ ────────< 0x001164d4      cbz   w0, 0x11652c
│ ────────> 0x001164d8      mov   w1, w0
│ ╎│││╎╎│   0x001164dc      adrp  x0, 0x275000
│ ╎│││╎╎│   0x001164e0      add   x0, x0, 0xdac                        ; int64_t arg1
│ ╎│││╎╎│   0x001164e4      bl    fcn.0014c9f8
│ ────────< 0x001164e8      b     0x116538
│ ╎│└─────> 0x001164ec      adrp  x0, 0x268000
│ ╎│ │╎╎│   0x001164f0      add   x0, x0, 0x71d                        ; int64_t arg1
│ ╎│ │╎╎│   0x001164f4      bl    fcn.0014c9f8
│ ╎│ │╎╎│   0x001164f8      cmp   w19, 5
│ └───────< 0x001164fc      b.eq  0x116414
│  └──────> 0x00116500      bl    fcn.00104df4
│ ────────< 0x00116504      tbz   w0, 0, 0x116420
│ ────────> 0x00116508      bl    fcn.000f2e04
│    │╎╎│   0x0011650c      cmp   w19, 5
│ ────────< 0x00116510      b.eq  0x116428
│ ────────< 0x00116514      b     0x116430
│ ────────> 0x00116518      adrp  x0, 0x271000
│    │╎╎│   0x0011651c      add   x0, x0, 0x4ec                        ; int64_t arg1
│    │╎╎│   0x00116520      bl    fcn.0014c9f8
│    │╎╎│   0x00116524      bl    fcn.00123c4c
│ ────────< 0x00116528      cbnz  w0, 0x1164d8
│ ────────> 0x0011652c      adrp  x0, 0x275000
│    │╎╎│   0x00116530      add   x0, x0, 0xdcd                        ; int64_t arg1
│    │╎╎│   0x00116534      bl    fcn.0014c9f8
│    │╎╎│   ; CODE XREF from fcn.00115b44 @ 0x1164e8
│ ────────> 0x00116538      bl    fcn.0010b218
│    │╎╎│   0x0011653c      bl    fcn.00196698
│    │╎╎│   0x00116540      adrp  x1, 0x250000
│    │╎╎│   0x00116544      add   x1, x1, 0xda5                        ; int64_t arg2
│    │╎╎│   0x00116548      mov   w0, 0x116
│    │╎╎│   0x0011654c      bl    fcn.001a88d0
│    │╎╎│   0x00116550      adrp  x1, 0x273000
│    │╎╎│   0x00116554      add   x1, x1, 0x281                        ; int64_t arg2
│    │╎╎│   0x00116558      mov   w0, 0x40
│    │╎╎│   0x0011655c      bl    fcn.001a88d0
│    │╎╎│   0x00116560      mov   w0, 3
│    │╎╎│   0x00116564      mov   w1, wzr
│    │╎╎│   0x00116568      bl    fcn.001a93d0
│    │╎╎│   0x0011656c      adrp  x8, 0x18f1000
│    │╎╎│   0x00116570      str   wzr, [x8]
│    │╎╎│   0x00116574      bl    fcn.0016e568
│   ┌─────< 0x00116578      tbnz  w0, 0x12, 0x116590
│   ││╎╎│   0x0011657c      mov   w2, -1
│   ││╎╎│   0x00116580      mov   w0, wzr
│   ││╎╎│   0x00116584      mov   x1, xzr                              ; int64_t arg2
│   ││╎╎│   0x00116588      bl    fcn.0013e4d8
│   ││╎╎│   0x0011658c      bl    fcn.000f9608
│   └─────> 0x00116590      adrp  x0, 0x260000
│    │╎╎│   0x00116594      adrp  x1, 0x250000
│    │╎╎│   0x00116598      add   x0, x0, 0x4e3                        ; int64_t arg1
│    │╎╎│   0x0011659c      add   x1, x1, 0xdac                        ; int64_t arg2
│    │╎╎│   0x001165a0      bl    fcn.0014c9f8
│    │╎╎│   0x001165a4      bl    fcn.00126698
│    │╎╎│   0x001165a8      bl    fcn.0010d2a8
│    │╎╎│   0x001165ac      bl    fcn.00121300
│   ┌─────< 0x001165b0      cbz   w0, 0x1165d4
│   ││╎╎│   0x001165b4      mov   w19, w0
│   ││╎╎│   0x001165b8      adrp  x0, 0x275000
│   ││╎╎│   0x001165bc      add   x0, x0, 0xdeb                        ; int64_t arg1
│   ││╎╎│   0x001165c0      mov   w1, w19
│   ││╎╎│   0x001165c4      bl    fcn.0014c9f8
│   ││╎╎│   0x001165c8      mov   w8, 0x3e8
│   ││╎╎│   0x001165cc      mul   w0, w19, w8
│   ││╎╎│   0x001165d0      bl    fcn.001b3f80
│   └─────> 0x001165d4      mov   x0, -0x3ff                           ; int64_t arg3
│    │╎╎│   0x001165d8      mov   x1, xzr                              ; int64_t arg4
│    │╎╎│   0x001165dc      mov   x2, xzr                              ; int64_t arg5
│    │╎╎│   0x001165e0      mov   x3, xzr                              ; int64_t arg6
│    │╎╎│   0x001165e4      bl    fcn.0010a01c
│    │╎╎│   0x001165e8      msr   daifset, 2
│    │╎╎│   0x001165ec      bl    fcn.00114044
│    │╎╎│   0x001165f0      bl    fcn.001212a8
│    │╎╎│   0x001165f4      bl    fcn.00113dac
│    │╎╎│   0x001165f8      mov   w0, 0x11
│    │╎╎│   0x001165fc      bl    fcn.00150b58
│    │╎╎│   0x00116600      bl    fcn.0010501c
│    │╎╎│   0x00116604      bl    fcn.00116bd8
│    │╎╎│   0x00116608      bl    fcn.00116c78
│    │╎╎│   0x0011660c      adrp  x0, 0x266000
│    │╎╎│   0x00116610      add   x0, x0, 0x929                        ; int64_t arg1
│    │╎╎│   0x00116614      bl    fcn.0014c9f8
│    │╎╎│   0x00116618      adrp  x8, 0x55c000
│    │╎╎│   0x0011661c      ldr   w8, [x8, aav.0x00000d00]             ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│    │╎╎│   0x00116620      mov   w9, -0x80000000
│    │╎╎│   0x00116624      mov   w0, -0x76000000
│    │╎╎│   0x00116628      mov   w1, wzr
│    │╎╎│   0x0011662c      add   x8, x8, x9
│    │╎╎│   0x00116630      mov   w2, wzr
│    │╎╎│   0x00116634      mov   w3, wzr
│    │╎╎│   0x00116638      blr   x8
│    │╎╎│   0x0011663c      mov   w0, wzr
│    │╎╎│   0x00116640      add   sp, sp, 2, lsl 12
│    │╎╎│   0x00116644      add   sp, sp, 0x30
│    │╎╎│   0x00116648      ldp   x20, x19, [var_10h]
│    │╎╎│   0x0011664c      ldp   x22, x21, [var_20h]
│    │╎╎│   0x00116650      ldp   x24, x23, [var_30h]
│    │╎╎│   0x00116654      ldp   x26, x25, [var_40h]
│    │╎╎│   0x00116658      ldp   x28, x27, [var_50h]
│    │╎╎│   0x0011665c      ldp   x29, x30, [sp], 0x60
│    │╎╎│   0x00116660      autibsp
│    │╎╎│   0x00116664      ret
│    │╎╎└─> 0x00116668      mov   w19, w0
│    │╎╎    0x0011666c      adrp  x0, 0x27c000
│    │╎╎    0x00116670      adrp  x1, 0x26f000
│    │╎╎    0x00116674      add   x0, x0, 0x79d
│    │╎╎    0x00116678      add   x1, x1, 0x59d
│    │╎└──< 0x0011667c      b     0x115ec4
│ ────────> 0x00116680      adrp  x0, 0x25b000
│    │╎     0x00116684      add   x0, x0, 0xf02
│    │╎     ; CODE XREF from fcn.00115b44 @ 0x116064
│    └────> 0x00116688      adrp  x1, 0x26f000
│     ╎     0x0011668c      add   x1, x1, 0x59d                        ; int64_t arg2
│     ╎     0x00116690      bl    fcn.0014c9f8
│     ╎     0x00116694      mov   w19, -1
└     └───< 0x00116698      b     0x115ec8
            ; CALL XREFS from fcn.00115b44 @ 0x116384, 0x1163a0
