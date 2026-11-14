┌ fcn.0014dbd8(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           0x0014dbd8      pacibsp
│       ┌─< 0x0014dbdc      cbz   x2, 0x14dc14
│      ┌──> 0x0014dbe0      ldrb  w9, [x0]                             ; arg1
│      ╎│   0x0014dbe4      ldrb  w8, [x1]                             ; arg2
│      ╎│   0x0014dbe8      sub   w8, w9, w8
│      ╎│   0x0014dbec      tst   w8, 0xff
│     ┌───< 0x0014dbf0      b.ne  0x14dc08
│    ┌────< 0x0014dbf4      cbz   w9, 0x14dc08
│    ││╎│   0x0014dbf8      add   x1, x1, 1                            ; arg2
│    ││╎│   0x0014dbfc      subs  x2, x2, 1
│    ││╎│   0x0014dc00      add   x0, x0, 1                            ; arg1
│    ││└──< 0x0014dc04      b.ne  0x14dbe0
│    └└───> 0x0014dc08      sxtb  w0, w8
│       │   0x0014dc0c      autibsp
│       │   0x0014dc10      ret
│       └─> 0x0014dc14      mov   w0, wzr                              ; arg1
│           0x0014dc18      autibsp
└           0x0014dc1c      ret
            ; XREFS(83)
