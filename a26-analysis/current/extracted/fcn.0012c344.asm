┌ fcn.0012c344(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012c344      pacibsp
│           0x0012c348      stp   x29, x30, [var_20h]!
│           0x0012c34c      str   x19, [var_10h]
│           0x0012c350      mov   x29, sp
│           0x0012c354      bl    fcn.00126b3c
│       ┌─< 0x0012c358      cbz   x0, 0x12c380
│       │   0x0012c35c      mov   w1, 0x10
│       │   0x0012c360      mov   w2, wzr
│       │   0x0012c364      mov   x19, x0
│       │   0x0012c368      str   wzr, [x0, 0x90]
│       │   0x0012c36c      bl    fcn.001283b8
│      ┌──< 0x0012c370      cbz   w0, 0x12c388
│      ││   0x0012c374      adrp  x0, 0x251000
│      ││   0x0012c378      add   x0, x0, 0xda                         ; int64_t arg1
│      ││   0x0012c37c      bl    fcn.0014c72c
│      │└─> 0x0012c380      mov   w0, 2
│      │┌─< 0x0012c384      b     0x12c394
│      └──> 0x0012c388      ldr   w8, [x19, 0x214]                     ; [0x214:4]=0x94001731
│       │   0x0012c38c      cmp   w8, 0
│       │   0x0012c390      cset  w0, ne
│       │   ; CODE XREF from fcn.0012c344 @ 0x12c384
│       └─> 0x0012c394      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0012c398      ldp   x29, x30, [sp], 0x20
│           0x0012c39c      autibsp
└           0x0012c3a0      ret
            ; CALL XREF from fcn.00138ddc @ 0x138ef0
