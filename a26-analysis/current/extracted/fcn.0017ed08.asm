┌ fcn.0017ed08(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017ed08      pacibsp
│           0x0017ed0c      stp   x29, x30, [var_40h]!
│           0x0017ed10      str   x23, [var_30h]
│           0x0017ed14      stp   x22, x21, [var_20h]
│           0x0017ed18      stp   x20, x19, [var_10h]
│           0x0017ed1c      mov   x29, sp
│           0x0017ed20      mov   x21, x1                              ; arg2
│           0x0017ed24      mov   x19, x0                              ; arg1
│           0x0017ed28      adrp  x0, 0x267000
│           0x0017ed2c      adrp  x1, 0x243000
│           0x0017ed30      mov   w23, w2                              ; arg3
│           0x0017ed34      add   x0, x0, 0x2e8                        ; int64_t arg2
│           0x0017ed38      add   x1, x1, 0xb82                        ; int64_t arg3
│           0x0017ed3c      mov   x2, x19                              ; int64_t arg4
│           0x0017ed40      bl    fcn.0014c9f8
│           0x0017ed44      bl    fcn.0017b1f8
│       ┌─< 0x0017ed48      cbz   w0, 0x17edb4
│       │   0x0017ed4c      adrp  x1, 0x262000
│       │   0x0017ed50      add   x1, x1, 0x789                        ; int64_t arg2
│       │   0x0017ed54      mov   w2, 0xa
│       │   0x0017ed58      mov   x0, x19                              ; int64_t arg1
│       │   0x0017ed5c      bl    fcn.0014dbd8
│      ┌──< 0x0017ed60      cbz   w0, 0x17edb4
│      ││   0x0017ed64      mov   w0, 2
│      ││   0x0017ed68      bl    fcn.0013d500
│      ││   0x0017ed6c      mov   w19, w0
│      ││   0x0017ed70      bl    fcn.0013df98
│      ││   0x0017ed74      adrp  x20, 0x276000
│      ││   0x0017ed78      add   x20, x20, 0x9ba
│      ││   0x0017ed7c      mov   w3, w0
│      ││   0x0017ed80      mov   w0, 0xa
│      ││   0x0017ed84      mov   w2, 0xff0000
│      ││   0x0017ed88      mov   w1, w19
│      ││   0x0017ed8c      mov   x4, x20                              ; int64_t arg5
│      ││   0x0017ed90      bl    fcn.0013deb8
│      ││   0x0017ed94      mov   x0, x20                              ; int64_t arg1
│      ││   0x0017ed98      bl    fcn.0014c9f8
│      ││   0x0017ed9c      bl    fcn.000f9608
│      ││   0x0017eda0      mov   w0, 0x4240                           ; '@B'
│      ││   0x0017eda4      movk  w0, 0xf, lsl 16
│      ││   0x0017eda8      bl    fcn.001b3f80
│      ││   0x0017edac      mov   w0, -0x71
│     ┌───< 0x0017edb0      b     0x17f2d4
│     │└└─> 0x0017edb4      sxtw  x22, w23
│     │     0x0017edb8      add   x8, x21, x22
│     │     0x0017edbc      mov   x0, x19                              ; int64_t arg1
│     │     0x0017edc0      mov   x1, x21                              ; int64_t arg2
│     │     0x0017edc4      mov   w2, w23
│     │     0x0017edc8      sub   x20, x8, 0x310
│     │     0x0017edcc      bl    fcn.0017f2ec
│     │ ┌─< 0x0017edd0      tbnz  w0, 0x1f, 0x17ee9c
│     │ │   0x0017edd4      mov   w0, wzr
│     │ │   0x0017edd8      mov   x1, x19                              ; int64_t arg2
│     │ │   0x0017eddc      mov   x2, x20                              ; int64_t arg3
│     │ │   0x0017ede0      bl    fcn.0017a7dc
│     │ │   0x0017ede4      mov   x0, x20                              ; int64_t arg1
│     │ │   0x0017ede8      mov   x1, x19                              ; int64_t arg2
│     │ │   0x0017edec      bl    fcn.0017ab9c
│     │ │   0x0017edf0      mov   x0, x19                              ; int64_t arg1
│     │ │   0x0017edf4      mov   w1, wzr
│     │ │   0x0017edf8      bl    fcn.0017983c
│     │ │   0x0017edfc      mov   x0, x19                              ; int64_t arg1
│     │ │   0x0017ee00      bl    fcn.0017e844
│     │┌──< 0x0017ee04      cbz   w0, 0x17ee18
│     │││   0x0017ee08      mov   x0, x20                              ; int64_t arg1
│     │││   0x0017ee0c      mov   x1, x19                              ; int64_t arg2
│     │││   0x0017ee10      bl    fcn.0017d128
│    ┌────< 0x0017ee14      tbnz  w0, 0x1f, 0x17ef0c
│    ││└──> 0x0017ee18      mov   x0, x19                              ; int64_t arg1
│    ││ │   0x0017ee1c      bl    fcn.0017e78c
│    ││┌──< 0x0017ee20      cbz   w0, 0x17ee38
│    ││││   0x0017ee24      mov   x0, x21                              ; int64_t arg1
│    ││││   0x0017ee28      mov   x1, x22                              ; int64_t arg2
│    ││││   0x0017ee2c      mov   x2, x19                              ; int64_t arg3
│    ││││   0x0017ee30      bl    fcn.0017bccc
│   ┌─────< 0x0017ee34      tbnz  w0, 0x1f, 0x17f004
│   │││└──> 0x0017ee38      mov   x0, x20                              ; int64_t arg1
│   │││ │   0x0017ee3c      bl    fcn.0017cb74
│   │││┌──< 0x0017ee40      cbz   w0, 0x17f2d4
│   │││││   0x0017ee44      adrp  x1, 0x23e000
│   │││││   0x0017ee48      add   x1, x1, 0x405                        ; int64_t arg2
│   │││││   0x0017ee4c      add   x0, x20, 0x90                        ; int64_t arg1
│   │││││   0x0017ee50      mov   w2, 3
│   │││││   0x0017ee54      bl    fcn.0014dbd8
│  ┌──────< 0x0017ee58      cbz   w0, 0x17f08c
│  ││││││   0x0017ee5c      adrp  x1, 0x262000
│  ││││││   0x0017ee60      add   x1, x1, 0x789                        ; int64_t arg2
│  ││││││   0x0017ee64      mov   w2, 0x20
│  ││││││   0x0017ee68      mov   x0, x19                              ; int64_t arg1
│  ││││││   0x0017ee6c      bl    fcn.0014dbd8
│ ┌───────< 0x0017ee70      cbz   w0, 0x17f00c
│ │││││││   0x0017ee74      adrp  x1, 0x262000
│ │││││││   0x0017ee78      add   x1, x1, 0x559                        ; int64_t arg2
│ │││││││   0x0017ee7c      mov   w2, 0x20
│ │││││││   0x0017ee80      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017ee84      bl    fcn.0014dbd8
│ ────────< 0x0017ee88      cbz   w0, 0x17f00c
│ │││││││   0x0017ee8c      adrp  x8, 0x5a6000
│ │││││││   0x0017ee90      ldr   w8, [x8, 0xa88]                      ; [0xa88:4]=0x4c204253
│ ────────< 0x0017ee94      cbnz  w8, 0x17f08c
│ ────────< 0x0017ee98      b     0x17f024
│ ││││││└─> 0x0017ee9c      adrp  x1, 0x253000
│ ││││││    0x0017eea0      add   x1, x1, aav.0x00000394               ; int64_t arg2
│ ││││││    0x0017eea4      mov   w2, 0x20
│ ││││││    0x0017eea8      mov   x0, x19                              ; int64_t arg1
│ ││││││    0x0017eeac      bl    fcn.0014dbd8
│ ││││││┌─< 0x0017eeb0      cbz   w0, 0x17ef14
│ ────────> 0x0017eeb4      mov   w0, 2
│ │││││││   0x0017eeb8      bl    fcn.0013d500
│ │││││││   0x0017eebc      mov   w20, w0
│ │││││││   0x0017eec0      bl    fcn.0013df98
│ │││││││   0x0017eec4      adrp  x21, 0x23d000
│ │││││││   0x0017eec8      add   x21, x21, 0x7d
│ │││││││   0x0017eecc      mov   w3, w0
│ │││││││   0x0017eed0      mov   w0, 0xa
│ │││││││   0x0017eed4      mov   w2, 0xff0000
│ │││││││   0x0017eed8      mov   w1, w20
│ │││││││   0x0017eedc      mov   x4, x21                              ; int64_t arg5
│ │││││││   0x0017eee0      mov   x5, x19                              ; int64_t arg6
│ │││││││   0x0017eee4      bl    fcn.0013deb8
│ │││││││   0x0017eee8      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x0017eeec      mov   x1, x19                              ; int64_t arg2
│ │││││││   0x0017eef0      bl    fcn.0014c9f8
│ │││││││   0x0017eef4      bl    fcn.000f9608
│ │││││││   0x0017eef8      mov   w0, 0x4240                           ; '@B'
│ │││││││   0x0017eefc      movk  w0, 0xf, lsl 16
│ │││││││   0x0017ef00      bl    fcn.001b3f80
│ │││││││   0x0017ef04      mov   w0, -0x6f
│ ────────< 0x0017ef08      b     0x17f2d4
│ │││└────> 0x0017ef0c      mov   w0, -0x6a
│ │││┌────< 0x0017ef10      b     0x17f2d4
│ ││││││└─> 0x0017ef14      mov   w0, 3
│ ││││││    0x0017ef18      bl    fcn.001895dc
│ ────────< 0x0017ef1c      cbz   w0, 0x17eeb4
│ ││││││    0x0017ef20      bl    fcn.001842f4
│ ││││││    0x0017ef24      cmp   w0, 1
│ ││││││┌─< 0x0017ef28      b.ne  0x17ef48
│ │││││││   0x0017ef2c      adrp  x0, 0x5a6000
│ │││││││   0x0017ef30      adrp  x1, 0x23d000
│ │││││││   0x0017ef34      add   x0, x0, 0xe9                         ; int64_t arg1
│ │││││││   0x0017ef38      add   x1, x1, 0x97                         ; int64_t arg2
│ │││││││   0x0017ef3c      mov   w2, 9
│ │││││││   0x0017ef40      bl    fcn.0014dc20
│ ────────< 0x0017ef44      cbnz  w0, 0x17f1a0
│ ││││││└─> 0x0017ef48      bl    fcn.001842f4
│ ││││││┌─< 0x0017ef4c      cbz   w0, 0x17f130
│ ────────> 0x0017ef50      bl    fcn.001842f4
│ │││││││   0x0017ef54      cmn   w0, 1
│ ────────< 0x0017ef58      b.eq  0x17f1a0
│ │││││││   0x0017ef5c      mov   w0, 1
│ │││││││   0x0017ef60      mov   x1, x19                              ; int64_t arg2
│ │││││││   0x0017ef64      mov   x2, x20                              ; int64_t arg3
│ │││││││   0x0017ef68      bl    fcn.0017a7dc
│ │││││││   0x0017ef6c      adrp  x1, 0x23c000
│ │││││││   0x0017ef70      add   x1, x1, 0x521                        ; int64_t arg2
│ │││││││   0x0017ef74      mov   w2, 0x20
│ │││││││   0x0017ef78      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017ef7c      bl    fcn.0014dbd8
│ ────────< 0x0017ef80      cbz   w0, 0x17f254
│ │││││││   0x0017ef84      adrp  x1, 0x266000
│ │││││││   0x0017ef88      add   x1, x1, 0x87c                        ; int64_t arg2
│ │││││││   0x0017ef8c      mov   w2, 0x20
│ │││││││   0x0017ef90      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017ef94      bl    fcn.0014dbd8
│ ────────< 0x0017ef98      cbz   w0, 0x17f2ac
│ │││││││   0x0017ef9c      adrp  x1, 0x249000
│ │││││││   0x0017efa0      add   x1, x1, 0xb6c                        ; int64_t arg2
│ │││││││   0x0017efa4      mov   w2, 0x20
│ │││││││   0x0017efa8      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017efac      bl    fcn.0014dbd8
│ ────────< 0x0017efb0      cbz   w0, 0x17f2b4
│ │││││││   0x0017efb4      adrp  x1, 0x259000
│ │││││││   0x0017efb8      add   x1, x1, 0xc3b                        ; int64_t arg2
│ │││││││   0x0017efbc      mov   w2, 0x20
│ │││││││   0x0017efc0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017efc4      bl    fcn.0014dbd8
│ ────────< 0x0017efc8      cbz   w0, 0x17f2bc
│ │││││││   0x0017efcc      adrp  x1, 0x253000
│ │││││││   0x0017efd0      add   x1, x1, aav.0x00000394               ; int64_t arg2
│ │││││││   0x0017efd4      mov   w2, 0x20
│ │││││││   0x0017efd8      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017efdc      bl    fcn.0014dbd8
│ ────────< 0x0017efe0      cbz   w0, 0x17f2c4
│ │││││││   0x0017efe4      adrp  x1, 0x25b000
│ │││││││   0x0017efe8      add   x1, x1, 0xe3a                        ; int64_t arg2
│ │││││││   0x0017efec      mov   w2, 0x20
│ │││││││   0x0017eff0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017eff4      bl    fcn.0014dbd8
│ ────────< 0x0017eff8      cbnz  w0, 0x17f2d0
│ │││││││   0x0017effc      mov   w1, aav.0x00000400
│ ────────< 0x0017f000      b     0x17f2c8
│ ││└─────> 0x0017f004      mov   w0, -0x65
│ ││┌─────< 0x0017f008      b     0x17f2d4
│ └───────> 0x0017f00c      mov   w0, 3
│  ││││││   0x0017f010      bl    fcn.001895dc
│  ││││││   0x0017f014      adrp  x8, 0x5a6000
│  ││││││   0x0017f018      ldr   w8, [x8, 0xa88]                      ; [0xa88:4]=0x4c204253
│  ││││││   0x0017f01c      orr   w8, w0, w8
│ ┌───────< 0x0017f020      cbnz  w8, 0x17f08c
│ │││││││   ; CODE XREF from fcn.0017ed08 @ 0x17ee98
│ ────────> 0x0017f024      mov   w1, 1
│ │││││││   0x0017f028      mov   w0, wzr
│ │││││││   0x0017f02c      bl    fcn.0018a2ac
│ ────────< 0x0017f030      cbz   w0, 0x17f08c
│ │││││││   0x0017f034      mov   w0, 2
│ │││││││   0x0017f038      bl    fcn.0013d500
│ │││││││   0x0017f03c      mov   w20, w0
│ │││││││   0x0017f040      bl    fcn.0013df98
│ │││││││   0x0017f044      adrp  x21, 0x25b000
│ │││││││   0x0017f048      add   x21, x21, 0xe08
│ │││││││   0x0017f04c      mov   w3, w0
│ │││││││   0x0017f050      mov   w0, 0xa
│ │││││││   0x0017f054      mov   w2, 0xff0000
│ │││││││   0x0017f058      mov   w1, w20
│ │││││││   0x0017f05c      mov   x4, x21                              ; int64_t arg5
│ │││││││   0x0017f060      mov   x5, x19                              ; int64_t arg6
│ │││││││   0x0017f064      bl    fcn.0013deb8
│ │││││││   0x0017f068      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x0017f06c      mov   x1, x19                              ; int64_t arg2
│ │││││││   0x0017f070      bl    fcn.0014c9f8
│ │││││││   0x0017f074      bl    fcn.000f9608
│ │││││││   0x0017f078      mov   w0, 0x4240                           ; '@B'
│ │││││││   0x0017f07c      movk  w0, 0xf, lsl 16
│ │││││││   0x0017f080      bl    fcn.001b3f80
│ │││││││   0x0017f084      mov   w0, -0x67
│ ────────< 0x0017f088      b     0x17f2d4
│ └└──────> 0x0017f08c      adrp  x8, 0x56f000
│   │││││   0x0017f090      ldr   w8, [x8, 0x4dc]                      ; [0x4dc:4]=0xb900451f
│   │││││   0x0017f094      cmp   w8, 1
│  ┌──────< 0x0017f098      b.ne  0x17f2d0
│  ││││││   0x0017f09c      adrp  x1, 0x24e000
│  ││││││   0x0017f0a0      add   x0, x20, 0x98                        ; int64_t arg1
│  ││││││   0x0017f0a4      add   x1, x1, 0xd63                        ; int64_t arg2
│  ││││││   0x0017f0a8      mov   w2, 3
│  ││││││   0x0017f0ac      bl    fcn.0014dbd8
│  ││││││   0x0017f0b0      mov   w8, w0
│  ││││││   0x0017f0b4      mov   w0, wzr
│ ┌───────< 0x0017f0b8      cbz   w8, 0x17f2d4
│ │││││││   0x0017f0bc      adrp  x8, 0x5a6000
│ │││││││   0x0017f0c0      ldr   w8, [x8, 0xa88]                      ; [0xa88:4]=0x4c204253
│ ────────< 0x0017f0c4      cbnz  w8, 0x17f2d4
│ │││││││   0x0017f0c8      mov   w0, 0xa
│ │││││││   0x0017f0cc      mov   w1, 1
│ │││││││   0x0017f0d0      bl    fcn.0018a2ac
│ ────────< 0x0017f0d4      cbz   w0, 0x17f2d4
│ │││││││   0x0017f0d8      mov   w0, 2
│ │││││││   0x0017f0dc      bl    fcn.0013d500
│ │││││││   0x0017f0e0      mov   w20, w0
│ │││││││   0x0017f0e4      bl    fcn.0013df98
│ │││││││   0x0017f0e8      adrp  x21, 0x240000
│ │││││││   0x0017f0ec      add   x21, x21, 0x84d
│ │││││││   0x0017f0f0      mov   w3, w0
│ │││││││   0x0017f0f4      mov   w0, 0xa
│ │││││││   0x0017f0f8      mov   w2, 0xff0000
│ │││││││   0x0017f0fc      mov   w1, w20
│ │││││││   0x0017f100      mov   x4, x21                              ; int64_t arg5
│ │││││││   0x0017f104      mov   x5, x19                              ; int64_t arg6
│ │││││││   0x0017f108      bl    fcn.0013deb8
│ │││││││   0x0017f10c      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x0017f110      mov   x1, x19                              ; int64_t arg2
│ │││││││   0x0017f114      bl    fcn.0014c9f8
│ │││││││   0x0017f118      bl    fcn.000f9608
│ │││││││   0x0017f11c      mov   w0, 0x4240                           ; '@B'
│ │││││││   0x0017f120      movk  w0, 0xf, lsl 16
│ │││││││   0x0017f124      bl    fcn.001b3f80
│ │││││││   0x0017f128      mov   w0, -0x70
│ ────────< 0x0017f12c      b     0x17f2d4
│ ││││││└─> 0x0017f130      adrp  x0, 0x5a6000
│ ││││││    0x0017f134      adrp  x1, 0x257000
│ ││││││    0x0017f138      add   x0, x0, 0xe9                         ; int64_t arg1
│ ││││││    0x0017f13c      add   x1, x1, 0xee6                        ; int64_t arg2
│ ││││││    0x0017f140      mov   w2, 9
│ ││││││    0x0017f144      bl    fcn.0014dc20
│ ││││││┌─< 0x0017f148      cbz   w0, 0x17f1a0
│ │││││││   0x0017f14c      adrp  x0, 0x5a6000
│ │││││││   0x0017f150      adrp  x1, 0x276000
│ │││││││   0x0017f154      add   x0, x0, 0xe9                         ; int64_t arg1
│ │││││││   0x0017f158      add   x1, x1, str.exception_reason__u_syndrome_0x_lx ; 0x9d5 ; "\nexception reason=%u syndrome=0x%lx\n" ; int64_t arg2
│ │││││││   0x0017f15c      mov   w2, 6
│ │││││││   0x0017f160      bl    fcn.0014dc20
│ ────────< 0x0017f164      cbz   w0, 0x17f1a0
│ │││││││   0x0017f168      adrp  x0, 0x5a6000
│ │││││││   0x0017f16c      adrp  x1, 0x253000
│ │││││││   0x0017f170      add   x0, x0, 0xe9                         ; int64_t arg1
│ │││││││   0x0017f174      add   x1, x1, 0x891                        ; int64_t arg2
│ │││││││   0x0017f178      mov   w2, 6
│ │││││││   0x0017f17c      bl    fcn.0014dc20
│ ────────< 0x0017f180      cbz   w0, 0x17f1a0
│ │││││││   0x0017f184      adrp  x0, 0x5a6000
│ │││││││   0x0017f188      adrp  x1, 0x269000
│ │││││││   0x0017f18c      add   x0, x0, 0xe9                         ; int64_t arg1
│ │││││││   0x0017f190      add   x1, x1, 0x14d                        ; int64_t arg2
│ │││││││   0x0017f194      mov   w2, 5
│ │││││││   0x0017f198      bl    fcn.0014dc20
│ ────────< 0x0017f19c      cbnz  w0, 0x17ef50
│ ──────└─> 0x0017f1a0      adrp  x0, 0x5a6000
│ ││││││    0x0017f1a4      adrp  x1, 0x276000
│ ││││││    0x0017f1a8      add   x0, x0, 0xe9                         ; int64_t arg1
│ ││││││    0x0017f1ac      add   x1, x1, str.exception_reason__u_syndrome_0x_lx ; 0x9d5 ; "\nexception reason=%u syndrome=0x%lx\n" ; int64_t arg2
│ ││││││    0x0017f1b0      mov   w2, 6
│ ││││││    0x0017f1b4      bl    fcn.0014dc20
│ ││││││┌─< 0x0017f1b8      cbz   w0, 0x17f204
│ │││││││   0x0017f1bc      adrp  x0, 0x5a6000
│ │││││││   0x0017f1c0      adrp  x1, 0x253000
│ │││││││   0x0017f1c4      add   x0, x0, 0xe9                         ; int64_t arg1
│ │││││││   0x0017f1c8      add   x1, x1, 0x891                        ; int64_t arg2
│ │││││││   0x0017f1cc      mov   w2, 6
│ │││││││   0x0017f1d0      bl    fcn.0014dc20
│ │││││││   0x0017f1d4      mov   w20, w0
│ │││││││   0x0017f1d8      mov   w0, 2
│ │││││││   0x0017f1dc      bl    fcn.0013d500
│ │││││││   0x0017f1e0      mov   w21, w0
│ │││││││   0x0017f1e4      bl    fcn.0013df98
│ │││││││   0x0017f1e8      mov   w22, w0
│ │││││││   0x0017f1ec      bl    fcn.001842f4
│ │││││││   0x0017f1f0      mov   w6, w0
│ ────────< 0x0017f1f4      cbz   w20, 0x17f248
│ │││││││   0x0017f1f8      adrp  x20, 0x25a000
│ │││││││   0x0017f1fc      add   x20, x20, 0x807
│ ────────< 0x0017f200      b     0x17f264
│ ││││││└─> 0x0017f204      adrp  x1, 0x24e000
│ ││││││    0x0017f208      add   x0, x20, 0x98                        ; int64_t arg1
│ ││││││    0x0017f20c      add   x1, x1, 0xd63                        ; int64_t arg2
│ ││││││    0x0017f210      mov   w2, 3
│ ││││││    0x0017f214      bl    fcn.0014dbd8
│ ││││││    0x0017f218      mov   w20, w0
│ ││││││    0x0017f21c      mov   w0, 2
│ ││││││    0x0017f220      bl    fcn.0013d500
│ ││││││    0x0017f224      mov   w21, w0
│ ││││││    0x0017f228      bl    fcn.0013df98
│ ││││││    0x0017f22c      mov   w22, w0
│ ││││││    0x0017f230      bl    fcn.001842f4
│ ││││││    0x0017f234      mov   w6, w0
│ ││││││┌─< 0x0017f238      cbz   w20, 0x17f25c
│ │││││││   0x0017f23c      adrp  x20, 0x24c000
│ │││││││   0x0017f240      add   x20, x20, 0xbb5
│ ────────< 0x0017f244      b     0x17f264
│ ────────> 0x0017f248      adrp  x20, 0x26b000
│ │││││││   0x0017f24c      add   x20, x20, 0x432
│ ────────< 0x0017f250      b     0x17f264
│ ────────> 0x0017f254      mov   w1, 1
│ ────────< 0x0017f258      b     0x17f2c8
│ ││││││└─> 0x0017f25c      adrp  x20, 0x253000
│ ││││││    0x0017f260      add   x20, x20, str.2_u                    ; 0xff6
│ ││││││    ; CODE XREFS from fcn.0017ed08 @ 0x17f200, 0x17f244, 0x17f250
│ ────────> 0x0017f264      mov   w0, 0xa
│ ││││││    0x0017f268      mov   w2, 0xff0000
│ ││││││    0x0017f26c      mov   w1, w21
│ ││││││    0x0017f270      mov   w3, w22
│ ││││││    0x0017f274      mov   x4, x20                              ; int64_t arg5
│ ││││││    0x0017f278      mov   x5, x19                              ; int64_t arg6
│ ││││││    0x0017f27c      bl    fcn.0013deb8
│ ││││││    0x0017f280      bl    fcn.001842f4
│ ││││││    0x0017f284      mov   w2, w0
│ ││││││    0x0017f288      mov   x0, x20                              ; int64_t arg1
│ ││││││    0x0017f28c      mov   x1, x19                              ; int64_t arg2
│ ││││││    0x0017f290      bl    fcn.0014c9f8
│ ││││││    0x0017f294      bl    fcn.000f9608
│ ││││││    0x0017f298      mov   w0, 0x4240                           ; '@B'
│ ││││││    0x0017f29c      movk  w0, 0xf, lsl 16
│ ││││││    0x0017f2a0      bl    fcn.001b3f80
│ ││││││    0x0017f2a4      mov   w0, -0x6d
│ ││││││┌─< 0x0017f2a8      b     0x17f2d4
│ ────────> 0x0017f2ac      mov   w1, 4
│ ────────< 0x0017f2b0      b     0x17f2c8
│ ────────> 0x0017f2b4      mov   w1, 0x10
│ ────────< 0x0017f2b8      b     0x17f2c8
│ ────────> 0x0017f2bc      mov   w1, 0x40
│ ────────< 0x0017f2c0      b     0x17f2c8
│ ────────> 0x0017f2c4      mov   w1, aav.0x00000100
│ │││││││   ; CODE XREFS from fcn.0017ed08 @ 0x17f000, 0x17f258, 0x17f2b0, 0x17f2b8, 0x17f2c0
│ ────────> 0x0017f2c8      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0017f2cc      bl    fcn.0017983c
│ ─└──────> 0x0017f2d0      mov   w0, wzr
│ │ │││││   ; XREFS: CODE 0x0017edb0  CODE 0x0017ef08  CODE 0x0017ef10
│ │ │││││   ; XREFS: CODE 0x0017f008  CODE 0x0017f088  CODE 0x0017f12c
│ │ │││││   ; XREFS: CODE 0x0017f2a8
│ └─└└└└└─> 0x0017f2d4      ldp   x20, x19, [var_10h]
│           0x0017f2d8      ldp   x22, x21, [var_20h]
│           0x0017f2dc      ldr   x23, [var_30h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0017f2e0      ldp   x29, x30, [sp], 0x40
│           0x0017f2e4      autibsp
└           0x0017f2e8      ret
            ; XREFS: CALL 0x00111e34  CALL 0x00112260  CALL 0x001554f0
            ; XREFS: CALL 0x00175c08  CALL 0x00176328  CALL 0x0017beac
            ; XREFS: CALL 0x0017edcc  CALL 0x0017fa8c
