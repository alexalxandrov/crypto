┌ fcn.0012c624(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012c624      pacibsp
│           0x0012c628      stp   x29, x30, [var_20h]!
│           0x0012c62c      stp   x20, x19, [var_10h]
│           0x0012c630      mov   x29, sp
│           0x0012c634      bl    fcn.00126b3c
│           0x0012c638      mov   x19, x0
│           0x0012c63c      bl    fcn.00126b3c
│       ┌─< 0x0012c640      cbz   x0, 0x12c698
│       │   0x0012c644      ldrb  w8, [x0, 0x36c]                      ; [0x36c:4]=0xb9007109
│       │   0x0012c648      tst   w8, 0xfc
│      ┌──< 0x0012c64c      b.eq  0x12c698
│      ││   0x0012c650      add   x8, x0, 0x3ab
│      ││   0x0012c654      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│     ┌───< 0x0012c658      tbnz  w9, 1, 0x12c698
│     │││   0x0012c65c      ldrb  w9, [x8, 0x29b]                      ; [0x29b:4]=0x909b9
│     │││   0x0012c660      ldrb  w10, [x8, 0x29a]                     ; [0x29a:4]=0x909b940
│     │││   0x0012c664      ldrb  w11, [x8, 0x299]                     ; [0x299:4]=0x9b94063
│     │││   0x0012c668      ldrb  w8, [x8, aav.0x00000298]             ; [0x298:4]=0xb94063e9
│     │││   0x0012c66c      adrp  x0, 0x24a000
│     │││   0x0012c670      bfi   w10, w9, 8, 8
│     │││   0x0012c674      adrp  x1, 0x23c000
│     │││   0x0012c678      bfi   w8, w11, 8, 8
│     │││   0x0012c67c      bfi   w8, w10, 0x10, 0x10
│     │││   0x0012c680      rev   w20, w8
│     │││   0x0012c684      add   x0, x0, 0xe0                         ; int64_t arg1
│     │││   0x0012c688      add   x1, x1, 0x931                        ; int64_t arg2
│     │││   0x0012c68c      mov   w2, w20
│     │││   0x0012c690      bl    fcn.0014c9f8
│    ┌────< 0x0012c694      tbnz  w20, 5, 0x12c6c4
│    │└└└─> 0x0012c698      adrp  x0, 0x264000
│    │      0x0012c69c      adrp  x1, 0x262000
│    │      0x0012c6a0      add   x0, x0, 0xc9e                        ; int64_t arg1
│    │      0x0012c6a4      add   x1, x1, 0xa40                        ; int64_t arg2
│    │      0x0012c6a8      bl    fcn.0014c9f8
│    │      ; CODE XREF from fcn.0012c624 @ 0x12c7d4
│    │  ┌─> 0x0012c6ac      mov   w19, 1
│    │  ╎   ; CODE XREFS from fcn.0012c624 @ 0x12c710, 0x12c808
│    │┌┌──> 0x0012c6b0      mov   w0, w19
│    │╎╎╎   0x0012c6b4      ldp   x20, x19, [var_10h]
│    │╎╎╎   0x0012c6b8      ldp   x29, x30, [sp], 0x20
│    │╎╎╎   0x0012c6bc      autibsp
│    │╎╎╎   0x0012c6c0      ret
│    └────> 0x0012c6c4      bl    fcn.00126b3c
│     ╎╎╎   0x0012c6c8      mov   w1, 0x13
│     ╎╎╎   0x0012c6cc      mov   w2, wzr
│     ╎╎╎   0x0012c6d0      mov   x20, x0
│     ╎╎╎   0x0012c6d4      bl    fcn.001283b8
│    ┌────< 0x0012c6d8      cbz   w0, 0x12c714
│    │╎╎╎   0x0012c6dc      mov   w2, w0
│    │╎╎╎   0x0012c6e0      adrp  x0, 0x24c000
│    │╎╎╎   0x0012c6e4      adrp  x1, 0x278000
│    │╎╎╎   0x0012c6e8      add   x0, x0, 0x3f2                        ; int64_t arg1
│    │╎╎╎   0x0012c6ec      add   x1, x1, 0x624                        ; int64_t arg2
│    │╎╎╎   0x0012c6f0      bl    fcn.0014c9f8
│    │╎╎╎   0x0012c6f4      adrp  x0, 0x247000
│    │╎╎╎   0x0012c6f8      add   x0, x0, 0xc4a
│    │╎╎╎   ; CODE XREF from fcn.0012c624 @ 0x12c7bc
│   ┌─────> 0x0012c6fc      adrp  x1, 0x262000
│   ╎│╎╎╎   0x0012c700      add   x1, x1, 0xa40                        ; int64_t arg2
│   ╎│╎╎╎   0x0012c704      mov   w2, 1
│   ╎│╎╎╎   0x0012c708      mov   w19, 1
│   ╎│╎╎╎   0x0012c70c      bl    fcn.0014c9f8
│   ╎│└───< 0x0012c710      b     0x12c6b0
│   ╎└────> 0x0012c714      ldr   w2, [x20, 0x23c]                     ; [0x23c:4]=0xb94002c8
│   ╎  ╎╎   0x0012c718      adrp  x0, 0x24f000
│   ╎  ╎╎   0x0012c71c      adrp  x1, 0x278000
│   ╎  ╎╎   0x0012c720      add   x0, x0, 0xe4                         ; int64_t arg1
│   ╎  ╎╎   0x0012c724      add   x1, x1, 0x624                        ; int64_t arg2
│   ╎  ╎╎   0x0012c728      bl    fcn.0014c9f8
│   ╎  ╎╎   0x0012c72c      ldr   w2, [x19, 0x23c]                     ; [0x23c:4]=0xb94002c8
│   ╎  ╎╎   0x0012c730      cmp   w2, 1
│   ╎ ┌───< 0x0012c734      b.ne  0x12c7c0
│   ╎ │╎╎   0x0012c738      adrp  x0, 0x273000
│   ╎ │╎╎   0x0012c73c      adrp  x1, 0x262000
│   ╎ │╎╎   0x0012c740      add   x0, x0, 0xb6f                        ; int64_t arg3
│   ╎ │╎╎   0x0012c744      add   x1, x1, 0xa40                        ; int64_t arg4
│   ╎ │╎╎   0x0012c748      bl    fcn.0014c9f8
│   ╎ │╎╎   0x0012c74c      bl    fcn.00126b3c
│   ╎ │╎╎   0x0012c750      adrp  x8, 0x2c8000
│   ╎ │╎╎   0x0012c754      add   x8, x8, 0x594
│   ╎ │╎╎   0x0012c758      ldrb  w8, [x8, 0x66]                       ; [0x66:4]=0xb400
│   ╎ │╎╎   0x0012c75c      mov   w9, 2
│   ╎ │╎╎   0x0012c760      mov   w1, 0x14
│   ╎ │╎╎   0x0012c764      mov   w2, wzr
│   ╎ │╎╎   0x0012c768      add   x8, x0, x8, lsl 2
│   ╎ │╎╎   0x0012c76c      mov   x19, x0
│   ╎ │╎╎   0x0012c770      str   w9, [x8, aav.0x000001e8]
│   ╎ │╎╎   0x0012c774      bl    fcn.00127bc0
│   ╎┌────< 0x0012c778      cbz   w0, 0x12c7d8
│   ╎││╎╎   0x0012c77c      mov   w1, 0x14
│   ╎││╎╎   0x0012c780      mov   x0, x19                              ; int64_t arg1
│   ╎││╎╎   0x0012c784      mov   w2, wzr
│   ╎││╎╎   0x0012c788      bl    fcn.00127bc0
│  ┌──────< 0x0012c78c      cbz   w0, 0x12c7d8
│  │╎││╎╎   0x0012c790      mov   w1, 0x14
│  │╎││╎╎   0x0012c794      mov   x0, x19                              ; int64_t arg1
│  │╎││╎╎   0x0012c798      mov   w2, wzr
│  │╎││╎╎   0x0012c79c      bl    fcn.00127bc0
│ ┌───────< 0x0012c7a0      cbz   w0, 0x12c7d8
│ ││╎││╎╎   0x0012c7a4      mov   w1, w0
│ ││╎││╎╎   0x0012c7a8      adrp  x0, 0x276000
│ ││╎││╎╎   0x0012c7ac      add   x0, x0, 0x2b5                        ; int64_t arg1
│ ││╎││╎╎   0x0012c7b0      bl    fcn.0014c9f8
│ ││╎││╎╎   0x0012c7b4      adrp  x0, 0x24a000
│ ││╎││╎╎   0x0012c7b8      add   x0, x0, aav.0x0000010c
│ ││└─────< 0x0012c7bc      b     0x12c6fc
│ ││ │└───> 0x0012c7c0      adrp  x0, 0x25e000
│ ││ │ ╎╎   0x0012c7c4      adrp  x1, 0x262000
│ ││ │ ╎╎   0x0012c7c8      add   x0, x0, 0x1ab                        ; int64_t arg1
│ ││ │ ╎╎   0x0012c7cc      add   x1, x1, 0xa40                        ; int64_t arg2
│ ││ │ ╎╎   0x0012c7d0      bl    fcn.0014c9f8
│ ││ │ ╎└─< 0x0012c7d4      b     0x12c6ac
│ └└─└────> 0x0012c7d8      ldr   w2, [x19, 0x23c]                     ; [0x23c:4]=0xb94002c8
│      ╎    0x0012c7dc      adrp  x0, 0x273000
│      ╎    0x0012c7e0      adrp  x1, 0x273000
│      ╎    0x0012c7e4      add   x0, x0, 0xb44                        ; int64_t arg1
│      ╎    0x0012c7e8      add   x1, x1, 0xb5d                        ; int64_t arg2
│      ╎    0x0012c7ec      bl    fcn.0014c9f8
│      ╎    0x0012c7f0      adrp  x0, 0x266000
│      ╎    0x0012c7f4      adrp  x1, 0x262000
│      ╎    0x0012c7f8      add   x0, x0, 0xb5d                        ; int64_t arg1
│      ╎    0x0012c7fc      add   x1, x1, 0xa40                        ; int64_t arg2
│      ╎    0x0012c800      bl    fcn.0014c9f8
│      ╎    0x0012c804      mov   w19, wzr
└      └──< 0x0012c808      b     0x12c6b0
            ; CALL XREF from fcn.00126b7c @ 0x126dc4
