┌ fcn.00138ddc(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_10h @ stack - 0x10
│           0x00138ddc      pacibsp
│           0x00138de0      stp   x29, x30, [var_10h]!
│           0x00138de4      mov   x29, sp
│           0x00138de8      adrp  x8, 0x572000
│           0x00138dec      str   w0, [x8, 0x5e8]                      ; arg1
│       ┌─< 0x00138df0      cbz   w0, 0x138e80
│       │   0x00138df4      cmp   w0, 1
│      ┌──< 0x00138df8      b.ne  0x138ec8
│      ││   0x00138dfc      bl    fcn.0012b810
│      ││   0x00138e00      bl    fcn.0012c4dc
│     ┌───< 0x00138e04      cbz   w0, 0x138ed4
│     │││   0x00138e08      mov   w1, w0
│     │││   0x00138e0c      adrp  x0, 0x23a000
│     │││   0x00138e10      add   x0, x0, 0x7b3                        ; int64_t arg1
│     │││   0x00138e14      bl    fcn.0014c9f8
│     │││   ; CODE XREF from fcn.00138ddc @ 0x138ef4
│  ┌┌┌────> 0x00138e18      adrp  x0, 0x243000
│  ╎╎╎│││   0x00138e1c      add   x0, x0, 0x272                        ; int64_t arg1
│  ╎╎╎│││   0x00138e20      bl    fcn.0014c9f8
│  ╎╎╎│││   0x00138e24      bl    fcn.0012c624
│  ╎╎╎│││   0x00138e28      mov   w0, 1
│  ╎╎╎│││   0x00138e2c      bl    fcn.00126898
│  ╎╎╎│││   0x00138e30      cmp   w0, 3
│ ┌───────< 0x00138e34      b.eq  0x138e94
│ │╎╎╎│││   0x00138e38      mov   w0, 2
│ │╎╎╎│││   0x00138e3c      bl    fcn.00126898
│ │╎╎╎│││   0x00138e40      cmp   w0, 3
│ ────────< 0x00138e44      b.eq  0x138e94
│ │╎╎╎│││   0x00138e48      mov   w0, 3
│ │╎╎╎│││   0x00138e4c      bl    fcn.00126898
│ │╎╎╎│││   0x00138e50      cmp   w0, 3
│ ────────< 0x00138e54      b.eq  0x138e94
│ │╎╎╎│││   0x00138e58      mov   w0, 4
│ │╎╎╎│││   0x00138e5c      bl    fcn.00126898
│ │╎╎╎│││   0x00138e60      cmp   w0, 3
│ ────────< 0x00138e64      b.eq  0x138e94
│ │╎╎╎│││   0x00138e68      cmp   w0, 4
│ ────────< 0x00138e6c      b.ne  0x138ea8
│ │╎╎╎│││   0x00138e70      adrp  x0, 0x27c000
│ │╎╎╎│││   0x00138e74      add   x0, x0, 0xaae                        ; int64_t arg1
│ │╎╎╎│││   0x00138e78      bl    fcn.0014c9f8
│ ────────< 0x00138e7c      b     0x138ea8
│ │╎╎╎││└─> 0x00138e80      adrp  x0, 0x245000
│ │╎╎╎││    0x00138e84      add   x0, x0, 0x9f1
│ │╎╎╎││    0x00138e88      ldp   x29, x30, [sp], 0x10
│ │╎╎╎││    0x00138e8c      autibsp
│ │╎╎╎││┌─< 0x00138e90      b     fcn.0014c9f8
│ └───────> 0x00138e94      adrp  x0, 0x247000
│  ╎╎╎│││   0x00138e98      add   x0, x0, 0xcbb                        ; int64_t arg1
│  ╎╎╎│││   0x00138e9c      bl    fcn.0014c9f8
│  ╎╎╎│││   0x00138ea0      mov   w0, wzr
│  ╎╎╎│││   0x00138ea4      bl    fcn.001268b8
│  ╎╎╎│││   ; CODE XREF from fcn.00138ddc @ 0x138e7c
│ ────────> 0x00138ea8      bl    fcn.0012bbe0
│ ┌───────< 0x00138eac      cbz   w0, 0x138ec8
│ │╎╎╎│││   0x00138eb0      mov   w1, w0
│ │╎╎╎│││   0x00138eb4      adrp  x0, 0x255000
│ │╎╎╎│││   0x00138eb8      add   x0, x0, 0xa80
│ │╎╎╎│││   0x00138ebc      ldp   x29, x30, [sp], 0x10
│ │╎╎╎│││   0x00138ec0      autibsp
│ ────────< 0x00138ec4      b     fcn.0014c9f8
│ └────└──> 0x00138ec8      ldp   x29, x30, [sp], 0x10
│  ╎╎╎│ │   0x00138ecc      autibsp
│  ╎╎╎│ │   0x00138ed0      ret
│  ╎╎╎└───> 0x00138ed4      bl    fcn.000f2f28
│  └──────< 0x00138ed8      cbz   w0, 0x138e18
│   ╎╎  │   0x00138edc      bl    fcn.0012c344
│   └─────< 0x00138ee0      cbnz  w0, 0x138e18
│    ╎  │   0x00138ee4      adrp  x0, 0x262000
│    ╎  │   0x00138ee8      add   x0, x0, 0xa80                        ; int64_t arg2
│    ╎  │   0x00138eec      bl    fcn.0014c9f8
│    ╎  │   0x00138ef0      bl    fcn.0012c3a4
└    └────< 0x00138ef4      b     0x138e18
        ╎   ; CALL XREF from fcn.0022d7ec @ 0x22d81c
