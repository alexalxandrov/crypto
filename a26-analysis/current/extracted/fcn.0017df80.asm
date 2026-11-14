┌ fcn.0017df80(int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7);
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017df80      pacibsp
│           0x0017df84      stp   x29, x30, [var_10h]!
│           0x0017df88      mov   x29, sp
│           0x0017df8c      adrp  x0, 0x5a0000
│           0x0017df90      adrp  x2, 0x26f000
│           0x0017df94      add   x0, x0, 0x64c                        ; int64_t arg1
│           0x0017df98      add   x2, x2, 0x47b                        ; int64_t arg4
│           0x0017df9c      mov   w1, 7
│           0x0017dfa0      bl    fcn.0014b120
│           0x0017dfa4      bl    fcn.0017dfdc
│           0x0017dfa8      mov   w0, 3
│           0x0017dfac      bl    fcn.001895dc
│       ┌─< 0x0017dfb0      cbnz  w0, 0x17dfcc
│       │   0x0017dfb4      adrp  x0, 0x5a0000
│       │   0x0017dfb8      adrp  x2, 0x259000
│       │   0x0017dfbc      add   x0, x0, 0x64c                        ; int64_t arg1
│       │   0x0017dfc0      add   x2, x2, 0xc35                        ; int64_t arg4
│       │   0x0017dfc4      mov   w1, 6
│       │   0x0017dfc8      bl    fcn.0014b120
│       └─> 0x0017dfcc      mov   w0, wzr
│           0x0017dfd0      ldp   x29, x30, [sp], 0x10
│           0x0017dfd4      autibsp
└           0x0017dfd8      ret
            ; CALL XREF from fcn.0017df80 @ 0x17dfa4
