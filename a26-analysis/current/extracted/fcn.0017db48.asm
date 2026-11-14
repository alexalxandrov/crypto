┌ fcn.0017db48(int64_t arg1, int64_t arg2, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│      ╎╎   ; arg int64_t arg1 @ x0
│      ╎╎   ; arg int64_t arg2 @ x1
│      ╎╎   ; arg int64_t arg4 @ x3
│      ╎╎   ; arg int64_t arg5 @ x4
│      ╎╎   ; arg int64_t arg6 @ x5
│      ╎╎   ; arg int64_t arg7 @ x6
│      ╎╎   ; arg int64_t arg8 @ x7
│      ╎╎   ; var int64_t var_40h @ stack - 0x40
│      ╎╎   ; var int64_t var_30h @ stack - 0x30
│      ╎╎   ; var int64_t var_20h @ stack - 0x20
│      ╎╎   ; var int64_t var_10h @ stack - 0x10
│      ╎╎   0x0017db48      pacibsp
│      ╎╎   0x0017db4c      stp   x29, x30, [var_40h]!
│      ╎╎   0x0017db50      str   x23, [var_30h]
│      ╎╎   0x0017db54      stp   x22, x21, [var_20h]
│      ╎╎   0x0017db58      stp   x20, x19, [var_10h]
│      ╎╎   0x0017db5c      mov   x29, sp
│      ╎╎   0x0017db60      mov   x20, x1                              ; arg2
│      ╎╎   0x0017db64      mov   x19, x0                              ; arg1
│      ╎╎   0x0017db68      adrp  x0, 0x267000
│      ╎╎   0x0017db6c      adrp  x1, 0x254000
│      ╎╎   0x0017db70      add   x0, x0, 0x2e8                        ; int64_t arg1
│      ╎╎   0x0017db74      add   x1, x1, 0x13d                        ; int64_t arg2
│      ╎╎   0x0017db78      mov   x2, x19                              ; unsigned long arg3
│      ╎╎   0x0017db7c      bl    fcn.0014c9f8
│      ╎╎   0x0017db80      mov   w0, wzr
│      ╎╎   0x0017db84      bl    fcn.00150b58
│      ╎╎   0x0017db88      cmp   w0, 0xf
│     ┌───< 0x0017db8c      b.ne  0x17db9c
│     │╎╎   0x0017db90      adrp  x0, 0x265000
│     │╎╎   0x0017db94      add   x0, x0, 0x4ff
│    ┌────< 0x0017db98      b     0x17dbfc
│   ┌─└───> 0x0017db9c      cbz   x20, 0x17dbf4
│   ││ ╎╎   0x0017dba0      mov   w0, 3
│   ││ ╎╎   0x0017dba4      bl    fcn.001895dc
│   ││┌───< 0x0017dba8      cbz   w0, 0x17dc1c
│   │││╎╎   0x0017dbac      bl    fcn.001842f4
│   │││╎╎   0x0017dbb0      cmp   w0, 1
│  ┌──────< 0x0017dbb4      b.ne  0x17dbd4
│  ││││╎╎   0x0017dbb8      adrp  x0, 0x5a6000
│  ││││╎╎   0x0017dbbc      adrp  x1, 0x23d000
│  ││││╎╎   0x0017dbc0      add   x0, x0, 0xe9                         ; int64_t arg1
│  ││││╎╎   0x0017dbc4      add   x1, x1, 0x97                         ; int64_t arg2
│  ││││╎╎   0x0017dbc8      mov   w2, 9
│  ││││╎╎   0x0017dbcc      bl    fcn.0014dc20
│ ┌───────< 0x0017dbd0      cbnz  w0, 0x17dd10
│ │└──────> 0x0017dbd4      bl    fcn.001842f4
│ │┌──────< 0x0017dbd8      cbz   w0, 0x17dca0
│ ────────> 0x0017dbdc      bl    fcn.001842f4
│ │││││╎╎   0x0017dbe0      cmn   w0, 1
│ ────────< 0x0017dbe4      b.eq  0x17dd10
│ │││││╎╎   0x0017dbe8      bl    fcn.0017b0a0
│ ────────< 0x0017dbec      cbnz  w0, 0x17de1c
│ ────────< 0x0017dbf0      b     0x17de34
│ ││└─────> 0x0017dbf4      adrp  x0, str.EFUSE__Set_usb_disable_se1   ; 0x23b000
│ ││ ││╎╎   0x0017dbf8      add   x0, x0, 0x44
│ ││ ││╎╎   ; CODE XREF from fcn.0017db48 @ 0x17db98
│ ││ └────> 0x0017dbfc      ldp   x20, x19, [var_10h]
│ ││  │╎╎   0x0017dc00      ldp   x22, x21, [var_20h]
│ ││  │╎╎   0x0017dc04      ldr   x23, [var_30h]                       ; aav.0x00000010
│ ││  │╎╎                                                              ; [0x10:4]=0x14000004
│ ││  │╎╎   0x0017dc08      adrp  x1, 0x254000
│ ││  │╎╎   0x0017dc0c      add   x1, x1, 0x13d
│ ││  │╎╎   0x0017dc10      ldp   x29, x30, [sp], 0x40
│ ││  │╎╎   0x0017dc14      autibsp
│ ││  │╎└─< 0x0017dc18      b     fcn.0014c9f8
│ ││  └───> 0x0017dc1c      mov   w0, 0x8a
│ ││   ╎    0x0017dc20      mov   x1, x19                              ; int64_t arg2
│ ││   ╎    0x0017dc24      bl    fcn.00188654
│ ││   ╎    0x0017dc28      mov   w0, 6
│ ││   ╎    0x0017dc2c      mov   x1, xzr                              ; int64_t arg2
│ ││   ╎    0x0017dc30      mov   w2, wzr
│ ││   ╎    0x0017dc34      bl    fcn.0013e4d8
│ ││   ╎    0x0017dc38      mov   w0, 2
│ ││   ╎    0x0017dc3c      bl    fcn.0013d500
│ ││   ╎    0x0017dc40      mov   w20, w0
│ ││   ╎    0x0017dc44      bl    fcn.0013df98
│ ││   ╎    0x0017dc48      adrp  x21, 0x23d000
│ ││   ╎    0x0017dc4c      add   x21, x21, 0x7d
│ ││   ╎    0x0017dc50      mov   w3, w0
│ ││   ╎    0x0017dc54      mov   w0, 0xa
│ ││   ╎    0x0017dc58      mov   w2, 0xff0000
│ ││   ╎    0x0017dc5c      mov   w1, w20
│ ││   ╎    0x0017dc60      mov   x4, x21                              ; int64_t arg5
│ ││   ╎    0x0017dc64      mov   x5, x19                              ; int64_t arg6
│ ││   ╎    0x0017dc68      bl    fcn.0013deb8
│ ││   ╎    0x0017dc6c      mov   x0, x21                              ; int64_t arg1
│ ││   ╎    0x0017dc70      mov   x1, x19                              ; int64_t arg2
│ ││   ╎    0x0017dc74      bl    fcn.0014c9f8
│ ││   ╎    0x0017dc78      bl    fcn.000f9608
│ ││   ╎    ; CODE XREF from fcn.0017db48 @ 0x17dc9c
│ ││  ┌─┌─> 0x0017dc7c      mov   w0, aav.0x00000100
│ ││  ╎╎╎   0x0017dc80      bl    fcn.0011aee8
│ ││  └───< 0x0017dc84      cbz   w0, 0x17dc7c
│ ││   ╎╎   0x0017dc88      mov   w0, 0x4240                           ; '@B'
│ ││   ╎╎   0x0017dc8c      movk  w0, 0xf, lsl 16
│ ││   ╎╎   0x0017dc90      bl    fcn.001b3f80
│ ││   ╎╎   0x0017dc94      mov   w0, 0x1b
│ ││   ╎╎   0x0017dc98      bl    fcn.0016e1a8
│ ││   ╎└─< 0x0017dc9c      b     0x17dc7c
│ │└──────> 0x0017dca0      adrp  x0, 0x5a6000
│ │    ╎    0x0017dca4      adrp  x1, 0x257000
│ │    ╎    0x0017dca8      add   x0, x0, 0xe9                         ; int64_t arg1
│ │    ╎    0x0017dcac      add   x1, x1, 0xee6                        ; int64_t arg2
│ │    ╎    0x0017dcb0      mov   w2, 9
│ │    ╎    0x0017dcb4      bl    fcn.0014dc20
│ │    ╎┌─< 0x0017dcb8      cbz   w0, 0x17dd10
│ │    ╎│   0x0017dcbc      adrp  x0, 0x5a6000
│ │    ╎│   0x0017dcc0      adrp  x1, 0x276000
│ │    ╎│   0x0017dcc4      add   x0, x0, 0xe9                         ; int64_t arg1
│ │    ╎│   0x0017dcc8      add   x1, x1, str.exception_reason__u_syndrome_0x_lx ; 0x9d5 ; "\nexception reason=%u syndrome=0x%lx\n" ; int64_t arg2
│ │    ╎│   0x0017dccc      mov   w2, 6
│ │    ╎│   0x0017dcd0      bl    fcn.0014dc20
│ │   ┌───< 0x0017dcd4      cbz   w0, 0x17dd10
│ │   │╎│   0x0017dcd8      adrp  x0, 0x5a6000
│ │   │╎│   0x0017dcdc      adrp  x1, 0x253000
│ │   │╎│   0x0017dce0      add   x0, x0, 0xe9                         ; int64_t arg1
│ │   │╎│   0x0017dce4      add   x1, x1, 0x891                        ; int64_t arg2
│ │   │╎│   0x0017dce8      mov   w2, 6
│ │   │╎│   0x0017dcec      bl    fcn.0014dc20
│ │  ┌────< 0x0017dcf0      cbz   w0, 0x17dd10
│ │  ││╎│   0x0017dcf4      adrp  x0, 0x5a6000
│ │  ││╎│   0x0017dcf8      adrp  x1, 0x269000
│ │  ││╎│   0x0017dcfc      add   x0, x0, 0xe9                         ; int64_t arg1
│ │  ││╎│   0x0017dd00      add   x1, x1, 0x14d                        ; int64_t arg2
│ │  ││╎│   0x0017dd04      mov   w2, 5
│ │  ││╎│   0x0017dd08      bl    fcn.0014dc20
│ ────────< 0x0017dd0c      cbnz  w0, 0x17dbdc
│ └──└└─└─> 0x0017dd10      adrp  x0, 0x5a6000
│      ╎    0x0017dd14      adrp  x1, 0x276000
│      ╎    0x0017dd18      add   x0, x0, 0xe9                         ; int64_t arg1
│      ╎    0x0017dd1c      add   x1, x1, str.exception_reason__u_syndrome_0x_lx ; 0x9d5 ; "\nexception reason=%u syndrome=0x%lx\n" ; int64_t arg2
│      ╎    0x0017dd20      mov   w2, 6
│      ╎    0x0017dd24      bl    fcn.0014dc20
│      ╎┌─< 0x0017dd28      cbz   w0, 0x17dd74
│      ╎│   0x0017dd2c      adrp  x0, 0x5a6000
│      ╎│   0x0017dd30      adrp  x1, 0x253000
│      ╎│   0x0017dd34      add   x0, x0, 0xe9                         ; int64_t arg1
│      ╎│   0x0017dd38      add   x1, x1, 0x891                        ; int64_t arg2
│      ╎│   0x0017dd3c      mov   w2, 6
│      ╎│   0x0017dd40      bl    fcn.0014dc20
│      ╎│   0x0017dd44      mov   w21, w0
│      ╎│   0x0017dd48      mov   w0, 2
│      ╎│   0x0017dd4c      bl    fcn.0013d500
│      ╎│   0x0017dd50      mov   w22, w0
│      ╎│   0x0017dd54      bl    fcn.0013df98
│      ╎│   0x0017dd58      mov   w23, w0
│      ╎│   0x0017dd5c      bl    fcn.001842f4
│      ╎│   0x0017dd60      mov   w6, w0
│     ┌───< 0x0017dd64      cbz   w21, 0x17ddb8
│     │╎│   0x0017dd68      adrp  x21, 0x25a000
│     │╎│   0x0017dd6c      add   x21, x21, 0x807
│    ┌────< 0x0017dd70      b     0x17ddcc
│    ││╎└─> 0x0017dd74      adrp  x1, 0x24e000
│    ││╎    0x0017dd78      add   x1, x1, 0xd63                        ; int64_t arg2
│    ││╎    0x0017dd7c      add   x0, x20, 0x98                        ; aav.0x00000098 ; int64_t arg1
│    ││╎    0x0017dd80      mov   w2, 3
│    ││╎    ; CODE XREFS from fcn.0017d894 @ 0x17d980, 0x17d984
│    ││╎    0x0017dd84      bl    fcn.0014dbd8
│    ││╎    0x0017dd88      mov   w21, w0
│    ││╎    0x0017dd8c      mov   w0, 2
│    ││╎    0x0017dd90      bl    fcn.0013d500
│    ││╎    0x0017dd94      mov   w22, w0
│    ││╎    0x0017dd98      bl    fcn.0013df98
│    ││╎    0x0017dd9c      mov   w23, w0
│    ││╎    0x0017dda0      bl    fcn.001842f4
│    ││╎    0x0017dda4      mov   w6, w0
│    ││╎┌─< 0x0017dda8      cbz   w21, 0x17ddc4
│    ││╎│   0x0017ddac      adrp  x21, 0x24c000
│    ││╎│   0x0017ddb0      add   x21, x21, 0xbb5
│   ┌─────< 0x0017ddb4      b     0x17ddcc
│   ││└───> 0x0017ddb8      adrp  x21, 0x26b000
│   ││ ╎│   0x0017ddbc      add   x21, x21, 0x432
│   ││┌───< 0x0017ddc0      b     0x17ddcc
│   │││╎└─> 0x0017ddc4      adrp  x21, 0x253000
│   │││╎    0x0017ddc8      add   x21, x21, str.2_u                    ; 0xff6
│   │││╎    ; CODE XREFS from fcn.0017db48 @ 0x17dd70, 0x17ddb4, 0x17ddc0
│   └└└───> 0x0017ddcc      mov   w0, 0xa
│      ╎    0x0017ddd0      mov   w2, 0xff0000
│      ╎    0x0017ddd4      mov   w1, w22
│      ╎    0x0017ddd8      mov   w3, w23
│      ╎    0x0017dddc      mov   x4, x21                              ; int64_t arg5
│      ╎    0x0017dde0      mov   x5, x19                              ; int64_t arg6
│      ╎    0x0017dde4      bl    fcn.0013deb8
│      ╎    0x0017dde8      bl    fcn.001842f4
│      ╎    0x0017ddec      mov   w2, w0
│      ╎    0x0017ddf0      mov   x0, x21                              ; int64_t arg1
│      ╎    0x0017ddf4      mov   x1, x19                              ; int64_t arg2
│      ╎    0x0017ddf8      bl    fcn.0014c9f8
│      ╎    0x0017ddfc      bl    fcn.000f9608
│      ╎    0x0017de00      mov   w0, 0x4b40                           ; '@K'
│      ╎    0x0017de04      movk  w0, 0x4c, lsl 16
│      ╎    0x0017de08      bl    fcn.001b3f80
│      ╎    0x0017de0c      mov   w0, 0x10
│      ╎    0x0017de10      bl    fcn.0016e1a8
│      ╎    0x0017de14      bl    fcn.0017b0a0
│      ╎┌─< 0x0017de18      cbz   w0, 0x17de34
│ ────────> 0x0017de1c      adrp  x1, 0x23c000
│      ╎│   0x0017de20      add   x1, x1, 0x521                        ; int64_t arg2
│      ╎│   0x0017de24      mov   w2, 4
│      ╎│   0x0017de28      mov   x0, x19                              ; int64_t arg1
│      ╎│   0x0017de2c      bl    fcn.0014dbd8
│     ┌───< 0x0017de30      cbz   w0, 0x17df14
│     │╎│   ; CODE XREF from fcn.0017db48 @ 0x17dbf0
│ ──────└─> 0x0017de34      mov   w0, 0xb
│     │╎    0x0017de38      movk  w0, 0xb200, lsl 16
│     │╎    0x0017de3c      mov   w1, 3
│     │╎    0x0017de40      mov   w2, 1
│     │╎    0x0017de44      mov   w3, 2
│     │╎    0x0017de48      bl    fcn.0010a01c
│     │╎    0x0017de4c      mov   w0, 0xb
│     │╎    0x0017de50      movk  w0, 0xb200, lsl 16
│     │╎    0x0017de54      mov   w1, 4
│     │╎    0x0017de58      mov   w2, 1
│     │╎    0x0017de5c      mov   w3, 2
│     │╎    0x0017de60      bl    fcn.0010a01c
│     │╎    0x0017de64      mov   w0, 0xb
│     │╎    0x0017de68      movk  w0, 0xb200, lsl 16
│     │╎    0x0017de6c      mov   w1, 5
│     │╎    0x0017de70      mov   w2, 1
│     │╎    0x0017de74      mov   w3, 2
│     │╎    0x0017de78      bl    fcn.0010a01c
│     │╎    0x0017de7c      mov   w0, 0xb
│     │╎    0x0017de80      movk  w0, 0xb200, lsl 16
│     │╎    0x0017de84      mov   w1, 6
│     │╎    0x0017de88      mov   w2, 1
│     │╎    0x0017de8c      mov   w3, 2
│     │╎    0x0017de90      bl    fcn.0010a01c
│     │╎    0x0017de94      mov   w0, 0xb
│     │╎    0x0017de98      movk  w0, 0xb200, lsl 16
│     │╎    0x0017de9c      mov   w1, 7
│     │╎    0x0017dea0      mov   w2, 1
│     │╎    0x0017dea4      mov   w3, 2
│     │╎    0x0017dea8      bl    fcn.0010a01c
│     │╎    0x0017deac      adrp  x1, 0x253000
│     │╎    0x0017deb0      add   x1, x1, aav.0x00000394               ; int64_t arg2
│     │╎    0x0017deb4      mov   w2, 6
│     │╎    0x0017deb8      mov   x0, x19                              ; int64_t arg1
│     │╎    0x0017debc      bl    fcn.0014dbd8
│     │╎┌─< 0x0017dec0      cbz   w0, 0x17deec
│     │╎│   0x0017dec4      adrp  x1, 0x25b000
│     │╎│   0x0017dec8      add   x1, x1, 0xe3a                        ; int64_t arg2
│     │╎│   0x0017decc      mov   w2, 9
│     │╎│   0x0017ded0      mov   x0, x19                              ; int64_t arg1
│     │╎│   0x0017ded4      bl    fcn.0014dbd8
│     │╎│   0x0017ded8      cmp   w0, 0
│     │╎│   0x0017dedc      mov   w8, aav.0x00000300
│     │╎│   0x0017dee0      mov   w9, aav.0x00000600
│     │╎│   0x0017dee4      csel  w0, w9, w8, eq
│    ┌────< 0x0017dee8      b     0x17def0
│    ││╎└─> 0x0017deec      mov   w0, aav.0x00000e00                   ; "age = 0x%x\r\n"
│    ││╎    ; CODE XREF from fcn.0017db48 @ 0x17dee8
│    └────> 0x0017def0      bl    fcn.00179fa4
│     │╎    0x0017def4      mov   x0, x20                              ; int64_t arg1
│     │╎    0x0017def8      bl    fcn.00179c3c
│     │╎    0x0017defc      ldp   x20, x19, [var_10h]
│     │╎    0x0017df00      ldp   x22, x21, [var_20h]
│     │╎    0x0017df04      ldr   x23, [var_30h]                       ; aav.0x00000010
│     │╎                                                               ; [0x10:4]=0x14000004
│     │╎    0x0017df08      ldp   x29, x30, [sp], 0x40
│     │╎    0x0017df0c      autibsp
│     │└──< 0x0017df10      b     fcn.0017ca28
│     └───> 0x0017df14      bl    fcn.0013d670
│           0x0017df18      mov   w0, 2
│           0x0017df1c      bl    fcn.0013d500
│           0x0017df20      mov   w20, w0
│           0x0017df24      bl    fcn.0013df98
│           0x0017df28      adrp  x21, 0x27b000
│           0x0017df2c      add   x21, x21, 0x9b
│           0x0017df30      mov   w3, w0
│           0x0017df34      mov   w0, 0xa
│           0x0017df38      mov   w2, 0xff0000
│           0x0017df3c      mov   w1, w20
│           0x0017df40      mov   x4, x21                              ; int64_t arg5
│           0x0017df44      mov   x5, x19                              ; int64_t arg6
│           0x0017df48      bl    fcn.0013deb8
│           0x0017df4c      mov   x0, x21                              ; int64_t arg1
│           0x0017df50      mov   x1, x19                              ; int64_t arg2
│           0x0017df54      bl    fcn.0014c9f8
│           0x0017df58      bl    fcn.000f9608
│           ; CODE XREF from fcn.0017db48 @ 0x17df7c
│      ┌┌─> 0x0017df5c      mov   w0, aav.0x00000100
│      ╎╎   0x0017df60      bl    fcn.0011aee8
│      └──< 0x0017df64      cbz   w0, 0x17df5c
│       ╎   0x0017df68      mov   w0, 0x4240                           ; '@B'
│       ╎   0x0017df6c      movk  w0, 0xf, lsl 16
│       ╎   0x0017df70      bl    fcn.001b3f80
│       ╎   0x0017df74      mov   w0, 5
│       ╎   0x0017df78      bl    fcn.0016e1a8
└       └─< 0x0017df7c      b     0x17df5c
            ; CALL XREF from fcn.00115610 @ 0x115628
