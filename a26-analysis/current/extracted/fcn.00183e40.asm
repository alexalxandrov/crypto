┌ fcn.00183e40(int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00183e40      pacibsp
│           0x00183e44      sub   sp, sp, 0x50
│           0x00183e48      stp   x29, x30, [var_40h]
│           0x00183e4c      str   x23, [var_30h]
│           0x00183e50      stp   x22, x21, [var_20h]
│           0x00183e54      stp   x20, x19, [var_10h]
│           0x00183e58      add   x29, sp, 0x10
│           0x00183e5c      adrp  x8, 0x2cd000
│           0x00183e60      ldr   w0, [x8, 0x730]                      ; [0x730:4]=0xb94053e8
│           0x00183e64      strh  wzr, [var_10h + 0x2c]
│           0x00183e68      str   xzr, [var_48h]
│           0x00183e6c      cmn   w0, 2
│       ┌─< 0x00183e70      b.ne  0x183fec
│       │   0x00183e74      adrp  x19, 0x241000
│       │   0x00183e78      adrp  x0, 0x251000
│       │   0x00183e7c      add   x19, x19, 0x7a2
│       │   0x00183e80      add   x0, x0, 0xf45                        ; int64_t arg1
│       │   0x00183e84      mov   x1, x19                              ; int64_t arg2
│       │   0x00183e88      bl    fcn.0014c9f8
│       │   0x00183e8c      adrp  x0, 0x24a000
│       │   0x00183e90      add   x0, x0, 0xc1e                        ; int64_t arg1
│       │   0x00183e94      mov   x1, x19                              ; int64_t arg2
│       │   0x00183e98      bl    fcn.0014c9f8
│       │   0x00183e9c      mov   w0, aav.0x00000100
│       │   0x00183ea0      mov   w1, wzr
│       │   0x00183ea4      bl    fcn.0018461c
│      ┌──< 0x00183ea8      cbz   x0, 0x183f34
│      ││   0x00183eac      mov   x19, x0
│      ││   0x00183eb0      mov   w0, aav.0x00000c00                   ; "ect 0x%x\n"
│      ││   0x00183eb4      mov   w1, wzr
│      ││   0x00183eb8      bl    fcn.0018461c
│     ┌───< 0x00183ebc      cbz   x0, 0x183f5c
│     │││   0x00183ec0      mov   x20, x0
│     │││   0x00183ec4      mov   w0, aav.0x00000100
│     │││   0x00183ec8      mov   w1, wzr
│     │││   0x00183ecc      bl    fcn.0018461c
│     │││   0x00183ed0      mov   x21, x0
│    ┌────< 0x00183ed4      cbz   x0, 0x183f90
│    ││││   0x00183ed8      mov   w8, 4
│    ││││   0x00183edc      mov   w9, 0xd2
│    ││││   0x00183ee0      add   x3, var_10h + 0x2c                   ; int64_t arg4
│    ││││   0x00183ee4      mov   w0, aav.0x00003c00
│    ││││   0x00183ee8      mov   w1, 1
│    ││││   0x00183eec      mov   x2, x19                              ; int64_t arg3
│    ││││   0x00183ef0      strb  wzr, [x19, 3]
│    ││││   0x00183ef4      strb  wzr, [x19, 2]
│    ││││   0x00183ef8      strb  w8, [x19, 1]
│    ││││   0x00183efc      strb  w9, [x19]
│    ││││   0x00183f00      bl    fcn.001243f4
│   ┌─────< 0x00183f04      cbz   w0, 0x184008
│   │││││   0x00183f08      adrp  x0, 0x5a6000
│   │││││   0x00183f0c      adrp  x1, 0x24d000
│   │││││   0x00183f10      add   x0, x0, 0xe9                         ; int64_t arg1
│   │││││   0x00183f14      add   x1, x1, 0x6cc                        ; int64_t arg2
│   │││││   0x00183f18      mov   w2, 6
│   │││││   0x00183f1c      bl    fcn.0014d60c
│   │││││   0x00183f20      ldrh  w1, [var_10h + 0x2c]                 ; aav.0x0000001c
│   │││││                                                              ; [0x1c:4]=0
│   │││││   0x00183f24      adrp  x0, 0x269000
│   │││││   0x00183f28      add   x0, x0, 0x2db                        ; int64_t arg1
│   │││││   0x00183f2c      bl    fcn.0014c9f8
│  ┌──────< 0x00183f30      b     0x183fbc
│  ││││└──> 0x00183f34      adrp  x0, 0x254000
│  ││││ │   0x00183f38      add   x0, x0, 0x25a                        ; int64_t arg1
│  ││││ │   0x00183f3c      bl    fcn.0014c9f8
│  ││││ │   0x00183f40      adrp  x0, 0x5a6000
│  ││││ │   0x00183f44      adrp  x1, 0x24d000
│  ││││ │   0x00183f48      add   x0, x0, 0xe9                         ; int64_t arg1
│  ││││ │   0x00183f4c      add   x1, x1, 0x6cc                        ; int64_t arg2
│  ││││ │   0x00183f50      mov   w2, 6
│  ││││ │   0x00183f54      bl    fcn.0014d60c
│  ││││┌──< 0x00183f58      b     0x183fe8
│  │││└───> 0x00183f5c      adrp  x0, 0x244000
│  │││ ││   0x00183f60      adrp  x1, 0x241000
│  │││ ││   0x00183f64      add   x0, x0, 0x212                        ; int64_t arg1
│  │││ ││   0x00183f68      add   x1, x1, 0x7a2                        ; int64_t arg2
│  │││ ││   0x00183f6c      bl    fcn.0014c9f8
│  │││ ││   0x00183f70      adrp  x0, 0x5a6000
│  │││ ││   0x00183f74      adrp  x1, 0x24d000
│  │││ ││   0x00183f78      add   x0, x0, 0xe9                         ; int64_t arg1
│  │││ ││   0x00183f7c      add   x1, x1, 0x6cc                        ; int64_t arg2
│  │││ ││   0x00183f80      mov   w2, 6
│  │││ ││   0x00183f84      bl    fcn.0014d60c
│  │││ ││   0x00183f88      mov   x0, x19
│  │││┌───< 0x00183f8c      b     0x183fe4
│  ││└────> 0x00183f90      adrp  x0, 0x24d000
│  ││ │││   0x00183f94      adrp  x1, 0x241000
│  ││ │││   0x00183f98      add   x0, x0, 0x6d3                        ; int64_t arg1
│  ││ │││   0x00183f9c      add   x1, x1, 0x7a2                        ; int64_t arg2
│  ││ │││   0x00183fa0      bl    fcn.0014c9f8
│  ││ │││   0x00183fa4      adrp  x0, 0x5a6000
│  ││ │││   0x00183fa8      adrp  x1, 0x24d000
│  ││ │││   0x00183fac      add   x0, x0, 0xe9
│  ││ │││   0x00183fb0      add   x1, x1, 0x6cc
│  ││ │││   0x00183fb4      mov   w2, 6
│  ││ │││   ; CODE XREFS from fcn.00183e40 @ 0x184054, 0x1840e0
│  ││┌────> 0x00183fb8      bl    fcn.0014d60c
│  ││╎│││   ; CODE XREF from fcn.00183e40 @ 0x183f30
│  └──────> 0x00183fbc      mov   x22, xzr
│   │╎│││   ; CODE XREF from fcn.00183e40 @ 0x184264
│   │╎│││   0x00183fc0      mov   x0, x19                              ; int64_t arg1
│   │╎│││   0x00183fc4      bl    fcn.001424a4
│   │╎│││   0x00183fc8      mov   x0, x20                              ; int64_t arg1
│   │╎│││   0x00183fcc      bl    fcn.001424a4
│  ┌──────< 0x00183fd0      cbz   x21, 0x183fdc
│  ││╎│││   0x00183fd4      mov   x0, x21                              ; int64_t arg1
│  ││╎│││   0x00183fd8      bl    fcn.001424a4
│ ┌└──────> 0x00183fdc      cbz   x22, 0x183fe8
│ │ │╎│││   0x00183fe0      mov   x0, x22
│ │ │╎│││   ; CODE XREF from fcn.00183e40 @ 0x183f8c
│ │ │╎└───> 0x00183fe4      bl    fcn.001424a4
│ │ │╎ ││   ; CODE XREF from fcn.00183e40 @ 0x183f58
│ └────└──> 0x00183fe8      mov   w0, wzr
│   │╎  └─> 0x00183fec      ldp   x20, x19, [var_10h]
│   │╎      0x00183ff0      ldp   x22, x21, [var_20h]
│   │╎      0x00183ff4      ldr   x23, [var_30h]                       ; aav.0x00000020
│   │╎                                                                 ; [0x20:4]=0x58000940 ; "@\t"
│   │╎      0x00183ff8      ldp   x29, x30, [var_40h]
│   │╎      0x00183ffc      add   sp, sp, 0x50
│   │╎      0x00184000      autibsp
│   │╎      0x00184004      ret
│   └─────> 0x00184008      ldrb  w8, [x19, 3]                         ; [0x3:4]=0x48776b00
│    ╎      0x0018400c      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│    ╎      0x00184010      ldrb  w10, [x19, 1]                        ; [0x1:4]=0x6b000000
│    ╎      0x00184014      ldrb  w1, [x19]                            ; [0x100:4]=0x34000040 ; "@"
│    ╎      0x00184018      bfi   w9, w8, 8, 8
│    ╎      0x0018401c      mov   w8, -0x15fd0000
│    ╎      0x00184020      bfi   w1, w10, 8, 8
│    ╎      0x00184024      bfi   w1, w9, 0x10, 0x10
│    ╎      0x00184028      cmp   w1, w8
│    ╎  ┌─< 0x0018402c      b.eq  0x184058
│    ╎ ┌──< 0x00184030      cbnz  w1, 0x1840c0
│    ╎ ││   0x00184034      adrp  x0, 0x246000
│    ╎ ││   0x00184038      add   x0, x0, 0x481                        ; int64_t arg1
│    ╎ ││   0x0018403c      bl    fcn.0014c9f8
│    ╎ ││   0x00184040      adrp  x0, 0x5a6000
│    ╎ ││   0x00184044      adrp  x1, 0x241000
│    ╎ ││   0x00184048      add   x0, x0, 0xe9
│    ╎ ││   0x0018404c      add   x1, x1, 0x7b1
│    ╎ ││   0x00184050      mov   w2, 8
│    └────< 0x00184054      b     0x183fb8
│      │└─> 0x00184058      mov   x8, x19
│      │    0x0018405c      ldrb  w1, [x8, 0x74]!                      ; aav.0x00000074
│      │                                                               ; [0x74:4]=0xd5033fdf
│      │    0x00184060      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│      │    0x00184064      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│      │    0x00184068      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│      │    0x0018406c      bfi   w10, w9, 8, 8
│      │    0x00184070      bfi   w1, w8, 8, 8
│      │    0x00184074      bfi   w1, w10, 0x10, 0x10
│      │    0x00184078      cmp   w1, 4
│      │┌─< 0x0018407c      b.hi  0x1840e4
│      ││   0x00184080      adrp  x8, 0x28d000
│      ││   0x00184084      add   x8, x8, 0x6b0
│      ││   0x00184088      adr   x9, 0x184098
│      ││   0x0018408c      ldrb  w10, [x8, x1]
│      ││   0x00184090      add   x9, x9, x10, lsl 2
│      ││   0x00184094      br    x9
       ││   ; STRING XREF from fcn.00183e40 @ 0x184088
..
│      └──> 0x001840c0      adrp  x0, 0x24f000
│       │   0x001840c4      add   x0, x0, 0x888                        ; int64_t arg1
│       │   0x001840c8      bl    fcn.0014c9f8
│       │   0x001840cc      adrp  x0, 0x5a6000
│       │   0x001840d0      adrp  x1, 0x269000
│       │   0x001840d4      add   x0, x0, 0xe9
│       │   0x001840d8      add   x1, x1, 0x14d
│       │   0x001840dc      mov   w2, 5
│       │   0x001840e0      b     0x183fb8
│       └─> 0x001840e4      adrp  x0, 0x251000
│           0x001840e8      add   x0, x0, 0xf54                        ; int64_t arg1
│           0x001840ec      bl    fcn.0014c9f8
│           0x001840f0      adrp  x0, 0x5a6000
│           0x001840f4      adrp  x1, 0x269000
│           0x001840f8      add   x0, x0, 0xe9
│           0x001840fc      add   x1, x1, 0x14d
│           0x00184100      mov   w2, 5
│           0x00184104      b     0x1841cc
..
│           ; CODE XREFS from fcn.00183e40 @ 0x27c, 0x184104
│           ; CODE XREFS from fcn.00183e40 @ +0x2dc, +0x2f4, +0x30c
│           0x001841cc      bl    fcn.0014d60c
│           0x001841d0      mov   x22, xzr
│           ; CODE XREFS from fcn.00183e40 @ +0x374, +0x440
│           0x001841d4      mov   x23, x19
│           0x001841d8      ldrb  w1, [x23, 0x74]!                     ; aav.0x00000074
│                                                                      ; [0x74:4]=0xd5033fdf
│           0x001841dc      adrp  x0, 0x24f000
│           0x001841e0      add   x0, x0, 0x8af                        ; int64_t arg1
│           0x001841e4      ldrb  w8, [x23, 3]                         ; [0x3:4]=0x48776b00
│           0x001841e8      ldrb  w9, [x23, 2]                         ; [0x2:4]=0x776b0000
│           0x001841ec      ldrb  w10, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x001841f0      bfi   w9, w8, 8, 8
│           0x001841f4      bfi   w1, w10, 8, 8
│           0x001841f8      bfi   w1, w9, 0x10, 0x10
│           0x001841fc      bl    fcn.0014c9f8
│           0x00184200      ldrb  w8, [x23, 3]                         ; [0x3:4]=0x48776b00
│           0x00184204      ldrb  w9, [x23, 2]                         ; [0x2:4]=0x776b0000
│           0x00184208      ldrb  w10, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x0018420c      ldrb  w11, [x23]
│           0x00184210      bfi   w9, w8, 8, 8
│           0x00184214      bfi   w11, w10, 8, 8
│           0x00184218      bfi   w11, w9, 0x10, 0x10
│           0x0018421c      and   w8, w11, 0xfffffffe
│           0x00184220      cmp   w8, 2
│           0x00184224      b.ne  0x183fc0
│           0x00184228      add   x0, var_48h                          ; int64_t arg1
│           0x0018422c      bl    fcn.0010cf84
│           0x00184230      ldr   x2, [var_48h]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh" ; unsigned long arg3
│           0x00184234      mov   x1, x0                               ; int64_t arg2
│           0x00184238      adrp  x0, 0x23f000
│           0x0018423c      add   x0, x0, 0x1ec                        ; int64_t arg1
│           0x00184240      bl    fcn.0014c9f8
│           0x00184244      ldr   x8, [var_48h]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x00184248      cmp   x8, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│           0x0018424c      b.eq  0x183fc0
│           0x00184250      bl    fcn.0010cedc
│           0x00184254      mov   x1, x0                               ; int64_t arg2
│           0x00184258      adrp  x0, 0x24f000
│           0x0018425c      add   x0, x0, str.S_EL2_can_not_be_used_in_AArch32. ; 0x8c6 ; "\nS-EL2 can not be used in AArch32." ; int64_t arg1
│           0x00184260      bl    fcn.0014c9f8
└           0x00184264      b     0x183fc0
            ; CALL XREF from fcn.00183e40 @ +0x340
