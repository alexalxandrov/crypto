┌ fcn.001268b8(unsigned long arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6);
│           ; arg unsigned long arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; var int64_t var_7ch @ stack - 0x7c
│           ; var int64_t var_78h @ stack - 0x78
│           ; var int64_t var_74h @ stack - 0x74
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x001268b8      pacibsp
│           0x001268bc      sub   sp, sp, 0x80
│           0x001268c0      stp   x29, x30, [var_60h]
│           0x001268c4      stp   x28, x27, [var_50h]
│           0x001268c8      stp   x26, x25, [var_40h]
│           0x001268cc      stp   x24, x23, [var_30h]
│           0x001268d0      stp   x22, x21, [var_20h]
│           0x001268d4      stp   x20, x19, [var_10h]
│           0x001268d8      add   x29, sp, 0x20
│           0x001268dc      cmp   w0, 0                                ; arg1
│           0x001268e0      adrp  x20, 0x287000
│           0x001268e4      cset  w8, ne
│           0x001268e8      adrp  x23, 0x56f000
│           0x001268ec      mov   x21, xzr
│           0x001268f0      mov   w25, wzr                             ; arg1
│           0x001268f4      add   x20, x20, aav.0x00000290
│           0x001268f8      adrp  x24, 0x570000
│           0x001268fc      lsl   w8, w8, 3
│           0x00126900      mov   w19, 0x14
│           0x00126904      add   x23, x23, 0x918
│           0x00126908      stp   w0, w8, [var_7ch]                    ; arg1
│       ┌─> 0x0012690c      ldr   w27, [x20, x21, lsl 2]
│       ╎   0x00126910      bl    fcn.00126b3c
│       ╎   0x00126914      ldr   x1, [x24, 0xc70]                     ; [0xc70:4]=0x73206e6f ; int64_t arg2
│       ╎   0x00126918      mov   x26, x0
│       ╎   0x0012691c      mov   w2, 8
│       ╎   0x00126920      mov   w3, 0xa
│       ╎   0x00126924      mov   w4, 0x14
│       ╎   0x00126928      mov   w0, w27
│       ╎   0x0012692c      bl    fcn.00126760
│       ╎   0x00126930      cmp   w0, 1
│      ┌──< 0x00126934      b.eq  0x126a88
│      │╎   0x00126938      ldr   x28, [x24, 0xc70]                    ; [0xc70:4]=0x73206e6f
│      │╎   0x0012693c      ldr   w8, [var_78h]                        ; aav.0x00000008
│      │╎                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      │╎   0x00126940      mov   w22, 0x11
│      │╎   0x00126944      strb  w8, [x28, 0xc]
│      │╎   0x00126948      ldrh  w8, [x26, 0x1a06]                    ; [0x1a06:4]=0x1207100
│      │╎   0x0012694c      cmp   w8, 0xce
│     ┌───< 0x00126950      b.eq  0x1269d4
│     ││╎   0x00126954      cmp   w8, 0xad
│    ┌────< 0x00126958      b.eq  0x1269d4
│    │││╎   0x0012695c      cmp   w8, 0x98
│   ┌─────< 0x00126960      b.ne  0x1269c8
│   ││││╎   0x00126964      ldrh  w8, [x26, 0x758]                     ; [0x758:4]=0x2a1f03f3
│  ┌──────< 0x00126968      cbz   w8, 0x126994
│  │││││╎   0x0012696c      mov   x9, xzr
│  │││││╎   0x00126970      add   x10, x26, 0x75a
│  │││││╎   0x00126974      add   x12, var_74h
│ ┌───────> 0x00126978      strb  w8, [x12, x9]
│ ╎│││││╎   0x0012697c      ldrh  w8, [x10, x9, lsl 1]
│ ╎│││││╎   0x00126980      add   x11, x9, 1
│ ╎│││││╎   0x00126984      mov   x9, x11
│ └───────< 0x00126988      cbnz  w8, 0x126978
│  │││││╎   0x0012698c      and   x8, x11, 0xffffffff
│ ┌───────< 0x00126990      b     0x12699c
│ │└──────> 0x00126994      mov   x8, xzr
│ │ ││││╎   0x00126998      add   x12, var_74h
│ │ ││││╎   ; CODE XREF from fcn.001268b8 @ 0x126990
│ └───────> 0x0012699c      adrp  x1, 0x24c000
│   ││││╎   0x001269a0      add   x0, var_74h                          ; int64_t arg1
│   ││││╎   0x001269a4      add   x1, x1, 0x27f                        ; int64_t arg2
│   ││││╎   0x001269a8      strb  wzr, [x12, x8]
│   ││││╎   0x001269ac      bl    fcn.0014da4c
│  ┌──────< 0x001269b0      cbz   w0, 0x1269d0
│  │││││╎   0x001269b4      adrp  x1, 0x259000
│  │││││╎   0x001269b8      add   x0, var_74h                          ; int64_t arg1
│  │││││╎   0x001269bc      add   x1, x1, 0xf6f                        ; int64_t arg2
│  │││││╎   0x001269c0      bl    fcn.0014da4c
│ ┌───────< 0x001269c4      cbz   w0, 0x1269d0
│ ││└─────> 0x001269c8      mov   w22, 0x11
│ ││┌─────< 0x001269cc      b     0x1269d4
│ └└──────> 0x001269d0      mov   w22, 0x10
│   ││││╎   ; CODE XREF from fcn.001268b8 @ 0x1269cc
│   └└└───> 0x001269d4      adrp  x1, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│      │╎   0x001269d8      add   x0, var_74h                          ; int64_t arg1
│      │╎   0x001269dc      add   x1, x1, 0x6f3                        ; int64_t arg2
│      │╎   0x001269e0      mov   w2, w27
│      │╎   0x001269e4      bl    fcn.0014aff0
│      │╎   0x001269e8      add   x0, var_74h                          ; int64_t arg1
│      │╎   0x001269ec      bl    fcn.00204950
│     ┌───< 0x001269f0      cbz   x0, 0x126a5c
│     ││╎   0x001269f4      ldr   x26, [x0, 0x40]                      ; aav.0x00000040
│     ││╎                                                              ; [0x40:4]=0xaa0003f4
│     ││╎   0x001269f8      mov   w2, 0x10
│     ││╎   0x001269fc      mov   x0, x23                              ; int64_t arg1
│     ││╎   0x00126a00      mov   w1, wzr
│     ││╎   0x00126a04      str   w19, [x23, 0x10]
│     ││╎   0x00126a08      str   x26, [x23, 0x68]
│     ││╎   0x00126a0c      str   x28, [x23, 0x18]
│     ││╎   0x00126a10      bl    fcn.0014d8fc
│     ││╎   0x00126a14      ldr   x8, [x26, aav.0x00000150]            ; [0x150:4]=0x2033e00
│     ││╎   0x00126a18      mov   w9, 0x55                             ; 'U'
│     ││╎   0x00126a1c      mov   x0, x23
│     ││╎   0x00126a20      strb  w9, [x23]
│     ││╎   0x00126a24      strb  w22, [x23, 1]
│     ││╎   0x00126a28      strb  w19, [x23, 8]
│     ││╎   0x00126a2c      blr   x8
│     ││╎   0x00126a30      mov   w1, w0
│    ┌────< 0x00126a34      cbnz  w0, 0x126a4c
│    │││╎   0x00126a38      adrp  x8, 0x56f000
│    │││╎   0x00126a3c      ldrb  w0, [x8, 0x978]                      ; [0x978:4]=0x5f464f5f ; "_OF_LDFW_SP_SSP] USB Loading Done"
│    │││╎   0x00126a40      bl    fcn.00125930
│    │││╎   0x00126a44      mov   w1, w0
│   ┌─────< 0x00126a48      cbz   w0, 0x126aa0
│   │└────> 0x00126a4c      adrp  x0, 0x253000
│   │ ││╎   0x00126a50      add   x0, x0, 0x6a3                        ; int64_t arg1
│   │ ││╎   0x00126a54      bl    fcn.0014c9f8
│   │┌────< 0x00126a58      b     0x126a74
│   ││└───> 0x00126a5c      adrp  x0, 0x266000
│   ││ │╎   0x00126a60      adrp  x1, 0x271000
│   ││ │╎   0x00126a64      add   x2, var_74h                          ; unsigned long arg3
│   ││ │╎   0x00126a68      add   x0, x0, 0xa2e                        ; int64_t arg1
│   ││ │╎   0x00126a6c      add   x1, x1, 0x6d3                        ; int64_t arg2
│   ││ │╎   0x00126a70      bl    fcn.0014c9f8
│   ││ │╎   ; CODE XREF from fcn.001268b8 @ 0x126a58
│   │└────> 0x00126a74      adrp  x0, 0x266000
│   │  │╎   0x00126a78      mov   w2, 1
│   │  │╎   0x00126a7c      add   x0, x0, 0xa50                        ; int64_t arg1
│   │  │╎   0x00126a80      mov   w1, w27
│   │  │╎   0x00126a84      bl    fcn.0014c9f8
│   │  └──> 0x00126a88      mov   w8, wzr
│   │   ╎   ; CODE XREF from fcn.001268b8 @ 0x126adc
│   │  ┌──> 0x00126a8c      add   x21, x21, 1
│   │  ╎╎   0x00126a90      cmp   x21, 4
│   │  ╎╎   0x00126a94      add   w25, w25, w8
│   │  ╎└─< 0x00126a98      b.ne  0x12690c
│   │  ╎┌─< 0x00126a9c      b     0x126ae0
│   └─────> 0x00126aa0      ldr   w8, [var_7ch]                        ; str.kwH_daeh
│      ╎│                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│     ┌───< 0x00126aa4      cbz   w8, 0x126abc
│     │╎│   0x00126aa8      cmp   w8, 1
│    ┌────< 0x00126aac      b.ne  0x126ac8
│    ││╎│   0x00126ab0      adrp  x0, 0x276000
│    ││╎│   0x00126ab4      add   x0, x0, 0xb5
│   ┌─────< 0x00126ab8      b     0x126ad0
│   ││└───> 0x00126abc      adrp  x0, 0x245000
│   ││ ╎│   0x00126ac0      add   x0, x0, 0x7a3
│   ││┌───< 0x00126ac4      b     0x126ad0
│   │└────> 0x00126ac8      adrp  x0, 0x259000
│   │ │╎│   0x00126acc      add   x0, x0, 0xf80
│   │ │╎│   ; CODE XREFS from fcn.001268b8 @ 0x126ab8, 0x126ac4
│   └─└───> 0x00126ad0      mov   w1, w27
│      ╎│   0x00126ad4      bl    fcn.0014c9f8
│      ╎│   0x00126ad8      mov   w8, 1
│      └──< 0x00126adc      b     0x126a8c
│       │   ; CODE XREF from fcn.001268b8 @ 0x126a9c
│       └─> 0x00126ae0      and   w19, w25, 0xff
│           0x00126ae4      cmp   w19, 4
│       ┌─< 0x00126ae8      b.ne  0x126af4
│       │   0x00126aec      mov   w19, wzr
│      ┌──< 0x00126af0      b     0x126b14
│      │└─> 0x00126af4      mov   w8, 4
│      │    0x00126af8      adrp  x0, 0x250000
│      │    0x00126afc      adrp  x1, 0x268000
│      │    0x00126b00      sub   w3, w8, w19
│      │    0x00126b04      add   x0, x0, 0xfb4                        ; int64_t arg1
│      │    0x00126b08      add   x1, x1, aav.0x00000810               ; "used chip.\r\n" ; int64_t arg2
│      │    0x00126b0c      mov   w2, 4
│      │    0x00126b10      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.001268b8 @ 0x126af0
│      └──> 0x00126b14      mov   w0, w19
│           0x00126b18      ldp   x20, x19, [var_10h]
│           0x00126b1c      ldp   x22, x21, [var_20h]
│           0x00126b20      ldp   x24, x23, [var_30h]
│           0x00126b24      ldp   x26, x25, [var_40h]
│           0x00126b28      ldp   x28, x27, [var_50h]
│           0x00126b2c      ldp   x29, x30, [var_60h]
│           0x00126b30      add   sp, sp, 0x80
│           0x00126b34      autibsp
└           0x00126b38      ret
            ; XREFS(22)
