┌ fcn.0017af7c(unsigned long arg1);
│           ; arg unsigned long arg1 @ x0
│           ; var int64_t var_21h @ stack - 0x21
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017af7c      pacibsp
│           0x0017af80      stp   x29, x30, [var_20h]!
│           0x0017af84      str   x28, [var_10h]
│           0x0017af88      mov   x29, sp
│           0x0017af8c      sub   sp, sp, str.k__9Ki_8                 ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│           0x0017af90      mov   w8, 1
│           0x0017af94      cmp   w0, 1                                ; arg1
│           0x0017af98      str   w8, [var_10h + 0x2c]
│       ┌─< 0x0017af9c      b.eq  0x17afd4
│      ┌──< 0x0017afa0      cbnz  w0, 0x17afcc
│      ││   0x0017afa4      adrp  x8, 0x56f000
│      ││   0x0017afa8      ldr   w8, [x8, 0x4dc]                      ; [0x4dc:4]=0xb900451f
│      ││   0x0017afac      cmp   w8, 1
│     ┌───< 0x0017afb0      b.ne  0x17afcc
│     │││   0x0017afb4      add   x0, var_10h + 0x2c                   ; int64_t arg1
│     │││   0x0017afb8      bl    fcn.0012577c
│    ┌────< 0x0017afbc      cbz   w0, 0x17b080
│    ││││   0x0017afc0      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│    ││││   0x0017afc4      add   x0, x0, 0xd3f
│   ┌─────< 0x0017afc8      b     0x17b06c
│   ││└└──> 0x0017afcc      mov   w0, wzr                              ; arg1
│   ││ ┌──< 0x0017afd0      b     0x17b08c
│   ││ │└─> 0x0017afd4      mov   x0, sp                               ; int64_t arg1
│   ││ │    0x0017afd8      mov   w2, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│   ││ │    0x0017afdc      mov   w1, wzr
│   ││ │    0x0017afe0      bl    fcn.0014d8fc
│   ││ │    0x0017afe4      adrp  x0, 0x265000
│   ││ │    0x0017afe8      add   x0, x0, 0x467                        ; int64_t arg1
│   ││ │    0x0017afec      bl    fcn.001758fc
│   ││ │┌─< 0x0017aff0      cbz   x0, 0x17b064
│   ││ ││   0x0017aff4      ldrb  w1, [x0, 0x1c]!                      ; aav.0x0000001c
│   ││ ││                                                              ; [0x1c:4]=0
│   ││ ││   0x0017aff8      mov   w3, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│   ││ ││   0x0017affc      ldrb  w8, [x0, -8]!                        ; aav.0x00000008
│   ││ ││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│   ││ ││   0x0017b000      ldrb  w9, [x0, 4]!                         ; str.kwH_daeh
│   ││ ││                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│   ││ ││   0x0017b004      ldrb  w10, [x0, 7]                         ; [0x7:4]=0x65616421
│   ││ ││   0x0017b008      ldrb  w11, [x0, 6]                         ; [0x6:4]=0x61642148
│   ││ ││   0x0017b00c      ldrb  w12, [x0, 5]                         ; [0x5:4]=0x64214877
│   ││ ││   0x0017b010      ldurb w13, [x0, -1]                        ; [0x1:4]=0x6b000000
│   ││ ││   0x0017b014      ldurb w14, [x0, -2]                        ; [0x2:4]=0x776b0000
│   ││ ││   0x0017b018      ldurb w15, [x0, -3]                        ; [0x3:4]=0x48776b00
│   ││ ││   0x0017b01c      bfi   w11, w10, 8, 8
│   ││ ││   0x0017b020      ldrb  w10, [x0, 3]                         ; [0x3:4]=0x48776b00
│   ││ ││   0x0017b024      bfi   w1, w12, 8, 8
│   ││ ││   0x0017b028      ldrb  w12, [x0, 2]                         ; [0x2:4]=0x776b0000
│   ││ ││   0x0017b02c      ldrb  w16, [x0, 1]                         ; [0x1:4]=0x6b000000
│   ││ ││   0x0017b030      bfi   w14, w13, 8, 8
│   ││ ││   0x0017b034      bfi   w8, w15, 8, 8
│   ││ ││   0x0017b038      bfi   w12, w10, 8, 8
│   ││ ││   0x0017b03c      bfi   w9, w16, 8, 8
│   ││ ││   0x0017b040      bfi   w8, w14, 0x10, 0x10
│   ││ ││   0x0017b044      bfi   w9, w12, 0x10, 0x10
│   ││ ││   0x0017b048      add   w8, w8, w9
│   ││ ││   0x0017b04c      bfi   w1, w11, 0x10, 0x10
│   ││ ││   0x0017b050      sub   w2, w8, 1
│   ││ ││   0x0017b054      mov   x0, sp                               ; int64_t arg1
│   ││ ││   0x0017b058      bl    fcn.001390c0
│   ││ ││   0x0017b05c      ldrb  w0, [var_21h]                        ; [0x1ff:4]=0x40096b8b
│   ││┌───< 0x0017b060      b     0x17b08c
│   ││││└─> 0x0017b064      adrp  x0, 0x27a000
│   ││││    0x0017b068      add   x0, x0, 0xf70
│   ││││    ; CODE XREF from fcn.0017af7c @ 0x17afc8
│   └─────> 0x0017b06c      adrp  x1, 0x26b000
│    │││    0x0017b070      add   x1, x1, 0x4ca                        ; int64_t arg2
│    │││    0x0017b074      bl    fcn.0014c9f8
│    │││    0x0017b078      mov   w0, wzr
│    │││┌─< 0x0017b07c      b     0x17b08c
│    └────> 0x0017b080      ldr   w8, [var_10h + 0x2c]                 ; aav.0x0000001c
│     │││                                                              ; [0x1c:4]=0
│     │││   0x0017b084      mov   w9, 1
│     │││   0x0017b088      sub   w0, w9, w8
│     │││   ; CODE XREFS from fcn.0017af7c @ 0x17afd0, 0x17b060, 0x17b07c
│     └└└─> 0x0017b08c      add   sp, sp, str.k__9Ki_8
│           0x0017b090      ldr   x28, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0017b094      ldp   x29, x30, [sp], 0x20
│           0x0017b098      autibsp
└           0x0017b09c      ret
            ; CALL XREF from fcn.00154834 @ 0x1548a0
            ; CALL XREFS from fcn.0017db48 @ 0x17dbe8, 0x17de14
            ; CALL XREF from fcn.001866ac @ 0x18672c
            ; CALL XREF from fcn.00187cf0 @ 0x187e64
