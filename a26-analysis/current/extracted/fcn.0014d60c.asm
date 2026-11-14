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
