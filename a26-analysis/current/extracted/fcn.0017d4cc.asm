┌ fcn.0017d4cc(int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017d4cc      pacibsp
│           0x0017d4d0      sub   sp, sp, 0x20
│           0x0017d4d4      stp   x29, x30, [var_10h]
│           0x0017d4d8      add   x29, sp, 0x10
│           0x0017d4dc      adrp  x0, 0x26f000
│           0x0017d4e0      add   x0, x0, 0xe25                        ; int64_t arg1
│           0x0017d4e4      stur  wzr, [var_10h + 0xc]
│           0x0017d4e8      bl    fcn.001758fc
│       ┌─< 0x0017d4ec      cbz   x0, 0x17d53c
│       │   0x0017d4f0      ldrb  w1, [x0, 0x1c]!                      ; aav.0x0000001c
│       │                                                              ; [0x1c:4]=0
│       │   0x0017d4f4      mov   w3, 4
│       │   0x0017d4f8      ldrb  w8, [x0, -8]!                        ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x0017d4fc      ldrb  w12, [x0, 3]                         ; [0x3:4]=0x48776b00
│       │   0x0017d500      ldrb  w13, [x0, 2]                         ; [0x2:4]=0x776b0000
│       │   0x0017d504      ldrb  w14, [x0, 1]                         ; [0x1:4]=0x6b000000
│       │   0x0017d508      ldrb  w9, [x0, 0xb]                        ; [0xb:4]=104
│       │   0x0017d50c      ldrb  w10, [x0, 0xa]                       ; [0xa:4]=0x6865
│       │   0x0017d510      ldrb  w11, [x0, 9]                         ; [0x9:4]=0x686561
│       │   0x0017d514      bfi   w13, w12, 8, 8
│       │   0x0017d518      bfi   w8, w14, 8, 8
│       │   0x0017d51c      bfi   w10, w9, 8, 8
│       │   0x0017d520      bfi   w1, w11, 8, 8
│       │   0x0017d524      bfi   w8, w13, 0x10, 0x10
│       │   0x0017d528      bfi   w1, w10, 0x10, 0x10
│       │   0x0017d52c      add   w2, w8, 0x10
│       │   0x0017d530      sub   x0, var_10h + 0x14                   ; int64_t arg1
│       │   0x0017d534      bl    fcn.001390c0
│      ┌──< 0x0017d538      b     0x17d548
│      │└─> 0x0017d53c      adrp  x0, 0x256000
│      │    0x0017d540      add   x0, x0, 0x25d                        ; int64_t arg1
│      │    0x0017d544      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.0017d4cc @ 0x17d538
│      └──> 0x0017d548      adrp  x1, 0x254000
│           0x0017d54c      add   x1, x1, 0x113                        ; int64_t arg2
│           0x0017d550      sub   x0, var_10h + 0x14                   ; int64_t arg1
│           0x0017d554      mov   w2, 4
│           0x0017d558      bl    fcn.0014dc20
│       ┌─< 0x0017d55c      cbz   w0, 0x17d594
│       │   0x0017d560      sub   x0, var_10h + 0x14                   ; int64_t arg1
│       │   0x0017d564      mov   w1, 4
│       │   0x0017d568      bl    fcn.0017d6ac
│      ┌──< 0x0017d56c      cbnz  w0, 0x17d58c
│      ││   0x0017d570      ldurb w1, [var_10h + 0xc]
│      ││   0x0017d574      ldurb w2, [var_10h + 0xd]
│      ││   0x0017d578      ldurb w3, [var_10h + 0xe]
│      ││   0x0017d57c      ldurb w4, [var_10h + 0xf]
│      ││   0x0017d580      adrp  x0, 0x248000
│      ││   0x0017d584      add   x0, x0, 0x5de                        ; int64_t arg1
│      ││   0x0017d588      bl    fcn.0014c9f8
│      └──> 0x0017d58c      mov   w0, -1
│      ┌──< 0x0017d590      b     0x17d5a4
│      │└─> 0x0017d594      adrp  x0, 0x25a000
│      │    0x0017d598      add   x0, x0, 0x8b2                        ; int64_t arg1
│      │    0x0017d59c      bl    fcn.0014c9f8
│      │    0x0017d5a0      mov   w0, wzr
│      │    ; CODE XREF from fcn.0017d4cc @ 0x17d590
│      └──> 0x0017d5a4      ldp   x29, x30, [var_10h]
│           0x0017d5a8      add   sp, sp, 0x20
│           0x0017d5ac      autibsp
└           0x0017d5b0      ret
        ╎   ; CALL XREF from fcn.0017bfac @ 0x17c8fc
