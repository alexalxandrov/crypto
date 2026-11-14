┌ fcn.0017bfac(int64_t arg_10h, int64_t arg_20h, int64_t arg_30h);
│           ; var int64_t var_14h @ stack - 0x14
│           ; var int64_t var_4h @ stack - 0x4
│           ; arg int64_t arg_10h @ stack + 0x10
│           ; arg int64_t arg_20h @ stack + 0x20
│           ; arg int64_t arg_30h @ stack + 0x30
│           0x0017bfac      mov   x29, sp
│           0x0017bfb0      sub   sp, sp, 4, lsl 12
│           0x0017bfb4      bl    fcn.000f2f28
│       ┌─< 0x0017bfb8      cbnz  w0, 0x17bfd0
│       │   0x0017bfbc      mov   x1, xzr
│       │   0x0017bfc0      bl    fcn.00154504
│       │   0x0017bfc4      mov   w0, wzr
│       │   0x0017bfc8      mov   x1, xzr
│       │   0x0017bfcc      bl    fcn.0015457c
│       └─> 0x0017bfd0      adrp  x0, 0x5a0000
│           0x0017bfd4      adrp  x21, 0x5a0000
│           0x0017bfd8      add   x0, x0, aav.0x000004c0               ; int64_t arg1
│           0x0017bfdc      mov   w2, aav.0x00000108
│           0x0017bfe0      mov   w1, wzr
│           0x0017bfe4      str   x0, [x21, 0x4b8]
│           0x0017bfe8      bl    fcn.0014d8fc
│           0x0017bfec      adrp  x0, 0x5a0000
│           0x0017bff0      adrp  x20, 0x5a0000
│           0x0017bff4      add   x0, x0, 0x5c8                        ; int64_t arg1
│           0x0017bff8      mov   w2, 0x20
│           0x0017bffc      mov   w1, wzr
│           0x0017c000      str   x0, [x20, 0x5e8]
│           0x0017c004      bl    fcn.0014d8fc
│           0x0017c008      ldr   x0, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f ; int64_t arg1
│           0x0017c00c      adrp  x8, 0x5a0000
│           0x0017c010      adrp  x1, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x0017c014      add   x8, x8, 0x5f4
│           0x0017c018      add   x1, x1, 0x433                        ; int64_t arg2
│           0x0017c01c      mov   w2, 0x10
│           0x0017c020      stp   wzr, wzr, [x8]
│           0x0017c024      stp   wzr, wzr, [x8, 8]
│           0x0017c028      stp   wzr, wzr, [x8, 0x10]
│           0x0017c02c      stp   wzr, wzr, [x8, 0x18]
│           0x0017c030      stp   wzr, wzr, [x8, 0x20]
│           0x0017c034      stp   wzr, wzr, [x8, 0x28]
│           0x0017c038      stp   wzr, wzr, [x8, 0x30]
│           0x0017c03c      stp   wzr, wzr, [x8, 0x38]
│           0x0017c040      stp   wzr, wzr, [x8, 0x40]
│           0x0017c044      bl    fcn.0014db78
│           0x0017c048      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c04c      add   x0, x8, 0x10                         ; aav.0x00000010 ; int64_t arg1
│           0x0017c050      bl    fcn.0010c91c
│           0x0017c054      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c058      add   x0, x8, 0x18                         ; aav.0x00000018 ; int64_t arg1
│           0x0017c05c      bl    fcn.0010b7b8
│           0x0017c060      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c064      add   x0, x8, 0x30                         ; aav.0x00000030 ; int64_t arg1
│           0x0017c068      bl    fcn.0010bbcc
│           0x0017c06c      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c070      add   x0, x8, 0x98                         ; aav.0x00000098 ; int64_t arg1
│           0x0017c074      bl    fcn.0010bef0
│           0x0017c078      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c07c      add   x0, x8, 0x40                         ; aav.0x00000040 ; int64_t arg1
│           0x0017c080      bl    fcn.0010ca9c
│           0x0017c084      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c088      add   x0, x8, 0x48                         ; aav.0x00000048 ; int64_t arg1
│           0x0017c08c      bl    fcn.0010cb58
│           0x0017c090      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c094      add   x0, x8, 0x50                         ; aav.0x00000050 ; int64_t arg1
│           0x0017c098      bl    fcn.0010ccbc
│           0x0017c09c      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0a0      add   x0, x8, 0x58                         ; aav.0x00000058 ; int64_t arg1
│           0x0017c0a4      bl    fcn.0010c4a4
│           0x0017c0a8      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0ac      add   x0, x8, 0x88                         ; aav.0x00000088 ; int64_t arg1
│           0x0017c0b0      bl    fcn.0010c7b4
│           0x0017c0b4      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0b8      add   x0, x8, 0x80                         ; aav.0x00000080 ; int64_t arg1
│           0x0017c0bc      bl    fcn.0010b91c
│           0x0017c0c0      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0c4      add   x0, x8, 0xc0                         ; aav.0x000000c0 ; int64_t arg1
│           0x0017c0c8      bl    fcn.0010bc88
│           0x0017c0cc      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0d0      add   x0, x8, 0xc8                         ; aav.0x000000c8 ; int64_t arg1
│           0x0017c0d4      bl    fcn.0010cf84
│           0x0017c0d8      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0dc      add   x0, x8, 0xd0                         ; aav.0x000000d0 ; int64_t arg1
│           0x0017c0e0      bl    fcn.0010ce20
│           0x0017c0e4      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0e8      mov   w0, 6
│           0x0017c0ec      add   x1, x8, 0xd8                         ; "A" ; int64_t arg2
│           0x0017c0f0      bl    fcn.0010c62c
│           0x0017c0f4      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c0f8      mov   w0, 7
│           0x0017c0fc      add   x1, x8, 0x68                         ; aav.0x00000068 ; int64_t arg2
│           0x0017c100      bl    fcn.0010c62c
│           0x0017c104      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c108      mov   w0, 8
│           0x0017c10c      add   x1, x8, 0x70                         ; aav.0x00000070 ; int64_t arg2
│           0x0017c110      bl    fcn.0010c62c
│           0x0017c114      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c118      mov   w0, 9
│           0x0017c11c      add   x1, x8, 0xf8                         ; aav.0x000000f8 ; int64_t arg2
│           0x0017c120      bl    fcn.0010c62c
│           0x0017c124      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c128      mov   w0, 0xd
│           0x0017c12c      add   x1, x8, 0xa0                         ; aav.0x000000a0 ; int64_t arg2
│           0x0017c130      bl    fcn.0010c62c
│           0x0017c134      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c138      mov   w0, 0xe
│           0x0017c13c      add   x1, x8, 0xa8                         ; aav.0x000000a8 ; int64_t arg2
│           0x0017c140      bl    fcn.0010c62c
│           0x0017c144      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c148      mov   w0, 0xf
│           0x0017c14c      add   x1, x8, 0xb0                         ; "!\xach\xd3A" ; int64_t arg2
│           0x0017c150      bl    fcn.0010c62c
│           0x0017c154      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c158      mov   w0, 0x10
│           0x0017c15c      add   x1, x8, 0xb8                         ; aav.0x000000b8 ; int64_t arg2
│           0x0017c160      bl    fcn.0010c62c
│           0x0017c164      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c168      mov   w0, 0x11
│           0x0017c16c      add   x1, x8, aav.0x00000100               ; "@" ; int64_t arg2
│           0x0017c170      bl    fcn.0010c62c
│           0x0017c174      adrp  x0, 0x248000
│           0x0017c178      add   x0, x0, 0x54e                        ; int64_t arg1
│           0x0017c17c      mov   w1, wzr
│           0x0017c180      bl    fcn.0014c9f8
│           0x0017c184      mov   w0, -0xf3
│           0x0017c188      mov   x1, xzr
│           0x0017c18c      mov   x2, xzr
│           0x0017c190      mov   x3, xzr
│           0x0017c194      stp   x29, x30, [var_14h]!
│           0x0017c198      smc   0
│           0x0017c19c      ldp   x29, x30, [sp], 0x10
│           0x0017c1a0      mov   x19, x0
│           0x0017c1a4      cmn   w19, 2
│       ┌─< 0x0017c1a8      b.ne  0x17c1c4
│       │   0x0017c1ac      adrp  x0, 0x27a000
│       │   0x0017c1b0      add   x0, x0, 0xfc7                        ; int64_t arg1
│       │   0x0017c1b4      mov   w1, -2
│       │   0x0017c1b8      bl    fcn.0014c9f8
│       │   0x0017c1bc      mov   x8, xzr
│      ┌──< 0x0017c1c0      b     0x17c1d8
│      │└─> 0x0017c1c4      adrp  x0, 0x265000
│      │    0x0017c1c8      mov   w1, w19
│      │    0x0017c1cc      add   x0, x0, aav.0x00000480               ; "\n\xe1@\xb9\t\xe5@\xb9\xea'\U00000005)\n\xe9@\xb9\t\xed@\xb9\xea'\U00000006)\U0000001f\U00000001" ; int64_t arg1
│      │    0x0017c1d0      bl    fcn.0014c9f8
│      │    0x0017c1d4      sxtw  x8, w19
│      │    ; CODE XREF from fcn.0017bfac @ 0x17c1c0
│      └──> 0x0017c1d8      ldr   x9, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│           0x0017c1dc      adrp  x0, 0x248000
│           0x0017c1e0      add   x0, x0, 0x54e                        ; int64_t arg1
│           0x0017c1e4      mov   w1, 1
│           0x0017c1e8      str   x8, [x9]
│           0x0017c1ec      bl    fcn.0014c9f8
│           0x0017c1f0      mov   w0, -0xf3
│           0x0017c1f4      mov   x1, xzr
│           0x0017c1f8      mov   w2, 1
│           0x0017c1fc      mov   x3, xzr
│           0x0017c200      stp   x29, x30, [var_14h]!
│           0x0017c204      smc   0
│           0x0017c208      ldp   x29, x30, [sp], 0x10
│           0x0017c20c      mov   x19, x0
│           0x0017c210      cmn   w19, 2
│       ┌─< 0x0017c214      b.ne  0x17c230
│       │   0x0017c218      adrp  x0, 0x27a000
│       │   0x0017c21c      add   x0, x0, 0xfc7                        ; int64_t arg1
│       │   0x0017c220      mov   w1, -2
│       │   0x0017c224      bl    fcn.0014c9f8
│       │   0x0017c228      mov   x8, xzr
│      ┌──< 0x0017c22c      b     0x17c244
│      │└─> 0x0017c230      adrp  x0, 0x265000
│      │    0x0017c234      mov   w1, w19
│      │    0x0017c238      add   x0, x0, aav.0x00000480               ; "\n\xe1@\xb9\t\xe5@\xb9\xea'\U00000005)\n\xe9@\xb9\t\xed@\xb9\xea'\U00000006)\U0000001f\U00000001" ; int64_t arg1
│      │    0x0017c23c      bl    fcn.0014c9f8
│      │    0x0017c240      sxtw  x8, w19
│      │    ; CODE XREF from fcn.0017bfac @ 0x17c22c
│      └──> 0x0017c244      ldr   x9, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│           0x0017c248      adrp  x0, 0x248000
│           0x0017c24c      add   x0, x0, 0x54e                        ; int64_t arg1
│           0x0017c250      mov   w1, 2
│           0x0017c254      str   x8, [x9, 8]
│           0x0017c258      bl    fcn.0014c9f8
│           0x0017c25c      mov   w0, -0xf3
│           0x0017c260      mov   x1, xzr
│           0x0017c264      mov   w2, 2
│           0x0017c268      mov   x3, xzr
│           0x0017c26c      stp   x29, x30, [var_14h]!
│           0x0017c270      smc   0
│           0x0017c274      ldp   x29, x30, [sp], 0x10
│           0x0017c278      mov   x19, x0
│           0x0017c27c      cmn   w19, 2
│       ┌─< 0x0017c280      b.ne  0x17c29c
│       │   0x0017c284      adrp  x0, 0x27a000
│       │   0x0017c288      add   x0, x0, 0xfc7                        ; int64_t arg1
│       │   0x0017c28c      mov   w1, -2
│       │   0x0017c290      bl    fcn.0014c9f8
│       │   0x0017c294      mov   x8, xzr
│      ┌──< 0x0017c298      b     0x17c2b0
│      │└─> 0x0017c29c      adrp  x0, 0x265000
│      │    0x0017c2a0      mov   w1, w19
│      │    0x0017c2a4      add   x0, x0, aav.0x00000480               ; "\n\xe1@\xb9\t\xe5@\xb9\xea'\U00000005)\n\xe9@\xb9\t\xed@\xb9\xea'\U00000006)\U0000001f\U00000001" ; int64_t arg1
│      │    0x0017c2a8      bl    fcn.0014c9f8
│      │    0x0017c2ac      sxtw  x8, w19
│      │    ; CODE XREF from fcn.0017bfac @ 0x17c298
│      └──> 0x0017c2b0      ldr   x9, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│           0x0017c2b4      adrp  x0, 0x248000
│           0x0017c2b8      add   x0, x0, 0x54e                        ; int64_t arg1
│           0x0017c2bc      mov   w1, 3
│           0x0017c2c0      str   x8, [x9, 0x10]
│           0x0017c2c4      bl    fcn.0014c9f8
│           0x0017c2c8      mov   w0, -0xf3
│           0x0017c2cc      mov   x1, xzr
│           0x0017c2d0      mov   w2, 3
│           0x0017c2d4      mov   x3, xzr
│           0x0017c2d8      stp   x29, x30, [var_14h]!
│           0x0017c2dc      smc   0
│           0x0017c2e0      ldp   x29, x30, [sp], 0x10
│           0x0017c2e4      mov   x19, x0
│           0x0017c2e8      cmn   w19, 2
│       ┌─< 0x0017c2ec      b.ne  0x17c308
│       │   0x0017c2f0      adrp  x0, 0x27a000
│       │   0x0017c2f4      add   x0, x0, 0xfc7                        ; int64_t arg1
│       │   0x0017c2f8      mov   w1, -2
│       │   0x0017c2fc      bl    fcn.0014c9f8
│       │   0x0017c300      mov   x10, xzr
│      ┌──< 0x0017c304      b     0x17c31c
│      │└─> 0x0017c308      adrp  x0, 0x265000
│      │    0x0017c30c      mov   w1, w19
│      │    0x0017c310      add   x0, x0, aav.0x00000480               ; "\n\xe1@\xb9\t\xe5@\xb9\xea'\U00000005)\n\xe9@\xb9\t\xed@\xb9\xea'\U00000006)\U0000001f\U00000001" ; int64_t arg1
│      │    0x0017c314      bl    fcn.0014c9f8
│      │    0x0017c318      sxtw  x10, w19
│      │    ; CODE XREF from fcn.0017bfac @ 0x17c304
│      └──> 0x0017c31c      ldr   x8, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│           0x0017c320      ldr   x9, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│           0x0017c324      str   x10, [x8, 0x18]
│           0x0017c328      ldr   x1, [x9, 0x30]                       ; aav.0x00000030
│                                                                      ; [0x30:4]=0x58000911
│           0x0017c32c      ldr   x2, [x8]
│           0x0017c330      cmp   x1, x2
│       ┌─< 0x0017c334      b.eq  0x17c354
│       │   0x0017c338      adrp  x0, 0x241000
│       │   0x0017c33c      add   x0, x0, 0x607                        ; int64_t arg1
│       │   0x0017c340      bl    fcn.0014c9f8
│       │   0x0017c344      ldr   x8, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│       │   0x0017c348      ldr   x9, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│       │   0x0017c34c      ldr   x10, [x8]
│       │   0x0017c350      str   x10, [x9, 0x30]
│       └─> 0x0017c354      ldr   x1, [x9, 0x40]                       ; aav.0x00000040
│                                                                      ; [0x40:4]=0xaa0003f4
│           0x0017c358      ldr   x2, [x8, 8]                          ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x0017c35c      cmp   x1, x2
│       ┌─< 0x0017c360      b.eq  0x17c380
│       │   0x0017c364      adrp  x0, 0x25a000
│       │   0x0017c368      add   x0, x0, 0x85d                        ; int64_t arg1
│       │   0x0017c36c      bl    fcn.0014c9f8
│       │   0x0017c370      ldr   x8, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│       │   0x0017c374      ldr   x9, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│       │   0x0017c378      ldr   x10, [x8, 8]                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x0017c37c      str   x10, [x9, 0x40]
│       └─> 0x0017c380      ldr   x1, [x9, 0x48]                       ; aav.0x00000048
│                                                                      ; [0x48:4]=0xaa0203f6
│           0x0017c384      ldr   x2, [x8, 0x10]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0017c388      cmp   x1, x2
│       ┌─< 0x0017c38c      b.eq  0x17c3ac
│       │   0x0017c390      adrp  x0, 0x23f000
│       │   0x0017c394      add   x0, x0, 0xb0                         ; int64_t arg1
│       │   0x0017c398      bl    fcn.0014c9f8
│       │   0x0017c39c      ldr   x8, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│       │   0x0017c3a0      ldr   x9, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│       │   0x0017c3a4      ldr   x10, [x8, 0x10]                      ; aav.0x00000010
│       │                                                              ; [0x10:4]=0x14000004
│       │   0x0017c3a8      str   x10, [x9, 0x48]
│       └─> 0x0017c3ac      ldr   x1, [x9, 0x50]                       ; aav.0x00000050
│                                                                      ; [0x50:4]=0xd2810600
│           0x0017c3b0      ldr   x2, [x8, 0x18]                       ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x0017c3b4      cmp   x1, x2
│       ┌─< 0x0017c3b8      b.eq  0x17c3d8
│       │   0x0017c3bc      adrp  x0, 0x241000
│       │   0x0017c3c0      add   x0, x0, 0x637                        ; int64_t arg1
│       │   0x0017c3c4      bl    fcn.0014c9f8
│       │   0x0017c3c8      ldr   x8, [x20, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│       │   0x0017c3cc      ldr   x9, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│       │   0x0017c3d0      ldr   x8, [x8, 0x18]                       ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x0017c3d4      str   x8, [x9, 0x50]
│       └─> 0x0017c3d8      bl    fcn.000f2f28
│       ┌─< 0x0017c3dc      cbz   w0, 0x17c3f0
│       │   0x0017c3e0      adrp  x0, 0x243000
│       │   0x0017c3e4      add   x0, x0, 0xb44                        ; int64_t arg1
│       │   0x0017c3e8      bl    fcn.0014c9f8
│      ┌──< 0x0017c3ec      b     0x17c5e8
│      │└─> 0x0017c3f0      mov   x0, sp                               ; int64_t arg1
│      │    0x0017c3f4      mov   w1, 1
│      │    0x0017c3f8      mov   w3, aav.0x00004000
│      │    0x0017c3fc      mov   w2, wzr
│      │    0x0017c400      mov   x19, sp
│      │    0x0017c404      bl    fcn.001390c0
│      │    0x0017c408      ldr   w8, [sp]
│      │    0x0017c40c      lsl   w8, w8, 9
│      │    0x0017c410      add   x8, x19, x8
│      │    0x0017c414      sub   x8, x8, 0x43c
│      │    0x0017c418      ldrh  w1, [x8]
│      │    0x0017c41c      cmp   w1, 0x206
│      │┌─< 0x0017c420      b.ne  0x17c5d8
│      ││   0x0017c424      bl    fcn.0010a9a8
│      ││   0x0017c428      cmp   w0, 1
│     ┌───< 0x0017c42c      b.ne  0x17c5e8
│     │││   0x0017c430      adrp  x19, 0x2cd000
│     │││   0x0017c434      ldr   w1, [x19, aav.0x000001c4]            ; [0x1c4:4]=0x91000508
│     │││   0x0017c438      stp   xzr, xzr, [arg_20h + 0xc]
│     │││   0x0017c43c      stp   xzr, xzr, [arg_10h + 0xc]
│     │││   0x0017c440      stp   xzr, xzr, [var_4h + 0x10]
│     │││   0x0017c444      stp   xzr, xzr, [sp]
│    ┌────< 0x0017c448      cbz   w1, 0x17c46c
│    ││││   0x0017c44c      adrp  x9, 0x2cd000
│    ││││   0x0017c450      mov   x8, sp
│    ││││   0x0017c454      add   x9, x9, 0x184
│    ││││   0x0017c458      mov   x10, x1
│   ┌─────> 0x0017c45c      subs  x10, x10, 1
│   ╎││││   0x0017c460      ldrb  w11, [x9, w10, uxtw]
│   ╎││││   0x0017c464      strb  w11, [x8], 1
│   └─────< 0x0017c468      b.ne  0x17c45c
│    └────> 0x0017c46c      mov   x0, sp                               ; int64_t arg2
│     │││   0x0017c470      bl    fcn.0010c1a0
│     │││   0x0017c474      mov   w8, 0x214
│     │││   0x0017c478      movk  w8, 3, lsl 16
│     │││   0x0017c47c      cmp   x0, x8
│    ┌────< 0x0017c480      b.ne  0x17c490
│    ││││   0x0017c484      ldr   w1, [x19, aav.0x000001c4]            ; [0x1c4:4]=0x91000508
│    ││││   0x0017c488      mov   x0, sp                               ; int64_t arg2
│    ││││   0x0017c48c      bl    fcn.0010bfac
│    └────> 0x0017c490      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│     │││   0x0017c494      ldr   x9, [x8, 0x88]                       ; aav.0x00000088
│     │││                                                              ; [0x88:4]=0xd51e1000
│    ┌────< 0x0017c498      cbnz  x9, 0x17c4c4
│    ││││   0x0017c49c      bl    fcn.0010c70c
│    ││││   0x0017c4a0      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│    ││││   0x0017c4a4      add   x0, x8, 0x88                         ; aav.0x00000088 ; int64_t arg1
│    ││││   0x0017c4a8      bl    fcn.0010c7b4
│    ││││   0x0017c4ac      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│    ││││   0x0017c4b0      adrp  x0, 0x23f000
│    ││││   0x0017c4b4      add   x0, x0, 0x66                         ; int64_t arg1
│    ││││   0x0017c4b8      ldr   x1, [x8, 0x88]                       ; aav.0x00000088
│    ││││                                                              ; [0x88:4]=0xd51e1000 ; int64_t arg2
│    ││││   0x0017c4bc      bl    fcn.0014c9f8
│    ││││   0x0017c4c0      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│    └────> 0x0017c4c4      ldr   x8, [x8, 0x80]                       ; aav.0x00000080
│     │││                                                              ; [0x80:4]=0xd53e1000
│    ┌────< 0x0017c4c8      cbnz  x8, 0x17c4f0
│    ││││   0x0017c4cc      bl    fcn.0010b874
│    ││││   0x0017c4d0      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│    ││││   0x0017c4d4      add   x0, x8, 0x80                         ; aav.0x00000080 ; int64_t arg1
│    ││││   0x0017c4d8      bl    fcn.0010b91c
│    ││││   0x0017c4dc      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│    ││││   0x0017c4e0      adrp  x0, 0x246000
│    ││││   0x0017c4e4      add   x0, x0, 0x2e5                        ; int64_t arg1
│    ││││   0x0017c4e8      ldr   x1, [x8, 0x80]                       ; aav.0x00000080
│    ││││                                                              ; [0x80:4]=0xd53e1000 ; int64_t arg2
│    ││││   0x0017c4ec      bl    fcn.0014c9f8
│    └────> 0x0017c4f0      adrp  x19, 0x2cd000
│     │││   0x0017c4f4      ldr   w1, [x19, aav.0x00000180]            ; [0x180:4]=0x910383fd
│     │││   0x0017c4f8      adrp  x0, 0x2cd000
│     │││   0x0017c4fc      add   x0, x0, 0x160                        ; int64_t arg2
│     │││   0x0017c500      bl    fcn.0010b4b4
│    ┌────< 0x0017c504      cbz   x0, 0x17c530
│    ││││   0x0017c508      mov   w8, 0x214
│    ││││   0x0017c50c      movk  w8, 3, lsl 16
│    ││││   0x0017c510      mov   x1, x0
│    ││││   0x0017c514      cmp   x0, x8
│   ┌─────< 0x0017c518      b.ne  0x17c608
│   │││││   0x0017c51c      ldr   w1, [x19, aav.0x00000180]            ; [0x180:4]=0x910383fd
│   │││││   0x0017c520      adrp  x0, 0x2cd000
│   │││││   0x0017c524      add   x0, x0, 0x160                        ; int64_t arg2
│   │││││   0x0017c528      bl    fcn.0010b2c0
│  ┌──────< 0x0017c52c      cbnz  x0, 0x17c5e8
│  ││└────> 0x0017c530      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ││ │││   0x0017c534      adrp  x22, 0x5a0000
│  ││ │││   0x0017c538      ldr   x9, [x8, 0x18]                       ; aav.0x00000018
│  ││ │││                                                              ; [0x18:4]=0x7600000
│  ││┌────< 0x0017c53c      cbnz  x9, 0x17c570
│  ││││││   0x0017c540      bl    fcn.0010b710
│  ││││││   0x0017c544      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ││││││   0x0017c548      add   x0, x8, 0x18                         ; aav.0x00000018 ; int64_t arg1
│  ││││││   0x0017c54c      bl    fcn.0010b7b8
│  ││││││   0x0017c550      adrp  x0, 0x23f000
│  ││││││   0x0017c554      add   x0, x0, 0x8d                         ; int64_t arg1
│  ││││││   0x0017c558      bl    fcn.0014c9f8
│  ││││││   0x0017c55c      mov   w8, 1
│  ││││││   0x0017c560      strb  w8, [x22, 0x5f0]
│  ││││││   0x0017c564      bl    fcn.00178f70
│  ││││││   0x0017c568      bl    fcn.0017e5f8
│  ││││││   0x0017c56c      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ││└────> 0x0017c570      ldr   x9, [x8, 0x10]                       ; aav.0x00000010
│  ││ │││                                                              ; [0x10:4]=0x14000004
│  ││┌────< 0x0017c574      cbnz  x9, 0x17c5b4
│  ││││││   0x0017c578      adrp  x8, 0x5a0000
│  ││││││   0x0017c57c      mov   w9, 0x206
│  ││││││   0x0017c580      mov   w0, 0x206
│  ││││││   0x0017c584      str   w9, [x8, 0x618]
│  ││││││   0x0017c588      bl    fcn.0010c870
│  ││││││   0x0017c58c      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ││││││   0x0017c590      add   x0, x8, 0x10                         ; aav.0x00000010 ; int64_t arg1
│  ││││││   0x0017c594      bl    fcn.0010c91c
│  ││││││   0x0017c598      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ││││││   0x0017c59c      adrp  x0, 0x24f000
│  ││││││   0x0017c5a0      add   x0, x0, 0x7ae                        ; int64_t arg1
│  ││││││   0x0017c5a4      mov   w2, 0x206
│  ││││││   0x0017c5a8      ldr   x1, [x8, 0x10]                       ; aav.0x00000010
│  ││││││                                                              ; [0x10:4]=0x14000004 ; int64_t arg2
│  ││││││   0x0017c5ac      bl    fcn.0014c9f8
│  ││││││   0x0017c5b0      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ││└────> 0x0017c5b4      ldp   x1, x2, [x8, 0x40]
│  ││ │││   0x0017c5b8      tst   x2, x1
│  ││┌────< 0x0017c5bc      b.eq  0x17c618
│  ││││││   0x0017c5c0      adrp  x0, 0x246000
│  ││││││   0x0017c5c4      add   x0, x0, 0x333                        ; int64_t arg1
│  ││││││   0x0017c5c8      bl    fcn.0014c9f8
│  ││││││   0x0017c5cc      mov   w0, 8
│  ││││││   0x0017c5d0      bl    fcn.0016e1a8
│ ┌───────< 0x0017c5d4      b     0x17c630
│ ││││││└─> 0x0017c5d8      adrp  x0, 0x23f000
│ ││││││    0x0017c5dc      add   x0, x0, 0xdf                         ; int64_t arg1
│ ││││││    0x0017c5e0      mov   w2, 0x206
│ ││││││    0x0017c5e4      bl    fcn.0014c9f8
│ ││││││    ; CODE XREFS from fcn.0017bfac @ 0x17c3ec, 0x17c614, 0x17c7f8
│ ─└──└└┌─> 0x0017c5e8      mov   w0, wzr
│ │ ││  ╎   0x0017c5ec      add   sp, sp, 4, lsl 12
│ │ ││  ╎   0x0017c5f0      ldp   x20, x19, [arg_30h]
│ │ ││  ╎   0x0017c5f4      ldp   x22, x21, [arg_20h]
│ │ ││  ╎   0x0017c5f8      ldr   x28, [arg_10h]                       ; aav.0x00000010
│ │ ││  ╎                                                              ; [0x10:4]=0x14000004
│ │ ││  ╎   0x0017c5fc      ldp   x29, x30, [sp], 0x40
│ │ ││  ╎   0x0017c600      autibsp
│ │ ││  ╎   0x0017c604      ret
│ │ └─────> 0x0017c608      adrp  x0, 0x246000
│ │  │  ╎   0x0017c60c      add   x0, x0, 0x30c                        ; int64_t arg1
│ │  │  ╎   0x0017c610      bl    fcn.0014c9f8
│ ────────< 0x0017c614      b     0x17c5e8
│ │  └────> 0x0017c618      orr   x8, x2, x1
│ │    ┌──< 0x0017c61c      cbnz  x8, 0x17c630
│ │    │╎   0x0017c620      bl    fcn.0010c9d8
│ │    │╎   0x0017c624      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│ │    │╎   0x0017c628      add   x0, x8, 0x40                         ; aav.0x00000040 ; int64_t arg1
│ │    │╎   0x0017c62c      bl    fcn.0010ca9c
│ │    │╎   ; CODE XREF from fcn.0017bfac @ 0x17c5d4
│ └────└──> 0x0017c630      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│       ╎   0x0017c634      mov   w9, 0xfdf0
│       ╎   0x0017c638      movk  w9, 0xf4bf, lsl 16
│       ╎   0x0017c63c      ldrb  w19, [x9]
│       ╎   0x0017c640      ldr   x1, [x8, 0x30]                       ; aav.0x00000030
│       ╎                                                              ; [0x30:4]=0x58000911
│       ╎   0x0017c644      cmp   x1, x19
│      ┌──< 0x0017c648      b.hs  0x17c710
│      │╎   0x0017c64c      adrp  x0, 0x274000
│      │╎   0x0017c650      add   x0, x0, 0x636                        ; int64_t arg1
│      │╎   0x0017c654      mov   w2, w19
│      │╎   0x0017c658      bl    fcn.0014c9f8
│      │╎   0x0017c65c      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│      │╎   0x0017c660      ldr   x8, [x8, 0x40]                       ; aav.0x00000040
│      │╎                                                              ; [0x40:4]=0xaa0003f4
│     ┌───< 0x0017c664      cbz   x8, 0x17c694
│     ││╎   0x0017c668      mov   x0, x19                              ; unsigned long arg1
│     ││╎   0x0017c66c      bl    fcn.0010bd44
│     ││╎   0x0017c670      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│     ││╎   0x0017c674      add   x0, x8, 0xc0                         ; aav.0x000000c0 ; int64_t arg1
│     ││╎   0x0017c678      bl    fcn.0010bc88
│     ││╎   0x0017c67c      mov   w0, 9
│     ││╎   0x0017c680      mov   w1, w19
│     ││╎   0x0017c684      bl    fcn.0017c904
│    ┌────< 0x0017c688      cbz   w0, 0x17c6a4
│    │││╎   0x0017c68c      mov   x19, -1
│   ┌─────< 0x0017c690      b     0x17c6dc
│   ││└───> 0x0017c694      adrp  x0, 0x248000
│   ││ │╎   0x0017c698      add   x0, x0, 0x56d                        ; int64_t arg1
│   ││ │╎   0x0017c69c      bl    fcn.0014c9f8
│   ││┌───< 0x0017c6a0      b     0x17c710
│   │└────> 0x0017c6a4      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│   │ ││╎   0x0017c6a8      adrp  x20, 0x5a0000
│   │ ││╎   0x0017c6ac      add   x20, x20, 0x620
│   │ ││╎   0x0017c6b0      ldp   w4, w3, [x20, 8]
│   │ ││╎   0x0017c6b4      ldr   x1, [x8, 0x30]                       ; aav.0x00000030
│   │ ││╎                                                              ; [0x30:4]=0x58000911 ; int64_t arg2
│   │ ││╎   0x0017c6b8      ldp   w6, w5, [x20]
│   │ ││╎   0x0017c6bc      adrp  x0, 0x254000
│   │ ││╎   0x0017c6c0      add   x0, x0, 0x98                         ; int64_t arg1
│   │ ││╎   0x0017c6c4      mov   w2, w19
│   │ ││╎   0x0017c6c8      bl    fcn.0017b890
│   │ ││╎   0x0017c6cc      mov   w1, 0x10
│   │ ││╎   0x0017c6d0      mov   x0, x20                              ; int64_t arg2
│   │ ││╎   0x0017c6d4      bl    fcn.0010b9d8
│   │ ││╎   0x0017c6d8      mov   x19, x0
│   │ ││╎   ; CODE XREF from fcn.0017bfac @ 0x17c690
│   └─────> 0x0017c6dc      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│     ││╎   0x0017c6e0      add   x0, x8, 0x30                         ; aav.0x00000030 ; int64_t arg1
│     ││╎   0x0017c6e4      bl    fcn.0010bbcc
│    ┌────< 0x0017c6e8      cbz   x19, 0x17c6fc
│    │││╎   0x0017c6ec      adrp  x0, 0x271000
│    │││╎   0x0017c6f0      add   x0, x0, 0xfda
│    │││╎   0x0017c6f4      mov   x1, x19
│   ┌─────< 0x0017c6f8      b     0x17c70c
│   │└────> 0x0017c6fc      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│   │ ││╎   0x0017c700      adrp  x0, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│   │ ││╎   0x0017c704      add   x0, x0, 0x21b
│   │ ││╎   0x0017c708      ldr   x1, [x8, 0x30]                       ; aav.0x00000030
│   │ ││╎                                                              ; [0x30:4]=0x58000911
│   │ ││╎   ; CODE XREF from fcn.0017bfac @ 0x17c6f8
│   └─────> 0x0017c70c      bl    fcn.0017b890
│     ││╎   ; CODE XREF from fcn.0017bfac @ 0x17c6a0
│     └└──> 0x0017c710      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│       ╎   0x0017c714      ldr   x9, [x8, 0x58]                       ; aav.0x00000058
│       ╎                                                              ; [0x58:4]=0xd51e1000
│      ┌──< 0x0017c718      cbnz  x9, 0x17c744
│      │╎   0x0017c71c      bl    fcn.0010c3fc
│      │╎   0x0017c720      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│      │╎   0x0017c724      add   x0, x8, 0x58                         ; aav.0x00000058 ; int64_t arg1
│      │╎   0x0017c728      bl    fcn.0010c4a4
│      │╎   0x0017c72c      adrp  x0, 0x24a000
│      │╎   0x0017c730      add   x0, x0, 0xa01                        ; int64_t arg1
│      │╎   0x0017c734      bl    fcn.0014c9f8
│      │╎   0x0017c738      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│      │╎   0x0017c73c      mov   w9, 1
│      │╎   0x0017c740      strb  w9, [x22, 0x5f0]
│      └──> 0x0017c744      ldr   x9, [x8, 0x68]                       ; aav.0x00000068
│       ╎                                                              ; [0x68:4]=0xd61f0000
│      ┌──< 0x0017c748      cbz   x9, 0x17c7fc
│     ┌───> 0x0017c74c      mov   w19, -1
│     ╎│╎   ; CODE XREFS from fcn.0017bfac @ 0x17c890, 0x17c900
│  ┌┌┌────> 0x0017c750      mov   w0, w19
│  ╎╎╎╎│╎   0x0017c754      bl    fcn.00179e6c
│  ╎╎╎╎│╎   0x0017c758      bl    fcn.00179f90
│  ╎╎╎╎│╎   0x0017c75c      mov   w1, w0
│  ╎╎╎╎│╎   0x0017c760      adrp  x0, 0x25a000
│  ╎╎╎╎│╎   0x0017c764      add   x0, x0, 0x892                        ; int64_t arg2
│  ╎╎╎╎│╎   0x0017c768      bl    fcn.0014c9f8
│  ╎╎╎╎│╎   0x0017c76c      bl    fcn.0017bb70
│  ╎╎╎╎│╎   0x0017c770      bl    fcn.0017d674
│ ┌───────< 0x0017c774      cbnz  w0, 0x17c7b8
│ │╎╎╎╎│╎   0x0017c778      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│ │╎╎╎╎│╎   0x0017c77c      ldr   x9, [x8, 0xc8]                       ; aav.0x000000c8
│ │╎╎╎╎│╎                                                              ; [0xc8:4]=0xd50344ff
│ │╎╎╎╎│╎   0x0017c780      cmp   x9, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│ ────────< 0x0017c784      b.eq  0x17c79c
│ │╎╎╎╎│╎   0x0017c788      adrp  x0, 0x267000
│ │╎╎╎╎│╎   0x0017c78c      add   x0, x0, 0x2a0                        ; int64_t arg2
│ │╎╎╎╎│╎   0x0017c790      bl    fcn.0014c9f8
│ │╎╎╎╎│╎   0x0017c794      bl    fcn.0010cedc
│ │╎╎╎╎│╎   0x0017c798      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│ ────────> 0x0017c79c      ldr   x8, [x8, 0xd0]                       ; aav.0x000000d0
│ │╎╎╎╎│╎                                                              ; [0xd0:4]=0xd5380501
│ │╎╎╎╎│╎   0x0017c7a0      cmp   x8, 1
│ ────────< 0x0017c7a4      b.eq  0x17c7b8
│ │╎╎╎╎│╎   0x0017c7a8      adrp  x0, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│ │╎╎╎╎│╎   0x0017c7ac      add   x0, x0, 0                            ; 0x23b000 ; "[EFUSE] Set usb_disable_se1!\n" ; int64_t arg2
│ │╎╎╎╎│╎   0x0017c7b0      bl    fcn.0014c9f8
│ │╎╎╎╎│╎   0x0017c7b4      bl    fcn.0010cd78
│ └───────> 0x0017c7b8      bl    fcn.0017bdc0
│  ╎╎╎╎│╎   0x0017c7bc      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ╎╎╎╎│╎   0x0017c7c0      ldr   x8, [x8, 0x40]                       ; aav.0x00000040
│  ╎╎╎╎│╎                                                              ; [0x40:4]=0xaa0003f4
│ ┌───────< 0x0017c7c4      cbz   x8, 0x17c7d4
│ │╎╎╎╎│╎   0x0017c7c8      adrp  x0, 0x265000
│ │╎╎╎╎│╎   0x0017c7cc      add   x0, x0, 0x4db                        ; int64_t arg1
│ │╎╎╎╎│╎   0x0017c7d0      bl    fcn.0014c9f8
│ └───────> 0x0017c7d4      ldrb  w8, [x22, 0x5f0]                     ; [0x5f0:4]=0xaa1f03e8
│  ╎╎╎╎│╎   0x0017c7d8      cmp   w8, 1
│ ────────< 0x0017c7dc      b.ne  0x17c5e8
│  ╎╎╎╎│╎   0x0017c7e0      adrp  x1, 0x25a000
│  ╎╎╎╎│╎   0x0017c7e4      adrp  x2, 0x23e000
│  ╎╎╎╎│╎   0x0017c7e8      add   x1, x1, 0x853                        ; int64_t arg2
│  ╎╎╎╎│╎   0x0017c7ec      add   x2, x2, 0x409                        ; int64_t arg3
│  ╎╎╎╎│╎   0x0017c7f0      mov   w0, 0x4e                             ; 'N'
│  ╎╎╎╎│╎   0x0017c7f4      bl    fcn.0016d638
│  ╎╎╎╎│└─< 0x0017c7f8      b     0x17c5e8
│  ╎╎╎╎└──> 0x0017c7fc      ldr   x8, [x8, 0x70]                       ; aav.0x00000070
│  ╎╎╎╎                                                                ; [0x70:4]=0xd51ec000
│  ╎╎╎╎ ┌─< 0x0017c800      cbz   x8, 0x17c838
│  ╎╎╎╎ │   0x0017c804      bl    fcn.0017d4cc
│  ╎╎╎└───< 0x0017c808      cbnz  w0, 0x17c74c
│  ╎╎╎  │   0x0017c80c      adrp  x0, 0x248000
│  ╎╎╎  │   0x0017c810      add   x0, x0, 0x5b8                        ; int64_t arg1
│  ╎╎╎  │   0x0017c814      bl    fcn.0014c9f8
│  ╎╎╎  │   0x0017c818      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ╎╎╎  │   0x0017c81c      ldr   x8, [x8, 0x68]                       ; aav.0x00000068
│  ╎╎╎  │                                                              ; [0x68:4]=0xd61f0000
│  ╎╎╎ ┌──< 0x0017c820      cbz   x8, 0x17c894
│  ╎╎╎ ││   0x0017c824      adrp  x0, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│  ╎╎╎ ││   0x0017c828      add   x0, x0, 0x1e                         ; int64_t arg1
│  ╎╎╎ ││   0x0017c82c      bl    fcn.0014c9f8
│  ╎╎╎ ││   0x0017c830      mov   w19, -1
│  ╎╎╎┌───< 0x0017c834      b     0x17c8f0
│  ╎╎╎││└─> 0x0017c838      adrp  x0, 0x254000
│  ╎╎╎││    0x0017c83c      add   x0, x0, 0xcd                         ; int64_t arg1
│  ╎╎╎││    0x0017c840      bl    fcn.0014c9f8
│  ╎╎╎││    0x0017c844      adrp  x0, 0x241000
│  ╎╎╎││    0x0017c848      add   x0, x0, 0x66a                        ; int64_t arg1
│  ╎╎╎││    0x0017c84c      bl    fcn.0014c9f8
│  ╎╎╎││    0x0017c850      mov   w0, 7
│  ╎╎╎││    0x0017c854      bl    fcn.0010c560
│  ╎╎╎││    0x0017c858      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ╎╎╎││    0x0017c85c      mov   w0, 7
│  ╎╎╎││    0x0017c860      add   x1, x8, 0x68                         ; aav.0x00000068 ; int64_t arg2
│  ╎╎╎││    0x0017c864      bl    fcn.0010c62c
│  ╎╎╎││    0x0017c868      adrp  x0, 0x267000
│  ╎╎╎││    0x0017c86c      add   x0, x0, 0x2b7                        ; int64_t arg1
│  ╎╎╎││    0x0017c870      bl    fcn.0014c9f8
│  ╎╎╎││    0x0017c874      mov   w0, 8
│  ╎╎╎││    0x0017c878      bl    fcn.0010c560
│  ╎╎╎││    0x0017c87c      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│  ╎╎╎││    0x0017c880      mov   w0, 8
│  ╎╎╎││    0x0017c884      add   x1, x8, 0x70                         ; aav.0x00000070 ; int64_t arg2
│  ╎╎╎││    0x0017c888      bl    fcn.0010c62c
│  ╎╎╎││    0x0017c88c      mov   w19, 1
│  └──────< 0x0017c890      b     0x17c750
│   ╎╎│└──> 0x0017c894      adrp  x0, 0x241000
│   ╎╎│     0x0017c898      add   x0, x0, 0x66a                        ; int64_t arg1
│   ╎╎│     0x0017c89c      bl    fcn.0014c9f8
│   ╎╎│     0x0017c8a0      mov   w0, 7
│   ╎╎│     0x0017c8a4      bl    fcn.0010c560
│   ╎╎│     0x0017c8a8      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│   ╎╎│     0x0017c8ac      mov   x19, x0
│   ╎╎│     0x0017c8b0      mov   w0, 7
│   ╎╎│     0x0017c8b4      add   x1, x8, 0x68                         ; aav.0x00000068 ; int64_t arg2
│   ╎╎│     0x0017c8b8      bl    fcn.0010c62c
│   ╎╎│ ┌─< 0x0017c8bc      cbz   x19, 0x17c8d4
│   ╎╎│ │   0x0017c8c0      adrp  x0, 0x261000
│   ╎╎│ │   0x0017c8c4      add   x0, x0, 0x115                        ; int64_t arg1
│   ╎╎│ │   0x0017c8c8      mov   x1, x19                              ; int64_t arg2
│   ╎╎│ │   0x0017c8cc      bl    fcn.0017b890
│   ╎╎│┌──< 0x0017c8d0      b     0x17c8ec
│   ╎╎││└─> 0x0017c8d4      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│   ╎╎││    0x0017c8d8      adrp  x0, 0x276000
│   ╎╎││    0x0017c8dc      add   x0, x0, 0x9f0                        ; int64_t arg1
│   ╎╎││    0x0017c8e0      mov   w1, 7
│   ╎╎││    0x0017c8e4      ldr   x2, [x8, 0x68]                       ; aav.0x00000068
│   ╎╎││                                                               ; [0x68:4]=0xd61f0000 ; int64_t arg3
│   ╎╎││    0x0017c8e8      bl    fcn.0017b890
│   ╎╎││    ; CODE XREF from fcn.0017bfac @ 0x17c8d0
│   ╎╎│└──> 0x0017c8ec      mov   w19, 2
│   ╎╎│     ; CODE XREF from fcn.0017bfac @ 0x17c834
│   ╎╎└───> 0x0017c8f0      ldr   x8, [x21, 0x4b8]                     ; [0x4b8:4]=0xb900211f
│   ╎╎      0x0017c8f4      ldr   x8, [x8, 0x68]                       ; aav.0x00000068
│   ╎╎                                                                 ; [0x68:4]=0xd61f0000
│   └─────< 0x0017c8f8      cbz   x8, 0x17c750
│    ╎      0x0017c8fc      bl    fcn.0017d5b4
└    └────< 0x0017c900      b     0x17c750
            ; CALL XREF from fcn.0017bfac @ 0x17c684
