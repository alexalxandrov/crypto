┌ fcn.0016e57c(int64_t arg1, unsigned long arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg unsigned long arg2 @ x1
│       ╎   ; arg int64_t arg3 @ x2
│       ╎   ; arg int64_t arg4 @ x3
│       ╎   ; arg int64_t arg5 @ x4
│       ╎   ; arg int64_t arg6 @ x5
│       ╎   ; arg int64_t arg7 @ x6
│       ╎   ; arg int64_t arg8 @ x7
│       ╎   0x0016e57c      pacibsp
│      ┌──< 0x0016e580      cbz   w1, 0x16e59c
│      │╎   0x0016e584      cmp   w1, 1                                ; arg2
│     ┌───< 0x0016e588      b.ne  0x16e5b4
│     ││╎   0x0016e58c      adrp  x8, 0x59a000
│     ││╎   0x0016e590      ldr   w9, [x8, 0x3d4]                      ; [0x3d4:4]=0xb94002c9
│     ││╎   0x0016e594      orr   w9, w9, w0
│    ┌────< 0x0016e598      b     0x16e5a8
│    ││└──> 0x0016e59c      adrp  x8, 0x59a000
│    ││ ╎   0x0016e5a0      ldr   w9, [x8, 0x3d4]                      ; [0x3d4:4]=0xb94002c9
│    ││ ╎   0x0016e5a4      bic   w9, w9, w0                           ; arg1
│    ││ ╎   ; CODE XREF from fcn.0016e57c @ 0x16e598
│    └────> 0x0016e5a8      str   w9, [x8, 0x3d4]
│     │ ╎   0x0016e5ac      autibsp
│     │ ╎   0x0016e5b0      ret
│     └───> 0x0016e5b4      adrp  x0, 0x268000
│       ╎   0x0016e5b8      adrp  x1, 0x24a000
│       ╎   0x0016e5bc      add   x0, x0, 0xf31
│       ╎   0x0016e5c0      add   x1, x1, 0x79a
│       ╎   0x0016e5c4      autibsp
└       └─< 0x0016e5c8      b     fcn.0014c9f8
            ; CALL XREF from fcn.0016f3e0 @ 0x16fcc8
