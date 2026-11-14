┌ fcn.0012bbe0(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0012bbe0      pacibsp
│           0x0012bbe4      stp   x29, x30, [var_20h]!
│           0x0012bbe8      stp   x20, x19, [var_10h]
│           0x0012bbec      mov   x29, sp
│           0x0012bbf0      bl    fcn.00126b3c
│       ┌─< 0x0012bbf4      cbz   x0, 0x12bc90
│       │   0x0012bbf8      mov   w1, 3
│       │   0x0012bbfc      mov   w2, wzr
│       │   0x0012bc00      mov   x19, x0
│       │   0x0012bc04      str   wzr, [x0, 0x90]
│       │   0x0012bc08      bl    fcn.001283b8
│      ┌──< 0x0012bc0c      cbz   w0, 0x12bc20
│      ││   0x0012bc10      mov   w1, w0
│      ││   0x0012bc14      adrp  x0, 0x23a000
│      ││   0x0012bc18      add   x0, x0, 0x6fb
│     ┌───< 0x0012bc1c      b     0x12bc88
│     │└──> 0x0012bc20      mov   w1, 8
│     │ │   0x0012bc24      mov   x0, x19                              ; int64_t arg1
│     │ │   0x0012bc28      mov   w2, wzr
│     │ │   0x0012bc2c      bl    fcn.001283b8
│     │┌──< 0x0012bc30      cbz   w0, 0x12bc44
│     │││   0x0012bc34      mov   w1, w0
│     │││   0x0012bc38      adrp  x0, 0x26c000
│     │││   0x0012bc3c      add   x0, x0, 0xdd6
│    ┌────< 0x0012bc40      b     0x12bc88
│    ││└──> 0x0012bc44      mov   w1, 5
│    ││ │   0x0012bc48      mov   x0, x19                              ; int64_t arg1
│    ││ │   0x0012bc4c      mov   w2, wzr
│    ││ │   0x0012bc50      bl    fcn.001283b8
│    ││┌──< 0x0012bc54      cbz   w0, 0x12bc68
│    ││││   0x0012bc58      mov   w1, w0
│    ││││   0x0012bc5c      adrp  x0, 0x23c000
│    ││││   0x0012bc60      add   x0, x0, 0x827
│   ┌─────< 0x0012bc64      b     0x12bc88
│   │││└──> 0x0012bc68      mov   w1, 0xb
│   │││ │   0x0012bc6c      mov   x0, x19                              ; int64_t arg1
│   │││ │   0x0012bc70      mov   w2, wzr
│   │││ │   0x0012bc74      bl    fcn.001283b8
│   │││┌──< 0x0012bc78      cbz   w0, 0x12bca0
│   │││││   0x0012bc7c      mov   w1, w0
│   │││││   0x0012bc80      adrp  x0, 0x240000
│   │││││   0x0012bc84      add   x0, x0, 0xc2a
│   │││││   ; CODE XREFS from fcn.0012bbe0 @ 0x12bc1c, 0x12bc40, 0x12bc64
│   └└└───> 0x0012bc88      bl    fcn.0014c9f8
│      ││   0x0012bc8c      mov   w0, 1
│      ││   ; CODE XREFS from fcn.0012bbe0 @ 0x12c1ac, 0x12c268
│    ┌┌─└─> 0x0012bc90      ldp   x20, x19, [var_10h]
│    ╎╎│    0x0012bc94      ldp   x29, x30, [sp], 0x20
│    ╎╎│    0x0012bc98      autibsp
│    ╎╎│    0x0012bc9c      ret
│    ╎╎└──> 0x0012bca0      add   x8, x19, 0x3ab
│    ╎╎     0x0012bca4      ldrb  w9, [x8, 3]                          ; [0x3:4]=0x48776b00
│    ╎╎     0x0012bca8      ldrb  w10, [x8, 2]                         ; [0x2:4]=0x776b0000
│    ╎╎     0x0012bcac      ldrb  w11, [x8, 1]                         ; [0x1:4]=0x6b000000
│    ╎╎     0x0012bcb0      ldrb  w1, [x8]
│    ╎╎     0x0012bcb4      bfi   w10, w9, 8, 8
│    ╎╎     0x0012bcb8      bfi   w1, w11, 8, 8
│    ╎╎     0x0012bcbc      bfi   w1, w10, 0x10, 0x10
│    ╎╎ ┌─< 0x0012bcc0      tbz   w1, 0x10, 0x12bcd8
│    ╎╎ │   0x0012bcc4      adrp  x0, 0x253000
│    ╎╎ │   0x0012bcc8      add   x0, x0, 0x872                        ; int64_t arg1
│    ╎╎ │   0x0012bccc      bl    fcn.0014c9f8
│    ╎╎ │   0x0012bcd0      mov   w8, 1
│    ╎╎ │   0x0012bcd4      str   w8, [x19, aav.0x00001a00]
│    ╎╎ └─> 0x0012bcd8      ldrb  w8, [x19, 0x376]                     ; [0x376:4]=0xd3e9b900
│    ╎╎     0x0012bcdc      ldrb  w9, [x19, 0x377]                     ; [0x377:4]=0x40d3e9b9
│    ╎╎     0x0012bce0      ldrb  w10, [x19, 0x25c]                    ; [0x25c:4]=0xb90e86c8
│    ╎╎     0x0012bce4      add   x20, x19, 0x265
│    ╎╎     0x0012bce8      add   w8, w8, w9, lsl 3
│    ╎╎     0x0012bcec      cmp   w8, w10
│    ╎╎ ┌─< 0x0012bcf0      b.ne  0x12bdc8
│    ╎╎ │   0x0012bcf4      adrp  x9, 0x2c9000
│    ╎╎ │   0x0012bcf8      ldrb  w8, [x19, 0x25d]                     ; [0x25d:4]=0xe8b90e86
│    ╎╎ │   0x0012bcfc      ldrb  w9, [x9, 0xc79]                      ; [0xc79:4]=0xa0d73
│    ╎╎ │   0x0012bd00      cmp   w8, w9
│    ╎╎┌──< 0x0012bd04      b.ne  0x12bdd4
│    ╎╎││   0x0012bd08      adrp  x9, 0x2c9000
│    ╎╎││   0x0012bd0c      ldrb  w8, [x19, 0x25e]                     ; [0x25e:4]=0x1e8b90e
│    ╎╎││   0x0012bd10      ldrb  w9, [x9, 0xc7a]                      ; [0xc7a:4]=0x55000a0d
│    ╎╎││   0x0012bd14      cmp   w8, w9
│   ┌─────< 0x0012bd18      b.ne  0x12bde0
│   │╎╎││   0x0012bd1c      adrp  x9, 0x2c9000
│   │╎╎││   0x0012bd20      ldrb  w8, [x19, 0x25f]                     ; [0x25f:4]=0x8001e8b9
│   │╎╎││   0x0012bd24      ldrb  w9, [x9, 0xc7b]                      ; [0xc7b:4]=0x6e55000a
│   │╎╎││   0x0012bd28      cmp   w8, w9
│  ┌──────< 0x0012bd2c      b.ne  0x12bdec
│  ││╎╎││   0x0012bd30      adrp  x9, 0x2c9000
│  ││╎╎││   0x0012bd34      ldrb  w8, [x19, aav.0x00000260]            ; [0x260:4]=0x528001e8
│  ││╎╎││   0x0012bd38      ldrb  w9, [x9, 0xc7c]                      ; [0xc7c:4]=0x6b6e5500
│  ││╎╎││   0x0012bd3c      cmp   w8, w9
│ ┌───────< 0x0012bd40      b.ne  0x12bdf8
│ │││╎╎││   0x0012bd44      adrp  x9, 0x2c9000
│ │││╎╎││   0x0012bd48      ldrb  w8, [x19, 0x261]                     ; [0x261:4]=0xc9528001
│ │││╎╎││   0x0012bd4c      ldrb  w9, [x9, str.Unknown_Binary]         ; [0xc7d:4]=0x6e6b6e55 ; "Unknown Binary"
│ │││╎╎││   0x0012bd50      cmp   w8, w9
│ ────────< 0x0012bd54      b.ne  0x12be04
│ │││╎╎││   0x0012bd58      adrp  x9, 0x2c9000
│ │││╎╎││   0x0012bd5c      ldrb  w8, [x19, 0x262]                     ; [0x262:4]=0xe2c95280
│ │││╎╎││   0x0012bd60      ldrb  w9, [x9, 0xc7e]                      ; [0xc7e:4]=0x6f6e6b6e
│ │││╎╎││   0x0012bd64      cmp   w8, w9
│ ────────< 0x0012bd68      b.ne  0x12be10
│ │││╎╎││   0x0012bd6c      adrp  x9, 0x2c9000
│ │││╎╎││   0x0012bd70      ldrb  w8, [x19, 0x263]                     ; [0x263:4]=0x5e2c952
│ │││╎╎││   0x0012bd74      ldrb  w9, [x9, 0xc7f]                      ; [0xc7f:4]=0x776f6e6b
│ │││╎╎││   0x0012bd78      cmp   w8, w9
│ ────────< 0x0012bd7c      b.ne  0x12be1c
│ │││╎╎││   0x0012bd80      adrp  x9, 0x2c9000
│ │││╎╎││   0x0012bd84      ldrb  w8, [x19, 0x264]                     ; [0x264:4]=0xd105e2c9
│ │││╎╎││   0x0012bd88      ldrb  w9, [x9, 0xc80]                      ; [0xc80:4]=0x6e776f6e
│ │││╎╎││   0x0012bd8c      cmp   w8, w9
│ ────────< 0x0012bd90      b.ne  0x12be28
│ │││╎╎││   0x0012bd94      adrp  x10, 0x2c9000
│ │││╎╎││   0x0012bd98      add   x10, x10, 0xc81
│ │││╎╎││   0x0012bd9c      ldrb  w8, [x20, 1]                         ; [0x1:4]=0x6b000000
│ │││╎╎││   0x0012bda0      ldrb  w9, [x20]
│ │││╎╎││   0x0012bda4      ldrb  w11, [x10, 1]                        ; [0x1:4]=0x6b000000
│ │││╎╎││   0x0012bda8      ldrb  w10, [x10]
│ │││╎╎││   0x0012bdac      bfi   w9, w8, 8, 8
│ │││╎╎││   0x0012bdb0      bfi   w10, w11, 8, 8
│ │││╎╎││   0x0012bdb4      cmp   w9, w10
│ ────────< 0x0012bdb8      b.eq  0x12be34
│ │││╎╎││   0x0012bdbc      adrp  x0, 0x240000
│ │││╎╎││   0x0012bdc0      add   x0, x0, 0xb79
│ ────────< 0x0012bdc4      b     0x12be30
│ │││╎╎│└─> 0x0012bdc8      adrp  x0, 0x25c000
│ │││╎╎│    0x0012bdcc      add   x0, x0, 0x25f
│ │││╎╎│┌─< 0x0012bdd0      b     0x12be30
│ │││╎╎└──> 0x0012bdd4      adrp  x0, 0x23a000
│ │││╎╎ │   0x0012bdd8      add   x0, x0, 0x683
│ │││╎╎┌──< 0x0012bddc      b     0x12be30
│ ││└─────> 0x0012bde0      adrp  x0, 0x24c000
│ ││ ╎╎││   0x0012bde4      add   x0, x0, 0x331
│ ││┌─────< 0x0012bde8      b     0x12be30
│ │└──────> 0x0012bdec      adrp  x0, 0x24c000
│ │ │╎╎││   0x0012bdf0      add   x0, x0, 0x361
│ │┌──────< 0x0012bdf4      b     0x12be30
│ └───────> 0x0012bdf8      adrp  x0, 0x262000
│  ││╎╎││   0x0012bdfc      add   x0, x0, 0x9f0
│ ┌───────< 0x0012be00      b     0x12be30
│ ────────> 0x0012be04      adrp  x0, 0x278000
│ │││╎╎││   0x0012be08      add   x0, x0, aav.0x00000560
│ ────────< 0x0012be0c      b     0x12be30
│ ────────> 0x0012be10      adrp  x0, 0x25e000
│ │││╎╎││   0x0012be14      add   x0, x0, 0xc1
│ ────────< 0x0012be18      b     0x12be30
│ ────────> 0x0012be1c      adrp  x0, 0x257000
│ │││╎╎││   0x0012be20      add   x0, x0, 0x684
│ ────────< 0x0012be24      b     0x12be30
│ ────────> 0x0012be28      adrp  x0, 0x25e000
│ │││╎╎││   0x0012be2c      add   x0, x0, 0xf0
│ │││╎╎││   ; XREFS: CODE 0x0012bdc4  CODE 0x0012bdd0  CODE 0x0012bddc
│ │││╎╎││   ; XREFS: CODE 0x0012bde8  CODE 0x0012bdf4  CODE 0x0012be00
│ │││╎╎││   ; XREFS: CODE 0x0012be0c  CODE 0x0012be18  CODE 0x0012be24
│ └└└──└└─> 0x0012be30      bl    fcn.0014c9f8
│ ────────> 0x0012be34      ldr   w8, [x19, aav.0x00001a00]            ; [0x1a00:4]=0xb940118c
│    ╎╎ ┌─< 0x0012be38      cbz   w8, 0x12befc
│    ╎╎ │   0x0012be3c      adrp  x9, 0x2c9000
│    ╎╎ │   0x0012be40      ldrb  w8, [x19, 0x26c]                     ; [0x26c:4]=0xb9400128
│    ╎╎ │   0x0012be44      ldrb  w9, [x9, 0xc88]                      ; [0xc88:4]=0x797261
│    ╎╎ │   0x0012be48      cmp   w8, w9
│    ╎╎┌──< 0x0012be4c      b.ne  0x12bebc
│    ╎╎││   0x0012be50      ldrb  w1, [x19, 0x26d]                     ; [0x26d:4]=0x2ab94001
│    ╎╎││   0x0012be54      ldrb  w2, [x19, 0x40b]                     ; [0x40b:4]=0x80800914
│    ╎╎││   0x0012be58      cmp   w1, w2
│   ┌─────< 0x0012be5c      b.eq  0x12be70
│   │╎╎││   0x0012be60      adrp  x0, 0x243000
│   │╎╎││   0x0012be64      add   x0, x0, 0x170                        ; int64_t arg1
│   │╎╎││   0x0012be68      bl    fcn.0014c9f8
│   │╎╎││   0x0012be6c      ldrb  w1, [x19, 0x26d]                     ; [0x26d:4]=0x2ab94001
│   └─────> 0x0012be70      cmp   w1, 1
│   ┌─────< 0x0012be74      b.eq  0x12becc
│  ┌──────< 0x0012be78      cbnz  w1, 0x12befc
│  ││╎╎││   0x0012be7c      ldrb  w9, [x19, 0x407]                     ; [0x407:4]=0x4472
│  ││╎╎││   0x0012be80      ldrb  w10, [x19, 0x406]                    ; [0x406:4]=0x4472bf
│  ││╎╎││   0x0012be84      ldrb  w11, [x19, 0x405]                    ; [0x405:4]=0x4472bfb5
│  ││╎╎││   0x0012be88      ldrb  w1, [x19, 0x404]                     ; [0x404:4]=0x72bfb553
│  ││╎╎││   0x0012be8c      ldrh  w8, [x19, 0x28a]                     ; [0x28a:4]=0x10972a2
│  ││╎╎││   0x0012be90      ldrh  w2, [x19, 0x288]                     ; [0x288:4]=0x72a252c8
│  ││╎╎││   0x0012be94      bfi   w10, w9, 8, 8
│  ││╎╎││   0x0012be98      bfi   w1, w11, 8, 8
│  ││╎╎││   0x0012be9c      bfi   w1, w10, 0x10, 0x10
│  ││╎╎││   0x0012bea0      bfi   w2, w8, 0x10, 0x10
│  ││╎╎││   0x0012bea4      cmp   w2, w1
│ ┌───────< 0x0012bea8      b.eq  0x12befc
│ │││╎╎││   0x0012beac      adrp  x0, 0x25c000
│ │││╎╎││   0x0012beb0      add   x0, x0, 0x2cd                        ; int64_t arg1
│ │││╎╎││   0x0012beb4      bl    fcn.0014c9f8
│ ────────< 0x0012beb8      b     0x12c250
│ │││╎╎└──> 0x0012bebc      adrp  x0, 0x255000
│ │││╎╎ │   0x0012bec0      add   x0, x0, 0x8f3
│ │││╎╎ │   ; CODE XREF from fcn.0012bbe0 @ 0x12c22c
│ │││╎╎┌──> 0x0012bec4      bl    fcn.0014c9f8
│ ────────< 0x0012bec8      b     0x12c250
│ ││└─────> 0x0012becc      ldrb  w9, [x19, 0x407]                     ; [0x407:4]=0x4472
│ ││ ╎╎╎│   0x0012bed0      ldrb  w10, [x19, 0x406]                    ; [0x406:4]=0x4472bf
│ ││ ╎╎╎│   0x0012bed4      ldrb  w11, [x19, 0x405]                    ; [0x405:4]=0x4472bfb5
│ ││ ╎╎╎│   0x0012bed8      ldrb  w1, [x19, 0x404]                     ; [0x404:4]=0x72bfb553
│ ││ ╎╎╎│   0x0012bedc      ldurh w8, [x20, 0xb]
│ ││ ╎╎╎│   0x0012bee0      ldurh w2, [x20, 9]                         ; [0xb940:4]=0x492a4a50 ; "PJ*IX\x9f\xa9\xaf3\xe9\xf1\xb4\xbb\xb33E\x8a\U0000001a\U0000001d\xb6H\xa2:\xb3\U00000006s\xa4\x96\U0000001c\v\xde\U0000007f\xfd\"
│ ││ ╎╎╎│   0x0012bee4      bfi   w10, w9, 8, 8
│ ││ ╎╎╎│   0x0012bee8      bfi   w1, w11, 8, 8
│ ││ ╎╎╎│   0x0012beec      bfi   w1, w10, 0x10, 0x10
│ ││ ╎╎╎│   0x0012bef0      bfi   w2, w8, 0x10, 0x10
│ ││ ╎╎╎│   0x0012bef4      cmp   w2, w1
│ ││┌─────< 0x0012bef8      b.ne  0x12c1e4
│ └└────└─> 0x0012befc      adrp  x11, 0x2c9000
│   │╎╎╎    0x0012bf00      mov   w9, wzr
│   │╎╎╎    0x0012bf04      mov   w1, 7
│   │╎╎╎    0x0012bf08      mov   w10, 0x328
│   │╎╎╎    0x0012bf0c      add   x11, x11, 0xc78
│   │╎╎╎┌─< 0x0012bf10      b     0x12bf24
│ ┌┌──────> 0x0012bf14      sub   x10, x10, 0x1a
│ ╎╎│╎╎╎│   0x0012bf18      cmp   x10, 0x258
│ ╎╎│╎╎╎│   0x0012bf1c      sub   w1, w1, 1
│ ────────< 0x0012bf20      b.eq  0x12c194
│ ╎╎│╎╎╎│   ; CODE XREF from fcn.0012bbe0 @ 0x12bf10
│ ╎╎│╎╎╎└─> 0x0012bf24      add   x8, x11, x10
│ ╎╎│╎╎╎    0x0012bf28      sub   x12, x8, 0x259
│ ╎╎│╎╎╎    0x0012bf2c      ldrb  w2, [x12]
│ ╎╎│╎╎╎    0x0012bf30      cmp   w2, 0xff
│ ────────< 0x0012bf34      b.eq  0x12bf14
│ ╎╎│╎╎╎    0x0012bf38      add   x12, x19, x10
│ ╎╎│╎╎╎    0x0012bf3c      sub   x8, x8, 0x25c
│ ╎╎│╎╎╎    0x0012bf40      ldrb  w8, [x8]
│ ╎╎│╎╎╎    0x0012bf44      ldrb  w3, [x12]
│ ╎╎│╎╎╎    0x0012bf48      cmp   w8, w3
│ ╎╎│╎╎╎┌─< 0x0012bf4c      b.ne  0x12c1b0
│ ╎╎│╎╎╎│   0x0012bf50      add   x13, x11, x10
│ ╎╎│╎╎╎│   0x0012bf54      sub   x8, x13, 0x25b
│ ╎╎│╎╎╎│   0x0012bf58      ldrb  w8, [x8]
│ ╎╎│╎╎╎│   0x0012bf5c      ldrb  w3, [x12, 1]                         ; [0x1:4]=0x6b000000
│ ╎╎│╎╎╎│   0x0012bf60      cmp   w8, w3
│ ────────< 0x0012bf64      b.ne  0x12c1bc
│ ╎╎│╎╎╎│   0x0012bf68      sub   x8, x13, 0x25a
│ ╎╎│╎╎╎│   0x0012bf6c      add   x13, x19, x10
│ ╎╎│╎╎╎│   0x0012bf70      ldrb  w8, [x8]
│ ╎╎│╎╎╎│   0x0012bf74      ldrb  w3, [x13, 2]                         ; [0x2:4]=0x776b0000
│ ╎╎│╎╎╎│   0x0012bf78      cmp   w8, w3
│ ────────< 0x0012bf7c      b.ne  0x12c1c8
│ ╎╎│╎╎╎│   0x0012bf80      ldrb  w3, [x13, 3]                         ; [0x3:4]=0x48776b00
│ ╎╎│╎╎╎│   0x0012bf84      cmp   w2, w3
│ ────────< 0x0012bf88      b.ne  0x12c1d8
│ ╎╎│╎╎╎│   0x0012bf8c      ldrh  w8, [x12, 6]                         ; [0x6:4]=0x61642148
│ ╎╎│╎╎╎│   0x0012bf90      ldrh  w3, [x12, 4]                         ; str.kwH_daeh
│ ╎╎│╎╎╎│                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│ ╎╎│╎╎╎│   0x0012bf94      add   x12, x11, x10
│ ╎╎│╎╎╎│   0x0012bf98      sub   x12, x12, 0x258
│ ╎╎│╎╎╎│   0x0012bf9c      ldrb  w13, [x12, 3]                        ; [0x3:4]=0x48776b00
│ ╎╎│╎╎╎│   0x0012bfa0      ldrb  w14, [x12, 2]                        ; [0x2:4]=0x776b0000
│ ╎╎│╎╎╎│   0x0012bfa4      ldrb  w15, [x12, 1]                        ; [0x1:4]=0x6b000000
│ ╎╎│╎╎╎│   0x0012bfa8      ldrb  w12, [x12]
│ ╎╎│╎╎╎│   0x0012bfac      bfi   w3, w8, 0x10, 0x10
│ ╎╎│╎╎╎│   0x0012bfb0      rev   w8, w3
│ ╎╎│╎╎╎│   0x0012bfb4      bfi   w14, w13, 8, 8
│ ╎╎│╎╎╎│   0x0012bfb8      bfi   w12, w15, 8, 8
│ ╎╎│╎╎╎│   0x0012bfbc      bfi   w12, w14, 0x10, 0x10
│ ╎╎│╎╎╎│   0x0012bfc0      add   w9, w8, w9
│ ────────< 0x0012bfc4      cbz   w12, 0x12c020
│ ╎╎│╎╎╎│   0x0012bfc8      lsl   w12, w12, 0xb
│ ────────< 0x0012bfcc      cbz   w2, 0x12c07c
│ ╎╎│╎╎╎│   0x0012bfd0      add   x8, x19, 0x3ab
│ ╎╎│╎╎╎│   0x0012bfd4      ldrb  w13, [x8, 0x17]!                     ; [0x17:4]=0x60000000
│ ╎╎│╎╎╎│   0x0012bfd8      ldrb  w14, [x8, 0x24]                      ; aav.0x00000024
│ ╎╎│╎╎╎│                                                              ; [0x24:4]=0xb9400001
│ ╎╎│╎╎╎│   0x0012bfdc      ldrb  w15, [x8, 0x23]                      ; [0x23:4]=0x40000158
│ ╎╎│╎╎╎│   0x0012bfe0      ldrb  w16, [x8, 3]                         ; [0x3:4]=0x48776b00
│ ╎╎│╎╎╎│   0x0012bfe4      ldrb  w17, [x8, 2]                         ; [0x2:4]=0x776b0000
│ ╎╎│╎╎╎│   0x0012bfe8      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│ ╎╎│╎╎╎│   0x0012bfec      bfi   w15, w14, 8, 8
│ ╎╎│╎╎╎│   0x0012bff0      ldrb  w14, [x19, 0x3c6]                    ; [0x3c6:4]=0x13fd105
│ ╎╎│╎╎╎│   0x0012bff4      bfi   w17, w16, 8, 8
│ ╎╎│╎╎╎│   0x0012bff8      bfi   w13, w8, 8, 8
│ ╎╎│╎╎╎│   0x0012bffc      bfi   w13, w17, 0x10, 0x10
│ ╎╎│╎╎╎│   0x0012c000      mul   w8, w12, w15
│ ╎╎│╎╎╎│   0x0012c004      rev   w12, w13
│ ╎╎│╎╎╎│   0x0012c008      mul   w12, w12, w14
│ ╎╎│╎╎╎│   0x0012c00c      udiv  w8, w8, w12
│ ╎╎│╎╎╎│   0x0012c010      rev   w2, w8
│ ╎╎│╎╎╎│   0x0012c014      cmp   w2, w3
│ ────────< 0x0012c018      b.eq  0x12c0cc
│ ────────< 0x0012c01c      b     0x12c244
│ ────────> 0x0012c020      add   x8, x19, 0x3ab
│ ╎╎│╎╎╎│   0x0012c024      ldrb  w12, [x8, 0x12]!                     ; [0x12:4]=0x1400
│ ╎╎│╎╎╎│   0x0012c028      ldrb  w13, [x8, 5]!                        ; [0x5:4]=0x64214877
│ ╎╎│╎╎╎│   0x0012c02c      ldurb w14, [x8, -2]                        ; [0x3c0:4]=0xd10532c9 ; aav.0x000003c0
│ ╎╎│╎╎╎│   0x0012c030      ldurb w15, [x8, -3]                        ; [0x3:4]=0x48776b00
│ ╎╎│╎╎╎│   0x0012c034      ldurb w16, [x8, -4]                        ; str.kwH_daeh
│ ╎╎│╎╎╎│                                                              ; [0x4:4]=0x2148776b ; "kwH!daeh"
│ ╎╎│╎╎╎│   0x0012c038      ldrb  w17, [x8, 3]                         ; [0x3:4]=0x48776b00
│ ╎╎│╎╎╎│   0x0012c03c      ldrb  w18, [x8, 2]                         ; [0x2:4]=0x776b0000
│ ╎╎│╎╎╎│   0x0012c040      ldrb  w8, [x8, 1]                          ; [0x1:4]=0x6b000000
│ ╎╎│╎╎╎│   0x0012c044      bfi   w15, w14, 8, 8
│ ╎╎│╎╎╎│   0x0012c048      bfi   w12, w16, 8, 8
│ ╎╎│╎╎╎│   0x0012c04c      bfi   w18, w17, 8, 8
│ ╎╎│╎╎╎│   0x0012c050      bfi   w13, w8, 8, 8
│ ╎╎│╎╎╎│   0x0012c054      bfi   w12, w15, 0x10, 0x10
│ ╎╎│╎╎╎│   0x0012c058      bfi   w13, w18, 0x10, 0x10
│ ╎╎│╎╎╎│   0x0012c05c      rev   w8, w12
│ ╎╎│╎╎╎│   0x0012c060      rev   w12, w13
│ ╎╎│╎╎╎│   0x0012c064      udiv  w8, w8, w12
│ ╎╎│╎╎╎│   0x0012c068      sub   w8, w8, w9
│ ╎╎│╎╎╎│   0x0012c06c      rev   w8, w8
│ ╎╎│╎╎╎│   0x0012c070      cmp   w8, w3
│ ────────< 0x0012c074      b.ne  0x12c0cc
│ ────────< 0x0012c078      b     0x12c230
│ ────────> 0x0012c07c      add   x13, x19, 0x3ab
│ ╎╎│╎╎╎│   0x0012c080      ldrb  w14, [x13, 0x17]!                    ; [0x17:4]=0x60000000
│ ╎╎│╎╎╎│   0x0012c084      ldrb  w17, [x19, 0x3c6]                    ; [0x3c6:4]=0x13fd105
│ ╎╎│╎╎╎│   0x0012c088      ldrb  w15, [x13, 3]                        ; [0x3:4]=0x48776b00
│ ╎╎│╎╎╎│   0x0012c08c      ldrb  w16, [x13, 2]                        ; [0x2:4]=0x776b0000
│ ╎╎│╎╎╎│   0x0012c090      ldrb  w13, [x13, 1]                        ; [0x1:4]=0x6b000000
│ ╎╎│╎╎╎│   0x0012c094      bfi   w16, w15, 8, 8
│ ╎╎│╎╎╎│   0x0012c098      bfi   w14, w13, 8, 8
│ ╎╎│╎╎╎│   0x0012c09c      bfi   w14, w16, 0x10, 0x10
│ ╎╎│╎╎╎│   0x0012c0a0      rev   w13, w14
│ ╎╎│╎╎╎│   0x0012c0a4      mul   w13, w13, w17
│ ╎╎│╎╎╎│   0x0012c0a8      udiv  w2, w12, w13
│ ╎╎│╎╎╎│   0x0012c0ac      msub  w12, w2, w13, w12
│ ────────< 0x0012c0b0      cbz   w12, 0x12c0c4
│ ╎╎│╎╎╎│   0x0012c0b4      add   w12, w2, 1
│ ╎╎│╎╎╎│   0x0012c0b8      cmp   w12, w8
│ ────────< 0x0012c0bc      b.eq  0x12c0cc
│ ────────< 0x0012c0c0      b     0x12c240
│ ────────> 0x0012c0c4      cmp   w2, w8
│ ────────< 0x0012c0c8      b.ne  0x12c26c
│ ────────> 0x0012c0cc      add   x8, x11, x10
│ ╎╎│╎╎╎│   0x0012c0d0      add   x12, x19, x10
│ ╎╎│╎╎╎│   0x0012c0d4      sub   x13, x8, 0x254
│ ╎╎│╎╎╎│   0x0012c0d8      ldrb  w2, [x13]
│ ╎╎│╎╎╎│   0x0012c0dc      ldrb  w3, [x12, 8]                         ; aav.0x00000008
│ ╎╎│╎╎╎│                                                              ; [0x8:4]=0x68656164 ; "daeh"
│ ╎╎│╎╎╎│   0x0012c0e0      cmp   w2, w3
│ ────────< 0x0012c0e4      b.ne  0x12c1f4
│ ╎╎│╎╎╎│   0x0012c0e8      sub   x8, x8, 0x253
│ ╎╎│╎╎╎│   0x0012c0ec      ldrb  w2, [x8]
│ ╎╎│╎╎╎│   0x0012c0f0      ldrb  w3, [x12, 9]                         ; [0x9:4]=0x686561
│ ╎╎│╎╎╎│   0x0012c0f4      cmp   w2, w3
│ ────────< 0x0012c0f8      b.ne  0x12c200
│ ╎╎│╎╎╎│   0x0012c0fc      add   x12, x11, x10
│ ╎╎│╎╎╎│   0x0012c100      add   x8, x19, x10
│ ╎╎│╎╎╎│   0x0012c104      sub   x13, x12, 0x252
│ ╎╎│╎╎╎│   0x0012c108      ldrb  w2, [x13]
│ ╎╎│╎╎╎│   0x0012c10c      ldrb  w3, [x8, 0xa]                        ; [0xa:4]=0x6865
│ ╎╎│╎╎╎│   0x0012c110      cmp   w2, w3
│ ────────< 0x0012c114      b.ne  0x12c20c
│ ╎╎│╎╎╎│   0x0012c118      sub   x12, x12, 0x251
│ ╎╎│╎╎╎│   0x0012c11c      ldrb  w13, [x8, 0xc]                       ; aav.0x0000000c
│ ╎╎│╎╎╎│                                                              ; [0xc:4]=0
│ ╎╎│╎╎╎│   0x0012c120      ldrb  w14, [x12, 1]                        ; [0x1:4]=0x6b000000
│ ╎╎│╎╎╎│   0x0012c124      ldrb  w2, [x12]
│ ╎╎│╎╎╎│   0x0012c128      ldrb  w3, [x8, 0xb]                        ; [0xb:4]=104
│ ╎╎│╎╎╎│   0x0012c12c      bfi   w2, w14, 8, 8
│ ╎╎│╎╎╎│   0x0012c130      bfi   w3, w13, 8, 8
│ ╎╎│╎╎╎│   0x0012c134      cmp   w2, w3
│ ────────< 0x0012c138      b.ne  0x12c218
│ ╎╎│╎╎╎│   0x0012c13c      ldr   w8, [x19, aav.0x00001a00]            ; [0x1a00:4]=0xb940118c
│ ────────< 0x0012c140      cbz   w8, 0x12bf14
│ ╎╎│╎╎╎│   0x0012c144      cmp   x10, 0x272
│ └───────< 0x0012c148      b.eq  0x12bf14
│  ╎│╎╎╎│   0x0012c14c      add   x8, x11, x10
│  ╎│╎╎╎│   0x0012c150      sub   x8, x8, 0x246
│  ╎│╎╎╎│   0x0012c154      add   x12, x19, x10
│  ╎│╎╎╎│   0x0012c158      ldrb  w13, [x8, 3]                         ; [0x3:4]=0x48776b00
│  ╎│╎╎╎│   0x0012c15c      ldrb  w14, [x8, 2]                         ; [0x2:4]=0x776b0000
│  ╎│╎╎╎│   0x0012c160      ldrb  w15, [x8, 1]                         ; [0x1:4]=0x6b000000
│  ╎│╎╎╎│   0x0012c164      ldrb  w2, [x8]
│  ╎│╎╎╎│   0x0012c168      ldrh  w8, [x12, 0x18]                      ; aav.0x00000018
│  ╎│╎╎╎│                                                              ; [0x18:4]=0x7600000
│  ╎│╎╎╎│   0x0012c16c      ldrh  w3, [x12, 0x16]                      ; [0x16:4]=0
│  ╎│╎╎╎│   0x0012c170      bfi   w14, w13, 8, 8
│  ╎│╎╎╎│   0x0012c174      bfi   w2, w15, 8, 8
│  ╎│╎╎╎│   0x0012c178      bfi   w2, w14, 0x10, 0x10
│  ╎│╎╎╎│   0x0012c17c      bfi   w3, w8, 0x10, 0x10
│  ╎│╎╎╎│   0x0012c180      cmp   w2, w3
│  └──────< 0x0012c184      b.eq  0x12bf14
│   │╎╎╎│   0x0012c188      adrp  x0, 0x23a000
│   │╎╎╎│   0x0012c18c      add   x0, x0, 0x721
│  ┌──────< 0x0012c190      b     0x12c24c
│ ────────> 0x0012c194      ldr   w8, [x19, aav.0x000001e8]            ; [0x1e8:4]=0x54ffffa1
│ ┌───────< 0x0012c198      cbz   w8, 0x12c224
│ │││╎╎╎│   0x0012c19c      adrp  x0, 0x255000
│ │││╎╎╎│   0x0012c1a0      add   x0, x0, 0x9d2                        ; int64_t arg1
│ │││╎╎╎│   0x0012c1a4      bl    fcn.0014c9f8
│ │││╎╎╎│   0x0012c1a8      mov   w0, wzr
│ │││└────< 0x0012c1ac      b     0x12bc90
│ │││ ╎╎└─> 0x0012c1b0      adrp  x0, 0x278000
│ │││ ╎╎    0x0012c1b4      add   x0, x0, 0x58d
│ │││ ╎╎┌─< 0x0012c1b8      b     0x12c1d0
│ ────────> 0x0012c1bc      adrp  x0, 0x260000
│ │││ ╎╎│   0x0012c1c0      add   x0, x0, 0x794
│ │││┌────< 0x0012c1c4      b     0x12c1d0
│ ────────> 0x0012c1c8      adrp  x0, 0x260000
│ ││││╎╎│   0x0012c1cc      add   x0, x0, 0x7b6
│ ││││╎╎│   ; CODE XREFS from fcn.0012bbe0 @ 0x12c1b8, 0x12c1c4
│ │││└──└─> 0x0012c1d0      mov   w2, w8
│ │││ ╎╎┌─< 0x0012c1d4      b     0x12c24c
│ ────────> 0x0012c1d8      adrp  x0, 0x23c000
│ │││ ╎╎│   0x0012c1dc      add   x0, x0, 0x8cb
│ │││┌────< 0x0012c1e0      b     0x12c24c
│ ││└─────> 0x0012c1e4      adrp  x0, 0x264000
│ ││ │╎╎│   0x0012c1e8      add   x0, x0, aav.0x00000c50               ; "EL3" ; int64_t arg1
│ ││ │╎╎│   0x0012c1ec      bl    fcn.0014c9f8
│ ││┌─────< 0x0012c1f0      b     0x12c250
│ ────────> 0x0012c1f4      adrp  x0, str.setct_CertResTBE             ; 0x26a000
│ ││││╎╎│   0x0012c1f8      add   x0, x0, 0xcf6
│ ────────< 0x0012c1fc      b     0x12c24c
│ ────────> 0x0012c200      adrp  x0, 0x251000
│ ││││╎╎│   0x0012c204      add   x0, x0, 0x77
│ ────────< 0x0012c208      b     0x12c24c
│ ────────> 0x0012c20c      adrp  x0, 0x255000
│ ││││╎╎│   0x0012c210      add   x0, x0, 0x93b
│ ────────< 0x0012c214      b     0x12c24c
│ ────────> 0x0012c218      adrp  x0, 0x278000
│ ││││╎╎│   0x0012c21c      add   x0, x0, 0x5ae
│ ────────< 0x0012c220      b     0x12c24c
│ └───────> 0x0012c224      adrp  x0, 0x27c000
│  │││╎╎│   0x0012c228      add   x0, x0, 0xa0b
│  │││╎└──< 0x0012c22c      b     0x12bec4
│  │││╎ │   ; CODE XREF from fcn.0012bbe0 @ 0x12c078
│ ────────> 0x0012c230      adrp  x0, 0x26f000
│  │││╎ │   0x0012c234      add   x0, x0, 0x848
│  │││╎ │   0x0012c238      mov   w2, w3
│  │││╎┌──< 0x0012c23c      b     0x12c24c
│  │││╎││   ; CODE XREF from fcn.0012bbe0 @ 0x12c0c0
│ ────────> 0x0012c240      rev   w2, w2
│  │││╎││   ; CODE XREF from fcn.0012bbe0 @ 0x12c01c
│ ────────> 0x0012c244      adrp  x0, 0x23e000
│  │││╎││   0x0012c248      add   x0, x0, 0x7b9
│  │││╎││   ; XREFS: CODE 0x0012c190  CODE 0x0012c1d4  CODE 0x0012c1e0
│  │││╎││   ; XREFS: CODE 0x0012c1fc  CODE 0x0012c208  CODE 0x0012c214
│  │││╎││   ; XREFS: CODE 0x0012c220  CODE 0x0012c23c  CODE 0x0012c278
│ ┌└─└─└└─> 0x0012c24c      bl    fcn.0014c9f8
│ ╎ │ ╎     ; CODE XREFS from fcn.0012bbe0 @ 0x12beb8, 0x12bec8, 0x12c1f0
│ ──└─────> 0x0012c250      adrp  x0, 0x24f000
│ ╎   ╎     0x0012c254      add   x0, x0, 0xce                         ; int64_t arg1
│ ╎   ╎     0x0012c258      bl    fcn.0014c9f8
│ ╎   ╎     0x0012c25c      mov   x0, x19                              ; int64_t arg1
│ ╎   ╎     0x0012c260      bl    fcn.0012a2a4
│ ╎   ╎     0x0012c264      mov   w0, 3
│ ╎   └───< 0x0012c268      b     0x12bc90
│ ────────> 0x0012c26c      adrp  x0, 0x23e000
│ ╎         0x0012c270      add   x0, x0, 0x7b9
│ ╎         0x0012c274      mov   w3, w8
└ └───────< 0x0012c278      b     0x12c24c
            ; CALL XREF from fcn.00128e78 @ 0x129344
