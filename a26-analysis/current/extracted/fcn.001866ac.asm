┌ fcn.001866ac(int64_t arg_4h, int64_t arg_8h, int64_t arg_ch, int64_t arg_10h, int64_t arg_14h, int64_t arg_18h, int64_t arg_1ch, int64_t arg_20h, int64_t arg_24h, int64_t arg_28h, int64_t arg_2ch, int64_t arg_30h, int64_t arg_3ch, int64_t arg_40h);
│           ; var int64_t var_3ch @ stack - 0x3c
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_34h @ stack - 0x34
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_2ch @ stack - 0x2c
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_24h @ stack - 0x24
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_1ch @ stack - 0x1c
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_14h @ stack - 0x14
│           ; var int64_t var_10h @ stack - 0x10
│           ; var int64_t var_ch @ stack - 0xc
│           ; var int64_t var_8h @ stack - 0x8
│           ; var int64_t var_4h @ stack - 0x4
│           ; arg int64_t arg_4h @ stack + 0x4
│           ; arg int64_t arg_8h @ stack + 0x8
│           ; arg int64_t arg_ch @ stack + 0xc
│           ; arg int64_t arg_10h @ stack + 0x10
│           ; arg int64_t arg_14h @ stack + 0x14
│           ; arg int64_t arg_18h @ stack + 0x18
│           ; arg int64_t arg_1ch @ stack + 0x1c
│           ; arg int64_t arg_20h @ stack + 0x20
│           ; arg int64_t arg_24h @ stack + 0x24
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_2ch @ stack + 0x2c
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_3ch @ stack + 0x3c
│           ; arg int64_t arg_40h @ stack + 0x40
│           0x001866ac      pacibsp
│           0x001866b0      stp   x29, x30, [sp, -0x40]!
│           0x001866b4      sub   x9, arg_40h + 0x40
│           0x001866b8      str   x28, [var_30h]
│           0x001866bc      stp   x22, x21, [var_20h]
│           0x001866c0      stp   x20, x19, [var_10h]
│           0x001866c4      mov   x29, sp
│           0x001866c8      and   sp, x9, 0xffffffffffffff80
│           0x001866cc      mov   x0, sp                               ; int64_t arg2
│           0x001866d0      mov   w2, 0xb4
│           0x001866d4      mov   w1, wzr
│           0x001866d8      mov   x21, sp
│           0x001866dc      bl    fcn.0014d8fc
│           0x001866e0      bl    fcn.0016e548
│           0x001866e4      mov   x19, x0
│           0x001866e8      bl    fcn.0017bae4
│           0x001866ec      ldr   x8, [x0, 0x30]                       ; aav.0x00000030
│                                                                      ; [0x30:4]=0x58000911
│           0x001866f0      mov   x20, x0
│           0x001866f4      mov   w0, wzr
│           0x001866f8      str   w8, [var_3ch]
│           0x001866fc      bl    fcn.0017d024
│           0x00186700      str   w0, [var_38h]
│           0x00186704      adrp  x0, 0x27a000
│           0x00186708      add   x0, x0, 0xf53                        ; int64_t arg1
│           0x0018670c      bl    fcn.0017cc58
│           0x00186710      ldr   x8, [x20, 0x48]                      ; aav.0x00000048
│                                                                      ; [0x48:4]=0xaa0203f6
│           0x00186714      mov   w9, 1
│           0x00186718      mov   w10, -1
│           0x0018671c      str   x10, [var_28h]
│           0x00186720      stp   w8, w9, [var_30h]
│           0x00186724      str   w0, [var_34h]
│           0x00186728      str   w10, [var_20h]
│           0x0018672c      bl    fcn.0017b0a0
│           0x00186730      str   w0, [var_1ch]
│           0x00186734      bl    fcn.0017b1f8
│           0x00186738      str   w0, [var_18h]
│           0x0018673c      bl    fcn.0017a668
│           0x00186740      str   w0, [var_14h]
│           0x00186744      bl    fcn.0017a540
│           0x00186748      mov   w8, -0x44450000
│           0x0018674c      str   w0, [var_10h]
│           0x00186750      mov   w0, wzr
│           0x00186754      str   w8, [var_8h]
│           0x00186758      bl    fcn.0017a7c0
│           0x0018675c      and   w8, w0, 0xff
│           0x00186760      mov   w0, 1
│           0x00186764      str   w8, [var_4h]
│           0x00186768      bl    fcn.0017a7c0
│           0x0018676c      and   w8, w0, 0xff
│           0x00186770      mov   w0, 2
│           0x00186774      str   w8, [var_4h + 0x4]
│           0x00186778      mov   w22, 2
│           0x0018677c      bl    fcn.0017a7c0
│           0x00186780      and   w8, w0, 0xff
│           0x00186784      mov   w0, 3
│           0x00186788      str   w8, [arg_4h]
│           0x0018678c      bl    fcn.0017a7c0
│           0x00186790      and   w8, w0, 0xff
│           0x00186794      mov   w0, 4
│           0x00186798      str   w8, [arg_8h]
│           0x0018679c      bl    fcn.0017a7c0
│           0x001867a0      and   w8, w0, 0xff
│           0x001867a4      mov   w0, 5
│           0x001867a8      str   w8, [arg_ch]
│           0x001867ac      bl    fcn.0017a7c0
│           0x001867b0      and   w8, w0, 0xff
│           0x001867b4      mov   w0, 6
│           0x001867b8      str   w8, [arg_10h]
│           0x001867bc      bl    fcn.0017a7c0
│           0x001867c0      and   w8, w0, 0xff
│           0x001867c4      mov   w0, 7
│           0x001867c8      str   w8, [arg_14h]
│           0x001867cc      bl    fcn.0017a7c0
│           0x001867d0      and   w8, w0, 0xff
│           0x001867d4      mov   w0, 8
│           0x001867d8      str   w8, [arg_18h]
│           0x001867dc      bl    fcn.0017a7c0
│           0x001867e0      and   w8, w0, 0xff
│           0x001867e4      mov   w0, 9
│           0x001867e8      str   w8, [arg_1ch]
│           0x001867ec      bl    fcn.0017a7c0
│           0x001867f0      and   w8, w0, 0xff
│           0x001867f4      mov   w0, 0xa
│           0x001867f8      str   w8, [arg_20h]
│           0x001867fc      bl    fcn.0017a7c0
│           0x00186800      and   w8, w0, 0xff
│           0x00186804      mov   w0, 0xb
│           0x00186808      str   w8, [arg_24h]
│           0x0018680c      bl    fcn.0017a7c0
│           0x00186810      and   w8, w0, 0xff
│           0x00186814      str   w8, [arg_28h]
│           0x00186818      ldr   x8, [x20, 0x50]                      ; aav.0x00000050
│                                                                      ; [0x50:4]=0xd2810600
│           0x0018681c      str   w22, [arg_2ch]
│           0x00186820      str   w8, [var_ch]
│           0x00186824      bl    fcn.00186510
│           0x00186828      adrp  x9, 0x5a6000
│           0x0018682c      ldr   w9, [x9, 0xa88]                      ; [0xa88:4]=0x4c204253
│           0x00186830      and   w8, w0, 0xff
│           0x00186834      stp   w8, w19, [arg_30h]
│           0x00186838      lsr   x8, x19, 0x20
│           0x0018683c      mov   w0, wzr
│           0x00186840      stp   w8, w9, [arg_30h + 0x8]
│           0x00186844      bl    fcn.00189be8
│           0x00186848      str   w0, [arg_40h]
│           0x0018684c      adrp  x0, 0x252000
│           0x00186850      add   x0, x0, 0x12                         ; int64_t arg1
│           0x00186854      bl    fcn.0014c9f8
│           0x00186858      ldr   w1, [var_3ch]                        ; str.kwH_daeh
│                                                                      ; [0x4:4]=0x2148776b ; "kwH!daeh"
│           0x0018685c      adrp  x0, 0x270000
│           0x00186860      add   x0, x0, 0x2c                         ; int64_t arg1
│           0x00186864      bl    fcn.0014c9f8
│           0x00186868      ldr   w1, [var_38h]                        ; aav.0x00000008
│                                                                      ; [0x8:4]=0x68656164 ; "daeh"
│           0x0018686c      adrp  x0, 0x25f000
│           0x00186870      add   x0, x0, 0x327                        ; int64_t arg1
│           0x00186874      bl    fcn.0014c9f8
│           0x00186878      ldr   w1, [var_34h]                        ; aav.0x0000000c
│                                                                      ; [0xc:4]=0
│           0x0018687c      adrp  x0, 0x258000
│           0x00186880      add   x0, x0, 0x871                        ; int64_t arg1
│           0x00186884      bl    fcn.0014c9f8
│           0x00186888      ldr   w1, [var_30h]                        ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0018688c      adrp  x0, 0x27b000
│           0x00186890      add   x0, x0, aav.0x00000198               ; int64_t arg1
│           0x00186894      bl    fcn.0014c9f8
│           0x00186898      ldr   w1, [var_2ch]                        ; aav.0x00000014
│                                                                      ; [0x14:4]=0
│           0x0018689c      adrp  x0, 0x261000
│           0x001868a0      add   x0, x0, 0x226                        ; int64_t arg1
│           0x001868a4      bl    fcn.0014c9f8
│           0x001868a8      ldr   w1, [var_28h]                        ; aav.0x00000018
│                                                                      ; [0x18:4]=0x7600000
│           0x001868ac      adrp  x0, 0x267000
│           0x001868b0      add   x0, x0, aav.0x000003a4               ; int64_t arg1
│           0x001868b4      bl    fcn.0014c9f8
│           0x001868b8      ldr   w1, [var_24h]                        ; aav.0x0000001c
│                                                                      ; [0x1c:4]=0
│           0x001868bc      adrp  x0, 0x26b000
│           0x001868c0      add   x0, x0, 0x602                        ; int64_t arg1
│           0x001868c4      bl    fcn.0014c9f8
│           0x001868c8      ldr   w1, [var_20h]                        ; aav.0x00000020
│                                                                      ; [0x20:4]=0x58000940 ; "@\t"
│           0x001868cc      adrp  x0, 0x24f000
│           0x001868d0      add   x0, x0, 0x98d                        ; int64_t arg1
│           0x001868d4      bl    fcn.0014c9f8
│           0x001868d8      ldr   w1, [var_1ch]                        ; aav.0x00000024
│                                                                      ; [0x24:4]=0xb9400001
│           0x001868dc      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x001868e0      add   x0, x0, 0xf22                        ; int64_t arg1
│           0x001868e4      bl    fcn.0014c9f8
│           0x001868e8      ldr   w1, [var_18h]                        ; aav.0x00000028
│                                                                      ; [0x28:4]=0x350000c1
│           0x001868ec      adrp  x0, 0x278000
│           0x001868f0      add   x0, x0, 0xf7a                        ; int64_t arg1
│           0x001868f4      bl    fcn.0014c9f8
│           0x001868f8      ldr   w1, [var_14h]                        ; aav.0x0000002c
│                                                                      ; [0x2c:4]=0xd2820010
│           0x001868fc      adrp  x0, 0x244000
│           0x00186900      add   x0, x0, 0x2af                        ; int64_t arg1
│           0x00186904      bl    fcn.0014c9f8
│           0x00186908      ldr   w1, [var_10h]                        ; aav.0x00000030
│                                                                      ; [0x30:4]=0x58000911
│           0x0018690c      adrp  x0, 0x25f000
│           0x00186910      add   x0, x0, aav.0x00000340               ; int64_t arg1
│           0x00186914      bl    fcn.0014c9f8
│           0x00186918      ldr   w1, [var_ch]                         ; aav.0x00000034
│                                                                      ; [0x34:4]=0x8b100231 ; "1\U00000002\U00000010\x8b?\U00000002"
│           0x0018691c      adrp  x0, 0x246000
│           0x00186920      add   x0, x0, 0x4b2                        ; int64_t arg1
│           0x00186924      bl    fcn.0014c9f8
│           0x00186928      ldr   w1, [var_8h]                         ; aav.0x00000038
│                                                                      ; [0x38:4]=0x9100023f ; "?\U00000002"
│           0x0018692c      adrp  x0, 0x241000
│           0x00186930      add   x0, x0, 0x83a                        ; int64_t arg1
│           0x00186934      bl    fcn.0014c9f8
│           0x00186938      adrp  x0, 0x265000
│           0x0018693c      add   x0, x0, 0x586                        ; int64_t arg1
│           0x00186940      bl    fcn.0014c9f8
│           0x00186944      ldr   w1, [var_4h]                         ; aav.0x0000003c
│                                                                      ; [0x3c:4]=0x94000047 ; "G"
│           0x00186948      adrp  x19, 0x244000
│           0x0018694c      add   x19, x19, 0x2ce
│           0x00186950      mov   x0, x19                              ; int64_t arg1
│           0x00186954      bl    fcn.0014c9f8
│           0x00186958      ldr   w1, [var_4h + 0x4]                   ; aav.0x00000040
│                                                                      ; [0x40:4]=0xaa0003f4
│           0x0018695c      mov   x0, x19                              ; int64_t arg1
│           0x00186960      bl    fcn.0014c9f8
│           0x00186964      ldr   w1, [arg_4h]                         ; aav.0x00000044
│                                                                      ; [0x44:4]=0xaa0103f5
│           0x00186968      mov   x0, x19                              ; int64_t arg1
│           0x0018696c      bl    fcn.0014c9f8
│           0x00186970      ldr   w1, [arg_8h]                         ; aav.0x00000048
│                                                                      ; [0x48:4]=0xaa0203f6
│           0x00186974      mov   x0, x19                              ; int64_t arg1
│           0x00186978      bl    fcn.0014c9f8
│           0x0018697c      ldr   w1, [arg_ch]                         ; aav.0x0000004c
│                                                                      ; [0x4c:4]=0xaa0303f7
│           0x00186980      mov   x0, x19                              ; int64_t arg1
│           0x00186984      bl    fcn.0014c9f8
│           0x00186988      ldr   w1, [arg_10h]                        ; aav.0x00000050
│                                                                      ; [0x50:4]=0xd2810600
│           0x0018698c      mov   x0, x19                              ; int64_t arg1
│           0x00186990      bl    fcn.0014c9f8
│           0x00186994      ldr   w1, [arg_14h]                        ; aav.0x00000054
│                                                                      ; [0x54:4]=0xf2a618a0
│           0x00186998      mov   x0, x19                              ; int64_t arg1
│           0x0018699c      bl    fcn.0014c9f8
│           0x001869a0      ldr   w1, [arg_18h]                        ; aav.0x00000058
│                                                                      ; [0x58:4]=0xd51e1000
│           0x001869a4      mov   x0, x19                              ; int64_t arg1
│           0x001869a8      bl    fcn.0014c9f8
│           0x001869ac      ldr   w1, [arg_1ch]                        ; aav.0x0000005c
│                                                                      ; [0x5c:4]=0xd5033fdf
│           0x001869b0      mov   x0, x19                              ; int64_t arg1
│           0x001869b4      bl    fcn.0014c9f8
│           0x001869b8      ldr   w1, [arg_20h]                        ; aav.0x00000060
│                                                                      ; [0x60:4]=0x9400050d ; "\r\U00000005"
│           0x001869bc      mov   x0, x19                              ; int64_t arg1
│           0x001869c0      bl    fcn.0014c9f8
│           0x001869c4      ldr   w1, [arg_24h]                        ; aav.0x00000064
│                                                                      ; [0x64:4]=0xb4000040 ; "@"
│           0x001869c8      mov   x0, x19                              ; int64_t arg1
│           0x001869cc      bl    fcn.0014c9f8
│           0x001869d0      ldr   w1, [arg_28h]                        ; aav.0x00000068
│                                                                      ; [0x68:4]=0xd61f0000
│           0x001869d4      mov   x0, x19                              ; int64_t arg1
│           0x001869d8      bl    fcn.0014c9f8
│           0x001869dc      adrp  x0, 0x268000
│           0x001869e0      add   x0, x0, 0x356                        ; int64_t arg1
│           0x001869e4      bl    fcn.0014c9f8
│           0x001869e8      ldr   w1, [arg_2ch]                        ; aav.0x0000006c
│                                                                      ; [0x6c:4]=0x1005bca0
│           0x001869ec      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x001869f0      add   x0, x0, 0xf39                        ; int64_t arg1
│           0x001869f4      bl    fcn.0014c9f8
│           0x001869f8      ldr   w1, [arg_30h]                        ; aav.0x00000070
│                                                                      ; [0x70:4]=0xd51ec000
│           0x001869fc      adrp  x0, 0x24d000
│           ; UNKNOWN XREF from fcn.00056f78 @ +0x54fc
│           ; UNKNOWN XREF from aav.0x00070000 @ +0x54f0
│           ;-- aav.0x00186a00:
│           0x00186a00      add   x0, x0, 0x75e                        ; int64_t arg1
│           0x00186a04      bl    fcn.0014c9f8
│           0x00186a08      ldr   w1, [arg_3ch]                        ; aav.0x0000007c
│                                                                      ; [0x7c:4]=0xd2820141 ; "A\U00000001\x82\xd2"
│           0x00186a0c      adrp  x0, 0x27b000
│           0x00186a10      add   x0, x0, 0x1b0                        ; int64_t arg1
│           0x00186a14      bl    fcn.0014c9f8
│           0x00186a18      ldr   w1, [arg_40h]                        ; aav.0x00000080
│                                                                      ; [0x80:4]=0xd53e1000
│           0x00186a1c      adrp  x0, 0x272000
│           0x00186a20      add   x0, x0, 0x17d                        ; int64_t arg1
│           0x00186a24      bl    fcn.0014c9f8
│           0x00186a28      adrp  x0, 0x252000
│           0x00186a2c      add   x0, x0, 0x40                         ; int64_t arg1
│           0x00186a30      bl    fcn.0014c9f8
│           0x00186a34      mov   x0, sp                               ; int64_t arg1
│           0x00186a38      add   x1, x21, 0xb4                        ; int64_t arg2
│           0x00186a3c      bl    fcn.0010f624
│           0x00186a40      adrp  x0, 0x27d000
│           0x00186a44      mov   w2, 0x202
│           0x00186a48      add   x0, x0, 0x412                        ; int64_t arg1
│           0x00186a4c      mov   x1, sp                               ; int64_t arg2
│           0x00186a50      movk  w2, 0xb200, lsl 16
│           0x00186a54      mov   w3, 0xb5
│           0x00186a58      mov   w4, 0xb4
│           0x00186a5c      bl    fcn.0014c9f8
│           0x00186a60      mov   w0, 0x202
│           0x00186a64      mov   x2, sp
│           0x00186a68      movk  w0, 0xb200, lsl 16
│           0x00186a6c      mov   w1, 0xb5
│           0x00186a70      mov   x3, xzr
│           0x00186a74      bl    fcn.0010a01c
│           0x00186a78      cmp   x0, 1
│       ┌─< 0x00186a7c      b.ne  0x186a98
│       │   0x00186a80      adrp  x0, 0x270000
│       │   0x00186a84      adrp  x1, 0x26b000
│       │   0x00186a88      add   x0, x0, 0x42                         ; int64_t arg1
│       │   0x00186a8c      add   x1, x1, 0x61d                        ; int64_t arg2
│       │   0x00186a90      bl    fcn.0014c9f8
│      ┌──< 0x00186a94      b     0x186ab0
│      │└─> 0x00186a98      mov   x2, x0                               ; unsigned long arg3
│      │    0x00186a9c      adrp  x0, 0x261000
│      │    0x00186aa0      adrp  x1, 0x26b000
│      │    0x00186aa4      add   x0, x0, 0x23e                        ; int64_t arg1
│      │    0x00186aa8      add   x1, x1, 0x61d                        ; int64_t arg2
│      │    0x00186aac      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.001866ac @ 0x186a94
│      └──> 0x00186ab0      mov   w0, wzr
│           0x00186ab4      mov   sp, x29
│           0x00186ab8      ldp   x20, x19, [arg_30h]
│           0x00186abc      ldp   x22, x21, [arg_20h]
│           0x00186ac0      ldr   x28, [arg_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x00186ac4      ldp   x29, x30, [sp], 0x40
│           0x00186ac8      autibsp
└           0x00186acc      ret
            ; CALL XREF from fcn.00186e90 @ 0x186ea0
