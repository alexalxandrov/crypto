┌ fcn.00114b6c();
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00114b6c      pacibsp
│           0x00114b70      stp   x29, x30, [var_40h]!
│           0x00114b74      str   x23, [var_30h]
│           0x00114b78      stp   x22, x21, [var_20h]
│           0x00114b7c      stp   x20, x19, [var_10h]
│           0x00114b80      mov   x29, sp
│           0x00114b84      mov   w2, aav.0x00004000
│           0x00114b88      mov   w0, -0x5e00000
│           0x00114b8c      movk  w2, 1, lsl 16
│           0x00114b90      mov   w1, wzr
│           0x00114b94      bl    fcn.0014d8fc
│           0x00114b98      mov   w2, aav.0x00004000
│           0x00114b9c      mov   x0, -0xef
│           0x00114ba0      mov   w1, -0x5e00000
│           0x00114ba4      movk  w2, 1, lsl 16
│           0x00114ba8      mov   w3, 0x28b5
│           0x00114bac      bl    fcn.0010a01c
│       ┌─< 0x00114bb0      cbz   x0, 0x114bfc
│       │   0x00114bb4      mov   x2, x0                               ; unsigned long arg3
│       │   0x00114bb8      adrp  x0, 0x264000
│       │   0x00114bbc      adrp  x1, 0x253000
│       │   0x00114bc0      add   x0, x0, 0xa1b                        ; int64_t arg1
│       │   0x00114bc4      add   x1, x1, 0x3df                        ; int64_t arg2
│       │   0x00114bc8      bl    fcn.0014c9f8
│    ┌┌┌──> 0x00114bcc      adrp  x0, 0x26f000
│    ╎╎╎│   0x00114bd0      adrp  x1, 0x257000
│    ╎╎╎│   0x00114bd4      add   x0, x0, 0x533                        ; int64_t arg1
│    ╎╎╎│   0x00114bd8      add   x1, x1, 0x4a2                        ; int64_t arg2
│    ╎╎╎│   0x00114bdc      bl    fcn.0014c9f8
│    ╎╎╎│   ; CODE XREF from fcn.00114b6c @ 0x115014
│   ┌─────> 0x00114be0      mov   w0, wzr
│   ╎╎╎╎│   ; CODE XREF from fcn.00114b6c @ 0x115004
│  ┌──────> 0x00114be4      ldp   x20, x19, [var_10h]
│  ╎╎╎╎╎│   0x00114be8      ldp   x22, x21, [var_20h]
│  ╎╎╎╎╎│   0x00114bec      ldr   x23, [var_30h]                       ; aav.0x00000010
│  ╎╎╎╎╎│                                                              ; [0x10:4]=0x14000004
│  ╎╎╎╎╎│   0x00114bf0      ldp   x29, x30, [sp], 0x40
│  ╎╎╎╎╎│   0x00114bf4      autibsp
│  ╎╎╎╎╎│   0x00114bf8      ret
│  ╎╎╎╎╎└─> 0x00114bfc      mov   w8, -0x5e00000
│  ╎╎╎╎╎    0x00114c00      ldr   w8, [x8]
│  ╎╎╎╎╎    0x00114c04      rev   w19, w8
│  ╎╎╎╎╎    0x00114c08      subs  w22, w19, 1
│  ╎╎└────< 0x00114c0c      b.lt  0x114bcc
│  ╎╎ ╎╎    0x00114c10      cmp   w22, 0x225
│  ╎╎ └───< 0x00114c14      b.hi  0x114bcc
│  ╎╎  ╎    0x00114c18      adrp  x23, 0x549000
│  ╎╎  ╎    0x00114c1c      add   x23, x23, 0x7a0
│  ╎╎  ╎    0x00114c20      mov   w10, 0x10
│  ╎╎  ╎    0x00114c24      mov   x8, xzr
│  ╎╎  ╎    0x00114c28      mov   w9, w19
│  ╎╎  ╎    0x00114c2c      movk  w10, 0xfa20, lsl 16
│  ╎╎  ╎    0x00114c30      mov   x11, x23
│  ╎╎  ╎┌─> 0x00114c34      mov   x12, xzr
│  ╎╎ ┌───> 0x00114c38      ldr   w13, [x10, x12]
│  ╎╎ ╎╎╎   0x00114c3c      rev   w13, w13
│  ╎╎ ╎╎╎   0x00114c40      str   w13, [x11, x12]
│  ╎╎ ╎╎╎   0x00114c44      add   x12, x12, 4                          ; "kwH!daeh"
│  ╎╎ ╎╎╎   0x00114c48      cmp   x12, 0x90
│  ╎╎ └───< 0x00114c4c      b.ne  0x114c38
│  ╎╎  ╎╎   0x00114c50      add   x8, x8, 1
│  ╎╎  ╎╎   0x00114c54      add   x11, x11, 0x90
│  ╎╎  ╎╎   0x00114c58      cmp   x8, x9
│  ╎╎  ╎╎   0x00114c5c      add   x10, x10, x12
│  ╎╎  ╎└─< 0x00114c60      b.ne  0x114c34
│  ╎╎  ╎    0x00114c64      cmp   w22, 0x226
│  ╎╎  └──< 0x00114c68      b.hs  0x114bcc
│  ╎╎       0x00114c6c      adrp  x20, 0x257000
│  ╎╎       0x00114c70      adrp  x0, 0x24e000
│  ╎╎       0x00114c74      add   x20, x20, 0x4a2
│  ╎╎       0x00114c78      mov   w21, 0x6004
│  ╎╎       0x00114c7c      add   x0, x0, 0xdc1                        ; int64_t arg1
│  ╎╎       0x00114c80      mov   x1, x20                              ; int64_t arg2
│  ╎╎       0x00114c84      movk  w21, 0x1e00, lsl 16
│  ╎╎       0x00114c88      bl    fcn.0014c9f8
│  ╎╎       0x00114c8c      adrp  x0, 0x249000
│  ╎╎       0x00114c90      add   x0, x0, 0xc27                        ; int64_t arg1
│  ╎╎       0x00114c94      mov   x1, x20                              ; int64_t arg2
│  ╎╎       0x00114c98      mov   w2, w19
│  ╎╎       0x00114c9c      bl    fcn.0014c9f8
│  ╎╎       0x00114ca0      mov   w8, 1
│  ╎╎       0x00114ca4      str   w8, [x21]
│  ╎╎       0x00114ca8      adrp  x8, 0x2bf000
│  ╎╎       0x00114cac      add   x8, x8, 0xd50
│  ╎╎       0x00114cb0      ldr   w9, [x8]
│  ╎╎       0x00114cb4      mov   w0, 0xa120
│  ╎╎       0x00114cb8      movk  w0, 7, lsl 16
│  ╎╎       0x00114cbc      str   w9, [x21, 0x7fc]
│  ╎╎       0x00114cc0      ldr   w9, [x8, 4]                          ; str.kwH_daeh
│  ╎╎                                                                  ; [0x4:4]=0x2148776b ; "kwH!daeh"
│  ╎╎       0x00114cc4      str   w9, [x21, aav.0x00000800]
│  ╎╎       0x00114cc8      ldr   w9, [x8, 8]                          ; aav.0x00000008
│  ╎╎                                                                  ; [0x8:4]=0x68656164 ; "daeh"
│  ╎╎       0x00114ccc      str   w9, [x21, 0x804]
│  ╎╎       0x00114cd0      ldr   w9, [x8, 0xc]                        ; aav.0x0000000c
│  ╎╎                                                                  ; [0xc:4]=0
│  ╎╎       0x00114cd4      str   w9, [x21, 0x808]
│  ╎╎       0x00114cd8      ldr   w9, [x8, 0x10]                       ; aav.0x00000010
│  ╎╎                                                                  ; [0x10:4]=0x14000004
│  ╎╎       0x00114cdc      str   w9, [x21, 0x80c]
│  ╎╎       0x00114ce0      ldr   w9, [x8, 0x14]                       ; aav.0x00000014
│  ╎╎                                                                  ; [0x14:4]=0
│  ╎╎       0x00114ce4      str   w9, [x21, aav.0x00000810]
│  ╎╎       0x00114ce8      ldr   w9, [x8, 0x18]                       ; aav.0x00000018
│  ╎╎                                                                  ; [0x18:4]=0x7600000
│  ╎╎       0x00114cec      str   w9, [x21, 0x814]
│  ╎╎       0x00114cf0      ldr   w9, [x8, 0x1c]                       ; aav.0x0000001c
│  ╎╎                                                                  ; [0x1c:4]=0
│  ╎╎       0x00114cf4      str   w9, [x21, str.p.]
│  ╎╎       0x00114cf8      ldr   w9, [x8, 0x20]                       ; aav.0x00000020
│  ╎╎                                                                  ; [0x20:4]=0x58000940 ; "@\t"
│  ╎╎       0x00114cfc      str   w9, [x21, 0x81c]
│  ╎╎       0x00114d00      ldr   w9, [x8, 0x24]                       ; aav.0x00000024
│  ╎╎                                                                  ; [0x24:4]=0xb9400001
│  ╎╎       0x00114d04      str   w9, [x21, 0x820]
│  ╎╎       0x00114d08      ldr   w9, [x8, 0x28]                       ; aav.0x00000028
│  ╎╎                                                                  ; [0x28:4]=0x350000c1
│  ╎╎       0x00114d0c      str   w9, [x21, 0x824]
│  ╎╎       0x00114d10      ldr   w9, [x8, 0x2c]                       ; aav.0x0000002c
│  ╎╎                                                                  ; [0x2c:4]=0xd2820010
│  ╎╎       0x00114d14      str   w9, [x21, 0x828]
│  ╎╎       0x00114d18      ldr   w9, [x8, 0x30]                       ; aav.0x00000030
│  ╎╎                                                                  ; [0x30:4]=0x58000911
│  ╎╎       0x00114d1c      str   w9, [x21, 0x82c]
│  ╎╎       0x00114d20      ldr   w9, [x8, 0x34]                       ; aav.0x00000034
│  ╎╎                                                                  ; [0x34:4]=0x8b100231 ; "1\U00000002\U00000010\x8b?\U00000002"
│  ╎╎       0x00114d24      str   w9, [x21, 0x830]
│  ╎╎       0x00114d28      ldr   w9, [x8, 0x38]                       ; aav.0x00000038
│  ╎╎                                                                  ; [0x38:4]=0x9100023f ; "?\U00000002"
│  ╎╎       0x00114d2c      str   w9, [x21, 0x834]
│  ╎╎       0x00114d30      ldr   w9, [x8, 0x3c]                       ; aav.0x0000003c
│  ╎╎                                                                  ; [0x3c:4]=0x94000047 ; "G"
│  ╎╎       0x00114d34      str   w9, [x21, 0x838]
│  ╎╎       0x00114d38      ldr   w9, [x8, 0x40]                       ; aav.0x00000040
│  ╎╎                                                                  ; [0x40:4]=0xaa0003f4
│  ╎╎       0x00114d3c      str   w9, [x21, 0x83c]
│  ╎╎       0x00114d40      ldr   w9, [x8, 0x44]                       ; aav.0x00000044
│  ╎╎                                                                  ; [0x44:4]=0xaa0103f5
│  ╎╎       0x00114d44      str   w9, [x21, str.nature_success]
│  ╎╎       0x00114d48      ldr   w9, [x8, 0x48]                       ; aav.0x00000048
│  ╎╎                                                                  ; [0x48:4]=0xaa0203f6
│  ╎╎       0x00114d4c      str   w9, [x21, 0x844]
│  ╎╎       0x00114d50      ldr   w9, [x8, 0x4c]                       ; aav.0x0000004c
│  ╎╎                                                                  ; [0x4c:4]=0xaa0303f7
│  ╎╎       0x00114d54      str   w9, [x21, 0x848]
│  ╎╎       0x00114d58      ldr   w9, [x8, 0x50]                       ; aav.0x00000050
│  ╎╎                                                                  ; [0x50:4]=0xd2810600
│  ╎╎       0x00114d5c      str   w9, [x21, 0x84c]
│  ╎╎       0x00114d60      ldr   w9, [x8, 0x54]                       ; aav.0x00000054
│  ╎╎                                                                  ; [0x54:4]=0xf2a618a0
│  ╎╎       0x00114d64      str   w9, [x21, 0x850]
│  ╎╎       0x00114d68      ldr   w9, [x8, 0x58]                       ; aav.0x00000058
│  ╎╎                                                                  ; [0x58:4]=0xd51e1000
│  ╎╎       0x00114d6c      str   w9, [x21, str.Bootloader__USB_Loading_Done]
│  ╎╎       0x00114d70      ldr   w9, [x8, 0x5c]                       ; aav.0x0000005c
│  ╎╎                                                                  ; [0x5c:4]=0xd5033fdf
│  ╎╎       0x00114d74      str   w9, [x21, 0x858]
│  ╎╎       0x00114d78      ldr   w9, [x8, 0x60]                       ; aav.0x00000060
│  ╎╎                                                                  ; [0x60:4]=0x9400050d ; "\r\U00000005"
│  ╎╎       0x00114d7c      str   w9, [x21, 0x85c]
│  ╎╎       0x00114d80      ldr   w9, [x8, 0x64]                       ; aav.0x00000064
│  ╎╎                                                                  ; [0x64:4]=0xb4000040 ; "@"
│  ╎╎       0x00114d84      str   w9, [x21, 0x860]
│  ╎╎       0x00114d88      ldr   w9, [x8, 0x68]                       ; aav.0x00000068
│  ╎╎                                                                  ; [0x68:4]=0xd61f0000
│  ╎╎       0x00114d8c      str   w9, [x21, 0x864]
│  ╎╎       0x00114d90      ldr   w9, [x8, 0x6c]                       ; aav.0x0000006c
│  ╎╎                                                                  ; [0x6c:4]=0x1005bca0
│  ╎╎       0x00114d94      str   w9, [x21, 0x868]
│  ╎╎       0x00114d98      ldr   w9, [x8, 0x70]                       ; aav.0x00000070
│  ╎╎                                                                  ; [0x70:4]=0xd51ec000
│  ╎╎       0x00114d9c      str   w9, [x21, 0x86c]
│  ╎╎       0x00114da0      ldr   w9, [x8, 0x74]                       ; aav.0x00000074
│  ╎╎                                                                  ; [0x74:4]=0xd5033fdf
│  ╎╎       0x00114da4      str   w9, [x21, 0x870]
│  ╎╎       0x00114da8      ldr   w9, [x8, 0x78]                       ; aav.0x00000078
│  ╎╎                                                                  ; [0x78:4]=0x94002336 ; "6#"
│  ╎╎       0x00114dac      str   w9, [x21, 0x874]
│  ╎╎       0x00114db0      ldr   w9, [x8, 0x7c]                       ; aav.0x0000007c
│  ╎╎                                                                  ; [0x7c:4]=0xd2820141 ; "A\U00000001\x82\xd2"
│  ╎╎       0x00114db4      str   w9, [x21, 0x878]
│  ╎╎       0x00114db8      ldr   w9, [x8, 0x80]                       ; aav.0x00000080
│  ╎╎                                                                  ; [0x80:4]=0xd53e1000
│  ╎╎       0x00114dbc      str   w9, [x21, 0x87c]
│  ╎╎       0x00114dc0      ldr   w8, [x8, 0x84]                       ; [0x100:4]=0x34000040 ; "@"
│  ╎╎       0x00114dc4      str   w8, [x21, str.initializing_fail___s:_ERR:0x_x]
│  ╎╎       0x00114dc8      bl    fcn.001b3f80
│  ╎╎       0x00114dcc      mov   w0, 0xa120
│  ╎╎       0x00114dd0      movk  w0, 7, lsl 16
│  ╎╎       0x00114dd4      bl    fcn.001b3f80
│  ╎╎       0x00114dd8      mov   w0, 0xa120
│  ╎╎       0x00114ddc      movk  w0, 7, lsl 16
│  ╎╎       0x00114de0      bl    fcn.001b3f80
│  ╎╎       0x00114de4      str   wzr, [x21, 0x884]
│  ╎╎       0x00114de8      str   wzr, [x21, 0x888]
│  ╎╎       0x00114dec      str   wzr, [x21, 0x88c]
│  ╎╎       0x00114df0      str   wzr, [x21, 0x890]
│  ╎╎       0x00114df4      str   wzr, [x21, 0x894]
│  ╎╎       0x00114df8      str   wzr, [x21, 0x898]
│  ╎╎       0x00114dfc      str   wzr, [x21, 0x89c]
│  ╎╎       0x00114e00      str   wzr, [x21, 0x8a0]
│  ╎╎       0x00114e04      str   wzr, [x21, str.DRAM_enc_h_w_initializing_fail]
│  ╎╎       0x00114e08      str   wzr, [x21, 0x8a8]
│  ╎╎       0x00114e0c      str   wzr, [x21, 0x8ac]
│  ╎╎       0x00114e10      str   wzr, [x21, str.initializing_fail]
│  ╎╎       0x00114e14      str   wzr, [x21, 0x8b4]
│  ╎╎       0x00114e18      str   wzr, [x21, 0x8b8]
│  ╎╎       0x00114e1c      str   wzr, [x21, 0x8bc]
│  ╎╎       0x00114e20      str   wzr, [x21, 0x8c0]
│  ╎╎       0x00114e24      str   wzr, [x21, 0x8c4]
│  ╎╎       0x00114e28      ldr   w10, [x21, 8]                        ; aav.0x00000008
│  ╎╎                                                                  ; [0x8:4]=0x68656164 ; "daeh"
│  ╎╎       0x00114e2c      ldr   w9, [x21, 4]                         ; str.kwH_daeh
│  ╎╎                                                                  ; [0x4:4]=0x2148776b ; "kwH!daeh"
│  ╎╎       0x00114e30      mov   w8, wzr
│  ╎╎       0x00114e34      and   w10, w10, 0x3ff
│  ╎╎       0x00114e38      bfi   x9, x10, 0x20, 0xa
│  ╎╎       0x00114e3c      mov   w10, 0x90
│  ╎╎  ┌┌─> 0x00114e40      add   w11, w22, w8
│  ╎╎  ╎╎   0x00114e44      cmp   w11, 0
│  ╎╎  ╎╎   0x00114e48      cinc  w11, w11, lt
│  ╎╎  ╎╎   0x00114e4c      asr   w12, w11, 1
│  ╎╎  ╎╎   0x00114e50      smaddl x13, w12, w10, x23
│  ╎╎  ╎╎   0x00114e54      ldp   w12, w13, [x13]
│  ╎╎  ╎╎   0x00114e58      orr   w14, w12, w13
│  ╎╎ ┌───< 0x00114e5c      cbz   w14, 0x114fac
│  ╎╎ │╎╎   0x00114e60      bfi   x13, x12, 0x20, 0x20
│  ╎╎ │╎╎   0x00114e64      cmp   x13, x9
│  ╎╎ │╎╎   0x00114e68      sbfx  x11, x11, 1, 0x1f
│  ╎╎┌────< 0x00114e6c      b.ls  0x114e80
│  ╎╎││╎╎   0x00114e70      cmp   w8, w11
│  ╎╎││╎╎   0x00114e74      sub   w22, w11, 1
│  ╎╎││└──< 0x00114e78      b.lt  0x114e40
│  ╎╎││┌──< 0x00114e7c      b     0x114fac
│ ┌──└────> 0x00114e80      b.hs  0x114e94
│ │╎╎ ││╎   0x00114e84      cmp   w11, w22
│ │╎╎ ││╎   0x00114e88      add   w8, w11, 1
│ │╎╎ ││└─< 0x00114e8c      b.lt  0x114e40
│ │╎╎ ││┌─< 0x00114e90      b     0x114fac
│ └───────> 0x00114e94      mov   w8, 0x90
│  ╎╎ │││   0x00114e98      madd  x8, x11, x8, x23
│  ╎╎ │││   0x00114e9c      ldr   w9, [x8, 8]                          ; aav.0x00000008
│  ╎╎ │││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│  ╎╎ │││   0x00114ea0      str   w9, [x21, 0x8c8]
│  ╎╎ │││   0x00114ea4      ldr   w9, [x8, 0xc]                        ; aav.0x0000000c
│  ╎╎ │││                                                              ; [0xc:4]=0
│  ╎╎ │││   0x00114ea8      str   w9, [x21, 0x8cc]
│  ╎╎ │││   0x00114eac      ldr   w9, [x8, 0x10]                       ; aav.0x00000010
│  ╎╎ │││                                                              ; [0x10:4]=0x14000004
│  ╎╎ │││   0x00114eb0      str   w9, [x21, 0x8d0]
│  ╎╎ │││   0x00114eb4      ldr   w9, [x8, 0x14]                       ; aav.0x00000014
│  ╎╎ │││                                                              ; [0x14:4]=0
│  ╎╎ │││   0x00114eb8      str   w9, [x21, 0x8d4]
│  ╎╎ │││   0x00114ebc      ldr   w9, [x8, 0x18]                       ; aav.0x00000018
│  ╎╎ │││                                                              ; [0x18:4]=0x7600000
│  ╎╎ │││   0x00114ec0      str   w9, [x21, 0x8d8]
│  ╎╎ │││   0x00114ec4      ldr   w9, [x8, 0x1c]                       ; aav.0x0000001c
│  ╎╎ │││                                                              ; [0x1c:4]=0
│  ╎╎ │││   0x00114ec8      str   w9, [x21, 0x8dc]
│  ╎╎ │││   0x00114ecc      ldr   w9, [x8, 0x20]                       ; aav.0x00000020
│  ╎╎ │││                                                              ; [0x20:4]=0x58000940 ; "@\t"
│  ╎╎ │││   0x00114ed0      str   w9, [x21, 0x8e0]
│  ╎╎ │││   0x00114ed4      ldr   w9, [x8, 0x24]                       ; aav.0x00000024
│  ╎╎ │││                                                              ; [0x24:4]=0xb9400001
│  ╎╎ │││   0x00114ed8      str   w9, [x21, 0x8e4]
│  ╎╎ │││   0x00114edc      ldr   w9, [x8, 0x28]                       ; aav.0x00000028
│  ╎╎ │││                                                              ; [0x28:4]=0x350000c1
│  ╎╎ │││   0x00114ee0      str   w9, [x21, 0x8e8]
│  ╎╎ │││   0x00114ee4      ldr   w9, [x8, 0x2c]                       ; aav.0x0000002c
│  ╎╎ │││                                                              ; [0x2c:4]=0xd2820010
│  ╎╎ │││   0x00114ee8      str   w9, [x21, 0x8ec]
│  ╎╎ │││   0x00114eec      ldr   w9, [x8, 0x30]                       ; aav.0x00000030
│  ╎╎ │││                                                              ; [0x30:4]=0x58000911
│  ╎╎ │││   0x00114ef0      str   w9, [x21, 0x8f0]
│  ╎╎ │││   0x00114ef4      ldr   w9, [x8, 0x34]                       ; aav.0x00000034
│  ╎╎ │││                                                              ; [0x34:4]=0x8b100231 ; "1\U00000002\U00000010\x8b?\U00000002"
│  ╎╎ │││   0x00114ef8      str   w9, [x21, 0x8f4]
│  ╎╎ │││   0x00114efc      ldr   w9, [x8, 0x38]                       ; aav.0x00000038
│  ╎╎ │││                                                              ; [0x38:4]=0x9100023f ; "?\U00000002"
│  ╎╎ │││   0x00114f00      str   w9, [x21, 0x8f8]
│  ╎╎ │││   0x00114f04      ldr   w9, [x8, 0x3c]                       ; aav.0x0000003c
│  ╎╎ │││                                                              ; [0x3c:4]=0x94000047 ; "G"
│  ╎╎ │││   0x00114f08      str   w9, [x21, 0x8fc]
│  ╎╎ │││   0x00114f0c      ldr   w9, [x8, 0x40]                       ; aav.0x00000040
│  ╎╎ │││                                                              ; [0x40:4]=0xaa0003f4
│  ╎╎ │││   0x00114f10      str   w9, [x21, aav.0x00000900]
│  ╎╎ │││   0x00114f14      ldr   w9, [x8, 0x44]                       ; aav.0x00000044
│  ╎╎ │││                                                              ; [0x44:4]=0xaa0103f5
│  ╎╎ │││   0x00114f18      str   w9, [x21, aav.0x00000904]
│  ╎╎ │││   0x00114f1c      ldr   w9, [x8, 0x48]                       ; aav.0x00000048
│  ╎╎ │││                                                              ; [0x48:4]=0xaa0203f6
│  ╎╎ │││   0x00114f20      str   w9, [x21, 0x908]
│  ╎╎ │││   0x00114f24      ldr   w9, [x8, 0x4c]                       ; aav.0x0000004c
│  ╎╎ │││                                                              ; [0x4c:4]=0xaa0303f7
│  ╎╎ │││   0x00114f28      str   w9, [x21, 0x90c]
│  ╎╎ │││   0x00114f2c      ldr   w9, [x8, 0x50]                       ; aav.0x00000050
│  ╎╎ │││                                                              ; [0x50:4]=0xd2810600
│  ╎╎ │││   0x00114f30      str   w9, [x21, 0x910]
│  ╎╎ │││   0x00114f34      ldr   w9, [x8, 0x54]                       ; aav.0x00000054
│  ╎╎ │││                                                              ; [0x54:4]=0xf2a618a0
│  ╎╎ │││   0x00114f38      str   w9, [x21, 0x914]
│  ╎╎ │││   0x00114f3c      ldr   w9, [x8, 0x58]                       ; aav.0x00000058
│  ╎╎ │││                                                              ; [0x58:4]=0xd51e1000
│  ╎╎ │││   0x00114f40      str   w9, [x21, 0x918]
│  ╎╎ │││   0x00114f44      ldr   w9, [x8, 0x5c]                       ; aav.0x0000005c
│  ╎╎ │││                                                              ; [0x5c:4]=0xd5033fdf
│  ╎╎ │││   0x00114f48      str   w9, [x21, 0x91c]
│  ╎╎ │││   0x00114f4c      ldr   w9, [x8, 0x60]                       ; aav.0x00000060
│  ╎╎ │││                                                              ; [0x60:4]=0x9400050d ; "\r\U00000005"
│  ╎╎ │││   0x00114f50      str   w9, [x21, 0x920]
│  ╎╎ │││   0x00114f54      ldr   w9, [x8, 0x64]                       ; aav.0x00000064
│  ╎╎ │││                                                              ; [0x64:4]=0xb4000040 ; "@"
│  ╎╎ │││   0x00114f58      str   w9, [x21, str.ing_Done]
│  ╎╎ │││   0x00114f5c      ldr   w9, [x8, 0x68]                       ; aav.0x00000068
│  ╎╎ │││                                                              ; [0x68:4]=0xd61f0000
│  ╎╎ │││   0x00114f60      str   w9, [x21, 0x928]
│  ╎╎ │││   0x00114f64      ldr   w9, [x8, 0x6c]                       ; aav.0x0000006c
│  ╎╎ │││                                                              ; [0x6c:4]=0x1005bca0
│  ╎╎ │││   0x00114f68      str   w9, [x21, 0x92c]
│  ╎╎ │││   0x00114f6c      ldr   w9, [x8, 0x70]                       ; aav.0x00000070
│  ╎╎ │││                                                              ; [0x70:4]=0xd51ec000
│  ╎╎ │││   0x00114f70      str   w9, [x21, 0x930]
│  ╎╎ │││   0x00114f74      ldr   w9, [x8, 0x74]                       ; aav.0x00000074
│  ╎╎ │││                                                              ; [0x74:4]=0xd5033fdf
│  ╎╎ │││   0x00114f78      str   w9, [x21, 0x934]
│  ╎╎ │││   0x00114f7c      ldr   w9, [x8, 0x78]                       ; aav.0x00000078
│  ╎╎ │││                                                              ; [0x78:4]=0x94002336 ; "6#"
│  ╎╎ │││   0x00114f80      str   w9, [x21, 0x938]
│  ╎╎ │││   0x00114f84      ldr   w9, [x8, 0x7c]                       ; aav.0x0000007c
│  ╎╎ │││                                                              ; [0x7c:4]=0xd2820141 ; "A\U00000001\x82\xd2"
│  ╎╎ │││   0x00114f88      str   w9, [x21, 0x93c]
│  ╎╎ │││   0x00114f8c      ldr   w9, [x8, 0x80]                       ; aav.0x00000080
│  ╎╎ │││                                                              ; [0x80:4]=0xd53e1000
│  ╎╎ │││   0x00114f90      str   w9, [x21, 0x940]
│  ╎╎ │││   0x00114f94      ldr   w9, [x8, 0x84]                       ; [0x84:4]=0xaa010000
│  ╎╎ │││   0x00114f98      str   w9, [x21, 0x944]
│  ╎╎ │││   0x00114f9c      ldr   w9, [x8, 0x88]                       ; aav.0x00000088
│  ╎╎ │││                                                              ; [0x88:4]=0xd51e1000
│  ╎╎ │││   0x00114fa0      str   w9, [x21, 0x948]
│  ╎╎ │││   0x00114fa4      ldr   w8, [x8, 0x8c]                       ; aav.0x0000008c
│  ╎╎ │││                                                              ; [0x8c:4]=0xd5033fdf
│  ╎╎ │││   0x00114fa8      str   w8, [x21, 0x94c]
│  ╎╎ │││   ; CODE XREFS from fcn.00114b6c @ 0x114e7c, 0x114e90
│  ╎╎ └└└─> 0x00114fac      mov   w0, 0xc6c0
│  ╎╎       0x00114fb0      mov   w8, -1
│  ╎╎       0x00114fb4      movk  w0, 0x2d, lsl 16
│  ╎╎       0x00114fb8      str   w8, [x21, 0xc]
│  ╎╎       0x00114fbc      str   w8, [x21, 0x10]
│  ╎╎       0x00114fc0      str   w8, [x21, 0x14]
│  ╎╎       0x00114fc4      bl    fcn.001b3f80
│  ╎╎       0x00114fc8      mov   w0, 0xa120
│  ╎╎       0x00114fcc      movk  w0, 7, lsl 16
│  ╎╎       0x00114fd0      bl    fcn.001b3f80
│  ╎╎       0x00114fd4      mov   w2, aav.0x00004000
│  ╎╎       0x00114fd8      mov   w0, -0x5e00000
│  ╎╎       0x00114fdc      movk  w2, 1, lsl 16
│  ╎╎       0x00114fe0      mov   w1, wzr
│  ╎╎       0x00114fe4      bl    fcn.0014d8fc
│  ╎╎       0x00114fe8      ldr   w1, [x21]
│  ╎╎       0x00114fec      cmp   w1, aav.0x00000110                   ; " "
│  ╎╎   ┌─< 0x00114ff0      b.ne  0x115008
│  ╎╎   │   0x00114ff4      adrp  x0, 0x275000
│  ╎╎   │   0x00114ff8      add   x0, x0, 0xd4a                        ; int64_t arg1
│  ╎╎   │   0x00114ffc      bl    fcn.0014c9f8
│  ╎╎   │   0x00115000      mov   w0, 1
│  └──────< 0x00115004      b     0x114be4
│   ╎   └─> 0x00115008      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│   ╎       0x0011500c      add   x0, x0, 0x977                        ; int64_t arg1
│   ╎       0x00115010      bl    fcn.0014c9f8
└   └─────< 0x00115014      b     0x114be0
            ; CALL XREF from fcn.00114a28 @ 0x114a38
            ; CALL XREF from fcn.001512d4 @ 0x151534
