┌ fcn.0017f76c(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; var int64_t var_70h @ stack - 0x70
│           ; var int64_t var_6ch @ stack - 0x6c
│           ; var int64_t var_64h @ stack - 0x64
│           ; var int64_t var_5ch @ stack - 0x5c
│           ; var int64_t var_54h @ stack - 0x54
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017f76c      pacibsp
│           0x0017f770      sub   sp, sp, 0xb0
│           0x0017f774      stp   x29, x30, [var_30h]
│           0x0017f778      stp   x22, x21, [var_20h]
│           0x0017f77c      stp   x20, x19, [var_10h]
│           0x0017f780      add   x29, sp, 0x80
│           0x0017f784      mov   x21, x1                              ; arg2
│           0x0017f788      adrp  x1, 0x253000
│           0x0017f78c      mov   x22, x0                              ; arg1
│           0x0017f790      add   x19, x0, 0x24                        ; aav.0x00000024 ; arg1
│           0x0017f794      add   x1, x1, aav.0x00000394               ; int64_t arg2
│           0x0017f798      add   x0, x0, 0x24                         ; aav.0x00000024 ; int64_t arg1
│           0x0017f79c      mov   x20, x2                              ; arg3
│           0x0017f7a0      bl    fcn.0014da4c
│       ┌─< 0x0017f7a4      cbz   w0, 0x17f7f8
│       │   0x0017f7a8      ldrb  w8, [x22, 0x18]!                     ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x0017f7ac      sub   x9, x20, 1
│       │   0x0017f7b0      cmp   x20, 0
│       │   0x0017f7b4      lsr   x9, x9, 9
│       │   0x0017f7b8      ldrb  w10, [x22, 3]                        ; [0x3:4]=0x48776b00
│       │   0x0017f7bc      ldrb  w11, [x22, 2]                        ; [0x2:4]=0x776b0000
│       │   0x0017f7c0      ldrb  w12, [x22, 1]                        ; [0x1:4]=0x6b000000
│       │   0x0017f7c4      csinc x2, xzr, x9, eq
│       │   0x0017f7c8      bfi   x11, x10, 8, 8
│       │   0x0017f7cc      bfi   x8, x12, 8, 8
│       │   0x0017f7d0      bfi   x8, x11, 0x10, 0x10
│       │   0x0017f7d4      cmp   x2, x8
│      ┌──< 0x0017f7d8      b.ls  0x17f804
│      ││   0x0017f7dc      adrp  x0, 0x24a000
│      ││   0x0017f7e0      adrp  x1, 0x274000
│      ││   0x0017f7e4      add   x0, x0, 0xafc                        ; int64_t arg1
│      ││   0x0017f7e8      add   x1, x1, 0x6f2                        ; int64_t arg2
│      ││   0x0017f7ec      mov   x3, x19                              ; int64_t arg4
│      ││   0x0017f7f0      bl    fcn.0014c9f8
│     ┌───< 0x0017f7f4      b     0x17f928
│     ││└─> 0x0017f7f8      adrp  x0, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│     ││    0x0017f7fc      add   x0, x0, 0x70
│     ││┌─< 0x0017f800      b     0x17f920
│     │└──> 0x0017f804      add   x8, x21, x20
│     │ │   0x0017f808      sub   x1, x8, 0x40                         ; int64_t arg2
│     │ │   0x0017f80c      mov   x0, sp                               ; int64_t arg1
│     │ │   0x0017f810      mov   w2, 0x40
│     │ │   0x0017f814      bl    fcn.0014d60c
│     │ │   0x0017f818      mov   x0, sp                               ; int64_t arg1
│     │ │   0x0017f81c      add   x1, var_70h                          ; int64_t arg2
│     │ │   0x0017f820      bl    fcn.aav.0x00000318                   ; fcn.001430bc
│     │┌──< 0x0017f824      tbz   w0, 0, 0x17f8dc
│     │││   0x0017f828      adrp  x0, 0x241000
│     │││   0x0017f82c      add   x0, x0, 0x6ed                        ; int64_t arg1
│     │││   0x0017f830      add   x1, var_70h                          ; int64_t arg2
│     │││   0x0017f834      bl    fcn.0014c9f8
│     │││   0x0017f838      ldp   w1, w2, [var_6ch]
│     │││   0x0017f83c      adrp  x0, 0x25a000
│     │││   0x0017f840      add   x0, x0, 0x906                        ; int64_t arg1
│     │││   0x0017f844      bl    fcn.0014c9f8
│     │││   0x0017f848      ldp   w1, w8, [var_64h]
│     │││   0x0017f84c      adrp  x0, 0x243000
│     │││   0x0017f850      add   x0, x0, 0xba1                        ; int64_t arg1
│     │││   0x0017f854      bfi   x1, x8, 0x20, 0x20                   ; int64_t arg2
│     │││   0x0017f858      bl    fcn.0014c9f8
│     │││   0x0017f85c      ldp   w1, w8, [var_5ch]
│     │││   0x0017f860      adrp  x0, 0x27b000
│     │││   0x0017f864      add   x0, x0, 0xc2                         ; int64_t arg1
│     │││   0x0017f868      bfi   x1, x8, 0x20, 0x20                   ; int64_t arg2
│     │││   0x0017f86c      bl    fcn.0014c9f8
│     │││   0x0017f870      ldp   w1, w8, [var_54h]
│     │││   0x0017f874      adrp  x0, 0x257000
│     │││   0x0017f878      add   x0, x0, 0xf4c                        ; int64_t arg1
│     │││   0x0017f87c      bfi   x1, x8, 0x20, 0x20                   ; int64_t arg2
│     │││   0x0017f880      bl    fcn.0014c9f8
│     │││   0x0017f884      ldp   w9, w8, [var_54h]
│     │││   0x0017f888      bfi   x9, x8, 0x20, 0x20
│     │││   0x0017f88c      cmp   x9, 0x10, lsl 12
│    ┌────< 0x0017f890      b.ls  0x17f944
│    ││││   0x0017f894      adrp  x0, 0x23f000
│    ││││   0x0017f898      add   x0, x0, 0x11e                        ; int64_t arg1
│    ││││   0x0017f89c      bl    fcn.00146e6c
│    ││││   0x0017f8a0      adrp  x1, 0x27a000
│    ││││   0x0017f8a4      adrp  x2, 0x27d000
│    ││││   0x0017f8a8      adrp  x3, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│    ││││   0x0017f8ac      adrp  x5, 0x255000
│    ││││   0x0017f8b0      add   x1, x1, 0x385                        ; int64_t arg2
│    ││││   0x0017f8b4      add   x2, x2, 0x310                        ; int64_t arg3
│    ││││   0x0017f8b8      add   x3, x3, 0x816                        ; int64_t arg4
│    ││││   0x0017f8bc      add   x5, x5, 0xb5a                        ; int64_t arg6
│    ││││   0x0017f8c0      mov   x4, x19                              ; int64_t arg5
│    ││││   0x0017f8c4      mov   x6, xzr                              ; int64_t arg7
│    ││││   0x0017f8c8      mov   x7, xzr                              ; int64_t arg8
│    ││││   0x0017f8cc      bl    fcn.00146bf8
│    ││││   0x0017f8d0      adrp  x0, 0x25a000
│    ││││   0x0017f8d4      add   x0, x0, 0x91e
│   ┌─────< 0x0017f8d8      b     0x17f920
│   │││└──> 0x0017f8dc      adrp  x0, 0x23f000
│   │││ │   0x0017f8e0      add   x0, x0, 0x11e                        ; int64_t arg1
│   │││ │   0x0017f8e4      bl    fcn.00146e6c
│   │││ │   0x0017f8e8      adrp  x1, 0x27a000
│   │││ │   0x0017f8ec      adrp  x2, 0x26b000
│   │││ │   0x0017f8f0      adrp  x3, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│   │││ │   0x0017f8f4      adrp  x5, 0x23d000
│   │││ │   0x0017f8f8      add   x1, x1, 0x385                        ; int64_t arg2
│   │││ │   0x0017f8fc      add   x2, x2, 0x552                        ; int64_t arg3
│   │││ │   0x0017f900      add   x3, x3, 0x816                        ; int64_t arg4
│   │││ │   0x0017f904      add   x5, x5, 0x195                        ; int64_t arg6
│   │││ │   0x0017f908      mov   x4, x19                              ; int64_t arg5
│   │││ │   0x0017f90c      mov   x6, xzr                              ; int64_t arg7
│   │││ │   0x0017f910      mov   x7, xzr                              ; int64_t arg8
│   │││ │   0x0017f914      bl    fcn.00146bf8
│   │││ │   0x0017f918      adrp  x0, 0x269000
│   │││ │   0x0017f91c      add   x0, x0, 0x248
│   │││ │   ; CODE XREFS from fcn.0017f76c @ 0x17f800, 0x17f8d8
│   └───└─> 0x0017f920      mov   x1, x19                              ; int64_t arg2
│    ││     0x0017f924      bl    fcn.0014c9f8
│    ││     ; CODE XREF from fcn.0017f76c @ 0x17f7f4
│    │└───> 0x0017f928      mov   w0, -1
│    │      ; CODE XREF from fcn.0017f76c @ 0x17f968
│    │  ┌─> 0x0017f92c      ldp   x20, x19, [var_10h]
│    │  ╎   0x0017f930      ldp   x22, x21, [var_20h]
│    │  ╎   0x0017f934      ldp   x29, x30, [var_30h]
│    │  ╎   0x0017f938      add   sp, sp, 0xb0
│    │  ╎   0x0017f93c      autibsp
│    │  ╎   0x0017f940      ret
│    └────> 0x0017f944      ldp   w3, w8, [var_64h]
│       ╎   0x0017f948      adrp  x0, 0x248000
│       ╎   0x0017f94c      adrp  x1, 0x274000
│       ╎   0x0017f950      add   x0, x0, 0x632                        ; int64_t arg1
│       ╎   0x0017f954      bfi   x3, x8, 0x20, 0x20                   ; int64_t arg4
│       ╎   0x0017f958      add   x1, x1, 0x6f2                        ; int64_t arg2
│       ╎   0x0017f95c      mov   x2, x19                              ; unsigned long arg3
│       ╎   0x0017f960      bl    fcn.0014c9f8
│       ╎   0x0017f964      ldr   w0, [var_64h]                        ; aav.0x0000004c
│       ╎                                                              ; [0x4c:4]=0xaa0303f7
└       └─< 0x0017f968      b     0x17f92c
            ; CALL XREF from fcn.00114100 @ 0x11434c
