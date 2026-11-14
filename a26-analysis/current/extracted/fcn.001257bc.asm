┌ fcn.001257bc(unsigned long arg1);
│           ; arg unsigned long arg1 @ x0
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001257bc      pacibsp
│           0x001257c0      stp   x29, x30, [var_30h]!
│           0x001257c4      str   x21, [var_20h]
│           0x001257c8      stp   x20, x19, [var_10h]
│           0x001257cc      mov   x29, sp
│           0x001257d0      cmp   w0, 0                                ; arg1
│           0x001257d4      mov   w0, aav.0x00000100
│           0x001257d8      cset  w19, ne
│           0x001257dc      bl    fcn.0014237c
│       ┌─< 0x001257e0      cbz   x0, 0x125888
│       │   0x001257e4      mov   w2, aav.0x00000100
│       │   0x001257e8      mov   w1, wzr
│       │   0x001257ec      mov   x20, x0
│       │   0x001257f0      bl    fcn.0014d8fc
│       │   0x001257f4      adrp  x1, 0x56f000
│       │   0x001257f8      add   x1, x1, 0x8f4                        ; int64_t arg2
│       │   0x001257fc      mov   w2, 0xc
│       │   0x00125800      mov   x0, x20                              ; int64_t arg1
│       │   0x00125804      bl    fcn.0014d60c
│       │   0x00125808      adrp  x8, 0x56f000
│       │   0x0012580c      ldrb  w8, [x8, 0x4e8]                      ; [0x4e8:4]=0xb900511f
│       │   0x00125810      adrp  x9, 0x56f000
│       │   0x00125814      str   w19, [x9, 0x8f0]
│       │   0x00125818      str   w19, [x20, 0xfc]
│       │   0x0012581c      cmp   w8, 1
│      ┌──< 0x00125820      b.ne  0x125860
│      ││   0x00125824      adrp  x8, 0x56f000
│      ││   0x00125828      ldr   w21, [x8, 0x4d8]                     ; [0x4d8:4]=0xb900411f
│      ││   0x0012582c      add   x3, var_10h + 0x2c                   ; int64_t arg4
│      ││   0x00125830      mov   w1, 1
│      ││   0x00125834      mov   x2, x20                              ; unsigned long arg3
│      ││   0x00125838      mov   w0, w21
│      ││   0x0012583c      strh  wzr, [var_10h + 0x2c]
│      ││   0x00125840      bl    fcn.00123f14
│     ┌───< 0x00125844      cbz   w0, 0x125878
│     │││   0x00125848      adrp  x0, 0x259000
│     │││   0x0012584c      adrp  x1, 0x23e000
│     │││   0x00125850      add   x0, x0, 0xf4f                        ; int64_t arg1
│     │││   0x00125854      add   x1, x1, 0x701                        ; int64_t arg2
│     │││   0x00125858      mov   w2, w21
│     │││   0x0012585c      bl    fcn.0014c9f8
│     │└──> 0x00125860      adrp  x0, 0x23a000
│     │ │   0x00125864      adrp  x1, 0x25c000
│     │ │   0x00125868      add   x0, x0, 0x57d                        ; int64_t arg1
│     │ │   0x0012586c      add   x1, x1, 0x9e                         ; int64_t arg2
│     │ │   0x00125870      mov   w2, w19
│     │ │   0x00125874      bl    fcn.0014c9f8
│     └───> 0x00125878      mov   x0, x20                              ; int64_t arg1
│       │   0x0012587c      bl    fcn.001424a4
│       │   0x00125880      mov   w0, wzr
│      ┌──< 0x00125884      b     0x1258a4
│      │└─> 0x00125888      adrp  x0, 0x250000
│      │    0x0012588c      adrp  x1, 0x25c000
│      │    0x00125890      add   x0, x0, 0xf9a                        ; int64_t arg1
│      │    0x00125894      add   x1, x1, 0x9e                         ; int64_t arg2
│      │    0x00125898      bl    fcn.0014c9f8
│      │    0x0012589c      mov   w0, 0xb04
│      │    0x001258a0      movk  w0, 5, lsl 16
│      │    ; CODE XREF from fcn.001257bc @ 0x125884
│      └──> 0x001258a4      ldp   x20, x19, [var_10h]
│           0x001258a8      ldr   x21, [var_20h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x001258ac      ldp   x29, x30, [sp], 0x30
│           0x001258b0      autibsp
└           0x001258b4      ret
            ; CALL XREF from fcn.0018bfb0 @ 0x18c5e0
