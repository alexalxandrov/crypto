┌ fcn.0017b1f8(int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_3dh @ stack - 0x3d
│           ; var int64_t var_39h @ stack - 0x39
│           ; var int64_t var_22h @ stack - 0x22
│           ; var int64_t var_21h @ stack - 0x21
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017b1f8      pacibsp
│           0x0017b1fc      sub   sp, sp, 0x40
│           0x0017b200      stp   x29, x30, [var_20h]
│           0x0017b204      str   x19, [var_10h]
│           0x0017b208      add   x29, sp, 0x20
│           0x0017b20c      adrp  x0, 0x23a000
│           0x0017b210      add   x0, x0, str.Error_initializing_runtime_service__s ; 0xa4a ; "\nError initializing runtime service %s\n" ; int64_t arg1
│           0x0017b214      bl    fcn.001758fc
│       ┌─< 0x0017b218      cbz   x0, 0x17b2d8
│       │   0x0017b21c      mov   x19, x0
│       │   0x0017b220      mov   x0, sp                               ; int64_t arg1
│       │   0x0017b224      mov   w2, 0x20
│       │   0x0017b228      mov   w1, wzr
│       │   0x0017b22c      bl    fcn.0014d8fc
│       │   0x0017b230      ldrb  w8, [x19, 0x18]!                     ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x0017b234      mov   x0, sp                               ; int64_t arg1
│       │   0x0017b238      mov   w3, 0x20
│       │   0x0017b23c      ldrb  w9, [x19, -4]!                       ; str.kwH_daeh
│       │                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│       │   0x0017b240      ldrb  w1, [x19, 8]!                        ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x0017b244      ldrb  w10, [x19, 3]                        ; [0x3:4]=0x48776b00
│       │   0x0017b248      ldrb  w11, [x19, 2]                        ; [0x2:4]=0x776b0000
│       │   0x0017b24c      ldrb  w12, [x19, 1]                        ; [0x1:4]=0x6b000000
│       │   0x0017b250      ldurb w13, [x19, -5]                       ; [0x5:4]=0x64214877
│       │   0x0017b254      ldurb w14, [x19, -6]                       ; [0x6:4]=0x61642148
│       │   0x0017b258      ldurb w15, [x19, -7]                       ; [0x7:4]=0x65616421
│       │   0x0017b25c      bfi   w11, w10, 8, 8
│       │   0x0017b260      ldurb w10, [x19, -1]                       ; [0x1:4]=0x6b000000
│       │   0x0017b264      bfi   w1, w12, 8, 8
│       │   0x0017b268      ldurb w12, [x19, -2]                       ; [0x2:4]=0x776b0000
│       │   0x0017b26c      ldurb w16, [x19, -3]                       ; [0x3:4]=0x48776b00
│       │   0x0017b270      bfi   w14, w13, 8, 8
│       │   0x0017b274      bfi   w9, w15, 8, 8
│       │   0x0017b278      bfi   w12, w10, 8, 8
│       │   0x0017b27c      bfi   w8, w16, 8, 8
│       │   0x0017b280      bfi   w9, w14, 0x10, 0x10
│       │   0x0017b284      bfi   w8, w12, 0x10, 0x10
│       │   0x0017b288      add   w8, w9, w8
│       │   0x0017b28c      bfi   w1, w11, 0x10, 0x10
│       │   0x0017b290      sub   w2, w8, 3
│       │   0x0017b294      bl    fcn.001390c0
│       │   0x0017b298      ldrb  w9, [var_22h]                        ; [0x1e:4]=0x9400000
│       │   0x0017b29c      mov   w8, wzr
│       │   0x0017b2a0      cmp   w9, 2
│       │   0x0017b2a4      mov   w9, wzr
│      ┌──< 0x0017b2a8      b.ne  0x17b2ec
│      ││   0x0017b2ac      ldrb  w8, [var_21h]                        ; [0x1f:4]=0x94000
│      ││   0x0017b2b0      cmp   w8, 6
│     ┌───< 0x0017b2b4      b.ne  0x17b2e4
│     │││   0x0017b2b8      ldrb  w8, [var_39h]                        ; [0x7:4]=0x65616421
│     │││   0x0017b2bc      ldrb  w9, [var_3dh]                        ; [0x3:4]=0x48776b00
│     │││   0x0017b2c0      cmp   w8, 8
│     │││   0x0017b2c4      cset  w10, eq
│     │││   0x0017b2c8      cmp   w9, 8
│     │││   0x0017b2cc      csel  w8, w10, wzr, eq
│     │││   0x0017b2d0      csel  w9, wzr, w10, eq
│    ┌────< 0x0017b2d4      b     0x17b2ec
│    │││└─> 0x0017b2d8      adrp  x0, 0x254000
│    │││    0x0017b2dc      add   x0, x0, 0x6a                         ; int64_t arg1
│    │││    0x0017b2e0      bl    fcn.0014c9f8
│    │└───> 0x0017b2e4      mov   w8, wzr
│    │ │    0x0017b2e8      mov   w9, wzr
│    │ │    ; CODE XREF from fcn.0017b1f8 @ 0x17b2d4
│    └─└──> 0x0017b2ec      ldr   x19, [var_10h]                       ; aav.0x00000030
│                                                                      ; [0x30:4]=0x58000911
│           0x0017b2f0      ldp   x29, x30, [var_20h]
│           0x0017b2f4      orr   w0, w9, w8
│           0x0017b2f8      add   sp, sp, 0x40
│           0x0017b2fc      autibsp
└           0x0017b300      ret
        ╎   ; CALL XREF from fcn.0017b428 @ 0x17b434
