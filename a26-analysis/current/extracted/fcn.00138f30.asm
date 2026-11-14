┌ fcn.00138f30(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x00138f30      pacibsp
│           0x00138f34      sub   sp, sp, 0x70
│           0x00138f38      stp   x29, x30, [var_30h]
│           0x00138f3c      str   x21, [var_20h]
│           0x00138f40      stp   x20, x19, [var_10h]
│           0x00138f44      add   x29, sp, 0x40
│           0x00138f48      adrp  x21, 0x572000
│           0x00138f4c      ldr   w8, [x21, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│           0x00138f50      mov   w19, w0                              ; arg1
│           0x00138f54      str   wzr, [sp, 0x38]                      ; arg1
│           0x00138f58      stp   xzr, xzr, [sp, 0x28]
│           0x00138f5c      cmp   w8, 2
│           0x00138f60      stp   xzr, xzr, [sp, 0x18]
│           0x00138f64      stp   xzr, xzr, [sp, 8]
│           0x00138f68      str   xzr, [sp]
│       ┌─< 0x00138f6c      b.eq  0x138f9c
│       │   0x00138f70      cmp   w8, 1
│      ┌──< 0x00138f74      b.ne  0x138fec
│      ││   0x00138f78      adrp  x1, 0x243000
│      ││   0x00138f7c      add   x1, x1, 0x295                        ; int64_t arg2
│      ││   0x00138f80      mov   x0, sp                               ; int64_t arg1
│      ││   0x00138f84      mov   w2, 4
│      ││   0x00138f88      bl    fcn.0014d60c
│      ││   0x00138f8c      add   w8, w19, 0x30                        ; aav.0x00000030
│      ││   0x00138f90      strb  w8, [sp, 4]
│      ││   0x00138f94      mov   w20, 5
│     ┌───< 0x00138f98      b     0x138fe0
│     ││└─> 0x00138f9c      cmp   w19, 3
│     ││┌─< 0x00138fa0      b.ne  0x138fc0
│     │││   0x00138fa4      adrp  x1, 0x24e000
│     │││   0x00138fa8      add   x1, x1, 0xf96                        ; int64_t arg2
│     │││   0x00138fac      mov   x0, sp                               ; int64_t arg1
│     │││   0x00138fb0      mov   w2, 7
│     │││   0x00138fb4      mov   w20, 7
│     │││   0x00138fb8      bl    fcn.0014d60c
│    ┌────< 0x00138fbc      b     0x138fe0
│    │││└─> 0x00138fc0      adrp  x1, 0x23e000
│    │││    0x00138fc4      add   x1, x1, 0x866                        ; int64_t arg2
│    │││    0x00138fc8      mov   x0, sp                               ; int64_t arg1
│    │││    0x00138fcc      mov   w2, 3
│    │││    0x00138fd0      bl    fcn.0014d60c
│    │││    0x00138fd4      add   w8, w19, 0x30                        ; aav.0x00000030
│    │││    0x00138fd8      mov   w20, 4
│    │││    0x00138fdc      strb  w8, [sp, 3]
│    │││    ; CODE XREFS from fcn.00138f30 @ 0x138f98, 0x138fbc
│    └└───> 0x00138fe0      mov   x8, sp
│      │    0x00138fe4      orr   x8, x8, x20
│      │    0x00138fe8      strb  wzr, [x8]
│      └──> 0x00138fec      mov   x0, sp                               ; int64_t arg1
│           0x00138ff0      bl    fcn.00204950
│           0x00138ff4      mov   x20, x0
│       ┌─< 0x00138ff8      cbnz  x0, 0x139010
│       │   0x00138ffc      ldr   w1, [x21, 0x5e8]                     ; [0x5e8:4]=0xf100c11f
│       │   0x00139000      adrp  x0, 0x257000
│       │   0x00139004      add   x0, x0, 0x77d                        ; int64_t arg1
│       │   0x00139008      mov   w2, w19
│       │   0x0013900c      bl    fcn.0014c9f8
│       └─> 0x00139010      mov   x0, x20
│           0x00139014      ldp   x20, x19, [var_10h]
│           0x00139018      ldr   x21, [var_20h]                       ; aav.0x00000050
│                                                                      ; [0x50:4]=0xd2810600
│           0x0013901c      ldp   x29, x30, [var_30h]
│           0x00139020      add   sp, sp, 0x70
│           0x00139024      autibsp
└           0x00139028      ret
            ; CALL XREF from fcn.00141ba0 @ 0x141c58
            ; CALL XREF from fcn.00175f44 @ 0x176154
            ; CALL XREF from fcn.00177854 @ 0x177974
