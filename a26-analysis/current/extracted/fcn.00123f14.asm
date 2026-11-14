┌ fcn.00123f14(int64_t arg1, int64_t arg2, unsigned long arg3, int64_t arg4);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg unsigned long arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_a0h @ stack - 0xa0
│           ; var int64_t var_9eh @ stack - 0x9e
│           ; var int64_t var_9ch @ stack - 0x9c
│           ; var int64_t var_9ah @ stack - 0x9a
│           ; var int64_t var_98h @ stack - 0x98
│           ; var int64_t var_86h @ stack - 0x86
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00123f14      pacibsp
│           0x00123f18      sub   sp, sp, 0xa0
│           0x00123f1c      stp   x29, x30, [var_60h]
│           0x00123f20      stp   x28, x27, [var_50h]
│           0x00123f24      stp   x26, x25, [var_40h]
│           0x00123f28      stp   x24, x23, [var_30h]
│           0x00123f2c      stp   x22, x21, [var_20h]
│           0x00123f30      stp   x20, x19, [var_10h]
│           0x00123f34      add   x29, sp, 0x40
│           0x00123f38      mov   x19, x3                              ; arg4
│           0x00123f3c      mov   x22, x2                              ; arg3
│           0x00123f40      mov   w23, w1                              ; arg2
│           0x00123f44      mov   w24, w0                              ; arg1
│           0x00123f48      bl    fcn.00123590
│       ┌─< 0x00123f4c      tbz   w0, 0, 0x123fbc
│       │   0x00123f50      add   w8, w24, w23
│       │   0x00123f54      sub   w10, w8, 1
│       │   0x00123f58      add   w8, w8, 0xe
│       │   0x00123f5c      cmp   w10, 0
│       │   0x00123f60      add   w9, w24, 0xf
│       │   0x00123f64      csel  w8, w8, w10, lt
│       │   0x00123f68      cmp   w24, 0
│       │   0x00123f6c      csel  w9, w9, w24, lt
│       │   0x00123f70      asr   w8, w8, 4
│       │   0x00123f74      asr   w25, w9, 4
│       │   0x00123f78      sub   w8, w8, w25
│       │   0x00123f7c      add   w26, w8, 1
│       │   0x00123f80      lsl   w8, w26, 0xc
│       │   0x00123f84      sxtw  x0, w8                               ; int64_t arg1
│       │   0x00123f88      bl    fcn.0014237c
│      ┌──< 0x00123f8c      cbz   x0, 0x124048
│      ││   0x00123f90      mov   x20, x0
│      ││   0x00123f94      mov   w0, w25
│      ││   0x00123f98      mov   w1, w26
│      ││   0x00123f9c      mov   x2, x20                              ; int64_t arg4
│      ││   0x00123fa0      mov   x3, x19                              ; int64_t arg5
│      ││   0x00123fa4      bl    fcn.00124e0c
│     ┌───< 0x00123fa8      cbz   w0, 0x12405c
│     │││   0x00123fac      mov   w21, w0
│     │││   0x00123fb0      adrp  x0, 0x27a000
│     │││   0x00123fb4      add   x0, x0, 0x6a0
│    ┌────< 0x00123fb8      b     0x124208
│    │││└─> 0x00123fbc      adrp  x8, 0x56f000
│    │││    0x00123fc0      ldrb  w8, [x8, 0x4e0]                      ; [0x4e0:4]=0xb900491f
│    │││┌─< 0x00123fc4      tbz   w8, 0, 0x124028
│    ││││   0x00123fc8      lsl   w8, w23, 9
│    ││││   0x00123fcc      sxtw  x25, w8
│    ││││   0x00123fd0      mov   x0, x25                              ; int64_t arg1
│    ││││   0x00123fd4      bl    fcn.0014237c
│   ┌─────< 0x00123fd8      cbz   x0, 0x1240d4
│   │││││   0x00123fdc      mov   w2, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│   │││││   ; UNKNOWN XREFS from aav.0x00070000 @ +0x4500, +0x4630, +0x5244
│   │││││   ; UNKNOWN XREFS from fcn.00080bec @ +0xae8, +0xafc
│   │││││   ;-- aav.0x00123fe0:
│   │││││   0x00123fe0      mov   w1, wzr
│   │││││   0x00123fe4      mov   x20, x0
│   │││││   0x00123fe8      bl    fcn.0014d8fc
│   │││││   0x00123fec      adrp  x21, 0x56f000
│   │││││   0x00123ff0      add   x21, x21, aav.0x00000904             ; "al"
│   │││││   0x00123ff4      mov   w2, 0x10
│   │││││   0x00123ff8      mov   x0, x21                              ; int64_t arg1
│   │││││   0x00123ffc      mov   w1, wzr
│   │││││   0x00124000      bl    fcn.0014d8fc
│   │││││   0x00124004      mov   w1, 0x10
│   │││││   0x00124008      mov   x0, x21                              ; int64_t arg1
│   │││││   0x0012400c      bl    fcn.0010af70
│   │││││   0x00124010      mov   x21, x0
│  ┌──────< 0x00124014      cbz   w21, 0x1240f8
│  ││││││   0x00124018      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│  ││││││   0x0012401c      add   x0, x0, 0xc20                        ; int64_t arg1
│  ││││││   0x00124020      bl    fcn.0014c9f8
│ ┌───────< 0x00124024      b     0x124214
│ ││││││└─> 0x00124028      adrp  x0, 0x262000
│ ││││││    0x0012402c      adrp  x1, 0x271000
│ ││││││    0x00124030      mov   w21, 0x304
│ ││││││    0x00124034      add   x0, x0, 0x982                        ; int64_t arg1
│ ││││││    0x00124038      add   x1, x1, 0x6af                        ; int64_t arg2
│ ││││││    0x0012403c      movk  w21, 4, lsl 16
│ ││││││    0x00124040      bl    fcn.0014c9f8
│ ││││││┌─< 0x00124044      b     0x12421c
│ │││││└──> 0x00124048      adrp  x0, 0x250000
│ │││││ │   0x0012404c      adrp  x1, 0x249000
│ │││││ │   0x00124050      add   x0, x0, 0xf9a
│ │││││ │   0x00124054      add   x1, x1, 0xf63
│ │││││┌──< 0x00124058      b     0x1240e4
│ ││││└───> 0x0012405c      sub   w8, w24, w25, lsl 4
│ ││││ ││   0x00124060      lsl   w9, w23, 8
│ ││││ ││   0x00124064      lsl   w8, w8, 8
│ ││││ ││   0x00124068      add   x0, x20, w8, sxtw                    ; 0x1000
│ ││││ ││                                                              ; aav.0x00001000 ; int64_t arg1
│ ││││ ││   0x0012406c      sxtw  x2, w9                               ; int64_t arg3
│ ││││ ││   0x00124070      mov   x1, x22                              ; int64_t arg2
│ ││││ ││   0x00124074      bl    fcn.0014d60c
│ ││││ ││   0x00124078      adrp  x8, 0x56f000
│ ││││ ││   0x0012407c      ldrb  w8, [x8, 0x4e0]                      ; [0x4e0:4]=0xb900491f
│ ││││┌───< 0x00124080      tbz   w8, 0, 0x124158
│ │││││││   0x00124084      mov   x0, sp                               ; int64_t arg1
│ │││││││   0x00124088      mov   w2, 0x3c
│ │││││││   0x0012408c      mov   w1, wzr
│ │││││││   0x00124090      mov   x24, sp
│ │││││││   0x00124094      bl    fcn.0014d8fc
│ │││││││   0x00124098      adrp  x21, 0x56f000
│ │││││││   0x0012409c      add   x21, x21, aav.0x00000904             ; "al"
│ │││││││   0x001240a0      mov   w2, 0x10
│ │││││││   0x001240a4      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001240a8      mov   w1, wzr
│ │││││││   0x001240ac      bl    fcn.0014d8fc
│ │││││││   0x001240b0      mov   w1, 0x10
│ │││││││   0x001240b4      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001240b8      bl    fcn.0010af70
│ │││││││   0x001240bc      mov   x21, x0
│ ────────< 0x001240c0      cbz   w21, 0x124178
│ ────────> 0x001240c4      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│ │││││││   0x001240c8      add   x0, x0, 0xc20                        ; int64_t arg1
│ │││││││   0x001240cc      bl    fcn.0014c9f8
│ ────────< 0x001240d0      b     0x124200
│ ││└─────> 0x001240d4      adrp  x0, 0x250000
│ ││ ││││   0x001240d8      adrp  x1, 0x271000
│ ││ ││││   0x001240dc      add   x0, x0, 0xf9a
│ ││ ││││   0x001240e0      add   x1, x1, 0x6af
│ ││ ││││   ; CODE XREF from fcn.00123f14 @ 0x124058
│ ││ ││└──> 0x001240e4      bl    fcn.0014c9f8
│ ││ ││ │   0x001240e8      mov   w8, str.ICM__USB_Loading_Done        ; 0xa02 ; "[ICM] USB Loading Done"
│ ││ ││ │   0x001240ec      movk  w8, 5, lsl 16
│ ││ ││ │   0x001240f0      add   w21, w8, 0x102
│ ││ ││┌──< 0x001240f4      b     0x12421c
│ │└──────> 0x001240f8      adrp  x26, 0x56f000
│ │  ││││   0x001240fc      add   x26, x26, aav.0x00000904             ; "al"
│ │  ││││   0x00124100      add   x0, x20, 0xc                         ; aav.0x0000000c ; int64_t arg1
│ │  ││││   0x00124104      mov   w2, 0x10
│ │  ││││   0x00124108      mov   x1, x26                              ; int64_t arg2
│ │  ││││   0x0012410c      bl    fcn.0014d60c
│ │  ││││   0x00124110      mov   w8, 2
│ │  ││││   0x00124114      mov   x0, x20                              ; int64_t arg1
│ │  ││││   0x00124118      strh  w8, [x20]
│ │  ││││   0x0012411c      bl    fcn.aav.0x00000294                   ; fcn.001224ec
│ │  ││││   0x00124120      ldrh  w8, [x20, 2]                         ; [0x2:4]=0x776b0000
│ │  ││││   0x00124124      mov   w21, w0
│ │  ││││   0x00124128      add   x0, x20, 0xc                         ; aav.0x0000000c ; int64_t arg1
│ │  ││││   0x0012412c      mov   w2, 0x10
│ │  ││││   0x00124130      mov   x1, x26                              ; int64_t arg2
│ │  ││││   0x00124134      strh  w8, [x19]
│ │  ││││   0x00124138      bl    fcn.0014d5c8
│ │ ┌─────< 0x0012413c      cbz   w0, 0x1241dc
│ │ │││││   0x00124140      adrp  x0, 0x266000
│ │ │││││   0x00124144      mov   w21, str.ICM__USB_Loading_Done       ; 0xa02 ; "[ICM] USB Loading Done"
│ │ │││││   0x00124148      add   x0, x0, 0xa05                        ; int64_t arg1
│ │ │││││   0x0012414c      movk  w21, 5, lsl 16
│ │ │││││   0x00124150      bl    fcn.0014c9f8
│ │┌──────< 0x00124154      b     0x124214
│ ││││└───> 0x00124158      adrp  x0, 0x262000
│ ││││ ││   0x0012415c      adrp  x1, 0x255000
│ ││││ ││   0x00124160      mov   w21, 0x304
│ ││││ ││   0x00124164      add   x0, x0, 0x982                        ; int64_t arg1
│ ││││ ││   0x00124168      add   x1, x1, 0x781                        ; int64_t arg2
│ ││││ ││   0x0012416c      movk  w21, 4, lsl 16
│ ││││ ││   0x00124170      bl    fcn.0014c9f8
│ ││││┌───< 0x00124174      b     0x124200
│ ────────> 0x00124178      adrp  x23, 0x56f000
│ │││││││   0x0012417c      add   x23, x23, aav.0x00000904             ; "al"
│ │││││││   0x00124180      add   x0, x24, 0xa                         ; int64_t arg1
│ │││││││   0x00124184      mov   w2, 0x10
│ │││││││   0x00124188      mov   x1, x23                              ; int64_t arg2
│ │││││││   0x0012418c      add   x22, x24, 0xa
│ │││││││   0x00124190      bl    fcn.0014d60c
│ │││││││   0x00124194      mov   w8, 2
│ │││││││   0x00124198      mov   x0, sp                               ; int64_t arg1
│ │││││││   0x0012419c      mov   x1, xzr                              ; int64_t arg2
│ │││││││   0x001241a0      strh  w8, [var_86h]
│ │││││││   0x001241a4      bl    fcn.00122e14
│ │││││││   0x001241a8      ldrh  w8, [sp]
│ │││││││   0x001241ac      mov   w21, w0
│ │││││││   0x001241b0      mov   w2, 0x10
│ │││││││   0x001241b4      mov   x0, x22                              ; int64_t arg1
│ │││││││   0x001241b8      mov   x1, x23                              ; int64_t arg2
│ │││││││   0x001241bc      strh  w8, [x19]
│ │││││││   0x001241c0      bl    fcn.0014d5c8
│ ────────< 0x001241c4      cbz   w0, 0x1241f0
│ │││││││   0x001241c8      mov   w21, str.ICM__USB_Loading_Done       ; 0xa02 ; "[ICM] USB Loading Done"
│ │││││││   0x001241cc      adrp  x0, 0x266000
│ │││││││   0x001241d0      movk  w21, 5, lsl 16
│ │││││││   0x001241d4      add   x0, x0, 0xa05
│ ────────< 0x001241d8      b     0x1241fc
│ ──└─────> 0x001241dc      cbz   w21, 0x124244
│ ││ ││││   0x001241e0      adrp  x0, 0x264000
│ ││ ││││   0x001241e4      add   x0, x0, 0xb5e                        ; int64_t arg1
│ ││ ││││   0x001241e8      bl    fcn.0014c9f8
│ ││┌─────< 0x001241ec      b     0x124214
│ ────────> 0x001241f0      cbz   w21, 0x1242dc
│ │││││││   0x001241f4      adrp  x0, 0x264000
│ │││││││   0x001241f8      add   x0, x0, 0xb5e
│ │││││││   ; CODE XREFS from fcn.00123f14 @ 0x1241d8, 0x1243e8
│ ────────> 0x001241fc      bl    fcn.0014c9f8
│ │││││││   ; CODE XREFS from fcn.00123f14 @ 0x1240d0, 0x124174, 0x124380, 0x1243bc
│ ────└───> 0x00124200      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│ ││││ ││   0x00124204      add   x0, x0, 0x6c7
│ ││││ ││   ; CODE XREF from fcn.00123f14 @ 0x123fb8
│ │││└────> 0x00124208      adrp  x1, 0x249000
│ │││  ││   0x0012420c      add   x1, x1, 0xf63                        ; int64_t arg2
│ │││  ││   0x00124210      bl    fcn.0014c9f8
│ │││  ││   ; XREFS: CODE 0x00124024  CODE 0x00124154  CODE 0x001241ec
│ │││  ││   ; XREFS: CODE 0x001242d8  CODE 0x001243a0  CODE 0x001243f0
│ └└└┌┌───> 0x00124214      mov   x0, x20                              ; int64_t arg1
│    ╎╎││   0x00124218      bl    fcn.001424a4
│    ╎╎││   ; CODE XREFS from fcn.00123f14 @ 0x124044, 0x1240f4
│    ╎╎└└─> 0x0012421c      mov   w0, w21
│    ╎╎     0x00124220      ldp   x20, x19, [var_10h]
│    ╎╎     0x00124224      ldp   x22, x21, [var_20h]
│    ╎╎     0x00124228      ldp   x24, x23, [var_30h]
│    ╎╎     0x0012422c      ldp   x26, x25, [var_40h]
│    ╎╎     0x00124230      ldp   x28, x27, [var_50h]
│    ╎╎     0x00124234      ldp   x29, x30, [var_60h]
│    ╎╎     0x00124238      add   sp, sp, 0xa0
│    ╎╎     0x0012423c      autibsp
│    ╎╎     0x00124240      ret
│ ────────> 0x00124244      ldr   w26, [x20, 8]                        ; aav.0x00000008
│    ╎╎                                                                ; [0x8:4]=0x68656164 ; "daeh"
│    ╎╎     0x00124248      mov   x0, x20                              ; int64_t arg1
│    ╎╎     0x0012424c      mov   w1, wzr
│    ╎╎     0x00124250      mov   x2, x25                              ; int64_t arg3
│    ╎╎     0x00124254      bl    fcn.0014d8fc
│    ╎╎     0x00124258      cmp   w23, 1
│    ╎╎ ┌─< 0x0012425c      b.lt  0x1242a8
│    ╎╎ │   0x00124260      mov   w8, w23
│    ╎╎ │   0x00124264      mov   x25, xzr
│    ╎╎ │   0x00124268      add   x21, x20, 0x1c                       ; aav.0x0000001c
│    ╎╎ │   0x0012426c      lsl   x27, x8, 8
│    ╎╎ │   0x00124270      mov   w28, 3
│    ╎╎┌──> 0x00124274      and   x8, x25, 0xffffff00
│    ╎╎╎│   0x00124278      add   x1, x22, x8                          ; int64_t arg2
│    ╎╎╎│   0x0012427c      mov   w2, aav.0x00000100
│    ╎╎╎│   0x00124280      mov   x0, x21                              ; int64_t arg1
│    ╎╎╎│   0x00124284      sturh w28, [x21, -0x1c]
│    ╎╎╎│   0x00124288      sturh w23, [x21, -0x18]
│    ╎╎╎│   0x0012428c      stur  w26, [x21, -0x14]
│    ╎╎╎│   0x00124290      sturh w24, [x21, -0x16]
│    ╎╎╎│   0x00124294      bl    fcn.0014d60c
│    ╎╎╎│   0x00124298      add   x25, x25, aav.0x00000100             ; "@"
│    ╎╎╎│   0x0012429c      cmp   x27, x25
│    ╎╎╎│   0x001242a0      add   x21, x21, str.k__9Ki_8               ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│    ╎╎└──< 0x001242a4      b.ne  0x124274
│    ╎╎ └─> 0x001242a8      mov   x0, x20                              ; int64_t arg1
│    ╎╎     0x001242ac      bl    fcn.aav.0x00000294                   ; fcn.001224ec
│    ╎╎     0x001242b0      ldrh  w8, [x20, 2]                         ; [0x2:4]=0x776b0000
│    ╎╎     0x001242b4      mov   w21, w0
│    ╎╎     0x001242b8      strh  w8, [x19]
│ ────────< 0x001242bc      cbz   w0, 0x124214
│    ╎╎     0x001242c0      ldrh  w2, [x20, 6]                         ; [0x6:4]=0x61642148
│    ╎╎     0x001242c4      adrp  x0, 0x259000
│    ╎╎     0x001242c8      adrp  x1, 0x271000
│    ╎╎     0x001242cc      add   x0, x0, 0xf38                        ; int64_t arg1
│    ╎╎     0x001242d0      add   x1, x1, 0x6af                        ; int64_t arg2
│    ╎╎     0x001242d4      bl    fcn.0014c9f8
│ ────────< 0x001242d8      b     0x124214
│ ────────> 0x001242dc      ldrh  w21, [var_9ah]                       ; [0x6:4]=0x61642148
│    ╎╎     0x001242e0      ldrh  w23, [var_98h]                       ; aav.0x00000008
│    ╎╎                                                                ; [0x8:4]=0x68656164 ; "daeh"
│    ╎╎     0x001242e4      mov   x0, sp                               ; int64_t arg1
│    ╎╎     0x001242e8      mov   w2, 0x3c
│    ╎╎     0x001242ec      mov   w1, wzr
│    ╎╎     0x001242f0      bl    fcn.0014d8fc
│    ╎╎     0x001242f4      strh  w21, [var_9ah]
│    ╎╎     0x001242f8      adrp  x21, 0x56f000
│    ╎╎     0x001242fc      add   x21, x21, aav.0x00000904             ; "al"
│    ╎╎     0x00124300      mov   w8, 3
│    ╎╎     0x00124304      mov   w2, 0x10
│    ╎╎     0x00124308      mov   x0, x21                              ; int64_t arg1
│    ╎╎     0x0012430c      mov   w1, wzr
│    ╎╎     0x00124310      strh  w26, [var_9eh]
│    ╎╎     0x00124314      strh  w25, [var_9ch]
│    ╎╎     0x00124318      strh  w23, [var_98h]
│    ╎╎     0x0012431c      strh  w8, [var_86h]
│    ╎╎     0x00124320      bl    fcn.0014d8fc
│    ╎╎     0x00124324      mov   w1, 0x10
│    ╎╎     0x00124328      mov   x0, x21                              ; int64_t arg1
│    ╎╎     0x0012432c      bl    fcn.0010af70
│    ╎╎     0x00124330      mov   x21, x0
│ ────────< 0x00124334      cbnz  w21, 0x1240c4
│    ╎╎     0x00124338      adrp  x1, 0x56f000
│    ╎╎     0x0012433c      add   x1, x1, aav.0x00000904               ; "al" ; int64_t arg2
│    ╎╎     0x00124340      mov   w2, 0x10
│    ╎╎     0x00124344      mov   x0, x22                              ; int64_t arg1
│    ╎╎     0x00124348      bl    fcn.0014d60c
│    ╎╎     0x0012434c      mov   x0, sp                               ; int64_t arg1
│    ╎╎     0x00124350      mov   x1, x20                              ; int64_t arg2
│    ╎╎     0x00124354      bl    fcn.00122e14
│    ╎╎     0x00124358      ldrh  w1, [sp]
│    ╎╎     0x0012435c      strh  w1, [x19]
│    ╎╎ ┌─< 0x00124360      cbz   w0, 0x124384
│    ╎╎ │   0x00124364      ldrh  w2, [var_9ch]                        ; str.kwH_daeh
│    ╎╎ │                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│    ╎╎ │   0x00124368      mov   w21, w0
│    ╎╎ │   0x0012436c      adrp  x0, 0x259000
│    ╎╎ │   0x00124370      adrp  x1, 0x255000
│    ╎╎ │   0x00124374      add   x0, x0, 0xf38                        ; int64_t arg1
│    ╎╎ │   0x00124378      add   x1, x1, 0x781                        ; int64_t arg2
│    ╎╎ │   0x0012437c      bl    fcn.0014c9f8
│ ────────< 0x00124380      b     0x124200
│    ╎╎┌└─> 0x00124384      tbnz  w1, 7, 0x1243a4
│    ╎╎│┌─< 0x00124388      cbz   w1, 0x1243c0
│    ╎╎││   0x0012438c      adrp  x0, 0x25d000
│    ╎╎││   0x00124390      add   x0, x0, aav.0x00000f90               ; int64_t arg1
│    ╎╎││   0x00124394      bl    fcn.0014c9f8
│    ╎╎││   0x00124398      ldrh  w21, [sp]
│ ────────< 0x0012439c      cbnz  w21, 0x124200
│    └────< 0x001243a0      b     0x124214
│     ╎└──> 0x001243a4      adrp  x0, 0x25c000
│     ╎ │   0x001243a8      add   x0, x0, 0xb2                         ; int64_t arg1
│     ╎ │   0x001243ac      bl    fcn.0014c9f8
│     ╎ │   0x001243b0      mov   w8, str.ICM__USB_Loading_Done        ; 0xa02 ; "[ICM] USB Loading Done"
│     ╎ │   0x001243b4      movk  w8, 5, lsl 16
│     ╎ │   0x001243b8      add   w21, w8, 3
│ ────────< 0x001243bc      b     0x124200
│     ╎ └─> 0x001243c0      adrp  x1, 0x56f000
│     ╎     0x001243c4      add   x1, x1, aav.0x00000904               ; "al" ; int64_t arg2
│     ╎     0x001243c8      mov   w2, 0x10
│     ╎     0x001243cc      mov   x0, x22                              ; int64_t arg1
│     ╎     0x001243d0      bl    fcn.0014d5c8
│     ╎ ┌─< 0x001243d4      cbz   w0, 0x1243ec
│     ╎ │   0x001243d8      mov   w21, str.ICM__USB_Loading_Done       ; 0xa02 ; "[ICM] USB Loading Done"
│     ╎ │   0x001243dc      adrp  x0, 0x257000
│     ╎ │   0x001243e0      movk  w21, 5, lsl 16
│     ╎ │   0x001243e4      add   x0, x0, 0x5cd
│ ────────< 0x001243e8      b     0x1241fc
│     ╎ └─> 0x001243ec      mov   w21, wzr
└     └───< 0x001243f0      b     0x124214
            ; XREFS: CALL 0x00123e54  CALL 0x00123e84  CALL 0x00124ff8
            ; XREFS: CALL 0x001250d8  CALL 0x00125208  CALL 0x00172540
            ; XREFS: CALL 0x00172c20  CALL 0x0017cf50  CALL 0x0017d0a0
            ; XREFS: CALL 0x00183024  CALL 0x0018353c  CALL 0x00183c0c
            ; XREFS: CALL 0x00183f00  CALL 0x00184160  CALL 0x00184178
            ; XREFS: CALL 0x00185010  CALL 0x00186188
