┌ fcn.0012c3dc(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012c3dc      pacibsp
│           0x0012c3e0      stp   x29, x30, [var_20h]!
│           0x0012c3e4      stp   x20, x19, [var_10h]
│           0x0012c3e8      mov   x29, sp
│           0x0012c3ec      mov   w19, w0                              ; arg1
│           0x0012c3f0      bl    fcn.00126b3c
│           0x0012c3f4      bl    fcn.00126b3c
│       ┌─< 0x0012c3f8      cbz   x0, 0x12c420
│       │   0x0012c3fc      mov   w1, 0x10
│       │   0x0012c400      mov   w2, wzr
│       │   0x0012c404      mov   x20, x0
│       │   0x0012c408      str   wzr, [x0, 0x90]
│       │   0x0012c40c      bl    fcn.001283b8
│      ┌──< 0x0012c410      cbz   w0, 0x12c42c
│      ││   0x0012c414      adrp  x0, 0x251000
│      ││   0x0012c418      add   x0, x0, 0xda                         ; int64_t arg1
│      ││   0x0012c41c      bl    fcn.0014c72c
│      │└─> 0x0012c420      mov   w2, 2
│      │┌─< 0x0012c424      cbnz  w19, 0x12c43c
│     ┌───< 0x0012c428      b     0x12c440
│     │└──> 0x0012c42c      ldr   w8, [x20, 0x214]                     ; [0x214:4]=0x94001731
│     │ │   0x0012c430      cmp   w8, 0
│     │ │   0x0012c434      cset  w2, ne
│     │┌──< 0x0012c438      cbz   w19, 0x12c440
│    ┌──└─> 0x0012c43c      cbnz  w2, 0x12c480
│    │││    ; CODE XREF from fcn.0012c3dc @ 0x12c428
│    │└└──> 0x0012c440      orr   w8, w19, w2
│    │  ┌─< 0x0012c444      cbz   w8, 0x12c480
│    │  │   0x0012c448      bl    fcn.00126b3c
│    │ ┌──< 0x0012c44c      cbz   w19, 0x12c4a0
│    │ ││   0x0012c450      adrp  x8, 0x2c8000
│    │ ││   0x0012c454      add   x8, x8, 0x594
│    │ ││   0x0012c458      ldrb  w8, [x8, 0x4d]                       ; [0x4d:4]=0xaa0303
│    │ ││   0x0012c45c      mov   w9, 1
│    │ ││   0x0012c460      mov   w1, 0xf
│    │ ││   0x0012c464      mov   w2, wzr
│    │ ││   0x0012c468      add   x8, x0, x8, lsl 2                    ; 0x2c
│    │ ││                                                              ; aav.0x0000002c
│    │ ││   0x0012c46c      str   w9, [x8, aav.0x000001e8]
│    │ ││   0x0012c470      bl    fcn.001283b8
│    │ ││   0x0012c474      mov   w19, w0
│    │┌───< 0x0012c478      cbnz  w0, 0x12c4b0
│   ┌─────< 0x0012c47c      b     0x12c4c8
│   │└──└─> 0x0012c480      adrp  x0, 0x257000
│   │ ││    0x0012c484      adrp  x1, 0x245000
│   │ ││    0x0012c488      add   x0, x0, 0x6f4                        ; int64_t arg1
│   │ ││    0x0012c48c      add   x1, x1, 0x948                        ; int64_t arg2
│   │ ││    0x0012c490      mov   w3, w19
│   │ ││    0x0012c494      bl    fcn.0014c9f8
│   │ ││    0x0012c498      mov   w19, wzr
│   │ ││┌─< 0x0012c49c      b     0x12c4c8
│   │ │└──> 0x0012c4a0      adrp  x0, 0x27a000
│   │ │ │   0x0012c4a4      add   x0, x0, 0x7d5                        ; int64_t arg1
│   │ │ │   0x0012c4a8      bl    fcn.0014c9f8
│   │ │ │   0x0012c4ac      mov   w19, 1
│   │ └───> 0x0012c4b0      adrp  x0, 0x23a000
│   │   │   0x0012c4b4      adrp  x1, 0x245000
│   │   │   0x0012c4b8      add   x0, x0, 0x75a                        ; int64_t arg1
│   │   │   0x0012c4bc      add   x1, x1, 0x948                        ; int64_t arg2
│   │   │   0x0012c4c0      mov   w2, w19
│   │   │   0x0012c4c4      bl    fcn.0014c9f8
│   │   │   ; CODE XREFS from fcn.0012c3dc @ 0x12c47c, 0x12c49c
│   └───└─> 0x0012c4c8      mov   w0, w19
│           0x0012c4cc      ldp   x20, x19, [var_10h]
│           0x0012c4d0      ldp   x29, x30, [sp], 0x20
│           0x0012c4d4      autibsp
└           0x0012c4d8      ret
            ; CALL XREF from fcn.00138ddc @ 0x138e00
