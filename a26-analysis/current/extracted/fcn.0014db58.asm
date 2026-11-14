┌ fcn.0014db58(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           0x0014db58      pacibsp
│           0x0014db5c      mov   x8, xzr
│       ┌─> 0x0014db60      ldrb  w9, [x0, x8]                         ; arg1
│       ╎   0x0014db64      add   x8, x8, 1
│       └─< 0x0014db68      cbnz  w9, 0x14db60
│           0x0014db6c      sub   x0, x8, 1
│           0x0014db70      autibsp
└           0x0014db74      ret
            ; XREFS: CALL 0x0010a644  CALL 0x001129c0  CALL 0x001256f4
            ; XREFS: CALL 0x00150450  CALL 0x00156138  CALL 0x001564e0
            ; XREFS: CALL 0x00178ed8  CALL 0x0017c044  CALL 0x0017e2f0
            ; XREFS: CALL 0x001edc0c  CALL 0x0022e33c  CALL 0x0022e4fc
            ; XREFS: CALL 0x0022e558  CALL 0x0022e718  CALL 0x0022e954
            ; XREFS: CALL 0x0022ea24  CALL 0x0022efec  CALL 0x0022f07c
