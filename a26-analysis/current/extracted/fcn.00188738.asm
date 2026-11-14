┌ fcn.00188738(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg int64_t arg2 @ x1
│       ╎   ; arg int64_t arg3 @ x2
│       ╎   ; arg int64_t arg4 @ x3
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x00188738      pacibsp
│       ╎   0x0018873c      stp   x29, x30, [var_20h]!
│       ╎   0x00188740      stp   x20, x19, [var_10h]
│       ╎   0x00188744      mov   x29, sp
│       ╎   0x00188748      mov   x19, x0                              ; arg1
│       ╎   0x0018874c      adrp  x0, 0x26f000
│       ╎   0x00188750      add   x0, x0, 0xe25                        ; int64_t arg1
│       ╎   0x00188754      bl    fcn.001758fc
│      ┌──< 0x00188758      cbz   x0, 0x1887c8
│      │╎   0x0018875c      mov   x20, x0
│      │╎   0x00188760      adrp  x0, 0x279000
│      │╎   0x00188764      adrp  x1, 0x241000
│      │╎   0x00188768      add   x0, x0, 0xe99                        ; int64_t arg1
│      │╎   0x0018876c      add   x1, x1, 0x8fb                        ; int64_t arg2
│      │╎   0x00188770      bl    fcn.0014c9f8
│      │╎   0x00188774      ldrb  w8, [x20, 0x14]!                     ; aav.0x00000014
│      │╎                                                              ; [0x14:4]=0
│      │╎   0x00188778      mov   x0, x19
│      │╎   0x0018877c      mov   w3, 0x2c00
│      │╎   0x00188780      ldrb  w1, [x20, 8]!                        ; aav.0x00000008
│      │╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      │╎   0x00188784      ldurb w12, [x20, -5]                       ; [0x5:4]=0x64214877
│      │╎   0x00188788      ldurb w13, [x20, -6]                       ; [0x6:4]=0x61642148
│      │╎   0x0018878c      ldurb w14, [x20, -7]                       ; [0x7:4]=0x65616421
│      │╎   0x00188790      ldrb  w9, [x20, 3]                         ; [0x3:4]=0x48776b00
│      │╎   0x00188794      ldrb  w10, [x20, 2]                        ; [0x2:4]=0x776b0000
│      │╎   0x00188798      ldrb  w11, [x20, 1]                        ; [0x1:4]=0x6b000000
│      │╎   0x0018879c      ldp   x20, x19, [var_10h]
│      │╎   0x001887a0      bfi   w13, w12, 8, 8
│      │╎   0x001887a4      bfi   w8, w14, 8, 8
│      │╎   0x001887a8      bfi   w10, w9, 8, 8
│      │╎   0x001887ac      bfi   w1, w11, 8, 8
│      │╎   0x001887b0      bfi   w8, w13, 0x10, 0x10
│      │╎   0x001887b4      bfi   w1, w10, 0x10, 0x10
│      │╎   0x001887b8      add   w2, w8, 0x12
│      │╎   0x001887bc      ldp   x29, x30, [sp], 0x20
│      │╎   0x001887c0      autibsp
│      │└─< 0x001887c4      b     fcn.001392bc
│      └──> 0x001887c8      adrp  x0, 0x265000
│           0x001887cc      adrp  x1, 0x241000
│           0x001887d0      add   x0, x0, 0x5d3                        ; int64_t arg1
│           0x001887d4      add   x1, x1, 0x8fb                        ; int64_t arg2
│           0x001887d8      bl    fcn.0014c9f8
│           0x001887dc      ldp   x20, x19, [var_10h]
│           0x001887e0      mov   w0, -1
│           0x001887e4      ldp   x29, x30, [sp], 0x20
│           0x001887e8      autibsp
└           0x001887ec      ret
            ; CALL XREF from fcn.0018a6d4 @ 0x18aa24
