
==========================================================================================
FUNCTION: fcn.0014d60c
==========================================================================================
┌ fcn.0014d60c(unsigned long arg1, unsigned long arg2, unsigned long arg3);
│           ; arg unsigned long arg1 @ x0
│           ; arg unsigned long arg2 @ x1
│           ; arg unsigned long arg3 @ x2
│           0x0014d60c      pacibsp
│       ┌─< 0x0014d610      cbz   x2, 0x14d708
│       │   0x0014d614      cmp   x0, x1                               ; arg1
│      ┌──< 0x0014d618      b.eq  0x14d708
│      ││   0x0014d61c      orr   w8, w1, w0                           ; arg1
│      ││   0x0014d620      tst   x8, 7
│     ┌───< 0x0014d624      b.eq  0x14d674
│     │││   0x0014d628      eor   w8, w1, w0                           ; arg1
│     │││   0x0014d62c      and   w9, w0, 7                            ; arg1
│     │││   0x0014d630      mov   w10, 8
│     │││   0x0014d634      and   x8, x8, 7
│     │││   0x0014d638      cmp   x2, 8                                ; arg3
│     │││   0x0014d63c      sub   w9, w10, w9
│     │││   0x0014d640      ccmp  x8, 0, 0, hs
│     │││   0x0014d644      csel  w8, w2, w9, ne
│     │││   0x0014d648      cmp   w8, 1
│     │││   0x0014d64c      sub   x2, x2, w8, sxtw                     ; arg3
│    ┌────< 0x0014d650      b.lt  0x14d674
│    ││││   0x0014d654      add   w9, w8, 1
│    ││││   0x0014d658      mov   x8, x0                               ; arg1
│   ┌─────> 0x0014d65c      ldrb  w10, [x1], 1                         ; arg2
│   ╎││││   0x0014d660      sub   w9, w9, 1
│   ╎││││   0x0014d664      cmp   w9, 1
│   ╎││││   0x0014d668      strb  w10, [x8], 1
│   └─────< 0x0014d66c      b.gt  0x14d65c
│   ┌─────< 0x0014d670      b     0x14d678
│   │└└───> 0x0014d674      mov   x8, x0                               ; arg1
│   │  ││   ; CODE XREF from fcn.0014d60c @ 0x14d670
│   └─────> 0x0014d678      lsr   x9, x2, 3                            ; arg3
│      ││   0x0014d67c      cmp   w9, 1
│     ┌───< 0x0014d680      b.lt  0x14d69c
│     │││   0x0014d684      add   w9, w9, 1
│    ┌────> 0x0014d688      ldr   x10, [x1], 8                         ; arg2
│    ╎│││   0x0014d68c      sub   w9, w9, 1
│    ╎│││   0x0014d690      cmp   w9, 1
│    ╎│││   0x0014d694      str   x10, [x8], 8
│    └────< 0x0014d698      b.gt  0x14d688
│     └───> 0x0014d69c      ands  w9, w2, 7
│     ┌───< 0x0014d6a0      b.eq  0x14d708
│     │││   0x0014d6a4      ldrb  w10, [x1]                            ; arg2
│     │││   0x0014d6a8      cmp   w9, 1
│     │││   0x0014d6ac      strb  w10, [x8]
│    ┌────< 0x0014d6b0      b.ls  0x14d708
│    ││││   0x0014d6b4      ldrb  w10, [x1, 1]                         ; [0x1:4]=0x6b000000 ; arg2
│    ││││   0x0014d6b8      cmp   w9, 2
│    ││││   0x0014d6bc      strb  w10, [x8, 1]
│   ┌─────< 0x0014d6c0      b.eq  0x14d708
│   │││││   0x0014d6c4      ldrb  w10, [x1, 2]                         ; [0x2:4]=0x776b0000 ; arg2
│   │││││   0x0014d6c8      cmp   w9, 4
│   │││││   0x0014d6cc      strb  w10, [x8, 2]
│  ┌──────< 0x0014d6d0      b.lo  0x14d708
│  ││││││   0x0014d6d4      ldrb  w10, [x1, 3]                         ; [0x3:4]=0x48776b00 ; arg2
│  ││││││   0x0014d6d8      strb  w10, [x8, 3]
│ ┌───────< 0x0014d6dc      b.eq  0x14d708
│ │││││││   0x0014d6e0      ldrb  w10, [x1, 4]                         ; str.kwH_daeh
│ │││││││                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh" ; arg2
│ │││││││   0x0014d6e4      cmp   w9, 6
│ │││││││   0x0014d6e8      strb  w10, [x8, 4]
│ ────────< 0x0014d6ec      b.lo  0x14d708
│ │││││││   0x0014d6f0      ldrb  w10, [x1, 5]                         ; [0x5:4]=0x64214877 ; arg2
│ │││││││   0x0014d6f4      cmp   w9, 7
│ │││││││   0x0014d6f8      strb  w10, [x8, 5]
│ ────────< 0x0014d6fc      b.ne  0x14d708
│ │││││││   0x0014d700      ldrb  w9, [x1, 6]                          ; [0x6:4]=0x61642148 ; arg2
│ │││││││   0x0014d704      strb  w9, [x8, 6]
│ └└└└└└└─> 0x0014d708      autibsp
└           0x0014d70c      ret
            ; XREFS: CALL 0x0013f6f4  CALL 0x00140470  CALL 0x0014076c
            ; XREFS: CALL 0x001407f4  CALL 0x00140ad8  CALL 0x00140d80
            ; XREFS: CALL 0x00140f38  CALL 0x00140f70  CALL 0x00140fcc
            ; XREFS: CALL 0x00141630  CALL 0x001c8808  CALL 0x001c8bc0
            ; XREFS: CALL 0x001d4c24  CALL 0x001ed0b8  CALL 0x001ed2b8
            ; XREFS: CALL 0x001ed444  CALL 0x001ed48c  CALL 0x00203c7c
            ; XREFS: CALL 0x00203d5c  CALL 0x0022dc34

