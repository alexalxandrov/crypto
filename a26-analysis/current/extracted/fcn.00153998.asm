┌ fcn.00153998(unsigned long arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg unsigned long arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_8ch @ stack - 0x8c
│           ; var int64_t var_88h @ stack - 0x88
│           ; var int64_t var_80h @ stack - 0x80
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00153998      pacibsp
│           0x0015399c      sub   sp, sp, 0x90
│           0x001539a0      stp   x29, x30, [var_60h]
│           0x001539a4      stp   x28, x27, [var_50h]
│           0x001539a8      stp   x26, x25, [var_40h]
│           0x001539ac      stp   x24, x23, [var_30h]
│           0x001539b0      stp   x22, x21, [var_20h]
│           0x001539b4      stp   x20, x19, [var_10h]
│           0x001539b8      add   x29, sp, 0x30
│           0x001539bc      cmp   w0, 6                                ; arg1
│       ┌─< 0x001539c0      b.ne  0x154060
│       │   0x001539c4      ldr   x20, [x1, 0x30]                      ; aav.0x00000030
│       │                                                              ; [0x30:4]=0x58000911
│       │   0x001539c8      ldr   x8, [x1, 0x80]                       ; aav.0x00000080
│       │                                                              ; [0x80:4]=0xd53e1000
│       │   0x001539cc      adrp  x9, 0x598000
│       │   0x001539d0      ldr   x21, [x1, 0xa8]                      ; aav.0x000000a8
│       │                                                              ; [0xa8:4]=0xf2c00080
│       │   0x001539d4      ldrb  w12, [x20, 0x62f]                    ; [0x62f:4]=0x1d812990
│       │   0x001539d8      ldrb  w13, [x20, 0x62e]                    ; [0x62e:4]=0x81299000
│       │   0x001539dc      mov   x11, x20
│       │   0x001539e0      ldrb  w14, [x20, 0x62d]                    ; [0x62d:4]=0x29900000
│       │   0x001539e4      ldrb  w15, [x20, 0x62c]                    ; [0x62c:4]=0x90000009
│       │   0x001539e8      str   x8, [x9, 0xa98]
│       │   0x001539ec      mov   x8, x20
│       │   0x001539f0      bfi   w13, w12, 8, 8
│       │   0x001539f4      ldrb  w12, [x11, 0xc]!                     ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x001539f8      ldrb  w10, [x20, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x001539fc      ldrb  w0, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x00153a00      ldr   x23, [x1, 0xd0]                      ; aav.0x000000d0
│       │                                                              ; [0xd0:4]=0xd5380501
│       │   0x00153a04      ldrb  w9, [x20, 9]                         ; [0x9:4]=0x686561
│       │   0x00153a08      bfi   w15, w14, 8, 8
│       │   0x00153a0c      mov   x14, x21
│       │   0x00153a10      bfi   w15, w13, 0x10, 0x10
│       │   0x00153a14      ldrb  w13, [x11, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153a18      ldrb  w11, [x11, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153a1c      bfi   w12, w10, 8, 8
│       │   0x00153a20      ldrb  w24, [x14, 0xc]!                     ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153a24      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153a28      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x00153a2c      mov   x17, x23
│       │   0x00153a30      ldrb  w16, [x23, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x00153a34      bfi   w0, w9, 8, 8
│       │   0x00153a38      ldrb  w9, [x17, 0xc]!                      ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153a3c      bfi   w11, w13, 8, 8
│       │   0x00153a40      bfi   w8, w10, 8, 8
│       │   0x00153a44      ldrb  w10, [x14, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153a48      ldrb  w14, [x14, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153a4c      bfi   w12, w11, 0x10, 0x10
│       │   0x00153a50      ldrb  w11, [x21, 0x833]                    ; [0x833:4]=0x6964206b
│       │   0x00153a54      bfi   w9, w16, 8, 8
│       │   0x00153a58      ldrb  w16, [x17, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153a5c      ldrb  w17, [x17, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153a60      bfi   w14, w10, 8, 8
│       │   0x00153a64      mov   w10, 0x1fff
│       │   0x00153a68      bfi   w0, w8, 0x10, 0x10
│       │   0x00153a6c      stur  w11, [var_10h + 0x8]
│       │   0x00153a70      ldrb  w11, [x21, 0x831]                    ; [0x831:4]=0x206b6365
│       │   0x00153a74      ldrb  w18, [x21, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x00153a78      add   w10, w0, w10
│       │   0x00153a7c      bfi   w17, w16, 8, 8
│       │   0x00153a80      mov   w8, aav.0x00001000
│       │   0x00153a84      cmp   w0, 0
│       │   0x00153a88      and   w10, w10, 0xfffff000
│       │   0x00153a8c      bfi   w9, w17, 0x10, 0x10
│       │   0x00153a90      csel  w8, w8, w10, eq
│       │   0x00153a94      add   w10, w12, 0xfff
│       │   0x00153a98      ldr   x22, [x1, 0x58]                      ; aav.0x00000058
│       │                                                              ; [0x58:4]=0xd51e1000
│       │   0x00153a9c      ldrb  w25, [x21, 0x832]                    ; [0x832:4]=0x64206b63
│       │   0x00153aa0      str   w11, [var_8ch]
│       │   0x00153aa4      ldrb  w26, [x21, 0x830]                    ; [0x830:4]=0x6b636568
│       │   0x00153aa8      cmp   w12, 0
│       │   0x00153aac      add   w11, w9, 0xfff
│       │   0x00153ab0      and   w10, w10, 0xfffff000
│       │   0x00153ab4      bfi   w24, w18, 8, 8
│       │   0x00153ab8      and   w11, w11, 0xfffff000
│       │   0x00153abc      csel  w10, wzr, w10, eq
│       │   0x00153ac0      cmp   w9, 0
│       │   0x00153ac4      add   w8, w8, w15
│       │   0x00153ac8      csel  w28, wzr, w11, eq
│       │   0x00153acc      bfi   w24, w14, 0x10, 0x10
│       │   0x00153ad0      cmp   w28, w9
│       │   0x00153ad4      add   w27, w8, w10
│       │   0x00153ad8      mov   w1, w24
│      ┌──< 0x00153adc      b.hs  0x153b50
│      ││   0x00153ae0      mov   x19, x20
│      ││   0x00153ae4      adrp  x20, 0x23c000
│      ││   0x00153ae8      add   x20, x20, 0xb65
│      ││   0x00153aec      mov   x0, x20                              ; int64_t arg1
│      ││   0x00153af0      bl    fcn.0014c9f8
│      ││   0x00153af4      mov   w0, 2
│      ││   0x00153af8      bl    fcn.0013d500
│      ││   0x00153afc      mov   w1, w0
│      ││   0x00153b00      mov   w0, 0xa
│      ││   0x00153b04      mov   w2, 0xff0000
│      ││   0x00153b08      mov   w3, wzr
│      ││   0x00153b0c      mov   x4, x20                              ; int64_t arg5
│      ││   0x00153b10      mov   x20, x19
│      ││   0x00153b14      bl    fcn.0013deb8
│      ││   0x00153b18      bl    fcn.000f9608
│      ││   0x00153b1c      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153b20      movk  w0, 0x4c, lsl 16
│      ││   0x00153b24      bl    fcn.001b3f80
│      ││   0x00153b28      mov   w0, 0x17
│      ││   0x00153b2c      bl    fcn.0016e1a8
│      ││   0x00153b30      mov   x8, x21
│      ││   0x00153b34      ldrb  w1, [x8, 0xc]!                       ; aav.0x0000000c
│      ││                                                              ; [0xc:4]=0
│      ││   0x00153b38      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│      ││   0x00153b3c      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│      ││   0x00153b40      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│      ││   0x00153b44      bfi   w10, w9, 8, 8
│      ││   0x00153b48      bfi   w1, w8, 8, 8
│      ││   0x00153b4c      bfi   w1, w10, 0x10, 0x10
│      └──> 0x00153b50      adrp  x0, 0x253000
│       │   0x00153b54      add   x0, x0, 0xac9                        ; int64_t arg1
│       │   0x00153b58      bl    fcn.0014c9f8
│       │   0x00153b5c      mov   x8, x20
│       │   0x00153b60      ldrb  w1, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x00153b64      ldrb  w9, [x20, 9]                         ; [0x9:4]=0x686561
│       │   0x00153b68      adrp  x0, 0x24f000
│       │   0x00153b6c      add   x0, x0, 0x2d1                        ; int64_t arg1
│       │   0x00153b70      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153b74      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x00153b78      bfi   w1, w9, 8, 8
│       │   0x00153b7c      bfi   w8, w10, 8, 8
│       │   0x00153b80      bfi   w1, w8, 0x10, 0x10
│       │   0x00153b84      bl    fcn.0014c9f8
│       │   0x00153b88      mov   x19, x20
│       │   0x00153b8c      ldrb  w1, [x19, 0xc]!                      ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153b90      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│       │   0x00153b94      add   x0, x0, 0x989                        ; int64_t arg1
│       │   0x00153b98      ldrb  w8, [x19, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153b9c      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│       │   0x00153ba0      ldrb  w10, [x19, 1]                        ; [0x1:4]=0x6b000000
│       │   0x00153ba4      bfi   w9, w8, 8, 8
│       │   0x00153ba8      bfi   w1, w10, 8, 8
│       │   0x00153bac      bfi   w1, w9, 0x10, 0x10
│       │   0x00153bb0      bl    fcn.0014c9f8
│       │   0x00153bb4      mov   x8, x23
│       │   0x00153bb8      ldrb  w1, [x8, 0xc]!                       ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153bbc      adrp  x0, 0x260000
│       │   0x00153bc0      add   x0, x0, 0xa59                        ; int64_t arg1
│       │   0x00153bc4      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│       │   0x00153bc8      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│       │   0x00153bcc      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│       │   0x00153bd0      bfi   w10, w9, 8, 8
│       │   0x00153bd4      bfi   w1, w8, 8, 8
│       │   0x00153bd8      bfi   w1, w10, 0x10, 0x10
│       │   0x00153bdc      bl    fcn.0014c9f8
│       │   0x00153be0      mov   x8, x21
│       │   0x00153be4      ldrb  w1, [x8, 0x18]!                      ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x00153be8      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│       │   0x00153bec      add   x0, x0, 0xf32                        ; int64_t arg1
│       │   0x00153bf0      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│       │   0x00153bf4      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│       │   0x00153bf8      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│       │   0x00153bfc      bfi   w10, w9, 8, 8
│       │   0x00153c00      bfi   w1, w8, 8, 8
│       │   0x00153c04      bfi   w1, w10, 0x10, 0x10
│       │   0x00153c08      bl    fcn.0014c9f8
│       │   0x00153c0c      ldrb  w8, [x19, 0x623]                     ; [0x623:4]=0x1f03e854
│       │   0x00153c10      ldrb  w9, [x19, 0x622]                     ; [0x622:4]=0x3e854ff
│       │   0x00153c14      ldrb  w10, [x19, 0x621]                    ; [0x621:4]=0xe854ffff
│       │   0x00153c18      ldrb  w11, [x19, 0x620]                    ; [0x620:4]=0x54ffffa1
│       │   0x00153c1c      adrp  x12, 0x55c000
│       │   0x00153c20      ldr   w12, [x12, aav.0x00000d00]           ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│       │   0x00153c24      bfi   x9, x8, 8, 8
│       │   0x00153c28      bfi   x11, x10, 8, 8
│       │   0x00153c2c      bfi   x11, x9, 0x10, 0x10
│       │   0x00153c30      eor   x8, x12, 0x80000000
│       │   0x00153c34      add   x8, x11, x8
│       │   0x00153c38      mov   w9, -0xb800000
│       │   0x00153c3c      mov   w19, w27
│       │   0x00153c40      sub   x8, x9, x8
│       │   0x00153c44      cmp   x8, x19
│      ┌──< 0x00153c48      b.hs  0x153c94
│      ││   0x00153c4c      adrp  x0, 0x245000
│      ││   0x00153c50      add   x0, x0, 0xc67                        ; int64_t arg1
│      ││   0x00153c54      bl    fcn.0014c9f8
│      ││   0x00153c58      mov   w0, 2
│      ││   0x00153c5c      bl    fcn.0013d500
│      ││   0x00153c60      adrp  x4, 0x266000
│      ││   0x00153c64      mov   w1, w0
│      ││   0x00153c68      add   x4, x4, 0xcf3                        ; int64_t arg5
│      ││   0x00153c6c      mov   w0, 0xa
│      ││   0x00153c70      mov   w2, 0xff0000
│      ││   0x00153c74      mov   w3, wzr
│      ││   0x00153c78      bl    fcn.0013deb8
│      ││   0x00153c7c      bl    fcn.000f9608
│      ││   0x00153c80      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153c84      movk  w0, 0x4c, lsl 16
│      ││   0x00153c88      bl    fcn.001b3f80
│      ││   0x00153c8c      mov   w0, 0xc
│      ││   0x00153c90      bl    fcn.0016e1a8
│      └──> 0x00153c94      mov   w8, 1
│       │   0x00153c98      movk  w8, 0x6f70, lsl 16
│       │   0x00153c9c      cmp   w28, w8
│      ┌──< 0x00153ca0      b.lo  0x153cec
│      ││   0x00153ca4      adrp  x0, 0x27c000
│      ││   0x00153ca8      add   x0, x0, 0xd90                        ; int64_t arg1
│      ││   0x00153cac      bl    fcn.0014c9f8
│      ││   0x00153cb0      mov   w0, 2
│      ││   0x00153cb4      bl    fcn.0013d500
│      ││   0x00153cb8      adrp  x4, 0x24c000
│      ││   0x00153cbc      mov   w1, w0
│      ││   0x00153cc0      add   x4, x4, 0x70f                        ; int64_t arg5
│      ││   0x00153cc4      mov   w0, 0xa
│      ││   0x00153cc8      mov   w2, 0xff0000
│      ││   0x00153ccc      mov   w3, wzr
│      ││   0x00153cd0      bl    fcn.0013deb8
│      ││   0x00153cd4      bl    fcn.000f9608
│      ││   0x00153cd8      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153cdc      movk  w0, 0x4c, lsl 16
│      ││   0x00153ce0      bl    fcn.001b3f80
│      ││   0x00153ce4      mov   w0, 0xd
│      ││   0x00153ce8      bl    fcn.0016e1a8
│      └──> 0x00153cec      add   w1, w27, 0x10
│       │   0x00153cf0      add   w27, w27, 0x120
│       │   0x00153cf4      bfi   x27, x19, 0x20, 0x20
│       │   0x00153cf8      mov   x0, x27                              ; int64_t arg1
│       │   0x00153cfc      str   x1, [var_80h + 0x8]
│       │   0x00153d00      bl    fcn.0017e274
│       │   0x00153d04      mov   x11, x21
│       │   0x00153d08      ldrb  w8, [x11, 0x18]!                     ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x00153d0c      ldrb  w9, [x11, -0xc]!                     ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153d10      ldrb  w12, [x11, 0x827]                    ; [0x827:4]=0x5b203a74
│       │   0x00153d14      ldrb  w13, [x11, 0x826]                    ; [0x826:4]=0x203a746f
│       │   0x00153d18      ldrb  w14, [x11, 0x825]                    ; [0x825:4]=0x3a746f6f
│       │   0x00153d1c      ldrb  w10, [x11, 0x824]                    ; [0x824:4]=0x746f6f42
│       │   0x00153d20      ldrb  w15, [x11, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153d24      ldrb  w16, [x11, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153d28      ldrb  w17, [x11, 1]                        ; [0x1:4]=0x6b000000
│       │   0x00153d2c      bfi   x13, x12, 8, 8
│       │   0x00153d30      ldrb  w12, [x11, 0xf]                      ; [0xf:4]=0x400 aav.0x00000400
│       │   0x00153d34      bfi   x10, x14, 8, 8
│       │   0x00153d38      ldrb  w14, [x11, 0xe]                      ; [0xe:4]=0x40000 aav.0x00040000
│       │   0x00153d3c      ldrb  w11, [x11, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x00153d40      bfi   x16, x15, 8, 8
│       │   0x00153d44      bfi   x9, x17, 8, 8
│       │   0x00153d48      bfi   x14, x12, 8, 8
│       │   0x00153d4c      bfi   x8, x11, 8, 8
│       │   0x00153d50      bfi   x9, x16, 0x10, 0x10
│       │   0x00153d54      bfi   x10, x13, 0x10, 0x10
│       │   0x00153d58      bfi   x8, x14, 0x10, 0x10
│       │   0x00153d5c      sub   x11, x9, 1
│       │   0x00153d60      add   x12, x11, x10
│       │   0x00153d64      add   x11, x11, x8
│       │   0x00153d68      udiv  x13, x12, x9
│       │   0x00153d6c      udiv  x14, x11, x9
│       │   0x00153d70      msub  x13, x13, x9, x12
│       │   0x00153d74      msub  x14, x14, x9, x11
│       │   0x00153d78      add   x13, x13, x14
│       │   0x00153d7c      sub   x12, x12, x13
│       │   0x00153d80      add   x11, x12, x11
│       │   0x00153d84      stp   x11, x27, [var_88h]
│      ┌──< 0x00153d88      cbz   x22, 0x153e38
│      ││   0x00153d8c      mov   x10, x20
│      ││   0x00153d90      mov   x8, x20
│      ││   0x00153d94      ldrb  w11, [x10, 0x14]!                    ; aav.0x00000014
│      ││                                                              ; [0x14:4]=0
│      ││   0x00153d98      ldrb  w2, [x8, 8]!                         ; aav.0x00000008
│      ││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      ││   0x00153d9c      ldrb  w12, [x20, 0x15]                     ; [0x15:4]=0
│      ││   0x00153da0      ldrb  w9, [x20, 9]                         ; [0x9:4]=0x686561
│      ││   0x00153da4      ldrb  w14, [x10, 3]                        ; [0x3:4]=0x48776b00
│      ││   0x00153da8      ldrb  w10, [x10, 2]                        ; [0x2:4]=0x776b0000
│      ││   0x00153dac      ldrb  w13, [x8, 3]                         ; [0x3:4]=0x48776b00
│      ││   0x00153db0      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│      ││   0x00153db4      bfi   w11, w12, 8, 8
│      ││   0x00153db8      bfi   w10, w14, 8, 8
│      ││   0x00153dbc      bfi   x2, x9, 8, 8
│      ││   0x00153dc0      bfi   x8, x13, 8, 8
│      ││   0x00153dc4      bfi   w11, w10, 0x10, 0x10
│      ││   0x00153dc8      bfi   x2, x8, 0x10, 0x10                   ; int64_t arg3
│      ││   0x00153dcc      add   w8, w11, 0xfff
│      ││   0x00153dd0      and   w8, w8, 0xfffff000
│      ││   0x00153dd4      add   x1, x20, w8, sxtw                    ; int64_t arg2
│      ││   0x00153dd8      mov   x0, x22                              ; int64_t arg1
│      ││   0x00153ddc      bl    fcn.0014d60c
│      ││   0x00153de0      mov   x11, x21
│      ││   0x00153de4      ldrb  w8, [x11, 0x18]!                     ; aav.0x00000018
│      ││                                                              ; [0x18:4]=0x7600000
│      ││   0x00153de8      ldrb  w9, [x11, -0xc]!                     ; aav.0x0000000c
│      ││                                                              ; [0xc:4]=0
│      ││   0x00153dec      ldrb  w12, [x11, 0x827]                    ; [0x827:4]=0x5b203a74
│      ││   0x00153df0      ldrb  w13, [x11, 0x826]                    ; [0x826:4]=0x203a746f
│      ││   0x00153df4      ldrb  w14, [x11, 0x825]                    ; [0x825:4]=0x3a746f6f
│      ││   0x00153df8      ldrb  w10, [x11, 0x824]                    ; [0x824:4]=0x746f6f42
│      ││   0x00153dfc      ldrb  w15, [x11, 3]                        ; [0x3:4]=0x48776b00
│      ││   0x00153e00      ldrb  w16, [x11, 2]                        ; [0x2:4]=0x776b0000
│      ││   0x00153e04      ldrb  w17, [x11, 1]                        ; [0x1:4]=0x6b000000
│      ││   0x00153e08      bfi   w13, w12, 8, 8
│      ││   0x00153e0c      ldrb  w12, [x11, 0xf]                      ; [0xf:4]=0x400 aav.0x00000400
│      ││   0x00153e10      bfi   w10, w14, 8, 8
│      ││   0x00153e14      ldrb  w14, [x11, 0xe]                      ; [0xe:4]=0x40000 aav.0x00040000
│      ││   0x00153e18      ldrb  w11, [x11, 0xd]                      ; [0xd:4]=0x4000000
│      ││   0x00153e1c      bfi   w16, w15, 8, 8
│      ││   0x00153e20      bfi   w9, w17, 8, 8
│      ││   0x00153e24      bfi   w14, w12, 8, 8
│      ││   0x00153e28      bfi   w8, w11, 8, 8
│      ││   0x00153e2c      bfi   w10, w13, 0x10, 0x10
│      ││   0x00153e30      bfi   w9, w16, 0x10, 0x10
│      ││   0x00153e34      bfi   w8, w14, 0x10, 0x10
│      └──> 0x00153e38      adrp  x27, 0x598000
│       │   0x00153e3c      ldr   x22, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│       │   0x00153e40      stur  x20, [var_10h]
│      ┌──< 0x00153e44      cbz   x22, 0x154078
│      ││   0x00153e48      ldrb  w11, [x21, 0x847]                    ; [0x847:4]=0x63637573
│      ││   0x00153e4c      ldrb  w12, [x21, 0x846]                    ; [0x846:4]=0x63757320
│      ││   0x00153e50      ldrb  w13, [x21, 0x845]                    ; [0x845:4]=0x75732065
│      ││   0x00153e54      ldrb  w14, [x21, 0x844]                    ; [0x844:4]=0x73206572
│      ││   0x00153e58      bfi   w12, w11, 8, 8
│      ││   0x00153e5c      bfi   w14, w13, 8, 8
│      ││   0x00153e60      bfi   w14, w12, 0x10, 0x10
│     ┌───< 0x00153e64      cbz   w14, 0x154078
│     │││   0x00153e68      ldur  w11, [var_10h + 0x8]
│     │││   0x00153e6c      sub   w12, w9, 1
│     │││   0x00153e70      neg   w9, w9
│     │││   0x00153e74      add   w10, w12, w10
│     │││   0x00153e78      add   w8, w8, w12
│     │││   0x00153e7c      and   w10, w10, w9
│     │││   0x00153e80      and   w8, w8, w9
│     │││   0x00153e84      bfi   w25, w11, 8, 8
│     │││   0x00153e88      ldr   w11, [var_8ch]                       ; str.kwH_daeh
│     │││                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│     │││   0x00153e8c      ldrb  w13, [x21, 0x837]                    ; [0x837:4]=0x61746967
│     │││   0x00153e90      ldrb  w14, [x21, 0x836]                    ; [0x836:4]=0x74696769
│     │││   0x00153e94      ldrb  w16, [x21, 0x835]                    ; [0x835:4]=0x69676964
│     │││   0x00153e98      add   x8, x10, x8
│     │││   0x00153e9c      ldrb  w10, [x21, 0x834]                    ; [0x834:4]=0x67696420
│     │││   0x00153ea0      bfi   w26, w11, 8, 8
│     │││   0x00153ea4      bfi   w14, w13, 8, 8
│     │││   0x00153ea8      bfi   w26, w25, 0x10, 0x10
│     │││   0x00153eac      bfi   w10, w16, 8, 8
│     │││   0x00153eb0      bfi   w10, w14, 0x10, 0x10
│     │││   0x00153eb4      add   w15, w26, w24
│     │││   0x00153eb8      add   w10, w10, w12
│     │││   0x00153ebc      neg   w11, w24
│     │││   0x00153ec0      sub   w15, w15, 1
│     │││   0x00153ec4      and   w9, w10, w9
│     │││   0x00153ec8      and   w11, w15, w11
│     │││   0x00153ecc      mov   w13, -0x54000000
│     │││   0x00153ed0      mov   w15, -0x54000000
│     │││   0x00153ed4      adrp  x22, 0x253000
│     │││   0x00153ed8      adrp  x19, 0x28a000
│     │││   0x00153edc      add   x8, x8, x9
│     │││   0x00153ee0      mov   x20, xzr
│     │││   0x00153ee4      add   x22, x22, 0xb00
│     │││   0x00153ee8      add   x11, x11, x15
│     │││   0x00153eec      add   x19, x19, 0xc28
│     │││   0x00153ef0      add   x24, x8, x13
│     │││   0x00153ef4      stur  x11, [var_10h + 0x8]
│    ┌────< 0x00153ef8      b     0x153ff0
     ││││   ; STRING XREF from fcn.00153998 @ 0x154018
..
│    ││││   ; CODE XREFS from fcn.00153998 @ +0x6a8, +0x6c4
│    ││││   0x00153fc4      ldrb  w8, [x21, 0x847]                     ; [0x847:4]=0x63637573
│    ││││   0x00153fc8      ldrb  w9, [x21, 0x846]                     ; [0x846:4]=0x63757320
│    ││││   0x00153fcc      ldrb  w10, [x21, 0x845]                    ; [0x845:4]=0x75732065
│    ││││   0x00153fd0      ldrb  w11, [x21, 0x844]                    ; [0x844:4]=0x73206572
│    ││││   0x00153fd4      add   x20, x20, 1
│    ││││   0x00153fd8      bfi   x9, x8, 8, 8
│    ││││   0x00153fdc      add   x24, x24, 0x6c
│    ││││   0x00153fe0      bfi   x11, x10, 8, 8
│    ││││   0x00153fe4      bfi   x11, x9, 0x10, 0x10
│    ││││   0x00153fe8      cmp   x20, x11
│    ││││   0x00153fec      b.hs  0x154074
│    ││││   ; CODE XREF from fcn.00153998 @ 0x153ef8
│    └────> 0x00153ff0      mov   x9, x24
│     │││   0x00153ff4      ldrb  w8, [x9, 8]!                         ; aav.0x00000008
│     │││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│     │││   0x00153ff8      ldrb  w10, [x9, 3]                         ; [0x3:4]=0x48776b00
│     │││   0x00153ffc      ldrb  w11, [x9, 2]                         ; [0x2:4]=0x776b0000
│     │││   0x00154000      ldrb  w9, [x9, 1]                          ; [0x1:4]=0x6b000000
│     │││   0x00154004      bfi   x11, x10, 8, 8
│     │││   0x00154008      bfi   x8, x9, 8, 8
│     │││   0x0015400c      bfi   x8, x11, 0x10, 0x10
│     │││   0x00154010      cmp   w8, 3
│     │││   0x00154014      b.hi  0x153fc4
│     │││   0x00154018      adr   x9, 0x153efc
│     │││   0x0015401c      ldrb  w10, [x19, x8]
│     │││   0x00154020      add   x9, x9, x10, lsl 2
│     │││   0x00154024      mov   x0, x22
│     │││   0x00154028      br    x9
..
│     ││└─> 0x00154060      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│     ││    0x00154064      add   x0, x0, 0xecd                        ; int64_t arg1
│     ││    0x00154068      bl    fcn.0014c9f8
│     ││    0x0015406c      mov   w0, -1
│     ││    0x00154070      b     0x154234
│     ││    0x00154074      ldr   x22, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│     └└──> 0x00154078      ldrb  w8, [x23, 0x14]!                     ; aav.0x00000014
│                                                                      ; [0x14:4]=0
│           0x0015407c      mov   x0, x22                              ; int64_t arg1
│           0x00154080      ldrb  w9, [x23, -0xc]!                     ; aav.0x0000000c
│                                                                      ; [0xc:4]=0
│           0x00154084      ldrb  w25, [x23, 4]!                       ; str.kwH_daeh
│                                                                      ; [0x4:4]=0x2148776b ; "kwH!daeh"
│           0x00154088      ldrb  w10, [x23, 0xb]                      ; [0xb:4]=104
│           0x0015408c      ldrb  w11, [x23, 0xa]                      ; [0xa:4]=0x6865
│           0x00154090      ldrb  w12, [x23, 9]                        ; [0x9:4]=0x686561
│           0x00154094      ldurb w13, [x23, -1]                       ; [0x1:4]=0x6b000000
│           0x00154098      ldurb w14, [x23, -2]                       ; [0x2:4]=0x776b0000
│           0x0015409c      ldurb w15, [x23, -3]                       ; [0x3:4]=0x48776b00
│           0x001540a0      ldrb  w16, [x23, 3]                        ; [0x3:4]=0x48776b00
│           0x001540a4      bfi   w11, w10, 8, 8
│           0x001540a8      ldrb  w10, [x23, 2]                        ; [0x2:4]=0x776b0000
│           0x001540ac      bfi   w8, w12, 8, 8
│           0x001540b0      ldrb  w12, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x001540b4      bfi   w14, w13, 8, 8
│           0x001540b8      bfi   w9, w15, 8, 8
│           0x001540bc      bfi   w8, w11, 0x10, 0x10
│           0x001540c0      bfi   w9, w14, 0x10, 0x10
│           0x001540c4      add   w8, w8, 0xfff
│           0x001540c8      add   w9, w9, 0xfff
│           0x001540cc      and   w8, w8, 0xfffff000
│           0x001540d0      and   w9, w9, 0xfffff000
│           0x001540d4      bfi   w10, w16, 8, 8
│           0x001540d8      bfi   w25, w12, 8, 8
│           0x001540dc      add   w8, w9, w8
│           0x001540e0      mov   w9, -0x74000000
│           0x001540e4      bfi   w25, w10, 0x10, 0x10
│           0x001540e8      add   x26, x8, x9
│           0x001540ec      mov   x1, x26                              ; int64_t arg2
│           0x001540f0      mov   x2, x25                              ; int64_t arg3
│           0x001540f4      bl    fcn.0014d60c
│           0x001540f8      adrp  x20, 0x23a000
│           0x001540fc      adrp  x24, 0x26d000
│           0x00154100      add   x20, x20, 0xac0
│           0x00154104      add   x24, x24, aav.0x0000010c
│           0x00154108      mov   x0, x20                              ; int64_t arg1
│           0x0015410c      mov   x1, x24                              ; int64_t arg2
│           0x00154110      mov   x2, x26                              ; unsigned long arg3
│           0x00154114      mov   x3, x22                              ; int64_t arg4
│           0x00154118      mov   w4, w25
│           0x0015411c      bl    fcn.0014c9f8
│           0x00154120      ldrb  w8, [x23, 3]                         ; [0x3:4]=0x48776b00
│           0x00154124      ldrb  w9, [x23, 2]                         ; [0x2:4]=0x776b0000
│           0x00154128      ldrb  w10, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x0015412c      ldrb  w11, [x23]
│           0x00154130      ldur  x23, [var_10h]
│           0x00154134      bfi   x9, x8, 8, 8
│           0x00154138      ldr   x12, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│           0x0015413c      bfi   x11, x10, 8, 8
│           0x00154140      mov   x14, x23
│           0x00154144      mov   x16, x23
│           0x00154148      ldrb  w13, [x23, 0x15]                     ; [0x15:4]=0
│           0x0015414c      ldrb  w18, [x14, 0x14]!                    ; aav.0x00000014
│                                                                      ; [0x14:4]=0
│           0x00154150      ldrb  w8, [x16, 8]!                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x00154154      mov   x19, x23
│           0x00154158      ldrb  w15, [x23, 9]                        ; [0x9:4]=0x686561
│           0x0015415c      ldrb  w22, [x19, 0xc]!                     ; aav.0x0000000c
│                                                                      ; [0xc:4]=0
│           0x00154160      bfi   x11, x9, 0x10, 0x10
│           0x00154164      bfi   w18, w13, 8, 8
│           0x00154168      ldrb  w9, [x14, 3]                         ; [0x3:4]=0x48776b00
│           0x0015416c      ldrb  w10, [x14, 2]                        ; [0x2:4]=0x776b0000
│           0x00154170      ldrb  w13, [x16, 3]                        ; [0x3:4]=0x48776b00
│           0x00154174      ldrb  w14, [x16, 2]                        ; [0x2:4]=0x776b0000
│           0x00154178      ldrb  w17, [x23, 0xd]                      ; [0xd:4]=0x4000000
│           0x0015417c      bfi   w8, w15, 8, 8
│           0x00154180      ldrb  w15, [x19, 3]                        ; [0x3:4]=0x48776b00
│           0x00154184      ldrb  w16, [x19, 2]                        ; [0x2:4]=0x776b0000
│           0x00154188      bfi   w10, w9, 8, 8
│           0x0015418c      bfi   w14, w13, 8, 8
│           0x00154190      bfi   w18, w10, 0x10, 0x10
│           0x00154194      bfi   w8, w14, 0x10, 0x10
│           0x00154198      add   w9, w18, 0xfff
│           0x0015419c      add   w8, w8, 0xfff
│           0x001541a0      and   w9, w9, 0xfffff000
│           0x001541a4      and   w8, w8, 0xfffff000
│           0x001541a8      bfi   w22, w17, 8, 8
│           0x001541ac      bfi   w16, w15, 8, 8
│           0x001541b0      add   w8, w8, w9
│           0x001541b4      mov   w9, -0x5c000000
│           0x001541b8      add   x25, x12, x11
│           0x001541bc      bfi   w22, w16, 0x10, 0x10
│           0x001541c0      add   x26, x8, x9
│           0x001541c4      mov   x0, x25                              ; int64_t arg1
│           0x001541c8      mov   x1, x26                              ; int64_t arg2
│           0x001541cc      mov   x2, x22                              ; int64_t arg3
│           0x001541d0      str   x25, [x27, 0xa98]
│           0x001541d4      bl    fcn.0014d60c
│           0x001541d8      mov   x0, x20                              ; int64_t arg1
│           0x001541dc      mov   x1, x24                              ; int64_t arg2
│           0x001541e0      mov   x2, x26                              ; unsigned long arg3
│           0x001541e4      mov   x3, x25                              ; int64_t arg4
│           0x001541e8      mov   w4, w22
│           0x001541ec      bl    fcn.0014c9f8
│           0x001541f0      ldrb  w8, [x19, 3]                         ; [0x3:4]=0x48776b00
│           0x001541f4      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│           0x001541f8      ldrb  w10, [x23, 0xd]                      ; [0xd:4]=0x4000000
│           0x001541fc      ldrb  w11, [x19]
│           0x00154200      ldr   x12, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│           0x00154204      bfi   x9, x8, 8, 8
│           0x00154208      bfi   x11, x10, 8, 8
│           0x0015420c      bfi   x11, x9, 0x10, 0x10
│           0x00154210      add   x8, x12, x11
│           0x00154214      str   x8, [x27, 0xa98]
│           0x00154218      ldr   x8, [var_88h]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x0015421c      add   x0, x21, w8, sxtw                    ; int64_t arg1
│           0x00154220      bl    fcn.00170a18
│           0x00154224      ldp   x1, x2, [var_80h]
│           0x00154228      mov   x0, x23                              ; int64_t arg1
│           0x0015422c      bl    fcn.0017e384
│           0x00154230      mov   w0, wzr
│           ; CODE XREF from fcn.00153998 @ 0x154070
│           0x00154234      ldp   x20, x19, [var_10h]
│           0x00154238      ldp   x22, x21, [var_20h]
│           0x0015423c      ldp   x24, x23, [var_30h]
│           0x00154240      ldp   x26, x25, [var_40h]
│           0x00154244      ldp   x28, x27, [var_50h]
│           0x00154248      ldp   x29, x30, [var_60h]
│           0x0015424c      add   sp, sp, 0x90
│           0x00154250      autibsp
└           0x00154254      ret
            ; CALL XREFS from fcn.00153998 @ +0x6a0, +0x6b0
