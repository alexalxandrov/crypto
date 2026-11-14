┌ fcn.00126760(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg7, int64_t arg8);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           ; arg int64_t arg3 @ x2
│           ; arg int64_t arg4 @ x3
│           ; arg int64_t arg5 @ x4
│           ; arg int64_t arg6 @ x5
│           ; arg int64_t arg7 @ x6
│           ; arg int64_t arg8 @ x7
│           ; var int64_t var_54h @ stack - 0x54
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00126760      pacibsp
│           0x00126764      sub   sp, sp, 0x60
│           0x00126768      stp   x29, x30, [var_40h]
│           0x0012676c      stp   x24, x23, [var_30h]
│           0x00126770      stp   x22, x21, [var_20h]
│           0x00126774      stp   x20, x19, [var_10h]
│           0x00126778      add   x29, sp, 0x20
│           0x0012677c      mov   x22, x1                              ; arg2
│           0x00126780      adrp  x1, str.Page_Domain_Fault__used_only_for_faults_reported_in_the_PAR_EL1 ; 0x238000
│           0x00126784      mov   w21, w2                              ; arg3
│           0x00126788      mov   w2, w0                               ; arg1
│           0x0012678c      add   x1, x1, 0x6f3                        ; int64_t arg2
│           0x00126790      add   x0, var_54h                          ; int64_t arg1
│           0x00126794      mov   w19, w4                              ; arg5
│           0x00126798      mov   w20, w3                              ; arg4
│           0x0012679c      bl    fcn.0014aff0
│           0x001267a0      add   x0, var_54h                          ; int64_t arg1
│           0x001267a4      bl    fcn.00204950
│       ┌─< 0x001267a8      cbz   x0, 0x12682c
│       │   0x001267ac      ldr   x24, [x0, 0x40]                      ; aav.0x00000040
│       │                                                              ; [0x40:4]=0xaa0003f4
│       │   0x001267b0      adrp  x23, 0x56f000
│       │   0x001267b4      add   x23, x23, 0x918
│       │   0x001267b8      mov   w8, 0x14
│       │   0x001267bc      mov   w2, 0x10
│       │   0x001267c0      mov   x0, x23                              ; int64_t arg1
│       │   0x001267c4      mov   w1, wzr
│       │   0x001267c8      str   w8, [x23, 0x10]
│       │   0x001267cc      str   x24, [x23, 0x68]
│       │   0x001267d0      str   x22, [x23, 0x18]
│       │   0x001267d4      bl    fcn.0014d8fc
│       │   0x001267d8      ldr   x10, [x24, aav.0x00000150]           ; [0x150:4]=0x2033e00
│       │   0x001267dc      mov   w8, 0x5a                             ; 'Z'
│       │   0x001267e0      and   w9, w21, 0x18
│       │   0x001267e4      mov   x0, x23
│       │   0x001267e8      strb  w8, [x23]
│       │   0x001267ec      strb  w9, [x23, 1]
│       │   0x001267f0      strb  w20, [x23, 2]
│       │   0x001267f4      strb  w19, [x23, 8]
│       │   0x001267f8      blr   x10
│       │   0x001267fc      mov   w1, w0
│      ┌──< 0x00126800      cbnz  w0, 0x126818
│      ││   0x00126804      adrp  x8, 0x56f000
│      ││   0x00126808      ldrb  w0, [x8, 0x978]                      ; [0x978:4]=0x5f464f5f ; "_OF_LDFW_SP_SSP] USB Loading Done"
│      ││   0x0012680c      bl    fcn.00125930
│      ││   0x00126810      mov   w1, w0
│     ┌───< 0x00126814      cbz   w0, 0x12684c
│     │└──> 0x00126818      adrp  x0, 0x257000
│     │ │   0x0012681c      add   x0, x0, 0x628                        ; int64_t arg1
│     │ │   0x00126820      bl    fcn.0014c9f8
│     │ │   0x00126824      mov   w0, 1
│     │┌──< 0x00126828      b     0x12687c
│     ││└─> 0x0012682c      adrp  x0, 0x266000
│     ││    0x00126830      adrp  x1, 0x25e000
│     ││    0x00126834      add   x0, x0, 0xa2e                        ; int64_t arg1
│     ││    0x00126838      add   x1, x1, 9                            ; int64_t arg2
│     ││    0x0012683c      add   x2, var_54h                          ; unsigned long arg3
│     ││    0x00126840      bl    fcn.0014c9f8
│     ││    0x00126844      mov   w0, 1
│     ││┌─< 0x00126848      b     0x12687c
│     └───> 0x0012684c      adrp  x19, 0x56f000
│      ││   0x00126850      ldr   x8, [x19, 0x930]                     ; [0x930:4]=0x20736920 ; " is invalid\n"
│      ││   0x00126854      adrp  x0, 0x264000
│      ││   0x00126858      add   x0, x0, 0xb8a                        ; int64_t arg1
│      ││   0x0012685c      ldrb  w8, [x8, 0xc]                        ; aav.0x0000000c
│      ││                                                              ; [0xc:4]=0
│      ││   0x00126860      and   w1, w8, 8
│      ││   0x00126864      bl    fcn.0014c9f8
│      ││   0x00126868      ldr   x8, [x19, 0x930]                     ; [0x930:4]=0x20736920 ; " is invalid\n"
│      ││   0x0012686c      ldrb  w8, [x8, 0xc]                        ; aav.0x0000000c
│      ││                                                              ; [0xc:4]=0
│      ││   0x00126870      tst   w8, 8
│      ││   0x00126874      mov   w8, 3
│      ││   0x00126878      cinc  w0, w8, eq
│      ││   ; CODE XREFS from fcn.00126760 @ 0x126828, 0x126848
│      └└─> 0x0012687c      ldp   x20, x19, [var_10h]
│           0x00126880      ldp   x22, x21, [var_20h]
│           0x00126884      ldp   x24, x23, [var_30h]
│           0x00126888      ldp   x29, x30, [var_40h]
│           0x0012688c      add   sp, sp, 0x60
│           0x00126890      autibsp
└           0x00126894      ret
        ╎   ; CALL XREFS from fcn.00138ddc @ 0x138e2c, 0x138e3c, 0x138e4c, 0x138e5c
