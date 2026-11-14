┌ fcn.00126b3c(int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00126b3c      pacibsp
│           0x00126b40      stp   x29, x30, [var_20h]!
│           0x00126b44      str   x19, [var_10h]
│           0x00126b48      mov   x29, sp
│           0x00126b4c      adrp  x19, 0x570000
│           0x00126b50      ldr   x0, [x19, 0x988]                     ; [0x988:4]=0x42535520 ; " USB Loading Done"
│       ┌─< 0x00126b54      cbnz  x0, 0x126b6c
│       │   0x00126b58      adrp  x0, 0x23c000
│       │   0x00126b5c      add   x0, x0, 0x7d5                        ; int64_t arg1
│       │   0x00126b60      mov   w1, wzr
│       │   0x00126b64      bl    fcn.0014c9f8
│       │   0x00126b68      ldr   x0, [x19, 0x988]                     ; [0x988:4]=0x42535520 ; " USB Loading Done"
│       └─> 0x00126b6c      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00126b70      ldp   x29, x30, [sp], 0x20
│           0x00126b74      autibsp
└           0x00126b78      ret
            ; CALL XREF from fcn.00126e24 @ 0x12712c
            ; CALL XREF from fcn.00127bc0 @ 0x127f88
            ; CALL XREF from fcn.001284a4 @ 0x128568
            ; CALL XREF from fcn.00128a8c @ 0x128b7c
