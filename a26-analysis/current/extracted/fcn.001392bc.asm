┌ fcn.001392bc(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001392bc      pacibsp
│           0x001392c0      stp   x29, x30, [var_30h]!
│           0x001392c4      stp   x22, x21, [var_20h]
│           0x001392c8      stp   x20, x19, [var_10h]
│           0x001392cc      mov   x29, sp
│           0x001392d0      mov   w21, w2                              ; arg3
│           0x001392d4      mov   w2, w1                               ; arg2
│       ┌─< 0x001392d8      cbz   w3, 0x139324
│       │   0x001392dc      mov   x22, x0                              ; arg1
│       │   0x001392e0      mov   w0, w2
│       │   0x001392e4      mov   w20, w3
│       │   0x001392e8      bl    fcn.00138f30
│      ┌──< 0x001392ec      cbz   x0, 0x13933c
│      ││   0x001392f0      ldr   x8, [x0, 0xb0]                       ; aav.0x000000b0
│      ││                                                              ; [0xb0:4]=0xd368ac21 ; "!\xach\xd3A"
│      ││   0x001392f4      mov   x19, x0
│     ┌───< 0x001392f8      cbz   x8, 0x139354
│     │││   0x001392fc      mov   x0, x19
│     │││   0x00139300      mov   x1, x22                              ; int64_t arg5
│     │││   0x00139304      mov   w2, w21
│     │││   0x00139308      mov   w3, w20
│     │││   0x0013930c      blr   x8
│     │││   0x00139310      mov   w20, w0
│     │││   0x00139314      mov   x0, x19                              ; int64_t arg1
│     │││   0x00139318      bl    fcn.002049dc
│     │││   0x0013931c      mov   w0, w20
│    ┌────< 0x00139320      b     0x139374
│    │││└─> 0x00139324      adrp  x0, 0x23a000
│    │││    0x00139328      adrp  x1, 0x24c000
│    │││    0x0013932c      add   x0, x0, 0x7d2                        ; int64_t arg1
│    │││    0x00139330      add   x1, x1, 0x47d                        ; int64_t arg2
│    │││    0x00139334      bl    fcn.0014c9f8
│    │││┌─< 0x00139338      b     0x139370
│    ││└──> 0x0013933c      adrp  x0, 0x271000
│    ││ │   0x00139340      adrp  x1, 0x24c000
│    ││ │   0x00139344      add   x0, x0, 0x7a6                        ; int64_t arg1
│    ││ │   0x00139348      add   x1, x1, 0x47d                        ; int64_t arg2
│    ││ │   0x0013934c      bl    fcn.0014c9f8
│    ││┌──< 0x00139350      b     0x139370
│    │└───> 0x00139354      adrp  x0, 0x247000
│    │ ││   0x00139358      adrp  x1, 0x24c000
│    │ ││   0x0013935c      add   x0, x0, 0xcd4                        ; int64_t arg1
│    │ ││   0x00139360      add   x1, x1, 0x47d                        ; int64_t arg2
│    │ ││   0x00139364      bl    fcn.0014c9f8
│    │ ││   0x00139368      mov   x0, x19                              ; int64_t arg1
│    │ ││   0x0013936c      bl    fcn.002049dc
│    │ ││   ; CODE XREFS from fcn.001392bc @ 0x139338, 0x139350
│    │ └└─> 0x00139370      mov   w0, -1
│    │      ; CODE XREF from fcn.001392bc @ 0x139320
│    └────> 0x00139374      ldp   x20, x19, [var_10h]
│           0x00139378      ldp   x22, x21, [var_20h]
│           0x0013937c      ldp   x29, x30, [sp], 0x30
│           0x00139380      autibsp
└           0x00139384      ret
            ; CALL XREF from fcn.0022d89c @ 0x22d8d8
