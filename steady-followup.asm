┌ fcn.0010a9a8();
│           0x0010a9a8      pacibsp
│           0x0010a9ac      adrp  x8, 0x540000
│           0x0010a9b0      ldrb  w0, [x8, 0x41c]                      ; [0x41c:4]=0x37300129
│           0x0010a9b4      autibsp
└           0x0010a9b8      ret
            ; CALL XREF from fcn.00114100 @ 0x11446c

==========================================================================================

┌ fcn.0017d674();
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017d674      pacibsp
│           0x0017d678      stp   x29, x30, [var_10h]!
│           0x0017d67c      mov   x29, sp
│           0x0017d680      bl    fcn.0017bae4
│           0x0017d684      ldr   x8, [x0, 0x68]                       ; aav.0x00000068
│                                                                      ; [0x68:4]=0xd61f0000
│       ┌─< 0x0017d688      cbz   x8, 0x17d694
│      ┌──> 0x0017d68c      mov   w0, wzr
│     ┌───< 0x0017d690      b     0x17d6a0
│     │╎└─> 0x0017d694      ldr   x8, [x0, 0x70]                       ; aav.0x00000070
│     │╎                                                               ; [0x70:4]=0xd51ec000
│     │└──< 0x0017d698      cbz   x8, 0x17d68c
│     │     0x0017d69c      mov   w0, 1
│     │     ; CODE XREF from fcn.0017d674 @ 0x17d690
│     └───> 0x0017d6a0      ldp   x29, x30, [sp], 0x10
│           0x0017d6a4      autibsp
└           0x0017d6a8      ret
            ; XREFS: CALL 0x001114b0  CALL 0x0017bc98  CALL 0x0017d568
            ; XREFS: CALL 0x00184488  CALL 0x001851b0  CALL 0x00185440
            ; XREFS: CALL 0x0018546c  CALL 0x00185490  CALL 0x001854b4
            ; XREFS: CALL 0x00189a30

==========================================================================================

