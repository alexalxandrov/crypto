┌ fcn.0013deb8(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_498h @ stack - 0x498
│           ; var int64_t var_480h @ stack - 0x480
│           ; var int64_t var_440h @ stack - 0x440
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0013deb8      pacibsp
│           0x0013debc      stp   x29, x30, [var_40h]!
│           0x0013dec0      stp   x28, x23, [var_30h]
│           0x0013dec4      stp   x22, x21, [var_20h]
│           0x0013dec8      stp   x20, x19, [var_10h]
│           0x0013decc      mov   x29, sp
│           0x0013ded0      sub   sp, sp, 0x4e0
│           0x0013ded4      mov   w21, w2                              ; arg3
│           0x0013ded8      mov   w22, w1                              ; arg2
│           0x0013dedc      mov   w23, w0                              ; arg1
│           0x0013dee0      add   x0, var_aav.0x00000440               ; int64_t arg1
│           0x0013dee4      mov   w2, aav.0x00000400
│           0x0013dee8      mov   w1, wzr
│           0x0013deec      mov   x19, x4                              ; arg5
│           0x0013def0      mov   w20, w3                              ; arg4
│           0x0013def4      stp   x5, x6, [var_498h]                   ; arg7
│           0x0013def8      str   x7, [var_498h + 0x10]                ; arg8
│           0x0013defc      stp   q0, q1, [sp]
│           0x0013df00      stp   q2, q3, [sp, 0x20]
│           0x0013df04      stp   q4, q5, [sp, 0x40]
│           0x0013df08      stp   q6, q7, [sp, 0x60]
│           0x0013df0c      bl    fcn.0014d8fc
│           0x0013df10      mov   x8, -0x18
│           0x0013df14      mov   x9, sp
│           0x0013df18      add   x10, var_498h
│           0x0013df1c      movk  x8, 0xff80, lsl 32
│           0x0013df20      add   x11, var_10h + 0x50
│           0x0013df24      add   x9, x9, 0x80
│           0x0013df28      add   x10, x10, 0x18
│           0x0013df2c      add   x0, var_aav.0x00000440               ; int64_t arg1
│           0x0013df30      add   x3, var_aav.0x00000480               ; int64_t arg4
│           0x0013df34      mov   w1, aav.0x00000400
│           0x0013df38      mov   x2, x19                              ; int64_t arg3
│           0x0013df3c      stp   x9, x8, [var_aav.aav.0x00000480]
│           0x0013df40      stp   x11, x10, [var_aav.aav.0x00000480]
│           0x0013df44      stp   x11, x10, [var_aav.aav.0x00000480]
│           0x0013df48      stp   x9, x8, [var_aav.aav.0x00000480]
│           0x0013df4c      bl    fcn.0014b1d4
│           0x0013df50      add   x0, var_aav.0x00000440               ; int64_t arg1
│           0x0013df54      bl    fcn.0014db58
│           0x0013df58      mov   x4, x0                               ; unsigned long arg7
│           0x0013df5c      add   x5, var_aav.0x00000440               ; int64_t arg_1ch
│           0x0013df60      mov   w6, 2
│           0x0013df64      mov   w0, w23
│           0x0013df68      mov   w1, w22
│           0x0013df6c      mov   w2, w21
│           0x0013df70      mov   w3, w20
│           0x0013df74      bl    fcn.0013d918
│           0x0013df78      mov   w0, wzr
│           0x0013df7c      add   sp, sp, 0x4e0
│           0x0013df80      ldp   x20, x19, [var_10h]
│           0x0013df84      ldp   x22, x21, [var_20h]
│           0x0013df88      ldp   x28, x23, [var_30h]
│           0x0013df8c      ldp   x29, x30, [sp], 0x40
│           0x0013df90      autibsp
└           0x0013df94      ret
            ; XREFS(94)
