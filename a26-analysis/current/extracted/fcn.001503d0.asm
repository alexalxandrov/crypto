┌ fcn.001503d0(unsigned long arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg unsigned long arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001503d0      pacibsp
│           0x001503d4      stp   x29, x30, [var_30h]!
│           0x001503d8      stp   x22, x21, [var_20h]
│           0x001503dc      stp   x20, x19, [var_10h]
│           0x001503e0      mov   x29, sp
│           0x001503e4      mov   w19, w3                              ; arg4
│           0x001503e8      cmp   w0, 0x3f                             ; '?' ; arg1
│       ┌─< 0x001503ec      b.hi  0x150408
│       │   0x001503f0      adrp  x8, 0x573000
│       │   0x001503f4      add   x8, x8, 0x6a4
│       │   0x001503f8      add   x8, x8, w0, uxtw 2                   ; arg1
│       │   0x001503fc      str   w1, [x8, str.k__9Ki_8]               ; arg2
│      ┌──< 0x00150400      cbnz  w19, 0x150494
│     ┌───< 0x00150404      b     0x1504d8
│     ││└─> 0x00150408      sub   w21, w0, 0x40                        ; arg1
│     ││    0x0015040c      mov   x20, x2                              ; arg3
│     ││    0x00150410      cmp   w21, 0x13
│     ││┌─< 0x00150414      b.hi  0x150460
│     │││   0x00150418      mov   x0, x20                              ; int64_t arg1
│     │││   0x0015041c      bl    fcn.0014db58
│     │││   0x00150420      adrp  x11, 0x573000
│     │││   0x00150424      and   x8, x0, 0xffffffff
│     │││   0x00150428      cmp   x0, 0x7ff
│     │││   0x0015042c      mov   w9, 0x7ff
│     │││   0x00150430      mov   w10, w21
│     │││   0x00150434      add   x11, x11, 0x6a4
│     │││   0x00150438      csel  x21, x8, x9, lo
│     │││   0x0015043c      add   x8, x11, x10, lsl 11
│     │││   0x00150440      add   x22, x8, aav.0x00000300
│     │││   0x00150444      mov   x0, x22                              ; int64_t arg1
│     │││   0x00150448      mov   x1, x20                              ; int64_t arg2
│     │││   0x0015044c      mov   x2, x21                              ; unsigned long arg3
│     │││   0x00150450      bl    fcn.0014db78
│     │││   0x00150454      strb  wzr, [x22, x21]
│    ┌────< 0x00150458      cbnz  w19, 0x150494
│   ┌─────< 0x0015045c      b     0x1504d8
│   ││││└─> 0x00150460      sub   w8, w0, 0x54                         ; arg1
│   ││││    0x00150464      cmp   w8, 9
│   ││││┌─< 0x00150468      b.hi  0x1504f0
│   │││││   0x0015046c      adrp  x9, 0x573000
│   │││││   0x00150470      add   x9, x9, 0x6a4
│   │││││   0x00150474      mov   w10, aav.0x00002800                  ; "(#\xc8\U000000120#\xc8\U000000128#\xc8\U00000012@#\xc8\U00000012\bC\xc8\U00000012\U00000010C\xc8\U00000012\U00000018C\xc8\U00000"
│   │││││   0x00150478      umaddl x8, w8, w10, x9
│   │││││   0x0015047c      mov   w9, 0xa300
│   │││││   0x00150480      add   x0, x8, x9                           ; int64_t arg1
│   │││││   0x00150484      mov   w2, aav.0x00002800                   ; "(#\xc8\U000000120#\xc8\U000000128#\xc8\U00000012@#\xc8\U00000012\bC\xc8\U00000012\U00000010C\xc8\U00000012\U00000018C\xc8\U00000"
│   │││││   0x00150488      mov   x1, x20                              ; int64_t arg2
│   │││││   0x0015048c      bl    fcn.0014d60c
│  ┌──────< 0x00150490      cbz   w19, 0x1504d8
│  ││└─└──> 0x00150494      adrp  x8, 0x573000
│  ││ │ │   0x00150498      ldrb  w8, [x8, 0x688]                      ; [0x688:4]=0xa94f5ffc
│  ││ │┌──< 0x0015049c      tbz   w8, 0, 0x1504c4
│  ││ │││   0x001504a0      adrp  x8, 0x573000
│  ││ │││   0x001504a4      ldr   w2, [x8, aav.0x00000690]             ; [0x690:4]=0x910483ff
│  ││ │││   0x001504a8      adrp  x0, 0x573000
│  ││ │││   0x001504ac      mov   w3, aav.0x00003300                   ; "J\U00000001\x80Rhb"
│  ││ │││   0x001504b0      add   x0, x0, 0x6a4                        ; int64_t arg1
│  ││ │││   0x001504b4      movk  w3, 2, lsl 16
│  ││ │││   0x001504b8      mov   w1, wzr
│  ││ │││   0x001504bc      bl    fcn.001392bc
│  ││┌────< 0x001504c0      b     0x1504d8
│  ││││└──> 0x001504c4      adrp  x0, 0x255000
│  ││││ │   0x001504c8      adrp  x1, 0x278000
│  ││││ │   0x001504cc      add   x0, x0, 0xbce                        ; int64_t arg1
│  ││││ │   0x001504d0      add   x1, x1, 0x81b                        ; int64_t arg2
│  ││││ │   0x001504d4      bl    fcn.0014c9f8
│  ││││ │   ; CODE XREFS from fcn.001503d0 @ 0x150404, 0x15045c, 0x1504c0
│  └└└└───> 0x001504d8      mov   w0, wzr
│       │   ; CODE XREF from fcn.001503d0 @ 0x1504f4
│      ┌──> 0x001504dc      ldp   x20, x19, [var_10h]
│      ╎│   0x001504e0      ldp   x22, x21, [var_20h]
│      ╎│   0x001504e4      ldp   x29, x30, [sp], 0x30
│      ╎│   0x001504e8      autibsp
│      ╎│   0x001504ec      ret
│      ╎└─> 0x001504f0      mov   w0, -1
└      └──< 0x001504f4      b     0x1504dc
            ; XREFS: CODE 0x001516dc  CALL 0x00152670  CALL 0x0016d9d0
            ; XREFS: CALL 0x0018bbe0  CALL 0x0018bc30  CALL 0x001a8858
            ; XREFS: CALL 0x001a8f4c  CALL 0x001aa284  CALL 0x001b1424
            ; XREFS: CALL 0x001b1710
