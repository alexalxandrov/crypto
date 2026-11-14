┌ fcn.0014d5c8(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ x0
│           ; arg int64_t arg2 @ x1
│           0x0014d5c8      pacibsp
│       ┌─< 0x0014d5cc      cbz   x2, 0x14d600
│      ┌──> 0x0014d5d0      ldrb  w8, [x0]                             ; arg1
│      ╎│   0x0014d5d4      ldrb  w9, [x1]                             ; arg2
│      ╎│   0x0014d5d8      sub   w8, w8, w9
│      ╎│   0x0014d5dc      tst   w8, 0xff
│     ┌───< 0x0014d5e0      b.ne  0x14d5f4
│     │╎│   0x0014d5e4      add   x0, x0, 1                            ; arg1
│     │╎│   0x0014d5e8      subs  x2, x2, 1
│     │╎│   0x0014d5ec      add   x1, x1, 1                            ; arg2
│     │└──< 0x0014d5f0      b.ne  0x14d5d0
│     └───> 0x0014d5f4      sxtb  w0, w8
│       │   0x0014d5f8      autibsp
│       │   0x0014d5fc      ret
│       └─> 0x0014d600      mov   w0, wzr                              ; arg1
│           0x0014d604      autibsp
└           0x0014d608      ret
            ; XREFS(912)
