┌ fcn.001758fc(int64_t arg1, int64_t arg5, int64_t arg6, int64_t arg7);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001758fc      pacibsp
│           0x00175900      sub   sp, sp, 0x50
│           0x00175904      stp   x29, x30, [var_30h]
│           0x00175908      stp   x22, x21, [var_20h]
│           0x0017590c      stp   x20, x19, [var_10h]
│           0x00175910      add   x29, sp, 0x20
│           0x00175914      adrp  x21, 0x59d000
│           0x00175918      add   x21, x21, 0xa14
│           0x0017591c      ldrb  w8, [x21, 3]                         ; [0x3:4]=0x48776b00
│           0x00175920      ldrb  w9, [x21, 2]                         ; [0x2:4]=0x776b0000
│           0x00175924      ldrb  w10, [x21, 1]                        ; [0x1:4]=0x6b000000
│           0x00175928      ldrb  w22, [x21]
│           0x0017592c      mov   x19, x0                              ; arg1
│           0x00175930      bfi   x9, x8, 8, 8
│           0x00175934      stp   xzr, xzr, [sp, 0x10]
│           0x00175938      bfi   x22, x10, 8, 8
│           0x0017593c      bfi   x22, x9, 0x10, 0x10
│           0x00175940      stp   xzr, xzr, [sp]
│       ┌─< 0x00175944      cbz   w22, 0x175970
│       │   0x00175948      adrp  x20, 0x59d000
│       │   0x0017594c      add   x20, x20, 0xa50
│      ┌──> 0x00175950      mov   w2, 0x20
│      ╎│   0x00175954      mov   x0, x20                              ; int64_t arg1
│      ╎│   0x00175958      mov   x1, x19                              ; int64_t arg2
│      ╎│   0x0017595c      bl    fcn.0014dbd8
│     ┌───< 0x00175960      cbz   w0, 0x175a04
│     │╎│   0x00175964      subs  x22, x22, 1
│     │╎│   0x00175968      add   x20, x20, 0x84
│     │└──< 0x0017596c      b.ne  0x175950
│     │ └─> 0x00175970      adrp  x2, 0x26d000
│     │     0x00175974      add   x2, x2, 0x5c4                        ; int64_t arg4
│     │     0x00175978      mov   x0, sp                               ; int64_t arg1
│     │     0x0017597c      mov   w1, 0x20
│     │     0x00175980      mov   x3, x19                              ; int64_t arg5
│     │     0x00175984      bl    fcn.0014b120
│     │     0x00175988      adrp  x0, 0x271000
│     │     0x0017598c      adrp  x1, 0x246000
│     │     0x00175990      add   x0, x0, 0xef4                        ; int64_t arg1
│     │     0x00175994      add   x1, x1, 0x1fb                        ; int64_t arg2
│     │     0x00175998      mov   x3, sp                               ; int64_t arg4
│     │     0x0017599c      mov   x2, x19                              ; unsigned long arg3
│     │     0x001759a0      bl    fcn.0014c9f8
│     │     0x001759a4      ldrb  w8, [x21, 3]                         ; [0x3:4]=0x48776b00
│     │     0x001759a8      ldrb  w9, [x21, 2]                         ; [0x2:4]=0x776b0000
│     │     0x001759ac      ldrb  w10, [x21, 1]                        ; [0x1:4]=0x6b000000
│     │     0x001759b0      ldrb  w21, [x21]
│     │     0x001759b4      bfi   x9, x8, 8, 8
│     │     0x001759b8      bfi   x21, x10, 8, 8
│     │     0x001759bc      bfi   x21, x9, 0x10, 0x10
│     │ ┌─< 0x001759c0      cbz   w21, 0x1759fc
│     │ │   0x001759c4      mov   x0, sp                               ; int64_t arg1
│     │ │   0x001759c8      mov   w1, 0x20
│     │ │   0x001759cc      bl    fcn.0014dcc4
│     │ │   0x001759d0      adrp  x19, 0x59d000
│     │ │   0x001759d4      mov   x20, x0
│     │ │   0x001759d8      add   x19, x19, 0xa50
│     │┌──> 0x001759dc      mov   x1, sp                               ; int64_t arg2
│     │╎│   0x001759e0      mov   x0, x19                              ; int64_t arg1
│     │╎│   0x001759e4      mov   x2, x20
│     │╎│   0x001759e8      bl    fcn.0014dbd8
│    ┌────< 0x001759ec      cbz   w0, 0x175a0c
│    ││╎│   0x001759f0      subs  x21, x21, 1
│    ││╎│   0x001759f4      add   x19, x19, 0x84
│    ││└──< 0x001759f8      b.ne  0x1759dc
│    ││ └─> 0x001759fc      mov   x0, xzr
│    ││ ┌─< 0x00175a00      b     0x175a10
│    │└───> 0x00175a04      sub   x0, x20, 0x24
│    │ ┌──< 0x00175a08      b     0x175a10
│    └────> 0x00175a0c      sub   x0, x19, 0x24
│      ││   ; CODE XREFS from fcn.001758fc @ 0x175a00, 0x175a08
│      └└─> 0x00175a10      ldp   x20, x19, [var_10h]
│           0x00175a14      ldp   x22, x21, [var_20h]
│           0x00175a18      ldp   x29, x30, [var_30h]
│           0x00175a1c      add   sp, sp, 0x50
│           0x00175a20      autibsp
└           0x00175a24      ret
            ; CALL XREF from fcn.001551fc @ 0x15538c
