┌ fcn.001395ec(int64_t arg1, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001395ec      pacibsp
│           0x001395f0      sub   sp, sp, 0x70
│           0x001395f4      stp   x29, x30, [var_30h]
│           0x001395f8      str   x21, [var_20h]
│           0x001395fc      stp   x20, x19, [var_10h]
│           0x00139600      add   x29, sp, 0x40
│           0x00139604      adrp  x20, 0x572000
│           0x00139608      ldr   w3, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│           0x0013960c      mov   w19, w0                              ; arg1
│           0x00139610      adrp  x0, 0x273000
│           0x00139614      adrp  x1, 0x23a000
│           0x00139618      add   x0, x0, 0xc02                        ; int64_t arg1
│           0x0013961c      add   x1, x1, str.eBoot:_Ban_test_key_on_fused_chip. ; 0x7f8 ; "eBoot: Ban test key on fused chip.\r\n" ; int64_t arg2
│           0x00139620      mov   w2, w19
│           0x00139624      bl    fcn.0014c9f8
│           0x00139628      ldr   w8, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│           0x0013962c      cmp   w8, 1
│       ┌─< 0x00139630      b.ne  0x139640
│      ┌──< 0x00139634      cbz   w19, 0x1396c4
│      ││   0x00139638      mov   w0, 1
│     ┌───< 0x0013963c      b     0x1396c8
│    ┌──└─> 0x00139640      cbz   w19, 0x1396f4
│    │││    0x00139644      cmp   w8, 2
│    │││    0x00139648      str   wzr, [sp, 0x38]
│    │││    0x0013964c      stp   xzr, xzr, [sp, 0x28]
│    │││    0x00139650      stp   xzr, xzr, [sp, 0x18]
│    │││    0x00139654      stp   xzr, xzr, [sp, 8]
│    │││    0x00139658      str   xzr, [sp]
│    │││┌─< 0x0013965c      b.ne  0x139680
│    ││││   0x00139660      adrp  x1, 0x23e000
│    ││││   0x00139664      add   x1, x1, 0x866                        ; int64_t arg2
│    ││││   0x00139668      mov   x0, sp                               ; int64_t arg1
│    ││││   0x0013966c      mov   w2, 3
│    ││││   0x00139670      bl    fcn.0014d60c
│    ││││   0x00139674      mov   w8, 0x30
│    ││││   0x00139678      strb  w8, [sp, 3]
│    ││││   0x0013967c      strb  wzr, [sp, 4]
│    │││└─> 0x00139680      mov   x0, sp                               ; int64_t arg1
│    │││    0x00139684      bl    fcn.00204950
│    │││┌─< 0x00139688      cbz   x0, 0x139708
│    ││││   0x0013968c      ldr   x8, [x0, 0xd8]                       ; aav.0x000000d8
│    ││││                                                              ; [0xd8:4]=0xb4000041 ; "A"
│    ││││   0x00139690      mov   x21, x0
│   ┌─────< 0x00139694      cbz   x8, 0x139734
│   │││││   0x00139698      mov   w1, 1
│   │││││   0x0013969c      mov   x0, x21
│   │││││   0x001396a0      mov   w2, w19
│   │││││   0x001396a4      mov   w3, wzr
│   │││││   0x001396a8      mov   w4, wzr
│   │││││   0x001396ac      blr   x8
│   │││││   0x001396b0      mov   w20, w0
│   │││││   0x001396b4      mov   x0, x21                              ; int64_t arg1
│   │││││   0x001396b8      bl    fcn.002049dc
│  ┌──────< 0x001396bc      cbnz  w20, 0x1396d4
│ ┌───────< 0x001396c0      b     0x139754
│ │││││└──> 0x001396c4      mov   w0, wzr
│ │││││ │   ; CODE XREF from fcn.001395ec @ 0x13963c
│ ││││└───> 0x001396c8      bl    fcn.001268b8
│ ││││  │   0x001396cc      mov   w20, w0
│ ││││ ┌──< 0x001396d0      cbz   w20, 0x139754
│ │└──────> 0x001396d4      adrp  x0, 0x253000
│ │ ││ ││   0x001396d8      adrp  x1, 0x23a000
│ │ ││ ││   0x001396dc      add   x0, x0, aav.0x00000900               ; "emetal" ; int64_t arg1
│ │ ││ ││   0x001396e0      add   x1, x1, str.eBoot:_Ban_test_key_on_fused_chip. ; 0x7f8 ; "eBoot: Ban test key on fused chip.\r\n" ; int64_t arg2
│ │ ││ ││   0x001396e4      mov   w2, w19
│ │ ││ ││   0x001396e8      mov   w3, w20
│ │ ││ ││   0x001396ec      bl    fcn.0014c9f8
│ │ ││┌───< 0x001396f0      b     0x139754
│ │ │└────> 0x001396f4      adrp  x0, 0x245000
│ │ │ │││   0x001396f8      add   x0, x0, 0xa28                        ; int64_t arg1
│ │ │ │││   0x001396fc      bl    fcn.0014c9f8
│ │ │ │││   0x00139700      mov   w20, wzr
│ │ │┌────< 0x00139704      b     0x139754
│ │ ││││└─> 0x00139708      ldr   w1, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│ │ ││││    0x0013970c      adrp  x0, 0x257000
│ │ ││││    0x00139710      add   x0, x0, 0x77d                        ; int64_t arg1
│ │ ││││    0x00139714      mov   w2, wzr
│ │ ││││    0x00139718      bl    fcn.0014c9f8
│ │ ││││    0x0013971c      adrp  x0, 0x271000
│ │ ││││    0x00139720      adrp  x1, 0x23a000
│ │ ││││    0x00139724      add   x0, x0, 0x7a6                        ; int64_t arg1
│ │ ││││    0x00139728      add   x1, x1, str.eBoot:_Ban_test_key_on_fused_chip. ; 0x7f8 ; "eBoot: Ban test key on fused chip.\r\n" ; int64_t arg2
│ │ ││││    0x0013972c      bl    fcn.0014c9f8
│ │ ││││┌─< 0x00139730      b     0x139750
│ │ └─────> 0x00139734      adrp  x0, 0x247000
│ │  ││││   0x00139738      adrp  x1, 0x23a000
│ │  ││││   0x0013973c      add   x0, x0, 0xcd4                        ; int64_t arg1
│ │  ││││   0x00139740      add   x1, x1, str.eBoot:_Ban_test_key_on_fused_chip. ; 0x7f8 ; "eBoot: Ban test key on fused chip.\r\n" ; int64_t arg2
│ │  ││││   0x00139744      bl    fcn.0014c9f8
│ │  ││││   0x00139748      mov   x0, x21                              ; int64_t arg1
│ │  ││││   0x0013974c      bl    fcn.002049dc
│ │  ││││   ; CODE XREF from fcn.001395ec @ 0x139730
│ │  │││└─> 0x00139750      mov   w20, -1
│ │  │││    ; CODE XREFS from fcn.001395ec @ 0x1396c0, 0x1396f0, 0x139704
│ └──└└└──> 0x00139754      mov   w0, w20
│           0x00139758      ldp   x20, x19, [var_10h]
│           0x0013975c      ldr   x21, [var_20h]                       ; aav.0x00000050
│                                                                      ; [0x50:4]=0xd2810600
│           0x00139760      ldp   x29, x30, [var_30h]
│           0x00139764      add   sp, sp, 0x70
│           0x00139768      autibsp
└           0x0013976c      ret
            ; CALL XREF from fcn.0016d638 @ 0x16d9fc
