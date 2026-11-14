┌ fcn.001390c0(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
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
│           0x001390c0      pacibsp
│           0x001390c4      stp   x29, x30, [var_30h]!
│           0x001390c8      stp   x22, x21, [var_20h]
│           0x001390cc      stp   x20, x19, [var_10h]
│           0x001390d0      mov   x29, sp
│           0x001390d4      mov   w21, w2                              ; arg3
│           0x001390d8      mov   w2, w1                               ; arg2
│       ┌─< 0x001390dc      cbz   w3, 0x139128
│       │   0x001390e0      mov   x22, x0                              ; arg1
│       │   0x001390e4      mov   w0, w2
│       │   0x001390e8      mov   w20, w3
│       │   0x001390ec      bl    fcn.00138f30
│      ┌──< 0x001390f0      cbz   x0, 0x139140
│      ││   0x001390f4      ldr   x8, [x0, 0xa8]                       ; aav.0x000000a8
│      ││                                                              ; [0xa8:4]=0xf2c00080
│      ││   0x001390f8      mov   x19, x0
│     ┌───< 0x001390fc      cbz   x8, 0x139158
│     │││   0x00139100      mov   x0, x19
│     │││   0x00139104      mov   x1, x22                              ; int64_t arg5
│     │││   0x00139108      mov   w2, w21
│     │││   0x0013910c      mov   w3, w20
│     │││   0x00139110      blr   x8
│     │││   0x00139114      mov   w20, w0
│     │││   0x00139118      mov   x0, x19                              ; int64_t arg1
│     │││   0x0013911c      bl    fcn.002049dc
│     │││   0x00139120      mov   w0, w20
│    ┌────< 0x00139124      b     0x139178
│    │││└─> 0x00139128      adrp  x0, 0x23a000
│    │││    0x0013912c      adrp  x1, 0x27a000
│    │││    0x00139130      add   x0, x0, 0x7d2                        ; int64_t arg1
│    │││    0x00139134      add   x1, x1, 0x83c                        ; int64_t arg2
│    │││    0x00139138      bl    fcn.0014c9f8
│    │││┌─< 0x0013913c      b     0x139174
│    ││└──> 0x00139140      adrp  x0, 0x271000
│    ││ │   0x00139144      adrp  x1, 0x27a000
│    ││ │   0x00139148      add   x0, x0, 0x7a6                        ; int64_t arg1
│    ││ │   0x0013914c      add   x1, x1, 0x83c                        ; int64_t arg2
│    ││ │   0x00139150      bl    fcn.0014c9f8
│    ││┌──< 0x00139154      b     0x139174
│    │└───> 0x00139158      adrp  x0, 0x247000
│    │ ││   0x0013915c      adrp  x1, 0x27a000
│    │ ││   0x00139160      add   x0, x0, 0xcd4                        ; int64_t arg1
│    │ ││   0x00139164      add   x1, x1, 0x83c                        ; int64_t arg2
│    │ ││   0x00139168      bl    fcn.0014c9f8
│    │ ││   0x0013916c      mov   x0, x19                              ; int64_t arg1
│    │ ││   0x00139170      bl    fcn.002049dc
│    │ ││   ; CODE XREFS from fcn.001390c0 @ 0x13913c, 0x139154
│    │ └└─> 0x00139174      mov   w0, -1
│    │      ; CODE XREF from fcn.001390c0 @ 0x139124
│    └────> 0x00139178      ldp   x20, x19, [var_10h]
│           0x0013917c      ldp   x22, x21, [var_20h]
│           0x00139180      ldp   x29, x30, [sp], 0x30
│           0x00139184      autibsp
└           0x00139188      ret
            ; CALL XREF from fcn.0022d844 @ 0x22d880
