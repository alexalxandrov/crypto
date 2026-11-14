┌ fcn.0012c4dc(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012c4dc      pacibsp
│           0x0012c4e0      stp   x29, x30, [var_20h]!
│           0x0012c4e4      stp   x20, x19, [var_10h]
│           0x0012c4e8      mov   x29, sp
│           0x0012c4ec      bl    fcn.00126b3c
│       ┌─< 0x0012c4f0      cbz   x0, 0x12c518
│       │   0x0012c4f4      mov   w1, 0x10
│       │   0x0012c4f8      mov   w2, wzr
│       │   0x0012c4fc      mov   x19, x0
│       │   0x0012c500      str   wzr, [x0, 0x90]
│       │   0x0012c504      bl    fcn.001283b8
│      ┌──< 0x0012c508      cbz   w0, 0x12c520
│      ││   0x0012c50c      adrp  x0, 0x251000
│      ││   0x0012c510      add   x0, x0, 0xda                         ; int64_t arg1
│      ││   0x0012c514      bl    fcn.0014c72c
│      │└─> 0x0012c518      mov   w19, 2
│      │┌─< 0x0012c51c      b     0x12c558
│      └──> 0x0012c520      ldr   w19, [x19, 0x214]                    ; [0x214:4]=0x94001731
│       │   0x0012c524      adrp  x8, 0x253000
│       │   0x0012c528      adrp  x9, 0x266000
│       │   0x0012c52c      add   x8, x8, 0x891
│       │   0x0012c530      add   x9, x9, 0xb54
│       │   0x0012c534      cmp   w19, 0
│       │   0x0012c538      adrp  x0, 0x23e000
│       │   0x0012c53c      csel  x1, x9, x8, eq                       ; int64_t arg2
│       │   0x0012c540      add   x0, x0, 0x7df                        ; int64_t arg1
│       │   0x0012c544      bl    fcn.0014c9f8
│      ┌──< 0x0012c548      cbnz  w19, 0x12c554
│      ││   0x0012c54c      bl    fcn.0012bbe0
│     ┌───< 0x0012c550      cbz   w0, 0x12c56c
│     │└──> 0x0012c554      mov   w19, wzr
│     │ │   ; CODE XREFS from fcn.0012c4dc @ 0x12c51c, 0x12c5f4, 0x12c620
│    ┌─┌└─> 0x0012c558      mov   w0, w19
│    ╎│╎    0x0012c55c      ldp   x20, x19, [var_10h]
│    ╎│╎    0x0012c560      ldp   x29, x30, [sp], 0x20
│    ╎│╎    0x0012c564      autibsp
│    ╎│╎    0x0012c568      ret
│    ╎└───> 0x0012c56c      mov   w0, 1
│    ╎ ╎    0x0012c570      bl    fcn.0012c3dc
│    ╎ ╎    0x0012c574      mov   w19, w0
│    ╎ ╎    0x0012c578      bl    fcn.00126b3c
│    ╎ ╎┌─< 0x0012c57c      cbz   x0, 0x12c5a4
│    ╎ ╎│   0x0012c580      mov   w1, 0x10
│    ╎ ╎│   0x0012c584      mov   w2, wzr
│    ╎ ╎│   0x0012c588      mov   x20, x0
│    ╎ ╎│   0x0012c58c      str   wzr, [x0, 0x90]
│    ╎ ╎│   0x0012c590      bl    fcn.001283b8
│    ╎┌───< 0x0012c594      cbz   w0, 0x12c5ac
│    ╎│╎│   0x0012c598      adrp  x0, 0x251000
│    ╎│╎│   0x0012c59c      add   x0, x0, 0xda                         ; int64_t arg1
│    ╎│╎│   0x0012c5a0      bl    fcn.0014c72c
│    ╎│╎└─> 0x0012c5a4      mov   w20, 2
│    ╎│╎┌─< 0x0012c5a8      b     0x12c5b8
│    ╎└───> 0x0012c5ac      ldr   w8, [x20, 0x214]                     ; [0x214:4]=0x94001731
│    ╎ ╎│   0x0012c5b0      cmp   w8, 0
│    ╎ ╎│   0x0012c5b4      cset  w20, ne
│    ╎ ╎│   ; CODE XREF from fcn.0012c4dc @ 0x12c5a8
│    ╎ ╎└─> 0x0012c5b8      adrp  x0, 0x264000
│    ╎ ╎    0x0012c5bc      add   x0, x0, 0xc85                        ; int64_t arg1
│    ╎ ╎    0x0012c5c0      bl    fcn.0014c9f8
│    ╎ ╎┌─< 0x0012c5c4      cbz   w19, 0x12c5d8
│    ╎ ╎│   0x0012c5c8      adrp  x0, 0x24a000
│    ╎ ╎│   0x0012c5cc      add   x0, x0, 0xc8
│    ╎ ╎│   0x0012c5d0      mov   w1, w19
│    ╎┌───< 0x0012c5d4      b     0x12c5f0
│    ╎│╎└─> 0x0012c5d8      cmp   w20, 2
│    ╎│╎┌─< 0x0012c5dc      b.ne  0x12c5f8
│    ╎│╎│   0x0012c5e0      adrp  x0, 0x26c000
│    ╎│╎│   0x0012c5e4      add   x0, x0, 0xdfe
│    ╎│╎│   0x0012c5e8      mov   w1, 2
│    ╎│╎│   0x0012c5ec      mov   w19, 2
│    ╎│╎│   ; CODE XREF from fcn.0012c4dc @ 0x12c5d4
│    ╎└───> 0x0012c5f0      bl    fcn.0014c9f8
│    └────< 0x0012c5f4      b     0x12c558
│      ╎└─> 0x0012c5f8      adrp  x8, 0x23e000
│      ╎    0x0012c5fc      adrp  x9, 0x240000
│      ╎    0x0012c600      add   x8, x8, 0x7fd
│      ╎    0x0012c604      add   x9, x9, 0xc92
│      ╎    0x0012c608      cmp   w20, 0
│      ╎    0x0012c60c      adrp  x0, 0x240000
│      ╎    0x0012c610      csel  x1, x9, x8, eq                       ; int64_t arg2
│      ╎    0x0012c614      add   x0, x0, 0xc77                        ; int64_t arg1
│      ╎    0x0012c618      bl    fcn.0014c9f8
│      ╎    0x0012c61c      mov   w19, wzr
└      └──< 0x0012c620      b     0x12c558
            ; CALL XREF from fcn.00138ddc @ 0x138e24
