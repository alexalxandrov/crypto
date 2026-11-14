┌ fcn.00126898(int64_t arg1, int64_t arg6, int64_t arg7, int64_t arg8);
│       ╎   ; arg int64_t arg1 @ x0
│       ╎   ; arg int64_t arg6 @ x5
│       ╎   ; arg int64_t arg7 @ x6
│       ╎   ; arg int64_t arg8 @ x7
│       ╎   0x00126898      pacibsp
│       ╎   0x0012689c      adrp  x8, 0x570000
│       ╎   0x001268a0      ldr   x1, [x8, 0xc70]                      ; [0xc70:4]=0x73206e6f ; "on success\r\n"
│       ╎   0x001268a4      mov   w2, 8
│       ╎   0x001268a8      mov   w3, 0xa
│       ╎   0x001268ac      mov   w4, 0x14
│       ╎   0x001268b0      autibsp
└       └─< 0x001268b4      b     fcn.00126760
            ; CALL XREF from fcn.00138ddc @ 0x138ea4
            ; CALL XREF from fcn.001395ec @ 0x1396c8
