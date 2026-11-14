┌ fcn.0012467c(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           ; var int64_t var_70h @ stack - 0x70
│           ; var int64_t var_56h @ stack - 0x56
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012467c      pacibsp
│           0x00124680      sub   sp, sp, 0x70
│           0x00124684      stp   x29, x30, [var_30h]
│           0x00124688      str   x21, [var_20h]
│           0x0012468c      stp   x20, x19, [var_10h]
│           0x00124690      add   x29, sp, 0x40
│           0x00124694      bl    fcn.00123590
│       ┌─< 0x00124698      tbz   w0, 0, 0x1246f4
│       │   0x0012469c      mov   x0, sp                               ; int64_t arg1
│       │   0x001246a0      mov   w2, 0x3c
│       │   0x001246a4      mov   w1, wzr
│       │   0x001246a8      mov   x21, sp
│       │   0x001246ac      bl    fcn.0014d8fc
│       │   0x001246b0      adrp  x19, 0x56f000
│       │   0x001246b4      add   x19, x19, aav.0x00000904             ; "al"
│       │   0x001246b8      mov   w8, 2
│       │   0x001246bc      mov   w2, 0x10
│       │   0x001246c0      mov   x0, x19                              ; int64_t arg1
│       │   0x001246c4      mov   w1, wzr
│       │   0x001246c8      strh  w8, [var_56h]
│       │   0x001246cc      bl    fcn.0014d8fc
│       │   0x001246d0      mov   w1, 0x10
│       │   0x001246d4      mov   x0, x19                              ; int64_t arg1
│       │   0x001246d8      bl    fcn.0010af70
│       │   0x001246dc      mov   x20, x0
│      ┌──< 0x001246e0      cbz   w20, 0x124754
│      ││   0x001246e4      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│      ││   0x001246e8      add   x0, x0, 0xc20                        ; int64_t arg1
│      ││   0x001246ec      bl    fcn.0014c9f8
│     ┌───< 0x001246f0      b     0x124844
│     ││└─> 0x001246f4      mov   w0, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│     ││    0x001246f8      bl    fcn.0014237c
│     ││┌─< 0x001246fc      cbz   x0, 0x1247a0
│     │││   0x00124700      mov   w2, str.k__9Ki_8                     ; 0x200 ; "k\t@9Ki(8\b\U00000005"
│     │││   0x00124704      mov   w1, wzr
│     │││   0x00124708      mov   x19, x0
│     │││   0x0012470c      bl    fcn.0014d8fc
│     │││   0x00124710      adrp  x20, 0x56f000
│     │││   0x00124714      add   x20, x20, aav.0x00000904             ; "al"
│     │││   0x00124718      mov   w8, 2
│     │││   0x0012471c      mov   w2, 0x10
│     │││   0x00124720      mov   x0, x20                              ; int64_t arg1
│     │││   0x00124724      mov   w1, wzr
│     │││   0x00124728      strh  w8, [x19]
│     │││   0x0012472c      bl    fcn.0014d8fc
│     │││   0x00124730      mov   w1, 0x10
│     │││   0x00124734      mov   x0, x20                              ; int64_t arg1
│     │││   0x00124738      bl    fcn.0010af70
│    ┌────< 0x0012473c      cbz   w0, 0x1247c4
│    ││││   0x00124740      mov   w20, w0
│    ││││   0x00124744      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│    ││││   0x00124748      add   x0, x0, 0xc20
│    ││││   ; CODE XREF from fcn.0012467c @ 0x1248b8
│   ┌─────> 0x0012474c      bl    fcn.0014c9f8
│  ┌──────< 0x00124750      b     0x12483c
│  │╎││└──> 0x00124754      adrp  x1, 0x56f000
│  │╎││ │   0x00124758      add   x1, x1, aav.0x00000904               ; "al" ; int64_t arg2
│  │╎││ │   0x0012475c      add   x0, x21, 0xa                         ; int64_t arg1
│  │╎││ │   0x00124760      mov   w2, 0x10
│  │╎││ │   0x00124764      add   x19, x21, 0xa
│  │╎││ │   0x00124768      bl    fcn.0014d60c
│  │╎││ │   0x0012476c      mov   x0, sp                               ; int64_t arg1
│  │╎││ │   0x00124770      mov   x1, xzr                              ; int64_t arg2
│  │╎││ │   0x00124774      bl    fcn.00122e14
│  │╎││ │   0x00124778      mov   w20, w0
│  │╎││┌──< 0x0012477c      cbnz  w0, 0x124844
│  │╎││││   0x00124780      ldrh  w1, [sp]
│ ┌───────< 0x00124784      tbnz  w1, 7, 0x124808
│ ────────< 0x00124788      cbz   w1, 0x124860
│ ││╎││││   0x0012478c      adrp  x0, 0x25d000
│ ││╎││││   0x00124790      add   x0, x0, aav.0x00000f90               ; int64_t arg1
│ ││╎││││   0x00124794      bl    fcn.0014c9f8
│ ││╎││││   0x00124798      ldrh  w20, [sp]
│ ────────< 0x0012479c      b     0x124844
│ ││╎│││└─> 0x001247a0      adrp  x0, 0x250000
│ ││╎│││    0x001247a4      adrp  x1, 0x259000
│ ││╎│││    0x001247a8      add   x0, x0, 0xf9a                        ; int64_t arg1
│ ││╎│││    0x001247ac      add   x1, x1, 0xf1e                        ; int64_t arg2
│ ││╎│││    0x001247b0      bl    fcn.0014c9f8
│ ││╎│││    0x001247b4      mov   w8, str.ICM__USB_Loading_Done        ; 0xa02 ; "[ICM] USB Loading Done"
│ ││╎│││    0x001247b8      movk  w8, 5, lsl 16
│ ││╎│││    0x001247bc      add   w20, w8, 0x102
│ ││╎│││┌─< 0x001247c0      b     0x124844
│ ││╎└────> 0x001247c4      adrp  x1, 0x56f000
│ ││╎ │││   0x001247c8      add   x1, x1, aav.0x00000904               ; "al" ; int64_t arg2
│ ││╎ │││   0x001247cc      add   x0, x19, 0xc                         ; int64_t arg1
│ ││╎ │││   0x001247d0      mov   w2, 0x10
│ ││╎ │││   0x001247d4      bl    fcn.0014d60c
│ ││╎ │││   0x001247d8      mov   x0, x19                              ; int64_t arg1
│ ││╎ │││   0x001247dc      bl    fcn.aav.0x00000294                   ; fcn.001224ec
│ ││╎ │││   0x001247e0      mov   w20, w0
│ ││╎┌────< 0x001247e4      cbnz  w0, 0x12483c
│ ││╎││││   0x001247e8      ldrh  w1, [x19, 2]                         ; [0x2:4]=0x776b0000
│ ────────< 0x001247ec      tbnz  w1, 7, 0x124824
│ ────────< 0x001247f0      cbz   w1, 0x124890
│ ││╎││││   0x001247f4      adrp  x0, 0x25d000
│ ││╎││││   0x001247f8      add   x0, x0, aav.0x00000f90               ; int64_t arg1
│ ││╎││││   0x001247fc      bl    fcn.0014c9f8
│ ││╎││││   0x00124800      ldrh  w20, [x19, 2]                        ; [0x2:4]=0x776b0000
│ ────────< 0x00124804      b     0x12483c
│ └───────> 0x00124808      adrp  x0, 0x25c000
│  │╎││││   0x0012480c      add   x0, x0, 0xb2                         ; int64_t arg1
│  │╎││││   0x00124810      bl    fcn.0014c9f8
│  │╎││││   0x00124814      mov   w8, str.ICM__USB_Loading_Done        ; 0xa02 ; "[ICM] USB Loading Done"
│  │╎││││   0x00124818      movk  w8, 5, lsl 16
│  │╎││││   0x0012481c      add   w20, w8, 3
│ ┌───────< 0x00124820      b     0x124844
│ ────────> 0x00124824      adrp  x0, 0x25c000
│ ││╎││││   0x00124828      add   x0, x0, 0xb2                         ; int64_t arg1
│ ││╎││││   0x0012482c      bl    fcn.0014c9f8
│ ││╎││││   0x00124830      mov   w8, str.ICM__USB_Loading_Done        ; 0xa02 ; "[ICM] USB Loading Done"
│ ││╎││││   0x00124834      movk  w8, 5, lsl 16
│ ││╎││││   0x00124838      add   w20, w8, 3
│ ││╎││││   ; CODE XREFS from fcn.0012467c @ 0x124750, 0x124804, 0x1248c8
│ ─└─└────> 0x0012483c      mov   x0, x19                              ; int64_t arg1
│ │ ╎ │││   0x00124840      bl    fcn.001424a4
│ │ ╎ │││   ; XREFS: CODE 0x001246f0  CODE 0x0012479c  CODE 0x001247c0
│ │ ╎ │││   ; XREFS: CODE 0x00124820  CODE 0x0012488c  CODE 0x001248c0
│ └┌─┌└└└─> 0x00124844      mov   w0, w20
│  ╎╎╎      0x00124848      ldp   x20, x19, [var_10h]
│  ╎╎╎      0x0012484c      ldr   x21, [var_20h]                       ; aav.0x00000050
│  ╎╎╎                                                                 ; [0x50:4]=0xd2810600
│  ╎╎╎      0x00124850      ldp   x29, x30, [var_30h]
│  ╎╎╎      0x00124854      add   sp, sp, 0x70
│  ╎╎╎      0x00124858      autibsp
│  ╎╎╎      0x0012485c      ret
│ ────────> 0x00124860      adrp  x1, 0x56f000
│  ╎╎╎      0x00124864      add   x1, x1, aav.0x00000904               ; "al" ; int64_t arg2
│  ╎╎╎      0x00124868      mov   w2, 0x10
│  ╎╎╎      0x0012486c      mov   x0, x19                              ; int64_t arg1
│  ╎╎╎      0x00124870      bl    fcn.0014d5c8
│  ╎╎╎  ┌─< 0x00124874      cbz   w0, 0x1248bc
│  ╎╎╎  │   0x00124878      adrp  x0, 0x257000
│  ╎╎╎  │   0x0012487c      mov   w20, str.ICM__USB_Loading_Done       ; 0xa02 ; "[ICM] USB Loading Done"
│  ╎╎╎  │   0x00124880      add   x0, x0, 0x5cd                        ; int64_t arg1
│  ╎╎╎  │   0x00124884      movk  w20, 5, lsl 16
│  ╎╎╎  │   0x00124888      bl    fcn.0014c9f8
│  └──────< 0x0012488c      b     0x124844
│ ────────> 0x00124890      adrp  x1, 0x56f000
│   ╎╎  │   0x00124894      add   x1, x1, aav.0x00000904               ; "al" ; int64_t arg2
│   ╎╎  │   0x00124898      add   x0, x19, 0xc                         ; int64_t arg1
│   ╎╎  │   0x0012489c      mov   w2, 0x10
│   ╎╎  │   0x001248a0      bl    fcn.0014d5c8
│   ╎╎ ┌──< 0x001248a4      cbz   w0, 0x1248c4
│   ╎╎ ││   0x001248a8      mov   w20, str.ICM__USB_Loading_Done       ; 0xa02 ; "[ICM] USB Loading Done"
│   ╎╎ ││   0x001248ac      adrp  x0, 0x257000
│   ╎╎ ││   0x001248b0      movk  w20, 5, lsl 16
│   ╎╎ ││   0x001248b4      add   x0, x0, 0x5cd
│   └─────< 0x001248b8      b     0x12474c
│    ╎ │└─> 0x001248bc      mov   w20, wzr
│    └────< 0x001248c0      b     0x124844
│      └──> 0x001248c4      mov   w20, wzr
└ ────────< 0x001248c8      b     0x12483c
            ; CALL XREF from fcn.00124b04 @ 0x124bd4
