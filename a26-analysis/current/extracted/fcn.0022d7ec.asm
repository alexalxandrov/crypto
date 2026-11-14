┌ fcn.0022d7ec(unsigned long arg1);
│           ; arg unsigned long arg1 @ x0
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_10h @ stack - 0x10
│           0x0022d7ec      pacibsp
│           0x0022d7f0      stp   x29, x30, [var_20h]!
│           0x0022d7f4      str   x19, [var_10h]
│           0x0022d7f8      mov   x29, sp
│           0x0022d7fc      tst   w0, 0xff                             ; arg1
│       ┌─< 0x0022d800      b.eq  0x22d80c
│       │   0x0022d804      mov   w0, 1
│      ┌──< 0x0022d808      b     0x22d834
│      │└─> 0x0022d80c      adrp  x19, 0x7f7000
│      │    0x0022d810      ldrb  w8, [x19, 0xb70]                     ; [0xb70:4]=0x62613938 ; "89abcdefghijklmnopqrstuvwxyz"
│      │┌─< 0x0022d814      tbnz  w8, 0, 0x22d830
│      ││   0x0022d818      mov   w0, wzr                              ; arg1
│      ││   0x0022d81c      bl    fcn.00138ef8
│      ││   0x0022d820      mov   w8, w0
│      ││   0x0022d824      mov   w0, 1
│     ┌───< 0x0022d828      cbnz  w8, 0x22d834
│     │││   0x0022d82c      strb  w0, [x19, 0xb70]
│     ││└─> 0x0022d830      mov   w0, wzr                              ; arg1
│     ││    ; CODE XREF from fcn.0022d7ec @ 0x22d808
│     └└──> 0x0022d834      ldr   x19, [var_10h]                       ; aav.0x00000010
│                                                                      ; [0x10:4]=0x14000004
│           0x0022d838      ldp   x29, x30, [sp], 0x20
│           0x0022d83c      autibsp
└           0x0022d840      ret
            ; CALL XREF from fcn.00229980 @ 0x229efc
            ; CALL XREF from fcn.0022b2d0 @ 0x22b36c
            ; CALL XREFS from fcn.0022b590 @ 0x22b758, 0x22b7c4
            ; CALL XREF from fcn.0022b828 @ 0x22ba20
