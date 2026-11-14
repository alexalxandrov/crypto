┌ fcn.0017bb70(int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_24h @ stack - 0x24
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017bb70      pacibsp
│           0x0017bb74      sub   sp, sp, 0x30
│           0x0017bb78      stp   x29, x30, [var_20h]
│           0x0017bb7c      stp   x20, x19, [var_10h]
│           0x0017bb80      add   x29, sp, 0x10
│           0x0017bb84      adrp  x0, 0x26f000
│           0x0017bb88      add   x0, x0, 0xe25                        ; int64_t arg1
│           0x0017bb8c      strh  wzr, [var_24h]
│           0x0017bb90      str   wzr, [var_28h]
│           0x0017bb94      bl    fcn.001758fc
│       ┌─< 0x0017bb98      cbz   x0, 0x17bbe8
│       │   0x0017bb9c      ldrb  w1, [x0, 0x1c]!                      ; aav.0x0000001c
│       │                                                              ; [0x1c:4]=0
│       │   0x0017bba0      mov   w3, 6
│       │   0x0017bba4      ldrb  w8, [x0, -8]!                        ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x0017bba8      ldrb  w12, [x0, 3]                         ; [0x3:4]=0x48776b00
│       │   0x0017bbac      ldrb  w13, [x0, 2]                         ; [0x2:4]=0x776b0000
│       │   0x0017bbb0      ldrb  w14, [x0, 1]                         ; [0x1:4]=0x6b000000
│       │   0x0017bbb4      ldrb  w9, [x0, 0xb]                        ; [0xb:4]=104
│       │   0x0017bbb8      ldrb  w10, [x0, 0xa]                       ; [0xa:4]=0x6865
│       │   0x0017bbbc      ldrb  w11, [x0, 9]                         ; [0x9:4]=0x686561
│       │   0x0017bbc0      bfi   w13, w12, 8, 8
│       │   0x0017bbc4      bfi   w8, w14, 8, 8
│       │   0x0017bbc8      bfi   w10, w9, 8, 8
│       │   0x0017bbcc      bfi   w1, w11, 8, 8
│       │   0x0017bbd0      bfi   w8, w13, 0x10, 0x10
│       │   0x0017bbd4      bfi   w1, w10, 0x10, 0x10
│       │   0x0017bbd8      add   w2, w8, 0x4c9
│       │   0x0017bbdc      add   x0, var_28h                          ; int64_t arg1
│       │   0x0017bbe0      bl    fcn.001390c0
│      ┌──< 0x0017bbe4      b     0x17bbfc
│      │└─> 0x0017bbe8      adrp  x0, 0x274000
│      │    0x0017bbec      adrp  x1, 0x25c000
│      │    0x0017bbf0      add   x0, x0, 0x5dc                        ; int64_t arg1
│      │    0x0017bbf4      add   x1, x1, 0x97d                        ; int64_t arg2
│      │    0x0017bbf8      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.0017bb70 @ 0x17bbe4
│      └──> 0x0017bbfc      adrp  x1, 0x23f000
│           0x0017bc00      add   x1, x1, 0x5f                         ; int64_t arg2
│           0x0017bc04      add   x0, var_28h                          ; int64_t arg1
│           0x0017bc08      mov   w2, 6
│           0x0017bc0c      bl    fcn.0014dc20
│       ┌─< 0x0017bc10      cbnz  w0, 0x17bc90
│       │   0x0017bc14      adrp  x0, 0x261000
│       │   0x0017bc18      adrp  x1, 0x25c000
│       │   0x0017bc1c      add   x0, x0, 0xfe                         ; int64_t arg1
│       │   0x0017bc20      add   x1, x1, 0x97d                        ; int64_t arg2
│       │   0x0017bc24      bl    fcn.0014c9f8
│       │   0x0017bc28      adrp  x20, 0x5a0000
│       │   0x0017bc2c      ldr   x8, [x20, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│       │   0x0017bc30      ldr   x8, [x8, 0xb0]                       ; aav.0x000000b0
│       │                                                              ; [0xb0:4]=0xd368ac21 ; "!\xach\xd3A"
│      ┌──< 0x0017bc34      cbnz  x8, 0x17bc90
│      ││   0x0017bc38      mov   w0, 0xf
│      ││   0x0017bc3c      bl    fcn.0010c560
│      ││   0x0017bc40      ldr   x8, [x20, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│      ││   0x0017bc44      mov   x19, x0
│      ││   0x0017bc48      mov   w0, 0xf
│      ││   0x0017bc4c      add   x1, x8, 0xb0                         ; "!\xach\xd3A" ; int64_t arg2
│      ││   0x0017bc50      bl    fcn.0010c62c
│     ┌───< 0x0017bc54      cbz   x19, 0x17bc6c
│     │││   0x0017bc58      adrp  x0, 0x261000
│     │││   0x0017bc5c      add   x0, x0, 0x115                        ; int64_t arg1
│     │││   0x0017bc60      mov   x1, x19                              ; int64_t arg2
│     │││   0x0017bc64      bl    fcn.0017b890
│    ┌────< 0x0017bc68      b     0x17bc84
│    │└───> 0x0017bc6c      ldr   x8, [x20, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│    │ ││   0x0017bc70      adrp  x0, 0x276000
│    │ ││   0x0017bc74      add   x0, x0, 0x9f0                        ; int64_t arg1
│    │ ││   0x0017bc78      mov   w1, 0xf
│    │ ││   0x0017bc7c      ldr   x2, [x8, 0xb0]                       ; aav.0x000000b0
│    │ ││                                                              ; [0xb0:4]=0xd368ac21 ; "!\xach\xd3A" ; int64_t arg3
│    │ ││   0x0017bc80      bl    fcn.0017b890
│    │ ││   ; CODE XREF from fcn.0017bb70 @ 0x17bc68
│    └────> 0x0017bc84      adrp  x0, 0x267000
│      ││   0x0017bc88      add   x0, x0, 0x272                        ; int64_t arg1
│      ││   0x0017bc8c      bl    fcn.0014c9f8
│      └└─> 0x0017bc90      add   x0, var_28h                          ; int64_t arg1
│           0x0017bc94      mov   w1, 6
│           0x0017bc98      bl    fcn.0017d6ac
│       ┌─< 0x0017bc9c      cbnz  w0, 0x17bcb8
│       │   0x0017bca0      adrp  x0, 0x24c000
│       │   0x0017bca4      adrp  x1, 0x25c000
│       │   0x0017bca8      add   x0, x0, 0xccf                        ; int64_t arg1
│       │   0x0017bcac      add   x1, x1, 0x97d                        ; int64_t arg2
│       │   0x0017bcb0      add   x2, var_28h                          ; unsigned long arg3
│       │   0x0017bcb4      bl    fcn.0014c9f8
│       └─> 0x0017bcb8      ldp   x20, x19, [var_10h]
│           0x0017bcbc      ldp   x29, x30, [var_20h]
│           0x0017bcc0      add   sp, sp, 0x30
│           0x0017bcc4      autibsp
└           0x0017bcc8      ret
            ; CALL XREF from fcn.00175f44 @ 0x176a30
            ; CALL XREF from fcn.0017ed08 @ 0x17ee30
