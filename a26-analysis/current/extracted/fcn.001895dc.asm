┌ fcn.001895dc(int64_t arg1);
│           ; arg int64_t arg1 @ x0
│           0x001895dc      pacibsp
│           0x001895e0      add   w8, w0, 0x3f                         ; arg1
│           0x001895e4      cmp   w0, 0                                ; arg1
│           0x001895e8      csel  w8, w8, w0, lt
│           0x001895ec      adrp  x10, 0x5a6000
│           0x001895f0      asr   w9, w8, 6
│           0x001895f4      add   x10, x10, 0xa90
│           0x001895f8      ldr   x9, [x10, w9, uxtw 3]
│           0x001895fc      and   w8, w8, 0xffffffc0
│           0x00189600      sub   w8, w0, w8                           ; arg1
│           0x00189604      autibsp
│           0x00189608      lsr   x8, x9, x8
│           0x0018960c      and   w0, w8, 1
└           0x00189610      ret
        ╎   ; CALL XREF from fcn.00187cf0 @ 0x187e94
