┌ fcn.0012577c(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           0x0012577c      pacibsp
│           0x00125780      adrp  x8, 0x56f000
│           0x00125784      ldrb  w8, [x8, 0x4e8]                      ; [0x4e8:4]=0xb900511f
│           0x00125788      cmp   w8, 1
│       ┌─< 0x0012578c      b.ne  0x1257ac
│       │   0x00125790      adrp  x9, 0x56f000
│       │   0x00125794      ldr   w9, [x9, 0x8f0]                      ; [0x8f0:4]=0x44002020 ; "  "
│       │   0x00125798      mov   x8, x0                               ; arg1
│       │   0x0012579c      mov   w0, wzr                              ; arg1
│       │   0x001257a0      str   w9, [x8]
│       │   0x001257a4      autibsp
│       │   0x001257a8      ret
│       └─> 0x001257ac      mov   w0, aav.0x00000300
│           0x001257b0      movk  w0, 4, lsl 16
│           0x001257b4      autibsp
└           0x001257b8      ret
            ; CALL XREF from fcn.0017dfdc @ 0x17e170
