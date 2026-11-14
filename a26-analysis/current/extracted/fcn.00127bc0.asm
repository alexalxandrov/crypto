┌ fcn.00127bc0(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; var int64_t var_6ch @ stack - 0x6c
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00127bc0      pacibsp
│           0x00127bc4      sub   sp, sp, 0x70
│           0x00127bc8      stp   x29, x30, [var_60h]
│           0x00127bcc      stp   x28, x27, [var_50h]
│           0x00127bd0      stp   x26, x25, [var_40h]
│           0x00127bd4      stp   x24, x23, [var_30h]
│           0x00127bd8      stp   x22, x21, [var_20h]
│           0x00127bdc      stp   x20, x19, [var_10h]
│           0x00127be0      add   x29, sp, 0x10
│           0x00127be4      ldr   x21, [x0, 0xa8]                      ; aav.0x000000a8
│                                                                      ; [0xa8:4]=0xf2c00080 ; arg1
│           0x00127be8      mov   w20, w1                              ; arg2
│           0x00127bec      mov   x19, x0                              ; arg1
│           0x00127bf0      str   w2, [x0, 0x90]                       ; arg3
│           0x00127bf4      str   xzr, [x0, 0x78]                      ; arg1
│           0x00127bf8      mov   w2, aav.0x00001000
│           0x00127bfc      mov   x0, x21                              ; int64_t arg1
│           0x00127c00      mov   w1, wzr
│           0x00127c04      bl    fcn.0014d8fc
│           0x00127c08      mov   w8, w20
│           0x00127c0c      adrp  x9, 0x2c8000
│           0x00127c10      add   x10, x8, w20, uxtw 2
│           0x00127c14      add   x9, x9, 0x594
│           0x00127c18      add   x24, x9, x10
│           0x00127c1c      ldrb  w10, [x24, 2]!                       ; [0x2:4]=0x776b0000
│           0x00127c20      ldr   x26, [x19, 0xa8]                     ; aav.0x000000a8
│                                                                      ; [0xa8:4]=0xf2c00080
│           0x00127c24      cmp   w10, 1
│       ┌─< 0x00127c28      b.ne  0x127c3c
│       │   0x00127c2c      ldrb  w10, [x19, 0x376]                    ; [0x376:4]=0xd3e9b900
│       │   0x00127c30      ldrb  w11, [x19, 0x377]                    ; [0x377:4]=0x40d3e9b9
│       │   0x00127c34      add   w22, w10, w11, lsl 3
│      ┌──< 0x00127c38      b     0x127c54
│      │└─> 0x00127c3c      add   x10, x8, x8, lsl 2
│      │    0x00127c40      add   x10, x9, x10
│      │    0x00127c44      ldrb  w10, [x10, 1]                        ; [0x1:4]=0x6b000000
│      │    0x00127c48      cmp   w10, 1
│      │    0x00127c4c      mov   w10, aav.0x000003e0                  ; ")\U00000005"
│      │    0x00127c50      csel  w22, w10, wzr, eq
│      │    ; CODE XREF from fcn.00127bc0 @ 0x127c38
│      └──> 0x00127c54      mov   w10, 0x16
│           0x00127c58      add   x8, x8, x8, lsl 2
│           0x00127c5c      strb  wzr, [x26, 1]
│           0x00127c60      strb  wzr, [x26, 3]
│           0x00127c64      strb  w10, [x26]
│           0x00127c68      add   x25, x9, x8
│           0x00127c6c      ldrb  w8, [x25]
│           0x00127c70      rev16 w9, w22
│           0x00127c74      add   x0, x26, 0x12                        ; int64_t arg1
│           0x00127c78      sub   x1, var_10h + 0x14                   ; int64_t arg2
│           0x00127c7c      strb  w8, [x26, 5]
│           0x00127c80      ldrb  w8, [x25]
│           0x00127c84      mov   w2, 2
│           0x00127c88      sturh w9, [var_10h + 0xc]
│           0x00127c8c      cmp   w8, 0x81
│           0x00127c90      csel  w8, w9, wzr, eq
│           0x00127c94      strb  w8, [x26, 0xa]
│           0x00127c98      lsr   w8, w8, 8
│           0x00127c9c      strb  w8, [x26, 0xb]
│           0x00127ca0      ldrb  w8, [x25, 1]!                        ; [0x1:4]=0x6b000000
│           0x00127ca4      strb  w8, [x26, 0xc]
│           0x00127ca8      ldrb  w8, [x24]
│           0x00127cac      strb  w8, [x26, 0xd]
│           0x00127cb0      ldrb  w8, [x25, 2]                         ; [0x2:4]=0x776b0000
│           0x00127cb4      strb  w8, [x26, 0xe]
│           0x00127cb8      ldrb  w8, [x25, 3]                         ; [0x3:4]=0x48776b00
│           0x00127cbc      strb  w8, [x26, 0xf]
│           0x00127cc0      bl    fcn.0014d60c
│           0x00127cc4      ldrb  w8, [x26, 0xc]                       ; aav.0x0000000c
│                                                                      ; [0xc:4]=0
│           0x00127cc8      cmp   w8, 6
│       ┌─< 0x00127ccc      b.eq  0x127e4c
│       │   0x00127cd0      cmp   w8, 4
│      ┌──< 0x00127cd4      b.ne  0x127d00
│      ││   0x00127cd8      ldrb  w8, [x26, 0xd]                       ; [0xd:4]=0x4000000
│      ││   0x00127cdc      add   x0, x26, 0x14                        ; int64_t arg1
│      ││   0x00127ce0      add   x1, var_68h                          ; int64_t arg2
│      ││   0x00127ce4      mov   w2, 4
│      ││   0x00127ce8      add   x8, x19, x8, lsl 2                   ; 0x3fc
│      ││                                                              ; aav.0x000003fc
│      ││   0x00127cec      ldr   w8, [x8, aav.0x000001e8]             ; [0x1e8:4]=0x54ffffa1
│      ││   0x00127cf0      rev   w8, w8
│      ││   0x00127cf4      str   w8, [var_68h]
│      ││   0x00127cf8      bl    fcn.0014d60c
│      ││   0x00127cfc      ldrb  w8, [x26, 0xc]                       ; aav.0x0000000c
│      ││                                                              ; [0xc:4]=0
│      └──> 0x00127d00      cmp   w8, 2
│      ┌──< 0x00127d04      b.ne  0x127ee4
│      ││   0x00127d08      ldrb  w8, [x26, 0xd]                       ; [0xd:4]=0x4000000
│      ││   0x00127d0c      cmp   w8, 1
│     ┌───< 0x00127d10      b.ne  0x127ee4
│     │││   0x00127d14      ldrb  w2, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127d18      add   x0, x26, 0x20                        ; int64_t arg1
│     │││   0x00127d1c      add   x1, x19, 0x25c                       ; int64_t arg2
│     │││   0x00127d20      add   x23, x26, 0x20
│     │││   0x00127d24      bl    fcn.0014d60c
│     │││   0x00127d28      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127d2c      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127d30      add   x1, x19, 0x272                       ; int64_t arg2
│     │││   0x00127d34      add   x0, x23, x8                          ; int64_t arg1
│     │││   0x00127d38      bl    fcn.0014d60c
│     │││   0x00127d3c      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127d40      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127d44      add   x1, x19, aav.0x0000028c              ; "\t\U00000001" ; int64_t arg2
│     │││   0x00127d48      add   x8, x23, x8
│     │││   0x00127d4c      add   x0, x8, x2                           ; int64_t arg1
│     │││   0x00127d50      bl    fcn.0014d60c
│     │││   0x00127d54      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127d58      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127d5c      add   x1, x19, 0x2a6                       ; int64_t arg2
│     │││   0x00127d60      add   x8, x23, x8
│     │││   0x00127d64      add   x0, x8, x2, lsl 1                    ; int64_t arg1
│     │││   0x00127d68      bl    fcn.0014d60c
│     │││   0x00127d6c      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127d70      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127d74      add   x1, x19, aav.0x000002c0              ; int64_t arg2
│     │││   0x00127d78      add   x8, x23, x8
│     │││   0x00127d7c      add   x9, x2, x2, lsl 1
│     │││   0x00127d80      add   x0, x8, x9                           ; int64_t arg1
│     │││   0x00127d84      bl    fcn.0014d60c
│     │││   0x00127d88      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127d8c      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127d90      add   x1, x19, 0x2da                       ; int64_t arg2
│     │││   0x00127d94      add   x8, x23, x8
│     │││   0x00127d98      add   x0, x8, x2, lsl 2                    ; int64_t arg1
│     │││   0x00127d9c      bl    fcn.0014d60c
│     │││   0x00127da0      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127da4      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127da8      add   x1, x19, 0x2f4                       ; int64_t arg2
│     │││   0x00127dac      add   x8, x23, x8
│     │││   0x00127db0      add   x9, x2, x2, lsl 2
│     │││   0x00127db4      add   x0, x8, x9                           ; int64_t arg1
│     │││   0x00127db8      bl    fcn.0014d60c
│     │││   0x00127dbc      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127dc0      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127dc4      mov   w9, 6
│     │││   0x00127dc8      add   x1, x19, 0x30e                       ; int64_t arg2
│     │││   0x00127dcc      add   x8, x23, x8
│     │││   0x00127dd0      madd  x0, x2, x9, x8                       ; int64_t arg1
│     │││   0x00127dd4      bl    fcn.0014d60c
│     │││   0x00127dd8      ldrb  w2, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│     │││   0x00127ddc      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127de0      add   x1, x19, 0x328                       ; int64_t arg2
│     │││   0x00127de4      lsl   x9, x2, 3
│     │││   0x00127de8      add   x8, x23, x8
│     │││   0x00127dec      sub   x9, x9, x2
│     │││   0x00127df0      add   x0, x8, x9                           ; int64_t arg1
│     │││   0x00127df4      bl    fcn.0014d60c
│     │││   0x00127df8      adrp  x0, 0x276000
│     │││   0x00127dfc      add   x0, x0, 0x131                        ; int64_t arg1
│     │││   ; DATA XREF from fcn.001a93d0 @ 0x1a9840
│     │││   0x00127e00      mov   w1, w22
│     │││   0x00127e04      bl    fcn.0014c9f8
│     │││   0x00127e08      adrp  x0, 0x271000
│     │││   0x00127e0c      add   x0, x0, aav.0x000006f8               ; ")" ; int64_t arg1
│     │││   0x00127e10      bl    fcn.0014c9f8
│     │││   0x00127e14      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│     │││   0x00127e18      str   w20, [var_6ch]
│    ┌────< 0x00127e1c      cbz   w8, 0x127e60
│    ││││   0x00127e20      adrp  x22, 0x268000
│    ││││   0x00127e24      mov   x27, xzr
│    ││││   0x00127e28      add   x22, x22, 0x826
│   ┌─────> 0x00127e2c      ldrb  w1, [x23, x27]
│   ╎││││   0x00127e30      mov   x0, x22                              ; int64_t arg1
│   ╎││││   0x00127e34      bl    fcn.0014c9f8
│   ╎││││   0x00127e38      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│   ╎││││   0x00127e3c      add   x27, x27, 1
│   ╎││││   0x00127e40      cmp   x27, x8
│   └─────< 0x00127e44      b.lo  0x127e2c
│   ┌─────< 0x00127e48      b     0x127e64
│   ││││└─> 0x00127e4c      ldrb  w8, [x26, 0xd]                       ; [0xd:4]=0x4000000
│   ││││    0x00127e50      add   x8, x19, x8
│   ││││    0x00127e54      ldrb  w8, [x8, 0xe8]                       ; aav.0x000000e8
│   ││││                                                               ; [0xe8:4]=0xd370cc00
│   ││││    0x00127e58      strb  w8, [x26, 0x17]
│   ││││┌─< 0x00127e5c      b     0x127ee4
│   │└────> 0x00127e60      mov   w27, wzr
│   │ │││   ; CODE XREF from fcn.00127bc0 @ 0x127e48
│   └─────> 0x00127e64      adrp  x0, 0x257000
│     │││   0x00127e68      add   x0, x0, 0x29e                        ; int64_t arg1
│     │││   0x00127e6c      bl    fcn.0014c9f8
│     │││   0x00127e70      adrp  x22, 0x268000
│     │││   0x00127e74      adrp  x23, 0x268000
│     │││   0x00127e78      mov   w28, wzr
│     │││   0x00127e7c      add   x22, x22, 0x356
│     │││   0x00127e80      add   x23, x23, 0x826
│    ┌────< 0x00127e84      b     0x127e9c
│    ││││   ; CODE XREF from fcn.00127bc0 @ 0x127ed0
│  ┌┌─────> 0x00127e88      mov   x0, x22                              ; int64_t arg1
│  ╎╎││││   0x00127e8c      bl    fcn.0014c9f8
│  ╎╎││││   0x00127e90      add   w28, w28, 1
│  ╎╎││││   0x00127e94      cmp   w28, 8
│ ┌───────< 0x00127e98      b.eq  0x127ed4
│ │╎╎││││   ; CODE XREF from fcn.00127bc0 @ 0x127e84
│ │╎╎└────> 0x00127e9c      ldrb  w8, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│ │└──────< 0x00127ea0      cbz   w8, 0x127e88
│ │ ╎ │││   0x00127ea4      mov   w20, wzr
│ │ ╎┌────> 0x00127ea8      add   w9, w27, w20
│ │ ╎╎│││   0x00127eac      madd  w8, w28, w8, w9
│ │ ╎╎│││   0x00127eb0      add   x8, x26, x8
│ │ ╎╎│││   0x00127eb4      ldrb  w1, [x8, 0x20]                       ; aav.0x00000020
│ │ ╎╎│││                                                              ; [0x20:4]=0x58000940 ; "@\t"
│ │ ╎╎│││   0x00127eb8      mov   x0, x23                              ; int64_t arg1
│ │ ╎╎│││   0x00127ebc      bl    fcn.0014c9f8
│ │ ╎╎│││   0x00127ec0      ldrb  w8, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│ │ ╎╎│││   0x00127ec4      add   w20, w20, 1
│ │ ╎╎│││   0x00127ec8      cmp   w20, w8
│ │ ╎└────< 0x00127ecc      b.lo  0x127ea8
│ │ └─────< 0x00127ed0      b     0x127e88
│ └───────> 0x00127ed4      adrp  x0, 0x24f000
│     │││   0x00127ed8      add   x0, x0, 0x33                         ; int64_t arg1
│     │││   0x00127edc      bl    fcn.0014c9f8
│     │││   0x00127ee0      ldr   w20, [var_6ch]                       ; str.kwH_daeh
│     │││                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│     │││   ; CODE XREF from fcn.00127bc0 @ 0x127e5c
│     └└└─> 0x00127ee4      ldr   x8, [x19, 0xb0]                      ; aav.0x000000b0
│                                                                      ; [0xb0:4]=0xd368ac21 ; "!\xach\xd3A"
│           0x00127ee8      mov   w9, 0xf
│           0x00127eec      mov   w22, 1
│           0x00127ef0      strb  wzr, [x8, 9]
│           0x00127ef4      strb  w22, [x8, 3]
│           0x00127ef8      strb  wzr, [x8, 2]
│           0x00127efc      strb  wzr, [x8, 1]
│           0x00127f00      strb  wzr, [x8]
│           0x00127f04      strb  wzr, [x8, 0x1d]
│           0x00127f08      strb  wzr, [x8, 0x1c]
│           0x00127f0c      strb  w9, [x8, 8]!
│           0x00127f10      strb  wzr, [x8, 3]
│           0x00127f14      strb  wzr, [x8, 2]
│           0x00127f18      dsb   st
│           0x00127f1c      ldr   x8, [x19, 0x20]                      ; aav.0x00000020
│                                                                      ; [0x20:4]=0x58000940 ; "@\t"
│           0x00127f20      str   wzr, [x8, 0x40]
│           0x00127f24      ldr   x8, [x19, 0x60]                      ; aav.0x00000060
│                                                                      ; [0x60:4]=0x9400050d ; "\r\U00000005"
│       ┌─< 0x00127f28      cbnz  x8, 0x127f44
│       │   0x00127f2c      ldr   x0, [x19, 0xb0]                      ; aav.0x000000b0
│       │                                                              ; [0xb0:4]=0xd368ac21 ; "!\xach\xd3A" ; int64_t arg1
│       │   0x00127f30      add   x1, x0, 0x20                         ; int64_t arg2
│       │   0x00127f34      bl    fcn.0010f6c4
│       │   0x00127f38      ldr   x0, [x19, 0xa8]                      ; aav.0x000000a8
│       │                                                              ; [0xa8:4]=0xf2c00080 ; int64_t arg1
│       │   0x00127f3c      add   x1, x0, 1, lsl 12                    ; int64_t arg2
│       │   0x00127f40      bl    fcn.0010f6c4
│       └─> 0x00127f44      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00127f48      str   w22, [x8, 0x58]
│           0x00127f4c      ldr   x8, [x19, 0xa8]                      ; aav.0x000000a8
│                                                                      ; [0xa8:4]=0xf2c00080
│           0x00127f50      ldrb  w9, [x8, 0xc]                        ; aav.0x0000000c
│                                                                      ; [0xc:4]=0
│           0x00127f54      cmp   w9, 4
│       ┌─< 0x00127f58      b.ne  0x127f74
│       │   0x00127f5c      ldrb  w8, [x8, 0xd]                        ; [0xd:4]=0x4000000
│       │   0x00127f60      cmp   w8, 0x15
│      ┌──< 0x00127f64      b.ne  0x127f74
│      ││   0x00127f68      mov   w8, 0xc6c0
│      ││   0x00127f6c      movk  w8, 0x2d, lsl 16
│     ┌───< 0x00127f70      b     0x127f7c
│     │└└─> 0x00127f74      mov   w8, 0xe360
│     │     0x00127f78      movk  w8, 0x16, lsl 16
│     │     ; CODE XREF from fcn.00127bc0 @ 0x127f70
│     └───> 0x00127f7c      str   w8, [x19, 0xe4]
│       ┌─> 0x00127f80      mov   x0, x19                              ; int64_t arg1
│       ╎   0x00127f84      mov   w1, wzr
│       ╎   0x00127f88      bl    fcn.00126b7c
│       ╎   0x00127f8c      cmp   w0, 4
│       └─< 0x00127f90      b.eq  0x127f80
│           0x00127f94      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00127f98      mov   w22, w0
│           0x00127f9c      ldr   w9, [x8, 0x20]                       ; aav.0x00000020
│                                                                      ; [0x20:4]=0x58000940 ; "@\t"
│           0x00127fa0      str   w9, [x8, 0x20]
│           0x00127fa4      dsb   sy
│           0x00127fa8      ldr   x8, [x19, 0x60]                      ; aav.0x00000060
│                                                                      ; [0x60:4]=0x9400050d ; "\r\U00000005"
│       ┌─< 0x00127fac      cbnz  x8, 0x127fc8
│       │   0x00127fb0      ldr   x0, [x19, 0xb0]                      ; aav.0x000000b0
│       │                                                              ; [0xb0:4]=0xd368ac21 ; "!\xach\xd3A" ; int64_t arg1
│       │   0x00127fb4      add   x1, x0, 0x20                         ; int64_t arg2
│       │   0x00127fb8      bl    fcn.0010f6c4
│       │   0x00127fbc      ldr   x0, [x19, 0xa8]                      ; aav.0x000000a8
│       │                                                              ; [0xa8:4]=0xf2c00080 ; int64_t arg1
│       │   0x00127fc0      add   x1, x0, 1, lsl 12                    ; int64_t arg2
│       │   0x00127fc4      bl    fcn.0010f6c4
│       └─> 0x00127fc8      ldr   x8, [x19, 0x20]                      ; aav.0x00000020
│                                                                      ; [0x20:4]=0x58000940 ; "@\t"
│           0x00127fcc      ldr   w9, [x8, 0x40]                       ; aav.0x00000040
│                                                                      ; [0x40:4]=0xaa0003f4
│           0x00127fd0      orr   w9, w9, 1
│           0x00127fd4      str   w9, [x8, 0x40]
│       ┌─< 0x00127fd8      cbz   w22, 0x128008
│       │   0x00127fdc      adrp  x0, 0x253000
│       │   0x00127fe0      adrp  x1, 0x23c000
│       │   0x00127fe4      add   x0, x0, 0x6ba                        ; int64_t arg1
│       │   0x00127fe8      add   x1, x1, 0x811                        ; int64_t arg2
│       │   0x00127fec      mov   w2, 0x54e
│       │   0x00127ff0      mov   w4, 0x16
│       │   0x00127ff4      mov   w3, w22
│       │   0x00127ff8      bl    fcn.0014c9f8
│       │   0x00127ffc      mov   x0, x19                              ; int64_t arg1
│       │   ; STRING XREF from fcn.00129754 @ 0x129b9c
│       │   0x00128000      bl    fcn.0012b410
│      ┌──< 0x00128004      b     0x128038
│      │└─> 0x00128008      mov   x0, x19                              ; int64_t arg1
│      │    0x0012800c      bl    fcn.001272ec
│      │┌─< 0x00128010      cbz   w0, 0x12807c
│      ││   0x00128014      mov   w22, w0
│      ││   0x00128018      adrp  x0, 0x23a000
│      ││   0x0012801c      adrp  x1, 0x23c000
│      ││   0x00128020      add   x0, x0, 0x5c6                        ; int64_t arg1
│      ││   0x00128024      add   x1, x1, 0x811                        ; int64_t arg2
│      ││   0x00128028      mov   w2, 0x556
│      ││   0x0012802c      mov   w4, 0x16
│      ││   0x00128030      mov   w3, w22
│      ││   0x00128034      bl    fcn.0014c9f8
│      ││   ; CODE XREF from fcn.00127bc0 @ 0x128004
│      └──> 0x00128038      ldrb  w2, [x21, 1]                         ; [0x1:4]=0x6b000000
│       │   0x0012803c      ldrb  w3, [x21, 5]                         ; [0x5:4]=0x64214877
│       │   0x00128040      ldrb  w4, [x21, 6]                         ; [0x6:4]=0x61642148
│       │   0x00128044      adrp  x0, 0x26f000
│       │   0x00128048      add   x0, x0, 0x7c1                        ; int64_t arg1
│       │   0x0012804c      mov   w1, w20
│       │   0x00128050      bl    fcn.0014c9f8
│       │   ; XREFS: CODE 0x001280fc  CODE 0x00128130  CODE 0x00128148
│       │   ; XREFS: CODE 0x00128184  CODE 0x00128300  CODE 0x001283b4
│      ┌──> 0x00128054      mov   w0, w22
│      ╎│   0x00128058      ldp   x20, x19, [var_10h]
│      ╎│   0x0012805c      ldp   x22, x21, [var_20h]
│      ╎│   0x00128060      ldp   x24, x23, [var_30h]
│      ╎│   0x00128064      ldp   x26, x25, [var_40h]
│      ╎│   0x00128068      ldp   x28, x27, [var_50h]
│      ╎│   0x0012806c      ldp   x29, x30, [var_60h]
│      ╎│   0x00128070      add   sp, sp, 0x70
│      ╎│   0x00128074      autibsp
│      ╎│   0x00128078      ret
│      ╎└─> 0x0012807c      ldrb  w2, [x25]
│      ╎    0x00128080      sub   w8, w2, 1
│      ╎    0x00128084      cmp   w8, 6
│      ╎┌─< 0x00128088      b.hi  0x1280e4
│      ╎│   0x0012808c      ldr   x20, [x19, 0xa8]                     ; aav.0x000000a8
│      ╎│                                                              ; [0xa8:4]=0xf2c00080
│      ╎│   0x00128090      adrp  x9, 0x287000
│      ╎│   0x00128094      add   x9, x9, 0xa80
│      ╎│   0x00128098      adr   x10, 0x128098
│      ╎│   0x0012809c      ldrsw x11, [x9, x8, lsl 2]
│      ╎│   0x001280a0      add   x10, x10, x11
│      ╎│   0x001280a4      mov   w22, wzr
│      ╎│   0x001280a8      br    x10
..
│    ││╎└─> 0x001280e4      adrp  x0, 0x273000
│    ││╎    0x001280e8      adrp  x1, 0x255000
│    ││╎    0x001280ec      add   x0, x0, 0x9cc                        ; int64_t arg1
│    ││╎    0x001280f0      add   x1, x1, 0x7dd                        ; int64_t arg2
│    ││╎    0x001280f4      bl    fcn.0014c9f8
│    ││╎    0x001280f8      mov   w22, wzr
└    ││└──< 0x001280fc      b     0x128054
            ; XREFS(37)
