┌ fcn.0017d5b4(int64_t arg2, int64_t arg3, int64_t arg4);
│       ╎   ; arg int64_t arg2 @ x1
│       ╎   ; arg int64_t arg3 @ x2
│       ╎   ; arg int64_t arg4 @ x3
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x0017d5b4      pacibsp
│       ╎   0x0017d5b8      sub   sp, sp, 0x20
│       ╎   0x0017d5bc      stp   x29, x30, [var_10h]
│       ╎   0x0017d5c0      add   x29, sp, 0x10
│       ╎   0x0017d5c4      adrp  x0, 0x26f000
│       ╎   0x0017d5c8      add   x0, x0, 0xe25                        ; int64_t arg1
│       ╎   0x0017d5cc      stur  wzr, [var_10h + 0xc]
│       ╎   0x0017d5d0      bl    fcn.001758fc
│      ┌──< 0x0017d5d4      cbz   x0, 0x17d634
│      │╎   0x0017d5d8      ldrb  w1, [x0, 0x1c]!                      ; aav.0x0000001c
│      │╎                                                              ; [0x1c:4]=0
│      │╎   0x0017d5dc      mov   w3, 4
│      │╎   0x0017d5e0      ldrb  w8, [x0, -8]!                        ; aav.0x00000008
│      │╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      │╎   0x0017d5e4      ldrb  w12, [x0, 3]                         ; [0x3:4]=0x48776b00
│      │╎   0x0017d5e8      ldrb  w13, [x0, 2]                         ; [0x2:4]=0x776b0000
│      │╎   0x0017d5ec      ldrb  w14, [x0, 1]                         ; [0x1:4]=0x6b000000
│      │╎   0x0017d5f0      ldrb  w9, [x0, 0xb]                        ; [0xb:4]=104
│      │╎   0x0017d5f4      ldrb  w10, [x0, 0xa]                       ; [0xa:4]=0x6865
│      │╎   0x0017d5f8      ldrb  w11, [x0, 9]                         ; [0x9:4]=0x686561
│      │╎   0x0017d5fc      bfi   w13, w12, 8, 8
│      │╎   0x0017d600      bfi   w8, w14, 8, 8
│      │╎   0x0017d604      bfi   w10, w9, 8, 8
│      │╎   0x0017d608      bfi   w1, w11, 8, 8
│      │╎   0x0017d60c      bfi   w8, w13, 0x10, 0x10
│      │╎   0x0017d610      bfi   w1, w10, 0x10, 0x10
│      │╎   0x0017d614      add   w2, w8, 0x10
│      │╎   0x0017d618      sub   x0, var_10h + 0x14                   ; int64_t arg1
│      │╎   0x0017d61c      bl    fcn.001392bc
│     ┌───< 0x0017d620      tbnz  w0, 0x1f, 0x17d64c
│     ││╎   0x0017d624      adrp  x0, 0x24c000
│     ││╎   0x0017d628      add   x0, x0, 0xcf1                        ; int64_t arg1
│     ││╎   0x0017d62c      bl    fcn.0014c9f8
│    ┌────< 0x0017d630      b     0x17d664
│    ││└──> 0x0017d634      ldp   x29, x30, [var_10h]
│    ││ ╎   0x0017d638      adrp  x0, 0x274000
│    ││ ╎   0x0017d63c      add   x0, x0, 0x6a4
│    ││ ╎   0x0017d640      add   sp, sp, 0x20
│    ││ ╎   0x0017d644      autibsp
│    ││ └─< 0x0017d648      b     fcn.0014c9f8
│    │└───> 0x0017d64c      mov   w2, w0
│    │      0x0017d650      adrp  x0, 0x241000
│    │      0x0017d654      adrp  x1, 0x256000
│    │      0x0017d658      add   x0, x0, 0x4de                        ; int64_t arg1
│    │      0x0017d65c      add   x1, x1, 0x27b                        ; int64_t arg2
│    │      0x0017d660      bl    fcn.0014c9f8
│    │      ; CODE XREF from fcn.0017d5b4 @ 0x17d630
│    └────> 0x0017d664      ldp   x29, x30, [var_10h]
│           0x0017d668      add   sp, sp, 0x20
│           0x0017d66c      autibsp
└           0x0017d670      ret
            ; CALL XREF from fcn.0017bfac @ 0x17c770
            ; CALL XREF from fcn.001829a8 @ 0x182a0c
            ; CALL XREF from fcn.00189d8c @ 0x189da0
