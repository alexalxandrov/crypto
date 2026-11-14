┌ fcn.0012b810(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           ; var int64_t var_88h @ stack - 0x88
│           ; var int64_t var_80h @ stack - 0x80
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_5ch @ stack - 0x5c
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012b810      pacibsp
│           0x0012b814      sub   sp, sp, 0x90
│           0x0012b818      stp   x29, x30, [var_40h]
│           0x0012b81c      stp   x24, x23, [var_30h]
│           0x0012b820      stp   x22, x21, [var_20h]
│           0x0012b824      stp   x20, x19, [var_10h]
│           0x0012b828      add   x29, sp, 0x50
│           0x0012b82c      sturh wzr, [var_10h + 0x8]
│           0x0012b830      stur  xzr, [var_10h]
│           0x0012b834      sturb wzr, [var_20h + 0xc]                 ; arg1
│           0x0012b838      stur  wzr, [var_20h + 0x8]                 ; arg1
│           0x0012b83c      strb  wzr, [var_5ch + 0x2]                 ; arg1
│           0x0012b840      strh  wzr, [var_5ch]
│           0x0012b844      str   wzr, [var_68h + 0x8]                 ; arg1
│           0x0012b848      str   xzr, [var_68h]
│           0x0012b84c      str   wzr, [var_80h + 0x10]                ; arg1
│           0x0012b850      stp   xzr, xzr, [var_80h]
│           0x0012b854      strb  wzr, [var_88h + 0x4]                 ; arg1
│           0x0012b858      str   wzr, [var_88h]                       ; arg1
│           0x0012b85c      bl    fcn.00129f44
│           0x0012b860      ldr   x8, [x0, 0x28]                       ; aav.0x00000028
│                                                                      ; [0x28:4]=0x350000c1
│           0x0012b864      ldr   w9, [x0, 0x38]                       ; aav.0x00000038
│                                                                      ; [0x38:4]=0x9100023f ; "?\U00000002"
│           0x0012b868      mov   x22, x0
│           0x0012b86c      mov   w19, 1
│           0x0012b870      mul   x8, x8, x9
│           0x0012b874      lsr   x8, x8, 0x1e
│       ┌─< 0x0012b878      cbz   w8, 0x12b88c
│      ┌──> 0x0012b87c      cmp   w8, 1
│      ╎│   0x0012b880      lsr   w8, w8, 1
│      ╎│   0x0012b884      lsl   w19, w19, 1
│      └──< 0x0012b888      b.hi  0x12b87c
│       └─> 0x0012b88c      adrp  x1, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x0012b890      add   x1, x1, 0x5ac                        ; int64_t arg2
│           0x0012b894      add   x0, var_88h                          ; int64_t arg1
│           0x0012b898      mov   w2, w19
│           0x0012b89c      bl    fcn.0014aff0
│           0x0012b8a0      adrp  x0, 0x260000
│           0x0012b8a4      add   x0, x0, 0x7e5                        ; int64_t arg1
│           0x0012b8a8      add   x1, x22, 0x12c                       ; int64_t arg2
│           0x0012b8ac      add   x21, x22, 0x12c
│           0x0012b8b0      bl    fcn.0014c9f8
│           0x0012b8b4      adrp  x0, 0x27c000
│           0x0012b8b8      add   x0, x0, 0xa63                        ; int64_t arg1
│           0x0012b8bc      add   x1, x22, 0x146                       ; int64_t arg2
│           0x0012b8c0      add   x20, x22, 0x146
│           0x0012b8c4      bl    fcn.0014c9f8
│           0x0012b8c8      sub   x0, var_10h + 0x20                   ; int64_t arg1
│           0x0012b8cc      bl    fcn.0012b714
│       ┌─< 0x0012b8d0      cbz   w0, 0x12b8e4
│       │   0x0012b8d4      mov   w1, w0
│       │   0x0012b8d8      adrp  x0, 0x271000
│       │   0x0012b8dc      add   x0, x0, 0x790                        ; int64_t arg1
│       │   0x0012b8e0      bl    fcn.0014c9f8
│       └─> 0x0012b8e4      ldurb w11, [var_10h]
│           0x0012b8e8      mov   w9, 0x57                             ; 'W'
│           0x0012b8ec      mov   w10, 0x30
│           0x0012b8f0      ldurb w12, [var_10h + 0x1]
│           0x0012b8f4      cmp   w11, 0xa0
│           0x0012b8f8      csel  w13, w10, w9, lo
│           0x0012b8fc      add   w13, w13, w11, lsr 4
│           0x0012b900      and   w11, w11, 0xf
│           0x0012b904      cmp   w11, 0xa
│           0x0012b908      strb  w13, [var_80h]
│           0x0012b90c      csel  w13, w10, w9, lo
│           0x0012b910      add   w11, w13, w11
│           0x0012b914      cmp   w12, 0xa0
│           0x0012b918      ldurb w13, [var_10h + 0x2]
│           0x0012b91c      strb  w11, [var_80h + 0x1]
│           0x0012b920      csel  w11, w10, w9, lo
│           0x0012b924      add   w11, w11, w12, lsr 4
│           0x0012b928      and   w12, w12, 0xf
│           0x0012b92c      cmp   w12, 0xa
│           0x0012b930      strb  w11, [var_80h + 0x2]
│           0x0012b934      csel  w11, w10, w9, lo
│           0x0012b938      add   w11, w11, w12
│           0x0012b93c      cmp   w13, 0xa0
│           0x0012b940      ldurb w12, [var_10h + 0x3]
│           0x0012b944      strb  w11, [var_80h + 0x3]
│           0x0012b948      csel  w11, w10, w9, lo
│           0x0012b94c      add   w11, w11, w13, lsr 4
│           0x0012b950      and   w13, w13, 0xf
│           0x0012b954      cmp   w13, 0xa
│           0x0012b958      strb  w11, [var_80h + 0x4]
│           0x0012b95c      csel  w11, w10, w9, lo
│           0x0012b960      add   w11, w11, w13
│           0x0012b964      cmp   w12, 0xa0
│           0x0012b968      ldurb w13, [var_10h + 0x4]
│           0x0012b96c      strb  w11, [var_80h + 0x5]
│           0x0012b970      csel  w11, w10, w9, lo
│           0x0012b974      add   w11, w11, w12, lsr 4
│           0x0012b978      and   w12, w12, 0xf
│           0x0012b97c      cmp   w12, 0xa
│           0x0012b980      strb  w11, [var_80h + 0x6]
│           0x0012b984      csel  w11, w10, w9, lo
│           0x0012b988      add   w11, w11, w12
│           0x0012b98c      cmp   w13, 0xa0
│           0x0012b990      ldurb w12, [var_10h + 0x5]
│           0x0012b994      strb  w11, [var_80h + 0x7]
│           0x0012b998      csel  w11, w10, w9, lo
│           0x0012b99c      add   w11, w11, w13, lsr 4
│           0x0012b9a0      and   w13, w13, 0xf
│           0x0012b9a4      cmp   w13, 0xa
│           0x0012b9a8      strb  w11, [var_80h + 0x8]
│           0x0012b9ac      csel  w11, w10, w9, lo
│           0x0012b9b0      add   w11, w11, w13
│           0x0012b9b4      cmp   w12, 0xa0
│           0x0012b9b8      ldurb w13, [var_10h + 0x6]
│           0x0012b9bc      strb  w11, [var_80h + 0x9]
│           0x0012b9c0      csel  w11, w10, w9, lo
│           0x0012b9c4      add   w11, w11, w12, lsr 4
│           0x0012b9c8      and   w12, w12, 0xf
│           0x0012b9cc      cmp   w12, 0xa
│           0x0012b9d0      strb  w11, [var_80h + 0xa]
│           0x0012b9d4      csel  w11, w10, w9, lo
│           0x0012b9d8      add   w11, w11, w12
│           0x0012b9dc      cmp   w13, 0xa0
│           0x0012b9e0      ldurb w12, [var_10h + 0x7]
│           0x0012b9e4      strb  w11, [var_80h + 0xb]
│           0x0012b9e8      csel  w11, w10, w9, lo
│           0x0012b9ec      add   w11, w11, w13, lsr 4
│           0x0012b9f0      and   w13, w13, 0xf
│           0x0012b9f4      cmp   w13, 0xa
│           0x0012b9f8      strb  w11, [var_80h + 0xc]
│           0x0012b9fc      csel  w11, w10, w9, lo
│           0x0012ba00      add   w11, w11, w13
│           0x0012ba04      cmp   w12, 0xa0
│           0x0012ba08      ldurb w13, [var_10h + 0x8]
│           0x0012ba0c      strb  w11, [var_80h + 0xd]
│           0x0012ba10      csel  w11, w10, w9, lo
│           0x0012ba14      add   w11, w11, w12, lsr 4
│           0x0012ba18      and   w12, w12, 0xf
│           0x0012ba1c      cmp   w12, 0xa
│           0x0012ba20      strb  w11, [var_80h + 0xe]
│           0x0012ba24      csel  w11, w10, w9, lo
│           0x0012ba28      add   w11, w11, w12
│           0x0012ba2c      cmp   w13, 0xa0
│           0x0012ba30      ldurb w12, [var_10h + 0x9]
│           0x0012ba34      strb  w11, [var_80h + 0xf]
│           0x0012ba38      csel  w11, w10, w9, lo
│           0x0012ba3c      add   w11, w11, w13, lsr 4
│           0x0012ba40      and   w13, w13, 0xf
│           0x0012ba44      cmp   w13, 0xa
│           0x0012ba48      strb  w11, [var_80h + 0x10]
│           0x0012ba4c      csel  w11, w10, w9, lo
│           0x0012ba50      add   w11, w11, w13
│           0x0012ba54      cmp   w12, 0xa0
│           0x0012ba58      strb  w11, [var_80h + 0x11]
│           0x0012ba5c      csel  w11, w10, w9, lo
│           0x0012ba60      add   w11, w11, w12, lsr 4
│           0x0012ba64      and   w12, w12, 0xf
│           0x0012ba68      cmp   w12, 0xa
│           0x0012ba6c      csel  w9, w10, w9, lo
│           0x0012ba70      add   w9, w9, w12
│           0x0012ba74      mov   x8, xzr
│           0x0012ba78      strb  w9, [var_80h + 0x13]
│           0x0012ba7c      add   x9, var_80h
│           0x0012ba80      strb  w11, [var_80h + 0x12]
│       ┌─< 0x0012ba84      b     0x12ba94
│       │   ; CODE XREF from fcn.0012b810 @ 0x12baac
│     ┌┌──> 0x0012ba88      add   x8, x8, 1
│     ╎╎│   0x0012ba8c      cmp   x8, 0x14
│    ┌────< 0x0012ba90      b.eq  0x12bab0
│    │╎╎│   ; CODE XREF from fcn.0012b810 @ 0x12ba84
│    │╎╎└─> 0x0012ba94      ldrb  w10, [x9, x8]
│    │╎╎    0x0012ba98      sub   w11, w10, 0x61
│    │╎╎    0x0012ba9c      cmp   w11, 0x19
│    │└───< 0x0012baa0      b.hi  0x12ba88
│    │ ╎    0x0012baa4      sub   w10, w10, 0x20
│    │ ╎    0x0012baa8      strb  w10, [x9, x8]
│    │ └──< 0x0012baac      b     0x12ba88
│    └────> 0x0012bab0      add   x23, var_80h
│           0x0012bab4      sub   x0, var_10h + 0x28                   ; int64_t arg1
│           0x0012bab8      orr   x1, x23, 2                           ; int64_t arg2
│           0x0012babc      mov   w2, 4
│           0x0012bac0      bl    fcn.0014d60c
│           0x0012bac4      add   x0, var_68h                          ; int64_t arg1
│           0x0012bac8      orr   x1, x23, 6                           ; int64_t arg2
│           0x0012bacc      mov   w2, 0xe
│           0x0012bad0      bl    fcn.0014d60c
│           0x0012bad4      add   x22, x22, 0x135
│           0x0012bad8      adrp  x0, 0x251000
│           0x0012badc      add   x0, x0, 0xca                         ; int64_t arg1
│           0x0012bae0      mov   x1, x22                              ; int64_t arg2
│           0x0012bae4      sturb wzr, [var_20h + 0xc]
│           0x0012bae8      strb  wzr, [var_5ch + 0x2]
│           0x0012baec      bl    fcn.0014c9f8
│           0x0012baf0      adrp  x0, 0x278000
│           0x0012baf4      add   x0, x0, 0x5f8                        ; int64_t arg1
│           0x0012baf8      add   x1, var_88h                          ; int64_t arg2
│           0x0012bafc      bl    fcn.0014c9f8
│           0x0012bb00      adrp  x0, 0x262000
│           0x0012bb04      add   x0, x0, 0xa35                        ; int64_t arg1
│           0x0012bb08      sub   x1, var_10h + 0x28                   ; int64_t arg2
│           0x0012bb0c      bl    fcn.0014c9f8
│           0x0012bb10      adrp  x23, 0x570000
│           0x0012bb14      add   x23, x23, 0xc78
│           0x0012bb18      mov   w2, 0x3e                             ; '>'
│           0x0012bb1c      mov   x0, x23                              ; int64_t arg1
│           0x0012bb20      mov   w1, wzr
│           0x0012bb24      bl    fcn.0014d8fc
│           0x0012bb28      adrp  x24, 0x242000
│           0x0012bb2c      add   x24, x24, 0xac1
│           0x0012bb30      add   x3, var_80h                          ; int64_t arg5
│           0x0012bb34      mov   w1, 0x15
│           0x0012bb38      mov   x0, x23                              ; int64_t arg1
│           0x0012bb3c      mov   x2, x24                              ; int64_t arg4
│           0x0012bb40      bl    fcn.0014b120
│           0x0012bb44      adrp  x2, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x0012bb48      add   x2, x2, 0x5ac                        ; int64_t arg4
│           0x0012bb4c      add   x0, x23, 0x15                        ; int64_t arg1
│           0x0012bb50      mov   w1, 5
│           0x0012bb54      mov   w3, w19
│           0x0012bb58      bl    fcn.0014b120
│           0x0012bb5c      add   x0, x23, 0x1a                        ; int64_t arg1
│           0x0012bb60      mov   w1, 9
│           0x0012bb64      mov   x2, x24                              ; int64_t arg4
│           0x0012bb68      mov   x3, x21                              ; int64_t arg5
│           0x0012bb6c      bl    fcn.0014b120
│           0x0012bb70      add   x0, x23, 0x23                        ; int64_t arg1
│           0x0012bb74      mov   w1, 0x11
│           0x0012bb78      mov   x2, x24                              ; int64_t arg4
│           0x0012bb7c      mov   x3, x22                              ; int64_t arg5
│           0x0012bb80      bl    fcn.0014b120
│           0x0012bb84      add   x0, x23, 0x34                        ; int64_t arg1
│           0x0012bb88      mov   w1, 5
│           0x0012bb8c      mov   x2, x24                              ; int64_t arg3
│           0x0012bb90      mov   x3, x20                              ; int64_t arg4
│           0x0012bb94      bl    fcn.0014b120
│           0x0012bb98      bl    fcn.0012bbe0
│           0x0012bb9c      adrp  x8, 0x276000
│           0x0012bba0      adrp  x9, 0x273000
│           0x0012bba4      add   x8, x8, 0x20d
│           0x0012bba8      add   x9, x9, 0xa8f
│           0x0012bbac      cmp   w0, 0
│           0x0012bbb0      csel  x3, x9, x8, eq                       ; int64_t arg5
│           0x0012bbb4      add   x0, x23, 0x39                        ; int64_t arg1
│           0x0012bbb8      mov   w1, 5
│           0x0012bbbc      mov   x2, x24                              ; int64_t arg4
│           0x0012bbc0      bl    fcn.0014b120
│           0x0012bbc4      ldp   x20, x19, [var_10h]
│           0x0012bbc8      ldp   x22, x21, [var_20h]
│           0x0012bbcc      ldp   x24, x23, [var_30h]
│           0x0012bbd0      ldp   x29, x30, [var_40h]
│           0x0012bbd4      add   sp, sp, 0x90
│           0x0012bbd8      autibsp
└           0x0012bbdc      ret
            ; CALL XREF from fcn.0012b810 @ 0x12bb98
            ; CALL XREF from fcn.0012c4dc @ 0x12c54c
            ; CALL XREF from fcn.0012caa0 @ 0x12cab4
            ; CALL XREF from fcn.00138ddc @ 0x138ea8
