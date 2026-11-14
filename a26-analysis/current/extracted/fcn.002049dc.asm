┌ fcn.002049dc(int64_t arg1, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg int64_t arg5 @ x4
│       ╎   ; arg int64_t arg6 @ x5
│       ╎   ; arg int64_t arg7 @ x6
│       ╎   ; arg int64_t arg8 @ x7
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x002049dc      pacibsp
│       ╎   0x002049e0      stp   x29, x30, [var_20h]!
│       ╎   0x002049e4      str   x19, [var_10h]
│       ╎   0x002049e8      mov   x29, sp
│       ╎   0x002049ec      ldr   w8, [x0, 0x10]                       ; aav.0x00000010
│       ╎                                                              ; [0x10:4]=0x14000004 ; arg1
│       ╎   0x002049f0      subs  w8, w8, 1
│       ╎   0x002049f4      str   w8, [x0, 0x10]                       ; arg1
│      ┌──< 0x002049f8      b.ne  0x204a40
│      │╎   0x002049fc      ldr   x3, [x0, 0x18]                       ; aav.0x00000018
│      │╎                                                              ; [0x18:4]=0x7600000 ; int64_t arg4
│      │╎   0x00204a00      mov   x19, x0                              ; arg1
│      │╎   0x00204a04      adrp  x0, 0x240000
│      │╎   0x00204a08      adrp  x1, 0x24e000
│      │╎   0x00204a0c      add   x0, x0, 0xc4                         ; int64_t arg1
│      │╎   0x00204a10      add   x1, x1, 0x56c                        ; int64_t arg2
│      │╎   0x00204a14      mov   w2, 0x12d
│      │╎   0x00204a18      bl    fcn.0014c9f8
│      │╎   0x00204a1c      ldr   x8, [x19, aav.0x00000108]            ; [0x108:4]=0x940004f5
│     ┌───< 0x00204a20      cbz   x8, 0x204a2c
│     ││╎   0x00204a24      mov   x0, x19
│     ││╎   0x00204a28      blr   x8
│     └───> 0x00204a2c      ldr   x0, [x19, 0x18]                      ; aav.0x00000018
│      │╎                                                              ; [0x18:4]=0x7600000
│      │╎   0x00204a30      ldr   x19, [var_10h]                       ; aav.0x00000010
│      │╎                                                              ; [0x10:4]=0x14000004
│      │╎   0x00204a34      ldp   x29, x30, [sp], 0x20
│      │╎   0x00204a38      autibsp
│      │└─< 0x00204a3c      b     fcn.001424a4
│      └──> 0x00204a40      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00204a44      ldp   x29, x30, [sp], 0x20
│           0x00204a48      autibsp
└           0x00204a4c      ret
            ; XREFS: CALL 0x0011cd34  CALL 0x0011cdfc  CALL 0x0011cec0
            ; XREFS: CALL 0x0011cf90  CALL 0x0011d058  CALL 0x00125bdc
            ; XREFS: CALL 0x00125d64  CALL 0x00126558
