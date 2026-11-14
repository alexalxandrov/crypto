┌ fcn.00188654(int64_t arg1, int64_t arg2, int64_t arg_20h);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg int64_t arg2 @ x1
│       ╎   ; var int64_t var_30h @ stack - 0x30
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   ; arg int64_t arg_20h @ stack + 0x20
│       ╎   0x00188654      pacibsp
│       ╎   0x00188658      stp   x29, x30, [var_30h]!
│       ╎   0x0018865c      str   x21, [var_20h]
│       ╎   0x00188660      stp   x20, x19, [var_10h]
│       ╎   0x00188664      mov   x29, sp
│       ╎   0x00188668      adrp  x21, 0x5a6000
│       ╎   0x0018866c      mov   x19, x1                              ; arg2
│       ╎   0x00188670      add   x21, x21, 0x9dc
│       ╎   0x00188674      mov   w20, w0                              ; arg1
│       ╎   0x00188678      strb  w0, [x21, 0x20]                      ; arg1
│       ╎   0x0018867c      mov   w1, 0x20
│       ╎   0x00188680      mov   x0, x19                              ; int64_t arg1
│       ╎   0x00188684      bl    fcn.0014dcc4
│       ╎   0x00188688      mov   x2, x0                               ; int64_t arg3
│       ╎   0x0018868c      mov   x0, x21                              ; int64_t arg1
│       ╎   0x00188690      mov   x1, x19                              ; int64_t arg2
│       ╎   0x00188694      bl    fcn.0014d60c
│       ╎   0x00188698      mov   w0, w20
│       ╎   0x0018869c      mov   x1, x19                              ; int64_t arg2
│       ╎   0x001886a0      bl    fcn.00179508
│      ┌──< 0x001886a4      cbz   w0, 0x1886cc
│      │╎   0x001886a8      ldp   x20, x19, [arg_20h]
│      │╎   0x001886ac      ldr   x21, [var_20h]                       ; aav.0x00000010
│      │╎                                                              ; [0x10:4]=0x14000004
│      │╎   0x001886b0      adrp  x0, 0x27d000
│      │╎   0x001886b4      adrp  x1, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│      │╎   0x001886b8      add   x0, x0, 0x465
│      │╎   0x001886bc      add   x1, x1, 0x151
│      │╎   0x001886c0      ldp   x29, x30, [sp], 0x30
│      │╎   0x001886c4      autibsp
│      │└─< 0x001886c8      b     fcn.0014c9f8
│      └──> 0x001886cc      ldp   x20, x19, [var_10h]
│           0x001886d0      ldr   x21, [var_20h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x001886d4      ldp   x29, x30, [sp], 0x30
│           0x001886d8      autibsp
└           0x001886dc      ret
        ╎   ; CALL XREFS from fcn.0010ffcc @ 0x11007c, 0x1100a0, 0x1100c4, 0x1100e8, 0x11016c
