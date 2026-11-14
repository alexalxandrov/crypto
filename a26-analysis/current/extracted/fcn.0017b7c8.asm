┌ fcn.0017b7c8(unsigned long arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg unsigned long arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017b7c8      pacibsp
│           0x0017b7cc      stp   x29, x30, [var_20h]!
│           0x0017b7d0      stp   x20, x19, [var_10h]
│           0x0017b7d4      mov   x29, sp
│           0x0017b7d8      cmp   w0, 1                                ; arg1
│           0x0017b7dc      adrp  x20, 0x59f000
│       ┌─< 0x0017b7e0      b.lt  0x17b87c
│       │   0x0017b7e4      ldr   w8, [x20, 0xc7c]                     ; [0xc7c:4]=0x6b6e5500
│       │   0x0017b7e8      cmn   w8, 1
│      ┌──< 0x0017b7ec      b.eq  0x17b858
│      ││   0x0017b7f0      adrp  x0, 0x248000
│      ││   0x0017b7f4      add   w8, w8, 1
│      ││   0x0017b7f8      add   x0, x0, 0x54a                        ; int64_t arg1
│      ││   0x0017b7fc      str   w8, [x20, 0xc7c]
│      ││   0x0017b800      bl    fcn.001758fc
│     ┌───< 0x0017b804      cbz   x0, 0x17b870
│     │││   0x0017b808      ldrb  w2, [x0, 0x14]!                      ; aav.0x00000014
│     │││                                                              ; [0x14:4]=0
│     │││   0x0017b80c      adrp  x19, 0x59f000
│     │││   0x0017b810      add   x19, x19, 0xa2c
│     │││   0x0017b814      mov   w1, 2
│     │││   0x0017b818      ldrb  w8, [x0, 3]                          ; [0x3:4]=0x48776b00
│     │││   0x0017b81c      ldrb  w9, [x0, 2]                          ; [0x2:4]=0x776b0000
│     │││   0x0017b820      ldrb  w10, [x0, 1]                         ; [0x1:4]=0x6b000000
│     │││   0x0017b824      mov   w3, 0xa84
│     │││   0x0017b828      mov   x0, x19                              ; int64_t arg1
│     │││   0x0017b82c      bfi   w9, w8, 8, 8
│     │││   0x0017b830      bfi   w2, w10, 8, 8
│     │││   0x0017b834      bfi   w2, w9, 0x10, 0x10
│     │││   0x0017b838      bl    fcn.001392bc
│     │││   0x0017b83c      ldr   w2, [x19, 0xc]                       ; aav.0x0000000c
│     │││                                                              ; [0xc:4]=0
│     │││   0x0017b840      adrp  x0, 0x241000
│     │││   0x0017b844      adrp  x1, 0x27a000
│     │││   0x0017b848      add   x0, x0, 0x5f0                        ; int64_t arg1
│     │││   0x0017b84c      add   x1, x1, 0xfbb                        ; int64_t arg2
│     │││   0x0017b850      bl    fcn.0014c9f8
│    ┌────< 0x0017b854      b     0x17b87c
│    ││└──> 0x0017b858      adrp  x0, 0x23a000
│    ││ │   0x0017b85c      adrp  x1, 0x27a000
│    ││ │   0x0017b860      add   x0, x0, 0xfb9                        ; int64_t arg1
│    ││ │   0x0017b864      add   x1, x1, 0xfa9                        ; int64_t arg2
│    ││ │   0x0017b868      bl    fcn.0014c9f8
│    ││┌──< 0x0017b86c      b     0x17b87c
│    │└───> 0x0017b870      adrp  x0, 0x23a000
│    │ ││   0x0017b874      add   x0, x0, 0xfde                        ; int64_t arg1
│    │ ││   0x0017b878      bl    fcn.0014c9f8
│    │ ││   ; CODE XREFS from fcn.0017b7c8 @ 0x17b854, 0x17b86c
│    └─└└─> 0x0017b87c      ldr   w0, [x20, 0xc7c]                     ; [0xc7c:4]=0x6b6e5500
│           0x0017b880      ldp   x20, x19, [var_10h]
│           0x0017b884      ldp   x29, x30, [sp], 0x20
│           0x0017b888      autibsp
└           0x0017b88c      ret
            ; XREFS: CALL 0x0017bc64  CALL 0x0017bc80  CALL 0x0017c6c8
            ; XREFS: CALL 0x0017c70c  CALL 0x0017c8cc  CALL 0x0017c8e8
