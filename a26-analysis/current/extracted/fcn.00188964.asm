┌ fcn.00188964();
│           ; var int64_t var_a8h @ stack - 0xa8
│           ; var int64_t var_9ch @ stack - 0x9c
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00188964      pacibsp
│           0x00188968      sub   sp, sp, 0xb0
│           0x0018896c      stp   x29, x30, [var_40h]
│           0x00188970      stp   x24, x23, [var_30h]
│           0x00188974      stp   x22, x21, [var_20h]
│           0x00188978      stp   x20, x19, [var_10h]
│           0x0018897c      add   x29, sp, 0x70
│           0x00188980      add   x0, var_9ch                          ; int64_t arg1
│           0x00188984      mov   w2, 0x41                             ; 'A'
│           0x00188988      mov   w1, wzr
│           0x0018898c      sturb wzr, [var_10h + 0x8]
│           0x00188990      stp   xzr, xzr, [var_20h + 0x8]
│           0x00188994      bl    fcn.0014d8fc
│           0x00188998      adrp  x8, 0x5a6000
│           0x0018899c      ldr   w8, [x8, 0xa88]                      ; [0xa88:4]=0x4c204253 ; "SB Loading Done"
│           0x001889a0      strb  wzr, [var_a8h + 0x8]
│           0x001889a4      str   xzr, [var_a8h]
│           0x001889a8      cmp   w8, 1
│       ┌─< 0x001889ac      b.ne  0x1889dc
│       │   0x001889b0      mov   w0, 2
│       │   0x001889b4      bl    fcn.0013d500
│       │   0x001889b8      mov   w19, w0
│       │   0x001889bc      bl    fcn.0013df98
│       │   0x001889c0      adrp  x4, 0x241000
│       │   0x001889c4      mov   w3, w0
│       │   0x001889c8      add   x4, x4, 0x905                        ; int64_t arg5
│       │   0x001889cc      mov   w0, 0xa
│       │   0x001889d0      mov   w2, 0xffffff
│       │   0x001889d4      mov   w1, w19
│       │   0x001889d8      bl    fcn.0013deb8
│       └─> 0x001889dc      sub   x1, var_10h + 0x28                   ; int64_t arg2
│           0x001889e0      mov   w0, 0x1e
│           0x001889e4      bl    fcn.00158328
│           0x001889e8      mov   w0, 2
│           0x001889ec      bl    fcn.0013d500
│           0x001889f0      mov   w19, w0
│           0x001889f4      bl    fcn.0013df98
│           0x001889f8      adrp  x5, 0x24d000
│           0x001889fc      mov   w3, w0
│           0x00188a00      add   x5, x5, 0x7f4                        ; int64_t arg6
│           0x00188a04      sub   x6, var_10h + 0x28                   ; int64_t arg7
│           0x00188a08      mov   w0, 0xa
│           0x00188a0c      mov   w2, 0xffffff
│           0x00188a10      mov   w4, 3
│           0x00188a14      mov   w1, w19
│           0x00188a18      bl    fcn.0013e0a8
│           0x00188a1c      adrp  x20, 0x5a6000
│           0x00188a20      add   x20, x20, 0xa90
│           0x00188a24      ldp   x8, x9, [x20]
│           0x00188a28      ldp   x10, x11, [x20, 0x10]
│           0x00188a2c      orr   x8, x9, x8
│           0x00188a30      orr   x8, x8, x10
│           0x00188a34      orr   x8, x8, x11
│       ┌─< 0x00188a38      cbz   x8, 0x188c8c
│       │   0x00188a3c      mov   w0, 2
│       │   0x00188a40      bl    fcn.0013d500
│       │   0x00188a44      mov   w19, w0
│       │   0x00188a48      bl    fcn.0013df98
│       │   0x00188a4c      ldp   x5, x6, [x20]                        ; int64_t arg7
│       │   0x00188a50      ldp   x7, x8, [x20, 0x10]                  ; int64_t arg8
│       │   0x00188a54      adrp  x4, 0x248000
│       │   0x00188a58      mov   w3, w0
│       │   0x00188a5c      add   x4, x4, 0x813                        ; int64_t arg5
│       │   0x00188a60      mov   w0, 0xa
│       │   0x00188a64      mov   w2, 0xffffff
│       │   0x00188a68      mov   w1, w19
│       │   0x00188a6c      str   x8, [sp]
│       │   0x00188a70      bl    fcn.0013deb8
│       │   0x00188a74      bl    fcn.00188ca8
│       │   0x00188a78      adrp  x24, 0x5a6000
│       │   0x00188a7c      adrp  x23, 0x5a6000
│      ┌──< 0x00188a80      cbz   w0, 0x188aa0
│      ││   0x00188a84      mov   w3, w0
│      ││   0x00188a88      adrp  x0, 0x269000
│      ││   0x00188a8c      adrp  x1, 0x258000
│      ││   0x00188a90      add   x0, x0, 0x38e
│      ││   0x00188a94      add   x1, x1, 0x8ef
│      ││   0x00188a98      mov   w2, 0xe3
│     ┌───< 0x00188a9c      b     0x188bac
│     │└──> 0x00188aa0      ldr   w3, [x24, 0xab0]                     ; [0xab0:4]=0x69676964 ; "digital signature and RP count success\r\n"
│     │┌──< 0x00188aa4      cbz   w3, 0x188b98
│     │││   0x00188aa8      ldr   x0, [x23, 0xab8]                     ; [0xab8:4]=0x6e676973 ; "signature and RP count success\r\n"
│    ┌────< 0x00188aac      cbz   x0, 0x188b98
│    ││││   0x00188ab0      adrp  x1, 0x24f000
│    ││││   0x00188ab4      add   x1, x1, 0x469                        ; int64_t arg2
│    ││││   0x00188ab8      bl    fcn.00156ac0
│   ┌─────< 0x00188abc      cbz   x0, 0x188b60
│   │││││   0x00188ac0      adrp  x1, 0x24f000
│   │││││   0x00188ac4      add   x1, x1, 0x469                        ; int64_t arg2
│   │││││   0x00188ac8      mov   x0, xzr                              ; int64_t arg1
│   │││││   0x00188acc      bl    fcn.00156ac0
│  ┌──────< 0x00188ad0      cbz   x0, 0x188b60
│  ││││││   0x00188ad4      adrp  x1, 0x24f000
│  ││││││   0x00188ad8      add   x1, x1, 0x469                        ; int64_t arg2
│  ││││││   0x00188adc      mov   x0, xzr                              ; int64_t arg1
│  ││││││   0x00188ae0      bl    fcn.00156ac0
│ ┌───────< 0x00188ae4      cbz   x0, 0x188b60
│ │││││││   0x00188ae8      adrp  x1, 0x24f000
│ │││││││   0x00188aec      add   x1, x1, 0x469                        ; int64_t arg2
│ │││││││   0x00188af0      mov   x0, xzr                              ; int64_t arg1
│ │││││││   0x00188af4      bl    fcn.00156ac0
│ │││││││   0x00188af8      mov   x19, x0
│ │││││││   0x00188afc      bl    fcn.0014db58
│ │││││││   0x00188b00      cmp   x0, 0x40
│ │││││││   0x00188b04      mov   w8, 0x40
│ │││││││   0x00188b08      csel  x2, x0, x8, lo                       ; int64_t arg3
│ │││││││   0x00188b0c      add   x0, var_9ch                          ; int64_t arg1
│ │││││││   0x00188b10      mov   x1, x19                              ; int64_t arg2
│ │││││││   0x00188b14      bl    fcn.0014d60c
│ ────────< 0x00188b18      cbz   x19, 0x188b60
│ │││││││   0x00188b1c      adrp  x1, 0x24f000
│ │││││││   0x00188b20      add   x1, x1, 0x469                        ; int64_t arg2
│ │││││││   0x00188b24      mov   x0, xzr                              ; int64_t arg1
│ │││││││   0x00188b28      bl    fcn.00156ac0
│ ────────< 0x00188b2c      cbz   x0, 0x188b60
│ │││││││   0x00188b30      adrp  x1, 0x24f000
│ │││││││   0x00188b34      add   x1, x1, 0x469                        ; int64_t arg2
│ │││││││   0x00188b38      mov   x0, xzr                              ; int64_t arg1
│ │││││││   0x00188b3c      bl    fcn.00156ac0
│ │││││││   0x00188b40      mov   x19, x0
│ │││││││   0x00188b44      bl    fcn.0014db58
│ │││││││   0x00188b48      cmp   x0, 8
│ │││││││   0x00188b4c      mov   w8, 8
│ │││││││   0x00188b50      csel  x2, x0, x8, lo                       ; int64_t arg3
│ │││││││   0x00188b54      add   x0, var_a8h                          ; int64_t arg1
│ │││││││   0x00188b58      mov   x1, x19                              ; int64_t arg2
│ │││││││   0x00188b5c      bl    fcn.0014d60c
│ └└└─────> 0x00188b60      mov   w0, 2
│    ││││   0x00188b64      bl    fcn.0013d500
│    ││││   0x00188b68      mov   w19, w0
│    ││││   0x00188b6c      bl    fcn.0013df98
│    ││││   0x00188b70      adrp  x4, 0x261000
│    ││││   0x00188b74      mov   w3, w0
│    ││││   0x00188b78      add   x4, x4, 0x2dd                        ; int64_t arg5
│    ││││   0x00188b7c      add   x5, var_9ch                          ; int64_t arg6
│    ││││   0x00188b80      add   x6, var_a8h                          ; int64_t arg7
│    ││││   0x00188b84      mov   w0, 0xa
│    ││││   0x00188b88      mov   w2, 0xffffff
│    ││││   0x00188b8c      mov   w1, w19
│    ││││   0x00188b90      bl    fcn.0013deb8
│   ┌─────< 0x00188b94      b     0x188bb0
│   │└─└──> 0x00188b98      adrp  x0, 0x254000
│   │ │ │   0x00188b9c      adrp  x1, 0x258000
│   │ │ │   0x00188ba0      add   x0, x0, 0x2ac
│   │ │ │   0x00188ba4      add   x1, x1, 0x8ef
│   │ │ │   0x00188ba8      mov   w2, 0xe1
│   │ │ │   ; CODE XREF from fcn.00188964 @ 0x188a9c
│   │ └───> 0x00188bac      bl    fcn.0014c9f8
│   │   │   ; CODE XREF from fcn.00188964 @ 0x188b94
│   └─────> 0x00188bb0      ldr   x0, [x23, 0xab8]                     ; [0xab8:4]=0x6e676973 ; "signature and RP count success\r\n"
│       │   0x00188bb4      str   wzr, [x24, 0xab0]
│      ┌──< 0x00188bb8      cbz   x0, 0x188bc4
│      ││   0x00188bbc      bl    fcn.001424a4
│      ││   0x00188bc0      str   xzr, [x23, 0xab8]
│      └──> 0x00188bc4      bl    fcn.00188fc0
│      ┌──< 0x00188bc8      cbz   w0, 0x188be8
│      ││   0x00188bcc      mov   w3, w0
│      ││   0x00188bd0      adrp  x0, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│      ││   0x00188bd4      adrp  x1, 0x258000
│      ││   0x00188bd8      add   x0, x0, 0xfd3
│      ││   0x00188bdc      add   x1, x1, 0x8ef
│      ││   0x00188be0      mov   w2, 0xf5
│     ┌───< 0x00188be4      b     0x188c74
│     │└──> 0x00188be8      ldr   w3, [x24, 0xab0]                     ; [0xab0:4]=0x69676964 ; "digital signature and RP count success\r\n"
│     │┌──< 0x00188bec      cbz   w3, 0x188c60
│     │││   0x00188bf0      ldr   x0, [x23, 0xab8]                     ; [0xab8:4]=0x6e676973 ; "signature and RP count success\r\n"
│    ┌────< 0x00188bf4      cbz   x0, 0x188c60
│    ││││   0x00188bf8      adrp  x1, 0x24f000
│    ││││   0x00188bfc      add   x1, x1, 0x469                        ; int64_t arg2
│    ││││   0x00188c00      bl    fcn.00156ac0
│   ┌─────< 0x00188c04      cbz   x0, 0x188c78
│   │││││   0x00188c08      adrp  x19, 0x279000
│   │││││   0x00188c0c      adrp  x20, 0x24f000
│   │││││   0x00188c10      mov   x21, x0
│   │││││   0x00188c14      add   x19, x19, 0xe99
│   │││││   0x00188c18      add   x20, x20, 0x469
│  ┌──────> 0x00188c1c      mov   w0, 2
│  ╎│││││   0x00188c20      bl    fcn.0013d500
│  ╎│││││   0x00188c24      mov   w22, w0
│  ╎│││││   0x00188c28      bl    fcn.0013df98
│  ╎│││││   0x00188c2c      mov   w3, w0
│  ╎│││││   0x00188c30      mov   w0, 0xa
│  ╎│││││   0x00188c34      mov   w2, 0xffffff
│  ╎│││││   0x00188c38      mov   w1, w22
│  ╎│││││   0x00188c3c      mov   x4, x19                              ; int64_t arg5
│  ╎│││││   0x00188c40      mov   x5, x21                              ; int64_t arg6
│  ╎│││││   0x00188c44      bl    fcn.0013deb8
│  ╎│││││   0x00188c48      mov   x0, xzr                              ; int64_t arg1
│  ╎│││││   0x00188c4c      mov   x1, x20                              ; int64_t arg2
│  ╎│││││   0x00188c50      bl    fcn.00156ac0
│  ╎│││││   0x00188c54      mov   x21, x0
│  └──────< 0x00188c58      cbnz  x0, 0x188c1c
│  ┌──────< 0x00188c5c      b     0x188c78
│  ││└─└──> 0x00188c60      adrp  x0, 0x25a000
│  ││ │ │   0x00188c64      adrp  x1, 0x258000
│  ││ │ │   0x00188c68      add   x0, x0, 0xb13
│  ││ │ │   0x00188c6c      add   x1, x1, 0x8ef
│  ││ │ │   0x00188c70      mov   w2, 0xf3
│  ││ │ │   ; CODE XREF from fcn.00188964 @ 0x188be4
│  ││ └───> 0x00188c74      bl    fcn.0014c9f8
│  ││   │   ; CODE XREF from fcn.00188964 @ 0x188c5c
│  └└─────> 0x00188c78      ldr   x0, [x23, 0xab8]                     ; [0xab8:4]=0x6e676973 ; "signature and RP count success\r\n"
│       │   0x00188c7c      str   wzr, [x24, 0xab0]
│      ┌──< 0x00188c80      cbz   x0, 0x188c8c
│      ││   0x00188c84      bl    fcn.001424a4
│      ││   0x00188c88      str   xzr, [x23, 0xab8]
│      └└─> 0x00188c8c      ldp   x20, x19, [var_10h]
│           0x00188c90      ldp   x22, x21, [var_20h]
│           0x00188c94      ldp   x24, x23, [var_30h]
│           0x00188c98      ldp   x29, x30, [var_40h]
│           0x00188c9c      add   sp, sp, 0xb0
│           0x00188ca0      autibsp
└           0x00188ca4      ret
            ; CALL XREF from fcn.00188964 @ 0x188a74
