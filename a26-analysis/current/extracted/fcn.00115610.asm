┌ fcn.00115610(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; var int64_t var_c8h @ stack - 0xc8
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00115610      pacibsp
│           0x00115614      sub   sp, sp, 0x120
│           0x00115618      stp   x29, x30, [var_30h]
│           0x0011561c      str   x28, [var_20h]
│           0x00115620      stp   x20, x19, [var_10h]
│           0x00115624      add   x29, sp, 0xf0
│           ; DATA XREF from aav.0x000493e0 @ +0x2380
│           0x00115628      bl    fcn.0017df80
│           0x0011562c      bl    fcn.0016e568
│       ┌─< 0x00115630      tbnz  w0, 0x13, 0x115724
│       │   0x00115634      mov   w0, 0x47                             ; 'G'
│       │   0x00115638      bl    fcn.00150ad4
│       │   0x0011563c      mov   w1, 0x14
│       │   0x00115640      bl    fcn.0014dcc4
│      ┌──< 0x00115644      cbz   x0, 0x115660
│      ││   0x00115648      mov   w0, 0x47                             ; 'G'
│      ││   0x0011564c      mov   w1, 1
│      ││   0x00115650      bl    fcn.00150e08
│      ││   0x00115654      adrp  x0, 0x240000
│      ││   0x00115658      add   x0, x0, 0x8d9                        ; int64_t arg1
│      ││   0x0011565c      bl    fcn.0014c9f8
│      └──> 0x00115660      adrp  x0, 0x23c000
│       │   0x00115664      add   x0, x0, 0x521                        ; int64_t arg1
│       │   0x00115668      bl    fcn.001758fc
│       │   0x0011566c      mov   x19, x0
│      ┌──< 0x00115670      cbz   x19, 0x115824
│     ┌───> 0x00115674      bl    fcn.0016e568
│     ╎││   0x00115678      mov   x20, x19
│     ╎││   0x0011567c      ldrb  w3, [x20, 0x14]!                     ; aav.0x00000014
│     ╎││                                                              ; [0x14:4]=0
│     ╎││   0x00115680      ldrb  w10, [x19, 0x15]                     ; [0x15:4]=0
│     ╎││   0x00115684      adrp  x8, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│     ╎││   0x00115688      adrp  x9, 0x275000
│     ╎││   0x0011568c      ldrb  w11, [x20, 3]                        ; [0x3:4]=0x48776b00
│     ╎││   0x00115690      ldrb  w12, [x20, 2]                        ; [0x2:4]=0x776b0000
│     ╎││   0x00115694      add   x8, x8, 0x3bc
│     ╎││   0x00115698      add   x9, x9, 0xc21
│     ╎││   0x0011569c      tst   w0, aav.0x00080000
│     ╎││   0x001156a0      bfi   w3, w10, 8, 8
│     ╎││   0x001156a4      bfi   w12, w11, 8, 8
│     ╎││   0x001156a8      adrp  x0, 0x24c000
│     ╎││   0x001156ac      adrp  x1, 0x245000
│     ╎││   0x001156b0      csel  x2, x9, x8, eq                       ; unsigned long arg3
│     ╎││   0x001156b4      bfi   w3, w12, 0x10, 0x10
│     ╎││   0x001156b8      add   x0, x0, 0xa4                         ; int64_t arg1
│     ╎││   0x001156bc      add   x1, x1, 0x57e                        ; int64_t arg2
│     ╎││   0x001156c0      bl    fcn.0014c9f8
│     ╎││   0x001156c4      mov   x8, x19
│     ╎││   0x001156c8      ldrb  w10, [x8, 0x18]!                     ; aav.0x00000018
│     ╎││                                                              ; [0x18:4]=0x7600000
│     ╎││   0x001156cc      ldrb  w9, [x20, 3]                         ; [0x3:4]=0x48776b00
│     ╎││   0x001156d0      ldrb  w11, [x20, 2]                        ; [0x2:4]=0x776b0000
│     ╎││   0x001156d4      ldrb  w12, [x19, 0x15]                     ; [0x15:4]=0
│     ╎││   0x001156d8      ldrb  w2, [x20]
│     ╎││   0x001156dc      ldrb  w1, [x8, 4]!                         ; str.kwH_daeh
│     ╎││                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│     ╎││   0x001156e0      bfi   w11, w9, 8, 8
│     ╎││   0x001156e4      mov   w0, -0x5c000000
│     ╎││   0x001156e8      bfi   w2, w12, 8, 8
│     ╎││   0x001156ec      ldurb w13, [x8, -3]                        ; [0x3:4]=0x48776b00
│     ╎││   0x001156f0      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│     ╎││   0x001156f4      ldrb  w12, [x8, 2]                         ; [0x2:4]=0x776b0000
│     ╎││   0x001156f8      bfi   w2, w11, 0x10, 0x10
│     ╎││   0x001156fc      ldrb  w11, [x8, 1]                         ; [0x1:4]=0x6b000000
│     ╎││   0x00115700      ldurb w8, [x8, -2]                         ; [0x2:4]=0x776b0000
│     ╎││   0x00115704      bfi   w10, w13, 8, 8
│     ╎││   0x00115708      bfi   w12, w9, 8, 8
│     ╎││   0x0011570c      bfi   w1, w11, 8, 8
│     ╎││   0x00115710      bfi   w10, w8, 0x10, 8
│     ╎││   0x00115714      bfi   w1, w12, 0x10, 0x10
│     ╎││   0x00115718      lsl   w3, w10, 9
│     ╎││   0x0011571c      bl    fcn.001390c0
│    ┌────< 0x00115720      b     0x11584c
│    │╎│└─> 0x00115724      adrp  x0, 0x266000
│    │╎│    0x00115728      add   x0, x0, 0x87c                        ; int64_t arg1
│    │╎│    0x0011572c      bl    fcn.001758fc
│    │╎│    0x00115730      mov   x19, x0
│    │╎│    0x00115734      mov   w0, 0x24
│    │╎│    0x00115738      mov   w3, 1
│    │╎│    0x0011573c      mov   w1, wzr
│    │╎│    0x00115740      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x00115744      bl    fcn.001503d0
│    │╎│    0x00115748      mov   w0, 0x17
│    │╎│    0x0011574c      mov   w3, 1
│    │╎│    0x00115750      mov   w1, wzr
│    │╎│    0x00115754      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x00115758      bl    fcn.001503d0
│    │╎│    0x0011575c      mov   w0, 0x18
│    │╎│    0x00115760      mov   w3, 1
│    │╎│    0x00115764      mov   w1, wzr
│    │╎│    0x00115768      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x0011576c      bl    fcn.001503d0
│    │╎│    0x00115770      mov   w0, 0xe
│    │╎│    0x00115774      bl    fcn.00150b58
│    │╎│    0x00115778      mov   w1, w0
│    │╎│    0x0011577c      mov   w0, 0x14
│    │╎│    0x00115780      mov   w3, 1
│    │╎│    0x00115784      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x00115788      bl    fcn.001503d0
│    │╎│    0x0011578c      mov   w0, 0xe
│    │╎│    0x00115790      mov   w3, 1
│    │╎│    0x00115794      mov   w1, wzr
│    │╎│    0x00115798      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x0011579c      bl    fcn.001503d0
│    │╎│    0x001157a0      mov   w0, 2
│    │╎│    0x001157a4      mov   w1, 0x4f4c                           ; 'LO'
│    │╎│    0x001157a8      mov   w3, 1
│    │╎│    0x001157ac      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x001157b0      bl    fcn.001503d0
│    │╎│    0x001157b4      mov   w0, 2
│    │╎│    0x001157b8      bl    fcn.00150b58
│    │╎│    0x001157bc      mov   w1, w0
│    │╎│    0x001157c0      adrp  x0, 0x23c000
│    │╎│    0x001157c4      add   x0, x0, 0x574                        ; int64_t arg1
│    │╎│    0x001157c8      bl    fcn.0014c9f8
│    │╎│    0x001157cc      mov   w0, 0x11
│    │╎│    0x001157d0      mov   w3, 1
│    │╎│    0x001157d4      mov   w1, wzr
│    │╎│    0x001157d8      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x001157dc      bl    fcn.001503d0
│    │╎│    0x001157e0      mov   w0, 0x11
│    │╎│    0x001157e4      bl    fcn.00150b58
│    │╎│    0x001157e8      mov   w1, w0
│    │╎│    0x001157ec      adrp  x0, 0x25d000
│    │╎│    0x001157f0      add   x0, x0, 0xd88                        ; int64_t arg1
│    │╎│    0x001157f4      bl    fcn.0014c9f8
│    │╎│    0x001157f8      mov   w0, 0x4f4c                           ; 'LO'
│    │╎│    0x001157fc      bl    fcn.00113f34
│    │╎│    0x00115800      mov   w0, 0x2d                             ; '-'
│    │╎│    0x00115804      mov   w3, 1
│    │╎│    0x00115808      mov   w1, wzr
│    │╎│    0x0011580c      mov   x2, xzr                              ; int64_t arg3
│    │╎│    0x00115810      bl    fcn.001503d0
│    │╎│    0x00115814      adrp  x0, 0x27a000
│    │╎│    0x00115818      add   x0, x0, 0x437                        ; int64_t arg1
│    │╎│    0x0011581c      bl    fcn.0014c9f8
│    │└───< 0x00115820      cbnz  x19, 0x115674
│    │ └──> 0x00115824      adrp  x0, 0x260000
│    │      0x00115828      add   x0, x0, 0x489                        ; int64_t arg1
│    │      0x0011582c      bl    fcn.0014c9f8
│    │      0x00115830      adrp  x0, 0x27a000
│    │      0x00115834      adrp  x1, 0x245000
│    │      0x00115838      add   x0, x0, 0x451                        ; int64_t arg1
│    │      0x0011583c      add   x1, x1, 0x57e                        ; int64_t arg2
│    │      0x00115840      bl    fcn.00154754
│    │      0x00115844      mov   w0, 0xf
│    │      0x00115848      bl    fcn.00154834
│    │      ; CODE XREF from fcn.00115610 @ 0x115720
│    └────> 0x0011584c      bl    fcn.001530ec
│           0x00115850      cmp   w0, 3
│       ┌─< 0x00115854      b.eq  0x115864
│       │   0x00115858      bl    fcn.001530ec
│       │   0x0011585c      cmp   w0, 4
│      ┌──< 0x00115860      b.ne  0x1158f8
│      │└─> 0x00115864      adrp  x0, 0x259000
│      │    0x00115868      add   x0, x0, 0xc3b                        ; int64_t arg1
│      │    0x0011586c      bl    fcn.001758fc
│      │┌─< 0x00115870      cbz   x0, 0x1158d0
│      ││   0x00115874      ldrb  w1, [x0, 0x1c]!                      ; aav.0x0000001c
│      ││                                                              ; [0x1c:4]=0
│      ││   0x00115878      ldrb  w2, [x0, -8]!                        ; aav.0x00000008
│      ││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      ││   0x0011587c      ldrb  w8, [x0, 4]!                         ; str.kwH_daeh
│      ││                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh" ; int64_t arg1
│      ││   0x00115880      ldrb  w9, [x0, 7]                          ; [0x7:4]=0x65616421
│      ││   0x00115884      ldrb  w10, [x0, 6]                         ; [0x6:4]=0x61642148
│      ││   0x00115888      ldrb  w11, [x0, 5]                         ; [0x5:4]=0x64214877
│      ││   0x0011588c      ldurb w12, [x0, -1]                        ; [0x1:4]=0x6b000000
│      ││   0x00115890      ldurb w13, [x0, -2]                        ; [0x2:4]=0x776b0000
│      ││   0x00115894      bfi   w10, w9, 8, 8
│      ││   0x00115898      ldurb w9, [x0, -3]                         ; [0x3:4]=0x48776b00
│      ││   0x0011589c      bfi   w1, w11, 8, 8
│      ││   0x001158a0      ldrb  w11, [x0, 1]                         ; [0x1:4]=0x6b000000
│      ││   0x001158a4      bfi   w13, w12, 8, 8
│      ││   0x001158a8      bfi   w2, w9, 8, 8
│      ││   0x001158ac      ldrb  w9, [x0, 2]                          ; [0x2:4]=0x776b0000
│      ││   0x001158b0      bfi   w8, w11, 8, 8
│      ││   0x001158b4      bfi   w1, w10, 0x10, 0x10
│      ││   0x001158b8      bfi   w2, w13, 0x10, 0x10
│      ││   0x001158bc      bfi   w8, w9, 0x10, 8
│      ││   0x001158c0      lsl   w3, w8, 9
│      ││   0x001158c4      mov   w0, -0x54000000
│      ││   0x001158c8      bl    fcn.001390c0
│     ┌───< 0x001158cc      b     0x1158f8
│     ││└─> 0x001158d0      adrp  x0, 0x260000
│     ││    0x001158d4      add   x0, x0, 0x489                        ; int64_t arg1
│     ││    0x001158d8      bl    fcn.0014c9f8
│     ││    0x001158dc      adrp  x0, 0x27a000
│     ││    0x001158e0      adrp  x1, 0x245000
│     ││    0x001158e4      add   x0, x0, 0x451                        ; int64_t arg1
│     ││    0x001158e8      add   x1, x1, 0x57e                        ; int64_t arg2
│     ││    0x001158ec      bl    fcn.00154754
│     ││    0x001158f0      mov   w0, 0xf
│     ││    0x001158f4      bl    fcn.00154834
│     ││    ; CODE XREF from fcn.00115610 @ 0x1158cc
│     └└──> 0x001158f8      bl    fcn.001530ec
│           0x001158fc      cmp   w0, 4
│       ┌─< 0x00115900      b.ne  0x1159cc
│       │   0x00115904      adrp  x0, 0x25b000
│       │   0x00115908      add   x0, x0, 0xe3a                        ; int64_t arg1
│       │   0x0011590c      bl    fcn.001758fc
│       │   0x00115910      mov   x19, x0
│      ┌──< 0x00115914      cbnz  x0, 0x115940
│      ││   0x00115918      adrp  x0, 0x257000
│      ││   0x0011591c      add   x0, x0, 0x4a9                        ; int64_t arg1
│      ││   0x00115920      bl    fcn.0014c9f8
│      ││   0x00115924      adrp  x0, 0x24c000
│      ││   0x00115928      adrp  x1, 0x245000
│      ││   0x0011592c      add   x0, x0, 0xc4                         ; int64_t arg1
│      ││   0x00115930      add   x1, x1, 0x57e                        ; int64_t arg2
│      ││   0x00115934      bl    fcn.00154754
│      ││   0x00115938      mov   w0, 0xf
│      ││   0x0011593c      bl    fcn.00154834
│      └──> 0x00115940      ldrb  w1, [x19, 0x1c]!                     ; aav.0x0000001c
│       │                                                              ; [0x1c:4]=0
│       │   0x00115944      mov   w0, -0x74000000
│       │   0x00115948      ldrb  w2, [x19, -8]!                       ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x0011594c      ldrb  w8, [x19, 4]!                        ; str.kwH_daeh
│       │                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│       │   0x00115950      ldrb  w9, [x19, 7]                         ; [0x7:4]=0x65616421
│       │   0x00115954      ldrb  w10, [x19, 6]                        ; [0x6:4]=0x61642148
│       │   0x00115958      ldrb  w11, [x19, 5]                        ; [0x5:4]=0x64214877
│       │   0x0011595c      ldurb w12, [x19, -1]                       ; [0x1:4]=0x6b000000
│       │   0x00115960      ldurb w13, [x19, -2]                       ; [0x2:4]=0x776b0000
│       │   0x00115964      bfi   w10, w9, 8, 8
│       │   0x00115968      ldurb w9, [x19, -3]                        ; [0x3:4]=0x48776b00
│       │   0x0011596c      bfi   w1, w11, 8, 8
│       │   0x00115970      ldrb  w11, [x19, 1]                        ; [0x1:4]=0x6b000000
│       │   0x00115974      bfi   w13, w12, 8, 8
│       │   0x00115978      bfi   w2, w9, 8, 8
│       │   0x0011597c      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│       │   0x00115980      bfi   w8, w11, 8, 8
│       │   0x00115984      bfi   w1, w10, 0x10, 0x10
│       │   0x00115988      bfi   w2, w13, 0x10, 0x10
│       │   0x0011598c      bfi   w8, w9, 0x10, 8
│       │   0x00115990      lsl   w3, w8, 9
│       │   0x00115994      bl    fcn.001390c0
│       │   0x00115998      mov   w8, 0x28
│       │   0x0011599c      movk  w8, 0x8c00, lsl 16
│       │   0x001159a0      ldr   w3, [x8]
│       │   0x001159a4      cmp   w3, 4
│      ┌──< 0x001159a8      b.eq  0x1159cc
│      ││   0x001159ac      adrp  x0, 0x271000
│      ││   0x001159b0      adrp  x1, 0x245000
│      ││   0x001159b4      add   x0, x0, 0x4ca                        ; int64_t arg1
│      ││   0x001159b8      add   x1, x1, 0x57e                        ; int64_t arg2
│      ││   0x001159bc      mov   w2, 4
│      ││   0x001159c0      bl    fcn.0014c9f8
│      ││   0x001159c4      mov   w0, 0xf
│      ││   0x001159c8      bl    fcn.00154834
│      └└─> 0x001159cc      adrp  x1, 0x242000
│           0x001159d0      add   x1, x1, 0xeda                        ; int64_t arg2
│           0x001159d4      mov   w0, -0x5c000000
│           0x001159d8      mov   w2, 8
│           0x001159dc      bl    fcn.0014d5c8
│       ┌─< 0x001159e0      cbz   w0, 0x115a00
│       │   0x001159e4      adrp  x0, 0x25b000
│       │   0x001159e8      adrp  x1, 0x245000
│       │   0x001159ec      add   x0, x0, 0xeef                        ; int64_t arg1
│       │   0x001159f0      add   x1, x1, 0x57e                        ; int64_t arg2
│       │   0x001159f4      bl    fcn.00154754
│       │   0x001159f8      mov   w0, 0xf
│       │   0x001159fc      bl    fcn.00154834
│       └─> 0x00115a00      mov   w0, 0x101c
│           0x00115a04      movk  w0, 0xc200, lsl 16
│           0x00115a08      mov   x1, xzr
│           0x00115a0c      mov   x2, xzr
│           0x00115a10      mov   x3, xzr
│           0x00115a14      dsb   sy
│           0x00115a18      smc   0
│           0x00115a1c      mov   x8, x2
│       ┌─< 0x00115a20      cbz   x0, 0x115a48
│       │   0x00115a24      mov   x5, x1                               ; int64_t arg6
│       │   0x00115a28      mov   x1, x0                               ; int64_t arg2
│       │   0x00115a2c      adrp  x0, 0x247000
│       │   0x00115a30      mov   x4, x3                               ; int64_t arg5
│       │   0x00115a34      add   x0, x0, 0x921                        ; int64_t arg1
│       │   0x00115a38      mov   x2, x5                               ; unsigned long arg3
│       │   0x00115a3c      mov   x3, x8                               ; int64_t arg4
│       │   0x00115a40      bl    fcn.0014c9f8
│       │   0x00115a44      mov   x8, xzr
│       └─> 0x00115a48      mov   w10, 0xf000
│           0x00115a4c      mov   w11, 0xcdef
│           0x00115a50      ubfiz w8, w8, 0xf, 6
│           0x00115a54      adrp  x9, 0x55c000
│           0x00115a58      movk  w10, 0x8fff, lsl 16
│           0x00115a5c      movk  w11, 0xcdef, lsl 16
│           0x00115a60      str   w8, [x9, aav.0x00000d00]
│           0x00115a64      str   w11, [x10]
│           0x00115a68      ldr   w8, [x9, aav.0x00000d00]             ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│           0x00115a6c      mov   w11, -0x5c000000
│           0x00115a70      str   w8, [x10, 4]
│           0x00115a74      ldr   w9, [x9, aav.0x00000d00]             ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│           0x00115a78      mov   w8, -0x7af00000
│           0x00115a7c      mov   w10, -0x54000000
│           0x00115a80      str   x8, [var_c8h + 0x28]
│           0x00115a84      mov   w8, -0x74000000
│           0x00115a88      eor   x9, x9, 0x80000000
│           0x00115a8c      str   x10, [var_c8h + 0x50]
│           0x00115a90      str   x11, [sp, 0x30]
│           0x00115a94      str   x9, [var_c8h]
│           0x00115a98      str   x8, [var_c8h + 0x78]
│           0x00115a9c      bl    fcn.001530ec
│           0x00115aa0      cmp   w0, 2
│       ┌─< 0x00115aa4      b.ne  0x115ab8
│       │   0x00115aa8      mov   x1, sp                               ; int64_t arg2
│       │   0x00115aac      mov   w0, 6
│       │   0x00115ab0      bl    fcn.00153180
│      ┌──< 0x00115ab4      b     0x115afc
│      │└─> 0x00115ab8      bl    fcn.001530ec
│      │    0x00115abc      cmp   w0, 4
│      │┌─< 0x00115ac0      b.ne  0x115ad4
│      ││   0x00115ac4      mov   x1, sp                               ; int64_t arg2
│      ││   0x00115ac8      mov   w0, 6
│      ││   0x00115acc      bl    fcn.00153998
│     ┌───< 0x00115ad0      b     0x115afc
│     ││└─> 0x00115ad4      mov   w8, 0x28
│     ││    0x00115ad8      movk  w8, 0xa400, lsl 16
│     ││    0x00115adc      ldr   w2, [x8]
│     ││    0x00115ae0      adrp  x0, 0x23e000
│     ││    0x00115ae4      adrp  x1, 0x245000
│     ││    0x00115ae8      add   x0, x0, 0x4bd                        ; int64_t arg1
│     ││    0x00115aec      add   x1, x1, 0x57e                        ; int64_t arg2
│     ││    0x00115af0      bl    fcn.0014c9f8
│     ││    0x00115af4      mov   w0, 0xf
│     ││    0x00115af8      bl    fcn.00154834
│     ││    ; CODE XREFS from fcn.00115610 @ 0x115ab4, 0x115ad0
│     └└──> 0x00115afc      ldr   x0, [var_c8h]                        ; aav.0x00000058
│                                                                      ; [0x58:4]=0xd51e1000
│           0x00115b00      bl    fcn.00153080
│           0x00115b04      bl    fcn.0016e568
│           0x00115b08      and   w19, w0, aav.0x00080000
│           0x00115b0c      bl    fcn.001530cc
│           0x00115b10      mov   w1, w0
│           0x00115b14      mov   w0, w19
│           0x00115b18      bl    fcn.00170a70
│       ┌─< 0x00115b1c      cbz   w0, 0x115b28
│       │   0x00115b20      mov   w0, 0xc
│       │   0x00115b24      bl    fcn.00154834
│       └─> 0x00115b28      ldp   x20, x19, [var_10h]
│           0x00115b2c      ldr   x28, [var_20h]                       ; aav.0x00000100
│                                                                      ; [0x100:4]=0x34000040 ; "@"
│           0x00115b30      ldp   x29, x30, [var_30h]
│           0x00115b34      mov   w0, wzr
│           0x00115b38      add   sp, sp, 0x120
│           0x00115b3c      autibsp
└           0x00115b40      ret
            ; CODE XREF from fcn.00115404 @ 0x115484
