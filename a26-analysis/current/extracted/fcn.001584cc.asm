┌ fcn.001584cc(int64_t arg1, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_54h @ stack - 0x54
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001584cc      pacibsp
│           0x001584d0      sub   sp, sp, 0x60
│           0x001584d4      stp   x29, x30, [var_40h]
│           0x001584d8      str   x23, [var_30h]
│           0x001584dc      stp   x22, x21, [var_20h]
│           0x001584e0      stp   x20, x19, [var_10h]
│           0x001584e4      add   x29, sp, 0x20
│       ┌─< 0x001584e8      cbz   x0, 0x158540
│       │   0x001584ec      ldr   w8, [x0]                             ; arg1
│       │   0x001584f0      mov   x19, x0                              ; arg1
│       │   0x001584f4      tst   w8, aav.0x0000c000                   ; "J\x85\xea\xb7>\x93\U00000012U\xf7Ѣ\U0000001c\xba\x83\xf9\xa8\xab\U00000015a\xc8\xf6\x81i\U00000011/8K\xfe`\x92\xd0\xe0n7Џ\xeb5"
│      ┌──< 0x001584f8      b.eq  0x158570
│      ││   0x001584fc      and   w3, w8, 0xffff3fff
│      ││   0x00158500      sub   w8, w3, 1
│      ││   0x00158504      cmp   w8, 0x24
│      ││   0x00158508      str   w3, [x19]
│     ┌───< 0x0015850c      b.hi  0x1585c8
│     │││   0x00158510      adrp  x9, 0x28b000
│     │││   0x00158514      add   x9, x9, 0x620
│     │││   0x00158518      adr   x10, 0x158528
│     │││   0x0015851c      ldrb  w11, [x9, x8]
│     │││   0x00158520      add   x10, x10, x11, lsl 2                 ; 0x158630
│     │││                                                              ; fcn.00158630
│     │││   0x00158524      br    x10
      │││   ; STRING XREF from fcn.001584cc @ 0x158518
..
│     ││└─> 0x00158540      adrp  x1, 0x247000
│     ││    0x00158544      adrp  x0, 0x23a000
│     ││    0x00158548      add   x1, x1, 0xfb8                        ; int64_t arg2
│     ││    0x0015854c      add   x0, x0, 0xb5c                        ; int64_t arg1
│     ││    0x00158550      mov   w2, 0xe
│     ││    0x00158554      mov   w4, 1
│     ││    0x00158558      mov   x3, x1                               ; int64_t arg4
│     ││    0x0015855c      bl    fcn.0014c9f8
│     ││    0x00158560      mov   w8, 0x10
│     ││    0x00158564      movk  w8, 0xf004, lsl 16
│     ││    0x00158568      sub   w21, w8, 0xf
│     ││    0x0015856c      b     0x158ac8
│     │└──> 0x00158570      mov   w21, 0x10
│     │     0x00158574      adrp  x0, 0x26d000
│     │     0x00158578      adrp  x1, 0x247000
│     │     0x0015857c      mov   w3, 0x10
│     │     0x00158580      movk  w21, 0xf004, lsl 16
│     │     0x00158584      add   x0, x0, 0x1f0
│     │     0x00158588      add   x1, x1, 0xfb8
│     │     0x0015858c      mov   w2, 0x14
│     │     0x00158590      movk  w3, 0xf004, lsl 16
│     │     0x00158594      b     0x158ac4
..
│     └───> 0x001585c8      adrp  x0, 0x26b000
│           0x001585cc      adrp  x1, 0x271000
│           0x001585d0      add   x0, x0, 0x9f                         ; int64_t arg1
│           0x001585d4      add   x1, x1, 0xb82                        ; int64_t arg2
│           0x001585d8      mov   w2, 0x26b
│           0x001585dc      bl    fcn.0014c9f8
│           0x001585e0      b     0x1587c4
..
            ; CODE XREFS from fcn.001584cc @ 0x158520, 0x158524
│ │││││││   ; XREFS(22)
│           ; CODE XREF from fcn.001584cc @ 0x1585e0
│           0x001587c4      ldr   x22, [x19, 8]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh" ; arg1
│           0x001587c8      str   wzr, [var_54h + 0xc]
│           0x001587cc      stp   xzr, xzr, [var_58h]
│       ┌─< 0x001587d0      tbz   w22, 0x15, 0x15886c
│       │   0x001587d4      ldr   w8, [x19]
│       │   0x001587d8      cmp   w8, 0x19
│      ┌──< 0x001587dc      b.ne  0x15886c
│     ┌───< 0x001587e0      tbz   w22, 0x1d, 0x15886c
│     │││   0x001587e4      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│     │││   0x001587e8      mov   w1, 0x10
│     │││   0x001587ec      add   x20, x19, 0x28                       ; aav.0x00000028
│     │││   0x001587f0      bl    fcn.00163120
│    ┌────< 0x001587f4      cbz   w0, 0x15896c
│    ││││   0x001587f8      adrp  x21, 0x25e000
│    ││││   0x001587fc      add   x21, x21, 0x5ec
│    ││││   0x00158800      mov   x0, x21                              ; int64_t arg1
│    ││││   0x00158804      bl    fcn.0014db58
│    ││││   0x00158808      mov   x2, x0
│    ││││   0x0015880c      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│    ││││   0x00158810      mov   x1, x21                              ; int64_t arg2
│    ││││   0x00158814      bl    fcn.0014d5c8
│   ┌─────< 0x00158818      cbz   w0, 0x158af0
│   │││││   0x0015881c      adrp  x21, 0x27a000
│   │││││   0x00158820      add   x21, x21, 0xaa2
│   │││││   0x00158824      mov   x0, x21                              ; int64_t arg1
│   │││││   0x00158828      bl    fcn.0014db58
│   │││││   0x0015882c      mov   x2, x0
│   │││││   0x00158830      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│   │││││   0x00158834      mov   x1, x21                              ; int64_t arg2
│   │││││   0x00158838      bl    fcn.0014d5c8
│  ┌──────< 0x0015883c      cbz   w0, 0x158af8
│  ││││││   0x00158840      adrp  x0, 0x257000
│  ││││││   0x00158844      adrp  x1, 0x27a000
│  ││││││   0x00158848      add   x0, x0, 0xa2b                        ; int64_t arg1
│  ││││││   0x0015884c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│  ││││││   0x00158850      mov   w2, 0x51                             ; 'Q'
│  ││││││   0x00158854      mov   x3, x20                              ; int64_t arg4
│  ││││││   0x00158858      bl    fcn.0014c9f8
│  ││││││   0x0015885c      mov   w8, 0x10
│  ││││││   0x00158860      movk  w8, 0xf076, lsl 16
│  ││││││   0x00158864      orr   w21, w8, 4
│ ┌───────< 0x00158868      b     0x158aac
│ ││││└└└─> 0x0015886c      ldrb  w8, [x19, 0x19]                      ; [0x19:4]=0x76000 "........"
│ ││││  ┌─< 0x00158870      tbz   w8, 2, 0x158914
│ ││││ ┌──< 0x00158874      tbnz  w22, 5, 0x158914
│ ││││┌───< 0x00158878      tbz   w22, 0x1d, 0x158950
│ │││││││   0x0015887c      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158880      mov   w1, 0x10
│ │││││││   0x00158884      add   x20, x19, 0x28                       ; aav.0x00000028
│ │││││││   0x00158888      bl    fcn.00163120
│ ────────< 0x0015888c      cbz   w0, 0x158950
│ │││││││   0x00158890      adrp  x21, 0x265000
│ │││││││   0x00158894      add   x21, x21, 0xbd
│ │││││││   0x00158898      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x0015889c      bl    fcn.0014db58
│ │││││││   0x001588a0      mov   x2, x0
│ │││││││   0x001588a4      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001588a8      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001588ac      bl    fcn.0014d5c8
│ ────────< 0x001588b0      cbz   w0, 0x158ae8
│ │││││││   0x001588b4      adrp  x21, 0x278000
│ │││││││   0x001588b8      add   x21, x21, aav.0x000009a8             ; "-EL1"
│ │││││││   0x001588bc      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001588c0      bl    fcn.0014db58
│ │││││││   0x001588c4      mov   x2, x0
│ │││││││   0x001588c8      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001588cc      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001588d0      bl    fcn.0014d5c8
│ ────────< 0x001588d4      cbz   w0, 0x158ae8
│ │││││││   0x001588d8      adrp  x21, 0x27a000
│ │││││││   0x001588dc      add   x21, x21, 0xaa2
│ │││││││   0x001588e0      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001588e4      bl    fcn.0014db58
│ │││││││   0x001588e8      mov   x2, x0
│ │││││││   0x001588ec      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001588f0      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001588f4      bl    fcn.0014d5c8
│ ────────< 0x001588f8      cbz   w0, 0x158ae8
│ │││││││   0x001588fc      adrp  x0, 0x27c000
│ │││││││   0x00158900      adrp  x1, 0x27a000
│ │││││││   0x00158904      add   x0, x0, 0xe56
│ │││││││   0x00158908      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ │││││││   0x0015890c      mov   w2, 0x65                             ; 'e'
│ ────────< 0x00158910      b     0x158a74
│ │││││└└─> 0x00158914      ldr   w8, [x19]
│ │││││     0x00158918      cmp   w8, 0x21                             ; '!'
│ │││││ ┌─< 0x0015891c      b.eq  0x1589b8
│ │││││┌──< 0x00158920      tbnz  w22, 5, 0x158988
│ │││││││   0x00158924      adrp  x0, 0x271000
│ │││││││   0x00158928      adrp  x1, 0x27a000
│ │││││││   0x0015892c      add   x0, x0, 0xafb                        ; int64_t arg1
│ │││││││   0x00158930      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│ │││││││   0x00158934      mov   w2, 0x6c
│ │││││││   0x00158938      bl    fcn.0014c9f8
│ │││││││   0x0015893c      mov   w9, 0x10
│ │││││││   0x00158940      mov   w8, 5
│ │││││││   0x00158944      movk  w9, 0xf076, lsl 16
│ │││││││   0x00158948      orr   w21, w9, w8
│ ────────< 0x0015894c      b     0x158aac
│ ────└───> 0x00158950      adrp  x0, 0x26f000
│ ││││ ││   0x00158954      adrp  x1, 0x27a000
│ ││││ ││   0x00158958      mov   w21, 0x10
│ ││││ ││   0x0015895c      add   x0, x0, 0xa60
│ ││││ ││   0x00158960      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ ││││ ││   0x00158964      mov   w2, 0x5b                             ; '['
│ ││││┌───< 0x00158968      b     0x158aa4
│ │││└────> 0x0015896c      adrp  x0, 0x276000
│ │││ │││   0x00158970      adrp  x1, 0x27a000
│ │││ │││   0x00158974      mov   w21, 0x10
│ │││ │││   0x00158978      add   x0, x0, 0x52c
│ │││ │││   0x0015897c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ │││ │││   0x00158980      mov   w2, 0x47                             ; 'G'
│ │││┌────< 0x00158984      b     0x158aa4
│ │││││└──> 0x00158988      adrp  x21, 0x24f000
│ │││││ │   0x0015898c      mov   w8, 0x127a
│ │││││ │   0x00158990      add   x21, x21, 0x342
│ │││││ │   0x00158994      movk  w8, 3, lsl 16
│ │││││ │   0x00158998      mov   x0, x21                              ; int64_t arg1
│ │││││ │   0x0015899c      add   x20, x19, x8
│ │││││ │   0x001589a0      bl    fcn.0014db58
│ │││││ │   0x001589a4      mov   x2, x0
│ │││││ │   0x001589a8      mov   x0, x20                              ; int64_t arg1
│ │││││ │   0x001589ac      mov   x1, x21                              ; int64_t arg2
│ │││││ │   0x001589b0      bl    fcn.0014d5c8
│ │││││┌──< 0x001589b4      cbz   w0, 0x158b68
│ ──────└─> 0x001589b8      tbz   w22, 0x1d, 0x158a8c
│ ││││││    0x001589bc      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ ││││││    0x001589c0      mov   w1, 0x10
│ ││││││    0x001589c4      add   x20, x19, 0x28                       ; aav.0x00000028
│ ││││││    0x001589c8      bl    fcn.00163120
│ ││││││┌─< 0x001589cc      cbz   w0, 0x158a8c
│ │││││││   0x001589d0      adrp  x21, 0x25e000
│ │││││││   0x001589d4      add   x21, x21, 0x5ec
│ │││││││   0x001589d8      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x001589dc      bl    fcn.0014db58
│ │││││││   0x001589e0      mov   x2, x0
│ │││││││   0x001589e4      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x001589e8      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x001589ec      bl    fcn.0014d5c8
│ ────────< 0x001589f0      cbz   w0, 0x158af0
│ │││││││   0x001589f4      adrp  x21, 0x27a000
│ │││││││   0x001589f8      add   x21, x21, 0xaa2
│ │││││││   0x001589fc      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00158a00      bl    fcn.0014db58
│ │││││││   0x00158a04      mov   x2, x0
│ │││││││   0x00158a08      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158a0c      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00158a10      bl    fcn.0014d5c8
│ ────────< 0x00158a14      cbz   w0, 0x158af8
│ │││││││   0x00158a18      adrp  x21, 0x265000
│ │││││││   0x00158a1c      add   x21, x21, 0xbd
│ │││││││   0x00158a20      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00158a24      bl    fcn.0014db58
│ │││││││   0x00158a28      mov   x2, x0
│ │││││││   0x00158a2c      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158a30      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00158a34      bl    fcn.0014d5c8
│ ────────< 0x00158a38      cbz   w0, 0x158ae8
│ │││││││   0x00158a3c      adrp  x21, 0x278000
│ │││││││   0x00158a40      add   x21, x21, aav.0x000009a8             ; "-EL1"
│ │││││││   0x00158a44      mov   x0, x21                              ; int64_t arg1
│ │││││││   0x00158a48      bl    fcn.0014db58
│ │││││││   0x00158a4c      mov   x2, x0
│ │││││││   0x00158a50      add   x0, x19, 0x28                        ; aav.0x00000028 ; int64_t arg1
│ │││││││   0x00158a54      mov   x1, x21                              ; int64_t arg2
│ │││││││   0x00158a58      bl    fcn.0014d5c8
│ ────────< 0x00158a5c      cbz   w0, 0x158ae8
│ │││││││   0x00158a60      adrp  x0, 0x27c000
│ │││││││   0x00158a64      adrp  x1, 0x27a000
│ │││││││   0x00158a68      add   x0, x0, 0xe56
│ │││││││   0x00158a6c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ │││││││   0x00158a70      mov   w2, 0x91
│ │││││││   ; CODE XREF from fcn.001584cc @ 0x158910
│ ────────> 0x00158a74      mov   x3, x20                              ; int64_t arg4
│ │││││││   0x00158a78      bl    fcn.0014c9f8
│ │││││││   0x00158a7c      mov   w8, 0x10
│ │││││││   0x00158a80      movk  w8, 0xf076, lsl 16
│ │││││││   0x00158a84      orr   w21, w8, 3
│ ────────< 0x00158a88      b     0x158aac
│ ──────└─> 0x00158a8c      adrp  x0, 0x26f000
│ ││││││    0x00158a90      adrp  x1, 0x27a000
│ ││││││    0x00158a94      mov   w21, 0x10
│ ││││││    0x00158a98      add   x0, x0, 0xa60
│ ││││││    0x00158a9c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n"
│ ││││││    0x00158aa0      mov   w2, 0x82
│ ││││││    ; CODE XREFS from fcn.001584cc @ 0x158968, 0x158984
│ │││└└───> 0x00158aa4      movk  w21, 0xf076, lsl 16
│ │││  │    0x00158aa8      bl    fcn.0014c9f8
│ │││  │    ; CODE XREFS from fcn.001584cc @ 0x158868, 0x15894c, 0x158a88, 0x158bb4
│ └───────> 0x00158aac      adrp  x0, 0x255000
│  ││  │    0x00158ab0      adrp  x1, 0x247000
│  ││  │    0x00158ab4      add   x0, x0, 0xcf3
│  ││  │    0x00158ab8      add   x1, x1, 0xfb8
│  ││  │    0x00158abc      mov   w2, 0x1c
│  ││  │    ; CODE XREFS from fcn.001584cc @ 0x158cc0, 0x158db0, 0x158f64, 0x159110
│  ││  │    0x00158ac0      mov   w3, w21
│  ││  │    ; CODE XREF from fcn.001584cc @ 0x158594
│  ││  │    0x00158ac4      bl    fcn.0014c9f8
│  ││  │    ; CODE XREF from fcn.001584cc @ 0x15856c
│  ││  │    0x00158ac8      mov   w0, w21
│  ││  │    0x00158acc      ldp   x20, x19, [var_10h]
│  ││  │    0x00158ad0      ldp   x22, x21, [var_20h]
│  ││  │    0x00158ad4      ldr   x23, [var_30h]                       ; aav.0x00000030
│  ││  │                                                               ; [0x30:4]=0x58000911
│  ││  │    0x00158ad8      ldp   x29, x30, [var_40h]
│  ││  │    0x00158adc      add   sp, sp, 0x60
│  ││  │    0x00158ae0      autibsp
│  ││  │    0x00158ae4      ret
│ ────────> 0x00158ae8      mov   w3, 0x19
│  ││  │┌─< 0x00158aec      b     0x158afc
│ ──└─────> 0x00158af0      mov   w3, 0x14
│  │  ┌───< 0x00158af4      b     0x158afc
│ ─└──────> 0x00158af8      mov   w3, 0x1e
│     │││   ; CODE XREFS from fcn.001584cc @ 0x158aec, 0x158af4
│     └─└─> 0x00158afc      mov   w8, 0x3e5a                           ; 'Z>'
│      │    0x00158b00      movk  w8, 3, lsl 16
│      │    0x00158b04      adrp  x0, 0x251000
│      │    0x00158b08      adrp  x1, 0x27a000
│      │    0x00158b0c      add   x23, x19, x8
│      │    0x00158b10      add   x0, x0, 0x3c9                        ; int64_t arg1
│      │    0x00158b14      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│      │    0x00158b18      mov   w2, 0x99
│      │    0x00158b1c      strb  w3, [x23]
│      │    0x00158b20      bl    fcn.0014c9f8
│      │    0x00158b24      ldr   w8, [x19]
│      │    0x00158b28      sub   w8, w8, 1
│      │    0x00158b2c      cmp   w8, 0x24
│      │┌─< 0x00158b30      b.hi  0x158be0
│      ││   0x00158b34      adrp  x9, 0x28b000
│      ││   0x00158b38      add   x9, x9, 0x645
│      ││   0x00158b3c      adr   x10, 0x158b4c
│      ││   0x00158b40      ldrb  w11, [x9, x8]
│      ││   0x00158b44      add   x10, x10, x11, lsl 2
│      ││   0x00158b48      br    x10
       ││   ; STRING XREF from fcn.001584cc @ 0x158b3c
..
│      └──> 0x00158b68      mov   w8, 0x125a
│       │   0x00158b6c      movk  w8, 3, lsl 16
│       │   0x00158b70      add   x1, x19, x8                          ; int64_t arg2
│       │   0x00158b74      add   x0, var_58h                          ; int64_t arg1
│       │   0x00158b78      bl    fcn.001594f4
│       │   0x00158b7c      ldrh  w3, [var_54h]                        ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00158b80      cmp   w3, 0x14
│       │   0x00158b84      b.eq  0x158afc
│       │   0x00158b88      cmp   w3, 0x1e
│       │   0x00158b8c      b.eq  0x158afc
│       │   0x00158b90      adrp  x0, 0x265000
│       │   0x00158b94      adrp  x1, 0x27a000
│       │   0x00158b98      add   x0, x0, 0xc0                         ; int64_t arg1
│       │   0x00158b9c      add   x1, x1, str.SecureBoot:___s__Check_digital_signature_fail.__Booting_stop:_0x_x ; 0xb22 ; "SecureBoot: [%s] Check digital signature fail. (Booting stop: 0x%x)\r\n" ; int64_t arg2
│       │   0x00158ba0      mov   w2, 0x7a                             ; 'z'
│       │   0x00158ba4      bl    fcn.0014c9f8
│       │   0x00158ba8      mov   w8, 0x10
│       │   0x00158bac      movk  w8, 0xf076, lsl 16
│       │   0x00158bb0      orr   w21, w8, 2
│       │   0x00158bb4      b     0x158aac
..
│       └─> 0x00158be0      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158be4      b     0x158c24
..
            ; XREFS: CODE 0x00158b54  CODE 0x00158b64  CODE 0x00158bc0
            ; XREFS: CODE 0x00158bcc  CODE 0x00158bdc  CODE 0x00158bf4
            ; XREFS: CODE 0x00158c04  CODE 0x00158c14
│           ; CODE XREF from fcn.001584cc @ 0x158be4
│           0x00158c24      mov   w9, aav.0x00000420
│           0x00158c28      and   x9, x8, x9
│           0x00158c2c      cmp   x9, 0x20
│           0x00158c30      b.ne  0x158c7c
│           0x00158c34      mov   w8, 0x125a
│           0x00158c38      movk  w8, 3, lsl 16
│           0x00158c3c      add   x0, x19, x8                          ; int64_t arg1
│           0x00158c40      add   x2, x19, 0x28                        ; aav.0x00000028 ; int64_t arg3
│           0x00158c44      mov   w1, 7
│           0x00158c48      mov   w3, 0x10
│           0x00158c4c      bl    fcn.0015b03c
│           0x00158c50      cbz   w0, 0x158c78
│           0x00158c54      mov   w21, w0
│           0x00158c58      adrp  x0, 0x271000
│           0x00158c5c      adrp  x1, 0x26b000
│           0x00158c60      add   x0, x0, 0xb55                        ; int64_t arg1
│           0x00158c64      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158c68      mov   w2, 0x17c
│           0x00158c6c      mov   w3, w21
│           0x00158c70      bl    fcn.0014c9f8
│           0x00158c74      b     0x158f50
│           0x00158c78      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158c7c      tbnz  w8, 1, 0x158cc4
│           ; CODE XREF from fcn.001584cc @ 0x158fc0
│           0x00158c80      ldrb  w8, [x19, 0x11]                      ; [0x11:4]=0x140000
│           0x00158c84      str   wzr, [var_58h]
│           0x00158c88      tbnz  w8, 0, 0x158c9c
│           0x00158c8c      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158c90      mov   w9, 0x501
│           0x00158c94      tst   x8, x9
│           0x00158c98      b.eq  0x158db4
│           0x00158c9c      mov   x0, x19                              ; int64_t arg1
│           0x00158ca0      bl    fcn.00159200
│           0x00158ca4      cbz   w0, 0x158d8c
│           0x00158ca8      mov   w21, w0
│           0x00158cac      adrp  x0, 0x247000
│           0x00158cb0      adrp  x1, 0x247000
│           0x00158cb4      add   x0, x0, 0xfc7
│           0x00158cb8      add   x1, x1, 0xfb8
│           0x00158cbc      mov   w2, 0x2e                             ; '.'
│           0x00158cc0      b     0x158ac0
│           0x00158cc4      ldrb  w8, [x19, 8]                         ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x00158cc8      tbnz  w8, 0, 0x158cf8
│           0x00158ccc      ldr   w3, [x19]
│           0x00158cd0      adrp  x0, 0x24a000
│           0x00158cd4      adrp  x1, 0x26b000
│           ; CODE XREFS from fcn.001584cc @ 0x158b44, 0x158b48
│           0x00158cd8      add   x0, x0, 0x45e                        ; int64_t arg1
│           0x00158cdc      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158ce0      mov   w2, 0x184
│           0x00158ce4      bl    fcn.0014c9f8
│           0x00158ce8      mov   w8, 1
│           0x00158cec      movk  w8, 0xf0ec, lsl 16
│           0x00158cf0      add   w21, w8, 0xf
│           0x00158cf4      b     0x158f50
│           0x00158cf8      mov   w8, 0x40e0
│           0x00158cfc      mov   w0, 0xcdc0
│           0x00158d00      movk  w8, 3, lsl 16
│           0x00158d04      movk  w0, 4, lsl 16
│           0x00158d08      mov   w1, 1
│           0x00158d0c      add   x20, x19, x8
│           0x00158d10      bl    fcn.001566a8
│           0x00158d14      str   x0, [x20]
│           0x00158d18      cbz   x0, 0x158f28
│           0x00158d1c      mov   w8, 0x40e8
│           0x00158d20      movk  w8, 3, lsl 16
│           0x00158d24      mov   x1, x0                               ; int64_t arg2
│           0x00158d28      add   x2, x19, x8                          ; int64_t arg3
│           0x00158d2c      mov   x0, x19                              ; int64_t arg1
│           0x00158d30      bl    fcn.0015c54c
│           0x00158d34      cbz   w0, 0x158f68
│           0x00158d38      mov   w21, w0
│           0x00158d3c      adrp  x0, 0x243000
│           0x00158d40      adrp  x1, 0x26b000
│           0x00158d44      add   x0, x0, 0x4d3                        ; int64_t arg1
│           0x00158d48      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158d4c      mov   w2, 0x18e
│           0x00158d50      mov   w3, w21
│           0x00158d54      bl    fcn.0014c9f8
│           0x00158d58      ldrb  w8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158d5c      tbz   w8, 4, 0x158f50
│           0x00158d60      ldr   w3, [x19]
│           0x00158d64      adrp  x0, 0x26d000
│           0x00158d68      adrp  x1, 0x26b000
│           0x00158d6c      add   x0, x0, 0x214                        ; int64_t arg1
│           0x00158d70      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158d74      mov   w2, 0x192
│           0x00158d78      bl    fcn.0014c9f8
│           0x00158d7c      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158d80      orr   x8, x8, 0x40
│           0x00158d84      str   x8, [x19, 0x18]
│           0x00158d88      b     0x158f6c
│           0x00158d8c      mov   x0, x19                              ; int64_t arg1
│           0x00158d90      bl    fcn.00159428
│           0x00158d94      mov   w21, w0
│           0x00158d98      cbz   w0, 0x158ac8
│           0x00158d9c      adrp  x0, 0x247000
│           0x00158da0      adrp  x1, 0x247000
│           0x00158da4      add   x0, x0, 0xff5
│           0x00158da8      add   x1, x1, 0xfb8
│           0x00158dac      mov   w2, 0x34
│           0x00158db0      b     0x158ac0
│           0x00158db4      ldrb  w9, [x23, 1]                         ; [0x1:4]=0x6b000000
│           0x00158db8      cbz   w9, 0x158fc4
│           0x00158dbc      mov   w0, 1
│           0x00158dc0      mov   w1, aav.0x00000100
│           0x00158dc4      bl    fcn.001566a8
│           0x00158dc8      cbz   x0, 0x158fcc
│           0x00158dcc      mov   w1, aav.0x00000100
│           0x00158dd0      mov   x20, x0
│           0x00158dd4      bl    fcn.00156714
│           0x00158dd8      mov   w8, 0x12
│           0x00158ddc      movk  w8, 0xf057, lsl 16
│           0x00158de0      cmp   w0, w8
│           0x00158de4      b.eq  0x158ff0
│           0x00158de8      mov   w21, w0
│           0x00158dec      cbnz  w0, 0x1590a4
│           0x00158df0      mov   w8, 0x3fdc
│           0x00158df4      movk  w8, 3, lsl 16
│           0x00158df8      add   x0, x19, x8                          ; int64_t arg1
│           0x00158dfc      add   x4, var_58h                          ; int64_t arg5
│           0x00158e00      mov   w1, 4
│           0x00158e04      mov   w3, aav.0x00000100
│           0x00158e08      mov   w5, 4
│           0x00158e0c      mov   x2, x20                              ; int64_t arg3
│           0x00158e10      bl    fcn.00163468
│           0x00158e14      mov   w8, 0x3fe0
│           0x00158e18      movk  w8, 3, lsl 16
│           0x00158e1c      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e20      add   x4, var_58h                          ; int64_t arg5
│           0x00158e24      mov   w1, 0x10
│           0x00158e28      mov   w3, aav.0x00000100
│           0x00158e2c      mov   w5, 0x10
│           0x00158e30      mov   x2, x20                              ; int64_t arg3
│           0x00158e34      bl    fcn.00163468
│           0x00158e38      mov   w8, 0x3ff0
│           0x00158e3c      movk  w8, 3, lsl 16
│           0x00158e40      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e44      add   x4, var_58h                          ; int64_t arg5
│           0x00158e48      mov   w1, 0x20
│           0x00158e4c      mov   w3, aav.0x00000100
│           0x00158e50      mov   w5, 0x20
│           0x00158e54      mov   x2, x20                              ; int64_t arg3
│           0x00158e58      bl    fcn.00163468
│           0x00158e5c      mov   w8, 0x4010
│           0x00158e60      movk  w8, 3, lsl 16
│           0x00158e64      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e68      add   x4, var_58h                          ; int64_t arg5
│           0x00158e6c      mov   w1, 4
│           0x00158e70      mov   w3, aav.0x00000100
│           0x00158e74      mov   w5, 4
│           0x00158e78      mov   x2, x20                              ; int64_t arg3
│           0x00158e7c      bl    fcn.00163468
│           0x00158e80      mov   w8, 0x4014
│           0x00158e84      movk  w8, 3, lsl 16
│           0x00158e88      add   x0, x19, x8                          ; int64_t arg1
│           0x00158e8c      add   x4, var_58h                          ; int64_t arg5
│           0x00158e90      mov   w1, 4
│           0x00158e94      mov   w3, aav.0x00000100
│           0x00158e98      mov   w5, 4
│           0x00158e9c      mov   x2, x20                              ; int64_t arg3
│           0x00158ea0      bl    fcn.00163468
│           0x00158ea4      mov   w8, 0x4018
│           0x00158ea8      movk  w8, 3, lsl 16
│           0x00158eac      add   x0, x19, x8                          ; int64_t arg1
│           0x00158eb0      add   x4, var_58h                          ; int64_t arg5
│           0x00158eb4      mov   w1, 4
│           0x00158eb8      mov   w3, aav.0x00000100
│           0x00158ebc      mov   w5, 4
│           0x00158ec0      mov   x2, x20                              ; int64_t arg3
│           0x00158ec4      bl    fcn.00163468
│           0x00158ec8      mov   w8, 0x401c
│           0x00158ecc      movk  w8, 3, lsl 16
│           0x00158ed0      add   x0, x19, x8                          ; int64_t arg1
│           0x00158ed4      add   x4, var_58h                          ; int64_t arg5
│           0x00158ed8      mov   w1, 0x20
│           0x00158edc      mov   w3, aav.0x00000100
│           0x00158ee0      mov   w5, 0x20
│           0x00158ee4      mov   x2, x20                              ; int64_t arg3
│           0x00158ee8      bl    fcn.00163468
│           0x00158eec      mov   w8, 0x403c                           ; '<@'
│           0x00158ef0      movk  w8, 3, lsl 16
│           0x00158ef4      add   x0, x19, x8                          ; int64_t arg1
│           0x00158ef8      add   x4, var_58h                          ; int64_t arg5
│           0x00158efc      mov   w1, 4
│           0x00158f00      mov   w3, aav.0x00000100
│           0x00158f04      mov   w5, 4
│           0x00158f08      mov   x2, x20                              ; int64_t arg3
│           0x00158f0c      bl    fcn.00163468
│           0x00158f10      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158f14      tbz   w8, 9, 0x15902c
│           0x00158f18      ldr   x9, [x19, 0x10]                      ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00158f1c      orr   x9, x9, str.k__9Ki_8                 ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│           0x00158f20      str   x9, [x19, 0x10]
│           0x00158f24      b     0x15902c
│           0x00158f28      adrp  x1, 0x26b000
│           0x00158f2c      adrp  x0, 0x23a000
│           0x00158f30      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158f34      mov   w21, 1
│           0x00158f38      add   x0, x0, 0xb5c                        ; int64_t arg1
│           0x00158f3c      mov   w2, 0x18a
│           0x00158f40      mov   w4, 1
│           0x00158f44      mov   x3, x1                               ; int64_t arg4
│           0x00158f48      movk  w21, 0xf0ec, lsl 16
│           0x00158f4c      bl    fcn.0014c9f8
│           ; CODE XREFS from fcn.001584cc @ 0x158c74, 0x158cf4
│           0x00158f50      adrp  x0, 0x24c000
│           0x00158f54      adrp  x1, 0x247000
│           0x00158f58      add   x0, x0, 0x831
│           0x00158f5c      add   x1, x1, 0xfb8
│           0x00158f60      mov   w2, 0x22                             ; '"'
│           0x00158f64      b     0x158ac0
│           0x00158f68      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           ; CODE XREF from fcn.001584cc @ 0x158d88
│           0x00158f6c      tbz   w8, 0, 0x158f78
│           0x00158f70      orr   x8, x8, 0xc
│           0x00158f74      str   x8, [x19, 0x18]
│           0x00158f78      tbnz  w8, 0xa, 0x158c80
│           0x00158f7c      ldr   w8, [x19]
│           0x00158f80      cmp   w8, 2
│           0x00158f84      b.ne  0x158c80
│           0x00158f88      ldrb  w8, [x19, 0xa]                       ; [0xa:4]=0x6865
│           0x00158f8c      tbz   w8, 5, 0x158c80
│           0x00158f90      mov   x0, x19                              ; int64_t arg1
│           0x00158f94      bl    fcn.0015feac
│           0x00158f98      cbnz  w0, 0x158c80
│           0x00158f9c      adrp  x0, 0x243000
│           0x00158fa0      adrp  x1, 0x26b000
│           0x00158fa4      add   x0, x0, 0x4fc                        ; int64_t arg1
│           0x00158fa8      add   x1, x1, 0x89                         ; int64_t arg2
│           0x00158fac      mov   w2, 0x19e
│           0x00158fb0      bl    fcn.0014c9f8
│           0x00158fb4      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x00158fb8      orr   x8, x8, 0xc
│           0x00158fbc      str   x8, [x19, 0x18]
│           0x00158fc0      b     0x158c80
│           0x00158fc4      mov   x20, xzr
│           0x00158fc8      b     0x15902c
│           0x00158fcc      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x00158fd0      adrp  x1, 0x274000
│           0x00158fd4      mov   w21, 0x11
│           0x00158fd8      add   x0, x0, 0xa2e                        ; int64_t arg1
│           0x00158fdc      add   x1, x1, 0x20                         ; int64_t arg2
│           0x00158fe0      mov   w2, 0xb0
│           0x00158fe4      movk  w21, 0xf01f, lsl 16
│           0x00158fe8      bl    fcn.0014c9f8
│           0x00158fec      b     0x1590fc
│           0x00158ff0      adrp  x0, 0x257000
│           0x00158ff4      adrp  x1, 0x274000
│           0x00158ff8      mov   w3, 0x12
│           0x00158ffc      add   x0, x0, 0xa50                        ; int64_t arg1
│           0x00159000      add   x1, x1, 0x20                         ; int64_t arg2
│           0x00159004      mov   w2, 0xd1
│           0x00159008      movk  w3, 0xf057, lsl 16
│           0x0015900c      bl    fcn.0014c9f8
│           0x00159010      mov   w8, 0x3fdc
│           0x00159014      movk  w8, 3, lsl 16
│           0x00159018      add   x0, x19, x8                          ; int64_t arg1
│           0x0015901c      mov   w2, aav.0x00000100
│           0x00159020      mov   w1, wzr
│           0x00159024      bl    fcn.0014d8fc
│           0x00159028      ldr   x8, [x19, 0x18]                      ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           ; CODE XREFS from fcn.001584cc @ 0x158f24, 0x158fc8
│           0x0015902c      tbnz  w8, 2, 0x15909c
│           0x00159030      mov   x0, x19                              ; int64_t arg1
│           0x00159034      bl    fcn.0015b700
│           0x00159038      cbz   w0, 0x159054
│           0x0015903c      mov   w21, w0
│           0x00159040      cmp   w0, 1
│           0x00159044      b.ne  0x1590c4
│           0x00159048      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0015904c      orr   x8, x8, 4
│           0x00159050      str   x8, [x19, 0x10]
│           0x00159054      mov   w8, 0x125a
│           0x00159058      movk  w8, 3, lsl 16
│           0x0015905c      add   x22, x19, x8
│           0x00159060      add   x2, x19, 0x28                        ; aav.0x00000028 ; int64_t arg3
│           0x00159064      mov   w1, 7
│           0x00159068      mov   w3, 0x10
│           0x0015906c      mov   x0, x22                              ; int64_t arg1
│           0x00159070      bl    fcn.0015b03c
│           0x00159074      cbz   w0, 0x159114
│           0x00159078      mov   w21, w0
│           0x0015907c      adrp  x0, 0x271000
│           0x00159080      adrp  x1, 0x274000
│           0x00159084      add   x0, x0, 0xb55
│           0x00159088      add   x1, x1, 0x20
│           0x0015908c      mov   w2, 0xea
│           ; CODE XREF from fcn.001584cc @ 0x1591d4
│           0x00159090      mov   w3, w21
│           0x00159094      bl    fcn.0014c9f8
│           0x00159098      b     0x1590ec
│           0x0015909c      mov   w21, wzr
│           0x001590a0      b     0x1590ec
│           0x001590a4      adrp  x0, 0x26b000
│           0x001590a8      adrp  x1, 0x274000
│           0x001590ac      add   x0, x0, 0x42                         ; int64_t arg1
│           0x001590b0      add   x1, x1, 0x20                         ; int64_t arg2
│           0x001590b4      mov   w2, 0xd4
│           0x001590b8      mov   w3, w21
│           0x001590bc      bl    fcn.0014c9f8
│           0x001590c0      b     0x1590f0
│           0x001590c4      adrp  x0, 0x271000
│           0x001590c8      adrp  x1, 0x274000
│           0x001590cc      add   x0, x0, 0xb24                        ; int64_t arg1
│           0x001590d0      add   x1, x1, 0x20                         ; int64_t arg2
│           0x001590d4      mov   w2, 0xe3
│           0x001590d8      mov   w3, w21
│           0x001590dc      bl    fcn.0014c9f8
│           0x001590e0      ldr   x8, [x19, 0x10]                      ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x001590e4      orr   x8, x8, 0x80
│           0x001590e8      str   x8, [x19, 0x10]
│           ; CODE XREFS from fcn.001584cc @ 0x159098, 0x1590a0, 0x159180, 0x1591fc
│           0x001590ec      cbz   x20, 0x1590f8
│           ; CODE XREF from fcn.001584cc @ 0x1590c0
│           0x001590f0      mov   x0, x20                              ; int64_t arg1
│           0x001590f4      bl    fcn.00156708
│           0x001590f8      cbz   w21, 0x158c9c
│           ; CODE XREF from fcn.001584cc @ 0x158fec
│           0x001590fc      adrp  x0, 0x251000
│           0x00159100      adrp  x1, 0x247000
│           0x00159104      add   x0, x0, 0x396
│           0x00159108      add   x1, x1, 0xfb8
│           0x0015910c      mov   w2, 0x28
│           0x00159110      b     0x158ac0
│           0x00159114      ldrb  w8, [x23, 1]                         ; [0x1:4]=0x6b000000
│           0x00159118      cbz   w8, 0x159184
│           0x0015911c      mov   w8, 0x3fdc
│           0x00159120      movk  w8, 3, lsl 16
│           0x00159124      add   x21, x19, x8
│           0x00159128      mov   w1, aav.0x00000100
│           0x0015912c      mov   x0, x21                              ; int64_t arg1
│           0x00159130      bl    fcn.00163120
│           0x00159134      cbz   w0, 0x15919c
│           0x00159138      adrp  x22, 0x24f000
│           0x0015913c      add   x22, x22, 0x346
│           0x00159140      mov   x0, x22                              ; int64_t arg1
│           0x00159144      bl    fcn.0014db58
│           0x00159148      mov   x2, x0
│           0x0015914c      mov   x0, x21                              ; int64_t arg1
│           0x00159150      mov   x1, x22                              ; int64_t arg2
│           0x00159154      bl    fcn.0014d5c8
│           0x00159158      cbz   w0, 0x1591d8
│           0x0015915c      adrp  x0, 0x265000
│           0x00159160      adrp  x1, 0x274000
│           0x00159164      add   x0, x0, 0xe3                         ; int64_t arg1
│           0x00159168      add   x1, x1, 0x20                         ; int64_t arg2
│           0x0015916c      mov   w2, 0xf4
│           0x00159170      bl    fcn.0014c9f8
│           0x00159174      mov   w8, 0x11
│           0x00159178      movk  w8, 0xf01f, lsl 16
│           0x0015917c      add   w21, w8, 1
│           0x00159180      b     0x1590ec
│           0x00159184      adrp  x0, 0x26b000
│           0x00159188      adrp  x1, 0x274000
│           0x0015918c      add   x0, x0, 0x68                         ; int64_t arg1
│           0x00159190      add   x1, x1, 0x20                         ; int64_t arg2
│           0x00159194      mov   w2, 0xf9
│           0x00159198      bl    fcn.0014c9f8
│           0x0015919c      mov   w8, 0x3e5c                           ; '\>'
│           0x001591a0      movk  w8, 3, lsl 16
│           0x001591a4      add   x2, x19, x8                          ; int64_t arg3
│           0x001591a8      mov   w1, aav.0x00001000
│           0x001591ac      mov   w3, 0x20
│           0x001591b0      mov   x0, x22                              ; int64_t arg1
│           0x001591b4      bl    fcn.0015b03c
│           0x001591b8      mov   w21, w0
│           0x001591bc      cbz   w0, 0x1590ec
│           0x001591c0      adrp  x0, 0x245000
│           0x001591c4      adrp  x1, 0x274000
│           0x001591c8      add   x0, x0, 0xd99
│           0x001591cc      add   x1, x1, 0x20
│           0x001591d0      mov   w2, aav.0x00000100
│           0x001591d4      b     0x159090
│           0x001591d8      mov   w8, 0x3e5c                           ; '\>'
│           0x001591dc      mov   w9, 0x3ff0
│           0x001591e0      movk  w8, 3, lsl 16
│           0x001591e4      movk  w9, 3, lsl 16
│           0x001591e8      add   x0, x19, x8                          ; int64_t arg1
│           0x001591ec      add   x1, x19, x9                          ; int64_t arg2
│           0x001591f0      mov   w2, 0x20
│           0x001591f4      bl    fcn.0014d60c
│           0x001591f8      mov   w21, wzr
└           0x001591fc      b     0x1590ec
            ; CODE XREFS from fcn.001584cc @ 0x158520, 0x158524
