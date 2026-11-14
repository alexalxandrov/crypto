┌ fcn.0017184c(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_170h @ stack - 0x170
│           ; var int64_t var_164h @ stack - 0x164
│           ; var int64_t var_160h @ stack - 0x160
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017184c      pacibsp
│           0x00171850      sub   sp, sp, 0x170
│           0x00171854      stp   x29, x30, [var_60h]
│           0x00171858      stp   x28, x27, [var_50h]
│           0x0017185c      stp   x26, x25, [var_40h]
│           0x00171860      stp   x24, x23, [var_30h]
│           0x00171864      stp   x22, x21, [var_20h]
│           0x00171868      stp   x20, x19, [var_10h]
│           0x0017186c      add   x29, sp, aav.0x00000110              ; " "
│           0x00171870      adrp  x28, 0x59b000
│           0x00171874      adrp  x26, 0x59b000
│           0x00171878      ldr   w24, [x28, 0x4c4]                    ; [0x4c4:4]=0xb9002d1f
│           0x0017187c      ldr   w27, [x26, aav.0x000004c0]           ; [0x4c0:4]=0xb900291f
│           0x00171880      adrp  x21, 0x59b000
│           0x00171884      add   x21, x21, 0x4c8
│           0x00171888      mov   x19, x0                              ; arg1
│           0x0017188c      stp   x1, x2, [var_160h + 0xe0]            ; arg3
│           0x00171890      mov   w2, aav.0x00000400
│           0x00171894      mov   x0, x21                              ; int64_t arg1
│           0x00171898      mov   w1, wzr
│           0x0017189c      stp   x3, x4, [var_160h + 0xf0]            ; arg5
│           0x001718a0      stp   x5, x6, [var_60h]                    ; arg7
│           0x001718a4      stur  x7, [var_50h]                        ; arg8
│           0x001718a8      stp   q0, q1, [var_160h]
│           0x001718ac      stp   q2, q3, [var_160h + 0x20]
│           0x001718b0      stp   q4, q5, [var_160h + 0x40]
│           0x001718b4      stp   q6, q7, [var_160h + 0x60]
│           0x001718b8      bl    fcn.0014d8fc
│           0x001718bc      sub   x9, var_10h + 0x90
│           0x001718c0      add   x10, var_160h
│           0x001718c4      mov   x11, -0x38
│           0x001718c8      add   x8, var_10h + 0x70
│           0x001718cc      movk  x11, 0xff80, lsl 32
│           0x001718d0      add   x9, x9, 0x38
│           0x001718d4      add   x10, x10, 0x80
│           0x001718d8      sub   x3, var_10h + 0x58                   ; int64_t arg4
│           0x001718dc      mov   w1, aav.0x00000400
│           0x001718e0      mov   x0, x21                              ; int64_t arg1
│           0x001718e4      mov   x2, x19                              ; int64_t arg3
│           0x001718e8      stp   x8, x9, [var_30h + 0x8]
│           0x001718ec      stp   x10, x11, [var_20h + 0x8]
│           0x001718f0      stp   x8, x9, [var_50h + 0x8]
│           0x001718f4      stp   x10, x11, [var_40h + 0x8]
│           0x001718f8      bl    fcn.0014b1d4
│           0x001718fc      mov   w20, w0
│           0x00171900      strb  wzr, [x21, w0, sxtw]
│           0x00171904      mov   x0, x21                              ; int64_t arg1
│           0x00171908      bl    fcn.001537a0
│           0x0017190c      adrp  x25, 0x59c000
│           0x00171910      add   x25, x25, 0x8c8
│       ┌─< 0x00171914      tbz   w0, 0, 0x171a34
│       │   0x00171918      adrp  x0, 0x59b000
│       │   0x0017191c      add   x0, x0, 0x4c8                        ; int64_t arg1
│       │   0x00171920      mov   w1, w20
│       │   0x00171924      bl    fcn.001536d0
│       │   0x00171928      str   w0, [var_164h]
│      ┌──< 0x0017192c      tbz   w0, 0x1f, 0x171960
│      ││   0x00171930      adrp  x0, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│      ││   0x00171934      adrp  x1, 0x253000
│      ││   0x00171938      add   x0, x0, 0xf8                         ; int64_t arg1
│      ││   0x0017193c      add   x1, x1, 0xf10                        ; int64_t arg2
│      ││   0x00171940      bl    fcn.0014c9f8
│      ││   0x00171944      adrp  x0, 0x271000
│      ││   0x00171948      adrp  x1, 0x271000
│      ││   0x0017194c      add   x0, x0, 0x509                        ; int64_t arg1
│      ││   0x00171950      add   x1, x1, aav.0x00000e60               ; int64_t arg2
│      ││   0x00171954      bl    fcn.0014c9f8
│      ││   0x00171958      mov   w0, 0x11
│      ││   0x0017195c      bl    fcn.00154834
│      └──> 0x00171960      ldrsw x8, [x26, aav.0x000004c0]            ; [0x4c0:4]=0xb900291f
│       │   0x00171964      adrp  x28, 0x59b000
│       │   0x00171968      add   x28, x28, 0x8c8
│       │   0x0017196c      mov   w9, aav.0x00001000
│       │   0x00171970      adrp  x2, 0x242000
│       │   0x00171974      adrp  x3, 0x59b000
│       │   0x00171978      add   x0, x28, x8                          ; int64_t arg1
│       │   0x0017197c      sub   x1, x9, x8                           ; int64_t arg2
│       │   0x00171980      add   x2, x2, 0xac1                        ; int64_t arg4
│       │   0x00171984      add   x3, x3, 0x4c8                        ; int64_t arg5
│       │   0x00171988      bl    fcn.0014b120
│       │   0x0017198c      ldrsw x8, [x26, aav.0x000004c0]            ; [0x4c0:4]=0xb900291f
│       │   0x00171990      add   x20, x8, w20, sxtw
│       │   0x00171994      add   x8, x20, x28
│       │   0x00171998      ldurb w8, [x8, -1]                         ; [0x1:4]=0x6b000000
│       │   0x0017199c      str   w20, [x26, aav.0x000004c0]
│       │   0x001719a0      cmp   w8, 0x20
│      ┌──< 0x001719a4      b.eq  0x1719b8
│      ││   0x001719a8      mov   w8, 0x20
│      ││   0x001719ac      strb  w8, [x28, x20]
│      ││   0x001719b0      add   w20, w20, 1
│      ││   0x001719b4      str   w20, [x26, aav.0x000004c0]
│      └──> 0x001719b8      cmp   w27, 1
│      ┌──< 0x001719bc      b.lt  0x171a6c
│      ││   0x001719c0      mov   w9, w27
│      ││   0x001719c4      sxtw  x21, w9
│      ││   0x001719c8      mvn   w9, w27
│      ││   0x001719cc      sub   w10, w27, w20
│      ││   0x001719d0      add   w9, w20, w9
│      ││   0x001719d4      mov   x23, xzr
│      ││   0x001719d8      mov   w8, wzr
│      ││   0x001719dc      add   x11, x28, x21
│      ││   0x001719e0      sxtw  x22, w9
│      ││   0x001719e4      add   w19, w10, 1
│      ││   0x001719e8      str   x11, [sp]
│     ┌───< 0x001719ec      b     0x171a00
│    ┌────> 0x001719f0      add   x23, x23, 1
│    ╎│││   ; CODE XREF from fcn.0017184c @ 0x171a30
│   ┌─────> 0x001719f4      cmp   x23, x27
│   ╎╎│││   0x001719f8      add   w19, w19, 1
│  ┌──────< 0x001719fc      b.eq  0x171a6c
│  │╎╎│││   ; CODE XREF from fcn.0017184c @ 0x1719ec
│  │╎╎└───> 0x00171a00      ldrb  w9, [x28, x23]
│  │╎╎ ││   0x00171a04      cmp   w9, 0x20
│  │╎└────< 0x00171a08      b.ne  0x1719f0
│  │╎  ││   0x00171a0c      cmp   w8, w19
│  │╎ ┌───< 0x00171a10      b.ne  0x171a28
│  │╎ │││   0x00171a14      add   x0, x28, w8, sxtw                    ; int64_t arg1
│  │╎ │││   0x00171a18      add   x1, x28, x21                         ; int64_t arg2
│  │╎ │││   0x00171a1c      mov   x2, x22
│  │╎ │││   0x00171a20      bl    fcn.0014dbd8
│  │╎┌────< 0x00171a24      cbz   w0, 0x171bf4
│  │╎│└───> 0x00171a28      add   x23, x23, 1
│  │╎│ ││   0x00171a2c      mov   w8, w23
│  │└─────< 0x00171a30      b     0x1719f4
│  │ │ │└─> 0x00171a34      ldrsw x8, [x28, 0x4c4]                     ; [0x4c4:4]=0xb9002d1f
│  │ │ │    0x00171a38      mov   w9, aav.0x00001000
│  │ │ │    0x00171a3c      adrp  x2, 0x242000
│  │ │ │    0x00171a40      adrp  x3, 0x59b000
│  │ │ │    0x00171a44      add   x0, x25, x8                          ; int64_t arg1
│  │ │ │    0x00171a48      sub   x1, x9, x8                           ; int64_t arg2
│  │ │ │    0x00171a4c      add   x2, x2, 0xac1                        ; int64_t arg4
│  │ │ │    0x00171a50      add   x3, x3, 0x4c8                        ; int64_t arg5
│  │ │ │    0x00171a54      bl    fcn.0014b120
│  │ │ │    0x00171a58      ldr   w8, [x28, 0x4c4]                     ; [0x4c4:4]=0xb9002d1f
│  │ │ │    0x00171a5c      mov   w27, wzr
│  │ │ │    0x00171a60      add   w8, w8, w20
│  │ │ │    0x00171a64      str   w8, [x28, 0x4c4]
│  │ │ │┌─< 0x00171a68      b     0x171ab4
│  └───└──> 0x00171a6c      ldr   w27, [var_aav.aav.0x00000164]        ; aav.0x0000000c
│    │  │                                                              ; [0xc:4]=0
│    │  │   ; CODE XREF from fcn.0017184c @ 0x171c30
│    │ ┌──> 0x00171a70      adrp  x28, 0x59b000
│    │ ╎│   0x00171a74      cmp   w20, 1, lsl 12
│    │┌───< 0x00171a78      b.le  0x171ab4
│    ││╎│   0x00171a7c      adrp  x0, 0x278000
│    ││╎│   0x00171a80      adrp  x1, 0x253000
│    ││╎│   0x00171a84      add   x0, x0, 0xc98                        ; int64_t arg1
│    ││╎│   0x00171a88      add   x1, x1, 0xf10                        ; int64_t arg2
│    ││╎│   0x00171a8c      mov   w3, aav.0x00001000
│    ││╎│   0x00171a90      mov   w2, w20
│    ││╎│   0x00171a94      bl    fcn.0014c9f8
│    ││╎│   0x00171a98      adrp  x0, 0x271000
│    ││╎│   0x00171a9c      adrp  x1, 0x271000
│    ││╎│   0x00171aa0      add   x0, x0, 0x509                        ; int64_t arg1
│    ││╎│   0x00171aa4      add   x1, x1, aav.0x00000e60               ; int64_t arg2
│    ││╎│   0x00171aa8      bl    fcn.0014c9f8
│    ││╎│   0x00171aac      mov   w0, 0x11
│    ││╎│   0x00171ab0      bl    fcn.00154834
│    ││╎│   ; CODE XREF from fcn.0017184c @ 0x171a68
│    │└─└─> 0x00171ab4      ldr   w20, [x28, 0x4c4]                    ; [0x4c4:4]=0xb9002d1f
│    │ ╎    0x00171ab8      sxtw  x8, w20
│    │ ╎    0x00171abc      add   x9, x8, x25
│    │ ╎    0x00171ac0      ldurb w9, [x9, -1]                         ; [0x1:4]=0x6b000000
│    │ ╎    0x00171ac4      cmp   w9, 0x20
│    │ ╎┌─< 0x00171ac8      b.eq  0x171adc
│    │ ╎│   0x00171acc      mov   w9, 0x20
│    │ ╎│   0x00171ad0      add   w20, w20, 1
│    │ ╎│   0x00171ad4      strb  w9, [x25, x8]
│    │ ╎│   0x00171ad8      str   w20, [x28, 0x4c4]
│    │ ╎└─> 0x00171adc      cmp   w24, 1
│    │ ╎┌─< 0x00171ae0      b.lt  0x171b8c
│    │ ╎│   0x00171ae4      mov   w9, w24
│    │ ╎│   0x00171ae8      sxtw  x26, w9
│    │ ╎│   0x00171aec      mvn   w9, w24
│    │ ╎│   0x00171af0      sub   w10, w24, w20
│    │ ╎│   0x00171af4      add   w9, w20, w9
│    │ ╎│   0x00171af8      mov   x23, xzr
│    │ ╎│   0x00171afc      mov   w8, wzr
│    │ ╎│   0x00171b00      add   x21, x25, x26
│    │ ╎│   0x00171b04      sxtw  x22, w9
│    │ ╎│   0x00171b08      add   w19, w10, 1
│    │┌───< 0x00171b0c      b     0x171b20
│   ┌─────> 0x00171b10      add   x23, x23, 1
│   ╎││╎│   ; CODE XREF from fcn.0017184c @ 0x171b50
│  ┌──────> 0x00171b14      cmp   x23, x24
│  ╎╎││╎│   0x00171b18      add   w19, w19, 1
│ ┌───────< 0x00171b1c      b.eq  0x171b8c
│ │╎╎││╎│   ; CODE XREF from fcn.0017184c @ 0x171b0c
│ │╎╎│└───> 0x00171b20      ldrb  w9, [x25, x23]
│ │╎╎│ ╎│   0x00171b24      cmp   w9, 0x20
│ │╎└─────< 0x00171b28      b.ne  0x171b10
│ │╎ │ ╎│   0x00171b2c      cmp   w8, w19
│ │╎ │┌───< 0x00171b30      b.ne  0x171b48
│ │╎ ││╎│   0x00171b34      add   x0, x25, w8, sxtw                    ; int64_t arg1
│ │╎ ││╎│   0x00171b38      add   x1, x25, x26                         ; int64_t arg2
│ │╎ ││╎│   0x00171b3c      mov   x2, x22
│ │╎ ││╎│   0x00171b40      bl    fcn.0014dbd8
│ │╎┌─────< 0x00171b44      cbz   w0, 0x171b54
│ │╎││└───> 0x00171b48      add   x23, x23, 1
│ │╎││ ╎│   0x00171b4c      mov   w8, w23
│ │└──────< 0x00171b50      b     0x171b14
│ │ └─────> 0x00171b54      adrp  x0, 0x26b000
│ │  │ ╎│   0x00171b58      adrp  x1, 0x256000
│ │  │ ╎│   0x00171b5c      add   x0, x0, 0x379                        ; int64_t arg1
│ │  │ ╎│   0x00171b60      add   x1, x1, 0x116                        ; int64_t arg2
│ │  │ ╎│   0x00171b64      mov   x2, x21                              ; unsigned long arg3
│ │  │ ╎│   0x00171b68      bl    fcn.0014c9f8
│ │  │ ╎│   0x00171b6c      mov   w8, aav.0x00001000
│ │  │ ╎│   0x00171b70      sub   x2, x8, x26                          ; int64_t arg3
│ │  │ ╎│   0x00171b74      mov   x0, x21                              ; int64_t arg1
│ │  │ ╎│   0x00171b78      mov   w1, wzr
│ │  │ ╎│   0x00171b7c      str   w24, [x28, 0x4c4]
│ │  │ ╎│   0x00171b80      bl    fcn.0014d8fc
│ │  │ ╎│   0x00171b84      ldr   w20, [x28, 0x4c4]                    ; [0x4c4:4]=0xb9002d1f
│ │  │ ╎│   0x00171b88      mov   w27, -1
│ └─────└─> 0x00171b8c      cmp   w20, 1, lsl 12
│    │ ╎┌─< 0x00171b90      b.le  0x171bcc
│    │ ╎│   0x00171b94      adrp  x0, 0x278000
│    │ ╎│   0x00171b98      adrp  x1, 0x253000
│    │ ╎│   0x00171b9c      add   x0, x0, 0xc98                        ; int64_t arg1
│    │ ╎│   0x00171ba0      add   x1, x1, 0xf10                        ; int64_t arg2
│    │ ╎│   0x00171ba4      mov   w3, aav.0x00001000
│    │ ╎│   0x00171ba8      mov   w2, w20
│    │ ╎│   0x00171bac      bl    fcn.0014c9f8
│    │ ╎│   0x00171bb0      adrp  x0, 0x271000
│    │ ╎│   0x00171bb4      adrp  x1, 0x271000
│    │ ╎│   0x00171bb8      add   x0, x0, 0x509                        ; int64_t arg1
│    │ ╎│   0x00171bbc      add   x1, x1, aav.0x00000e60               ; int64_t arg2
│    │ ╎│   0x00171bc0      bl    fcn.0014c9f8
│    │ ╎│   0x00171bc4      mov   w0, 0x11
│    │ ╎│   0x00171bc8      bl    fcn.00154834
│    │ ╎└─> 0x00171bcc      mov   w0, w27
│    │ ╎    0x00171bd0      ldp   x20, x19, [var_10h]
│    │ ╎    0x00171bd4      ldp   x22, x21, [var_20h]
│    │ ╎    0x00171bd8      ldp   x24, x23, [var_30h]
│    │ ╎    0x00171bdc      ldp   x26, x25, [var_40h]
│    │ ╎    0x00171be0      ldp   x28, x27, [var_50h]
│    │ ╎    0x00171be4      ldp   x29, x30, [var_60h]
│    │ ╎    0x00171be8      add   sp, sp, 0x170
│    │ ╎    0x00171bec      autibsp
│    │ ╎    0x00171bf0      ret
│    └────> 0x00171bf4      ldr   x19, [sp]
│      ╎    0x00171bf8      adrp  x0, 0x26b000
│      ╎    0x00171bfc      adrp  x1, 0x256000
│      ╎    0x00171c00      add   x0, x0, 0x379                        ; int64_t arg1
│      ╎    0x00171c04      add   x1, x1, 0x116                        ; int64_t arg2
│      ╎    0x00171c08      mov   x2, x19                              ; unsigned long arg3
│      ╎    0x00171c0c      bl    fcn.0014c9f8
│      ╎    0x00171c10      mov   w8, aav.0x00001000
│      ╎    0x00171c14      sub   x2, x8, x21                          ; int64_t arg3
│      ╎    0x00171c18      mov   x0, x19                              ; int64_t arg1
│      ╎    0x00171c1c      mov   w1, wzr
│      ╎    0x00171c20      str   w27, [x26, aav.0x000004c0]
│      ╎    0x00171c24      bl    fcn.0014d8fc
│      ╎    0x00171c28      ldr   w20, [x26, aav.0x000004c0]           ; [0x4c0:4]=0xb900291f
│      ╎    0x00171c2c      mov   w27, -1
└      └──< 0x00171c30      b     0x171a70
            ; CALL XREF from fcn.00171eb4 @ 0x171ee8
            ; CALL XREF from fcn.0018b2d4 @ 0x18b390
