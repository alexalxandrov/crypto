┌ fcn.001558e4(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; var int64_t var_440h @ stack - 0x440
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001558e4      pacibsp
│           0x001558e8      stp   x29, x30, [var_40h]!
│           0x001558ec      str   x28, [var_30h]
│           0x001558f0      stp   x22, x21, [var_20h]
│           0x001558f4      stp   x20, x19, [var_10h]
│           0x001558f8      mov   x29, sp
│           0x001558fc      sub   sp, sp, aav.0x00000400
│       ┌─< 0x00155900      cbz   w1, 0x155c98
│       │   0x00155904      adrp  x22, 0x599000
│       │   0x00155908      ldr   w8, [x22, 0xf0c]                     ; [0xf0c:4]=0x3650006b
│       │   0x0015590c      mov   w20, w1                              ; arg2
│       │   0x00155910      mov   x19, x0                              ; arg1
│      ┌──< 0x00155914      cbz   w8, 0x155978
│      ││   0x00155918      adrp  x8, 0x599000
│      ││   0x0015591c      ldr   w8, [x8, 0xee0]                      ; [0xee0:4]=0x540000a2
│     ┌───< 0x00155920      cbz   w8, 0x155ac8
│     │││   0x00155924      adrp  x10, 0x599000
│     │││   0x00155928      adrp  x8, 0x599000
│     │││   0x0015592c      ldr   x11, [x10, 0xed0]                    ; [0xed0:4]=0xb9407eac
│     │││   0x00155930      ldr   w9, [x8, 0xf04]                      ; [0xf04:4]=0x371004eb
│     │││   0x00155934      mov   w19, w20
│     │││   0x00155938      add   x8, x11, x19
│     │││   0x0015593c      cmp   w9, 0x65                             ; 'e'
│     │││   0x00155940      str   x8, [x10, 0xed0]
│    ┌────< 0x00155944      b.eq  0x155c18
│    ││││   0x00155948      cmp   w9, 0x66                             ; 'f'
│   ┌─────< 0x0015594c      b.ne  0x155b60
│   │││││   0x00155950      adrp  x9, 0x599000
│   │││││   0x00155954      ldr   w10, [x9, 0xf08]                     ; [0xf08:4]=0xb940010b
│   │││││   0x00155958      adrp  x9, 0x599000
│   │││││   0x0015595c      ldr   x9, [x9, 0xed8]                      ; [0xed8:4]=0x540000a8
│   │││││   0x00155960      and   w10, w10, 0xfffffffb
│   │││││   0x00155964      cmp   w10, 2
│  ┌──────< 0x00155968      b.ne  0x155b78
│  ││││││   0x0015596c      cmp   x8, x9
│ ┌───────< 0x00155970      b.hs  0x155c18
│ ────────< 0x00155974      b     0x155b78
│ │││││└──> 0x00155978      adrp  x8, 0x2ca000
│ │││││ │   0x0015597c      ldr   x21, [x8, 0xde8]                     ; [0xde8:4]=0x203a746f
│ │││││ │   0x00155980      mov   x0, x21                              ; int64_t arg1
│ │││││ │   0x00155984      bl    fcn.0014db58
│ │││││ │   0x00155988      mov   x2, x0
│ │││││ │   0x0015598c      mov   x0, x19                              ; int64_t arg1
│ │││││ │   0x00155990      mov   x1, x21                              ; int64_t arg2
│ │││││ │   0x00155994      bl    fcn.0014dbd8
│ │││││┌──< 0x00155998      cbz   w0, 0x155b38
│ │││││││   0x0015599c      adrp  x8, 0x2ca000
│ │││││││   0x001559a0      ldr   x21, [x8, 0xdf8]                     ; [0xdf8:4]=0x6f206575
│ │││││││   0x001559a4      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001559a8      bl    fcn.0014db58
│ │││││││   0x001559ac      mov   x2, x0
│ │││││││   0x001559b0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x001559b4      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001559b8      bl    fcn.0014dbd8
│ ────────< 0x001559bc      cbz   w0, 0x155cd8
│ │││││││   0x001559c0      adrp  x8, 0x2ca000
│ │││││││   0x001559c4      ldr   x21, [x8, aav.0x00000e00]            ; [0xe00:4]=0x20656761 ; "age = 0x%x\r\n"
│ │││││││   0x001559c8      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001559cc      bl    fcn.0014db58
│ │││││││   0x001559d0      mov   x2, x0
│ │││││││   0x001559d4      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x001559d8      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001559dc      bl    fcn.0014dbd8
│ ────────< 0x001559e0      cbz   w0, 0x155d04
│ │││││││   0x001559e4      adrp  x1, 0x27c000
│ │││││││   0x001559e8      add   x1, x1, 0xdf9                        ; int64_t arg2
│ │││││││   0x001559ec      mov   w2, 3
│ │││││││   0x001559f0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x001559f4      bl    fcn.0014dbd8
│ ────────< 0x001559f8      cbz   w0, 0x155d7c
│ │││││││   0x001559fc      adrp  x8, 0x2ca000
│ │││││││   0x00155a00      ldr   x21, [x8, 0xe08]                     ; [0xe08:4]=0xa0d7825
│ │││││││   0x00155a04      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00155a08      bl    fcn.0014db58
│ │││││││   0x00155a0c      mov   x2, x0
│ │││││││   0x00155a10      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x00155a14      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00155a18      bl    fcn.0014dbd8
│ ────────< 0x00155a1c      cbz   w0, 0x155e04
│ │││││││   0x00155a20      adrp  x8, 0x2ca000
│ │││││││   0x00155a24      ldr   x20, [x8, 0xe10]                     ; [0xe10:4]=0x65727563
│ │││││││   0x00155a28      mov   x0, x20                              ; int64_t arg1
│ │││││││   0x00155a2c      bl    fcn.0014db58
│ │││││││   0x00155a30      mov   x2, x0
│ │││││││   0x00155a34      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x00155a38      mov   x1, x20                              ; int64_t arg2
│ │││││││   0x00155a3c      bl    fcn.0014dbd8
│ ────────< 0x00155a40      cbz   w0, 0x155e9c
│ │││││││   0x00155a44      adrp  x8, 0x2ca000
│ │││││││   0x00155a48      ldr   x20, [x8, 0xe18]                     ; [0xe18:4]=0x6168203a
│ │││││││   0x00155a4c      mov   x0, x20                              ; int64_t arg1
│ │││││││   0x00155a50      bl    fcn.0014db58
│ │││││││   0x00155a54      mov   x2, x0
│ │││││││   0x00155a58      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x00155a5c      mov   x1, x20                              ; int64_t arg2
│ │││││││   0x00155a60      bl    fcn.0014dbd8
│ ────────< 0x00155a64      cbz   w0, 0x155ec8
│ │││││││   0x00155a68      adrp  x8, 0x2ca000
│ │││││││   0x00155a6c      ldr   x20, [x8, 0xdf0]                     ; [0xdf0:4]=0x43524320
│ │││││││   0x00155a70      mov   x0, x20                              ; int64_t arg1
│ │││││││   0x00155a74      bl    fcn.0014db58
│ │││││││   0x00155a78      mov   x2, x0
│ │││││││   0x00155a7c      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x00155a80      mov   x1, x20                              ; int64_t arg2
│ │││││││   0x00155a84      bl    fcn.0014dbd8
│ ────────< 0x00155a88      cbz   w0, 0x155f10
│ │││││││   0x00155a8c      adrp  x1, 0x23a000
│ │││││││   0x00155a90      add   x1, x1, 0xb4d                        ; int64_t arg2
│ │││││││   0x00155a94      mov   w2, 4
│ │││││││   0x00155a98      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x00155a9c      bl    fcn.0014dbd8
│ ────────< 0x00155aa0      cbz   w0, 0x155f24
│ │││││││   0x00155aa4      adrp  x1, 0x26f000
│ │││││││   0x00155aa8      add   x1, x1, 0xa07                        ; int64_t arg2
│ │││││││   0x00155aac      mov   w2, 6
│ │││││││   0x00155ab0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x00155ab4      bl    fcn.0014dbd8
│ ────────< 0x00155ab8      cbz   w0, 0x155fe4
│ │││││││   0x00155abc      mov   w0, wzr
│ │││││││   0x00155ac0      str   wzr, [x22, 0xf0c]
│ ────────< 0x00155ac4      b     0x155c9c
│ ││││└───> 0x00155ac8      adrp  x21, 0x599000
│ ││││ ││   0x00155acc      ldr   w8, [x21, aav.0x00000f00]            ; [0xf00:4]=0xb40001d3
│ ││││ ││   0x00155ad0      add   w8, w8, w20
│ ││││ ││   0x00155ad4      cmp   w8, aav.0x00000400
│ ││││ ││   0x00155ad8      str   w8, [x21, aav.0x00000f00]
│ ││││┌───< 0x00155adc      b.lt  0x155c88
│ │││││││   0x00155ae0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x00155ae4      bl    fcn.001b0784
│ │││││││   0x00155ae8      mov   x0, sp                               ; int64_t arg1
│ │││││││   0x00155aec      mov   w2, aav.0x00000400
│ │││││││   0x00155af0      mov   x1, x19                              ; int64_t arg2
│ │││││││   0x00155af4      str   wzr, [x21, aav.0x00000f00]
│ │││││││   0x00155af8      bl    fcn.0014d60c
│ │││││││   0x00155afc      ldp   w9, w8, [sp]
│ │││││││   0x00155b00      mov   w0, wzr
│ │││││││   0x00155b04      adrp  x10, 0x599000
│ │││││││   0x00155b08      adrp  x11, 0x599000
│ │││││││   0x00155b0c      cmp   w9, 0x67                             ; 'g'
│ │││││││   0x00155b10      str   w9, [x10, 0xf04]
│ │││││││   0x00155b14      str   w8, [x11, 0xf08]
│ ────────< 0x00155b18      b.ne  0x155c9c
│ │││││││   0x00155b1c      cmp   w8, 4
│ ────────< 0x00155b20      b.ne  0x155c9c
│ │││││││   0x00155b24      adrp  x8, 0x599000
│ │││││││   0x00155b28      mov   w0, wzr
│ │││││││   0x00155b2c      str   xzr, [x8, 0xf10]
│ │││││││   0x00155b30      str   wzr, [x22, 0xf0c]
│ ────────< 0x00155b34      b     0x155cbc
│ │││││└──> 0x00155b38      mov   w8, 1
│ │││││ │   0x00155b3c      adrp  x19, 0x2ca000
│ │││││ │   0x00155b40      str   w8, [x22, 0xf0c]
│ │││││ │   0x00155b44      add   x19, x19, 0xdd9
│ │││││ │   ; CODE XREFS from fcn.001558e4 @ 0x155d30, 0x155eac, 0x155f20, 0x155f2c
│ ─────┌──> 0x00155b48      mov   x0, x19                              ; int64_t arg1
│ │││││╎│   0x00155b4c      bl    fcn.0014db58
│ │││││╎│   0x00155b50      mov   x1, x0
│ │││││╎│   0x00155b54      mov   x0, x19
│ │││││╎│   ; CODE XREFS from fcn.001558e4 @ 0x155d78, 0x155f0c, 0x15602c
│ ────────> 0x00155b58      bl    fcn.001010ec
│ ────────< 0x00155b5c      b     0x155c98
│ ││└─────> 0x00155b60      adrp  x9, 0x599000
│ ││ ││╎│   0x00155b64      ldr   x9, [x9, 0xec8]                      ; [0xec8:4]=0x910103ff
│ ││ ││╎│   0x00155b68      cmp   x8, x9
│ ││┌─────< 0x00155b6c      b.hs  0x155c18
│ │││││╎│   0x00155b70      adrp  x9, 0x599000
│ │││││╎│   0x00155b74      ldr   x9, [x9, 0xed8]                      ; [0xed8:4]=0x540000a8
│ │││││╎│   ; CODE XREF from fcn.001558e4 @ 0x155974
│ ─└──────> 0x00155b78      adrp  x21, 0x2e3000
│ │ │││╎│   0x00155b7c      ldr   x10, [x21, 0x328]                    ; [0x20000:4]=0x52823f02 ; aav.0x00020000
│ │ │││╎│   0x00155b80      sub   x20, x9, x8
│ │ │││╎│   0x00155b84      udiv  x11, x8, x10
│ │ │││╎│   0x00155b88      msub  x11, x11, x10, x8
│ │┌──────< 0x00155b8c      cbnz  x11, 0x155be4
│ │││││╎│   0x00155b90      adrp  x8, 0x599000
│ │││││╎│   0x00155b94      add   x8, x8, 0xee4
│ │││││╎│   0x00155b98      ldr   w9, [x8]
│ │││││╎│   0x00155b9c      ldur  x0, [x8, 0xc]                        ; aav.0x0000000c
│ │││││╎│                                                              ; [0xc:4]=0 ; int64_t arg1
│ │││││╎│   0x00155ba0      mov   w1, 8
│ │││││╎│   0x00155ba4      add   w10, w9, 1
│ │││││╎│   0x00155ba8      str   w10, [x8]
│ │││││╎│   0x00155bac      mov   x8, x0
│ │││││╎│   0x00155bb0      lsr   w10, w9, 0x18
│ │││││╎│   0x00155bb4      strb  w9, [x8, 4]!
│ │││││╎│   0x00155bb8      strb  w10, [x8, 3]
│ │││││╎│   0x00155bbc      lsr   w10, w9, 0x10
│ │││││╎│   0x00155bc0      lsr   w9, w9, 8
│ │││││╎│   0x00155bc4      strb  wzr, [x0, 3]
│ │││││╎│   0x00155bc8      strb  wzr, [x0, 2]
│ │││││╎│   0x00155bcc      strb  wzr, [x0, 1]
│ │││││╎│   0x00155bd0      strb  wzr, [x0]
│ │││││╎│   0x00155bd4      strb  w10, [x8, 2]
│ │││││╎│   0x00155bd8      strb  w9, [x0, 5]
│ │││││╎│   0x00155bdc      bl    fcn.001010ec
│ │││││╎│   0x00155be0      ldr   x10, [x21, 0x328]                    ; [0x20000:4]=0x52823f02 ; aav.0x00020000
│ │└──────> 0x00155be4      adrp  x9, 0x599000
│ │ │││╎│   0x00155be8      ldr   x8, [x9, 0xf10]                      ; [0xf10:4]=0x5280800b
│ │ │││╎│   0x00155bec      cmp   x20, x10
│ │ │││╎│   0x00155bf0      csel  x10, x10, x20, hi
│ │ │││╎│   0x00155bf4      lsr   x11, x10, 0x18
│ │ │││╎│   0x00155bf8      add   x8, x8, x19
│ │ │││╎│   0x00155bfc      mov   w0, wzr                              ; arg1
│ │ │││╎│   0x00155c00      str   x8, [x9, 0xf10]
│ │┌──────< 0x00155c04      cbnz  x11, 0x155ca4
│ │││││╎│   0x00155c08      str   x8, [x9, 0xf10]
│ │││││╎│   0x00155c0c      adrp  x9, 0x599000
│ │││││╎│   0x00155c10      str   w10, [x9, 0xf18]
│ ────────< 0x00155c14      b     0x155ca4
│ └─└└────> 0x00155c18      adrp  x19, 0x599000
│  │  │╎│   0x00155c1c      add   x19, x19, 0xec8
│  │  │╎│   0x00155c20      ldr   w8, [x19, 0x1c]                      ; aav.0x0000001c
│  │  │╎│                                                              ; [0x1c:4]=0
│  │  │╎│   0x00155c24      ldr   x0, [x19, 0x28]                      ; aav.0x00000028
│  │  │╎│                                                              ; [0x28:4]=0x350000c1 ; int64_t arg1
│  │  │╎│   0x00155c28      mov   w1, 8
│  │  │╎│   0x00155c2c      add   w9, w8, 1
│  │  │╎│   0x00155c30      mov   x10, x0
│  │  │╎│   0x00155c34      str   w9, [x19, 0x1c]
│  │  │╎│   0x00155c38      lsr   w9, w8, 0x18
│  │  │╎│   0x00155c3c      strb  w8, [x10, 4]!
│  │  │╎│   0x00155c40      strb  w9, [x10, 3]
│  │  │╎│   0x00155c44      lsr   w9, w8, 0x10
│  │  │╎│   0x00155c48      lsr   w8, w8, 8
│  │  │╎│   0x00155c4c      strb  wzr, [x0, 3]
│  │  │╎│   0x00155c50      strb  wzr, [x0, 2]
│  │  │╎│   0x00155c54      strb  wzr, [x0, 1]
│  │  │╎│   0x00155c58      strb  wzr, [x0]
│  │  │╎│   0x00155c5c      strb  w9, [x10, 2]
│  │  │╎│   0x00155c60      strb  w8, [x0, 5]
│  │  │╎│   0x00155c64      bl    fcn.001010ec
│  │  │╎│   0x00155c68      mov   w2, 0x38
│  │  │╎│   0x00155c6c      mov   x0, x19                              ; int64_t arg1
│  │  │╎│   0x00155c70      mov   w1, wzr
│  │  │╎│   0x00155c74      bl    fcn.0014d8fc
│  │  │╎│   0x00155c78      adrp  x8, 0x599000
│  │  │╎│   0x00155c7c      mov   w0, wzr
│  │  │╎│   0x00155c80      str   xzr, [x8, 0xf10]
│  │ ┌────< 0x00155c84      b     0x155cbc
│  │ │└───> 0x00155c88      mov   w9, aav.0x00000400
│  │ │ ╎│   0x00155c8c      add   x0, x19, w8, sxtw                    ; int64_t arg1
│  │ │ ╎│   0x00155c90      sub   w1, w9, w8
│  │ │ ╎│   0x00155c94      bl    fcn.00101170
│  │ │ ╎│   ; CODE XREFS from fcn.001558e4 @ 0x155b5c, 0x155ee8, 0x155fe0
│ ┌─┌─┌─└─> 0x00155c98      mov   w0, wzr                              ; arg1
│ ╎│╎│╎╎    ; CODE XREFS from fcn.001558e4 @ 0x155ac4, 0x155e68
│ ──────┌─> 0x00155c9c      adrp  x8, 0x599000
│ ╎│╎│╎╎╎   0x00155ca0      ldr   x8, [x8, 0xf10]                      ; [0xf10:4]=0x5280800b
│ ╎│╎│╎╎╎   ; CODE XREF from fcn.001558e4 @ 0x155c14
│ ─└──────> 0x00155ca4      cbz   x8, 0x155cbc
│ ╎ ╎│╎╎╎   0x00155ca8      adrp  x9, 0x599000
│ ╎ ╎│╎╎╎   0x00155cac      ldr   w1, [x9, 0xf18]                      ; [0xf18:4]=0xb940010b
│ ╎ ╎│╎╎╎   0x00155cb0      mov   x0, x8                               ; int64_t arg1
│ ╎ ╎│╎╎╎   0x00155cb4      bl    fcn.00101170
│ ╎ ╎│╎╎╎   0x00155cb8      mov   w0, 1
│ ╎ ╎│╎╎╎   ; CODE XREFS from fcn.001558e4 @ 0x155b34, 0x155c84
│ ───└────> 0x00155cbc      add   sp, sp, aav.0x00000400
│ ╎ ╎ ╎╎╎   0x00155cc0      ldp   x20, x19, [var_10h]
│ ╎ ╎ ╎╎╎   0x00155cc4      ldp   x22, x21, [var_20h]
│ ╎ ╎ ╎╎╎   0x00155cc8      ldr   x28, [var_30h]                       ; aav.0x00000010
│ ╎ ╎ ╎╎╎                                                              ; [0x10:4]=0x14000004
│ ╎ ╎ ╎╎╎   0x00155ccc      ldp   x29, x30, [sp], 0x40
│ ╎ ╎ ╎╎╎   0x00155cd0      autibsp
│ ╎ ╎ ╎╎╎   0x00155cd4      ret
│ ────────> 0x00155cd8      mov   w1, aav.0x00000400
│ ╎ ╎ ╎╎╎   0x00155cdc      mov   x0, x19                              ; int64_t arg1
│ ╎ ╎ ╎╎╎   0x00155ce0      bl    fcn.0014dcc4
│ ╎ ╎ ╎╎╎   0x00155ce4      cmp   x0, aav.0x00000400
│ ╎ ╎┌────< 0x00155ce8      b.ne  0x155d34
│ ╎ ╎│╎╎╎   0x00155cec      adrp  x0, 0x251000
│ ╎ ╎│╎╎╎   0x00155cf0      adrp  x1, 0x24c000
│ ╎ ╎│╎╎╎   0x00155cf4      add   x0, x0, 0x348                        ; int64_t arg1
│ ╎ ╎│╎╎╎   0x00155cf8      add   x1, x1, 0x761                        ; int64_t arg2
│ ╎ ╎│╎╎╎   0x00155cfc      bl    fcn.0014c9f8
│ ╎@──────> 0x00155d00      b     0x155d00
│ ────────> 0x00155d04      mov   w0, aav.0x00000100
│ ╎ ╎│╎╎╎   0x00155d08      bl    fcn.00101d00
│ ╎┌──────< 0x00155d0c      cbz   x0, 0x155e6c
│ ╎│╎│╎╎╎   0x00155d10      mov   x19, x0
│ ╎│╎│╎╎╎   0x00155d14      mov   x8, xzr
│ ────────> 0x00155d18      strb  wzr, [x19, x8]
│ ╎│╎│╎╎╎   0x00155d1c      add   x8, x8, 1
│ ╎│╎│╎╎╎   0x00155d20      cmp   x8, aav.0x00000100
│ ────────< 0x00155d24      b.ne  0x155d18
│ ╎│╎│╎╎╎   0x00155d28      mov   x0, x19                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155d2c      bl    fcn.0017002c
│ ────────< 0x00155d30      b     0x155b48
│ ╎│╎└────> 0x00155d34      mov   w0, aav.0x00000400
│ ╎│╎ ╎╎╎   0x00155d38      bl    fcn.00101d00
│ ╎│╎┌────< 0x00155d3c      cbz   x0, 0x155e84
│ ╎│╎│╎╎╎   0x00155d40      mov   x1, x19                              ; int64_t arg2
│ ╎│╎│╎╎╎   0x00155d44      mov   w2, w20
│ ╎│╎│╎╎╎   0x00155d48      mov   x21, x0
│ ╎│╎│╎╎╎   0x00155d4c      bl    fcn.0018ae78
│ ╎│╎│╎╎╎   0x00155d50      adrp  x0, 0x245000
│ ╎│╎│╎╎╎   0x00155d54      adrp  x1, 0x24c000
│ ╎│╎│╎╎╎   0x00155d58      add   x0, x0, 0xd33                        ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155d5c      add   x1, x1, 0x761                        ; int64_t arg2
│ ╎│╎│╎╎╎   0x00155d60      mov   x2, x21                              ; unsigned long arg3
│ ╎│╎│╎╎╎   0x00155d64      bl    fcn.0014c9f8
│ ╎│╎│╎╎╎   0x00155d68      mov   x0, x21                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155d6c      bl    fcn.0014db58
│ ╎│╎│╎╎╎   0x00155d70      mov   x1, x0
│ ╎│╎│╎╎╎   0x00155d74      mov   x0, x21
│ ────────< 0x00155d78      b     0x155b58
│ ────────> 0x00155d7c      mov   w0, aav.0x00000400
│ ╎│╎│╎╎╎   0x00155d80      bl    fcn.00101d00
│ ────────< 0x00155d84      cbz   x0, 0x155eb0
│ ╎│╎│╎╎╎   0x00155d88      adrp  x1, 0x260000
│ ╎│╎│╎╎╎   0x00155d8c      mov   x20, x0
│ ╎│╎│╎╎╎   0x00155d90      add   x1, x1, 0xa87                        ; int64_t arg2
│ ╎│╎│╎╎╎   0x00155d94      mov   w2, 8
│ ╎│╎│╎╎╎   0x00155d98      mov   x0, x19                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155d9c      bl    fcn.0014dbd8
│ ────────< 0x00155da0      cbz   w0, 0x155eec
│ ╎│╎│╎╎╎   0x00155da4      adrp  x1, 0x255000
│ ╎│╎│╎╎╎   0x00155da8      add   x1, x1, 0xc7a                        ; int64_t arg2
│ ╎│╎│╎╎╎   0x00155dac      mov   w2, 7
│ ╎│╎│╎╎╎   0x00155db0      mov   x0, x19                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155db4      bl    fcn.0014dbd8
│ ────────< 0x00155db8      cbnz  w0, 0x155c98
│ ╎│╎│╎╎╎   0x00155dbc      ldrb  w1, [x19, 8]                         ; aav.0x00000008
│ ╎│╎│╎╎╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│ ╎│╎│╎╎╎   0x00155dc0      cmp   w1, 0x3f                             ; '?'
│ ────────< 0x00155dc4      b.lo  0x155f30
│ ╎│╎│╎╎╎   0x00155dc8      adrp  x0, 0x266000
│ ╎│╎│╎╎╎   0x00155dcc      add   x0, x0, 0xd8b                        ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155dd0      bl    fcn.0014c9f8
│ ╎│╎│╎╎╎   0x00155dd4      mov   w2, 0x10
│ ╎│╎│╎╎╎   0x00155dd8      mov   x0, x20                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155ddc      mov   w1, wzr
│ ╎│╎│╎╎╎   0x00155de0      bl    fcn.0014d8fc
│ ╎│╎│╎╎╎   0x00155de4      adrp  x1, 0x26f000
│ ╎│╎│╎╎╎   0x00155de8      add   x1, x1, aav.0x00000a00               ; " " ; int64_t arg2
│ ╎│╎│╎╎╎   0x00155dec      mov   w2, 6
│ ╎│╎│╎╎╎   0x00155df0      mov   x0, x20                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155df4      bl    fcn.0014d60c
│ ╎│╎│╎╎╎   0x00155df8      mov   w8, 1
│ ╎│╎│╎╎╎   0x00155dfc      strb  w8, [x20, 8]
│ ────────< 0x00155e00      b     0x155f4c
│ ────────> 0x00155e04      mov   w0, aav.0x00002800                   ; "(#\xc8\U000000120#\xc8\U000000128#\xc8\U00000012@#\xc8\U00000012\bC\xc8\U00000012\U00000010C\xc8\U00000012\U00000018C\xc8\U00000"
│ ╎│╎│╎╎╎   0x00155e08      bl    fcn.00101d00
│ ╎│╎│╎╎╎   0x00155e0c      mov   x21, x0
│ ╎│╎│╎╎╎   0x00155e10      bl    fcn.00184e24
│ ────────< 0x00155e14      cbnz  w0, 0x155e28
│ ╎│╎│╎╎╎   0x00155e18      mov   x0, x19                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155e1c      bl    fcn.00184e78
│ ────────< 0x00155e20      cbz   w0, 0x155e28
│ ╎│╎│╎╎╎   0x00155e24      bl    fcn.00184dcc
│ ────────> 0x00155e28      bl    fcn.00184e64
│ ────────< 0x00155e2c      cbz   x0, 0x155c9c
│ ╎│╎│╎╎╎   0x00155e30      mov   x22, x0
│ ╎│╎│╎╎╎   0x00155e34      mov   x0, x21                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155e38      mov   x1, x19                              ; int64_t arg2
│ ╎│╎│╎╎╎   0x00155e3c      mov   w2, w20
│ ╎│╎│╎╎╎   0x00155e40      bl    fcn.00184ec4
│ ╎│╎│╎╎╎   0x00155e44      mov   x0, x21                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155e48      bl    fcn.0014db58
│ ╎│╎│╎╎╎   0x00155e4c      mov   x1, x0                               ; int64_t arg2
│ ╎│╎│╎╎╎   0x00155e50      mov   x0, x21                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155e54      bl    fcn.001010ec
│ ╎│╎│╎╎╎   0x00155e58      mov   w1, aav.0x00002800                   ; "(#\xc8\U000000120#\xc8\U000000128#\xc8\U00000012@#\xc8\U00000012\bC\xc8\U00000012\U00000010C\xc8\U00000012\U00000018C\xc8\U00000"
│ ╎│╎│╎╎╎   0x00155e5c      mov   x0, x22                              ; int64_t arg1
│ ╎│╎│╎╎╎   0x00155e60      bl    fcn.00101170
│ ╎│╎│╎╎╎   0x00155e64      mov   w0, 1
│ ────────< 0x00155e68      b     0x155c9c
│ ╎└──────> 0x00155e6c      adrp  x0, 0x245000
│ ╎ ╎│╎╎╎   0x00155e70      adrp  x1, 0x24c000
│ ╎ ╎│╎╎╎   0x00155e74      add   x0, x0, 0xd18                        ; int64_t arg1
│ ╎ ╎│╎╎╎   0x00155e78      add   x1, x1, 0x761                        ; int64_t arg2
│ ╎ ╎│╎╎╎   0x00155e7c      bl    fcn.0014c9f8
│ ╎@──────> 0x00155e80      b     0x155e80
│ ╎ ╎└────> 0x00155e84      adrp  x0, 0x245000
│ ╎ ╎ ╎╎╎   0x00155e88      adrp  x1, 0x24c000
│ ╎ ╎ ╎╎╎   0x00155e8c      add   x0, x0, 0xd18                        ; int64_t arg1
│ ╎ ╎ ╎╎╎   0x00155e90      add   x1, x1, 0x761                        ; int64_t arg2
│ ╎ ╎ ╎╎╎   0x00155e94      bl    fcn.0014c9f8
│ ╎ ╎@────> 0x00155e98      b     0x155e98
│ ────────> 0x00155e9c      mov   w0, 1
│ ╎ ╎ ╎╎╎   0x00155ea0      bl    fcn.001701d0
│ ╎ ╎ ╎╎└─< 0x00155ea4      cbz   x0, 0x155c9c
│ ╎ ╎ ╎╎    0x00155ea8      mov   x19, x0
│ ────────< 0x00155eac      b     0x155b48
│ ────────> 0x00155eb0      adrp  x0, 0x245000
│ ╎ ╎ ╎╎    0x00155eb4      adrp  x1, 0x24c000
│ ╎ ╎ ╎╎    0x00155eb8      add   x0, x0, 0xd18                        ; int64_t arg1
│ ╎ ╎ ╎╎    0x00155ebc      add   x1, x1, 0x761                        ; int64_t arg2
│ ╎ ╎ ╎╎    0x00155ec0      bl    fcn.0014c9f8
│ ╎ ╎ ╎╎@─> 0x00155ec4      b     0x155ec4
│ ────────> 0x00155ec8      adrp  x1, 0x24f000
│ ╎ ╎ ╎╎    0x00155ecc      adrp  x2, 0x23e000
│ ╎ ╎ ╎╎    0x00155ed0      adrp  x3, 0x23e000
│ ╎ ╎ ╎╎    0x00155ed4      add   x1, x1, 0x31b                        ; int64_t arg2
│ ╎ ╎ ╎╎    0x00155ed8      add   x2, x2, 0xb6a                        ; int64_t arg3
│ ╎ ╎ ╎╎    0x00155edc      add   x3, x3, 0x409                        ; int64_t arg4
│ ╎ ╎ ╎╎    0x00155ee0      mov   w0, 0x4e                             ; 'N'
│ ╎ ╎ ╎╎    0x00155ee4      bl    fcn.0016d638
│ └───────< 0x00155ee8      b     0x155c98
│ ────────> 0x00155eec      mov   w2, 0x20
│   ╎ ╎╎    0x00155ef0      mov   x0, x20                              ; int64_t arg1
│   ╎ ╎╎    0x00155ef4      mov   x1, x19                              ; int64_t arg2
│   ╎ ╎╎    0x00155ef8      bl    fcn.0014d60c
│   ╎ ╎╎    0x00155efc      mov   x0, x20                              ; int64_t arg1
│   ╎ ╎╎    0x00155f00      bl    fcn.0018c808
│   ╎ ╎╎    0x00155f04      mov   w1, 0x10
│   ╎ ╎╎    0x00155f08      mov   x0, x20
│ ────────< 0x00155f0c      b     0x155b58
│ ────────> 0x00155f10      mov   w8, 1
│   ╎ ╎╎    0x00155f14      adrp  x19, 0x2ca000
│   ╎ ╎╎    0x00155f18      str   w8, [x22, 0xf0c]
│   ╎ ╎╎    0x00155f1c      add   x19, x19, 0xdde
│ ────────< 0x00155f20      b     0x155b48
│ ────────> 0x00155f24      adrp  x19, 0x2ca000
│   ╎ ╎╎    0x00155f28      add   x19, x19, str.rect_0x_x              ; 0xdd4 ; "rect 0x%x\n"
│   ╎ ╎└──< 0x00155f2c      b     0x155b48
│ ────────> 0x00155f30      lsl   x8, x1, 4
│   ╎ ╎     0x00155f34      add   x2, x8, 0x20                         ; int64_t arg3
│   ╎ ╎     0x00155f38      mov   x0, x20                              ; int64_t arg1
│   ╎ ╎     0x00155f3c      mov   x1, x19                              ; int64_t arg2
│   ╎ ╎     0x00155f40      bl    fcn.0014d60c
│   ╎ ╎     0x00155f44      mov   x0, x20                              ; int64_t arg1
│   ╎ ╎     0x00155f48      bl    fcn.0018c808
│   ╎ ╎     ; CODE XREF from fcn.001558e4 @ 0x155e00
│ ────────> 0x00155f4c      mov   w1, 0x10
│   ╎ ╎     0x00155f50      mov   x0, x20                              ; int64_t arg1
│   ╎ ╎     0x00155f54      bl    fcn.001010ec
│   ╎ ╎     0x00155f58      mov   w0, 0x4240                           ; '@B'
│   ╎ ╎     0x00155f5c      movk  w0, 0xf, lsl 16
│   ╎ ╎     0x00155f60      bl    fcn.001b3f80
│   ╎ ╎     0x00155f64      mov   w0, 2
│   ╎ ╎     0x00155f68      bl    fcn.00150b58
│   ╎ ╎     0x00155f6c      mov   w8, 0x4f4c                           ; 'LO'
│   ╎ ╎     0x00155f70      cmp   w0, w8
│   ╎ ╎ ┌─< 0x00155f74      b.ne  0x155fc8
│   ╎ ╎ │   0x00155f78      adrp  x0, 0x265000
│   ╎ ╎ │   0x00155f7c      adrp  x1, 0x24c000
│   ╎ ╎ │   0x00155f80      add   x0, x0, 1                            ; int64_t arg1
│   ╎ ╎ │   0x00155f84      add   x1, x1, 0x761                        ; int64_t arg2
│   ╎ ╎ │   0x00155f88      bl    fcn.0014c9f8
│   ╎ ╎ │   0x00155f8c      mov   w0, 2
│   ╎ ╎ │   0x00155f90      mov   w1, 0x494d                           ; 'MI'
│   ╎ ╎ │   0x00155f94      mov   w3, 1
│   ╎ ╎ │   0x00155f98      mov   x2, xzr                              ; int64_t arg3
│   ╎ ╎ │   0x00155f9c      bl    fcn.001503d0
│   ╎ ╎ │   0x00155fa0      mov   w0, 9
│   ╎ ╎ │   0x00155fa4      mov   w1, 0x5500
│   ╎ ╎ │   0x00155fa8      mov   w3, 1
│   ╎ ╎ │   0x00155fac      mov   x2, xzr                              ; int64_t arg3
│   ╎ ╎ │   0x00155fb0      bl    fcn.001503d0
│   ╎ ╎ │   0x00155fb4      mov   w0, 0x11
│   ╎ ╎ │   0x00155fb8      mov   w1, 5
│   ╎ ╎ │   0x00155fbc      mov   w3, 1
│   ╎ ╎ │   0x00155fc0      mov   x2, xzr                              ; int64_t arg3
│   ╎ ╎ │   0x00155fc4      bl    fcn.001503d0
│   ╎ ╎ └─> 0x00155fc8      adrp  x1, 0x24a000
│   ╎ ╎     0x00155fcc      adrp  x2, 0x23e000
│   ╎ ╎     0x00155fd0      add   x1, x1, 0x17b                        ; int64_t arg2
│   ╎ ╎     0x00155fd4      add   x2, x2, 0x409                        ; int64_t arg3
│   ╎ ╎     0x00155fd8      mov   w0, 0x4e                             ; 'N'
│   ╎ ╎     0x00155fdc      bl    fcn.0016d638
│   └─────< 0x00155fe0      b     0x155c98
│ ────────> 0x00155fe4      mov   w0, 0x80
│     ╎     0x00155fe8      bl    fcn.00101d00
│     ╎ ┌─< 0x00155fec      cbz   x0, 0x156030
│     ╎ │   0x00155ff0      mov   x20, x0
│     ╎ │   0x00155ff4      mov   x0, x19                              ; int64_t arg1
│     ╎ │   0x00155ff8      bl    fcn.0014db58
│     ╎ │   0x00155ffc      cmp   x0, 0x7f
│     │ │   ; XREFS: STRING 0x0015636c  STRING 0x00156370  STRING 0x00156384
│     │ │   ; XREFS: STRING 0x00156388  STRING 0x001565c0  STRING 0x001565c4
│     │ │   ; XREFS: STRING 0x001565dc  STRING 0x001565e0
│     └───< 0x00156000      b.hi  0x155c98
│       │   0x00156004      mov   x2, x0                               ; int64_t arg3
│       │   0x00156008      mov   x0, x20                              ; int64_t arg1
│       │   0x0015600c      mov   x1, x19                              ; int64_t arg2
│       │   0x00156010      bl    fcn.0014d60c
│       │   0x00156014      mov   x0, x20                              ; int64_t arg1
│       │   0x00156018      bl    fcn.0017b570
│       │   0x0015601c      mov   x0, x20                              ; int64_t arg1
│       │   0x00156020      bl    fcn.0014db58
│       │   0x00156024      mov   x1, x0
│       │   0x00156028      mov   x0, x20
│ ────────< 0x0015602c      b     0x155b58
│       └─> 0x00156030      adrp  x0, 0x245000
│           0x00156034      adrp  x1, 0x24c000
│           0x00156038      add   x0, x0, 0xd18                        ; int64_t arg1
│           0x0015603c      add   x1, x1, 0x761                        ; int64_t arg2
│           0x00156040      bl    fcn.0014c9f8
└       @─> 0x00156044      b     0x156044
            ; XREFS: CALL 0x00156448  CALL 0x001564a4  CALL 0x0015656c
            ; XREFS: CALL 0x001565a4  CALL 0x001b16c8  CALL 0x001b1ba8
            ; XREFS: CALL 0x001b1ce8  CALL 0x001b2008  CALL 0x001b21a8
