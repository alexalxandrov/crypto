┌ fcn.00177854(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg int64_t arg2 @ x1
│       ╎   ; arg int64_t arg3 @ x2
│       ╎   ; arg int64_t arg4 @ x3
│       ╎   ; var int64_t var_30h @ stack - 0x30
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x00177854      pacibsp
│       ╎   0x00177858      stp   x29, x30, [var_30h]!
│       ╎   0x0017785c      stp   x22, x21, [var_20h]
│       ╎   0x00177860      stp   x20, x19, [var_10h]
│       ╎   0x00177864      mov   x29, sp
│       ╎   0x00177868      mov   x20, x0                              ; arg1
│       ╎   0x0017786c      adrp  x0, 0x260000
│       ╎   0x00177870      add   x0, x0, 0x425                        ; int64_t arg1
│       ╎   0x00177874      bl    fcn.001758fc
│       ╎   0x00177878      mov   x19, x0
│       ╎   0x0017787c      bl    fcn.0017b1f8
│      ┌──< 0x00177880      cbz   w0, 0x1778fc
│      │╎   0x00177884      adrp  x1, 0x246000
│      │╎   0x00177888      add   x1, x1, 0x20d                        ; int64_t arg2
│      │╎   0x0017788c      mov   w0, 0x13
│      │╎   0x00177890      bl    fcn.00188654
│      │╎   0x00177894      mov   w0, wzr
│      │╎   0x00177898      bl    fcn.0013d670
│      │╎   0x0017789c      bl    fcn.0013df98
│      │╎   0x001778a0      adrp  x19, 0x269000
│      │╎   0x001778a4      add   x19, x19, 0x191
│      │╎   0x001778a8      mov   w3, w0
│      │╎   0x001778ac      mov   w0, 0xa
│      │╎   0x001778b0      mov   w1, 0x30c
│      │╎   0x001778b4      mov   w2, 0xff0000
│      │╎   0x001778b8      mov   w4, 2
│      │╎   0x001778bc      mov   x5, x19                              ; int64_t arg6
│      │╎   0x001778c0      bl    fcn.0013e0a8
│      │╎   0x001778c4      mov   x0, x19                              ; int64_t arg1
│      │╎   0x001778c8      bl    fcn.0014c9f8
│      │╎   0x001778cc      bl    fcn.000f9608
│      │╎   0x001778d0      mov   w0, 4
│      │╎   0x001778d4      mov   w3, 1
│      │╎   0x001778d8      mov   w1, wzr
│      │╎   0x001778dc      mov   x2, xzr                              ; int64_t arg3
│      │╎   0x001778e0      bl    fcn.001503d0
│      │╎   ; CODE XREF from fcn.00177854 @ 0x1779c8
│     ┌───> 0x001778e4      ldp   x20, x19, [var_10h]
│     ╎│╎   0x001778e8      ldp   x22, x21, [var_20h]
│     ╎│╎   0x001778ec      mov   w0, -1
│     ╎│╎   0x001778f0      ldp   x29, x30, [sp], 0x30
│     ╎│╎   0x001778f4      autibsp
│     ╎│╎   0x001778f8      ret
│    ┌─└──> 0x001778fc      cbz   x19, 0x1779b4
│    │╎ ╎   0x00177900      mov   x22, x19
│    │╎ ╎   0x00177904      ldrb  w8, [x22, 0x14]!                     ; aav.0x00000014
│    │╎ ╎                                                              ; [0x14:4]=0
│    │╎ ╎   0x00177908      ldrb  w9, [x19, 0x15]                      ; [0x15:4]=0
│    │╎ ╎   0x0017790c      mov   x12, x19
│    │╎ ╎   0x00177910      ldrb  w10, [x22, 3]                        ; [0x3:4]=0x48776b00
│    │╎ ╎   0x00177914      ldrb  w11, [x22, 2]                        ; [0x2:4]=0x776b0000
│    │╎ ╎   0x00177918      bfi   w8, w9, 8, 8
│    │╎ ╎   0x0017791c      bfi   w11, w10, 8, 8
│    │╎ ╎   0x00177920      bfi   w8, w11, 0x10, 0x10
│    │╎ ╎   0x00177924      add   w9, w8, 7
│    │╎ ╎   0x00177928      cmp   w8, 0
│    │╎ ╎   0x0017792c      csel  w8, w9, w8, lt
│    │╎ ╎   0x00177930      asr   w8, w8, 3
│    │╎ ╎   0x00177934      str   w8, [x20]
│    │╎ ╎   0x00177938      ldrb  w20, [x12, 0x1c]!                    ; aav.0x0000001c
│    │╎ ╎                                                              ; [0x1c:4]=0
│    │╎ ╎   0x0017793c      ldrb  w8, [x22, 3]                         ; [0x3:4]=0x48776b00
│    │╎ ╎   0x00177940      ldrb  w9, [x22, 2]                         ; [0x2:4]=0x776b0000
│    │╎ ╎   0x00177944      ldrb  w10, [x19, 0x15]                     ; [0x15:4]=0
│    │╎ ╎   0x00177948      ldrb  w11, [x12, 3]                        ; [0x3:4]=0x48776b00
│    │╎ ╎   0x0017794c      ldrb  w13, [x12, 2]                        ; [0x2:4]=0x776b0000
│    │╎ ╎   0x00177950      ldrb  w12, [x12, 1]                        ; [0x1:4]=0x6b000000
│    │╎ ╎   0x00177954      ldrb  w21, [x22]
│    │╎ ╎   0x00177958      bfi   w9, w8, 8, 8
│    │╎ ╎   0x0017795c      bfi   w13, w11, 8, 8
│    │╎ ╎   0x00177960      bfi   w20, w12, 8, 8
│    │╎ ╎   0x00177964      bfi   w20, w13, 0x10, 0x10
│    │╎ ╎   0x00177968      bfi   w21, w10, 8, 8
│    │╎ ╎   0x0017796c      mov   w0, w20
│    │╎ ╎   0x00177970      bfi   w21, w9, 0x10, 0x10
│    │╎ ╎   0x00177974      bl    fcn.0013902c
│    │╎ ╎   0x00177978      ldrb  w8, [x22, 3]                         ; [0x3:4]=0x48776b00
│    │╎ ╎   0x0017797c      ldrb  w9, [x22, 2]                         ; [0x2:4]=0x776b0000
│    │╎ ╎   0x00177980      ldrb  w10, [x19, 0x15]                     ; [0x15:4]=0
│    │╎ ╎   0x00177984      ldrb  w11, [x22]
│    │╎ ╎   0x00177988      mov   w1, w21
│    │╎ ╎   0x0017798c      bfi   w9, w8, 8, 8
│    │╎ ╎   0x00177990      ldp   x22, x21, [var_20h]
│    │╎ ╎   0x00177994      bfi   w11, w10, 8, 8
│    │╎ ╎   0x00177998      bfi   w11, w9, 0x10, 0x10
│    │╎ ╎   0x0017799c      sub   w2, w0, w11
│    │╎ ╎   0x001779a0      mov   w0, w20
│    │╎ ╎   0x001779a4      ldp   x20, x19, [var_10h]
│    │╎ ╎   0x001779a8      ldp   x29, x30, [sp], 0x30
│    │╎ ╎   0x001779ac      autibsp
│    │╎ └─< 0x001779b0      b     fcn.001394b8
│    └────> 0x001779b4      adrp  x0, 0x256000
│     ╎     0x001779b8      adrp  x1, 0x24a000
│     ╎     0x001779bc      add   x0, x0, 0x1a0                        ; int64_t arg1
│     ╎     0x001779c0      add   x1, x1, 0x959                        ; int64_t arg2
│     ╎     0x001779c4      bl    fcn.0014c9f8
└     └───< 0x001779c8      b     0x1778e4
