┌ fcn.0016d638(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_120h @ stack - 0x120
│           ; var int64_t var_f0h @ stack - 0xf0
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0016d638      pacibsp
│           0x0016d63c      sub   sp, sp, 0x1a0
│           0x0016d640      stp   x29, x30, [var_40h]
│           0x0016d644      stp   x28, x23, [var_30h]
│           0x0016d648      stp   x22, x21, [var_20h]
│           0x0016d64c      stp   x20, x19, [var_10h]
│           0x0016d650      add   x29, sp, 0x160
│           0x0016d654      mov   x19, x1                              ; arg2
│           0x0016d658      mov   w20, w0                              ; arg1
│           0x0016d65c      stp   x2, x3, [var_120h]                   ; arg4
│           0x0016d660      sub   x0, var_10h + 0x6c                   ; int64_t arg1
│           0x0016d664      mov   w2, 0x5a                             ; 'Z'
│           0x0016d668      mov   w1, wzr
│           0x0016d66c      stp   x4, x5, [var_120h + 0x10]            ; arg6
│           0x0016d670      stp   x6, x7, [var_120h + 0x20]            ; arg8
│           0x0016d674      stp   q0, q1, [sp]
│           0x0016d678      stp   q2, q3, [sp, 0x20]
│           0x0016d67c      stp   q4, q5, [sp, 0x40]
│           0x0016d680      stp   q6, q7, [sp, 0x60]
│           0x0016d684      bl    fcn.0014d8fc
│           0x0016d688      mov   x8, -0x30
│           0x0016d68c      mov   x9, sp
│           0x0016d690      add   x10, var_120h
│           0x0016d694      adrp  x2, 0x242000
│           0x0016d698      movk  x8, 0xff80, lsl 32
│           0x0016d69c      add   x11, var_10h + 0x50
│           0x0016d6a0      add   x9, x9, 0x80
│           0x0016d6a4      add   x10, x10, 0x30
│           0x0016d6a8      add   x2, x2, 0xac1                        ; int64_t arg3
│           0x0016d6ac      sub   x0, var_10h + 0x80                   ; int64_t arg1
│           0x0016d6b0      add   x3, var_f0h                          ; int64_t arg4
│           0x0016d6b4      mov   w1, 0xf
│           0x0016d6b8      sturb wzr, [var_f0h + 0x8e]
│           0x0016d6bc      sturh wzr, [var_f0h + 0x8c]
│           0x0016d6c0      stur  wzr, [var_f0h + 0x88]
│           0x0016d6c4      stp   x8, xzr, [var_f0h + 0x78]
│           0x0016d6c8      stp   x10, x9, [var_f0h + 0x68]
│           0x0016d6cc      stur  x11, [var_f0h + 0x60]
│           0x0016d6d0      stp   x11, x10, [var_f0h]
│           0x0016d6d4      stp   x9, x8, [var_f0h + 0x10]
│           0x0016d6d8      bl    fcn.0014b1d4
│           0x0016d6dc      adrp  x21, 0x23e000
│           0x0016d6e0      add   x21, x21, 0x409
│           0x0016d6e4      sub   x0, var_10h + 0x80                   ; int64_t arg1
│           0x0016d6e8      mov   w2, 0x5a                             ; 'Z'
│           0x0016d6ec      mov   x1, x21                              ; int64_t arg2
│           0x0016d6f0      bl    fcn.0014dbd8
│       ┌─< 0x0016d6f4      cbz   w0, 0x16d718
│       │   0x0016d6f8      adrp  x2, 0x23e000
│       │   0x0016d6fc      add   x2, x2, 0xe4b                        ; int64_t arg4
│       │   0x0016d700      sub   x0, var_10h + 0x6c                   ; int64_t arg1
│       │   0x0016d704      sub   x4, var_10h + 0x80                   ; int64_t arg6
│       │   0x0016d708      mov   w1, 0x5a                             ; 'Z'
│       │   0x0016d70c      mov   x3, x19                              ; int64_t arg5
│       │   0x0016d710      bl    fcn.0014b120
│      ┌──< 0x0016d714      b     0x16d730
│      │└─> 0x0016d718      adrp  x2, 0x260000
│      │    0x0016d71c      add   x2, x2, 0xdb3                        ; int64_t arg4
│      │    0x0016d720      sub   x0, var_10h + 0x6c                   ; int64_t arg1
│      │    0x0016d724      mov   w1, 0x5a                             ; 'Z'
│      │    0x0016d728      mov   x3, x19                              ; int64_t arg5
│      │    0x0016d72c      bl    fcn.0014b120
│      │    ; CODE XREF from fcn.0016d638 @ 0x16d714
│      └──> 0x0016d730      mov   w22, 0x80c
│           0x0016d734      sub   x1, var_10h + 0x6c                   ; int64_t arg2
│           0x0016d738      mov   w0, 0x114
│           0x0016d73c      movk  w22, 0x1186, lsl 16
│           0x0016d740      bl    fcn.001a88d0
│           0x0016d744      cmp   x19, 0
│           0x0016d748      adrp  x0, 0x24c000
│           0x0016d74c      adrp  x1, 0x246000
│           0x0016d750      csel  x3, x21, x19, eq                     ; int64_t arg4
│           0x0016d754      add   x0, x0, 0xaef                        ; int64_t arg1
│           0x0016d758      add   x1, x1, 0xad                         ; int64_t arg2
│           0x0016d75c      and   w2, w20, 0xff
│           0x0016d760      sub   x4, var_10h + 0x80                   ; int64_t arg5
│           0x0016d764      and   w23, w20, 0xff
│           0x0016d768      bl    fcn.0014c9f8
│       ┌─< 0x0016d76c      cbz   x19, 0x16d79c
│       │   0x0016d770      adrp  x1, 0x24f000
│       │   0x0016d774      add   x1, x1, 0x577                        ; int64_t arg2
│       │   0x0016d778      mov   x0, x19                              ; int64_t arg1
│       │   0x0016d77c      bl    fcn.0014da4c
│      ┌──< 0x0016d780      cbz   w0, 0x16d7b0
│      ││   0x0016d784      bl    fcn.001a4628
│      ││   0x0016d788      and   w8, w20, 0xff
│      ││   0x0016d78c      cmp   w8, 0x4c
│      ││   0x0016d790      cset  w0, eq
│      ││   0x0016d794      bl    fcn.00170580
│     ┌───< 0x0016d798      b     0x16d7c4
│     ││└─> 0x0016d79c      bl    fcn.001a4628
│     ││    0x0016d7a0      cmp   w23, 0x4c
│     ││    0x0016d7a4      cset  w0, eq
│     ││    0x0016d7a8      bl    fcn.00170580
│     ││┌─< 0x0016d7ac      b     0x16d9d4
│     │└──> 0x0016d7b0      adrp  x0, 0x24f000
│     │ │   0x0016d7b4      adrp  x1, 0x246000
│     │ │   0x0016d7b8      add   x0, x0, str.jj_8                     ; 0x580 ; "jj(8\xea\x9b@\xb9\b\U00000005" ; int64_t arg1
│     │ │   0x0016d7bc      add   x1, x1, 0xad                         ; int64_t arg2
│     │ │   0x0016d7c0      bl    fcn.0014c9f8
│     │ │   ; CODE XREF from fcn.0016d638 @ 0x16d798
│     └───> 0x0016d7c4      adrp  x1, 0x24f000
│       │   0x0016d7c8      add   x1, x1, 0x31b                        ; int64_t arg2
│       │   0x0016d7cc      mov   x0, x19                              ; int64_t arg1
│       │   0x0016d7d0      bl    fcn.0014da4c
│      ┌──< 0x0016d7d4      cbz   w0, 0x16d944
│      ││   0x0016d7d8      adrp  x1, 0x24a000
│      ││   0x0016d7dc      add   x1, x1, 0x17b                        ; int64_t arg2
│      ││   0x0016d7e0      mov   x0, x19                              ; int64_t arg1
│      ││   0x0016d7e4      bl    fcn.0014da4c
│     ┌───< 0x0016d7e8      cbz   w0, 0x16d954
│     │││   0x0016d7ec      adrp  x1, 0x25c000
│     │││   0x0016d7f0      add   x1, x1, str.SecureBoot:___s__Check_RSA_digital_signature_fail ; 0x799 ; "SecureBoot: [%s] Check RSA digital signature fail\r\n" ; int64_t arg2
│     │││   0x0016d7f4      mov   x0, x19                              ; int64_t arg1
│     │││   0x0016d7f8      bl    fcn.0014da4c
│    ┌────< 0x0016d7fc      cbz   w0, 0x16d960
│    ││││   0x0016d800      adrp  x1, 0x27c000
│    ││││   0x0016d804      add   x1, x1, 0x78f                        ; int64_t arg2
│    ││││   0x0016d808      mov   x0, x19                              ; int64_t arg1
│    ││││   0x0016d80c      bl    fcn.0014da4c
│   ┌─────< 0x0016d810      cbz   w0, 0x16d974
│   │││││   0x0016d814      adrp  x1, 0x27d000
│   │││││   0x0016d818      add   x1, x1, 0x9b                         ; int64_t arg2
│   │││││   0x0016d81c      mov   w2, 3
│   │││││   0x0016d820      mov   x0, x19                              ; int64_t arg1
│   │││││   0x0016d824      bl    fcn.0014dbd8
│  ┌──────< 0x0016d828      cbz   w0, 0x16d988
│  ││││││   0x0016d82c      adrp  x1, 0x265000
│  ││││││   0x0016d830      add   x1, x1, 0x277                        ; int64_t arg2
│  ││││││   0x0016d834      mov   x0, x19                              ; int64_t arg1
│  ││││││   0x0016d838      bl    fcn.0014da4c
│ ┌───────< 0x0016d83c      cbz   w0, 0x16d9a4
│ │││││││   0x0016d840      adrp  x1, 0x257000
│ │││││││   0x0016d844      add   x1, x1, 0xd5b                        ; int64_t arg2
│ │││││││   0x0016d848      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d84c      bl    fcn.0014da4c
│ ────────< 0x0016d850      cbz   w0, 0x16d9ac
│ │││││││   0x0016d854      adrp  x1, 0x24a000
│ │││││││   0x0016d858      add   x1, x1, 0x744                        ; int64_t arg2
│ │││││││   0x0016d85c      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d860      bl    fcn.0014da4c
│ ────────< 0x0016d864      cbz   w0, 0x16d9b4
│ │││││││   0x0016d868      adrp  x1, 0x265000
│ │││││││   0x0016d86c      add   x1, x1, 0x27f                        ; int64_t arg2
│ │││││││   0x0016d870      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d874      bl    fcn.0014da4c
│ ────────< 0x0016d878      cbz   w0, 0x16d9bc
│ │││││││   0x0016d87c      adrp  x1, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│ │││││││   0x0016d880      add   x1, x1, 0x54                         ; int64_t arg2
│ │││││││   0x0016d884      mov   w2, 0xc
│ │││││││   0x0016d888      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d88c      bl    fcn.0014dbd8
│ ────────< 0x0016d890      cbz   w0, 0x16da24
│ │││││││   0x0016d894      adrp  x1, 0x260000
│ │││││││   0x0016d898      add   x1, x1, 0xdba                        ; int64_t arg2
│ │││││││   0x0016d89c      mov   w2, 0xb
│ │││││││   0x0016d8a0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d8a4      bl    fcn.0014dbd8
│ ────────< 0x0016d8a8      cbz   w0, 0x16da60
│ │││││││   0x0016d8ac      adrp  x1, 0x23c000
│ │││││││   0x0016d8b0      add   x1, x1, 0xe8f                        ; int64_t arg2
│ │││││││   0x0016d8b4      mov   w2, 0xa
│ │││││││   0x0016d8b8      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d8bc      bl    fcn.0014dbd8
│ ────────< 0x0016d8c0      cbz   w0, 0x16d924
│ │││││││   0x0016d8c4      adrp  x1, 0x240000
│ │││││││   0x0016d8c8      add   x1, x1, 0x895                        ; int64_t arg2
│ │││││││   0x0016d8cc      mov   w2, 0x13
│ │││││││   0x0016d8d0      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d8d4      bl    fcn.0014dbd8
│ ────────< 0x0016d8d8      cbz   w0, 0x16d924
│ │││││││   0x0016d8dc      adrp  x1, 0x264000
│ │││││││   0x0016d8e0      add   x1, x1, 0x9e8                        ; int64_t arg2
│ │││││││   0x0016d8e4      mov   w2, 0x12
│ │││││││   0x0016d8e8      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d8ec      bl    fcn.0014dbd8
│ ────────< 0x0016d8f0      cbz   w0, 0x16d924
│ │││││││   0x0016d8f4      adrp  x1, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│ │││││││   0x0016d8f8      add   x1, x1, 0x61                         ; int64_t arg2
│ │││││││   0x0016d8fc      mov   w2, 0xe
│ │││││││   0x0016d900      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d904      bl    fcn.0014dbd8
│ ────────< 0x0016d908      cbz   w0, 0x16d924
│ │││││││   0x0016d90c      adrp  x1, 0x27c000
│ │││││││   0x0016d910      add   x1, x1, 0x78f                        ; int64_t arg2
│ │││││││   0x0016d914      mov   w2, 7
│ │││││││   0x0016d918      mov   x0, x19                              ; int64_t arg1
│ │││││││   0x0016d91c      bl    fcn.0014dbd8
│ ────────< 0x0016d920      cbnz  w0, 0x16d9d4
│ ────────> 0x0016d924      adrp  x0, 0x243000
│ │││││││   0x0016d928      adrp  x1, 0x246000
│ │││││││   0x0016d92c      add   x0, x0, 0x898                        ; int64_t arg3
│ │││││││   0x0016d930      add   x1, x1, 0xad                         ; int64_t arg4
│ │││││││   0x0016d934      mov   x2, x19                              ; int64_t arg5
│ │││││││   0x0016d938      bl    fcn.0014c9f8
│ │││││││   0x0016d93c      bl    fcn.001a4860
│ ────────< 0x0016d940      b     0x16d9d4
│ │││││└──> 0x0016d944      mov   w8, 0x5601
│ │││││ │   0x0016d948      movk  w8, 0x1234, lsl 16
│ │││││ │   0x0016d94c      str   w8, [x22]
│ │││││┌──< 0x0016d950      b     0x16d9d4
│ ││││└───> 0x0016d954      mov   w8, 4
│ ││││ ││   0x0016d958      str   w8, [x22]
│ ││││┌───< 0x0016d95c      b     0x16d9d4
│ │││└────> 0x0016d960      mov   w8, 0x5601
│ │││ │││   0x0016d964      movk  w8, 0x1234, lsl 16
│ │││ │││   0x0016d968      add   w8, w8, 5
│ │││ │││   0x0016d96c      str   w8, [x22]
│ │││┌────< 0x0016d970      b     0x16d9d4
│ ││└─────> 0x0016d974      mov   w8, 0x5601
│ ││ ││││   0x0016d978      movk  w8, 0x1234, lsl 16
│ ││ ││││   0x0016d97c      add   w8, w8, 0xb
│ ││ ││││   0x0016d980      str   w8, [x22]
│ ││┌─────< 0x0016d984      b     0x16d9d4
│ │└──────> 0x0016d988      add   x0, x19, 3                           ; int64_t arg1
│ │ │││││   0x0016d98c      bl    fcn.0014aaa8
│ │ │││││   0x0016d990      mov   w8, -0x543d0000
│ │ │││││   0x0016d994      orr   w8, w0, w8
│ │ │││││   0x0016d998      orr   w8, w8, 0xc0000
│ │ │││││   0x0016d99c      str   w8, [x22]
│ │┌──────< 0x0016d9a0      b     0x16d9d4
│ └───────> 0x0016d9a4      mov   w0, 0x41                             ; 'A'
│ ┌───────< 0x0016d9a8      b     0x16d9c0
│ ────────> 0x0016d9ac      mov   w0, 0x45                             ; 'E'
│ ────────< 0x0016d9b0      b     0x16d9c0
│ ────────> 0x0016d9b4      mov   w0, 0x43                             ; 'C'
│ ────────< 0x0016d9b8      b     0x16d9c0
│ ────────> 0x0016d9bc      mov   w0, 0x44
│ │││││││   ; CODE XREFS from fcn.0016d638 @ 0x16d9a8, 0x16d9b0, 0x16d9b8
│ └───────> 0x0016d9c0      mov   w3, aav.0x00000400
│  ││││││   0x0016d9c4      mov   w4, 1
│  ││││││   0x0016d9c8      mov   w1, wzr
│  ││││││   0x0016d9cc      mov   x2, xzr                              ; int64_t arg3
│  ││││││   0x0016d9d0      bl    fcn.001504f8
│  ││││││   ; XREFS: CODE 0x0016d7ac  CODE 0x0016d940  CODE 0x0016d950
│  ││││││   ; XREFS: CODE 0x0016d95c  CODE 0x0016d970  CODE 0x0016d984
│  ││││││   ; XREFS: CODE 0x0016d9a0  CODE 0x0016da5c  CODE 0x0016da8c
│ ┌└└└└└└─> 0x0016d9d4      adrp  x8, 0x59a000
│ ╎         0x0016d9d8      ldr   w8, [x8, aav.0x0000044c]             ; [0x44c:4]=0xb940c509 ; "\t\xc5@\xb9\xf3\U00000003\U0000001f*7"
│ ╎     ┌─< 0x0016d9dc      cbz   w8, 0x16d9e8
│ ╎     │   0x0016d9e0      mov   w8, -0x543d0000
│ ╎     │   0x0016d9e4      str   w8, [x22]
│ ╎     └─> 0x0016d9e8      bl    fcn.000f9c9c
│ ╎         0x0016d9ec      bl    fcn.000f9afc
│ ╎         0x0016d9f0      adrp  x0, 0x268000
│ ╎         0x0016d9f4      add   x0, x0, 0xed0                        ; int64_t arg4
│ ╎         0x0016d9f8      bl    fcn.001af658
│ ╎         0x0016d9fc      bl    fcn.00139770
│ ╎         0x0016da00      bl    fcn.0010f5f4
│ ╎         0x0016da04      bl    fcn.0010fa44
│ ╎         0x0016da08      ldp   x20, x19, [var_10h]
│ ╎         0x0016da0c      ldp   x22, x21, [var_20h]
│ ╎         0x0016da10      ldp   x28, x23, [var_30h]
│ ╎         0x0016da14      ldp   x29, x30, [var_40h]
│ ╎         0x0016da18      add   sp, sp, 0x1a0
│ ╎         0x0016da1c      autibsp
│ ╎         0x0016da20      ret
│ ────────> 0x0016da24      mov   w0, -2
│ ╎         0x0016da28      bl    fcn.00192878
│ ╎         0x0016da2c      mov   w2, w0
│ ╎         0x0016da30      adrp  x0, 0x24f000
│ ╎         0x0016da34      adrp  x1, 0x246000
│ ╎         0x0016da38      add   x0, x0, 0x59b                        ; int64_t arg1
│ ╎         0x0016da3c      add   x1, x1, 0xad                         ; int64_t arg2
│ ╎         0x0016da40      bl    fcn.0014c9f8
│ ╎         0x0016da44      mov   w0, -2
│ ╎         0x0016da48      bl    fcn.00192878
│ ╎         0x0016da4c      mov   w8, 0xead0
│ ╎         0x0016da50      movk  w8, 0xabc0, lsl 16
│ ╎         0x0016da54      orr   w8, w0, w8
│ ╎         0x0016da58      str   w8, [x22]
│ ────────< 0x0016da5c      b     0x16d9d4
│ ────────> 0x0016da60      mov   w0, -2
│ ╎         0x0016da64      bl    fcn.00192878
│ ╎         0x0016da68      mov   w2, w0
│ ╎         0x0016da6c      adrp  x0, 0x24f000
│ ╎         0x0016da70      adrp  x1, 0x246000
│ ╎         0x0016da74      add   x0, x0, 0x59b                        ; int64_t arg1
│ ╎         0x0016da78      add   x1, x1, 0xad                         ; int64_t arg2
│ ╎         0x0016da7c      bl    fcn.0014c9f8
│ ╎         0x0016da80      mov   w8, 0xd900
│ ╎         0x0016da84      movk  w8, 0xabc0, lsl 16
│ ╎         0x0016da88      str   w8, [x22]
└ └───────< 0x0016da8c      b     0x16d9d4
ERROR: Linear size differs too much from the bbsum, please use pdr instead.
            ; CODE XREFS from fcn.0016da90 @ 0x16db18, 0x16db20, 0x16db24
