┌ fcn.0018efb4();
│           ; var int64_t var_120h @ stack - 0x120
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0018efb4      pacibsp
│           0x0018efb8      sub   sp, sp, 0x120
│           0x0018efbc      stp   x29, x30, [var_20h]
│           0x0018efc0      str   x28, [var_10h]
│           0x0018efc4      add   x29, sp, aav.0x00000100
│           0x0018efc8      mov   x0, sp                               ; int64_t arg1
│           0x0018efcc      mov   w2, aav.0x00000100
│           0x0018efd0      mov   w1, wzr
│           0x0018efd4      bl    fcn.0014d8fc
│           0x0018efd8      adrp  x0, 0x274000
│           0x0018efdc      add   x0, x0, 0x926                        ; int64_t arg1
│           0x0018efe0      bl    fcn.0014c9f8
│           0x0018efe4      mov   x0, sp                               ; int64_t arg1
│           0x0018efe8      bl    fcn.0017002c
│           0x0018efec      ldrb  w8, [sp]
│       ┌─< 0x0018eff0      cbz   w8, 0x18f008
│       │   0x0018eff4      adrp  x0, 0x279000
│       │   0x0018eff8      add   x0, x0, 0xe99                        ; int64_t arg1
│       │   0x0018effc      mov   x1, sp                               ; int64_t arg2
│       │   0x0018f000      bl    fcn.0014c9f8
│      ┌──< 0x0018f004      b     0x18f014
│      │└─> 0x0018f008      adrp  x0, str.E__s:_d_Failed_to_get_command_type_0x_08x ; 0x263000
│      │    0x0018f00c      add   x0, x0, aav.0x00000460               ; "\t\xcd@\xb9\xea'\U00000002)\n\xd1@\xb9\t\xd5@\xb9\xea'\U00000003)\n\xd9@\xb9\t\xdd@\xb9\xea'\U00000004)\n\xe1@\xb9\t\xe5@\xb9\xe" ; int64_t arg1
│      │    0x0018f010      bl    fcn.0014c9f8
│      │    ; CODE XREF from fcn.0018efb4 @ 0x18f004
│      └──> 0x0018f014      ldr   x28, [var_10h]                       ; aav.0x00000110
│                                                                      ; [0x110:4]=0xb4000020 ; " "
│           0x0018f018      ldp   x29, x30, [var_20h]
│           0x0018f01c      add   sp, sp, 0x120
│           0x0018f020      autibsp
└           0x0018f024      ret
            ; CALL XREFS from fcn.0018bfb0 @ 0x18c694, 0x18c6f0
            ; CODE XREF from fcn.0018e778 @ 0x18e810
