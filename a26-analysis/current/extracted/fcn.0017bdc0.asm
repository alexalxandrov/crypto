┌ fcn.0017bdc0();
│       ╎   ; var int64_t var_30h @ stack - 0x30
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x0017bdc0      pacibsp
│       ╎   0x0017bdc4      stp   x29, x30, [var_30h]!
│       ╎   0x0017bdc8      str   x28, [var_20h]
│       ╎   0x0017bdcc      stp   x20, x19, [var_10h]
│       ╎   0x0017bdd0      mov   x29, sp
│       ╎   0x0017bdd4      sub   sp, sp, aav.0x00000400
│       ╎   0x0017bdd8      mov   x0, sp                               ; int64_t arg1
│       ╎   0x0017bddc      mov   w2, aav.0x00000400
│       ╎   0x0017bde0      mov   w1, wzr
│       ╎   0x0017bde4      bl    fcn.0014d8fc
│       ╎   0x0017bde8      adrp  x0, 0x23a000
│       ╎   0x0017bdec      add   x0, x0, 0xffa                        ; int64_t arg1
│       ╎   0x0017bdf0      bl    fcn.001758fc
│      ┌──< 0x0017bdf4      cbz   x0, 0x17be74
│      │╎   0x0017bdf8      mov   x8, x0
│      │╎   0x0017bdfc      ldrb  w1, [x8, 0x1c]!                      ; aav.0x0000001c
│      │╎                                                              ; [0x1c:4]=0
│      │╎   0x0017be00      mov   x19, x0
│      │╎   0x0017be04      mov   x0, sp                               ; int64_t arg1
│      │╎   0x0017be08      mov   w3, aav.0x00000400
│      │╎   0x0017be0c      ldrb  w2, [x8, -8]!                        ; aav.0x00000008
│      │╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      │╎   0x0017be10      ldrb  w9, [x8, 0xb]                        ; [0xb:4]=104
│      │╎   0x0017be14      ldrb  w10, [x8, 0xa]                       ; [0xa:4]=0x6865
│      │╎   0x0017be18      ldrb  w11, [x8, 9]                         ; [0x9:4]=0x686561
│      │╎   0x0017be1c      ldrb  w12, [x8, 3]                         ; [0x3:4]=0x48776b00
│      │╎   0x0017be20      ldrb  w13, [x8, 2]                         ; [0x2:4]=0x776b0000
│      │╎   0x0017be24      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│      │╎   0x0017be28      bfi   w10, w9, 8, 8
│      │╎   0x0017be2c      bfi   w1, w11, 8, 8
│      │╎   0x0017be30      bfi   w13, w12, 8, 8
│      │╎   0x0017be34      bfi   w2, w8, 8, 8
│      │╎   0x0017be38      bfi   w1, w10, 0x10, 0x10
│      │╎   0x0017be3c      bfi   w2, w13, 0x10, 0x10
│      │╎   0x0017be40      bl    fcn.001390c0
│      │╎   0x0017be44      adrp  x1, 0x276000
│      │╎   0x0017be48      add   x1, x1, 0xa18                        ; int64_t arg2
│      │╎   0x0017be4c      mov   x0, sp                               ; int64_t arg1
│      │╎   0x0017be50      mov   w2, 9
│      │╎   0x0017be54      bl    fcn.0014dbd8
│     ┌───< 0x0017be58      cbz   w0, 0x17be9c
│     ││╎   ; CODE XREFS from fcn.0017bdc0 @ 0x17bf08, 0x17bf20, 0x17bf7c, 0x17bf94
│ ┌┌┌┌────> 0x0017be5c      add   sp, sp, aav.0x00000400
│ ╎╎╎╎││╎   0x0017be60      ldp   x20, x19, [var_10h]
│ ╎╎╎╎││╎   0x0017be64      ldr   x28, [var_20h]                       ; aav.0x00000010
│ ╎╎╎╎││╎                                                              ; [0x10:4]=0x14000004
│ ╎╎╎╎││╎   0x0017be68      ldp   x29, x30, [sp], 0x30
│ ╎╎╎╎││╎   0x0017be6c      autibsp
│ ╎╎╎╎││╎   0x0017be70      ret
│ ╎╎╎╎│└──> 0x0017be74      adrp  x0, 0x24a000
│ ╎╎╎╎│ ╎   0x0017be78      adrp  x1, 0x246000
│ ╎╎╎╎│ ╎   0x0017be7c      add   x0, x0, 0x9c8
│ ╎╎╎╎│ ╎   0x0017be80      add   x1, x1, 0x2cd
│ ╎╎╎╎│ ╎   0x0017be84      add   sp, sp, aav.0x00000400
│ ╎╎╎╎│ ╎   0x0017be88      ldp   x20, x19, [var_10h]
│ ╎╎╎╎│ ╎   0x0017be8c      ldr   x28, [var_20h]                       ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ╎╎╎╎│ ╎   0x0017be90      ldp   x29, x30, [sp], 0x30
│ ╎╎╎╎│ ╎   0x0017be94      autibsp
│ ╎╎╎╎│ └─< 0x0017be98      b     fcn.0014c9f8
│ ╎╎╎╎└───> 0x0017be9c      add   x0, x19, 0x24                        ; int64_t arg1
│ ╎╎╎╎      0x0017bea0      mov   x1, sp                               ; int64_t arg2
│ ╎╎╎╎      0x0017bea4      mov   w2, aav.0x00000400
│ ╎╎╎╎      0x0017bea8      mov   x20, sp
│ ╎╎╎╎      0x0017beac      bl    fcn.0017f2ec
│ ────────< 0x0017beb0      tbnz  w0, 0x1f, 0x17be5c
│ ╎╎╎╎      0x0017beb4      adrp  x0, 0x246000
│ ╎╎╎╎      0x0017beb8      add   x0, x0, 0x2da                        ; int64_t arg1
│ ╎╎╎╎      0x0017bebc      mov   x1, sp                               ; int64_t arg2
│ ╎╎╎╎      0x0017bec0      bl    fcn.0014c9f8
│ ╎╎╎╎      0x0017bec4      add   x20, x20, 0x20
│ ╎╎╎╎      0x0017bec8      adrp  x0, 0x27a000
│ ╎╎╎╎      0x0017becc      add   x0, x0, 0xfe8                        ; int64_t arg1
│ ╎╎╎╎      0x0017bed0      mov   x1, x20                              ; int64_t arg2
│ ╎╎╎╎      0x0017bed4      bl    fcn.0014c9f8
│ ╎╎╎╎      0x0017bed8      adrp  x1, 0x24f000
│ ╎╎╎╎      0x0017bedc      add   x1, x1, 0x7aa                        ; int64_t arg2
│ ╎╎╎╎      0x0017bee0      mov   w2, 4
│ ╎╎╎╎      0x0017bee4      mov   x0, x20                              ; int64_t arg1
│ ╎╎╎╎      0x0017bee8      bl    fcn.0014dbd8
│ ╎╎╎╎  ┌─< 0x0017beec      cbz   w0, 0x17bf0c
│ ╎╎╎╎  │   0x0017bef0      adrp  x0, 0x24a000
│ ╎╎╎╎  │   0x0017bef4      adrp  x1, 0x246000
│ ╎╎╎╎  │   0x0017bef8      add   x0, x0, 0x9ea                        ; int64_t arg1
│ ╎╎╎╎  │   0x0017befc      add   x1, x1, 0x2cd                        ; int64_t arg2
│ ╎╎╎╎  │   0x0017bf00      mov   x2, x20                              ; unsigned long arg3
│ ╎╎╎╎  │   0x0017bf04      bl    fcn.0014c9f8
│ └───────< 0x0017bf08      b     0x17be5c
│  ╎╎╎  └─> 0x0017bf0c      adrp  x8, 0x5a0000
│  ╎╎╎      0x0017bf10      ldr   x8, [x8, 0x4b8]                      ; [0x4b8:4]=0xb900211f
│  ╎╎╎      0x0017bf14      ldp   x9, x8, [x8, 0x40]
│  ╎╎╎  ┌─< 0x0017bf18      cbz   x9, 0x17bf24
│  ╎╎╎ ┌──< 0x0017bf1c      cbnz  x8, 0x17bf28
│  └──────< 0x0017bf20      b     0x17be5c
│   ╎╎┌─└─> 0x0017bf24      cbz   x8, 0x17bf80
│   ╎╎│└──> 0x0017bf28      mov   x0, sp                               ; int64_t arg1
│   ╎╎│     0x0017bf2c      mov   w2, aav.0x00000400
│   ╎╎│     0x0017bf30      mov   w1, wzr
│   ╎╎│     0x0017bf34      bl    fcn.0014d8fc
│   ╎╎│     0x0017bf38      ldrb  w2, [x19, 0x14]!                     ; aav.0x00000014
│   ╎╎│                                                                ; [0x14:4]=0
│   ╎╎│     0x0017bf3c      mov   x0, sp                               ; int64_t arg1
│   ╎╎│     0x0017bf40      mov   w3, aav.0x00000400
│   ╎╎│     0x0017bf44      ldrb  w1, [x19, 8]!                        ; aav.0x00000008
│   ╎╎│                                                                ; [0x8:4]=0x68656164 ; "daeh"
│   ╎╎│     0x0017bf48      ldrb  w8, [x19, 3]                         ; [0x3:4]=0x48776b00
│   ╎╎│     0x0017bf4c      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│   ╎╎│     0x0017bf50      ldrb  w10, [x19, 1]                        ; [0x1:4]=0x6b000000
│   ╎╎│     0x0017bf54      ldurb w11, [x19, -5]                       ; [0x5:4]=0x64214877
│   ╎╎│     0x0017bf58      ldurb w12, [x19, -6]                       ; [0x6:4]=0x61642148
│   ╎╎│     0x0017bf5c      ldurb w13, [x19, -7]                       ; [0x7:4]=0x65616421
│   ╎╎│     0x0017bf60      bfi   w9, w8, 8, 8
│   ╎╎│     0x0017bf64      bfi   w1, w10, 8, 8
│   ╎╎│     0x0017bf68      bfi   w12, w11, 8, 8
│   ╎╎│     0x0017bf6c      bfi   w2, w13, 8, 8
│   ╎╎│     0x0017bf70      bfi   w1, w9, 0x10, 0x10
│   ╎╎│     0x0017bf74      bfi   w2, w12, 0x10, 0x10
│   ╎╎│     0x0017bf78      bl    fcn.001392bc
│   └─────< 0x0017bf7c      b     0x17be5c
│    ╎└───> 0x0017bf80      adrp  x0, 0x251000
│    ╎      0x0017bf84      adrp  x1, 0x246000
│    ╎      0x0017bf88      add   x0, x0, 0x8f0                        ; int64_t arg1
│    ╎      0x0017bf8c      add   x1, x1, 0x2cd                        ; int64_t arg2
│    ╎      0x0017bf90      bl    fcn.0014c9f8
└    └────< 0x0017bf94      b     0x17be5c
            ; CALL XREF from fcn.00114100 @ 0x114290
