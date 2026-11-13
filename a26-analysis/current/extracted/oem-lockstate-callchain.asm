# A26 OEM lock-state call-chain extraction

Firmware: SM-A266B / A266BXXUCDZJ6. These are complete function bodies extracted from the repository's full SBoot disassembly parts, with ANSI terminal color sequences removed only. Instructions and addresses are otherwise preserved.

Source blobs:
- `full-sboot-part-00` Git blob `68da528947ea0c4c984827631c7744e2a2b62fae`
- `full-sboot-part-01` Git blob `7a5bd5636f11432a367d04a97e3d607fd6d540cd`

The function line counts below are measured from the extracted text; compare with `function-index.tsv` where an entry exists.



========================================================================================
FUNCTION fcn.00115610
SOURCE full-sboot-part-00
LINES 358
========================================================================================

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


========================================================================================
FUNCTION fcn.00153180
SOURCE full-sboot-part-00
LINES 342
========================================================================================

┌ fcn.00153180(unsigned long arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg unsigned long arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00153180      pacibsp
│           0x00153184      stp   x29, x30, [var_60h]!
│           0x00153188      str   x27, [var_50h]
│           0x0015318c      stp   x26, x25, [var_40h]
│           0x00153190      stp   x24, x23, [var_30h]
│           0x00153194      stp   x22, x21, [var_20h]
│           0x00153198      stp   x20, x19, [var_10h]
│           0x0015319c      mov   x29, sp
│           0x001531a0      cmp   w0, 6                                ; arg1
│       ┌─< 0x001531a4      b.ne  0x153618
│       │   0x001531a8      ldr   x19, [x1, 0x30]                      ; aav.0x00000030
│       │                                                              ; [0x30:4]=0x58000911
│       │   0x001531ac      ldr   x21, [x1, 0x58]                      ; aav.0x00000058
│       │                                                              ; [0x58:4]=0xd51e1000
│       │   0x001531b0      ldr   x20, [x1, 0x80]                      ; aav.0x00000080
│       │                                                              ; [0x80:4]=0xd53e1000
│       │   0x001531b4      mov   x8, x19
│       │   0x001531b8      ldrb  w9, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001531bc      mov   x11, x19
│       │   0x001531c0      ldrb  w12, [x11, 0x10]!                    ; aav.0x00000010
│       │                                                              ; [0x10:4]=0x14000004
│       │   0x001531c4      ldrb  w10, [x19, 9]                        ; [0x9:4]=0x686561
│       │   0x001531c8      ldrb  w14, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x001531cc      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x001531d0      ldrb  w13, [x19, 0x11]                     ; [0x11:4]=0x140000
│       │   0x001531d4      ldrb  w15, [x11, 3]                        ; [0x3:4]=0x48776b00
│       │   0x001531d8      ldrb  w11, [x11, 2]                        ; [0x2:4]=0x776b0000
│       │   0x001531dc      bfi   w9, w10, 8, 8
│       │   0x001531e0      bfi   w8, w14, 8, 8
│       │   0x001531e4      bfi   w12, w13, 8, 8
│       │   0x001531e8      bfi   w11, w15, 8, 8
│       │   0x001531ec      bfi   w9, w8, 0x10, 0x10
│       │   0x001531f0      mov   w8, 0x1fff
│       │   0x001531f4      bfi   w12, w11, 0x10, 0x10
│       │   0x001531f8      add   w8, w9, w8
│       │   0x001531fc      mov   w10, aav.0x00001000
│       │   0x00153200      cmp   w9, 0
│       │   0x00153204      add   w9, w12, 0xfff
│       │   0x00153208      and   w8, w8, 0xfffff000
│       │   0x0015320c      and   w9, w9, 0xfffff000
│       │   0x00153210      csel  w8, w10, w8, eq
│       │   0x00153214      cmp   w12, 0
│       │   0x00153218      csel  w23, wzr, w9, eq
│       │   0x0015321c      cmp   w23, w12
│       │   0x00153220      add   w24, w23, w8                         ; 0x1000
│       │                                                              ; aav.0x00001000
│      ┌──< 0x00153224      b.hs  0x153270
│      ││   0x00153228      adrp  x22, 0x23c000
│      ││   0x0015322c      add   x22, x22, 0xb65
│      ││   0x00153230      mov   x0, x22                              ; int64_t arg1
│      ││   0x00153234      bl    fcn.0014c9f8
│      ││   0x00153238      mov   w0, 2
│      ││   0x0015323c      bl    fcn.0013d500
│      ││   0x00153240      mov   w1, w0
│      ││   0x00153244      mov   w0, 0xa
│      ││   0x00153248      mov   w2, 0xff0000
│      ││   0x0015324c      mov   w3, wzr
│      ││   0x00153250      mov   x4, x22                              ; int64_t arg5
│      ││   0x00153254      bl    fcn.0013deb8
│      ││   0x00153258      bl    fcn.000f9608
│      ││   0x0015325c      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153260      movk  w0, 0x4c, lsl 16
│      ││   0x00153264      bl    fcn.001b3f80
│      ││   0x00153268      mov   w0, 0x17
│      ││   0x0015326c      bl    fcn.0016e1a8
│      └──> 0x00153270      mov   x8, x19
│       │   0x00153274      ldrb  w1, [x8, 0x24]!                      ; aav.0x00000024
│       │                                                              ; [0x24:4]=0xb9400001
│       │   0x00153278      ldrb  w9, [x19, 0x25]                      ; [0x25:4]=0xc1b94000
│       │   0x0015327c      adrp  x0, 0x253000
│       │   0x00153280      mov   w22, 0xfe00
│       │   0x00153284      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153288      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x0015328c      bfi   w1, w9, 8, 8
│       │   0x00153290      add   x0, x0, 0xac9                        ; int64_t arg1
│       │   0x00153294      movk  w22, 0xf47f, lsl 16
│       │   0x00153298      bfi   w8, w10, 8, 8
│       │   0x0015329c      bfi   w1, w8, 0x10, 0x10
│       │   0x001532a0      bl    fcn.0014c9f8
│       │   0x001532a4      mov   x8, x19
│       │   0x001532a8      ldrb  w1, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001532ac      ldrb  w9, [x19, 9]                         ; [0x9:4]=0x686561
│       │   0x001532b0      adrp  x0, 0x24f000
│       │   0x001532b4      add   x0, x0, 0x2d1                        ; int64_t arg1
│       │   0x001532b8      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x001532bc      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x001532c0      bfi   w1, w9, 8, 8
│       │   0x001532c4      bfi   w8, w10, 8, 8
│       │   0x001532c8      bfi   w1, w8, 0x10, 0x10
│       │   0x001532cc      bl    fcn.0014c9f8
│       │   0x001532d0      mov   x25, x19
│       │   0x001532d4      ldrb  w1, [x25, 0x10]!                     ; aav.0x00000010
│       │                                                              ; [0x10:4]=0x14000004
│       │   0x001532d8      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│       │   0x001532dc      add   x0, x0, 0x989                        ; int64_t arg1
│       │   0x001532e0      ldrb  w8, [x25, 3]                         ; [0x3:4]=0x48776b00
│       │   0x001532e4      ldrb  w9, [x25, 2]                         ; [0x2:4]=0x776b0000
│       │   0x001532e8      ldrb  w10, [x25, 1]                        ; [0x1:4]=0x6b000000
│       │   0x001532ec      bfi   w9, w8, 8, 8
│       │   0x001532f0      bfi   w1, w10, 8, 8
│       │   0x001532f4      bfi   w1, w9, 0x10, 0x10
│       │   0x001532f8      bl    fcn.0014c9f8
│       │   0x001532fc      ldrb  w8, [x25, 0x653]                     ; [0x653:4]=0x1c6891
│       │   0x00153300      ldrb  w9, [x25, 0x652]                     ; [0x652:4]=0x1c689136 ; "6\x91h\U0000001c"
│       │   0x00153304      ldrb  w10, [x25, 0x651]                    ; [0x651:4]=0x68913604
│       │   0x00153308      ldrb  w1, [x25, 0x650]                     ; [0x650:4]=0x91360400
│       │   0x0015330c      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│       │   0x00153310      bfi   w9, w8, 8, 8
│       │   0x00153314      add   x0, x0, 0xeb1                        ; int64_t arg1
│       │   0x00153318      bfi   w1, w10, 8, 8
│       │   0x0015331c      bfi   w1, w9, 0x10, 0x10
│       │   0x00153320      bl    fcn.0014c9f8
│       │   0x00153324      ldrb  w8, [x25, 0x663]                     ; [0x663:4]=0x5088b
│       │   0x00153328      ldrb  w9, [x25, 0x662]                     ; [0x662:4]=0x5088b08
│       │   0x0015332c      ldrb  w10, [x25, 0x661]                    ; [0x661:4]=0x88b0802
│       │   0x00153330      ldrb  w1, [x25, 0x660]                     ; [0x660:4]=0x8b08028a
│       │   0x00153334      adrp  x0, 0x26d000
│       │   0x00153338      bfi   w9, w8, 8, 8
│       │   0x0015333c      add   x0, x0, 0xd9                         ; int64_t arg1
│       │   0x00153340      bfi   w1, w10, 8, 8
│       │   0x00153344      bfi   w1, w9, 0x10, 0x10
│       │   0x00153348      bl    fcn.0014c9f8
│       │   0x0015334c      ldrb  w8, [x25, 0x663]                     ; [0x663:4]=0x5088b
│       │   0x00153350      ldrb  w9, [x25, 0x662]                     ; [0x662:4]=0x5088b08
│       │   0x00153354      ldrb  w10, [x25, 0x661]                    ; [0x661:4]=0x88b0802
│       │   0x00153358      ldrb  w11, [x25, 0x660]                    ; [0x660:4]=0x8b08028a
│       │   0x0015335c      adrp  x25, 0x55c000
│       │   0x00153360      ldr   w12, [x25, aav.0x00000d00]           ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│       │   0x00153364      bfi   w9, w8, 8, 8
│       │   0x00153368      bfi   w11, w10, 8, 8
│       │   0x0015336c      bfi   w11, w9, 0x10, 0x10
│       │   0x00153370      add   w9, w11, 0xfff
│       │   0x00153374      cmp   w11, 0
│       │   0x00153378      and   w9, w9, 0xfffff000
│       │   0x0015337c      eor   x8, x12, 0x80000000
│       │   0x00153380      csel  w9, wzr, w9, eq
│       │   0x00153384      add   w24, w24, w9                         ; 0x1000
│       │                                                              ; aav.0x00001000
│       │   0x00153388      sub   x8, x22, x8
│       │   0x0015338c      cmp   x8, x24
│      ┌──< 0x00153390      b.hs  0x1533dc
│      ││   0x00153394      adrp  x0, 0x245000
│      ││   0x00153398      add   x0, x0, 0xc67                        ; int64_t arg1
│      ││   0x0015339c      bl    fcn.0014c9f8
│      ││   0x001533a0      mov   w0, 2
│      ││   0x001533a4      bl    fcn.0013d500
│      ││   0x001533a8      adrp  x4, 0x266000
│      ││   0x001533ac      mov   w1, w0
│      ││   0x001533b0      add   x4, x4, 0xcf3                        ; int64_t arg5
│      ││   0x001533b4      mov   w0, 0xa
│      ││   0x001533b8      mov   w2, 0xff0000
│      ││   0x001533bc      mov   w3, wzr
│      ││   0x001533c0      bl    fcn.0013deb8
│      ││   0x001533c4      bl    fcn.000f9608
│      ││   ; DATA XREF from fcn.00060124 @ +0x1704
│      ││   0x001533c8      mov   w0, 0x4b40                           ; '@K'
│      ││   0x001533cc      movk  w0, 0x4c, lsl 16
│      ││   0x001533d0      bl    fcn.001b3f80
│      ││   0x001533d4      mov   w0, 0xc
│      ││   0x001533d8      bl    fcn.0016e1a8
│      └──> 0x001533dc      mov   w8, 1
│       │   0x001533e0      movk  w8, 0x6f70, lsl 16
│       │   0x001533e4      cmp   w23, w8
│      ┌──< 0x001533e8      b.lo  0x153434
│      ││   0x001533ec      adrp  x0, 0x27c000
│      ││   0x001533f0      add   x0, x0, 0xd90                        ; int64_t arg1
│      ││   0x001533f4      bl    fcn.0014c9f8
│      ││   0x001533f8      mov   w0, 2
│      ││   0x001533fc      bl    fcn.0013d500
│      ││   0x00153400      adrp  x4, 0x24c000
│      ││   0x00153404      mov   w1, w0
│      ││   0x00153408      add   x4, x4, 0x70f                        ; int64_t arg5
│      ││   0x0015340c      mov   w0, 0xa
│      ││   0x00153410      mov   w2, 0xff0000
│      ││   0x00153414      mov   w3, wzr
│      ││   0x00153418      bl    fcn.0013deb8
│      ││   0x0015341c      bl    fcn.000f9608
│      ││   0x00153420      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153424      movk  w0, 0x4c, lsl 16
│      ││   0x00153428      bl    fcn.001b3f80
│      ││   0x0015342c      mov   w0, 0xd
│      ││   0x00153430      bl    fcn.0016e1a8
│      └──> 0x00153434      bl    fcn.0016e568
│      ┌──< 0x00153438      tbz   w0, 0x13, 0x153478
│      ││   0x0015343c      ldrb  w8, [x19, 0x663]                     ; [0x663:4]=0x5088b
│      ││   0x00153440      ldrb  w9, [x19, 0x662]                     ; [0x662:4]=0x5088b08
│      ││   0x00153444      ldrb  w10, [x19, 0x661]                    ; [0x661:4]=0x88b0802
│      ││   0x00153448      ldrb  w1, [x19, 0x660]                     ; [0x660:4]=0x8b08028a
│      ││   0x0015344c      adrp  x0, 0x245000
│      ││   0x00153450      bfi   w9, w8, 8, 8
│      ││   0x00153454      add   x0, x0, 0xc99                        ; int64_t arg1
│      ││   0x00153458      bfi   w1, w10, 8, 8
│      ││   0x0015345c      bfi   w1, w9, 0x10, 0x10
│      ││   0x00153460      add   w8, w1, 0xfff
│      ││   0x00153464      and   w8, w8, 0xfffff000
│      ││   0x00153468      cmp   w1, 0
│      ││   0x0015346c      csel  w2, wzr, w8, eq
│      ││   0x00153470      add   w24, w2, w24                         ; 0x1000
│      ││                                                              ; aav.0x00001000
│      ││   0x00153474      bl    fcn.0014c9f8
│      └──> 0x00153478      ldr   w8, [x25, aav.0x00000d00]            ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│       │   0x0015347c      eor   x8, x8, 0x80000000
│       │   0x00153480      sub   x8, x22, x8
│       │   0x00153484      cmp   x8, x24
│      ┌──< 0x00153488      b.hs  0x1534d4
│      ││   0x0015348c      adrp  x0, 0x262000
│      ││   0x00153490      add   x0, x0, 0xd76                        ; int64_t arg1
│      ││   0x00153494      bl    fcn.0014c9f8
│      ││   0x00153498      mov   w0, 2
│      ││   0x0015349c      bl    fcn.0013d500
│      ││   0x001534a0      adrp  x4, 0x25a000
│      ││   0x001534a4      mov   w1, w0
│      ││   0x001534a8      add   x4, x4, 0x343                        ; int64_t arg5
│      ││   0x001534ac      mov   w0, 0xa
│      ││   0x001534b0      mov   w2, 0xff0000
│      ││   0x001534b4      mov   w3, wzr
│      ││   0x001534b8      bl    fcn.0013deb8
│      ││   0x001534bc      bl    fcn.000f9608
│      ││   0x001534c0      mov   w0, 0x4b40                           ; '@K'
│      ││   0x001534c4      movk  w0, 0x4c, lsl 16
│      ││   0x001534c8      bl    fcn.001b3f80
│      ││   0x001534cc      mov   w0, 0xb
│      ││   0x001534d0      bl    fcn.0016e1a8
│      └──> 0x001534d4      add   w23, w24, 0x120
│       │   0x001534d8      add   w22, w24, 0x10                       ; 0x1010
│       │                                                              ; aav.0x00001010
│       │   0x001534dc      bfi   x23, x24, 0x20, 0x20
│       │   0x001534e0      mov   x0, x23                              ; int64_t arg1
│       │   0x001534e4      mov   x1, x22
│       │   0x001534e8      bl    fcn.0017e274
│       │   0x001534ec      mov   x10, x19
│       │   0x001534f0      ldrb  w8, [x10, 0x18]!                     ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x001534f4      ldrb  w9, [x10, -8]!                       ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001534f8      ldrb  w2, [x10, -8]!                       ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x001534fc      ldrb  w24, [x10, 0x1c]!                    ; aav.0x0000001c
│       │                                                              ; [0x1c:4]=0
│       │   0x00153500      ldrsb x11, [x10, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153504      ldrb  w12, [x10, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153508      ldrb  w13, [x10, 1]                        ; [0x1:4]=0x6b000000
│       │   0x0015350c      ldurb w14, [x10, -0x19]                    ; [0x19:4]=0x76000 "........"
│       │   0x00153510      ldurb w15, [x10, -0x1a]                    ; [0x1a:4]=0x760 str.FAILEL3FSTARSUCC
│       │   0x00153514      ldurb w16, [x10, -0x1b]                    ; [0x1b:4]=7
│       │   0x00153518      ldurb w17, [x10, -0x11]                    ; [0x11:4]=0x140000
│       │   0x0015351c      ldurb w18, [x10, -0x12]                    ; [0x12:4]=0x1400
│       │   0x00153520      ldurb w0, [x10, -0x13]                     ; [0x13:4]=20
│       │   0x00153524      bfi   x12, x11, 8, 0x38
│       │   0x00153528      ldurb w11, [x10, -9]                       ; [0x9:4]=0x686561
│       │   0x0015352c      bfi   x24, x13, 8, 8
│       │   0x00153530      ldurb w13, [x10, -0xa]                     ; [0xa:4]=0x6865
│       │   0x00153534      bfi   x15, x14, 8, 8
│       │   0x00153538      ldurb w14, [x10, -0xb]                     ; [0xb:4]=104
│       │   0x0015353c      bfi   x2, x16, 8, 8
│       │   0x00153540      ldrb  w16, [x10, 0x63f]                    ; [0x63f:4]=0x111f91
│       │   0x00153544      bfi   w18, w17, 8, 8
│       │   0x00153548      ldrb  w17, [x10, 0x63e]                    ; [0x63e:4]=0x111f9100
│       │   0x0015354c      bfi   w9, w0, 8, 8
│       │   0x00153550      ldrb  w0, [x10, 0x63d]                     ; [0x63d:4]=0x1f910005
│       │   0x00153554      ldrb  w10, [x10, 0x63c]                    ; [0x63c:4]=0x91000508
│       │   0x00153558      bfi   x24, x12, 0x10, 0x30
│       │   0x0015355c      bfi   w13, w11, 8, 8
│       │   0x00153560      bfi   w8, w14, 8, 8
│       │   0x00153564      bfi   w17, w16, 8, 8
│       │   0x00153568      bfi   w10, w0, 8, 8
│       │   0x0015356c      bfi   x2, x15, 0x10, 0x10
│       │   0x00153570      sub   w11, w24, 1
│       │   0x00153574      bfi   w9, w18, 0x10, 0x10
│       │   0x00153578      bfi   w8, w13, 0x10, 0x10
│       │   0x0015357c      bfi   w10, w17, 0x10, 0x10
│       │   0x00153580      add   w12, w11, w2
│       │   0x00153584      add   w9, w11, w9
│       │   0x00153588      add   w8, w11, w8
│       │   0x0015358c      add   w10, w11, w10
│       │   0x00153590      udiv  w11, w12, w24
│       │   0x00153594      udiv  w9, w9, w24
│       │   0x00153598      madd  w26, w11, w24, w24
│       │   0x0015359c      udiv  w8, w8, w24
│       │   0x001535a0      madd  w9, w9, w24, w26
│       │   0x001535a4      madd  w25, w8, w24, w9
│       │   0x001535a8      udiv  w27, w10, w24
│      ┌──< 0x001535ac      cbz   x21, 0x1535bc
│      ││   0x001535b0      add   x1, x19, x24                         ; int64_t arg2
│      ││   0x001535b4      mov   x0, x21                              ; int64_t arg1
│      ││   0x001535b8      bl    fcn.0014d60c
│      └──> 0x001535bc      madd  w21, w27, w24, w25
│      ┌──< 0x001535c0      cbz   x20, 0x1535f0
│      ││   0x001535c4      mov   x8, x19
│      ││   0x001535c8      ldrb  w2, [x8, 0x10]!                      ; aav.0x00000010
│      ││                                                              ; [0x10:4]=0x14000004
│      ││   0x001535cc      ldrb  w9, [x19, 0x11]                      ; [0x11:4]=0x140000
│      ││   0x001535d0      add   x1, x19, w26, sxtw                   ; int64_t arg2
│      ││   0x001535d4      mov   x0, x20                              ; int64_t arg1
│      ││   0x001535d8      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│      ││   0x001535dc      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│      ││   0x001535e0      bfi   x2, x9, 8, 8
│      ││   0x001535e4      bfi   x8, x10, 8, 8
│      ││   0x001535e8      bfi   x2, x8, 0x10, 0x10                   ; int64_t arg3
│      ││   0x001535ec      bl    fcn.0014d60c
│      └──> 0x001535f0      add   x0, x19, w21, sxtw                   ; int64_t arg1
│       │   0x001535f4      bl    fcn.00170a18
│       │   0x001535f8      add   x0, x19, w25, sxtw                   ; int64_t arg1
│       │   0x001535fc      bl    fcn.00170a2c
│       │   0x00153600      mov   x0, x19                              ; int64_t arg1
│       │   0x00153604      mov   x1, x23
│       │   0x00153608      mov   x2, x22
│       │   0x0015360c      bl    fcn.0017e384
│       │   0x00153610      mov   w0, wzr
│      ┌──< 0x00153614      b     0x153628
│      │└─> 0x00153618      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│      │    0x0015361c      add   x0, x0, 0xecd                        ; int64_t arg1
│      │    0x00153620      bl    fcn.0014c9f8
│      │    0x00153624      mov   w0, -1
│      │    ; CODE XREF from fcn.00153180 @ 0x153614
│      └──> 0x00153628      ldp   x20, x19, [var_10h]
│           0x0015362c      ldp   x22, x21, [var_20h]
│           0x00153630      ldp   x24, x23, [var_30h]
│           0x00153634      ldp   x26, x25, [var_40h]
│           0x00153638      ldr   x27, [var_50h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0015363c      ldp   x29, x30, [sp], 0x60
│           0x00153640      autibsp
└           0x00153644      ret
            ; CALL XREF from fcn.00153080 @ 0x153090


========================================================================================
FUNCTION fcn.00153998
SOURCE full-sboot-part-00
LINES 551
========================================================================================

┌ fcn.00153998(unsigned long arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg unsigned long arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_8ch @ stack - 0x8c
│           ; var int64_t var_88h @ stack - 0x88
│           ; var int64_t var_80h @ stack - 0x80
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00153998      pacibsp
│           0x0015399c      sub   sp, sp, 0x90
│           0x001539a0      stp   x29, x30, [var_60h]
│           0x001539a4      stp   x28, x27, [var_50h]
│           0x001539a8      stp   x26, x25, [var_40h]
│           0x001539ac      stp   x24, x23, [var_30h]
│           0x001539b0      stp   x22, x21, [var_20h]
│           0x001539b4      stp   x20, x19, [var_10h]
│           0x001539b8      add   x29, sp, 0x30
│           0x001539bc      cmp   w0, 6                                ; arg1
│       ┌─< 0x001539c0      b.ne  0x154060
│       │   0x001539c4      ldr   x20, [x1, 0x30]                      ; aav.0x00000030
│       │                                                              ; [0x30:4]=0x58000911
│       │   0x001539c8      ldr   x8, [x1, 0x80]                       ; aav.0x00000080
│       │                                                              ; [0x80:4]=0xd53e1000
│       │   0x001539cc      adrp  x9, 0x598000
│       │   0x001539d0      ldr   x21, [x1, 0xa8]                      ; aav.0x000000a8
│       │                                                              ; [0xa8:4]=0xf2c00080
│       │   0x001539d4      ldrb  w12, [x20, 0x62f]                    ; [0x62f:4]=0x1d812990
│       │   0x001539d8      ldrb  w13, [x20, 0x62e]                    ; [0x62e:4]=0x81299000
│       │   0x001539dc      mov   x11, x20
│       │   0x001539e0      ldrb  w14, [x20, 0x62d]                    ; [0x62d:4]=0x29900000
│       │   0x001539e4      ldrb  w15, [x20, 0x62c]                    ; [0x62c:4]=0x90000009
│       │   0x001539e8      str   x8, [x9, 0xa98]
│       │   0x001539ec      mov   x8, x20
│       │   0x001539f0      bfi   w13, w12, 8, 8
│       │   0x001539f4      ldrb  w12, [x11, 0xc]!                     ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x001539f8      ldrb  w10, [x20, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x001539fc      ldrb  w0, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x00153a00      ldr   x23, [x1, 0xd0]                      ; aav.0x000000d0
│       │                                                              ; [0xd0:4]=0xd5380501
│       │   0x00153a04      ldrb  w9, [x20, 9]                         ; [0x9:4]=0x686561
│       │   0x00153a08      bfi   w15, w14, 8, 8
│       │   0x00153a0c      mov   x14, x21
│       │   0x00153a10      bfi   w15, w13, 0x10, 0x10
│       │   0x00153a14      ldrb  w13, [x11, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153a18      ldrb  w11, [x11, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153a1c      bfi   w12, w10, 8, 8
│       │   0x00153a20      ldrb  w24, [x14, 0xc]!                     ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153a24      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153a28      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x00153a2c      mov   x17, x23
│       │   0x00153a30      ldrb  w16, [x23, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x00153a34      bfi   w0, w9, 8, 8
│       │   0x00153a38      ldrb  w9, [x17, 0xc]!                      ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153a3c      bfi   w11, w13, 8, 8
│       │   0x00153a40      bfi   w8, w10, 8, 8
│       │   0x00153a44      ldrb  w10, [x14, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153a48      ldrb  w14, [x14, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153a4c      bfi   w12, w11, 0x10, 0x10
│       │   0x00153a50      ldrb  w11, [x21, 0x833]                    ; [0x833:4]=0x6964206b
│       │   0x00153a54      bfi   w9, w16, 8, 8
│       │   0x00153a58      ldrb  w16, [x17, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153a5c      ldrb  w17, [x17, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153a60      bfi   w14, w10, 8, 8
│       │   0x00153a64      mov   w10, 0x1fff
│       │   0x00153a68      bfi   w0, w8, 0x10, 0x10
│       │   0x00153a6c      stur  w11, [var_10h + 0x8]
│       │   0x00153a70      ldrb  w11, [x21, 0x831]                    ; [0x831:4]=0x206b6365
│       │   0x00153a74      ldrb  w18, [x21, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x00153a78      add   w10, w0, w10
│       │   0x00153a7c      bfi   w17, w16, 8, 8
│       │   0x00153a80      mov   w8, aav.0x00001000
│       │   0x00153a84      cmp   w0, 0
│       │   0x00153a88      and   w10, w10, 0xfffff000
│       │   0x00153a8c      bfi   w9, w17, 0x10, 0x10
│       │   0x00153a90      csel  w8, w8, w10, eq
│       │   0x00153a94      add   w10, w12, 0xfff
│       │   0x00153a98      ldr   x22, [x1, 0x58]                      ; aav.0x00000058
│       │                                                              ; [0x58:4]=0xd51e1000
│       │   0x00153a9c      ldrb  w25, [x21, 0x832]                    ; [0x832:4]=0x64206b63
│       │   0x00153aa0      str   w11, [var_8ch]
│       │   0x00153aa4      ldrb  w26, [x21, 0x830]                    ; [0x830:4]=0x6b636568
│       │   0x00153aa8      cmp   w12, 0
│       │   0x00153aac      add   w11, w9, 0xfff
│       │   0x00153ab0      and   w10, w10, 0xfffff000
│       │   0x00153ab4      bfi   w24, w18, 8, 8
│       │   0x00153ab8      and   w11, w11, 0xfffff000
│       │   0x00153abc      csel  w10, wzr, w10, eq
│       │   0x00153ac0      cmp   w9, 0
│       │   0x00153ac4      add   w8, w8, w15
│       │   0x00153ac8      csel  w28, wzr, w11, eq
│       │   0x00153acc      bfi   w24, w14, 0x10, 0x10
│       │   0x00153ad0      cmp   w28, w9
│       │   0x00153ad4      add   w27, w8, w10
│       │   0x00153ad8      mov   w1, w24
│      ┌──< 0x00153adc      b.hs  0x153b50
│      ││   0x00153ae0      mov   x19, x20
│      ││   0x00153ae4      adrp  x20, 0x23c000
│      ││   0x00153ae8      add   x20, x20, 0xb65
│      ││   0x00153aec      mov   x0, x20                              ; int64_t arg1
│      ││   0x00153af0      bl    fcn.0014c9f8
│      ││   0x00153af4      mov   w0, 2
│      ││   0x00153af8      bl    fcn.0013d500
│      ││   0x00153afc      mov   w1, w0
│      ││   0x00153b00      mov   w0, 0xa
│      ││   0x00153b04      mov   w2, 0xff0000
│      ││   0x00153b08      mov   w3, wzr
│      ││   0x00153b0c      mov   x4, x20                              ; int64_t arg5
│      ││   0x00153b10      mov   x20, x19
│      ││   0x00153b14      bl    fcn.0013deb8
│      ││   0x00153b18      bl    fcn.000f9608
│      ││   0x00153b1c      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153b20      movk  w0, 0x4c, lsl 16
│      ││   0x00153b24      bl    fcn.001b3f80
│      ││   0x00153b28      mov   w0, 0x17
│      ││   0x00153b2c      bl    fcn.0016e1a8
│      ││   0x00153b30      mov   x8, x21
│      ││   0x00153b34      ldrb  w1, [x8, 0xc]!                       ; aav.0x0000000c
│      ││                                                              ; [0xc:4]=0
│      ││   0x00153b38      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│      ││   0x00153b3c      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│      ││   0x00153b40      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│      ││   0x00153b44      bfi   w10, w9, 8, 8
│      ││   0x00153b48      bfi   w1, w8, 8, 8
│      ││   0x00153b4c      bfi   w1, w10, 0x10, 0x10
│      └──> 0x00153b50      adrp  x0, 0x253000
│       │   0x00153b54      add   x0, x0, 0xac9                        ; int64_t arg1
│       │   0x00153b58      bl    fcn.0014c9f8
│       │   0x00153b5c      mov   x8, x20
│       │   0x00153b60      ldrb  w1, [x8, 8]!                         ; aav.0x00000008
│       │                                                              ; [0x8:4]=0x68656164 ; "daeh"
│       │   0x00153b64      ldrb  w9, [x20, 9]                         ; [0x9:4]=0x686561
│       │   0x00153b68      adrp  x0, 0x24f000
│       │   0x00153b6c      add   x0, x0, 0x2d1                        ; int64_t arg1
│       │   0x00153b70      ldrb  w10, [x8, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153b74      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│       │   0x00153b78      bfi   w1, w9, 8, 8
│       │   0x00153b7c      bfi   w8, w10, 8, 8
│       │   0x00153b80      bfi   w1, w8, 0x10, 0x10
│       │   0x00153b84      bl    fcn.0014c9f8
│       │   0x00153b88      mov   x19, x20
│       │   0x00153b8c      ldrb  w1, [x19, 0xc]!                      ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153b90      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│       │   0x00153b94      add   x0, x0, 0x989                        ; int64_t arg1
│       │   0x00153b98      ldrb  w8, [x19, 3]                         ; [0x3:4]=0x48776b00
│       │   0x00153b9c      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│       │   0x00153ba0      ldrb  w10, [x19, 1]                        ; [0x1:4]=0x6b000000
│       │   0x00153ba4      bfi   w9, w8, 8, 8
│       │   0x00153ba8      bfi   w1, w10, 8, 8
│       │   0x00153bac      bfi   w1, w9, 0x10, 0x10
│       │   0x00153bb0      bl    fcn.0014c9f8
│       │   0x00153bb4      mov   x8, x23
│       │   0x00153bb8      ldrb  w1, [x8, 0xc]!                       ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153bbc      adrp  x0, 0x260000
│       │   0x00153bc0      add   x0, x0, 0xa59                        ; int64_t arg1
│       │   0x00153bc4      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│       │   0x00153bc8      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│       │   0x00153bcc      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│       │   0x00153bd0      bfi   w10, w9, 8, 8
│       │   0x00153bd4      bfi   w1, w8, 8, 8
│       │   0x00153bd8      bfi   w1, w10, 0x10, 0x10
│       │   0x00153bdc      bl    fcn.0014c9f8
│       │   0x00153be0      mov   x8, x21
│       │   0x00153be4      ldrb  w1, [x8, 0x18]!                      ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x00153be8      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│       │   0x00153bec      add   x0, x0, 0xf32                        ; int64_t arg1
│       │   0x00153bf0      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│       │   0x00153bf4      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│       │   0x00153bf8      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│       │   0x00153bfc      bfi   w10, w9, 8, 8
│       │   0x00153c00      bfi   w1, w8, 8, 8
│       │   0x00153c04      bfi   w1, w10, 0x10, 0x10
│       │   0x00153c08      bl    fcn.0014c9f8
│       │   0x00153c0c      ldrb  w8, [x19, 0x623]                     ; [0x623:4]=0x1f03e854
│       │   0x00153c10      ldrb  w9, [x19, 0x622]                     ; [0x622:4]=0x3e854ff
│       │   0x00153c14      ldrb  w10, [x19, 0x621]                    ; [0x621:4]=0xe854ffff
│       │   0x00153c18      ldrb  w11, [x19, 0x620]                    ; [0x620:4]=0x54ffffa1
│       │   0x00153c1c      adrp  x12, 0x55c000
│       │   0x00153c20      ldr   w12, [x12, aav.0x00000d00]           ; [0xd00:4]=0x4e452033 ; "3 ENC] failed to decrypt with 0x%x\n"
│       │   0x00153c24      bfi   x9, x8, 8, 8
│       │   0x00153c28      bfi   x11, x10, 8, 8
│       │   0x00153c2c      bfi   x11, x9, 0x10, 0x10
│       │   0x00153c30      eor   x8, x12, 0x80000000
│       │   0x00153c34      add   x8, x11, x8
│       │   0x00153c38      mov   w9, -0xb800000
│       │   0x00153c3c      mov   w19, w27
│       │   0x00153c40      sub   x8, x9, x8
│       │   0x00153c44      cmp   x8, x19
│      ┌──< 0x00153c48      b.hs  0x153c94
│      ││   0x00153c4c      adrp  x0, 0x245000
│      ││   0x00153c50      add   x0, x0, 0xc67                        ; int64_t arg1
│      ││   0x00153c54      bl    fcn.0014c9f8
│      ││   0x00153c58      mov   w0, 2
│      ││   0x00153c5c      bl    fcn.0013d500
│      ││   0x00153c60      adrp  x4, 0x266000
│      ││   0x00153c64      mov   w1, w0
│      ││   0x00153c68      add   x4, x4, 0xcf3                        ; int64_t arg5
│      ││   0x00153c6c      mov   w0, 0xa
│      ││   0x00153c70      mov   w2, 0xff0000
│      ││   0x00153c74      mov   w3, wzr
│      ││   0x00153c78      bl    fcn.0013deb8
│      ││   0x00153c7c      bl    fcn.000f9608
│      ││   0x00153c80      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153c84      movk  w0, 0x4c, lsl 16
│      ││   0x00153c88      bl    fcn.001b3f80
│      ││   0x00153c8c      mov   w0, 0xc
│      ││   0x00153c90      bl    fcn.0016e1a8
│      └──> 0x00153c94      mov   w8, 1
│       │   0x00153c98      movk  w8, 0x6f70, lsl 16
│       │   0x00153c9c      cmp   w28, w8
│      ┌──< 0x00153ca0      b.lo  0x153cec
│      ││   0x00153ca4      adrp  x0, 0x27c000
│      ││   0x00153ca8      add   x0, x0, 0xd90                        ; int64_t arg1
│      ││   0x00153cac      bl    fcn.0014c9f8
│      ││   0x00153cb0      mov   w0, 2
│      ││   0x00153cb4      bl    fcn.0013d500
│      ││   0x00153cb8      adrp  x4, 0x24c000
│      ││   0x00153cbc      mov   w1, w0
│      ││   0x00153cc0      add   x4, x4, 0x70f                        ; int64_t arg5
│      ││   0x00153cc4      mov   w0, 0xa
│      ││   0x00153cc8      mov   w2, 0xff0000
│      ││   0x00153ccc      mov   w3, wzr
│      ││   0x00153cd0      bl    fcn.0013deb8
│      ││   0x00153cd4      bl    fcn.000f9608
│      ││   0x00153cd8      mov   w0, 0x4b40                           ; '@K'
│      ││   0x00153cdc      movk  w0, 0x4c, lsl 16
│      ││   0x00153ce0      bl    fcn.001b3f80
│      ││   0x00153ce4      mov   w0, 0xd
│      ││   0x00153ce8      bl    fcn.0016e1a8
│      └──> 0x00153cec      add   w1, w27, 0x10
│       │   0x00153cf0      add   w27, w27, 0x120
│       │   0x00153cf4      bfi   x27, x19, 0x20, 0x20
│       │   0x00153cf8      mov   x0, x27                              ; int64_t arg1
│       │   0x00153cfc      str   x1, [var_80h + 0x8]
│       │   0x00153d00      bl    fcn.0017e274
│       │   0x00153d04      mov   x11, x21
│       │   0x00153d08      ldrb  w8, [x11, 0x18]!                     ; aav.0x00000018
│       │                                                              ; [0x18:4]=0x7600000
│       │   0x00153d0c      ldrb  w9, [x11, -0xc]!                     ; aav.0x0000000c
│       │                                                              ; [0xc:4]=0
│       │   0x00153d10      ldrb  w12, [x11, 0x827]                    ; [0x827:4]=0x5b203a74
│       │   0x00153d14      ldrb  w13, [x11, 0x826]                    ; [0x826:4]=0x203a746f
│       │   0x00153d18      ldrb  w14, [x11, 0x825]                    ; [0x825:4]=0x3a746f6f
│       │   0x00153d1c      ldrb  w10, [x11, 0x824]                    ; [0x824:4]=0x746f6f42
│       │   0x00153d20      ldrb  w15, [x11, 3]                        ; [0x3:4]=0x48776b00
│       │   0x00153d24      ldrb  w16, [x11, 2]                        ; [0x2:4]=0x776b0000
│       │   0x00153d28      ldrb  w17, [x11, 1]                        ; [0x1:4]=0x6b000000
│       │   0x00153d2c      bfi   x13, x12, 8, 8
│       │   0x00153d30      ldrb  w12, [x11, 0xf]                      ; [0xf:4]=0x400 aav.0x00000400
│       │   0x00153d34      bfi   x10, x14, 8, 8
│       │   0x00153d38      ldrb  w14, [x11, 0xe]                      ; [0xe:4]=0x40000 aav.0x00040000
│       │   0x00153d3c      ldrb  w11, [x11, 0xd]                      ; [0xd:4]=0x4000000
│       │   0x00153d40      bfi   x16, x15, 8, 8
│       │   0x00153d44      bfi   x9, x17, 8, 8
│       │   0x00153d48      bfi   x14, x12, 8, 8
│       │   0x00153d4c      bfi   x8, x11, 8, 8
│       │   0x00153d50      bfi   x9, x16, 0x10, 0x10
│       │   0x00153d54      bfi   x10, x13, 0x10, 0x10
│       │   0x00153d58      bfi   x8, x14, 0x10, 0x10
│       │   0x00153d5c      sub   x11, x9, 1
│       │   0x00153d60      add   x12, x11, x10
│       │   0x00153d64      add   x11, x11, x8
│       │   0x00153d68      udiv  x13, x12, x9
│       │   0x00153d6c      udiv  x14, x11, x9
│       │   0x00153d70      msub  x13, x13, x9, x12
│       │   0x00153d74      msub  x14, x14, x9, x11
│       │   0x00153d78      add   x13, x13, x14
│       │   0x00153d7c      sub   x12, x12, x13
│       │   0x00153d80      add   x11, x12, x11
│       │   0x00153d84      stp   x11, x27, [var_88h]
│      ┌──< 0x00153d88      cbz   x22, 0x153e38
│      ││   0x00153d8c      mov   x10, x20
│      ││   0x00153d90      mov   x8, x20
│      ││   0x00153d94      ldrb  w11, [x10, 0x14]!                    ; aav.0x00000014
│      ││                                                              ; [0x14:4]=0
│      ││   0x00153d98      ldrb  w2, [x8, 8]!                         ; aav.0x00000008
│      ││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│      ││   0x00153d9c      ldrb  w12, [x20, 0x15]                     ; [0x15:4]=0
│      ││   0x00153da0      ldrb  w9, [x20, 9]                         ; [0x9:4]=0x686561
│      ││   0x00153da4      ldrb  w14, [x10, 3]                        ; [0x3:4]=0x48776b00
│      ││   0x00153da8      ldrb  w10, [x10, 2]                        ; [0x2:4]=0x776b0000
│      ││   0x00153dac      ldrb  w13, [x8, 3]                         ; [0x3:4]=0x48776b00
│      ││   0x00153db0      ldrb  w8, [x8, 2]                          ; [0x2:4]=0x776b0000
│      ││   0x00153db4      bfi   w11, w12, 8, 8
│      ││   0x00153db8      bfi   w10, w14, 8, 8
│      ││   0x00153dbc      bfi   x2, x9, 8, 8
│      ││   0x00153dc0      bfi   x8, x13, 8, 8
│      ││   0x00153dc4      bfi   w11, w10, 0x10, 0x10
│      ││   0x00153dc8      bfi   x2, x8, 0x10, 0x10                   ; int64_t arg3
│      ││   0x00153dcc      add   w8, w11, 0xfff
│      ││   0x00153dd0      and   w8, w8, 0xfffff000
│      ││   0x00153dd4      add   x1, x20, w8, sxtw                    ; int64_t arg2
│      ││   0x00153dd8      mov   x0, x22                              ; int64_t arg1
│      ││   0x00153ddc      bl    fcn.0014d60c
│      ││   0x00153de0      mov   x11, x21
│      ││   0x00153de4      ldrb  w8, [x11, 0x18]!                     ; aav.0x00000018
│      ││                                                              ; [0x18:4]=0x7600000
│      ││   0x00153de8      ldrb  w9, [x11, -0xc]!                     ; aav.0x0000000c
│      ││                                                              ; [0xc:4]=0
│      ││   0x00153dec      ldrb  w12, [x11, 0x827]                    ; [0x827:4]=0x5b203a74
│      ││   0x00153df0      ldrb  w13, [x11, 0x826]                    ; [0x826:4]=0x203a746f
│      ││   0x00153df4      ldrb  w14, [x11, 0x825]                    ; [0x825:4]=0x3a746f6f
│      ││   0x00153df8      ldrb  w10, [x11, 0x824]                    ; [0x824:4]=0x746f6f42
│      ││   0x00153dfc      ldrb  w15, [x11, 3]                        ; [0x3:4]=0x48776b00
│      ││   0x00153e00      ldrb  w16, [x11, 2]                        ; [0x2:4]=0x776b0000
│      ││   0x00153e04      ldrb  w17, [x11, 1]                        ; [0x1:4]=0x6b000000
│      ││   0x00153e08      bfi   w13, w12, 8, 8
│      ││   0x00153e0c      ldrb  w12, [x11, 0xf]                      ; [0xf:4]=0x400 aav.0x00000400
│      ││   0x00153e10      bfi   w10, w14, 8, 8
│      ││   0x00153e14      ldrb  w14, [x11, 0xe]                      ; [0xe:4]=0x40000 aav.0x00040000
│      ││   0x00153e18      ldrb  w11, [x11, 0xd]                      ; [0xd:4]=0x4000000
│      ││   0x00153e1c      bfi   w16, w15, 8, 8
│      ││   0x00153e20      bfi   w9, w17, 8, 8
│      ││   0x00153e24      bfi   w14, w12, 8, 8
│      ││   0x00153e28      bfi   w8, w11, 8, 8
│      ││   0x00153e2c      bfi   w10, w13, 0x10, 0x10
│      ││   0x00153e30      bfi   w9, w16, 0x10, 0x10
│      ││   0x00153e34      bfi   w8, w14, 0x10, 0x10
│      └──> 0x00153e38      adrp  x27, 0x598000
│       │   0x00153e3c      ldr   x22, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│       │   0x00153e40      stur  x20, [var_10h]
│      ┌──< 0x00153e44      cbz   x22, 0x154078
│      ││   0x00153e48      ldrb  w11, [x21, 0x847]                    ; [0x847:4]=0x63637573
│      ││   0x00153e4c      ldrb  w12, [x21, 0x846]                    ; [0x846:4]=0x63757320
│      ││   0x00153e50      ldrb  w13, [x21, 0x845]                    ; [0x845:4]=0x75732065
│      ││   0x00153e54      ldrb  w14, [x21, 0x844]                    ; [0x844:4]=0x73206572
│      ││   0x00153e58      bfi   w12, w11, 8, 8
│      ││   0x00153e5c      bfi   w14, w13, 8, 8
│      ││   0x00153e60      bfi   w14, w12, 0x10, 0x10
│     ┌───< 0x00153e64      cbz   w14, 0x154078
│     │││   0x00153e68      ldur  w11, [var_10h + 0x8]
│     │││   0x00153e6c      sub   w12, w9, 1
│     │││   0x00153e70      neg   w9, w9
│     │││   0x00153e74      add   w10, w12, w10
│     │││   0x00153e78      add   w8, w8, w12
│     │││   0x00153e7c      and   w10, w10, w9
│     │││   0x00153e80      and   w8, w8, w9
│     │││   0x00153e84      bfi   w25, w11, 8, 8
│     │││   0x00153e88      ldr   w11, [var_8ch]                       ; str.kwH_daeh
│     │││                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│     │││   0x00153e8c      ldrb  w13, [x21, 0x837]                    ; [0x837:4]=0x61746967
│     │││   0x00153e90      ldrb  w14, [x21, 0x836]                    ; [0x836:4]=0x74696769
│     │││   0x00153e94      ldrb  w16, [x21, 0x835]                    ; [0x835:4]=0x69676964
│     │││   0x00153e98      add   x8, x10, x8
│     │││   0x00153e9c      ldrb  w10, [x21, 0x834]                    ; [0x834:4]=0x67696420
│     │││   0x00153ea0      bfi   w26, w11, 8, 8
│     │││   0x00153ea4      bfi   w14, w13, 8, 8
│     │││   0x00153ea8      bfi   w26, w25, 0x10, 0x10
│     │││   0x00153eac      bfi   w10, w16, 8, 8
│     │││   0x00153eb0      bfi   w10, w14, 0x10, 0x10
│     │││   0x00153eb4      add   w15, w26, w24
│     │││   0x00153eb8      add   w10, w10, w12
│     │││   0x00153ebc      neg   w11, w24
│     │││   0x00153ec0      sub   w15, w15, 1
│     │││   0x00153ec4      and   w9, w10, w9
│     │││   0x00153ec8      and   w11, w15, w11
│     │││   0x00153ecc      mov   w13, -0x54000000
│     │││   0x00153ed0      mov   w15, -0x54000000
│     │││   0x00153ed4      adrp  x22, 0x253000
│     │││   0x00153ed8      adrp  x19, 0x28a000
│     │││   0x00153edc      add   x8, x8, x9
│     │││   0x00153ee0      mov   x20, xzr
│     │││   0x00153ee4      add   x22, x22, 0xb00
│     │││   0x00153ee8      add   x11, x11, x15
│     │││   0x00153eec      add   x19, x19, 0xc28
│     │││   0x00153ef0      add   x24, x8, x13
│     │││   0x00153ef4      stur  x11, [var_10h + 0x8]
│    ┌────< 0x00153ef8      b     0x153ff0
     ││││   ; STRING XREF from fcn.00153998 @ 0x154018
..
│    ││││   ; CODE XREFS from fcn.00153998 @ +0x6a8, +0x6c4
│    ││││   0x00153fc4      ldrb  w8, [x21, 0x847]                     ; [0x847:4]=0x63637573
│    ││││   0x00153fc8      ldrb  w9, [x21, 0x846]                     ; [0x846:4]=0x63757320
│    ││││   0x00153fcc      ldrb  w10, [x21, 0x845]                    ; [0x845:4]=0x75732065
│    ││││   0x00153fd0      ldrb  w11, [x21, 0x844]                    ; [0x844:4]=0x73206572
│    ││││   0x00153fd4      add   x20, x20, 1
│    ││││   0x00153fd8      bfi   x9, x8, 8, 8
│    ││││   0x00153fdc      add   x24, x24, 0x6c
│    ││││   0x00153fe0      bfi   x11, x10, 8, 8
│    ││││   0x00153fe4      bfi   x11, x9, 0x10, 0x10
│    ││││   0x00153fe8      cmp   x20, x11
│    ││││   0x00153fec      b.hs  0x154074
│    ││││   ; CODE XREF from fcn.00153998 @ 0x153ef8
│    └────> 0x00153ff0      mov   x9, x24
│     │││   0x00153ff4      ldrb  w8, [x9, 8]!                         ; aav.0x00000008
│     │││                                                              ; [0x8:4]=0x68656164 ; "daeh"
│     │││   0x00153ff8      ldrb  w10, [x9, 3]                         ; [0x3:4]=0x48776b00
│     │││   0x00153ffc      ldrb  w11, [x9, 2]                         ; [0x2:4]=0x776b0000
│     │││   0x00154000      ldrb  w9, [x9, 1]                          ; [0x1:4]=0x6b000000
│     │││   0x00154004      bfi   x11, x10, 8, 8
│     │││   0x00154008      bfi   x8, x9, 8, 8
│     │││   0x0015400c      bfi   x8, x11, 0x10, 0x10
│     │││   0x00154010      cmp   w8, 3
│     │││   0x00154014      b.hi  0x153fc4
│     │││   0x00154018      adr   x9, 0x153efc
│     │││   0x0015401c      ldrb  w10, [x19, x8]
│     │││   0x00154020      add   x9, x9, x10, lsl 2
│     │││   0x00154024      mov   x0, x22
│     │││   0x00154028      br    x9
..
│     ││└─> 0x00154060      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│     ││    0x00154064      add   x0, x0, 0xecd                        ; int64_t arg1
│     ││    0x00154068      bl    fcn.0014c9f8
│     ││    0x0015406c      mov   w0, -1
│     ││    0x00154070      b     0x154234
│     ││    0x00154074      ldr   x22, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│     └└──> 0x00154078      ldrb  w8, [x23, 0x14]!                     ; aav.0x00000014
│                                                                      ; [0x14:4]=0
│           0x0015407c      mov   x0, x22                              ; int64_t arg1
│           0x00154080      ldrb  w9, [x23, -0xc]!                     ; aav.0x0000000c
│                                                                      ; [0xc:4]=0
│           0x00154084      ldrb  w25, [x23, 4]!                       ; str.kwH_daeh
│                                                                      ; [0x4:4]=0x2148776b ; "kwH!daeh"
│           0x00154088      ldrb  w10, [x23, 0xb]                      ; [0xb:4]=104
│           0x0015408c      ldrb  w11, [x23, 0xa]                      ; [0xa:4]=0x6865
│           0x00154090      ldrb  w12, [x23, 9]                        ; [0x9:4]=0x686561
│           0x00154094      ldurb w13, [x23, -1]                       ; [0x1:4]=0x6b000000
│           0x00154098      ldurb w14, [x23, -2]                       ; [0x2:4]=0x776b0000
│           0x0015409c      ldurb w15, [x23, -3]                       ; [0x3:4]=0x48776b00
│           0x001540a0      ldrb  w16, [x23, 3]                        ; [0x3:4]=0x48776b00
│           0x001540a4      bfi   w11, w10, 8, 8
│           0x001540a8      ldrb  w10, [x23, 2]                        ; [0x2:4]=0x776b0000
│           0x001540ac      bfi   w8, w12, 8, 8
│           0x001540b0      ldrb  w12, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x001540b4      bfi   w14, w13, 8, 8
│           0x001540b8      bfi   w9, w15, 8, 8
│           0x001540bc      bfi   w8, w11, 0x10, 0x10
│           0x001540c0      bfi   w9, w14, 0x10, 0x10
│           0x001540c4      add   w8, w8, 0xfff
│           0x001540c8      add   w9, w9, 0xfff
│           0x001540cc      and   w8, w8, 0xfffff000
│           0x001540d0      and   w9, w9, 0xfffff000
│           0x001540d4      bfi   w10, w16, 8, 8
│           0x001540d8      bfi   w25, w12, 8, 8
│           0x001540dc      add   w8, w9, w8
│           0x001540e0      mov   w9, -0x74000000
│           0x001540e4      bfi   w25, w10, 0x10, 0x10
│           0x001540e8      add   x26, x8, x9
│           0x001540ec      mov   x1, x26                              ; int64_t arg2
│           0x001540f0      mov   x2, x25                              ; int64_t arg3
│           0x001540f4      bl    fcn.0014d60c
│           0x001540f8      adrp  x20, 0x23a000
│           0x001540fc      adrp  x24, 0x26d000
│           0x00154100      add   x20, x20, 0xac0
│           0x00154104      add   x24, x24, aav.0x0000010c
│           0x00154108      mov   x0, x20                              ; int64_t arg1
│           0x0015410c      mov   x1, x24                              ; int64_t arg2
│           0x00154110      mov   x2, x26                              ; unsigned long arg3
│           0x00154114      mov   x3, x22                              ; int64_t arg4
│           0x00154118      mov   w4, w25
│           0x0015411c      bl    fcn.0014c9f8
│           0x00154120      ldrb  w8, [x23, 3]                         ; [0x3:4]=0x48776b00
│           0x00154124      ldrb  w9, [x23, 2]                         ; [0x2:4]=0x776b0000
│           0x00154128      ldrb  w10, [x23, 1]                        ; [0x1:4]=0x6b000000
│           0x0015412c      ldrb  w11, [x23]
│           0x00154130      ldur  x23, [var_10h]
│           0x00154134      bfi   x9, x8, 8, 8
│           0x00154138      ldr   x12, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│           0x0015413c      bfi   x11, x10, 8, 8
│           0x00154140      mov   x14, x23
│           0x00154144      mov   x16, x23
│           0x00154148      ldrb  w13, [x23, 0x15]                     ; [0x15:4]=0
│           0x0015414c      ldrb  w18, [x14, 0x14]!                    ; aav.0x00000014
│                                                                      ; [0x14:4]=0
│           0x00154150      ldrb  w8, [x16, 8]!                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x00154154      mov   x19, x23
│           0x00154158      ldrb  w15, [x23, 9]                        ; [0x9:4]=0x686561
│           0x0015415c      ldrb  w22, [x19, 0xc]!                     ; aav.0x0000000c
│                                                                      ; [0xc:4]=0
│           0x00154160      bfi   x11, x9, 0x10, 0x10
│           0x00154164      bfi   w18, w13, 8, 8
│           0x00154168      ldrb  w9, [x14, 3]                         ; [0x3:4]=0x48776b00
│           0x0015416c      ldrb  w10, [x14, 2]                        ; [0x2:4]=0x776b0000
│           0x00154170      ldrb  w13, [x16, 3]                        ; [0x3:4]=0x48776b00
│           0x00154174      ldrb  w14, [x16, 2]                        ; [0x2:4]=0x776b0000
│           0x00154178      ldrb  w17, [x23, 0xd]                      ; [0xd:4]=0x4000000
│           0x0015417c      bfi   w8, w15, 8, 8
│           0x00154180      ldrb  w15, [x19, 3]                        ; [0x3:4]=0x48776b00
│           0x00154184      ldrb  w16, [x19, 2]                        ; [0x2:4]=0x776b0000
│           0x00154188      bfi   w10, w9, 8, 8
│           0x0015418c      bfi   w14, w13, 8, 8
│           0x00154190      bfi   w18, w10, 0x10, 0x10
│           0x00154194      bfi   w8, w14, 0x10, 0x10
│           0x00154198      add   w9, w18, 0xfff
│           0x0015419c      add   w8, w8, 0xfff
│           0x001541a0      and   w9, w9, 0xfffff000
│           0x001541a4      and   w8, w8, 0xfffff000
│           0x001541a8      bfi   w22, w17, 8, 8
│           0x001541ac      bfi   w16, w15, 8, 8
│           0x001541b0      add   w8, w8, w9
│           0x001541b4      mov   w9, -0x5c000000
│           0x001541b8      add   x25, x12, x11
│           0x001541bc      bfi   w22, w16, 0x10, 0x10
│           0x001541c0      add   x26, x8, x9
│           0x001541c4      mov   x0, x25                              ; int64_t arg1
│           0x001541c8      mov   x1, x26                              ; int64_t arg2
│           0x001541cc      mov   x2, x22                              ; int64_t arg3
│           0x001541d0      str   x25, [x27, 0xa98]
│           0x001541d4      bl    fcn.0014d60c
│           0x001541d8      mov   x0, x20                              ; int64_t arg1
│           0x001541dc      mov   x1, x24                              ; int64_t arg2
│           0x001541e0      mov   x2, x26                              ; unsigned long arg3
│           0x001541e4      mov   x3, x25                              ; int64_t arg4
│           0x001541e8      mov   w4, w22
│           0x001541ec      bl    fcn.0014c9f8
│           0x001541f0      ldrb  w8, [x19, 3]                         ; [0x3:4]=0x48776b00
│           0x001541f4      ldrb  w9, [x19, 2]                         ; [0x2:4]=0x776b0000
│           0x001541f8      ldrb  w10, [x23, 0xd]                      ; [0xd:4]=0x4000000
│           0x001541fc      ldrb  w11, [x19]
│           0x00154200      ldr   x12, [x27, 0xa98]                    ; [0xa98:4]=0x63655314
│           0x00154204      bfi   x9, x8, 8, 8
│           0x00154208      bfi   x11, x10, 8, 8
│           0x0015420c      bfi   x11, x9, 0x10, 0x10
│           0x00154210      add   x8, x12, x11
│           0x00154214      str   x8, [x27, 0xa98]
│           0x00154218      ldr   x8, [var_88h]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x0015421c      add   x0, x21, w8, sxtw                    ; int64_t arg1
│           0x00154220      bl    fcn.00170a18
│           0x00154224      ldp   x1, x2, [var_80h]
│           0x00154228      mov   x0, x23                              ; int64_t arg1
│           0x0015422c      bl    fcn.0017e384
│           0x00154230      mov   w0, wzr
│           ; CODE XREF from fcn.00153998 @ 0x154070
│           0x00154234      ldp   x20, x19, [var_10h]
│           0x00154238      ldp   x22, x21, [var_20h]
│           0x0015423c      ldp   x24, x23, [var_30h]
│           0x00154240      ldp   x26, x25, [var_40h]
│           0x00154244      ldp   x28, x27, [var_50h]
│           0x00154248      ldp   x29, x30, [var_60h]
│           0x0015424c      add   sp, sp, 0x90
│           0x00154250      autibsp
└           0x00154254      ret
            ; CALL XREFS from fcn.00153998 @ +0x6a0, +0x6b0


========================================================================================
FUNCTION fcn.0017df80
SOURCE full-sboot-part-01
LINES 30
========================================================================================

┌ fcn.0017df80(int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7);
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; var int64_t var_10h @ stack - 0x10
│           0x0017df80      pacibsp
│           0x0017df84      stp   x29, x30, [var_10h]!
│           0x0017df88      mov   x29, sp
│           0x0017df8c      adrp  x0, 0x5a0000
│           0x0017df90      adrp  x2, 0x26f000
│           0x0017df94      add   x0, x0, 0x64c                        ; int64_t arg1
│           0x0017df98      add   x2, x2, 0x47b                        ; int64_t arg4
│           0x0017df9c      mov   w1, 7
│           0x0017dfa0      bl    fcn.0014b120
│           0x0017dfa4      bl    fcn.0017dfdc
│           0x0017dfa8      mov   w0, 3
│           0x0017dfac      bl    fcn.001895dc
│       ┌─< 0x0017dfb0      cbnz  w0, 0x17dfcc
│       │   0x0017dfb4      adrp  x0, 0x5a0000
│       │   0x0017dfb8      adrp  x2, 0x259000
│       │   0x0017dfbc      add   x0, x0, 0x64c                        ; int64_t arg1
│       │   0x0017dfc0      add   x2, x2, 0xc35                        ; int64_t arg4
│       │   0x0017dfc4      mov   w1, 6
│       │   0x0017dfc8      bl    fcn.0014b120
│       └─> 0x0017dfcc      mov   w0, wzr
│           0x0017dfd0      ldp   x29, x30, [sp], 0x10
│           0x0017dfd4      autibsp
└           0x0017dfd8      ret
            ; CALL XREF from fcn.0017df80 @ 0x17dfa4
