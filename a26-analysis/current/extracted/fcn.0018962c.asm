┌ fcn.0018962c(int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0018962c      pacibsp
│           0x00189630      stp   x29, x30, [var_30h]!
│           0x00189634      str   x21, [var_20h]
│           0x00189638      stp   x20, x19, [var_10h]
│           0x0018963c      mov   x29, sp
│           0x00189640      mov   w0, 0x15
│           0x00189644      bl    fcn.0018996c
│       ┌─< 0x00189648      cbz   w0, 0x189688
│       │   0x0018964c      adrp  x0, 0x241000
│       │   0x00189650      adrp  x1, 0x267000
│       │   0x00189654      add   x0, x0, 0x91c
│       │   0x00189658      add   x1, x1, 0x42f
│       │   0x0018965c      mov   w2, 0x13f
│       │   ; CODE XREFS from fcn.0018962c @ 0x189784, 0x189868
│     ┌┌──> 0x00189660      mov   w3, -1
│     ╎╎│   0x00189664      mov   w19, -1
│     ╎╎│   ; CODE XREF from fcn.0018962c @ 0x1898c8
│    ┌────> 0x00189668      bl    fcn.0014c9f8
│    ╎╎╎│   ; CODE XREFS from fcn.0018962c @ 0x189758, 0x189908
│  ┌┌─────> 0x0018966c      bl    fcn.00189b50
│  ╎╎╎╎╎│   0x00189670      mov   w0, w19
│  ╎╎╎╎╎│   0x00189674      ldp   x20, x19, [var_10h]
│  ╎╎╎╎╎│   0x00189678      ldr   x21, [var_20h]                       ; aav.0x00000010
│  ╎╎╎╎╎│                                                              ; [0x10:4]=0x14000004
│  ╎╎╎╎╎│   0x0018967c      ldp   x29, x30, [sp], 0x30
│  ╎╎╎╎╎│   0x00189680      autibsp
│  ╎╎╎╎╎│   0x00189684      ret
│  ╎╎╎╎╎└─> 0x00189688      adrp  x21, 0x5a6000
│  ╎╎╎╎╎    0x0018968c      ldr   x20, [x21, 0xac0]                    ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│  ╎╎╎╎╎    0x00189690      adrp  x0, 0x26f000
│  ╎╎╎╎╎    0x00189694      add   x0, x0, 0xe25                        ; int64_t arg1
│  ╎╎╎╎╎    0x00189698      bl    fcn.001758fc
│  ╎╎╎╎╎┌─< 0x0018969c      cbz   x0, 0x18975c
│  ╎╎╎╎╎│   0x001896a0      mov   x19, x0
│  ╎╎╎╎╎│   0x001896a4      adrp  x0, 0x279000
│  ╎╎╎╎╎│   0x001896a8      adrp  x1, 0x270000
│  ╎╎╎╎╎│   0x001896ac      add   x0, x0, 0xe99                        ; int64_t arg1
│  ╎╎╎╎╎│   0x001896b0      add   x1, x1, 0x5e                         ; int64_t arg2
│  ╎╎╎╎╎│   0x001896b4      add   x20, x20, 0x628
│  ╎╎╎╎╎│   0x001896b8      bl    fcn.0014c9f8
│  ╎╎╎╎╎│   0x001896bc      ldrb  w8, [x19, 0x14]!                     ; aav.0x00000014
│  ╎╎╎╎╎│                                                              ; [0x14:4]=0
│  ╎╎╎╎╎│   0x001896c0      mov   w3, aav.0x00001000
│  ╎╎╎╎╎│   0x001896c4      movk  w3, 1, lsl 16
│  ╎╎╎╎╎│   0x001896c8      mov   x0, x20                              ; int64_t arg1
│  ╎╎╎╎╎│   0x001896cc      ldrb  w1, [x19, 8]!                        ; aav.0x00000008
│  ╎╎╎╎╎│                                                              ; [0x8:4]=0x68656164 ; "daeh"
│  ╎╎╎╎╎│   0x001896d0      ldurb w12, [x19, -5]                       ; [0x5:4]=0x64214877
│  ╎╎╎╎╎│   0x001896d4      ldurb w13, [x19, -6]                       ; [0x6:4]=0x61642148
│  ╎╎╎╎╎│   0x001896d8      ldurb w14, [x19, -7]                       ; [0x7:4]=0x65616421
│  ╎╎╎╎╎│   0x001896dc      ldrb  w9, [x19, 3]                         ; [0x3:4]=0x48776b00
│  ╎╎╎╎╎│   0x001896e0      ldrb  w10, [x19, 2]                        ; [0x2:4]=0x776b0000
│  ╎╎╎╎╎│   0x001896e4      ldrb  w11, [x19, 1]                        ; [0x1:4]=0x6b000000
│  ╎╎╎╎╎│   0x001896e8      bfi   w13, w12, 8, 8
│  ╎╎╎╎╎│   0x001896ec      bfi   w8, w14, 8, 8
│  ╎╎╎╎╎│   0x001896f0      bfi   w10, w9, 8, 8
│  ╎╎╎╎╎│   0x001896f4      bfi   w1, w11, 8, 8
│  ╎╎╎╎╎│   0x001896f8      bfi   w8, w13, 0x10, 0x10
│  ╎╎╎╎╎│   0x001896fc      bfi   w1, w10, 0x10, 0x10
│  ╎╎╎╎╎│   0x00189700      add   w2, w8, 0x28
│  ╎╎╎╎╎│   0x00189704      bl    fcn.001390c0
│  ╎╎╎╎╎│   0x00189708      ldr   x20, [x21, 0xac0]                    ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n"
│  ╎╎╎╎╎│   0x0018970c      adrp  x19, 0x24a000
│  ╎╎╎╎╎│   0x00189710      add   x19, x19, 0x4bc
│  ╎╎╎╎╎│   0x00189714      mov   x0, x19                              ; int64_t arg1
│  ╎╎╎╎╎│   0x00189718      ldr   x8, [x20, 0x608]                     ; [0x608:4]=0x910163e9
│  ╎╎╎╎╎│   0x0018971c      orr   x8, x8, 1
│  ╎╎╎╎╎│   0x00189720      str   x8, [x20, 0x608]
│  ╎╎╎╎╎│   0x00189724      bl    fcn.0014db58
│  ╎╎╎╎╎│   0x00189728      mov   x2, x0
│  ╎╎╎╎╎│   0x0018972c      add   x0, x20, 0x628                       ; int64_t arg1
│  ╎╎╎╎╎│   0x00189730      mov   x1, x19                              ; int64_t arg2
│  ╎╎╎╎╎│   0x00189734      bl    fcn.0014d5c8
│ ┌───────< 0x00189738      cbz   w0, 0x189788
│ │╎╎╎╎╎│   0x0018973c      adrp  x0, 0x244000
│ │╎╎╎╎╎│   0x00189740      adrp  x1, 0x267000
│ │╎╎╎╎╎│   0x00189744      add   x0, x0, 0x304                        ; int64_t arg1
│ │╎╎╎╎╎│   0x00189748      add   x1, x1, 0x42f                        ; int64_t arg2
│ │╎╎╎╎╎│   0x0018974c      mov   w2, 0x14b
│ │╎╎╎╎╎│   0x00189750      bl    fcn.0014c9f8
│ │╎╎╎╎╎│   ; CODE XREF from fcn.0018962c @ 0x189968
│ ────────> 0x00189754      mov   w19, wzr
│ │└──────< 0x00189758      b     0x18966c
│ │ ╎╎╎╎└─> 0x0018975c      adrp  x0, 0x265000
│ │ ╎╎╎╎    0x00189760      adrp  x1, 0x270000
│ │ ╎╎╎╎    0x00189764      add   x0, x0, 0x5d3                        ; int64_t arg1
│ │ ╎╎╎╎    0x00189768      add   x1, x1, 0x5e                         ; int64_t arg2
│ │ ╎╎╎╎    0x0018976c      bl    fcn.0014c9f8
│ │ ╎╎╎╎    0x00189770      adrp  x0, 0x261000
│ │ ╎╎╎╎    0x00189774      adrp  x1, 0x267000
│ │ ╎╎╎╎    0x00189778      add   x0, x0, 0x306
│ │ ╎╎╎╎    0x0018977c      add   x1, x1, 0x42f
│ │ ╎╎╎╎    0x00189780      mov   w2, 0x145
│ │ ╎╎└───< 0x00189784      b     0x189660
│ └───────> 0x00189788      adrp  x0, 0x26f000
│   ╎╎ ╎    0x0018978c      add   x0, x0, 0xe25                        ; int64_t arg1
│   ╎╎ ╎    0x00189790      bl    fcn.001758fc
│   ╎╎ ╎┌─< 0x00189794      cbz   x0, 0x189840
│   ╎╎ ╎│   0x00189798      mov   x19, x0
│   ╎╎ ╎│   0x0018979c      mov   w8, 0xf094
│   ╎╎ ╎│   0x001897a0      adrp  x0, 0x279000
│   ╎╎ ╎│   0x001897a4      adrp  x1, 0x26e000
│   ╎╎ ╎│   0x001897a8      movk  w8, 1, lsl 16
│   ╎╎ ╎│   0x001897ac      add   x0, x0, 0xe99                        ; int64_t arg1
│   ╎╎ ╎│   0x001897b0      add   x1, x1, 0x10b                        ; int64_t arg2
│   ╎╎ ╎│   0x001897b4      add   x20, x20, x8
│   ╎╎ ╎│   0x001897b8      bl    fcn.0014c9f8
│   ╎╎ ╎│   0x001897bc      ldrb  w8, [x19, 0x14]!                     ; aav.0x00000014
│   ╎╎ ╎│                                                              ; [0x14:4]=0
│   ╎╎ ╎│   0x001897c0      mov   w3, 0x2c00
│   ╎╎ ╎│   0x001897c4      mov   x0, x20                              ; int64_t arg1
│   ╎╎ ╎│   0x001897c8      ldrb  w1, [x19, 8]!                        ; aav.0x00000008
│   ╎╎ ╎│                                                              ; [0x8:4]=0x68656164 ; "daeh"
│   ╎╎ ╎│   0x001897cc      ldurb w12, [x19, -5]                       ; [0x5:4]=0x64214877
│   ╎╎ ╎│   0x001897d0      ldurb w13, [x19, -6]                       ; [0x6:4]=0x61642148
│   ╎╎ ╎│   0x001897d4      ldurb w14, [x19, -7]                       ; [0x7:4]=0x65616421
│   ╎╎ ╎│   0x001897d8      ldrb  w9, [x19, 3]                         ; [0x3:4]=0x48776b00
│   ╎╎ ╎│   0x001897dc      ldrb  w10, [x19, 2]                        ; [0x2:4]=0x776b0000
│   ╎╎ ╎│   0x001897e0      ldrb  w11, [x19, 1]                        ; [0x1:4]=0x6b000000
│   ╎╎ ╎│   0x001897e4      bfi   w13, w12, 8, 8
│   ╎╎ ╎│   0x001897e8      bfi   w8, w14, 8, 8
│   ╎╎ ╎│   0x001897ec      bfi   w10, w9, 8, 8
│   ╎╎ ╎│   0x001897f0      bfi   w1, w11, 8, 8
│   ╎╎ ╎│   0x001897f4      bfi   w8, w13, 0x10, 0x10
│   ╎╎ ╎│   0x001897f8      bfi   w1, w10, 0x10, 0x10
│   ╎╎ ╎│   0x001897fc      add   w2, w8, 0x12
│   ╎╎ ╎│   0x00189800      bl    fcn.001390c0
│   ╎╎ ╎│   0x00189804      ldr   x0, [x21, 0xac0]                     ; [0xac0:4]=0x6e612065 ; "e and RP count success\r\n" ; int64_t arg1
│   ╎╎ ╎│   0x00189808      adrp  x21, 0x5a6000
│   ╎╎ ╎│   0x0018980c      ldr   x1, [x21, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n" ; int64_t arg2
│   ╎╎ ╎│   0x00189810      ldr   x8, [x0, 0x608]                      ; [0x608:4]=0x910163e9
│   ╎╎ ╎│   0x00189814      orr   x8, x8, 0x20
│   ╎╎ ╎│   0x00189818      str   x8, [x0, 0x608]
│   ╎╎ ╎│   0x0018981c      bl    fcn.001690d8
│   ╎╎┌───< 0x00189820      cbz   w0, 0x18986c
│   ╎╎│╎│   0x00189824      mov   w19, w0
│   ╎╎│╎│   0x00189828      adrp  x0, 0x24f000
│   ╎╎│╎│   0x0018982c      adrp  x1, 0x267000
│   ╎╎│╎│   0x00189830      add   x0, x0, 0xa60
│   ╎╎│╎│   0x00189834      add   x1, x1, 0x42f
│   ╎╎│╎│   0x00189838      mov   w2, fcn.00000158                     ; 0x158
│  ┌──────< 0x0018983c      b     0x1898c4
│  │╎╎│╎└─> 0x00189840      adrp  x0, 0x265000
│  │╎╎│╎    0x00189844      adrp  x1, 0x26e000
│  │╎╎│╎    0x00189848      add   x0, x0, 0x5d3                        ; int64_t arg1
│  │╎╎│╎    0x0018984c      add   x1, x1, 0x10b                        ; int64_t arg2
│  │╎╎│╎    0x00189850      bl    fcn.0014c9f8
│  │╎╎│╎    0x00189854      adrp  x0, 0x241000
│  │╎╎│╎    0x00189858      adrp  x1, 0x267000
│  │╎╎│╎    0x0018985c      add   x0, x0, 0x949
│  │╎╎│╎    0x00189860      add   x1, x1, 0x42f
│  │╎╎│╎    0x00189864      mov   w2, 0x151
│  │╎╎│└──< 0x00189868      b     0x189660
│  │╎╎└───> 0x0018986c      ldr   x0, [x21, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n" ; int64_t arg1
│  │╎╎      0x00189870      bl    fcn.001584cc
│  │╎╎  ┌─< 0x00189874      cbz   w0, 0x189894
│  │╎╎  │   0x00189878      mov   w19, w0
│  │╎╎  │   0x0018987c      adrp  x0, 0x23f000
│  │╎╎  │   0x00189880      adrp  x1, 0x267000
│  │╎╎  │   0x00189884      add   x0, x0, 0x2da
│  │╎╎  │   0x00189888      add   x1, x1, 0x42f
│  │╎╎  │   0x0018988c      mov   w2, 0x15e
│  │╎╎ ┌──< 0x00189890      b     0x1898c4
│  │╎╎ │└─> 0x00189894      adrp  x20, 0x5a6000
│  │╎╎ │    0x00189898      ldr   x0, [x20, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n" ; int64_t arg1
│  │╎╎ │    0x0018989c      ldr   x1, [x21, 0xac8]                     ; [0xac8:4]=0x756f6320 ; " count success\r\n" ; int64_t arg2
│  │╎╎ │    0x001898a0      mov   w2, wzr
│  │╎╎ │    0x001898a4      bl    fcn.00169738
│  │╎╎ │┌─< 0x001898a8      cbz   w0, 0x1898cc
│  │╎╎ ││   0x001898ac      mov   w19, w0
│  │╎╎ ││   0x001898b0      adrp  x0, 0x24a000
│  │╎╎ ││   0x001898b4      adrp  x1, 0x267000
│  │╎╎ ││   0x001898b8      add   x0, x0, 0xcda
│  │╎╎ ││   0x001898bc      add   x1, x1, 0x42f
│  │╎╎ ││   0x001898c0      mov   w2, aav.0x00000164                   ; "4"
│  │╎╎ ││   ; CODE XREFS from fcn.0018962c @ 0x18983c, 0x189890
│  └───└──> 0x001898c4      mov   w3, w19
│   ╎└────< 0x001898c8      b     0x189668
│   ╎   └─> 0x001898cc      ldr   x8, [x20, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n"
│   ╎       0x001898d0      ldr   w19, [x8]
│   ╎   ┌─< 0x001898d4      cbz   w19, 0x18990c
│   ╎   │   0x001898d8      adrp  x0, 0x253000
│   ╎   │   0x001898dc      adrp  x1, 0x267000
│   ╎   │   0x001898e0      add   x0, x0, 0xe7b                        ; int64_t arg1
│   ╎   │   0x001898e4      add   x1, x1, 0x42f                        ; int64_t arg2
│   ╎   │   0x001898e8      mov   w2, 0x16a
│   ╎   │   0x001898ec      mov   w3, w19
│   ╎   │   0x001898f0      bl    fcn.0014c9f8
│   ╎   │   0x001898f4      ldr   x8, [x20, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n"
│   ╎   │   0x001898f8      ldrb  w8, [x8, 0x18]                       ; aav.0x00000018
│   ╎   │                                                              ; [0x18:4]=0x7600000
│   ╎   │   0x001898fc      tst   w8, 0x80
│   ╎   │   0x00189900      mov   w8, -0x578
│   ╎   │   0x00189904      csel  w19, w19, w8, eq
│   └─────< 0x00189908      b     0x18966c
│       └─> 0x0018990c      ldrb  w8, [x8, 0x18]                       ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│ ────────< 0x00189910      tbz   w8, 5, 0x189754
│           0x00189914      adrp  x19, 0x267000
│           0x00189918      adrp  x0, 0x27b000
│           0x0018991c      add   x19, x19, 0x42f
│           0x00189920      add   x0, x0, 0x254                        ; int64_t arg1
│           0x00189924      mov   w2, 0x171
│           0x00189928      mov   x1, x19                              ; int64_t arg2
│           0x0018992c      bl    fcn.0014c9f8
│           0x00189930      ldr   x8, [x20, 0xad0]                     ; [0xad0:4]=0x65636375 ; "uccess\r\n"
│           0x00189934      adrp  x20, 0x5a6000
│           0x00189938      add   x20, x20, 0xa90
│           0x0018993c      mov   w2, 0x20
│           0x00189940      add   x1, x8, 0x120                        ; int64_t arg2
│           0x00189944      mov   x0, x20                              ; int64_t arg1
│           0x00189948      bl    fcn.0014d60c
│           0x0018994c      ldp   x3, x4, [x20]                        ; int64_t arg5
│           0x00189950      ldp   x5, x6, [x20, 0x10]                  ; int64_t arg7
│           0x00189954      adrp  x0, 0x27d000
│           0x00189958      add   x0, x0, 0x4c3                        ; int64_t arg1
│           0x0018995c      mov   w2, 0x174
│           0x00189960      mov   x1, x19                              ; int64_t arg2
│           0x00189964      bl    fcn.0014c9f8
└ ────────< 0x00189968      b     0x189754
            ; XREFS: CALL 0x00188cc0  CALL 0x00188fd8  CALL 0x00189644
            ; XREFS: CALL 0x00189e14  CALL 0x0018a020  CALL 0x0018a2d0
            ; XREFS: CALL 0x0018a8e0
