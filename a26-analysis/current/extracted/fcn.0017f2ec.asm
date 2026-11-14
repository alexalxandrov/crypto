┌ fcn.0017f2ec(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017f2ec      pacibsp
│           0x0017f2f0      stp   x29, x30, [var_40h]!
│           0x0017f2f4      str   x23, [var_30h]
│           0x0017f2f8      stp   x22, x21, [var_20h]
│           0x0017f2fc      stp   x20, x19, [var_10h]
│           0x0017f300      mov   x29, sp
│           0x0017f304      adrp  x23, 0x28d000
│           0x0017f308      mov   w20, w2                              ; arg3
│           0x0017f30c      mov   x21, x1                              ; arg2
│           0x0017f310      mov   x19, x0                              ; arg1
│           0x0017f314      mov   x22, xzr
│           0x0017f318      add   x23, x23, 0x5a8
│       ┌─> 0x0017f31c      ldr   x1, [x23, x22]                       ; int64_t arg2
│       ╎   0x0017f320      mov   x0, x19                              ; int64_t arg1
│       ╎   0x0017f324      bl    fcn.0014da4c
│      ┌──< 0x0017f328      cbz   w0, 0x17f340
│      │╎   0x0017f32c      add   x22, x22, 8                          ; "daeh"
│      │╎   0x0017f330      cmp   x22, 0xd8
│      │└─< 0x0017f334      b.ne  0x17f31c
│      │    0x0017f338      mov   w20, wzr
│      │┌─< 0x0017f33c      b     0x17f3c0
│      └──> 0x0017f340      add   x22, x21, w20, sxtw
│       │   0x0017f344      sub   x1, x22, 0x310                       ; int64_t arg2
│       │   0x0017f348      mov   x0, x19                              ; int64_t arg1
│       │   0x0017f34c      bl    fcn.0017eb34
│      ┌──< 0x0017f350      tbnz  w0, 0x1f, 0x17f380
│      ││   0x0017f354      cmp   w20, str.k__9Ki_8                    ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│     ┌───< 0x0017f358      b.le  0x17f388
│     │││   0x0017f35c      sub   x2, x22, 0x210                       ; int64_t arg3
│     │││   0x0017f360      mov   x0, x21                              ; int64_t arg1
│     │││   0x0017f364      mov   w1, w20
│     │││   0x0017f368      bl    fcn.0017f3dc
│     │││   0x0017f36c      mov   w20, w0
│    ┌────< 0x0017f370      tbnz  w0, 0x1f, 0x17f3a0
│    ││││   0x0017f374      adrp  x3, 0x25c000
│    ││││   0x0017f378      add   x3, x3, 0x9d4
│   ┌─────< 0x0017f37c      b     0x17f3a8
│   │││└──> 0x0017f380      mov   w20, -1
│   │││┌──< 0x0017f384      b     0x17f3c0
│   ││└───> 0x0017f388      adrp  x0, 0x241000
│   ││ ││   0x0017f38c      adrp  x1, 0x26f000
│   ││ ││   0x0017f390      add   x0, x0, 0x6aa                        ; int64_t arg1
│   ││ ││   0x0017f394      add   x1, x1, 0xf30                        ; int64_t arg2
│   ││ ││   0x0017f398      bl    fcn.0014c9f8
│   ││ ││   0x0017f39c      mov   w20, -1
│   │└────> 0x0017f3a0      adrp  x3, 0x25e000
│   │  ││   0x0017f3a4      add   x3, x3, 0xb38
│   │  ││   ; CODE XREF from fcn.0017f2ec @ 0x17f37c
│   └─────> 0x0017f3a8      adrp  x0, 0x248000
│      ││   0x0017f3ac      adrp  x1, 0x26f000
│      ││   0x0017f3b0      add   x0, x0, 0x625                        ; int64_t arg1
│      ││   0x0017f3b4      add   x1, x1, 0xf30                        ; int64_t arg2
│      ││   0x0017f3b8      mov   x2, x19                              ; unsigned long arg3
│      ││   0x0017f3bc      bl    fcn.0014c9f8
│      ││   ; CODE XREFS from fcn.0017f2ec @ 0x17f33c, 0x17f384
│      └└─> 0x0017f3c0      mov   w0, w20
│           0x0017f3c4      ldp   x20, x19, [var_10h]
│           0x0017f3c8      ldp   x22, x21, [var_20h]
│           0x0017f3cc      ldr   x23, [var_30h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0017f3d0      ldp   x29, x30, [sp], 0x40
│           0x0017f3d4      autibsp
└           0x0017f3d8      ret
            ; CALL XREF from fcn.0017f2ec @ 0x17f368
            ; CALL XREF from fcn.0017f4c4 @ 0x17f560
