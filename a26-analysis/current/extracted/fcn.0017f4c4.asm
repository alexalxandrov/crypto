┌ fcn.0017f4c4(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017f4c4      pacibsp
│           0x0017f4c8      stp   x29, x30, [var_50h]!
│           0x0017f4cc      stp   x26, x25, [var_40h]
│           0x0017f4d0      stp   x24, x23, [var_30h]
│           0x0017f4d4      stp   x22, x21, [var_20h]
│           0x0017f4d8      stp   x20, x19, [var_10h]
│           0x0017f4dc      mov   x29, sp
│           0x0017f4e0      mov   w22, w3                              ; arg4
│           0x0017f4e4      mov   w23, w2                              ; arg3
│           0x0017f4e8      mov   x21, x1                              ; arg2
│           0x0017f4ec      mov   x19, x0                              ; arg1
│       ┌─< 0x0017f4f0      cbz   x4, 0x17f5d8
│      ┌──> 0x0017f4f4      adrp  x8, 0x5a0000
│      ╎│   0x0017f4f8      ldrb  w8, [x8, aav.0x000006d4]             ; [0x6d4:4]=0xb9400129 ; ")\U00000001@\xb9\U0000001f\U00000001\tk\U00000001\xda\xffT)"
│     ┌───< 0x0017f4fc      tbz   w8, 0, 0x17f5a4
│    ┌────< 0x0017f500      cbz   w22, 0x17f730
│    ││╎│   0x0017f504      adrp  x24, 0x5a0000
│    ││╎│   0x0017f508      ldr   w2, [x24, 0x6d0]                     ; [0x6d0:4]=0xb94043e8
│    ││╎│   0x0017f50c      mov   w0, aav.0x00001000
│    ││╎│   0x0017f510      movk  w0, 0xcc00, lsl 16
│    ││╎│   0x0017f514      mov   w25, aav.0x00001000
│    ││╎│   0x0017f518      mov   w1, wzr
│    ││╎│   0x0017f51c      movk  w25, 0xcc00, lsl 16
│    ││╎│   0x0017f520      bl    fcn.0014d8fc
│    ││╎│   0x0017f524      sxtw  x1, w23                              ; int64_t arg2
│    ││╎│   0x0017f528      mov   w3, -0x34000000
│    ││╎│   0x0017f52c      mov   x0, x21                              ; int64_t arg1
│    ││╎│   0x0017f530      mov   x2, x1                               ; int64_t arg3
│    ││╎│   0x0017f534      mov   w4, w22
│    ││╎│   0x0017f538      bl    fcn.001b448c
│    ││╎│   0x0017f53c      mov   w1, aav.0x00001000
│    ││╎│   0x0017f540      mov   w0, -0x34000000
│    ││╎│   0x0017f544      movk  w1, 0xcc00, lsl 16
│    ││╎│   0x0017f548      bl    fcn.001b4548
│    ││╎│   0x0017f54c      ldr   w8, [x24, 0x6d0]                     ; [0x6d0:4]=0xb94043e8
│    ││╎│   0x0017f550      mov   w0, aav.0x00001000
│    ││╎│   0x0017f554      orr   x2, x25, 0x40                        ; int64_t arg3
│    ││╎│   0x0017f558      movk  w0, 0xcc00, lsl 16
│    ││╎│   0x0017f55c      add   w1, w8, 0x210
│    ││╎│   0x0017f560      bl    fcn.0017f3dc
│    ││╎│   0x0017f564      adrp  x8, 0x25c000
│    ││╎│   0x0017f568      adrp  x9, 0x25e000
│    ││╎│   0x0017f56c      mov   w21, w0
│    ││╎│   0x0017f570      add   x8, x8, 0x9d4
│    ││╎│   0x0017f574      add   x9, x9, 0xb38
│    ││╎│   0x0017f578      cmp   w0, 0
│    ││╎│   0x0017f57c      adrp  x0, 0x248000
│    ││╎│   0x0017f580      adrp  x1, 0x23d000
│    ││╎│   0x0017f584      csel  x3, x9, x8, lt                       ; int64_t arg4
│    ││╎│   0x0017f588      add   x0, x0, 0x625                        ; int64_t arg1
│    ││╎│   0x0017f58c      add   x1, x1, aav.0x00000180               ; int64_t arg2
│    ││╎│   0x0017f590      mov   x2, x19                              ; unsigned long arg3
│    ││╎│   0x0017f594      bl    fcn.0014c9f8
│   ┌─────< 0x0017f598      cbz   w21, 0x17f638
│   │││╎│   0x0017f59c      mov   w0, 1
│  ┌──────< 0x0017f5a0      b     0x17f63c
│ ┌───└───> 0x0017f5a4      cbz   w22, 0x17f748
│ ││││ ╎│   0x0017f5a8      adrp  x0, 0x257000
│ ││││ ╎│   0x0017f5ac      adrp  x1, 0x23d000
│ ││││ ╎│   0x0017f5b0      add   x0, x0, 0xf26                        ; int64_t arg1
│ ││││ ╎│   0x0017f5b4      add   x1, x1, aav.0x00000180               ; int64_t arg2
│ ││││ ╎│   0x0017f5b8      mov   x2, x19                              ; unsigned long arg3
│ ││││ ╎│   0x0017f5bc      bl    fcn.0014c9f8
│ ││││ ╎│   0x0017f5c0      mov   w0, 1
│ ││││ ╎│   0x0017f5c4      mov   x1, x19                              ; int64_t arg2
│ ││││ ╎│   0x0017f5c8      mov   x2, x20                              ; int64_t arg3
│ ││││ ╎│   0x0017f5cc      bl    fcn.0017a7dc
│ ││││ ╎│   0x0017f5d0      mov   w21, -1
│ ││││┌───< 0x0017f5d4      b     0x17f74c
│ │││││╎└─> 0x0017f5d8      mov   x0, x21                              ; int64_t arg1
│ │││││╎    0x0017f5dc      bl    fcn.0017cb10
│ │││││╎    0x0017f5e0      mov   x24, x0
│ │││││╎    0x0017f5e4      mov   x0, x21                              ; int64_t arg1
│ │││││╎    0x0017f5e8      bl    fcn.0017caac
│ │││││╎    0x0017f5ec      mov   x20, x0
│ │││││╎    0x0017f5f0      mov   x0, x19                              ; int64_t arg1
│ │││││╎    0x0017f5f4      mov   x1, x20                              ; int64_t arg2
│ │││││╎    0x0017f5f8      bl    fcn.0017eb34
│ │││││╎┌─< 0x0017f5fc      tbnz  w0, 0x1f, 0x17f630
│ │││││╎│   0x0017f600      mov   x0, x20                              ; int64_t arg1
│ │││││╎│   0x0017f604      bl    fcn.0017cb74
│ │││││╎│   0x0017f608      adrp  x25, 0x2cd000
│ ────────< 0x0017f60c      cbz   w0, 0x17f64c
│ │││││╎│   0x0017f610      cmp   w0, 2
│ ────────< 0x0017f614      b.eq  0x17f654
│ │││││╎│   0x0017f618      cmp   w0, 3
│ ────────< 0x0017f61c      b.ne  0x17f66c
│ │││││╎│   0x0017f620      mov   w2, 2
│ │││││╎│   0x0017f624      adrp  x8, 0x5a0000
│ │││││╎│   0x0017f628      mov   w3, 0x40
│ ────────< 0x0017f62c      b     0x17f660
│ │││││╎└─> 0x0017f630      mov   w21, -1
│ │││││╎┌─< 0x0017f634      b     0x17f74c
│ ││└─────> 0x0017f638      mov   w0, wzr
│ ││ ││╎│   ; CODE XREF from fcn.0017f4c4 @ 0x17f5a0
│ │└──────> 0x0017f63c      mov   x1, x19                              ; int64_t arg2
│ │  ││╎│   0x0017f640      mov   x2, x20                              ; int64_t arg3
│ │  ││╎│   0x0017f644      bl    fcn.0017a7dc
│ │ ┌─────< 0x0017f648      b     0x17f74c
│ ────────> 0x0017f64c      mov   w26, 1
│ │┌──────< 0x0017f650      b     0x17f698
│ ────────> 0x0017f654      mov   w2, 1
│ │││││╎│   0x0017f658      adrp  x8, 0x5a0000
│ │││││╎│   0x0017f65c      mov   w3, 0x20
│ │││││╎│   ; CODE XREF from fcn.0017f4c4 @ 0x17f62c
│ ────────> 0x0017f660      str   w2, [x25, 0x5d8]
│ │││││╎│   0x0017f664      str   w3, [x8, 0x6d0]
│ ────────< 0x0017f668      b     0x17f678
│ ────────> 0x0017f66c      adrp  x8, 0x5a0000
│ │││││╎│   0x0017f670      ldr   w2, [x25, 0x5d8]                     ; [0x5d8:4]=0xaa1f03e8
│ │││││╎│   0x0017f674      ldr   w3, [x8, 0x6d0]                      ; [0x6d0:4]=0xb94043e8
│ │││││╎│   ; CODE XREF from fcn.0017f4c4 @ 0x17f668
│ ────────> 0x0017f678      adrp  x0, 0x241000
│ │││││╎│   0x0017f67c      add   x0, x0, 0x6c5                        ; int64_t arg1
│ │││││╎│   0x0017f680      mov   x1, x20                              ; int64_t arg2
│ │││││╎│   0x0017f684      bl    fcn.0014c9f8
│ │││││╎│   0x0017f688      mov   w26, wzr
│ │││││╎│   0x0017f68c      adrp  x8, 0x5a0000
│ │││││╎│   0x0017f690      mov   w9, 1
│ │││││╎│   0x0017f694      strb  w9, [x8, aav.0x000006d4]
│ │││││╎│   ; CODE XREF from fcn.0017f4c4 @ 0x17f650
│ │└──────> 0x0017f698      ldr   w0, [x25, 0x5d8]                     ; [0x5d8:4]=0xaa1f03e8
│ │ │││╎│   0x0017f69c      mov   w1, -0x34000000
│ │ │││╎│   0x0017f6a0      bl    fcn.001b43f8
│ │ │││╎│   0x0017f6a4      mov   w8, aav.0x00001000
│ │ │││╎│   0x0017f6a8      movk  w8, 0xcc00, lsl 16
│ │ │││╎│   0x0017f6ac      orr   x25, x8, 0x40
│ │ │││╎│   0x0017f6b0      mov   w2, 0x210
│ │ │││╎│   0x0017f6b4      mov   x0, x25                              ; int64_t arg1
│ │ │││╎│   0x0017f6b8      mov   w1, wzr
│ │ │││╎│   0x0017f6bc      bl    fcn.0014d8fc
│ │ │││╎│   0x0017f6c0      mov   w2, aav.0x00000100
│ │ │││╎│   0x0017f6c4      mov   x0, x25                              ; int64_t arg1
│ │ │││╎│   0x0017f6c8      mov   x1, x24                              ; int64_t arg2
│ │ │││╎│   0x0017f6cc      bl    fcn.0014d60c
│ │┌──────< 0x0017f6d0      tbnz  w26, 0, 0x17f6f0
│ │││││╎│   0x0017f6d4      adrp  x0, 0x241000
│ │││││╎│   0x0017f6d8      add   x0, x0, 0x6d1                        ; int64_t arg1
│ │││││╎│   0x0017f6dc      bl    fcn.0014c9f8
│ │││││╎│   0x0017f6e0      mov   w2, aav.0x00000100
│ │││││╎│   0x0017f6e4      mov   x0, x24                              ; int64_t arg1
│ │││││╎│   0x0017f6e8      mov   w1, wzr
│ │││││╎│   0x0017f6ec      bl    fcn.0014d8fc
│ │└──────> 0x0017f6f0      ldr   w8, [x21]
│ │ │││╎│   0x0017f6f4      mov   w9, 0xff3a
│ │ │││╎│   0x0017f6f8      movk  w9, 0xed26, lsl 16
│ │ │││╎│   0x0017f6fc      cmp   w8, w9
│ │┌──────< 0x0017f700      b.ne  0x17f714
│ │││││╎│   0x0017f704      ldrh  w9, [x21, 8]                         ; aav.0x00000008
│ │││││╎│                                                              ; [0x8:4]=0x68656164 ; "daeh"
│ │││││╎│   0x0017f708      ldrh  w8, [x21, 0xa]                       ; [0xa:4]=0x6865
│ │││││╎│   0x0017f70c      add   x9, x9, aav.0x00000300
│ ────────< 0x0017f710      b     0x17f720
│ │└──────> 0x0017f714      mov   x8, xzr
│ │ │││╎│   0x0017f718      mov   w9, aav.0x00000300
│ │ │││╎│   0x0017f71c      str   wzr, [x21, 8]
│ │ │││╎│   ; CODE XREF from fcn.0017f4c4 @ 0x17f710
│ ────────> 0x0017f720      add   x8, x9, x8                           ; 0x300
│ │ │││╎│                                                              ; aav.0x00000300
│ │ │││╎│   0x0017f724      add   x21, x21, x8                         ; 0x300
│ │ │││╎│                                                              ; aav.0x00000300
│ │ │││╎│   0x0017f728      sub   w23, w23, w8
│ │ │││└──< 0x0017f72c      cbnz  w22, 0x17f4f4
│ │ │└────> 0x0017f730      sxtw  x1, w23                              ; int64_t arg2
│ │ │ │ │   0x0017f734      mov   w3, -0x34000000
│ │ │ │ │   0x0017f738      mov   x0, x21                              ; int64_t arg1
│ │ │ │ │   0x0017f73c      mov   x2, x1                               ; int64_t arg3
│ │ │ │ │   0x0017f740      mov   w4, wzr
│ │ │ │ │   0x0017f744      bl    fcn.001b448c
│ └───────> 0x0017f748      mov   w21, wzr
│   │ │ │   ; CODE XREFS from fcn.0017f4c4 @ 0x17f5d4, 0x17f634, 0x17f648
│   └─└─└─> 0x0017f74c      mov   w0, w21
│           0x0017f750      ldp   x20, x19, [var_10h]
│           0x0017f754      ldp   x22, x21, [var_20h]
│           0x0017f758      ldp   x24, x23, [var_30h]
│           0x0017f75c      ldp   x26, x25, [var_40h]
│           0x0017f760      ldp   x29, x30, [sp], 0x50
│           0x0017f764      autibsp
└           0x0017f768      ret
            ; CALL XREF from fcn.001551fc @ 0x1554ac
            ; CALL XREF from fcn.00175f44 @ 0x176230
