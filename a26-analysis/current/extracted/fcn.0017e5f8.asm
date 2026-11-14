┌ fcn.0017e5f8();
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x0017e5f8      pacibsp
│       ╎   0x0017e5fc      sub   sp, sp, 0x120
│       ╎   0x0017e600      stp   x29, x30, [var_20h]
│       ╎   0x0017e604      stp   x28, x19, [var_10h]
│       ╎   0x0017e608      add   x29, sp, aav.0x00000100
│       ╎   0x0017e60c      mov   x0, sp                               ; int64_t arg1
│       ╎   0x0017e610      mov   w2, aav.0x00000100
│       ╎   0x0017e614      mov   w1, wzr
│       ╎   0x0017e618      bl    fcn.0014d8fc
│       ╎   0x0017e61c      adrp  x0, 0x278000
│       ╎   0x0017e620      add   x0, x0, 0x2f8                        ; int64_t arg1
│       ╎   0x0017e624      bl    fcn.001758fc
│      ┌──< 0x0017e628      cbz   x0, 0x17e698
│      │╎   0x0017e62c      mov   x19, x0
│      │╎   0x0017e630      ldrb  w1, [x19, 0x1c]!                     ; aav.0x0000001c
│      │╎                                                              ; [0x1c:4]=0
│      │╎   0x0017e634      mov   x0, sp                               ; int64_t arg1
│      │╎   0x0017e638      mov   w3, aav.0x00000100
│      │╎   0x0017e63c      ldrb  w2, [x19, -8]!                       ; aav.0x00000008
│      │╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      │╎   0x0017e640      ldrb  w8, [x19, 0xb]                       ; [0xb:4]=104
│      │╎   0x0017e644      ldrb  w9, [x19, 0xa]                       ; [0xa:4]=0x6865
│      │╎   0x0017e648      ldrb  w10, [x19, 9]                        ; [0x9:4]=0x686561
│      │╎   0x0017e64c      ldrb  w11, [x19, 3]                        ; [0x3:4]=0x48776b00
│      │╎   0x0017e650      ldrb  w12, [x19, 2]                        ; [0x2:4]=0x776b0000
│      │╎   0x0017e654      ldrb  w13, [x19, 1]                        ; [0x1:4]=0x6b000000
│      │╎   0x0017e658      bfi   w9, w8, 8, 8
│      │╎   0x0017e65c      bfi   w1, w10, 8, 8
│      │╎   0x0017e660      bfi   w12, w11, 8, 8
│      │╎   0x0017e664      bfi   w2, w13, 8, 8
│      │╎   0x0017e668      bfi   w1, w9, 0x10, 0x10
│      │╎   0x0017e66c      bfi   w2, w12, 0x10, 0x10
│      │╎   0x0017e670      bl    fcn.001392bc
│      │╎   0x0017e674      add   x2, x19, 0x10
│     ┌───< 0x0017e678      cbz   w0, 0x17e6bc
│     ││╎   0x0017e67c      mov   w3, w0
│     ││╎   0x0017e680      adrp  x0, 0x241000
│     ││╎   0x0017e684      adrp  x1, 0x243000
│     ││╎   0x0017e688      add   x0, x0, 0x683                        ; int64_t arg1
│     ││╎   0x0017e68c      add   x1, x1, str.0123456789abcdefghijklmnopqrstuvwxyz ; 0xb68 ; "0123456789abcdefghijklmnopqrstuvwxyz" ; int64_t arg2
│     ││╎   0x0017e690      bl    fcn.0014c9f8
│    ┌────< 0x0017e694      b     0x17e6d0
│    ││└──> 0x0017e698      ldp   x28, x19, [var_10h]
│    ││ ╎   0x0017e69c      ldp   x29, x30, [var_20h]
│    ││ ╎   0x0017e6a0      adrp  x0, 0x26d000
│    ││ ╎   0x0017e6a4      adrp  x1, 0x243000
│    ││ ╎   0x0017e6a8      add   x0, x0, 0x679
│    ││ ╎   0x0017e6ac      add   x1, x1, str.0123456789abcdefghijklmnopqrstuvwxyz ; 0xb68 ; "0123456789abcdefghijklmnopqrstuvwxyz"
│    ││ ╎   0x0017e6b0      add   sp, sp, 0x120
│    ││ ╎   0x0017e6b4      autibsp
│    ││ └─< 0x0017e6b8      b     fcn.0014c9f8
│    │└───> 0x0017e6bc      adrp  x0, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│    │      0x0017e6c0      adrp  x1, 0x243000
│    │      0x0017e6c4      add   x0, x0, 0x5e                         ; int64_t arg1
│    │      0x0017e6c8      add   x1, x1, str.0123456789abcdefghijklmnopqrstuvwxyz ; 0xb68 ; "0123456789abcdefghijklmnopqrstuvwxyz" ; int64_t arg2
│    │      0x0017e6cc      bl    fcn.0014c9f8
│    │      ; CODE XREF from fcn.0017e5f8 @ 0x17e694
│    └────> 0x0017e6d0      adrp  x0, 0x23c000
│           0x0017e6d4      add   x0, x0, 0x54e                        ; int64_t arg1
│           0x0017e6d8      bl    fcn.001758fc
│       ┌─< 0x0017e6dc      cbz   x0, 0x17e74c
│       │   0x0017e6e0      mov   x19, x0
│       │   0x0017e6e4      ldrb  w1, [x19, 0x1c]!                     ; aav.0x0000001c
│       │                                                              ; [0x1c:4]=0
│       │   0x0017e6e8      mov   x0, sp                               ; int64_t arg1
│       │   0x0017e6ec      mov   w3, aav.0x00000100
│       │   0x0017e6f0      ldrb  w2, [x19, -8]!                       ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x0017e6f4      ldrb  w8, [x19, 0xb]                       ; [0xb:4]=104
│       │   0x0017e6f8      ldrb  w9, [x19, 0xa]                       ; [0xa:4]=0x6865
│       │   0x0017e6fc      ldrb  w10, [x19, 9]                        ; [0x9:4]=0x686561
│       │   0x0017e700      ldrb  w11, [x19, 3]                        ; [0x3:4]=0x48776b00
│       │   0x0017e704      ldrb  w12, [x19, 2]                        ; [0x2:4]=0x776b0000
│       │   0x0017e708      ldrb  w13, [x19, 1]                        ; [0x1:4]=0x6b000000
│       │   0x0017e70c      bfi   w9, w8, 8, 8
│       │   0x0017e710      bfi   w1, w10, 8, 8
│       │   0x0017e714      bfi   w12, w11, 8, 8
│       │   0x0017e718      bfi   w2, w13, 8, 8
│       │   0x0017e71c      bfi   w1, w9, 0x10, 0x10
│       │   0x0017e720      bfi   w2, w12, 0x10, 0x10
│       │   0x0017e724      bl    fcn.001392bc
│       │   0x0017e728      add   x2, x19, 0x10
│      ┌──< 0x0017e72c      cbz   w0, 0x17e764
│      ││   0x0017e730      mov   w3, w0
│      ││   0x0017e734      adrp  x0, 0x241000
│      ││   0x0017e738      adrp  x1, 0x243000
│      ││   0x0017e73c      add   x0, x0, 0x683                        ; int64_t arg1
│      ││   0x0017e740      add   x1, x1, str.0123456789abcdefghijklmnopqrstuvwxyz ; 0xb68 ; "0123456789abcdefghijklmnopqrstuvwxyz" ; int64_t arg2
│      ││   0x0017e744      bl    fcn.0014c9f8
│     ┌───< 0x0017e748      b     0x17e778
│     ││└─> 0x0017e74c      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│     ││    0x0017e750      adrp  x1, 0x243000
│     ││    0x0017e754      add   x0, x0, 0xdbe                        ; int64_t arg1
│     ││    0x0017e758      add   x1, x1, str.0123456789abcdefghijklmnopqrstuvwxyz ; 0xb68 ; "0123456789abcdefghijklmnopqrstuvwxyz" ; int64_t arg2
│     ││    0x0017e75c      bl    fcn.0014c9f8
│     ││┌─< 0x0017e760      b     0x17e778
│     │└──> 0x0017e764      adrp  x0, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│     │ │   0x0017e768      adrp  x1, 0x243000
│     │ │   0x0017e76c      add   x0, x0, 0x5e                         ; int64_t arg1
│     │ │   0x0017e770      add   x1, x1, str.0123456789abcdefghijklmnopqrstuvwxyz ; 0xb68 ; "0123456789abcdefghijklmnopqrstuvwxyz" ; int64_t arg2
│     │ │   0x0017e774      bl    fcn.0014c9f8
│     │ │   ; CODE XREFS from fcn.0017e5f8 @ 0x17e748, 0x17e760
│     └─└─> 0x0017e778      ldp   x28, x19, [var_10h]
│           0x0017e77c      ldp   x29, x30, [var_20h]
│           0x0017e780      add   sp, sp, 0x120
│           0x0017e784      autibsp
└           0x0017e788      ret
            ; CALL XREF from fcn.00175f44 @ 0x176a1c
            ; CALL XREF from fcn.0017ed08 @ 0x17ee1c