==========================================================================================
FUNCTION: fcn.001653ac
==========================================================================================
┌ fcn.001653ac(int64_t arg1, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001653ac      pacibsp
│           0x001653b0      stp   x29, x30, [var_30h]!
│           0x001653b4      str   x21, [var_20h]
│           0x001653b8      stp   x20, x19, [var_10h]
│           0x001653bc      mov   x29, sp
│       ┌─< 0x001653c0      cbz   x0, 0x165570
│       │   0x001653c4      mov   w8, 0x1510
│       │   0x001653c8      adrp  x21, 0x27c000
│       │   0x001653cc      movk  w8, 1, lsl 16
│       │   0x001653d0      add   x21, x21, 0xfa8
│       │   0x001653d4      mov   x19, x0                              ; arg1
│       │   0x001653d8      add   x20, x0, x8                          ; arg1
│       │   0x001653dc      mov   x0, x21                              ; int64_t arg1
│       │   0x001653e0      bl    fcn.0014db58
│       │   0x001653e4      mov   x2, x0
│       │   0x001653e8      mov   x0, x20                              ; int64_t arg1
│       │   0x001653ec      mov   x1, x21                              ; int64_t arg2
│       │   0x001653f0      bl    fcn.0014d5c8
│      ┌──< 0x001653f4      cbz   w0, 0x16559c
│      ││   0x001653f8      adrp  x21, 0x24f000
│      ││   0x001653fc      add   x21, x21, aav.0x00000520
│      ││   0x00165400      mov   x0, x21                              ; int64_t arg1
│      ││   0x00165404      bl    fcn.0014db58
│      ││   0x00165408      mov   x2, x0
│      ││   0x0016540c      mov   x0, x20                              ; int64_t arg1
│      ││   0x00165410      mov   x1, x21                              ; int64_t arg2
│      ││   0x00165414      bl    fcn.0014d5c8
│     ┌───< 0x00165418      cbz   w0, 0x1655a4
│     │││   0x0016541c      adrp  x21, 0x24a000
│     │││   0x00165420      add   x21, x21, 0x5c2
│     │││   0x00165424      mov   x0, x21                              ; int64_t arg1
│     │││   0x00165428      bl    fcn.0014db58
│     │││   0x0016542c      mov   x2, x0
│     │││   0x00165430      mov   x0, x20                              ; int64_t arg1
│     │││   0x00165434      mov   x1, x21                              ; int64_t arg2
│     │││   0x00165438      bl    fcn.0014d5c8
│    ┌────< 0x0016543c      cbz   w0, 0x1655ac
│    ││││   0x00165440      adrp  x21, 0x260000
│    ││││   0x00165444      add   x21, x21, 0xcc1
│    ││││   0x00165448      mov   x0, x21                              ; int64_t arg1
│    ││││   0x0016544c      bl    fcn.0014db58
│    ││││   0x00165450      mov   x2, x0
│    ││││   0x00165454      mov   x0, x20                              ; int64_t arg1
│    ││││   0x00165458      mov   x1, x21                              ; int64_t arg2
│    ││││   0x0016545c      bl    fcn.0014d5c8
│   ┌─────< 0x00165460      cbz   w0, 0x1655b4
│   │││││   0x00165464      adrp  x21, 0x243000
│   │││││   0x00165468      add   x21, x21, 0x724
│   │││││   0x0016546c      mov   x0, x21                              ; int64_t arg1
│   │││││   0x00165470      bl    fcn.0014db58
│   │││││   0x00165474      mov   x2, x0
│   │││││   0x00165478      mov   x0, x20                              ; int64_t arg1
│   │││││   0x0016547c      mov   x1, x21                              ; int64_t arg2
│   │││││   0x00165480      bl    fcn.0014d5c8
│  ┌──────< 0x00165484      cbz   w0, 0x1655bc
│  ││││││   0x00165488      adrp  x21, 0x241000
│  ││││││   0x0016548c      add   x21, x21, 0x23b
│  ││││││   0x00165490      mov   x0, x21                              ; int64_t arg1
│  ││││││   0x00165494      bl    fcn.0014db58
│  ││││││   0x00165498      mov   x2, x0
│  ││││││   0x0016549c      mov   x0, x20                              ; int64_t arg1
│  ││││││   0x001654a0      mov   x1, x21                              ; int64_t arg2
│  ││││││   0x001654a4      bl    fcn.0014d5c8
│ ┌───────< 0x001654a8      cbz   w0, 0x1655c4
│ │││││││   0x001654ac      adrp  x21, 0x271000
│ │││││││   0x001654b0      add   x21, x21, aav.0x00000c58
│ │││││││   0x001654b4      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001654b8      bl    fcn.0014db58
│ │││││││   0x001654bc      mov   x2, x0
│ │││││││   0x001654c0      mov   x0, x20                              ; int64_t arg1
│ │││││││   0x001654c4      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001654c8      bl    fcn.0014d5c8
│ ────────< 0x001654cc      cbz   w0, 0x1655cc
│ │││││││   0x001654d0      adrp  x21, 0x243000
│ │││││││   0x001654d4      add   x21, x21, aav.0x00000700
│ │││││││   0x001654d8      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001654dc      bl    fcn.0014db58
│ │││││││   0x001654e0      mov   x2, x0
│ │││││││   0x001654e4      mov   x0, x20                              ; int64_t arg1
│ │││││││   0x001654e8      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001654ec      bl    fcn.0014d5c8
│ ────────< 0x001654f0      cbz   w0, 0x1655d4
│ │││││││   0x001654f4      adrp  x21, 0x267000
│ │││││││   0x001654f8      add   x21, x21, 3
│ │││││││   0x001654fc      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00165500      bl    fcn.0014db58
│ │││││││   0x00165504      mov   x2, x0
│ │││││││   0x00165508      mov   x0, x20                              ; int64_t arg1
│ │││││││   0x0016550c      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00165510      bl    fcn.0014d5c8
│ ────────< 0x00165514      cbz   w0, 0x1655dc
│ │││││││   0x00165518      adrp  x21, 0x25c000
│ │││││││   0x0016551c      add   x21, x21, 0x6b1
│ │││││││   0x00165520      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00165524      bl    fcn.0014db58
│ │││││││   0x00165528      mov   x2, x0
│ │││││││   0x0016552c      mov   x0, x20                              ; int64_t arg1
│ │││││││   0x00165530      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00165534      bl    fcn.0014d5c8
│ ────────< 0x00165538      cbz   w0, 0x1655e4
│ │││││││   0x0016553c      ldrb  w3, [x20]
│ │││││││   0x00165540      ldrb  w4, [x20, 1]                         ; [0x1:4]=0x6b000000
│ │││││││   0x00165544      ldrb  w5, [x20, 2]                         ; [0x2:4]=0x776b0000
│ │││││││   0x00165548      ldrb  w6, [x20, 3]                         ; [0x3:4]=0x48776b00
│ │││││││   0x0016554c      adrp  x0, 0x276000
│ │││││││   0x00165550      adrp  x1, 0x27a000
│ │││││││   0x00165554      add   x0, x0, 0x6b2                        ; int64_t arg1
│ │││││││   0x00165558      add   x1, x1, 0xcb5                        ; int64_t arg2
│ │││││││   0x0016555c      mov   w2, 0x39d
│ │││││││   0x00165560      bl    fcn.0014c9f8
│ │││││││   0x00165564      ldr   w8, [x19]
│ │││││││   0x00165568      orr   w8, w8, aav.0x0000c000               ; "J\x85\xea\xb7>\x93\U00000012U\xf7Ѣ\U0000001c\xba\x83\xf9\xa8\xab\U00000015a\xc8\xf6\x81i\U00000011/8K\xfe`\x92\xd0\xe0n7Џ\xeb5"
│ ────────< 0x0016556c      b     0x1655e8
│ ││││││└─> 0x00165570      adrp  x1, 0x27a000
│ ││││││    0x00165574      adrp  x0, 0x23a000
│ ││││││    0x00165578      add   x1, x1, 0xcb5                        ; int64_t arg2
│ ││││││    0x0016557c      add   x0, x0, 0xb5c                        ; int64_t arg1
│ ││││││    0x00165580      mov   w2, 0x37b
│ ││││││    0x00165584      mov   w4, 1
│ ││││││    0x00165588      mov   x3, x1                               ; int64_t arg4
│ ││││││    0x0016558c      bl    fcn.0014c9f8
│ ││││││    0x00165590      mov   w0, 1
│ ││││││    0x00165594      movk  w0, 0xf04e, lsl 16
│ ││││││┌─< 0x00165598      b     0x1655f0
│ │││││└──> 0x0016559c      mov   w8, 0xc01e
│ │││││┌──< 0x001655a0      b     0x1655e8
│ ││││└───> 0x001655a4      mov   w8, 0xc01c
│ ││││┌───< 0x001655a8      b     0x1655e8
│ │││└────> 0x001655ac      mov   w8, 0xc01f
│ │││┌────< 0x001655b0      b     0x1655e8
│ ││└─────> 0x001655b4      mov   w8, 0xc01d
│ ││┌─────< 0x001655b8      b     0x1655e8
│ │└──────> 0x001655bc      mov   w8, 0xc020
│ │┌──────< 0x001655c0      b     0x1655e8
│ └───────> 0x001655c4      mov   w8, 0xc01b
│ ┌───────< 0x001655c8      b     0x1655e8
│ ────────> 0x001655cc      mov   w8, 0xc01a
│ ────────< 0x001655d0      b     0x1655e8
│ ────────> 0x001655d4      mov   w8, 0xc024
│ ────────< 0x001655d8      b     0x1655e8
│ ────────> 0x001655dc      mov   w8, 0xc012
│ ────────< 0x001655e0      b     0x1655e8
│ ────────> 0x001655e4      mov   w8, 0xc011
│ │││││││   ; XREFS: CODE 0x0016556c  CODE 0x001655a0  CODE 0x001655a8
│ │││││││   ; XREFS: CODE 0x001655b0  CODE 0x001655b8  CODE 0x001655c0
│ │││││││   ; XREFS: CODE 0x001655c8  CODE 0x001655d0  CODE 0x001655d8
│ │││││││   ; XREFS: CODE 0x001655e0
│ └└└└└└──> 0x001655e8      mov   w0, wzr
│       │   0x001655ec      str   w8, [x19]
│       │   ; CODE XREF from fcn.001653ac @ 0x165598
│       └─> 0x001655f0      ldp   x20, x19, [var_10h]
│           0x001655f4      ldr   x21, [var_20h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x001655f8      ldp   x29, x30, [sp], 0x30
│           0x001655fc      autibsp
└           0x00165600      ret
            ; CALL XREF from fcn.001639ac @ 0x16441c

==========================================================================================
FUNCTION: fcn.001584cc
==========================================================================================
┌ fcn.001584cc(int64_t arg1, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_54h @ stack - 0x54
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001584cc      pacibsp
│           0x001584d0      sub   sp, sp, 0x60
│           0x001584d4      stp   x29, x30, [var_40h]
│           0x001584d8      str   x23, [var_30h]
│           0x001584dc      stp   x22, x21, [var_20h]
│           0x001584e0      stp   x20, x19, [var_10h]
│           0x001584e4      add   x29, sp, 0x20
│       ┌─< 0x001584e8      cbz   x0, 0x158540
│       │   0x001584ec      ldr   w8, [x0]                             ; arg1
│       │   0x001584f0      mov   x19, x0                              ; arg1
│       │   0x001584f4      tst   w8, aav.0x0000c000                   ; "J\x85\xea\xb7>\x93\U00000012U\xf7Ѣ\U0000001c\xba\x83\xf9\xa8\xab\U00000015a\xc8\xf6\x81i\U00000011/8K\xfe`\x92\xd0\xe0n7Џ\xeb5"
│      ┌──< 0x001584f8      b.eq  0x158570
│      ││   0x001584fc      and   w3, w8, 0xffff3fff
│      ││   0x00158500      sub   w8, w3, 1
│      ││   0x00158504      cmp   w8, 0x24
│      ││   0x00158508      str   w3, [x19]
│     ┌───< 0x0015850c      b.hi  0x1585c8
│     │││   0x00158510      adrp  x9, 0x28b000
│     │││   0x00158514      add   x9, x9, 0x620
│     │││   0x00158518      adr   x10, 0x158528
│     │││   0x0015851c      ldrb  w11, [x9, x8]
│     │││   0x00158520      add   x10, x10, x11, lsl 2                 ; 0x158630
│     │││                                                              ; fcn.00158630
│     │││   0x00158524      br    x10
      │││   ; STRING XREF from fcn.001584cc @ 0x158518
..
│     ││└─> 0x00158540      adrp  x1, 0x247000
│     ││    0x00158544      adrp  x0, 0x23a000
│     ││    0x00158548      add   x1, x1, 0xfb8                        ; int64_t arg2
│     ││    0x0015854c      add   x0, x0, 0xb5c                        ; int64_t arg1
│     ││    0x00158550      mov   w2, 0xe
│     ││    0x00158554      mov   w4, 1
│     ││    0x00158558      mov   x3, x1                               ; int64_t arg4
│     ││    0x0015855c      bl    fcn.0014c9f8
│     ││    0x00158560      mov   w8, 0x10
│     ││    0x00158564      movk  w8, 0xf004, lsl 16
│     ││    0x00158568      sub   w21, w8, 0xf
│     ││    0x0015856c      b     0x158ac8
│     │└──> 0x00158570      mov   w21, 0x10
│     │     0x00158574      adrp  x0, 0x26d000
│     │     0x00158578      adrp  x1, 0x247000
│     │     0x0015857c      mov   w3, 0x10
│     │     0x00158580      movk  w21, 0xf004, lsl 16
│     │     0x00158584      add   x0, x0, 0x1f0
│     │     0x00158588      add   x1, x1, 0xfb8
│     │     0x0015858c      mov   w2, 0x14
│     │     0x00158590      movk  w3, 0xf004, lsl 16
│     │     0x00158594      b     0x158ac4
..
│     └───> 0x001585c8      adrp  x0, 0x26b000
│           0x001585cc      adrp  x1, 0x271000
│           0x001585d0      add   x0, x0, 0x9f                         ; int64_t arg1
│           0x001585d4      add   x1, x1, 0xb82                        ; int64_t arg2
│           0x001585d8      mov   w2, 0x26b
│           0x001585dc      bl    fcn.0014c9f8
│           0x001585e0      b     0x1587c4
..
            ; CODE XREFS from fcn.001584cc @ 0x158520, 0x158524
│ │││││││   ; XREFS(22)
│           ; CODE XREF from fcn.001584cc @ 0x1585e0
│           0x001587c4      ldr   x22, [x19, 8]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh" ; arg1
│           0x001587c8      str   wzr, [var_54h + 0xc]
│           0x001587cc      stp   xzr, xzr, [var_58h]
│       ┌─< 0x001587d0      tbz   w22, 0x15, 0x15886c
│       │   0x001587d4      ldr   w8, [x19]
│       │   0x001587d8      cmp   w8, 0x19
│      ┌──< 0x001587dc      b.ne  0x15886c
│     ┌───< 0x001587e0      tbz   w22, 0x1d, 0x15886c
│     │││   0x001587e4      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│     │││   0x001587e8      mov   w1, 0x10
│     │││   0x001587ec      add   x20, x19, 0x28                       ; aav.0x00000028
│     │││   0x001587f0      bl    fcn.00163120
│    ┌────< 0x001587f4      cbz   w0, 0x15896c
│    ││││   0x001587f8      adrp  x21, 0x25e000
│    ││││   0x001587fc      add   x21, x21, 0x5ec
│    ││││   0x00158800      mov   x0, x21                              ; int64_t arg1
│    ││││   0x00158804      bl    fcn.0014db58
│    ││││   0x00158808      mov   x2, x0
│    ││││   0x0015880c      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│    ││││   0x00158810      mov   x1, x21                              ; int64_t arg2
│    ││││   0x00158814      bl    fcn.0014d5c8
│   ┌─────< 0x00158818      cbz   w0, 0x158af0
│   │││││   0x0015881c      adrp  x21, 0x27a000
│   │││││   0x00158820      add   x21, x21, 0xaa2
│   │││││   0x00158824      mov   x0, x21                              ; int64_t arg1
│   │││││   0x00158828      bl    fcn.0014db58
│   │││││   0x0015882c      mov   x2, x0
│   │││││   0x00158830      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│   │││││   0x00158834      mov   x1, x21                              ; int64_t arg2
│   │││││   0x00158838      bl    fcn.0014d5c8
│  ┌──────< 0x0015883c      cbz   w0, 0x158af8
│  ││││││   0x00158840      adrp  x0, 0x257000
│  ││││││   0x00158844      adrp  x1, 0x27a000
│  ││││││   0x00158848      add   x0, x0, 0xa2b                        ; int64_t arg1
│  ││││││   0x0015884c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│  ││││││   0x00158850      mov   w2, 0x51                             ; 'Q'
│  ││││││   0x00158854      mov   x3, x20                              ; int64_t arg4
│  ││││││   0x00158858      bl    fcn.0014c9f8
│  ││││││   0x0015885c      mov   w8, 0x10
│  ││││││   0x00158860      movk  w8, 0xf076, lsl 16
│  ││││││   0x00158864      orr   w21, w8, 4
│ ┌───────< 0x00158868      b     0x158aac
│ ││││└└└─> 0x0015886c      ldrb  w8, [x19, 0x19]                      ; [0x19:4]=0x76000 "........"
│ ││││  ┌─< 0x00158870      tbz   w8, 2, 0x158914
│ ││││ ┌──< 0x00158874      tbnz  w22, 5, 0x158914
│ ││││┌───< 0x00158878      tbz   w22, 0x1d, 0x158950
│ │││││││   0x0015887c      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158880      mov   w1, 0x10
│ │││││││   0x00158884      add   x20, x19, 0x28                       ; aav.0x00000028
│ │││││││   0x00158888      bl    fcn.00163120
│ ────────< 0x0015888c      cbz   w0, 0x158950
│ │││││││   0x00158890      adrp  x21, 0x265000
│ │││││││   0x00158894      add   x21, x21, 0xbd
│ │││││││   0x00158898      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x0015889c      bl    fcn.0014db58
│ │││││││   0x001588a0      mov   x2, x0
│ │││││││   0x001588a4      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001588a8      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001588ac      bl    fcn.0014d5c8
│ ────────< 0x001588b0      cbz   w0, 0x158ae8
│ │││││││   0x001588b4      adrp  x21, 0x278000
│ │││││││   0x001588b8      add   x21, x21, aav.0x000009a8             ; "-EL1"
│ │││││││   0x001588bc      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001588c0      bl    fcn.0014db58
│ │││││││   0x001588c4      mov   x2, x0
│ │││││││   0x001588c8      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001588cc      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001588d0      bl    fcn.0014d5c8
│ ────────< 0x001588d4      cbz   w0, 0x158ae8
│ │││││││   0x001588d8      adrp  x21, 0x27a000
│ │││││││   0x001588dc      add   x21, x21, 0xaa2
│ │││││││   0x001588e0      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001588e4      bl    fcn.0014db58
│ │││││││   0x001588e8      mov   x2, x0
│ │││││││   0x001588ec      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001588f0      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001588f4      bl    fcn.0014d5c8
│ ────────< 0x001588f8      cbz   w0, 0x158ae8
│ │││││││   0x001588fc      adrp  x0, 0x27c000
│ │││││││   0x00158900      adrp  x1, 0x27a000
│ │││││││   0x00158904      add   x0, x0, 0xe56
│ │││││││   0x00158908      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ │││││││   0x0015890c      mov   w2, 0x65                             ; 'e'
│ ────────< 0x00158910      b     0x158a74
│ │││││└└─> 0x00158914      ldr   w8, [x19]
│ │││││     0x00158918      cmp   w8, 0x21                             ; '!'
│ │││││ ┌─< 0x0015891c      b.eq  0x1589b8
│ │││││┌──< 0x00158920      tbnz  w22, 5, 0x158988
│ │││││││   0x00158924      adrp  x0, 0x271000
│ │││││││   0x00158928      adrp  x1, 0x27a000
│ │││││││   0x0015892c      add   x0, x0, 0xafb                        ; int64_t arg1
│ │││││││   0x00158930      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│ │││││││   0x00158934      mov   w2, 0x6c
│ │││││││   0x00158938      bl    fcn.0014c9f8
│ │││││││   0x0015893c      mov   w9, 0x10
│ │││││││   0x00158940      mov   w8, 5
│ │││││││   0x00158944      movk  w9, 0xf076, lsl 16
│ │││││││   0x00158948      orr   w21, w9, w8
│ ────────< 0x0015894c      b     0x158aac
│ ────└───> 0x00158950      adrp  x0, 0x26f000
│ ││││ ││   0x00158954      adrp  x1, 0x27a000
│ ││││ ││   0x00158958      mov   w21, 0x10
│ ││││ ││   0x0015895c      add   x0, x0, 0xa60
│ ││││ ││   0x00158960      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ ││││ ││   0x00158964      mov   w2, 0x5b                             ; '['
│ ││││┌───< 0x00158968      b     0x158aa4
│ │││└────> 0x0015896c      adrp  x0, 0x276000
│ │││ │││   0x00158970      adrp  x1, 0x27a000
│ │││ │││   0x00158974      mov   w21, 0x10
│ │││ │││   0x00158978      add   x0, x0, 0x52c
│ │││ │││   0x0015897c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ │││ │││   0x00158980      mov   w2, 0x47                             ; 'G'
│ │││┌────< 0x00158984      b     0x158aa4
│ │││││└──> 0x00158988      adrp  x21, 0x24f000
│ │││││ │   0x0015898c      mov   w8, 0x127a
│ │││││ │   0x00158990      add   x21, x21, 0x342
│ │││││ │   0x00158994      movk  w8, 3, lsl 16
│ │││││ │   0x00158998      mov   x0, x21                              ; int64_t arg1
│ │││││ │   0x0015899c      add   x20, x19, x8
│ │││││ │   0x001589a0      bl    fcn.0014db58
│ │││││ │   0x001589a4      mov   x2, x0
│ │││││ │   0x001589a8      mov   x0, x20                              ; int64_t arg1
│ │││││ │   0x001589ac      mov   x1, x21                              ; int64_t arg2
│ │││││ │   0x001589b0      bl    fcn.0014d5c8
│ │││││┌──< 0x001589b4      cbz   w0, 0x158b68
│ ──────└─> 0x001589b8      tbz   w22, 0x1d, 0x158a8c
│ ││││││    0x001589bc      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ ││││││    0x001589c0      mov   w1, 0x10
│ ││││││    0x001589c4      add   x20, x19, 0x28                       ; aav.0x00000028
│ ││││││    0x001589c8      bl    fcn.00163120
│ ││││││┌─< 0x001589cc      cbz   w0, 0x158a8c
│ │││││││   0x001589d0      adrp  x21, 0x25e000
│ │││││││   0x001589d4      add   x21, x21, 0x5ec
│ │││││││   0x001589d8      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001589dc      bl    fcn.0014db58
│ │││││││   0x001589e0      mov   x2, x0
│ │││││││   0x001589e4      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001589e8      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001589ec      bl    fcn.0014d5c8
│ ────────< 0x001589f0      cbz   w0, 0x158af0
│ │││││││   0x001589f4      adrp  x21, 0x27a000
│ │││││││   0x001589f8      add   x21, x21, 0xaa2
│ │││││││   0x001589fc      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00158a00      bl    fcn.0014db58
│ │││││││   0x00158a04      mov   x2, x0
│ │││││││   0x00158a08      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158a0c      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00158a10      bl    fcn.0014d5c8
│ ────────< 0x00158a14      cbz   w0, 0x158af8
│ │││││││   0x00158a18      adrp  x21, 0x265000
│ │││││││   0x00158a1c      add   x21, x21, 0xbd
│ │││││││   0x00158a20      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00158a24      bl    fcn.0014db58
│ │││││││   0x00158a28      mov   x2, x0
│ │││││││   0x00158a2c      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158a30      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00158a34      bl    fcn.0014d5c8
│ ────────< 0x00158a38      cbz   w0, 0x158ae8
│ │││││││   0x00158a3c      adrp  x21, 0x278000
│ │││││││   0x00158a40      add   x21, x21, aav.0x000009a8             ; "-EL1"
│ │││││││   0x00158a44      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00158a48      bl    fcn.0014db58
│ │││││││   0x00158a4c      mov   x2, x0
│ │││││││   0x00158a50      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158a54      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00158a58      bl    fcn.0014d5c8
│ ────────< 0x00158a5c      cbz   w0, 0x158ae8
│ │││││││   0x00158a60      adrp  x0, 0x27c000
│ │││││││   0x00158a64      adrp  x1, 0x27a000
│ │││││││   0x00158a68      add   x0, x0, 0xe56
│ │││││││   0x00158a6c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ │││││││   0x00158a70      mov   w2, 0x91
│ │││││││   ; CODE XREF from fcn.001584cc @ 0x158910
│ ────────> 0x00158a74      mov   x3, x20                              ; int64_t arg4
│ │││││││   0x00158a78      bl    fcn.0014c9f8
│ │││││││   0x00158a7c      mov   w8, 0x10
│ │││││││   0x00158a80      movk  w8, 0xf076, lsl 16
│ │││││││   0x00158a84      orr   w21, w8, 3
│ ────────< 0x00158a88      b     0x158aac
│ ──────└─> 0x00158a8c      adrp  x0, 0x26f000
│ ││││││    0x00158a90      adrp  x1, 0x27a000
│ ││││││    0x00158a94      mov   w21, 0x10
│ ││││││    0x00158a98      add   x0, x0, 0xa60
│ ││││││    0x00158a9c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ ││││││    0x00158aa0      mov   w2, 0x82
│ ││││││    ; CODE XREFS from fcn.001584cc @ 0x158968, 0x158984
│ │││└└───> 0x00158aa4      movk  w21, 0xf076, lsl 16
│ │││  │    0x00158aa8      bl    fcn.0014c9f8
│ │││  │    ; CODE XREFS from fcn.001584cc @ 0x158868, 0x15894c, 0x158a88, 0x158bb4
│ └───────> 0x00158aac      adrp  x0, 0x255000
│  ││  │    0x00158ab0      adrp  x1, 0x247000
│  ││  │    0x00158ab4      add   x0, x0, 0xcf3
│  ││  │    0x00158ab8      add   x1, x1, 0xfb8
│  ││  │    0x00158abc      mov   w2, 0x1c
│  ││  │    ; CODE XREFS from fcn.001584cc @ 0x158cc0, 0x158db0, 0x158f64, 0x159110
│  ││  │    0x00158ac0      mov   w3, w21
│  ││  │    ; CODE XREF from fcn.001584cc @ 0x158594
│  ││  │    0x00158ac4      bl    fcn.0014c9f8
│  ││  │    ; CODE XREF from fcn.001584cc @ 0x15856c
│  ││  │    0x00158ac8      mov   w0, w21
│  ││  │    0x00158acc      ldp   x20, x19, [var_10h]
│  ││  │    0x00158ad0      ldp   x22, x21, [var_20h]
│  ││  │    0x00158ad4      ldr   x23, [var_30h]                       ; aav.0x00000030
│  ││  │                                                               ; [0x30:4]=0x58000911
│  ││  │    0x00158ad8      ldp   x29, x30, [var_40h]
│  ││  │    0x00158adc      add   sp, sp, 0x60
│  ││  │    0x00158ae0      autibsp
│  ││  │    0x00158ae4      ret
│ ────────> 0x00158ae8      mov   w3, 0x19
│  ││  │┌─< 0x00158aec      b     0x158afc
│ ──└─────> 0x00158af0      mov   w3, 0x14
│  │  ┌───< 0x00158af4      b     0x158afc
│ ─└──────> 0x00158af8      mov   w3, 0x1e
│     │││   ; CODE XREFS from fcn.001584cc @ 0x158aec, 0x158af4
│     └─└─> 0x00158afc      mov   w8, 0x3e5a                           ; 'Z>'
│      │    0x00158b00      movk  w8, 3, lsl 16
│      │    0x00158b04      adrp  x0, 0x251000
│      │    0x00158b08      adrp  x1, 0x27a000
│      │    0x00158b0c      add   x23, x19, x8
│      │    0x00158b10      add   x0, x0, 0x3c9                        ; int64_t arg1
│      │    0x00158b14      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│      │    0x00158b18      mov   w2, 0x99
│      │    0x00158b1c      strb  w3, [x23]
│      │    0x00158b20      bl    fcn.0014c9f8
│      │    0x00158b24      ldr   w8, [x19]
│      │    0x00158b28      sub   w8, w8, 1
│      │    0x00158b2c      cmp   w8, 0x24
│      │┌─< 0x00158b30      b.hi  0x158be0
│      ││   0x00158b34      adrp  x9, 0x28b000
│      ││   0x00158b38      add   x9, x9, 0x645
│      ││   0x00158b3c      adr   x10, 0x158b4c
│      ││   0x00158b40      ldrb  w11, [x9, x8]
│      ││   0x00158b44      add   x10, x10, x11, lsl 2
│      ││   0x00158b48      br    x10
       ││   ; STRING XREF from fcn.001584cc @ 0x158b3c
..
│      └──> 0x00158b68      mov   w8, 0x125a
│       │   0x00158b6c      movk  w8, 3, lsl 16
│       │   0x00158b70      add   x1, x19, x8                          ; int64_t arg2
│       │   0x00158b74      add   x0, var_58h                          ; int64_t arg1
│       │   0x00158b78      bl    fcn.001594f4
│       │   0x00158b7c      ldrh  w3, [var_54h]                        ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00158b80      cmp   w3, 0x14
│       │   0x00158b84      b.eq  0x158afc
│       │   0x00158b88      cmp   w3, 0x1e
│       │   0x00158b8c      b.eq  0x158afc
│       │   0x00158b90      adrp  x0, 0x265000
│       │   0x00158b94      adrp  x1, 0x27a000
│       │   0x00158b98      add   x0, x0, 0xc0                         ; int64_t arg1
│       │   0x00158b9c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│       │   0x00158ba0      mov   w2, 0x7a                             ; 'z'
│       │   0x00158ba4      bl    fcn.0014c9f8
│       │   0x00158ba8      mov   w8, 0x10
│       │   0x00158bac      movk  w8, 0xf076, lsl 16
│       │   0x00158bb0      orr   w21, w8, 2
│       │   0x00158bb4      b     0x158aac
..
│       └─> 0x00158be0      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158be4      b     0x158c24
..
            ; XREFS: CODE 0x00158b54  CODE 0x00158b64  CODE 0x00158bc0
            ; XREFS: CODE 0x00158bcc  CODE 0x00158bdc  CODE 0x00158bf4
            ; XREFS: CODE 0x00158c04  CODE 0x00158c14
│           ; CODE XREF from fcn.001584cc @ 0x158be4
│           0x00158c24      mov   w9, aav.0x00000420
│           0x00158c28      and   x9, x8, x9
│           0x00158c2c      cmp   x9, 0x20
│           0x00158c30      b.ne  0x158c7c
│           0x00158c34      mov   w8, 0x125a
│           0x00158c38      movk  w8, 3, lsl 16
│           0x00158c3c      add   x0, x19, x8                          ; int64_t arg1
│           0x00158c40      add   x2, x19, 0x28                        ; aav.0x00000028 ; int64_t arg3
│           0x00158c44      mov   w1, 7
│           0x00158c48      mov   w3, 0x10
│           0x00158c4c      bl    fcn.0015b03c
│           0x00158c50      cbz   w0, 0x158c78
│           0x00158c54      mov   w21, w0
│           0x00158c58      adrp  x0, 0x271000
│           0x00158c5c      adrp  x1, 0x26b000
│           0x00158c60      add   x0, x0, 0xb55                        ; int64_t arg1
│           0x00158c64      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158c68      mov   w2, 0x17c
│           0x00158c6c      mov   w3, w21
│           0x00158c70      bl    fcn.0014c9f8
│           0x00158c74      b     0x158f50
│           0x00158c78      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158c7c      tbnz  w8, 1, 0x158cc4
│           ; CODE XREF from fcn.001584cc @ 0x158fc0
│           0x00158c80      ldrb  w8, [x19, 0x11]                      ; [0x11:4]=0x140000
│           0x00158c84      str   wzr, [var_58h]
│           0x00158c88      tbnz  w8, 0, 0x158c9c
│           0x00158c8c      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158c90      mov   w9, 0x501
│           0x00158c94      tst   x8, x9
│           0x00158c98      b.eq  0x158db4
│           0x00158c9c      mov   x0, x19                              ; int64_t arg1
│           0x00158ca0      bl    fcn.00159200
│           0x00158ca4      cbz   w0, 0x158d8c
│           0x00158ca8      mov   w21, w0
│           0x00158cac      adrp  x0, 0x247000
│           0x00158cb0      adrp  x1, 0x247000
│           0x00158cb4      add   x0, x0, 0xfc7
│           0x00158cb8      add   x1, x1, 0xfb8
│           0x00158cbc      mov   w2, 0x2e                             ; '.'
│           0x00158cc0      b     0x158ac0
│           0x00158cc4      ldrb  w8, [x19, 8]                         ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x00158cc8      tbnz  w8, 0, 0x158cf8
│           0x00158ccc      ldr   w3, [x19]
│           0x00158cd0      adrp  x0, 0x24a000
│           0x00158cd4      adrp  x1, 0x26b000
│           ; CODE XREFS from fcn.001584cc @ 0x158b44, 0x158b48
│           0x00158cd8      add   x0, x0, 0x45e                        ; int64_t arg1
│           0x00158cdc      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158ce0      mov   w2, 0x184
│           0x00158ce4      bl    fcn.0014c9f8
│           0x00158ce8      mov   w8, 1
│           0x00158cec      movk  w8, 0xf0ec, lsl 16
│           0x00158cf0      add   w21, w8, 0xf
│           0x00158cf4      b     0x158f50
│           0x00158cf8      mov   w8, 0x40e0
│           0x00158cfc      mov   w0, 0xcdc0
│           0x00158d00      movk  w8, 3, lsl 16
│           0x00158d04      movk  w0, 4, lsl 16
│           0x00158d08      mov   w1, 1
│           0x00158d0c      add   x20, x19, x8
│           0x00158d10      bl    fcn.001566a8
│           0x00158d14      str   x0, [x20]
│           0x00158d18      cbz   x0, 0x158f28
│           0x00158d1c      mov   w8, 0x40e8
│           0x00158d20      movk  w8, 3, lsl 16
│           0x00158d24      mov   x1, x0                               ; int64_t arg2
│           0x00158d28      add   x2, x19, x8                          ; int64_t arg3
│           0x00158d2c      mov   x0, x19                              ; int64_t arg1
│           0x00158d30      bl    fcn.0015c54c
│           0x00158d34      cbz   w0, 0x158f68
│           0x00158d38      mov   w21, w0
│           0x00158d3c      adrp  x0, 0x243000
│           0x00158d40      adrp  x1, 0x26b000
│           0x00158d44      add   x0, x0, 0x4d3                        ; int64_t arg1
│           0x00158d48      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158d4c      mov   w2, 0x18e
│           0x00158d50      mov   w3, w21
│           0x00158d54      bl    fcn.0014c9f8
│           0x00158d58      ldrb  w8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158d5c      tbz   w8, 4, 0x158f50
│           0x00158d60      ldr   w3, [x19]
│           0x00158d64      adrp  x0, 0x26d000
│           0x00158d68      adrp  x1, 0x26b000
│           0x00158d6c      add   x0, x0, 0x214                        ; int64_t arg1
│           0x00158d70      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158d74      mov   w2, 0x192
│           0x00158d78      bl    fcn.0014c9f8
│           0x00158d7c      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158d80      orr   x8, x8, 0x40
│           0x00158d84      str   x8, [x19, 0x18]
│           0x00158d88      b     0x158f6c
│           0x00158d8c      mov   x0, x19                              ; int64_t arg1
│           0x00158d90      bl    fcn.00159428
│           0x00158d94      mov   w21, w0
│           0x00158d98      cbz   w0, 0x158ac8
│           0x00158d9c      adrp  x0, 0x247000
│           0x00158da0      adrp  x1, 0x247000
│           0x00158da4      add   x0, x0, 0xff5
│           0x00158da8      add   x1, x1, 0xfb8
│           0x00158dac      mov   w2, 0x34
│           0x00158db0      b     0x158ac0
│           0x00158db4      ldrb  w9, [x23, 1]                         ; [0x1:4]=0x6b000000
│           0x00158db8      cbz   w9, 0x158fc4
│           0x00158dbc      mov   w0, 1
│           0x00158dc0      mov   w1, aav.0x00000100
│           0x00158dc4      bl    fcn.001566a8
│           0x00158dc8      cbz   x0, 0x158fcc
│           0x00158dcc      mov   w1, aav.0x00000100
│           0x00158dd0      mov   x20, x0
│           0x00158dd4      bl    fcn.00156714
│           0x00158dd8      mov   w8, 0x12
│           0x00158ddc      movk  w8, 0xf057, lsl 16
│           0x00158de0      cmp   w0, w8
│           0x00158de4      b.eq  0x158ff0
│           0x00158de8      mov   w21, w0
│           0x00158dec      cbnz  w0, 0x1590a4
│           0x00158df0      mov   w8, 0x3fdc
│           0x00158df4      movk  w8, 3, lsl 16
│           0x00158df8      add   x0, x19, x8                          ; int64_t arg1
│           0x00158dfc      add   x4, var_58h                          ; int64_t arg5
│           0x00158e00      mov   w1, 4
│           0x00158e04      mov   w3, aav.0x00000100
│           0x00158e08      mov   w5, 4
│           0x00158e0c      mov   x2, x20                              ; int64_t arg3
│           0x00158e10      bl    fcn.00163468
│           0x00158e14      mov   w8, 0x3fe0
│           0x00158e18      movk  w8, 3, lsl 16
│           0x00158e1c      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e20      add   x4, var_58h                          ; int64_t arg5
│           0x00158e24      mov   w1, 0x10
│           0x00158e28      mov   w3, aav.0x00000100
│           0x00158e2c      mov   w5, 0x10
│           0x00158e30      mov   x2, x20                              ; int64_t arg3
│           0x00158e34      bl    fcn.00163468
│           0x00158e38      mov   w8, 0x3ff0
│           0x00158e3c      movk  w8, 3, lsl 16
│           0x00158e40      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e44      add   x4, var_58h                          ; int64_t arg5
│           0x00158e48      mov   w1, 0x20
│           0x00158e4c      mov   w3, aav.0x00000100
│           0x00158e50      mov   w5, 0x20
│           0x00158e54      mov   x2, x20                              ; int64_t arg3
│           0x00158e58      bl    fcn.00163468
│           0x00158e5c      mov   w8, 0x4010
│           0x00158e60      movk  w8, 3, lsl 16
│           0x00158e64      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e68      add   x4, var_58h                          ; int64_t arg5
│           0x00158e6c      mov   w1, 4
│           0x00158e70      mov   w3, aav.0x00000100
│           0x00158e74      mov   w5, 4
│           0x00158e78      mov   x2, x20                              ; int64_t arg3
│           0x00158e7c      bl    fcn.00163468
│           0x00158e80      mov   w8, 0x4014
│           0x00158e84      movk  w8, 3, lsl 16
│           0x00158e88      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e8c      add   x4, var_58h                          ; int64_t arg5
│           0x00158e90      mov   w1, 4
│           0x00158e94      mov   w3, aav.0x00000100
│           0x00158e98      mov   w5, 4
│           0x00158e9c      mov   x2, x20                              ; int64_t arg3
│           0x00158ea0      bl    fcn.00163468
│           0x00158ea4      mov   w8, 0x4018
│           0x00158ea8      movk  w8, 3, lsl 16
│           0x00158eac      add   x0, x19, x8                          ; int64_t arg1
│           0x00158eb0      add   x4, var_58h                          ; int64_t arg5
│           0x00158eb4      mov   w1, 4
│           0x00158eb8      mov   w3, aav.0x00000100
│           0x00158ebc      mov   w5, 4
│           0x00158ec0      mov   x2, x20                              ; int64_t arg3
│           0x00158ec4      bl    fcn.00163468
│           0x00158ec8      mov   w8, 0x401c
│           0x00158ecc      movk  w8, 3, lsl 16
│           0x00158ed0      add   x0, x19, x8                          ; int64_t arg1
│           0x00158ed4      add   x4, var_58h                          ; int64_t arg5
│           0x00158ed8      mov   w1, 0x20
│           0x00158edc      mov   w3, aav.0x00000100
│           0x00158ee0      mov   w5, 0x20
│           0x00158ee4      mov   x2, x20                              ; int64_t arg3
│           0x00158ee8      bl    fcn.00163468
│           0x00158eec      mov   w8, 0x403c                           ; '<@'
│           0x00158ef0      movk  w8, 3, lsl 16
│           0x00158ef4      add   x0, x19, x8                          ; int64_t arg1
│           0x00158ef8      add   x4, var_58h                          ; int64_t arg5
│           0x00158efc      mov   w1, 4
│           0x00158f00      mov   w3, aav.0x00000100
│           0x00158f04      mov   w5, 4
│           0x00158f08      mov   x2, x20                              ; int64_t arg3
│           0x00158f0c      bl    fcn.00163468
│           0x00158f10      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158f14      tbz   w8, 9, 0x15902c
│           0x00158f18      ldr   x9, [x19, 0x10]                      ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00158f1c      orr   x9, x9, str.k__9Ki_8                 ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│           0x00158f20      str   x9, [x19, 0x10]
│           0x00158f24      b     0x15902c
│           0x00158f28      adrp  x1, 0x26b000
│           0x00158f2c      adrp  x0, 0x23a000
│           0x00158f30      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158f34      mov   w21, 1
│           0x00158f38      add   x0, x0, 0xb5c                        ; int64_t arg1
│           0x00158f3c      mov   w2, 0x18a
│           0x00158f40      mov   w4, 1
│           0x00158f44      mov   x3, x1                               ; int64_t arg4
│           0x00158f48      movk  w21, 0xf0ec, lsl 16
│           0x00158f4c      bl    fcn.0014c9f8
│           ; CODE XREFS from fcn.001584cc @ 0x158c74, 0x158cf4
│           0x00158f50      adrp  x0, 0x24c000
│           0x00158f54      adrp  x1, 0x247000
│           0x00158f58      add   x0, x0, 0x831
│           0x00158f5c      add   x1, x1, 0xfb8
│           0x00158f60      mov   w2, 0x22                             ; '"'
│           0x00158f64      b     0x158ac0
│           0x00158f68      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           ; CODE XREF from fcn.001584cc @ 0x158d88
│           0x00158f6c      tbz   w8, 0, 0x158f78
│           0x00158f70      orr   x8, x8, 0xc
│           0x00158f74      str   x8, [x19, 0x18]
│           0x00158f78      tbnz  w8, 0xa, 0x158c80
│           0x00158f7c      ldr   w8, [x19]
│           0x00158f80      cmp   w8, 2
│           0x00158f84      b.ne  0x158c80
│           0x00158f88      ldrb  w8, [x19, 0xa]                       ; [0xa:4]=0x6865
│           0x00158f8c      tbz   w8, 5, 0x158c80
│           0x00158f90      mov   x0, x19                              ; int64_t arg1
│           0x00158f94      bl    fcn.0015feac
│           0x00158f98      cbnz  w0, 0x158c80
│           0x00158f9c      adrp  x0, 0x243000
│           0x00158fa0      adrp  x1, 0x26b000
│           0x00158fa4      add   x0, x0, 0x4fc                        ; int64_t arg1
│           0x00158fa8      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158fac      mov   w2, 0x19e
│           0x00158fb0      bl    fcn.0014c9f8
│           0x00158fb4      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158fb8      orr   x8, x8, 0xc
│           0x00158fbc      str   x8, [x19, 0x18]
│           0x00158fc0      b     0x158c80
│           0x00158fc4      mov   x20, xzr
│           0x00158fc8      b     0x15902c
│           0x00158fcc      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x00158fd0      adrp  x1, 0x274000
│           0x00158fd4      mov   w21, 0x11
│           0x00158fd8      add   x0, x0, 0xa2e                        ; int64_t arg1
│           0x00158fdc      add   x1, x1, 0x20                         ; int64_t arg2
│           0x00158fe0      mov   w2, 0xb0
│           0x00158fe4      movk  w21, 0xf01f, lsl 16
│           0x00158fe8      bl    fcn.0014c9f8
│           0x00158fec      b     0x1590fc
│           0x00158ff0      adrp  x0, 0x257000
│           0x00158ff4      adrp  x1, 0x274000
│           0x00158ff8      mov   w3, 0x12
│           0x00158ffc      add   x0, x0, 0xa50                        ; int64_t arg1
│           0x00159000      add   x1, x1, 0x20                         ; int64_t arg2
│           0x00159004      mov   w2, 0xd1
│           0x00159008      movk  w3, 0xf057, lsl 16
│           0x0015900c      bl    fcn.0014c9f8
│           0x00159010      mov   w8, 0x3fdc
│           0x00159014      movk  w8, 3, lsl 16
│           0x00159018      add   x0, x19, x8                          ; int64_t arg1
│           0x0015901c      mov   w2, aav.0x00000100
│           0x00159020      mov   w1, wzr
│           0x00159024      bl    fcn.0014d8fc
│           0x00159028      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           ; CODE XREFS from fcn.001584cc @ 0x158f24, 0x158fc8
│           0x0015902c      tbnz  w8, 2, 0x15909c
│           0x00159030      mov   x0, x19                              ; int64_t arg1
│           0x00159034      bl    fcn.0015b700
│           0x00159038      cbz   w0, 0x159054
│           0x0015903c      mov   w21, w0
│           0x00159040      cmp   w0, 1
│           0x00159044      b.ne  0x1590c4
│           0x00159048      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0015904c      orr   x8, x8, 4
│           0x00159050      str   x8, [x19, 0x10]
│           0x00159054      mov   w8, 0x125a
│           0x00159058      movk  w8, 3, lsl 16
│           0x0015905c      add   x22, x19, x8
│           0x00159060      add   x2, x19, 0x28                        ; aav.0x00000028 ; int64_t arg3
│           0x00159064      mov   w1, 7
│           0x00159068      mov   w3, 0x10
│           0x0015906c      mov   x0, x22                              ; int64_t arg1
│           0x00159070      bl    fcn.0015b03c
│           0x00159074      cbz   w0, 0x159114
│           0x00159078      mov   w21, w0
│           0x0015907c      adrp  x0, 0x271000
│           0x00159080      adrp  x1, 0x274000
│           0x00159084      add   x0, x0, 0xb55
│           0x00159088      add   x1, x1, 0x20
│           0x0015908c      mov   w2, 0xea
│           ; CODE XREF from fcn.001584cc @ 0x1591d4
│           0x00159090      mov   w3, w21
│           0x00159094      bl    fcn.0014c9f8
│           0x00159098      b     0x1590ec
│           0x0015909c      mov   w21, wzr
│           0x001590a0      b     0x1590ec
│           0x001590a4      adrp  x0, 0x26b000
│           0x001590a8      adrp  x1, 0x274000
│           0x001590ac      add   x0, x0, 0x42                         ; int64_t arg1
│           0x001590b0      add   x1, x1, 0x20                         ; int64_t arg2
│           0x001590b4      mov   w2, 0xd4
│           0x001590b8      mov   w3, w21
│           0x001590bc      bl    fcn.0014c9f8
│           0x001590c0      b     0x1590f0
│           0x001590c4      adrp  x0, 0x271000
│           0x001590c8      adrp  x1, 0x274000
│           0x001590cc      add   x0, x0, 0xb24                        ; int64_t arg1
│           0x001590d0      add   x1, x1, 0x20                         ; int64_t arg2
│           0x001590d4      mov   w2, 0xe3
│           0x001590d8      mov   w3, w21
│           0x001590dc      bl    fcn.0014c9f8
│           0x001590e0      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x001590e4      orr   x8, x8, 0x80
│           0x001590e8      str   x8, [x19, 0x10]
│           ; CODE XREFS from fcn.001584cc @ 0x159098, 0x1590a0, 0x159180, 0x1591fc
│           0x001590ec      cbz   x20, 0x1590f8
│           ; CODE XREF from fcn.001584cc @ 0x1590c0
│           0x001590f0      mov   x0, x20                              ; int64_t arg1
│           0x001590f4      bl    fcn.00156708
│           0x001590f8      cbz   w21, 0x158c9c
│           ; CODE XREF from fcn.001584cc @ 0x158fec
│           0x001590fc      adrp  x0, 0x251000
│           0x00159100      adrp  x1, 0x247000
│           0x00159104      add   x0, x0, 0x396
│           0x00159108      add   x1, x1, 0xfb8
│           0x0015910c      mov   w2, 0x28
│           0x00159110      b     0x158ac0
│           0x00159114      ldrb  w8, [x23, 1]                         ; [0x1:4]=0x6b000000
│           0x00159118      cbz   w8, 0x159184
│           0x0015911c      mov   w8, 0x3fdc
│           0x00159120      movk  w8, 3, lsl 16
│           0x00159124      add   x21, x19, x8
│           0x00159128      mov   w1, aav.0x00000100
│           0x0015912c      mov   x0, x21                              ; int64_t arg1
│           0x00159130      bl    fcn.00163120
│           0x00159134      cbz   w0, 0x15919c
│           0x00159138      adrp  x22, 0x24f000
│           0x0015913c      add   x22, x22, 0x346
│           0x00159140      mov   x0, x22                              ; int64_t arg1
│           0x00159144      bl    fcn.0014db58
│           0x00159148      mov   x2, x0
│           0x0015914c      mov   x0, x21                              ; int64_t arg1
│           0x00159150      mov   x1, x22                              ; int64_t arg2
│           0x00159154      bl    fcn.0014d5c8
│           0x00159158      cbz   w0, 0x1591d8
│           0x0015915c      adrp  x0, 0x265000
│           0x00159160      adrp  x1, 0x274000
│           0x00159164      add   x0, x0, 0xe3                         ; int64_t arg1
│           0x00159168      add   x1, x1, 0x20                         ; int64_t arg2
│           0x0015916c      mov   w2, 0xf4
│           0x00159170      bl    fcn.0014c9f8
│           0x00159174      mov   w8, 0x11
│           0x00159178      movk  w8, 0xf01f, lsl 16
│           0x0015917c      add   w21, w8, 1
│           0x00159180      b     0x1590ec
│           0x00159184      adrp  x0, 0x26b000
│           0x00159188      adrp  x1, 0x274000
│           0x0015918c      add   x0, x0, 0x68                         ; int64_t arg1
│           0x00159190      add   x1, x1, 0x20                         ; int64_t arg2
│           0x00159194      mov   w2, 0xf9
│           0x00159198      bl    fcn.0014c9f8
│           0x0015919c      mov   w8, 0x3e5c                           ; '\>'
│           0x001591a0      movk  w8, 3, lsl 16
│           0x001591a4      add   x2, x19, x8                          ; int64_t arg3
│           0x001591a8      mov   w1, aav.0x00001000
│           0x001591ac      mov   w3, 0x20
│           0x001591b0      mov   x0, x22                              ; int64_t arg1
│           0x001591b4      bl    fcn.0015b03c
│           0x001591b8      mov   w21, w0
│           0x001591bc      cbz   w0, 0x1590ec
│           0x001591c0      adrp  x0, 0x245000
│           0x001591c4      adrp  x1, 0x274000
│           0x001591c8      add   x0, x0, 0xd99
│           0x001591cc      add   x1, x1, 0x20
│           0x001591d0      mov   w2, aav.0x00000100
│           0x001591d4      b     0x159090
│           0x001591d8      mov   w8, 0x3e5c                           ; '\>'
│           0x001591dc      mov   w9, 0x3ff0
│           0x001591e0      movk  w8, 3, lsl 16
│           0x001591e4      movk  w9, 3, lsl 16
│           0x001591e8      add   x0, x19, x8                          ; int64_t arg1
│           0x001591ec      add   x1, x19, x9                          ; int64_t arg2
│           0x001591f0      mov   w2, 0x20
│           0x001591f4      bl    fcn.0014d60c
│           0x001591f8      mov   w21, wzr
└           0x001591fc      b     0x1590ec
            ; CODE XREFS from fcn.001584cc @ 0x158520, 0x158524

==========================================================================================
FUNCTION: fcn.00169738
==========================================================================================
┌ fcn.00169738(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00169738      pacibsp
│           0x0016973c      sub   sp, sp, 0x50
│           0x00169740      stp   x29, x30, [var_40h]
│           0x00169744      stp   x24, x23, [var_30h]
│           0x00169748      stp   x22, x21, [var_20h]
│           0x0016974c      stp   x20, x19, [var_10h]
│           0x00169750      add   x29, sp, 0x10
│           0x00169754      mov   w8, 0x40e0
│           0x00169758      movk  w8, 3, lsl 16
│           0x0016975c      mov   x19, x1                              ; arg2
│           0x00169760      add   x24, x1, x8                          ; arg2
│           0x00169764      stur  wzr, [var_10h + 0xc]                 ; arg1
│       ┌─< 0x00169768      cbz   x0, 0x169840
│       │   0x0016976c      mov   w21, 1
│      ┌──< 0x00169770      cbz   x19, 0x169844
│      ││   0x00169774      ldr   w8, [x19]
│      ││   0x00169778      mov   w22, w2                              ; arg3
│      ││   0x0016977c      mov   x20, x0                              ; arg1
│      ││   0x00169780      str   w2, [x0]                             ; arg3
│      ││   0x00169784      cmp   w8, 0x10
│      ││   0x00169788      strb  w21, [x0, 4]                         ; arg1
│     ┌───< 0x0016978c      b.ne  0x1697a4
│     │││   0x00169790      mov   w9, 0x3f6c                           ; 'l?'
│     │││   0x00169794      movk  w9, 3, lsl 16
│     │││   0x00169798      add   x9, x19, x9
│     │││   0x0016979c      ldr   w9, [x9]
│     │││   0x001697a0      str   w9, [x20]
│     └───> 0x001697a4      ldr   x9, [x19, 0x10]                      ; aav.0x00000010
│      ││                                                              ; [0x10:4]=0x14000004
│      ││   0x001697a8      str   w8, [x20, 8]
│     ┌───< 0x001697ac      tbz   w9, 4, 0x1697d8
│     │││   0x001697b0      ldr   x8, [x20, aav.0x00000520]            ; [0x520:4]=0xb900011f
│     │││   0x001697b4      mov   w9, 0x3138                           ; '81'
│     │││   0x001697b8      mov   w2, aav.0x00001000
│     │││   0x001697bc      add   x0, x20, x9                          ; int64_t arg1
│     │││   0x001697c0      orr   x8, x8, 0x10
│     │││   0x001697c4      add   x1, x19, 0x50a                       ; int64_t arg2
│     │││   0x001697c8      movk  w2, 1, lsl 16
│     │││   0x001697cc      str   x8, [x20, aav.0x00000520]
│     │││   0x001697d0      bl    fcn.0014d60c
│     │││   0x001697d4      ldr   x9, [x19, 0x10]                      ; aav.0x00000010
│     │││                                                              ; [0x10:4]=0x14000004
│    ┌└───> 0x001697d8      tbz   w9, 0, 0x1698f0
│    │ ││   0x001697dc      mov   w9, 0x150c
│    │ ││   0x001697e0      movk  w9, 1, lsl 16
│    │ ││   0x001697e4      add   x9, x19, x9
│    │ ││   0x001697e8      ldr   x8, [x20, aav.0x00000520]            ; [0x520:4]=0xb900011f
│    │ ││   0x001697ec      ldr   w4, [x9]
│    │ ││   0x001697f0      orr   x8, x8, 1
│    │ ││   0x001697f4      sub   w9, w4, 1
│    │ ││   0x001697f8      str   x8, [x20, aav.0x00000520]
│    │ ││   0x001697fc      mov   w8, 0x413c                           ; '<A'
│    │ ││   0x00169800      lsr   w9, w9, 0xb
│    │ ││   0x00169804      movk  w8, 1, lsl 16
│    │ ││   0x00169808      cmp   w9, 0x19
│    │ ││   0x0016980c      str   w4, [x20, x8]
│    │┌───< 0x00169810      b.lo  0x1698d0
│    ││││   0x00169814      adrp  x1, 0x257000
│    ││││   0x00169818      adrp  x0, 0x241000
│    ││││   0x0016981c      add   x1, x1, 0xc99                        ; int64_t arg2
│    ││││   0x00169820      add   x0, x0, 0x241                        ; int64_t arg1
│    ││││   0x00169824      mov   w2, 0x177
│    ││││   0x00169828      mov   x3, x1                               ; int64_t arg4
│    ││││   0x0016982c      bl    fcn.0014c9f8
│    ││││   0x00169830      mov   w8, 1
│    ││││   0x00169834      movk  w8, 0xf0f2, lsl 16
│    ││││   0x00169838      add   w20, w8, 0xf
│   ┌─────< 0x0016983c      b     0x169870
│   ││││└─> 0x00169840      mov   w21, wzr                             ; arg1
│   │││└──> 0x00169844      adrp  x1, 0x257000
│   │││     0x00169848      adrp  x0, 0x23a000
│   │││     0x0016984c      add   x1, x1, 0xc99                        ; int64_t arg2
│   │││     0x00169850      add   x0, x0, 0xb5c                        ; int64_t arg1
│   │││     0x00169854      add   w4, w21, 1
│   │││     0x00169858      mov   w2, 0x159
│   │││     0x0016985c      mov   x3, x1                               ; int64_t arg4
│   │││     0x00169860      bl    fcn.0014c9f8
│   │││     0x00169864      mov   w8, 1
│   │││     0x00169868      movk  w8, 0xf0f2, lsl 16
│   │││     0x0016986c      add   w20, w21, w8
│   │││     ; CODE XREFS from fcn.00169738 @ 0x16983c, 0x169c24
│   └───┌─> 0x00169870      mov   w8, 0x3fdc
│    ││ ╎   0x00169874      movk  w8, 3, lsl 16
│    ││ ╎   0x00169878      add   x0, x19, x8                          ; int64_t arg1
│    ││ ╎   0x0016987c      mov   w2, aav.0x00000100
│    ││ ╎   0x00169880      mov   w1, wzr
│    ││ ╎   0x00169884      bl    fcn.0014d8fc
│    ││ ╎   ; CODE XREF from fcn.00169738 @ 0x169978
│   ┌──┌──> 0x00169888      ldr   x0, [x24]
│  ┌──────< 0x0016988c      cbz   x0, 0x169898
│  │╎││╎╎   0x00169890      bl    fcn.00156708
│  │╎││╎╎   0x00169894      str   xzr, [x24]
│  └──────> 0x00169898      adrp  x0, 0x274000
│   ╎││╎╎   0x0016989c      adrp  x1, 0x257000
│   ╎││╎╎   0x001698a0      add   x0, x0, 0x312                        ; int64_t arg1
│   ╎││╎╎   0x001698a4      add   x1, x1, 0xc99                        ; int64_t arg2
│   ╎││╎╎   0x001698a8      mov   w2, 0x1ec
│   ╎││╎╎   0x001698ac      bl    fcn.0014c9f8
│   ╎││╎╎   0x001698b0      mov   w0, w20
│   ╎││╎╎   0x001698b4      ldp   x20, x19, [var_10h]
│   ╎││╎╎   0x001698b8      ldp   x22, x21, [var_20h]
│   ╎││╎╎   0x001698bc      ldp   x24, x23, [var_30h]
│   ╎││╎╎   0x001698c0      ldp   x29, x30, [var_40h]
│   ╎││╎╎   0x001698c4      add   sp, sp, 0x50
│   ╎││╎╎   0x001698c8      autibsp
│   ╎││╎╎   0x001698cc      ret
│   ╎│└───> 0x001698d0      mov   w8, 0x4140                           ; '@A'
│   ╎│ ╎╎   0x001698d4      mov   w9, 0x1510
│   ╎│ ╎╎   0x001698d8      movk  w8, 1, lsl 16
│   ╎│ ╎╎   0x001698dc      movk  w9, 1, lsl 16
│   ╎│ ╎╎   0x001698e0      add   x0, x20, x8                          ; int64_t arg1
│   ╎│ ╎╎   0x001698e4      add   x1, x19, x9                          ; int64_t arg2
│   ╎│ ╎╎   0x001698e8      mov   x2, x4                               ; int64_t arg3
│   ╎│ ╎╎   0x001698ec      bl    fcn.0014d60c
│   ╎└────> 0x001698f0      ldrh  w8, [x19, 0x18]                      ; aav.0x00000018
│   ╎  ╎╎                                                              ; [0x18:4]=0x7600000
│   ╎  ╎╎   0x001698f4      mov   w9, 0x401
│   ╎  ╎╎   0x001698f8      tst   w8, w9
│   ╎ ┌───< 0x001698fc      b.eq  0x169a68
│   ╎ │╎╎   0x00169900      mov   x21, xzr
│   ╎ │╎╎   ; CODE XREF from fcn.00169738 @ 0x169c58
│ ┌┌─┌────> 0x00169904      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│╎╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x00169908      tbnz  w8, 1, 0x16997c
│ ────────< 0x0016990c      tbnz  w8, 5, 0x1699a8
│ ────────> 0x00169910      tbnz  w8, 0xd, 0x1699d4
│ ────────> 0x00169914      tbnz  w8, 7, 0x169a00
│ ────────> 0x00169918      tbnz  w8, 3, 0x169a14
│ ────────> 0x0016991c      tbnz  w8, 8, 0x169a28
│ ────────> 0x00169920      tbnz  w8, 6, 0x169a3c
│ ────────> 0x00169924      tbnz  w8, 0xb, 0x169a50
│ ────────> 0x00169928      tbz   w8, 0xc, 0x169938
│ ────────> 0x0016992c      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│╎╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│╎╎   0x00169930      orr   x8, x8, aav.0x00001000
│ ╎╎╎╎│╎╎   0x00169934      str   x8, [x20, 0x18]
│ ╎╎╎╎│╎╎   ; CODE XREF from fcn.00169738 @ 0x169a64
│ ────────> 0x00169938      mov   w8, 0x3fdc
│ ╎╎╎╎│╎╎   0x0016993c      movk  w8, 3, lsl 16
│ ╎╎╎╎│╎╎   0x00169940      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎│╎╎   0x00169944      mov   w2, aav.0x00000100
│ ╎╎╎╎│╎╎   0x00169948      mov   w1, wzr
│ ╎╎╎╎│╎╎   0x0016994c      bl    fcn.0014d8fc
│ ╎╎╎╎│╎╎   0x00169950      mov   w19, wzr
│ ╎╎╎╎│╎╎   0x00169954      mov   w20, wzr
│ ╎╎└─────< 0x00169958      cbz   x21, 0x169888
│ ╎╎ ╎│╎╎   ; CODE XREF from fcn.00169738 @ 0x169bf8
│ ╎╎┌─────> 0x0016995c      mov   w2, aav.0x00000100
│ ╎╎╎╎│╎╎   0x00169960      mov   x0, x21                              ; int64_t arg1
│ ╎╎╎╎│╎╎   0x00169964      mov   w1, wzr
│ ╎╎╎╎│╎╎   0x00169968      bl    fcn.0014d8fc
│ ╎╎╎╎│╎╎   0x0016996c      mov   x0, x21                              ; int64_t arg1
│ ╎╎╎╎│╎╎   0x00169970      bl    fcn.00156708
│ ╎╎╎╎│╎╎   0x00169974      mov   w20, w19
│ ╎╎╎╎│└──< 0x00169978      b     0x169888
│ ────────> 0x0016997c      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x00169980      mov   w9, 0x3e7c                           ; '|>'
│ ╎╎╎╎│ ╎   0x00169984      movk  w9, 3, lsl 16
│ ╎╎╎╎│ ╎   0x00169988      add   x1, x19, x9                          ; int64_t arg2
│ ╎╎╎╎│ ╎   0x0016998c      orr   x8, x8, 2
│ ╎╎╎╎│ ╎   0x00169990      add   x0, x20, 0x30                        ; aav.0x00000030 ; int64_t arg1
│ ╎╎╎╎│ ╎   0x00169994      mov   w2, 0xed
│ ╎╎╎╎│ ╎   0x00169998      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x0016999c      bl    fcn.0014d60c
│ ╎╎╎╎│ ╎   0x001699a0      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x001699a4      tbz   w8, 5, 0x169910
│ ────────> 0x001699a8      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x001699ac      mov   w9, 0x3f70                           ; 'p?'
│ ╎╎╎╎│ ╎   0x001699b0      movk  w9, 3, lsl 16
│ ╎╎╎╎│ ╎   0x001699b4      add   x1, x19, x9                          ; int64_t arg2
│ ╎╎╎╎│ ╎   0x001699b8      orr   x8, x8, 0x20
│ ╎╎╎╎│ ╎   0x001699bc      add   x0, x20, 0x120                       ; int64_t arg1
│ ╎╎╎╎│ ╎   0x001699c0      mov   w2, 0x20
│ ╎╎╎╎│ ╎   0x001699c4      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x001699c8      bl    fcn.0014d60c
│ ╎╎╎╎│ ╎   0x001699cc      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x001699d0      tbz   w8, 0xd, 0x169914
│ ────────> 0x001699d4      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x001699d8      mov   w9, 0x3fb0
│ ╎╎╎╎│ ╎   0x001699dc      movk  w9, 3, lsl 16
│ ╎╎╎╎│ ╎   0x001699e0      add   x1, x19, x9                          ; int64_t arg2
│ ╎╎╎╎│ ╎   0x001699e4      orr   x8, x8, aav.0x00002000
│ ╎╎╎╎│ ╎   0x001699e8      add   x0, x20, aav.0x00000140              ; int64_t arg1
│ ╎╎╎╎│ ╎   0x001699ec      mov   w2, 0x19
│ ╎╎╎╎│ ╎   0x001699f0      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x001699f4      bl    fcn.0014d60c
│ ╎╎╎╎│ ╎   0x001699f8      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x001699fc      tbz   w8, 7, 0x169918
│ ────────> 0x00169a00      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x00169a04      orr   x8, x8, 0x80
│ ╎╎╎╎│ ╎   0x00169a08      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x00169a0c      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x00169a10      tbz   w8, 3, 0x16991c
│ ────────> 0x00169a14      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x00169a18      orr   x8, x8, 8
│ ╎╎╎╎│ ╎   0x00169a1c      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x00169a20      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x00169a24      tbz   w8, 8, 0x169920
│ ────────> 0x00169a28      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x00169a2c      orr   x8, x8, aav.0x00000100
│ ╎╎╎╎│ ╎   0x00169a30      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x00169a34      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x00169a38      tbz   w8, 6, 0x169924
│ ────────> 0x00169a3c      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x00169a40      orr   x8, x8, 0x40
│ ╎╎╎╎│ ╎   0x00169a44      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x00169a48      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x00169a4c      tbz   w8, 0xb, 0x169928
│ ────────> 0x00169a50      ldr   x8, [x20, 0x18]                      ; aav.0x00000018
│ ╎╎╎╎│ ╎                                                              ; [0x18:4]=0x7600000
│ ╎╎╎╎│ ╎   0x00169a54      orr   x8, x8, aav.0x00000800               ; "an test key on fused chip.\r\n"
│ ╎╎╎╎│ ╎   0x00169a58      str   x8, [x20, 0x18]
│ ╎╎╎╎│ ╎   0x00169a5c      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎│ ╎                                                              ; [0x10:4]=0x14000004
│ ────────< 0x00169a60      tbnz  w8, 0xc, 0x16992c
│ ────────< 0x00169a64      b     0x169938
│ ╎╎╎╎└───> 0x00169a68      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎╎╎  ╎                                                              ; [0x10:4]=0x14000004
│ ╎╎╎╎  ╎   0x00169a6c      mov   x21, xzr
│ ╎╎╎╎ ┌──< 0x00169a70      tbz   w8, 9, 0x169c2c
│ ╎╎╎╎┌───< 0x00169a74      cbnz  w22, 0x169c2c
│ ╎╎╎╎││╎   0x00169a78      mov   w0, 1
│ ╎╎╎╎││╎   0x00169a7c      mov   w1, aav.0x00000100
│ ╎╎╎╎││╎   0x00169a80      bl    fcn.001566a8
│ ────────< 0x00169a84      cbz   x0, 0x169bfc
│ ╎╎╎╎││╎   0x00169a88      mov   w8, 0x3fdc
│ ╎╎╎╎││╎   0x00169a8c      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169a90      mov   x21, x0
│ ╎╎╎╎││╎   0x00169a94      add   x23, x19, x8
│ ╎╎╎╎││╎   0x00169a98      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169a9c      mov   w1, 4
│ ╎╎╎╎││╎   0x00169aa0      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169aa4      mov   w5, 4
│ ╎╎╎╎││╎   0x00169aa8      mov   x0, x23                              ; int64_t arg1
│ ╎╎╎╎││╎   0x00169aac      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169ab0      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169ab4      mov   w8, 0x3fe0
│ ╎╎╎╎││╎   0x00169ab8      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169abc      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎││╎   0x00169ac0      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169ac4      mov   w1, 0x10
│ ╎╎╎╎││╎   0x00169ac8      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169acc      mov   w5, 0x10
│ ╎╎╎╎││╎   0x00169ad0      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169ad4      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169ad8      mov   w8, 0x3ff0
│ ╎╎╎╎││╎   0x00169adc      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169ae0      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎││╎   0x00169ae4      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169ae8      mov   w1, 0x20
│ ╎╎╎╎││╎   0x00169aec      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169af0      mov   w5, 0x20
│ ╎╎╎╎││╎   0x00169af4      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169af8      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169afc      mov   w8, 0x4010
│ ╎╎╎╎││╎   0x00169b00      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169b04      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎││╎   0x00169b08      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169b0c      mov   w1, 4
│ ╎╎╎╎││╎   0x00169b10      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169b14      mov   w5, 4
│ ╎╎╎╎││╎   0x00169b18      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169b1c      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169b20      mov   w8, 0x4014
│ ╎╎╎╎││╎   0x00169b24      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169b28      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎││╎   0x00169b2c      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169b30      mov   w1, 4
│ ╎╎╎╎││╎   0x00169b34      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169b38      mov   w5, 4
│ ╎╎╎╎││╎   0x00169b3c      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169b40      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169b44      mov   w8, 0x4018
│ ╎╎╎╎││╎   0x00169b48      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169b4c      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎││╎   0x00169b50      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169b54      mov   w1, 4
│ ╎╎╎╎││╎   0x00169b58      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169b5c      mov   w5, 4
│ ╎╎╎╎││╎   0x00169b60      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169b64      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169b68      mov   w8, 0x401c
│ ╎╎╎╎││╎   0x00169b6c      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169b70      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎││╎   0x00169b74      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169b78      mov   w1, 0x20
│ ╎╎╎╎││╎   0x00169b7c      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169b80      mov   w5, 0x20
│ ╎╎╎╎││╎   0x00169b84      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169b88      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169b8c      mov   w8, 0x403c                           ; '<@'
│ ╎╎╎╎││╎   0x00169b90      movk  w8, 3, lsl 16
│ ╎╎╎╎││╎   0x00169b94      add   x0, x19, x8                          ; int64_t arg1
│ ╎╎╎╎││╎   0x00169b98      sub   x4, var_10h + 0x14                   ; int64_t arg5
│ ╎╎╎╎││╎   0x00169b9c      mov   w1, 4
│ ╎╎╎╎││╎   0x00169ba0      mov   w3, aav.0x00000100
│ ╎╎╎╎││╎   0x00169ba4      mov   w5, 4
│ ╎╎╎╎││╎   0x00169ba8      mov   x2, x21                              ; int64_t arg3
│ ╎╎╎╎││╎   0x00169bac      bl    fcn.001633b8
│ ╎╎╎╎││╎   0x00169bb0      mov   w1, aav.0x00000100
│ ╎╎╎╎││╎   0x00169bb4      mov   x0, x21                              ; int64_t arg2
│ ╎╎╎╎││╎   0x00169bb8      bl    fcn.001567f4
│ ────────< 0x00169bbc      cbz   w0, 0x169c28
│ ╎╎╎╎││╎   0x00169bc0      mov   w3, w0
│ ╎╎╎╎││╎   0x00169bc4      adrp  x0, 0x25e000
│ ╎╎╎╎││╎   0x00169bc8      adrp  x1, 0x257000
│ ╎╎╎╎││╎   0x00169bcc      add   x0, x0, 0x7f0                        ; int64_t arg1
│ ╎╎╎╎││╎   0x00169bd0      add   x1, x1, 0xc99                        ; int64_t arg2
│ ╎╎╎╎││╎   0x00169bd4      mov   w2, 0x1a2
│ ╎╎╎╎││╎   0x00169bd8      bl    fcn.0014c9f8
│ ╎╎╎╎││╎   0x00169bdc      mov   w2, aav.0x00000100
│ ╎╎╎╎││╎   0x00169be0      mov   x0, x23                              ; int64_t arg1
│ ╎╎╎╎││╎   0x00169be4      mov   w1, wzr
│ ╎╎╎╎││╎   0x00169be8      bl    fcn.0014d8fc
│ ╎╎╎╎││╎   0x00169bec      mov   w8, 1
│ ╎╎╎╎││╎   0x00169bf0      movk  w8, 0xf0f2, lsl 16
│ ╎╎╎╎││╎   0x00169bf4      orr   w19, w8, 0x10
│ ╎╎└─────< 0x00169bf8      b     0x16995c
│ ────────> 0x00169bfc      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│ ╎╎ ╎││╎   0x00169c00      adrp  x1, 0x257000
│ ╎╎ ╎││╎   0x00169c04      add   x0, x0, 0xa2e                        ; int64_t arg1
│ ╎╎ ╎││╎   0x00169c08      add   x1, x1, 0xc99                        ; int64_t arg2
│ ╎╎ ╎││╎   0x00169c0c      mov   w2, 0x183
│ ╎╎ ╎││╎   0x00169c10      bl    fcn.0014c9f8
│ ╎╎ ╎││╎   0x00169c14      mov   w9, 1
│ ╎╎ ╎││╎   0x00169c18      mov   w8, 0x12
│ ╎╎ ╎││╎   0x00169c1c      movk  w9, 0xf0f2, lsl 16
│ ╎╎ ╎││╎   0x00169c20      orr   w20, w9, w8
│ ╎╎ ╎││└─< 0x00169c24      b     0x169870
│ ────────> 0x00169c28      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│ ╎╎ ╎││                                                               ; [0x10:4]=0x14000004
│ └───└└──> 0x00169c2c      tbz   w8, 2, 0x169904
│  └──────< 0x00169c30      cbnz  w22, 0x169904
│    ╎      0x00169c34      ldr   x8, [x20, aav.0x00000520]            ; [0x520:4]=0xb900011f
│    ╎      0x00169c38      mov   w9, 0x125a
│    ╎      0x00169c3c      movk  w9, 3, lsl 16
│    ╎      0x00169c40      add   x1, x19, x9                          ; int64_t arg2
│    ╎      0x00169c44      orr   x8, x8, 4
│    ╎      0x00169c48      add   x0, x20, 0x538                       ; int64_t arg1
│    ╎      0x00169c4c      mov   w2, 0x2c00
│    ╎      0x00169c50      str   x8, [x20, aav.0x00000520]
│    ╎      0x00169c54      bl    fcn.0014d60c
└    └────< 0x00169c58      b     0x169904
            ; CALL XREF from fcn.0016c2d8 @ 0x16c3b4

==========================================================================================
FUNCTION: fcn.001758fc
==========================================================================================
┌ fcn.001758fc(int64_t arg1, int64_t arg5, int64_t arg6, int64_t arg7);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001758fc      pacibsp
│           0x00175900      sub   sp, sp, 0x50
│           0x00175904      stp   x29, x30, [var_30h]
│           0x00175908      stp   x22, x21, [var_20h]
│           0x0017590c      stp   x20, x19, [var_10h]
│           0x00175910      add   x29, sp, 0x20
│           0x00175914      adrp  x21, 0x59d000
│           0x00175918      add   x21, x21, 0xa14
│           0x0017591c      ldrb  w8, [x21, 3]                         ; [0x3:4]=0x48776b00
│           0x00175920      ldrb  w9, [x21, 2]                         ; [0x2:4]=0x776b0000
│           0x00175924      ldrb  w10, [x21, 1]                        ; [0x1:4]=0x6b000000
│           0x00175928      ldrb  w22, [x21]
│           0x0017592c      mov   x19, x0                              ; arg1
│           0x00175930      bfi   x9, x8, 8, 8
│           0x00175934      stp   xzr, xzr, [sp, 0x10]
│           0x00175938      bfi   x22, x10, 8, 8
│           0x0017593c      bfi   x22, x9, 0x10, 0x10
│           0x00175940      stp   xzr, xzr, [sp]
│       ┌─< 0x00175944      cbz   w22, 0x175970
│       │   0x00175948      adrp  x20, 0x59d000
│       │   0x0017594c      add   x20, x20, 0xa50
│      ┌──> 0x00175950      mov   w2, 0x20
│      ╎│   0x00175954      mov   x0, x20                              ; int64_t arg1
│      ╎│   0x00175958      mov   x1, x19                              ; int64_t arg2
│      ╎│   0x0017595c      bl    fcn.0014dbd8
│     ┌───< 0x00175960      cbz   w0, 0x175a04
│     │╎│   0x00175964      subs  x22, x22, 1
│     │╎│   0x00175968      add   x20, x20, 0x84
│     │└──< 0x0017596c      b.ne  0x175950
│     │ └─> 0x00175970      adrp  x2, 0x26d000
│     │     0x00175974      add   x2, x2, 0x5c4                        ; int64_t arg4
│     │     0x00175978      mov   x0, sp                               ; int64_t arg1
│     │     0x0017597c      mov   w1, 0x20
│     │     0x00175980      mov   x3, x19                              ; int64_t arg5
│     │     0x00175984      bl    fcn.0014b120
│     │     0x00175988      adrp  x0, 0x271000
│     │     0x0017598c      adrp  x1, 0x246000
│     │     0x00175990      add   x0, x0, 0xef4                        ; int64_t arg1
│     │     0x00175994      add   x1, x1, 0x1fb                        ; int64_t arg2
│     │     0x00175998      mov   x3, sp                               ; int64_t arg4
│     │     0x0017599c      mov   x2, x19                              ; unsigned long arg3
│     │     0x001759a0      bl    fcn.0014c9f8
│     │     0x001759a4      ldrb  w8, [x21, 3]                         ; [0x3:4]=0x48776b00
│     │     0x001759a8      ldrb  w9, [x21, 2]                         ; [0x2:4]=0x776b0000
│     │     0x001759ac      ldrb  w10, [x21, 1]                        ; [0x1:4]=0x6b000000
│     │     0x001759b0      ldrb  w21, [x21]
│     │     0x001759b4      bfi   x9, x8, 8, 8
│     │     0x001759b8      bfi   x21, x10, 8, 8
│     │     0x001759bc      bfi   x21, x9, 0x10, 0x10
│     │ ┌─< 0x001759c0      cbz   w21, 0x1759fc
│     │ │   0x001759c4      mov   x0, sp                               ; int64_t arg1
│     │ │   0x001759c8      mov   w1, 0x20
│     │ │   0x001759cc      bl    fcn.0014dcc4
│     │ │   0x001759d0      adrp  x19, 0x59d000
│     │ │   0x001759d4      mov   x20, x0
│     │ │   0x001759d8      add   x19, x19, 0xa50
│     │┌──> 0x001759dc      mov   x1, sp                               ; int64_t arg2
│     │╎│   0x001759e0      mov   x0, x19                              ; int64_t arg1
│     │╎│   0x001759e4      mov   x2, x20
│     │╎│   0x001759e8      bl    fcn.0014dbd8
│    ┌────< 0x001759ec      cbz   w0, 0x175a0c
│    ││╎│   0x001759f0      subs  x21, x21, 1
│    ││╎│   0x001759f4      add   x19, x19, 0x84
│    ││└──< 0x001759f8      b.ne  0x1759dc
│    ││ └─> 0x001759fc      mov   x0, xzr
│    ││ ┌─< 0x00175a00      b     0x175a10
│    │└───> 0x00175a04      sub   x0, x20, 0x24
│    │ ┌──< 0x00175a08      b     0x175a10
│    └────> 0x00175a0c      sub   x0, x19, 0x24
│      ││   ; CODE XREFS from fcn.001758fc @ 0x175a00, 0x175a08
│      └└─> 0x00175a10      ldp   x20, x19, [var_10h]
│           0x00175a14      ldp   x22, x21, [var_20h]
│           0x00175a18      ldp   x29, x30, [var_30h]
│           0x00175a1c      add   sp, sp, 0x50
│           0x00175a20      autibsp
└           0x00175a24      ret
            ; CALL XREF from fcn.001551fc @ 0x15538c

==========================================================================================
FUNCTION: fcn.0016d2b4
==========================================================================================
┌ fcn.0016d2b4(int64_t arg1, int64_t arg3, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0016d2b4      pacibsp
│           0x0016d2b8      stp   x29, x30, [var_30h]!
│           0x0016d2bc      str   x21, [var_20h]
│           0x0016d2c0      stp   x20, x19, [var_10h]
│           0x0016d2c4      mov   x29, sp
│           0x0016d2c8      mov   x20, x0                              ; arg1
│           0x0016d2cc      adrp  x0, 0x255000
│           0x0016d2d0      adrp  x1, 0x251000
│           0x0016d2d4      adrp  x3, 0x274000
│           0x0016d2d8      mov   x21, x2                              ; arg3
│           0x0016d2dc      add   x0, x0, 0xf9c                        ; int64_t arg1
│           0x0016d2e0      add   x1, x1, 0x5d5                        ; int64_t arg2
│           0x0016d2e4      add   x3, x3, 0x342                        ; int64_t arg4
│           0x0016d2e8      mov   w2, 0x18b
│           0x0016d2ec      bl    fcn.0014c9f8
│           0x0016d2f0      mov   w1, 0x50d0
│           0x0016d2f4      mov   w0, 1
│           0x0016d2f8      movk  w1, 3, lsl 16
│           0x0016d2fc      bl    fcn.001566a8
│       ┌─< 0x0016d300      cbz   x0, 0x16d348
│       │   0x0016d304      mov   x19, x0
│      ┌──< 0x0016d308      cbz   x20, 0x16d374
│     ┌───< 0x0016d30c      cbz   x21, 0x16d37c
│     │││   0x0016d310      ldr   x8, [x20, 0x20]                      ; aav.0x00000020
│     │││                                                              ; [0x20:4]=0x58000940 ; "@\t"
│     │││   0x0016d314      mov   x0, x20                              ; int64_t arg1
│     │││   0x0016d318      mov   x1, x19                              ; int64_t arg2
│     │││   0x0016d31c      orr   x8, x8, aav.0x00000400
│     │││   0x0016d320      str   x8, [x20, 0x20]
│     │││   0x0016d324      bl    fcn.001690d8
│    ┌────< 0x0016d328      cbz   w0, 0x16d3b0
│    ││││   0x0016d32c      mov   w20, w0
│    ││││   0x0016d330      adrp  x0, 0x251000
│    ││││   0x0016d334      adrp  x1, 0x251000
│    ││││   0x0016d338      add   x0, x0, 0x5e3
│    ││││   0x0016d33c      add   x1, x1, 0x5d5
│    ││││   0x0016d340      mov   w2, 0x196
│   ┌─────< 0x0016d344      b     0x16d424
│   ││││└─> 0x0016d348      adrp  x1, 0x251000
│   ││││    0x0016d34c      adrp  x0, 0x23a000
│   ││││    0x0016d350      add   x1, x1, 0x5d5                        ; int64_t arg2
│   ││││    0x0016d354      mov   w20, 1
│   ││││    0x0016d358      add   x0, x0, 0xb5c                        ; int64_t arg1
│   ││││    0x0016d35c      mov   w2, aav.0x00000190                   ; "?\U00000001\nk\xa1"
│   ││││    0x0016d360      mov   w4, 1
│   ││││    0x0016d364      mov   x3, x1                               ; int64_t arg4
│   ││││    0x0016d368      movk  w20, 0xf0e1, lsl 16
│   ││││    0x0016d36c      bl    fcn.0014c9f8
│   ││││┌─< 0x0016d370      b     0x16d448
│   │││└──> 0x0016d374      mov   w20, 1
│   │││┌──< 0x0016d378      b     0x16d380
│   ││└───> 0x0016d37c      mov   w20, 2
│   ││ ││   ; CODE XREF from fcn.0016d2b4 @ 0x16d378
│   ││ └──> 0x0016d380      adrp  x1, 0x251000
│   ││  │   0x0016d384      adrp  x0, 0x23a000
│   ││  │   0x0016d388      add   x1, x1, 0x5d5                        ; int64_t arg2
│   ││  │   0x0016d38c      add   x0, x0, 0xb5c                        ; int64_t arg1
│   ││  │   0x0016d390      add   w4, w20, 1
│   ││  │   0x0016d394      mov   w2, aav.0x00000190                   ; "?\U00000001\nk\xa1"
│   ││  │   0x0016d398      mov   x3, x1                               ; int64_t arg4
│   ││  │   0x0016d39c      bl    fcn.0014c9f8
│   ││  │   0x0016d3a0      mov   w8, 1
│   ││  │   0x0016d3a4      movk  w8, 0xf0e1, lsl 16
│   ││  │   0x0016d3a8      add   w20, w20, w8
│   ││ ┌──< 0x0016d3ac      b     0x16d42c
│   │└────> 0x0016d3b0      mov   x0, x19                              ; int64_t arg1
│   │  ││   0x0016d3b4      bl    fcn.001584cc
│   │  ││   0x0016d3b8      mov   w20, w0
│   │ ┌───< 0x0016d3bc      cbz   w0, 0x16d3dc
│   │ │││   0x0016d3c0      adrp  x0, 0x260000
│   │ │││   0x0016d3c4      adrp  x1, 0x251000
│   │ │││   0x0016d3c8      add   x0, x0, str.DRAM_enc_h_w_initializing_success ; 0xd5c ; "DRAM enc h/w initializing success \r\n"
│   │ │││   0x0016d3cc      add   x1, x1, 0x5d5
│   │ │││   0x0016d3d0      mov   w2, aav.0x0000019c
│   │ │││   0x0016d3d4      mov   w3, w20
│   │┌────< 0x0016d3d8      b     0x16d3f4
│   ││└───> 0x0016d3dc      adrp  x0, 0x25c000
│   ││ ││   0x0016d3e0      adrp  x1, 0x251000
│   ││ ││   0x0016d3e4      add   x0, x0, 0x77d
│   ││ ││   0x0016d3e8      add   x1, x1, 0x5d5
│   ││ ││   0x0016d3ec      mov   w2, 0x1a0
│   ││ ││   0x0016d3f0      mov   w3, wzr
│   ││ ││   ; CODE XREF from fcn.0016d2b4 @ 0x16d3d8
│   │└────> 0x0016d3f4      bl    fcn.0014c9f8
│   │  ││   0x0016d3f8      mov   x0, x21                              ; int64_t arg1
│   │  ││   0x0016d3fc      mov   x1, x19                              ; int64_t arg2
│   │  ││   0x0016d400      mov   w2, w20
│   │  ││   0x0016d404      bl    fcn.00169738
│   │  ││   0x0016d408      mov   w20, w0
│   │ ┌───< 0x0016d40c      cbz   w0, 0x16d42c
│   │ │││   0x0016d410      adrp  x0, 0x260000
│   │ │││   0x0016d414      adrp  x1, 0x251000
│   │ │││   0x0016d418      add   x0, x0, 0xd84
│   │ │││   0x0016d41c      add   x1, x1, 0x5d5
│   │ │││   0x0016d420      mov   w2, 0x1a4
│   │ │││   ; CODE XREF from fcn.0016d2b4 @ 0x16d344
│   └─────> 0x0016d424      mov   w3, w20
│     │││   0x0016d428      bl    fcn.0014c9f8
│     │││   ; CODE XREF from fcn.0016d2b4 @ 0x16d3ac
│     └└──> 0x0016d42c      mov   w2, 0x50d0
│       │   0x0016d430      movk  w2, 3, lsl 16
│       │   0x0016d434      mov   x0, x19                              ; int64_t arg1
│       │   0x0016d438      mov   w1, wzr
│       │   0x0016d43c      bl    fcn.0014d8fc
│       │   0x0016d440      mov   x0, x19                              ; int64_t arg1
│       │   0x0016d444      bl    fcn.00156708
│       │   ; CODE XREF from fcn.0016d2b4 @ 0x16d370
│       └─> 0x0016d448      adrp  x0, 0x276000
│           0x0016d44c      adrp  x1, 0x251000
│           0x0016d450      add   x0, x0, 0x7b8                        ; int64_t arg1
│           0x0016d454      add   x1, x1, 0x5d5                        ; int64_t arg2
│           0x0016d458      mov   w2, 0x1b0
│           0x0016d45c      bl    fcn.0014c9f8
│           0x0016d460      mov   w0, w20
│           0x0016d464      ldp   x20, x19, [var_10h]
│           0x0016d468      ldr   x21, [var_20h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0016d46c      ldp   x29, x30, [sp], 0x30
│           0x0016d470      autibsp
└           0x0016d474      ret
            ; CALL XREF from fcn.0018fe4c @ 0x1901e4
