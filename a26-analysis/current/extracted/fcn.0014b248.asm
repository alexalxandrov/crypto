┌ fcn.0014b248(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg_2ch);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_a0h @ stack - 0xa0
│           ; var int64_t var_94h @ stack - 0x94
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           ; arg int64_t arg_2ch @ stack + 0x2c
│           0x0014b248      pacibsp
│           0x0014b24c      sub   sp, sp, 0xc0
│           0x0014b250      stp   x29, x30, [var_60h]
│           0x0014b254      stp   x28, x27, [var_50h]
│           0x0014b258      stp   x26, x25, [var_40h]
│           0x0014b25c      stp   x24, x23, [var_30h]
│           0x0014b260      stp   x22, x21, [var_20h]
│           0x0014b264      stp   x20, x19, [var_10h]
│           0x0014b268      add   x29, sp, 0x60
│           0x0014b26c      add   x8, x3, 0x18                         ; aav.0x00000018 ; arg4
│           0x0014b270      mov   x23, x3                              ; arg4
│           0x0014b274      mov   x22, x2                              ; arg3
│           0x0014b278      mov   x20, x1                              ; arg2
│           0x0014b27c      mov   x21, x0                              ; arg1
│           0x0014b280      mov   x27, xzr
│           0x0014b284      stp   x8, x1, [sp, 0x18]                   ; arg2
│           0x0014b288      add   x8, x3, 8                            ; "daeh" ; arg4
│           0x0014b28c      adrp  x11, 0x573000
│           0x0014b290      str   x8, [sp]
│           ; XREFS: CODE 0x0014b87c  CODE 0x0014b8b4  CODE 0x0014ba80
│           ; XREFS: CODE 0x0014baec  CODE 0x0014bd28  CODE 0x0014bd64
│ ┌┌┌┌┌┌┌─> 0x0014b294      sturb wzr, [var_10h + 0xc]                 ; arg1
│ ╎╎╎╎╎╎╎   0x0014b298      mov   x26, x22
│ ╎╎╎╎╎╎╎   0x0014b29c      ldrb  w8, [x26], 1
│ ────────< 0x0014b2a0      cbz   w8, 0x14b3a4
│ ╎╎╎╎╎╎╎   0x0014b2a4      mov   w28, 0x4240                          ; '@B'
│ ╎╎╎╎╎╎╎   0x0014b2a8      movk  w28, 0xf, lsl 16
│ ────────> 0x0014b2ac      adrp  x9, 0x14b000
│ ╎╎╎╎╎╎╎   0x0014b2b0      mov   x19, xzr
│ ╎╎╎╎╎╎╎   0x0014b2b4      add   x9, x9, str.cmd0_is_not_correct_0x_x ; 0xdc4 ; " cmd0 is not correct 0x%x\n"
│ ────────> 0x0014b2b8      cmp   x21, x9
│ ╎╎╎╎╎╎╎   0x0014b2bc      mov   w24, w8
│ ────────< 0x0014b2c0      b.eq  0x14b338
│ ╎╎╎╎╎╎╎   0x0014b2c4      ldrb  w8, [x11, 0x620]                     ; [0x620:4]=0x54ffffa1
│ ────────< 0x0014b2c8      tbnz  w8, 0, 0x14b32c
│ ╎╎╎╎╎╎╎   0x0014b2cc      bl    fcn.00100330
│ ╎╎╎╎╎╎╎   0x0014b2d0      mrs   x8, mpidr_el1
│ ╎╎╎╎╎╎╎   0x0014b2d4      ubfx  x9, x8, 8, 0x18
│ ╎╎╎╎╎╎╎   0x0014b2d8      tst   w8, 0x1000000
│ ╎╎╎╎╎╎╎   0x0014b2dc      udiv  x3, x0, x28                          ; int64_t arg4
│ ╎╎╎╎╎╎╎   0x0014b2e0      csel  w8, w8, w9, eq
│ ╎╎╎╎╎╎╎   0x0014b2e4      adrp  x1, 0x266000
│ ╎╎╎╎╎╎╎   0x0014b2e8      msub  x4, x3, x28, x0                      ; int64_t arg5
│ ╎╎╎╎╎╎╎   0x0014b2ec      and   w2, w8, 0xff
│ ╎╎╎╎╎╎╎   0x0014b2f0      add   x0, var_94h                          ; int64_t arg1
│ ╎╎╎╎╎╎╎   0x0014b2f4      add   x1, x1, 0xcb3                        ; int64_t arg2
│ ╎╎╎╎╎╎╎   0x0014b2f8      bl    fcn.0014aff0
│ ╎╎╎╎╎╎╎   0x0014b2fc      sxtw  x1, w0
│ ╎╎╎╎╎╎╎   0x0014b300      add   x0, var_94h
│ ╎╎╎╎╎╎╎   0x0014b304      mov   x2, x20
│ ╎╎╎╎╎╎╎   0x0014b308      blr   x21
│ ╎╎╎╎╎╎╎   0x0014b30c      mov   w25, w0
│ ────────< 0x0014b310      tbnz  w0, 0x1f, 0x14bd8c
│ ╎╎╎╎╎╎╎   0x0014b314      adrp  x9, 0x14b000
│ ╎╎╎╎╎╎╎   0x0014b318      add   x27, x27, w25, uxtw
│ ╎╎╎╎╎╎╎   0x0014b31c      mov   w8, 1
│ ╎╎╎╎╎╎╎   0x0014b320      adrp  x11, 0x573000
│ ╎╎╎╎╎╎╎   0x0014b324      add   x9, x9, str.cmd0_is_not_correct_0x_x ; 0xdc4 ; " cmd0 is not correct 0x%x\n"
│ ╎╎╎╎╎╎╎   0x0014b328      strb  w8, [x11, 0x620]
│ ────────> 0x0014b32c      and   w8, w24, 0xff
│ ╎╎╎╎╎╎╎   0x0014b330      cmp   w8, 0xa
│ ────────< 0x0014b334      b.eq  0x14b358
│ ────────> 0x0014b338      and   w8, w24, 0xff
│ ╎╎╎╎╎╎╎   0x0014b33c      cmp   w8, 0x25                             ; '%'
│ ────────< 0x0014b340      b.eq  0x14b3b0
│ ╎╎╎╎╎╎╎   0x0014b344      ldrb  w8, [x26, x19]
│ ╎╎╎╎╎╎╎   0x0014b348      add   x1, x19, 1
│ ╎╎╎╎╎╎╎   0x0014b34c      mov   x19, x1
│ ────────< 0x0014b350      cbnz  w8, 0x14b2b8
│ ────────< 0x0014b354      b     0x14b3bc
│ ────────> 0x0014b358      add   x1, x19, 1
│ ╎╎╎╎╎╎╎   0x0014b35c      mov   x0, x22
│ ╎╎╎╎╎╎╎   0x0014b360      mov   x2, x20
│ ╎╎╎╎╎╎╎   0x0014b364      blr   x21
│ ╎╎╎╎╎╎╎   0x0014b368      mov   w25, w0
│ ────────< 0x0014b36c      tbnz  w0, 0x1f, 0x14bd8c
│ ╎╎╎╎╎╎╎   0x0014b370      add   x9, x26, x19
│ ╎╎╎╎╎╎╎   0x0014b374      adrp  x11, 0x573000
│ ╎╎╎╎╎╎╎   0x0014b378      strb  wzr, [x11, 0x620]
│ ╎╎╎╎╎╎╎   0x0014b37c      mov   x26, x9
│ ╎╎╎╎╎╎╎   0x0014b380      ldrb  w8, [x26], 1
│ ╎╎╎╎╎╎╎   0x0014b384      add   x10, x22, x19
│ ╎╎╎╎╎╎╎   0x0014b388      add   x27, x27, w25, uxtw
│ ╎╎╎╎╎╎╎   0x0014b38c      add   x22, x10, 1
│ ────────< 0x0014b390      cbnz  w8, 0x14b2ac
│ ╎╎╎╎╎╎╎   0x0014b394      mov   x1, xzr
│ ╎╎╎╎╎╎╎   0x0014b398      add   x26, x9, 1
│ ╎╎╎╎╎╎╎   0x0014b39c      mov   w19, 1
│ ────────< 0x0014b3a0      b     0x14b3cc
│ ────────> 0x0014b3a4      mov   x1, xzr
│ ╎╎╎╎╎╎╎   0x0014b3a8      mov   w19, 1
│ ────────< 0x0014b3ac      b     0x14b3cc
│ ────────> 0x0014b3b0      add   x26, x26, x19
│ ╎╎╎╎╎╎╎   0x0014b3b4      mov   x1, x19
│ ────────< 0x0014b3b8      b     0x14b3c0
│ ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ 0x14b354
│ ────────> 0x0014b3bc      add   x26, x26, x1
│ ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ 0x14b3b8
│ ────────> 0x0014b3c0      and   w8, w24, 0xff
│ ╎╎╎╎╎╎╎   0x0014b3c4      cmp   w8, 0x25                             ; '%'
│ ╎╎╎╎╎╎╎   0x0014b3c8      cset  w19, ne
│ ╎╎╎╎╎╎╎   ; CODE XREFS from fcn.0014b248 @ 0x14b3a0, 0x14b3ac
│ ────────> 0x0014b3cc      mov   x0, x22
│ ╎╎╎╎╎╎╎   0x0014b3d0      mov   x2, x20
│ ╎╎╎╎╎╎╎   0x0014b3d4      blr   x21
│ ╎╎╎╎╎╎╎   0x0014b3d8      mov   w25, w0
│ ────────< 0x0014b3dc      tbnz  w0, 0x1f, 0x14bd8c
│ ╎╎╎╎╎╎╎   0x0014b3e0      add   x28, x27, w25, uxtw
│ ────────< 0x0014b3e4      tbnz  w19, 0, 0x14bd88
│ ╎╎╎╎╎╎╎   0x0014b3e8      adrp  x11, 0x28a000
│ ╎╎╎╎╎╎╎   0x0014b3ec      mov   w24, wzr
│ ╎╎╎╎╎╎╎   0x0014b3f0      mov   w19, wzr
│ ╎╎╎╎╎╎╎   0x0014b3f4      mov   w2, wzr
│ ╎╎╎╎╎╎╎   0x0014b3f8      add   x22, x26, 1
│ ╎╎╎╎╎╎╎   0x0014b3fc      add   x11, x11, aav.0x00000530
│ ────────< 0x0014b400      b     0x14b428
..
│ ╎╎╎╎╎╎╎   ; XREFS: CODE 0x0014b400  CODE 0x0014b458  CODE 0x0014b464
│ ╎╎╎╎╎╎╎   ; XREFS: CODE 0x0014b470  CODE 0x0014b47c  CODE 0x0014b488
│ ╎╎╎╎╎╎╎   ; XREFS: CODE 0x0014b494  CODE 0x0014b4ac  CODE 0x0014b4b8
│ ╎╎╎╎╎╎╎   ; XREFS: CODE 0x0014b4cc  CODE 0x0014b4d8  CODE 0x0014b4e4
│ ────────> 0x0014b428      ldurb w20, [x22, -1]                       ; [0x1:4]=0x6b000000
│ ╎╎╎╎╎╎╎   0x0014b42c      cmp   w20, 0x7a                            ; 'z'
│ ────────< 0x0014b430      b.hi  0x14b538
│ ╎╎╎╎╎╎╎   0x0014b434      adr   x8, 0x14b434
│ ╎╎╎╎╎╎╎   0x0014b438      ldrsw x9, [x11, x20, lsl 2]                ; [0x954:4]=0x4e524157 ; "WARNING: "
│ ╎╎╎╎╎╎╎   0x0014b43c      add   x8, x8, x9
│ ╎╎╎╎╎╎╎   0x0014b440      br    x8
..
│ ────────> 0x0014b538      ldr   x24, [var_a0h]                       ; aav.0x00000020
│ ╎╎╎╎╎╎╎                                                              ; [0x20:4]=0x58000940 ; "@\t"
│ ╎╎╎╎╎╎╎   0x0014b53c      mov   w8, 0x25                             ; '%'
│ ╎╎╎╎╎╎╎   0x0014b540      add   x0, var_94h
│ ╎╎╎╎╎╎╎   0x0014b544      mov   w1, 1
│ ╎╎╎╎╎╎╎   0x0014b548      mov   x2, x24
│ ╎╎╎╎╎╎╎   0x0014b54c      strb  w8, [var_94h]
│ ╎╎╎╎╎╎╎   0x0014b550      blr   x21
│ ╎╎╎╎╎╎╎   0x0014b554      cmp   w0, 0
│ ╎╎╎╎╎╎╎   0x0014b558      csel  w8, wzr, w0, lt
│ ────────< 0x0014b55c      tbnz  w0, 0x1f, 0x14bd84
│ ╎╎╎╎╎╎╎   0x0014b560      add   x0, arg_2ch
│ ╎╎╎╎╎╎╎   0x0014b564      mov   w1, 1
│ ╎╎╎╎╎╎╎   0x0014b568      mov   x2, x24
│ ╎╎╎╎╎╎╎   0x0014b56c      add   x19, x28, x8
│ ╎╎╎╎╎╎╎   0x0014b570      strb  w20, [var_94h]
│ ╎╎╎╎╎╎╎   0x0014b574      blr   x21
│ ╎╎╎╎╎╎╎   0x0014b578      add   x27, x19, w0, sxtw
│ ╎╎╎╎╎╎╎   0x0014b57c      mov   x20, x24
│ ╎╎╎╎╎╎╎   0x0014b580      adrp  x11, 0x573000
│ ────────< 0x0014b584      tbz   w0, 0x1f, 0x14b294
│ ────────< 0x0014b588      b     0x14bdb8
..
  ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x378
  ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x3f0
  ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x420
  ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x34c
  ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x444
  ╎╎╎╎╎╎╎   ; CODE XREFS from fcn.0014b248 @ +0x3cc, +0x3e0
  ╎╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x474
   ╎╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x52c
  ││╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x58c
  ││╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x6a8
  ││╎╎╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x698
  ││││╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x4fc
  ││││╎╎╎   ; CODE XREFS from fcn.0014b248 @ +0x6dc, +0x6f8, +0x7ac, +0x7c0, +0x950
  ││││╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x4cc
  ││││╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x2ec
  ││││╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x960
  │ ││╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x728
  │ ││╎╎╎   ; XREFS: CODE 0x0014b92c  CODE 0x0014b9a8  CODE 0x0014b9c0
  │ ││╎╎╎   ; XREFS: CODE 0x0014ba40  CODE 0x0014ba74  CODE 0x0014ba98
  │ ││╎╎╎   ; XREFS: CODE 0x0014baac  CODE 0x0014bae0  CODE 0x0014bb00
  │ ││╎╎╎   ; XREFS: CODE 0x0014bbc0  CODE 0x0014bd78
  │╎  ╎╎╎   ; CODE XREF from fcn.0014b248 @ +0x5fc
  │╎  ╎╎╎   ; CODE XREFS from fcn.0014b248 @ +0x39c, +0x660, +0x93c
