┌ fcn.0017cb74(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017cb74      pacibsp
│           0x0017cb78      stp   x29, x30, [var_20h]!
│           0x0017cb7c      str   x19, [var_10h]
│           0x0017cb80      mov   x29, sp
│       ┌─< 0x0017cb84      cbz   x0, 0x17cc48
│       │   0x0017cb88      adrp  x1, 0x271000
│       │   0x0017cb8c      add   x1, x1, 0xff8                        ; int64_t arg2
│       │   0x0017cb90      mov   w2, 0xb
│       │   0x0017cb94      mov   x19, x0                              ; arg1
│       │   0x0017cb98      bl    fcn.0014dc20
│      ┌──< 0x0017cb9c      cbz   w0, 0x17cbec
│      ││   0x0017cba0      adrp  x1, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│      ││   0x0017cba4      add   x1, x1, 0x237                        ; int64_t arg2
│      ││   0x0017cba8      mov   w2, 0xb
│      ││   0x0017cbac      mov   x0, x19                              ; int64_t arg1
│      ││   0x0017cbb0      bl    fcn.0014dc20
│     ┌───< 0x0017cbb4      cbz   w0, 0x17cc0c
│     │││   0x0017cbb8      adrp  x1, 0x25e000
│     │││   0x0017cbbc      add   x1, x1, 0xb1a                        ; int64_t arg2
│     │││   0x0017cbc0      mov   w2, 0xb
│     │││   0x0017cbc4      mov   x0, x19                              ; int64_t arg1
│     │││   0x0017cbc8      bl    fcn.0014dc20
│    ┌────< 0x0017cbcc      cbz   w0, 0x17cc2c
│    ││││   0x0017cbd0      adrp  x0, 0x251000
│    ││││   0x0017cbd4      adrp  x1, 0x257000
│    ││││   0x0017cbd8      add   x0, x0, 0x911                        ; int64_t arg1
│    ││││   0x0017cbdc      add   x1, x1, 0xf19                        ; int64_t arg2
│    ││││   0x0017cbe0      bl    fcn.0014c9f8
│    ││││   0x0017cbe4      mov   w0, wzr
│   ┌─────< 0x0017cbe8      b     0x17cc48
│   │││└──> 0x0017cbec      adrp  x0, 0x24c000
│   │││ │   0x0017cbf0      adrp  x1, 0x257000
│   │││ │   0x0017cbf4      add   x0, x0, 0xccf                        ; int64_t arg1
│   │││ │   0x0017cbf8      add   x1, x1, 0xf19                        ; int64_t arg2
│   │││ │   0x0017cbfc      mov   x2, x19                              ; unsigned long arg3
│   │││ │   0x0017cc00      bl    fcn.0014c9f8
│   │││ │   0x0017cc04      mov   w0, 1
│   │││┌──< 0x0017cc08      b     0x17cc48
│   ││└───> 0x0017cc0c      adrp  x0, 0x24c000
│   ││ ││   0x0017cc10      adrp  x1, 0x257000
│   ││ ││   0x0017cc14      add   x0, x0, 0xccf                        ; int64_t arg1
│   ││ ││   0x0017cc18      add   x1, x1, 0xf19                        ; int64_t arg2
│   ││ ││   0x0017cc1c      mov   x2, x19                              ; unsigned long arg3
│   ││ ││   0x0017cc20      bl    fcn.0014c9f8
│   ││ ││   0x0017cc24      mov   w0, 2
│   ││┌───< 0x0017cc28      b     0x17cc48
│   │└────> 0x0017cc2c      adrp  x0, 0x24c000
│   │ │││   0x0017cc30      adrp  x1, 0x257000
│   │ │││   0x0017cc34      add   x0, x0, 0xccf                        ; int64_t arg1
│   │ │││   0x0017cc38      add   x1, x1, 0xf19                        ; int64_t arg2
│   │ │││   0x0017cc3c      mov   x2, x19                              ; unsigned long arg3
│   │ │││   0x0017cc40      bl    fcn.0014c9f8
│   │ │││   0x0017cc44      mov   w0, 3
│   │ │││   ; CODE XREFS from fcn.0017cb74 @ 0x17cbe8, 0x17cc08, 0x17cc28
│   └─└└└─> 0x0017cc48      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0017cc4c      ldp   x29, x30, [sp], 0x20
│           0x0017cc50      autibsp
└           0x0017cc54      ret
            ; CALL XREF from fcn.0017a114 @ 0x17a35c
            ; CALL XREF from fcn.001866ac @ 0x18670c
            ; CALL XREFS from fcn.00187cf0 @ 0x187e00, 0x187e14, 0x187e38
