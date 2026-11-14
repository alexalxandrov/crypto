┌ fcn.0014d8fc(int64_t arg1, int64_t arg2, unsigned long arg3);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg unsigned long arg3 @ x2
│           0x0014d8fc      pacibsp
│           0x0014d900      neg   w8, w0                               ; arg1
│           0x0014d904      and   x10, x8, 7
│           0x0014d908      cmp   x10, x2                              ; arg3
│       ┌─< 0x0014d90c      b.hs  0x14d940
│       │   0x0014d910      sub   x8, x2, x10                          ; arg3
│       │   0x0014d914      mov   x9, x0                               ; arg1
│      ┌──< 0x0014d918      cbz   x10, 0x14d9a4
│      ││   0x0014d91c      mov   x9, x0                               ; arg1
│      ││   0x0014d920      cmp   x10, 1
│      ││   0x0014d924      strb  w1, [x9], 1                          ; arg2
│     ┌───< 0x0014d928      b.eq  0x14d9a4
│     │││   0x0014d92c      cmp   x10, 2
│     │││   0x0014d930      strb  w1, [x0, 1]                          ; arg1
│    ┌────< 0x0014d934      b.ne  0x14d94c
│    ││││   0x0014d938      add   x9, x0, 2                            ; arg1
│   ┌─────< 0x0014d93c      b     0x14d9a4
│   ││││└─> 0x0014d940      mov   x9, x0                               ; arg1
│   ││││┌─< 0x0014d944      cbnz  x2, 0x14d9d4
│  ┌──────< 0x0014d948      b     0x14d9e0
│  ││└────> 0x0014d94c      cmp   x10, 3
│  ││ │││   0x0014d950      strb  w1, [x0, 2]                          ; arg1
│  ││┌────< 0x0014d954      b.ne  0x14d960
│  ││││││   0x0014d958      add   x9, x0, 3                            ; arg1
│ ┌───────< 0x0014d95c      b     0x14d9a4
│ │││└────> 0x0014d960      cmp   x10, 4
│ │││ │││   0x0014d964      strb  w1, [x0, 3]                          ; arg1
│ │││┌────< 0x0014d968      b.ne  0x14d974
│ │││││││   0x0014d96c      add   x9, x0, 4                            ; "kwH!daeh" ; arg1
│ ────────< 0x0014d970      b     0x14d9a4
│ │││└────> 0x0014d974      cmp   x10, 5
│ │││ │││   0x0014d978      strb  w1, [x0, 4]                          ; arg1
│ │││┌────< 0x0014d97c      b.ne  0x14d988
│ │││││││   0x0014d980      add   x9, x0, 5                            ; arg1
│ ────────< 0x0014d984      b     0x14d9a4
│ │││└────> 0x0014d988      cmp   x10, 6
│ │││ │││   0x0014d98c      strb  w1, [x0, 5]                          ; arg1
│ │││┌────< 0x0014d990      b.ne  0x14d99c
│ │││││││   0x0014d994      add   x9, x0, 6                            ; arg1
│ ────────< 0x0014d998      b     0x14d9a4
│ │││└────> 0x0014d99c      add   x9, x0, 7                            ; arg1
│ │││ │││   0x0014d9a0      strb  w1, [x0, 6]                          ; arg1
│ │││ │││   ; CODE XREFS from fcn.0014d8fc @ 0x14d93c, 0x14d95c, 0x14d970, 0x14d984, 0x14d998
│ └─└─└└──> 0x0014d9a4      cmp   x8, 8
│  │   ┌──< 0x0014d9a8      b.lo  0x14d9cc
│  │   ││   0x0014d9ac      and   w10, w1, 0xff                        ; arg2
│  │   ││   0x0014d9b0      mov   x11, 0x1000100010001
│  │   ││   0x0014d9b4      bfi   w10, w10, 8, 8
│  │   ││   0x0014d9b8      mul   x10, x10, x11
│  │   ││   0x0014d9bc      lsr   x11, x8, 3
│  │  ┌───> 0x0014d9c0      subs  x11, x11, 1
│  │  ╎││   0x0014d9c4      str   x10, [x9], 8
│  │  └───< 0x0014d9c8      b.ne  0x14d9c0
│  │   └──> 0x0014d9cc      and   x2, x8, 7
│  │   ┌──< 0x0014d9d0      cbz   x2, 0x14d9e0
│  │  ┌─└─> 0x0014d9d4      subs  x2, x2, 1
│  │  ╎│    0x0014d9d8      strb  w1, [x9], 1                          ; arg2
│  │  └───< 0x0014d9dc      b.ne  0x14d9d4
│  │   │    ; CODE XREF from fcn.0014d8fc @ 0x14d948
│  └───└──> 0x0014d9e0      autibsp
└           0x0014d9e4      ret
            ; XREFS: CALL 0x001f06a4  CALL 0x001f06b8  CALL 0x001f06e0
            ; XREFS: CALL 0x001f06ec  CALL 0x001f0714  CALL 0x001f0720
            ; XREFS: CALL 0x001f0748  CALL 0x001f0754  CALL 0x001f077c
            ; XREFS: CALL 0x001f0788  CALL 0x001f07b0  CALL 0x001f07bc
            ; XREFS: CALL 0x001f07e4  CALL 0x001f07f0  CALL 0x001f0818
