┌ fcn.00114a28();
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00114a28      pacibsp
│           0x00114a2c      stp   x29, x30, [var_20h]!
│           0x00114a30      str   x19, [var_10h]
│           0x00114a34      mov   x29, sp
│           0x00114a38      bl    fcn.00115018
│       ┌─< 0x00114a3c      tbz   w0, 0, 0x114a4c
│       │   0x00114a40      adrp  x0, 0x255000
│       │   0x00114a44      add   x0, x0, 0x547
│      ┌──< 0x00114a48      b     0x114aa0
│      │└─> 0x00114a4c      bl    fcn.0017bae4
│      │    0x00114a50      ldr   w8, [x0, 0x68]                       ; aav.0x00000068
│      │                                                               ; [0x68:4]=0xd61f0000
│      │┌─< 0x00114a54      cbz   w8, 0x114a8c
│      ││   0x00114a58      mov   w0, 0x23                             ; '#'
│      ││   0x00114a5c      mov   w1, 1
│      ││   0x00114a60      bl    fcn.0018a2ac
│     ┌───< 0x00114a64      cbz   w0, 0x114a98
│     │││   0x00114a68      mov   w19, w0
│     │││   0x00114a6c      bl    fcn.00104e08
│     │││   0x00114a70      adrp  x0, 0x25d000
│     │││   0x00114a74      adrp  x1, 0x259000
│     │││   0x00114a78      add   x0, x0, 0xd6e                        ; int64_t arg1
│     │││   0x00114a7c      add   x1, x1, 0xc6a                        ; int64_t arg2
│     │││   0x00114a80      mov   w2, w19
│     │││   0x00114a84      bl    fcn.0014c9f8
│    ┌────< 0x00114a88      b     0x114aac
│    │││└─> 0x00114a8c      adrp  x0, 0x255000
│    │││    0x00114a90      add   x0, x0, 0x56e
│    │││┌─< 0x00114a94      b     0x114aa0
│    │└───> 0x00114a98      adrp  x0, 0x240000
│    │ ││   0x00114a9c      add   x0, x0, 0x8a9
│    │ ││   ; CODE XREFS from fcn.00114a28 @ 0x114a48, 0x114a94
│    │ └└─> 0x00114aa0      adrp  x1, 0x259000
│    │      0x00114aa4      add   x1, x1, 0xc6a                        ; int64_t arg2
│    │      0x00114aa8      bl    fcn.0014c9f8
│    │      ; CODE XREF from fcn.00114a28 @ 0x114a88
│    └────> 0x00114aac      bl    fcn.0017bae4
│           0x00114ab0      ldr   w8, [x0, 0x68]                       ; aav.0x00000068
│                                                                      ; [0x68:4]=0xd61f0000
│           0x00114ab4      adrp  x19, 0x5a6000
│           0x00114ab8      add   x19, x19, 0xcc8
│       ┌─< 0x00114abc      cbz   w8, 0x114af4
│       │   0x00114ac0      mov   w0, 0x34
│       │   0x00114ac4      mov   w1, wzr
│       │   0x00114ac8      bl    fcn.0018a2ac
│       │   0x00114acc      adrp  x8, 0x7ca000
│       │   0x00114ad0      adrp  x9, 0x259000
│       │   0x00114ad4      adrp  x10, 0x255000
│       │   0x00114ad8      add   x8, x8, 0x4e4
│       │   0x00114adc      cmp   w0, 0
│       │   0x00114ae0      add   x9, x9, 0xc78
│       │   0x00114ae4      add   x10, x10, 0x58e
│       │   0x00114ae8      csel  x19, x19, x8, eq
│       │   0x00114aec      csel  x0, x10, x9, eq
│      ┌──< 0x00114af0      b     0x114afc
│      │└─> 0x00114af4      adrp  x0, 0x24e000
│      │    0x00114af8      add   x0, x0, 0xda8
│      │    ; CODE XREF from fcn.00114a28 @ 0x114af0
│      └──> 0x00114afc      adrp  x1, str.setct_CertResTBE             ; 0x26a000
│           0x00114b00      mov   w8, 1
│           0x00114b04      add   x1, x1, 0x968                        ; int64_t arg4
│           0x00114b08      str   w8, [x19]
│           0x00114b0c      bl    fcn.0014c9f8
│           0x00114b10      bl    fcn.001a6184
│           0x00114b14      adrp  x0, 0x264000
│           0x00114b18      adrp  x1, 0x275000
│           0x00114b1c      add   x0, x0, 0x9fb                        ; int64_t arg1
│           0x00114b20      add   x1, x1, 0xd3b                        ; int64_t arg2
│           0x00114b24      bl    fcn.0014c9f8
│           0x00114b28      mov   w0, 1
│           0x00114b2c      mov   w1, 4
│           0x00114b30      bl    fcn.00120880
│           0x00114b34      mov   w1, 4
│           0x00114b38      mov   w0, wzr
│           0x00114b3c      bl    fcn.001208b4
│           0x00114b40      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00114b44      ldp   x29, x30, [sp], 0x20
│           0x00114b48      autibsp
└       ┌─< 0x00114b4c      b     fcn.0011fac4
            ; CALL XREF from fcn.00114054 @ 0x11407c
