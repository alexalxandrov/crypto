┌ fcn.0018996c(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8, int64_t arg_8h);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           ; arg int64_t arg_8h @ stack + 0x8
│           0x0018996c      pacibsp
│           0x00189970      sub   sp, sp, 0x50
│           0x00189974      stp   x29, x30, [var_30h]
│           0x00189978      stp   x22, x21, [var_20h]
│           0x0018997c      stp   x20, x19, [var_10h]
│           0x00189980      add   x29, sp, 0x20
│           0x00189984      adrp  x20, 0x5a6000
│           0x00189988      mov   w19, w0                              ; arg1
│           0x0018998c      ldr   x0, [x20, 0xac0]                     ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│           0x00189990      strb  wzr, [var_48h + 0x10]
│           0x00189994      stp   xzr, xzr, [var_48h]
│       ┌─< 0x00189998      cbz   x0, 0x1899a4
│       │   0x0018999c      bl    fcn.001424a4
│       │   0x001899a0      str   xzr, [x20, 0xac0]
│       └─> 0x001899a4      adrp  x21, 0x5a6000
│           0x001899a8      ldr   x0, [x21, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n"
│       ┌─< 0x001899ac      cbz   x0, 0x1899b8
│       │   0x001899b0      bl    fcn.001424a4
│       │   0x001899b4      str   xzr, [x21, 0xad0]
│       └─> 0x001899b8      adrp  x22, 0x5a6000
│           0x001899bc      ldr   x0, [x22, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n"
│       ┌─< 0x001899c0      cbz   x0, 0x1899cc
│       │   0x001899c4      bl    fcn.001424a4
│       │   0x001899c8      str   xzr, [x22, 0xac8]
│       └─> 0x001899cc      mov   w1, 0x1c98
│           0x001899d0      mov   w0, 1
│           0x001899d4      movk  w1, 2, lsl 16
│           0x001899d8      bl    fcn.001566a8
│           0x001899dc      mov   w1, 0x940
│           0x001899e0      str   x0, [x20, 0xac0]
│           0x001899e4      mov   w0, 1
│           0x001899e8      movk  w1, 2, lsl 16
│           0x001899ec      bl    fcn.001566a8
│           0x001899f0      mov   w1, 0x50d0
│           0x001899f4      str   x0, [x21, 0xad0]
│           0x001899f8      mov   w0, 1
│           0x001899fc      movk  w1, 3, lsl 16
│           0x00189a00      bl    fcn.001566a8
│           0x00189a04      ldr   x8, [x20, 0xac0]                     ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│           0x00189a08      str   x0, [x22, 0xac8]
│       ┌─< 0x00189a0c      cbz   x8, 0x189a50
│       │   0x00189a10      ldr   x8, [x21, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n"
│      ┌──< 0x00189a14      cbz   x8, 0x189a68
│     ┌───< 0x00189a18      cbz   x0, 0x189a80
│     │││   0x00189a1c      add   x1, arg_8h                           ; int64_t arg2
│     │││   0x00189a20      mov   w0, 0x1e
│     │││   0x00189a24      bl    fcn.00158328
│     │││   0x00189a28      add   x0, var_48h                          ; int64_t arg1
│     │││   0x00189a2c      mov   w1, 0x10
│     │││   0x00189a30      bl    fcn.0017d6ac
│    ┌────< 0x00189a34      cbz   w0, 0x189ab4
│    ││││   0x00189a38      adrp  x0, 0x246000
│    ││││   0x00189a3c      adrp  x1, 0x265000
│    ││││   0x00189a40      add   x0, x0, 0x58b
│    ││││   0x00189a44      add   x1, x1, 0x659
│    ││││   0x00189a48      mov   w2, 0x8c
│   ┌─────< 0x00189a4c      b     0x189a94
│   ││││└─> 0x00189a50      adrp  x0, 0x265000
│   ││││    0x00189a54      adrp  x1, 0x265000
│   ││││    0x00189a58      add   x0, x0, 0x637
│   ││││    0x00189a5c      add   x1, x1, 0x659
│   ││││    0x00189a60      mov   w2, 0x7c
│   ││││┌─< 0x00189a64      b     0x189a94
│   │││└──> 0x00189a68      adrp  x0, 0x256000
│   │││ │   0x00189a6c      adrp  x1, 0x265000
│   │││ │   0x00189a70      add   x0, x0, aav.0x0000046c               ; "\t\xd5@\xb9\xea'\U00000003)\n\xd9@\xb9\t\xdd@\xb9\xea'\U00000004)\n\xe1@\xb9\t\xe5@\xb9\xea'\U00000005)\n\xe9@\xb9\t\xed@\xb9\xe"
│   │││ │   0x00189a74      add   x1, x1, 0x659
│   │││ │   0x00189a78      mov   w2, 0x81
│   │││┌──< 0x00189a7c      b     0x189a94
│   ││└───> 0x00189a80      adrp  x0, 0x248000
│   ││ ││   0x00189a84      adrp  x1, 0x265000
│   ││ ││   0x00189a88      add   x0, x0, 0x86b
│   ││ ││   0x00189a8c      add   x1, x1, 0x659
│   ││ ││   0x00189a90      mov   w2, 0x86
│   ││ ││   ; CODE XREFS from fcn.0018996c @ 0x189a4c, 0x189a64, 0x189a7c
│   └──└└─> 0x00189a94      bl    fcn.0014c9f8
│    │      0x00189a98      mov   w0, -1
│    │      ; CODE XREF from fcn.0018996c @ 0x189b4c
│    │  ┌─> 0x00189a9c      ldp   x20, x19, [var_10h]
│    │  ╎   0x00189aa0      ldp   x22, x21, [var_20h]
│    │  ╎   0x00189aa4      ldp   x29, x30, [var_30h]
│    │  ╎   0x00189aa8      add   sp, sp, 0x50
│    │  ╎   0x00189aac      autibsp
│    │  ╎   0x00189ab0      ret
│    └────> 0x00189ab4      ldr   x8, [x20, 0xac0]                     ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│       ╎   0x00189ab8      add   x1, var_48h                          ; int64_t arg2
│       ╎   0x00189abc      mov   w2, 0x10
│       ╎   0x00189ac0      add   x0, x8, 0x30                         ; aav.0x00000030 ; int64_t arg1
│       ╎   0x00189ac4      bl    fcn.0014d60c
│       ╎   0x00189ac8      ldr   x21, [x20, 0xac0]                    ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│       ╎   0x00189acc      adrp  x20, 0x265000
│       ╎   0x00189ad0      add   x20, x20, 0xbd
│       ╎   0x00189ad4      mov   x0, x20                              ; int64_t arg1
│       ╎   0x00189ad8      ldr   x22, [x21, 0x10]                     ; aav.0x00000010
│       ╎                                                              ; [0x10:4]=0x14000004
│       ╎   0x00189adc      orr   x8, x22, 0x20000000
│       ╎   0x00189ae0      str   x8, [x21, 0x10]
│       ╎   0x00189ae4      bl    fcn.0014db58
│       ╎   0x00189ae8      mov   x2, x0
│       ╎   0x00189aec      add   x0, var_48h                          ; int64_t arg1
│       ╎   0x00189af0      mov   x1, x20                              ; int64_t arg2
│       ╎   0x00189af4      bl    fcn.0014d5c8
│      ┌──< 0x00189af8      cbz   w0, 0x189b20
│      │╎   0x00189afc      adrp  x20, 0x278000
│      │╎   0x00189b00      add   x20, x20, aav.0x000009a8             ; "-EL1"
│      │╎   0x00189b04      mov   x0, x20                              ; int64_t arg1
│      │╎   0x00189b08      bl    fcn.0014db58
│      │╎   0x00189b0c      mov   x2, x0
│      │╎   0x00189b10      add   x0, var_48h                          ; int64_t arg1
│      │╎   0x00189b14      mov   x1, x20                              ; int64_t arg2
│      │╎   0x00189b18      bl    fcn.0014d5c8
│     ┌───< 0x00189b1c      cbnz  w0, 0x189b2c
│     │└──> 0x00189b20      ldr   x8, [x21, 0x20]                      ; aav.0x00000020
│     │ ╎                                                              ; [0x20:4]=0x58000940 ; "@\t"
│     │ ╎   0x00189b24      orr   x8, x8, aav.0x00000400
│     │ ╎   0x00189b28      str   x8, [x21, 0x20]
│     └───> 0x00189b2c      mov   w8, 1
│       ╎   0x00189b30      mov   w9, 0x20200000
│       ╎   0x00189b34      mov   w0, wzr
│       ╎   0x00189b38      orr   w10, w19, aav.0x0000c000             ; "J\x85\xea\xb7>\x93\U00000012U\xf7Ѣ\U0000001c\xba\x83\xf9\xa8\xab\U00000015a\xc8\xf6\x81i\U00000011/8K\xfe`\x92\xd0\xe0n7Џ\xeb5"
│       ╎   0x00189b3c      strb  w8, [x21]
│       ╎   0x00189b40      orr   x8, x22, x9
│       ╎   0x00189b44      str   x8, [x21, 0x10]
│       ╎   0x00189b48      str   w10, [x21, 8]
└       └─< 0x00189b4c      b     0x189a9c
            ; XREFS: CALL 0x00188ce8  CALL 0x00189000  CALL 0x0018966c
            ; XREFS: CALL 0x00189f88  CALL 0x0018a048  CALL 0x0018a2a4
            ; XREFS: CALL 0x0018a2f8  CALL 0x0018a884
