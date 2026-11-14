┌ fcn.0012c3a4(int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012c3a4      pacibsp
│           0x0012c3a8      stp   x29, x30, [var_10h]!
│           0x0012c3ac      mov   x29, sp
│           0x0012c3b0      adrp  x0, 0x240000
│           0x0012c3b4      add   x0, x0, 0xc53                        ; int64_t arg3
│           0x0012c3b8      bl    fcn.0014c9f8
│           0x0012c3bc      bl    fcn.00126b3c
│           0x0012c3c0      adrp  x0, 0x278000
│           0x0012c3c4      add   x0, x0, 0x609                        ; int64_t arg1
│           0x0012c3c8      bl    fcn.0014c9f8
│           0x0012c3cc      mov   w0, wzr
│           0x0012c3d0      ldp   x29, x30, [sp], 0x10
│           0x0012c3d4      autibsp
└           0x0012c3d8      ret
            ; CALL XREF from fcn.0012c4dc @ 0x12c570
            ; CALL XREF from fcn.0018cd68 @ +0xa38
            ; CALL XREF from fcn.0018ec8c @ 0x18ecc0
