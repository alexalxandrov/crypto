┌ fcn.0017c904(unsigned long arg1, unsigned long arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg unsigned long arg1 @ x0
│           ; arg unsigned long arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017c904      pacibsp
│           0x0017c908      stp   x29, x30, [var_10h]!
│           0x0017c90c      mov   x29, sp
│           0x0017c910      cmp   w0, 9                                ; arg1
│       ┌─< 0x0017c914      b.eq  0x17c948
│       │   0x0017c918      cmp   w0, 8
│      ┌──< 0x0017c91c      b.eq  0x17c938
│      ││   0x0017c920      cmp   w0, 7
│     ┌───< 0x0017c924      b.ne  0x17c964
│     │││   0x0017c928      adrp  x8, 0x5a0000
│     │││   0x0017c92c      mov   w0, wzr
│     │││   0x0017c930      str   w1, [x8, 0x618]
│    ┌────< 0x0017c934      b     0x17c9f4
│    ││└──> 0x0017c938      adrp  x8, 0x5a0000
│    ││ │   0x0017c93c      mov   w0, wzr
│    ││ │   0x0017c940      str   wzr, [x8, aav.0x0000061c]
│    ││┌──< 0x0017c944      b     0x17c9f4
│    │││└─> 0x0017c948      cmp   w1, 0x71                             ; 'q' ; arg2
│    │││┌─< 0x0017c94c      b.lo  0x17c96c
│    ││││   0x0017c950      adrp  x0, 0x248000
│    ││││   0x0017c954      add   x0, x0, 0x593                        ; int64_t arg1
│    ││││   0x0017c958      bl    fcn.0014c9f8
│    ││││   0x0017c95c      mov   w0, -1
│   ┌─────< 0x0017c960      b     0x17c9f4
│   ││└───> 0x0017c964      mov   w0, wzr
│   ││┌───< 0x0017c968      b     0x17c9f4
│   ││││└─> 0x0017c96c      cmp   w1, 0x60                             ; arg2
│   ││││┌─< 0x0017c970      b.ge  0x17c9ac
│   │││││   0x0017c974      adrp  x8, 0x5a0000
│   │││││   0x0017c978      cmp   w1, 0x40                             ; arg2
│   │││││   0x0017c97c      str   wzr, [x8, 0x62c]                     ; arg1
│  ┌──────< 0x0017c980      b.ge  0x17c9c4
│  ││││││   0x0017c984      adrp  x8, 0x5a0000
│  ││││││   0x0017c988      cmp   w1, 0x20                             ; arg2
│  ││││││   0x0017c98c      str   wzr, [x8, 0x628]                     ; arg1
│ ┌───────< 0x0017c990      b.ge  0x17ca00
│ │││││││   0x0017c994      adrp  x8, 0x5a0000
│ │││││││   0x0017c998      mov   w9, -1
│ │││││││   0x0017c99c      str   wzr, [x8, 0x624]                     ; arg1
│ │││││││   0x0017c9a0      lsl   w8, w9, w1                           ; arg2
│ │││││││   0x0017c9a4      mvn   w8, w8
│ ────────< 0x0017c9a8      b     0x17c9e8
│ ││││││└─> 0x0017c9ac      mov   w8, -1
│ ││││││    0x0017c9b0      lsl   w9, w8, w1                           ; arg2
│ ││││││    0x0017c9b4      mvn   w9, w9
│ ││││││    0x0017c9b8      adrp  x10, 0x5a0000
│ ││││││    0x0017c9bc      str   w9, [x10, 0x62c]
│ ││││││┌─< 0x0017c9c0      b     0x17c9d0
│ │└──────> 0x0017c9c4      mov   w8, -1
│ │ │││││   0x0017c9c8      lsl   w8, w8, w1                           ; arg2
│ │ │││││   0x0017c9cc      mvn   w8, w8
│ │ │││││   ; CODE XREF from fcn.0017c904 @ 0x17c9c0
│ │ ││││└─> 0x0017c9d0      adrp  x9, 0x5a0000
│ │ ││││    0x0017c9d4      str   w8, [x9, 0x628]
│ │ ││││    0x0017c9d8      mov   w8, -1
│ │ ││││    ; CODE XREF from fcn.0017c904 @ 0x17ca0c
│ │ ││││┌─> 0x0017c9dc      adrp  x9, 0x5a0000
│ │ ││││╎   0x0017c9e0      str   w8, [x9, 0x624]
│ │ ││││╎   0x0017c9e4      mov   w8, -1
│ │ ││││╎   ; CODE XREF from fcn.0017c904 @ 0x17c9a8
│ ────────> 0x0017c9e8      mov   w0, wzr                              ; arg1
│ │ ││││╎   0x0017c9ec      adrp  x9, 0x5a0000
│ │ ││││╎   0x0017c9f0      str   w8, [x9, 0x620]
│ │ ││││╎   ; CODE XREFS from fcn.0017c904 @ 0x17c934, 0x17c944, 0x17c960, 0x17c968
│ │ └└└└──> 0x0017c9f4      ldp   x29, x30, [sp], 0x10
│ │     ╎   0x0017c9f8      autibsp
│ │     ╎   0x0017c9fc      ret
│ └───────> 0x0017ca00      mov   w8, -1
│       ╎   0x0017ca04      lsl   w8, w8, w1                           ; arg2
│       ╎   0x0017ca08      mvn   w8, w8
└       └─< 0x0017ca0c      b     0x17c9dc
            ; CALL XREF from fcn.00179c3c @ 0x179c5c
            ; CALL XREF from fcn.0017b450 @ 0x17b4b4
            ; CALL XREF from fcn.0017e384 @ 0x17e3bc
            ; CALL XREF from fcn.00187cf0 @ 0x187d78
