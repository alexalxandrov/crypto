┌ fcn.001283b8(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001283b8      pacibsp
│           0x001283bc      stp   x29, x30, [var_30h]!
│           0x001283c0      str   x21, [var_20h]
│           0x001283c4      stp   x20, x19, [var_10h]
│           0x001283c8      mov   x29, sp
│           0x001283cc      mov   w20, w2                              ; arg3
│           0x001283d0      mov   w19, w1                              ; arg2
│           0x001283d4      mov   x21, x0                              ; arg1
│           0x001283d8      bl    fcn.00127bc0
│       ┌─< 0x001283dc      cbz   w0, 0x128460
│       │   0x001283e0      mov   w1, w0
│       │   0x001283e4      adrp  x0, 0x245000
│       │   0x001283e8      add   x0, x0, 0x7bf                        ; int64_t arg1
│       │   0x001283ec      mov   w2, 3
│       │   0x001283f0      bl    fcn.0014c9f8
│       │   0x001283f4      mov   x0, x21                              ; int64_t arg1
│       │   0x001283f8      mov   w1, w19
│       │   0x001283fc      mov   w2, w20
│       │   0x00128400      bl    fcn.00127bc0
│      ┌──< 0x00128404      cbz   w0, 0x128460
│      ││   0x00128408      mov   w1, w0
│      ││   0x0012840c      adrp  x0, 0x245000
│      ││   0x00128410      add   x0, x0, 0x7bf                        ; int64_t arg1
│      ││   0x00128414      mov   w2, 2
│      ││   0x00128418      bl    fcn.0014c9f8
│      ││   0x0012841c      mov   x0, x21                              ; int64_t arg1
│      ││   0x00128420      mov   w1, w19
│      ││   0x00128424      mov   w2, w20
│      ││   0x00128428      bl    fcn.00127bc0
│      ││   0x0012842c      mov   w20, w0
│     ┌───< 0x00128430      cbz   w0, 0x128464
│     │││   0x00128434      adrp  x0, 0x245000
│     │││   0x00128438      add   x0, x0, 0x7bf                        ; int64_t arg1
│     │││   0x0012843c      mov   w2, 1
│     │││   0x00128440      mov   w1, w20
│     │││   0x00128444      bl    fcn.0014c9f8
│     │││   0x00128448      bl    fcn.000f2f28
│    ┌────< 0x0012844c      cbz   w0, 0x128464
│    ││││   0x00128450      mov   w1, 1
│    ││││   0x00128454      mov   w0, w19
│    ││││   0x00128458      bl    fcn.0012c830
│   ┌─────< 0x0012845c      b     0x128464
│   │││└└─> 0x00128460      mov   w20, wzr
│   │││     ; CODE XREF from fcn.001283b8 @ 0x12845c
│   └└└───> 0x00128464      mov   w0, w20
│           0x00128468      ldp   x20, x19, [var_10h]
│           0x0012846c      ldr   x21, [var_20h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00128470      ldp   x29, x30, [sp], 0x30
│           0x00128474      autibsp
└           0x00128478      ret
            ; CALL XREF from fcn.0012b410 @ 0x12b438
