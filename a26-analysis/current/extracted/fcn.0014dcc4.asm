┌ fcn.0014dcc4(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           0x0014dcc4      pacibsp
│           0x0014dcc8      mov   x8, x0                               ; arg1
│       ┌─< 0x0014dccc      cbz   x1, 0x14dcf0
│       │   0x0014dcd0      add   x9, x0, x1                           ; arg2
│       │   0x0014dcd4      mov   x8, x0                               ; arg1
│      ┌──> 0x0014dcd8      ldrb  w10, [x8]
│     ┌───< 0x0014dcdc      cbz   w10, 0x14dcf0
│     │╎│   0x0014dce0      sub   x1, x1, 1                            ; arg2
│     │╎│   0x0014dce4      add   x8, x8, 1
│     │└──< 0x0014dce8      cbnz  x1, 0x14dcd8
│     │ │   0x0014dcec      mov   x8, x9
│     └─└─> 0x0014dcf0      sub   x0, x8, x0                           ; arg1
│           0x0014dcf4      autibsp
└           0x0014dcf8      ret
            ; CALL XREF from fcn.0014de64 @ 0x14deac