┌ fcn.00188738(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg int64_t arg2 @ x1
│       ╎   ; arg int64_t arg3 @ x2
│       ╎   ; arg int64_t arg4 @ x3
│       ╎   ; var int64_t var_20h @ stack - 0x20
│       ╎   ; var int64_t var_10h @ stack - 0x10
│       ╎   0x00188738      pacibsp
│       ╎   0x0018873c      stp   x29, x30, [var_20h]!
│       ╎   0x00188740      stp   x20, x19, [var_10h]
│       ╎   0x00188744      mov   x29, sp
│       ╎   0x00188748      mov   x19, x0                              ; arg1
│       ╎   0x0018874c      adrp  x0, 0x26f000
│       ╎   0x00188750      add   x0, x0, 0xe25                        ; int64_t arg1
│       ╎   0x00188754      bl    fcn.001758fc
│      ┌──< 0x00188758      cbz   x0, 0x1887c8
│      │╎   0x0018875c      mov   x20, x0
│      │╎   0x00188760      adrp  x0, 0x279000
│      │╎   0x00188764      adrp  x1, 0x241000
│      │╎   0x00188768      add   x0, x0, 0xe99                        ; int64_t arg1
│      │╎   0x0018876c      add   x1, x1, 0x8fb                        ; int64_t arg2
│      │╎   0x00188770      bl    fcn.0014c9f8
│      │╎   0x00188774      ldrb  w8, [x20, 0x14]!                     ; aav.0x00000014
│      │╎                                                              ; [0x14:4]=0
│      │╎   0x00188778      mov   x0, x19
│      │╎   0x0018877c      mov   w3, 0x2c00
│      │╎   0x00188780      ldrb  w1, [x20, 8]!                        ; aav.0x00000008
│      │╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      │╎   0x00188784      ldurb w12, [x20, -5]                       ; [0x5:4]=0x64214877
│      │╎   0x00188788      ldurb w13, [x20, -6]                       ; [0x6:4]=0x61642148
│      │╎   0x0018878c      ldurb w14, [x20, -7]                       ; [0x7:4]=0x65616421
│      │╎   0x00188790      ldrb  w9, [x20, 3]                         ; [0x3:4]=0x48776b00
│      │╎   0x00188794      ldrb  w10, [x20, 2]                        ; [0x2:4]=0x776b0000
│      │╎   0x00188798      ldrb  w11, [x20, 1]                        ; [0x1:4]=0x6b000000
│      │╎   0x0018879c      ldp   x20, x19, [var_10h]
│      │╎   0x001887a0      bfi   w13, w12, 8, 8
│      │╎   0x001887a4      bfi   w8, w14, 8, 8
│      │╎   0x001887a8      bfi   w10, w9, 8, 8
│      │╎   0x001887ac      bfi   w1, w11, 8, 8
│      │╎   0x001887b0      bfi   w8, w13, 0x10, 0x10
│      │╎   0x001887b4      bfi   w1, w10, 0x10, 0x10
│      │╎   0x001887b8      add   w2, w8, 0x12
│      │╎   0x001887bc      ldp   x29, x30, [sp], 0x20
│      │╎   0x001887c0      autibsp
│      │└─< 0x001887c4      b     fcn.001392bc
│      └──> 0x001887c8      adrp  x0, 0x265000
│           0x001887cc      adrp  x1, 0x241000
│           0x001887d0      add   x0, x0, 0x5d3                        ; int64_t arg1
│           0x001887d4      add   x1, x1, 0x8fb                        ; int64_t arg2
│           0x001887d8      bl    fcn.0014c9f8
│           0x001887dc      ldp   x20, x19, [var_10h]
│           0x001887e0      mov   w0, -1
│           0x001887e4      ldp   x29, x30, [sp], 0x20
│           0x001887e8      autibsp
└           0x001887ec      ret
            ; CALL XREF from fcn.0018a6d4 @ 0x18aa24

==========================================================================================

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

==========================================================================================

┌ fcn.00189b50();
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00189b50      pacibsp
│           0x00189b54      stp   x29, x30, [var_20h]!
│           0x00189b58      str   x19, [var_10h]
│           0x00189b5c      mov   x29, sp
│           0x00189b60      adrp  x19, 0x5a6000
│           0x00189b64      ldr   x0, [x19, 0xac0]                     ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│       ┌─< 0x00189b68      cbz   x0, 0x189b88
│       │   0x00189b6c      mov   w2, 0x1c98
│       │   0x00189b70      movk  w2, 2, lsl 16
│       │   0x00189b74      mov   w1, wzr
│       │   0x00189b78      bl    fcn.0014d8fc
│       │   0x00189b7c      ldr   x0, [x19, 0xac0]                     ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n" ; int64_t arg1
│       │   0x00189b80      bl    fcn.001424a4
│       │   0x00189b84      str   xzr, [x19, 0xac0]
│       └─> 0x00189b88      adrp  x19, 0x5a6000
│           0x00189b8c      ldr   x0, [x19, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n"
│       ┌─< 0x00189b90      cbz   x0, 0x189bb0
│       │   0x00189b94      mov   w2, 0x940
│       │   0x00189b98      movk  w2, 2, lsl 16
│       │   0x00189b9c      mov   w1, wzr
│       │   0x00189ba0      bl    fcn.0014d8fc
│       │   0x00189ba4      ldr   x0, [x19, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n" ; int64_t arg1
│       │   0x00189ba8      bl    fcn.001424a4
│       │   0x00189bac      str   xzr, [x19, 0xad0]
│       └─> 0x00189bb0      adrp  x19, 0x5a6000
│           0x00189bb4      ldr   x0, [x19, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n"
│       ┌─< 0x00189bb8      cbz   x0, 0x189bd8
│       │   0x00189bbc      mov   w2, 0x50d0
│       │   0x00189bc0      movk  w2, 3, lsl 16
│       │   0x00189bc4      mov   w1, wzr
│       │   0x00189bc8      bl    fcn.0014d8fc
│       │   0x00189bcc      ldr   x0, [x19, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n" ; int64_t arg1
│       │   0x00189bd0      bl    fcn.001424a4
│       │   0x00189bd4      str   xzr, [x19, 0xac8]
│       └─> 0x00189bd8      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00189bdc      ldp   x29, x30, [sp], 0x20
│           0x00189be0      autibsp
└           0x00189be4      ret
            ; XREFS: CALL 0x0016fdc8  CALL 0x0016fdd4  CALL 0x0016fde0
            ; XREFS: CALL 0x0016fdec  CALL 0x0016ffb8  CALL 0x00186844

==========================================================================================

