┌ fcn.00179e6c(int64_t arg1, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8, int64_t arg_10h);
│     ╎╎╎   ; arg int64_t arg1 @ x0
│     ╎╎╎   ; arg int64_t arg5 @ x4
│     ╎╎╎   ; arg int64_t arg6 @ x5
│     ╎╎╎   ; arg int64_t arg7 @ x6
│     ╎╎╎   ; arg int64_t arg8 @ x7
│     ╎╎╎   ; var int64_t var_20h @ stack - 0x20
│     ╎╎╎   ; var int64_t var_10h @ stack - 0x10
│     ╎╎╎   ; arg int64_t arg_10h @ stack + 0x10
│     ╎╎╎   0x00179e6c      pacibsp
│     ╎╎╎   0x00179e70      stp   x29, x30, [var_20h]!
│     ╎╎╎   0x00179e74      str   x19, [var_10h]
│     ╎╎╎   0x00179e78      mov   x29, sp
│    ┌────< 0x00179e7c      tbnz  w0, 0x1f, 0x179eac
│    │╎╎╎   0x00179e80      mov   w3, w0                               ; arg1
│    │╎╎╎   0x00179e84      cmp   w0, 3                                ; arg1
│   ┌─────< 0x00179e88      b.lt  0x179ebc
│   ││╎╎╎   0x00179e8c      ldr   x19, [arg_10h]                       ; aav.0x00000010
│   ││╎╎╎                                                              ; [0x10:4]=0x14000004
│   ││╎╎╎   0x00179e90      adrp  x0, 0x243000
│   ││╎╎╎   0x00179e94      adrp  x1, 0x254000
│   ││╎╎╎   0x00179e98      add   x0, x0, 0xab1
│   ││╎╎╎   0x00179e9c      add   x1, x1, 0x59
│   ││╎╎╎   0x00179ea0      ldp   x29, x30, [sp], 0x20
│   ││╎╎╎   0x00179ea4      autibsp
│   ││└───< 0x00179ea8      b     fcn.0014c9f8
│   │└────> 0x00179eac      ldr   x19, [var_10h]                       ; aav.0x00000010
│   │  ╎╎                                                              ; [0x10:4]=0x14000004
│   │  ╎╎   0x00179eb0      ldp   x29, x30, [sp], 0x20
│   │  ╎╎   0x00179eb4      autibsp
│   │  ╎╎   0x00179eb8      ret
│   └─────> 0x00179ebc      adrp  x9, 0x59f000
│      ╎╎   0x00179ec0      ldr   w10, [x9, 0xc78]                     ; [0xc78:4]=0xa0d7373 ; "ss\r\n"
│      ╎╎   0x00179ec4      adrp  x11, 0x56f000
│      ╎╎   0x00179ec8      ldr   w11, [x11, 0x4dc]                    ; [0x4dc:4]=0xb900451f
│      ╎╎   0x00179ecc      mov   w8, 1
│      ╎╎   0x00179ed0      lsl   w12, w8, w3
│      ╎╎   0x00179ed4      orr   w10, w10, w12
│      ╎╎   0x00179ed8      add   w12, w3, 4                           ; "kwH!daeh"
│      ╎╎   0x00179edc      cmp   w11, 1
│      ╎╎   0x00179ee0      lsl   w12, w8, w12
│      ╎╎   0x00179ee4      add   w11, w3, 8                           ; "daeh"
│      ╎╎   0x00179ee8      csel  w12, w12, wzr, eq
│      ╎╎   0x00179eec      orr   w10, w10, w12
│      ╎╎   0x00179ef0      lsl   w8, w8, w11
│      ╎╎   0x00179ef4      adrp  x0, 0x24f000
│      ╎╎   0x00179ef8      adrp  x1, 0x254000
│      ╎╎   0x00179efc      orr   w2, w10, w8
│      ╎╎   0x00179f00      add   x0, x0, 0x753                        ; int64_t arg1
│      ╎╎   0x00179f04      add   x1, x1, 0x59                         ; int64_t arg2
│      ╎╎   0x00179f08      str   w2, [x9, 0xc78]
│      ╎╎   0x00179f0c      bl    fcn.0014c9f8
│      ╎╎   0x00179f10      adrp  x0, 0x248000
│      ╎╎   0x00179f14      add   x0, x0, 0x54a                        ; int64_t arg1
│      ╎╎   0x00179f18      bl    fcn.001758fc
│     ┌───< 0x00179f1c      cbz   x0, 0x179f78
│     │╎╎   0x00179f20      ldrb  w2, [x0, 0x14]!                      ; aav.0x00000014
│     │╎╎                                                              ; [0x14:4]=0
│     │╎╎   0x00179f24      adrp  x19, 0x59f000
│     │╎╎   0x00179f28      add   x19, x19, 0xa2c
│     │╎╎   0x00179f2c      mov   w1, 2
│     │╎╎   0x00179f30      ldrb  w8, [x0, 3]                          ; [0x3:4]=0x48776b00
│     │╎╎   0x00179f34      ldrb  w9, [x0, 2]                          ; [0x2:4]=0x776b0000
│     │╎╎   0x00179f38      ldrb  w10, [x0, 1]                         ; [0x1:4]=0x6b000000
│     │╎╎   0x00179f3c      mov   w3, 0xa84
│     │╎╎   0x00179f40      mov   x0, x19                              ; int64_t arg1
│     │╎╎   0x00179f44      bfi   w9, w8, 8, 8
│     │╎╎   0x00179f48      bfi   w2, w10, 8, 8
│     │╎╎   0x00179f4c      bfi   w2, w9, 0x10, 0x10
│     │╎╎   0x00179f50      bl    fcn.001392bc
│     │╎╎   0x00179f54      ldr   w2, [x19, 0xc]                       ; aav.0x0000000c
│     │╎╎                                                              ; [0xc:4]=0
│     │╎╎   0x00179f58      ldr   x19, [var_10h]                       ; aav.0x00000010
│     │╎╎                                                              ; [0x10:4]=0x14000004
│     │╎╎   0x00179f5c      adrp  x0, 0x241000
│     │╎╎   0x00179f60      adrp  x1, 0x27a000
│     │╎╎   0x00179f64      add   x0, x0, 0x5f0
│     │╎╎   0x00179f68      add   x1, x1, 0xfbb
│     │╎╎   0x00179f6c      ldp   x29, x30, [sp], 0x20
│     │╎╎   0x00179f70      autibsp
│     │└──< 0x00179f74      b     fcn.0014c9f8
│     └───> 0x00179f78      ldr   x19, [var_10h]                       ; aav.0x00000010
│       ╎                                                              ; [0x10:4]=0x14000004
│       ╎   0x00179f7c      adrp  x0, 0x23a000
│       ╎   0x00179f80      add   x0, x0, 0xfde
│       ╎   0x00179f84      ldp   x29, x30, [sp], 0x20
│       ╎   0x00179f88      autibsp
└       └─< 0x00179f8c      b     fcn.0014c9f8
            ; CALL XREF from fcn.0017bfac @ 0x17c758
            ; CALL XREF from fcn.00187cf0 @ 0x187e7c