│  ╎ │ │╎   ; CODE XREFS from fcn.0014bc04 @ 0x14bccc, 0x14bd3c
   ╎ │ │    ; CODE XREF from fcn.0014b248 @ +0x57c
│    │ ││   ; CODE XREF from fcn.0014b248 @ +0x5c4
│ ────────> 0x0014bd84      mov   w25, w0
│    │ ││   ; CODE XREFS from fcn.0014b248 @ 0x14b43c, 0x14b440
│ ───└─└──> 0x0014bd88      mov   x27, x28
│       │   ; CODE XREFS from fcn.0014b248 @ 0x17c, 0x14bdc0
│ ─────┌└─> 0x0014bd8c      cmp   w25, 0
│      ╎    0x0014bd90      csel  w0, w25, w27, lt
│      ╎    0x0014bd94      ldp   x20, x19, [var_10h]
│      ╎    0x0014bd98      ldp   x22, x21, [var_20h]
│      ╎    0x0014bd9c      ldp   x24, x23, [var_30h]
│      ╎    0x0014bda0      ldp   x26, x25, [var_40h]
│      ╎    0x0014bda4      ldp   x28, x27, [var_50h]
│      ╎    0x0014bda8      ldp   x29, x30, [var_60h]
│      ╎    0x0014bdac      add   sp, sp, 0xc0
│      ╎    0x0014bdb0      autibsp
│      ╎    0x0014bdb4      ret
│      ╎    ; CODE XREF from fcn.0014b248 @ 0x14b588
│ ────────> 0x0014bdb8      mov   w25, w0
│      ╎    0x0014bdbc      mov   x27, x19
└      └──< 0x0014bdc0      b     0x14bd8c
